@interface IRRuleOutputCandidate
- (id)evaluateRuleOutputWithCandidateIdentifier:(id)identifier;
@end

@implementation IRRuleOutputCandidate

- (id)evaluateRuleOutputWithCandidateIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_alloc_init(IRRuleOutputEvaluation);
  values = [(IRRuleOutputCandidate *)self values];
  v7 = [values objectForKeyedSubscript:identifierCopy];

  if (v7)
  {
    values2 = [(IRRuleOutputCandidate *)self values];
    v9 = [values2 objectForKeyedSubscript:identifierCopy];
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

@end