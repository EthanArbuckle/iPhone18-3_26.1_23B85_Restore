@interface BMManagedObjectConverter
- (id)convertItemMOs:(id)os error:(id *)error;
- (id)convertRuleMOs:(id)os basketCount:(unint64_t)count error:(id *)error;
- (id)insertItems:(id)items inManagedObjectContext:(id)context;
- (id)insertRules:(id)rules inManagedObjectContext:(id)context;
@end

@implementation BMManagedObjectConverter

- (id)convertRuleMOs:(id)os basketCount:(unint64_t)count error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  osCopy = os;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(osCopy, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = osCopy;
  v28 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v28)
  {
    v27 = *v33;
    errorCopy = error;
    while (2)
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        antecedent = [v10 antecedent];
        v31 = 0;
        v12 = [(BMManagedObjectConverter *)self convertItemMOs:antecedent error:&v31];
        v13 = v31;

        if (v13)
        {
          goto LABEL_13;
        }

        consequent = [v10 consequent];
        v30 = 0;
        v15 = [(BMManagedObjectConverter *)self convertItemMOs:consequent error:&v30];
        v13 = v30;

        if (v13)
        {

LABEL_13:
          error = errorCopy;
          goto LABEL_14;
        }

        v29 = [BMRule alloc];
        [v10 support];
        v17 = v16;
        [v10 confidence];
        v19 = -[BMRule initWithAntecedent:consequent:support:confidence:basketCount:absoluteSupport:absoluteAntecedentSupport:absoluteConsequentSupport:uniqueDaysLastWeek:uniqueDaysTotal:](v29, "initWithAntecedent:consequent:support:confidence:basketCount:absoluteSupport:absoluteAntecedentSupport:absoluteConsequentSupport:uniqueDaysLastWeek:uniqueDaysTotal:", v12, v15, count, [v10 absoluteSupport], objc_msgSend(v10, "absoluteConsequentSupport"), objc_msgSend(v10, "absoluteConsequentSupport"), v17, v18, objc_msgSend(v10, "uniqueDaysLastWeek"), objc_msgSend(v10, "uniqueDaysTotal"));
        [v8 addObject:v19];
      }

      v13 = 0;
      error = errorCopy;
      v28 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v28)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_14:

  if (error)
  {
    v20 = v13;
    *error = v13;
  }

  if (v13)
  {
    v21 = 0;
  }

  else
  {
    v21 = [MEMORY[0x277CBEA60] arrayWithArray:v8];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)convertItemMOs:(id)os error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  osCopy = os;
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(osCopy, "count")}];
  v6 = +[BMItemType allItemTypesDictionary];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = osCopy;
  v7 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v35;
    v31 = *MEMORY[0x277CCA450];
    do
    {
      v11 = 0;
      v32 = v8;
      do
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v34 + 1) + 8 * v11);
        typeIdentifier = [v12 typeIdentifier];
        v14 = [v6 objectForKeyedSubscript:typeIdentifier];

        if (v14)
        {
          v15 = [BMItem alloc];
          normalizedValue = [v12 normalizedValue];
          typeIdentifier2 = [(BMItem *)v15 initWithType:v14 normalizedValue:normalizedValue];

          [v5 addObject:typeIdentifier2];
        }

        else
        {
          v18 = MEMORY[0x277CCA9B8];
          v38 = v31;
          v19 = v10;
          v20 = v6;
          v21 = v5;
          v22 = MEMORY[0x277CCACA8];
          typeIdentifier2 = [v12 typeIdentifier];
          v23 = [v22 stringWithFormat:@"%@ is not a registered type. See +[BMItemType allItemTypes] for possible values.", typeIdentifier2];
          v39 = v23;
          v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
          v25 = [v18 errorWithDomain:@"com.apple.BehaviorMiner" code:0 userInfo:v24];

          v5 = v21;
          v6 = v20;
          v10 = v19;
          v8 = v32;
          v9 = v25;
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  if (error)
  {
    v26 = v9;
    *error = v9;
  }

  if (v9)
  {
    v27 = 0;
  }

  else
  {
    v27 = [MEMORY[0x277CBEB98] setWithSet:v5];
  }

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)insertRules:(id)rules inManagedObjectContext:(id)context
{
  v28 = *MEMORY[0x277D85DE8];
  rulesCopy = rules;
  contextCopy = context;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(rulesCopy, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = rulesCopy;
  v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [[BMRuleMO alloc] initWithContext:contextCopy];
        antecedent = [v13 antecedent];
        v16 = [(BMManagedObjectConverter *)self insertItems:antecedent inManagedObjectContext:contextCopy];
        [(BMRuleMO *)v14 setAntecedent:v16];

        consequent = [v13 consequent];
        v18 = [(BMManagedObjectConverter *)self insertItems:consequent inManagedObjectContext:contextCopy];
        [(BMRuleMO *)v14 setConsequent:v18];

        [v13 support];
        [(BMRuleMO *)v14 setSupport:?];
        [v13 confidence];
        [(BMRuleMO *)v14 setConfidence:?];
        -[BMRuleMO setAbsoluteSupport:](v14, "setAbsoluteSupport:", [v13 absoluteSupport]);
        -[BMRuleMO setAbsoluteAntecedentSupport:](v14, "setAbsoluteAntecedentSupport:", [v13 absoluteConsequentSupport]);
        -[BMRuleMO setAbsoluteConsequentSupport:](v14, "setAbsoluteConsequentSupport:", [v13 absoluteConsequentSupport]);
        -[BMRuleMO setUniqueDaysLastWeek:](v14, "setUniqueDaysLastWeek:", [v13 uniqueDaysLastWeek]);
        -[BMRuleMO setUniqueDaysTotal:](v14, "setUniqueDaysTotal:", [v13 uniqueDaysTotal]);
        [v8 addObject:v14];
      }

      v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v19 = [MEMORY[0x277CBEA60] arrayWithArray:v8];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)insertItems:(id)items inManagedObjectContext:(id)context
{
  v27 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  contextCopy = context;
  v7 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = itemsCopy;
  v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [[BMItemMO alloc] initWithContext:contextCopy];
        type = [v12 type];
        identifier = [type identifier];
        [(BMItemMO *)v13 setTypeIdentifier:identifier];

        normalizedValue = [v12 normalizedValue];
        [(BMItemMO *)v13 setNormalizedValue:normalizedValue];

        uniformIdentifier = [v12 uniformIdentifier];
        [(BMItemMO *)v13 setUniformIdentifier:uniformIdentifier];

        [v7 addObject:v13];
      }

      v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v18 = [MEMORY[0x277CBEB98] setWithSet:v7];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

@end