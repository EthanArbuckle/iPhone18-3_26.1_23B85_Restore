@interface SUUILoadingViewController
- (SUUILoadingViewController)initWithClientContext:(id)context;
- (void)_initializeLoadingView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SUUILoadingViewController

- (SUUILoadingViewController)initWithClientContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = SUUILoadingViewController;
  v6 = [(SUUILoadingViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, context);
  }

  return v7;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = SUUILoadingViewController;
  [(SUUILoadingViewController *)&v7 viewDidLoad];
  backgroundColor = [(SUUILoadingViewController *)self backgroundColor];
  systemBackgroundColor = backgroundColor;
  if (!backgroundColor)
  {
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  }

  view = [(SUUILoadingViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  if (!backgroundColor)
  {
  }

  view2 = [(SUUILoadingViewController *)self view];
  [view2 setAccessibilityIgnoresInvertColors:1];

  [(SUUILoadingViewController *)self _initializeLoadingView];
}

- (void)_initializeLoadingView
{
  clientContext = 0x2798F3000uLL;
  v4 = objc_alloc_init(SUUILoadingView);
  [(SUUILoadingViewController *)self setLoadingView:v4];

  loadingText = [(SUUILoadingViewController *)self loadingText];
  if (loadingText)
  {
    [(SUUILoadingViewController *)self loadingText];
  }

  else
  {
    clientContext = [(SUUILoadingViewController *)self clientContext];
    [SUUILoadingView defaultLoadingTextWithClientContext:clientContext];
  }
  v6 = ;
  loadingView = [(SUUILoadingViewController *)self loadingView];
  [loadingView setLoadingText:v6];

  if (!loadingText)
  {

    v6 = clientContext;
  }

  view = [(SUUILoadingViewController *)self view];
  backgroundColor = [view backgroundColor];
  loadingView2 = [(SUUILoadingViewController *)self loadingView];
  [loadingView2 setBackgroundColor:backgroundColor];

  spinnerColorScheme = [(SUUILoadingViewController *)self spinnerColorScheme];
  loadingView3 = [(SUUILoadingViewController *)self loadingView];
  [loadingView3 setColorScheme:spinnerColorScheme];

  loadingView4 = [(SUUILoadingViewController *)self loadingView];
  [loadingView4 sizeToFit];

  view2 = [(SUUILoadingViewController *)self view];
  loadingView5 = [(SUUILoadingViewController *)self loadingView];
  [view2 addSubview:loadingView5];
}

- (void)viewDidLayoutSubviews
{
  view = [(SUUILoadingViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = *(MEMORY[0x277CBF3A0] + 8);
  rect.origin.x = *MEMORY[0x277CBF3A0];
  loadingView = [(SUUILoadingViewController *)self loadingView];
  [loadingView bounds];
  v15 = v14;
  v17 = v16;

  v24.origin.x = v5;
  v24.origin.y = v7;
  v24.size.width = v9;
  v24.size.height = v11;
  Width = CGRectGetWidth(v24);
  v25.origin.x = rect.origin.x;
  v25.origin.y = v12;
  v25.size.width = v15;
  v25.size.height = v17;
  v19 = floor((Width - CGRectGetWidth(v25)) * 0.5);
  v26.origin.x = v5;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  v20 = CGRectGetHeight(v26) * 0.5;
  v27.origin.x = v19;
  v27.origin.y = v12;
  v27.size.width = v15;
  v27.size.height = v17;
  v21 = floor(v20 - CGRectGetHeight(v27));
  loadingView2 = [(SUUILoadingViewController *)self loadingView];
  [loadingView2 setFrame:{v19, v21, v15, v17}];

  *&rect.origin.y = self;
  *&rect.size.width = SUUILoadingViewController;
  [(CGFloat *)&rect.origin.y viewDidLayoutSubviews];
}

@end