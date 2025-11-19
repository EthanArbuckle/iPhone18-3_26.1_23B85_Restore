@interface HKInteractiveChartCategoryValueData
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation HKInteractiveChartCategoryValueData

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(HKInteractiveChartCategoryValueData *)self value];
    if (v6 == [v5 value])
    {
      v7 = [(HKInteractiveChartCategoryValueData *)self startDate];
      v8 = [v5 startDate];
      if (v7 == v8)
      {
        v10 = [(HKInteractiveChartCategoryValueData *)self endDate];
        v11 = [v5 endDate];
        v9 = v10 == v11;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(HKInteractiveChartCategoryValueData *)self startDate];
  v4 = [v3 hash];
  v5 = [(HKInteractiveChartCategoryValueData *)self endDate];
  v6 = [v5 hash] ^ v4;
  v7 = [(HKInteractiveChartCategoryValueData *)self value];

  return v6 ^ v7;
}

@end