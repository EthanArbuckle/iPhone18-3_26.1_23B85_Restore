@interface EFSQLAggregateFunction
+ (id)avg:(id)a3;
+ (id)avgDistinct:(id)a3;
+ (id)count:(id)a3;
+ (id)countDistinct:(id)a3;
+ (id)groupConcat:(id)a3 separator:(id)a4;
+ (id)max:(id)a3;
+ (id)maxDistinct:(id)a3;
+ (id)min:(id)a3;
+ (id)minDistinct:(id)a3;
+ (id)sum:(id)a3;
+ (id)sumDistinct:(id)a3;
+ (id)total:(id)a3;
+ (id)totalDistinct:(id)a3;
- (EFSQLAggregateFunction)initWithName:(id)a3 arguments:(id)a4;
- (NSString)ef_SQLExpression;
- (void)ef_renderSQLExpressionInto:(id)a3;
@end

@implementation EFSQLAggregateFunction

+ (id)avg:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [EFSQLAggregateFunction alloc];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [(EFSQLAggregateFunction *)v4 initWithName:@"avg" arguments:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)avgDistinct:(id)a3
{
  v4 = a3;
  v5 = [[_EFSQLDistinctExpression alloc] initWithExpression:v4];
  v6 = [a1 avg:v5];

  return v6;
}

+ (id)count:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v9[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = [[EFSQLAggregateFunction alloc] initWithName:@"count" arguments:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)countDistinct:(id)a3
{
  v4 = a3;
  v5 = [[_EFSQLDistinctExpression alloc] initWithExpression:v4];
  v6 = [a1 count:v5];

  return v6;
}

+ (id)groupConcat:(id)a3 separator:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v14[0] = v5;
    v14[1] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  }

  else
  {
    v13 = v5;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  }

  v9 = v8;
  v10 = [[EFSQLAggregateFunction alloc] initWithName:@"group_concat" arguments:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)max:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [EFSQLAggregateFunction alloc];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [(EFSQLAggregateFunction *)v4 initWithName:@"max" arguments:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)maxDistinct:(id)a3
{
  v4 = a3;
  v5 = [[_EFSQLDistinctExpression alloc] initWithExpression:v4];
  v6 = [a1 max:v5];

  return v6;
}

+ (id)min:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [EFSQLAggregateFunction alloc];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [(EFSQLAggregateFunction *)v4 initWithName:@"min" arguments:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)minDistinct:(id)a3
{
  v4 = a3;
  v5 = [[_EFSQLDistinctExpression alloc] initWithExpression:v4];
  v6 = [a1 min:v5];

  return v6;
}

+ (id)sum:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [EFSQLAggregateFunction alloc];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [(EFSQLAggregateFunction *)v4 initWithName:@"sum" arguments:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)sumDistinct:(id)a3
{
  v4 = a3;
  v5 = [[_EFSQLDistinctExpression alloc] initWithExpression:v4];
  v6 = [a1 sum:v5];

  return v6;
}

+ (id)total:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [EFSQLAggregateFunction alloc];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [(EFSQLAggregateFunction *)v4 initWithName:@"total" arguments:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)totalDistinct:(id)a3
{
  v4 = a3;
  v5 = [[_EFSQLDistinctExpression alloc] initWithExpression:v4];
  v6 = [a1 total:v5];

  return v6;
}

- (EFSQLAggregateFunction)initWithName:(id)a3 arguments:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = EFSQLAggregateFunction;
  v8 = [(EFSQLAggregateFunction *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [v7 copy];
    arguments = v8->_arguments;
    v8->_arguments = v11;
  }

  return v8;
}

- (NSString)ef_SQLExpression
{
  v3 = [MEMORY[0x1E696AD60] string];
  [(EFSQLAggregateFunction *)self ef_renderSQLExpressionInto:v3];

  return v3;
}

- (void)ef_renderSQLExpressionInto:(id)a3
{
  v4 = a3;
  name = self->_name;
  arguments = self->_arguments;
  v9 = v4;
  v7 = name;
  v8 = arguments;
  [v9 appendString:v7];
  objc_msgSend(v9, "appendString:", @"(");
  [(NSArray *)v8 ef_renderSQLExpressionInto:v9];
  [v9 appendString:@""]);
}

@end