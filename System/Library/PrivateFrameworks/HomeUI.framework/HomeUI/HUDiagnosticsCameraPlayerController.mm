@interface HUDiagnosticsCameraPlayerController
- (AVPlayerViewController)cameraPlayerViewController;
- (HFCameraPlaybackEngine)playbackEngine;
- (HUClipScrubberDataSource)clipScrubberDataSource;
- (HUDiagnosticsCameraPlayerController)initWithCameraPlayerViewController:(id)controller playbackEngine:(id)engine clipScrubberDataSource:(id)source cameraProfile:(id)profile;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)dismissDetailsViewController;
- (void)dismissDiagnosticDetails;
- (void)displayDiagnosticDetails;
- (void)launchPlaybackEngineDiagnosticsView;
- (void)updateWithPlaybackEngine:(id)engine;
@end

@implementation HUDiagnosticsCameraPlayerController

- (HUDiagnosticsCameraPlayerController)initWithCameraPlayerViewController:(id)controller playbackEngine:(id)engine clipScrubberDataSource:(id)source cameraProfile:(id)profile
{
  controllerCopy = controller;
  engineCopy = engine;
  sourceCopy = source;
  profileCopy = profile;
  v20.receiver = self;
  v20.super_class = HUDiagnosticsCameraPlayerController;
  v14 = [(HUDiagnosticsCameraPlayerController *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_cameraPlayerViewController, controllerCopy);
    objc_storeWeak(&v15->_playbackEngine, engineCopy);
    objc_storeWeak(&v15->_clipScrubberDataSource, sourceCopy);
    objc_storeStrong(&v15->_cameraProfile, profile);
    v16 = [objc_alloc(MEMORY[0x277D753B8]) initWithDelegate:v15];
    WeakRetained = objc_loadWeakRetained(&v15->_cameraPlayerViewController);
    view = [WeakRetained view];
    [view addInteraction:v16];
  }

  return v15;
}

- (void)updateWithPlaybackEngine:(id)engine
{
  engineCopy = engine;
  diagnosticsView = [(HUDiagnosticsCameraPlayerController *)self diagnosticsView];
  [diagnosticsView updateWithPlaybackEngine:engineCopy];
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D753B0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __93__HUDiagnosticsCameraPlayerController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
  v9[3] = &unk_277DBD320;
  objc_copyWeak(&v10, &location);
  v7 = [v6 configurationWithIdentifier:0 previewProvider:0 actionProvider:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v7;
}

id __93__HUDiagnosticsCameraPlayerController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1, void *a2)
{
  v26[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277D750C8];
  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"house.fill"];
  v6 = [v4 actionWithTitle:@"Home Settings" image:v5 identifier:0 handler:&__block_literal_global_115];

  v7 = MEMORY[0x277D750C8];
  v8 = [MEMORY[0x277D755B8] systemImageNamed:@"house"];
  v9 = [v7 actionWithTitle:@"HomeKit Settings" image:v8 identifier:0 handler:&__block_literal_global_23_1];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained diagnosticsView];
  v12 = @"Hide Inspector";
  if (!v11)
  {
    v12 = @"Show Inspector";
  }

  v13 = v12;

  v14 = [WeakRetained diagnosticsView];
  v15 = @"magnifyingglass.circle.fill";
  if (!v14)
  {
    v15 = @"magnifyingglass.circle";
  }

  v16 = v15;

  v17 = MEMORY[0x277D750C8];
  v18 = [MEMORY[0x277D755B8] systemImageNamed:v16];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __93__HUDiagnosticsCameraPlayerController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_4;
  v24[3] = &unk_277DB8950;
  objc_copyWeak(&v25, (a1 + 32));
  v19 = [v17 actionWithTitle:v13 image:v18 identifier:0 handler:v24];

  v20 = MEMORY[0x277D75710];
  v26[0] = v19;
  v26[1] = v6;
  v26[2] = v9;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];
  v22 = [v20 menuWithTitle:&stru_2823E0EE8 children:v21];

  objc_destroyWeak(&v25);

  return v22;
}

void __93__HUDiagnosticsCameraPlayerController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2()
{
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=INTERNAL_SETTINGS&path=Home"];
  v0 = [MEMORY[0x277D148E8] sharedInstance];
  v1 = [v0 openURL:v2];
}

void __93__HUDiagnosticsCameraPlayerController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_3()
{
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=INTERNAL_SETTINGS&path=HomeKit"];
  v0 = [MEMORY[0x277D148E8] sharedInstance];
  v1 = [v0 openURL:v2];
}

void __93__HUDiagnosticsCameraPlayerController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained diagnosticsView];

  if (v1)
  {
    v2 = [WeakRetained diagnosticsView];
    [v2 removeFromSuperview];

    [WeakRetained setDiagnosticsView:0];
  }

  else
  {
    [WeakRetained launchPlaybackEngineDiagnosticsView];
  }
}

