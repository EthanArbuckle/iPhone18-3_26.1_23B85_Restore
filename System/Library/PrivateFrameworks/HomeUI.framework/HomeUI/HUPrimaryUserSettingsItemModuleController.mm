@interface HUPrimaryUserSettingsItemModuleController
- (Class)cellClassForItem:(id)a3;
- (id)updatePrimaryUserSelectionType:(unint64_t)a3 user:(id)a4;
- (unint64_t)didSelectItem:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
@end

@implementation HUPrimaryUserSettingsItemModuleController

- (Class)cellClassForItem:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(HUItemModuleController *)self module];
  if (!v6)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v6;
  if (!v7)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v9 handleFailureInFunction:v10 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v5, objc_opt_class()}];

LABEL_7:
    v8 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [v8 primaryUserSettingsHeaderItem];
    v12 = [v4 isEqual:v11];

    if ((v12 & 1) == 0)
    {
      objc_opt_class();
      objc_opt_isKindOfClass();
    }
  }

  v13 = objc_opt_class();

  return v13;
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = HUPrimaryUserSettingsItemModuleController;
  [(HUItemModuleController *)&v18 setupCell:v6 forItem:v7];
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

  if (v10)
  {
    v11 = objc_opt_class();
    v12 = v6;
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

      v15 = [MEMORY[0x277CCA890] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v15 handleFailureInFunction:v16 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v11, objc_opt_class()}];
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

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v35.receiver = self;
  v35.super_class = HUPrimaryUserSettingsItemModuleController;
  [(HUItemModuleController *)&v35 updateCell:v8 forItem:v9 animated:v5];
  objc_opt_class();
  v10 = v9;
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
    v27 = v8;
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

      v29 = [MEMORY[0x277CCA890] currentHandler];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v29 handleFailureInFunction:v30 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v26, objc_opt_class()}];
    }

    v19 = 0;
LABEL_24:

    v25 = v15;
    goto LABEL_25;
  }

  v16 = objc_opt_class();
  v17 = v8;
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

    v20 = [MEMORY[0x277CCA890] currentHandler];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v20 handleFailureInFunction:v21 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v16, objc_opt_class()}];
  }

  v19 = 0;
LABEL_15:

  v22 = [v12 home];
  v23 = [v12 user];
  v24 = [v22 hf_handleForUser:v23];
  [v19 setUserHandle:v24];

  v25 = v13;
LABEL_25:
  v31 = [v25 latestResults];
  v32 = [v31 objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
  v33 = [v32 BOOLValue];

  if (v33)
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

- (unint64_t)didSelectItem:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v4;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Did select item: %@", &v15, 0xCu);
  }

  objc_opt_class();
  v6 = v4;
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
    v9 = [v8 user];
  }

  else
  {
    v9 = 0;
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

  v13 = [(HUPrimaryUserSettingsItemModuleController *)self updatePrimaryUserSelectionType:v12 == 0 user:v9];
  return 0;
}

- (id)updatePrimaryUserSelectionType:(unint64_t)a3 user:(id)a4
{
  v6 = a4;
  objc_opt_class();
  v7 = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 updatePrimaryUserSelectionType:a3 user:v6];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__HUPrimaryUserSettingsItemModuleController_updatePrimaryUserSelectionType_user___block_invoke;
  v14[3] = &unk_277DB7530;
  v15 = v6;
  v11 = v6;
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