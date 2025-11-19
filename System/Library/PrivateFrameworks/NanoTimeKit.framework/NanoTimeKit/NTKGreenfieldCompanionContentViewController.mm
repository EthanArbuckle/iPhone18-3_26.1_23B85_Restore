@interface NTKGreenfieldCompanionContentViewController
- (CGPoint)_watchScreenInsetForDeviceSize:(unint64_t)a3 screenScale:(double)a4;
- (CGSize)_watchScreenSizeForDeviceSize:(unint64_t)a3 screenScale:(double)a4;
- (NTKGreenfieldCompanionContentViewController)initWithError:(id)a3 decodedRecipe:(id)a4;
- (NTKGreenfieldCompanionContentViewControllerDelegate)greenfieldDelegate;
- (id)_errorSubtitleForError:(id)a3;
- (id)_errorTitleForError:(id)a3;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)initAddComplicationStateWithDecodedRecipe:(id)a3 complicationItemId:(id)a4 installMode:(int64_t)a5 skippedComplicationSlots:(id)a6;
- (id)initCompletedStateWithDecodedRecipe:(id)a3 skippedComplicationSlots:(id)a4 canRevisit:(BOOL)a5;
- (id)initComplicationNotAvailableStateWithDecodedRecipe:(id)a3 unavailableSlots:(id)a4 unavailableTitle:(id)a5 unavailableDescription:(id)a6;
- (id)initStartStateWithDecodedRecipe:(id)a3 canAddFaceDirectly:(BOOL)a4 addFaceDescription:(id)a5;
- (id)suggestedButtonTitle;
- (id)titleString;
- (unint64_t)_deviceSizeForCLKDeviceSizeClass:(unint64_t)a3;
- (void)_didTapAddToMyFacesButton;
- (void)_didTapShowInternalErrorButton;
- (void)_installLocallyAvailableApp;
- (void)_overrideLockup:(id)a3 withButtonTitle:(id)a4 buttonAction:(id)a5;
- (void)_presentErrorUIAlert;
- (void)_reinstallAppWithAdamId:(id)a3;
- (void)_reinstallSystemAppWithBundleId:(id)a3;
- (void)_setupContentView;
- (void)_setupContentViewForWatchFaceNotAvailableError;
- (void)_setupWatchFaceViewContainerWithView:(id)a3 deviceSize:(unint64_t)a4 deviceMaterial:(unint64_t)a5;
- (void)_updateComplicationDisplayStates;
- (void)alternateButtonPressed:(id)a3;
- (void)lockupView:(id)a3 appStateDidChange:(id)a4;
- (void)lockupViewDidFinishRequest:(id)a3;
- (void)refreshViews;
- (void)suggestedButtonPressed:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation NTKGreenfieldCompanionContentViewController

- (id)initStartStateWithDecodedRecipe:(id)a3 canAddFaceDirectly:(BOOL)a4 addFaceDescription:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = NTKGreenfieldCompanionContentViewController;
  v11 = [(BPSWelcomeOptinViewController *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(BPSWelcomeOptinViewController *)v11 setStyle:2];
    v12->_state = 0;
    objc_storeStrong(&v12->_decodedRecipe, a3);
    v12->_canAddFaceDirectly = a4;
    objc_storeStrong(&v12->_addFaceDescription, a5);
  }

  return v12;
}

- (id)initAddComplicationStateWithDecodedRecipe:(id)a3 complicationItemId:(id)a4 installMode:(int64_t)a5 skippedComplicationSlots:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = [(BPSWelcomeOptinViewController *)self init];
  v15 = v14;
  if (v14)
  {
    [(BPSWelcomeOptinViewController *)v14 setStyle:10];
    v15->_state = 2;
    objc_storeStrong(&v15->_decodedRecipe, a3);
    objc_storeStrong(&v15->_complicationItemId, a4);
    objc_storeStrong(&v15->_skippedComplicationSlots, a6);
    v15->_installMode = a5;
  }

  return v15;
}

- (id)initComplicationNotAvailableStateWithDecodedRecipe:(id)a3 unavailableSlots:(id)a4 unavailableTitle:(id)a5 unavailableDescription:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(BPSWelcomeOptinViewController *)self init];
  v16 = v15;
  if (v15)
  {
    [(BPSWelcomeOptinViewController *)v15 setStyle:2];
    v16->_state = 1;
    objc_storeStrong(&v16->_decodedRecipe, a3);
    objc_storeStrong(&v16->_unavailableSlots, a4);
    objc_storeStrong(&v16->_unavailableTitle, a5);
    objc_storeStrong(&v16->_unavailableDescription, a6);
  }

  return v16;
}

- (id)initCompletedStateWithDecodedRecipe:(id)a3 skippedComplicationSlots:(id)a4 canRevisit:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = NTKGreenfieldCompanionContentViewController;
  v11 = [(BPSWelcomeOptinViewController *)&v15 init];
  v12 = v11;
  if (v11)
  {
    if (v5)
    {
      v13 = 10;
    }

    else
    {
      v13 = 2;
    }

    [(BPSWelcomeOptinViewController *)v11 setStyle:v13];
    v12->_state = 3;
    objc_storeStrong(&v12->_decodedRecipe, a3);
    objc_storeStrong(&v12->_skippedComplicationSlots, a4);
  }

  return v12;
}

