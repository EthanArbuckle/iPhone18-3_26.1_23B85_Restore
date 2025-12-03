@interface ICQLPreviewController
- (BOOL)viewOnlyDocumentButtonIsVisible;
- (CGRect)viewOnlyDocumentButtonFrame;
- (ICQLPreviewController)initWithCoder:(id)coder;
- (ICQLPreviewController)initWithNibName:(id)name bundle:(id)bundle;
- (UIButton)viewOnlyDocumentButton;
- (double)bottomButtonSpacing;
- (void)commonInit;
- (void)hideViewOnlyButton;
- (void)popoverDidDismiss;
- (void)registerForTraitChanges;
- (void)showViewOnlyDocumentPopover;
- (void)showViewOnlyWarning;
- (void)updateBackgroundColor;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation ICQLPreviewController

- (ICQLPreviewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = ICQLPreviewController;
  v4 = [(QLPreviewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(ICQLPreviewController *)v4 commonInit];
  }

  return v5;
}

- (ICQLPreviewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ICQLPreviewController;
  v3 = [(ICQLPreviewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(ICQLPreviewController *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  v3 = [objc_alloc(MEMORY[0x277D36258]) initWithTarget:self selector:sel_hideViewOnlyButton delay:1 waitToFireUntilRequestsStop:1 callOnMainThread:5.0];
  [(ICQLPreviewController *)self setHideViewOnlyDocumentButtonSelectorDelayer:v3];

  [(ICQLPreviewController *)self registerForTraitChanges];
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = ICQLPreviewController;
  [(QLPreviewController *)&v10 viewWillAppear:appear];
  internalNavigationController = [(QLPreviewController *)self internalNavigationController];
  navigationBar = [internalNavigationController navigationBar];
  [navigationBar _setHidesShadow:1];

  toolbarController = [(QLPreviewController *)self toolbarController];
  originalToolbar = [toolbarController originalToolbar];
  [originalToolbar _setHidesShadow:1];

  toolbarController2 = [(QLPreviewController *)self toolbarController];
  customToolbar = [toolbarController2 customToolbar];
  [customToolbar _setHidesShadow:1];

  [(ICQLPreviewController *)self updateBackgroundColor];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = ICQLPreviewController;
  [(QLPreviewController *)&v5 viewDidAppear:appear];
  hideViewOnlyDocumentButtonSelectorDelayer = [(ICQLPreviewController *)self hideViewOnlyDocumentButtonSelectorDelayer];
  [hideViewOnlyDocumentButtonSelectorDelayer requestFire];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = ICQLPreviewController;
  [(QLPreviewController *)&v5 viewWillDisappear:disappear];
  if ([(ICQLPreviewController *)self viewOnlyDocumentButtonIsVisible])
  {
    viewOnlyDocumentButton = [(ICQLPreviewController *)self viewOnlyDocumentButton];
    [viewOnlyDocumentButton removeFromSuperview];
  }
}

- (void)updateBackgroundColor
{
  traitCollection = [(ICQLPreviewController *)self traitCollection];
  ic_appearanceInfo = [traitCollection ic_appearanceInfo];
  isDark = [ic_appearanceInfo isDark];

  if (isDark)
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] ICBackgroundColor];
  }
  v6 = ;
  [(QLPreviewController *)self setBackgroundColor:v6];
}

- (void)registerForTraitChanges
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v4 = [(ICQLPreviewController *)self registerForTraitChanges:v3 withAction:sel_updateBackgroundColor];
}

