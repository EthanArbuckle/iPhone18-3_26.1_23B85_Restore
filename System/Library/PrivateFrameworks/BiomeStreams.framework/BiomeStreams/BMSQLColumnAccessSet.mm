@interface BMSQLColumnAccessSet
- (BMSQLColumnAccessSet)initWithTable:(id)table columns:(id)columns;
- (BOOL)checkTable:(id)table column:(id)column;
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation BMSQLColumnAccessSet

- (BMSQLColumnAccessSet)initWithTable:(id)table columns:(id)columns
{
  tableCopy = table;
  columnsCopy = columns;
  v12.receiver = self;
  v12.super_class = BMSQLColumnAccessSet;
  v8 = [(BMSQLColumnAccessSet *)&v12 init];
  if (v8)
  {
    v9 = [tableCopy copy];
    table = v8->_table;
    v8->_table = v9;

    objc_storeStrong(&v8->_columns, columns);
  }

  return v8;
}

- (BOOL)checkTable:(id)table column:(id)column
{
  columnCopy = column;
  v7 = columnCopy;
  v8 = 0;
  if (table && columnCopy)
  {
    if ([(NSString *)self->_table isEqualToString:table])
    {
      v8 = [(NSSet *)self->_columns containsObject:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@ %p> table: %@, columns: %@", objc_opt_class(), self, self->_table, self->_columns];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    table = [(BMSQLColumnAccessSet *)self table];
    table2 = [v5 table];
    if ([table isEqual:table2])
    {
      columns = [(BMSQLColumnAccessSet *)self columns];
      columns2 = [v5 columns];
      v10 = [columns isEqualToSet:columns2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end