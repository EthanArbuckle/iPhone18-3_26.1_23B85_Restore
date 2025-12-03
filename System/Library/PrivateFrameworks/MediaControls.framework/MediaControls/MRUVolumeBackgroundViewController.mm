@interface MRUVolumeBackgroundViewController
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (MRUVolumeBackgroundViewController)initWithAudioModuleController:(id)controller;
- (MRUVolumeBackgroundViewControllerDelegate)delegate;
- (void)audioModuleController:(id)controller listeningModeController:(id)modeController didChangeAvailablePrimaryListeningMode:(id)mode;
- (void)audioModuleController:(id)controller listeningModeController:(id)modeController didChangeAvailableSecondaryListeningModes:(id)modes;
- (void)audioModuleController:(id)controller listeningModeController:(id)modeController didChangePrimaryListeningMode:(id)mode;
- (void)audioModuleController:(id)controller listeningModeController:(id)modeController didChangeSecondaryListeningMode:(id)mode;
- (void)audioModuleController:(id)controller spatialAudioController:(id)audioController didChangeAvailableSpatialModes:(id)modes;
- (void)audioModuleController:(id)controller spatialAudioController:(id)audioController didChangeNowPlayingInfo:(id)info;
- (void)audioModuleController:(id)controller spatialAudioController:(id)audioController didChangeSelectedSpatialMode:(id)mode;
- (void)audioModuleController:(id)controller systemOutputDeviceRouteControllerDidUpdateOutputDeviceProperties:(id)properties;
- (void)audioModuleController:(id)controller systemOutputDeviceRouteControllerDidUpdateOutputDevices:(id)devices;
- (void)collapseExpandableButtons;
- (void)conversationAwarenessButtonDidChangeValue:(id)value;
- (void)didTapPrimaryListeningModeButton:(id)button;
- (void)didTapSecondaryListeningModeButton:(id)button;
- (void)didTapSpatialAudioModeButton:(id)button;
- (void)loadView;
- (void)performLayoutWithAnimation:(id)animation;
- (void)primaryListeningModeButtonDidChangeValue:(id)value;
- (void)secondaryListeningModeButtonDidChangeValue:(id)value;
- (void)setSystemVolumeValue:(float)value;
- (void)spatialAudioModeButtonDidChangeValue:(id)value;
- (void)updateConversationAwarenessButton;
- (void)updateNowPlaying;
- (void)updatePrimaryListeningModeButton;
- (void)updatePrimaryRouteView;
- (void)updateSecondaryListeningModeButton;
- (void)updateSecondaryRouteView;
- (void)updateSpatialAudioModeButton;
- (void)updateVisibility;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MRUVolumeBackgroundViewController

- (void)updateSpatialAudioModeButton
{
  v48 = *MEMORY[0x1E69E9840];
  view = [(MRUVolumeBackgroundViewController *)self view];
  spatialAudioModeButton = [view spatialAudioModeButton];

  spatialAudioController = [(MRUAudioModuleController *)self->_audioModuleController spatialAudioController];
  availableModes = [spatialAudioController availableModes];

  spatialAudioController2 = [(MRUAudioModuleController *)self->_audioModuleController spatialAudioController];
  selectedMode = [spatialAudioController2 selectedMode];

  spatialAudioController3 = [(MRUAudioModuleController *)self->_audioModuleController spatialAudioController];
  selfCopy = self;
  if ([spatialAudioController3 isMultichannel])
  {
    isMultichannelAvailable = 1;
  }

  else
  {
    spatialAudioController4 = [(MRUAudioModuleController *)self->_audioModuleController spatialAudioController];
    isMultichannelAvailable = [spatialAudioController4 isMultichannelAvailable];
  }

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(availableModes, "count")}];
  v36 = selectedMode;
  if (availableModes)
  {
    v35 = [availableModes indexOfObject:selectedMode];
  }

  else
  {
    v35 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v11 = availableModes;
  v12 = [v11 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = v12;
  v14 = *v44;
  if (isMultichannelAvailable)
  {
    v15 = @"SpatialMultichannelHeadTracked";
  }

  else
  {
    v15 = @"SpatialStereoHeadTracked";
  }

  v16 = @"SpatialStereoOn";
  if (isMultichannelAvailable)
  {
    v16 = @"SpatialMultichannelOn";
  }

  v41 = v16;
  v42 = v15;
  v17 = @"SpatialStereoOff";
  if (isMultichannelAvailable)
  {
    v17 = @"SpatialMultichannelOff";
  }

  v40 = v17;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v44 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v19 = *(*(&v43 + 1) + 8 * i);
      v20 = objc_alloc_init(MediaControlsExpandableButtonOption);
      [(MediaControlsExpandableButtonOption *)v20 setIdentifier:v19];
      -[MediaControlsExpandableButtonOption setEnabled:](v20, "setEnabled:", [v19 isEnabled]);
      type = [v19 type];
      switch(type)
      {
        case 2:
          v28 = [MRUAsset packageAssetNamed:v42];
          [(MediaControlsExpandableButtonOption *)v20 setAsset:v28];

          v29 = +[MRUStringsProvider spatialButtonSubtitleHeadTracked];
          [(MediaControlsExpandableButtonOption *)v20 setTitle:v29];

          v26 = v20;
          v27 = @"head-tracked";
          goto LABEL_25;
        case 1:
          v24 = [MRUAsset packageAssetNamed:v41];
          [(MediaControlsExpandableButtonOption *)v20 setAsset:v24];

          v25 = +[MRUStringsProvider spatialButtonSubtitleOn];
          [(MediaControlsExpandableButtonOption *)v20 setTitle:v25];

          v26 = v20;
          v27 = @"animating";
LABEL_25:
          [(MediaControlsExpandableButtonOption *)v26 setSelectedState:v27];
          [(MediaControlsExpandableButtonOption *)v20 setSelectedBackground:2];
          break;
        case 0:
          v22 = [MRUAsset packageAssetNamed:v40];
          [(MediaControlsExpandableButtonOption *)v20 setAsset:v22];

          v23 = +[MRUStringsProvider spatialButtonSubtitleOff];
          [(MediaControlsExpandableButtonOption *)v20 setTitle:v23];

          break;
      }

      [v10 addObject:v20];
    }

    v13 = [v11 countByEnumeratingWithState:&v43 objects:v47 count:16];
  }

  while (v13);
