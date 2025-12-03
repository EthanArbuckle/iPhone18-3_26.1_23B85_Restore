@interface CKAppContainerNavigationController
- (CKAppContainerNavigationController)initWithRemoteViewController:(id)controller;
- (void)_sheetPresentationController:(id)controller didChangeIndexOfCurrentDetent:(int64_t)detent;
- (void)requestPresentationStyleExpanded:(BOOL)expanded;
- (void)transitionBrowserToLargeDetent;
- (void)transitionBrowserToMediumDetent;
@end

@implementation CKAppContainerNavigationController

- (CKAppContainerNavigationController)initWithRemoteViewController:(id)controller
{
  v34[2] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v32.receiver = self;
  v32.super_class = CKAppContainerNavigationController;
  v6 = [(CKAppContainerNavigationController *)&v32 initWithRootViewController:controllerCopy];
  v7 = v6;
  if (v6)
  {
    [(CKAppContainerNavigationController *)v6 setModalPresentationStyle:2];
    presentationController = [(CKAppContainerNavigationController *)v7 presentationController];
    mediumDetent = [MEMORY[0x1E69DCF58] mediumDetent];
    v34[0] = mediumDetent;
    largeDetent = [MEMORY[0x1E69DCF58] largeDetent];
    v34[1] = largeDetent;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
    [presentationController setDetents:v11];

    [presentationController setDelegate:v7];
    [presentationController setPrefersGrabberVisible:1];
    v12 = objc_alloc_init(CKAppContainerTitleView);
    balloonPlugin = [controllerCopy balloonPlugin];
    traitCollection = [(CKAppContainerNavigationController *)v7 traitCollection];
    v15 = [balloonPlugin __ck_browserImageForInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

    [(CKAppContainerTitleView *)v12 setIconImage:v15];
    balloonPlugin2 = [controllerCopy balloonPlugin];
    browserDisplayName = [balloonPlugin2 browserDisplayName];
    label = [(CKAppContainerTitleView *)v12 label];
    [label setText:browserDisplayName];

    closeButton = [(CKAppContainerTitleView *)v12 closeButton];
    [closeButton addTarget:v7 action:sel_closeButtonPressed_ forEvents:0x2000];

    navigationItem = [controllerCopy navigationItem];
    [navigationItem setTitleView:v12];

    navigationBar = [(CKAppContainerNavigationController *)v7 navigationBar];
    v22 = objc_opt_new();
    [navigationBar setShadowImage:v22];

    navigationBar2 = [(CKAppContainerNavigationController *)v7 navigationBar];
    [navigationBar2 setTranslucent:0];

    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    view = [(CKAppContainerNavigationController *)v7 view];
    [view setBackgroundColor:systemBackgroundColor];

    [controllerCopy setSendDelegate:v7];
    objc_storeStrong(&v7->_browserVC, controller);
    [(CKAppContainerNavigationController *)v7 setModalPresentationStyle:2];
    presentationController2 = [(CKAppContainerNavigationController *)v7 presentationController];
    objc_opt_class();
    LOBYTE(systemBackgroundColor) = objc_opt_isKindOfClass();

    if (systemBackgroundColor)
    {
      presentationController3 = [(CKAppContainerNavigationController *)v7 presentationController];
      mediumDetent2 = [MEMORY[0x1E69DCF58] mediumDetent];
      v33[0] = mediumDetent2;
      largeDetent2 = [MEMORY[0x1E69DCF58] largeDetent];
      v33[1] = largeDetent2;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
      [presentationController3 setDetents:v30];

      [presentationController3 setDelegate:v7];
      [presentationController3 setPrefersGrabberVisible:1];
    }

    [(CKAppContainerNavigationController *)v7 transitionBrowserToMediumDetent];
  }

  return v7;
}

- (void)_sheetPresentationController:(id)controller didChangeIndexOfCurrentDetent:(int64_t)detent
{
  if (detent == 1)
  {
    [(CKAppContainerNavigationController *)self transitionBrowserToLargeDetent];
  }

  else
  {
    [(CKAppContainerNavigationController *)self transitionBrowserToMediumDetent];
  }
}

- (void)transitionBrowserToLargeDetent
{
  [(CKAppContainerNavigationController *)self setNavigationBarHidden:0];
  [(CKBrowserViewControllerProtocol *)self->_browserVC setAdditionalSafeAreaInsets:0.0, 0.0, 0.0, 0.0];
  browserVC = [(CKAppContainerNavigationController *)self browserVC];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    browserVC2 = [(CKAppContainerNavigationController *)self browserVC];
    [browserVC2 viewWillTransitionToExpandedPresentation];
  }

  browserVC3 = [(CKAppContainerNavigationController *)self browserVC];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    browserVC4 = [(CKAppContainerNavigationController *)self browserVC];
    [browserVC4 viewDidTransitionToExpandedPresentation];
  }
}

- (void)transitionBrowserToMediumDetent
{
  [(CKAppContainerNavigationController *)self setNavigationBarHidden:1];
  [(CKBrowserViewControllerProtocol *)self->_browserVC setAdditionalSafeAreaInsets:15.0, 0.0, 0.0, 0.0];
  browserVC = [(CKAppContainerNavigationController *)self browserVC];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    browserVC2 = [(CKAppContainerNavigationController *)self browserVC];
    [browserVC2 viewWillTransitionToCompactPresentation];
  }

  browserVC3 = [(CKAppContainerNavigationController *)self browserVC];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    browserVC4 = [(CKAppContainerNavigationController *)self browserVC];
    [browserVC4 viewDidTransitionToCompactPresentation];
  }
}

- (void)requestPresentationStyleExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  presentationController = [(CKAppContainerNavigationController *)self presentationController];
  v6 = presentationController;
  if (expandedCopy)
  {
    [presentationController setSelectedDetentIdentifier:*MEMORY[0x1E69DE3B0]];
    [(CKAppContainerNavigationController *)self transitionBrowserToLargeDetent];
  }

  else
  {
    [presentationController setSelectedDetentIdentifier:*MEMORY[0x1E69DE3B8]];
    [(CKAppContainerNavigationController *)self transitionBrowserToMediumDetent];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__CKAppContainerNavigationController_requestPresentationStyleExpanded___block_invoke;
  v7[3] = &unk_1E72EBA18;
  v7[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v7 animations:0.5];
}

void __71__CKAppContainerNavigationController_requestPresentationStyleExpanded___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v1 = [v2 window];
  [v1 layoutIfNeeded];
}

@end