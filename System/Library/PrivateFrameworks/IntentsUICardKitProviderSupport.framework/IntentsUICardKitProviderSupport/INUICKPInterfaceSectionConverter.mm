@interface INUICKPInterfaceSectionConverter
+ (id)_interactionMatchingCardSection:(id)a3 inCard:(id)a4;
+ (id)generateInterfaceSectionsFromCard:(id)a3;
+ (unint64_t)_intrinsicInteractiveBehaviorForCardSection:(id)a3;
@end

@implementation INUICKPInterfaceSectionConverter

+ (id)generateInterfaceSectionsFromCard:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [v4 cardSections];
  v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v11 = [a1 _interactionMatchingCardSection:v10 inCard:v4];
          v12 = [v10 parametersForInteraction:v11];
        }

        else
        {
          v12 = 0;
        }

        v13 = -[INUICKPCardInterfaceSection initWithInteractiveBehavior:parameters:]([INUICKPCardInterfaceSection alloc], "initWithInteractiveBehavior:parameters:", [a1 _intrinsicInteractiveBehaviorForCardSection:v10], v12);
        [(INUICKPCardInterfaceSection *)v13 setCardSection:v10];
        [v5 addObject:v13];
      }

      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v14 = [v5 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_interactionMatchingCardSection:(id)a3 inCard:(id)a4
{
  v4 = [a4 interactions];
  v5 = [v4 anyObject];

  return v5;
}

+ (unint64_t)_intrinsicInteractiveBehaviorForCardSection:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_opt_class() inuickp_interactiveBehaviorPrecedenceOrder];
  v21 = [v4 count];
  v5 = [v3 inuickp_intrinsicInteractiveBehavior];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  v22 = v4;
  v7 = [v4 indexOfObject:v6];

  if (objc_opt_respondsToSelector())
  {
    v20 = v3;
    v8 = [v3 actionCommands];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = v21 - v7;
      v12 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v14 inuickp_intrinsicInteractiveBehavior];
            v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
            v17 = v21 - [v22 indexOfObject:v16];

            if (v17 > v11)
            {
              v11 = v17;
              v5 = v15;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    v3 = v20;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

@end