@interface HUInputSourceItemModule
+ (id)_serviceItemComparatorForTelevisionProfile:(id)profile;
+ (id)supportedServiceTypes;
- (BOOL)canToggleConfigurationStateForItem:(id)item;
- (id)buildSectionsWithDisplayedItems:(id)items;
@end

@implementation HUInputSourceItemModule

+ (id)supportedServiceTypes
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = *MEMORY[0x277CD0E78];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)_serviceItemComparatorForTelevisionProfile:(id)profile
{
  profileCopy = profile;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__HUInputSourceItemModule__serviceItemComparatorForTelevisionProfile___block_invoke;
  v8[3] = &unk_277DBB948;
  v9 = profileCopy;
  selfCopy = self;
  v5 = profileCopy;
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

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v18[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  childServiceItemProvider = [(HUChildServiceEditorItemModule *)self childServiceItemProvider];
  items = [childServiceItemProvider items];

  if ([items intersectsSet:itemsCopy])
  {
    v7 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUInputSourceItemSectionIdentifier"];
    accessory = [(HUChildServiceEditorItemModule *)self accessory];
    televisionProfiles = [accessory televisionProfiles];
    firstObject = [televisionProfiles firstObject];

    v11 = [objc_opt_class() _serviceItemComparatorForTelevisionProfile:firstObject];
    v12 = [items na_setByIntersectingWithSet:itemsCopy];
    allObjects = [v12 allObjects];
    v14 = [allObjects sortedArrayUsingComparator:v11];

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

- (BOOL)canToggleConfigurationStateForItem:(id)item
{
  itemCopy = item;
  latestResults = [itemCopy latestResults];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13B20]];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    v10.receiver = self;
    v10.super_class = HUInputSourceItemModule;
    v8 = [(HUChildServiceEditorItemModule *)&v10 canToggleConfigurationStateForItem:itemCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end