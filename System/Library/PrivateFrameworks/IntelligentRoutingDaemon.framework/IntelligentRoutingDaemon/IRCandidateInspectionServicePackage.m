@interface IRCandidateInspectionServicePackage
- (IRCandidateInspectionServicePackage)initWithRules:(id)a3 classification:(int64_t)a4 orderOfExecution:(id)a5 andClassificationDescription:(id)a6 forCandidate:(id)a7;
- (id)exportCandidateInspectionAsDictionary;
@end

@implementation IRCandidateInspectionServicePackage

- (IRCandidateInspectionServicePackage)initWithRules:(id)a3 classification:(int64_t)a4 orderOfExecution:(id)a5 andClassificationDescription:(id)a6 forCandidate:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = IRCandidateInspectionServicePackage;
  v17 = [(IRCandidateInspectionServicePackage *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_rules, a3);
    objc_storeStrong(&v18->_candidate, a7);
    v18->_classification = a4;
    objc_storeStrong(&v18->_classificationDescription, a6);
    objc_storeStrong(&v18->_orderOfExecution, a5);
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
  v35 = self;
  v3 = [(IRCandidateInspectionServicePackage *)self rules];
  v4 = [v3 countByEnumeratingWithState:&v42 objects:v47 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v42 + 1) + 8 * i);
        v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v10 = [v8 evaluation];
        if ([v10 hasBoolean])
        {
          v11 = [v8 evaluation];
          if ([v11 BOOLean])
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

        v13 = [v8 ruleName];
        [v37 setObject:v9 forKeyedSubscript:v13];
      }

      v5 = [v3 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v5);
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v15 = [(IRCandidateInspectionServicePackage *)v35 candidate];
  v16 = [v15 nodes];

  obj = v16;
  v17 = [v16 countByEnumeratingWithState:&v38 objects:v46 count:16];
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
        v23 = [v21 avOutpuDeviceIdentifier];
        if (v23)
        {
          v24 = [v21 avOutpuDeviceIdentifier];
          [v22 setObject:v24 forKeyedSubscript:@"avOutpuDeviceIdentifier"];
        }

        else
        {
          [v22 setObject:&stru_286755D18 forKeyedSubscript:@"avOutpuDeviceIdentifier"];
        }

        v25 = [v21 rapportIdentifier];
        if (v25)
        {
          v26 = [v21 rapportIdentifier];
          [v22 setObject:v26 forKeyedSubscript:@"rapportIdentifier"];
        }

        else
        {
          [v22 setObject:&stru_286755D18 forKeyedSubscript:@"rapportIdentifier"];
        }

        v27 = [v21 idsIdentifier];
        if (v27)
        {
          v28 = [v21 idsIdentifier];
          [v22 setObject:v28 forKeyedSubscript:@"idsIdentifier"];
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
  [(IRCandidateInspectionServicePackage *)v35 classification];
  v30 = IRCandidateClassificationToString();
  [v29 setObject:v30 forKeyedSubscript:@"classification"];

  v31 = [(IRCandidateInspectionServicePackage *)v35 candidate];
  v32 = [v31 candidateIdentifier];
  [v29 setObject:v32 forKeyedSubscript:@"candidateIdentifier"];

  v33 = *MEMORY[0x277D85DE8];

  return v29;
}

@end