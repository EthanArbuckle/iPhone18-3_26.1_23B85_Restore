@interface LCFELFeatureValueStatistic
- (id)init:(id)init count:(id)count mean:(id)mean stddev:(id)stddev;
@end

@implementation LCFELFeatureValueStatistic

- (id)init:(id)init count:(id)count mean:(id)mean stddev:(id)stddev
{
  initCopy = init;
  countCopy = count;
  meanCopy = mean;
  stddevCopy = stddev;
  v18.receiver = self;
  v18.super_class = LCFELFeatureValueStatistic;
  v15 = [(LCFELFeatureValueStatistic *)&v18 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_featureName, init);
    objc_storeStrong(p_isa + 2, count);
    objc_storeStrong(p_isa + 3, mean);
    objc_storeStrong(p_isa + 4, stddev);
  }

  return p_isa;
}

@end