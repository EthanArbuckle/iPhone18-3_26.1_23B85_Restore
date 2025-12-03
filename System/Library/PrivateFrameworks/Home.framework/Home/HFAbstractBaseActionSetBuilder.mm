@interface HFAbstractBaseActionSetBuilder
- (BOOL)_updateActionBuildersForLightColorAction:(id)action;
- (BOOL)isAffectedByEndEvents;
- (BOOL)requiresDeviceUnlock;
- (HFAbstractBaseActionSetBuilder)initWithExistingObject:(id)object inHome:(id)home;
- (HFMediaPlaybackActionBuilder)mediaAction;
- (NSArray)actions;
- (NSArray)matterActionBuilders;
- (NSArray)naturalLightingActions;
- (id)_removeSuccessfulChanges:(id)changes fromSetDiff:(id)diff;
- (id)commitItem;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createActionSetBuilder;
- (id)deleteActionSet;
- (id)existingActionBuilder:(id)builder inSet:(id)set;
- (id)lazilyUpdateActions;
- (void)addAction:(id)action;
- (void)removeAction:(id)action;
- (void)removeAllActions;
- (void)updateAction:(id)action;
- (void)updateActionsInBuilder:(id)builder;
@end

@implementation HFAbstractBaseActionSetBuilder

- (HFAbstractBaseActionSetBuilder)initWithExistingObject:(id)object inHome:(id)home
{
  homeCopy = home;
  v16.receiver = self;
  v16.super_class = HFAbstractBaseActionSetBuilder;
  v7 = [(HFItemBuilder *)&v16 initWithExistingObject:object inHome:homeCopy];
  v8 = v7;
  if (v7)
  {
    actionSet = [(HFAbstractBaseActionSetBuilder *)v7 actionSet];
    actions = [actionSet actions];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __64__HFAbstractBaseActionSetBuilder_initWithExistingObject_inHome___block_invoke;
    v14[3] = &unk_277DF6430;
    v15 = homeCopy;
    v11 = [actions na_map:v14];

    v12 = [[HFMutableSetDiff alloc] initWithFromSet:v11];
    [(HFAbstractBaseActionSetBuilder *)v8 setActionBuilders:v12];
  }

  return v8;
}

- (NSArray)actions
{
  actionBuilders = [(HFAbstractBaseActionSetBuilder *)self actionBuilders];
  toSet = [actionBuilders toSet];
  allObjects = [toSet allObjects];

  return allObjects;
}

- (void)addAction:(id)action
{
  actionCopy = action;
  actionBuilders = [(HFAbstractBaseActionSetBuilder *)self actionBuilders];
  toSet = [actionBuilders toSet];
  v7 = [(HFAbstractBaseActionSetBuilder *)self existingActionBuilder:actionCopy inSet:toSet];

  [v7 updateWithActionBuilder:actionCopy];
  objc_opt_class();
  v8 = v7;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  objc_opt_class();
  v18 = actionCopy;
  if (objc_opt_isKindOfClass())
  {
    v11 = v18;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  objc_opt_class();
  v13 = v8;
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v10 && v12)
  {
    actionBuilders2 = [(HFAbstractBaseActionSetBuilder *)self actionBuilders];
    [actionBuilders2 updateObject:v10];
LABEL_19:

    goto LABEL_20;
  }

  if (v13 && !v15)
  {
    actionBuilders3 = [(HFAbstractBaseActionSetBuilder *)self actionBuilders];
    [actionBuilders3 deleteObject:v13];
  }

  if ([(HFAbstractBaseActionSetBuilder *)self _updateActionBuildersForLightColorAction:v18]&& !v15)
  {
    actionBuilders2 = [(HFAbstractBaseActionSetBuilder *)self actionBuilders];
    [actionBuilders2 addObject:v18];
    goto LABEL_19;
  }

LABEL_20:
}

- (void)updateAction:(id)action
{
  actionCopy = action;
  [(HFAbstractBaseActionSetBuilder *)self _updateActionBuildersForLightColorAction:actionCopy];
  actionBuilders = [(HFAbstractBaseActionSetBuilder *)self actionBuilders];
  [actionBuilders updateObject:actionCopy];
}

