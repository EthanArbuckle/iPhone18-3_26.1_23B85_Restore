@interface CCDatabaseOnConflict
+ (CCDatabaseOnConflict)onConflictWithType:(int64_t)type;
- (CCDatabaseOnConflict)initWithType:(int64_t)type;
@end

@implementation CCDatabaseOnConflict

+ (CCDatabaseOnConflict)onConflictWithType:(int64_t)type
{
  v3 = [[CCDatabaseOnConflict alloc] initWithType:type];

  return v3;
}

- (CCDatabaseOnConflict)initWithType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = CCDatabaseOnConflict;
  result = [(CCDatabaseOnConflict *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

@end