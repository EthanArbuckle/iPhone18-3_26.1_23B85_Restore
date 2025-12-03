@interface HUMediaSelectionViewController
- (BOOL)_allowRowInteractionForIndexPath:(id)path;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUMediaSelectionViewController)initWithActionSetBuilder:(id)builder;
- (HUMediaSelectionViewControllerDelegate)delegate;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (void)_presentMediaPickerUnavailablePromptWithReason:(int64_t)reason storeKitErrorObject:(id)object;
- (void)_presentMediaPickerWithOptionsShowsLibraryContent:(BOOL)content pickingForExternalPlayer:(BOOL)player;
- (void)applyAccessory:(int64_t)accessory toItem:(id)item onTableView:(id)view;
- (void)itemManager:(id)manager didUpdateResultsForItem:(id)item atIndexPath:(id)path;
- (void)mediaPicker:(id)picker didPickPlaybackArchive:(id)archive;
- (void)mediaPickerDidPickPlaybackArchive:(id)archive;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)sliderValueTableViewCell:(id)cell didChangeValue:(double)value;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation HUMediaSelectionViewController

- (HUMediaSelectionViewController)initWithActionSetBuilder:(id)builder
{
  builderCopy = builder;
  v5 = [[HUMediaSelectionItemManager alloc] initWithDelegate:self mediaPlaybackActionBuilder:builderCopy];

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

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
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

  mediaSelectionItemManager = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  mediaPickerItem = [mediaSelectionItemManager mediaPickerItem];

  if (mediaPickerItem != v6)
  {
    if (!v8 || (-[HUMediaSelectionViewController mediaSelectionItemManager](self, "mediaSelectionItemManager"), v11 = objc_claimAutoreleasedReturnValue(), [v11 playbackOptionsItems], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "containsObject:", v8), v12, v11, (v13 & 1) == 0))
    {
      mediaSelectionItemManager2 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
      chosenMediaItem = [mediaSelectionItemManager2 chosenMediaItem];

      if (chosenMediaItem != v6)
      {
        mediaSelectionItemManager3 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
        [mediaSelectionItemManager3 volumeSliderItem];
      }
    }
  }

  v17 = objc_opt_class();

  return v17;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  mediaSelectionItemManager = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  playbackStateItems = [mediaSelectionItemManager playbackStateItems];
  v10 = [playbackStateItems containsObject:itemCopy];

  if (v10)
  {
    goto LABEL_10;
  }

  mediaSelectionItemManager2 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  useCustomVolumeItem = [mediaSelectionItemManager2 useCustomVolumeItem];
  v13 = useCustomVolumeItem;
  if (useCustomVolumeItem == itemCopy)
  {

    goto LABEL_10;
  }

  mediaSelectionItemManager3 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  useCurrentVolumeItem = [mediaSelectionItemManager3 useCurrentVolumeItem];

  if (useCurrentVolumeItem == itemCopy)
  {
LABEL_10:
    objc_opt_class();
    v27 = cellCopy;
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

  mediaSelectionItemManager4 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  selectedPlaybackStateItem = [mediaSelectionItemManager4 selectedPlaybackStateItem];
  v18 = selectedPlaybackStateItem;
  if (selectedPlaybackStateItem == itemCopy)
  {
  }

  else
  {
    mediaSelectionItemManager5 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
    selectedVolumeItem = [mediaSelectionItemManager5 selectedVolumeItem];

    if (selectedVolumeItem != itemCopy)
    {
      mediaSelectionItemManager6 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
      volumeSliderItem = [mediaSelectionItemManager6 volumeSliderItem];

      if (volumeSliderItem == itemCopy)
      {
        v25 = cellCopy;
        [v25 setDelegate:self];
        [v25 setMinimumValue:0.0];
        [v25 setMaximumValue:100.0];
        v29 = [MEMORY[0x277D755B8] _systemImageNamed:@"speaker.fill"];
        [v25 setMinimumValueImage:v29];

        v30 = [MEMORY[0x277D755B8] _systemImageNamed:@"speaker.wave.3.fill"];
        [v25 setMaximumValueImage:v30];

        systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
        [v25 setTintColor:systemGrayColor];

        [v25 setShowValue:0];
      }

      else
      {
        mediaSelectionItemManager7 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
        chosenMediaItem = [mediaSelectionItemManager7 chosenMediaItem];

        if (chosenMediaItem != itemCopy)
        {
          goto LABEL_15;
        }

        v25 = cellCopy;
        [v25 setIconDisplayStyle:1];
        contentMetrics = [v25 contentMetrics];
        [contentMetrics setIconSize:{64.0, 64.0}];

        [v25 setHideDescriptionIcon:1];
        [v25 setSeparatorInsetLinesUpWithText:0];
      }

      goto LABEL_14;
    }
  }

  [cellCopy setAccessoryType:3];
LABEL_15:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [cellCopy setDelegate:self];
  }
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  v32.receiver = self;
  v32.super_class = HUMediaSelectionViewController;
  [(HUItemTableViewController *)&v32 updateCell:cellCopy forItem:itemCopy indexPath:path animated:animatedCopy];
  mediaSelectionItemManager = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  chosenMediaItem = [mediaSelectionItemManager chosenMediaItem];

  if (chosenMediaItem == itemCopy)
  {
    [cellCopy updateUIWithAnimation:animatedCopy];
    goto LABEL_16;
  }

  mediaSelectionItemManager2 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  playbackStateItems = [mediaSelectionItemManager2 playbackStateItems];
  v16 = [playbackStateItems containsObject:itemCopy];

  if (v16)
  {
    latestResults = cellCopy;
    mediaSelectionItemManager3 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
    selectedPlaybackStateItem = [mediaSelectionItemManager3 selectedPlaybackStateItem];
LABEL_11:
    v27 = selectedPlaybackStateItem;

    if (v27 == itemCopy)
    {
      v28 = 3;
    }

    else
    {
      v28 = 0;
    }

    [latestResults setAccessoryType:v28];
    goto LABEL_15;
  }

  mediaSelectionItemManager4 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  useCustomVolumeItem = [mediaSelectionItemManager4 useCustomVolumeItem];
  v22 = useCustomVolumeItem;
  if (useCustomVolumeItem == itemCopy)
  {

    goto LABEL_10;
  }

  mediaSelectionItemManager5 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  useCurrentVolumeItem = [mediaSelectionItemManager5 useCurrentVolumeItem];

  if (useCurrentVolumeItem == itemCopy)
  {
LABEL_10:
    latestResults = cellCopy;
    mediaSelectionItemManager3 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
    selectedPlaybackStateItem = [mediaSelectionItemManager3 selectedVolumeItem];
    goto LABEL_11;
  }

  mediaSelectionItemManager6 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  volumeSliderItem = [mediaSelectionItemManager6 volumeSliderItem];

  if (volumeSliderItem == itemCopy)
  {
    v29 = cellCopy;
    latestResults = [itemCopy latestResults];
    v30 = [latestResults objectForKeyedSubscript:@"HOMediaVolumeResultKey"];
    [v30 floatValue];
    [v29 setValue:v31];

LABEL_15:
    goto LABEL_16;
  }

  [cellCopy setAccessoryType:0];
