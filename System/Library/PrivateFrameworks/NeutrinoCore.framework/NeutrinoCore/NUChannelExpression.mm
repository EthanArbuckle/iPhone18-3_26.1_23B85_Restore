@interface NUChannelExpression
+ (id)constantExpression:(id)expression;
+ (id)falseExpression;
+ (id)if:(id)if then:(id)then else:(id)else;
+ (id)isNil:(id)nil;
+ (id)isNotNil:(id)nil;
+ (id)max:(id)max;
+ (id)min:(id)min;
+ (id)negative:(id)negative;
+ (id)not:(id)not;
+ (id)nullExpression;
+ (id)rectWithX:(id)x y:(id)y width:(id)width height:(id)height;
+ (id)staticExpression:(id)expression;
+ (id)trueExpression;
- (NSString)compactDescription;
- (NUChannelExpression)init;
- (NUChannelExpression)initWithExpressionType:(int64_t)type arguments:(id)arguments;
- (id)and:(id)and;
- (id)debugDescription;
- (id)description;
- (id)divide:(id)divide;
- (id)equal:(id)equal;
- (id)evaluateWithArgumentData:(id)data error:(id *)error;
- (id)evaluateWithContext:(id)context error:(id *)error;
- (id)greaterThan:(id)than;
- (id)greaterThanOrEqual:(id)equal;
- (id)lessThan:(id)than;
- (id)lessThanOrEqual:(id)equal;
- (id)minus:(id)minus;
- (id)multiply:(id)multiply;
- (id)notEqual:(id)equal;
- (id)or:(id)or;
- (id)plus:(id)plus;
@end

@implementation NUChannelExpression

- (id)or:(id)or
{
  orCopy = or;
  v5 = [(NUChannelBinaryExpression *)[NUChannelLogicalOrExpression alloc] initWithLeftExpression:self rightExpression:orCopy];

  return v5;
}

+ (id)min:(id)min
{
  minCopy = min;
  v4 = [(NUChannelMinMaxExpression *)[NUChannelMinExpression alloc] initWithExpressions:minCopy];

  return v4;
}

+ (id)max:(id)max
{
  maxCopy = max;
  v4 = [(NUChannelMinMaxExpression *)[NUChannelMaxExpression alloc] initWithExpressions:maxCopy];

  return v4;
}

+ (id)if:(id)if then:(id)then else:(id)else
{
  elseCopy = else;
  thenCopy = then;
  ifCopy = if;
  v10 = [[NUChannelIfThenElseExpression alloc] initWithConditionExpression:ifCopy trueExpression:thenCopy falseExpression:elseCopy];

  return v10;
}

+ (id)not:(id)not
{
  notCopy = not;
  v4 = [(NUChannelUnaryExpression *)[NUChannelLogicalNotExpression alloc] initWithExpression:notCopy];

  return v4;
}

+ (id)falseExpression
{
  v3 = [NUChannelData BOOLean:0];
  v4 = [self constantExpression:v3];

  return v4;
}

+ (id)trueExpression
{
  v3 = [NUChannelData BOOLean:1];
  v4 = [self constantExpression:v3];

  return v4;
}

+ (id)isNotNil:(id)nil
{
  nilCopy = nil;
  v4 = [(NUChannelUnaryExpression *)[NUChannelIsNotNilExpression alloc] initWithExpression:nilCopy];

  return v4;
}

+ (id)isNil:(id)nil
{
  nilCopy = nil;
  v4 = [(NUChannelUnaryExpression *)[NUChannelIsNilExpression alloc] initWithExpression:nilCopy];

  return v4;
}

+ (id)negative:(id)negative
{
  negativeCopy = negative;
  v4 = [(NUChannelUnaryExpression *)[NUChannelNegationExpression alloc] initWithExpression:negativeCopy];

  return v4;
}

+ (id)rectWithX:(id)x y:(id)y width:(id)width height:(id)height
{
  heightCopy = height;
  widthCopy = width;
  yCopy = y;
  xCopy = x;
  v13 = [[NURectExpression alloc] initWithXExpression:xCopy yExpression:yCopy widthExpression:widthCopy heightExpression:heightCopy];

  return v13;
}

+ (id)staticExpression:(id)expression
{
  expressionCopy = expression;
  v5 = expressionCopy;
  if (expressionCopy && ([expressionCopy channel], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "format"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "expressionType"), v7, v6, v8))
  {
    nullExpression = [[NUChannelStaticExpression alloc] initWithPort:v5 expressionType:v8];
  }

  else
  {
    nullExpression = [self nullExpression];
  }

  v10 = nullExpression;

  return v10;
}

+ (id)constantExpression:(id)expression
{
  expressionCopy = expression;
  v5 = expressionCopy;
  if (expressionCopy && ([expressionCopy format], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "expressionType"), v6, v7))
  {
    nullExpression = [[NUChannelConstantExpression alloc] initWithData:v5 expressionType:v7];
  }

  else
  {
    nullExpression = [self nullExpression];
  }

  v9 = nullExpression;

  return v9;
}

+ (id)nullExpression
{
  v2 = objc_alloc_init(NUChannelNullExpression);

  return v2;
}

