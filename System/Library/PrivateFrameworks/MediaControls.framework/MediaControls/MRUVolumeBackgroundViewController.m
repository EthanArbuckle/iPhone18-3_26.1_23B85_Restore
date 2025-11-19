@interface MRUVolumeBackgroundViewController
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (MRUVolumeBackgroundViewController)initWithAudioModuleController:(id)a3;
- (MRUVolumeBackgroundViewControllerDelegate)delegate;
- (void)audioModuleController:(id)a3 listeningModeController:(id)a4 didChangeAvailablePrimaryListeningMode:(id)a5;
- (void)audioModuleController:(id)a3 listeningModeController:(id)a4 didChangeAvailableSecondaryListeningModes:(id)a5;
- (void)audioModuleController:(id)a3 listeningModeController:(id)a4 didChangePrimaryListeningMode:(id)a5;
- (void)audioModuleController:(id)a3 listeningModeController:(id)a4 didChangeSecondaryListeningMode:(id)a5;
- (void)audioModuleController:(id)a3 spatialAudioController:(id)a4 didChangeAvailableSpatialModes:(id)a5;
- (void)audioModuleController:(id)a3 spatialAudioController:(id)a4 didChangeNowPlayingInfo:(id)a5;
- (void)audioModuleController:(id)a3 spatialAudioController:(id)a4 didChangeSelectedSpatialMode:(id)a5;
- (void)audioModuleController:(id)a3 systemOutputDeviceRouteControllerDidUpdateOutputDeviceProperties:(id)a4;
- (void)audioModuleController:(id)a3 systemOutputDeviceRouteControllerDidUpdateOutputDevices:(id)a4;
- (void)collapseExpandableButtons;
- (void)conversationAwarenessButtonDidChangeValue:(id)a3;
- (void)didTapPrimaryListeningModeButton:(id)a3;
- (void)didTapSecondaryListeningModeButton:(id)a3;
- (void)didTapSpatialAudioModeButton:(id)a3;
- (void)loadView;
- (void)performLayoutWithAnimation:(id)a3;
- (void)primaryListeningModeButtonDidChangeValue:(id)a3;
- (void)secondaryListeningModeButtonDidChangeValue:(id)a3;
- (void)setSystemVolumeValue:(float)a3;
- (void)spatialAudioModeButtonDidChangeValue:(id)a3;
- (void)updateConversationAwarenessButton;
- (void)updateNowPlaying;
- (void)updatePrimaryListeningModeButton;
- (void)updatePrimaryRouteView;
- (void)updateSecondaryListeningModeButton;
- (void)updateSecondaryRouteView;
- (void)updateSpatialAudioModeButton;
- (void)updateVisibility;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation MRUVolumeBackgroundViewController

- (void)updateSpatialAudioModeButton
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = [(MRUVolumeBackgroundViewController *)self view];
  v38 = [v3 spatialAudioModeButton];

  v4 = [(MRUAudioModuleController *)self->_audioModuleController spatialAudioController];
  v5 = [v4 availableModes];

  v6 = [(MRUAudioModuleController *)self->_audioModuleController spatialAudioController];
  v7 = [v6 selectedMode];

  v8 = [(MRUAudioModuleController *)self->_audioModuleController spatialAudioController];
  v37 = self;
  if ([v8 isMultichannel])
  {
    v39 = 1;
  }

  else
  {
    v9 = [(MRUAudioModuleController *)self->_audioModuleController spatialAudioController];
    v39 = [v9 isMultichannelAvailable];
  }

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v36 = v7;
  if (v5)
  {
    v35 = [v5 indexOfObject:v7];
  }

  else
  {
    v35 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = v12;
  v14 = *v44;
  if (v39)
  {
    v15 = @"SpatialMultichannelHeadTracked";
  }

  else
  {
    v15 = @"SpatialStereoHeadTracked";
  }

  v16 = @"SpatialStereoOn";
  if (v39)
  {
    v16 = @"SpatialMultichannelOn";
  }

  v41 = v16;
  v42 = v15;
  v17 = @"SpatialStereoOff";
  if (v39)
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
      v21 = [v19 type];
      switch(v21)
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

  if (v39)
  {
    +[MRUStringsProvider spatialButtonTitle];
  }

  else
  {
    +[MRUStringsProvider spatializeStereoButtonTitle];
  }
  v30 = ;
  [v38 setTitle:v30];

  v31 = [(MRUAudioModuleController *)v37->_audioModuleController spatialAudioController];
  [v38 setEnabled:{objc_msgSend(v31, "isEnabled")}];

  v32 = [(MRUAudioModuleController *)v37->_audioModuleController spatialAudioController];
  v33 = [v32 disabledDescription];
  [v38 setDisabledSubtitle:v33];

  v34 = [v10 copy];
  [v38 setOptions:v34];

  [v38 setSelectedOptionIndex:v35 animated:{-[MRUVolumeBackgroundViewController _appearState](v37, "_appearState") == 2}];
}

