@interface HUHomePodAlarmItemModuleController
- (BOOL)_shouldAllowCellSelection;
- (HUHomePodAlarmItemModuleController)initWithModule:(id)module;
- (HUHomePodAlarmItemModuleControllerDelegate)delegate;
- (unint64_t)didSelectItem:(id)item;
- (void)_significantTimeChange:(id)change;
- (void)setAlarmEnabled:(BOOL)enabled forCell:(id)cell;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUHomePodAlarmItemModuleController

- (HUHomePodAlarmItemModuleController)initWithModule:(id)module
{
  v8.receiver = self;
  v8.super_class = HUHomePodAlarmItemModuleController;
  v3 = [(HUItemModuleController *)&v8 initWithModule:module];
  if (v3)
  {
    weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    cellToItemMap = v3->_cellToItemMap;
    v3->_cellToItemMap = weakToWeakObjectsMapTable;

    v3->_allowsCellSelection = [(HUHomePodAlarmItemModuleController *)v3 _shouldAllowCellSelection];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__significantTimeChange_ name:*MEMORY[0x277D766F0] object:0];
  }

  return v3;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  v10.receiver = self;
  v10.super_class = HUHomePodAlarmItemModuleController;
  [(HUItemModuleController *)&v10 setupCell:cellCopy forItem:item];
  objc_opt_class();
  v7 = cellCopy;
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

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  itemCopy = item;
  cellCopy = cell;
  cellToItemMap = [(HUHomePodAlarmItemModuleController *)self cellToItemMap];
  [cellToItemMap setObject:itemCopy forKey:cellCopy];

  alarm = [itemCopy alarm];

  [cellCopy refreshUI:alarm roomName:0 animated:animatedCopy];
  [cellCopy setDelegate:self];
}

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  delegate = [(HUHomePodAlarmItemModuleController *)self delegate];

  if (delegate)
  {
    delegate2 = [(HUHomePodAlarmItemModuleController *)self delegate];
    [delegate2 alarmItemModuleController:self didSelectAlarmItem:itemCopy];
  }

  return 0;
}

- (void)setAlarmEnabled:(BOOL)enabled forCell:(id)cell
{
  enabledCopy = enabled;
  cellCopy = cell;
  cellToItemMap = [(HUHomePodAlarmItemModuleController *)self cellToItemMap];
  v13 = [cellToItemMap objectForKey:cellCopy];

  alarm = [v13 alarm];
  v9 = [alarm mutableCopy];
  [v9 setEnabled:enabledCopy];
  module = [(HUItemModuleController *)self module];
  v11 = [module mobileTimerAdapterForAlarmItem:v13];
  v12 = [v11 updateAlarm:v9];
}

- (BOOL)_shouldAllowCellSelection
{
  mEMORY[0x277D14670] = [MEMORY[0x277D14670] sharedInstance];
  if ([mEMORY[0x277D14670] hostProcess] == 100)
  {
  }

  else
  {
    mEMORY[0x277D14670]2 = [MEMORY[0x277D14670] sharedInstance];
    hostProcess = [mEMORY[0x277D14670]2 hostProcess];

    if (hostProcess != 3)
    {
      return 1;
    }
  }

  v5 = MEMORY[0x277D14CE8];

  return [v5 isDeviceUnlocked];
}

- (void)_significantTimeChange:(id)change
{
  v20 = *MEMORY[0x277D85DE8];
  cellToItemMap = [(HUHomePodAlarmItemModuleController *)self cellToItemMap];
  keyEnumerator = [cellToItemMap keyEnumerator];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = keyEnumerator;
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
        cellToItemMap2 = [(HUHomePodAlarmItemModuleController *)self cellToItemMap];
        v13 = [cellToItemMap2 objectForKey:v11];

        if (v13)
        {
          alarm = [v13 alarm];
          [v11 refreshUI:alarm roomName:0 animated:0];
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