@interface BCSBusinessLookupResult
- (BCSBusinessLookupResult)initWithFilterMatchResult:(id)a3 config:(id)a4;
- (BCSBusinessLookupResult)initWithHasBusiness:(BOOL)a3 matchingTruncatedHash:(int64_t)a4 config:(id)a5;
@end

@implementation BCSBusinessLookupResult

- (BCSBusinessLookupResult)initWithHasBusiness:(BOOL)a3 matchingTruncatedHash:(int64_t)a4 config:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = BCSBusinessLookupResult;
  v10 = [(BCSBusinessLookupResult *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_hasBusiness = a3;
    v10->_matchingTruncatedHash = a4;
    objc_storeStrong(&v10->_config, a5);
  }

  return v11;
}

- (BCSBusinessLookupResult)initWithFilterMatchResult:(id)a3 config:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = BCSBusinessLookupResult;
  v8 = [(BCSBusinessLookupResult *)&v12 init];
  if (v8)
  {
    v8->_hasBusiness = [v6 hasMatch];
    v9 = [v6 itemIdentifier];
    itemIdentifier = v8->_itemIdentifier;
    v8->_itemIdentifier = v9;

    v8->_matchingTruncatedHash = [v6 matchingTruncatedHash];
    objc_storeStrong(&v8->_config, a4);
  }

  return v8;
}

@end