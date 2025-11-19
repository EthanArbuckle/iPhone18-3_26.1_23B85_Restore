@interface NUChannelExpression
+ (id)constantExpression:(id)a3;
+ (id)falseExpression;
+ (id)if:(id)a3 then:(id)a4 else:(id)a5;
+ (id)isNil:(id)a3;
+ (id)isNotNil:(id)a3;
+ (id)max:(id)a3;
+ (id)min:(id)a3;
+ (id)negative:(id)a3;
+ (id)not:(id)a3;
+ (id)nullExpression;
+ (id)rectWithX:(id)a3 y:(id)a4 width:(id)a5 height:(id)a6;
+ (id)staticExpression:(id)a3;
+ (id)trueExpression;
- (NSString)compactDescription;
- (NUChannelExpression)init;
- (NUChannelExpression)initWithExpressionType:(int64_t)a3 arguments:(id)a4;
- (id)and:(id)a3;
- (id)debugDescription;
- (id)description;
- (id)divide:(id)a3;
- (id)equal:(id)a3;
- (id)evaluateWithArgumentData:(id)a3 error:(id *)a4;
- (id)evaluateWithContext:(id)a3 error:(id *)a4;
- (id)greaterThan:(id)a3;
- (id)greaterThanOrEqual:(id)a3;
- (id)lessThan:(id)a3;
- (id)lessThanOrEqual:(id)a3;
- (id)minus:(id)a3;
- (id)multiply:(id)a3;
- (id)notEqual:(id)a3;
- (id)or:(id)a3;
- (id)plus:(id)a3;
@end

@implementation NUChannelExpression

- (id)or:(id)a3
{
  v4 = a3;
  v5 = [(NUChannelBinaryExpression *)[NUChannelLogicalOrExpression alloc] initWithLeftExpression:self rightExpression:v4];

  return v5;
}

+ (id)min:(id)a3
{
  v3 = a3;
  v4 = [(NUChannelMinMaxExpression *)[NUChannelMinExpression alloc] initWithExpressions:v3];

  return v4;
}

+ (id)max:(id)a3
{
  v3 = a3;
  v4 = [(NUChannelMinMaxExpression *)[NUChannelMaxExpression alloc] initWithExpressions:v3];

  return v4;
}

+ (id)if:(id)a3 then:(id)a4 else:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[NUChannelIfThenElseExpression alloc] initWithConditionExpression:v9 trueExpression:v8 falseExpression:v7];

  return v10;
}

+ (id)not:(id)a3
{
  v3 = a3;
  v4 = [(NUChannelUnaryExpression *)[NUChannelLogicalNotExpression alloc] initWithExpression:v3];

  return v4;
}

+ (id)falseExpression
{
  v3 = [NUChannelData BOOLean:0];
  v4 = [a1 constantExpression:v3];

  return v4;
}

+ (id)trueExpression
{
  v3 = [NUChannelData BOOLean:1];
  v4 = [a1 constantExpression:v3];

  return v4;
}

+ (id)isNotNil:(id)a3
{
  v3 = a3;
  v4 = [(NUChannelUnaryExpression *)[NUChannelIsNotNilExpression alloc] initWithExpression:v3];

  return v4;
}

+ (id)isNil:(id)a3
{
  v3 = a3;
  v4 = [(NUChannelUnaryExpression *)[NUChannelIsNilExpression alloc] initWithExpression:v3];

  return v4;
}

+ (id)negative:(id)a3
{
  v3 = a3;
  v4 = [(NUChannelUnaryExpression *)[NUChannelNegationExpression alloc] initWithExpression:v3];

  return v4;
}

+ (id)rectWithX:(id)a3 y:(id)a4 width:(id)a5 height:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[NURectExpression alloc] initWithXExpression:v12 yExpression:v11 widthExpression:v10 heightExpression:v9];

  return v13;
}

+ (id)staticExpression:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 channel], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "format"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "expressionType"), v7, v6, v8))
  {
    v9 = [[NUChannelStaticExpression alloc] initWithPort:v5 expressionType:v8];
  }

  else
  {
    v9 = [a1 nullExpression];
  }

  v10 = v9;

  return v10;
}

+ (id)constantExpression:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 format], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "expressionType"), v6, v7))
  {
    v8 = [[NUChannelConstantExpression alloc] initWithData:v5 expressionType:v7];
  }

  else
  {
    v8 = [a1 nullExpression];
  }

  v9 = v8;

  return v9;
}

+ (id)nullExpression
{
  v2 = objc_alloc_init(NUChannelNullExpression);

  return v2;
}

- (id)and:(id)a3
{
  v4 = a3;
  v5 = [(NUChannelBinaryExpression *)[NUChannelLogicalAndExpression alloc] initWithLeftExpression:self rightExpression:v4];

  return v5;
}

- (id)greaterThanOrEqual:(id)a3
{
  v4 = a3;
  v5 = [(NUChannelBinaryExpression *)[NUChannelGreaterThanOrEqualExpression alloc] initWithLeftExpression:self rightExpression:v4];

  return v5;
}

- (id)greaterThan:(id)a3
{
  v4 = a3;
  v5 = [(NUChannelBinaryExpression *)[NUChannelGreaterThanExpression alloc] initWithLeftExpression:self rightExpression:v4];

  return v5;
}

