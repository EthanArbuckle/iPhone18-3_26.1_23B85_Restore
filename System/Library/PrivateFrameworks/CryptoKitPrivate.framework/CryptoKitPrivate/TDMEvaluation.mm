@interface TDMEvaluation
- (TDMEvaluation)initWithEvaluatedElement:(id)element proof:(id)proof;
@end

@implementation TDMEvaluation

- (TDMEvaluation)initWithEvaluatedElement:(id)element proof:(id)proof
{
  elementCopy = element;
  proofCopy = proof;
  v12.receiver = self;
  v12.super_class = TDMEvaluation;
  v9 = [(TDMEvaluation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_evaluatedElement, element);
    objc_storeStrong(&v10->_proof, proof);
  }

  return v10;
}

@end