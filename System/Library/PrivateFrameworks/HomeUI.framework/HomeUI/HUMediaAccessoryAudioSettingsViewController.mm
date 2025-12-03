@interface HUMediaAccessoryAudioSettingsViewController
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUMediaAccessoryAudioSettingsViewController)initWithMediaSystemBuilder:(id)builder mediaAccessoryItem:(id)item;
- (HUPresentationDelegate)presentationDelegate;
- (id)_homePodStereoSwapperCell;
- (id)item;
- (void)_updateSwapperCell:(id)cell;
- (void)didPressSwapButton:(id)button;
- (void)didTapSpeaker:(id)speaker;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
@end

@implementation HUMediaAccessoryAudioSettingsViewController

- (HUMediaAccessoryAudioSettingsViewController)initWithMediaSystemBuilder:(id)builder mediaAccessoryItem:(id)item
{
  builderCopy = builder;
  itemCopy = item;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUMediaAccessoryAudioSettingsViewController.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"mediaSystemBuilder"}];
  }

  v10 = [[HUMediaAccessoryAudioSettingsItemManager alloc] initWithMediaSystemBuilder:builderCopy sourceItem:itemCopy delegate:self];
  v16.receiver = self;
  v16.super_class = HUMediaAccessoryAudioSettingsViewController;
  v11 = [(HUItemTableViewController *)&v16 initWithItemManager:v10 tableViewStyle:1];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mediaSystemBuilder, builder);
    v13 = _HULocalizedStringWithDefaultValue(@"HUMediaAccessoryAudioSettingsViewControllerTitle", @"HUMediaAccessoryAudioSettingsViewControllerTitle", 1);
    [(HUMediaAccessoryAudioSettingsViewController *)v12 setTitle:v13];
  }

  return v12;
}

- (id)item
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  sourceItem = [itemManager sourceItem];

  return sourceItem;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  itemManager = [(HUItemTableViewController *)self itemManager];
  audioSettingsItem = [itemManager audioSettingsItem];

  if (audioSettingsItem == itemCopy)
  {
    v8 = objc_opt_class();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  itemManager = [(HUItemTableViewController *)self itemManager];
  audioSettingsItem = [itemManager audioSettingsItem];

  if (audioSettingsItem == itemCopy)
  {
    v10 = cellCopy;
    objc_opt_class();
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    sourceItem = [itemManager2 sourceItem];
    if (objc_opt_isKindOfClass())
    {
      v13 = sourceItem;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    [v10 setHomePodVariant:{objc_msgSend(v14, "homePodVariant")}];
    [v10 finishSetupWithDelegate:self selectionStyle:0 homePodVariant:{objc_msgSend(v14, "homePodVariant")}];
  }
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  v14.receiver = self;
  v14.super_class = HUMediaAccessoryAudioSettingsViewController;
  itemCopy = item;
  [(HUItemTableViewController *)&v14 updateCell:cellCopy forItem:itemCopy indexPath:path animated:animatedCopy];
  v12 = [(HUItemTableViewController *)self itemManager:v14.receiver];
  audioSettingsItem = [v12 audioSettingsItem];

  if (audioSettingsItem == itemCopy)
  {
    [(HUMediaAccessoryAudioSettingsViewController *)self _updateSwapperCell:cellCopy];
  }
}

- (void)didTapSpeaker:(id)speaker
{
  v27 = *MEMORY[0x277D85DE8];
  speakerCopy = speaker;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    mediaSystemRole = [speakerCopy mediaSystemRole];
    v9 = @"right";
    *v22 = 138412802;
    *&v22[4] = self;
    *&v22[12] = 2112;
    if (mediaSystemRole == 1)
    {
      v9 = @"left";
    }

    *&v22[14] = v7;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped speaker icon: %@", v22, 0x20u);
  }

  accessoryIdentifyFuture = [(HUMediaAccessoryAudioSettingsViewController *)self accessoryIdentifyFuture];
  if (accessoryIdentifyFuture && (v11 = accessoryIdentifyFuture, -[HUMediaAccessoryAudioSettingsViewController accessoryIdentifyFuture](self, "accessoryIdentifyFuture"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 isFinished], v12, v11, (v13 & 1) == 0))
  {
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 = NSStringFromSelector(a2);
      accessoryIdentifyFuture2 = [(HUMediaAccessoryAudioSettingsViewController *)self accessoryIdentifyFuture];
      accessoryIdentifyFuture3 = [(HUMediaAccessoryAudioSettingsViewController *)self accessoryIdentifyFuture];
      isFinished = [accessoryIdentifyFuture3 isFinished];
      *v22 = 138413058;
      *&v22[4] = self;
      *&v22[12] = 2112;
      *&v22[14] = v18;
      v23 = 2112;
      v24 = accessoryIdentifyFuture2;
      v25 = 1024;
      v26 = isFinished;
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%@:%@ Ignoring because previous Identify future not completed: %@ isFinished = %{BOOL}d", v22, 0x26u);
    }
  }

  else
  {
    if ([speakerCopy mediaSystemRole] == 1)
    {
      [MEMORY[0x277CD1C10] leftRole];
    }

    else
    {
      [MEMORY[0x277CD1C10] rightRole];
    }
    v14 = ;
    mediaSystemBuilder = [(HUMediaAccessoryAudioSettingsViewController *)self mediaSystemBuilder];
    v16 = [mediaSystemBuilder accessoryForRole:v14];

    hf_identifyHomePod = [v16 hf_identifyHomePod];
    [(HUMediaAccessoryAudioSettingsViewController *)self setAccessoryIdentifyFuture:hf_identifyHomePod];
  }
}