LABEL_28:

  if (isMultichannelAvailable)
  {
    +[MRUStringsProvider spatialButtonTitle];
  }

  else
  {
    +[MRUStringsProvider spatializeStereoButtonTitle];
  }
  v30 = ;
  [spatialAudioModeButton setTitle:v30];

  spatialAudioController5 = [(MRUAudioModuleController *)selfCopy->_audioModuleController spatialAudioController];
  [spatialAudioModeButton setEnabled:{objc_msgSend(spatialAudioController5, "isEnabled")}];

  spatialAudioController6 = [(MRUAudioModuleController *)selfCopy->_audioModuleController spatialAudioController];
  disabledDescription = [spatialAudioController6 disabledDescription];
  [spatialAudioModeButton setDisabledSubtitle:disabledDescription];

  v34 = [v10 copy];
  [spatialAudioModeButton setOptions:v34];

  [spatialAudioModeButton setSelectedOptionIndex:v35 animated:{-[MRUVolumeBackgroundViewController _appearState](selfCopy, "_appearState") == 2}];
}

- (void)updateVisibility
{
  outputDeviceRouteController = [(MRUAudioModuleController *)self->_audioModuleController outputDeviceRouteController];
  isSplitRoute = [outputDeviceRouteController isSplitRoute];
  view = [(MRUVolumeBackgroundViewController *)self view];
  [view setShowSecondaryAssetView:isSplitRoute];

  spatialAudioController = [(MRUAudioModuleController *)self->_audioModuleController spatialAudioController];
  nowPlayingInfo = [spatialAudioController nowPlayingInfo];
  view2 = [(MRUVolumeBackgroundViewController *)self view];
  [view2 setShowNowPlayingView:nowPlayingInfo != 0];

  listeningModeController = [(MRUAudioModuleController *)self->_audioModuleController listeningModeController];
  availablePrimaryListeningModes = [listeningModeController availablePrimaryListeningModes];
  v11 = [availablePrimaryListeningModes count] > 1;
  view3 = [(MRUVolumeBackgroundViewController *)self view];
  [view3 setShowPrimaryListeningModeButton:v11];

  listeningModeController2 = [(MRUAudioModuleController *)self->_audioModuleController listeningModeController];
  availableSecondaryListeningModes = [listeningModeController2 availableSecondaryListeningModes];
  v15 = [availableSecondaryListeningModes count] > 1;
  view4 = [(MRUVolumeBackgroundViewController *)self view];
  [view4 setShowSecondaryListeningModeButton:v15];

  spatialAudioController2 = [(MRUAudioModuleController *)self->_audioModuleController spatialAudioController];
  availableModes = [spatialAudioController2 availableModes];
  v19 = [availableModes count] > 1;
  view5 = [(MRUVolumeBackgroundViewController *)self view];
  [view5 setShowSpatialAudioModeButton:v19];

  conversationAwarenessController = [(MRUAudioModuleController *)self->_audioModuleController conversationAwarenessController];
  isConversationAwarenessSupported = [conversationAwarenessController isConversationAwarenessSupported];
  view6 = [(MRUVolumeBackgroundViewController *)self view];
  [view6 setShowConversationAwarenessButton:isConversationAwarenessSupported];

  hearingServiceController = [(MRUAudioModuleController *)self->_audioModuleController hearingServiceController];
  primaryHearingAidEnabled = [hearingServiceController primaryHearingAidEnabled];
  if (primaryHearingAidEnabled)
  {
    isConversationAwarenessSupported = [(MRUAudioModuleController *)self->_audioModuleController outputDeviceRouteController];
    v25 = [isConversationAwarenessSupported isSplitRoute] ^ 1;
  }

  else
  {
    v25 = 0;
  }

  view7 = [(MRUVolumeBackgroundViewController *)self view];
  [view7 setShowEnvironmentSlider:v25];

  if (primaryHearingAidEnabled)
  {
  }
}

