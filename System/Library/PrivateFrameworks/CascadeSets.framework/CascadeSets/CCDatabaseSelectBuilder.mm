@interface CCDatabaseSelectBuilder
- (CCDatabaseSelectBuilder)initWithTableName:(id)a3;
- (id)build;
- (void)setColumns:(id)a3;
- (void)setColumns:(id)a3 withTablePrefixes:(id)a4;
- (void)setCommandCriterion:(id)a3;
- (void)setCommandOrder:(id)a3;
- (void)setJoinWithType:(int64_t)a3 tables:(id)a4;
@end

@implementation CCDatabaseSelectBuilder

- (id)build
{
  v3 = [(CCDatabaseCommandBuilder *)self tableName];
  columns = self->_columns;
  count = self->_count;
  join = self->_join;
  v7 = [(CCDatabaseCommandBuilder *)self criterion];
  limit = self->_limit;
  v9 = [CCSQLCommandGenerator selectFromTableWithName:v3 columns:columns count:count join:join criterion:v7 order:self->_order limit:limit offset:self->_offset];

  return v9;
}

- (CCDatabaseSelectBuilder)initWithTableName:(id)a3
{
  v10.receiver = self;
  v10.super_class = CCDatabaseSelectBuilder;
  v3 = [(CCDatabaseCommandBuilder *)&v10 initWithTableName:a3];
  v4 = v3;
  if (v3)
  {
    join = v3->_join;
    v3->_join = 0;

    order = v4->_order;
    v4->_order = 0;

    v4->_count = 0;
    limit = v4->_limit;
    v4->_limit = 0;

    offset = v4->_offset;
    v4->_offset = 0;
  }

  return v4;
}

- (void)setCommandCriterion:(id)a3
{
  v3.receiver = self;
  v3.super_class = CCDatabaseSelectBuilder;
  [(CCDatabaseCommandBuilder *)&v3 setCommandCriterion:a3];
}

- (void)setJoinWithType:(int64_t)a3 tables:(id)a4
{
  v6 = a4;
  v7 = [[CCSQLCommandJoin alloc] initWithJoinType:a3 joinTables:v6];

  join = self->_join;
  self->_join = v7;
}

- (void)setCommandOrder:(id)a3
{
  v4 = [a3 copy];
  order = self->_order;
  self->_order = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setColumns:(id)a3
{
  v4 = [a3 copy];
  columns = self->_columns;
  self->_columns = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setColumns:(id)a3 withTablePrefixes:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v12, "count")}];
  if ([v12 count])
  {
    v8 = 0;
    do
    {
      v9 = [v12 objectAtIndex:v8];
      if ([v6 count] <= v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = [v6 objectAtIndex:v8];
      }

      v11 = [CCSQLCommandGenerator prefixColumnName:v9 withTableName:v10];
      [v7 addObject:v11];

      ++v8;
    }

    while (v8 < [v12 count]);
  }

  [(CCDatabaseSelectBuilder *)self setColumns:v7];
}

@end