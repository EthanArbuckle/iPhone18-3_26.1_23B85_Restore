@interface BCSFilterMatchResult
- (BCSFilterMatchResult)initWithMatch:(BOOL)a3 itemIdentifier:(id)a4 matchingTruncatedHash:(int64_t)a5;
@end

@implementation BCSFilterMatchResult

- (BCSFilterMatchResult)initWithMatch:(BOOL)a3 itemIdentifier:(id)a4 matchingTruncatedHash:(int64_t)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = BCSFilterMatchResult;
  v10 = [(BCSFilterMatchResult *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_hasMatch = a3;
    objc_storeStrong(&v10->_itemIdentifier, a4);
    v11->_matchingTruncatedHash = a5;
  }

  return v11;
}

@end