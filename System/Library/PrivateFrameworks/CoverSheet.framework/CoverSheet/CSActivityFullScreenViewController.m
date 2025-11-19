@interface CSActivityFullScreenViewController
- (CSActivityFullScreenViewController)initWithDescriptor:(id)a3;
- (id)_newDisplayLayoutElement;
- (void)_updateDisplayLayoutElementForActivation:(id)a3;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CSActivityFullScreenViewController

- (CSActivityFullScreenViewController)initWithDescriptor:(id)a3
{
  v4.receiver = self;
  v4.super_class = CSActivityFullScreenViewController;
  return [(CSActivityViewController *)&v4 initWithDescriptor:a3 sceneType:7];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CSActivityFullScreenViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillAppear:a3];
  [(CSActivityViewController *)self reevaluatePresentationModeForReason:@"ViewWillAppear"];
  [(CSActivityViewController *)self setVisibility:1];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CSActivityFullScreenViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillDisappear:a3];
  [(CSActivityViewController *)self reevaluatePresentationModeForReason:@"ViewDidDisappear"];
  [(CSActivityViewController *)self setVisibility:0];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = CSActivityFullScreenViewController;
  [(CSActivityFullScreenViewController *)&v6 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  if (a3)
  {
    [(CSCoverSheetViewControllerBase *)self _setDisplayLayoutElementActive:[(CSCoverSheetViewControllerBase *)self isDisplayLayoutElementActive] immediately:1];
  }
}

- (id)_newDisplayLayoutElement
{
  v2 = [(CSActivityViewController *)self hostViewController];
  v3 = [v2 activitySceneDescriptor];
  v4 = [v3 activityDescriptor];
  v5 = [v4 platterTargetBundleIdentifier];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D66A50]) initWithIdentifier:v5];
    [v6 setFillsDisplayBounds:1];
    [v6 setLayoutRole:6];
    [v6 setBundleIdentifier:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateDisplayLayoutElementForActivation:(id)a3
{
  v5.receiver = self;
  v5.super_class = CSActivityFullScreenViewController;
  v4 = a3;
  [(CSCoverSheetViewControllerBase *)&v5 _updateDisplayLayoutElementForActivation:v4];
  [v4 sb_setTransitioning:{(-[CSActivityFullScreenViewController _appearState](self, "_appearState", v5.receiver, v5.super_class) & 0xFFFFFFFD) == 1}];
}

@end