- (void)removeAction:(id)action
{
  actionCopy = action;
  actionBuilders = [(HFAbstractBaseActionSetBuilder *)self actionBuilders];
  [actionBuilders deleteObject:actionCopy];
}

- (void)removeAllActions
{
  actionBuilders = [(HFAbstractBaseActionSetBuilder *)self actionBuilders];
  [actionBuilders deleteAllObjects];
}

- (BOOL)requiresDeviceUnlock
{
  actions = [(HFAbstractBaseActionSetBuilder *)self actions];
  v3 = [actions na_any:&__block_literal_global_184];

  return v3;
}

- (BOOL)isAffectedByEndEvents
{
  actions = [(HFAbstractBaseActionSetBuilder *)self actions];
  v3 = [actions na_any:&__block_literal_global_7_8];

  return v3;
}

- (HFMediaPlaybackActionBuilder)mediaAction
{
  actions = [(HFAbstractBaseActionSetBuilder *)self actions];
  v3 = [actions na_firstObjectPassingTest:&__block_literal_global_9_9];

  return v3;
}

uint64_t __45__HFAbstractBaseActionSetBuilder_mediaAction__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (NSArray)naturalLightingActions
{
  actions = [(HFAbstractBaseActionSetBuilder *)self actions];
  v3 = [actions na_map:&__block_literal_global_12_7];

  return v3;
}

void *__56__HFAbstractBaseActionSetBuilder_naturalLightingActions__block_invoke(uint64_t a1, void *a2)
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

  return v4;
}

- (NSArray)matterActionBuilders
{
  actions = [(HFAbstractBaseActionSetBuilder *)self actions];
  v3 = [actions na_map:&__block_literal_global_15_8];

  return v3;
}

void *__54__HFAbstractBaseActionSetBuilder_matterActionBuilders__block_invoke(uint64_t a1, void *a2)
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

  return v4;
}

- (id)deleteActionSet
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractBaseActionSetBuilder.m" lineNumber:150 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractBaseActionSetBuilder deleteActionSet]", objc_opt_class()}];

  return 0;
}

- (id)existingActionBuilder:(id)builder inSet:(id)set
{
  v18 = *MEMORY[0x277D85DE8];
  builderCopy = builder;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  setCopy = set;
  v7 = [setCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(setCopy);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 canUpdateWithActionBuilder:{builderCopy, v13}])
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [setCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)_updateActionBuildersForLightColorAction:(id)action
{
  v69 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  actionBuilders = [(HFAbstractBaseActionSetBuilder *)self actionBuilders];
  toSet = [actionBuilders toSet];
  v7 = [toSet copy];

  objc_opt_class();
  v8 = actionCopy;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

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

  if (!v10)
  {
    if (!v13)
    {
      goto LABEL_20;
    }

    v23 = *MEMORY[0x277CCF8D8];
    v67[0] = *MEMORY[0x277CCFA30];
    v67[1] = v23;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:2];
    characteristic = [v13 characteristic];
    characteristicType = [characteristic characteristicType];

    v26 = *MEMORY[0x277CCF7D8];
    if ([characteristicType isEqualToString:*MEMORY[0x277CCF7D8]])
    {
      v27 = v22;
    }

    else
    {
      if (![v22 containsObject:characteristicType])
      {
        v28 = 0;
        goto LABEL_25;
      }

      v66 = v26;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
    }

    v28 = v27;
LABEL_25:
    v29 = 0x277DEF000uLL;
    if ([v28 count])
    {
      v52 = v11;
      v53 = v28;
      v48 = characteristicType;
      v49 = v22;
      v50 = v7;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v30 = v7;
      v31 = [v30 countByEnumeratingWithState:&v55 objects:v65 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v56;
        v54 = 1;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v56 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v55 + 1) + 8 * i);
            if ([v35 hasSameTargetAsActionBuilder:v13])
            {
              v36 = *(v29 + 3592);
              objc_opt_class();
              v37 = v35;
              if (objc_opt_isKindOfClass())
              {
                v38 = v37;
              }

              else
              {
                v38 = 0;
              }

              v39 = v38;

              objc_opt_class();
              v40 = v37;
              if (objc_opt_isKindOfClass())
              {
                v41 = v40;
              }

              else
              {
                v41 = 0;
              }

              v42 = v41;

              if ([v39 naturalLightEnabled])
              {
                v54 = 0;
              }

              else if (v42)
              {
                characteristic2 = [v42 characteristic];
                characteristicType2 = [characteristic2 characteristicType];

                if ([v53 containsObject:characteristicType2])
                {
                  actionBuilders2 = [(HFAbstractBaseActionSetBuilder *)self actionBuilders];
                  [actionBuilders2 deleteObject:v42];
                }

                v29 = 0x277DEF000;
              }
            }
          }

          v32 = [v30 countByEnumeratingWithState:&v55 objects:v65 count:16];
        }

        while (v32);
      }

      else
      {
        v54 = 1;
      }

      v10 = 0;
      v7 = v50;
      v11 = v52;
      v28 = v53;
      characteristicType = v48;
      v22 = v49;
      v21 = v54;
    }

    else
    {
      v21 = 1;
    }

    goto LABEL_52;
  }

  if ([v10 naturalLightEnabled])
  {
    v51 = v11;
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __75__HFAbstractBaseActionSetBuilder__updateActionBuildersForLightColorAction___block_invoke;
    v63[3] = &unk_277DF4998;
    v64 = v10;
    v14 = [v7 na_filter:v63];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v60;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v60 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v59 + 1) + 8 * j);
          actionBuilders3 = [(HFAbstractBaseActionSetBuilder *)self actionBuilders];
          [actionBuilders3 deleteObject:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v59 objects:v68 count:16];
      }

      while (v16);
    }

    v21 = 1;
    v22 = v64;
    v11 = v51;
