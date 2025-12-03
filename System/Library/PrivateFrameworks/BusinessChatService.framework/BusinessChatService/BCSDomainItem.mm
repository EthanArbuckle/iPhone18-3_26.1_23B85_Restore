@interface BCSDomainItem
- (BCSDomainBundleIdPatterns)domainBundleIDPatterns;
- (BCSDomainItem)initWithBase64EncodedShardString:(id)string expirationDate:(id)date;
- (BOOL)isExpired;
- (NSString)domain;
@end

@implementation BCSDomainItem

- (BCSDomainItem)initWithBase64EncodedShardString:(id)string expirationDate:(id)date
{
  stringCopy = string;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = BCSDomainItem;
  v9 = [(BCSDomainItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_base64EncodedShardString, string);
    objc_storeStrong(&v10->_expirationDate, date);
  }

  return v10;
}

- (BCSDomainBundleIdPatterns)domainBundleIDPatterns
{
  if (!self->_domainBundleIDPatterns)
  {
    base64EncodedShardString = [(BCSDomainItem *)self base64EncodedShardString];
    v4 = [base64EncodedShardString length];

    if (v4)
    {
      v5 = objc_alloc(MEMORY[0x277CBEA90]);
      base64EncodedShardString2 = [(BCSDomainItem *)self base64EncodedShardString];
      v7 = [v5 initWithBase64EncodedString:base64EncodedShardString2 options:0];

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
  expirationDate = [(BCSDomainItem *)self expirationDate];
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [expirationDate compare:date] == -1;

  return v4;
}

- (NSString)domain
{
  domainBundleIDPatterns = [(BCSDomainItem *)self domainBundleIDPatterns];
  domain = [domainBundleIDPatterns domain];

  return domain;
}

@end