@interface MTURLDeresAction
- (MTURLDeresAction)initWithField:(id)field configDictionary:(id)dictionary;
- (id)allowedQueryItemsFromItems:(id)items;
- (id)performAction:(id)action context:(id)context;
@end

@implementation MTURLDeresAction

- (MTURLDeresAction)initWithField:(id)field configDictionary:(id)dictionary
{
  v27 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = MTURLDeresAction;
  v7 = [(MTTreatmentAction *)&v25 initWithField:field configDictionary:dictionaryCopy];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"scope"];
    [(MTURLDeresAction *)v7 setScope:v8];

    v9 = [dictionaryCopy objectForKeyedSubscript:@"allowedParams"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v10, "count")}];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v22;
        v16 = MEMORY[0x277CBEC10];
        do
        {
          v17 = 0;
          do
          {
            if (*v22 != v15)
            {
              objc_enumerationMutation(v12);
            }

            [v11 setObject:v16 forKeyedSubscript:{*(*(&v21 + 1) + 8 * v17++), v21}];
          }

          while (v14 != v17);
          v14 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v14);
      }

      v18 = [v11 copy];
      [(MTURLDeresAction *)v7 setAllowedParams:v18];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MTURLDeresAction *)v7 setAllowedParams:v9];
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)performAction:(id)action context:(id)context
{
  v22.receiver = self;
  v22.super_class = MTURLDeresAction;
  v5 = [(MTTreatmentAction *)&v22 performAction:action context:context];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v6 = [MEMORY[0x277CCACE0] componentsWithString:v5];
  scope = [(MTURLDeresAction *)self scope];
  v8 = [scope isEqualToString:@"hostname"];

  if (!v8)
  {
    [v6 setPassword:0];
    [v6 setUser:0];
    scope2 = [(MTURLDeresAction *)self scope];
    if ([scope2 isEqualToString:@"urlWithoutParams"])
    {
    }

    else
    {
      scope3 = [(MTURLDeresAction *)self scope];
      v13 = [scope3 isEqualToString:@"fullWithoutParams"];

      if (!v13)
      {
        scope4 = [(MTURLDeresAction *)self scope];
        if ([scope4 isEqualToString:@"urlWithoutPath"])
        {
        }

        else
        {
          scope5 = [(MTURLDeresAction *)self scope];
          v19 = [scope5 isEqualToString:@"fullWithoutPath"];

          if (!v19)
          {
            goto LABEL_9;
          }
        }

        [v6 setFragment:0];
        queryItems = [v6 queryItems];
        v21 = [(MTURLDeresAction *)self allowedQueryItemsFromItems:queryItems];
        [v6 setQueryItems:v21];

        [v6 setPath:0];
        goto LABEL_9;
      }
    }

    [v6 setFragment:0];
    queryItems2 = [v6 queryItems];
    v15 = [(MTURLDeresAction *)self allowedQueryItemsFromItems:queryItems2];
    [v6 setQueryItems:v15];

LABEL_9:
    string = [v6 string];
    goto LABEL_10;
  }

  string = [v6 host];
LABEL_10:
  v10 = string;

LABEL_11:

  return v10;
}

- (id)allowedQueryItemsFromItems:(id)items
{
  itemsCopy = items;
  allowedParams = [(MTURLDeresAction *)self allowedParams];
  if ([allowedParams count])
  {
    v6 = [itemsCopy count];

    if (v6)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __47__MTURLDeresAction_allowedQueryItemsFromItems___block_invoke;
      v12[3] = &unk_2798CDE70;
      v12[4] = self;
      v7 = [MEMORY[0x277CCAC30] predicateWithBlock:v12];
      v8 = [itemsCopy filteredArrayUsingPredicate:v7];

      if ([v8 count])
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;

      itemsCopy = v8;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v10 = 0;
LABEL_9:

  return v10;
}

uint64_t __47__MTURLDeresAction_allowedQueryItemsFromItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) allowedParams];
  v5 = [v3 name];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [v6 objectForKeyedSubscript:@"allowedValues"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v3 value];
      v9 = [v7 containsObject:v8];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end