LABEL_52:

    goto LABEL_53;
  }

LABEL_20:
  v21 = 1;
LABEL_53:

  v46 = *MEMORY[0x277D85DE8];
  return v21 & 1;
}

uint64_t __75__HFAbstractBaseActionSetBuilder__updateActionBuildersForLightColorAction___block_invoke(uint64_t a1, void *a2)
{
  v14[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 hasSameTargetAsActionBuilder:*(a1 + 32)])
  {
    v4 = *MEMORY[0x277CCF7D8];
    v14[0] = *MEMORY[0x277CCFA30];
    v14[1] = v4;
    v14[2] = *MEMORY[0x277CCF8D8];
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
    objc_opt_class();
    v6 = v3;
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = [v8 characteristic];
    v10 = [v9 characteristicType];

    v11 = [v5 containsObject:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)commitItem
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractBaseActionSetBuilder.m" lineNumber:287 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractBaseActionSetBuilder commitItem]", objc_opt_class()}];

  return 0;
}

- (id)createActionSetBuilder
{
  home = [(HFItemBuilder *)self home];
  areAutomationBuildersSupported = [home areAutomationBuildersSupported];

  if (areAutomationBuildersSupported)
  {
    home2 = [(HFItemBuilder *)self home];
    newActionSetBuilder = [home2 newActionSetBuilder];

    [(HFAbstractBaseActionSetBuilder *)self updateActionsInBuilder:newActionSetBuilder];
    v7 = [MEMORY[0x277D2C900] futureWithResult:newActionSetBuilder];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateActionsInBuilder:(id)builder
{
  builderCopy = builder;
  actionBuilders = [(HFAbstractBaseActionSetBuilder *)self actionBuilders];
  toSet = [actionBuilders toSet];
  v6 = [toSet na_map:&__block_literal_global_25_13];
  v7 = [v6 na_filter:&__block_literal_global_28_6];
  [builderCopy setActions:v7];
}

- (id)lazilyUpdateActions
{
  objc_opt_class();
  actionSet = [(HFAbstractBaseActionSetBuilder *)self actionSet];
  if (objc_opt_isKindOfClass())
  {
    v4 = actionSet;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    [(HFAbstractBaseActionSetBuilder *)self updateActionsInBuilder:v5];
    v6 = [MEMORY[0x277D2C900] futureWithResult:v5];
  }

  else
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__HFAbstractBaseActionSetBuilder_lazilyUpdateActions__block_invoke;
    aBlock[3] = &unk_277DFF490;
    aBlock[4] = self;
    v7 = _Block_copy(aBlock);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __53__HFAbstractBaseActionSetBuilder_lazilyUpdateActions__block_invoke_35;
    v16[3] = &unk_277DFF490;
    v16[4] = self;
    v8 = _Block_copy(v16);
    v9 = MEMORY[0x277D2C900];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __53__HFAbstractBaseActionSetBuilder_lazilyUpdateActions__block_invoke_39;
    v13[3] = &unk_277DFF4B8;
    v13[4] = self;
    v14 = v7;
    v15 = v8;
    v10 = v7;
    v11 = v8;
    v6 = [v9 lazyFutureWithBlock:v13];
  }

  return v6;
}

id __53__HFAbstractBaseActionSetBuilder_lazilyUpdateActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __53__HFAbstractBaseActionSetBuilder_lazilyUpdateActions__block_invoke_2;
  v20[3] = &unk_277DF4150;
  v20[4] = *(a1 + 32);
  v5 = v3;
  v21 = v5;
  v6 = [v4 futureWithErrorOnlyHandlerAdapterBlock:v20];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __53__HFAbstractBaseActionSetBuilder_lazilyUpdateActions__block_invoke_3;
  v17[3] = &unk_277DF7060;
  v7 = v5;
  v8 = *(a1 + 32);
  v18 = v7;
  v19 = v8;
  v9 = [v6 addSuccessBlock:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__HFAbstractBaseActionSetBuilder_lazilyUpdateActions__block_invoke_32;
  v14[3] = &unk_277DF2748;
  v10 = *(a1 + 32);
  v15 = v7;
  v16 = v10;
  v11 = v7;
  v12 = [v6 addFailureBlock:v14];

  return v6;
}

void __53__HFAbstractBaseActionSetBuilder_lazilyUpdateActions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 actionSet];
  v5 = [*(a1 + 40) action];
  [v6 addAction:v5 completionHandler:v4];
}