- (void)launchPlaybackEngineDiagnosticsView
{
  cameraPlayerViewController = [(HUDiagnosticsCameraPlayerController *)self cameraPlayerViewController];
  view = [cameraPlayerViewController view];
  [view bounds];
  v6 = v5 + -330.0;
  cameraPlayerViewController2 = [(HUDiagnosticsCameraPlayerController *)self cameraPlayerViewController];
  view2 = [cameraPlayerViewController2 view];
  [view2 bounds];
  v10 = v9;

  v11 = [[HUDiagnosticsCameraTimelineView alloc] initWithFrame:0.0, v6, v10, 160.0];
  [(HUDiagnosticsCameraPlayerController *)self setDiagnosticsView:v11];

  diagnosticsView = [(HUDiagnosticsCameraPlayerController *)self diagnosticsView];
  [diagnosticsView setOverrideUserInterfaceStyle:2];

  cameraPlayerViewController3 = [(HUDiagnosticsCameraPlayerController *)self cameraPlayerViewController];
  customControlsView = [cameraPlayerViewController3 customControlsView];
  diagnosticsView2 = [(HUDiagnosticsCameraPlayerController *)self diagnosticsView];
  [customControlsView addSubview:diagnosticsView2];

  diagnosticsView3 = [(HUDiagnosticsCameraPlayerController *)self diagnosticsView];
  moreButton = [diagnosticsView3 moreButton];
  [moreButton addTarget:self action:sel_displayDiagnosticDetails forControlEvents:64];

  diagnosticsView4 = [(HUDiagnosticsCameraPlayerController *)self diagnosticsView];
  playbackEngine = [(HUDiagnosticsCameraPlayerController *)self playbackEngine];
  [diagnosticsView4 updateWithPlaybackEngine:playbackEngine];
}

- (void)displayDiagnosticDetails
{
  clipScrubberDataSource = [(HUDiagnosticsCameraPlayerController *)self clipScrubberDataSource];
  currentEvent = [clipScrubberDataSource currentEvent];
  containerType = [currentEvent containerType];

  if (containerType == 1)
  {
    v6 = objc_opt_class();
    clipScrubberDataSource2 = [(HUDiagnosticsCameraPlayerController *)self clipScrubberDataSource];
    currentEvent2 = [clipScrubberDataSource2 currentEvent];
    if (currentEvent2)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = currentEvent2;
      }

      else
      {
        v9 = 0;
      }

      v29 = currentEvent2;
      if (v9)
      {
        goto LABEL_9;
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v11 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v6, objc_opt_class()}];
    }

    v29 = 0;
LABEL_9:

    v12 = [HUDiagnosticsCameraClipViewController alloc];
    cameraProfile = [(HUDiagnosticsCameraPlayerController *)self cameraProfile];
    v14 = [(HUDiagnosticsCameraClipViewController *)v12 initWithRecordingEvent:v29 cameraProfile:cameraProfile];
    goto LABEL_18;
  }

  v15 = objc_opt_class();
  clipScrubberDataSource3 = [(HUDiagnosticsCameraPlayerController *)self clipScrubberDataSource];
  currentEvent3 = [clipScrubberDataSource3 currentEvent];
  if (currentEvent3)
  {
    if (objc_opt_isKindOfClass())
    {
      v18 = currentEvent3;
    }

    else
    {
      v18 = 0;
    }

    v29 = currentEvent3;
    if (v18)
    {
      goto LABEL_17;
    }

    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler2 handleFailureInFunction:v20 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v15, objc_opt_class()}];
  }

  v29 = 0;
LABEL_17:

  v21 = [HUDiagnosticsReachabilityEventViewController alloc];
  cameraProfile = [(HUDiagnosticsCameraPlayerController *)self cameraProfile];
  v14 = [(HUDiagnosticsReachabilityEventViewController *)v21 initWithReachabilityEvent:v29 cameraProfile:cameraProfile];
LABEL_18:
  v22 = v14;

  v23 = objc_alloc(MEMORY[0x277D751E0]);
  v24 = _HULocalizedStringWithDefaultValue(@"HUDoneTitle", @"HUDoneTitle", 1);
  v25 = [v23 initWithTitle:v24 style:2 target:self action:sel_dismissDiagnosticDetails];
  navigationItem = [v22 navigationItem];
  [navigationItem setLeftBarButtonItem:v25];

  v27 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v22];
  cameraPlayerViewController = [(HUDiagnosticsCameraPlayerController *)self cameraPlayerViewController];
  [cameraPlayerViewController presentViewController:v27 animated:1 completion:0];
}

- (void)dismissDiagnosticDetails
{
  cameraPlayerViewController = [(HUDiagnosticsCameraPlayerController *)self cameraPlayerViewController];
  [cameraPlayerViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)dismissDetailsViewController
{
  cameraPlayerViewController = [(HUDiagnosticsCameraPlayerController *)self cameraPlayerViewController];
  [cameraPlayerViewController dismissViewControllerAnimated:1 completion:0];
}

- (AVPlayerViewController)cameraPlayerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraPlayerViewController);

  return WeakRetained;
}

- (HUClipScrubberDataSource)clipScrubberDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_clipScrubberDataSource);

  return WeakRetained;
}

- (HFCameraPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

@end