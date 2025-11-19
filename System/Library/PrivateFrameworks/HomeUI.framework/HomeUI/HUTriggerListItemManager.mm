@interface HUTriggerListItemManager
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_currentSectionIdentifiers;
- (id)_identifierForSection:(unint64_t)a3;
- (id)_sectionIdentifierForItem:(id)a3;
- (unint64_t)_numberOfSections;
@end

@implementation HUTriggerListItemManager

- (id)_buildItemProvidersForHome:(id)a3
{
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB58];
  v5 = a3;
  v6 = [v4 set];
  +[HUTriggerUtilities preloadShortcuts];
  v7 = [HUTriggerListSubheadlineItem alloc];
  v8 = [(HFItemManager *)self home];
  v9 = [(HUTriggerListSubheadlineItem *)v7 initWithRemoteAccessInfo:v8];
  [(HUTriggerListItemManager *)self setSubheadlineItem:v9];

  v10 = [(HUTriggerListItemManager *)self subheadlineItem];
  [v6 addObject:v10];

  v11 = [HUAddTriggerItem alloc];
  v12 = [(HFItemManager *)self home];
  v13 = [(HUAddTriggerItem *)v11 initWithHome:v12 mode:0];
  [(HUTriggerListItemManager *)self setAddTriggerItem:v13];

  v14 = [(HUTriggerListItemManager *)self addTriggerItem];
  [v6 addObject:v14];

  v15 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v6];
  v16 = [[HUTriggerItemProvider alloc] initWithHome:v5];

  [(HUTriggerItemProvider *)v16 setUsesRichIconDescriptors:1];
  [(HUTriggerItemProvider *)v16 setFilter:&__block_literal_global_247];
  v19[0] = v15;
  v19[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];

  return v17;
}

uint64_t __55__HUTriggerListItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 hf_shouldDisplayTrigger];
  return v6;
}

- (unint64_t)_numberOfSections
{
  v2 = [(HUTriggerListItemManager *)self _currentSectionIdentifiers];
  v3 = [v2 count];

  return v3;
}

- (id)_identifierForSection:(unint64_t)a3
{
  if (a3 < 4)
  {
    return off_277DC3218[a3];
  }

  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"HUTriggerListItemManager.m" lineNumber:78 description:{@"Couldn't find an identifier for section: %lu", a3}];

  return 0;
}

- (id)_sectionIdentifierForItem:(id)a3
{
  v5 = a3;
  v6 = [(HUTriggerListItemManager *)self subheadlineItem];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = @"HOTriggerListSectionIdentifierSubheadline";
  }

  else
  {
    v9 = [(HUTriggerListItemManager *)self addTriggerItem];
    v10 = [v5 isEqual:v9];

    if (v10)
    {
      v8 = @"HOTriggerListSectionIdentifierAddTrigger";
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = @"HOTriggerListSectionIdentifierTriggers";
      }

      else
      {
        v11 = [MEMORY[0x277CCA890] currentHandler];
        [v11 handleFailureInMethod:a2 object:self file:@"HUTriggerListItemManager.m" lineNumber:90 description:{@"Couldn't find a section for item: %@", v5}];

        v8 = 0;
      }
    }
  }

  return v8;
}

- (id)_currentSectionIdentifiers
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5[0] = @"HOTriggerListSectionIdentifierHeadline";
  v5[1] = @"HOTriggerListSectionIdentifierSubheadline";
  v5[2] = @"HOTriggerListSectionIdentifierTriggers";
  v5[3] = @"HOTriggerListSectionIdentifierAddTrigger";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  [v2 addObjectsFromArray:v3];

  return v2;
}

@end