@interface IRContextWrapper
- (IRContext)context;
- (IRContextWrapper)initWithName:(id)name andDefaultClassification:(int64_t)classification andCandidates:(id)candidates;
- (IRContextWrapper)initWithName:(id)name defaultClassification:(int64_t)classification;
- (IRPolicyInspection)policyInspection;
@end

@implementation IRContextWrapper

- (IRContextWrapper)initWithName:(id)name defaultClassification:(int64_t)classification
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = IRContextWrapper;
  v8 = [(IRContextWrapper *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_defaultClassification = classification;
    v10 = objc_opt_new();
    candidates = v9->_candidates;
    v9->_candidates = v10;

    objc_storeStrong(&v9->_name, name);
  }

  return v9;
}

- (IRContextWrapper)initWithName:(id)name andDefaultClassification:(int64_t)classification andCandidates:(id)candidates
{
  candidatesCopy = candidates;
  v9 = [(IRContextWrapper *)self initWithName:name defaultClassification:classification];
  v10 = v9;
  if (v9)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __72__IRContextWrapper_initWithName_andDefaultClassification_andCandidates___block_invoke;
    v12[3] = &unk_2797E1990;
    v13 = v9;
    [candidatesCopy enumerateObjectsUsingBlock:v12];
  }

  return v10;
}

void __72__IRContextWrapper_initWithName_andDefaultClassification_andCandidates___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [IRCandidateDO candidateFromCandidateDO:a2];
  [v2 addCandidate:v3 logOrderOfExecution:0];
}

- (IRContext)context
{
  v3 = [MEMORY[0x277CBEB58] set];
  candidates = self->_candidates;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __27__IRContextWrapper_context__block_invoke;
  v10[3] = &unk_2797E19E0;
  v11 = v3;
  v5 = v3;
  [(NSSet *)candidates enumerateObjectsUsingBlock:v10];
  v6 = objc_alloc(MEMORY[0x277D212A8]);
  v7 = [v5 copy];
  v8 = [v6 initWithCandidateResults:v7 isBannerClassificationUnavailable:0 bundleIdentifier:0];

  return v8;
}

void __27__IRContextWrapper_context__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D21298];
  v4 = a2;
  v5 = [v3 alloc];
  v12 = [v4 candidateResult];
  v6 = [v12 candidate];
  v7 = [v4 candidateResult];
  v8 = [v7 classification];
  v9 = [v4 candidateResult];

  v10 = [v9 classificationDescription];
  v11 = [v5 initWithCandidate:v6 classification:v8 andClassificationDescription:v10];
  [v2 addObject:v11];
}

- (IRPolicyInspection)policyInspection
{
  v3 = [[IRPolicyInspection alloc] initWithName:self->_name];
  candidates = self->_candidates;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__IRContextWrapper_policyInspection__block_invoke;
  v7[3] = &unk_2797E19E0;
  v5 = v3;
  v8 = v5;
  [(NSSet *)candidates enumerateObjectsUsingBlock:v7];

  return v5;
}

void __36__IRContextWrapper_policyInspection__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v16 = [IRCandidateInspection alloc];
  v3 = [IRCandidateInspectionServicePackage alloc];
  v14 = [v2 ruleInspections];
  v4 = [v14 allValues];
  v5 = [v4 copy];
  v6 = [v2 candidateResult];
  v7 = [v6 classification];
  v8 = [v2 orderOfExecution];
  v9 = [v2 candidateResult];
  v10 = [v9 classificationDescription];
  v11 = [v2 candidateResult];

  v12 = [v11 candidate];
  v13 = [(IRCandidateInspectionServicePackage *)v3 initWithRules:v5 classification:v7 orderOfExecution:v8 andClassificationDescription:v10 forCandidate:v12];
  v17 = [(IRCandidateInspection *)v16 initWithInspectionServicePackage:v13];

  [*(a1 + 32) addCandidate:v17];
}

@end