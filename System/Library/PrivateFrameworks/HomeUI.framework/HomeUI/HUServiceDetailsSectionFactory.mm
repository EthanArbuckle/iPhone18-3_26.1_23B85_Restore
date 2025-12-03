@interface HUServiceDetailsSectionFactory
- (id)_serviceDetailsItemComparatorForSectionIdentifier:(id)identifier;
- (id)buildServiceDetailsItemSectionForSourceItem:(id)item sectionIdentifier:(id)identifier items:(id)items;
@end

@implementation HUServiceDetailsSectionFactory

- (id)buildServiceDetailsItemSectionForSourceItem:(id)item sectionIdentifier:(id)identifier items:(id)items
{
  itemCopy = item;
  identifierCopy = identifier;
  itemsCopy = items;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v11 = itemCopy;
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    accessory = [v13 accessory];
    hf_isVisibleAsBridge = [accessory hf_isVisibleAsBridge];
  }

  else
  {
    hf_isVisibleAsBridge = 0;
  }

  v16 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:identifierCopy];
  if (![identifierCopy isEqualToString:@"HUServiceDetailsGroupSectionIdentifier"])
  {
    if ([identifierCopy isEqualToString:@"HUServiceDetailsIdentifyHomePodSectionIdentifier"])
    {
      v23 = [itemsCopy na_firstObjectPassingTest:&__block_literal_global_71_0];
      v24 = v23;
      if (v23)
      {
        latestResults = [v23 latestResults];
        v22 = [latestResults objectForKeyedSubscript:@"HUServiceDetailsIdentifyHomePodFooterResultKey"];
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      if ([identifierCopy isEqualToString:@"HUServiceDetailsLinkedApplicationSectionIdentifier"])
      {
        v20 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsManufacturerTitle", @"HUServiceDetailsManufacturerTitle", 1);
        v22 = 0;
        goto LABEL_24;
      }

      if (([identifierCopy isEqualToString:@"HUServiceDetailsRemoveSectionIdentifier"] & hf_isVisibleAsBridge) == 1)
      {
        v22 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsRemoveBridgeFooter", @"HUServiceDetailsRemoveBridgeFooter", 1);
      }

      else
      {
        v22 = 0;
      }
    }

    v20 = 0;
    goto LABEL_24;
  }

  v17 = [itemsCopy na_firstObjectPassingTest:&__block_literal_global_151];
  v18 = v17;
  if (v17)
  {
    latestResults2 = [v17 latestResults];
    v20 = [latestResults2 objectForKeyedSubscript:@"HUServiceDetailsAddGroupSectionHeaderResultKey"];

    latestResults3 = [v18 latestResults];
    v22 = [latestResults3 objectForKeyedSubscript:@"HUServiceDetailsAddGroupSectionFooterResultKey"];
  }

  else
  {
    v22 = 0;
    v20 = 0;
  }

  v26 = [itemsCopy na_firstObjectPassingTest:&__block_literal_global_68];
  v27 = v26;
  if (v26)
  {
    [v26 latestResults];
    v51 = identifierCopy;
    v28 = v20;
    v29 = v16;
    v30 = itemsCopy;
    selfCopy = self;
    v33 = v32 = itemCopy;
    v34 = [v33 objectForKeyedSubscript:@"HUServiceDetailsSeparateTileSectionFooterResultKey"];

    itemCopy = v32;
    self = selfCopy;
    itemsCopy = v30;
    v16 = v29;
    v20 = v28;
    identifierCopy = v51;
    v22 = v34;
  }

LABEL_24:
  if ([identifierCopy isEqualToString:@"HUServiceDetailsPrimaryInfoSectionIdentifier"])
  {
    v35 = itemCopy;
    v36 = [v35 conformsToProtocol:&unk_28251AC90] ? v35 : 0;
    v37 = v36;

    accessoryRepresentableObject = [v37 accessoryRepresentableObject];

    v39 = [accessoryRepresentableObject conformsToProtocol:&unk_2825BD960] ? accessoryRepresentableObject : 0;
    v40 = v39;

    v41 = [v40 hf_shouldHideForContextType:2];
    v42 = [v40 hf_shouldHideForContextType:3];

    if (!v41 || (v42 & 1) == 0)
    {
      if ((v41 | v42))
      {
        v43 = @"HUServiceDetailsFavoritesFooterTitle";
      }

      else
      {
        v43 = @"HUServiceDetailsShowInHomeDashboardAndFavoritesFooterTitle";
      }

      if (v41)
      {
        v44 = @"HUServiceDetailsShowInHomeDashboardFooterTitle";
      }

      else
      {
        v44 = v43;
      }

      v45 = _HULocalizedStringWithDefaultValue(v44, v44, 1);

      v22 = v45;
    }
  }

  if (v20)
  {
    [v16 setHeaderTitle:v20];
  }

  if (v22)
  {
    [v16 setFooterTitle:v22];
  }

  v46 = [(HUServiceDetailsSectionFactory *)self _serviceDetailsItemComparatorForSectionIdentifier:identifierCopy];
  allObjects = [itemsCopy allObjects];
  v48 = allObjects;
  if (v46)
  {
    v49 = [allObjects mutableCopy];

    [v49 sortUsingComparator:v46];
    v48 = v49;
  }

  [v16 setItems:v48];

  return v16;
}

uint64_t __102__HUServiceDetailsSectionFactory_buildServiceDetailsItemSectionForSourceItem_sectionIdentifier_items___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __102__HUServiceDetailsSectionFactory_buildServiceDetailsItemSectionForSourceItem_sectionIdentifier_items___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __102__HUServiceDetailsSectionFactory_buildServiceDetailsItemSectionForSourceItem_sectionIdentifier_items___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_serviceDetailsItemComparatorForSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([identifierCopy isEqualToString:@"HUServiceDetailsFirmwareUpdateSectionPromptIdentifier"] & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"HUServiceDetailsFirmwareUpdateAppStoreSectionIdentifier"))
  {
    accessoryInfoServiceDetailComparator = +[HUFirmwareUpdateItemProvider itemComparator];
  }

  else
  {
    if (![identifierCopy isEqualToString:@"HUServiceDetailsAccessoryInfoSectionIdentifier"])
    {
      customComparator = [(HUServiceDetailsSectionFactory *)self customComparator];
      v9 = customComparator;
      if (customComparator)
      {
        v6 = _Block_copy(customComparator);
      }

      else
      {
        defaultItemComparator = [MEMORY[0x277D14778] defaultItemComparator];
        v6 = _Block_copy(defaultItemComparator);
      }

      goto LABEL_5;
    }

    accessoryInfoServiceDetailComparator = [MEMORY[0x277D142D0] accessoryInfoServiceDetailComparator];
  }

  v6 = accessoryInfoServiceDetailComparator;
LABEL_5:

  return v6;
}

@end