@interface MTTimerDate
- (BOOL)isEqual:(id)a3;
- (MTTimerDate)initWithCoder:(id)a3;
- (MTTimerDate)initWithDate:(id)a3;
- (MTTimerDate)initWithDate:(id)a3 currentDateProvider:(id)a4;
- (double)remainingTime;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTTimerDate

- (MTTimerDate)initWithDate:(id)a3
{
  v4 = a3;
  v5 = MTCurrentDateProvider();
  v6 = [(MTTimerDate *)self initWithDate:v4 currentDateProvider:v5];

  return v6;
}

- (MTTimerDate)initWithDate:(id)a3 currentDateProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MTTimerDate;
  v8 = [(MTTimerDate *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    date = v8->_date;
    v8->_date = v9;

    v11 = [v7 copy];
    currentDateProvider = v8->_currentDateProvider;
    v8->_currentDateProvider = v11;
  }

  return v8;
}

- (double)remainingTime
{
  v3 = (*(self->_currentDateProvider + 2))();
  v4 = [(MTTimerDate *)self date];
  v5 = [v4 mtIsAfterDate:v3];

  v6 = 0.0;
  if (v5)
  {
    v7 = [(MTTimerDate *)self date];
    [v7 timeIntervalSinceDate:v3];
    v6 = v8;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_1F297C498])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [(MTTimerDate *)self isEqualToTime:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (MTTimerDate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MTTimerDate *)self initWithDate:0];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTTimerTimeDate"];
    date = v5->_date;
    v5->_date = v6;

    v8 = MTCurrentDateProvider();
    v9 = [v8 copy];
    currentDateProvider = v5->_currentDateProvider;
    v5->_currentDateProvider = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MTTimerDate *)self date];
  [v4 encodeObject:v5 forKey:@"MTTimerTimeDate"];
}

@end