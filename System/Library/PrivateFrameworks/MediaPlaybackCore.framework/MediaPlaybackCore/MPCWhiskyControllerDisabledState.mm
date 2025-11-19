@interface MPCWhiskyControllerDisabledState
- (MPCWhiskyControllerDisabledState)initWithPolicyEvaluation:(id)a3;
@end

@implementation MPCWhiskyControllerDisabledState

- (MPCWhiskyControllerDisabledState)initWithPolicyEvaluation:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12.receiver = self;
    v12.super_class = MPCWhiskyControllerDisabledState;
    v5 = [(MPCWhiskyControllerDisabledState *)&v12 init];
    if (v5)
    {
      v6 = [v4 explanation];
      explanation = v5->_explanation;
      v5->_explanation = v6;

      v8 = [v4 policyType];
      if (v8 < 3)
      {
        v9 = v8 + 1;
      }

      else
      {
        v9 = 0;
      }

      v5->_reason = v9;
    }

    self = v5;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end