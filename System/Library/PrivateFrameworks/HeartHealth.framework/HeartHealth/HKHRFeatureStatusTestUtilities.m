@interface HKHRFeatureStatusTestUtilities
+ (id)evaluationWithRequirementIdentifiers:(id)a3 unsatisfiedRequirementIdentifiers:(id)a4;
@end

@implementation HKHRFeatureStatusTestUtilities

+ (id)evaluationWithRequirementIdentifiers:(id)a3 unsatisfiedRequirementIdentifiers:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v33;
    v12 = MEMORY[0x277CBEC38];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 setObject:v12 forKeyedSubscript:*(*(&v32 + 1) + 8 * i)];
      }

      v10 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v10);
  }

  if ([v6 count])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = v6;
    v15 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      v18 = MEMORY[0x277CBEC28];
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v28 + 1) + 8 * j);
          v21 = [v7 objectForKeyedSubscript:{v20, v28}];

          if (v21)
          {
            [v7 setObject:v18 forKeyedSubscript:v20];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v16);
    }
  }

  v22 = MEMORY[0x277CBEB70];
  v23 = [v7 allKeys];
  v24 = [v22 orderedSetWithArray:v23];

  v25 = [objc_alloc(MEMORY[0x277CCD430]) initWithRequirementIdentifiersOrderedByPriority:v24 satisfactionByRequirementIdentifier:v7];
  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

@end