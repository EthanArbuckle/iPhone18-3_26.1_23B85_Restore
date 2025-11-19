@interface IRRuleOutputHistoryPattern
- (IRRuleOutputHistoryPattern)initWithRule:(id)a3;
- (id)evaluateRuleOutputWithCandidateIdentifier:(id)a3;
@end

@implementation IRRuleOutputHistoryPattern

- (IRRuleOutputHistoryPattern)initWithRule:(id)a3
{
  v7.receiver = self;
  v7.super_class = IRRuleOutputHistoryPattern;
  v3 = [(IRRuleOutput *)&v7 initWithRule:a3];
  if (v3)
  {
    v4 = objc_opt_new();
    scoreForCandidates = v3->_scoreForCandidates;
    v3->_scoreForCandidates = v4;
  }

  return v3;
}

- (id)evaluateRuleOutputWithCandidateIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(IRRuleOutputEvaluation);
  v6 = [(IRRuleOutput *)self rule];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [(IRRuleOutput *)self rule];
    v9 = [(IRRuleOutputHistoryPattern *)self numberOfEventsInHistory];
    if (v9 >= [v8 minNumberOfEventsInHistory])
    {
      v12 = [(IRRuleOutputHistoryPattern *)self scoreForCandidates];
      v13 = [v12 objectForKeyedSubscript:v4];

      if (v13)
      {
        [(IRRuleOutputEvaluation *)v5 setHasBoolean:1];
        [v8 threshold];
        if (v14 == -2147483650.0 || ([v8 threshold], v15 == 2147483650.0))
        {
          [v8 threshold];
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
            v20 = [(IRRuleOutputHistoryPattern *)self scoreForCandidates];
            v21 = [v20 allValues];
            v22 = [v21 valueForKeyPath:v18];
            -[IRRuleOutputEvaluation setBoolean:](v5, "setBoolean:", [v13 isEqual:v22]);
          }
        }

        else
        {
          [v13 doubleValue];
          v26 = v25;
          [v8 threshold];
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