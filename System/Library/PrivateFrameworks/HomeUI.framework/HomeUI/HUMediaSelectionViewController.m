@interface HUMediaSelectionViewController
- (BOOL)_allowRowInteractionForIndexPath:(id)a3;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUMediaSelectionViewController)initWithActionSetBuilder:(id)a3;
- (HUMediaSelectionViewControllerDelegate)delegate;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (void)_presentMediaPickerUnavailablePromptWithReason:(int64_t)a3 storeKitErrorObject:(id)a4;
- (void)_presentMediaPickerWithOptionsShowsLibraryContent:(BOOL)a3 pickingForExternalPlayer:(BOOL)a4;
- (void)applyAccessory:(int64_t)a3 toItem:(id)a4 onTableView:(id)a5;
- (void)itemManager:(id)a3 didUpdateResultsForItem:(id)a4 atIndexPath:(id)a5;
- (void)mediaPicker:(id)a3 didPickPlaybackArchive:(id)a4;
- (void)mediaPickerDidPickPlaybackArchive:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)sliderValueTableViewCell:(id)a3 didChangeValue:(double)a4;
- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
- (void)viewDidLoad;
@end

@implementation HUMediaSelectionViewController

- (HUMediaSelectionViewController)initWithActionSetBuilder:(id)a3
{
  v4 = a3;
  v5 = [[HUMediaSelectionItemManager alloc] initWithDelegate:self mediaPlaybackActionBuilder:v4];

  v10.receiver = self;
  v10.super_class = HUMediaSelectionViewController;
  v6 = [(HUItemTableViewController *)&v10 initWithItemManager:v5 tableViewStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaSelectionItemManager, v5);
    v8 = _HULocalizedStringWithDefaultValue(@"HUMediaSelectionTitle", @"HUMediaSelectionTitle", 1);
    [(HUMediaSelectionViewController *)v7 setTitle:v8];
  }

  return v7;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HUMediaSelectionViewController;
  [(HUItemTableViewController *)&v3 viewDidLoad];
  [(HUMediaSelectionViewController *)self setModalInPresentation:1];
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v5 = a3;
  objc_opt_class();
  v6 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  v10 = [v9 mediaPickerItem];

  if (v10 != v6)
  {
    if (!v8 || (-[HUMediaSelectionViewController mediaSelectionItemManager](self, "mediaSelectionItemManager"), v11 = objc_claimAutoreleasedReturnValue(), [v11 playbackOptionsItems], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "containsObject:", v8), v12, v11, (v13 & 1) == 0))
    {
      v14 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
      v15 = [v14 chosenMediaItem];

      if (v15 != v6)
      {
        v16 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
        [v16 volumeSliderItem];
      }
    }
  }

  v17 = objc_opt_class();

  return v17;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v32 = a3;
  v7 = a4;
  v8 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  v9 = [v8 playbackStateItems];
  v10 = [v9 containsObject:v7];

  if (v10)
  {
    goto LABEL_10;
  }

  v11 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  v12 = [v11 useCustomVolumeItem];
  v13 = v12;
  if (v12 == v7)
  {

    goto LABEL_10;
  }

  v14 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  v15 = [v14 useCurrentVolumeItem];

  if (v15 == v7)
  {
LABEL_10:
    objc_opt_class();
    v27 = v32;
    if (objc_opt_isKindOfClass())
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v25 = v28;

    [v25 setHideIcon:1];
LABEL_14:

    goto LABEL_15;
  }

  v16 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  v17 = [v16 selectedPlaybackStateItem];
  v18 = v17;
  if (v17 == v7)
  {
  }

  else
  {
    v19 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
    v20 = [v19 selectedVolumeItem];

    if (v20 != v7)
    {
      v21 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
      v22 = [v21 volumeSliderItem];

      if (v22 == v7)
      {
        v25 = v32;
        [v25 setDelegate:self];
        [v25 setMinimumValue:0.0];
        [v25 setMaximumValue:100.0];
        v29 = [MEMORY[0x277D755B8] _systemImageNamed:@"speaker.fill"];
        [v25 setMinimumValueImage:v29];

        v30 = [MEMORY[0x277D755B8] _systemImageNamed:@"speaker.wave.3.fill"];
        [v25 setMaximumValueImage:v30];

        v31 = [MEMORY[0x277D75348] systemGrayColor];
        [v25 setTintColor:v31];

        [v25 setShowValue:0];
      }

      else
      {
        v23 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
        v24 = [v23 chosenMediaItem];

        if (v24 != v7)
        {
          goto LABEL_15;
        }

        v25 = v32;
        [v25 setIconDisplayStyle:1];
        v26 = [v25 contentMetrics];
        [v26 setIconSize:{64.0, 64.0}];

        [v25 setHideDescriptionIcon:1];
        [v25 setSeparatorInsetLinesUpWithText:0];
      }

      goto LABEL_14;
    }
  }

  [v32 setAccessoryType:3];
