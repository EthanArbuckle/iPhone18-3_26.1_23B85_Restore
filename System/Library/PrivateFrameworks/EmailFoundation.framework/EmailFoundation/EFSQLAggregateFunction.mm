@interface EFSQLAggregateFunction
+ (id)avg:(id)avg;
+ (id)avgDistinct:(id)distinct;
+ (id)count:(id)count;
+ (id)countDistinct:(id)distinct;
+ (id)groupConcat:(id)concat separator:(id)separator;
+ (id)max:(id)max;
+ (id)maxDistinct:(id)distinct;
+ (id)min:(id)min;
+ (id)minDistinct:(id)distinct;
+ (id)sum:(id)sum;
+ (id)sumDistinct:(id)distinct;
+ (id)total:(id)total;
+ (id)totalDistinct:(id)distinct;
- (EFSQLAggregateFunction)initWithName:(id)name arguments:(id)arguments;
- (NSString)ef_SQLExpression;
- (void)ef_renderSQLExpressionInto:(id)into;
@end

@implementation EFSQLAggregateFunction

+ (id)avg:(id)avg
{
  v9[1] = *MEMORY[0x1E69E9840];
  avgCopy = avg;
  v4 = [EFSQLAggregateFunction alloc];
  v9[0] = avgCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [(EFSQLAggregateFunction *)v4 initWithName:@"avg" arguments:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)avgDistinct:(id)distinct
{
  distinctCopy = distinct;
  v5 = [[_EFSQLDistinctExpression alloc] initWithExpression:distinctCopy];
  v6 = [self avg:v5];

  return v6;
}

+ (id)count:(id)count
{
  v9[1] = *MEMORY[0x1E69E9840];
  countCopy = count;
  v4 = countCopy;
  if (countCopy)
  {
    v9[0] = countCopy;
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

+ (id)countDistinct:(id)distinct
{
  distinctCopy = distinct;
  v5 = [[_EFSQLDistinctExpression alloc] initWithExpression:distinctCopy];
  v6 = [self count:v5];

  return v6;
}

+ (id)groupConcat:(id)concat separator:(id)separator
{
  v14[2] = *MEMORY[0x1E69E9840];
  concatCopy = concat;
  separatorCopy = separator;
  v7 = separatorCopy;
  if (separatorCopy)
  {
    v14[0] = concatCopy;
    v14[1] = separatorCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  }

  else
  {
    v13 = concatCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  }

  v9 = v8;
  v10 = [[EFSQLAggregateFunction alloc] initWithName:@"group_concat" arguments:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)max:(id)max
{
  v9[1] = *MEMORY[0x1E69E9840];
  maxCopy = max;
  v4 = [EFSQLAggregateFunction alloc];
  v9[0] = maxCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [(EFSQLAggregateFunction *)v4 initWithName:@"max" arguments:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)maxDistinct:(id)distinct
{
  distinctCopy = distinct;
  v5 = [[_EFSQLDistinctExpression alloc] initWithExpression:distinctCopy];
  v6 = [self max:v5];

  return v6;
}

+ (id)min:(id)min
{
  v9[1] = *MEMORY[0x1E69E9840];
  minCopy = min;
  v4 = [EFSQLAggregateFunction alloc];
  v9[0] = minCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [(EFSQLAggregateFunction *)v4 initWithName:@"min" arguments:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)minDistinct:(id)distinct
{
  distinctCopy = distinct;
  v5 = [[_EFSQLDistinctExpression alloc] initWithExpression:distinctCopy];
  v6 = [self min:v5];

  return v6;
}

+ (id)sum:(id)sum
{
  v9[1] = *MEMORY[0x1E69E9840];
  sumCopy = sum;
  v4 = [EFSQLAggregateFunction alloc];
  v9[0] = sumCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [(EFSQLAggregateFunction *)v4 initWithName:@"sum" arguments:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)sumDistinct:(id)distinct
{
  distinctCopy = distinct;
  v5 = [[_EFSQLDistinctExpression alloc] initWithExpression:distinctCopy];
  v6 = [self sum:v5];

  return v6;
}

+ (id)total:(id)total
{
  v9[1] = *MEMORY[0x1E69E9840];
  totalCopy = total;
  v4 = [EFSQLAggregateFunction alloc];
  v9[0] = totalCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [(EFSQLAggregateFunction *)v4 initWithName:@"total" arguments:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)totalDistinct:(id)distinct
{
  distinctCopy = distinct;
  v5 = [[_EFSQLDistinctExpression alloc] initWithExpression:distinctCopy];
  v6 = [self total:v5];

  return v6;
}

- (EFSQLAggregateFunction)initWithName:(id)name arguments:(id)arguments
{
  nameCopy = name;
  argumentsCopy = arguments;
  v14.receiver = self;
  v14.super_class = EFSQLAggregateFunction;
  v8 = [(EFSQLAggregateFunction *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [argumentsCopy copy];
    arguments = v8->_arguments;
    v8->_arguments = v11;
  }

  return v8;
}

- (NSString)ef_SQLExpression
{
  string = [MEMORY[0x1E696AD60] string];
  [(EFSQLAggregateFunction *)self ef_renderSQLExpressionInto:string];

  return string;
}

- (void)ef_renderSQLExpressionInto:(id)into
{
  intoCopy = into;
  name = self->_name;
  arguments = self->_arguments;
  v9 = intoCopy;
  v7 = name;
  v8 = arguments;
  [v9 appendString:v7];
  objc_msgSend(v9, "appendString:", @"(");
  [(NSArray *)v8 ef_renderSQLExpressionInto:v9];
  [v9 appendString:@""]);
}

@end