@interface EFSQLCaseExpression
- (EFSQLCaseExpression)initWithBaseExpression:(id)expression;
- (NSString)ef_SQLExpression;
- (id)objectForKeyedSubscript:(id)subscript;
- (void)ef_renderSQLExpressionInto:(id)into;
@end

@implementation EFSQLCaseExpression

- (EFSQLCaseExpression)initWithBaseExpression:(id)expression
{
  expressionCopy = expression;
  v11.receiver = self;
  v11.super_class = EFSQLCaseExpression;
  v6 = [(EFSQLCaseExpression *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseExpression, expression);
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    whenExpressions = v7->_whenExpressions;
    v7->_whenExpressions = strongToStrongObjectsMapTable;
  }

  return v7;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  v3 = [(NSMapTable *)self->_whenExpressions objectForKey:subscript];

  return v3;
}

- (NSString)ef_SQLExpression
{
  string = [MEMORY[0x1E696AD60] string];
  [(EFSQLCaseExpression *)self ef_renderSQLExpressionInto:string];

  return string;
}

- (void)ef_renderSQLExpressionInto:(id)into
{
  v23 = *MEMORY[0x1E69E9840];
  intoCopy = into;
  [intoCopy appendString:@"CASE"];
  baseExpression = [(EFSQLCaseExpression *)self baseExpression];
  if (baseExpression)
  {
    [intoCopy appendString:@" "];
    ef_SQLIsolatedExpression = [baseExpression ef_SQLIsolatedExpression];
    [ef_SQLIsolatedExpression ef_renderSQLExpressionInto:intoCopy];
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
        [intoCopy appendString:@" WHEN "];
        ef_SQLIsolatedExpression2 = [v10 ef_SQLIsolatedExpression];
        [ef_SQLIsolatedExpression2 ef_renderSQLExpressionInto:intoCopy];

        [intoCopy appendString:@" THEN "];
        ef_SQLIsolatedExpression3 = [v11 ef_SQLIsolatedExpression];
        [ef_SQLIsolatedExpression3 ef_renderSQLExpressionInto:intoCopy];
      }

      v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  elseExpression = [(EFSQLCaseExpression *)self elseExpression];
  if (elseExpression)
  {
    [intoCopy appendString:@" ELSE "];
    ef_SQLIsolatedExpression4 = [elseExpression ef_SQLIsolatedExpression];
    [ef_SQLIsolatedExpression4 ef_renderSQLExpressionInto:intoCopy];
  }

  [intoCopy appendString:@" END"];

  v16 = *MEMORY[0x1E69E9840];
}

@end