- (void)updateNowPlaying
{
  spatialAudioController = [(MRUAudioModuleController *)self->_audioModuleController spatialAudioController];
  nowPlayingInfo = [spatialAudioController nowPlayingInfo];

  formatDescription = [nowPlayingInfo formatDescription];
  view = [(MRUVolumeBackgroundViewController *)self view];
  nowPlayingView = [view nowPlayingView];
  [nowPlayingView setTitle:formatDescription];

  view2 = [(MRUVolumeBackgroundViewController *)self view];
  [view2 setNeedsLayout];

  v9 = +[MRUAssetsProvider sharedAssetsProvider];
  bundleID = [nowPlayingInfo bundleID];
  view3 = [(MRUVolumeBackgroundViewController *)self view];
  traitCollection = [view3 traitCollection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__MRUVolumeBackgroundViewController_updateNowPlaying__block_invoke;
  v13[3] = &unk_1E7664290;
  v13[4] = self;
  [v9 applicationIconForBundleIdentifier:bundleID traitCollection:traitCollection completion:v13];
}

void __53__MRUVolumeBackgroundViewController_updateNowPlaying__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__MRUVolumeBackgroundViewController_updateNowPlaying__block_invoke_2;
  v5[3] = &unk_1E76639D0;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __53__MRUVolumeBackgroundViewController_updateNowPlaying__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) view];
  v4 = [v3 nowPlayingView];
  [v4 setIcon:v2];

  v5 = [*(a1 + 32) view];
  [v5 setNeedsLayout];
}

- (void)updatePrimaryListeningModeButton
{
  view = [(MRUVolumeBackgroundViewController *)self view];
  primaryListeningModeButton = [view primaryListeningModeButton];

  if (([primaryListeningModeButton isTracking] & 1) == 0)
  {
    listeningModeController = [(MRUAudioModuleController *)self->_audioModuleController listeningModeController];
    availablePrimaryListeningModes = [listeningModeController availablePrimaryListeningModes];

    listeningModeController2 = [(MRUAudioModuleController *)self->_audioModuleController listeningModeController];
    primaryListeningMode = [listeningModeController2 primaryListeningMode];

    [primaryListeningModeButton setAvailableListeningModes:availablePrimaryListeningModes];
    [primaryListeningModeButton setSelectedListeningMode:primaryListeningMode animated:{-[MRUVolumeBackgroundViewController _appearState](self, "_appearState") == 2}];
    v8 = +[MRUStringsProvider listeningModeTitle];
    [primaryListeningModeButton setTitle:v8];
  }
}

