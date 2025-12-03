@interface DBDateRange
+ (BOOL)_validDate:(id)date;
- (BOOL)containsDate:(id)date;
- (BOOL)hasEnd;
- (BOOL)hasStart;
- (BOOL)validRange;
- (DBDateRange)initWithStart:(id)start end:(id)end;
- (double)endTimeIntervalSinceReferenceDate;
- (double)startTimeIntervalSinceReferenceDate;
- (id)description;
@end

@implementation DBDateRange

+ (BOOL)_validDate:(id)date
{
  dateCopy = date;
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v5 = [DBComparison isValue:dateCopy equalTo:distantFuture];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    v8 = [DBComparison isValue:dateCopy equalTo:distantPast];

    v6 = !v8;
  }

  return v6;
}

- (DBDateRange)initWithStart:(id)start end:(id)end
{
  startCopy = start;
  endCopy = end;
  v12.receiver = self;
  v12.super_class = DBDateRange;
  v9 = [(DBDateRange *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_start, start);
    objc_storeStrong(&v10->_end, end);
  }

  return v10;
}

- (double)startTimeIntervalSinceReferenceDate
{
  start = [(DBDateRange *)self start];
  [start timeIntervalSinceReferenceDate];
  v4 = v3;

  return v4;
}

- (double)endTimeIntervalSinceReferenceDate
{
  v2 = [(DBDateRange *)self end];
  [v2 timeIntervalSinceReferenceDate];
  v4 = v3;

  return v4;
}

- (BOOL)validRange
{
  [(DBDateRange *)self startTimeIntervalSinceReferenceDate];
  v4 = v3;
  [(DBDateRange *)self endTimeIntervalSinceReferenceDate];
  return v4 < v5;
}

- (BOOL)hasStart
{
  start = [(DBDateRange *)self start];
  v3 = [DBDateRange _validDate:start];

  return v3;
}

- (BOOL)hasEnd
{
  v2 = [(DBDateRange *)self end];
  v3 = [DBDateRange _validDate:v2];

  return v3;
}

- (BOOL)containsDate:(id)date
{
  dateCopy = date;
  start = [(DBDateRange *)self start];
  [start timeIntervalSinceReferenceDate];
  v7 = v6;

  v8 = [(DBDateRange *)self end];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  [dateCopy timeIntervalSinceReferenceDate];
  v12 = v11;

  return v12 < v10 && v7 < v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  start = [(DBDateRange *)self start];
  v6 = [DBDateFormatter formattedDateTimeStamp:start];
  v7 = [(DBDateRange *)self end];
  v8 = [DBDateFormatter formattedDateTimeStamp:v7];
  v9 = [v3 stringWithFormat:@"<%@: %p start=%@ end=%@>", v4, self, v6, v8];

  return v9;
}

@end