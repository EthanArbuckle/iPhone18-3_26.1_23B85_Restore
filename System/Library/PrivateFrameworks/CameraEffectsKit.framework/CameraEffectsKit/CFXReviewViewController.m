@interface CFXReviewViewController
+ (void)initialize;
- (BOOL)allowLandscapeForEffectBrowserViewController:(id)a3;
- (BOOL)mediaCapturedInFunCam;
- (BOOL)mediaItemRequiresExport;
- (BOOL)shouldAlwaysPresentExpandedAppsForEffectBrowserViewController:(id)a3;
- (CFXReviewViewController)initWithMediaItem:(id)a3;
- (CFXReviewViewControllerDelegate)delegate;
- (NSData)adjustmentsData;
- (NSData)animojiMetadata;
- (UIView)effectsPickerDrawer;
- (double)effectBrowserViewController:(id)a3 screenTopBarHeightForWindowBounds:(CGRect)a4 orientation:(int64_t)a5;
- (id)localizedPromptForHidingAnimojiForEffectBrowserViewController:(id)a3;
- (id)preferredDisplayColorSpace;
- (id)preferredExportColorSpace;
- (id)selectedAnimojiIdentifierForEffectBrowserViewController:(id)a3;
- (id)selectedAppIdentifierForPreviewViewController:(id)a3;
- (id)selectedFilterIdentifierForEffectBrowserViewController:(id)a3;
- (int64_t)calculateMediaInterfaceOrientationForDisplay;
- (int64_t)mediaCaptureDevicePosition;
- (void)CFX_resetAndLoadPreviewViewController;
- (void)CFX_updateAnalyticsForSentMediaItem:(id)a3;
- (void)effectBrowserViewController:(id)a3 didDismissPickerForEffectType:(id)a4;
- (void)effectBrowserViewController:(id)a3 didDropOverlayEffect:(id)a4 atScreenLocation:(CGPoint)a5 atScreenSize:(CGSize)a6 rotationAngle:(double)a7;
- (void)effectBrowserViewController:(id)a3 didPresentPickerForEffectType:(id)a4;
- (void)effectBrowserViewController:(id)a3 didRemoveAllEffectsOfType:(id)a4;
- (void)effectBrowserViewController:(id)a3 didSelectAppWithIdentifier:(id)a4;
- (void)effectBrowserViewController:(id)a3 didSelectEffect:(id)a4;
- (void)effectBrowserViewController:(id)a3 filterPickerPreviewBackgroundImageAtSizeInPixels:(CGSize)a4 completion:(id)a5;
- (void)effectBrowserViewController:(id)a3 willChangeDockHeight:(double)a4;
- (void)exportMediaItemToFileURL:(id)a3;
- (void)loadView;
- (void)previewViewController:(id)a3 didFinishExportingMediaItem:(id)a4 withError:(id)a5;
- (void)previewViewController:(id)a3 didProgress:(double)a4 exportingMediaItem:(id)a5;
- (void)previewViewController:(id)a3 didStartExportingMediaItem:(id)a4;
- (void)previewViewControllerDidHideUserInterface:(id)a3;
- (void)previewViewControllerDidShowUserInterface:(id)a3;
- (void)previewViewControllerDidStartEditingText:(id)a3;
- (void)previewViewControllerDidStopEditingText:(id)a3;
- (void)setEffectsPickerDrawer:(id)a3;
- (void)showMemojiPicker:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CFXReviewViewController

+ (void)initialize
{
  v7[1] = *MEMORY[0x277D85DE8];
  +[CFXApplicationState beginMonitoringApplicationState];
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 addSuiteNamed:@"com.apple.MobileSMS"];

  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = *MEMORY[0x277D416D8];
  v7[0] = &unk_28556D068;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v3 registerDefaults:v4];

  +[CFXEffect setupFactoryDelegate];
  v5 = +[CFXMediaSettings sharedInstance];
  [JFXMediaSettings setProviderDelegate:v5];
}