- (void)updatePrimaryRouteView
{
  outputDeviceRouteController = [(MRUAudioModuleController *)self->_audioModuleController outputDeviceRouteController];
  isSplitRoute = [outputDeviceRouteController isSplitRoute];

  outputDeviceRouteController2 = [(MRUAudioModuleController *)self->_audioModuleController outputDeviceRouteController];
  v6 = outputDeviceRouteController2;
  if (isSplitRoute)
  {
    primaryOutputDeviceAsset = [outputDeviceRouteController2 primaryOutputDeviceAsset];
    view = [(MRUVolumeBackgroundViewController *)self view];
    primaryAssetView = [view primaryAssetView];
    [primaryAssetView setAsset:primaryOutputDeviceAsset];

    outputDeviceRouteController3 = [(MRUAudioModuleController *)self->_audioModuleController outputDeviceRouteController];
    primaryOutputDeviceRoute = [outputDeviceRouteController3 primaryOutputDeviceRoute];
    routeName = [primaryOutputDeviceRoute routeName];
    view2 = [(MRUVolumeBackgroundViewController *)self view];
    primaryAssetView2 = [view2 primaryAssetView];
    [primaryAssetView2 setTitle:routeName];

    view3 = [(MRUVolumeBackgroundViewController *)self view];
    primaryAssetView3 = [view3 primaryAssetView];
    [primaryAssetView3 setSubtitle:0];
  }

  else
  {
    systemOutputDeviceAssetWithInCall = [outputDeviceRouteController2 systemOutputDeviceAssetWithInCall];
    view4 = [(MRUVolumeBackgroundViewController *)self view];
    primaryAssetView4 = [view4 primaryAssetView];
    [primaryAssetView4 setAsset:systemOutputDeviceAssetWithInCall];

    outputDeviceRouteController4 = [(MRUAudioModuleController *)self->_audioModuleController outputDeviceRouteController];
    systemOutputDeviceRoute = [outputDeviceRouteController4 systemOutputDeviceRoute];
    routeName2 = [systemOutputDeviceRoute routeName];
    view5 = [(MRUVolumeBackgroundViewController *)self view];
    primaryAssetView5 = [view5 primaryAssetView];
    [primaryAssetView5 setTitle:routeName2];

    *&v24 = self->_systemVolumeValue;
    v25 = [MRUSystemVolumeController packageStateForVolumeValue:v24];
    view6 = [(MRUVolumeBackgroundViewController *)self view];
    primaryAssetView6 = [view6 primaryAssetView];
    [primaryAssetView6 setGlyphState:v25];

    view3 = [(MRUAudioModuleController *)self->_audioModuleController outputDeviceRouteController];
    isPrimaryOutputDeviceAlternateTransportTypeUSBC = [view3 isPrimaryOutputDeviceAlternateTransportTypeUSBC];
    if (isPrimaryOutputDeviceAlternateTransportTypeUSBC)
    {
      primaryAssetView3 = +[MRUStringsProvider unavailableWhenNotBluetooth];
    }

    else
    {
      primaryAssetView3 = 0;
    }

    view7 = [(MRUVolumeBackgroundViewController *)self view];
    primaryAssetView7 = [view7 primaryAssetView];
    [primaryAssetView7 setSubtitle:primaryAssetView3];

    if (!isPrimaryOutputDeviceAlternateTransportTypeUSBC)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
}

- (void)updateSecondaryRouteView
{
  outputDeviceRouteController = [(MRUAudioModuleController *)self->_audioModuleController outputDeviceRouteController];
  secondaryOutputDeviceAsset = [outputDeviceRouteController secondaryOutputDeviceAsset];
  view = [(MRUVolumeBackgroundViewController *)self view];
  secondaryAssetView = [view secondaryAssetView];
  [secondaryAssetView setAsset:secondaryOutputDeviceAsset];

  outputDeviceRouteController2 = [(MRUAudioModuleController *)self->_audioModuleController outputDeviceRouteController];
  secondaryOutputDeviceRoute = [outputDeviceRouteController2 secondaryOutputDeviceRoute];
  routeName = [secondaryOutputDeviceRoute routeName];
  view2 = [(MRUVolumeBackgroundViewController *)self view];
  secondaryAssetView2 = [view2 secondaryAssetView];
  [secondaryAssetView2 setTitle:routeName];
}

- (void)updateSecondaryListeningModeButton
{
  view = [(MRUVolumeBackgroundViewController *)self view];
  secondaryListeningModeButton = [view secondaryListeningModeButton];

  if (([secondaryListeningModeButton isTracking] & 1) == 0)
  {
    listeningModeController = [(MRUAudioModuleController *)self->_audioModuleController listeningModeController];
    availableSecondaryListeningModes = [listeningModeController availableSecondaryListeningModes];

    listeningModeController2 = [(MRUAudioModuleController *)self->_audioModuleController listeningModeController];
    secondaryListeningMode = [listeningModeController2 secondaryListeningMode];

    [secondaryListeningModeButton setAvailableListeningModes:availableSecondaryListeningModes];
    [secondaryListeningModeButton setSelectedListeningMode:secondaryListeningMode animated:{-[MRUVolumeBackgroundViewController _appearState](self, "_appearState") == 2}];
    v8 = +[MRUStringsProvider listeningModeTitle];
    [secondaryListeningModeButton setTitle:v8];
  }
}

- (MRUVolumeBackgroundViewController)initWithAudioModuleController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = MRUVolumeBackgroundViewController;
  v6 = [(MRUVolumeBackgroundViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_audioModuleController, controller);
  }

  return v7;
}

