@interface LCFELShadowEvaluationPrediction
- (id)init:(id)a3 predictedFeatureSet:(id)a4 outputLabelFeatureName:(id)a5;
@end

@implementation LCFELShadowEvaluationPrediction

- (id)init:(id)a3 predictedFeatureSet:(id)a4 outputLabelFeatureName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = LCFELShadowEvaluationPrediction;
  v11 = [(LCFELShadowEvaluationPrediction *)&v23 init];
  if (v11)
  {
    v12 = [v8 timestamp];
    timestampOfInputFeatureSet = v11->_timestampOfInputFeatureSet;
    v11->_timestampOfInputFeatureSet = v12;

    v14 = MEMORY[0x277CCABB0];
    v15 = [v9 featureValueForName:v10];
    v16 = [v14 numberWithLongLong:{objc_msgSend(v15, "int64Value")}];
    predictedClass = v11->_predictedClass;
    v11->_predictedClass = v16;

    v18 = MEMORY[0x277CCABB0];
    v19 = [v9 featureValueForName:@"classProbability"];
    [v19 doubleValue];
    v20 = [v18 numberWithDouble:?];
    probability = v11->_probability;
    v11->_probability = v20;
  }

  return v11;
}

@end