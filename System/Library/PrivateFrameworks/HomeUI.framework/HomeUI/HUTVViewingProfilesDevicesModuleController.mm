@interface HUTVViewingProfilesDevicesModuleController
- (HUTVViewingProfilesDevicesModuleController)initWithModule:(id)a3;
- (HUTVViewingProfilesDevicesModuleController)initWithModule:(id)a3 host:(id)a4;
- (void)_toggleShowTVViewingProfileForItem:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4;
- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4;
@end

@implementation HUTVViewingProfilesDevicesModuleController

- (HUTVViewingProfilesDevicesModuleController)initWithModule:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithModule_host_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUTVViewingProfilesDevicesModuleController.m" lineNumber:25 description:{@"%s is unavailable; use %@ instead", "-[HUTVViewingProfilesDevicesModuleController initWithModule:]", v6}];

  return 0;
}

- (HUTVViewingProfilesDevicesModuleController)initWithModule:(id)a3 host:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = v6;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v9;
    if (v10)
    {
      goto LABEL_8;
    }

    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v12 handleFailureInFunction:v13 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v8, objc_opt_class()}];
  }

  v11 = 0;
LABEL_8:

  v17.receiver = self;
  v17.super_class = HUTVViewingProfilesDevicesModuleController;
  v14 = [(HUItemModuleController *)&v17 initWithModule:v9];
  v15 = v14;
  if (v14)
  {
    [(HUItemModuleController *)v14 setHost:v7];
  }

  return v15;
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(HUItemModuleController *)self module];
  v8 = [v7 isTVViewingProfileDevice:v6];

  if (v8)
  {
    objc_opt_class();
    v9 = v12;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    [v11 setDelegate:self];
  }
}

- (void)_toggleShowTVViewingProfileForItem:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v10 accessories];
  if (v11)
  {
    v12 = [(HUItemModuleController *)self module];
    v13 = [v12 viewingProfilesDevices];
    v14 = [v13 mutableCopy];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = objc_opt_new();
    }

    v17 = v16;

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v18 = v11;
    v19 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v28;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [v17 containsObject:{*(*(&v27 + 1) + 8 * i), v27}];
        }

        v24 = v23;
        v20 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v20);

      if (v24)
      {
        v25 = [v18 allObjects];
        [v17 removeObjectsInArray:v25];
LABEL_22:

        v26 = [(HUItemModuleController *)self module];
        [v26 setViewingProfilesDevices:v17];

        goto LABEL_23;
      }
    }

    else
    {
    }

    v25 = [v18 allObjects];
    [v17 addObjectsFromArray:v25];
    goto LABEL_22;
  }

LABEL_23:
}

- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v16 = *MEMORY[0x277D85DE8];
  v6 = [a3 item];
  v7 = [(HUItemModuleController *)self module];
  v8 = [v7 isTVViewingProfileDevice:v6];

  if (v8)
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (v4)
      {
        v10 = @"On";
      }

      else
      {
        v10 = @"Off";
      }

      v11 = [v6 latestResults];
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Turning Use My TV Viewing Profile %@ for %@", &v12, 0x16u);
    }

    [(HUTVViewingProfilesDevicesModuleController *)self _toggleShowTVViewingProfileForItem:v6];
  }
}

@end