- (void)updateVisibility
{
  v3 = [(MRUAudioModuleController *)self->_audioModuleController outputDeviceRouteController];
  v4 = [v3 isSplitRoute];
  v5 = [(MRUVolumeBackgroundViewController *)self view];
  [v5 setShowSecondaryAssetView:v4];

  v6 = [(MRUAudioModuleController *)self->_audioModuleController spatialAudioController];
  v7 = [v6 nowPlayingInfo];
  v8 = [(MRUVolumeBackgroundViewController *)self view];
  [v8 setShowNowPlayingView:v7 != 0];

  v9 = [(MRUAudioModuleController *)self->_audioModuleController listeningModeController];
  v10 = [v9 availablePrimaryListeningModes];
  v11 = [v10 count] > 1;
  v12 = [(MRUVolumeBackgroundViewController *)self view];
  [v12 setShowPrimaryListeningModeButton:v11];

  v13 = [(MRUAudioModuleController *)self->_audioModuleController listeningModeController];
  v14 = [v13 availableSecondaryListeningModes];
  v15 = [v14 count] > 1;
  v16 = [(MRUVolumeBackgroundViewController *)self view];
  [v16 setShowSecondaryListeningModeButton:v15];

  v17 = [(MRUAudioModuleController *)self->_audioModuleController spatialAudioController];
  v18 = [v17 availableModes];
  v19 = [v18 count] > 1;
  v20 = [(MRUVolumeBackgroundViewController *)self view];
  [v20 setShowSpatialAudioModeButton:v19];

  v21 = [(MRUAudioModuleController *)self->_audioModuleController conversationAwarenessController];
  v22 = [v21 isConversationAwarenessSupported];
  v23 = [(MRUVolumeBackgroundViewController *)self view];
  [v23 setShowConversationAwarenessButton:v22];

  v27 = [(MRUAudioModuleController *)self->_audioModuleController hearingServiceController];
  v24 = [v27 primaryHearingAidEnabled];
  if (v24)
  {
    v22 = [(MRUAudioModuleController *)self->_audioModuleController outputDeviceRouteController];
    v25 = [v22 isSplitRoute] ^ 1;
  }

  else
  {
    v25 = 0;
  }

  v26 = [(MRUVolumeBackgroundViewController *)self view];
  [v26 setShowEnvironmentSlider:v25];

  if (v24)
  {
  }
}

