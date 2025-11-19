@interface SUUILoadingViewController
- (SUUILoadingViewController)initWithClientContext:(id)a3;
- (void)_initializeLoadingView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SUUILoadingViewController

- (SUUILoadingViewController)initWithClientContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUUILoadingViewController;
  v6 = [(SUUILoadingViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = SUUILoadingViewController;
  [(SUUILoadingViewController *)&v7 viewDidLoad];
  v3 = [(SUUILoadingViewController *)self backgroundColor];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x277D75348] systemBackgroundColor];
  }

  v5 = [(SUUILoadingViewController *)self view];
  [v5 setBackgroundColor:v4];

  if (!v3)
  {
  }

  v6 = [(SUUILoadingViewController *)self view];
  [v6 setAccessibilityIgnoresInvertColors:1];

  [(SUUILoadingViewController *)self _initializeLoadingView];
}

- (void)_initializeLoadingView
{
  v3 = 0x2798F3000uLL;
  v4 = objc_alloc_init(SUUILoadingView);
  [(SUUILoadingViewController *)self setLoadingView:v4];

  v5 = [(SUUILoadingViewController *)self loadingText];
  if (v5)
  {
    [(SUUILoadingViewController *)self loadingText];
  }

  else
  {
    v3 = [(SUUILoadingViewController *)self clientContext];
    [SUUILoadingView defaultLoadingTextWithClientContext:v3];
  }
  v6 = ;
  v7 = [(SUUILoadingViewController *)self loadingView];
  [v7 setLoadingText:v6];

  if (!v5)
  {

    v6 = v3;
  }

  v8 = [(SUUILoadingViewController *)self view];
  v9 = [v8 backgroundColor];
  v10 = [(SUUILoadingViewController *)self loadingView];
  [v10 setBackgroundColor:v9];

  v11 = [(SUUILoadingViewController *)self spinnerColorScheme];
  v12 = [(SUUILoadingViewController *)self loadingView];
  [v12 setColorScheme:v11];

  v13 = [(SUUILoadingViewController *)self loadingView];
  [v13 sizeToFit];

  v15 = [(SUUILoadingViewController *)self view];
  v14 = [(SUUILoadingViewController *)self loadingView];
  [v15 addSubview:v14];
}

- (void)viewDidLayoutSubviews
{
  v3 = [(SUUILoadingViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = *(MEMORY[0x277CBF3A0] + 8);
  rect.origin.x = *MEMORY[0x277CBF3A0];
  v13 = [(SUUILoadingViewController *)self loadingView];
  [v13 bounds];
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
  v22 = [(SUUILoadingViewController *)self loadingView];
  [v22 setFrame:{v19, v21, v15, v17}];

  *&rect.origin.y = self;
  *&rect.size.width = SUUILoadingViewController;
  [(CGFloat *)&rect.origin.y viewDidLayoutSubviews];
}

@end