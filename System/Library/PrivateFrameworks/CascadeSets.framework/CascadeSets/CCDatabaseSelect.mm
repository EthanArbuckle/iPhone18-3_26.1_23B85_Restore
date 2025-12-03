@interface CCDatabaseSelect
+ (id)builderWithTableName:(id)name;
- (void)addLimit:(unint64_t)limit offset:(unint64_t)offset;
- (void)replaceOffset:(unint64_t)offset;
@end

@implementation CCDatabaseSelect

+ (id)builderWithTableName:(id)name
{
  nameCopy = name;
  v4 = [[CCDatabaseSelectBuilder alloc] initWithTableName:nameCopy];

  return v4;
}

- (void)addLimit:(unint64_t)limit offset:(unint64_t)offset
{
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:limit];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:offset];
  [CCSQLCommandGenerator addLimit:v7 offset:v6 forSelect:self];
}

- (void)replaceOffset:(unint64_t)offset
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:offset];
  [CCSQLCommandGenerator replaceOffset:v4 forSelect:self];
}

@end