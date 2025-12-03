@interface LCFProactivePredictionRankerHolder
- (id)init:(id)init prediction:(id)prediction;
@end

@implementation LCFProactivePredictionRankerHolder

- (id)init:(id)init prediction:(id)prediction
{
  initCopy = init;
  predictionCopy = prediction;
  v12.receiver = self;
  v12.super_class = LCFProactivePredictionRankerHolder;
  v9 = [(LCFProactivePredictionRankerHolder *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_featureSet, init);
    objc_storeStrong(p_isa + 2, prediction);
  }

  return p_isa;
}

@end