@interface DDRemoteHeaderView
- (DDRemoteAction)action;
- (DDRemoteHeaderView)initWithAction:(id)action;
- (void)DDRemoteActionDidTerminateWithError:(id)error;
- (void)dealloc;
- (void)loadRemoteView;
- (void)removeLoadingViewToShowView:(id)view;
- (void)showErrorView;
- (void)showLoadingView;
- (void)showRemoteView;
- (void)unloadRemoteAction;
- (void)willMoveToWindow:(id)window;
@end

@implementation DDRemoteHeaderView

- (void)willMoveToWindow:(id)window
{
  if (window)
  {
    self->_shouldDeferPresenting = 0;
    windowCopy = window;
    [(DDRemoteHeaderView *)self showRemoteView];
  }

  else
  {
    self->_shouldDeferPresenting = 1;
    strongSelf = self->_strongSelf;
    self->_strongSelf = 0;
    v7 = 0;
  }

  v8.receiver = self;
  v8.super_class = DDRemoteHeaderView;
  [(DDRemoteHeaderView *)&v8 willMoveToWindow:window];
}

- (void)dealloc
{
  [(DDRemoteHeaderView *)self unloadRemoteAction];
  v3.receiver = self;
  v3.super_class = DDRemoteHeaderView;
  [(DDRemoteHeaderView *)&v3 dealloc];
}

- (DDRemoteHeaderView)initWithAction:(id)action
{
  actionCopy = action;
  v13.receiver = self;
  v13.super_class = DDRemoteHeaderView;
  v5 = [(DDRemoteHeaderView *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(DDRemoteHeaderView *)v5 setAction:actionCopy];
    [(DDRemoteHeaderView *)v6 loadRemoteView];
    v6->_loaded = 0;
    v7 = dispatch_time(0, 800000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__DDRemoteHeaderView_initWithAction___block_invoke;
    block[3] = &unk_278290B50;
    v8 = v6;
    v12 = v8;
    dispatch_after(v7, MEMORY[0x277D85CD0], block);
    v9 = v8;
  }

  return v6;
}

uint64_t __37__DDRemoteHeaderView_initWithAction___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((*(result + 448) & 1) == 0 && !*(result + 432))
  {
    return [result showLoadingView];
  }

  return result;
}

- (void)loadRemoteView
{
  v28[1] = *MEMORY[0x277D85DE8];
  v27 = 0;
  v21 = [MEMORY[0x277CCA9C8] extensionWithIdentifier:@"com.apple.DataDetectorsUI.ActionsExtension" error:&v27];
  v3 = v27;
  v20 = v3;
  if (v21)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [(DDRemoteActionManagerViewController *)v20 loadRemoteAction];
  }

  action = [(DDRemoteHeaderView *)self action];
  v6 = [DDRemoteActionContext alloc];
  v7 = [action url];
  result = [action result];
  context = [action context];
  associatedResults = [action associatedResults];
  associatedVisualResults = [action associatedVisualResults];
  handleString = [action handleString];
  menuHeaderViewProviderClass = [objc_opt_class() menuHeaderViewProviderClass];
  v14 = [(DDRemoteActionContext *)v6 initWithURL:v7 result:result context:context associatedResults:associatedResults associatedVisualResults:associatedVisualResults contactHandle:handleString className:menuHeaderViewProviderClass];

  v15 = objc_alloc_init(MEMORY[0x277CCA9D8]);
  objc_initWeak(&location, self);
  v28[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __36__DDRemoteHeaderView_loadRemoteView__block_invoke;
  v22[3] = &unk_278290BA0;
  objc_copyWeak(&v25, &location);
  v17 = v21;
  v23 = v17;
  v18 = v14;
  v24 = v18;
  [v17 instantiateViewControllerWithInputItems:v16 connectionHandler:v22];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  v19 = *MEMORY[0x277D85DE8];
}

void __36__DDRemoteHeaderView_loadRemoteView__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v11 = WeakRetained;
  if (v9 || !WeakRetained)
  {
    [WeakRetained showErrorView];
  }

  else
  {
    [WeakRetained setRequest:v7];
    [v11 setExtension:*(a1 + 32)];
    v12 = v8;
    objc_storeStrong(v11 + 51, a3);
    [v12 setDelegate:v11];
    v13 = [*(a1 + 32) _extensionContextForUUID:v7];
    objc_storeStrong(v11 + 52, v13);
    v14 = *(a1 + 40);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __36__DDRemoteHeaderView_loadRemoteView__block_invoke_2;
    v15[3] = &unk_278290B78;
    objc_copyWeak(&v16, (a1 + 48));
    [v13 prepareViewControllerWithContext:v14 completionHandler:v15];
    objc_destroyWeak(&v16);
  }
}

