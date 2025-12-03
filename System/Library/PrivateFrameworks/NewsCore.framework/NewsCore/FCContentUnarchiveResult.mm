@interface FCContentUnarchiveResult
- (FCContentUnarchiveResult)initWithInterestToken:(id)token storageSize:(int64_t)size;
@end

@implementation FCContentUnarchiveResult

- (FCContentUnarchiveResult)initWithInterestToken:(id)token storageSize:(int64_t)size
{
  tokenCopy = token;
  v11.receiver = self;
  v11.super_class = FCContentUnarchiveResult;
  v8 = [(FCContentUnarchiveResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_interestToken, token);
    v9->_storageSize = size;
  }

  return v9;
}

@end