@interface HKInteractiveChartOverlayNamedDataSource
- (HKInteractiveChartOverlayNamedDataSource)initWithDataSource:(id)source named:(id)named withContextTitleForTimeScope:(id)scope;
@end

@implementation HKInteractiveChartOverlayNamedDataSource

- (HKInteractiveChartOverlayNamedDataSource)initWithDataSource:(id)source named:(id)named withContextTitleForTimeScope:(id)scope
{
  sourceCopy = source;
  namedCopy = named;
  scopeCopy = scope;
  v14.receiver = self;
  v14.super_class = HKInteractiveChartOverlayNamedDataSource;
  v11 = [(HKInteractiveChartOverlayNamedDataSource *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(HKInteractiveChartOverlayNamedDataSource *)v11 setContextTitleForTimeScope:scopeCopy];
    [(HKInteractiveChartOverlayNamedDataSource *)v12 setName:namedCopy];
    [(HKInteractiveChartOverlayNamedDataSource *)v12 setDataSource:sourceCopy];
  }

  return v12;
}

@end