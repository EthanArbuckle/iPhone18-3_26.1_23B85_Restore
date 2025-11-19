@interface HUMediaAccessoryAudioSettingsViewController
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUMediaAccessoryAudioSettingsViewController)initWithMediaSystemBuilder:(id)a3 mediaAccessoryItem:(id)a4;
- (HUPresentationDelegate)presentationDelegate;
- (id)_homePodStereoSwapperCell;
- (id)item;
- (void)_updateSwapperCell:(id)a3;
- (void)didPressSwapButton:(id)a3;
- (void)didTapSpeaker:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
@end

@implementation HUMediaAccessoryAudioSettingsViewController

- (HUMediaAccessoryAudioSettingsViewController)initWithMediaSystemBuilder:(id)a3 mediaAccessoryItem:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"HUMediaAccessoryAudioSettingsViewController.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"mediaSystemBuilder"}];
  }

  v10 = [[HUMediaAccessoryAudioSettingsItemManager alloc] initWithMediaSystemBuilder:v8 sourceItem:v9 delegate:self];
  v16.receiver = self;
  v16.super_class = HUMediaAccessoryAudioSettingsViewController;
  v11 = [(HUItemTableViewController *)&v16 initWithItemManager:v10 tableViewStyle:1];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mediaSystemBuilder, a3);
    v13 = _HULocalizedStringWithDefaultValue(@"HUMediaAccessoryAudioSettingsViewControllerTitle", @"HUMediaAccessoryAudioSettingsViewControllerTitle", 1);
    [(HUMediaAccessoryAudioSettingsViewController *)v12 setTitle:v13];
  }

  return v12;
}

- (id)item
{
  v2 = [(HUItemTableViewController *)self itemManager];
  v3 = [v2 sourceItem];

  return v3;
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v5 = a3;
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 audioSettingsItem];

  if (v7 == v5)
  {
    v8 = objc_opt_class();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v15 = a3;
  v7 = a4;
  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 audioSettingsItem];

  if (v9 == v7)
  {
    v10 = v15;
    objc_opt_class();
    v11 = [(HUItemTableViewController *)self itemManager];
    v12 = [v11 sourceItem];
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
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

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v14.receiver = self;
  v14.super_class = HUMediaAccessoryAudioSettingsViewController;
  v11 = a4;
  [(HUItemTableViewController *)&v14 updateCell:v10 forItem:v11 indexPath:a5 animated:v6];
  v12 = [(HUItemTableViewController *)self itemManager:v14.receiver];
  v13 = [v12 audioSettingsItem];

  if (v13 == v11)
  {
    [(HUMediaAccessoryAudioSettingsViewController *)self _updateSwapperCell:v10];
  }
}

- (void)didTapSpeaker:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 mediaSystemRole];
    v9 = @"right";
    *v22 = 138412802;
    *&v22[4] = self;
    *&v22[12] = 2112;
    if (v8 == 1)
    {
      v9 = @"left";
    }

    *&v22[14] = v7;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped speaker icon: %@", v22, 0x20u);
  }

  v10 = [(HUMediaAccessoryAudioSettingsViewController *)self accessoryIdentifyFuture];
  if (v10 && (v11 = v10, -[HUMediaAccessoryAudioSettingsViewController accessoryIdentifyFuture](self, "accessoryIdentifyFuture"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 isFinished], v12, v11, (v13 & 1) == 0))
  {
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 = NSStringFromSelector(a2);
      v19 = [(HUMediaAccessoryAudioSettingsViewController *)self accessoryIdentifyFuture];
      v20 = [(HUMediaAccessoryAudioSettingsViewController *)self accessoryIdentifyFuture];
      v21 = [v20 isFinished];
      *v22 = 138413058;
      *&v22[4] = self;
      *&v22[12] = 2112;
      *&v22[14] = v18;
      v23 = 2112;
      v24 = v19;
      v25 = 1024;
      v26 = v21;
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%@:%@ Ignoring because previous Identify future not completed: %@ isFinished = %{BOOL}d", v22, 0x26u);
    }
  }

  else
  {
    if ([v5 mediaSystemRole] == 1)
    {
      [MEMORY[0x277CD1C10] leftRole];
    }

    else
    {
      [MEMORY[0x277CD1C10] rightRole];
    }
    v14 = ;
    v15 = [(HUMediaAccessoryAudioSettingsViewController *)self mediaSystemBuilder];
    v16 = [v15 accessoryForRole:v14];

    v17 = [v16 hf_identifyHomePod];
    [(HUMediaAccessoryAudioSettingsViewController *)self setAccessoryIdentifyFuture:v17];
  }
}

- (void)didPressSwapButton:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    v18 = self;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped speaker swapper", buf, 0x16u);
  }

  v8 = [(HUMediaAccessoryAudioSettingsViewController *)self mediaSystemBuilder];
  [v8 swapRoles];

  v9 = [v5 swapButton];
  [v9 setUserInteractionEnabled:0];

  objc_initWeak(buf, self);
  v10 = [(HUMediaAccessoryAudioSettingsViewController *)self mediaSystemBuilder];
  v11 = [v10 commitItem];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__HUMediaAccessoryAudioSettingsViewController_didPressSwapButton___block_invoke;
  v14[3] = &unk_277DB8620;
  objc_copyWeak(&v16, buf);
  v12 = v5;
  v15 = v12;
  v13 = [v11 addCompletionBlock:v14];

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

- (void)_updateSwapperCell:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [(HUMediaAccessoryAudioSettingsViewController *)self _homePodStereoSwapperCell];
  }

  v19 = v4;
  v5 = [(HUMediaAccessoryAudioSettingsViewController *)self mediaSystemBuilder];
  v6 = [MEMORY[0x277CD1C10] leftRole];
  v7 = [v5 accessoryForRole:v6];

  v8 = [(HUMediaAccessoryAudioSettingsViewController *)self mediaSystemBuilder];
  v9 = [MEMORY[0x277CD1C10] rightRole];
  v10 = [v8 accessoryForRole:v9];

  v11 = [v7 hf_serviceNameComponents];
  v12 = [v11 serviceName];
  v13 = [v19 leftHomePod];
  [v13 setUnitName:v12];

  v14 = [v10 hf_serviceNameComponents];
  v15 = [v14 serviceName];
  v16 = [v19 rightHomePod];
  [v16 setUnitName:v15];

  v17 = [v19 leftHomePod];
  [v17 setDelegate:self];

  v18 = [v19 rightHomePod];
  [v18 setDelegate:self];
}

- (id)_homePodStereoSwapperCell
{
  v2 = [(HUMediaAccessoryAudioSettingsViewController *)self tableView];
  v3 = [v2 visibleCells];
  v4 = [v3 na_firstObjectPassingTest:&__block_literal_global_69];

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