- (CFXReviewViewController)initWithMediaItem:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = CFXReviewViewController;
  v6 = [(CFXReviewViewController *)&v23 initWithNibName:0 bundle:0];
  if (v6)
  {
    v7 = +[CFXEffectHostAppDelegate sharedInstance];
    [v7 setColorSpaceDelegate:v6];

    v8 = dispatch_get_global_queue(25, 0);
    dispatch_async(v8, &__block_literal_global);

    objc_storeStrong(v6 + 130, a3);
    v9 = dispatch_group_create();
    v10 = *(v6 + 131);
    *(v6 + 131) = v9;

    *(v6 + 992) = 0;
    *(v6 + 132) = 0;
    *(v6 + 134) = [v5 cameraMode];
    v11 = [v5 originalAssetURL];
    v12 = [v5 metadataURL];
    v13 = [v5 type];
    dispatch_group_enter(*(v6 + 131));
    v14 = dispatch_get_global_queue(21, 0);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __45__CFXReviewViewController_initWithMediaItem___block_invoke_2;
    v18[3] = &unk_278D79CF8;
    v19 = v12;
    v21 = v11;
    v22 = v13;
    v20 = v6;
    v15 = v11;
    v16 = v12;
    dispatch_async(v14, v18);
  }

  return v6;
}

void __45__CFXReviewViewController_initWithMediaItem___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __45__CFXReviewViewController_initWithMediaItem___block_invoke_3;
    v20[3] = &unk_278D79CD0;
    v21 = *(a1 + 40);
    [JFXVideoWriter META_metadataForVideo:v2 completion:v20];
  }

  else
  {
    if (!*(a1 + 56))
    {
      v3 = *(a1 + 40);
      v4 = CGImageSourceCreateWithURL(*(a1 + 48), 0);
      if (v4)
      {
        v5 = v4;
        v6 = CGImageSourceCopyPropertiesAtIndex(v4, 0, 0);
        if (v6)
        {
          v7 = *MEMORY[0x277CD3038];
          v8 = *MEMORY[0x277CD2FF8];
          v9 = *MEMORY[0x277CD3490];
          v10 = *MEMORY[0x277CD34B8];
          v11 = v6;
          v12 = [(__CFDictionary *)v11 objectForKeyedSubscript:v7];
          v13 = [v12 objectForKeyedSubscript:v8];
          *(v3 + 992) = [v13 isEqualToString:@"Generated in Camera Effects"];
          v14 = [(__CFDictionary *)v11 objectForKeyedSubscript:v9];
          v15 = [v14 objectForKeyedSubscript:v10];

          if (v15 && ([v14 objectForKeyedSubscript:v10], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "unsignedIntValue"), v16, (v17 - 1) <= 7))
          {
            v18 = qword_242B5B478[v17 - 1];
          }

          else
          {
            v18 = 0;
          }

          *(v3 + 1056) = v18;
          CFRelease(v11);
        }

        CFRelease(v5);
      }
    }

    v19 = *(*(a1 + 40) + 1048);

    dispatch_group_leave(v19);
  }
}

void __45__CFXReviewViewController_initWithMediaItem___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  *(*(a1 + 32) + 992) = v6;
  *(*(a1 + 32) + 1056) = a3;
  v7 = [a4 copy];
  v8 = *(a1 + 32);
  v9 = *(v8 + 1064);
  *(v8 + 1064) = v7;

  v10 = *(*(a1 + 32) + 1048);

  dispatch_group_leave(v10);
}

