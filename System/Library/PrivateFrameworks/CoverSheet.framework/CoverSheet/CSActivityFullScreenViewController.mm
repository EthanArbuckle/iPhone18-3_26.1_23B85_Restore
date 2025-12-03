@interface CSActivityFullScreenViewController
- (CSActivityFullScreenViewController)initWithDescriptor:(id)descriptor;
- (id)_newDisplayLayoutElement;
- (void)_updateDisplayLayoutElementForActivation:(id)activation;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CSActivityFullScreenViewController

- (CSActivityFullScreenViewController)initWithDescriptor:(id)descriptor
{
  v4.receiver = self;
  v4.super_class = CSActivityFullScreenViewController;
  return [(CSActivityViewController *)&v4 initWithDescriptor:descriptor sceneType:7];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CSActivityFullScreenViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillAppear:appear];
  [(CSActivityViewController *)self reevaluatePresentationModeForReason:@"ViewWillAppear"];
  [(CSActivityViewController *)self setVisibility:1];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CSActivityFullScreenViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillDisappear:disappear];
  [(CSActivityViewController *)self reevaluatePresentationModeForReason:@"ViewDidDisappear"];
  [(CSActivityViewController *)self setVisibility:0];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = CSActivityFullScreenViewController;
  [(CSActivityFullScreenViewController *)&v6 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  if (window)
  {
    [(CSCoverSheetViewControllerBase *)self _setDisplayLayoutElementActive:[(CSCoverSheetViewControllerBase *)self isDisplayLayoutElementActive] immediately:1];
  }
}

- (id)_newDisplayLayoutElement
{
  hostViewController = [(CSActivityViewController *)self hostViewController];
  activitySceneDescriptor = [hostViewController activitySceneDescriptor];
  activityDescriptor = [activitySceneDescriptor activityDescriptor];
  platterTargetBundleIdentifier = [activityDescriptor platterTargetBundleIdentifier];

  if (platterTargetBundleIdentifier)
  {
    v6 = [objc_alloc(MEMORY[0x277D66A50]) initWithIdentifier:platterTargetBundleIdentifier];
    [v6 setFillsDisplayBounds:1];
    [v6 setLayoutRole:6];
    [v6 setBundleIdentifier:platterTargetBundleIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateDisplayLayoutElementForActivation:(id)activation
{
  v5.receiver = self;
  v5.super_class = CSActivityFullScreenViewController;
  activationCopy = activation;
  [(CSCoverSheetViewControllerBase *)&v5 _updateDisplayLayoutElementForActivation:activationCopy];
  [activationCopy sb_setTransitioning:{(-[CSActivityFullScreenViewController _appearState](self, "_appearState", v5.receiver, v5.super_class) & 0xFFFFFFFD) == 1}];
}

@end