@interface IRRuleOutputCandidate
- (id)evaluateRuleOutputWithCandidateIdentifier:(id)a3;
@end

@implementation IRRuleOutputCandidate

- (id)evaluateRuleOutputWithCandidateIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(IRRuleOutputEvaluation);
  v6 = [(IRRuleOutputCandidate *)self values];
  v7 = [v6 objectForKeyedSubscript:v4];

  if (v7)
  {
    v8 = [(IRRuleOutputCandidate *)self values];
    v9 = [v8 objectForKeyedSubscript:v4];
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

@end