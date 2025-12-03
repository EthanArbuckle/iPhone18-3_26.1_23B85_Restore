@interface CCDatabaseCommandBuilder
- (CCDatabaseCommandBuilder)init;
- (CCDatabaseCommandBuilder)initWithTableName:(id)name;
- (void)setCommandCriterion:(id)criterion;
@end

@implementation CCDatabaseCommandBuilder

- (CCDatabaseCommandBuilder)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCDatabaseCommandBuilder)initWithTableName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = CCDatabaseCommandBuilder;
  v5 = [(CCDatabaseCommandBuilder *)&v12 init];
  if (!v5 || (v6 = [nameCopy copy], tableName = v5->_tableName, v5->_tableName = v6, tableName, (v8 = v5->_tableName) != 0) && -[NSString length](v8, "length"))
  {
    v9 = v5;
  }

  else
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseCommandBuilder initWithTableName:v10];
    }

    v9 = 0;
  }

  return v9;
}

- (void)setCommandCriterion:(id)criterion
{
  v4 = [criterion copy];
  criterion = self->_criterion;
  self->_criterion = v4;

  MEMORY[0x1EEE66BB8]();
}

@end