@interface LACDTOBiometryWatchdog
+ (id)nullInstance;
- (BOOL)isBarking;
- (BOOL)isEqual:(id)a3;
- (LACDTOBiometryWatchdog)initWithCoder:(id)a3;
- (LACDTOBiometryWatchdog)initWithIsRunning:(BOOL)a3 time:(double)a4 minThreshold:(double)a5 maxThreshold:(double)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LACDTOBiometryWatchdog

- (LACDTOBiometryWatchdog)initWithIsRunning:(BOOL)a3 time:(double)a4 minThreshold:(double)a5 maxThreshold:(double)a6
{
  v11.receiver = self;
  v11.super_class = LACDTOBiometryWatchdog;
  result = [(LACDTOBiometryWatchdog *)&v11 init];
  if (result)
  {
    result->_isRunning = a3;
    result->_time = a4;
    result->_minThreshold = a5;
    result->_maxThreshold = a6;
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
  v3 = [(LACDTOBiometryWatchdog *)self isRunning];
  if (v3)
  {
    [(LACDTOBiometryWatchdog *)self time];
    v5 = v4;
    [(LACDTOBiometryWatchdog *)self minThreshold];
    if (v5 >= v6)
    {
      [(LACDTOBiometryWatchdog *)self time];
      v8 = v7;
      [(LACDTOBiometryWatchdog *)self maxThreshold];
      LOBYTE(v3) = v8 <= v9;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LACDTOBiometryWatchdog *)self isRunning];
  v6 = NSStringFromSelector(sel_isRunning);
  [v4 encodeBool:v5 forKey:v6];

  [(LACDTOBiometryWatchdog *)self time];
  v8 = v7;
  v9 = NSStringFromSelector(sel_time);
  [v4 encodeDouble:v9 forKey:v8];

  [(LACDTOBiometryWatchdog *)self minThreshold];
  v11 = v10;
  v12 = NSStringFromSelector(sel_minThreshold);
  [v4 encodeDouble:v12 forKey:v11];

  [(LACDTOBiometryWatchdog *)self maxThreshold];
  v14 = v13;
  v15 = NSStringFromSelector(sel_maxThreshold);
  [v4 encodeDouble:v15 forKey:v14];
}

- (LACDTOBiometryWatchdog)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_isRunning);
  v6 = [v4 decodeBoolForKey:v5];

  v7 = NSStringFromSelector(sel_time);
  [v4 decodeDoubleForKey:v7];
  v9 = v8;

  v10 = NSStringFromSelector(sel_minThreshold);
  [v4 decodeDoubleForKey:v10];
  v12 = v11;

  v13 = NSStringFromSelector(sel_maxThreshold);
  [v4 decodeDoubleForKey:v13];
  v15 = v14;

  return [(LACDTOBiometryWatchdog *)self initWithIsRunning:v6 time:v9 minThreshold:v12 maxThreshold:v15];
}

- (id)description
{
  v23[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(LACDTOBiometryWatchdog *)self isRunning];
  v7 = @"NO";
  if (v6)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(LACDTOBiometryWatchdog *)self isRunning];
    if (v6 == [v5 isRunning] && (-[LACDTOBiometryWatchdog time](self, "time"), v8 = v7, objc_msgSend(v5, "time"), v8 == v9) && (-[LACDTOBiometryWatchdog minThreshold](self, "minThreshold"), v11 = v10, objc_msgSend(v5, "minThreshold"), v11 == v12))
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