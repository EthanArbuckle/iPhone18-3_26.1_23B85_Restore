@interface HKInteractiveChartOverlayNamedDataSource
- (HKInteractiveChartOverlayNamedDataSource)initWithDataSource:(id)a3 named:(id)a4 withContextTitleForTimeScope:(id)a5;
@end

@implementation HKInteractiveChartOverlayNamedDataSource

- (HKInteractiveChartOverlayNamedDataSource)initWithDataSource:(id)a3 named:(id)a4 withContextTitleForTimeScope:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HKInteractiveChartOverlayNamedDataSource;
  v11 = [(HKInteractiveChartOverlayNamedDataSource *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(HKInteractiveChartOverlayNamedDataSource *)v11 setContextTitleForTimeScope:v10];
    [(HKInteractiveChartOverlayNamedDataSource *)v12 setName:v9];
    [(HKInteractiveChartOverlayNamedDataSource *)v12 setDataSource:v8];
  }

  return v12;
}

@end