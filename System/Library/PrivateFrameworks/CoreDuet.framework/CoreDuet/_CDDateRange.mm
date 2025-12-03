@interface _CDDateRange
+ (id)periodWithEnd:(id)end duration:(double)duration;
+ (id)periodWithStart:(id)start duration:(double)duration;
+ (id)periodWithStart:(id)start end:(id)end;
- (BOOL)contains:(id)contains;
- (_CDDateRange)initWithStart:(id)start andEnd:(id)end;
- (double)duration;
- (id)description;
@end

@implementation _CDDateRange

- (_CDDateRange)initWithStart:(id)start andEnd:(id)end
{
  startCopy = start;
  endCopy = end;
  v12.receiver = self;
  v12.super_class = _CDDateRange;
  v9 = [(_CDDateRange *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startDate, start);
    objc_storeStrong(&v10->_endDate, end);
  }

  return v10;
}

+ (id)periodWithStart:(id)start duration:(double)duration
{
  startCopy = start;
  v6 = [_CDDateRange alloc];
  v7 = [startCopy dateByAddingTimeInterval:duration];
  v8 = [(_CDDateRange *)v6 initWithStart:startCopy andEnd:v7];

  return v8;
}

+ (id)periodWithEnd:(id)end duration:(double)duration
{
  endCopy = end;
  v6 = [_CDDateRange alloc];
  v7 = [endCopy dateByAddingTimeInterval:-duration];
  v8 = [(_CDDateRange *)v6 initWithStart:v7 andEnd:endCopy];

  return v8;
}

+ (id)periodWithStart:(id)start end:(id)end
{
  endCopy = end;
  startCopy = start;
  v7 = [[_CDDateRange alloc] initWithStart:startCopy andEnd:endCopy];

  return v7;
}

- (double)duration
{
  endDate = [(_CDDateRange *)self endDate];
  startDate = [(_CDDateRange *)self startDate];
  [endDate timeIntervalSinceDate:startDate];
  v6 = v5;

  return v6;
}

- (BOOL)contains:(id)contains
{
  containsCopy = contains;
  startDate = [(_CDDateRange *)self startDate];
  v6 = [containsCopy compare:startDate];

  if (v6 == -1)
  {
    v8 = 0;
  }

  else
  {
    endDate = [(_CDDateRange *)self endDate];
    v8 = [containsCopy compare:endDate] != 1;
  }

  return v8;
}

- (id)description
{
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  v4 = objc_opt_new();
  [v4 setTimeZone:localTimeZone];
  [v4 setDateStyle:2];
  [v4 setTimeStyle:3];
  v5 = MEMORY[0x1E696AEC0];
  startDate = [(_CDDateRange *)self startDate];
  v7 = [v4 stringFromDate:startDate];
  endDate = [(_CDDateRange *)self endDate];
  v9 = [v4 stringFromDate:endDate];
  v10 = [v5 stringWithFormat:@"%@ to %@", v7, v9];

  return v10;
}

@end