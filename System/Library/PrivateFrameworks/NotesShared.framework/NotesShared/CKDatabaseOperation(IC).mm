@interface CKDatabaseOperation(IC)
- (id)ic_loggingValues;
@end

@implementation CKDatabaseOperation(IC)

- (id)ic_loggingValues
{
  v7.receiver = self;
  v7.super_class = &off_282783498;
  v2 = objc_msgSendSuper2(&v7, sel_ic_loggingValues);
  v3 = [v2 mutableCopy];

  database = [self database];
  [database databaseScope];
  v5 = CKDatabaseScopeString();
  [v3 setObject:v5 forKeyedSubscript:@"databaseScope"];

  return v3;
}

@end