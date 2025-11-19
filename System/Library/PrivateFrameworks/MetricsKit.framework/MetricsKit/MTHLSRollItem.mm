@interface MTHLSRollItem
- (MTHLSRollItem)initWithStartOverallPosition:(unint64_t)a3 duration:(unint64_t)a4 metricsData:(id)a5;
@end

@implementation MTHLSRollItem

- (MTHLSRollItem)initWithStartOverallPosition:(unint64_t)a3 duration:(unint64_t)a4 metricsData:(id)a5
{
  v9.receiver = self;
  v9.super_class = MTHLSRollItem;
  v6 = [(MTHLSItem *)&v9 initWithStartOverallPosition:a3 metricsData:a5];
  v7 = v6;
  if (v6)
  {
    [(MTHLSRollItem *)v6 setDuration:a4];
  }

  return v7;
}

@end