@interface HUServiceDetailsItemModule
+ (id)serviceDetailsItemSectionComparatorForSortStrategy:(id)strategy;
- (HUServiceDetailsItemModule)initWithItemUpdater:(id)updater home:(id)home sourceItem:(id)item;
- (id)itemProviders;
@end

@implementation HUServiceDetailsItemModule

+ (id)serviceDetailsItemSectionComparatorForSortStrategy:(id)strategy
{
  if ([strategy isEqualToString:@"HUServiceDetailsItemModuleSortStrategyProgrammableSwitch"])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __81__HUServiceDetailsItemModule_serviceDetailsItemSectionComparatorForSortStrategy___block_invoke;
    v7[3] = &__block_descriptor_48_e41_q24__0__HFItemSection_8__HFItemSection_16l;
    v7[4] = a2;
    v7[5] = self;
    v5 = _Block_copy(v7);
  }

  else
  {
    v5 = &__block_literal_global_284;
  }

  return v5;
}

uint64_t __81__HUServiceDetailsItemModule_serviceDetailsItemSectionComparatorForSortStrategy___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"HUServiceDetailsItemModuleTitleForSectionSortingUserInfoKey"];

  v9 = [v6 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"HUServiceDetailsItemModuleTitleForSectionSortingUserInfoKey"];

  if (v8 || !v10)
  {
    if (!v8 || v10)
    {
      if (v8 | v10)
      {
        v12 = [v8 componentsSeparatedByString:@"-"];
        v13 = [v10 componentsSeparatedByString:@"-"];
        v14 = [v12 count];
        if (v14 != [v13 count])
        {
          v23 = [MEMORY[0x277CCA890] currentHandler];
          [v23 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"HUServiceDetailsItemModule.m" lineNumber:47 description:@"Programmable Switch Strategy expects identically padded section sorting keys."];
        }

        if (![v12 count])
        {
          goto LABEL_16;
        }

        v24 = v6;
        v25 = v5;
        v15 = 1;
        do
        {
          v16 = [v12 objectAtIndexedSubscript:v15 - 1];
          v17 = [v13 objectAtIndexedSubscript:v15 - 1];
          v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v16, "integerValue")}];
          v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v17, "integerValue")}];
          v11 = [v18 compare:v19];

          if (v15 >= [v12 count])
          {
            break;
          }

          ++v15;
        }

        while (!v11);
        v6 = v24;
        v5 = v25;
        if (!v11)
        {
LABEL_16:
          v20 = [v5 identifier];
          v21 = [v6 identifier];
          v11 = [v20 compare:v21];
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = -1;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

uint64_t __81__HUServiceDetailsItemModule_serviceDetailsItemSectionComparatorForSortStrategy___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"HUServiceDetailsItemModuleTitleForSectionSortingUserInfoKey"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v4 headerTitle];
  }

  v10 = v9;

  v11 = [v5 userInfo];
  v12 = [v11 objectForKeyedSubscript:@"HUServiceDetailsItemModuleTitleForSectionSortingUserInfoKey"];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [v5 headerTitle];
  }

  v15 = v14;

  v16 = [v10 localizedStandardCompare:v15];
  if (!v16)
  {
    v17 = [v4 identifier];
    v18 = [v5 identifier];
    v16 = [v17 compare:v18];
  }

  return v16;
}

- (HUServiceDetailsItemModule)initWithItemUpdater:(id)updater home:(id)home sourceItem:(id)item
{
  updaterCopy = updater;
  homeCopy = home;
  itemCopy = item;
  v12 = itemCopy;
  if (homeCopy)
  {
    if (itemCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUServiceDetailsItemModule.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"home"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HUServiceDetailsItemModule.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"sourceItem"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = HUServiceDetailsItemModule;
  v13 = [(HFItemModule *)&v18 initWithItemUpdater:updaterCopy];
  v14 = v13;
  if (v13)
  {
    [(HUServiceDetailsItemModule *)v13 setHome:homeCopy];
    [(HUServiceDetailsItemModule *)v14 setSourceItem:v12];
  }

  return v14;
}

- (id)itemProviders
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUServiceDetailsItemModule.m" lineNumber:95 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUServiceDetailsItemModule itemProviders]", objc_opt_class()}];

  return 0;
}

@end