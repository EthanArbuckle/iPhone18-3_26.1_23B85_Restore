@interface GKLoadableContentViewController
- (GKLoadableContentViewController)init;
- (void)didEnterLoadingState;
- (void)didExitLoadingState;
- (void)setLoadingState:(id)state;
- (void)setViewsToHideWhileLoading:(id)loading;
@end

@implementation GKLoadableContentViewController

- (GKLoadableContentViewController)init
{
  v6.receiver = self;
  v6.super_class = GKLoadableContentViewController;
  v2 = [(GKLoadableContentViewController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(GKLoadableContentStateMachine);
    loadingMachine = v2->_loadingMachine;
    v2->_loadingMachine = v3;

    [(_GKStateMachine *)v2->_loadingMachine setDelegate:v2];
    v2->_loadingIndicatorDelay = 2.0;
  }

  return v2;
}

- (void)setLoadingState:(id)state
{
  stateCopy = state;
  currentState = [(_GKStateMachine *)self->_loadingMachine currentState];

  v5 = stateCopy;
  if (currentState != stateCopy)
  {
    [(_GKStateMachine *)self->_loadingMachine setCurrentState:stateCopy];
    v5 = stateCopy;
  }
}

- (void)setViewsToHideWhileLoading:(id)loading
{
  loadingCopy = loading;
  if (self->_viewsToHideWhileLoading != loadingCopy)
  {
    objc_storeStrong(&self->_viewsToHideWhileLoading, loading);
    loadingState = [(GKLoadableContentViewController *)self loadingState];
    if ([loadingState isEqualToString:@"LoadingState"])
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 1.0;
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__GKLoadableContentViewController_setViewsToHideWhileLoading___block_invoke;
    v8[3] = &__block_descriptor_40_e23_v32__0__UIView_8Q16_B24l;
    *&v8[4] = v7;
    [(NSArray *)loadingCopy enumerateObjectsUsingBlock:v8];
  }
}

- (void)didEnterLoadingState
{
  v3 = ++didEnterLoadingState_globalSeed;
  loadingMachine = [(GKLoadableContentViewController *)self loadingMachine];
  currentState = [loadingMachine currentState];

  v6 = dispatch_time(0, (self->_loadingIndicatorDelay * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__GKLoadableContentViewController_didEnterLoadingState__block_invoke;
  block[3] = &unk_27966A7D0;
  v10 = currentState;
  v11 = v3;
  block[4] = self;
  v7 = currentState;
  dispatch_after(v6, MEMORY[0x277D85CD0], block);
  viewsToHideWhileLoading = [(GKLoadableContentViewController *)self viewsToHideWhileLoading];
  [viewsToHideWhileLoading enumerateObjectsUsingBlock:&__block_literal_global_6];
}

void __55__GKLoadableContentViewController_didEnterLoadingState__block_invoke(uint64_t a1)
{
  v15[2] = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) == didEnterLoadingState_globalSeed)
  {
    v2 = [*(a1 + 32) loadingMachine];
    v3 = [v2 currentState];
    v4 = *(a1 + 40);

    if (v3 == v4)
    {
      v5 = *(*(a1 + 32) + 1016);
      if (!v5)
      {
        v6 = objc_alloc_init(MEMORY[0x277D750E8]);
        v7 = *(a1 + 32);
        v8 = *(v7 + 1016);
        *(v7 + 1016) = v6;

        [*(*(a1 + 32) + 1016) setTranslatesAutoresizingMaskIntoConstraints:0];
        [*(*(a1 + 32) + 1016) setActivityIndicatorViewStyle:101];
        v9 = [MEMORY[0x277D0C868] sharedPalette];
        v10 = [v9 activityIndicatorColor];
        [*(*(a1 + 32) + 1016) setColor:v10];

        v11 = [*(a1 + 32) view];
        [v11 addSubview:*(*(a1 + 32) + 1016)];
        v12 = [MEMORY[0x277CCAAD0] constraintWithItem:*(*(a1 + 32) + 1016) attribute:9 relatedBy:0 toItem:v11 attribute:9 multiplier:1.0 constant:0.0];
        v13 = [MEMORY[0x277CCAAD0] constraintWithItem:*(*(a1 + 32) + 1016) attribute:10 relatedBy:0 toItem:v11 attribute:10 multiplier:1.0 constant:0.0];
        v15[0] = v12;
        v15[1] = v13;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
        [v11 addConstraints:v14];

        v5 = *(*(a1 + 32) + 1016);
      }

      [v5 setAlpha:1.0];
      [*(*(a1 + 32) + 1016) startAnimating];
    }
  }
}

- (void)didExitLoadingState
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__GKLoadableContentViewController_didExitLoadingState__block_invoke;
  v3[3] = &unk_2796699A8;
  v3[4] = self;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __54__GKLoadableContentViewController_didExitLoadingState__block_invoke_3;
  v2[3] = &unk_279669C90;
  v2[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v3 animations:v2 completion:0.3];
}

uint64_t __54__GKLoadableContentViewController_didExitLoadingState__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewsToHideWhileLoading];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_8];

  v3 = *(*(a1 + 32) + 1016);

  return [v3 setAlpha:0.0];
}

@end