- (void)loadView
{
  v3 = [MRUVolumeBackgroundView alloc];
  v4 = [(MRUVolumeBackgroundView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(MRUVolumeBackgroundViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = MRUVolumeBackgroundViewController;
  [(MRUVolumeBackgroundViewController *)&v22 viewDidLoad];
  [(MRUVolumeBackgroundViewController *)self setOverrideUserInterfaceStyle:2];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  volumeBackgroundViewControllerStylingProvider = [WeakRetained volumeBackgroundViewControllerStylingProvider];
  view = [(MRUVolumeBackgroundViewController *)self view];
  [view setStylingProvider:volumeBackgroundViewControllerStylingProvider];

  view2 = [(MRUVolumeBackgroundViewController *)self view];
  primaryListeningModeButton = [view2 primaryListeningModeButton];
  [primaryListeningModeButton addTarget:self action:sel_didTapPrimaryListeningModeButton_ forControlEvents:64];

  view3 = [(MRUVolumeBackgroundViewController *)self view];
  primaryListeningModeButton2 = [view3 primaryListeningModeButton];
  [primaryListeningModeButton2 addTarget:self action:sel_primaryListeningModeButtonDidChangeValue_ forControlEvents:4096];

  view4 = [(MRUVolumeBackgroundViewController *)self view];
  secondaryListeningModeButton = [view4 secondaryListeningModeButton];
  [secondaryListeningModeButton addTarget:self action:sel_didTapSecondaryListeningModeButton_ forControlEvents:64];

  view5 = [(MRUVolumeBackgroundViewController *)self view];
  secondaryListeningModeButton2 = [view5 secondaryListeningModeButton];
  [secondaryListeningModeButton2 addTarget:self action:sel_secondaryListeningModeButtonDidChangeValue_ forControlEvents:4096];

  view6 = [(MRUVolumeBackgroundViewController *)self view];
  spatialAudioModeButton = [view6 spatialAudioModeButton];
  [spatialAudioModeButton addTarget:self action:sel_didTapSpatialAudioModeButton_ forControlEvents:64];

  view7 = [(MRUVolumeBackgroundViewController *)self view];
  spatialAudioModeButton2 = [view7 spatialAudioModeButton];
  [spatialAudioModeButton2 addTarget:self action:sel_spatialAudioModeButtonDidChangeValue_ forControlEvents:4096];

  view8 = [(MRUVolumeBackgroundViewController *)self view];
  conversationAwarenessButton = [view8 conversationAwarenessButton];
  [conversationAwarenessButton addTarget:self action:sel_conversationAwarenessButtonDidChangeValue_ forControlEvents:4096];

  v20 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_collapseExpandableButtons];
  [v20 setDelegate:self];
  view9 = [(MRUVolumeBackgroundViewController *)self view];
  [view9 addGestureRecognizer:v20];

  [(MRUAudioModuleController *)self->_audioModuleController addObserver:self];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = MRUVolumeBackgroundViewController;
  [(MRUVolumeBackgroundViewController *)&v6 viewWillAppear:appear];
  audioModuleController = [(MRUVolumeBackgroundViewController *)self audioModuleController];
  spatialAudioController = [audioModuleController spatialAudioController];
  [spatialAudioController startMonitoring];

  [(MRUVolumeBackgroundViewController *)self updatePrimaryRouteView];
  [(MRUVolumeBackgroundViewController *)self updateSecondaryRouteView];
  [(MRUVolumeBackgroundViewController *)self updatePrimaryListeningModeButton];
  [(MRUVolumeBackgroundViewController *)self updateSecondaryListeningModeButton];
  [(MRUVolumeBackgroundViewController *)self updateSpatialAudioModeButton];
  [(MRUVolumeBackgroundViewController *)self updateNowPlaying];
  [(MRUVolumeBackgroundViewController *)self updateConversationAwarenessButton];
  [(MRUVolumeBackgroundViewController *)self updateVisibility];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = MRUVolumeBackgroundViewController;
  [(MRUVolumeBackgroundViewController *)&v6 viewDidDisappear:disappear];
  [(MRUVolumeBackgroundViewController *)self collapseExpandableButtons];
  audioModuleController = [(MRUVolumeBackgroundViewController *)self audioModuleController];
  spatialAudioController = [audioModuleController spatialAudioController];
  [spatialAudioController stopMonitoring];
}

- (void)setSystemVolumeValue:(float)value
{
  self->_systemVolumeValue = value;
  outputDeviceRouteController = [(MRUAudioModuleController *)self->_audioModuleController outputDeviceRouteController];
  isSplitRoute = [outputDeviceRouteController isSplitRoute];

  if ((isSplitRoute & 1) == 0)
  {
    *&v7 = value;
    v10 = [MRUSystemVolumeController packageStateForVolumeValue:v7];
    view = [(MRUVolumeBackgroundViewController *)self view];
    primaryAssetView = [view primaryAssetView];
    [primaryAssetView setGlyphState:v10];
  }
}

- (void)didTapPrimaryListeningModeButton:(id)button
{
  buttonCopy = button;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__MRUVolumeBackgroundViewController_didTapPrimaryListeningModeButton___block_invoke;
  v6[3] = &unk_1E76639D0;
  v6[4] = self;
  v7 = buttonCopy;
  v5 = buttonCopy;
  [(MRUVolumeBackgroundViewController *)self performLayoutWithAnimation:v6];
}

void __70__MRUVolumeBackgroundViewController_didTapPrimaryListeningModeButton___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 expandButton:*(a1 + 40)];

  v3 = [*(a1 + 32) delegate];
  [v3 volumeBackgroundViewController:*(a1 + 32) didUpdateSecondaryInteractionEnabled:0];
}

