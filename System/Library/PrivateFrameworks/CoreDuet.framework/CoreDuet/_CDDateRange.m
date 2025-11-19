@interface _CDDateRange
+ (id)periodWithEnd:(id)a3 duration:(double)a4;
+ (id)periodWithStart:(id)a3 duration:(double)a4;
+ (id)periodWithStart:(id)a3 end:(id)a4;
- (BOOL)contains:(id)a3;
- (_CDDateRange)initWithStart:(id)a3 andEnd:(id)a4;
- (double)duration;
- (id)description;
@end

@implementation _CDDateRange

- (_CDDateRange)initWithStart:(id)a3 andEnd:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _CDDateRange;
  v9 = [(_CDDateRange *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startDate, a3);
    objc_storeStrong(&v10->_endDate, a4);
  }

  return v10;
}

+ (id)periodWithStart:(id)a3 duration:(double)a4
{
  v5 = a3;
  v6 = [_CDDateRange alloc];
  v7 = [v5 dateByAddingTimeInterval:a4];
  v8 = [(_CDDateRange *)v6 initWithStart:v5 andEnd:v7];

  return v8;
}

+ (id)periodWithEnd:(id)a3 duration:(double)a4
{
  v5 = a3;
  v6 = [_CDDateRange alloc];
  v7 = [v5 dateByAddingTimeInterval:-a4];
  v8 = [(_CDDateRange *)v6 initWithStart:v7 andEnd:v5];

  return v8;
}

+ (id)periodWithStart:(id)a3 end:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_CDDateRange alloc] initWithStart:v6 andEnd:v5];

  return v7;
}

- (double)duration
{
  v3 = [(_CDDateRange *)self endDate];
  v4 = [(_CDDateRange *)self startDate];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  return v6;
}

- (BOOL)contains:(id)a3
{
  v4 = a3;
  v5 = [(_CDDateRange *)self startDate];
  v6 = [v4 compare:v5];

  if (v6 == -1)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(_CDDateRange *)self endDate];
    v8 = [v4 compare:v7] != 1;
  }

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E695DFE8] localTimeZone];
  v4 = objc_opt_new();
  [v4 setTimeZone:v3];
  [v4 setDateStyle:2];
  [v4 setTimeStyle:3];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(_CDDateRange *)self startDate];
  v7 = [v4 stringFromDate:v6];
  v8 = [(_CDDateRange *)self endDate];
  v9 = [v4 stringFromDate:v8];
  v10 = [v5 stringWithFormat:@"%@ to %@", v7, v9];

  return v10;
}

@end