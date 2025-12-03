@interface IDSEngramKeyFetchMetric
- (IDSEngramKeyFetchMetric)initWithKeyFetchError:(id)error;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSEngramKeyFetchMetric

- (IDSEngramKeyFetchMetric)initWithKeyFetchError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = IDSEngramKeyFetchMetric;
  v6 = [(IDSEngramKeyFetchMetric *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keyFetchError, error);
  }

  return v7;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  keyFetchError = [(IDSEngramKeyFetchMetric *)self keyFetchError];
  domain = [keyFetchError domain];

  if (domain)
  {
    CFDictionarySetValue(v3, @"ErrorDomain", domain);
  }

  v6 = MEMORY[0x1E696AD98];
  keyFetchError2 = [(IDSEngramKeyFetchMetric *)self keyFetchError];
  v8 = [v6 numberWithInteger:{objc_msgSend(keyFetchError2, "code")}];

  if (v8)
  {
    CFDictionarySetValue(v3, @"ErrorCode", v8);
  }

  return v3;
}

@end