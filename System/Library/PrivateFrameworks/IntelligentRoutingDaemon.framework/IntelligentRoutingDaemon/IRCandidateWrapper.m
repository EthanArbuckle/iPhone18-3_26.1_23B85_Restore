@interface IRCandidateWrapper
- (IRCandidateWrapper)initWithCandidate:(id)a3;
- (IRInspectionOrderOfExectionForCandidate)orderOfExecution;
- (void)logOrderOfExecution:(int64_t)a3 withRuleKey:(id)a4 ruleType:(id)a5;
- (void)setClassification:(int64_t)a3 withDescription:(id)a4;
- (void)setEvaluation:(id)a3 forRuleKey:(id)a4;
@end

@implementation IRCandidateWrapper

- (IRCandidateWrapper)initWithCandidate:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = IRCandidateWrapper;
  v5 = [(IRCandidateWrapper *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(IRCandidateWrapper *)v5 setCandidate:v4];
    v7 = objc_alloc(MEMORY[0x277D21298]);
    v8 = [IRCandidateDO candidateFromCandidateDO:v4];
    v9 = [v7 initWithCandidate:v8 classification:0 andClassificationDescription:@"No classification assigned"];
    [(IRCandidateWrapper *)v6 setCandidateResult:v9];
  }

  return v6;
}

- (void)setEvaluation:(id)a3 forRuleKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [[IRRuleInspection alloc] initWithRuleName:v6 evaluation:v7];

  v8 = [(IRCandidateWrapper *)self ruleInspections];
  [v8 setObject:v9 forKeyedSubscript:v6];
}

- (void)setClassification:(int64_t)a3 withDescription:(id)a4
{
  v6 = a4;
  v7 = [(IRCandidateWrapper *)self candidateResult];
  [v7 setClassification:a3 withDescription:v6];
}

- (void)logOrderOfExecution:(int64_t)a3 withRuleKey:(id)a4 ruleType:(id)a5
{
  v16 = a4;
  v7 = a5;
  if ([(IRCandidateWrapper *)self enableOrderOfExecutionLogging])
  {
    v8 = IRCandidateClassificationToString();
    v9 = [(IRCandidateWrapper *)self internalOrderOfExecution];
    v10 = [v9 objectForKeyedSubscript:v8];

    if (!v10)
    {
      v11 = objc_opt_new();
      v12 = [(IRCandidateWrapper *)self internalOrderOfExecution];
      [v12 setObject:v11 forKeyedSubscript:v8];
    }

    v13 = [(IRCandidateWrapper *)self internalOrderOfExecution];
    v14 = [v13 objectForKeyedSubscript:v8];
    v15 = [[IRInspectionOrderOfExectionElement alloc] initWithRuleName:v16 andRuleType:v7];
    [v14 addObject:v15];
  }
}

- (IRInspectionOrderOfExectionForCandidate)orderOfExecution
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(IRCandidateWrapper *)self internalOrderOfExecution];
  v6 = [v5 allKeys];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __38__IRCandidateWrapper_orderOfExecution__block_invoke;
  v12 = &unk_2797E1F70;
  v13 = v4;
  v14 = self;
  v7 = v4;
  [v6 enumerateObjectsUsingBlock:&v9];

  [v3 setExecutionOrderForClassification:{v7, v9, v10, v11, v12}];

  return v3;
}

void __38__IRCandidateWrapper_orderOfExecution__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v6 = [v3 internalOrderOfExecution];
  v5 = [v6 objectForKeyedSubscript:v4];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
}

@end