LABEL_15:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v32 setDelegate:self];
  }
}

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v32.receiver = self;
  v32.super_class = HUMediaSelectionViewController;
  [(HUItemTableViewController *)&v32 updateCell:v10 forItem:v11 indexPath:a5 animated:v6];
  v12 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  v13 = [v12 chosenMediaItem];

  if (v13 == v11)
  {
    [v10 updateUIWithAnimation:v6];
    goto LABEL_16;
  }

  v14 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  v15 = [v14 playbackStateItems];
  v16 = [v15 containsObject:v11];

  if (v16)
  {
    v17 = v10;
    v18 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
    v19 = [v18 selectedPlaybackStateItem];
LABEL_11:
    v27 = v19;

    if (v27 == v11)
    {
      v28 = 3;
    }

    else
    {
      v28 = 0;
    }

    [v17 setAccessoryType:v28];
    goto LABEL_15;
  }

  v20 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  v21 = [v20 useCustomVolumeItem];
  v22 = v21;
  if (v21 == v11)
  {

    goto LABEL_10;
  }

  v23 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  v24 = [v23 useCurrentVolumeItem];

  if (v24 == v11)
  {
LABEL_10:
    v17 = v10;
    v18 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
    v19 = [v18 selectedVolumeItem];
    goto LABEL_11;
  }

  v25 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  v26 = [v25 volumeSliderItem];

  if (v26 == v11)
  {
    v29 = v10;
    v17 = [v11 latestResults];
    v30 = [v17 objectForKeyedSubscript:@"HOMediaVolumeResultKey"];
    [v30 floatValue];
    [v29 setValue:v31];

LABEL_15:
    goto LABEL_16;
  }

  [v10 setAccessoryType:0];
LABEL_16:
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v6 = a3;
  if (([MEMORY[0x277D14CE8] supportsMediaPicker] & 1) == 0)
  {
    v7 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
    v8 = [v7 playbackStatePlayItem];
    v9 = [v8 latestResults];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
    v11 = [v10 BOOLValue];

    v12 = [(HUMediaSelectionViewController *)self delegate];
    v13 = [v12 mediaSelectionViewControllerMessageForMediaActionPlayUnavailable:self];
    v14 = _HULocalizedStringWithDefaultValue(v13, v13, 1);

    v15 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
    v16 = [v15 displayedSectionIdentifierForSectionIndex:a4];
    v17 = v16;
    if (v11)
    {
      v18 = HOMediaSelectionActionSectionIdentifier;
    }

    else
    {
      v18 = HOMediaSelectionPickerSectionIdentifier;
    }

    v19 = [v16 isEqualToString:*v18];

    if (v19)
    {
      goto LABEL_8;
    }
  }

  v21.receiver = self;
  v21.super_class = HUMediaSelectionViewController;
  v14 = [(HUItemTableViewController *)&v21 tableView:v6 titleForFooterInSection:a4];
