@interface HFServiceActionItemProvider
- (BOOL)isMatterServiceActionItem:(id)item forAccessoryID:(id)d;
- (HFActionSetValueSourceDelegate)actionSetValueSourceDelegate;
- (HFServiceActionItemProvider)init;
- (HFServiceActionItemProvider)initWithHome:(id)home actionSet:(id)set;
- (HFServiceActionItemProvider)initWithHome:(id)home actionSetBuilder:(id)builder;
- (id)_actionItemForAccessory:(id)accessory addedActionsItems:(id)items home:(id)home;
- (id)_actionItemForCharacteristic:(id)characteristic addedActionItems:(id)items home:(id)home;
- (id)_actionItemForMediaProfile:(id)profile addedActionItems:(id)items home:(id)home;
- (id)_addOrUpdateActionItemWithAction:(id)action actionBuilder:(id)builder addedActionItems:(id)items home:(id)home;
- (id)_addOrUpdateActionItemWithMediaAction:(id)action mediaActionBuilder:(id)builder addedActionItems:(id)items home:(id)home;
- (id)_addOrUpdateMatterActionItemForAction:(id)action actionBuilder:(id)builder addedActionsItems:(id)items home:(id)home;
- (id)_createActionItemForCharacteristic:(id)characteristic home:(id)home;
- (id)_createActionItemForMediaProfile:(id)profile home:(id)home;
- (id)_createMatterActionItemFor:(id)for home:(id)home actionSetBuilder:(id)builder;
- (id)_findServiceActionForIdentifier:(id)identifier addedActionItems:(id)items;
- (id)copyWithZone:(_NSZone *)zone;
- (id)invalidationReasons;
- (id)reloadItems;
- (void)setActionSetValueSourceDelegate:(id)delegate;
@end

@implementation HFServiceActionItemProvider

- (id)_createMatterActionItemFor:(id)for home:(id)home actionSetBuilder:(id)builder
{
  forCopy = for;
  homeCopy = home;
  builderCopy = builder;
  selfCopy = self;
  MatterbC03for4home16actionSetBuilderSo0abC0CSgSo11HMAccessoryC_So6HMHomeCSo08HFActionkL8Protocol_So06HFItemL0CyyXlGXctF_0 = _sSo27HFServiceActionItemProviderC4HomeE013_createMatterbC03for4home16actionSetBuilderSo0abC0CSgSo11HMAccessoryC_So6HMHomeCSo08HFActionkL8Protocol_So06HFItemL0CyyXlGXctF_0(forCopy, homeCopy, builderCopy);

  return MatterbC03for4home16actionSetBuilderSo0abC0CSgSo11HMAccessoryC_So6HMHomeCSo08HFActionkL8Protocol_So06HFItemL0CyyXlGXctF_0;
}

- (BOOL)isMatterServiceActionItem:(id)item forAccessoryID:(id)d
{
  v6 = sub_20DD63744();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DD63714();
  itemCopy = item;
  selfCopy = self;
  LOBYTE(self) = _sSo27HFServiceActionItemProviderC4HomeE015isMatterServicebC0_14forAccessoryIDSbSo0abC0C_10Foundation4UUIDVtF_0(itemCopy);

  (*(v7 + 8))(v10, v6);
  return self & 1;
}

- (HFServiceActionItemProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_actionSet_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFServiceActionItemProvider.m" lineNumber:39 description:{@"%s is unavailable; use %@ instead", "-[HFServiceActionItemProvider init]", v5}];

  return 0;
}

- (HFServiceActionItemProvider)initWithHome:(id)home actionSet:(id)set
{
  homeCopy = home;
  setCopy = set;
  v14.receiver = self;
  v14.super_class = HFServiceActionItemProvider;
  v9 = [(HFItemProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, home);
    objc_storeStrong(&v10->_actionSet, set);
    v11 = [[HFActionSetValueSource alloc] initWithActionSet:setCopy];
    valueSource = v10->_valueSource;
    v10->_valueSource = v11;
  }

  return v10;
}

