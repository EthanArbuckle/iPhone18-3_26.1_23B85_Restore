@interface LACDTOGracePeriodState
+ (id)nullInstance;
+ (id)unlimitedGracePeriod;
- (BOOL)isActive;
- (BOOL)isEqual:(id)equal;
- (LACDTOGracePeriodState)initWithCoder:(id)coder;
- (LACDTOGracePeriodState)initWithTime:(double)time maxThreshold:(double)threshold;
- (double)duration;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LACDTOGracePeriodState

- (LACDTOGracePeriodState)initWithTime:(double)time maxThreshold:(double)threshold
{
  v7.receiver = self;
  v7.super_class = LACDTOGracePeriodState;
  result = [(LACDTOGracePeriodState *)&v7 init];
  if (result)
  {
    result->_time = time;
    result->_maxThreshold = threshold;
  }

  return result;
}

- (BOOL)isActive
{
  [(LACDTOGracePeriodState *)self maxThreshold];
  if (v3 <= 0.0)
  {
    return 0;
  }

  [(LACDTOGracePeriodState *)self time];
  if (v4 <= 0.0)
  {
    return 0;
  }

  [(LACDTOGracePeriodState *)self time];
  v6 = v5;
  [(LACDTOGracePeriodState *)self maxThreshold];
  return v6 <= v7;
}

- (double)duration
{
  isActive = [(LACDTOGracePeriodState *)self isActive];
  result = 0.0;
  if (isActive)
  {
    [(LACDTOGracePeriodState *)self maxThreshold];
    v6 = v5;
    [(LACDTOGracePeriodState *)self time];
    return fmax(v6 - v7, 0.0);
  }

  return result;
}

+ (id)nullInstance
{
  v2 = [[LACDTOGracePeriodState alloc] initWithTime:0.0 maxThreshold:0.0];

  return v2;
}

+ (id)unlimitedGracePeriod
{
  v2 = [[LACDTOGracePeriodState alloc] initWithTime:1.0 maxThreshold:1.79769313e308];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(LACDTOGracePeriodState *)self time];
  v6 = v5;
  v7 = NSStringFromSelector(sel_time);
  [coderCopy encodeDouble:v7 forKey:v6];

  [(LACDTOGracePeriodState *)self maxThreshold];
  v9 = v8;
  v10 = NSStringFromSelector(sel_maxThreshold);
  [coderCopy encodeDouble:v10 forKey:v9];
}

- (LACDTOGracePeriodState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_time);
  [coderCopy decodeDoubleForKey:v5];
  v7 = v6;

  v8 = NSStringFromSelector(sel_maxThreshold);
  [coderCopy decodeDoubleForKey:v8];
  v10 = v9;

  return [(LACDTOGracePeriodState *)self initWithTime:v7 maxThreshold:v10];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    [(LACDTOGracePeriodState *)self time];
    v7 = v6;
    [v5 time];
    if (v7 == v8)
    {
      [(LACDTOGracePeriodState *)self maxThreshold];
      v11 = v10;
      [v5 maxThreshold];
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
  v26[4] = *MEMORY[0x1E69E9840];
  v25 = MEMORY[0x1E696AEC0];
  v24 = objc_opt_class();
  v3 = MEMORY[0x1E696AEC0];
  v4 = MEMORY[0x1E696AD98];
  [(LACDTOGracePeriodState *)self time];
  v5 = [v4 numberWithDouble:?];
  v6 = [v3 stringWithFormat:@"time: %@", v5];
  v26[0] = v6;
  v7 = MEMORY[0x1E696AEC0];
  v8 = MEMORY[0x1E696AD98];
  [(LACDTOGracePeriodState *)self maxThreshold];
  v9 = [v8 numberWithDouble:?];
  v10 = [v7 stringWithFormat:@"maxThreshold: %@", v9];
  v26[1] = v10;
  v11 = MEMORY[0x1E696AEC0];
  isActive = [(LACDTOGracePeriodState *)self isActive];
  v13 = @"NO";
  if (isActive)
  {
    v13 = @"YES";
  }

  v14 = [v11 stringWithFormat:@"isActive: %@", v13];
  v26[2] = v14;
  v15 = MEMORY[0x1E696AEC0];
  v16 = MEMORY[0x1E696AD98];
  [(LACDTOGracePeriodState *)self duration];
  v17 = [v16 numberWithDouble:?];
  v18 = [v15 stringWithFormat:@"duration: %@", v17];
  v26[3] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
  v20 = [v19 componentsJoinedByString:@" "];;
  v21 = [v25 stringWithFormat:@"<%@ %p %@>", v24, self, v20];;

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

@end