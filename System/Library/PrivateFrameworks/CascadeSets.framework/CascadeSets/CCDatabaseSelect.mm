@interface CCDatabaseSelect
+ (id)builderWithTableName:(id)a3;
- (void)addLimit:(unint64_t)a3 offset:(unint64_t)a4;
- (void)replaceOffset:(unint64_t)a3;
@end

@implementation CCDatabaseSelect

+ (id)builderWithTableName:(id)a3
{
  v3 = a3;
  v4 = [[CCDatabaseSelectBuilder alloc] initWithTableName:v3];

  return v4;
}

- (void)addLimit:(unint64_t)a3 offset:(unint64_t)a4
{
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a3];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a4];
  [CCSQLCommandGenerator addLimit:v7 offset:v6 forSelect:self];
}

- (void)replaceOffset:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a3];
  [CCSQLCommandGenerator replaceOffset:v4 forSelect:self];
}

@end