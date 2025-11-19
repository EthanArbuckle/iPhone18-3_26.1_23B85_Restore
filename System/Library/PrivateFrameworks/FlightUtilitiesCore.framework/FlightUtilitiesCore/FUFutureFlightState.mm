@interface FUFutureFlightState
+ (id)newWithState:(int64_t)a3 andDate:(id)a4;
- (BOOL)isEqual:(id)a3;
- (FUFutureFlightState)initWithCoder:(id)a3;
- (FUFutureFlightState)initWithState:(int64_t)a3 andDate:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FUFutureFlightState

+ (id)newWithState:(int64_t)a3 andDate:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithState:a3 andDate:v6];

  return v7;
}

- (FUFutureFlightState)initWithState:(int64_t)a3 andDate:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = FUFutureFlightState;
  v7 = [(FUFutureFlightState *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_futureState = a3;
    v9 = [v6 copy];
    expectedDate = v8->_expectedDate;
    v8->_expectedDate = v9;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[FUFutureFlightState futureState](self, "futureState"), v5 == [v4 futureState]))
  {
    v6 = [(FUFutureFlightState *)self expectedDate];
    v7 = [v4 expectedDate];
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = [(FUFutureFlightState *)self expectedDate];
      v9 = [v4 expectedDate];
      v10 = [v8 isEqual:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(FUFutureFlightState *)self futureState];
  v7 = [(FUFutureFlightState *)self expectedDate];
  v8 = [v7 copyWithZone:a3];
  v9 = [v5 initWithState:v6 andDate:v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[FUFutureFlightState futureState](self forKey:{"futureState"), @"futureState"}];
  v5 = [(FUFutureFlightState *)self expectedDate];
  [v4 encodeObject:v5 forKey:@"expectedDate"];
}

- (FUFutureFlightState)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FUFutureFlightState;
  v5 = [(FUFutureFlightState *)&v9 init];
  if (v5)
  {
    v5->_futureState = [v4 decodeIntegerForKey:@"futureState"];
    v6 = [v4 decodeObjectForKey:@"expectedDate"];
    expectedDate = v5->_expectedDate;
    v5->_expectedDate = v6;
  }

  return v5;
}

@end