- (NTKGreenfieldCompanionContentViewController)initWithError:(id)a3 decodedRecipe:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = NTKGreenfieldCompanionContentViewController;
  v9 = [(BPSWelcomeOptinViewController *)&v16 init];
  if (v9)
  {
    v10 = [v8 noBorderFacePreviewImagePath];

    if (v10)
    {
      v9->_state = 4;
      if (NTKInternalBuild(v11, v12))
      {
        [(BPSWelcomeOptinViewController *)v9 setStyle:2];
      }

      objc_storeStrong(&v9->_decodedRecipe, a4);
      v13 = dispatch_queue_create("com.apple.NanoTimeKit.GreenfieldViewControllerDecodeImage.queue", 0);
      workQueue = v9->_workQueue;
      v9->_workQueue = v13;
    }

    else
    {
      v9->_state = 5;
    }

    objc_storeStrong(&v9->_error, a3);
  }

  return v9;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = NTKGreenfieldCompanionContentViewController;
  [(BPSWelcomeOptinViewController *)&v9 viewDidLoad];
  if (self->_state != 5)
  {
    v3 = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
    v4 = BPSSetupTintColor();
    [v3 setTitleColor:v4 forState:0];

    v5 = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
    v6 = [MEMORY[0x277D75348] systemGrayColor];
    [v5 setTitleColor:v6 forState:2];

    if (self->_state == 4)
    {
      v7 = [(NSError *)self->_error domain];
      if ([v7 isEqualToString:@"com.apple.nanotimekit.NTKGreenfieldAddWatchFaceManager"])
      {
        if ([(NSError *)self->_error code]== 11)
        {

LABEL_10:
          [(NTKGreenfieldCompanionContentViewController *)self _setupContentViewForWatchFaceNotAvailableError];
          return;
        }

        v8 = [(NSError *)self->_error code];

        if (v8 == 13)
        {
          goto LABEL_10;
        }
      }

      else
      {
      }
    }

    [(NTKGreenfieldCompanionContentViewController *)self _setupContentView];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = NTKGreenfieldCompanionContentViewController;
  [(BPSWelcomeOptinViewController *)&v4 viewDidAppear:a3];
  if (self->_state == 5)
  {
    [(NTKGreenfieldCompanionContentViewController *)self _presentErrorUIAlert];
  }
}

- (void)viewDidLayoutSubviews
{
  v24.receiver = self;
  v24.super_class = NTKGreenfieldCompanionContentViewController;
  [(OBBaseWelcomeController *)&v24 viewDidLayoutSubviews];
  v3 = [(NTKGreenfieldCompanionContentViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(NTKGreenfieldCompanionContentViewController *)self scrollView];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = [(NTKGreenfieldCompanionContentViewController *)self scrollView];
  [v13 verticalScrollIndicatorInsets];
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [(NTKGreenfieldCompanionContentViewController *)self view];
  [v20 safeAreaInsets];
  v22 = v21;

  v23 = [(NTKGreenfieldCompanionContentViewController *)self scrollView];
  [v23 setVerticalScrollIndicatorInsets:{v22, v15, v17, v19}];
}

- (id)titleString
{
  v2 = 0;
  state = self->_state;
  if (state > 1)
  {
    switch(state)
    {
      case 2:
        v5 = @"GREENFIELD_ADD_WATCH_FACE_TITLE_IN_FLOW";
        v6 = @"Include Complication";
        break;
      case 3:
        v5 = @"GREENFIELD_ADD_WATCH_FACE_TITLE_SUCCESS";
        v6 = @"Watch Face Added";
        break;
      case 4:
        v4 = [(NTKGreenfieldCompanionContentViewController *)self _errorTitleForError:self->_error];
        goto LABEL_12;
      default:
        goto LABEL_13;
    }

    v4 = NTKClockFaceLocalizedString(v5, v6);
LABEL_12:
    v2 = v4;
    goto LABEL_13;
  }

  if (!state)
  {
    v8 = [(NTKGreenfieldDecodedRecipe *)self->_decodedRecipe watchFace];
    v9 = [v8 faceSharingName];

    if (v9)
    {
      v10 = NTKClockFaceLocalizedString(@"GREENFIELD_ADD_WATCH_FACE_TITLE_MAIN_SCREEN", @"Add %@ Watch Face");
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:v10, v9];
    }

    else
    {
      v2 = NTKClockFaceLocalizedString(@"GREENFIELD_ADD_WATCH_FACE_TITLE_MAIN_SCREEN_GENERIC", @"Add Watch Face");
    }

    goto LABEL_13;
  }

  if (state == 1)
  {
    v4 = self->_unavailableTitle;
    goto LABEL_12;
  }

LABEL_13:

  return v2;
}

