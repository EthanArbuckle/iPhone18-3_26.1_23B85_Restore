@interface BKUIIndicatorViewController
- (BKUIIndicatorViewController)init;
- (void)_updateUI;
- (void)setShouldShow:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BKUIIndicatorViewController

- (BKUIIndicatorViewController)init
{
  v10.receiver = self;
  v10.super_class = BKUIIndicatorViewController;
  v2 = [(BKUIIndicatorViewController *)&v10 initWithNibName:0 bundle:0];
  if (v2)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v3 = getLAUIPhysicalButtonViewClass_softClass;
    v15 = getLAUIPhysicalButtonViewClass_softClass;
    if (!getLAUIPhysicalButtonViewClass_softClass)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __getLAUIPhysicalButtonViewClass_block_invoke;
      v11[3] = &unk_278D09C88;
      v11[4] = &v12;
      __getLAUIPhysicalButtonViewClass_block_invoke(v11);
      v3 = v13[3];
    }

    v4 = v3;
    _Block_object_dispose(&v12, 8);
    v5 = [[v3 alloc] initWithStyle:1];
    physicalButtonView = v2->_physicalButtonView;
    v2->_physicalButtonView = v5;

    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"SET_UP_MESA" value:&stru_2853BB280 table:@"BiometricKitUI"];
    [(LAUIPhysicalButtonView *)v2->_physicalButtonView setInstruction:v8];

    [(LAUIPhysicalButtonView *)v2->_physicalButtonView setAnimationStyle:2];
    v2->_shouldShow = 1;
  }

  return v2;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = BKUIIndicatorViewController;
  [(BKUIIndicatorViewController *)&v2 viewDidLoad];
}

- (void)viewDidLayoutSubviews
{
  v3 = [(BKUIIndicatorViewController *)self physicalButtonView];

  if (v3)
  {
    v4 = [(BKUIIndicatorViewController *)self physicalButtonView];
    [v4 updateFrame];

    v5 = [(BKUIIndicatorViewController *)self physicalButtonView];
    [v5 layoutIfNeeded];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__BKUIIndicatorViewController_viewDidLayoutSubviews__block_invoke;
  v6[3] = &unk_278D09978;
  v6[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v6];
}

void __52__BKUIIndicatorViewController_viewDidLayoutSubviews__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) physicalButtonView];

  if (v2)
  {
    v3 = [*(a1 + 32) physicalButtonView];
    [v3 setAnimating:{objc_msgSend(*(a1 + 32), "shouldShow")}];
  }
}

- (void)_updateUI
{
  v3 = [(BKUIIndicatorViewController *)self physicalButtonView];
  [v3 setAnimating:0];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__BKUIIndicatorViewController__updateUI__block_invoke;
  block[3] = &unk_278D09978;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __40__BKUIIndicatorViewController__updateUI__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) physicalButtonView];
  [v2 updateFrame];

  v3 = [*(a1 + 32) shouldShow];
  v4 = [*(a1 + 32) physicalButtonView];
  [v4 setAnimating:v3];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = BKUIIndicatorViewController;
  v7 = a4;
  [(BKUIIndicatorViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__BKUIIndicatorViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_278D0A028;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

void __82__BKUIIndicatorViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateUI];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
}

- (void)setShouldShow:(BOOL)a3
{
  self->_shouldShow = a3;
  [(BKUIIndicatorViewController *)self _updateUI];
  v4 = [(BKUIIndicatorViewController *)self view];
  [v4 layoutIfNeeded];
}

@end