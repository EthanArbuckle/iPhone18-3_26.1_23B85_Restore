@interface BCSDomainItem
- (BCSDomainBundleIdPatterns)domainBundleIDPatterns;
- (BCSDomainItem)initWithBase64EncodedShardString:(id)a3 expirationDate:(id)a4;
- (BOOL)isExpired;
- (NSString)domain;
@end

@implementation BCSDomainItem

- (BCSDomainItem)initWithBase64EncodedShardString:(id)a3 expirationDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BCSDomainItem;
  v9 = [(BCSDomainItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_base64EncodedShardString, a3);
    objc_storeStrong(&v10->_expirationDate, a4);
  }

  return v10;
}

- (BCSDomainBundleIdPatterns)domainBundleIDPatterns
{
  if (!self->_domainBundleIDPatterns)
  {
    v3 = [(BCSDomainItem *)self base64EncodedShardString];
    v4 = [v3 length];

    if (v4)
    {
      v5 = objc_alloc(MEMORY[0x277CBEA90]);
      v6 = [(BCSDomainItem *)self base64EncodedShardString];
      v7 = [v5 initWithBase64EncodedString:v6 options:0];

      v8 = [[BCSDomainBundleIdPatterns alloc] initWithData:v7];
      domainBundleIDPatterns = self->_domainBundleIDPatterns;
      self->_domainBundleIDPatterns = v8;
    }
  }

  v10 = self->_domainBundleIDPatterns;

  return v10;
}

- (BOOL)isExpired
{
  v2 = [(BCSDomainItem *)self expirationDate];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [v2 compare:v3] == -1;

  return v4;
}

- (NSString)domain
{
  v2 = [(BCSDomainItem *)self domainBundleIDPatterns];
  v3 = [v2 domain];

  return v3;
}

@end