- (UIButton)viewOnlyDocumentButton
{
  viewOnlyDocumentButton = self->_viewOnlyDocumentButton;
  if (!viewOnlyDocumentButton)
  {
    objc_initWeak(&location, self);
    v4 = MEMORY[0x277D750C8];
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __47__ICQLPreviewController_viewOnlyDocumentButton__block_invoke;
    v22 = &unk_2781ADD08;
    objc_copyWeak(&v23, &location);
    v5 = [v4 actionWithHandler:&v19];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = [mainBundle localizedStringForKey:@"This document is view only." value:&stru_282757698 table:0];

    filledButtonConfiguration = [MEMORY[0x277D75230] filledButtonConfiguration];
    darkGrayColor = [MEMORY[0x277D75348] darkGrayColor];
    [filledButtonConfiguration setBaseForegroundColor:darkGrayColor];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    background = [filledButtonConfiguration background];
    [background setBackgroundColor:whiteColor];

    v12 = [MEMORY[0x277D75348] colorWithWhite:0.9 alpha:1.0];
    background2 = [filledButtonConfiguration background];
    [background2 setStrokeColor:v12];

    background3 = [filledButtonConfiguration background];
    [background3 setStrokeWidth:1.0];

    [filledButtonConfiguration setCornerStyle:4];
    [filledButtonConfiguration setButtonSize:1];
    [filledButtonConfiguration setTitleAlignment:1];
    [filledButtonConfiguration setTitle:v7];
    [filledButtonConfiguration setAccessibilityLabel:v7];
    [filledButtonConfiguration contentInsets];
    [filledButtonConfiguration setContentInsets:{6.0, 12.0, 6.0, 12.0}];
    v15 = [MEMORY[0x277D755B8] ic_largeSystemImageNamed:@"info.circle"];
    [filledButtonConfiguration setImage:v15];

    [filledButtonConfiguration setImagePadding:4.0];
    v16 = [MEMORY[0x277D75220] buttonWithConfiguration:filledButtonConfiguration primaryAction:v5];
    [(UIButton *)v16 ic_applyShadow];
    [(UIButton *)v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = self->_viewOnlyDocumentButton;
    self->_viewOnlyDocumentButton = v16;

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
    viewOnlyDocumentButton = self->_viewOnlyDocumentButton;
  }

  return viewOnlyDocumentButton;
}

void __47__ICQLPreviewController_viewOnlyDocumentButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showViewOnlyDocumentPopover];
}

- (void)hideViewOnlyButton
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __43__ICQLPreviewController_hideViewOnlyButton__block_invoke;
  v3[3] = &unk_2781ABCF8;
  v3[4] = self;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __43__ICQLPreviewController_hideViewOnlyButton__block_invoke_2;
  v2[3] = &unk_2781AD098;
  v2[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v3 animations:v2 completion:0.25];
}

void __43__ICQLPreviewController_hideViewOnlyButton__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) viewOnlyDocumentButton];
  [v1 setAlpha:0.0];
}

void __43__ICQLPreviewController_hideViewOnlyButton__block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) viewOnlyDocumentButton];
    [v3 setHidden:1];

    v4 = [*(a1 + 32) viewOnlyDocumentButton];
    [v4 removeFromSuperview];
  }
}

- (BOOL)viewOnlyDocumentButtonIsVisible
{
  viewOnlyDocumentButton = self->_viewOnlyDocumentButton;
  if (!viewOnlyDocumentButton)
  {
    return 0;
  }

  window = [(UIButton *)viewOnlyDocumentButton window];
  v4 = window != 0;

  return v4;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__ICQLPreviewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_2781AC788;
  v9[4] = self;
  coordinatorCopy = coordinator;
  [coordinatorCopy animateAlongsideTransition:v9 completion:0];
  v8.receiver = self;
  v8.super_class = ICQLPreviewController;
  [(QLPreviewController *)&v8 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

void __76__ICQLPreviewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) bottomButtonSpacing];
  v3 = v2;
  v4 = [*(a1 + 32) bottomButtonConstraint];
  [v4 setConstant:v3];
}

- (double)bottomButtonSpacing
{
  traitCollection = [(ICQLPreviewController *)self traitCollection];
  ic_hasCompactSize = [traitCollection ic_hasCompactSize];

  view = [(ICQLPreviewController *)self view];
  [view bounds];
  v7 = v6;
  v9 = v8;

  result = -40.0;
  if ((ic_hasCompactSize & (v9 > v7)) != 0)
  {
    return -100.0;
  }

  return result;
}

