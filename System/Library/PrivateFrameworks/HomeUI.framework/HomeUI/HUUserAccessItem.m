@interface HUUserAccessItem
@end

@implementation HUUserAccessItem

id __49___HUUserAccessItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277D14858]) initWithResults:v3];
  v5 = v4;
  if (*(a1 + 32))
  {
    v6 = [v4 results];
    v7 = [v6 mutableCopy];

    [v7 addEntriesFromDictionary:*(a1 + 32)];
    [v5 setResults:v7];
  }

  v8 = *MEMORY[0x277D13DA8];
  v9 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13DA8]];
  v10 = [v9 mutableCopy];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  v13 = v12;

  v14 = [*(a1 + 40) user];
  [v13 addObject:v14];

  [v5 setObject:v13 forKeyedSubscript:v8];
  v15 = *MEMORY[0x277D13DA0];
  v16 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13DA0]];
  v17 = [v16 mutableCopy];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  v20 = v19;

  [v20 addObject:objc_opt_class()];
  [v5 setObject:v20 forKeyedSubscript:v15];
  v21 = [MEMORY[0x277D2C900] futureWithResult:v5];

  return v21;
}

@end