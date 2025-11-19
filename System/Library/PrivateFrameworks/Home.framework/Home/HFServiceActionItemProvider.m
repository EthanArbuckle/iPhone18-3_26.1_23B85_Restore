@interface HFServiceActionItemProvider
- (BOOL)isMatterServiceActionItem:(id)a3 forAccessoryID:(id)a4;
- (HFActionSetValueSourceDelegate)actionSetValueSourceDelegate;
- (HFServiceActionItemProvider)init;
- (HFServiceActionItemProvider)initWithHome:(id)a3 actionSet:(id)a4;
- (HFServiceActionItemProvider)initWithHome:(id)a3 actionSetBuilder:(id)a4;
- (id)_actionItemForAccessory:(id)a3 addedActionsItems:(id)a4 home:(id)a5;
- (id)_actionItemForCharacteristic:(id)a3 addedActionItems:(id)a4 home:(id)a5;
- (id)_actionItemForMediaProfile:(id)a3 addedActionItems:(id)a4 home:(id)a5;
- (id)_addOrUpdateActionItemWithAction:(id)a3 actionBuilder:(id)a4 addedActionItems:(id)a5 home:(id)a6;
- (id)_addOrUpdateActionItemWithMediaAction:(id)a3 mediaActionBuilder:(id)a4 addedActionItems:(id)a5 home:(id)a6;
- (id)_addOrUpdateMatterActionItemForAction:(id)a3 actionBuilder:(id)a4 addedActionsItems:(id)a5 home:(id)a6;
- (id)_createActionItemForCharacteristic:(id)a3 home:(id)a4;
- (id)_createActionItemForMediaProfile:(id)a3 home:(id)a4;
- (id)_createMatterActionItemFor:(id)a3 home:(id)a4 actionSetBuilder:(id)a5;
- (id)_findServiceActionForIdentifier:(id)a3 addedActionItems:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)invalidationReasons;
- (id)reloadItems;
- (void)setActionSetValueSourceDelegate:(id)a3;
@end

@implementation HFServiceActionItemProvider

- (id)_createMatterActionItemFor:(id)a3 home:(id)a4 actionSetBuilder:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  MatterbC03for4home16actionSetBuilderSo0abC0CSgSo11HMAccessoryC_So6HMHomeCSo08HFActionkL8Protocol_So06HFItemL0CyyXlGXctF_0 = _sSo27HFServiceActionItemProviderC4HomeE013_createMatterbC03for4home16actionSetBuilderSo0abC0CSgSo11HMAccessoryC_So6HMHomeCSo08HFActionkL8Protocol_So06HFItemL0CyyXlGXctF_0(v8, v9, v10);

  return MatterbC03for4home16actionSetBuilderSo0abC0CSgSo11HMAccessoryC_So6HMHomeCSo08HFActionkL8Protocol_So06HFItemL0CyyXlGXctF_0;
}

- (BOOL)isMatterServiceActionItem:(id)a3 forAccessoryID:(id)a4
{
  v6 = sub_20DD63744();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DD63714();
  v11 = a3;
  v12 = self;
  LOBYTE(self) = _sSo27HFServiceActionItemProviderC4HomeE015isMatterServicebC0_14forAccessoryIDSbSo0abC0C_10Foundation4UUIDVtF_0(v11);

  (*(v7 + 8))(v10, v6);
  return self & 1;
}

- (HFServiceActionItemProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_actionSet_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFServiceActionItemProvider.m" lineNumber:39 description:{@"%s is unavailable; use %@ instead", "-[HFServiceActionItemProvider init]", v5}];

  return 0;
}

- (HFServiceActionItemProvider)initWithHome:(id)a3 actionSet:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HFServiceActionItemProvider;
  v9 = [(HFItemProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, a3);
    objc_storeStrong(&v10->_actionSet, a4);
    v11 = [[HFActionSetValueSource alloc] initWithActionSet:v8];
    valueSource = v10->_valueSource;
    v10->_valueSource = v11;
  }

  return v10;
}

- (HFServiceActionItemProvider)initWithHome:(id)a3 actionSetBuilder:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HFServiceActionItemProvider;
  v9 = [(HFItemProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, a3);
    objc_storeStrong(&v10->_actionSetBuilder, a4);
    v11 = [[HFActionSetValueSource alloc] initWithActionSetBuilder:v8];
    valueSource = v10->_valueSource;
    v10->_valueSource = v11;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(HFServiceActionItemProvider *)self actionSet];

  v5 = objc_alloc(objc_opt_class());
  v6 = [(HFServiceActionItemProvider *)self home];
  if (v4)
  {
    v7 = [(HFServiceActionItemProvider *)self actionSet];
    v8 = [v5 initWithHome:v6 actionSet:v7];
  }

  else
  {
    v7 = [(HFServiceActionItemProvider *)self actionSetBuilder];
    v8 = [v5 initWithHome:v6 actionSetBuilder:v7];
  }

  v9 = v8;

  return v9;
}

