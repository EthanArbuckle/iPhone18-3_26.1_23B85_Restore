@interface PRAstKeywordInfo
+ (id)infoWithFieldType:(int64_t)type;
+ (id)infoWithFieldType:(int64_t)type direction:(int64_t)direction;
- (PRAstKeywordInfo)initWithFieldType:(int64_t)type direction:(int64_t)direction;
@end

@implementation PRAstKeywordInfo

- (PRAstKeywordInfo)initWithFieldType:(int64_t)type direction:(int64_t)direction
{
  v7.receiver = self;
  v7.super_class = PRAstKeywordInfo;
  result = [(PRAstKeywordInfo *)&v7 init];
  if (result)
  {
    result->_fieldType = type;
    result->_direction = direction;
  }

  return result;
}

+ (id)infoWithFieldType:(int64_t)type
{
  v3 = [[self alloc] initWithFieldType:type];

  return v3;
}

+ (id)infoWithFieldType:(int64_t)type direction:(int64_t)direction
{
  v4 = [[self alloc] initWithFieldType:type direction:direction];

  return v4;
}

@end