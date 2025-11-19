@interface HMIVideoAnalyzerReportMatch
- (HMIVideoAnalyzerReportMatch)initWithTruth:(id)a3 prediction:(id)a4 score:(float)a5;
@end

@implementation HMIVideoAnalyzerReportMatch

- (HMIVideoAnalyzerReportMatch)initWithTruth:(id)a3 prediction:(id)a4 score:(float)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = HMIVideoAnalyzerReportMatch;
  v11 = [(HMIVideoAnalyzerReportMatch *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_truth, a3);
    objc_storeStrong(&v12->_prediction, a4);
    v12->_score = a5;
  }

  return v12;
}

@end