LABEL_8:

  return v14;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(HUMediaSelectionViewController *)self _allowRowInteractionForIndexPath:v5])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v56.receiver = self;
  v56.super_class = HUMediaSelectionViewController;
  [(HUItemTableViewController *)&v56 tableView:v6 didSelectRowAtIndexPath:v7];
  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v7];

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

  v13 = [v6 cellForRowAtIndexPath:v7];
  v14 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  v15 = [v14 mediaPickerItem];

  if (v10 == v15)
  {
    if (_os_feature_enabled_impl())
    {
      v27 = [HUMediaSourceListViewController alloc];
      v28 = [(HUMediaSelectionItemManager *)self->_mediaSelectionItemManager actionSetBuilder];
      v29 = [v28 mediaAction];
      [v29 mediaProfiles];
      v31 = v30 = v13;
      v32 = [(HUMediaSourceListViewController *)v27 initForMediaProfileContainers:v31 forTarget:0];

      v13 = v30;
      [v32 setDelegate:self];
      v33 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v32];
      [(HUMediaSelectionViewController *)self presentViewController:v33 animated:1 completion:0];
      [v6 deselectRowAtIndexPath:v7 animated:1];

      goto LABEL_25;
    }

    v55 = v13;
    v34 = [v10 latestResults];
    v35 = [v34 objectForKeyedSubscript:@"HOMediaPickerUnavailableReasonKey"];

    v36 = [v10 latestResults];
    v20 = v36;
    if (v35)
    {
      v37 = [v36 objectForKeyedSubscript:@"HOMediaPickerUnavailableReasonKey"];
      v38 = [v37 integerValue];
      v39 = [v10 latestResults];
      v40 = [v39 objectForKeyedSubscript:@"HUMediaPickerUnavailableReasonStoreKitErrorObjectKey"];
      [(HUMediaSelectionViewController *)self _presentMediaPickerUnavailablePromptWithReason:v38 storeKitErrorObject:v40];
    }

    else
    {
      v42 = [v36 objectForKeyedSubscript:@"HOMediaSelectionShowLibraryContentKey"];
      v43 = [v42 BOOLValue];
      v44 = [v10 latestResults];
      v45 = [v44 objectForKeyedSubscript:@"HOMediaSelectionPickingForExternalPlayerKey"];
      -[HUMediaSelectionViewController _presentMediaPickerWithOptionsShowsLibraryContent:pickingForExternalPlayer:](self, "_presentMediaPickerWithOptionsShowsLibraryContent:pickingForExternalPlayer:", v43, [v45 BOOLValue]);
    }

    v13 = v55;
    goto LABEL_21;
  }

  if (v12)
  {
    v16 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
    v17 = [v16 playbackStateItems];
    v18 = [v17 containsObject:v12];

    if (v18)
    {
      v19 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
      v20 = [v19 selectedPlaybackStateItem];

      [v13 setAccessoryType:3];
      v21 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
      [v21 setSelectedPlaybackStateItem:v12];
      goto LABEL_17;
    }
  }

  v22 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  v23 = [v22 useCustomVolumeItem];
  v24 = v23;
  if (v23 == v10)
  {

LABEL_16:
    v41 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
    v20 = [v41 selectedVolumeItem];

    [v13 setAccessoryType:3];
    v21 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
    [v21 setSelectedVolumeItem:v12];
LABEL_17:

    [(HUMediaSelectionViewController *)self updateCell:v13 forItem:v10 indexPath:v7 animated:1];
    if (v20)
    {
      [(HUMediaSelectionViewController *)self applyAccessory:0 toItem:v20 onTableView:v6];
    }

LABEL_21:

    goto LABEL_22;
  }

  v25 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  v26 = [v25 useCurrentVolumeItem];

  if (v26 == v10)
  {
    goto LABEL_16;
  }

LABEL_22:
  v46 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  v47 = [v46 playbackStateAdjustVolumeOnlyItem];

  if (v10 == v47)
  {
    v48 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
    v49 = [v48 useCustomVolumeItem];
    v50 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
    [v50 setSelectedVolumeItem:v49];

    v51 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
    v52 = [v51 useCurrentVolumeItem];
    [(HUMediaSelectionViewController *)self applyAccessory:0 toItem:v52 onTableView:v6];

    v53 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
    v54 = [v53 useCustomVolumeItem];
    [(HUMediaSelectionViewController *)self applyAccessory:3 toItem:v54 onTableView:v6];
  }

  [v6 deselectRowAtIndexPath:v7 animated:1];
LABEL_25:
}

- (void)applyAccessory:(int64_t)a3 toItem:(id)a4 onTableView:(id)a5
{
  v12 = a4;
  v8 = a5;
  v9 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  v10 = [v9 indexPathForItem:v12];

  v11 = [v8 cellForRowAtIndexPath:v10];

  [v11 setAccessoryType:a3];
  if (v11)
  {
    [(HUMediaSelectionViewController *)self updateCell:v11 forItem:v12 indexPath:v10 animated:1];
  }
}

