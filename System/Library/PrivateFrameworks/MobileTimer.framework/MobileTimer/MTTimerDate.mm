@interface MTTimerDate
- (BOOL)isEqual:(id)equal;
- (MTTimerDate)initWithCoder:(id)coder;
- (MTTimerDate)initWithDate:(id)date;
- (MTTimerDate)initWithDate:(id)date currentDateProvider:(id)provider;
- (double)remainingTime;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTTimerDate

- (MTTimerDate)initWithDate:(id)date
{
  dateCopy = date;
  v5 = MTCurrentDateProvider();
  v6 = [(MTTimerDate *)self initWithDate:dateCopy currentDateProvider:v5];

  return v6;
}

- (MTTimerDate)initWithDate:(id)date currentDateProvider:(id)provider
{
  dateCopy = date;
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = MTTimerDate;
  v8 = [(MTTimerDate *)&v14 init];
  if (v8)
  {
    v9 = [dateCopy copy];
    date = v8->_date;
    v8->_date = v9;

    v11 = [providerCopy copy];
    currentDateProvider = v8->_currentDateProvider;
    v8->_currentDateProvider = v11;
  }

  return v8;
}

- (double)remainingTime
{
  v3 = (*(self->_currentDateProvider + 2))();
  date = [(MTTimerDate *)self date];
  v5 = [date mtIsAfterDate:v3];

  v6 = 0.0;
  if (v5)
  {
    date2 = [(MTTimerDate *)self date];
    [date2 timeIntervalSinceDate:v3];
    v6 = v8;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy conformsToProtocol:&unk_1F297C498])
  {
    v5 = equalCopy;
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

- (MTTimerDate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MTTimerDate *)self initWithDate:0];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTTimerTimeDate"];
    date = v5->_date;
    v5->_date = v6;

    v8 = MTCurrentDateProvider();
    v9 = [v8 copy];
    currentDateProvider = v5->_currentDateProvider;
    v5->_currentDateProvider = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  date = [(MTTimerDate *)self date];
  [coderCopy encodeObject:date forKey:@"MTTimerTimeDate"];
}

@end