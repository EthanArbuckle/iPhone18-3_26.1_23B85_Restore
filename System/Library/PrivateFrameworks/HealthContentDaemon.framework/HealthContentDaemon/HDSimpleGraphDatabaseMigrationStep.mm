@interface HDSimpleGraphDatabaseMigrationStep
+ (id)migrationToVersion:(int64_t)version function:(void *)function;
@end

@implementation HDSimpleGraphDatabaseMigrationStep

+ (id)migrationToVersion:(int64_t)version function:(void *)function
{
  v6 = [HDSimpleGraphDatabaseMigrationStep alloc];
  if (v6)
  {
    v8.receiver = v6;
    v8.super_class = HDSimpleGraphDatabaseMigrationStep;
    v6 = objc_msgSendSuper2(&v8, sel_init);
    if (v6)
    {
      v6->_toVersion = version;
      v6->_function = function;
    }
  }

  return v6;
}

@end