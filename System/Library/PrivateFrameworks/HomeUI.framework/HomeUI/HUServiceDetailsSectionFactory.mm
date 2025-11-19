@interface HUServiceDetailsSectionFactory
- (id)_serviceDetailsItemComparatorForSectionIdentifier:(id)a3;
- (id)buildServiceDetailsItemSectionForSourceItem:(id)a3 sectionIdentifier:(id)a4 items:(id)a5;
@end

@implementation HUServiceDetailsSectionFactory

- (id)buildServiceDetailsItemSectionForSourceItem:(id)a3 sectionIdentifier:(id)a4 items:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v11 = v8;
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v14 = [v13 accessory];
    v15 = [v14 hf_isVisibleAsBridge];
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:v9];
  if (![v9 isEqualToString:@"HUServiceDetailsGroupSectionIdentifier"])
  {
    if ([v9 isEqualToString:@"HUServiceDetailsIdentifyHomePodSectionIdentifier"])
    {
      v23 = [v10 na_firstObjectPassingTest:&__block_literal_global_71_0];
      v24 = v23;
      if (v23)
      {
        v25 = [v23 latestResults];
        v22 = [v25 objectForKeyedSubscript:@"HUServiceDetailsIdentifyHomePodFooterResultKey"];
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      if ([v9 isEqualToString:@"HUServiceDetailsLinkedApplicationSectionIdentifier"])
      {
        v20 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsManufacturerTitle", @"HUServiceDetailsManufacturerTitle", 1);
        v22 = 0;
        goto LABEL_24;
      }

      if (([v9 isEqualToString:@"HUServiceDetailsRemoveSectionIdentifier"] & v15) == 1)
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

  v17 = [v10 na_firstObjectPassingTest:&__block_literal_global_151];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 latestResults];
    v20 = [v19 objectForKeyedSubscript:@"HUServiceDetailsAddGroupSectionHeaderResultKey"];

    v21 = [v18 latestResults];
    v22 = [v21 objectForKeyedSubscript:@"HUServiceDetailsAddGroupSectionFooterResultKey"];
  }

  else
  {
    v22 = 0;
    v20 = 0;
  }

  v26 = [v10 na_firstObjectPassingTest:&__block_literal_global_68];
  v27 = v26;
  if (v26)
  {
    [v26 latestResults];
    v51 = v9;
    v28 = v20;
    v29 = v16;
    v30 = v10;
    v31 = self;
    v33 = v32 = v8;
    v34 = [v33 objectForKeyedSubscript:@"HUServiceDetailsSeparateTileSectionFooterResultKey"];

    v8 = v32;
    self = v31;
    v10 = v30;
    v16 = v29;
    v20 = v28;
    v9 = v51;
    v22 = v34;
  }

LABEL_24:
  if ([v9 isEqualToString:@"HUServiceDetailsPrimaryInfoSectionIdentifier"])
  {
    v35 = v8;
    v36 = [v35 conformsToProtocol:&unk_28251AC90] ? v35 : 0;
    v37 = v36;

    v38 = [v37 accessoryRepresentableObject];

    v39 = [v38 conformsToProtocol:&unk_2825BD960] ? v38 : 0;
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

  v46 = [(HUServiceDetailsSectionFactory *)self _serviceDetailsItemComparatorForSectionIdentifier:v9];
  v47 = [v10 allObjects];
  v48 = v47;
  if (v46)
  {
    v49 = [v47 mutableCopy];

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

- (id)_serviceDetailsItemComparatorForSectionIdentifier:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToString:@"HUServiceDetailsFirmwareUpdateSectionPromptIdentifier"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"HUServiceDetailsFirmwareUpdateAppStoreSectionIdentifier"))
  {
    v5 = +[HUFirmwareUpdateItemProvider itemComparator];
  }

  else
  {
    if (![v4 isEqualToString:@"HUServiceDetailsAccessoryInfoSectionIdentifier"])
    {
      v8 = [(HUServiceDetailsSectionFactory *)self customComparator];
      v9 = v8;
      if (v8)
      {
        v6 = _Block_copy(v8);
      }

      else
      {
        v10 = [MEMORY[0x277D14778] defaultItemComparator];
        v6 = _Block_copy(v10);
      }

      goto LABEL_5;
    }

    v5 = [MEMORY[0x277D142D0] accessoryInfoServiceDetailComparator];
  }

  v6 = v5;
LABEL_5:

  return v6;
}

@end