- (id)lessThanOrEqual:(id)a3
{
  v4 = a3;
  v5 = [(NUChannelBinaryExpression *)[NUChannelLessThanOrEqualExpression alloc] initWithLeftExpression:self rightExpression:v4];

  return v5;
}

- (id)lessThan:(id)a3
{
  v4 = a3;
  v5 = [(NUChannelBinaryExpression *)[NUChannelLessThanExpression alloc] initWithLeftExpression:self rightExpression:v4];

  return v5;
}

- (id)notEqual:(id)a3
{
  v4 = a3;
  v5 = [(NUChannelBinaryExpression *)[NUChannelInequalityExpression alloc] initWithLeftExpression:self rightExpression:v4];

  return v5;
}

- (id)equal:(id)a3
{
  v4 = a3;
  v5 = [(NUChannelBinaryExpression *)[NUChannelEqualityExpression alloc] initWithLeftExpression:self rightExpression:v4];

  return v5;
}

- (id)divide:(id)a3
{
  v4 = a3;
  v5 = [(NUChannelBinaryExpression *)[NUChannelDivisionExpression alloc] initWithLeftExpression:self rightExpression:v4];

  return v5;
}

- (id)multiply:(id)a3
{
  v4 = a3;
  v5 = [(NUChannelBinaryExpression *)[NUChannelMultiplicationExpression alloc] initWithLeftExpression:self rightExpression:v4];

  return v5;
}

- (id)minus:(id)a3
{
  v4 = a3;
  v5 = [(NUChannelBinaryExpression *)[NUChannelSubtractionExpression alloc] initWithLeftExpression:self rightExpression:v4];

  return v5;
}

- (id)plus:(id)a3
{
  v4 = a3;
  v5 = [(NUChannelBinaryExpression *)[NUChannelAdditionExpression alloc] initWithLeftExpression:self rightExpression:v4];

  return v5;
}

- (id)evaluateWithArgumentData:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
  }

  v5 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = v5;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v6 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v9];
    *buf = 138543362;
    v31 = v10;
    _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v11 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v11 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
      }

      goto LABEL_8;
    }

    if (v11 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v12 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v13 = MEMORY[0x1E696AF00];
      v14 = v12;
      v15 = [v13 callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v16;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v17 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = MEMORY[0x1E696AF00];
    v20 = specific;
    v21 = v17;
    v22 = [v19 callStackSymbols];
    v23 = [v22 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v31 = specific;
    v32 = 2114;
    v33 = v23;
    _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  _NUAssertFailHandler("[NUChannelExpression evaluateWithArgumentData:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2884, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v26, v27, v28, v29, v25);
}

- (id)evaluateWithContext:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc(MEMORY[0x1E695DF70]);
  v8 = [(NUChannelExpression *)self arguments];
  v9 = [v7 initWithCapacity:{objc_msgSend(v8, "count")}];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [(NUChannelExpression *)self arguments];
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v19 + 1) + 8 * i) evaluateWithContext:v6 error:a4];
        if (!v15)
        {

          v17 = 0;
          goto LABEL_11;
        }

        v16 = v15;
        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v17 = [(NUChannelExpression *)self evaluateWithArgumentData:v9 error:a4];
LABEL_11:

  return v17;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(NUChannelExpression *)self type];
  if (v5 > 4)
  {
    v6 = @"???";
  }

  else
  {
    v6 = off_1E8109B40[v5];
  }

  v7 = [(NUChannelExpression *)self arguments];
  v8 = [v3 stringWithFormat:@"<%@:%p type=%@ args=%@>", v4, self, v6, v7];

  return v8;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(NUChannelExpression *)self type];
  if (v3 > 4)
  {
    v4 = @"???";
  }

  else
  {
    v4 = off_1E8109B40[v3];
  }

  return [v2 stringWithFormat:@"expr<%@>", v4];
}

- (NSString)compactDescription
{
  v2 = [(NUChannelExpression *)self inputPorts];
  v3 = PFMap();
  v4 = [v3 componentsJoinedByString:{@", "}];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"f(%@)", v4];

  return v5;
}

- (NUChannelExpression)initWithExpressionType:(int64_t)a3 arguments:(id)a4
{
  v10.receiver = self;
  v10.super_class = NUChannelExpression;
  v5 = a4;
  v6 = [(NUChannelExpression *)&v10 init];
  v6->_type = a3;
  v7 = [v5 copy];

  arguments = v6->_arguments;
  v6->_arguments = v7;

  return v6;
}

- (NUChannelExpression)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
  }

  v3 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = v3;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v9 = [v4 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v7, v8];
    *buf = 138543362;
    v30 = v9;
    _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v10 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v10 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v11 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v12 = MEMORY[0x1E696AF00];
      v13 = v11;
      v14 = [v12 callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v15;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v16 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = MEMORY[0x1E696AF00];
    v19 = specific;
    v20 = v16;
    v21 = [v18 callStackSymbols];
    v22 = [v21 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v30 = specific;
    v31 = 2114;
    v32 = v22;
    _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUChannelExpression init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2843, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

@end