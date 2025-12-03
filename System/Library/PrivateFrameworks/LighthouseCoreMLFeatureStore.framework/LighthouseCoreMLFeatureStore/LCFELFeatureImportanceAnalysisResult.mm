@interface LCFELFeatureImportanceAnalysisResult
- (id)init:(id)init featureCount:(id)count correlationCoefficient:(id)coefficient featureImportance:(id)importance;
@end

@implementation LCFELFeatureImportanceAnalysisResult

- (id)init:(id)init featureCount:(id)count correlationCoefficient:(id)coefficient featureImportance:(id)importance
{
  initCopy = init;
  countCopy = count;
  coefficientCopy = coefficient;
  importanceCopy = importance;
  v18.receiver = self;
  v18.super_class = LCFELFeatureImportanceAnalysisResult;
  v15 = [(LCFELFeatureImportanceAnalysisResult *)&v18 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_featureName, init);
    objc_storeStrong(p_isa + 2, count);
    objc_storeStrong(p_isa + 3, coefficient);
    objc_storeStrong(p_isa + 4, importance);
  }

  return p_isa;
}

@end