- (id)detailString
{
  v3 = 0;
  state = self->_state;
  if (state > 1)
  {
    if (state == 2)
    {
      if ((self->_installMode & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v6 = @"GREENFIELD_ADD_WATCH_FACE_SUBTITLE_UPDATE_COMPLICATION_IN_FLOW";
        v7 = @"To use this complication, update the app.";
      }

      else
      {
        v6 = @"GREENFIELD_ADD_WATCH_FACE_SUBTITLE_IN_FLOW";
        v7 = @"To use this complication, download the app from the App Store.";
      }

      v3 = NTKClockFaceLocalizedString(v6, v7);
    }

    else if (state == 4)
    {
      v3 = [(NTKGreenfieldCompanionContentViewController *)self _errorSubtitleForError:self->_error];
    }
  }

  else
  {
    if (state)
    {
      if (state != 1)
      {
        goto LABEL_14;
      }

      v5 = 1384;
    }

    else
    {
      v5 = 1352;
    }

    v3 = *(&self->super.super.super.super.super.super.isa + v5);
  }

LABEL_14:

  return v3;
}

- (id)suggestedButtonTitle
{
  v3 = 0;
  state = self->_state;
  if (state <= 1)
  {
    if (state)
    {
      if (state != 1)
      {
        goto LABEL_17;
      }
    }

    else if (self->_canAddFaceDirectly)
    {
      v5 = @"GREENFIELD_ADD_TO_MY_FACES_BUTTON_TITLE";
      v6 = @"Add to My Faces";
      goto LABEL_16;
    }

    v5 = @"GREENFIELD_CONTINUE_BUTTON_TITLE";
    v6 = @"Continue";
    goto LABEL_16;
  }

  switch(state)
  {
    case 2:
      v3 = &stru_284110E98;
      break;
    case 3:
      v5 = @"GREENFIELD_DONE_BUTTON_TITLE";
      v6 = @"Done";
LABEL_16:
      v3 = NTKClockFaceLocalizedString(v5, v6);
      break;
    case 4:
      if (NTKInternalBuild(0, a2))
      {
        v3 = @"[INTERNAL ONLY: SHOW ERROR]";
      }

      else
      {
        v3 = 0;
      }

      break;
  }

LABEL_17:

  return v3;
}

- (id)alternateButtonTitle
{
  state = self->_state;
  if (state == 3)
  {
    v3 = @"GREENFIELD_REVISIT_SKIPPED_COMPLICATIONS_BUTTON_TITLE";
    v4 = @"Add Skipped Apps";
    goto LABEL_5;
  }

  if (state == 2)
  {
    v3 = @"GREENFIELD_SKIP_APPS_BUTTON_TITLE";
    v4 = @"Continue Without This App";
LABEL_5:
    v5 = NTKClockFaceLocalizedString(v3, v4);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)suggestedButtonPressed:(id)a3
{
  v4 = a3;
  v5 = v4;
  state = self->_state;
  if (state <= 2)
  {
    if (state)
    {
      if (state != 1)
      {
        goto LABEL_15;
      }

      v13 = v4;
      WeakRetained = objc_loadWeakRetained(&self->_greenfieldDelegate);
      v8 = WeakRetained;
    }

    else
    {
      v13 = v4;
      canAddFaceDirectly = self->_canAddFaceDirectly;
      WeakRetained = objc_loadWeakRetained(&self->_greenfieldDelegate);
      v8 = WeakRetained;
      if (canAddFaceDirectly)
      {
        v11 = self;
        v12 = 0;
LABEL_13:
        [WeakRetained companionContentViewController:v11 handleButtonEvent:v12];

        goto LABEL_14;
      }
    }

    v11 = self;
    v12 = 1;
    goto LABEL_13;
  }

  if (state == 3)
  {
    v13 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_greenfieldDelegate);
    v8 = WeakRetained;
    v11 = self;
    v12 = 2;
    goto LABEL_13;
  }

  if (state == 4)
  {
    v13 = v4;
    v9 = NTKInternalBuild(v4, v4);
    v5 = v13;
    if (v9)
    {
      [(NTKGreenfieldCompanionContentViewController *)self _didTapShowInternalErrorButton];
LABEL_14:
      v5 = v13;
    }
  }

LABEL_15:
}

- (void)alternateButtonPressed:(id)a3
{
  v4 = a3;
  state = self->_state;
  if (state == 2)
  {
    v9 = v4;
    v7 = 4;
  }

  else
  {
    if (state != 3)
    {
      goto LABEL_6;
    }

    v9 = v4;
    v6 = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
    [v6 setEnabled:0];

    v7 = 3;
  }

  WeakRetained = objc_loadWeakRetained(&self->_greenfieldDelegate);
  [WeakRetained companionContentViewController:self handleButtonEvent:v7];

  v4 = v9;
LABEL_6:
}

- (void)refreshViews
{
  v16.receiver = self;
  v16.super_class = NTKGreenfieldCompanionContentViewController;
  [(BPSWelcomeOptinViewController *)&v16 refreshViews];
  if (self->_state == 2)
  {
    if (!self->_appStoreView)
    {
      v3 = objc_alloc_init(MEMORY[0x277CEC298]);
      appStoreView = self->_appStoreView;
      self->_appStoreView = v3;

      [(ASCLockupView *)self->_appStoreView setDelegate:self];
      v5 = BPSForegroundColor();
      [(ASCLockupView *)self->_appStoreView setBackgroundColor:v5];

      v6 = [(ASCLockupView *)self->_appStoreView layer];
      [v6 setCornerRadius:15.0];

      [(ASCLockupView *)self->_appStoreView setLayoutMargins:10.0, 16.0, 10.0, 16.0];
      v7 = [objc_alloc(MEMORY[0x277CEC258]) initWithNumberValue:self->_complicationItemId];
      v8 = objc_alloc(MEMORY[0x277CEC290]);
      v9 = [v8 initWithID:v7 kind:*MEMORY[0x277CEC230] context:*MEMORY[0x277CEC228]];
      [(ASCLockupView *)self->_appStoreView setRequest:v9];

      self->_lockupViewStateDidChange = 0;
    }

    v10 = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
    v11 = [v10 superview];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v13 = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
      v14 = [v13 superview];

      v15 = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
      [v15 removeFromSuperview];

      [v14 insertArrangedSubview:self->_appStoreView atIndex:0];
    }
  }
}

