@interface HFReorderableHomeKitItemList
+ (id)_dataForHomeKitItem:(id)item;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (HFReorderableHomeKitItemList)initWithApplicationDataContainer:(id)container category:(id)category;
- (NSString)_applicationDataKey;
- (id)_actionSetTypeComparator;
- (id)_homeKitItemDataComparator;
- (id)_reorderableObjectDateAddedComparator;
- (id)_reorderableObjectTitleComparator;
- (id)_sortedHomeKitIdentifierComparator;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)sortedHomeKitItemComparator;
- (id)sortedHomeKitObjectComparator;
- (unint64_t)hash;
@end

@implementation HFReorderableHomeKitItemList

- (HFReorderableHomeKitItemList)initWithApplicationDataContainer:(id)container category:(id)category
{
  v16.receiver = self;
  v16.super_class = HFReorderableHomeKitItemList;
  v4 = [(HFReorderableItemListAbstractBase *)&v16 initWithApplicationDataContainer:container category:category];
  v5 = v4;
  if (v4)
  {
    applicationDataContainer = [(HFReorderableItemListAbstractBase *)v4 applicationDataContainer];
    applicationData = [applicationDataContainer applicationData];
    _applicationDataKey = [(HFReorderableHomeKitItemList *)v5 _applicationDataKey];
    v9 = [applicationData objectForKeyedSubscript:_applicationDataKey];
    v10 = v9;
    if (v9)
    {
      array = v9;
    }

    else
    {
      array = [MEMORY[0x277CBEA60] array];
    }

    v12 = array;

    v13 = [v12 na_map:&__block_literal_global_223];
    sortedHomeKitObjectIdentifiers = v5->_sortedHomeKitObjectIdentifiers;
    v5->_sortedHomeKitObjectIdentifiers = v13;
  }

  return v5;
}

id __74__HFReorderableHomeKitItemList_initWithApplicationDataContainer_category___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HFReorderableHomeKitItemList alloc];
  applicationDataContainer = [(HFReorderableItemListAbstractBase *)self applicationDataContainer];
  category = [(HFReorderableItemListAbstractBase *)self category];
  v7 = [(HFReorderableHomeKitItemList *)v4 initWithApplicationDataContainer:applicationDataContainer category:category];

  sortedHomeKitObjectIdentifiers = [(HFReorderableHomeKitItemList *)self sortedHomeKitObjectIdentifiers];
  [(HFReorderableHomeKitItemList *)v7 setSortedHomeKitObjectIdentifiers:sortedHomeKitObjectIdentifiers];

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HFMutableReorderableHomeKitItemList alloc];
  applicationDataContainer = [(HFReorderableItemListAbstractBase *)self applicationDataContainer];
  category = [(HFReorderableItemListAbstractBase *)self category];
  v7 = [(HFReorderableHomeKitItemList *)v4 initWithApplicationDataContainer:applicationDataContainer category:category];

  sortedHomeKitObjectIdentifiers = [(HFReorderableHomeKitItemList *)self sortedHomeKitObjectIdentifiers];
  [(HFReorderableHomeKitItemList *)v7 setSortedHomeKitObjectIdentifiers:sortedHomeKitObjectIdentifiers];

  return v7;
}