- (void)updateNowPlaying
{
  v3 = [(MRUAudioModuleController *)self->_audioModuleController spatialAudioController];
  v4 = [v3 nowPlayingInfo];

  v5 = [v4 formatDescription];
  v6 = [(MRUVolumeBackgroundViewController *)self view];
  v7 = [v6 nowPlayingView];
  [v7 setTitle:v5];

  v8 = [(MRUVolumeBackgroundViewController *)self view];
  [v8 setNeedsLayout];

  v9 = +[MRUAssetsProvider sharedAssetsProvider];
  v10 = [v4 bundleID];
  v11 = [(MRUVolumeBackgroundViewController *)self view];
  v12 = [v11 traitCollection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__MRUVolumeBackgroundViewController_updateNowPlaying__block_invoke;
  v13[3] = &unk_1E7664290;
  v13[4] = self;
  [v9 applicationIconForBundleIdentifier:v10 traitCollection:v12 completion:v13];
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
  v3 = [(MRUVolumeBackgroundViewController *)self view];
  v9 = [v3 primaryListeningModeButton];

  if (([v9 isTracking] & 1) == 0)
  {
    v4 = [(MRUAudioModuleController *)self->_audioModuleController listeningModeController];
    v5 = [v4 availablePrimaryListeningModes];

    v6 = [(MRUAudioModuleController *)self->_audioModuleController listeningModeController];
    v7 = [v6 primaryListeningMode];

    [v9 setAvailableListeningModes:v5];
    [v9 setSelectedListeningMode:v7 animated:{-[MRUVolumeBackgroundViewController _appearState](self, "_appearState") == 2}];
    v8 = +[MRUStringsProvider listeningModeTitle];
    [v9 setTitle:v8];
  }
}

- (void)updatePrimaryRouteView
{
  v3 = [(MRUAudioModuleController *)self->_audioModuleController outputDeviceRouteController];
  v4 = [v3 isSplitRoute];

  v5 = [(MRUAudioModuleController *)self->_audioModuleController outputDeviceRouteController];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 primaryOutputDeviceAsset];
    v8 = [(MRUVolumeBackgroundViewController *)self view];
    v9 = [v8 primaryAssetView];
    [v9 setAsset:v7];

    v10 = [(MRUAudioModuleController *)self->_audioModuleController outputDeviceRouteController];
    v11 = [v10 primaryOutputDeviceRoute];
    v12 = [v11 routeName];
    v13 = [(MRUVolumeBackgroundViewController *)self view];
    v14 = [v13 primaryAssetView];
    [v14 setTitle:v12];

    v31 = [(MRUVolumeBackgroundViewController *)self view];
    v15 = [v31 primaryAssetView];
    [v15 setSubtitle:0];
  }

  else
  {
    v16 = [v5 systemOutputDeviceAssetWithInCall];
    v17 = [(MRUVolumeBackgroundViewController *)self view];
    v18 = [v17 primaryAssetView];
    [v18 setAsset:v16];

    v19 = [(MRUAudioModuleController *)self->_audioModuleController outputDeviceRouteController];
    v20 = [v19 systemOutputDeviceRoute];
    v21 = [v20 routeName];
    v22 = [(MRUVolumeBackgroundViewController *)self view];
    v23 = [v22 primaryAssetView];
    [v23 setTitle:v21];

    *&v24 = self->_systemVolumeValue;
    v25 = [MRUSystemVolumeController packageStateForVolumeValue:v24];
    v26 = [(MRUVolumeBackgroundViewController *)self view];
    v27 = [v26 primaryAssetView];
    [v27 setGlyphState:v25];

    v31 = [(MRUAudioModuleController *)self->_audioModuleController outputDeviceRouteController];
    v28 = [v31 isPrimaryOutputDeviceAlternateTransportTypeUSBC];
    if (v28)
    {
      v15 = +[MRUStringsProvider unavailableWhenNotBluetooth];
    }

    else
    {
      v15 = 0;
    }

    v29 = [(MRUVolumeBackgroundViewController *)self view];
    v30 = [v29 primaryAssetView];
    [v30 setSubtitle:v15];

    if (!v28)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
}

