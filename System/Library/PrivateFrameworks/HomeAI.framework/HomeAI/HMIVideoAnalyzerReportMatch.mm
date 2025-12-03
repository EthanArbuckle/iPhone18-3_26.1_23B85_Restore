@interface HMIVideoAnalyzerReportMatch
- (HMIVideoAnalyzerReportMatch)initWithTruth:(id)truth prediction:(id)prediction score:(float)score;
@end

@implementation HMIVideoAnalyzerReportMatch

- (HMIVideoAnalyzerReportMatch)initWithTruth:(id)truth prediction:(id)prediction score:(float)score
{
  truthCopy = truth;
  predictionCopy = prediction;
  v14.receiver = self;
  v14.super_class = HMIVideoAnalyzerReportMatch;
  v11 = [(HMIVideoAnalyzerReportMatch *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_truth, truth);
    objc_storeStrong(&v12->_prediction, prediction);
    v12->_score = score;
  }

  return v12;
}

@end