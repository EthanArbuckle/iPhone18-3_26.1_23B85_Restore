@interface CPLPredictionDateFormatter
- (id)stringForObjectValue:(id)value;
- (id)stringForTimeIntervalNumber:(id)number now:(id)now;
@end

@implementation CPLPredictionDateFormatter

- (id)stringForObjectValue:(id)value
{
  [value doubleValue];
  v4 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:v3];
  v5 = [CPLDateFormatter stringFromDateAgo:v4 now:0];

  return v5;
}

- (id)stringForTimeIntervalNumber:(id)number now:(id)now
{
  numberCopy = number;
  nowCopy = now;
  if (!nowCopy)
  {
    v12 = [(CPLPredictionDateFormatter *)self stringForObjectValue:numberCopy];
    goto LABEL_11;
  }

  [numberCopy doubleValue];
  v9 = v8;
  [nowCopy timeIntervalSinceReferenceDate];
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