@interface ODCurareModelSelectionParameter
- (ODCurareModelSelectionParameter)initWithMetricName:(id)a3 percentageIncrease:(double)a4;
@end

@implementation ODCurareModelSelectionParameter

- (ODCurareModelSelectionParameter)initWithMetricName:(id)a3 percentageIncrease:(double)a4
{
  v6 = a3;
  v7 = [(ODCurareModelSelectionParameter *)self init];
  v8 = v7;
  if (v7)
  {
    [(ODCurareModelSelectionParameter *)v7 setMetricName:v6];
    [(ODCurareModelSelectionParameter *)v8 setPercentageIncrease:a4];
  }

  return v8;
}

@end