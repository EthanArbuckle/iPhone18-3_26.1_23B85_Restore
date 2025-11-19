@interface LCFELFeatureValueStatistic
- (id)init:(id)a3 count:(id)a4 mean:(id)a5 stddev:(id)a6;
@end

@implementation LCFELFeatureValueStatistic

- (id)init:(id)a3 count:(id)a4 mean:(id)a5 stddev:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = LCFELFeatureValueStatistic;
  v15 = [(LCFELFeatureValueStatistic *)&v18 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_featureName, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
    objc_storeStrong(p_isa + 4, a6);
  }

  return p_isa;
}

@end