- (HFServiceActionItemProvider)initWithHome:(id)home actionSetBuilder:(id)builder
{
  homeCopy = home;
  builderCopy = builder;
  v14.receiver = self;
  v14.super_class = HFServiceActionItemProvider;
  v9 = [(HFItemProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, home);
    objc_storeStrong(&v10->_actionSetBuilder, builder);
    v11 = [[HFActionSetValueSource alloc] initWithActionSetBuilder:builderCopy];
    valueSource = v10->_valueSource;
    v10->_valueSource = v11;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  actionSet = [(HFServiceActionItemProvider *)self actionSet];

  v5 = objc_alloc(objc_opt_class());
  home = [(HFServiceActionItemProvider *)self home];
  if (actionSet)
  {
    actionSet2 = [(HFServiceActionItemProvider *)self actionSet];
    v8 = [v5 initWithHome:home actionSet:actionSet2];
  }

  else
  {
    actionSet2 = [(HFServiceActionItemProvider *)self actionSetBuilder];
    v8 = [v5 initWithHome:home actionSetBuilder:actionSet2];
  }

  v9 = v8;

  return v9;
}

- (HFActionSetValueSourceDelegate)actionSetValueSourceDelegate
{
  valueSource = [(HFServiceActionItemProvider *)self valueSource];
  delegate = [valueSource delegate];

  return delegate;
}

- (void)setActionSetValueSourceDelegate:(id)delegate
{
  delegateCopy = delegate;
  valueSource = [(HFServiceActionItemProvider *)self valueSource];
  [valueSource setDelegate:delegateCopy];
}

- (id)reloadItems
{
  v97 = *MEMORY[0x277D85DE8];
  v3 = [HFMutableSetDiff alloc];
  actionItems = [(HFServiceActionItemProvider *)self actionItems];
  v5 = [(HFMutableSetDiff *)v3 initWithFromSet:actionItems];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__HFServiceActionItemProvider_reloadItems__block_invoke;
  aBlock[3] = &unk_277E003B0;
  aBlock[4] = self;
  v63 = v5;
  v92 = v63;
  v68 = _Block_copy(aBlock);
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  actionItems2 = [(HFServiceActionItemProvider *)self actionItems];
  v7 = [actionItems2 countByEnumeratingWithState:&v87 objects:v96 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v88;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v88 != v9)
        {
          objc_enumerationMutation(actionItems2);
        }

        v11 = *(*(&v87 + 1) + 8 * i);
        v12 = [MEMORY[0x277CBEB98] set];
        [v11 setActions:v12];

        v13 = [MEMORY[0x277CBEB98] set];
        [v11 setActionBuilders:v13];
      }

      v8 = [actionItems2 countByEnumeratingWithState:&v87 objects:v96 count:16];
    }

    while (v8);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  actionSet = [(HFServiceActionItemProvider *)self actionSet];
  actions = [actionSet actions];

  v16 = [actions countByEnumeratingWithState:&v83 objects:v95 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v84;
    v64 = v81;
    v65 = v68 + 2;
    v19 = 0x277CD1000uLL;
    do
    {
      v20 = 0;
      v66 = v17;
      do
      {
        if (*v84 != v18)
        {
          objc_enumerationMutation(actions);
        }

        v21 = *(*(&v83 + 1) + 8 * v20);
        v22 = *(v19 + 3024);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          additions = [(HFSetDiff *)v63 additions];
          home = [(HFServiceActionItemProvider *)self home];
          v25 = [(HFServiceActionItemProvider *)self _addOrUpdateActionItemWithMediaAction:v21 mediaActionBuilder:0 addedActionItems:additions home:home];

          v80[0] = MEMORY[0x277D85DD0];
          v80[1] = 3221225472;
          v81[0] = __42__HFServiceActionItemProvider_reloadItems__block_invoke_2;
          v81[1] = &unk_277E003D8;
          v82 = v68;
          [v25 na_each:v80];
        }

        else
        {
          v26 = v18;
          v27 = v19;
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          additions2 = [(HFSetDiff *)v63 additions];
          home2 = [(HFServiceActionItemProvider *)self home];
          if (isKindOfClass)
          {
            [(HFServiceActionItemProvider *)self _addOrUpdateMatterActionItemForAction:v21 actionBuilder:0 addedActionsItems:additions2 home:home2];
          }

          else
          {
            [(HFServiceActionItemProvider *)self _addOrUpdateActionItemWithAction:v21 actionBuilder:0 addedActionItems:additions2 home:home2];
          }
          v25 = ;

          (v68[2])(v68, v25);
          v19 = v27;
          v18 = v26;
          v17 = v66;
        }

        ++v20;
      }

      while (v17 != v20);
      v17 = [actions countByEnumeratingWithState:&v83 objects:v95 count:16];
    }

    while (v17);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  actionSetBuilder = [(HFServiceActionItemProvider *)self actionSetBuilder];
  actions2 = [actionSetBuilder actions];

  obj = actions2;
  v33 = [actions2 countByEnumeratingWithState:&v76 objects:v94 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v77;
    v65 = v74;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v77 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v37 = *(*(&v76 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          additions3 = [(HFSetDiff *)v63 additions];
          home3 = [(HFServiceActionItemProvider *)self home];
          v40 = [(HFServiceActionItemProvider *)self _addOrUpdateActionItemWithMediaAction:0 mediaActionBuilder:v37 addedActionItems:additions3 home:home3];

          v73[0] = MEMORY[0x277D85DD0];
          v73[1] = 3221225472;
          v74[0] = __42__HFServiceActionItemProvider_reloadItems__block_invoke_3;
          v74[1] = &unk_277E003D8;
          v75 = v68;
          [v40 na_each:v73];
        }

        else
        {
          objc_opt_class();
          v41 = objc_opt_isKindOfClass();
          additions4 = [(HFSetDiff *)v63 additions];
          home4 = [(HFServiceActionItemProvider *)self home];
          if (v41)
          {
            [(HFServiceActionItemProvider *)self _addOrUpdateMatterActionItemForAction:0 actionBuilder:v37 addedActionsItems:additions4 home:home4];
          }

          else
          {
            [(HFServiceActionItemProvider *)self _addOrUpdateActionItemWithAction:0 actionBuilder:v37 addedActionItems:additions4 home:home4];
          }
          v40 = ;

          (v68[2])(v68, v40);
        }
      }

      v34 = [obj countByEnumeratingWithState:&v76 objects:v94 count:16];
    }

    while (v34);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  actionItems3 = [(HFServiceActionItemProvider *)self actionItems];
  v45 = [actionItems3 countByEnumeratingWithState:&v69 objects:v93 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v70;
    do
    {
      for (k = 0; k != v46; ++k)
      {
        if (*v70 != v47)
        {
          objc_enumerationMutation(actionItems3);
        }

        v49 = *(*(&v69 + 1) + 8 * k);
        actions3 = [v49 actions];
        if ([actions3 count])
        {
        }

        else
        {
          actionBuilders = [v49 actionBuilders];
          v52 = [actionBuilders count];

          if (!v52)
          {
            [(HFMutableSetDiff *)v63 deleteObject:v49];
          }
        }
      }

      v46 = [actionItems3 countByEnumeratingWithState:&v69 objects:v93 count:16];
    }

    while (v46);
  }

  toSet = [(HFSetDiff *)v63 toSet];
  v54 = [toSet mutableCopy];
  [(HFServiceActionItemProvider *)self setActionItems:v54];

  v55 = [HFItemProviderReloadResults alloc];
  additions5 = [(HFSetDiff *)v63 additions];
  deletions = [(HFSetDiff *)v63 deletions];
  updates = [(HFSetDiff *)v63 updates];
  v59 = [(HFItemProviderReloadResults *)v55 initWithAddedItems:additions5 removedItems:deletions existingItems:updates];

  v60 = [MEMORY[0x277D2C900] futureWithResult:v59];

  v61 = *MEMORY[0x277D85DE8];

  return v60;
}