void __36__DDRemoteHeaderView_loadRemoteView__block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (a2 && WeakRetained)
  {
    WeakRetained[448] = 1;
    [WeakRetained showRemoteView];
    v4 = v5;
  }

  else
  {
    [WeakRetained showErrorView];
    v4 = v5;
  }
}

- (void)showRemoteView
{
  if (self->_loaded && !self->_displayed && !self->_shouldDeferPresenting)
  {
    self->_displayed = 1;
    view = [(DDRemoteActionHostViewController *)self->_remoteViewController view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    [(DDRemoteHeaderView *)self addSubview:view];
    v4 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:5 relatedBy:0 toItem:view attribute:5 multiplier:1.0 constant:0.0];
    [v4 setActive:1];

    v5 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:6 relatedBy:0 toItem:view attribute:6 multiplier:1.0 constant:0.0];
    [v5 setActive:1];

    v6 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:3 relatedBy:0 toItem:view attribute:3 multiplier:1.0 constant:0.0];
    [v6 setActive:1];

    v7 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:4 relatedBy:0 toItem:view attribute:4 multiplier:1.0 constant:0.0];
    [v7 setActive:1];

    [(DDRemoteHeaderView *)self removeLoadingViewToShowView:view];
  }
}

- (void)unloadRemoteAction
{
  request = [(DDRemoteHeaderView *)self request];

  if (request)
  {
    extension = [(DDRemoteHeaderView *)self extension];
    request2 = [(DDRemoteHeaderView *)self request];
    [extension cancelExtensionRequestWithIdentifier:request2];

    [(DDRemoteHeaderView *)self setRequest:0];
  }
}

- (void)showLoadingView
{
  if (!self->_loadingView)
  {
    date = [MEMORY[0x277CBEAA8] date];
    loadingDate = self->_loadingDate;
    self->_loadingDate = date;

    v5 = objc_alloc_init(MEMORY[0x277D750E8]);
    [(UIView *)v5 setActivityIndicatorViewStyle:100];
    [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(DDRemoteHeaderView *)self addSubview:v5];
    loadingView = self->_loadingView;
    self->_loadingView = v5;
    v7 = v5;

    v8 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:5 relatedBy:0 toItem:v7 attribute:5 multiplier:1.0 constant:0.0];
    [v8 setActive:1];

    v9 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:6 relatedBy:0 toItem:v7 attribute:6 multiplier:1.0 constant:0.0];
    [v9 setActive:1];

    v10 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:3 relatedBy:0 toItem:v7 attribute:3 multiplier:1.0 constant:0.0];
    [v10 setActive:1];

    v11 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:4 relatedBy:0 toItem:v7 attribute:4 multiplier:1.0 constant:0.0];
    [v11 setActive:1];

    [(UIView *)v7 startAnimating];
    [(UIView *)self->_loadingView setAlpha:0.0];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __37__DDRemoteHeaderView_showLoadingView__block_invoke;
    v12[3] = &unk_278290B50;
    v12[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v12 animations:0.2];
  }
}

- (void)removeLoadingViewToShowView:(id)view
{
  viewCopy = view;
  if (self->_loadingView)
  {
    [(NSDate *)self->_loadingDate timeIntervalSinceNow];
    v6 = fmin(v5 + 0.3, 0.0);
    [viewCopy setAlpha:0.0];
    v7 = MEMORY[0x277D75D18];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50__DDRemoteHeaderView_removeLoadingViewToShowView___block_invoke;
    v9[3] = &unk_278290BC8;
    v10 = viewCopy;
    selfCopy = self;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50__DDRemoteHeaderView_removeLoadingViewToShowView___block_invoke_2;
    v8[3] = &unk_278290BF0;
    v8[4] = self;
    [v7 animateWithDuration:0 delay:v9 options:v8 animations:0.2 completion:v6];
  }
}

uint64_t __50__DDRemoteHeaderView_removeLoadingViewToShowView___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(*(a1 + 40) + 424);

  return [v2 setAlpha:0.0];
}

void __50__DDRemoteHeaderView_removeLoadingViewToShowView___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 424) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 424);
  *(v2 + 424) = 0;
}

