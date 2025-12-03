@interface CFXReviewViewController
+ (void)initialize;
- (BOOL)allowLandscapeForEffectBrowserViewController:(id)controller;
- (BOOL)mediaCapturedInFunCam;
- (BOOL)mediaItemRequiresExport;
- (BOOL)shouldAlwaysPresentExpandedAppsForEffectBrowserViewController:(id)controller;
- (CFXReviewViewController)initWithMediaItem:(id)item;
- (CFXReviewViewControllerDelegate)delegate;
- (NSData)adjustmentsData;
- (NSData)animojiMetadata;
- (UIView)effectsPickerDrawer;
- (double)effectBrowserViewController:(id)controller screenTopBarHeightForWindowBounds:(CGRect)bounds orientation:(int64_t)orientation;
- (id)localizedPromptForHidingAnimojiForEffectBrowserViewController:(id)controller;
- (id)preferredDisplayColorSpace;
- (id)preferredExportColorSpace;
- (id)selectedAnimojiIdentifierForEffectBrowserViewController:(id)controller;
- (id)selectedAppIdentifierForPreviewViewController:(id)controller;
- (id)selectedFilterIdentifierForEffectBrowserViewController:(id)controller;
- (int64_t)calculateMediaInterfaceOrientationForDisplay;
- (int64_t)mediaCaptureDevicePosition;
- (void)CFX_resetAndLoadPreviewViewController;
- (void)CFX_updateAnalyticsForSentMediaItem:(id)item;
- (void)effectBrowserViewController:(id)controller didDismissPickerForEffectType:(id)type;
- (void)effectBrowserViewController:(id)controller didDropOverlayEffect:(id)effect atScreenLocation:(CGPoint)location atScreenSize:(CGSize)size rotationAngle:(double)angle;
- (void)effectBrowserViewController:(id)controller didPresentPickerForEffectType:(id)type;
- (void)effectBrowserViewController:(id)controller didRemoveAllEffectsOfType:(id)type;
- (void)effectBrowserViewController:(id)controller didSelectAppWithIdentifier:(id)identifier;
- (void)effectBrowserViewController:(id)controller didSelectEffect:(id)effect;
- (void)effectBrowserViewController:(id)controller filterPickerPreviewBackgroundImageAtSizeInPixels:(CGSize)pixels completion:(id)completion;
- (void)effectBrowserViewController:(id)controller willChangeDockHeight:(double)height;
- (void)exportMediaItemToFileURL:(id)l;
- (void)loadView;
- (void)previewViewController:(id)controller didFinishExportingMediaItem:(id)item withError:(id)error;
- (void)previewViewController:(id)controller didProgress:(double)progress exportingMediaItem:(id)item;
- (void)previewViewController:(id)controller didStartExportingMediaItem:(id)item;
- (void)previewViewControllerDidHideUserInterface:(id)interface;
- (void)previewViewControllerDidShowUserInterface:(id)interface;
- (void)previewViewControllerDidStartEditingText:(id)text;
- (void)previewViewControllerDidStopEditingText:(id)text;
- (void)setEffectsPickerDrawer:(id)drawer;
- (void)showMemojiPicker:(id)picker;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CFXReviewViewController

+ (void)initialize
{
  v7[1] = *MEMORY[0x277D85DE8];
  +[CFXApplicationState beginMonitoringApplicationState];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults addSuiteNamed:@"com.apple.MobileSMS"];

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = *MEMORY[0x277D416D8];
  v7[0] = &unk_28556D068;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [standardUserDefaults2 registerDefaults:v4];

  +[CFXEffect setupFactoryDelegate];
  v5 = +[CFXMediaSettings sharedInstance];
  [JFXMediaSettings setProviderDelegate:v5];
}

