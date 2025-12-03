@interface ODCurareModelSelectionParameter
- (ODCurareModelSelectionParameter)initWithMetricName:(id)name percentageIncrease:(double)increase;
@end

@implementation ODCurareModelSelectionParameter

- (ODCurareModelSelectionParameter)initWithMetricName:(id)name percentageIncrease:(double)increase
{
  nameCopy = name;
  v7 = [(ODCurareModelSelectionParameter *)self init];
  v8 = v7;
  if (v7)
  {
    [(ODCurareModelSelectionParameter *)v7 setMetricName:nameCopy];
    [(ODCurareModelSelectionParameter *)v8 setPercentageIncrease:increase];
  }

  return v8;
}

@end