void __42__HFServiceActionItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v11 = v3;
    v4 = [*(a1 + 32) filter];
    if (v4 && (v5 = v4, [*(a1 + 32) filter], v6 = objc_claimAutoreleasedReturnValue(), v7 = (v6)[2](v6, v11), v6, v5, (v7 & 1) == 0))
    {
      [*(a1 + 40) deleteObject:v11];
    }

    else
    {
      v8 = [*(a1 + 32) actionItems];
      v9 = [v8 containsObject:v11];

      v10 = *(a1 + 40);
      if (v9)
      {
        [v10 updateObject:v11];
      }

      else
      {
        [v10 addObject:v11];
      }
    }

    v3 = v11;
  }
}

- (id)invalidationReasons
{
  v7.receiver = self;
  v7.super_class = HFServiceActionItemProvider;
  invalidationReasons = [(HFItemProvider *)&v7 invalidationReasons];
  actionSet = [(HFServiceActionItemProvider *)self actionSet];

  if (actionSet)
  {
    v5 = [invalidationReasons setByAddingObject:@"actionSet"];

    invalidationReasons = v5;
  }

  return invalidationReasons;
}

- (id)_actionItemForCharacteristic:(id)characteristic addedActionItems:(id)items home:(id)home
{
  characteristicCopy = characteristic;
  itemsCopy = items;
  homeCopy = home;
  if (!homeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFServiceActionItemProvider.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"home"}];
  }

  service = [characteristicCopy service];
  uniqueIdentifier = [service uniqueIdentifier];

  if (uniqueIdentifier)
  {
    v14 = [(HFServiceActionItemProvider *)self _findServiceActionForIdentifier:uniqueIdentifier addedActionItems:itemsCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_actionItemForMediaProfile:(id)profile addedActionItems:(id)items home:(id)home
{
  itemsCopy = items;
  accessories = [profile accessories];
  anyObject = [accessories anyObject];
  uniqueIdentifier = [anyObject uniqueIdentifier];

  if (uniqueIdentifier)
  {
    v11 = [(HFServiceActionItemProvider *)self _findServiceActionForIdentifier:uniqueIdentifier addedActionItems:itemsCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_findServiceActionForIdentifier:(id)identifier addedActionItems:(id)items
{
  v54 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  itemsCopy = items;
  actionItems = [(HFServiceActionItemProvider *)self actionItems];
  selfCopy = self;
  if (actionItems)
  {
    actionItems2 = [(HFServiceActionItemProvider *)self actionItems];
    v9 = [actionItems2 mutableCopy];
  }

  else
  {
    v9 = [MEMORY[0x277CBEB58] set];
  }

  if (itemsCopy)
  {
    [v9 unionSet:itemsCopy];
  }

  v38 = itemsCopy;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v49;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v49 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v48 + 1) + 8 * i);
        containingItem = [v14 containingItem];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          containingItem2 = [v14 containingItem];
          serviceGroup = [containingItem2 serviceGroup];
          services = [serviceGroup services];
          v20 = [services valueForKey:@"uniqueIdentifier"];
          v21 = [v20 containsObject:identifierCopy];

          if (v21)
          {
            v22 = v14;

            if (v22)
            {
              goto LABEL_34;
            }

            goto LABEL_18;
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v23 = obj;
  v24 = [v23 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (!v24)
  {
LABEL_29:

    goto LABEL_33;
  }

  v25 = v24;
  v26 = *v45;
LABEL_20:
  v27 = 0;
  while (1)
  {
    if (*v45 != v26)
    {
      objc_enumerationMutation(v23);
    }

    v22 = *(*(&v44 + 1) + 8 * v27);
    containingItem3 = [v22 containingItem];
    objc_opt_class();
    v29 = objc_opt_isKindOfClass();

    if (v29)
    {
      break;
    }

    if ([(HFServiceActionItemProvider *)selfCopy isMatterServiceActionItem:v22 forAccessoryID:identifierCopy])
    {
      v34 = v22;
      goto LABEL_32;
    }

LABEL_27:
    if (v25 == ++v27)
    {
      v25 = [v23 countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (v25)
      {
        goto LABEL_20;
      }

      goto LABEL_29;
    }
  }

  containingItem4 = [v22 containingItem];
  service = [containingItem4 service];
  uniqueIdentifier = [service uniqueIdentifier];
  v33 = [uniqueIdentifier isEqual:identifierCopy];

  if (!v33)
  {

    goto LABEL_27;
  }

  v35 = v22;

LABEL_32:
  if (v22)
  {
    goto LABEL_34;
  }

LABEL_33:
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __80__HFServiceActionItemProvider__findServiceActionForIdentifier_addedActionItems___block_invoke;
  v42[3] = &unk_277E00400;
  v43 = identifierCopy;
  v22 = [v23 na_firstObjectPassingTest:v42];

LABEL_34:
  v36 = *MEMORY[0x277D85DE8];

  return v22;
}

uint64_t __80__HFServiceActionItemProvider__findServiceActionForIdentifier_addedActionItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [v3 containingItem];

  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 accessories];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __80__HFServiceActionItemProvider__findServiceActionForIdentifier_addedActionItems___block_invoke_2;
    v10[3] = &unk_277DF3888;
    v11 = *(a1 + 32);
    v8 = [v7 na_any:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __80__HFServiceActionItemProvider__findServiceActionForIdentifier_addedActionItems___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)_createActionItemForCharacteristic:(id)characteristic home:(id)home
{
  homeCopy = home;
  service = [characteristic service];
  v8 = [homeCopy hf_serviceGroupsForService:service];
  firstObject = [v8 firstObject];

  if (firstObject)
  {
    v10 = [HFServiceGroupItem alloc];
    valueSource = [(HFServiceActionItemProvider *)self valueSource];
    v12 = [(HFServiceGroupItem *)v10 initWithValueSource:valueSource serviceGroup:firstObject];
  }

  else
  {
    if (!service || ![service hf_isVisible])
    {
      v13 = 0;
      goto LABEL_10;
    }

    valueSource = [(HFServiceActionItemProvider *)self valueSource];
    v12 = [HFServiceItem serviceItemForService:service valueSource:valueSource];
  }

  v13 = v12;

  if (v13 && [v13 containsActions])
  {
    v14 = [[HFServiceActionItem alloc] initWithHome:homeCopy containingItem:v13];
    goto LABEL_11;
  }

LABEL_10:
  v14 = 0;
LABEL_11:

  return v14;
}

- (id)_createActionItemForMediaProfile:(id)profile home:(id)home
{
  homeCopy = home;
  profileCopy = profile;
  v8 = [HFServiceActionItem alloc];
  v9 = [HFMediaAccessoryItem alloc];
  valueSource = [(HFServiceActionItemProvider *)self valueSource];
  v11 = [(HFMediaAccessoryItem *)v9 initWithValueSource:valueSource mediaProfileContainer:profileCopy];

  v12 = [(HFServiceActionItem *)v8 initWithHome:homeCopy containingItem:v11];

  return v12;
}

- (id)_addOrUpdateActionItemWithAction:(id)action actionBuilder:(id)builder addedActionItems:(id)items home:(id)home
{
  actionCopy = action;
  builderCopy = builder;
  itemsCopy = items;
  homeCopy = home;
  if (!homeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFServiceActionItemProvider.m" lineNumber:283 description:{@"Invalid parameter not satisfying: %@", @"home"}];
  }

  if (!(actionCopy | builderCopy))
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFServiceActionItemProvider.m" lineNumber:284 description:{@"Invalid parameter not satisfying: %@", @"action || actionBuilder"}];
    v16 = 0;
LABEL_16:

    goto LABEL_19;
  }

  if (actionCopy && builderCopy)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"HFServiceActionItemProvider.m" lineNumber:285 description:{@"Invalid parameter not satisfying: %@", @"!action || !actionBuilder"}];

LABEL_7:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      currentHandler2 = [actionCopy characteristic];
      v16 = [(HFServiceActionItemProvider *)self _actionItemForCharacteristic:currentHandler2 addedActionItems:itemsCopy home:homeCopy];
      if (!v16)
      {
        v16 = [(HFServiceActionItemProvider *)self _createActionItemForCharacteristic:currentHandler2 home:homeCopy];
      }

      [v16 addAction:actionCopy];
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (actionCopy)
  {
    goto LABEL_7;
  }

  if (builderCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      currentHandler2 = [builderCopy characteristic];
      v16 = [(HFServiceActionItemProvider *)self _actionItemForCharacteristic:currentHandler2 addedActionItems:itemsCopy home:homeCopy];
      if (!v16)
      {
        v16 = [(HFServiceActionItemProvider *)self _createActionItemForCharacteristic:currentHandler2 home:homeCopy];
      }

      [v16 addActionBuilder:builderCopy];
      goto LABEL_16;
    }

LABEL_17:
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  v16 = 0;
LABEL_19:

  return v16;
}

- (id)_addOrUpdateActionItemWithMediaAction:(id)action mediaActionBuilder:(id)builder addedActionItems:(id)items home:(id)home
{
  actionCopy = action;
  builderCopy = builder;
  itemsCopy = items;
  homeCopy = home;
  if (!homeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFServiceActionItemProvider.m" lineNumber:319 description:{@"Invalid parameter not satisfying: %@", @"home"}];
  }

  if ((actionCopy != 0) == (builderCopy != 0))
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFServiceActionItemProvider.m" lineNumber:320 description:{@"Invalid parameter not satisfying: %@", @"(action != nil) ^ (actionBuilder != nil)"}];
  }

  v15 = [MEMORY[0x277CBEB98] set];
  if (actionCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }

    mediaProfiles = [actionCopy mediaProfiles];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __110__HFServiceActionItemProvider__addOrUpdateActionItemWithMediaAction_mediaActionBuilder_addedActionItems_home___block_invoke;
    v30[3] = &unk_277E00428;
    v30[4] = self;
    v17 = &v31;
    v31 = itemsCopy;
    v18 = &v32;
    v32 = homeCopy;
    v19 = &v33;
    v33 = actionCopy;
    v20 = v30;
    goto LABEL_11;
  }

  if (builderCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      mediaProfiles = [builderCopy mediaProfiles];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __110__HFServiceActionItemProvider__addOrUpdateActionItemWithMediaAction_mediaActionBuilder_addedActionItems_home___block_invoke_2;
      v26[3] = &unk_277E00428;
      v26[4] = self;
      v17 = &v27;
      v27 = itemsCopy;
      v18 = &v28;
      v28 = homeCopy;
      v19 = &v29;
      v29 = builderCopy;
      v20 = v26;
LABEL_11:
      v21 = [mediaProfiles na_map:v20];

      v15 = v21;
    }
  }

LABEL_12:
  allObjects = [v15 allObjects];

  return allObjects;
}