void __53__HFAbstractBaseActionSetBuilder_lazilyUpdateActions__block_invoke_3(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) action];
    v4 = [*(a1 + 40) actionSet];
    v5 = [v4 hf_prettyDescription];
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "Added action: %@ to action set:%@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __53__HFAbstractBaseActionSetBuilder_lazilyUpdateActions__block_invoke_32(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) action];
    v7 = [*(a1 + 40) actionSet];
    v8 = [v7 hf_prettyDescription];
    v9 = 138412802;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Failed to add action: %@ to action set: %@. Error: %@", &v9, 0x20u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

id __53__HFAbstractBaseActionSetBuilder_lazilyUpdateActions__block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __53__HFAbstractBaseActionSetBuilder_lazilyUpdateActions__block_invoke_2_36;
  v20[3] = &unk_277DF4150;
  v20[4] = *(a1 + 32);
  v5 = v3;
  v21 = v5;
  v6 = [v4 futureWithErrorOnlyHandlerAdapterBlock:v20];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __53__HFAbstractBaseActionSetBuilder_lazilyUpdateActions__block_invoke_3_37;
  v17[3] = &unk_277DF7060;
  v7 = v5;
  v8 = *(a1 + 32);
  v18 = v7;
  v19 = v8;
  v9 = [v6 addSuccessBlock:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__HFAbstractBaseActionSetBuilder_lazilyUpdateActions__block_invoke_38;
  v14[3] = &unk_277DF2748;
  v10 = *(a1 + 32);
  v15 = v7;
  v16 = v10;
  v11 = v7;
  v12 = [v6 addFailureBlock:v14];

  return v6;
}

void __53__HFAbstractBaseActionSetBuilder_lazilyUpdateActions__block_invoke_2_36(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 actionSet];
  v5 = [*(a1 + 40) action];
  [v6 removeAction:v5 completionHandler:v4];
}