- (BOOL)_allowRowInteractionForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  v6 = [v5 actionSetBuilder];
  v7 = [v6 home];
  v8 = [v7 hf_currentUserIsAdministrator];

  if (v8)
  {
    v9 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
    v10 = [v9 displayedSectionIdentifierForSectionIndex:{objc_msgSend(v4, "section")}];

    v11 = [(HUItemTableViewController *)self itemManager];
    v12 = [v11 displayedItemAtIndexPath:v4];

    if (v10 == @"HOMediaSelectionActionSectionIdentifier" || v10 == @"HOMediaSelectionVolumeSelectionSectionIdentifier" || (-[HUMediaSelectionViewController mediaSelectionItemManager](self, "mediaSelectionItemManager"), v13 = objc_claimAutoreleasedReturnValue(), [v13 mediaPickerItem], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v12 == v14))
    {
      v16 = [v12 latestResults];
      v17 = [v16 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
      v15 = [v17 BOOLValue] ^ 1;
    }

    else
    {
      LOBYTE(v15) = 0;
    }
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

- (void)_presentMediaPickerWithOptionsShowsLibraryContent:(BOOL)a3 pickingForExternalPlayer:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  v8 = [v7 pickedPlaybackArchive];
  -[HUMediaSelectionViewController setLastTargetOptions:](self, "setLastTargetOptions:", [v8 targetOptions]);

  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v9 = _MergedGlobals_5;
  v30 = _MergedGlobals_5;
  if (!_MergedGlobals_5)
  {
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __getMPMediaPickerControllerClass_block_invoke;
    v25 = &unk_277DB7768;
    v26 = &v27;
    __getMPMediaPickerControllerClass_block_invoke(&v22);
    v9 = v28[3];
  }

  v10 = v9;
  _Block_object_dispose(&v27, 8);
  v11 = [[v9 alloc] initWithSupportedTypeIdentifiers:&unk_282492858 selectionMode:4];
  [v11 setShowsCloudItems:1];
  [v11 setShowsItemsWithProtectedAssets:1];
  [v11 setShowsCatalogContent:1];
  [v11 setShowsLibraryContent:v5];
  [v11 setPickingForExternalPlayer:v4];
  v12 = [MEMORY[0x277D759A0] mainScreen];
  [v12 scale];
  v14 = v13;

  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v15 = qword_281120CE0;
  v30 = qword_281120CE0;
  if (!qword_281120CE0)
  {
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __getMPPlaybackArchiveConfigurationClass_block_invoke;
    v25 = &unk_277DB7768;
    v26 = &v27;
    __getMPPlaybackArchiveConfigurationClass_block_invoke(&v22);
    v15 = v28[3];
  }

  v16 = fmax(v14, 4.0) * 64.0;
  v17 = v15;
  _Block_object_dispose(&v27, 8);
  v18 = [[v15 alloc] initWithPreferredArtworkSize:{v16, v16}];
  [v11 setPlaybackArchiveConfiguration:v18];

  [v11 setDelegate:self];
  [v11 setModalPresentationStyle:2];
  v19 = [(HUMediaSelectionViewController *)self view];
  [v19 frame];
  [v11 setPreferredContentSize:{v20, v21}];

  [(HUMediaSelectionViewController *)self presentViewController:v11 animated:1 completion:0];
}

- (void)_presentMediaPickerUnavailablePromptWithReason:(int64_t)a3 storeKitErrorObject:(id)a4
{
  v6 = a4;
  if (a3 == 2)
  {
    v7 = 0;
    v9 = 0;
    v10 = 0;
    v8 = @"HUAlertError";
  }

  else if (a3 == 1)
  {
    v7 = [MEMORY[0x277CBEBC0] URLWithString:@"music://subscribe"];
    v8 = @"HUMediaPickerUnavailableMusicCatalogPlaybackDisabledPromptTitle";
    v9 = 1;
    v10 = @"HUMediaPickerUnavailableMusicCatalogPlaybackDisabledPromptGetAppleMusicButton";
  }

  else if (a3)
  {
    v7 = 0;
    v9 = 0;
    v10 = 0;
    v8 = 0;
  }

  else
  {
    v7 = +[HUMediaAccountUtilities musicAppURL];
    v8 = @"HUMediaPickerUnavailableMusicAppUninstalledPromptTitle";
    v9 = 1;
    v10 = @"HUMediaPickerUnavailableMusicAppUninstalledPromptOpenAppStoreButton";
  }

  v11 = [(HUMediaSelectionViewController *)self delegate];
  v12 = [v11 mediaSelectionViewController:self messageForMediaPickerUnavailableReason:a3];

  v24 = v6;
  if (v12)
  {
    _HULocalizedStringWithDefaultValue(v12, v12, 1);
  }

  else
  {
    [v6 localizedDescription];
  }
  v13 = ;
  v14 = MEMORY[0x277D75110];
  v15 = _HULocalizedStringWithDefaultValue(v8, v8, 1);
  v16 = [v14 alertControllerWithTitle:v15 message:v13 preferredStyle:1];

  v17 = MEMORY[0x277D750F8];
  v18 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);
  v19 = [v17 actionWithTitle:v18 style:0 handler:0];
  [v16 addAction:v19];

  if (v7)
  {
    v20 = v9;
  }

  else
  {
    v20 = 0;
  }

  if (v20 == 1)
  {
    v21 = MEMORY[0x277D750F8];
    v22 = _HULocalizedStringWithDefaultValue(v10, v10, 1);
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __101__HUMediaSelectionViewController__presentMediaPickerUnavailablePromptWithReason_storeKitErrorObject___block_invoke;
    v29 = &unk_277DB7600;
    v30 = v7;
    v23 = [v21 actionWithTitle:v22 style:0 handler:&v26];
    [v16 addAction:v23];
  }

  [(HUMediaSelectionViewController *)self presentViewController:v16 animated:1 completion:0, v24, v26, v27, v28, v29];
}