- (void)showErrorView
{
  v37[1] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v3 = objc_opt_new();
    [(DDRemoteHeaderView *)self addSubview:v3];
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeStrong(&self->_errorView, v3);
    v4 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:5 relatedBy:0 toItem:v3 attribute:5 multiplier:1.0 constant:0.0];
    [v4 setActive:1];

    v5 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:6 relatedBy:0 toItem:v3 attribute:6 multiplier:1.0 constant:0.0];
    [v5 setActive:1];

    v6 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:3 relatedBy:0 toItem:v3 attribute:3 multiplier:1.0 constant:0.0];
    [v6 setActive:1];

    v7 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:4 relatedBy:0 toItem:v3 attribute:4 multiplier:1.0 constant:0.0];
    [v7 setActive:1];

    v8 = *MEMORY[0x277D74388];
    v35[0] = *MEMORY[0x277D74398];
    v35[1] = v8;
    v36[0] = &unk_282C2BC68;
    v36[1] = &unk_282C2BC80;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
    v37[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];

    v11 = *MEMORY[0x277D74338];
    v34[0] = v10;
    v12 = *MEMORY[0x277D74340];
    v33[0] = v11;
    v33[1] = v12;
    v13 = _UISystemFontName();
    v34[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];

    v15 = [objc_alloc(MEMORY[0x277D74310]) initWithFontAttributes:v14];
    v16 = [MEMORY[0x277D74300] fontWithDescriptor:v15 size:14.0];
    [v3 setFont:v16];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [v3 setTextColor:secondaryLabelColor];

    [v3 setTextAlignment:1];
    action = [(DDRemoteHeaderView *)self action];
    result = [action result];

    if (result)
    {
      v20 = +[DDDetectionController sharedController];
      action2 = [(DDRemoteHeaderView *)self action];
      v22 = [v20 attributedTitleForResult:objc_msgSend(action2 updaterBlock:{"result"), 0}];

      if (!v22)
      {
        goto LABEL_10;
      }
    }

    else
    {
      action3 = [(DDRemoteHeaderView *)self action];
      v24 = [action3 url];

      if (!v24)
      {
        goto LABEL_10;
      }

      v25 = +[DDDetectionController sharedController];
      action4 = [(DDRemoteHeaderView *)self action];
      v27 = [action4 url];
      v22 = [v25 attributedTitleForURL:v27 updaterBlock:0];

      if (!v22)
      {
LABEL_10:
        v28 = DDLocalizedString(@"Information not available");
        [v3 setText:v28];

        if (!self->_loadingView)
        {
LABEL_11:
          if (self->_remoteViewController)
          {
            [(UIView *)self->_errorView setAlpha:0.0];
            v30[4] = self;
            v31[0] = MEMORY[0x277D85DD0];
            v31[1] = 3221225472;
            v31[2] = __35__DDRemoteHeaderView_showErrorView__block_invoke_2;
            v31[3] = &unk_278290B50;
            v31[4] = self;
            v30[0] = MEMORY[0x277D85DD0];
            v30[1] = 3221225472;
            v30[2] = __35__DDRemoteHeaderView_showErrorView__block_invoke_3;
            v30[3] = &unk_278290BF0;
            [MEMORY[0x277D75D18] animateWithDuration:v31 animations:v30 completion:0.2];
          }

          goto LABEL_13;
        }

LABEL_9:
        [(DDRemoteHeaderView *)self removeLoadingViewToShowView:self->_errorView];
LABEL_13:

        goto LABEL_14;
      }
    }

    [v3 setAttributedText:v22];

    if (!self->_loadingView)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__DDRemoteHeaderView_showErrorView__block_invoke;
  block[3] = &unk_278290B50;
  block[4] = self;
  dispatch_sync(MEMORY[0x277D85CD0], block);
LABEL_14:
  v29 = *MEMORY[0x277D85DE8];
}

void __35__DDRemoteHeaderView_showErrorView__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 432) setAlpha:1.0];
  v2 = [*(*(a1 + 32) + 408) view];
  [v2 setAlpha:0.0];
}

void __35__DDRemoteHeaderView_showErrorView__block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 408) view];
  [v2 removeFromSuperview];

  v3 = *(a1 + 32);
  v4 = *(v3 + 408);
  *(v3 + 408) = 0;
}

- (void)DDRemoteActionDidTerminateWithError:(id)error
{
  if (error)
  {
    [(DDRemoteHeaderView *)self showErrorView];
  }
}

- (DDRemoteAction)action
{
  WeakRetained = objc_loadWeakRetained(&self->_action);

  return WeakRetained;
}

@end