- (void)loadView
{
  v3 = [JFXPassThroughContainerView alloc];
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 bounds];
  v5 = [(JFXPassThroughContainerView *)v3 initWithFrame:?];

  [(CFXReviewViewController *)self setView:v5];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CFXReviewViewController;
  [(CFXReviewViewController *)&v4 viewDidLoad];
  if (!+[JFXOrientationMonitor initialized])
  {
    [JFXOrientationMonitor initializeWithViewController:self];
  }

  [(CFXReviewViewController *)self CFX_resetAndLoadPreviewViewController];
  v3 = objc_alloc_init(CFXStageManagerWarningViewController);
  [(UIViewController *)self jfxAddChildViewController:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = CFXReviewViewController;
  [(CFXReviewViewController *)&v3 viewDidAppear:a3];
}

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = CFXReviewViewController;
  [(CFXReviewViewController *)&v2 viewDidLayoutSubviews];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v30 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v27.receiver = self;
  v27.super_class = CFXReviewViewController;
  [(CFXReviewViewController *)&v27 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = CFXLog_action();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(CFXReviewViewController *)self internalPreviewViewController];
    v10 = [v9 previewClip];
    v11 = [v10 effectStack];
    v12 = [CFXActionLogging actionLogAsJSONForEvent:@"device rotated" atLocation:@"post-capture" withEffectStack:v11];
    *buf = 138543362;
    v29 = v12;
    _os_log_impl(&dword_242A3B000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v13 = [MEMORY[0x277D75418] currentDevice];
  if ([v13 userInterfaceIdiom])
  {
    goto LABEL_6;
  }

  v14 = [(CFXReviewViewController *)self view];
  v15 = [v14 window];

  if (v15)
  {
    v13 = [(CFXReviewViewController *)self internalPreviewViewController];
    v16 = [v13 bottomControlsSnapshot];
    v17 = [(CFXReviewViewController *)self internalPreviewViewController];
    [v17 bottomControlsCenter];
    v19 = v18;
    v21 = v20;
    v22 = [(CFXReviewViewController *)self view];
    v23 = [v22 subviews];
    v24 = [v23 count];
    v25[4] = self;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __78__CFXReviewViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v26[3] = &unk_278D79D20;
    v26[4] = self;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __78__CFXReviewViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
    v25[3] = &unk_278D79D20;
    [(UIViewController *)self displaySnapshot:v16 atCenterPoint:v24 atIndex:0 forTransitionToSize:v7 fadeOut:v26 withTransitionCoordinator:v25 preTransitionBlock:v19 postTransitionBlock:v21, width, height];

LABEL_6:
  }
}

void __78__CFXReviewViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) internalPreviewViewController];
  [v1 hideBottomControls];
}

void __78__CFXReviewViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) internalPreviewViewController];
  [v1 showBottomControls];
}

- (NSData)adjustmentsData
{
  v2 = [(CFXReviewViewController *)self mediaItem];
  v3 = [v2 adjustmentsData];

  return v3;
}

- (UIView)effectsPickerDrawer
{
  [(CFXReviewViewController *)self loadViewIfNeeded];
  v3 = [(CFXReviewViewController *)self internalPreviewViewController];
  v4 = [v3 effectsPickerDrawer];

  return v4;
}

- (void)setEffectsPickerDrawer:(id)a3
{
  v4 = a3;
  [(CFXReviewViewController *)self loadViewIfNeeded];
  v5 = [(CFXReviewViewController *)self internalPreviewViewController];
  [v5 setEffectsPickerDrawer:v4];

  if (!v4)
  {
    v6 = [(CFXReviewViewController *)self effectBrowserViewController];

    if (v6)
    {
      v7 = [(CFXReviewViewController *)self effectBrowserViewController];
      [v7 jfxRemoveFromParentViewController];

      [(CFXReviewViewController *)self setEffectBrowserViewController:0];
    }
  }
}

- (BOOL)mediaCapturedInFunCam
{
  v3 = [(CFXReviewViewController *)self metadataReaderGroup];
  v4 = dispatch_time(0, 5000000000);
  v5 = dispatch_group_wait(v3, v4);

  if (v5)
  {
    v6 = JFXLog_playback();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CFXReviewViewController mediaCapturedInFunCam];
    }
  }

  return [(CFXReviewViewController *)self mediaCapturedInFunCam_metadata];
}