- (CFXReviewViewController)initWithMediaItem:(id)item
{
  itemCopy = item;
  v23.receiver = self;
  v23.super_class = CFXReviewViewController;
  v6 = [(CFXReviewViewController *)&v23 initWithNibName:0 bundle:0];
  if (v6)
  {
    v7 = +[CFXEffectHostAppDelegate sharedInstance];
    [v7 setColorSpaceDelegate:v6];

    v8 = dispatch_get_global_queue(25, 0);
    dispatch_async(v8, &__block_literal_global);

    objc_storeStrong(v6 + 130, item);
    v9 = dispatch_group_create();
    v10 = *(v6 + 131);
    *(v6 + 131) = v9;

    *(v6 + 992) = 0;
    *(v6 + 132) = 0;
    *(v6 + 134) = [itemCopy cameraMode];
    originalAssetURL = [itemCopy originalAssetURL];
    metadataURL = [itemCopy metadataURL];
    type = [itemCopy type];
    dispatch_group_enter(*(v6 + 131));
    v14 = dispatch_get_global_queue(21, 0);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __45__CFXReviewViewController_initWithMediaItem___block_invoke_2;
    v18[3] = &unk_278D79CF8;
    v19 = metadataURL;
    v21 = originalAssetURL;
    v22 = type;
    v20 = v6;
    v15 = originalAssetURL;
    v16 = metadataURL;
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
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
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

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = CFXReviewViewController;
  [(CFXReviewViewController *)&v3 viewDidAppear:appear];
}

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = CFXReviewViewController;
  [(CFXReviewViewController *)&v2 viewDidLayoutSubviews];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v30 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  v27.receiver = self;
  v27.super_class = CFXReviewViewController;
  [(CFXReviewViewController *)&v27 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8 = CFXLog_action();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    internalPreviewViewController = [(CFXReviewViewController *)self internalPreviewViewController];
    previewClip = [internalPreviewViewController previewClip];
    effectStack = [previewClip effectStack];
    v12 = [CFXActionLogging actionLogAsJSONForEvent:@"device rotated" atLocation:@"post-capture" withEffectStack:effectStack];
    *buf = 138543362;
    v29 = v12;
    _os_log_impl(&dword_242A3B000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom])
  {
    goto LABEL_6;
  }

  view = [(CFXReviewViewController *)self view];
  window = [view window];

  if (window)
  {
    currentDevice = [(CFXReviewViewController *)self internalPreviewViewController];
    bottomControlsSnapshot = [currentDevice bottomControlsSnapshot];
    internalPreviewViewController2 = [(CFXReviewViewController *)self internalPreviewViewController];
    [internalPreviewViewController2 bottomControlsCenter];
    v19 = v18;
    v21 = v20;
    view2 = [(CFXReviewViewController *)self view];
    subviews = [view2 subviews];
    v24 = [subviews count];
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
    [(UIViewController *)self displaySnapshot:bottomControlsSnapshot atCenterPoint:v24 atIndex:0 forTransitionToSize:coordinatorCopy fadeOut:v26 withTransitionCoordinator:v25 preTransitionBlock:v19 postTransitionBlock:v21, width, height];

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
  mediaItem = [(CFXReviewViewController *)self mediaItem];
  adjustmentsData = [mediaItem adjustmentsData];

  return adjustmentsData;
}

- (UIView)effectsPickerDrawer
{
  [(CFXReviewViewController *)self loadViewIfNeeded];
  internalPreviewViewController = [(CFXReviewViewController *)self internalPreviewViewController];
  effectsPickerDrawer = [internalPreviewViewController effectsPickerDrawer];

  return effectsPickerDrawer;
}

- (void)setEffectsPickerDrawer:(id)drawer
{
  drawerCopy = drawer;
  [(CFXReviewViewController *)self loadViewIfNeeded];
  internalPreviewViewController = [(CFXReviewViewController *)self internalPreviewViewController];
  [internalPreviewViewController setEffectsPickerDrawer:drawerCopy];

  if (!drawerCopy)
  {
    effectBrowserViewController = [(CFXReviewViewController *)self effectBrowserViewController];

    if (effectBrowserViewController)
    {
      effectBrowserViewController2 = [(CFXReviewViewController *)self effectBrowserViewController];
      [effectBrowserViewController2 jfxRemoveFromParentViewController];

      [(CFXReviewViewController *)self setEffectBrowserViewController:0];
    }
  }
}

- (BOOL)mediaCapturedInFunCam
{
  metadataReaderGroup = [(CFXReviewViewController *)self metadataReaderGroup];
  v4 = dispatch_time(0, 5000000000);
  v5 = dispatch_group_wait(metadataReaderGroup, v4);

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
  metadataReaderGroup = [(CFXReviewViewController *)self metadataReaderGroup];
  v4 = dispatch_time(0, 5000000000);
  v5 = dispatch_group_wait(metadataReaderGroup, v4);

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
  metadataReaderGroup = [(CFXReviewViewController *)self metadataReaderGroup];
  v4 = dispatch_time(0, 5000000000);
  v5 = dispatch_group_wait(metadataReaderGroup, v4);

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
  metadataReaderGroup = [(CFXReviewViewController *)self metadataReaderGroup];
  v4 = dispatch_time(0, 5000000000);
  v5 = dispatch_group_wait(metadataReaderGroup, v4);

  if (v5)
  {
    v6 = JFXLog_playback();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CFXReviewViewController animojiMetadata];
    }
  }

  animojiMetadata_metadata = [(CFXReviewViewController *)self animojiMetadata_metadata];

  return animojiMetadata_metadata;
}

