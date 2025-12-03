@interface LACDTOBiometryWatchdog
+ (id)nullInstance;
- (BOOL)isBarking;
- (BOOL)isEqual:(id)equal;
- (LACDTOBiometryWatchdog)initWithCoder:(id)coder;
- (LACDTOBiometryWatchdog)initWithIsRunning:(BOOL)running time:(double)time minThreshold:(double)threshold maxThreshold:(double)maxThreshold;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LACDTOBiometryWatchdog

- (LACDTOBiometryWatchdog)initWithIsRunning:(BOOL)running time:(double)time minThreshold:(double)threshold maxThreshold:(double)maxThreshold
{
  v11.receiver = self;
  v11.super_class = LACDTOBiometryWatchdog;
  result = [(LACDTOBiometryWatchdog *)&v11 init];
  if (result)
  {
    result->_isRunning = running;
    result->_time = time;
    result->_minThreshold = threshold;
    result->_maxThreshold = maxThreshold;
  }

  return result;
}

+ (id)nullInstance
{
  v2 = [[LACDTOBiometryWatchdog alloc] initWithIsRunning:0 time:0.0 minThreshold:0.0 maxThreshold:0.0];

  return v2;
}

- (BOOL)isBarking
{
  isRunning = [(LACDTOBiometryWatchdog *)self isRunning];
  if (isRunning)
  {
    [(LACDTOBiometryWatchdog *)self time];
    v5 = v4;
    [(LACDTOBiometryWatchdog *)self minThreshold];
    if (v5 >= v6)
    {
      [(LACDTOBiometryWatchdog *)self time];
      v8 = v7;
      [(LACDTOBiometryWatchdog *)self maxThreshold];
      LOBYTE(isRunning) = v8 <= v9;
    }

    else
    {
      LOBYTE(isRunning) = 0;
    }
  }

  return isRunning;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  isRunning = [(LACDTOBiometryWatchdog *)self isRunning];
  v6 = NSStringFromSelector(sel_isRunning);
  [coderCopy encodeBool:isRunning forKey:v6];

  [(LACDTOBiometryWatchdog *)self time];
  v8 = v7;
  v9 = NSStringFromSelector(sel_time);
  [coderCopy encodeDouble:v9 forKey:v8];

  [(LACDTOBiometryWatchdog *)self minThreshold];
  v11 = v10;
  v12 = NSStringFromSelector(sel_minThreshold);
  [coderCopy encodeDouble:v12 forKey:v11];

  [(LACDTOBiometryWatchdog *)self maxThreshold];
  v14 = v13;
  v15 = NSStringFromSelector(sel_maxThreshold);
  [coderCopy encodeDouble:v15 forKey:v14];
}

- (LACDTOBiometryWatchdog)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_isRunning);
  v6 = [coderCopy decodeBoolForKey:v5];

  v7 = NSStringFromSelector(sel_time);
  [coderCopy decodeDoubleForKey:v7];
  v9 = v8;

  v10 = NSStringFromSelector(sel_minThreshold);
  [coderCopy decodeDoubleForKey:v10];
  v12 = v11;

  v13 = NSStringFromSelector(sel_maxThreshold);
  [coderCopy decodeDoubleForKey:v13];
  v15 = v14;

  return [(LACDTOBiometryWatchdog *)self initWithIsRunning:v6 time:v9 minThreshold:v12 maxThreshold:v15];
}

- (id)description
{
  v23[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = MEMORY[0x1E696AEC0];
  isRunning = [(LACDTOBiometryWatchdog *)self isRunning];
  v7 = @"NO";
  if (isRunning)
  {
    v7 = @"YES";
  }

  v8 = [v5 stringWithFormat:@"isRunning: %@", v7];
  v23[0] = v8;
  v9 = MEMORY[0x1E696AEC0];
  [(LACDTOBiometryWatchdog *)self time];
  v11 = [v9 stringWithFormat:@"time: %.2f", v10];
  v23[1] = v11;
  v12 = MEMORY[0x1E696AEC0];
  [(LACDTOBiometryWatchdog *)self minThreshold];
  v14 = [v12 stringWithFormat:@"minThreshold: %.2f", v13];
  v23[2] = v14;
  v15 = MEMORY[0x1E696AEC0];
  [(LACDTOBiometryWatchdog *)self maxThreshold];
  v17 = [v15 stringWithFormat:@"maxThreshold: %.2f", v16];
  v23[3] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
  v19 = [v18 componentsJoinedByString:@" "];;
  v20 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v19];;

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    isRunning = [(LACDTOBiometryWatchdog *)self isRunning];
    if (isRunning == [v5 isRunning] && (-[LACDTOBiometryWatchdog time](self, "time"), v8 = v7, objc_msgSend(v5, "time"), v8 == v9) && (-[LACDTOBiometryWatchdog minThreshold](self, "minThreshold"), v11 = v10, objc_msgSend(v5, "minThreshold"), v11 == v12))
    {
      [(LACDTOBiometryWatchdog *)self maxThreshold];
      v16 = v15;
      [v5 maxThreshold];
      v13 = v16 == v17;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end