- (int64_t)mediaCaptureDevicePosition
{
  v3 = [(CFXReviewViewController *)self metadataReaderGroup];
  v4 = dispatch_time(0, 5000000000);
  v5 = dispatch_group_wait(v3, v4);

  if (v5)
  {
    v6 = JFXLog_playback();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CFXReviewViewController mediaCaptureDevicePosition];
    }
  }

  return [(CFXMediaItem *)self->_mediaItem cameraPosition];
}

- (int64_t)calculateMediaInterfaceOrientationForDisplay
{
  v3 = [(CFXReviewViewController *)self metadataReaderGroup];
  v4 = dispatch_time(0, 5000000000);
  v5 = dispatch_group_wait(v3, v4);

  if (v5)
  {
    v6 = JFXLog_playback();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CFXReviewViewController calculateMediaInterfaceOrientationForDisplay];
    }
  }

  return [(CFXReviewViewController *)self mediaInterfaceOrientationForDisplay_metadata];
}

- (NSData)animojiMetadata
{
  v3 = [(CFXReviewViewController *)self metadataReaderGroup];
  v4 = dispatch_time(0, 5000000000);
  v5 = dispatch_group_wait(v3, v4);

  if (v5)
  {
    v6 = JFXLog_playback();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CFXReviewViewController animojiMetadata];
    }
  }

  v7 = [(CFXReviewViewController *)self animojiMetadata_metadata];

  return v7;
}

- (void)exportMediaItemToFileURL:(id)a3
{
  v4 = a3;
  v5 = [(CFXReviewViewController *)self internalPreviewViewController];
  [v5 exportMediaItemToFileURL:v4];
}

- (BOOL)mediaItemRequiresExport
{
  v3 = [(CFXReviewViewController *)self internalPreviewViewController];
  v4 = [v3 previewClip];

  if ([(CFXReviewViewController *)self mediaCapturedInFunCam])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v4 effectStack];
    v5 = [v6 count] != 0;
  }

  return v5;
}

- (void)showMemojiPicker:(id)a3
{
  v4 = a3;
  v5 = [(CFXReviewViewController *)self effectBrowserViewController];

  if (v5)
  {
    v6 = [(CFXReviewViewController *)self effectBrowserViewController];
    [v6 showMemojiPicker:v4];
  }

  else
  {
    v6 = JFXLog_camera();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CFXReviewViewController showMemojiPicker:];
    }
  }
}

- (void)effectBrowserViewController:(id)a3 didDismissPickerForEffectType:(id)a4
{
  if ([a4 jtEffectType] == 1)
  {
    v5 = [(CFXReviewViewController *)self internalPreviewViewController];
    [v5 setPresentingFilterPicker:0];
  }
}

- (void)effectBrowserViewController:(id)a3 didDropOverlayEffect:(id)a4 atScreenLocation:(CGPoint)a5 atScreenSize:(CGSize)a6 rotationAngle:(double)a7
{
  height = a6.height;
  width = a6.width;
  y = a5.y;
  x = a5.x;
  v13 = a4;
  v14 = [(CFXReviewViewController *)self internalPreviewViewController];
  [v14 addOverlayEffect:v13 atScreenLocation:0 atScreenSize:x rotationAngle:y completion:{width, height, a7}];
}

- (void)effectBrowserViewController:(id)a3 didPresentPickerForEffectType:(id)a4
{
  if ([a4 jtEffectType] == 1)
  {
    v5 = [(CFXReviewViewController *)self internalPreviewViewController];
    [v5 setPresentingFilterPicker:1];
  }
}

- (void)effectBrowserViewController:(id)a3 didSelectAppWithIdentifier:(id)a4
{
  v9 = a4;
  v6 = +[CFXAnalyticsManager sharedInstance];
  v7 = v6;
  if (a4)
  {
    [v6 startTrackingPickerWithIdentifier:v9];
  }

  else
  {
    v8 = [(CFXReviewViewController *)self effectBrowserPresentedAppIdentifier];
    [v7 stopTrackingPickerWithIdentifier:v8];
  }

  [(CFXReviewViewController *)self setEffectBrowserPresentedAppIdentifier:v9];
}