- (void)updateSecondaryRouteView
{
  v3 = [(MRUAudioModuleController *)self->_audioModuleController outputDeviceRouteController];
  v4 = [v3 secondaryOutputDeviceAsset];
  v5 = [(MRUVolumeBackgroundViewController *)self view];
  v6 = [v5 secondaryAssetView];
  [v6 setAsset:v4];

  v11 = [(MRUAudioModuleController *)self->_audioModuleController outputDeviceRouteController];
  v7 = [v11 secondaryOutputDeviceRoute];
  v8 = [v7 routeName];
  v9 = [(MRUVolumeBackgroundViewController *)self view];
  v10 = [v9 secondaryAssetView];
  [v10 setTitle:v8];
}

- (void)updateSecondaryListeningModeButton
{
  v3 = [(MRUVolumeBackgroundViewController *)self view];
  v9 = [v3 secondaryListeningModeButton];

  if (([v9 isTracking] & 1) == 0)
  {
    v4 = [(MRUAudioModuleController *)self->_audioModuleController listeningModeController];
    v5 = [v4 availableSecondaryListeningModes];

    v6 = [(MRUAudioModuleController *)self->_audioModuleController listeningModeController];
    v7 = [v6 secondaryListeningMode];

    [v9 setAvailableListeningModes:v5];
    [v9 setSelectedListeningMode:v7 animated:{-[MRUVolumeBackgroundViewController _appearState](self, "_appearState") == 2}];
    v8 = +[MRUStringsProvider listeningModeTitle];
    [v9 setTitle:v8];
  }
}

- (MRUVolumeBackgroundViewController)initWithAudioModuleController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MRUVolumeBackgroundViewController;
  v6 = [(MRUVolumeBackgroundViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_audioModuleController, a3);
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
  v4 = [WeakRetained volumeBackgroundViewControllerStylingProvider];
  v5 = [(MRUVolumeBackgroundViewController *)self view];
  [v5 setStylingProvider:v4];

  v6 = [(MRUVolumeBackgroundViewController *)self view];
  v7 = [v6 primaryListeningModeButton];
  [v7 addTarget:self action:sel_didTapPrimaryListeningModeButton_ forControlEvents:64];

  v8 = [(MRUVolumeBackgroundViewController *)self view];
  v9 = [v8 primaryListeningModeButton];
  [v9 addTarget:self action:sel_primaryListeningModeButtonDidChangeValue_ forControlEvents:4096];

  v10 = [(MRUVolumeBackgroundViewController *)self view];
  v11 = [v10 secondaryListeningModeButton];
  [v11 addTarget:self action:sel_didTapSecondaryListeningModeButton_ forControlEvents:64];

  v12 = [(MRUVolumeBackgroundViewController *)self view];
  v13 = [v12 secondaryListeningModeButton];
  [v13 addTarget:self action:sel_secondaryListeningModeButtonDidChangeValue_ forControlEvents:4096];

  v14 = [(MRUVolumeBackgroundViewController *)self view];
  v15 = [v14 spatialAudioModeButton];
  [v15 addTarget:self action:sel_didTapSpatialAudioModeButton_ forControlEvents:64];

  v16 = [(MRUVolumeBackgroundViewController *)self view];
  v17 = [v16 spatialAudioModeButton];
  [v17 addTarget:self action:sel_spatialAudioModeButtonDidChangeValue_ forControlEvents:4096];

  v18 = [(MRUVolumeBackgroundViewController *)self view];
  v19 = [v18 conversationAwarenessButton];
  [v19 addTarget:self action:sel_conversationAwarenessButtonDidChangeValue_ forControlEvents:4096];

  v20 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_collapseExpandableButtons];
  [v20 setDelegate:self];
  v21 = [(MRUVolumeBackgroundViewController *)self view];
  [v21 addGestureRecognizer:v20];

  [(MRUAudioModuleController *)self->_audioModuleController addObserver:self];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = MRUVolumeBackgroundViewController;
  [(MRUVolumeBackgroundViewController *)&v6 viewWillAppear:a3];
  v4 = [(MRUVolumeBackgroundViewController *)self audioModuleController];
  v5 = [v4 spatialAudioController];
  [v5 startMonitoring];

  [(MRUVolumeBackgroundViewController *)self updatePrimaryRouteView];
  [(MRUVolumeBackgroundViewController *)self updateSecondaryRouteView];
  [(MRUVolumeBackgroundViewController *)self updatePrimaryListeningModeButton];
  [(MRUVolumeBackgroundViewController *)self updateSecondaryListeningModeButton];
  [(MRUVolumeBackgroundViewController *)self updateSpatialAudioModeButton];
  [(MRUVolumeBackgroundViewController *)self updateNowPlaying];
  [(MRUVolumeBackgroundViewController *)self updateConversationAwarenessButton];
  [(MRUVolumeBackgroundViewController *)self updateVisibility];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = MRUVolumeBackgroundViewController;
  [(MRUVolumeBackgroundViewController *)&v6 viewDidDisappear:a3];
  [(MRUVolumeBackgroundViewController *)self collapseExpandableButtons];
  v4 = [(MRUVolumeBackgroundViewController *)self audioModuleController];
  v5 = [v4 spatialAudioController];
  [v5 stopMonitoring];
}

