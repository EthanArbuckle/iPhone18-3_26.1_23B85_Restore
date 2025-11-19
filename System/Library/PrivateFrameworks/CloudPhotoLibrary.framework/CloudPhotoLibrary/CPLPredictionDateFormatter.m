@interface CPLPredictionDateFormatter
- (id)stringForObjectValue:(id)a3;
- (id)stringForTimeIntervalNumber:(id)a3 now:(id)a4;
@end

@implementation CPLPredictionDateFormatter

- (id)stringForObjectValue:(id)a3
{
  [a3 doubleValue];
  v4 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:v3];
  v5 = [CPLDateFormatter stringFromDateAgo:v4 now:0];

  return v5;
}

- (id)stringForTimeIntervalNumber:(id)a3 now:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v12 = [(CPLPredictionDateFormatter *)self stringForObjectValue:v6];
    goto LABEL_11;
  }

  [v6 doubleValue];
  v9 = v8;
  [v7 timeIntervalSinceReferenceDate];
  v11 = v10 - v9;
  if (v11 >= 0.0)
  {
    if (v11 < 1.0)
    {
      v12 = @"just before";
      goto LABEL_11;
    }

    v16 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = [CPLDateFormatter stringForTimeInterval:v11];
    v15 = [v16 initWithFormat:@"%@ before", v14];
  }

  else
  {
    if (v11 > -1.0)
    {
      v12 = @"just after";
      goto LABEL_11;
    }

    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = [CPLDateFormatter stringForTimeInterval:-v11];
    v15 = [v13 initWithFormat:@"%@ after", v14];
  }

  v12 = v15;

LABEL_11:

  return v12;
}

@end