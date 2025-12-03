@interface FUFutureFlightState
+ (id)newWithState:(int64_t)state andDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (FUFutureFlightState)initWithCoder:(id)coder;
- (FUFutureFlightState)initWithState:(int64_t)state andDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FUFutureFlightState

+ (id)newWithState:(int64_t)state andDate:(id)date
{
  dateCopy = date;
  v7 = [[self alloc] initWithState:state andDate:dateCopy];

  return v7;
}

- (FUFutureFlightState)initWithState:(int64_t)state andDate:(id)date
{
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = FUFutureFlightState;
  v7 = [(FUFutureFlightState *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_futureState = state;
    v9 = [dateCopy copy];
    expectedDate = v8->_expectedDate;
    v8->_expectedDate = v9;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[FUFutureFlightState futureState](self, "futureState"), v5 == [equalCopy futureState]))
  {
    expectedDate = [(FUFutureFlightState *)self expectedDate];
    expectedDate2 = [equalCopy expectedDate];
    if (expectedDate == expectedDate2)
    {
      v10 = 1;
    }

    else
    {
      expectedDate3 = [(FUFutureFlightState *)self expectedDate];
      expectedDate4 = [equalCopy expectedDate];
      v10 = [expectedDate3 isEqual:expectedDate4];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  futureState = [(FUFutureFlightState *)self futureState];
  expectedDate = [(FUFutureFlightState *)self expectedDate];
  v8 = [expectedDate copyWithZone:zone];
  v9 = [v5 initWithState:futureState andDate:v8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[FUFutureFlightState futureState](self forKey:{"futureState"), @"futureState"}];
  expectedDate = [(FUFutureFlightState *)self expectedDate];
  [coderCopy encodeObject:expectedDate forKey:@"expectedDate"];
}

- (FUFutureFlightState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FUFutureFlightState;
  v5 = [(FUFutureFlightState *)&v9 init];
  if (v5)
  {
    v5->_futureState = [coderCopy decodeIntegerForKey:@"futureState"];
    v6 = [coderCopy decodeObjectForKey:@"expectedDate"];
    expectedDate = v5->_expectedDate;
    v5->_expectedDate = v6;
  }

  return v5;
}

@end