- (unint64_t)hash
{
  _applicationDataKey = [(HFReorderableHomeKitItemList *)self _applicationDataKey];
  v3 = [_applicationDataKey hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      applicationDataContainer = [(HFReorderableItemListAbstractBase *)v5 applicationDataContainer];
      applicationDataContainer2 = [(HFReorderableItemListAbstractBase *)self applicationDataContainer];
      if (applicationDataContainer == applicationDataContainer2)
      {
        v10 = 1;
      }

      else
      {
        applicationDataContainer3 = [(HFReorderableItemListAbstractBase *)v5 applicationDataContainer];
        applicationDataContainer4 = [(HFReorderableItemListAbstractBase *)self applicationDataContainer];
        v10 = [applicationDataContainer3 isEqual:applicationDataContainer4];
      }

      category = [(HFReorderableItemListAbstractBase *)v5 category];
      category2 = [(HFReorderableItemListAbstractBase *)self category];
      if (category != category2)
      {
        category3 = [(HFReorderableItemListAbstractBase *)v5 category];
        category4 = [(HFReorderableItemListAbstractBase *)self category];
        v10 &= [category3 isEqual:category4];
      }

      sortedHomeKitObjectIdentifiers = [(HFReorderableHomeKitItemList *)v5 sortedHomeKitObjectIdentifiers];
      sortedHomeKitObjectIdentifiers2 = [(HFReorderableHomeKitItemList *)self sortedHomeKitObjectIdentifiers];
      if (sortedHomeKitObjectIdentifiers != sortedHomeKitObjectIdentifiers2)
      {
        sortedHomeKitObjectIdentifiers3 = [(HFReorderableHomeKitItemList *)v5 sortedHomeKitObjectIdentifiers];
        sortedHomeKitObjectIdentifiers4 = [(HFReorderableHomeKitItemList *)self sortedHomeKitObjectIdentifiers];
        v10 &= [sortedHomeKitObjectIdentifiers3 isEqual:sortedHomeKitObjectIdentifiers4];
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

+ (id)_dataForHomeKitItem:(id)item
{
  itemCopy = item;
  latestResults = [itemCopy latestResults];
  v5 = [latestResults objectForKeyedSubscript:@"title"];

  latestResults2 = [itemCopy latestResults];
  v7 = [latestResults2 objectForKeyedSubscript:@"dateAdded"];

  v8 = itemCopy;
  objc_opt_class();
  v9 = v8;
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v9 = v8;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    sourceItem = [v11 sourceItem];
    v13 = [sourceItem conformsToProtocol:&unk_28252A8F8];

    if (v13)
    {
      sourceItem2 = [v11 sourceItem];

      v9 = sourceItem2;
    }
  }

  if ([v9 conformsToProtocol:&unk_28254C800])
  {
    v15 = v9;
    if ([v15 conformsToProtocol:&unk_28254C800])
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    primaryHomeKitObject = [v17 primaryHomeKitObject];
  }

  else
  {
    primaryHomeKitObject = [v9 homeKitObject];
  }

  uniqueIdentifier = [primaryHomeKitObject uniqueIdentifier];

  v20 = [HFOrderedHomeKitItemData dataWithUniqueIdentifier:uniqueIdentifier title:v5 dateAdded:v7];
  homeKitObject = [v9 homeKitObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    homeKitObject2 = [v9 homeKitObject];
    actionSetType = [homeKitObject2 actionSetType];
    [v20 setActionSetType:actionSetType];
  }

  return v20;
}

- (id)sortedHomeKitItemComparator
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__HFReorderableHomeKitItemList_sortedHomeKitItemComparator__block_invoke;
  aBlock[3] = &unk_277E01818;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

uint64_t __59__HFReorderableHomeKitItemList_sortedHomeKitItemComparator__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [HFReorderableHomeKitItemList _dataForHomeKitItem:a2];
  v7 = [HFReorderableHomeKitItemList _dataForHomeKitItem:v5];

  v8 = [*(a1 + 32) _homeKitItemDataComparator];
  v9 = (v8)[2](v8, v6, v7);

  return v9;
}

- (id)sortedHomeKitObjectComparator
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__HFReorderableHomeKitItemList_sortedHomeKitObjectComparator__block_invoke;
  aBlock[3] = &unk_277E01840;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

uint64_t __61__HFReorderableHomeKitItemList_sortedHomeKitObjectComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 conformsToProtocol:&unk_282562908];
  v8 = [v6 conformsToProtocol:&unk_282562908];
  v9 = v8;
  if (v7 && (v8 & 1) != 0)
  {
    v10 = __61__HFReorderableHomeKitItemList_sortedHomeKitObjectComparator__block_invoke_2(v5);
    v11 = [v5 hf_displayName];
    v12 = [v5 hf_dateAdded];
    v13 = [HFOrderedHomeKitItemData dataWithUniqueIdentifier:v10 title:v11 dateAdded:v12];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v5 actionSetType];
      [v13 setActionSetType:v14];
    }

    v15 = __61__HFReorderableHomeKitItemList_sortedHomeKitObjectComparator__block_invoke_2(v6);

    v16 = [v6 hf_displayName];
    v17 = [v6 hf_dateAdded];
    v18 = [HFOrderedHomeKitItemData dataWithUniqueIdentifier:v15 title:v16 dateAdded:v17];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v6 actionSetType];
      [v18 setActionSetType:v19];
    }

    v20 = [*(a1 + 32) _homeKitItemDataComparator];
    v21 = (v20)[2](v20, v13, v18);
  }

  else
  {
    NSLog(&cfstr_AttemptingToSo.isa, v5, v6);
    if (v7)
    {
      v21 = -1;
    }

    else
    {
      v21 = v9 & 1;
    }
  }

  return v21;
}

id __61__HFReorderableHomeKitItemList_sortedHomeKitObjectComparator__block_invoke_2(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v2 = v1;
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;

    v5 = [v4 hf_primaryService];
    if (v5)
    {
      v6 = [v4 hf_primaryService];
      v7 = [v6 uniqueIdentifier];
    }

    else
    {
      v7 = [v4 uniqueIdentifier];
    }
  }

  else
  {
    v7 = [v1 uniqueIdentifier];
  }

  return v7;
}

