@interface HMDRTPredictedContextResultTuple
- (HMDRTPredictedContextResultTuple)initWithPredictedContextResult:(id)a3;
@end

@implementation HMDRTPredictedContextResultTuple

- (HMDRTPredictedContextResultTuple)initWithPredictedContextResult:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDRTPredictedContextResultTuple;
  v6 = [(HMDRTPredictedContextResultTuple *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_result, a3);
  }

  return v7;
}

@end