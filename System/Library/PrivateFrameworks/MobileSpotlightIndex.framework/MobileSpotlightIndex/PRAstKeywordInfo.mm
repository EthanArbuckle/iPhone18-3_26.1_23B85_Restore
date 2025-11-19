@interface PRAstKeywordInfo
+ (id)infoWithFieldType:(int64_t)a3;
+ (id)infoWithFieldType:(int64_t)a3 direction:(int64_t)a4;
- (PRAstKeywordInfo)initWithFieldType:(int64_t)a3 direction:(int64_t)a4;
@end

@implementation PRAstKeywordInfo

- (PRAstKeywordInfo)initWithFieldType:(int64_t)a3 direction:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = PRAstKeywordInfo;
  result = [(PRAstKeywordInfo *)&v7 init];
  if (result)
  {
    result->_fieldType = a3;
    result->_direction = a4;
  }

  return result;
}

+ (id)infoWithFieldType:(int64_t)a3
{
  v3 = [[a1 alloc] initWithFieldType:a3];

  return v3;
}

+ (id)infoWithFieldType:(int64_t)a3 direction:(int64_t)a4
{
  v4 = [[a1 alloc] initWithFieldType:a3 direction:a4];

  return v4;
}

@end