LABEL_16:
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  viewCopy = view;
  if (([MEMORY[0x277D14CE8] supportsMediaPicker] & 1) == 0)
  {
    mediaSelectionItemManager = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
    playbackStatePlayItem = [mediaSelectionItemManager playbackStatePlayItem];
    latestResults = [playbackStatePlayItem latestResults];
    v10 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
    bOOLValue = [v10 BOOLValue];

    delegate = [(HUMediaSelectionViewController *)self delegate];
    v13 = [delegate mediaSelectionViewControllerMessageForMediaActionPlayUnavailable:self];
    v14 = _HULocalizedStringWithDefaultValue(v13, v13, 1);

    mediaSelectionItemManager2 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
    v16 = [mediaSelectionItemManager2 displayedSectionIdentifierForSectionIndex:section];
    v17 = v16;
    if (bOOLValue)
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
  v14 = [(HUItemTableViewController *)&v21 tableView:viewCopy titleForFooterInSection:section];
LABEL_8:

  return v14;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(HUMediaSelectionViewController *)self _allowRowInteractionForIndexPath:pathCopy])
  {
    v6 = pathCopy;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v56.receiver = self;
  v56.super_class = HUMediaSelectionViewController;
  [(HUItemTableViewController *)&v56 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];

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

  v13 = [viewCopy cellForRowAtIndexPath:pathCopy];
  mediaSelectionItemManager = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  mediaPickerItem = [mediaSelectionItemManager mediaPickerItem];

  if (v10 == mediaPickerItem)
  {
    if (_os_feature_enabled_impl())
    {
      v27 = [HUMediaSourceListViewController alloc];
      actionSetBuilder = [(HUMediaSelectionItemManager *)self->_mediaSelectionItemManager actionSetBuilder];
      mediaAction = [actionSetBuilder mediaAction];
      [mediaAction mediaProfiles];
      v31 = v30 = v13;
      v32 = [(HUMediaSourceListViewController *)v27 initForMediaProfileContainers:v31 forTarget:0];

      v13 = v30;
      [v32 setDelegate:self];
      v33 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v32];
      [(HUMediaSelectionViewController *)self presentViewController:v33 animated:1 completion:0];
      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];

      goto LABEL_25;
    }

    v55 = v13;
    latestResults = [v10 latestResults];
    v35 = [latestResults objectForKeyedSubscript:@"HOMediaPickerUnavailableReasonKey"];

    latestResults2 = [v10 latestResults];
    selectedPlaybackStateItem = latestResults2;
    if (v35)
    {
      v37 = [latestResults2 objectForKeyedSubscript:@"HOMediaPickerUnavailableReasonKey"];
      integerValue = [v37 integerValue];
      latestResults3 = [v10 latestResults];
      v40 = [latestResults3 objectForKeyedSubscript:@"HUMediaPickerUnavailableReasonStoreKitErrorObjectKey"];
      [(HUMediaSelectionViewController *)self _presentMediaPickerUnavailablePromptWithReason:integerValue storeKitErrorObject:v40];
    }

    else
    {
      v42 = [latestResults2 objectForKeyedSubscript:@"HOMediaSelectionShowLibraryContentKey"];
      bOOLValue = [v42 BOOLValue];
      latestResults4 = [v10 latestResults];
      v45 = [latestResults4 objectForKeyedSubscript:@"HOMediaSelectionPickingForExternalPlayerKey"];
      -[HUMediaSelectionViewController _presentMediaPickerWithOptionsShowsLibraryContent:pickingForExternalPlayer:](self, "_presentMediaPickerWithOptionsShowsLibraryContent:pickingForExternalPlayer:", bOOLValue, [v45 BOOLValue]);
    }

    v13 = v55;
    goto LABEL_21;
  }

  if (v12)
  {
    mediaSelectionItemManager2 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
    playbackStateItems = [mediaSelectionItemManager2 playbackStateItems];
    v18 = [playbackStateItems containsObject:v12];

    if (v18)
    {
      mediaSelectionItemManager3 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
      selectedPlaybackStateItem = [mediaSelectionItemManager3 selectedPlaybackStateItem];

      [v13 setAccessoryType:3];
      mediaSelectionItemManager4 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
      [mediaSelectionItemManager4 setSelectedPlaybackStateItem:v12];
      goto LABEL_17;
    }
  }

  mediaSelectionItemManager5 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  useCustomVolumeItem = [mediaSelectionItemManager5 useCustomVolumeItem];
  v24 = useCustomVolumeItem;
  if (useCustomVolumeItem == v10)
  {

LABEL_16:
    mediaSelectionItemManager6 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
    selectedPlaybackStateItem = [mediaSelectionItemManager6 selectedVolumeItem];

    [v13 setAccessoryType:3];
    mediaSelectionItemManager4 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
    [mediaSelectionItemManager4 setSelectedVolumeItem:v12];
LABEL_17:

    [(HUMediaSelectionViewController *)self updateCell:v13 forItem:v10 indexPath:pathCopy animated:1];
    if (selectedPlaybackStateItem)
    {
      [(HUMediaSelectionViewController *)self applyAccessory:0 toItem:selectedPlaybackStateItem onTableView:viewCopy];
    }

LABEL_21:

    goto LABEL_22;
  }

  mediaSelectionItemManager7 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  useCurrentVolumeItem = [mediaSelectionItemManager7 useCurrentVolumeItem];

  if (useCurrentVolumeItem == v10)
  {
    goto LABEL_16;
  }