- (void)_setupContentView
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(NTKGreenfieldDecodedRecipe *)self->_decodedRecipe watchFace];
  if (v3)
  {
    v4 = [[NTKGreenfieldHighlightableFaceContainerView alloc] initWithFace:v3];
    faceView = self->_faceView;
    self->_faceView = v4;

    v6 = [(NTKGreenfieldDecodedRecipe *)self->_decodedRecipe complicationSlotToTemplateMapping];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = [v6 allKeys];
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = [v6 objectForKey:v12];
          [(NTKGreenfieldHighlightableFaceContainerView *)self->_faceView setTemplate:v13 forSlot:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    v14 = [MEMORY[0x277CBBAE8] currentDevice];
    v15 = [v14 pdrDevice];

    v16 = [MEMORY[0x277D37A78] sizeFromPdrDevice:v15];
    v17 = [MEMORY[0x277D37A78] materialFromPdrDevice:v15];
    v18 = [NTKRoundedCornerMaskView alloc];
    v19 = [MEMORY[0x277CBBAE8] currentDevice];
    v20 = [(NTKRoundedCornerMaskView *)v18 initWithDevice:v19];

    [(NTKRoundedCornerMaskView *)v20 addSubview:self->_faceView];
    [(NTKGreenfieldCompanionContentViewController *)self _setupWatchFaceViewContainerWithView:v20 deviceSize:v16 deviceMaterial:v17];
    [(NTKGreenfieldCompanionContentViewController *)self _updateComplicationDisplayStates];
  }
}

- (void)_setupWatchFaceViewContainerWithView:(id)a3 deviceSize:(unint64_t)a4 deviceMaterial:(unint64_t)a5
{
  v60[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (a4 <= 8 && ((1 << a4) & 0x186) != 0)
  {
    v9 = [objc_alloc(MEMORY[0x277CF3478]) initWithStyle:2];
    [v9 overrideMaterial:a5 size:a4];
    v10 = 0;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CF3458]);
    v10 = 1;
  }

  watchView = self->_watchView;
  self->_watchView = v9;

  [(BPSWatchViewProtocol *)self->_watchView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BPSWatchViewProtocol *)self->_watchView addSubview:v8];
  if (v8)
  {
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v8 setContentMode:2];
      }

      [(BPSWatchViewProtocol *)self->_watchView watchScreenInsetGuide];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      [v8 bounds];
      CGAffineTransformMakeScale(&v58, v17 / v20, v17 / v20);
      v57 = v58;
      [v8 setTransform:&v57];
      [v8 setFrame:{v13, v15, v17, v19}];
    }

    else
    {
      v21 = [MEMORY[0x277D759A0] mainScreen];
      [v21 scale];
      v23 = v22;

      [(NTKGreenfieldCompanionContentViewController *)self _watchScreenSizeForDeviceSize:a4 screenScale:v23];
      v25 = v24;
      v27 = v26;
      [(NTKGreenfieldCompanionContentViewController *)self _watchScreenInsetForDeviceSize:a4 screenScale:v23];
      [v8 setCenter:{v28 + v25 * 0.5, v29 + v27 * 0.5}];
      [v8 bounds];
      v31 = v25 / v30;
      [v8 bounds];
      CGAffineTransformMakeScale(&v56, v31, v27 / v32);
      v57 = v56;
      [v8 setTransform:&v57];
    }
  }

  v33 = objc_alloc(MEMORY[0x277D75A68]);
  v60[0] = self->_watchView;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:1];
  v35 = [v33 initWithArrangedSubviews:v34];

  [v35 setAxis:1];
  [v35 setAlignment:3];
  [v35 setBaselineRelativeArrangement:1];
  [v35 setSpacing:8.0];
  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
  v36 = [(NTKGreenfieldCompanionContentViewController *)self contentView];
  [v36 addSubview:v35];

  v47 = MEMORY[0x277CCAAD0];
  v55 = [(NTKGreenfieldCompanionContentViewController *)self contentView];
  v54 = [v55 topAnchor];
  v53 = [v35 topAnchor];
  v52 = [v54 constraintEqualToAnchor:v53];
  v59[0] = v52;
  v51 = [(NTKGreenfieldCompanionContentViewController *)self contentView];
  v49 = [v51 leadingAnchor];
  v48 = [v35 leadingAnchor];
  v46 = [v49 constraintEqualToAnchor:v48];
  v59[1] = v46;
  v37 = [(NTKGreenfieldCompanionContentViewController *)self contentView];
  v38 = [v37 trailingAnchor];
  [v35 trailingAnchor];
  v39 = v50 = v8;
  v40 = [v38 constraintEqualToAnchor:v39];
  v59[2] = v40;
  v41 = [(NTKGreenfieldCompanionContentViewController *)self contentView];
  v42 = [v41 bottomAnchor];
  v43 = [v35 bottomAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];
  v59[3] = v44;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:4];
  [v47 activateConstraints:v45];
}

- (void)_setupContentViewForWatchFaceNotAvailableError
{
  v3 = [MEMORY[0x277CBBAE8] currentDevice];
  v4 = [v3 pdrDevice];

  v5 = [MEMORY[0x277D37A78] materialFromPdrDevice:v4];
  v6 = [(NTKGreenfieldDecodedRecipe *)self->_decodedRecipe noBorderFacePreviewImagePath];
  if (v6)
  {
    v7 = v6;
    v8 = [(NTKGreenfieldDecodedRecipe *)self->_decodedRecipe senderBoxedDeviceSize];

    if (v8)
    {
      workQueue = self->_workQueue;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __93__NTKGreenfieldCompanionContentViewController__setupContentViewForWatchFaceNotAvailableError__block_invoke;
      v10[3] = &unk_2787805D8;
      v10[4] = self;
      v10[5] = v5;
      dispatch_async(workQueue, v10);
    }
  }
}

