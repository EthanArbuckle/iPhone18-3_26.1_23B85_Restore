@interface BCSFilterMatchResult
- (BCSFilterMatchResult)initWithMatch:(BOOL)match itemIdentifier:(id)identifier matchingTruncatedHash:(int64_t)hash;
@end

@implementation BCSFilterMatchResult

- (BCSFilterMatchResult)initWithMatch:(BOOL)match itemIdentifier:(id)identifier matchingTruncatedHash:(int64_t)hash
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = BCSFilterMatchResult;
  v10 = [(BCSFilterMatchResult *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_hasMatch = match;
    objc_storeStrong(&v10->_itemIdentifier, identifier);
    v11->_matchingTruncatedHash = hash;
  }

  return v11;
}

@end