LABEL_22:
  mediaSelectionItemManager8 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  playbackStateAdjustVolumeOnlyItem = [mediaSelectionItemManager8 playbackStateAdjustVolumeOnlyItem];

  if (v10 == playbackStateAdjustVolumeOnlyItem)
  {
    mediaSelectionItemManager9 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
    useCustomVolumeItem2 = [mediaSelectionItemManager9 useCustomVolumeItem];
    mediaSelectionItemManager10 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
    [mediaSelectionItemManager10 setSelectedVolumeItem:useCustomVolumeItem2];

    mediaSelectionItemManager11 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
    useCurrentVolumeItem2 = [mediaSelectionItemManager11 useCurrentVolumeItem];
    [(HUMediaSelectionViewController *)self applyAccessory:0 toItem:useCurrentVolumeItem2 onTableView:viewCopy];

    mediaSelectionItemManager12 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
    useCustomVolumeItem3 = [mediaSelectionItemManager12 useCustomVolumeItem];
    [(HUMediaSelectionViewController *)self applyAccessory:3 toItem:useCustomVolumeItem3 onTableView:viewCopy];
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
LABEL_25:
}

- (void)applyAccessory:(int64_t)accessory toItem:(id)item onTableView:(id)view
{
  itemCopy = item;
  viewCopy = view;
  mediaSelectionItemManager = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  v10 = [mediaSelectionItemManager indexPathForItem:itemCopy];

  v11 = [viewCopy cellForRowAtIndexPath:v10];

  [v11 setAccessoryType:accessory];
  if (v11)
  {
    [(HUMediaSelectionViewController *)self updateCell:v11 forItem:itemCopy indexPath:v10 animated:1];
  }
}