void __93__NTKGreenfieldCompanionContentViewController__setupContentViewForWatchFaceNotAvailableError__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D755B8]);
  v3 = [*(*(a1 + 32) + 1320) noBorderFacePreviewImagePath];
  v4 = [v2 initWithContentsOfFile:v3];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__NTKGreenfieldCompanionContentViewController__setupContentViewForWatchFaceNotAvailableError__block_invoke_2;
  block[3] = &unk_278781310;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __93__NTKGreenfieldCompanionContentViewController__setupContentViewForWatchFaceNotAvailableError__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1320) senderBoxedDeviceSize];
  v3 = [v2 integerValue];

  v4 = [*(a1 + 32) _deviceSizeForCLKDeviceSizeClass:v3];
  [MEMORY[0x277CBBAE8] screenBoundsForSizeClass:v3];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [MEMORY[0x277CBBAE8] screenScaleForSizeClass:v3];
  v14 = v13;
  [MEMORY[0x277CBBAE8] screenCornerRadiusForSizeClass:v3];
  v16 = v15;
  v18 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:*(a1 + 40)];
  [v18 setFrame:{v6, v8, v10, v12}];
  v17 = [[NTKRoundedCornerMaskView alloc] initWithFrame:v6 screenScale:v8 cornerRadius:v10, v12, v14, v16];
  [(NTKRoundedCornerMaskView *)v17 addSubview:v18];
  [*(a1 + 32) _setupWatchFaceViewContainerWithView:v17 deviceSize:v4 deviceMaterial:*(a1 + 48)];
}

- (void)_presentErrorUIAlert
{
  v3 = [(NTKGreenfieldCompanionContentViewController *)self _errorTitleForError:self->_error];
  v4 = [(NTKGreenfieldCompanionContentViewController *)self _errorSubtitleForError:self->_error];
  if (NTKInternalBuild(v4, v5))
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n \n [INTERNAL ONLY] \n Please file a radar and include a sysdiagnose. Error: reason: %@", self->_error];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v4, v6];

    v4 = v7;
  }

  v8 = [MEMORY[0x277D75110] alertControllerWithTitle:v3 message:v4 preferredStyle:1];
  v9 = MEMORY[0x277D750F8];
  v10 = NTKClockFaceLocalizedString(@"GREENFIELD_ADD_WATCH_FACE_ERROR_OK_BUTON_TITLE", @"OK");
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__NTKGreenfieldCompanionContentViewController__presentErrorUIAlert__block_invoke;
  v12[3] = &unk_27877E528;
  v12[4] = self;
  v11 = [v9 actionWithTitle:v10 style:1 handler:v12];

  [v8 addAction:v11];
  [(NTKGreenfieldCompanionContentViewController *)self presentViewController:v8 animated:1 completion:0];
}

void __67__NTKGreenfieldCompanionContentViewController__presentErrorUIAlert__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1440));
  [WeakRetained companionContentViewController:*(a1 + 32) handleButtonEvent:5];
}

- (unint64_t)_deviceSizeForCLKDeviceSizeClass:(unint64_t)a3
{
  if (a3 > 9)
  {
    return 7;
  }

  else
  {
    return qword_22DCE84A0[a3];
  }
}

- (CGPoint)_watchScreenInsetForDeviceSize:(unint64_t)a3 screenScale:(double)a4
{
  if (a4 <= 2.0)
  {
    if (a3 == 2)
    {
      v5 = 56.0;
      v4 = 25.5;
      goto LABEL_17;
    }

    if (a3 == 7)
    {
      v5 = 50.5;
      v4 = 19.5;
      goto LABEL_17;
    }

    if (a3 != 8)
    {
      v5 = 54.0;
      v4 = 24.5;
      goto LABEL_17;
    }

    v5 = 50.5;
    goto LABEL_11;
  }

  switch(a3)
  {
    case 2uLL:
      v5 = 74.0;
      v4 = 32.0;
      break;
    case 7uLL:
      v5 = 65.0;
LABEL_11:
      v4 = 20.5;
      break;
    case 8uLL:
      v4 = 21.0;
      v5 = 66.0;
      break;
    default:
      v4 = 30.0;
      v5 = 71.0;
      break;
  }

LABEL_17:
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGSize)_watchScreenSizeForDeviceSize:(unint64_t)a3 screenScale:(double)a4
{
  if (a4 <= 2.0)
  {
    switch(a3)
    {
      case 2uLL:
        v4 = 85.0;
        v6 = 0x4051000000000000;
        break;
      case 8uLL:
        v4 = 95.0;
        v5 = 78.0;
        goto LABEL_17;
      case 7uLL:
        v4 = 98.0;
        v6 = 0x4054000000000000;
        break;
      default:
        v4 = 89.0;
        v5 = 71.0;
        goto LABEL_17;
    }

    v5 = *&v6;
    goto LABEL_17;
  }

  switch(a3)
  {
    case 2uLL:
      v4 = 108.0;
      v5 = 86.0;
      break;
    case 8uLL:
      v4 = 123.0;
      v5 = 101.0;
      break;
    case 7uLL:
      v4 = 126.0;
      v5 = 103.0;
      break;
    default:
      v4 = 113.0;
      v5 = 90.0;
      break;
  }

LABEL_17:
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)_updateComplicationDisplayStates
{
  v25 = *MEMORY[0x277D85DE8];
  [(NTKGreenfieldDecodedRecipe *)self->_decodedRecipe complicationSlotToTemplateMapping];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = v23 = 0u;
  v3 = [v19 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = &OBJC_IVAR____NTKPhotosPhotoFaceUpgradeContext__bottomComplication;
    v7 = &OBJC_IVAR____NTKPhotosPhotoFaceUpgradeContext__bottomComplication;
    v8 = *v21;
    v9 = &OBJC_IVAR____NTKPhotosPhotoFaceUpgradeContext__bottomComplication;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if ([*(&self->super.super.super.super.super.super.isa + v6[817]) containsObject:v11])
        {
          v12 = 1;
        }

        else
        {
          v13 = *(&self->super.super.super.super.super.super.isa + v9[812]);
          if (v13 == 2)
          {
            v14 = v6;
            v15 = v3;
            v16 = v9;
            if (self->_complicationItemId)
            {
              v17 = [(NTKGreenfieldDecodedRecipe *)self->_decodedRecipe complicationSlotToItemIdMapping];
              v18 = [v17 allKeysForObject:self->_complicationItemId];

              if ([v18 containsObject:v11])
              {
                v12 = 2;
              }

              else
              {
                v12 = 0;
              }
            }

            else
            {
              v12 = 0;
            }

            v9 = v16;
            v3 = v15;
            v6 = v14;
            v7 = &OBJC_IVAR____NTKPhotosPhotoFaceUpgradeContext__bottomComplication;
          }

          else if (v13 == 1)
          {
            if ([(NSSet *)self->_unavailableSlots containsObject:v11])
            {
              v12 = 2;
            }

            else
            {
              v12 = 0;
            }
          }

          else
          {
            v12 = 0;
          }
        }

        [*(&self->super.super.super.super.super.super.isa + v7[827]) setComplicationDisplayViewState:v12 forSlot:v11];
      }

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }
}