- (void)setSystemVolumeValue:(float)a3
{
  self->_systemVolumeValue = a3;
  v5 = [(MRUAudioModuleController *)self->_audioModuleController outputDeviceRouteController];
  v6 = [v5 isSplitRoute];

  if ((v6 & 1) == 0)
  {
    *&v7 = a3;
    v10 = [MRUSystemVolumeController packageStateForVolumeValue:v7];
    v8 = [(MRUVolumeBackgroundViewController *)self view];
    v9 = [v8 primaryAssetView];
    [v9 setGlyphState:v10];
  }
}

- (void)didTapPrimaryListeningModeButton:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__MRUVolumeBackgroundViewController_didTapPrimaryListeningModeButton___block_invoke;
  v6[3] = &unk_1E76639D0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(MRUVolumeBackgroundViewController *)self performLayoutWithAnimation:v6];
}

void __70__MRUVolumeBackgroundViewController_didTapPrimaryListeningModeButton___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 expandButton:*(a1 + 40)];

  v3 = [*(a1 + 32) delegate];
  [v3 volumeBackgroundViewController:*(a1 + 32) didUpdateSecondaryInteractionEnabled:0];
}

- (void)primaryListeningModeButtonDidChangeValue:(id)a3
{
  v4 = a3;
  v5 = [(MRUAudioModuleController *)self->_audioModuleController listeningModeController];
  v6 = [v5 primaryListeningMode];

  v7 = [v4 selectedOption];
  v8 = [v7 identifier];

  v9 = [(MRUAudioModuleController *)self->_audioModuleController listeningModeController];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__MRUVolumeBackgroundViewController_primaryListeningModeButtonDidChangeValue___block_invoke;
  v12[3] = &unk_1E7664440;
  v13 = v4;
  v14 = v6;
  v10 = v6;
  v11 = v4;
  [v9 setPrimaryListeningMode:v8 completion:v12];
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

- (void)didTapSecondaryListeningModeButton:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__MRUVolumeBackgroundViewController_didTapSecondaryListeningModeButton___block_invoke;
  v6[3] = &unk_1E76639D0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(MRUVolumeBackgroundViewController *)self performLayoutWithAnimation:v6];
}

void __72__MRUVolumeBackgroundViewController_didTapSecondaryListeningModeButton___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 expandButton:*(a1 + 40)];

  v3 = [*(a1 + 32) delegate];
  [v3 volumeBackgroundViewController:*(a1 + 32) didUpdatePrimaryInteractionEnabled:0];
}