- (id)_homeKitItemDataComparator
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__HFReorderableHomeKitItemList__homeKitItemDataComparator__block_invoke;
  v5[3] = &unk_277E01868;
  v5[4] = self;
  v2 = v5;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __HFComparatorForNullableObjects_block_invoke;
  v6[3] = &unk_277E01988;
  v7 = v2;
  v3 = [v6 copy];

  return v3;
}

uint64_t __58__HFReorderableHomeKitItemList__homeKitItemDataComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _sortedHomeKitIdentifierComparator];
  v8 = [v5 uniqueIdentifier];
  v9 = [v6 uniqueIdentifier];
  v10 = (v7)[2](v7, v8, v9);

  if (!v10)
  {
    v11 = [*(a1 + 32) _actionSetTypeComparator];
    v12 = [v5 actionSetType];
    v13 = [v6 actionSetType];
    v10 = (v11)[2](v11, v12, v13);

    if (!v10)
    {
      v14 = [*(a1 + 32) _reorderableObjectDateAddedComparator];
      v15 = [v5 dateAdded];
      v16 = [v6 dateAdded];
      v10 = (v14)[2](v14, v15, v16);

      if (!v10)
      {
        v17 = [*(a1 + 32) _reorderableObjectTitleComparator];
        v18 = [v5 title];
        v19 = [v6 title];
        v10 = (v17)[2](v17, v18, v19);

        if (!v10)
        {
          v20 = [v5 uniqueIdentifier];
          v21 = [v20 UUIDString];
          v22 = [v6 uniqueIdentifier];
          v23 = [v22 UUIDString];
          v10 = [v21 compare:v23];
        }
      }
    }
  }

  return v10;
}

- (BOOL)isEmpty
{
  sortedHomeKitObjectIdentifiers = [(HFReorderableHomeKitItemList *)self sortedHomeKitObjectIdentifiers];
  v3 = [sortedHomeKitObjectIdentifiers count] == 0;

  return v3;
}

- (NSString)_applicationDataKey
{
  v2 = MEMORY[0x277CCACA8];
  category = [(HFReorderableItemListAbstractBase *)self category];
  v4 = [v2 stringWithFormat:@"%@_%@", @"HFSortedIdentifierStrings", category];

  return v4;
}

- (id)_sortedHomeKitIdentifierComparator
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__HFReorderableHomeKitItemList__sortedHomeKitIdentifierComparator__block_invoke;
  aBlock[3] = &unk_277E01890;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v3 = _Block_copy(v2);

  return v3;
}

uint64_t __66__HFReorderableHomeKitItemList__sortedHomeKitIdentifierComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 sortedHomeKitObjectIdentifiers];
  v9 = [v8 indexOfObject:v7];

  v10 = [*(a1 + 32) sortedHomeKitObjectIdentifiers];
  v11 = [v10 indexOfObject:v6];

  v12 = v9 == 0x7FFFFFFFFFFFFFFFLL;
  v13 = v11 == 0x7FFFFFFFFFFFFFFFLL;
  v14 = v11 == 0x7FFFFFFFFFFFFFFFLL && v9 == 0x7FFFFFFFFFFFFFFFLL;
  if (v9 == v11)
  {
    v14 = 1;
    v12 = 1;
  }

  v15 = !v14;
  if (v9 < v11)
  {
    v13 = 1;
  }

  v16 = !v13;
  v17 = -1;
  if (v16)
  {
    v17 = 1;
  }

  if (v12)
  {
    return v15;
  }

  else
  {
    return v17;
  }
}

- (id)_reorderableObjectTitleComparator
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __HFComparatorForNullableObjects_block_invoke;
  v4[3] = &unk_277E01988;
  v5 = &__block_literal_global_164_0;
  v2 = [v4 copy];

  return v2;
}

- (id)_reorderableObjectDateAddedComparator
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __HFComparatorForNullableObjects_block_invoke;
  v4[3] = &unk_277E01988;
  v5 = &__block_literal_global_167;
  v2 = [v4 copy];

  return v2;
}

- (id)_actionSetTypeComparator
{
  if (_MergedGlobals_320 != -1)
  {
    dispatch_once(&_MergedGlobals_320, &__block_literal_global_173_1);
  }

  v2 = qword_280E03CD8;
  v3 = [HFUtilities comparatorWithSortedObjects:v2];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __HFComparatorForNullableObjects_block_invoke;
  v7[3] = &unk_277E01988;
  v8 = v3;
  v4 = v3;
  v5 = [v7 copy];

  return v5;
}

void __56__HFReorderableHomeKitItemList__actionSetTypeComparator__block_invoke_2()
{
  v5[4] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCF188];
  v5[0] = *MEMORY[0x277CCF1B0];
  v5[1] = v0;
  v1 = *MEMORY[0x277CCF198];
  v5[2] = *MEMORY[0x277CCF180];
  v5[3] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  v3 = qword_280E03CD8;
  qword_280E03CD8 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

@end