- (void)exportMediaItemToFileURL:(id)l
{
  lCopy = l;
  internalPreviewViewController = [(CFXReviewViewController *)self internalPreviewViewController];
  [internalPreviewViewController exportMediaItemToFileURL:lCopy];
}

- (BOOL)mediaItemRequiresExport
{
  internalPreviewViewController = [(CFXReviewViewController *)self internalPreviewViewController];
  previewClip = [internalPreviewViewController previewClip];

  if ([(CFXReviewViewController *)self mediaCapturedInFunCam])
  {
    v5 = 1;
  }

  else
  {
    effectStack = [previewClip effectStack];
    v5 = [effectStack count] != 0;
  }

  return v5;
}

- (void)showMemojiPicker:(id)picker
{
  pickerCopy = picker;
  effectBrowserViewController = [(CFXReviewViewController *)self effectBrowserViewController];

  if (effectBrowserViewController)
  {
    effectBrowserViewController2 = [(CFXReviewViewController *)self effectBrowserViewController];
    [effectBrowserViewController2 showMemojiPicker:pickerCopy];
  }

  else
  {
    effectBrowserViewController2 = JFXLog_camera();
    if (os_log_type_enabled(effectBrowserViewController2, OS_LOG_TYPE_ERROR))
    {
      [CFXReviewViewController showMemojiPicker:];
    }
  }
}

- (void)effectBrowserViewController:(id)controller didDismissPickerForEffectType:(id)type
{
  if ([type jtEffectType] == 1)
  {
    internalPreviewViewController = [(CFXReviewViewController *)self internalPreviewViewController];
    [internalPreviewViewController setPresentingFilterPicker:0];
  }
}

- (void)effectBrowserViewController:(id)controller didDropOverlayEffect:(id)effect atScreenLocation:(CGPoint)location atScreenSize:(CGSize)size rotationAngle:(double)angle
{
  height = size.height;
  width = size.width;
  y = location.y;
  x = location.x;
  effectCopy = effect;
  internalPreviewViewController = [(CFXReviewViewController *)self internalPreviewViewController];
  [internalPreviewViewController addOverlayEffect:effectCopy atScreenLocation:0 atScreenSize:x rotationAngle:y completion:{width, height, angle}];
}

- (void)effectBrowserViewController:(id)controller didPresentPickerForEffectType:(id)type
{
  if ([type jtEffectType] == 1)
  {
    internalPreviewViewController = [(CFXReviewViewController *)self internalPreviewViewController];
    [internalPreviewViewController setPresentingFilterPicker:1];
  }
}

- (void)effectBrowserViewController:(id)controller didSelectAppWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = +[CFXAnalyticsManager sharedInstance];
  v7 = v6;
  if (identifier)
  {
    [v6 startTrackingPickerWithIdentifier:identifierCopy];
  }

  else
  {
    effectBrowserPresentedAppIdentifier = [(CFXReviewViewController *)self effectBrowserPresentedAppIdentifier];
    [v7 stopTrackingPickerWithIdentifier:effectBrowserPresentedAppIdentifier];
  }

  [(CFXReviewViewController *)self setEffectBrowserPresentedAppIdentifier:identifierCopy];
}

