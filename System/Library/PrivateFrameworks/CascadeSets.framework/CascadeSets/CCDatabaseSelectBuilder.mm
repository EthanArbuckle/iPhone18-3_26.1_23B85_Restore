@interface CCDatabaseSelectBuilder
- (CCDatabaseSelectBuilder)initWithTableName:(id)name;
- (id)build;
- (void)setColumns:(id)columns;
- (void)setColumns:(id)columns withTablePrefixes:(id)prefixes;
- (void)setCommandCriterion:(id)criterion;
- (void)setCommandOrder:(id)order;
- (void)setJoinWithType:(int64_t)type tables:(id)tables;
@end

@implementation CCDatabaseSelectBuilder

- (id)build
{
  tableName = [(CCDatabaseCommandBuilder *)self tableName];
  columns = self->_columns;
  count = self->_count;
  join = self->_join;
  criterion = [(CCDatabaseCommandBuilder *)self criterion];
  limit = self->_limit;
  v9 = [CCSQLCommandGenerator selectFromTableWithName:tableName columns:columns count:count join:join criterion:criterion order:self->_order limit:limit offset:self->_offset];

  return v9;
}

- (CCDatabaseSelectBuilder)initWithTableName:(id)name
{
  v10.receiver = self;
  v10.super_class = CCDatabaseSelectBuilder;
  v3 = [(CCDatabaseCommandBuilder *)&v10 initWithTableName:name];
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

- (void)setCommandCriterion:(id)criterion
{
  v3.receiver = self;
  v3.super_class = CCDatabaseSelectBuilder;
  [(CCDatabaseCommandBuilder *)&v3 setCommandCriterion:criterion];
}

- (void)setJoinWithType:(int64_t)type tables:(id)tables
{
  tablesCopy = tables;
  v7 = [[CCSQLCommandJoin alloc] initWithJoinType:type joinTables:tablesCopy];

  join = self->_join;
  self->_join = v7;
}

- (void)setCommandOrder:(id)order
{
  v4 = [order copy];
  order = self->_order;
  self->_order = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setColumns:(id)columns
{
  v4 = [columns copy];
  columns = self->_columns;
  self->_columns = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setColumns:(id)columns withTablePrefixes:(id)prefixes
{
  columnsCopy = columns;
  prefixesCopy = prefixes;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(columnsCopy, "count")}];
  if ([columnsCopy count])
  {
    v8 = 0;
    do
    {
      v9 = [columnsCopy objectAtIndex:v8];
      if ([prefixesCopy count] <= v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = [prefixesCopy objectAtIndex:v8];
      }

      v11 = [CCSQLCommandGenerator prefixColumnName:v9 withTableName:v10];
      [v7 addObject:v11];

      ++v8;
    }

    while (v8 < [columnsCopy count]);
  }

  [(CCDatabaseSelectBuilder *)self setColumns:v7];
}

@end