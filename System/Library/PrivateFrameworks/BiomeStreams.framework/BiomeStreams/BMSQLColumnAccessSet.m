@interface BMSQLColumnAccessSet
- (BMSQLColumnAccessSet)initWithTable:(id)a3 columns:(id)a4;
- (BOOL)checkTable:(id)a3 column:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation BMSQLColumnAccessSet

- (BMSQLColumnAccessSet)initWithTable:(id)a3 columns:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = BMSQLColumnAccessSet;
  v8 = [(BMSQLColumnAccessSet *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    table = v8->_table;
    v8->_table = v9;

    objc_storeStrong(&v8->_columns, a4);
  }

  return v8;
}

- (BOOL)checkTable:(id)a3 column:(id)a4
{
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (a3 && v6)
  {
    if ([(NSString *)self->_table isEqualToString:a3])
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSQLColumnAccessSet *)self table];
    v7 = [v5 table];
    if ([v6 isEqual:v7])
    {
      v8 = [(BMSQLColumnAccessSet *)self columns];
      v9 = [v5 columns];
      v10 = [v8 isEqualToSet:v9];
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