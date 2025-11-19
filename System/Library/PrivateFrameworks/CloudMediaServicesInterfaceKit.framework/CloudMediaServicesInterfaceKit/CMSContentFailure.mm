@interface CMSContentFailure
- (CMSContentFailure)initWithError:(id)a3 url:(id)a4;
- (CMSContentFailure)initWithServiceError:(id)a3 url:(id)a4;
- (id)cmsCoded;
@end

@implementation CMSContentFailure

- (CMSContentFailure)initWithError:(id)a3 url:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CMSContentFailure;
  v8 = [(CMSContentFailure *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_URL, a4);
    v10 = [CMSServiceError serviceErrorFromCause:v6];
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

- (CMSContentFailure)initWithServiceError:(id)a3 url:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CMSContentFailure;
  v9 = [(CMSContentFailure *)&v14 init];
  if (v9)
  {
    v10 = [v7 domain];
    v11 = [v10 isEqualToString:@"com.apple.sirikitcloudmedia.errorDomain"];

    if (!v11)
    {
      v12 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v9->_error, a3);
    objc_storeStrong(&v9->_URL, a4);
  }

  v12 = v9;
LABEL_6:

  return v12;
}

- (id)cmsCoded
{
  v17[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
  v4 = [(NSURL *)self->_URL absoluteString];
  [v3 cmsSetOptionalObject:v4 forKey:@"url"];

  v5 = [(NSError *)self->_error domain];
  [v3 cmsSetOptionalObject:v5 forKey:@"errorDomain"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSError code](self->_error, "code")}];
  [v3 cmsSetOptionalObject:v6 forKey:@"errorCode"];

  v7 = [(NSError *)self->_error underlyingErrors];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [(NSError *)self->_error underlyingErrors];
    v10 = [v9 firstObject];

    v16[0] = @"errorCode";
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "code")}];
    v16[1] = @"errorDomain";
    v17[0] = v11;
    v12 = [v10 domain];
    v17[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

    [v3 setObject:v13 forKeyedSubscript:@"underlyingError"];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

@end