- (void)primaryListeningModeButtonDidChangeValue:(id)value
{
  valueCopy = value;
  listeningModeController = [(MRUAudioModuleController *)self->_audioModuleController listeningModeController];
  primaryListeningMode = [listeningModeController primaryListeningMode];

  selectedOption = [valueCopy selectedOption];
  identifier = [selectedOption identifier];

  listeningModeController2 = [(MRUAudioModuleController *)self->_audioModuleController listeningModeController];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__MRUVolumeBackgroundViewController_primaryListeningModeButtonDidChangeValue___block_invoke;
  v12[3] = &unk_1E7664440;
  v13 = valueCopy;
  v14 = primaryListeningMode;
  v10 = primaryListeningMode;
  v11 = valueCopy;
  [listeningModeController2 setPrimaryListeningMode:identifier completion:v12];
}

void __78__MRUVolumeBackgroundViewController_primaryListeningModeButtonDidChangeValue___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = v5;
  if (a2)
  {
    [v6 playValueChangedEventHaptic];
  }

  else
  {
    [v6 playFailedValueChangedEventHapticWithMessage:v5];
    if (([*(a1 + 32) isTracking] & 1) == 0)
    {
      [*(a1 + 32) setSelectedListeningMode:*(a1 + 40) animated:1];
    }
  }
}

- (void)didTapSecondaryListeningModeButton:(id)button
{
  buttonCopy = button;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__MRUVolumeBackgroundViewController_didTapSecondaryListeningModeButton___block_invoke;
  v6[3] = &unk_1E76639D0;
  v6[4] = self;
  v7 = buttonCopy;
  v5 = buttonCopy;
  [(MRUVolumeBackgroundViewController *)self performLayoutWithAnimation:v6];
}

void __72__MRUVolumeBackgroundViewController_didTapSecondaryListeningModeButton___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 expandButton:*(a1 + 40)];

  v3 = [*(a1 + 32) delegate];
  [v3 volumeBackgroundViewController:*(a1 + 32) didUpdatePrimaryInteractionEnabled:0];
}

- (void)secondaryListeningModeButtonDidChangeValue:(id)value
{
  valueCopy = value;
  listeningModeController = [(MRUAudioModuleController *)self->_audioModuleController listeningModeController];
  secondaryListeningMode = [listeningModeController secondaryListeningMode];

  selectedOption = [valueCopy selectedOption];
  identifier = [selectedOption identifier];

  listeningModeController2 = [(MRUAudioModuleController *)self->_audioModuleController listeningModeController];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__MRUVolumeBackgroundViewController_secondaryListeningModeButtonDidChangeValue___block_invoke;
  v12[3] = &unk_1E7664440;
  v13 = valueCopy;
  v14 = secondaryListeningMode;
  v10 = secondaryListeningMode;
  v11 = valueCopy;
  [listeningModeController2 setSecondaryListeningMode:identifier completion:v12];
}

void __80__MRUVolumeBackgroundViewController_secondaryListeningModeButtonDidChangeValue___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = v5;
  if (a2)
  {
    [v6 playValueChangedEventHaptic];
  }

  else
  {
    [v6 playFailedValueChangedEventHapticWithMessage:v5];
    if (([*(a1 + 32) isTracking] & 1) == 0)
    {
      [*(a1 + 32) setSelectedListeningMode:*(a1 + 40) animated:1];
    }
  }
}

- (void)didTapSpatialAudioModeButton:(id)button
{
  buttonCopy = button;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__MRUVolumeBackgroundViewController_didTapSpatialAudioModeButton___block_invoke;
  v6[3] = &unk_1E76639D0;
  v6[4] = self;
  v7 = buttonCopy;
  v5 = buttonCopy;
  [(MRUVolumeBackgroundViewController *)self performLayoutWithAnimation:v6];
}

void __66__MRUVolumeBackgroundViewController_didTapSpatialAudioModeButton___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 expandButton:*(a1 + 40)];
}

- (void)spatialAudioModeButtonDidChangeValue:(id)value
{
  v22[2] = *MEMORY[0x1E69E9840];
  audioModuleController = self->_audioModuleController;
  valueCopy = value;
  spatialAudioController = [(MRUAudioModuleController *)audioModuleController spatialAudioController];
  selectedMode = [spatialAudioController selectedMode];

  selectedOption = [valueCopy selectedOption];
  identifier = [selectedOption identifier];

  spatialAudioController2 = [(MRUAudioModuleController *)self->_audioModuleController spatialAudioController];
  [spatialAudioController2 setSelectedMode:identifier];

  [valueCopy playValueChangedEventHaptic];
  v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  v12 = [selectedMode description];
  [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x1E69B0B98]];

  v13 = [identifier description];
  [v11 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69B0B88]];

  v14 = +[MRUSystemOutputDeviceRouteController outputContextDescription];
  [v11 setObject:v14 forKeyedSubscript:*MEMORY[0x1E69B0B90]];

  v19 = MEMORY[0x1E69E9820];
  v20 = v11;
  v15 = v11;
  MRAnalyticsSendEvent();
  v16 = MEMORY[0x1E69E4FF0];
  v21[0] = MRUVolumeCARSpatialAudioClientKey;
  v21[1] = MRUVolumeCARSpatialAudioKey;
  v22[0] = MRUVolumeCARSpatialAudioClientValue;
  v17 = [identifier description];
  v22[1] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  [v16 sendSingleMessage:v18 category:8 type:5];
}