- (id)and:(id)and
{
  andCopy = and;
  v5 = [(NUChannelBinaryExpression *)[NUChannelLogicalAndExpression alloc] initWithLeftExpression:self rightExpression:andCopy];

  return v5;
}

- (id)greaterThanOrEqual:(id)equal
{
  equalCopy = equal;
  v5 = [(NUChannelBinaryExpression *)[NUChannelGreaterThanOrEqualExpression alloc] initWithLeftExpression:self rightExpression:equalCopy];

  return v5;
}

- (id)greaterThan:(id)than
{
  thanCopy = than;
  v5 = [(NUChannelBinaryExpression *)[NUChannelGreaterThanExpression alloc] initWithLeftExpression:self rightExpression:thanCopy];

  return v5;
}

- (id)lessThanOrEqual:(id)equal
{
  equalCopy = equal;
  v5 = [(NUChannelBinaryExpression *)[NUChannelLessThanOrEqualExpression alloc] initWithLeftExpression:self rightExpression:equalCopy];

  return v5;
}

- (id)lessThan:(id)than
{
  thanCopy = than;
  v5 = [(NUChannelBinaryExpression *)[NUChannelLessThanExpression alloc] initWithLeftExpression:self rightExpression:thanCopy];

  return v5;
}

- (id)notEqual:(id)equal
{
  equalCopy = equal;
  v5 = [(NUChannelBinaryExpression *)[NUChannelInequalityExpression alloc] initWithLeftExpression:self rightExpression:equalCopy];

  return v5;
}

- (id)equal:(id)equal
{
  equalCopy = equal;
  v5 = [(NUChannelBinaryExpression *)[NUChannelEqualityExpression alloc] initWithLeftExpression:self rightExpression:equalCopy];

  return v5;
}

- (id)divide:(id)divide
{
  divideCopy = divide;
  v5 = [(NUChannelBinaryExpression *)[NUChannelDivisionExpression alloc] initWithLeftExpression:self rightExpression:divideCopy];

  return v5;
}

- (id)multiply:(id)multiply
{
  multiplyCopy = multiply;
  v5 = [(NUChannelBinaryExpression *)[NUChannelMultiplicationExpression alloc] initWithLeftExpression:self rightExpression:multiplyCopy];

  return v5;
}

- (id)minus:(id)minus
{
  minusCopy = minus;
  v5 = [(NUChannelBinaryExpression *)[NUChannelSubtractionExpression alloc] initWithLeftExpression:self rightExpression:minusCopy];

  return v5;
}

- (id)plus:(id)plus
{
  plusCopy = plus;
  v5 = [(NUChannelBinaryExpression *)[NUChannelAdditionExpression alloc] initWithLeftExpression:self rightExpression:plusCopy];

  return v5;
}

- (id)evaluateWithArgumentData:(id)data error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  dataCopy = data;
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
      callStackSymbols = [v13 callStackSymbols];
      v16 = [callStackSymbols componentsJoinedByString:@"\n"];
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
    callStackSymbols2 = [v19 callStackSymbols];
    v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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

- (id)evaluateWithContext:(id)context error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = objc_alloc(MEMORY[0x1E695DF70]);
  arguments = [(NUChannelExpression *)self arguments];
  v9 = [v7 initWithCapacity:{objc_msgSend(arguments, "count")}];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  arguments2 = [(NUChannelExpression *)self arguments];
  v11 = [arguments2 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(arguments2);
        }

        v15 = [*(*(&v19 + 1) + 8 * i) evaluateWithContext:contextCopy error:error];
        if (!v15)
        {

          v17 = 0;
          goto LABEL_11;
        }

        v16 = v15;
        [v9 addObject:v15];
      }

      v12 = [arguments2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v17 = [(NUChannelExpression *)self evaluateWithArgumentData:v9 error:error];
LABEL_11:

  return v17;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  type = [(NUChannelExpression *)self type];
  if (type > 4)
  {
    v6 = @"???";
  }

  else
  {
    v6 = off_1E8109B40[type];
  }

  arguments = [(NUChannelExpression *)self arguments];
  v8 = [v3 stringWithFormat:@"<%@:%p type=%@ args=%@>", v4, self, v6, arguments];

  return v8;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  type = [(NUChannelExpression *)self type];
  if (type > 4)
  {
    v4 = @"???";
  }

  else
  {
    v4 = off_1E8109B40[type];
  }

  return [v2 stringWithFormat:@"expr<%@>", v4];
}

- (NSString)compactDescription
{
  inputPorts = [(NUChannelExpression *)self inputPorts];
  v3 = PFMap();
  v4 = [v3 componentsJoinedByString:{@", "}];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"f(%@)", v4];

  return v5;
}

- (NUChannelExpression)initWithExpressionType:(int64_t)type arguments:(id)arguments
{
  v10.receiver = self;
  v10.super_class = NUChannelExpression;
  argumentsCopy = arguments;
  v6 = [(NUChannelExpression *)&v10 init];
  v6->_type = type;
  v7 = [argumentsCopy copy];

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
      callStackSymbols = [v12 callStackSymbols];
      v15 = [callStackSymbols componentsJoinedByString:@"\n"];
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
    callStackSymbols2 = [v18 callStackSymbols];
    v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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