- (void)effectBrowserViewController:(id)a3 didRemoveAllEffectsOfType:(id)a4
{
  v5 = a4;
  v6 = [(CFXReviewViewController *)self internalPreviewViewController];
  v7 = [v6 previewClip];
  [v7 removeAllEffectsOfType:7];

  v8 = [(CFXReviewViewController *)self internalPreviewViewController];
  v9 = [v8 previewPlayer];
  [v9 updateCompositionForEffectChange];

  v10 = [v5 identifier];

  LODWORD(v9) = [v10 isEqualToString:@"Animoji"];
  if (v9)
  {
    v11 = +[CFXAnalyticsManager sharedInstance];
    [v11 didSelectEffectOfType:@"Animoji" effectIsNone:1];
  }
}

- (void)effectBrowserViewController:(id)a3 didSelectEffect:(id)a4
{
  v5 = a4;
  v6 = [(CFXReviewViewController *)self internalPreviewViewController];
  [v6 addEffect:v5 completion:0];

  v7 = [v5 jtEffect];
  v8 = [v7 type];

  v9 = @"Filter";
  if (v8 != 1)
  {
    v9 = 0;
  }

  v10 = v9;
  v12 = +[CFXAnalyticsManager sharedInstance];
  v11 = [v5 isNone];

  [v12 didSelectEffectOfType:v10 effectIsNone:v11];
}

- (id)selectedFilterIdentifierForEffectBrowserViewController:(id)a3
{
  v3 = [(CFXReviewViewController *)self internalPreviewViewController];
  v4 = [v3 previewClip];
  v5 = [v4 effectsOfType:1];
  v6 = [v5 firstObject];

  v7 = [v6 effectID];

  return v7;
}

- (id)selectedAnimojiIdentifierForEffectBrowserViewController:(id)a3
{
  v3 = [(CFXReviewViewController *)self internalPreviewViewController];
  v4 = [v3 previewClip];
  v5 = [v4 effectsOfType:7];
  v6 = [v5 firstObject];

  v7 = [v6 effectID];

  return v7;
}

- (void)effectBrowserViewController:(id)a3 willChangeDockHeight:(double)a4
{
  v5 = [(CFXReviewViewController *)self internalPreviewViewController:a3];
  [v5 updateUIForDockMagnify:a4 > 50.0 dockHeightDelta:a4 + -44.0];
}

- (id)localizedPromptForHidingAnimojiForEffectBrowserViewController:(id)a3
{
  if ([(CFXReviewViewController *)self mediaCapturedInFunCam])
  {
    v4 = [(CFXReviewViewController *)self mediaItem];
    v5 = [v4 metadataURL];
    if (v5)
    {
      v6 = v5;
      v7 = [MEMORY[0x277D75418] currentDevice];
      v8 = [v7 jfx_hasTrueDepthFrontCamera];

      if (v8)
      {
        v9 = 0;
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v10 = [MEMORY[0x277CCA8D8] jfxBundle];
  v9 = [v10 localizedStringForKey:@"HIDE_MEMOJI_NON_FUN_CAM_MEDIA_ITEM_DIPLAY Name" value:&stru_28553D028 table:0];

LABEL_7:

  return v9;
}

- (BOOL)shouldAlwaysPresentExpandedAppsForEffectBrowserViewController:(id)a3
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom] == 1;

  return v4;
}

- (BOOL)allowLandscapeForEffectBrowserViewController:(id)a3
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom] == 0;

  return v4;
}

