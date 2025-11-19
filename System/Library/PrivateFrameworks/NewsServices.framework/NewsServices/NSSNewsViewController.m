@interface NSSNewsViewController
- (NSSNewsViewController)initWithArticleID:(id)a3;
- (NSSNewsViewController)initWithArticleIDs:(id)a3;
- (NSSNewsViewController)initWithURL:(id)a3;
- (void)dealloc;
- (void)requestRemoteViewController;
- (void)setupRemoteViewController:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation NSSNewsViewController

- (NSSNewsViewController)initWithArticleID:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v10 count:1];

  v7 = [(NSSNewsViewController *)self initWithArticleIDs:v6, v10, v11];
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (NSSNewsViewController)initWithArticleIDs:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NSSNewsViewController;
  v6 = [(NSSNewsViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_articleIDs, a3);
    v7->_linkPreviewing = 0;
    [(NSSNewsViewController *)v7 requestRemoteViewController];
  }

  return v7;
}

- (NSSNewsViewController)initWithURL:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([NSSNewsViewController canOpenURL:v4])
  {
    v5 = [v4 fc_NewsArticleID];
    v10[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    self = [(NSSNewsViewController *)self initWithArticleIDs:v6];

    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)dealloc
{
  v3 = [(NSSNewsViewController *)self remoteViewContainerViewController];

  if (v3)
  {
    v4 = [(NSSNewsViewController *)self remoteViewContainerViewController];
    v5 = [v4 isViewLoaded];

    if (v5)
    {
      v6 = [(NSSNewsViewController *)self remoteViewContainerViewController];
      v7 = [v6 view];
      [v7 removeFromSuperview];
    }

    v8 = [(NSSNewsViewController *)self remoteViewContainerViewController];
    [v8 willMoveToParentViewController:0];

    v9 = [(NSSNewsViewController *)self remoteViewContainerViewController];
    [v9 removeFromParentViewController];
  }

  v10.receiver = self;
  v10.super_class = NSSNewsViewController;
  [(NSSNewsViewController *)&v10 dealloc];
}

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = NSSNewsViewController;
  [(NSSNewsViewController *)&v25 viewDidLoad];
  v3 = [(NSSNewsViewController *)self view];
  v4 = [MEMORY[0x277D75348] whiteColor];
  [v3 setBackgroundColor:v4];

  v5 = [(NSSNewsViewController *)self remoteViewContainerViewController];
  if (v5)
  {
    v6 = v5;
    v7 = [(NSSNewsViewController *)self remoteViewContainerViewController];
    v8 = [v7 parentViewController];

    if (v8 != self)
    {
      v9 = [(NSSNewsViewController *)self remoteViewContainerViewController];
      [(NSSNewsViewController *)self addChildViewController:v9];

      v10 = [(NSSNewsViewController *)self view];
      v11 = [(NSSNewsViewController *)self remoteViewContainerViewController];
      v12 = [v11 view];
      [v10 addSubview:v12];

      v13 = [(NSSNewsViewController *)self view];
      [v13 bounds];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v22 = [(NSSNewsViewController *)self remoteViewContainerViewController];
      v23 = [v22 view];
      [v23 setFrame:{v15, v17, v19, v21}];

      v24 = [(NSSNewsViewController *)self remoteViewContainerViewController];
      [v24 didMoveToParentViewController:self];
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = NSSNewsViewController;
  [(NSSNewsViewController *)&v15 viewDidLayoutSubviews];
  v3 = [(NSSNewsViewController *)self remoteViewContainerViewController];

  if (v3)
  {
    v4 = [(NSSNewsViewController *)self view];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(NSSNewsViewController *)self remoteViewContainerViewController];
    v14 = [v13 view];
    [v14 setBounds:{v6, v8, v10, v12}];
  }
}

- (void)requestRemoteViewController
{
  [(NSSNewsViewController *)self _beginDelayingPresentation:0 cancellationHandler:3.0];
  v3 = *MEMORY[0x277D34C28];
  v27 = 0;
  v4 = [MEMORY[0x277CCA9C8] extensionWithIdentifier:v3 error:&v27];
  v5 = v27;
  if (v4)
  {
    objc_initWeak(&location, self);
    v6 = MEMORY[0x277D761B8];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __52__NSSNewsViewController_requestRemoteViewController__block_invoke;
    v24[3] = &unk_279980088;
    objc_copyWeak(&v25, &location);
    v7 = [v6 instantiateWithExtension:v4 completion:v24];
    [(NSSNewsViewController *)self setRemoteViewContainerViewController:v7];

    if ([(NSSNewsViewController *)self isViewLoaded])
    {
      v8 = [(NSSNewsViewController *)self remoteViewContainerViewController];
      [(NSSNewsViewController *)self addChildViewController:v8];

      v9 = [(NSSNewsViewController *)self view];
      v10 = [(NSSNewsViewController *)self remoteViewContainerViewController];
      v11 = [v10 view];
      [v9 addSubview:v11];

      v12 = [(NSSNewsViewController *)self view];
      [v12 bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v21 = [(NSSNewsViewController *)self remoteViewContainerViewController];
      v22 = [v21 view];
      [v22 setFrame:{v14, v16, v18, v20}];

      v23 = [(NSSNewsViewController *)self remoteViewContainerViewController];
      [v23 didMoveToParentViewController:self];
    }

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }
}

void __52__NSSNewsViewController_requestRemoteViewController__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setupRemoteViewController:v6];
  }
}

- (void)setupRemoteViewController:(id)a3
{
  v7 = a3;
  v4 = [(NSSNewsViewController *)self articleIDs];

  if (v7 && v4)
  {
    v5 = [v7 serviceViewControllerProxy];
    [v5 articleViewServiceProviderShouldPresentForLinkPreviewing:{-[NSSNewsViewController isLinkPreviewing](self, "isLinkPreviewing")}];
    v6 = [(NSSNewsViewController *)self articleIDs];
    [v5 articleViewServiceProviderShouldLoadArticlesForArticleIDs:v6];
  }

  [(NSSNewsViewController *)self _endDelayingPresentation];
}

@end