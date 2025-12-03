@interface HUTriggerListItemManager
- (id)_buildItemProvidersForHome:(id)home;
- (id)_currentSectionIdentifiers;
- (id)_identifierForSection:(unint64_t)section;
- (id)_sectionIdentifierForItem:(id)item;
- (unint64_t)_numberOfSections;
@end

@implementation HUTriggerListItemManager

- (id)_buildItemProvidersForHome:(id)home
{
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB58];
  homeCopy = home;
  v6 = [v4 set];
  +[HUTriggerUtilities preloadShortcuts];
  v7 = [HUTriggerListSubheadlineItem alloc];
  home = [(HFItemManager *)self home];
  v9 = [(HUTriggerListSubheadlineItem *)v7 initWithRemoteAccessInfo:home];
  [(HUTriggerListItemManager *)self setSubheadlineItem:v9];

  subheadlineItem = [(HUTriggerListItemManager *)self subheadlineItem];
  [v6 addObject:subheadlineItem];

  v11 = [HUAddTriggerItem alloc];
  home2 = [(HFItemManager *)self home];
  v13 = [(HUAddTriggerItem *)v11 initWithHome:home2 mode:0];
  [(HUTriggerListItemManager *)self setAddTriggerItem:v13];

  addTriggerItem = [(HUTriggerListItemManager *)self addTriggerItem];
  [v6 addObject:addTriggerItem];

  v15 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v6];
  v16 = [[HUTriggerItemProvider alloc] initWithHome:homeCopy];

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
  _currentSectionIdentifiers = [(HUTriggerListItemManager *)self _currentSectionIdentifiers];
  v3 = [_currentSectionIdentifiers count];

  return v3;
}

- (id)_identifierForSection:(unint64_t)section
{
  if (section < 4)
  {
    return off_277DC3218[section];
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUTriggerListItemManager.m" lineNumber:78 description:{@"Couldn't find an identifier for section: %lu", section}];

  return 0;
}

- (id)_sectionIdentifierForItem:(id)item
{
  itemCopy = item;
  subheadlineItem = [(HUTriggerListItemManager *)self subheadlineItem];
  v7 = [itemCopy isEqual:subheadlineItem];

  if (v7)
  {
    v8 = @"HOTriggerListSectionIdentifierSubheadline";
  }

  else
  {
    addTriggerItem = [(HUTriggerListItemManager *)self addTriggerItem];
    v10 = [itemCopy isEqual:addTriggerItem];

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
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"HUTriggerListItemManager.m" lineNumber:90 description:{@"Couldn't find a section for item: %@", itemCopy}];

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