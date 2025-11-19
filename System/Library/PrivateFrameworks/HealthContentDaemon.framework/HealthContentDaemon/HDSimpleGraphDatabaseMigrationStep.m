@interface HDSimpleGraphDatabaseMigrationStep
+ (id)migrationToVersion:(int64_t)a3 function:(void *)a4;
@end

@implementation HDSimpleGraphDatabaseMigrationStep

+ (id)migrationToVersion:(int64_t)a3 function:(void *)a4
{
  v6 = [HDSimpleGraphDatabaseMigrationStep alloc];
  if (v6)
  {
    v8.receiver = v6;
    v8.super_class = HDSimpleGraphDatabaseMigrationStep;
    v6 = objc_msgSendSuper2(&v8, sel_init);
    if (v6)
    {
      v6->_toVersion = a3;
      v6->_function = a4;
    }
  }

  return v6;
}

@end