void __101__HUMediaSelectionViewController__presentMediaPickerUnavailablePromptWithReason_storeKitErrorObject___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277D148E8] sharedInstance];
  v2 = [v3 openURL:*(a1 + 32)];
}

- (void)mediaPicker:(id)a3 didPickPlaybackArchive:(id)a4
{
  v6 = MEMORY[0x277D14948];
  v7 = a4;
  v8 = [[v6 alloc] initWithMediaPlayerPlaybackArchive:v7];

  v9 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  [v9 setPickedPlaybackArchive:v8];

  v10 = [(HUMediaSelectionViewController *)self lastTargetOptions];
  v11 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  v12 = [v11 pickedPlaybackArchive];
  [v12 setTargetOptions:v10];

  v13 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  v14 = [v13 pickedPlaybackArchive];
  [v14 setAutoPlayEnabled:0];

  v15 = MEMORY[0x277CBEB58];
  v16 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  v17 = [v16 playbackOptionsItems];
  v22 = [v15 setWithArray:v17];

  v18 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  v19 = [v18 chosenMediaItem];
  [v22 addObject:v19];

  v20 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  v21 = [v20 updateResultsForItems:v22 senderSelector:a2];

  [(HUMediaSelectionViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)mediaPickerDidPickPlaybackArchive:(id)a3
{
  v5 = MEMORY[0x277D14948];
  v6 = a3;
  v7 = [[v5 alloc] initWithMediaPlayerPlaybackArchive:v6];

  v8 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  [v8 setPickedPlaybackArchive:v7];

  v9 = [(HUMediaSelectionViewController *)self lastTargetOptions];
  v10 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  v11 = [v10 pickedPlaybackArchive];
  [v11 setTargetOptions:v9];

  v12 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  v13 = [v12 pickedPlaybackArchive];
  [v13 setAutoPlayEnabled:0];

  v14 = MEMORY[0x277CBEB58];
  v15 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  v16 = [v15 playbackOptionsItems];
  v21 = [v14 setWithArray:v16];

  v17 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  v18 = [v17 chosenMediaItem];
  [v21 addObject:v18];

  v19 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  v20 = [v19 updateResultsForItems:v21 senderSelector:a2];

  [(HUMediaSelectionViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(HUItemTableViewController *)self itemManager];
  v8 = [(HUMediaSelectionViewController *)self tableView];
  v9 = [v8 indexPathForCell:v6];

  v11 = [v7 displayedItemAtIndexPath:v9];

  v10 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  [v10 mediaPlaybackOptionsItem:v11 switchedOn:v4];
}

- (void)sliderValueTableViewCell:(id)a3 didChangeValue:(double)a4
{
  v5 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  [v5 mediaVolumeValueChanged:a4];
}

- (void)itemManager:(id)a3 didUpdateResultsForItem:(id)a4 atIndexPath:(id)a5
{
  v8 = a4;
  v15.receiver = self;
  v15.super_class = HUMediaSelectionViewController;
  [(HUItemTableViewController *)&v15 itemManager:a3 didUpdateResultsForItem:v8 atIndexPath:a5];
  v9 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  v10 = [v9 mediaPickerItem];
  if (v10 != v8)
  {
    goto LABEL_2;
  }

  v11 = [v8 latestResults];
  v12 = [v11 objectForKeyedSubscript:@"HOMediaPickerUnavailableReasonKey"];
  if (!v12)
  {

LABEL_2:
    goto LABEL_3;
  }

  v13 = v12;
  v14 = [(HUMediaSelectionViewController *)self presentedViewController];

  if (v14)
  {
    [(HUMediaSelectionViewController *)self dismissViewControllerAnimated:1 completion:0];
  }

LABEL_3:
}

- (HUMediaSelectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end