- (BOOL)_allowRowInteractionForIndexPath:(id)path
{
  pathCopy = path;
  mediaSelectionItemManager = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  actionSetBuilder = [mediaSelectionItemManager actionSetBuilder];
  home = [actionSetBuilder home];
  hf_currentUserIsAdministrator = [home hf_currentUserIsAdministrator];

  if (hf_currentUserIsAdministrator)
  {
    mediaSelectionItemManager2 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
    v10 = [mediaSelectionItemManager2 displayedSectionIdentifierForSectionIndex:{objc_msgSend(pathCopy, "section")}];

    itemManager = [(HUItemTableViewController *)self itemManager];
    v12 = [itemManager displayedItemAtIndexPath:pathCopy];

    if (v10 == @"HOMediaSelectionActionSectionIdentifier" || v10 == @"HOMediaSelectionVolumeSelectionSectionIdentifier" || (-[HUMediaSelectionViewController mediaSelectionItemManager](self, "mediaSelectionItemManager"), v13 = objc_claimAutoreleasedReturnValue(), [v13 mediaPickerItem], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v12 == v14))
    {
      latestResults = [v12 latestResults];
      v17 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
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

- (void)_presentMediaPickerWithOptionsShowsLibraryContent:(BOOL)content pickingForExternalPlayer:(BOOL)player
{
  playerCopy = player;
  contentCopy = content;
  mediaSelectionItemManager = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  pickedPlaybackArchive = [mediaSelectionItemManager pickedPlaybackArchive];
  -[HUMediaSelectionViewController setLastTargetOptions:](self, "setLastTargetOptions:", [pickedPlaybackArchive targetOptions]);

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
  [v11 setShowsLibraryContent:contentCopy];
  [v11 setPickingForExternalPlayer:playerCopy];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
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
  view = [(HUMediaSelectionViewController *)self view];
  [view frame];
  [v11 setPreferredContentSize:{v20, v21}];

  [(HUMediaSelectionViewController *)self presentViewController:v11 animated:1 completion:0];
}

- (void)_presentMediaPickerUnavailablePromptWithReason:(int64_t)reason storeKitErrorObject:(id)object
{
  objectCopy = object;
  if (reason == 2)
  {
    v7 = 0;
    v9 = 0;
    v10 = 0;
    v8 = @"HUAlertError";
  }

  else if (reason == 1)
  {
    v7 = [MEMORY[0x277CBEBC0] URLWithString:@"music://subscribe"];
    v8 = @"HUMediaPickerUnavailableMusicCatalogPlaybackDisabledPromptTitle";
    v9 = 1;
    v10 = @"HUMediaPickerUnavailableMusicCatalogPlaybackDisabledPromptGetAppleMusicButton";
  }

  else if (reason)
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

  delegate = [(HUMediaSelectionViewController *)self delegate];
  v12 = [delegate mediaSelectionViewController:self messageForMediaPickerUnavailableReason:reason];

  v24 = objectCopy;
  if (v12)
  {
    _HULocalizedStringWithDefaultValue(v12, v12, 1);
  }

  else
  {
    [objectCopy localizedDescription];
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

- (void)mediaPicker:(id)picker didPickPlaybackArchive:(id)archive
{
  v6 = MEMORY[0x277D14948];
  archiveCopy = archive;
  v8 = [[v6 alloc] initWithMediaPlayerPlaybackArchive:archiveCopy];

  mediaSelectionItemManager = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  [mediaSelectionItemManager setPickedPlaybackArchive:v8];

  lastTargetOptions = [(HUMediaSelectionViewController *)self lastTargetOptions];
  mediaSelectionItemManager2 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  pickedPlaybackArchive = [mediaSelectionItemManager2 pickedPlaybackArchive];
  [pickedPlaybackArchive setTargetOptions:lastTargetOptions];

  mediaSelectionItemManager3 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  pickedPlaybackArchive2 = [mediaSelectionItemManager3 pickedPlaybackArchive];
  [pickedPlaybackArchive2 setAutoPlayEnabled:0];

  v15 = MEMORY[0x277CBEB58];
  mediaSelectionItemManager4 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  playbackOptionsItems = [mediaSelectionItemManager4 playbackOptionsItems];
  v22 = [v15 setWithArray:playbackOptionsItems];

  mediaSelectionItemManager5 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  chosenMediaItem = [mediaSelectionItemManager5 chosenMediaItem];
  [v22 addObject:chosenMediaItem];

  mediaSelectionItemManager6 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  v21 = [mediaSelectionItemManager6 updateResultsForItems:v22 senderSelector:a2];

  [(HUMediaSelectionViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)mediaPickerDidPickPlaybackArchive:(id)archive
{
  v5 = MEMORY[0x277D14948];
  archiveCopy = archive;
  v7 = [[v5 alloc] initWithMediaPlayerPlaybackArchive:archiveCopy];

  mediaSelectionItemManager = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  [mediaSelectionItemManager setPickedPlaybackArchive:v7];

  lastTargetOptions = [(HUMediaSelectionViewController *)self lastTargetOptions];
  mediaSelectionItemManager2 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  pickedPlaybackArchive = [mediaSelectionItemManager2 pickedPlaybackArchive];
  [pickedPlaybackArchive setTargetOptions:lastTargetOptions];

  mediaSelectionItemManager3 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  pickedPlaybackArchive2 = [mediaSelectionItemManager3 pickedPlaybackArchive];
  [pickedPlaybackArchive2 setAutoPlayEnabled:0];

  v14 = MEMORY[0x277CBEB58];
  mediaSelectionItemManager4 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  playbackOptionsItems = [mediaSelectionItemManager4 playbackOptionsItems];
  v21 = [v14 setWithArray:playbackOptionsItems];

  mediaSelectionItemManager5 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  chosenMediaItem = [mediaSelectionItemManager5 chosenMediaItem];
  [v21 addObject:chosenMediaItem];

  mediaSelectionItemManager6 = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  v20 = [mediaSelectionItemManager6 updateResultsForItems:v21 senderSelector:a2];

  [(HUMediaSelectionViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  cellCopy = cell;
  itemManager = [(HUItemTableViewController *)self itemManager];
  tableView = [(HUMediaSelectionViewController *)self tableView];
  v9 = [tableView indexPathForCell:cellCopy];

  v11 = [itemManager displayedItemAtIndexPath:v9];

  mediaSelectionItemManager = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  [mediaSelectionItemManager mediaPlaybackOptionsItem:v11 switchedOn:onCopy];
}

- (void)sliderValueTableViewCell:(id)cell didChangeValue:(double)value
{
  mediaSelectionItemManager = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  [mediaSelectionItemManager mediaVolumeValueChanged:value];
}

- (void)itemManager:(id)manager didUpdateResultsForItem:(id)item atIndexPath:(id)path
{
  itemCopy = item;
  v15.receiver = self;
  v15.super_class = HUMediaSelectionViewController;
  [(HUItemTableViewController *)&v15 itemManager:manager didUpdateResultsForItem:itemCopy atIndexPath:path];
  mediaSelectionItemManager = [(HUMediaSelectionViewController *)self mediaSelectionItemManager];
  mediaPickerItem = [mediaSelectionItemManager mediaPickerItem];
  if (mediaPickerItem != itemCopy)
  {
    goto LABEL_2;
  }

  latestResults = [itemCopy latestResults];
  v12 = [latestResults objectForKeyedSubscript:@"HOMediaPickerUnavailableReasonKey"];
  if (!v12)
  {

LABEL_2:
    goto LABEL_3;
  }

  v13 = v12;
  presentedViewController = [(HUMediaSelectionViewController *)self presentedViewController];

  if (presentedViewController)
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