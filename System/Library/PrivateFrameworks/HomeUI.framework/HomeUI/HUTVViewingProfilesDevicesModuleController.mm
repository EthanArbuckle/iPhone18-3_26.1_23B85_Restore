@interface HUTVViewingProfilesDevicesModuleController
- (HUTVViewingProfilesDevicesModuleController)initWithModule:(id)module;
- (HUTVViewingProfilesDevicesModuleController)initWithModule:(id)module host:(id)host;
- (void)_toggleShowTVViewingProfileForItem:(id)item;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
@end

@implementation HUTVViewingProfilesDevicesModuleController

- (HUTVViewingProfilesDevicesModuleController)initWithModule:(id)module
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithModule_host_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUTVViewingProfilesDevicesModuleController.m" lineNumber:25 description:{@"%s is unavailable; use %@ instead", "-[HUTVViewingProfilesDevicesModuleController initWithModule:]", v6}];

  return 0;
}

- (HUTVViewingProfilesDevicesModuleController)initWithModule:(id)module host:(id)host
{
  moduleCopy = module;
  hostCopy = host;
  v8 = objc_opt_class();
  v9 = moduleCopy;
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

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v13 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v8, objc_opt_class()}];
  }

  v11 = 0;
LABEL_8:

  v17.receiver = self;
  v17.super_class = HUTVViewingProfilesDevicesModuleController;
  v14 = [(HUItemModuleController *)&v17 initWithModule:v9];
  v15 = v14;
  if (v14)
  {
    [(HUItemModuleController *)v14 setHost:hostCopy];
  }

  return v15;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  v8 = [module isTVViewingProfileDevice:itemCopy];

  if (v8)
  {
    objc_opt_class();
    v9 = cellCopy;
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

- (void)_toggleShowTVViewingProfileForItem:(id)item
{
  v32 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  objc_opt_class();
  objc_opt_class();
  v5 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  sourceItem = [v7 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v9 = sourceItem;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  accessories = [v10 accessories];
  if (accessories)
  {
    module = [(HUItemModuleController *)self module];
    viewingProfilesDevices = [module viewingProfilesDevices];
    v14 = [viewingProfilesDevices mutableCopy];
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
    v18 = accessories;
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
        allObjects = [v18 allObjects];
        [v17 removeObjectsInArray:allObjects];
LABEL_22:

        module2 = [(HUItemModuleController *)self module];
        [module2 setViewingProfilesDevices:v17];

        goto LABEL_23;
      }
    }

    else
    {
    }

    allObjects = [v18 allObjects];
    [v17 addObjectsFromArray:allObjects];
    goto LABEL_22;
  }

LABEL_23:
}

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  v16 = *MEMORY[0x277D85DE8];
  item = [cell item];
  module = [(HUItemModuleController *)self module];
  v8 = [module isTVViewingProfileDevice:item];

  if (v8)
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (onCopy)
      {
        v10 = @"On";
      }

      else
      {
        v10 = @"Off";
      }

      latestResults = [item latestResults];
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = latestResults;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Turning Use My TV Viewing Profile %@ for %@", &v12, 0x16u);
    }

    [(HUTVViewingProfilesDevicesModuleController *)self _toggleShowTVViewingProfileForItem:item];
  }
}

@end