- (HFActionSetValueSourceDelegate)actionSetValueSourceDelegate
{
  v2 = [(HFServiceActionItemProvider *)self valueSource];
  v3 = [v2 delegate];

  return v3;
}

- (void)setActionSetValueSourceDelegate:(id)a3
{
  v4 = a3;
  v5 = [(HFServiceActionItemProvider *)self valueSource];
  [v5 setDelegate:v4];
}

- (id)reloadItems
{
  v97 = *MEMORY[0x277D85DE8];
  v3 = [HFMutableSetDiff alloc];
  v4 = [(HFServiceActionItemProvider *)self actionItems];
  v5 = [(HFMutableSetDiff *)v3 initWithFromSet:v4];

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
  v6 = [(HFServiceActionItemProvider *)self actionItems];
  v7 = [v6 countByEnumeratingWithState:&v87 objects:v96 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v87 + 1) + 8 * i);
        v12 = [MEMORY[0x277CBEB98] set];
        [v11 setActions:v12];

        v13 = [MEMORY[0x277CBEB98] set];
        [v11 setActionBuilders:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v87 objects:v96 count:16];
    }

    while (v8);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v14 = [(HFServiceActionItemProvider *)self actionSet];
  v15 = [v14 actions];

  v16 = [v15 countByEnumeratingWithState:&v83 objects:v95 count:16];
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
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v83 + 1) + 8 * v20);
        v22 = *(v19 + 3024);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = [(HFSetDiff *)v63 additions];
          v24 = [(HFServiceActionItemProvider *)self home];
          v25 = [(HFServiceActionItemProvider *)self _addOrUpdateActionItemWithMediaAction:v21 mediaActionBuilder:0 addedActionItems:v23 home:v24];

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
          v29 = [(HFSetDiff *)v63 additions];
          v30 = [(HFServiceActionItemProvider *)self home];
          if (isKindOfClass)
          {
            [(HFServiceActionItemProvider *)self _addOrUpdateMatterActionItemForAction:v21 actionBuilder:0 addedActionsItems:v29 home:v30];
          }

          else
          {
            [(HFServiceActionItemProvider *)self _addOrUpdateActionItemWithAction:v21 actionBuilder:0 addedActionItems:v29 home:v30];
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
      v17 = [v15 countByEnumeratingWithState:&v83 objects:v95 count:16];
    }

    while (v17);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v31 = [(HFServiceActionItemProvider *)self actionSetBuilder];
  v32 = [v31 actions];

  obj = v32;
  v33 = [v32 countByEnumeratingWithState:&v76 objects:v94 count:16];
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
          v38 = [(HFSetDiff *)v63 additions];
          v39 = [(HFServiceActionItemProvider *)self home];
          v40 = [(HFServiceActionItemProvider *)self _addOrUpdateActionItemWithMediaAction:0 mediaActionBuilder:v37 addedActionItems:v38 home:v39];

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
          v42 = [(HFSetDiff *)v63 additions];
          v43 = [(HFServiceActionItemProvider *)self home];
          if (v41)
          {
            [(HFServiceActionItemProvider *)self _addOrUpdateMatterActionItemForAction:0 actionBuilder:v37 addedActionsItems:v42 home:v43];
          }

          else
          {
            [(HFServiceActionItemProvider *)self _addOrUpdateActionItemWithAction:0 actionBuilder:v37 addedActionItems:v42 home:v43];
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
  v44 = [(HFServiceActionItemProvider *)self actionItems];
  v45 = [v44 countByEnumeratingWithState:&v69 objects:v93 count:16];
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
          objc_enumerationMutation(v44);
        }

        v49 = *(*(&v69 + 1) + 8 * k);
        v50 = [v49 actions];
        if ([v50 count])
        {
        }

        else
        {
          v51 = [v49 actionBuilders];
          v52 = [v51 count];

          if (!v52)
          {
            [(HFMutableSetDiff *)v63 deleteObject:v49];
          }
        }
      }

      v46 = [v44 countByEnumeratingWithState:&v69 objects:v93 count:16];
    }

    while (v46);
  }

  v53 = [(HFSetDiff *)v63 toSet];
  v54 = [v53 mutableCopy];
  [(HFServiceActionItemProvider *)self setActionItems:v54];

  v55 = [HFItemProviderReloadResults alloc];
  v56 = [(HFSetDiff *)v63 additions];
  v57 = [(HFSetDiff *)v63 deletions];
  v58 = [(HFSetDiff *)v63 updates];
  v59 = [(HFItemProviderReloadResults *)v55 initWithAddedItems:v56 removedItems:v57 existingItems:v58];

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
  v3 = [(HFItemProvider *)&v7 invalidationReasons];
  v4 = [(HFServiceActionItemProvider *)self actionSet];

  if (v4)
  {
    v5 = [v3 setByAddingObject:@"actionSet"];

    v3 = v5;
  }

  return v3;
}

