@interface NSSNewsViewController
- (NSSNewsViewController)initWithArticleID:(id)d;
- (NSSNewsViewController)initWithArticleIDs:(id)ds;
- (NSSNewsViewController)initWithURL:(id)l;
- (void)dealloc;
- (void)requestRemoteViewController;
- (void)setupRemoteViewController:(id)controller;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation NSSNewsViewController

- (NSSNewsViewController)initWithArticleID:(id)d
{
  v11 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v4 = MEMORY[0x277CBEA60];
  dCopy2 = d;
  v6 = [v4 arrayWithObjects:&dCopy count:1];

  v7 = [(NSSNewsViewController *)self initWithArticleIDs:v6, dCopy, v11];
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (NSSNewsViewController)initWithArticleIDs:(id)ds
{
  dsCopy = ds;
  v9.receiver = self;
  v9.super_class = NSSNewsViewController;
  v6 = [(NSSNewsViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_articleIDs, ds);
    v7->_linkPreviewing = 0;
    [(NSSNewsViewController *)v7 requestRemoteViewController];
  }

  return v7;
}

- (NSSNewsViewController)initWithURL:(id)l
{
  v10[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  if ([NSSNewsViewController canOpenURL:lCopy])
  {
    fc_NewsArticleID = [lCopy fc_NewsArticleID];
    v10[0] = fc_NewsArticleID;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    self = [(NSSNewsViewController *)self initWithArticleIDs:v6];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)dealloc
{
  remoteViewContainerViewController = [(NSSNewsViewController *)self remoteViewContainerViewController];

  if (remoteViewContainerViewController)
  {
    remoteViewContainerViewController2 = [(NSSNewsViewController *)self remoteViewContainerViewController];
    isViewLoaded = [remoteViewContainerViewController2 isViewLoaded];

    if (isViewLoaded)
    {
      remoteViewContainerViewController3 = [(NSSNewsViewController *)self remoteViewContainerViewController];
      view = [remoteViewContainerViewController3 view];
      [view removeFromSuperview];
    }

    remoteViewContainerViewController4 = [(NSSNewsViewController *)self remoteViewContainerViewController];
    [remoteViewContainerViewController4 willMoveToParentViewController:0];

    remoteViewContainerViewController5 = [(NSSNewsViewController *)self remoteViewContainerViewController];
    [remoteViewContainerViewController5 removeFromParentViewController];
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
  view = [(NSSNewsViewController *)self view];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [view setBackgroundColor:whiteColor];

  remoteViewContainerViewController = [(NSSNewsViewController *)self remoteViewContainerViewController];
  if (remoteViewContainerViewController)
  {
    v6 = remoteViewContainerViewController;
    remoteViewContainerViewController2 = [(NSSNewsViewController *)self remoteViewContainerViewController];
    parentViewController = [remoteViewContainerViewController2 parentViewController];

    if (parentViewController != self)
    {
      remoteViewContainerViewController3 = [(NSSNewsViewController *)self remoteViewContainerViewController];
      [(NSSNewsViewController *)self addChildViewController:remoteViewContainerViewController3];

      view2 = [(NSSNewsViewController *)self view];
      remoteViewContainerViewController4 = [(NSSNewsViewController *)self remoteViewContainerViewController];
      view3 = [remoteViewContainerViewController4 view];
      [view2 addSubview:view3];

      view4 = [(NSSNewsViewController *)self view];
      [view4 bounds];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      remoteViewContainerViewController5 = [(NSSNewsViewController *)self remoteViewContainerViewController];
      view5 = [remoteViewContainerViewController5 view];
      [view5 setFrame:{v15, v17, v19, v21}];

      remoteViewContainerViewController6 = [(NSSNewsViewController *)self remoteViewContainerViewController];
      [remoteViewContainerViewController6 didMoveToParentViewController:self];
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = NSSNewsViewController;
  [(NSSNewsViewController *)&v15 viewDidLayoutSubviews];
  remoteViewContainerViewController = [(NSSNewsViewController *)self remoteViewContainerViewController];

  if (remoteViewContainerViewController)
  {
    view = [(NSSNewsViewController *)self view];
    [view bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    remoteViewContainerViewController2 = [(NSSNewsViewController *)self remoteViewContainerViewController];
    view2 = [remoteViewContainerViewController2 view];
    [view2 setBounds:{v6, v8, v10, v12}];
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
      remoteViewContainerViewController = [(NSSNewsViewController *)self remoteViewContainerViewController];
      [(NSSNewsViewController *)self addChildViewController:remoteViewContainerViewController];

      view = [(NSSNewsViewController *)self view];
      remoteViewContainerViewController2 = [(NSSNewsViewController *)self remoteViewContainerViewController];
      view2 = [remoteViewContainerViewController2 view];
      [view addSubview:view2];

      view3 = [(NSSNewsViewController *)self view];
      [view3 bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      remoteViewContainerViewController3 = [(NSSNewsViewController *)self remoteViewContainerViewController];
      view4 = [remoteViewContainerViewController3 view];
      [view4 setFrame:{v14, v16, v18, v20}];

      remoteViewContainerViewController4 = [(NSSNewsViewController *)self remoteViewContainerViewController];
      [remoteViewContainerViewController4 didMoveToParentViewController:self];
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

- (void)setupRemoteViewController:(id)controller
{
  controllerCopy = controller;
  articleIDs = [(NSSNewsViewController *)self articleIDs];

  if (controllerCopy && articleIDs)
  {
    serviceViewControllerProxy = [controllerCopy serviceViewControllerProxy];
    [serviceViewControllerProxy articleViewServiceProviderShouldPresentForLinkPreviewing:{-[NSSNewsViewController isLinkPreviewing](self, "isLinkPreviewing")}];
    articleIDs2 = [(NSSNewsViewController *)self articleIDs];
    [serviceViewControllerProxy articleViewServiceProviderShouldLoadArticlesForArticleIDs:articleIDs2];
  }

  [(NSSNewsViewController *)self _endDelayingPresentation];
}

@end