@interface HKInteractiveChartCategoryValueData
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation HKInteractiveChartCategoryValueData

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    value = [(HKInteractiveChartCategoryValueData *)self value];
    if (value == [v5 value])
    {
      startDate = [(HKInteractiveChartCategoryValueData *)self startDate];
      startDate2 = [v5 startDate];
      if (startDate == startDate2)
      {
        endDate = [(HKInteractiveChartCategoryValueData *)self endDate];
        endDate2 = [v5 endDate];
        v9 = endDate == endDate2;
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
  startDate = [(HKInteractiveChartCategoryValueData *)self startDate];
  v4 = [startDate hash];
  endDate = [(HKInteractiveChartCategoryValueData *)self endDate];
  v6 = [endDate hash] ^ v4;
  value = [(HKInteractiveChartCategoryValueData *)self value];

  return v6 ^ value;
}

@end