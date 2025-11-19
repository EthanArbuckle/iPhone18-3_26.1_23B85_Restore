@interface CNObservedResult
+ (_NSRange)overflowSafeRangeWithTime:(unint64_t)a3 tolerance:(unint64_t)a4;
+ (_NSRange)rangeWithExactTime:(unint64_t)a3;
+ (_NSRange)rangeWithTime:(unint64_t)a3 tolerance:(unint64_t)a4;
+ (_NSRange)underflowSafeRangeWithTime:(unint64_t)a3 tolerance:(unint64_t)a4;
+ (id)completionResultWithTime:(unint64_t)a3 tolerance:(unint64_t)a4;
+ (id)failureWithError:(id)a3 time:(unint64_t)a4 tolerance:(unint64_t)a5;
+ (id)resultWithTime:(unint64_t)a3 tolerance:(unint64_t)a4 value:(id)a5;
- (BOOL)isEqual:(id)a3;
- (CNObservedResult)initWithValue:(id)a3 time:(unint64_t)a4 tolerance:(unint64_t)a5;
- (_NSRange)timeRange;
- (id)description;
- (id)formattedTimeString;
- (unint64_t)hash;
@end

@implementation CNObservedResult

+ (id)resultWithTime:(unint64_t)a3 tolerance:(unint64_t)a4 value:(id)a5
{
  v7 = a5;
  v8 = [[CNObservedResult alloc] initWithValue:v7 time:a3 tolerance:a4];

  return v8;
}

+ (id)completionResultWithTime:(unint64_t)a3 tolerance:(unint64_t)a4
{
  v4 = [(CNObservedResult *)[CNObservedCompletionResult alloc] initWithValue:0 time:a3 tolerance:a4];

  return v4;
}

+ (id)failureWithError:(id)a3 time:(unint64_t)a4 tolerance:(unint64_t)a5
{
  v7 = a3;
  v8 = [(CNObservedResult *)[CNObservedFailureResult alloc] initWithValue:v7 time:a4 tolerance:a5];

  return v8;
}

- (CNObservedResult)initWithValue:(id)a3 time:(unint64_t)a4 tolerance:(unint64_t)a5
{
  v9 = a3;
  v14.receiver = self;
  v14.super_class = CNObservedResult;
  v10 = [(CNObservedResult *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_value, a3);
    v11->_time = a4;
    v11->_tolerance = a5;
    v12 = v11;
  }

  return v11;
}

- (id)formattedTimeString
{
  v3 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v3 setPaddingPosition:1];
  [v3 setFormatWidth:6];
  v4 = [MEMORY[0x1E696AD60] stringWithString:@"@ "];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_time];
  v6 = [v3 stringFromNumber:v5];
  [v4 appendString:v6];

  if ([(CNObservedResult *)self tolerance])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CNObservedResult tolerance](self, "tolerance")}];
    [v4 appendFormat:@" +/- %@", v7];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CNObservedResult *)self formattedTimeString];
  v7 = [(CNObservedResult *)self logValue];
  v8 = [v3 stringWithFormat:@"<%@ %p: %@ Observed: %@>", v5, self, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 isEqual:v8];

  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = [(CNObservedResult *)self timeRange];
  v12 = v11;
  v19.location = [v4 timeRange];
  v19.length = v13;
  v18.location = v10;
  v18.length = v12;
  if (NSIntersectionRange(v18, v19).length)
  {
    v14 = [(CNObservedResult *)self value];
    if (v14 || v4[2])
    {
      v15 = [(CNObservedResult *)self value];
      v16 = [v15 isEqual:v4[2]];
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
LABEL_8:
    v16 = 0;
  }

  return v16;
}

- (unint64_t)hash
{
  aBlock[4] = self;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __24__CNObservedResult_hash__block_invoke;
  v6[3] = &unk_1E6ED5F00;
  v6[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __24__CNObservedResult_hash__block_invoke_2;
  aBlock[3] = &unk_1E6ED5F00;
  v2 = _Block_copy(aBlock);
  v3 = [CNHashBuilder hashWithBlocks:v6, v2, 0];

  return v3;
}

unint64_t __24__CNObservedResult_hash__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [CNHashBuilder objectHash:v3];

  return v4;
}

unint64_t __24__CNObservedResult_hash__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) value];
  v2 = [CNHashBuilder objectHash:v1];

  return v2;
}

- (_NSRange)timeRange
{
  tolerance = self->_tolerance;
  v4 = objc_opt_class();
  time = self->_time;
  if (tolerance)
  {
    v6 = self->_tolerance;

    v7 = [v4 rangeWithTime:time tolerance:v6];
  }

  else
  {

    v7 = [v4 rangeWithExactTime:time];
  }

  result.length = v8;
  result.location = v7;
  return result;
}

+ (_NSRange)rangeWithExactTime:(unint64_t)a3
{
  v4 = 1;
  result.length = v4;
  result.location = a3;
  return result;
}

+ (_NSRange)rangeWithTime:(unint64_t)a3 tolerance:(unint64_t)a4
{
  if ([a1 rangeWouldUnderflowWithTime:? tolerance:?])
  {

    v7 = [a1 underflowSafeRangeWithTime:a3 tolerance:a4];
  }

  else if ([a1 rangeWouldOverflowWithTime:a3 tolerance:a4])
  {

    v7 = [a1 overflowSafeRangeWithTime:a3 tolerance:a4];
  }

  else
  {
    v7 = a3 - a4;
    v8 = (2 * a4) | 1;
  }

  result.length = v8;
  result.location = v7;
  return result;
}

+ (_NSRange)underflowSafeRangeWithTime:(unint64_t)a3 tolerance:(unint64_t)a4
{
  v4 = a4 + a3;
  v5 = 0;
  result.length = v4;
  result.location = v5;
  return result;
}

+ (_NSRange)overflowSafeRangeWithTime:(unint64_t)a3 tolerance:(unint64_t)a4
{
  v4 = a3 - a4;
  v5 = ~a3 + a4;
  result.length = v5;
  result.location = v4;
  return result;
}

@end