- (void)_installLocallyAvailableApp
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "Failed to find the watchId from %@", &v3, 0xCu);
}

void __74__NTKGreenfieldCompanionContentViewController__installLocallyAvailableApp__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v14 = a2;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "Installing local available app result: %ld %@", buf, 0x16u);
  }

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = [*(a1 + 32) bundleIdentifier];
  v12[0] = v8;
  v11[1] = @"InstallState";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v12[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v7 postNotificationName:@"GreenfieldApplicationInstallBeganNotification" object:0 userInfo:v10];
}

- (void)_overrideLockup:(id)a3 withButtonTitle:(id)a4 buttonAction:(id)a5
{
  v24 = a3;
  v7 = MEMORY[0x277CEC2B0];
  v8 = a5;
  v25 = [v7 textMetadataWithTitle:a4 subtitle:0];
  v23 = [objc_alloc(MEMORY[0x277CEC278]) initWithMetadata:v25 action:v8];

  v9 = [v24 lockup];
  v22 = objc_alloc(MEMORY[0x277CEC280]);
  v10 = [v9 id];
  v11 = [v9 kind];
  v12 = [v9 metrics];
  v13 = [v9 icon];
  v14 = [v9 heading];
  v15 = [v9 title];
  v16 = [v9 subtitle];
  v17 = [v9 ageRating];
  v18 = [v22 initWithID:v10 kind:v11 metrics:v12 icon:v13 heading:v14 title:v15 subtitle:v16 ageRating:v17 offer:v23];

  v19 = MEMORY[0x277D75D18];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __92__NTKGreenfieldCompanionContentViewController__overrideLockup_withButtonTitle_buttonAction___block_invoke;
  v26[3] = &unk_27877E438;
  v27 = v24;
  v28 = v18;
  v20 = v18;
  v21 = v24;
  [v19 performWithoutAnimation:v26];
}

- (void)_reinstallAppWithAdamId:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [MEMORY[0x277CEC2C0] sharedWatchApps];
  v6 = [v5 reinstallAppWithID:v4];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__NTKGreenfieldCompanionContentViewController__reinstallAppWithAdamId___block_invoke;
  v9[3] = &unk_27877DC58;
  objc_copyWeak(&v10, &location);
  [v6 addSuccessBlock:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__NTKGreenfieldCompanionContentViewController__reinstallAppWithAdamId___block_invoke_3;
  v7[3] = &unk_278781360;
  objc_copyWeak(&v8, &location);
  [v6 addErrorBlock:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
}

void __71__NTKGreenfieldCompanionContentViewController__reinstallAppWithAdamId___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__NTKGreenfieldCompanionContentViewController__reinstallAppWithAdamId___block_invoke_2;
  block[3] = &unk_27877DC58;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __71__NTKGreenfieldCompanionContentViewController__reinstallAppWithAdamId___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained alternateChoiceButton];
    [v2 setEnabled:1];

    v3 = objc_loadWeakRetained(v4 + 180);
    [v3 companionContentViewController:v4 didStartInstallingAppWithItemId:v4[167]];

    WeakRetained = v4;
  }
}

void __71__NTKGreenfieldCompanionContentViewController__reinstallAppWithAdamId___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__NTKGreenfieldCompanionContentViewController__reinstallAppWithAdamId___block_invoke_4;
  block[3] = &unk_27877DC58;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __71__NTKGreenfieldCompanionContentViewController__reinstallAppWithAdamId___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained alternateChoiceButton];
    [v2 setEnabled:1];

    WeakRetained = v3;
  }
}

- (void)_reinstallSystemAppWithBundleId:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [MEMORY[0x277CEC2C0] sharedWatchApps];
  v6 = [v5 reinstallSystemAppWithBundleID:v4];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__NTKGreenfieldCompanionContentViewController__reinstallSystemAppWithBundleId___block_invoke;
  v9[3] = &unk_27877DC58;
  objc_copyWeak(&v10, &location);
  [v6 addSuccessBlock:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__NTKGreenfieldCompanionContentViewController__reinstallSystemAppWithBundleId___block_invoke_3;
  v7[3] = &unk_278781360;
  objc_copyWeak(&v8, &location);
  [v6 addErrorBlock:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
}

void __79__NTKGreenfieldCompanionContentViewController__reinstallSystemAppWithBundleId___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__NTKGreenfieldCompanionContentViewController__reinstallSystemAppWithBundleId___block_invoke_2;
  block[3] = &unk_27877DC58;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __79__NTKGreenfieldCompanionContentViewController__reinstallSystemAppWithBundleId___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained alternateChoiceButton];
    [v2 setEnabled:1];

    v3 = objc_loadWeakRetained(v4 + 180);
    [v3 companionContentViewController:v4 didStartInstallingAppWithItemId:v4[167]];

    WeakRetained = v4;
  }
}

