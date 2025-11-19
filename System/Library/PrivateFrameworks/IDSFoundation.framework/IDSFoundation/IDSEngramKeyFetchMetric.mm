@interface IDSEngramKeyFetchMetric
- (IDSEngramKeyFetchMetric)initWithKeyFetchError:(id)a3;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSEngramKeyFetchMetric

- (IDSEngramKeyFetchMetric)initWithKeyFetchError:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSEngramKeyFetchMetric;
  v6 = [(IDSEngramKeyFetchMetric *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keyFetchError, a3);
  }

  return v7;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(IDSEngramKeyFetchMetric *)self keyFetchError];
  v5 = [v4 domain];

  if (v5)
  {
    CFDictionarySetValue(v3, @"ErrorDomain", v5);
  }

  v6 = MEMORY[0x1E696AD98];
  v7 = [(IDSEngramKeyFetchMetric *)self keyFetchError];
  v8 = [v6 numberWithInteger:{objc_msgSend(v7, "code")}];

  if (v8)
  {
    CFDictionarySetValue(v3, @"ErrorCode", v8);
  }

  return v3;
}

@end