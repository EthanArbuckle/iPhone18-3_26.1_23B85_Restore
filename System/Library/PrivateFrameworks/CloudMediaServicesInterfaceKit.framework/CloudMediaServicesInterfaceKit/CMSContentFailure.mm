@interface CMSContentFailure
- (CMSContentFailure)initWithError:(id)error url:(id)url;
- (CMSContentFailure)initWithServiceError:(id)error url:(id)url;
- (id)cmsCoded;
@end

@implementation CMSContentFailure

- (CMSContentFailure)initWithError:(id)error url:(id)url
{
  errorCopy = error;
  urlCopy = url;
  v14.receiver = self;
  v14.super_class = CMSContentFailure;
  v8 = [(CMSContentFailure *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_URL, url);
    v10 = [CMSServiceError serviceErrorFromCause:errorCopy];
    if (!v10)
    {
      v12 = 0;
      goto LABEL_6;
    }

    error = v9->_error;
    v9->_error = v10;
  }

  v12 = v9;
LABEL_6:

  return v12;
}

- (CMSContentFailure)initWithServiceError:(id)error url:(id)url
{
  errorCopy = error;
  urlCopy = url;
  v14.receiver = self;
  v14.super_class = CMSContentFailure;
  v9 = [(CMSContentFailure *)&v14 init];
  if (v9)
  {
    domain = [errorCopy domain];
    v11 = [domain isEqualToString:@"com.apple.sirikitcloudmedia.errorDomain"];

    if (!v11)
    {
      v12 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v9->_error, error);
    objc_storeStrong(&v9->_URL, url);
  }

  v12 = v9;
LABEL_6:

  return v12;
}

- (id)cmsCoded
{
  v17[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
  absoluteString = [(NSURL *)self->_URL absoluteString];
  [v3 cmsSetOptionalObject:absoluteString forKey:@"url"];

  domain = [(NSError *)self->_error domain];
  [v3 cmsSetOptionalObject:domain forKey:@"errorDomain"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSError code](self->_error, "code")}];
  [v3 cmsSetOptionalObject:v6 forKey:@"errorCode"];

  underlyingErrors = [(NSError *)self->_error underlyingErrors];
  v8 = [underlyingErrors count];

  if (v8)
  {
    underlyingErrors2 = [(NSError *)self->_error underlyingErrors];
    firstObject = [underlyingErrors2 firstObject];

    v16[0] = @"errorCode";
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(firstObject, "code")}];
    v16[1] = @"errorDomain";
    v17[0] = v11;
    domain2 = [firstObject domain];
    v17[1] = domain2;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

    [v3 setObject:v13 forKeyedSubscript:@"underlyingError"];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

@end