- (void)effectBrowserViewController:(id)controller didRemoveAllEffectsOfType:(id)type
{
  typeCopy = type;
  internalPreviewViewController = [(CFXReviewViewController *)self internalPreviewViewController];
  previewClip = [internalPreviewViewController previewClip];
  [previewClip removeAllEffectsOfType:7];

  internalPreviewViewController2 = [(CFXReviewViewController *)self internalPreviewViewController];
  previewPlayer = [internalPreviewViewController2 previewPlayer];
  [previewPlayer updateCompositionForEffectChange];

  identifier = [typeCopy identifier];

  LODWORD(previewPlayer) = [identifier isEqualToString:@"Animoji"];
  if (previewPlayer)
  {
    v11 = +[CFXAnalyticsManager sharedInstance];
    [v11 didSelectEffectOfType:@"Animoji" effectIsNone:1];
  }
}

- (void)effectBrowserViewController:(id)controller didSelectEffect:(id)effect
{
  effectCopy = effect;
  internalPreviewViewController = [(CFXReviewViewController *)self internalPreviewViewController];
  [internalPreviewViewController addEffect:effectCopy completion:0];

  jtEffect = [effectCopy jtEffect];
  type = [jtEffect type];

  v9 = @"Filter";
  if (type != 1)
  {
    v9 = 0;
  }

  v10 = v9;
  v12 = +[CFXAnalyticsManager sharedInstance];
  isNone = [effectCopy isNone];

  [v12 didSelectEffectOfType:v10 effectIsNone:isNone];
}

- (id)selectedFilterIdentifierForEffectBrowserViewController:(id)controller
{
  internalPreviewViewController = [(CFXReviewViewController *)self internalPreviewViewController];
  previewClip = [internalPreviewViewController previewClip];
  v5 = [previewClip effectsOfType:1];
  firstObject = [v5 firstObject];

  effectID = [firstObject effectID];

  return effectID;
}

- (id)selectedAnimojiIdentifierForEffectBrowserViewController:(id)controller
{
  internalPreviewViewController = [(CFXReviewViewController *)self internalPreviewViewController];
  previewClip = [internalPreviewViewController previewClip];
  v5 = [previewClip effectsOfType:7];
  firstObject = [v5 firstObject];

  effectID = [firstObject effectID];

  return effectID;
}

- (void)effectBrowserViewController:(id)controller willChangeDockHeight:(double)height
{
  v5 = [(CFXReviewViewController *)self internalPreviewViewController:controller];
  [v5 updateUIForDockMagnify:height > 50.0 dockHeightDelta:height + -44.0];
}

