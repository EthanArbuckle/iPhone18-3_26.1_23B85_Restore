@interface LACSharedModeDataSourceTaskDecoratorRuntime
- (BOOL)isEqual:(id)a3;
- (LACSharedModeDataSourceTaskDecoratorRuntime)initWithMinValue:(double)a3 maxValue:(double)a4;
- (id)description;
- (void)halveMaxValue;
@end

@implementation LACSharedModeDataSourceTaskDecoratorRuntime

- (LACSharedModeDataSourceTaskDecoratorRuntime)initWithMinValue:(double)a3 maxValue:(double)a4
{
  if (a3 > a4)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Runtime minValue must be less than or equal to maxValue"];
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v7);
  }

  v8.receiver = self;
  v8.super_class = LACSharedModeDataSourceTaskDecoratorRuntime;
  result = [(LACSharedModeDataSourceTaskDecoratorRuntime *)&v8 init];
  if (result)
  {
    result->_minValue = a3;
    result->_maxValue = a4;
    result->_effectiveMaxValue = a4;
    result->_effectiveMinValue = a3;
  }

  return result;
}

- (void)halveMaxValue
{
  minValue = self->_minValue;
  if (minValue < self->_effectiveMaxValue * 0.5)
  {
    minValue = self->_effectiveMaxValue * 0.5;
  }

  self->_effectiveMaxValue = minValue;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [(LACSharedModeDataSourceTaskDecoratorRuntime *)self minValue];
    v7 = v6;
    [v5 minValue];
    if (v7 == v8)
    {
      [(LACSharedModeDataSourceTaskDecoratorRuntime *)self maxValue];
      v11 = v10;
      [v5 maxValue];
      v9 = v11 == v12;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v13[0] = @"minValue";
  v5 = MEMORY[0x1E696AD98];
  [(LACSharedModeDataSourceTaskDecoratorRuntime *)self minValue];
  v6 = [v5 numberWithDouble:?];
  v13[1] = @"maxValue";
  v14[0] = v6;
  v7 = MEMORY[0x1E696AD98];
  [(LACSharedModeDataSourceTaskDecoratorRuntime *)self maxValue];
  v8 = [v7 numberWithDouble:?];
  v14[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v9];;

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end