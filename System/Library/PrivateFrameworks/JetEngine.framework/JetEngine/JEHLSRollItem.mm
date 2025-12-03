@interface JEHLSRollItem
- (JEHLSRollItem)initWithStartOverallPosition:(unint64_t)position duration:(unint64_t)duration metricsData:(id)data;
@end

@implementation JEHLSRollItem

- (JEHLSRollItem)initWithStartOverallPosition:(unint64_t)position duration:(unint64_t)duration metricsData:(id)data
{
  v9.receiver = self;
  v9.super_class = JEHLSRollItem;
  v6 = [(JEHLSItem *)&v9 initWithStartOverallPosition:position metricsData:data];
  v7 = v6;
  if (v6)
  {
    [(JEHLSRollItem *)v6 setDuration:duration];
  }

  return v7;
}

@end