@interface CHBChartTypeWithGrouping
+ (void)setGrouping:(id)a3 stacked:(BOOL)a4 categoryPercentage:(BOOL)a5;
@end

@implementation CHBChartTypeWithGrouping

+ (void)setGrouping:(id)a3 stacked:(BOOL)a4 categoryPercentage:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  if (v6)
  {
    [v7 setGrouping:2];
    if (v5)
    {
      [v7 setGrouping:1];
    }
  }
}

@end