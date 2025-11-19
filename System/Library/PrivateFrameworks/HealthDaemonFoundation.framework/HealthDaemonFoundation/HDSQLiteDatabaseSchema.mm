@interface HDSQLiteDatabaseSchema
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation HDSQLiteDatabaseSchema

- (BOOL)isEqual:(id)a3
{
  tables = self->_tables;
  v4 = *(a3 + 1);
  if (tables == v4)
  {
    return 1;
  }

  if (v4)
  {
    return [(NSDictionary *)tables isEqual:?];
  }

  return 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v9.receiver = self;
  v9.super_class = HDSQLiteDatabaseSchema;
  v4 = [(HDSQLiteDatabaseSchema *)&v9 description];
  v5 = [(NSDictionary *)self->_tables allValues];
  v6 = [v5 componentsJoinedByString:@"\n"];
  v7 = [v3 stringWithFormat:@"<%@: \n%@\n>", v4, v6];

  return v7;
}

@end