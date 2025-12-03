@interface IRCandidateWrapper
- (IRCandidateWrapper)initWithCandidate:(id)candidate;
- (IRInspectionOrderOfExectionForCandidate)orderOfExecution;
- (void)logOrderOfExecution:(int64_t)execution withRuleKey:(id)key ruleType:(id)type;
- (void)setClassification:(int64_t)classification withDescription:(id)description;
- (void)setEvaluation:(id)evaluation forRuleKey:(id)key;
@end

@implementation IRCandidateWrapper

- (IRCandidateWrapper)initWithCandidate:(id)candidate
{
  candidateCopy = candidate;
  v11.receiver = self;
  v11.super_class = IRCandidateWrapper;
  v5 = [(IRCandidateWrapper *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(IRCandidateWrapper *)v5 setCandidate:candidateCopy];
    v7 = objc_alloc(MEMORY[0x277D21298]);
    v8 = [IRCandidateDO candidateFromCandidateDO:candidateCopy];
    v9 = [v7 initWithCandidate:v8 classification:0 andClassificationDescription:@"No classification assigned"];
    [(IRCandidateWrapper *)v6 setCandidateResult:v9];
  }

  return v6;
}

- (void)setEvaluation:(id)evaluation forRuleKey:(id)key
{
  keyCopy = key;
  evaluationCopy = evaluation;
  v9 = [[IRRuleInspection alloc] initWithRuleName:keyCopy evaluation:evaluationCopy];

  ruleInspections = [(IRCandidateWrapper *)self ruleInspections];
  [ruleInspections setObject:v9 forKeyedSubscript:keyCopy];
}

- (void)setClassification:(int64_t)classification withDescription:(id)description
{
  descriptionCopy = description;
  candidateResult = [(IRCandidateWrapper *)self candidateResult];
  [candidateResult setClassification:classification withDescription:descriptionCopy];
}

- (void)logOrderOfExecution:(int64_t)execution withRuleKey:(id)key ruleType:(id)type
{
  keyCopy = key;
  typeCopy = type;
  if ([(IRCandidateWrapper *)self enableOrderOfExecutionLogging])
  {
    v8 = IRCandidateClassificationToString();
    internalOrderOfExecution = [(IRCandidateWrapper *)self internalOrderOfExecution];
    v10 = [internalOrderOfExecution objectForKeyedSubscript:v8];

    if (!v10)
    {
      v11 = objc_opt_new();
      internalOrderOfExecution2 = [(IRCandidateWrapper *)self internalOrderOfExecution];
      [internalOrderOfExecution2 setObject:v11 forKeyedSubscript:v8];
    }

    internalOrderOfExecution3 = [(IRCandidateWrapper *)self internalOrderOfExecution];
    v14 = [internalOrderOfExecution3 objectForKeyedSubscript:v8];
    v15 = [[IRInspectionOrderOfExectionElement alloc] initWithRuleName:keyCopy andRuleType:typeCopy];
    [v14 addObject:v15];
  }
}

- (IRInspectionOrderOfExectionForCandidate)orderOfExecution
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  internalOrderOfExecution = [(IRCandidateWrapper *)self internalOrderOfExecution];
  allKeys = [internalOrderOfExecution allKeys];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __38__IRCandidateWrapper_orderOfExecution__block_invoke;
  v12 = &unk_2797E1F70;
  v13 = v4;
  selfCopy = self;
  v7 = v4;
  [allKeys enumerateObjectsUsingBlock:&v9];

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