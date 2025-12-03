@interface CHBChartTypeWithGrouping
+ (void)setGrouping:(id)grouping stacked:(BOOL)stacked categoryPercentage:(BOOL)percentage;
@end

@implementation CHBChartTypeWithGrouping

+ (void)setGrouping:(id)grouping stacked:(BOOL)stacked categoryPercentage:(BOOL)percentage
{
  percentageCopy = percentage;
  stackedCopy = stacked;
  groupingCopy = grouping;
  if (stackedCopy)
  {
    [groupingCopy setGrouping:2];
    if (percentageCopy)
    {
      [groupingCopy setGrouping:1];
    }
  }
}

@end