- (void)effectBrowserViewController:(id)a3 filterPickerPreviewBackgroundImageAtSizeInPixels:(CGSize)a4 completion:(id)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a5;
  v9 = [(CFXReviewViewController *)self internalPreviewViewController];
  [v9 filterPickerPreviewBackgroundImageAtSizeInPixels:v8 completion:{width, height}];
}

- (void)previewViewController:(id)a3 didFinishExportingMediaItem:(id)a4 withError:(id)a5
{
  v13 = a4;
  v7 = a5;
  [(CFXReviewViewController *)self setMediaItem:v13];
  [(CFXReviewViewController *)self CFX_updateAnalyticsForSentMediaItem:v13];
  v8 = [(CFXReviewViewController *)self delegate];
  if (v8)
  {
    v9 = v8;
    v10 = [(CFXReviewViewController *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(CFXReviewViewController *)self delegate];
      [v12 reviewViewController:self didFinishExportingMediaItem:v13 withError:v7];
    }
  }
}

- (void)previewViewController:(id)a3 didProgress:(double)a4 exportingMediaItem:(id)a5
{
  v12 = a5;
  v7 = [(CFXReviewViewController *)self delegate];
  if (v7)
  {
    v8 = v7;
    v9 = [(CFXReviewViewController *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(CFXReviewViewController *)self delegate];
      [v11 reviewViewController:self didProgress:v12 exportingMediaItem:a4];
    }
  }
}

- (void)previewViewController:(id)a3 didStartExportingMediaItem:(id)a4
{
  v10 = a4;
  v5 = [(CFXReviewViewController *)self delegate];
  if (v5)
  {
    v6 = v5;
    v7 = [(CFXReviewViewController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(CFXReviewViewController *)self delegate];
      [v9 reviewViewController:self didStartExportingMediaItem:v10];
    }
  }
}

- (void)previewViewControllerDidHideUserInterface:(id)a3
{
  v4 = [(CFXReviewViewController *)self delegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(CFXReviewViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(CFXReviewViewController *)self delegate];
      [v8 reviewViewControllerDidHideUserInterface:self];
    }
  }
}

- (void)previewViewControllerDidShowUserInterface:(id)a3
{
  v4 = [(CFXReviewViewController *)self delegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(CFXReviewViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(CFXReviewViewController *)self delegate];
      [v8 reviewViewControllerDidShowUserInterface:self];
    }
  }
}

- (void)previewViewControllerDidStartEditingText:(id)a3
{
  v4 = [(CFXReviewViewController *)self delegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(CFXReviewViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(CFXReviewViewController *)self delegate];
      [v8 reviewViewControllerDidHideUserInterface:self];
    }
  }
}

- (void)previewViewControllerDidStopEditingText:(id)a3
{
  v4 = [(CFXReviewViewController *)self delegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(CFXReviewViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(CFXReviewViewController *)self delegate];
      [v8 reviewViewControllerDidShowUserInterface:self];
    }
  }
}

- (id)selectedAppIdentifierForPreviewViewController:(id)a3
{
  v3 = [(CFXReviewViewController *)self effectBrowserViewController];
  v4 = [v3 selectedAppIdentifier];

  return v4;
}

- (id)preferredDisplayColorSpace
{
  v2 = [(CFXReviewViewController *)self mediaItem];
  v3 = [v2 clip];
  v4 = [v3 mediaItem];

  v5 = [v4 colorSpace];

  return v5;
}

- (id)preferredExportColorSpace
{
  v3 = [(CFXReviewViewController *)self mediaItem];
  v4 = [v3 clip];
  v5 = [v4 mediaItem];

  if ([v5 mediaType] == 2)
  {
    v6 = [(CFXReviewViewController *)self preferredDisplayColorSpace];
  }

  else
  {
    v7 = [v5 colorSpace];
    v6 = [v7 jfx_videoExportColorSpace];
  }

  return v6;
}