- (void)showViewOnlyWarning
{
  v20[2] = *MEMORY[0x277D85DE8];
  if (![(ICQLPreviewController *)self viewOnlyDocumentButtonIsVisible])
  {
    viewOnlyDocumentButton = [(ICQLPreviewController *)self viewOnlyDocumentButton];
    [viewOnlyDocumentButton setAlpha:0.0];

    view = [(ICQLPreviewController *)self view];
    viewOnlyDocumentButton2 = [(ICQLPreviewController *)self viewOnlyDocumentButton];
    [view addSubview:viewOnlyDocumentButton2];

    viewOnlyDocumentButton3 = [(ICQLPreviewController *)self viewOnlyDocumentButton];
    bottomAnchor = [viewOnlyDocumentButton3 bottomAnchor];
    view2 = [(ICQLPreviewController *)self view];
    bottomAnchor2 = [view2 bottomAnchor];
    [(ICQLPreviewController *)self bottomButtonSpacing];
    v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:?];
    [(ICQLPreviewController *)self setBottomButtonConstraint:v10];

    v11 = MEMORY[0x277CCAAD0];
    viewOnlyDocumentButton4 = [(ICQLPreviewController *)self viewOnlyDocumentButton];
    centerXAnchor = [viewOnlyDocumentButton4 centerXAnchor];
    view3 = [(ICQLPreviewController *)self view];
    centerXAnchor2 = [view3 centerXAnchor];
    v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v20[0] = v16;
    bottomButtonConstraint = [(ICQLPreviewController *)self bottomButtonConstraint];
    v20[1] = bottomButtonConstraint;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    [v11 activateConstraints:v18];

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __44__ICQLPreviewController_showViewOnlyWarning__block_invoke;
    v19[3] = &unk_2781ABCF8;
    v19[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v19 animations:0 completion:0.25];
  }
}

void __44__ICQLPreviewController_showViewOnlyWarning__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) viewOnlyDocumentButton];
  [v1 setAlpha:1.0];
}

- (void)showViewOnlyDocumentPopover
{
  hideViewOnlyDocumentButtonSelectorDelayer = [(ICQLPreviewController *)self hideViewOnlyDocumentButtonSelectorDelayer];
  [hideViewOnlyDocumentButtonSelectorDelayer cancelPreviousFireRequests];

  viewOnlyDocumentButton = [(ICQLPreviewController *)self viewOnlyDocumentButton];
  v5 = [ICViewOnlyPopoverViewController viewOnlyPopoverViewController:self sourceView:viewOnlyDocumentButton];
  [(ICQLPreviewController *)self setViewOnlyPopoverController:v5];

  viewOnlyPopoverController = [(ICQLPreviewController *)self viewOnlyPopoverController];
  -[ICQLPreviewController presentViewController:animated:completion:](self, "presentViewController:animated:completion:", viewOnlyPopoverController, [MEMORY[0x277D75D18] areAnimationsEnabled], 0);
}

- (void)popoverDidDismiss
{
  viewOnlyPopoverController = [(ICQLPreviewController *)self viewOnlyPopoverController];
  [viewOnlyPopoverController removeFromParentViewController];

  hideViewOnlyDocumentButtonSelectorDelayer = [(ICQLPreviewController *)self hideViewOnlyDocumentButtonSelectorDelayer];
  [hideViewOnlyDocumentButtonSelectorDelayer requestFire];
}

- (CGRect)viewOnlyDocumentButtonFrame
{
  x = self->_viewOnlyDocumentButtonFrame.origin.x;
  y = self->_viewOnlyDocumentButtonFrame.origin.y;
  width = self->_viewOnlyDocumentButtonFrame.size.width;
  height = self->_viewOnlyDocumentButtonFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end