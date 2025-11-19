@interface HKStatistics(HealthRecordsUI)
- (void)updateMinMaxWithChartableCodedQuantity:()HealthRecordsUI;
@end

@implementation HKStatistics(HealthRecordsUI)

- (void)updateMinMaxWithChartableCodedQuantity:()HealthRecordsUI
{
  v16 = a3;
  v4 = [a1 minimumQuantity];

  if (v4 && ([a1 minimumQuantity], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "quantity"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "compare:", v6), v6, v5, v7 != 1))
  {
    v8 = [a1 minimumQuantity];
  }

  else
  {
    v8 = [v16 quantity];
  }

  v9 = v8;
  [a1 setMinimumQuantity:v8];

  v10 = [a1 maximumQuantity];

  if (!v10 || ([a1 maximumQuantity], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "quantity"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "compare:", v12), v12, v11, v13 == -1))
  {
    v14 = [v16 quantity];
  }

  else
  {
    v14 = [a1 maximumQuantity];
  }

  v15 = v14;
  [a1 setMaximumQuantity:v14];
}

@end