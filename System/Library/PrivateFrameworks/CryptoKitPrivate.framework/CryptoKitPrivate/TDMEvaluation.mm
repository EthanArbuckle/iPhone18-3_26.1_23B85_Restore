@interface TDMEvaluation
- (TDMEvaluation)initWithEvaluatedElement:(id)a3 proof:(id)a4;
@end

@implementation TDMEvaluation

- (TDMEvaluation)initWithEvaluatedElement:(id)a3 proof:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TDMEvaluation;
  v9 = [(TDMEvaluation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_evaluatedElement, a3);
    objc_storeStrong(&v10->_proof, a4);
  }

  return v10;
}

@end