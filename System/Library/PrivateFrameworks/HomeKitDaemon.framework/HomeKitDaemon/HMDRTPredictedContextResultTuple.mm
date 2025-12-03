@interface HMDRTPredictedContextResultTuple
- (HMDRTPredictedContextResultTuple)initWithPredictedContextResult:(id)result;
@end

@implementation HMDRTPredictedContextResultTuple

- (HMDRTPredictedContextResultTuple)initWithPredictedContextResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = HMDRTPredictedContextResultTuple;
  v6 = [(HMDRTPredictedContextResultTuple *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_result, result);
  }

  return v7;
}

@end