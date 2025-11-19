@interface EFSQLFunction
+ (id)abs:(id)a3;
+ (id)char:(id)a3;
+ (id)coalesce:(id)a3;
+ (id)glob:(id)a3 expression:(id)a4;
+ (id)hex:(id)a3;
+ (id)ifNull:(id)a3 second:(id)a4;
+ (id)inStr:(id)a3 second:(id)a4;
+ (id)jsonObject:(id)a3 key:(id)a4;
+ (id)length:(id)a3;
+ (id)like:(id)a3 expression:(id)a4;
+ (id)likely:(id)a3;
+ (id)lower:(id)a3;
+ (id)ltrim:(id)a3 pattern:(id)a4;
+ (id)max:(id)a3;
+ (id)min:(id)a3;
+ (id)nullIf:(id)a3 second:(id)a4;
+ (id)replace:(id)a3 pattern:(id)a4 replacement:(id)a5;
+ (id)round:(id)a3 digits:(id)a4;
+ (id)rtrim:(id)a3 pattern:(id)a4;
+ (id)substr:(id)a3 index:(id)a4 length:(id)a5;
+ (id)trim:(id)a3 pattern:(id)a4;
+ (id)typeOf:(id)a3;
+ (id)unlikely:(id)a3;
+ (id)upper:(id)a3;
- (EFSQLFunction)initWithName:(id)a3 arguments:(id)a4;
- (NSString)ef_SQLExpression;
- (void)ef_renderSQLExpressionInto:(id)a3;
@end

@implementation EFSQLFunction

+ (id)abs:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [EFSQLFunction alloc];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [(EFSQLFunction *)v4 initWithName:@"abs" arguments:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)char:(id)a3
{
  v3 = a3;
  v4 = [[EFSQLFunction alloc] initWithName:@"char" arguments:v3];

  return v4;
}

+ (id)coalesce:(id)a3
{
  v5 = a3;
  if ([v5 count] <= 1)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"EFSQLFunction.m" lineNumber:140 description:{@"Invalid parameter not satisfying: %@", @"expressions.count >= 2"}];
  }

  v6 = [[EFSQLFunction alloc] initWithName:@"coalesce" arguments:v5];

  return v6;
}

+ (id)glob:(id)a3 expression:(id)a4
{
  v12[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [EFSQLFunction alloc];
  v12[0] = v5;
  v12[1] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v9 = [(EFSQLFunction *)v7 initWithName:@"glob" arguments:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)hex:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [EFSQLFunction alloc];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [(EFSQLFunction *)v4 initWithName:@"hex" arguments:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)ifNull:(id)a3 second:(id)a4
{
  v12[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [EFSQLFunction alloc];
  v12[0] = v5;
  v12[1] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v9 = [(EFSQLFunction *)v7 initWithName:@"ifnull" arguments:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)inStr:(id)a3 second:(id)a4
{
  v12[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [EFSQLFunction alloc];
  v12[0] = v5;
  v12[1] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v9 = [(EFSQLFunction *)v7 initWithName:@"instr" arguments:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)length:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [EFSQLFunction alloc];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [(EFSQLFunction *)v4 initWithName:@"length" arguments:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)like:(id)a3 expression:(id)a4
{
  v12[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [EFSQLFunction alloc];
  v12[0] = v5;
  v12[1] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v9 = [(EFSQLFunction *)v7 initWithName:@"like" arguments:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)lower:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [EFSQLFunction alloc];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [(EFSQLFunction *)v4 initWithName:@"lower" arguments:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)ltrim:(id)a3 pattern:(id)a4
{
  v12[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [EFSQLFunction alloc];
  v12[0] = v5;
  v12[1] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v9 = [(EFSQLFunction *)v7 initWithName:@"ltrim" arguments:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)max:(id)a3
{
  v5 = a3;
  if ([v5 count] <= 1)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"EFSQLFunction.m" lineNumber:182 description:{@"Invalid parameter not satisfying: %@", @"expressions.count >= 2"}];
  }

  v6 = [[EFSQLFunction alloc] initWithName:@"max" arguments:v5];

  return v6;
}

+ (id)min:(id)a3
{
  v5 = a3;
  if ([v5 count] <= 1)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"EFSQLFunction.m" lineNumber:187 description:{@"Invalid parameter not satisfying: %@", @"expressions.count >= 2"}];
  }

  v6 = [[EFSQLFunction alloc] initWithName:@"min" arguments:v5];

  return v6;
}

+ (id)nullIf:(id)a3 second:(id)a4
{
  v12[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [EFSQLFunction alloc];
  v12[0] = v5;
  v12[1] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v9 = [(EFSQLFunction *)v7 initWithName:@"nullif" arguments:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)replace:(id)a3 pattern:(id)a4 replacement:(id)a5
{
  v15[3] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [EFSQLFunction alloc];
  v15[0] = v7;
  v15[1] = v8;
  v15[2] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
  v12 = [(EFSQLFunction *)v10 initWithName:@"replace" arguments:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)round:(id)a3 digits:(id)a4
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
  v10 = [[EFSQLFunction alloc] initWithName:@"round" arguments:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)rtrim:(id)a3 pattern:(id)a4
{
  v12[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [EFSQLFunction alloc];
  v12[0] = v5;
  v12[1] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v9 = [(EFSQLFunction *)v7 initWithName:@"rtrim" arguments:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)substr:(id)a3 index:(id)a4 length:(id)a5
{
  v17[3] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    v17[0] = v7;
    v17[1] = v8;
    v17[2] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
  }

  else
  {
    v16[0] = v7;
    v16[1] = v8;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  }

  v12 = v11;
  v13 = [[EFSQLFunction alloc] initWithName:@"substr" arguments:v11];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)trim:(id)a3 pattern:(id)a4
{
  v12[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [EFSQLFunction alloc];
  v12[0] = v5;
  v12[1] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v9 = [(EFSQLFunction *)v7 initWithName:@"trim" arguments:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)typeOf:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [EFSQLFunction alloc];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [(EFSQLFunction *)v4 initWithName:@"typeof" arguments:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)upper:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [EFSQLFunction alloc];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [(EFSQLFunction *)v4 initWithName:@"upper" arguments:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)jsonObject:(id)a3 key:(id)a4
{
  v12[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [EFSQLFunction alloc];
  v12[0] = v6;
  v12[1] = v5;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v9 = [(EFSQLFunction *)v7 initWithName:@"json_object" arguments:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)likely:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [EFSQLFunction alloc];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [(EFSQLFunction *)v4 initWithName:@"likely" arguments:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)unlikely:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [EFSQLFunction alloc];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [(EFSQLFunction *)v4 initWithName:@"unlikely" arguments:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (EFSQLFunction)initWithName:(id)a3 arguments:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = EFSQLFunction;
  v8 = [(EFSQLFunction *)&v14 init];
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
  [(EFSQLFunction *)self ef_renderSQLExpressionInto:v3];

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