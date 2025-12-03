@interface MTHLSRollItem
- (MTHLSRollItem)initWithStartOverallPosition:(unint64_t)position duration:(unint64_t)duration metricsData:(id)data;
@end

@implementation MTHLSRollItem

- (MTHLSRollItem)initWithStartOverallPosition:(unint64_t)position duration:(unint64_t)duration metricsData:(id)data
{
  v9.receiver = self;
  v9.super_class = MTHLSRollItem;
  v6 = [(MTHLSItem *)&v9 initWithStartOverallPosition:position metricsData:data];
  v7 = v6;
  if (v6)
  {
    [(MTHLSRollItem *)v6 setDuration:duration];
  }

  return v7;
}

@end