- (void)secondaryListeningModeButtonDidChangeValue:(id)a3
{
  v4 = a3;
  v5 = [(MRUAudioModuleController *)self->_audioModuleController listeningModeController];
  v6 = [v5 secondaryListeningMode];

  v7 = [v4 selectedOption];
  v8 = [v7 identifier];

  v9 = [(MRUAudioModuleController *)self->_audioModuleController listeningModeController];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__MRUVolumeBackgroundViewController_secondaryListeningModeButtonDidChangeValue___block_invoke;
  v12[3] = &unk_1E7664440;
  v13 = v4;
  v14 = v6;
  v10 = v6;
  v11 = v4;
  [v9 setSecondaryListeningMode:v8 completion:v12];
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

- (void)didTapSpatialAudioModeButton:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__MRUVolumeBackgroundViewController_didTapSpatialAudioModeButton___block_invoke;
  v6[3] = &unk_1E76639D0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(MRUVolumeBackgroundViewController *)self performLayoutWithAnimation:v6];
}

void __66__MRUVolumeBackgroundViewController_didTapSpatialAudioModeButton___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 expandButton:*(a1 + 40)];
}

- (void)spatialAudioModeButtonDidChangeValue:(id)a3
{
  v22[2] = *MEMORY[0x1E69E9840];
  audioModuleController = self->_audioModuleController;
  v5 = a3;
  v6 = [(MRUAudioModuleController *)audioModuleController spatialAudioController];
  v7 = [v6 selectedMode];

  v8 = [v5 selectedOption];
  v9 = [v8 identifier];

  v10 = [(MRUAudioModuleController *)self->_audioModuleController spatialAudioController];
  [v10 setSelectedMode:v9];

  [v5 playValueChangedEventHaptic];
  v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  v12 = [v7 description];
  [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x1E69B0B98]];

  v13 = [v9 description];
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
  v17 = [v9 description];
  v22[1] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  [v16 sendSingleMessage:v18 category:8 type:5];
}

- (void)conversationAwarenessButtonDidChangeValue:(id)a3
{
  v4 = a3;
  v5 = [v4 selectedOptionIndex] != 0;
  v6 = [(MRUAudioModuleController *)self->_audioModuleController conversationAwarenessController];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__MRUVolumeBackgroundViewController_conversationAwarenessButtonDidChangeValue___block_invoke;
  v8[3] = &unk_1E7664468;
  v9 = v4;
  v7 = v4;
  [v6 setConversationAwarenessEnabled:v5 completion:v8];
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

- (void)audioModuleController:(id)a3 systemOutputDeviceRouteControllerDidUpdateOutputDevices:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __115__MRUVolumeBackgroundViewController_audioModuleController_systemOutputDeviceRouteControllerDidUpdateOutputDevices___block_invoke;
  v4[3] = &unk_1E7663898;
  v4[4] = self;
  [(MRUVolumeBackgroundViewController *)self performLayoutWithAnimation:v4, a4];
}

- (void)audioModuleController:(id)a3 systemOutputDeviceRouteControllerDidUpdateOutputDeviceProperties:(id)a4
{
  [(MRUVolumeBackgroundViewController *)self updatePrimaryRouteView:a3];
  [(MRUVolumeBackgroundViewController *)self updateSecondaryRouteView];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __124__MRUVolumeBackgroundViewController_audioModuleController_systemOutputDeviceRouteControllerDidUpdateOutputDeviceProperties___block_invoke;
  v5[3] = &unk_1E7663898;
  v5[4] = self;
  [(MRUVolumeBackgroundViewController *)self performLayoutWithAnimation:v5];
}

- (void)audioModuleController:(id)a3 listeningModeController:(id)a4 didChangeAvailablePrimaryListeningMode:(id)a5
{
  [(MRUVolumeBackgroundViewController *)self updatePrimaryListeningModeButton:a3];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __122__MRUVolumeBackgroundViewController_audioModuleController_listeningModeController_didChangeAvailablePrimaryListeningMode___block_invoke;
  v6[3] = &unk_1E7663898;
  v6[4] = self;
  [(MRUVolumeBackgroundViewController *)self performLayoutWithAnimation:v6];
}