- (void)conversationAwarenessButtonDidChangeValue:(id)value
{
  valueCopy = value;
  v5 = [valueCopy selectedOptionIndex] != 0;
  conversationAwarenessController = [(MRUAudioModuleController *)self->_audioModuleController conversationAwarenessController];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__MRUVolumeBackgroundViewController_conversationAwarenessButtonDidChangeValue___block_invoke;
  v8[3] = &unk_1E7664468;
  v9 = valueCopy;
  v7 = valueCopy;
  [conversationAwarenessController setConversationAwarenessEnabled:v5 completion:v8];
}

uint64_t __79__MRUVolumeBackgroundViewController_conversationAwarenessButtonDidChangeValue___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {

    return [v3 playFailedValueChangedEventHapticWithMessage:a2];
  }

  else
  {
    result = [v3 isTracking];
    if (result)
    {
      v5 = *(a1 + 32);

      return [v5 playValueChangedEventHaptic];
    }
  }

  return result;
}

- (void)audioModuleController:(id)controller systemOutputDeviceRouteControllerDidUpdateOutputDevices:(id)devices
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __115__MRUVolumeBackgroundViewController_audioModuleController_systemOutputDeviceRouteControllerDidUpdateOutputDevices___block_invoke;
  v4[3] = &unk_1E7663898;
  v4[4] = self;
  [(MRUVolumeBackgroundViewController *)self performLayoutWithAnimation:v4, devices];
}

- (void)audioModuleController:(id)controller systemOutputDeviceRouteControllerDidUpdateOutputDeviceProperties:(id)properties
{
  [(MRUVolumeBackgroundViewController *)self updatePrimaryRouteView:controller];
  [(MRUVolumeBackgroundViewController *)self updateSecondaryRouteView];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __124__MRUVolumeBackgroundViewController_audioModuleController_systemOutputDeviceRouteControllerDidUpdateOutputDeviceProperties___block_invoke;
  v5[3] = &unk_1E7663898;
  v5[4] = self;
  [(MRUVolumeBackgroundViewController *)self performLayoutWithAnimation:v5];
}

