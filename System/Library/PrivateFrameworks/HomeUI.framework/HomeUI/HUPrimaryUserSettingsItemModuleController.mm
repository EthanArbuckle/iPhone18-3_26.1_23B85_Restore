@interface HUPrimaryUserSettingsItemModuleController
- (Class)cellClassForItem:(id)item;
- (id)updatePrimaryUserSelectionType:(unint64_t)type user:(id)user;
- (unint64_t)didSelectItem:(id)item;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUPrimaryUserSettingsItemModuleController

- (Class)cellClassForItem:(id)item
{
  itemCopy = item;
  v5 = objc_opt_class();
  module = [(HUItemModuleController *)self module];
  if (!module)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v7 = module;
  }

  else
  {
    v7 = 0;
  }

  v8 = module;
  if (!v7)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v10 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v5, objc_opt_class()}];

LABEL_7:
    v8 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    primaryUserSettingsHeaderItem = [v8 primaryUserSettingsHeaderItem];
    v12 = [itemCopy isEqual:primaryUserSettingsHeaderItem];

    if ((v12 & 1) == 0)
    {
      objc_opt_class();
      objc_opt_isKindOfClass();
    }
  }

  v13 = objc_opt_class();

  return v13;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  v18.receiver = self;
  v18.super_class = HUPrimaryUserSettingsItemModuleController;
  [(HUItemModuleController *)&v18 setupCell:cellCopy forItem:itemCopy];
  objc_opt_class();
  v8 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = objc_opt_class();
    v12 = cellCopy;
    if (v12)
    {
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = v12;
      if (v13)
      {
        goto LABEL_12;
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v16 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v11, objc_opt_class()}];
    }

    v14 = 0;
LABEL_12:

    v17 = objc_alloc_init(HUIconCellContentMetrics);
    [(HUIconCellContentMetrics *)v17 setContentInset:10.0, 0.0, 10.0, 0.0];
    [(HUIconCellContentMetrics *)v17 setIconSize:36.0, 32.0];
    [v14 setContentMetrics:v17];
    [v14 setIconDisplayStyle:1];
  }
}

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  v35.receiver = self;
  v35.super_class = HUPrimaryUserSettingsItemModuleController;
  [(HUItemModuleController *)&v35 updateCell:cellCopy forItem:itemCopy animated:animatedCopy];
  objc_opt_class();
  v10 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  objc_opt_class();
  v13 = v10;
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (!v12)
  {
    if (!v15)
    {
      goto LABEL_29;
    }

    v26 = objc_opt_class();
    v27 = cellCopy;
    if (v27)
    {
      if (objc_opt_isKindOfClass())
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      v19 = v27;
      if (v28)
      {
        goto LABEL_24;
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v30 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v26, objc_opt_class()}];
    }

    v19 = 0;
LABEL_24:

    v25 = v15;
    goto LABEL_25;
  }

  v16 = objc_opt_class();
  v17 = cellCopy;
  if (v17)
  {
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = v17;
    if (v18)
    {
      goto LABEL_15;
    }

    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler2 handleFailureInFunction:v21 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v16, objc_opt_class()}];
  }

  v19 = 0;
LABEL_15:

  home = [v12 home];
  user = [v12 user];
  v24 = [home hf_handleForUser:user];
  [v19 setUserHandle:v24];

  v25 = v13;
LABEL_25:
  latestResults = [v25 latestResults];
  v32 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
  bOOLValue = [v32 BOOLValue];

  if (bOOLValue)
  {
    v34 = 3;
  }

  else
  {
    v34 = 0;
  }

  [v19 setAccessoryType:v34];

LABEL_29:
}

- (unint64_t)didSelectItem:(id)item
{
  v17 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = itemCopy;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Did select item: %@", &v15, 0xCu);
  }

  objc_opt_class();
  v6 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    user = [v8 user];
  }

  else
  {
    user = 0;
  }

  objc_opt_class();
  v10 = v6;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [(HUPrimaryUserSettingsItemModuleController *)self updatePrimaryUserSelectionType:v12 == 0 user:user];
  return 0;
}

- (id)updatePrimaryUserSelectionType:(unint64_t)type user:(id)user
{
  userCopy = user;
  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v8 = module;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 updatePrimaryUserSelectionType:type user:userCopy];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__HUPrimaryUserSettingsItemModuleController_updatePrimaryUserSelectionType_user___block_invoke;
  v14[3] = &unk_277DB7530;
  v15 = userCopy;
  v11 = userCopy;
  v12 = [v10 addCompletionBlock:v14];

  return v10;
}

void __81__HUPrimaryUserSettingsItemModuleController_updatePrimaryUserSelectionType_user___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v4;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "Failed to update primary user to %@ with error %@", &v7, 0x16u);
    }
  }
}

@end