void __53__HFAbstractBaseActionSetBuilder_lazilyUpdateActions__block_invoke_3_37(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) action];
    v4 = [*(a1 + 40) actionSet];
    v5 = [v4 hf_prettyDescription];
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "Removed action: %@ from action set:%@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __53__HFAbstractBaseActionSetBuilder_lazilyUpdateActions__block_invoke_38(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) action];
    v7 = [*(a1 + 40) actionSet];
    v8 = [v7 hf_prettyDescription];
    v9 = 138412802;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Failed to remove action: %@ from action set: %@. Error: %@", &v9, 0x20u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __53__HFAbstractBaseActionSetBuilder_lazilyUpdateActions__block_invoke_39(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [v4 actionBuilders];
  v6 = [v4 commitItemBuilderSetDiff:v5 addBlock:a1[5] deleteBlock:a1[6]];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__HFAbstractBaseActionSetBuilder_lazilyUpdateActions__block_invoke_2_40;
  v9[3] = &unk_277DF50B0;
  v9[4] = a1[4];
  v10 = v3;
  v7 = v3;
  v8 = [v6 addCompletionBlock:v9];
}

void __53__HFAbstractBaseActionSetBuilder_lazilyUpdateActions__block_invoke_2_40(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  if (!v5)
  {
    v14 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 32) actionBuilders];
      *buf = 138412290;
      v22 = v15;
      _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "Update actionBuilders: %@", buf, 0xCu);
    }

    v16 = [HFMutableSetDiff alloc];
    v8 = [*(a1 + 32) actionBuilders];
    v11 = [v8 toSet];
    v12 = [(HFMutableSetDiff *)v16 initWithFromSet:v11];
    [*(a1 + 32) setActionBuilders:v12];
    goto LABEL_9;
  }

  v7 = [v5 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"HFItemBuilderErrorUserInfoSuccessfulChangesKey"];

  v9 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v19 = [*(a1 + 32) actionBuilders];
    *buf = 138412802;
    v22 = v19;
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v5;
    _os_log_error_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_ERROR, "Failed to update actionBuilders: %@, successful changes: %@. Error: %@", buf, 0x20u);
  }

  if (v8)
  {
    v10 = *(a1 + 32);
    v11 = [v10 actionBuilders];
    v12 = [v10 _removeSuccessfulChanges:v8 fromSetDiff:v11];
    v13 = [(HFMutableSetDiff *)v12 mutableCopy];
    [*(a1 + 32) setActionBuilders:v13];

LABEL_9:
  }

  v17 = +[HFHomeKitDispatcher sharedDispatcher];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __53__HFAbstractBaseActionSetBuilder_lazilyUpdateActions__block_invoke_42;
  v20[3] = &unk_277DF2CB8;
  v20[4] = *(a1 + 32);
  [v17 dispatchHomeObserverMessage:v20 sender:0];

  [*(a1 + 40) finishWithResult:v6 error:v5];
  v18 = *MEMORY[0x277D85DE8];
}

void __53__HFAbstractBaseActionSetBuilder_lazilyUpdateActions__block_invoke_42(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    v4 = [*(a1 + 32) actionSet];
    [v5 home:v3 didUpdateActionsForActionSet:v4];
  }
}

- (id)_removeSuccessfulChanges:(id)changes fromSetDiff:(id)diff
{
  diffCopy = diff;
  changesCopy = changes;
  v7 = [HFMutableSetDiff alloc];
  toSet = [changesCopy toSet];
  v9 = [(HFMutableSetDiff *)v7 initWithFromSet:toSet];

  additions = [diffCopy additions];
  additions2 = [changesCopy additions];
  v12 = [additions na_setByRemovingObjectsFromSet:additions2];
  [(HFMutableSetDiff *)v9 addObjects:v12];

  updates = [diffCopy updates];
  updates2 = [changesCopy updates];
  v15 = [updates na_setByRemovingObjectsFromSet:updates2];
  [(HFMutableSetDiff *)v9 updateObjects:v15];

  deletions = [diffCopy deletions];

  deletions2 = [changesCopy deletions];

  v18 = [deletions na_setByRemovingObjectsFromSet:deletions2];
  [(HFMutableSetDiff *)v9 deleteObjects:v18];

  v19 = [(HFMutableSetDiff *)v9 copy];

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  actionSet = [(HFAbstractBaseActionSetBuilder *)self actionSet];
  home = [(HFItemBuilder *)self home];
  v8 = [v5 initWithExistingObject:actionSet inHome:home];

  actionBuilders = [(HFAbstractBaseActionSetBuilder *)self actionBuilders];
  v10 = [actionBuilders mutableCopyWithZone:zone];
  [v8 setActionBuilders:v10];

  return v8;
}

@end