- (void)audioModuleController:(id)controller listeningModeController:(id)modeController didChangeAvailablePrimaryListeningMode:(id)mode
{
  [(MRUVolumeBackgroundViewController *)self updatePrimaryListeningModeButton:controller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __122__MRUVolumeBackgroundViewController_audioModuleController_listeningModeController_didChangeAvailablePrimaryListeningMode___block_invoke;
  v6[3] = &unk_1E7663898;
  v6[4] = self;
  [(MRUVolumeBackgroundViewController *)self performLayoutWithAnimation:v6];
}

- (void)audioModuleController:(id)controller listeningModeController:(id)modeController didChangePrimaryListeningMode:(id)mode
{
  [(MRUVolumeBackgroundViewController *)self updatePrimaryListeningModeButton:controller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __113__MRUVolumeBackgroundViewController_audioModuleController_listeningModeController_didChangePrimaryListeningMode___block_invoke;
  v6[3] = &unk_1E7663898;
  v6[4] = self;
  [(MRUVolumeBackgroundViewController *)self performLayoutWithAnimation:v6];
}

- (void)audioModuleController:(id)controller listeningModeController:(id)modeController didChangeAvailableSecondaryListeningModes:(id)modes
{
  [(MRUVolumeBackgroundViewController *)self updateSecondaryListeningModeButton:controller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __125__MRUVolumeBackgroundViewController_audioModuleController_listeningModeController_didChangeAvailableSecondaryListeningModes___block_invoke;
  v6[3] = &unk_1E7663898;
  v6[4] = self;
  [(MRUVolumeBackgroundViewController *)self performLayoutWithAnimation:v6];
}

- (void)audioModuleController:(id)controller listeningModeController:(id)modeController didChangeSecondaryListeningMode:(id)mode
{
  [(MRUVolumeBackgroundViewController *)self updateSecondaryListeningModeButton:controller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __115__MRUVolumeBackgroundViewController_audioModuleController_listeningModeController_didChangeSecondaryListeningMode___block_invoke;
  v6[3] = &unk_1E7663898;
  v6[4] = self;
  [(MRUVolumeBackgroundViewController *)self performLayoutWithAnimation:v6];
}

- (void)audioModuleController:(id)controller spatialAudioController:(id)audioController didChangeAvailableSpatialModes:(id)modes
{
  [(MRUVolumeBackgroundViewController *)self updateSpatialAudioModeButton:controller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __113__MRUVolumeBackgroundViewController_audioModuleController_spatialAudioController_didChangeAvailableSpatialModes___block_invoke;
  v6[3] = &unk_1E7663898;
  v6[4] = self;
  [(MRUVolumeBackgroundViewController *)self performLayoutWithAnimation:v6];
}

- (void)audioModuleController:(id)controller spatialAudioController:(id)audioController didChangeSelectedSpatialMode:(id)mode
{
  v6 = [(MRUVolumeBackgroundViewController *)self view:controller];
  spatialAudioModeButton = [v6 spatialAudioModeButton];
  isTracking = [spatialAudioModeButton isTracking];

  if ((isTracking & 1) == 0)
  {

    [(MRUVolumeBackgroundViewController *)self updateSpatialAudioModeButton];
  }
}

- (void)audioModuleController:(id)controller spatialAudioController:(id)audioController didChangeNowPlayingInfo:(id)info
{
  [(MRUVolumeBackgroundViewController *)self updateNowPlaying:controller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __106__MRUVolumeBackgroundViewController_audioModuleController_spatialAudioController_didChangeNowPlayingInfo___block_invoke;
  v6[3] = &unk_1E7663898;
  v6[4] = self;
  [(MRUVolumeBackgroundViewController *)self performLayoutWithAnimation:v6];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  view = [(MRUVolumeBackgroundViewController *)self view];
  hasExpandedButtons = [view hasExpandedButtons];

  return hasExpandedButtons;
}

- (void)collapseExpandableButtons
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __62__MRUVolumeBackgroundViewController_collapseExpandableButtons__block_invoke;
  v2[3] = &unk_1E7663898;
  v2[4] = self;
  [(MRUVolumeBackgroundViewController *)self performLayoutWithAnimation:v2];
}

void __62__MRUVolumeBackgroundViewController_collapseExpandableButtons__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 collapseExpandableButtons];

  v3 = [*(a1 + 32) delegate];
  [v3 volumeBackgroundViewController:*(a1 + 32) didUpdateSecondaryInteractionEnabled:1];
  [v3 volumeBackgroundViewController:*(a1 + 32) didUpdatePrimaryInteractionEnabled:1];
}

- (void)updateConversationAwarenessButton
{
  v14[2] = *MEMORY[0x1E69E9840];
  view = [(MRUVolumeBackgroundViewController *)self view];
  conversationAwarenessButton = [view conversationAwarenessButton];

  conversationAwarenessController = [(MRUAudioModuleController *)self->_audioModuleController conversationAwarenessController];
  LODWORD(view) = [conversationAwarenessController isConversationAwarenessEnabled];

  v6 = objc_alloc_init(MediaControlsExpandableButtonOption);
  v7 = [MRUAsset symbolNamed:@"person.wave.2.fill"];
  [(MediaControlsExpandableButtonOption *)v6 setAsset:v7];

  v8 = +[MRUStringsProvider conversationAwarenessOff];
  [(MediaControlsExpandableButtonOption *)v6 setTitle:v8];

  v9 = objc_alloc_init(MediaControlsExpandableButtonOption);
  v10 = [MRUAsset symbolNamed:@"person.wave.2.fill"];
  [(MediaControlsExpandableButtonOption *)v9 setAsset:v10];

  [(MediaControlsExpandableButtonOption *)v9 setSelectedState:@"On"];
  v11 = +[MRUStringsProvider conversationAwarenessOn];
  [(MediaControlsExpandableButtonOption *)v9 setTitle:v11];

  [(MediaControlsExpandableButtonOption *)v9 setSelectedBackground:2];
  v12 = +[MRUStringsProvider conversationAwarenessTitle];
  [conversationAwarenessButton setTitle:v12];

  v14[0] = v6;
  v14[1] = v9;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [conversationAwarenessButton setOptions:v13];

  [conversationAwarenessButton setSelectedOptionIndex:view];
}

- (void)performLayoutWithAnimation:(id)animation
{
  animationCopy = animation;
  v5 = MEMORY[0x1E6997258];
  view = [(MRUVolumeBackgroundViewController *)self view];
  window = [view window];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__MRUVolumeBackgroundViewController_performLayoutWithAnimation___block_invoke;
  v9[3] = &unk_1E7664490;
  v9[4] = self;
  v10 = animationCopy;
  v8 = animationCopy;
  [v5 performWithoutAnimationWhileHiddenInWindow:window actions:v9];
}

void __64__MRUVolumeBackgroundViewController_performLayoutWithAnimation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setNeedsLayout];

  v3 = MEMORY[0x1E69DD250];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__MRUVolumeBackgroundViewController_performLayoutWithAnimation___block_invoke_2;
  v5[3] = &unk_1E7663FD8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 mru_animateUsingType:1 animations:v5 completion:0];
}

void __64__MRUVolumeBackgroundViewController_performLayoutWithAnimation___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
}

- (MRUVolumeBackgroundViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end