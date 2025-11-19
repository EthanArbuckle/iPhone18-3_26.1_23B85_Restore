@interface HUDiagnosticsCameraPlayerController
- (AVPlayerViewController)cameraPlayerViewController;
- (HFCameraPlaybackEngine)playbackEngine;
- (HUClipScrubberDataSource)clipScrubberDataSource;
- (HUDiagnosticsCameraPlayerController)initWithCameraPlayerViewController:(id)a3 playbackEngine:(id)a4 clipScrubberDataSource:(id)a5 cameraProfile:(id)a6;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)dismissDetailsViewController;
- (void)dismissDiagnosticDetails;
- (void)displayDiagnosticDetails;
- (void)launchPlaybackEngineDiagnosticsView;
- (void)updateWithPlaybackEngine:(id)a3;
@end

@implementation HUDiagnosticsCameraPlayerController

- (HUDiagnosticsCameraPlayerController)initWithCameraPlayerViewController:(id)a3 playbackEngine:(id)a4 clipScrubberDataSource:(id)a5 cameraProfile:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = HUDiagnosticsCameraPlayerController;
  v14 = [(HUDiagnosticsCameraPlayerController *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_cameraPlayerViewController, v10);
    objc_storeWeak(&v15->_playbackEngine, v11);
    objc_storeWeak(&v15->_clipScrubberDataSource, v12);
    objc_storeStrong(&v15->_cameraProfile, a6);
    v16 = [objc_alloc(MEMORY[0x277D753B8]) initWithDelegate:v15];
    WeakRetained = objc_loadWeakRetained(&v15->_cameraPlayerViewController);
    v18 = [WeakRetained view];
    [v18 addInteraction:v16];
  }

  return v15;
}

- (void)updateWithPlaybackEngine:(id)a3
{
  v4 = a3;
  v5 = [(HUDiagnosticsCameraPlayerController *)self diagnosticsView];
  [v5 updateWithPlaybackEngine:v4];
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
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
  v3 = [(HUDiagnosticsCameraPlayerController *)self cameraPlayerViewController];
  v4 = [v3 view];
  [v4 bounds];
  v6 = v5 + -330.0;
  v7 = [(HUDiagnosticsCameraPlayerController *)self cameraPlayerViewController];
  v8 = [v7 view];
  [v8 bounds];
  v10 = v9;

  v11 = [[HUDiagnosticsCameraTimelineView alloc] initWithFrame:0.0, v6, v10, 160.0];
  [(HUDiagnosticsCameraPlayerController *)self setDiagnosticsView:v11];

  v12 = [(HUDiagnosticsCameraPlayerController *)self diagnosticsView];
  [v12 setOverrideUserInterfaceStyle:2];

  v13 = [(HUDiagnosticsCameraPlayerController *)self cameraPlayerViewController];
  v14 = [v13 customControlsView];
  v15 = [(HUDiagnosticsCameraPlayerController *)self diagnosticsView];
  [v14 addSubview:v15];

  v16 = [(HUDiagnosticsCameraPlayerController *)self diagnosticsView];
  v17 = [v16 moreButton];
  [v17 addTarget:self action:sel_displayDiagnosticDetails forControlEvents:64];

  v19 = [(HUDiagnosticsCameraPlayerController *)self diagnosticsView];
  v18 = [(HUDiagnosticsCameraPlayerController *)self playbackEngine];
  [v19 updateWithPlaybackEngine:v18];
}

- (void)displayDiagnosticDetails
{
  v3 = [(HUDiagnosticsCameraPlayerController *)self clipScrubberDataSource];
  v4 = [v3 currentEvent];
  v5 = [v4 containerType];

  if (v5 == 1)
  {
    v6 = objc_opt_class();
    v7 = [(HUDiagnosticsCameraPlayerController *)self clipScrubberDataSource];
    v8 = [v7 currentEvent];
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v29 = v8;
      if (v9)
      {
        goto LABEL_9;
      }

      v10 = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v10 handleFailureInFunction:v11 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v6, objc_opt_class()}];
    }

    v29 = 0;
LABEL_9:

    v12 = [HUDiagnosticsCameraClipViewController alloc];
    v13 = [(HUDiagnosticsCameraPlayerController *)self cameraProfile];
    v14 = [(HUDiagnosticsCameraClipViewController *)v12 initWithRecordingEvent:v29 cameraProfile:v13];
    goto LABEL_18;
  }

  v15 = objc_opt_class();
  v16 = [(HUDiagnosticsCameraPlayerController *)self clipScrubberDataSource];
  v17 = [v16 currentEvent];
  if (v17)
  {
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v29 = v17;
    if (v18)
    {
      goto LABEL_17;
    }

    v19 = [MEMORY[0x277CCA890] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v19 handleFailureInFunction:v20 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v15, objc_opt_class()}];
  }

  v29 = 0;
LABEL_17:

  v21 = [HUDiagnosticsReachabilityEventViewController alloc];
  v13 = [(HUDiagnosticsCameraPlayerController *)self cameraProfile];
  v14 = [(HUDiagnosticsReachabilityEventViewController *)v21 initWithReachabilityEvent:v29 cameraProfile:v13];
LABEL_18:
  v22 = v14;

  v23 = objc_alloc(MEMORY[0x277D751E0]);
  v24 = _HULocalizedStringWithDefaultValue(@"HUDoneTitle", @"HUDoneTitle", 1);
  v25 = [v23 initWithTitle:v24 style:2 target:self action:sel_dismissDiagnosticDetails];
  v26 = [v22 navigationItem];
  [v26 setLeftBarButtonItem:v25];

  v27 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v22];
  v28 = [(HUDiagnosticsCameraPlayerController *)self cameraPlayerViewController];
  [v28 presentViewController:v27 animated:1 completion:0];
}

- (void)dismissDiagnosticDetails
{
  v2 = [(HUDiagnosticsCameraPlayerController *)self cameraPlayerViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)dismissDetailsViewController
{
  v2 = [(HUDiagnosticsCameraPlayerController *)self cameraPlayerViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
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