@interface LCFELShadowEvaluationPrediction
- (id)init:(id)init predictedFeatureSet:(id)set outputLabelFeatureName:(id)name;
@end

@implementation LCFELShadowEvaluationPrediction

- (id)init:(id)init predictedFeatureSet:(id)set outputLabelFeatureName:(id)name
{
  initCopy = init;
  setCopy = set;
  nameCopy = name;
  v23.receiver = self;
  v23.super_class = LCFELShadowEvaluationPrediction;
  v11 = [(LCFELShadowEvaluationPrediction *)&v23 init];
  if (v11)
  {
    timestamp = [initCopy timestamp];
    timestampOfInputFeatureSet = v11->_timestampOfInputFeatureSet;
    v11->_timestampOfInputFeatureSet = timestamp;

    v14 = MEMORY[0x277CCABB0];
    v15 = [setCopy featureValueForName:nameCopy];
    v16 = [v14 numberWithLongLong:{objc_msgSend(v15, "int64Value")}];
    predictedClass = v11->_predictedClass;
    v11->_predictedClass = v16;

    v18 = MEMORY[0x277CCABB0];
    v19 = [setCopy featureValueForName:@"classProbability"];
    [v19 doubleValue];
    v20 = [v18 numberWithDouble:?];
    probability = v11->_probability;
    v11->_probability = v20;
  }

  return v11;
}

@end