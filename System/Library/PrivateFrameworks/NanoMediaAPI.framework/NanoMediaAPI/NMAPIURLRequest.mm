@interface NMAPIURLRequest
- (NMAPIURLRequest)initWithURL:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)urlComponentsWithStoreURLBag:(id)a3 error:(id *)a4;
@end

@implementation NMAPIURLRequest

- (NMAPIURLRequest)initWithURL:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NMAPIURLRequest;
  v5 = [(MPStoreModelRequest *)&v8 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"URL : %@", v4];
    [(NMAPIURLRequest *)v5 setLabel:v6];

    [(NMAPIURLRequest *)v5 setURL:v4];
  }

  return v5;
}

- (id)urlComponentsWithStoreURLBag:(id)a3 error:(id *)a4
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

    if (a4)
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7101 userInfo:0];
      v9 = v8;
      v5 = 0;
      *a4 = v8;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = NMAPIURLRequest;
  v4 = [(NMAPIRequest *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 16, self->_URL);
  }

  return v5;
}

@end