@interface GKLoadingViewController
- (GKLoadingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didEnterLoadingState;
- (void)didExitLoadingState;
- (void)setLoadingState:(id)a3;
- (void)setViewsToHideHidden:(BOOL)a3;
- (void)setViewsToHideWhileLoading:(id)a3;
- (void)showLoadingIndicator;
@end

@implementation GKLoadingViewController

- (GKLoadingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = GKLoadingViewController;
  v4 = [(GKLoadingViewController *)&v8 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = objc_alloc_init(GKLoadableContentStateMachine);
    loadingMachine = v4->_loadingMachine;
    v4->_loadingMachine = v5;

    [(_GKStateMachine *)v4->_loadingMachine setDelegate:v4];
    v4->_loadingIndicatorDelay = 2.0;
  }

  return v4;
}

- (void)setLoadingState:(id)a3
{
  v6 = a3;
  v4 = [(_GKStateMachine *)self->_loadingMachine currentState];

  v5 = v6;
  if (v4 != v6)
  {
    [(_GKStateMachine *)self->_loadingMachine setCurrentState:v6];
    v5 = v6;
  }
}

- (void)setViewsToHideWhileLoading:(id)a3
{
  v5 = a3;
  if (self->_viewsToHideWhileLoading != v5)
  {
    v10 = v5;
    objc_storeStrong(&self->_viewsToHideWhileLoading, a3);
    v6 = [(GKLoadingViewController *)self loadingState];
    if (v6 == @"LoadingState")
    {
      v9 = 1;
    }

    else
    {
      v7 = [(GKLoadingViewController *)self loadingState];
      if (v7 == @"Initial")
      {
        v9 = 1;
      }

      else
      {
        v8 = [(GKLoadingViewController *)self loadingState];
        v9 = v8 == @"RefreshingState";
      }
    }

    [(GKLoadingViewController *)self setViewsToHideHidden:v9];
    v5 = v10;
  }
}

- (void)setViewsToHideHidden:(BOOL)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_viewsToHideWhileLoading;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setAlpha:{v3, v9}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)showLoadingIndicator
{
  v12[2] = *MEMORY[0x277D85DE8];
  activityIndicator = self->_activityIndicator;
  if (!activityIndicator)
  {
    v4 = objc_alloc_init(MEMORY[0x277D750E8]);
    v5 = self->_activityIndicator;
    self->_activityIndicator = v4;

    [(UIActivityIndicatorView *)self->_activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityIndicatorView *)self->_activityIndicator setActivityIndicatorViewStyle:101];
    v6 = [MEMORY[0x277D0C868] sharedPalette];
    v7 = [v6 activityIndicatorColor];
    [(UIActivityIndicatorView *)self->_activityIndicator setColor:v7];

    v8 = [(GKLoadingViewController *)self view];
    [v8 addSubview:self->_activityIndicator];
    v9 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_activityIndicator attribute:9 relatedBy:0 toItem:v8 attribute:9 multiplier:1.0 constant:0.0];
    v10 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_activityIndicator attribute:10 relatedBy:0 toItem:v8 attribute:10 multiplier:1.0 constant:0.0];
    v12[0] = v9;
    v12[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    [v8 addConstraints:v11];

    activityIndicator = self->_activityIndicator;
  }

  [(UIActivityIndicatorView *)activityIndicator setAlpha:1.0];
  [(UIActivityIndicatorView *)self->_activityIndicator startAnimating];
}

- (void)didEnterLoadingState
{
  v3 = ++didEnterLoadingState_globalSeed_0;
  v4 = [(GKLoadingViewController *)self loadingMachine];
  v5 = [v4 currentState];

  v6 = dispatch_time(0, (self->_loadingIndicatorDelay * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__GKLoadingViewController_didEnterLoadingState__block_invoke;
  block[3] = &unk_27966A7D0;
  v9 = v5;
  v10 = v3;
  block[4] = self;
  v7 = v5;
  dispatch_after(v6, MEMORY[0x277D85CD0], block);
}

void __47__GKLoadingViewController_didEnterLoadingState__block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == didEnterLoadingState_globalSeed_0)
  {
    v2 = [*(a1 + 32) loadingMachine];
    v3 = [v2 currentState];
    v4 = *(a1 + 40);

    if (v3 == v4)
    {
      [*(a1 + 32) setViewsToHideHidden:1];
      v5 = *(a1 + 32);

      [v5 showLoadingIndicator];
    }
  }
}

- (void)didExitLoadingState
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__GKLoadingViewController_didExitLoadingState__block_invoke;
  v3[3] = &unk_2796699A8;
  v3[4] = self;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __46__GKLoadingViewController_didExitLoadingState__block_invoke_2;
  v2[3] = &unk_279669C90;
  v2[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v3 animations:v2 completion:0.3];
}

uint64_t __46__GKLoadingViewController_didExitLoadingState__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setViewsToHideHidden:0];
  v2 = *(*(a1 + 32) + 1016);

  return [v2 setAlpha:0.0];
}

@end