id __110__HFServiceActionItemProvider__addOrUpdateActionItemWithMediaAction_mediaActionBuilder_addedActionItems_home___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _actionItemForMediaProfile:v3 addedActionItems:*(a1 + 40) home:*(a1 + 48)];
  if (!v4)
  {
    v4 = [*(a1 + 32) _createActionItemForMediaProfile:v3 home:*(a1 + 48)];
  }

  [v4 addAction:*(a1 + 56)];

  return v4;
}

id __110__HFServiceActionItemProvider__addOrUpdateActionItemWithMediaAction_mediaActionBuilder_addedActionItems_home___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _actionItemForMediaProfile:v3 addedActionItems:*(a1 + 40) home:*(a1 + 48)];
  if (!v4)
  {
    v4 = [*(a1 + 32) _createActionItemForMediaProfile:v3 home:*(a1 + 48)];
  }

  [v4 addActionBuilder:*(a1 + 56)];

  return v4;
}

- (id)_actionItemForAccessory:(id)accessory addedActionsItems:(id)items home:(id)home
{
  accessoryCopy = accessory;
  itemsCopy = items;
  homeCopy = home;
  if (!homeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFServiceActionItemProvider.m" lineNumber:354 description:{@"Invalid parameter not satisfying: %@", @"home"}];
  }

  uniqueIdentifier = [accessoryCopy uniqueIdentifier];
  if (uniqueIdentifier)
  {
    v13 = [(HFServiceActionItemProvider *)self _findServiceActionForIdentifier:uniqueIdentifier addedActionItems:itemsCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_addOrUpdateMatterActionItemForAction:(id)action actionBuilder:(id)builder addedActionsItems:(id)items home:(id)home
{
  actionCopy = action;
  builderCopy = builder;
  itemsCopy = items;
  homeCopy = home;
  if (actionCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      commands = [actionCopy commands];
      firstObject = [commands firstObject];
      accessory = [firstObject accessory];

      v17 = [(HFServiceActionItemProvider *)self _actionItemForAccessory:accessory addedActionsItems:itemsCopy home:homeCopy];
      if (!v17)
      {
        valueSource = [(HFServiceActionItemProvider *)self valueSource];
        actionSetBuilder = [valueSource actionSetBuilder];
        v17 = [(HFServiceActionItemProvider *)self _createMatterActionItemFor:accessory home:homeCopy actionSetBuilder:actionSetBuilder];
      }

      [v17 addAction:actionCopy];
LABEL_11:

      goto LABEL_13;
    }
  }

  else if (builderCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      accessory = [builderCopy accessory];
      v17 = [(HFServiceActionItemProvider *)self _actionItemForAccessory:accessory addedActionsItems:itemsCopy home:homeCopy];
      if (!v17)
      {
        valueSource2 = [(HFServiceActionItemProvider *)self valueSource];
        actionSetBuilder2 = [valueSource2 actionSetBuilder];
        v17 = [(HFServiceActionItemProvider *)self _createMatterActionItemFor:accessory home:homeCopy actionSetBuilder:actionSetBuilder2];
      }

      [v17 addActionBuilder:builderCopy];
      goto LABEL_11;
    }
  }

  v17 = 0;
LABEL_13:

  return v17;
}

@end