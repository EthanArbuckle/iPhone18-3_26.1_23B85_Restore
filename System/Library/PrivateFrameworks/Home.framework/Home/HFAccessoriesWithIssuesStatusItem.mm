@interface HFAccessoriesWithIssuesStatusItem
+ (id)statusItemClasses;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)iconDescriptorForRepresentedHomeKitObjects:(id)a3;
@end

@implementation HFAccessoriesWithIssuesStatusItem

+ (id)statusItemClasses
{
  if (_MergedGlobals_264 != -1)
  {
    dispatch_once(&_MergedGlobals_264, &__block_literal_global_3_17);
  }

  v3 = qword_280E03088;

  return v3;
}

void __54__HFAccessoriesWithIssuesStatusItem_statusItemClasses__block_invoke_2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:&v5 count:3];
  v2 = [v0 setWithArray:{v1, v5, v6}];
  v3 = qword_280E03088;
  qword_280E03088 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (id)iconDescriptorForRepresentedHomeKitObjects:(id)a3
{
  v3 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"exclamationmark.circle.fill"];

  return v3;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v6.receiver = self;
  v6.super_class = HFAccessoriesWithIssuesStatusItem;
  v3 = [(HFAbstractGroupedStatusItem *)&v6 _subclass_updateWithOptions:a3];
  v4 = [v3 flatMap:&__block_literal_global_15_4];

  return v4;
}

id __65__HFAccessoriesWithIssuesStatusItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = [a2 mutableCopy];
  v3 = [v2 objectForKeyedSubscript:@"hidden"];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = [MEMORY[0x277D2C900] futureWithResult:v2];
  }

  else
  {
    [v2 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"hidden"];
    v38 = v2;
    v6 = [v2 objectForKeyedSubscript:@"representedHomeKitObjects"];
    v7 = [MEMORY[0x277CBEB58] set];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v45 objects:v50 count:16];
    v40 = v8;
    if (v9)
    {
      v10 = v9;
      v11 = *v46;
      v12 = 0x277CD1000uLL;
      v39 = *v46;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v46 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v45 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v15 = v10;
            v16 = [v14 hf_associatedAccessories];
            v17 = *(v12 + 3048);
            objc_opt_class();
            v18 = v14;
            if (objc_opt_isKindOfClass())
            {
              v19 = v18;
            }

            else
            {
              v19 = 0;
            }

            v20 = v19;

            if (v20)
            {
              v21 = [v20 uniqueIdentifier];
              [v7 addObject:v21];
            }

            else
            {
              v43 = 0u;
              v44 = 0u;
              v41 = 0u;
              v42 = 0u;
              v21 = v16;
              v22 = [v21 countByEnumeratingWithState:&v41 objects:v49 count:16];
              if (v22)
              {
                v23 = v22;
                v24 = *v42;
                do
                {
                  for (j = 0; j != v23; ++j)
                  {
                    if (*v42 != v24)
                    {
                      objc_enumerationMutation(v21);
                    }

                    v26 = [*(*(&v41 + 1) + 8 * j) uniqueIdentifier];
                    [v7 addObject:v26];
                  }

                  v23 = [v21 countByEnumeratingWithState:&v41 objects:v49 count:16];
                }

                while (v23);
                v11 = v39;
                v8 = v40;
                v12 = 0x277CD1000;
              }
            }

            v10 = v15;
          }

          else
          {
            v16 = [v14 uniqueIdentifier];
            [v7 addObject:v16];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v10);
    }

    v27 = [v7 count];
    if (v27)
    {
      v34 = HFLocalizedStringWithFormat(@"HFAccessoriesWithIssuesTitle", @"%lu", v28, v29, v30, v31, v32, v33, v27);
      v35 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"exclamationmark.circle.fill"];
      v2 = v38;
      [v38 setObject:v35 forKeyedSubscript:@"icon"];

      v8 = v40;
      [v38 setObject:v34 forKeyedSubscript:@"title"];
    }

    else
    {
      v2 = v38;
      [v38 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
    }

    v5 = [MEMORY[0x277D2C900] futureWithResult:v2];
  }

  v36 = *MEMORY[0x277D85DE8];

  return v5;
}

@end