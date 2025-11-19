@interface EFSQLCaseExpression
- (EFSQLCaseExpression)initWithBaseExpression:(id)a3;
- (NSString)ef_SQLExpression;
- (id)objectForKeyedSubscript:(id)a3;
- (void)ef_renderSQLExpressionInto:(id)a3;
@end

@implementation EFSQLCaseExpression

- (EFSQLCaseExpression)initWithBaseExpression:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = EFSQLCaseExpression;
  v6 = [(EFSQLCaseExpression *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseExpression, a3);
    v8 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    whenExpressions = v7->_whenExpressions;
    v7->_whenExpressions = v8;
  }

  return v7;
}

- (id)objectForKeyedSubscript:(id)a3
{
  v3 = [(NSMapTable *)self->_whenExpressions objectForKey:a3];

  return v3;
}

- (NSString)ef_SQLExpression
{
  v3 = [MEMORY[0x1E696AD60] string];
  [(EFSQLCaseExpression *)self ef_renderSQLExpressionInto:v3];

  return v3;
}

- (void)ef_renderSQLExpressionInto:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 appendString:@"CASE"];
  v17 = [(EFSQLCaseExpression *)self baseExpression];
  if (v17)
  {
    [v4 appendString:@" "];
    v5 = [v17 ef_SQLIsolatedExpression];
    [v5 ef_renderSQLExpressionInto:v4];
  }

  [(EFSQLCaseExpression *)self whenExpressions];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v6 = v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v6 objectForKey:v10];
        [v4 appendString:@" WHEN "];
        v12 = [v10 ef_SQLIsolatedExpression];
        [v12 ef_renderSQLExpressionInto:v4];

        [v4 appendString:@" THEN "];
        v13 = [v11 ef_SQLIsolatedExpression];
        [v13 ef_renderSQLExpressionInto:v4];
      }

      v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v14 = [(EFSQLCaseExpression *)self elseExpression];
  if (v14)
  {
    [v4 appendString:@" ELSE "];
    v15 = [v14 ef_SQLIsolatedExpression];
    [v15 ef_renderSQLExpressionInto:v4];
  }

  [v4 appendString:@" END"];

  v16 = *MEMORY[0x1E69E9840];
}

@end