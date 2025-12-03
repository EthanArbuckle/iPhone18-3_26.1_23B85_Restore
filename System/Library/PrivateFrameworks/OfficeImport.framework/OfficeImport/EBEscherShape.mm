@interface EBEscherShape
- (void)setChart:(id)chart;
@end

@implementation EBEscherShape

- (void)setChart:(id)chart
{
  chartCopy = chart;
  if (self->mChart != chartCopy)
  {
    v6 = chartCopy;
    objc_storeStrong(&self->mChart, chart);
    chartCopy = v6;
  }
}

@end