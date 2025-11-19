@interface FCContentUnarchiveResult
- (FCContentUnarchiveResult)initWithInterestToken:(id)a3 storageSize:(int64_t)a4;
@end

@implementation FCContentUnarchiveResult

- (FCContentUnarchiveResult)initWithInterestToken:(id)a3 storageSize:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = FCContentUnarchiveResult;
  v8 = [(FCContentUnarchiveResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_interestToken, a3);
    v9->_storageSize = a4;
  }

  return v9;
}

@end