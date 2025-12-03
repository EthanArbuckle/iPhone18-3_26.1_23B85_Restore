@interface MPCWhiskyControllerDisabledState
- (MPCWhiskyControllerDisabledState)initWithPolicyEvaluation:(id)evaluation;
@end

@implementation MPCWhiskyControllerDisabledState

- (MPCWhiskyControllerDisabledState)initWithPolicyEvaluation:(id)evaluation
{
  evaluationCopy = evaluation;
  if (evaluationCopy)
  {
    v12.receiver = self;
    v12.super_class = MPCWhiskyControllerDisabledState;
    v5 = [(MPCWhiskyControllerDisabledState *)&v12 init];
    if (v5)
    {
      explanation = [evaluationCopy explanation];
      explanation = v5->_explanation;
      v5->_explanation = explanation;

      policyType = [evaluationCopy policyType];
      if (policyType < 3)
      {
        v9 = policyType + 1;
      }

      else
      {
        v9 = 0;
      }

      v5->_reason = v9;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end