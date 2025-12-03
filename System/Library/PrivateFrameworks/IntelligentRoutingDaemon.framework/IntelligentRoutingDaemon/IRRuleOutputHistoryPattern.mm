@interface IRRuleOutputHistoryPattern
- (IRRuleOutputHistoryPattern)initWithRule:(id)rule;
- (id)evaluateRuleOutputWithCandidateIdentifier:(id)identifier;
@end

@implementation IRRuleOutputHistoryPattern

- (IRRuleOutputHistoryPattern)initWithRule:(id)rule
{
  v7.receiver = self;
  v7.super_class = IRRuleOutputHistoryPattern;
  v3 = [(IRRuleOutput *)&v7 initWithRule:rule];
  if (v3)
  {
    v4 = objc_opt_new();
    scoreForCandidates = v3->_scoreForCandidates;
    v3->_scoreForCandidates = v4;
  }

  return v3;
}

- (id)evaluateRuleOutputWithCandidateIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_alloc_init(IRRuleOutputEvaluation);
  rule = [(IRRuleOutput *)self rule];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    rule2 = [(IRRuleOutput *)self rule];
    numberOfEventsInHistory = [(IRRuleOutputHistoryPattern *)self numberOfEventsInHistory];
    if (numberOfEventsInHistory >= [rule2 minNumberOfEventsInHistory])
    {
      scoreForCandidates = [(IRRuleOutputHistoryPattern *)self scoreForCandidates];
      v13 = [scoreForCandidates objectForKeyedSubscript:identifierCopy];

      if (v13)
      {
        [(IRRuleOutputEvaluation *)v5 setHasBoolean:1];
        [rule2 threshold];
        if (v14 == -2147483650.0 || ([rule2 threshold], v15 == 2147483650.0))
        {
          [rule2 threshold];
          v16 = @"@max.self";
          if (v17 == -2147483650.0)
          {
            v16 = @"@min.self";
          }

          v18 = v16;
          [v13 doubleValue];
          if (v19 == 0.0)
          {
            [(IRRuleOutputEvaluation *)v5 setBoolean:0];
          }

          else
          {
            scoreForCandidates2 = [(IRRuleOutputHistoryPattern *)self scoreForCandidates];
            allValues = [scoreForCandidates2 allValues];
            v22 = [allValues valueForKeyPath:v18];
            -[IRRuleOutputEvaluation setBoolean:](v5, "setBoolean:", [v13 isEqual:v22]);
          }
        }

        else
        {
          [v13 doubleValue];
          v26 = v25;
          [rule2 threshold];
          [(IRRuleOutputEvaluation *)v5 setBoolean:v26 >= v27];
        }
      }

      v23 = v5;
    }

    else
    {
      v10 = v5;
    }
  }

  else
  {
    v11 = v5;
  }

  return v5;
}

@end