- (void)audioModuleController:(id)a3 listeningModeController:(id)a4 didChangePrimaryListeningMode:(id)a5
{
  [(MRUVolumeBackgroundViewController *)self updatePrimaryListeningModeButton:a3];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __113__MRUVolumeBackgroundViewController_audioModuleController_listeningModeController_didChangePrimaryListeningMode___block_invoke;
  v6[3] = &unk_1E7663898;
  v6[4] = self;
  [(MRUVolumeBackgroundViewController *)self performLayoutWithAnimation:v6];
}

- (void)audioModuleController:(id)a3 listeningModeController:(id)a4 didChangeAvailableSecondaryListeningModes:(id)a5
{
  [(MRUVolumeBackgroundViewController *)self updateSecondaryListeningModeButton:a3];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __125__MRUVolumeBackgroundViewController_audioModuleController_listeningModeController_didChangeAvailableSecondaryListeningModes___block_invoke;
  v6[3] = &unk_1E7663898;
  v6[4] = self;
  [(MRUVolumeBackgroundViewController *)self performLayoutWithAnimation:v6];
}

- (void)audioModuleController:(id)a3 listeningModeController:(id)a4 didChangeSecondaryListeningMode:(id)a5
{
  [(MRUVolumeBackgroundViewController *)self updateSecondaryListeningModeButton:a3];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __115__MRUVolumeBackgroundViewController_audioModuleController_listeningModeController_didChangeSecondaryListeningMode___block_invoke;
  v6[3] = &unk_1E7663898;
  v6[4] = self;
  [(MRUVolumeBackgroundViewController *)self performLayoutWithAnimation:v6];
}

- (void)audioModuleController:(id)a3 spatialAudioController:(id)a4 didChangeAvailableSpatialModes:(id)a5
{
  [(MRUVolumeBackgroundViewController *)self updateSpatialAudioModeButton:a3];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __113__MRUVolumeBackgroundViewController_audioModuleController_spatialAudioController_didChangeAvailableSpatialModes___block_invoke;
  v6[3] = &unk_1E7663898;
  v6[4] = self;
  [(MRUVolumeBackgroundViewController *)self performLayoutWithAnimation:v6];
}

- (void)audioModuleController:(id)a3 spatialAudioController:(id)a4 didChangeSelectedSpatialMode:(id)a5
{
  v6 = [(MRUVolumeBackgroundViewController *)self view:a3];
  v7 = [v6 spatialAudioModeButton];
  v8 = [v7 isTracking];

  if ((v8 & 1) == 0)
  {

    [(MRUVolumeBackgroundViewController *)self updateSpatialAudioModeButton];
  }
}

- (void)audioModuleController:(id)a3 spatialAudioController:(id)a4 didChangeNowPlayingInfo:(id)a5
{
  [(MRUVolumeBackgroundViewController *)self updateNowPlaying:a3];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __106__MRUVolumeBackgroundViewController_audioModuleController_spatialAudioController_didChangeNowPlayingInfo___block_invoke;
  v6[3] = &unk_1E7663898;
  v6[4] = self;
  [(MRUVolumeBackgroundViewController *)self performLayoutWithAnimation:v6];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v3 = [(MRUVolumeBackgroundViewController *)self view];
  v4 = [v3 hasExpandedButtons];

  return v4;
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
  v3 = [(MRUVolumeBackgroundViewController *)self view];
  v4 = [v3 conversationAwarenessButton];

  v5 = [(MRUAudioModuleController *)self->_audioModuleController conversationAwarenessController];
  LODWORD(v3) = [v5 isConversationAwarenessEnabled];

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
  [v4 setTitle:v12];

  v14[0] = v6;
  v14[1] = v9;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [v4 setOptions:v13];

  [v4 setSelectedOptionIndex:v3];
}

- (void)performLayoutWithAnimation:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E6997258];
  v6 = [(MRUVolumeBackgroundViewController *)self view];
  v7 = [v6 window];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__MRUVolumeBackgroundViewController_performLayoutWithAnimation___block_invoke;
  v9[3] = &unk_1E7664490;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v5 performWithoutAnimationWhileHiddenInWindow:v7 actions:v9];
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