- (id)_actionItemForCharacteristic:(id)a3 addedActionItems:(id)a4 home:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HFServiceActionItemProvider.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"home"}];
  }

  v12 = [v9 service];
  v13 = [v12 uniqueIdentifier];

  if (v13)
  {
    v14 = [(HFServiceActionItemProvider *)self _findServiceActionForIdentifier:v13 addedActionItems:v10];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_actionItemForMediaProfile:(id)a3 addedActionItems:(id)a4 home:(id)a5
{
  v7 = a4;
  v8 = [a3 accessories];
  v9 = [v8 anyObject];
  v10 = [v9 uniqueIdentifier];

  if (v10)
  {
    v11 = [(HFServiceActionItemProvider *)self _findServiceActionForIdentifier:v10 addedActionItems:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_findServiceActionForIdentifier:(id)a3 addedActionItems:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v41 = a3;
  v6 = a4;
  v7 = [(HFServiceActionItemProvider *)self actionItems];
  v39 = self;
  if (v7)
  {
    v8 = [(HFServiceActionItemProvider *)self actionItems];
    v9 = [v8 mutableCopy];
  }

  else
  {
    v9 = [MEMORY[0x277CBEB58] set];
  }

  if (v6)
  {
    [v9 unionSet:v6];
  }

  v38 = v6;
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
        v15 = [v14 containingItem];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v17 = [v14 containingItem];
          v18 = [v17 serviceGroup];
          v19 = [v18 services];
          v20 = [v19 valueForKey:@"uniqueIdentifier"];
          v21 = [v20 containsObject:v41];

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
    v28 = [v22 containingItem];
    objc_opt_class();
    v29 = objc_opt_isKindOfClass();

    if (v29)
    {
      break;
    }

    if ([(HFServiceActionItemProvider *)v39 isMatterServiceActionItem:v22 forAccessoryID:v41])
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

  v30 = [v22 containingItem];
  v31 = [v30 service];
  v32 = [v31 uniqueIdentifier];
  v33 = [v32 isEqual:v41];

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
  v43 = v41;
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

- (id)_createActionItemForCharacteristic:(id)a3 home:(id)a4
{
  v6 = a4;
  v7 = [a3 service];
  v8 = [v6 hf_serviceGroupsForService:v7];
  v9 = [v8 firstObject];

  if (v9)
  {
    v10 = [HFServiceGroupItem alloc];
    v11 = [(HFServiceActionItemProvider *)self valueSource];
    v12 = [(HFServiceGroupItem *)v10 initWithValueSource:v11 serviceGroup:v9];
  }

  else
  {
    if (!v7 || ![v7 hf_isVisible])
    {
      v13 = 0;
      goto LABEL_10;
    }

    v11 = [(HFServiceActionItemProvider *)self valueSource];
    v12 = [HFServiceItem serviceItemForService:v7 valueSource:v11];
  }

  v13 = v12;

  if (v13 && [v13 containsActions])
  {
    v14 = [[HFServiceActionItem alloc] initWithHome:v6 containingItem:v13];
    goto LABEL_11;
  }

LABEL_10:
  v14 = 0;
LABEL_11:

  return v14;
}

- (id)_createActionItemForMediaProfile:(id)a3 home:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [HFServiceActionItem alloc];
  v9 = [HFMediaAccessoryItem alloc];
  v10 = [(HFServiceActionItemProvider *)self valueSource];
  v11 = [(HFMediaAccessoryItem *)v9 initWithValueSource:v10 mediaProfileContainer:v7];

  v12 = [(HFServiceActionItem *)v8 initWithHome:v6 containingItem:v11];

  return v12;
}

- (id)_addOrUpdateActionItemWithAction:(id)a3 actionBuilder:(id)a4 addedActionItems:(id)a5 home:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v14)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"HFServiceActionItemProvider.m" lineNumber:283 description:{@"Invalid parameter not satisfying: %@", @"home"}];
  }

  if (!(v11 | v12))
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"HFServiceActionItemProvider.m" lineNumber:284 description:{@"Invalid parameter not satisfying: %@", @"action || actionBuilder"}];
    v16 = 0;
