@interface DBDateRange
+ (BOOL)_validDate:(id)a3;
- (BOOL)containsDate:(id)a3;
- (BOOL)hasEnd;
- (BOOL)hasStart;
- (BOOL)validRange;
- (DBDateRange)initWithStart:(id)a3 end:(id)a4;
- (double)endTimeIntervalSinceReferenceDate;
- (double)startTimeIntervalSinceReferenceDate;
- (id)description;
@end

@implementation DBDateRange

+ (BOOL)_validDate:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEAA8] distantFuture];
  v5 = [DBComparison isValue:v3 equalTo:v4];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CBEAA8] distantPast];
    v8 = [DBComparison isValue:v3 equalTo:v7];

    v6 = !v8;
  }

  return v6;
}

- (DBDateRange)initWithStart:(id)a3 end:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DBDateRange;
  v9 = [(DBDateRange *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_start, a3);
    objc_storeStrong(&v10->_end, a4);
  }

  return v10;
}

- (double)startTimeIntervalSinceReferenceDate
{
  v2 = [(DBDateRange *)self start];
  [v2 timeIntervalSinceReferenceDate];
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
  v2 = [(DBDateRange *)self start];
  v3 = [DBDateRange _validDate:v2];

  return v3;
}

- (BOOL)hasEnd
{
  v2 = [(DBDateRange *)self end];
  v3 = [DBDateRange _validDate:v2];

  return v3;
}

- (BOOL)containsDate:(id)a3
{
  v4 = a3;
  v5 = [(DBDateRange *)self start];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  v8 = [(DBDateRange *)self end];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  [v4 timeIntervalSinceReferenceDate];
  v12 = v11;

  return v12 < v10 && v7 < v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(DBDateRange *)self start];
  v6 = [DBDateFormatter formattedDateTimeStamp:v5];
  v7 = [(DBDateRange *)self end];
  v8 = [DBDateFormatter formattedDateTimeStamp:v7];
  v9 = [v3 stringWithFormat:@"<%@: %p start=%@ end=%@>", v4, self, v6, v8];

  return v9;
}

@end