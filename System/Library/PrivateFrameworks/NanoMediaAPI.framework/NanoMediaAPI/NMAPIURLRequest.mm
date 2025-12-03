@interface NMAPIURLRequest
- (NMAPIURLRequest)initWithURL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
- (id)urlComponentsWithStoreURLBag:(id)bag error:(id *)error;
@end

@implementation NMAPIURLRequest

- (NMAPIURLRequest)initWithURL:(id)l
{
  lCopy = l;
  v8.receiver = self;
  v8.super_class = NMAPIURLRequest;
  v5 = [(MPStoreModelRequest *)&v8 init];
  if (v5)
  {
    lCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"URL : %@", lCopy];
    [(NMAPIURLRequest *)v5 setLabel:lCopy];

    [(NMAPIURLRequest *)v5 setURL:lCopy];
  }

  return v5;
}

- (id)urlComponentsWithStoreURLBag:(id)bag error:(id *)error
{
  URL = self->_URL;
  if (URL)
  {
    v5 = [MEMORY[0x277CCACE0] componentsWithURL:URL resolvingAgainstBaseURL:0];
  }

  else
  {
    v7 = NMLogForCategory(9);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NMAPIURLRequest urlComponentsWithStoreURLBag:v7 error:?];
    }

    if (error)
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7101 userInfo:0];
      v9 = v8;
      v5 = 0;
      *error = v8;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = NMAPIURLRequest;
  v4 = [(NMAPIRequest *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 16, self->_URL);
  }

  return v5;
}

@end