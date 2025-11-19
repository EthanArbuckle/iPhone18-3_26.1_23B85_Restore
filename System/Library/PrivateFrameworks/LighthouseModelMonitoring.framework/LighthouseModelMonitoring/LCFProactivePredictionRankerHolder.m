@interface LCFProactivePredictionRankerHolder
- (id)init:(id)a3 prediction:(id)a4;
@end

@implementation LCFProactivePredictionRankerHolder

- (id)init:(id)a3 prediction:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = LCFProactivePredictionRankerHolder;
  v9 = [(LCFProactivePredictionRankerHolder *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_featureSet, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

@end