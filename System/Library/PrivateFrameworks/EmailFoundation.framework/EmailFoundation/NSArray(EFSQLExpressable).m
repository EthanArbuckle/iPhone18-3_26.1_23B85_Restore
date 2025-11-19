@interface NSArray(EFSQLExpressable)
- (id)ef_SQLExpression;
- (void)ef_renderSQLExpressionInto:()EFSQLExpressable;
- (void)ef_renderSQLExpressionInto:()EFSQLExpressable conjoiner:;
@end

@implementation NSArray(EFSQLExpressable)

- (id)ef_SQLExpression
{
  v2 = [MEMORY[0x1E696AD60] string];
  [a1 ef_renderSQLExpressionInto:v2];

  return v2;
}

- (void)ef_renderSQLExpressionInto:()EFSQLExpressable conjoiner:
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = v6;
  v10 = v7;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = 0;
    v14 = *v24;
    do
    {
      v15 = 0;
      v16 = -v13;
      v22 = v13 + v12;
      do
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v23 + 1) + 8 * v15);
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v21 = [MEMORY[0x1E696AAA8] currentHandler];
          v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void EFRenderSQLExpression(NSString *__strong, __strong id<NSFastEnumeration>, NSMutableString *__strong, NSString *__strong)"}];
          [v21 handleFailureInFunction:v19 file:@"EFSQLExpressable.m" lineNumber:104 description:{@"Objects in the %@ must conform to protocol EFSQLValueExpressable", @"array"}];
        }

        if (v16 != v15)
        {
          [v9 appendString:v10];
        }

        v18 = [v17 ef_SQLIsolatedExpression];
        [v18 ef_renderSQLExpressionInto:v9];

        ++v15;
      }

      while (v12 != v15);
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      v13 = v22;
    }

    while (v12);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)ef_renderSQLExpressionInto:()EFSQLExpressable
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = a1;
  v6 = v4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = *v20;
    do
    {
      v11 = 0;
      v12 = -v9;
      v18 = v9 + v8;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v19 + 1) + 8 * v11);
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v17 = [MEMORY[0x1E696AAA8] currentHandler];
          v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void EFRenderSQLExpression(NSString *__strong, __strong id<NSFastEnumeration>, NSMutableString *__strong, NSString *__strong)"}];
          [v17 handleFailureInFunction:v15 file:@"EFSQLExpressable.m" lineNumber:104 description:{@"Objects in the %@ must conform to protocol EFSQLValueExpressable", @"array"}];
        }

        if (v12 != v11)
        {
          [v6 appendString:{@", "}];
        }

        v14 = [v13 ef_SQLIsolatedExpression];
        [v14 ef_renderSQLExpressionInto:v6];

        ++v11;
      }

      while (v8 != v11);
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v9 = v18;
    }

    while (v8);
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end