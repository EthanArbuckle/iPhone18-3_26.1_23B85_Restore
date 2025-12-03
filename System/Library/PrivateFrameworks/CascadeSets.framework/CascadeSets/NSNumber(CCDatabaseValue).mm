@interface NSNumber(CCDatabaseValue)
- (id)databaseValue_toData;
- (uint64_t)databaseValue_type;
- (void)databaseValue_type;
@end

@implementation NSNumber(CCDatabaseValue)

- (uint64_t)databaseValue_type
{
  v2 = *[self objCType] - 66;
  if (v2 > 0x31)
  {
    goto LABEL_6;
  }

  if (((1 << v2) & 0x2848200028483) != 0)
  {
    return 3;
  }

  if (((1 << v2) & 0x1400000000) != 0)
  {
    return 2;
  }

LABEL_6:
  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(NSNumber(CCDatabaseValue) *)self databaseValue_type];
  }

  return 0;
}

- (id)databaseValue_toData
{
  databaseValue_toString = [self databaseValue_toString];
  databaseValue_toData = [databaseValue_toString databaseValue_toData];

  return databaseValue_toData;
}

- (void)databaseValue_type
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  selfCopy = self;
  v6 = 2080;
  objCType = [self objCType];
  _os_log_error_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_ERROR, "%@ (objCType = %s)", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end