- (double)effectBrowserViewController:(id)a3 screenTopBarHeightForWindowBounds:(CGRect)a4 orientation:(int64_t)a5
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  memset(&v6, 0, sizeof(v6));
  [MEMORY[0x277D3D080] reviewScreenTopBarGeometryForReferenceBounds:a5 withOrientation:{a4.origin.x, a4.origin.y, a4.size.width, a4.size.height}];
  return CGRectGetHeight(v6);
}

- (void)CFX_resetAndLoadPreviewViewController
{
  v45[4] = *MEMORY[0x277D85DE8];
  v3 = [(CFXReviewViewController *)self internalPreviewViewController];

  if (v3)
  {
    v4 = [(CFXReviewViewController *)self internalPreviewViewController];
    [v4 jfxRemoveFromParentViewController];

    v5 = [(CFXReviewViewController *)self effectBrowserViewController];
    [v5 jfxRemoveFromParentViewController];
  }

  v6 = MEMORY[0x277D75AC8];
  v7 = [MEMORY[0x277CCA8D8] jfxBundle];
  v8 = [v6 storyboardWithName:@"CFXPreviewView" bundle:v7];
  v9 = [v8 instantiateViewControllerWithIdentifier:@"CFXPreviewViewController"];
  [(CFXReviewViewController *)self setInternalPreviewViewController:v9];

  v10 = [(CFXReviewViewController *)self internalPreviewViewController];
  [v10 setDelegate:self];

  v11 = [(CFXReviewViewController *)self mediaItem];
  v12 = [(CFXReviewViewController *)self internalPreviewViewController];
  [v12 setMediaItem:v11];

  v13 = [(CFXReviewViewController *)self mediaCaptureDevicePosition]== 1;
  v14 = [(CFXReviewViewController *)self internalPreviewViewController];
  [v14 setCapturedWithBackCamera:v13];

  v15 = [(CFXReviewViewController *)self internalPreviewViewController];
  [v15 loadViewIfNeeded];

  v16 = [(CFXReviewViewController *)self internalPreviewViewController];
  v17 = [v16 previewControls];

  [v17 view];
  v43 = v42 = v17;
  v18 = [v17 controlsContainerView];
  v19 = [(CFXReviewViewController *)self internalPreviewViewController];
  v44 = [v19 effectBrowserContentPresenterViewController];

  v20 = [[CFXEffectBrowserViewController alloc] initWithDelegate:self contentPresenter:v44];
  [(CFXReviewViewController *)self setEffectBrowserViewController:v20];

  v21 = [(CFXReviewViewController *)self effectBrowserViewController];
  [v21 setContentPresenterDelegate:v44];

  [v44 setDelegate:self];
  v22 = [(CFXReviewViewController *)self effectBrowserViewController];
  v23 = [v22 view];

  v24 = [(CFXReviewViewController *)self effectBrowserViewController];
  [v17 addChildViewController:v24];

  [v43 addSubview:v23];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  v35 = MEMORY[0x277CCAAD0];
  v41 = [v23 leadingAnchor];
  v39 = [v18 leadingAnchor];
  v38 = [v41 constraintEqualToAnchor:v39];
  v45[0] = v38;
  v37 = [v23 trailingAnchor];
  v36 = [v18 trailingAnchor];
  v25 = [v37 constraintEqualToAnchor:v36];
  v45[1] = v25;
  v26 = [v23 topAnchor];
  v40 = v18;
  v27 = [v18 topAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  v45[2] = v28;
  v29 = [v23 bottomAnchor];
  v30 = [v18 bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];
  v45[3] = v31;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];
  [v35 activateConstraints:v32];

  v33 = [(CFXReviewViewController *)self effectBrowserViewController];
  [v33 didMoveToParentViewController:v42];

  v34 = [(CFXReviewViewController *)self internalPreviewViewController];
  [(UIViewController *)self jfxAddChildViewController:v34 constrainRelativeToSafeAreas:0];
}

