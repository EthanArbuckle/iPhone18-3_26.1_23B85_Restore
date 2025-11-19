@interface HUHomePodAlarmItemModuleController
- (BOOL)_shouldAllowCellSelection;
- (HUHomePodAlarmItemModuleController)initWithModule:(id)a3;
- (HUHomePodAlarmItemModuleControllerDelegate)delegate;
- (unint64_t)didSelectItem:(id)a3;
- (void)_significantTimeChange:(id)a3;
- (void)setAlarmEnabled:(BOOL)a3 forCell:(id)a4;
- (void)setupCell:(id)a3 forItem:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
@end

@implementation HUHomePodAlarmItemModuleController

- (HUHomePodAlarmItemModuleController)initWithModule:(id)a3
{
  v8.receiver = self;
  v8.super_class = HUHomePodAlarmItemModuleController;
  v3 = [(HUItemModuleController *)&v8 initWithModule:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    cellToItemMap = v3->_cellToItemMap;
    v3->_cellToItemMap = v4;

    v3->_allowsCellSelection = [(HUHomePodAlarmItemModuleController *)v3 _shouldAllowCellSelection];
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v3 selector:sel__significantTimeChange_ name:*MEMORY[0x277D766F0] object:0];
  }

  return v3;
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = HUHomePodAlarmItemModuleController;
  [(HUItemModuleController *)&v10 setupCell:v6 forItem:a4];
  objc_opt_class();
  v7 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9 && ![(HUHomePodAlarmItemModuleController *)self allowsCellSelection])
  {
    [v9 setAccessoryType:0];
    [v9 setDisabled:1];
  }
}

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v11 = a3;
  v9 = [(HUHomePodAlarmItemModuleController *)self cellToItemMap];
  [v9 setObject:v8 forKey:v11];

  v10 = [v8 alarm];

  [v11 refreshUI:v10 roomName:0 animated:v5];
  [v11 setDelegate:self];
}

- (unint64_t)didSelectItem:(id)a3
{
  v4 = a3;
  v5 = [(HUHomePodAlarmItemModuleController *)self delegate];

  if (v5)
  {
    v6 = [(HUHomePodAlarmItemModuleController *)self delegate];
    [v6 alarmItemModuleController:self didSelectAlarmItem:v4];
  }

  return 0;
}

- (void)setAlarmEnabled:(BOOL)a3 forCell:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(HUHomePodAlarmItemModuleController *)self cellToItemMap];
  v13 = [v7 objectForKey:v6];

  v8 = [v13 alarm];
  v9 = [v8 mutableCopy];
  [v9 setEnabled:v4];
  v10 = [(HUItemModuleController *)self module];
  v11 = [v10 mobileTimerAdapterForAlarmItem:v13];
  v12 = [v11 updateAlarm:v9];
}

- (BOOL)_shouldAllowCellSelection
{
  v2 = [MEMORY[0x277D14670] sharedInstance];
  if ([v2 hostProcess] == 100)
  {
  }

  else
  {
    v3 = [MEMORY[0x277D14670] sharedInstance];
    v4 = [v3 hostProcess];

    if (v4 != 3)
    {
      return 1;
    }
  }

  v5 = MEMORY[0x277D14CE8];

  return [v5 isDeviceUnlocked];
}

- (void)_significantTimeChange:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [(HUHomePodAlarmItemModuleController *)self cellToItemMap];
  v5 = [v4 keyEnumerator];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = [(HUHomePodAlarmItemModuleController *)self cellToItemMap];
        v13 = [v12 objectForKey:v11];

        if (v13)
        {
          v14 = [v13 alarm];
          [v11 refreshUI:v14 roomName:0 animated:0];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (HUHomePodAlarmItemModuleControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end