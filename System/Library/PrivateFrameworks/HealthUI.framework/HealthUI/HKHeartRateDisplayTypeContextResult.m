@interface HKHeartRateDisplayTypeContextResult
- (HKHeartRateDisplayTypeContextResult)initWithContext:(int64_t)a3 statistics:(id)a4;
- (id)debugDescription;
@end

@implementation HKHeartRateDisplayTypeContextResult

- (HKHeartRateDisplayTypeContextResult)initWithContext:(int64_t)a3 statistics:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = HKHeartRateDisplayTypeContextResult;
  v7 = [(HKHeartRateDisplayTypeContextResult *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(HKHeartRateDisplayTypeContextResult *)v7 setContext:a3];
    [(HKHeartRateDisplayTypeContextResult *)v8 setStatistics:v6];
  }

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(HKHeartRateDisplayTypeContextResult *)self context];
  v5 = [(HKHeartRateDisplayTypeContextResult *)self statistics];
  v6 = v5;
  v7 = @"None";
  if (v5)
  {
    v7 = v5;
  }

  v8 = [v3 stringWithFormat:@"Context Display Type: %ld, Statistics: %@", v4, v7];

  return v8;
}

@end