- (id)localizedPromptForHidingAnimojiForEffectBrowserViewController:(id)controller
{
  if ([(CFXReviewViewController *)self mediaCapturedInFunCam])
  {
    mediaItem = [(CFXReviewViewController *)self mediaItem];
    metadataURL = [mediaItem metadataURL];
    if (metadataURL)
    {
      v6 = metadataURL;
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      jfx_hasTrueDepthFrontCamera = [currentDevice jfx_hasTrueDepthFrontCamera];

      if (jfx_hasTrueDepthFrontCamera)
      {
        v9 = 0;
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  jfxBundle = [MEMORY[0x277CCA8D8] jfxBundle];
  v9 = [jfxBundle localizedStringForKey:@"HIDE_MEMOJI_NON_FUN_CAM_MEDIA_ITEM_DIPLAY Name" value:&stru_28553D028 table:0];

LABEL_7:

  return v9;
}

- (BOOL)shouldAlwaysPresentExpandedAppsForEffectBrowserViewController:(id)controller
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v4 = [currentDevice userInterfaceIdiom] == 1;

  return v4;
}

- (BOOL)allowLandscapeForEffectBrowserViewController:(id)controller
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v4 = [currentDevice userInterfaceIdiom] == 0;

  return v4;
}

- (void)effectBrowserViewController:(id)controller filterPickerPreviewBackgroundImageAtSizeInPixels:(CGSize)pixels completion:(id)completion
{
  height = pixels.height;
  width = pixels.width;
  completionCopy = completion;
  internalPreviewViewController = [(CFXReviewViewController *)self internalPreviewViewController];
  [internalPreviewViewController filterPickerPreviewBackgroundImageAtSizeInPixels:completionCopy completion:{width, height}];
}

- (void)previewViewController:(id)controller didFinishExportingMediaItem:(id)item withError:(id)error
{
  itemCopy = item;
  errorCopy = error;
  [(CFXReviewViewController *)self setMediaItem:itemCopy];
  [(CFXReviewViewController *)self CFX_updateAnalyticsForSentMediaItem:itemCopy];
  delegate = [(CFXReviewViewController *)self delegate];
  if (delegate)
  {
    v9 = delegate;
    delegate2 = [(CFXReviewViewController *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegate3 = [(CFXReviewViewController *)self delegate];
      [delegate3 reviewViewController:self didFinishExportingMediaItem:itemCopy withError:errorCopy];
    }
  }
}

- (void)previewViewController:(id)controller didProgress:(double)progress exportingMediaItem:(id)item
{
  itemCopy = item;
  delegate = [(CFXReviewViewController *)self delegate];
  if (delegate)
  {
    v8 = delegate;
    delegate2 = [(CFXReviewViewController *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate3 = [(CFXReviewViewController *)self delegate];
      [delegate3 reviewViewController:self didProgress:itemCopy exportingMediaItem:progress];
    }
  }
}

- (void)previewViewController:(id)controller didStartExportingMediaItem:(id)item
{
  itemCopy = item;
  delegate = [(CFXReviewViewController *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    delegate2 = [(CFXReviewViewController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate3 = [(CFXReviewViewController *)self delegate];
      [delegate3 reviewViewController:self didStartExportingMediaItem:itemCopy];
    }
  }
}

- (void)previewViewControllerDidHideUserInterface:(id)interface
{
  delegate = [(CFXReviewViewController *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    delegate2 = [(CFXReviewViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate3 = [(CFXReviewViewController *)self delegate];
      [delegate3 reviewViewControllerDidHideUserInterface:self];
    }
  }
}

- (void)previewViewControllerDidShowUserInterface:(id)interface
{
  delegate = [(CFXReviewViewController *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    delegate2 = [(CFXReviewViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate3 = [(CFXReviewViewController *)self delegate];
      [delegate3 reviewViewControllerDidShowUserInterface:self];
    }
  }
}

- (void)previewViewControllerDidStartEditingText:(id)text
{
  delegate = [(CFXReviewViewController *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    delegate2 = [(CFXReviewViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate3 = [(CFXReviewViewController *)self delegate];
      [delegate3 reviewViewControllerDidHideUserInterface:self];
    }
  }
}

- (void)previewViewControllerDidStopEditingText:(id)text
{
  delegate = [(CFXReviewViewController *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    delegate2 = [(CFXReviewViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate3 = [(CFXReviewViewController *)self delegate];
      [delegate3 reviewViewControllerDidShowUserInterface:self];
    }
  }
}

- (id)selectedAppIdentifierForPreviewViewController:(id)controller
{
  effectBrowserViewController = [(CFXReviewViewController *)self effectBrowserViewController];
  selectedAppIdentifier = [effectBrowserViewController selectedAppIdentifier];

  return selectedAppIdentifier;
}

- (id)preferredDisplayColorSpace
{
  mediaItem = [(CFXReviewViewController *)self mediaItem];
  clip = [mediaItem clip];
  mediaItem2 = [clip mediaItem];

  colorSpace = [mediaItem2 colorSpace];

  return colorSpace;
}

- (id)preferredExportColorSpace
{
  mediaItem = [(CFXReviewViewController *)self mediaItem];
  clip = [mediaItem clip];
  mediaItem2 = [clip mediaItem];

  if ([mediaItem2 mediaType] == 2)
  {
    preferredDisplayColorSpace = [(CFXReviewViewController *)self preferredDisplayColorSpace];
  }

  else
  {
    colorSpace = [mediaItem2 colorSpace];
    preferredDisplayColorSpace = [colorSpace jfx_videoExportColorSpace];
  }

  return preferredDisplayColorSpace;
}

- (double)effectBrowserViewController:(id)controller screenTopBarHeightForWindowBounds:(CGRect)bounds orientation:(int64_t)orientation
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  memset(&v6, 0, sizeof(v6));
  [MEMORY[0x277D3D080] reviewScreenTopBarGeometryForReferenceBounds:orientation withOrientation:{bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height}];
  return CGRectGetHeight(v6);
}

- (void)CFX_resetAndLoadPreviewViewController
{
  v45[4] = *MEMORY[0x277D85DE8];
  internalPreviewViewController = [(CFXReviewViewController *)self internalPreviewViewController];

  if (internalPreviewViewController)
  {
    internalPreviewViewController2 = [(CFXReviewViewController *)self internalPreviewViewController];
    [internalPreviewViewController2 jfxRemoveFromParentViewController];

    effectBrowserViewController = [(CFXReviewViewController *)self effectBrowserViewController];
    [effectBrowserViewController jfxRemoveFromParentViewController];
  }

  v6 = MEMORY[0x277D75AC8];
  jfxBundle = [MEMORY[0x277CCA8D8] jfxBundle];
  v8 = [v6 storyboardWithName:@"CFXPreviewView" bundle:jfxBundle];
  v9 = [v8 instantiateViewControllerWithIdentifier:@"CFXPreviewViewController"];
  [(CFXReviewViewController *)self setInternalPreviewViewController:v9];

  internalPreviewViewController3 = [(CFXReviewViewController *)self internalPreviewViewController];
  [internalPreviewViewController3 setDelegate:self];

  mediaItem = [(CFXReviewViewController *)self mediaItem];
  internalPreviewViewController4 = [(CFXReviewViewController *)self internalPreviewViewController];
  [internalPreviewViewController4 setMediaItem:mediaItem];

  v13 = [(CFXReviewViewController *)self mediaCaptureDevicePosition]== 1;
  internalPreviewViewController5 = [(CFXReviewViewController *)self internalPreviewViewController];
  [internalPreviewViewController5 setCapturedWithBackCamera:v13];

  internalPreviewViewController6 = [(CFXReviewViewController *)self internalPreviewViewController];
  [internalPreviewViewController6 loadViewIfNeeded];

  internalPreviewViewController7 = [(CFXReviewViewController *)self internalPreviewViewController];
  previewControls = [internalPreviewViewController7 previewControls];

  [previewControls view];
  v43 = v42 = previewControls;
  controlsContainerView = [previewControls controlsContainerView];
  internalPreviewViewController8 = [(CFXReviewViewController *)self internalPreviewViewController];
  effectBrowserContentPresenterViewController = [internalPreviewViewController8 effectBrowserContentPresenterViewController];

  v20 = [[CFXEffectBrowserViewController alloc] initWithDelegate:self contentPresenter:effectBrowserContentPresenterViewController];
  [(CFXReviewViewController *)self setEffectBrowserViewController:v20];

  effectBrowserViewController2 = [(CFXReviewViewController *)self effectBrowserViewController];
  [effectBrowserViewController2 setContentPresenterDelegate:effectBrowserContentPresenterViewController];

  [effectBrowserContentPresenterViewController setDelegate:self];
  effectBrowserViewController3 = [(CFXReviewViewController *)self effectBrowserViewController];
  view = [effectBrowserViewController3 view];

  effectBrowserViewController4 = [(CFXReviewViewController *)self effectBrowserViewController];
  [previewControls addChildViewController:effectBrowserViewController4];

  [v43 addSubview:view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  v35 = MEMORY[0x277CCAAD0];
  leadingAnchor = [view leadingAnchor];
  leadingAnchor2 = [controlsContainerView leadingAnchor];
  v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v45[0] = v38;
  trailingAnchor = [view trailingAnchor];
  trailingAnchor2 = [controlsContainerView trailingAnchor];
  v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v45[1] = v25;
  topAnchor = [view topAnchor];
  v40 = controlsContainerView;
  topAnchor2 = [controlsContainerView topAnchor];
  v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v45[2] = v28;
  bottomAnchor = [view bottomAnchor];
  bottomAnchor2 = [controlsContainerView bottomAnchor];
  v31 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v45[3] = v31;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];
  [v35 activateConstraints:v32];

  effectBrowserViewController5 = [(CFXReviewViewController *)self effectBrowserViewController];
  [effectBrowserViewController5 didMoveToParentViewController:v42];

  internalPreviewViewController9 = [(CFXReviewViewController *)self internalPreviewViewController];
  [(UIViewController *)self jfxAddChildViewController:internalPreviewViewController9 constrainRelativeToSafeAreas:0];
}

- (void)CFX_updateAnalyticsForSentMediaItem:(id)item
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = 0x278D78000;
  if (!item)
  {
    goto LABEL_32;
  }

  [item clip];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v47 = v60 = 0u;
  effectStack = [v47 effectStack];
  v5 = [effectStack countByEnumeratingWithState:&v57 objects:v61 count:16];
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
  v49 = effectStack;
  v8 = 0x278D78000uLL;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v58 != v7)
      {
        objc_enumerationMutation(effectStack);
      }

      v10 = *(*(&v57 + 1) + 8 * i);
      type = [v10 type];
      switch(type)
      {
        case 7:
          v54 = 1;
          continue;
        case 2:
          effectID = [v10 effectID];
          v13 = *(v8 + 672);
          [CFXEffectType effectTypeWithIdentifier:@"Text"];
          v15 = v14 = v8;
          v16 = [v13 effectIdentifiersForEffectType:v15];
          v17 = [v16 containsObject:effectID];

          if (v17)
          {
            ++v55;
            goto LABEL_16;
          }

          v18 = *(v14 + 672);
          v19 = [CFXEffectType effectTypeWithIdentifier:@"Shapes"];
          v20 = [v18 effectIdentifiersForEffectType:v19];
          v21 = [v20 containsObject:effectID];

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
            v25 = [v24 containsObject:effectID];

            if (v25)
            {
              ++v50;
            }

            else
            {
              v51 += [effectID isEqualToString:v48];
            }

            v8 = v14;
            effectStack = v49;
          }

          continue;
        case 1:
          ++v56;
          break;
      }
    }

    v6 = [effectStack countByEnumeratingWithState:&v57 objects:v61 count:16];
  }

  while (v6);
LABEL_26:

  isVideo = [v47 isVideo];
  internalPreviewViewController = [(CFXReviewViewController *)self internalPreviewViewController];
  capturedWithBackCamera = [internalPreviewViewController capturedWithBackCamera];

  v29 = +[CFXEffectHostAppDelegate sharedInstance];
  preferredExportColorSpace = [v29 preferredExportColorSpace];

  v31 = +[CFXEffectHostAppDelegate sharedInstance];
  preferredDisplayColorSpace = [v31 preferredDisplayColorSpace];

  v53 = preferredDisplayColorSpace;
  if ([preferredExportColorSpace isHDRSpace])
  {
    isHDRSpace = [preferredDisplayColorSpace isHDRSpace];
  }

  else
  {
    isHDRSpace = 0;
  }

  v3 = 0x278D78000uLL;
  mediaItem = [v47 mediaItem];
  colorSpace = [mediaItem colorSpace];
  isHDRSpace2 = [colorSpace isHDRSpace];
  v37 = +[CFXAnalyticsManager sharedInstance];
  BYTE1(v45) = isHDRSpace2;
  LOBYTE(v45) = isHDRSpace;
  [v37 trackMediaSentWithAnimoji:v54 & 1 video:isVideo frontCamera:capturedWithBackCamera ^ 1u filterCount:v56 labelCount:v55 messagesStickerCount:v51 shapeCount:v52 emojiStickerCount:v50 supportsHDR:v45 isHDR:?];

  if (isVideo)
  {
    duration = [v47 duration];
    v39 = +[CFXMediaSettings sharedInstance];
    v40 = duration / [v39 frameRate];

    v41 = +[CFXAnalyticsManager sharedInstance];
    [v41 trackEventWithName:@"videoduration" duration:v40];
  }

LABEL_32:
  sharedInstance = [*(v3 + 560) sharedInstance];
  [sharedInstance stopTrackingTimeIntervalEventWithName:@"activebackcameratime"];

  sharedInstance2 = [*(v3 + 560) sharedInstance];
  [sharedInstance2 stopTrackingTimeIntervalEventWithName:@"activefrontcameratime"];

  sharedInstance3 = [*(v3 + 560) sharedInstance];
  [sharedInstance3 stopTrackingTimeIntervalEventWithName:@"activetime"];
}

- (CFXReviewViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end