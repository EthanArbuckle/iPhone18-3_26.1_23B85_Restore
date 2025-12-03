@interface BCSBusinessLookupResult
- (BCSBusinessLookupResult)initWithFilterMatchResult:(id)result config:(id)config;
- (BCSBusinessLookupResult)initWithHasBusiness:(BOOL)business matchingTruncatedHash:(int64_t)hash config:(id)config;
@end

@implementation BCSBusinessLookupResult

- (BCSBusinessLookupResult)initWithHasBusiness:(BOOL)business matchingTruncatedHash:(int64_t)hash config:(id)config
{
  configCopy = config;
  v13.receiver = self;
  v13.super_class = BCSBusinessLookupResult;
  v10 = [(BCSBusinessLookupResult *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_hasBusiness = business;
    v10->_matchingTruncatedHash = hash;
    objc_storeStrong(&v10->_config, config);
  }

  return v11;
}

- (BCSBusinessLookupResult)initWithFilterMatchResult:(id)result config:(id)config
{
  resultCopy = result;
  configCopy = config;
  v12.receiver = self;
  v12.super_class = BCSBusinessLookupResult;
  v8 = [(BCSBusinessLookupResult *)&v12 init];
  if (v8)
  {
    v8->_hasBusiness = [resultCopy hasMatch];
    itemIdentifier = [resultCopy itemIdentifier];
    itemIdentifier = v8->_itemIdentifier;
    v8->_itemIdentifier = itemIdentifier;

    v8->_matchingTruncatedHash = [resultCopy matchingTruncatedHash];
    objc_storeStrong(&v8->_config, config);
  }

  return v8;
}

@end