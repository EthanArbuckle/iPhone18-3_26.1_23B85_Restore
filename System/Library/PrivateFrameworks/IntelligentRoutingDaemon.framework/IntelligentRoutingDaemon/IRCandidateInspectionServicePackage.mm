@interface IRCandidateInspectionServicePackage
- (IRCandidateInspectionServicePackage)initWithRules:(id)rules classification:(int64_t)classification orderOfExecution:(id)execution andClassificationDescription:(id)description forCandidate:(id)candidate;
- (id)exportCandidateInspectionAsDictionary;
@end

@implementation IRCandidateInspectionServicePackage

- (IRCandidateInspectionServicePackage)initWithRules:(id)rules classification:(int64_t)classification orderOfExecution:(id)execution andClassificationDescription:(id)description forCandidate:(id)candidate
{
  rulesCopy = rules;
  executionCopy = execution;
  descriptionCopy = description;
  candidateCopy = candidate;
  v20.receiver = self;
  v20.super_class = IRCandidateInspectionServicePackage;
  v17 = [(IRCandidateInspectionServicePackage *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_rules, rules);
    objc_storeStrong(&v18->_candidate, candidate);
    v18->_classification = classification;
    objc_storeStrong(&v18->_classificationDescription, description);
    objc_storeStrong(&v18->_orderOfExecution, execution);
  }

  return v18;
}

- (id)exportCandidateInspectionAsDictionary
{
  v48 = *MEMORY[0x277D85DE8];
  v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  selfCopy = self;
  rules = [(IRCandidateInspectionServicePackage *)self rules];
  v4 = [rules countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v43;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v43 != v6)
        {
          objc_enumerationMutation(rules);
        }

        v8 = *(*(&v42 + 1) + 8 * i);
        v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
        evaluation = [v8 evaluation];
        if ([evaluation hasBoolean])
        {
          evaluation2 = [v8 evaluation];
          if ([evaluation2 BOOLean])
          {
            v12 = @"Yes";
          }

          else
          {
            v12 = @"No";
          }

          [v9 setObject:v12 forKeyedSubscript:@"evaluation"];
        }

        else
        {
          [v9 setObject:@"Invalid" forKeyedSubscript:@"evaluation"];
        }

        ruleName = [v8 ruleName];
        [v37 setObject:v9 forKeyedSubscript:ruleName];
      }

      v5 = [rules countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v5);
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  candidate = [(IRCandidateInspectionServicePackage *)selfCopy candidate];
  nodes = [candidate nodes];

  obj = nodes;
  v17 = [nodes countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v39;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v39 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v38 + 1) + 8 * j);
        v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
        avOutpuDeviceIdentifier = [v21 avOutpuDeviceIdentifier];
        if (avOutpuDeviceIdentifier)
        {
          avOutpuDeviceIdentifier2 = [v21 avOutpuDeviceIdentifier];
          [v22 setObject:avOutpuDeviceIdentifier2 forKeyedSubscript:@"avOutpuDeviceIdentifier"];
        }

        else
        {
          [v22 setObject:&stru_286755D18 forKeyedSubscript:@"avOutpuDeviceIdentifier"];
        }

        rapportIdentifier = [v21 rapportIdentifier];
        if (rapportIdentifier)
        {
          rapportIdentifier2 = [v21 rapportIdentifier];
          [v22 setObject:rapportIdentifier2 forKeyedSubscript:@"rapportIdentifier"];
        }

        else
        {
          [v22 setObject:&stru_286755D18 forKeyedSubscript:@"rapportIdentifier"];
        }

        idsIdentifier = [v21 idsIdentifier];
        if (idsIdentifier)
        {
          idsIdentifier2 = [v21 idsIdentifier];
          [v22 setObject:idsIdentifier2 forKeyedSubscript:@"idsIdentifier"];
        }

        else
        {
          [v22 setObject:&stru_286755D18 forKeyedSubscript:@"idsIdentifier"];
        }

        [v14 addObject:v22];
      }

      v18 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v18);
  }

  v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v29 setObject:v37 forKeyedSubscript:@"rules"];
  [v29 setObject:v14 forKeyedSubscript:@"nodes"];
  [(IRCandidateInspectionServicePackage *)selfCopy classification];
  v30 = IRCandidateClassificationToString();
  [v29 setObject:v30 forKeyedSubscript:@"classification"];

  candidate2 = [(IRCandidateInspectionServicePackage *)selfCopy candidate];
  candidateIdentifier = [candidate2 candidateIdentifier];
  [v29 setObject:candidateIdentifier forKeyedSubscript:@"candidateIdentifier"];

  v33 = *MEMORY[0x277D85DE8];

  return v29;
}

@end