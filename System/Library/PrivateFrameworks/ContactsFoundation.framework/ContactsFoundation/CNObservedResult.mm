@interface CNObservedResult
+ (_NSRange)overflowSafeRangeWithTime:(unint64_t)time tolerance:(unint64_t)tolerance;
+ (_NSRange)rangeWithExactTime:(unint64_t)time;
+ (_NSRange)rangeWithTime:(unint64_t)time tolerance:(unint64_t)tolerance;
+ (_NSRange)underflowSafeRangeWithTime:(unint64_t)time tolerance:(unint64_t)tolerance;
+ (id)completionResultWithTime:(unint64_t)time tolerance:(unint64_t)tolerance;
+ (id)failureWithError:(id)error time:(unint64_t)time tolerance:(unint64_t)tolerance;
+ (id)resultWithTime:(unint64_t)time tolerance:(unint64_t)tolerance value:(id)value;
- (BOOL)isEqual:(id)equal;
- (CNObservedResult)initWithValue:(id)value time:(unint64_t)time tolerance:(unint64_t)tolerance;
- (_NSRange)timeRange;
- (id)description;
- (id)formattedTimeString;
- (unint64_t)hash;
@end

@implementation CNObservedResult

+ (id)resultWithTime:(unint64_t)time tolerance:(unint64_t)tolerance value:(id)value
{
  valueCopy = value;
  v8 = [[CNObservedResult alloc] initWithValue:valueCopy time:time tolerance:tolerance];

  return v8;
}

+ (id)completionResultWithTime:(unint64_t)time tolerance:(unint64_t)tolerance
{
  v4 = [(CNObservedResult *)[CNObservedCompletionResult alloc] initWithValue:0 time:time tolerance:tolerance];

  return v4;
}

+ (id)failureWithError:(id)error time:(unint64_t)time tolerance:(unint64_t)tolerance
{
  errorCopy = error;
  v8 = [(CNObservedResult *)[CNObservedFailureResult alloc] initWithValue:errorCopy time:time tolerance:tolerance];

  return v8;
}

- (CNObservedResult)initWithValue:(id)value time:(unint64_t)time tolerance:(unint64_t)tolerance
{
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = CNObservedResult;
  v10 = [(CNObservedResult *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_value, value);
    v11->_time = time;
    v11->_tolerance = tolerance;
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
  formattedTimeString = [(CNObservedResult *)self formattedTimeString];
  logValue = [(CNObservedResult *)self logValue];
  v8 = [v3 stringWithFormat:@"<%@ %p: %@ Observed: %@>", v5, self, formattedTimeString, logValue];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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

  timeRange = [(CNObservedResult *)self timeRange];
  v12 = v11;
  v19.location = [equalCopy timeRange];
  v19.length = v13;
  v18.location = timeRange;
  v18.length = v12;
  if (NSIntersectionRange(v18, v19).length)
  {
    value = [(CNObservedResult *)self value];
    if (value || equalCopy[2])
    {
      value2 = [(CNObservedResult *)self value];
      v16 = [value2 isEqual:equalCopy[2]];
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

+ (_NSRange)rangeWithExactTime:(unint64_t)time
{
  v4 = 1;
  result.length = v4;
  result.location = time;
  return result;
}

+ (_NSRange)rangeWithTime:(unint64_t)time tolerance:(unint64_t)tolerance
{
  if ([self rangeWouldUnderflowWithTime:? tolerance:?])
  {

    v7 = [self underflowSafeRangeWithTime:time tolerance:tolerance];
  }

  else if ([self rangeWouldOverflowWithTime:time tolerance:tolerance])
  {

    v7 = [self overflowSafeRangeWithTime:time tolerance:tolerance];
  }

  else
  {
    v7 = time - tolerance;
    v8 = (2 * tolerance) | 1;
  }

  result.length = v8;
  result.location = v7;
  return result;
}

+ (_NSRange)underflowSafeRangeWithTime:(unint64_t)time tolerance:(unint64_t)tolerance
{
  v4 = tolerance + time;
  v5 = 0;
  result.length = v4;
  result.location = v5;
  return result;
}

+ (_NSRange)overflowSafeRangeWithTime:(unint64_t)time tolerance:(unint64_t)tolerance
{
  v4 = time - tolerance;
  v5 = ~time + tolerance;
  result.length = v5;
  result.location = v4;
  return result;
}

@end