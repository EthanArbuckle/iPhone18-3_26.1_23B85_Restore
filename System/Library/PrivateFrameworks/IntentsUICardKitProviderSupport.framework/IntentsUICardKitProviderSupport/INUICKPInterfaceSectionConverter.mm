@interface INUICKPInterfaceSectionConverter
+ (id)_interactionMatchingCardSection:(id)section inCard:(id)card;
+ (id)generateInterfaceSectionsFromCard:(id)card;
+ (unint64_t)_intrinsicInteractiveBehaviorForCardSection:(id)section;
@end

@implementation INUICKPInterfaceSectionConverter

+ (id)generateInterfaceSectionsFromCard:(id)card
{
  v23 = *MEMORY[0x277D85DE8];
  cardCopy = card;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [cardCopy cardSections];
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
          v11 = [self _interactionMatchingCardSection:v10 inCard:cardCopy];
          v12 = [v10 parametersForInteraction:v11];
        }

        else
        {
          v12 = 0;
        }

        v13 = -[INUICKPCardInterfaceSection initWithInteractiveBehavior:parameters:]([INUICKPCardInterfaceSection alloc], "initWithInteractiveBehavior:parameters:", [self _intrinsicInteractiveBehaviorForCardSection:v10], v12);
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

+ (id)_interactionMatchingCardSection:(id)section inCard:(id)card
{
  interactions = [card interactions];
  anyObject = [interactions anyObject];

  return anyObject;
}

+ (unint64_t)_intrinsicInteractiveBehaviorForCardSection:(id)section
{
  v28 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  inuickp_interactiveBehaviorPrecedenceOrder = [objc_opt_class() inuickp_interactiveBehaviorPrecedenceOrder];
  v21 = [inuickp_interactiveBehaviorPrecedenceOrder count];
  inuickp_intrinsicInteractiveBehavior = [sectionCopy inuickp_intrinsicInteractiveBehavior];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:inuickp_intrinsicInteractiveBehavior];
  v22 = inuickp_interactiveBehaviorPrecedenceOrder;
  v7 = [inuickp_interactiveBehaviorPrecedenceOrder indexOfObject:v6];

  if (objc_opt_respondsToSelector())
  {
    v20 = sectionCopy;
    actionCommands = [sectionCopy actionCommands];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = [actionCommands countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(actionCommands);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            inuickp_intrinsicInteractiveBehavior2 = [v14 inuickp_intrinsicInteractiveBehavior];
            v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:inuickp_intrinsicInteractiveBehavior2];
            v17 = v21 - [v22 indexOfObject:v16];

            if (v17 > v11)
            {
              v11 = v17;
              inuickp_intrinsicInteractiveBehavior = inuickp_intrinsicInteractiveBehavior2;
            }
          }
        }

        v10 = [actionCommands countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    sectionCopy = v20;
  }

  v18 = *MEMORY[0x277D85DE8];
  return inuickp_intrinsicInteractiveBehavior;
}

@end