- (void)didPressSwapButton:(id)button
{
  v21 = *MEMORY[0x277D85DE8];
  buttonCopy = button;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped speaker swapper", buf, 0x16u);
  }

  mediaSystemBuilder = [(HUMediaAccessoryAudioSettingsViewController *)self mediaSystemBuilder];
  [mediaSystemBuilder swapRoles];

  swapButton = [buttonCopy swapButton];
  [swapButton setUserInteractionEnabled:0];

  objc_initWeak(buf, self);
  mediaSystemBuilder2 = [(HUMediaAccessoryAudioSettingsViewController *)self mediaSystemBuilder];
  commitItem = [mediaSystemBuilder2 commitItem];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__HUMediaAccessoryAudioSettingsViewController_didPressSwapButton___block_invoke;
  v14[3] = &unk_277DB8620;
  objc_copyWeak(&v16, buf);
  v12 = buttonCopy;
  v15 = v12;
  v13 = [commitItem addCompletionBlock:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

void __66__HUMediaAccessoryAudioSettingsViewController_didPressSwapButton___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateSwapperCell:0];
  v2 = [*(a1 + 32) swapButton];
  [v2 setUserInteractionEnabled:1];
}

- (void)_updateSwapperCell:(id)cell
{
  cellCopy = cell;
  if (!cellCopy)
  {
    cellCopy = [(HUMediaAccessoryAudioSettingsViewController *)self _homePodStereoSwapperCell];
  }

  v19 = cellCopy;
  mediaSystemBuilder = [(HUMediaAccessoryAudioSettingsViewController *)self mediaSystemBuilder];
  leftRole = [MEMORY[0x277CD1C10] leftRole];
  v7 = [mediaSystemBuilder accessoryForRole:leftRole];

  mediaSystemBuilder2 = [(HUMediaAccessoryAudioSettingsViewController *)self mediaSystemBuilder];
  rightRole = [MEMORY[0x277CD1C10] rightRole];
  v10 = [mediaSystemBuilder2 accessoryForRole:rightRole];

  hf_serviceNameComponents = [v7 hf_serviceNameComponents];
  serviceName = [hf_serviceNameComponents serviceName];
  leftHomePod = [v19 leftHomePod];
  [leftHomePod setUnitName:serviceName];

  hf_serviceNameComponents2 = [v10 hf_serviceNameComponents];
  serviceName2 = [hf_serviceNameComponents2 serviceName];
  rightHomePod = [v19 rightHomePod];
  [rightHomePod setUnitName:serviceName2];

  leftHomePod2 = [v19 leftHomePod];
  [leftHomePod2 setDelegate:self];

  rightHomePod2 = [v19 rightHomePod];
  [rightHomePod2 setDelegate:self];
}

- (id)_homePodStereoSwapperCell
{
  tableView = [(HUMediaAccessoryAudioSettingsViewController *)self tableView];
  visibleCells = [tableView visibleCells];
  v4 = [visibleCells na_firstObjectPassingTest:&__block_literal_global_69];

  return v4;
}

uint64_t __72__HUMediaAccessoryAudioSettingsViewController__homePodStereoSwapperCell__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (HUPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

@end