LABEL_16:

    goto LABEL_19;
  }

  if (v11 && v12)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"HFServiceActionItemProvider.m" lineNumber:285 description:{@"Invalid parameter not satisfying: %@", @"!action || !actionBuilder"}];

LABEL_7:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v11 characteristic];
      v16 = [(HFServiceActionItemProvider *)self _actionItemForCharacteristic:v15 addedActionItems:v13 home:v14];
      if (!v16)
      {
        v16 = [(HFServiceActionItemProvider *)self _createActionItemForCharacteristic:v15 home:v14];
      }

      [v16 addAction:v11];
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (v11)
  {
    goto LABEL_7;
  }

  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v12 characteristic];
      v16 = [(HFServiceActionItemProvider *)self _actionItemForCharacteristic:v15 addedActionItems:v13 home:v14];
      if (!v16)
      {
        v16 = [(HFServiceActionItemProvider *)self _createActionItemForCharacteristic:v15 home:v14];
      }

      [v16 addActionBuilder:v12];
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

- (id)_addOrUpdateActionItemWithMediaAction:(id)a3 mediaActionBuilder:(id)a4 addedActionItems:(id)a5 home:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v14)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"HFServiceActionItemProvider.m" lineNumber:319 description:{@"Invalid parameter not satisfying: %@", @"home"}];
  }

  if ((v11 != 0) == (v12 != 0))
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"HFServiceActionItemProvider.m" lineNumber:320 description:{@"Invalid parameter not satisfying: %@", @"(action != nil) ^ (actionBuilder != nil)"}];
  }

  v15 = [MEMORY[0x277CBEB98] set];
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }

    v16 = [v11 mediaProfiles];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __110__HFServiceActionItemProvider__addOrUpdateActionItemWithMediaAction_mediaActionBuilder_addedActionItems_home___block_invoke;
    v30[3] = &unk_277E00428;
    v30[4] = self;
    v17 = &v31;
    v31 = v13;
    v18 = &v32;
    v32 = v14;
    v19 = &v33;
    v33 = v11;
    v20 = v30;
    goto LABEL_11;
  }

  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v12 mediaProfiles];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __110__HFServiceActionItemProvider__addOrUpdateActionItemWithMediaAction_mediaActionBuilder_addedActionItems_home___block_invoke_2;
      v26[3] = &unk_277E00428;
      v26[4] = self;
      v17 = &v27;
      v27 = v13;
      v18 = &v28;
      v28 = v14;
      v19 = &v29;
      v29 = v12;
      v20 = v26;
LABEL_11:
      v21 = [v16 na_map:v20];

      v15 = v21;
    }
  }

LABEL_12:
  v22 = [v15 allObjects];

  return v22;
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

- (id)_actionItemForAccessory:(id)a3 addedActionsItems:(id)a4 home:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"HFServiceActionItemProvider.m" lineNumber:354 description:{@"Invalid parameter not satisfying: %@", @"home"}];
  }

  v12 = [v9 uniqueIdentifier];
  if (v12)
  {
    v13 = [(HFServiceActionItemProvider *)self _findServiceActionForIdentifier:v12 addedActionItems:v10];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_addOrUpdateMatterActionItemForAction:(id)a3 actionBuilder:(id)a4 addedActionsItems:(id)a5 home:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v10 commands];
      v15 = [v14 firstObject];
      v16 = [v15 accessory];

      v17 = [(HFServiceActionItemProvider *)self _actionItemForAccessory:v16 addedActionsItems:v12 home:v13];
      if (!v17)
      {
        v18 = [(HFServiceActionItemProvider *)self valueSource];
        v19 = [v18 actionSetBuilder];
        v17 = [(HFServiceActionItemProvider *)self _createMatterActionItemFor:v16 home:v13 actionSetBuilder:v19];
      }

      [v17 addAction:v10];
LABEL_11:

      goto LABEL_13;
    }
  }

  else if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v11 accessory];
      v17 = [(HFServiceActionItemProvider *)self _actionItemForAccessory:v16 addedActionsItems:v12 home:v13];
      if (!v17)
      {
        v20 = [(HFServiceActionItemProvider *)self valueSource];
        v21 = [v20 actionSetBuilder];
        v17 = [(HFServiceActionItemProvider *)self _createMatterActionItemFor:v16 home:v13 actionSetBuilder:v21];
      }

      [v17 addActionBuilder:v11];
      goto LABEL_11;
    }
  }

  v17 = 0;
LABEL_13:

  return v17;
}

@end