- (void)CFX_updateAnalyticsForSentMediaItem:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = 0x278D78000;
  if (!a3)
  {
    goto LABEL_32;
  }

  [a3 clip];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v47 = v60 = 0u;
  v4 = [v47 effectStack];
  v5 = [v4 countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (!v5)
  {
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v55 = 0;
    v56 = 0;
    v54 = 0;
    goto LABEL_26;
  }

  v6 = v5;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v55 = 0;
  v56 = 0;
  v54 = 0;
  v7 = *v58;
  v48 = *MEMORY[0x277D418E8];
  v49 = v4;
  v8 = 0x278D78000uLL;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v58 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v57 + 1) + 8 * i);
      v11 = [v10 type];
      switch(v11)
      {
        case 7:
          v54 = 1;
          continue;
        case 2:
          v12 = [v10 effectID];
          v13 = *(v8 + 672);
          [CFXEffectType effectTypeWithIdentifier:@"Text"];
          v15 = v14 = v8;
          v16 = [v13 effectIdentifiersForEffectType:v15];
          v17 = [v16 containsObject:v12];

          if (v17)
          {
            ++v55;
            goto LABEL_16;
          }

          v18 = *(v14 + 672);
          v19 = [CFXEffectType effectTypeWithIdentifier:@"Shapes"];
          v20 = [v18 effectIdentifiersForEffectType:v19];
          v21 = [v20 containsObject:v12];

          if (v21)
          {
            ++v52;
LABEL_16:
            v8 = v14;
          }

          else
          {
            v22 = *(v14 + 672);
            v23 = [CFXEffectType effectTypeWithIdentifier:@"EmojiStickers"];
            v24 = [v22 effectIdentifiersForEffectType:v23];
            v25 = [v24 containsObject:v12];

            if (v25)
            {
              ++v50;
            }

            else
            {
              v51 += [v12 isEqualToString:v48];
            }

            v8 = v14;
            v4 = v49;
          }

          continue;
        case 1:
          ++v56;
          break;
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v57 objects:v61 count:16];
  }

  while (v6);
LABEL_26:

  v26 = [v47 isVideo];
  v27 = [(CFXReviewViewController *)self internalPreviewViewController];
  v28 = [v27 capturedWithBackCamera];

  v29 = +[CFXEffectHostAppDelegate sharedInstance];
  v30 = [v29 preferredExportColorSpace];

  v31 = +[CFXEffectHostAppDelegate sharedInstance];
  v32 = [v31 preferredDisplayColorSpace];

  v53 = v32;
  if ([v30 isHDRSpace])
  {
    v33 = [v32 isHDRSpace];
  }

  else
  {
    v33 = 0;
  }

  v3 = 0x278D78000uLL;
  v34 = [v47 mediaItem];
  v35 = [v34 colorSpace];
  v36 = [v35 isHDRSpace];
  v37 = +[CFXAnalyticsManager sharedInstance];
  BYTE1(v45) = v36;
  LOBYTE(v45) = v33;
  [v37 trackMediaSentWithAnimoji:v54 & 1 video:v26 frontCamera:v28 ^ 1u filterCount:v56 labelCount:v55 messagesStickerCount:v51 shapeCount:v52 emojiStickerCount:v50 supportsHDR:v45 isHDR:?];

  if (v26)
  {
    v38 = [v47 duration];
    v39 = +[CFXMediaSettings sharedInstance];
    v40 = v38 / [v39 frameRate];

    v41 = +[CFXAnalyticsManager sharedInstance];
    [v41 trackEventWithName:@"videoduration" duration:v40];
  }

LABEL_32:
  v42 = [*(v3 + 560) sharedInstance];
  [v42 stopTrackingTimeIntervalEventWithName:@"activebackcameratime"];

  v43 = [*(v3 + 560) sharedInstance];
  [v43 stopTrackingTimeIntervalEventWithName:@"activefrontcameratime"];

  v44 = [*(v3 + 560) sharedInstance];
  [v44 stopTrackingTimeIntervalEventWithName:@"activetime"];
}

- (CFXReviewViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end