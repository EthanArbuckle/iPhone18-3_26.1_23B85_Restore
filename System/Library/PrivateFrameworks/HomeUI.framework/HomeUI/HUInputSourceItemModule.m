@interface HUInputSourceItemModule
+ (id)_serviceItemComparatorForTelevisionProfile:(id)a3;
+ (id)supportedServiceTypes;
- (BOOL)canToggleConfigurationStateForItem:(id)a3;
- (id)buildSectionsWithDisplayedItems:(id)a3;
@end

@implementation HUInputSourceItemModule

+ (id)supportedServiceTypes
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = *MEMORY[0x277CD0E78];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)_serviceItemComparatorForTelevisionProfile:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__HUInputSourceItemModule__serviceItemComparatorForTelevisionProfile___block_invoke;
  v8[3] = &unk_277DBB948;
  v9 = v4;
  v10 = a1;
  v5 = v4;
  v6 = _Block_copy(v8);

  return v6;
}

uint64_t __70__HUInputSourceItemModule__serviceItemComparatorForTelevisionProfile___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) hf_mediaSourceComparator];
  v8 = [v5 service];
  v9 = [v8 mediaSourceIdentifier];
  v10 = [v6 service];
  v11 = [v10 mediaSourceIdentifier];
  v12 = (v7)[2](v7, v9, v11);

  if (!v12)
  {
    v15.receiver = *(a1 + 40);
    v15.super_class = &OBJC_METACLASS___HUInputSourceItemModule;
    v13 = objc_msgSendSuper2(&v15, sel_childItemComparator);
    v12 = (v13)[2](v13, v5, v6);
  }

  return v12;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUChildServiceEditorItemModule *)self childServiceItemProvider];
  v6 = [v5 items];

  if ([v6 intersectsSet:v4])
  {
    v7 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUInputSourceItemSectionIdentifier"];
    v8 = [(HUChildServiceEditorItemModule *)self accessory];
    v9 = [v8 televisionProfiles];
    v10 = [v9 firstObject];

    v11 = [objc_opt_class() _serviceItemComparatorForTelevisionProfile:v10];
    v12 = [v6 na_setByIntersectingWithSet:v4];
    v13 = [v12 allObjects];
    v14 = [v13 sortedArrayUsingComparator:v11];

    [v7 setItems:v14];
    v15 = _HULocalizedStringWithDefaultValue(@"HUTelevisionSettingsInputHeaderTitle", @"HUTelevisionSettingsInputHeaderTitle", 1);
    [v7 setHeaderTitle:v15];

    v18[0] = v7;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  return v16;
}

- (BOOL)canToggleConfigurationStateForItem:(id)a3
{
  v4 = a3;
  v5 = [v4 latestResults];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D13B20]];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v10.receiver = self;
    v10.super_class = HUInputSourceItemModule;
    v8 = [(HUChildServiceEditorItemModule *)&v10 canToggleConfigurationStateForItem:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end