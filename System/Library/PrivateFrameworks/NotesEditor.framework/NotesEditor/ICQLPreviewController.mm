@interface ICQLPreviewController
- (BOOL)viewOnlyDocumentButtonIsVisible;
- (CGRect)viewOnlyDocumentButtonFrame;
- (ICQLPreviewController)initWithCoder:(id)a3;
- (ICQLPreviewController)initWithNibName:(id)a3 bundle:(id)a4;
- (UIButton)viewOnlyDocumentButton;
- (double)bottomButtonSpacing;
- (void)commonInit;
- (void)hideViewOnlyButton;
- (void)popoverDidDismiss;
- (void)registerForTraitChanges;
- (void)showViewOnlyDocumentPopover;
- (void)showViewOnlyWarning;
- (void)updateBackgroundColor;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation ICQLPreviewController

- (ICQLPreviewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = ICQLPreviewController;
  v4 = [(QLPreviewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(ICQLPreviewController *)v4 commonInit];
  }

  return v5;
}

- (ICQLPreviewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICQLPreviewController;
  v3 = [(ICQLPreviewController *)&v6 initWithCoder:a3];
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

- (void)viewWillAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = ICQLPreviewController;
  [(QLPreviewController *)&v10 viewWillAppear:a3];
  v4 = [(QLPreviewController *)self internalNavigationController];
  v5 = [v4 navigationBar];
  [v5 _setHidesShadow:1];

  v6 = [(QLPreviewController *)self toolbarController];
  v7 = [v6 originalToolbar];
  [v7 _setHidesShadow:1];

  v8 = [(QLPreviewController *)self toolbarController];
  v9 = [v8 customToolbar];
  [v9 _setHidesShadow:1];

  [(ICQLPreviewController *)self updateBackgroundColor];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ICQLPreviewController;
  [(QLPreviewController *)&v5 viewDidAppear:a3];
  v4 = [(ICQLPreviewController *)self hideViewOnlyDocumentButtonSelectorDelayer];
  [v4 requestFire];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ICQLPreviewController;
  [(QLPreviewController *)&v5 viewWillDisappear:a3];
  if ([(ICQLPreviewController *)self viewOnlyDocumentButtonIsVisible])
  {
    v4 = [(ICQLPreviewController *)self viewOnlyDocumentButton];
    [v4 removeFromSuperview];
  }
}

- (void)updateBackgroundColor
{
  v3 = [(ICQLPreviewController *)self traitCollection];
  v4 = [v3 ic_appearanceInfo];
  v5 = [v4 isDark];

  if (v5)
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
    v6 = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = [v6 localizedStringForKey:@"This document is view only." value:&stru_282757698 table:0];

    v8 = [MEMORY[0x277D75230] filledButtonConfiguration];
    v9 = [MEMORY[0x277D75348] darkGrayColor];
    [v8 setBaseForegroundColor:v9];

    v10 = [MEMORY[0x277D75348] whiteColor];
    v11 = [v8 background];
    [v11 setBackgroundColor:v10];

    v12 = [MEMORY[0x277D75348] colorWithWhite:0.9 alpha:1.0];
    v13 = [v8 background];
    [v13 setStrokeColor:v12];

    v14 = [v8 background];
    [v14 setStrokeWidth:1.0];

    [v8 setCornerStyle:4];
    [v8 setButtonSize:1];
    [v8 setTitleAlignment:1];
    [v8 setTitle:v7];
    [v8 setAccessibilityLabel:v7];
    [v8 contentInsets];
    [v8 setContentInsets:{6.0, 12.0, 6.0, 12.0}];
    v15 = [MEMORY[0x277D755B8] ic_largeSystemImageNamed:@"info.circle"];
    [v8 setImage:v15];

    [v8 setImagePadding:4.0];
    v16 = [MEMORY[0x277D75220] buttonWithConfiguration:v8 primaryAction:v5];
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

  v3 = [(UIButton *)viewOnlyDocumentButton window];
  v4 = v3 != 0;

  return v4;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__ICQLPreviewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_2781AC788;
  v9[4] = self;
  v7 = a4;
  [v7 animateAlongsideTransition:v9 completion:0];
  v8.receiver = self;
  v8.super_class = ICQLPreviewController;
  [(QLPreviewController *)&v8 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
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
  v3 = [(ICQLPreviewController *)self traitCollection];
  v4 = [v3 ic_hasCompactSize];

  v5 = [(ICQLPreviewController *)self view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;

  result = -40.0;
  if ((v4 & (v9 > v7)) != 0)
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
    v3 = [(ICQLPreviewController *)self viewOnlyDocumentButton];
    [v3 setAlpha:0.0];

    v4 = [(ICQLPreviewController *)self view];
    v5 = [(ICQLPreviewController *)self viewOnlyDocumentButton];
    [v4 addSubview:v5];

    v6 = [(ICQLPreviewController *)self viewOnlyDocumentButton];
    v7 = [v6 bottomAnchor];
    v8 = [(ICQLPreviewController *)self view];
    v9 = [v8 bottomAnchor];
    [(ICQLPreviewController *)self bottomButtonSpacing];
    v10 = [v7 constraintEqualToAnchor:v9 constant:?];
    [(ICQLPreviewController *)self setBottomButtonConstraint:v10];

    v11 = MEMORY[0x277CCAAD0];
    v12 = [(ICQLPreviewController *)self viewOnlyDocumentButton];
    v13 = [v12 centerXAnchor];
    v14 = [(ICQLPreviewController *)self view];
    v15 = [v14 centerXAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];
    v20[0] = v16;
    v17 = [(ICQLPreviewController *)self bottomButtonConstraint];
    v20[1] = v17;
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
  v3 = [(ICQLPreviewController *)self hideViewOnlyDocumentButtonSelectorDelayer];
  [v3 cancelPreviousFireRequests];

  v4 = [(ICQLPreviewController *)self viewOnlyDocumentButton];
  v5 = [ICViewOnlyPopoverViewController viewOnlyPopoverViewController:self sourceView:v4];
  [(ICQLPreviewController *)self setViewOnlyPopoverController:v5];

  v6 = [(ICQLPreviewController *)self viewOnlyPopoverController];
  -[ICQLPreviewController presentViewController:animated:completion:](self, "presentViewController:animated:completion:", v6, [MEMORY[0x277D75D18] areAnimationsEnabled], 0);
}

- (void)popoverDidDismiss
{
  v3 = [(ICQLPreviewController *)self viewOnlyPopoverController];
  [v3 removeFromParentViewController];

  v4 = [(ICQLPreviewController *)self hideViewOnlyDocumentButtonSelectorDelayer];
  [v4 requestFire];
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