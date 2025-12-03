@interface HKStatistics(HealthRecordsUI)
- (void)updateMinMaxWithChartableCodedQuantity:()HealthRecordsUI;
@end

@implementation HKStatistics(HealthRecordsUI)

- (void)updateMinMaxWithChartableCodedQuantity:()HealthRecordsUI
{
  v16 = a3;
  minimumQuantity = [self minimumQuantity];

  if (minimumQuantity && ([self minimumQuantity], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "quantity"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "compare:", v6), v6, v5, v7 != 1))
  {
    minimumQuantity2 = [self minimumQuantity];
  }

  else
  {
    minimumQuantity2 = [v16 quantity];
  }

  v9 = minimumQuantity2;
  [self setMinimumQuantity:minimumQuantity2];

  maximumQuantity = [self maximumQuantity];

  if (!maximumQuantity || ([self maximumQuantity], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "quantity"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "compare:", v12), v12, v11, v13 == -1))
  {
    quantity = [v16 quantity];
  }

  else
  {
    quantity = [self maximumQuantity];
  }

  v15 = quantity;
  [self setMaximumQuantity:quantity];
}

@end