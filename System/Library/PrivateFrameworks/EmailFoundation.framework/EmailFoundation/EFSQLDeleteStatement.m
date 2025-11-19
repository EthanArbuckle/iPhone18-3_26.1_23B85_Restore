@interface EFSQLDeleteStatement
- (EFSQLDeleteStatement)initWithTable:(id)a3 where:(id)a4;
- (NSString)queryString;
- (void)orderByColumn:(id)a3 ascending:(BOOL)a4;
@end

@implementation EFSQLDeleteStatement

- (NSString)queryString
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"DELETE FROM %@", self->_table];
  v4 = v3;
  if (self->_where)
  {
    [v3 appendString:@" WHERE "];
    [(EFSQLValueExpressable *)self->_where ef_renderSQLExpressionInto:v4];
  }

  if ([(NSMutableArray *)self->_orderExpressions count])
  {
    [v4 appendString:@" ORDER BY "];
    [(NSMutableArray *)self->_orderExpressions ef_renderSQLExpressionInto:v4];
  }

  if (self->_limit)
  {
    [v4 appendFormat:@" LIMIT %llu", self->_limit];
  }

  return v4;
}

- (EFSQLDeleteStatement)initWithTable:(id)a3 where:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = EFSQLDeleteStatement;
  v9 = [(EFSQLDeleteStatement *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_table, a3);
    objc_storeStrong(&v10->_where, a4);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    orderExpressions = v10->_orderExpressions;
    v10->_orderExpressions = v11;
  }

  return v10;
}

- (void)orderByColumn:(id)a3 ascending:(BOOL)a4
{
  v5 = [EFSQLColumnExpression column:a3];
  [EFSQLDeleteStatement orderBy:"orderBy:ascending:" ascending:?];
}

@end