void __79__NTKGreenfieldCompanionContentViewController__reinstallSystemAppWithBundleId___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__NTKGreenfieldCompanionContentViewController__reinstallSystemAppWithBundleId___block_invoke_4;
  block[3] = &unk_27877DC58;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __79__NTKGreenfieldCompanionContentViewController__reinstallSystemAppWithBundleId___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained alternateChoiceButton];
    [v2 setEnabled:1];

    WeakRetained = v3;
  }
}

- (void)_didTapAddToMyFacesButton
{
  WeakRetained = objc_loadWeakRetained(&self->_greenfieldDelegate);
  [WeakRetained companionContentViewController:self handleButtonEvent:0];
}

- (void)lockupViewDidFinishRequest:(id)a3
{
  v4 = a3;
  v5 = v4;
  installMode = self->_installMode;
  if (installMode)
  {
    v7 = installMode == 2;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = [v4 lockup];
    v9 = [v8 offer];

    if (([v9 flags] & 0x10) != 0 && (objc_msgSend(v9, "flags") & 0x40) != 0)
    {
      [v5 setAutomaticallyPresentsProductDetails:0];
      v10 = NTKClockFaceLocalizedString(@"GREENFIELD_ADD_WATCH_FACE_INSTALL_BUTTON_TITLE", @"INSTALL");
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __74__NTKGreenfieldCompanionContentViewController_lockupViewDidFinishRequest___block_invoke_2;
      v11[3] = &unk_27877DB10;
      v11[4] = self;
      [(NTKGreenfieldCompanionContentViewController *)self _overrideLockup:v5 withButtonTitle:v10 buttonAction:v11];
    }

    goto LABEL_11;
  }

  if (installMode == 1)
  {
    v9 = NTKClockFaceLocalizedString(@"GREENFIELD_ADD_WATCH_FACE_INSTALL_BUTTON_TITLE", @"INSTALL");
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __74__NTKGreenfieldCompanionContentViewController_lockupViewDidFinishRequest___block_invoke;
    v12[3] = &unk_27877DC58;
    objc_copyWeak(&v13, &location);
    [(NTKGreenfieldCompanionContentViewController *)self _overrideLockup:v5 withButtonTitle:v9 buttonAction:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
LABEL_11:
  }
}

void __74__NTKGreenfieldCompanionContentViewController_lockupViewDidFinishRequest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _installLocallyAvailableApp];
}

void __74__NTKGreenfieldCompanionContentViewController_lockupViewDidFinishRequest___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1320) complicationSlotToItemIdMapping];
  v3 = [v2 allKeysForObject:*(*(a1 + 32) + 1336)];
  v6 = [v3 firstObject];

  v4 = [*(*(a1 + 32) + 1320) complicationSlotToBundleIdMapping];
  v5 = [v4 objectForKeyedSubscript:v6];

  [*(a1 + 32) _reinstallSystemAppWithBundleId:v5];
}

- (void)lockupView:(id)a3 appStateDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v7 isEqualToString:*MEMORY[0x277CEC1B8]])
  {
    if (([v7 isEqualToString:*MEMORY[0x277CEC198]] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CEC1A0]))
    {
      if (self->_lockupViewDidUpdateStateForInstallingOrOpenable)
      {
        goto LABEL_6;
      }

      self->_lockupViewDidUpdateStateForInstallingOrOpenable = 1;
      if (self->_installMode == 2)
      {
        [(NTKGreenfieldCompanionContentViewController *)self _installLocallyAvailableApp];
        goto LABEL_5;
      }
    }

    else
    {
      if (![v7 isEqualToString:*MEMORY[0x277CEC1A8]])
      {
        v8 = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
        WeakRetained = v8;
        v10 = 1;
        goto LABEL_3;
      }

      if (!self->_lockupViewStateDidChange)
      {
        WeakRetained = NTKClockFaceLocalizedString(@"GREENFIELD_ADD_WATCH_FACE_INSTALL_BUTTON_TITLE", @"INSTALL");
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __76__NTKGreenfieldCompanionContentViewController_lockupView_appStateDidChange___block_invoke;
        v12[3] = &unk_27877E438;
        v12[4] = self;
        v13 = v6;
        [(NTKGreenfieldCompanionContentViewController *)self _overrideLockup:v13 withButtonTitle:WeakRetained buttonAction:v12];

        goto LABEL_4;
      }
    }

    v11 = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
    [v11 setEnabled:1];

    WeakRetained = objc_loadWeakRetained(&self->_greenfieldDelegate);
    [WeakRetained companionContentViewController:self didStartInstallingAppWithItemId:self->_complicationItemId];
    goto LABEL_4;
  }

  v8 = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
  WeakRetained = v8;
  v10 = 0;
LABEL_3:
  [v8 setEnabled:v10];
LABEL_4:

LABEL_5:
  self->_lockupViewStateDidChange = 1;
LABEL_6:
}

void __76__NTKGreenfieldCompanionContentViewController_lockupView_appStateDidChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) lockup];
  v2 = [v3 id];
  [v1 _reinstallAppWithAdamId:v2];
}

- (id)_errorSubtitleForError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:@"com.apple.nanotimekit.NTKGreenfieldAddWatchFaceManager"];

  if (v5)
  {
    switch([v3 code])
    {
      case 1:
      case 8:
      case 11:
        v6 = @"GREENFIELD_ADD_WATCH_FACE_ERROR_NOT_AVAIALBLE_ON_DEVICE";
        v7 = @"This watch face is not available on your Apple Watch.";
        goto LABEL_5;
      case 2:
      case 4:
        v6 = @"GREENFIELD_ADD_WATCH_FACE_ERROR_TRY_AGAIN_LATER";
        v7 = @"Try again later.";
        goto LABEL_5;
      case 3:
        v6 = @"GREENFIELD_COMPANION_ADD_WATCH_FACE_ERROR_NO_WATCH_PAIRED";
        v7 = @"Pair your Apple Watch with this iPhone to add this face.";
        goto LABEL_5;
      case 5:
        v10 = MEMORY[0x277CCACA8];
        v11 = NTKClockFaceLocalizedString(@"GREENFIELD_ADD_WATCH_FACE_ERROR_FACE_LIMIT", @"too many faces");
        v12 = [MEMORY[0x277CBBAE8] currentDevice];
        v8 = [v10 localizedStringWithFormat:v11, NTKFaceLibraryMaxFaceCountForDevice(v12)];

        break;
      case 6:
        v6 = @"GREENFIELD_COMPANION_ADD_WATCH_FACE_ERROR_SINGULAR_FACE_SUBTITLE";
        v7 = @"You can switch to this face on your Apple Watch.";
        goto LABEL_5;
      case 7:
        v6 = @"GREENFIELD_ADD_WATCH_FACE_ERROR_NO_PHOTOS_INCLUDED_IN_PHOTOS_WATCH_FACE";
        v7 = @"This face cannot be added to your Apple Watch because the sender did not include any photos.";
        goto LABEL_5;
      case 9:
        v6 = @"GREENFIELD_ADD_WATCH_FACE_ERROR_LIBRARY_NOT_LOADED";
        v7 = @"Could not add this watch face at this time. Try again later.";
        goto LABEL_5;
      case 10:
        v6 = @"GREENFIELD_ADD_WATCH_FACE_ERROR_NO_NETWORK_CONNECTION_OR_INVALID_URL_SUBTITLE";
        v7 = @"Check your internet connection and try again.";
        goto LABEL_5;
      case 12:
        v6 = @"GREENFIELD_COMPANION_ADD_WATCH_FACE_ERROR_REQURE_WATCH_OS_UPDATE";
        v7 = @"Watch face sharing is not available with your current version of watchOS.";
        goto LABEL_5;
      case 13:
        v13 = [MEMORY[0x277CBBAE8] currentDevice];
        v14 = [v13 pdrDevice];
        v15 = [v14 valueForProperty:*MEMORY[0x277D37BD8]];

        v16 = MEMORY[0x277CCACA8];
        v17 = NTKClockFaceLocalizedString(@"GREENFIELD_ADD_WATCH_FACE_ERROR_PAIRED_DEVICE_IS_TINKER", @"This face can be added on Apple Watch. Message it to %@ to get started.");
        v8 = [v16 localizedStringWithFormat:v17, v15];

        break;
      default:
        goto LABEL_4;
    }
  }

  else
  {
LABEL_4:
    v6 = @"GREENFIELD_ADD_WATCH_FACE_ERROR_DEFAULT_ALERT_MESSAGE";
    v7 = @"This watch face is not available with your current version of watchOS.";
LABEL_5:
    v8 = NTKClockFaceLocalizedString(v6, v7);
  }

  return v8;
}

- (id)_errorTitleForError:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  v6 = [v5 isEqualToString:@"com.apple.nanotimekit.NTKGreenfieldAddWatchFaceManager"];

  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = [v4 code];
  if (v7 <= 5)
  {
    if (v7 && v7 != 2)
    {
      if (v7 == 4)
      {
        v8 = @"GREENFIELD_ADD_WATCH_FACE_ERROR_FAILED_TO_DOWNLOAD_WATCH_FACE_DATA_TITLE";
        v9 = @"This Watch Face is Not Available at This Time";
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v7 > 10)
  {
    if (v7 != 11)
    {
      if (v7 == 12)
      {
LABEL_13:
        v8 = @"GREENFIELD_ADD_WATCH_FACE_ERROR_NOT_AVAIALBLE_ON_DEVICE_ALERT_TITLE";
        v9 = @"Watch Face Unavailable";
        goto LABEL_16;
      }

LABEL_15:
      v8 = @"GREENFIELD_ADD_WATCH_FACE_TITLE_MAIN_SCREEN_GENERIC";
      v9 = @"Add Watch Face";
      goto LABEL_16;
    }

LABEL_14:
    v10 = [(NTKGreenfieldDecodedRecipe *)self->_decodedRecipe watchFace];

    if (!v10)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (v7 != 6)
  {
    if (v7 == 10)
    {
      v8 = @"GREENFIELD_ADD_WATCH_FACE_ERROR_NO_NETWORK_CONNECTION_OR_INVALID_URL_TITLE";
      v9 = @"Unable to Download the Watch Face";
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v8 = @"GREENFIELD_COMPANION_ADD_WATCH_FACE_ERROR_SINGULAR_FACE_TITLE";
  v9 = @"You Already Have This Face";
LABEL_16:
  v11 = NTKClockFaceLocalizedString(v8, v9);

  return v11;
}

- (void)_didTapShowInternalErrorButton
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Please file a radar to Watch Faces if you think this is an error.\n %@", self->_error];
  v3 = [MEMORY[0x277D75110] alertControllerWithTitle:@"[Internal Only]" message:v5 preferredStyle:1];
  v4 = [MEMORY[0x277D750F8] actionWithTitle:@"Ok" style:1 handler:0];
  [v3 addAction:v4];

  [(NTKGreenfieldCompanionContentViewController *)self presentViewController:v3 animated:1 completion:0];
}

- (NTKGreenfieldCompanionContentViewControllerDelegate)greenfieldDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_greenfieldDelegate);

  return WeakRetained;
}

@end