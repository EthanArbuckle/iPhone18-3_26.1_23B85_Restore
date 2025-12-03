@interface NSSArticleViewControllerInternal
- (NSSArticleViewControllerInternal)initWithArticle:(id)article;
- (NSSArticleViewControllerInternal)initWithNotification:(id)notification;
- (NSSArticleViewControllerInternal)initWithSpotlightIdentifier:(id)identifier;
- (void)_tickleArticleView;
- (void)_tickleSpinner;
- (void)presentArticle:(id)article completion:(id)completion;
- (void)setArticle:(id)article;
- (void)setArticleLoading:(BOOL)loading;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation NSSArticleViewControllerInternal

- (NSSArticleViewControllerInternal)initWithArticle:(id)article
{
  articleCopy = article;
  v8.receiver = self;
  v8.super_class = NSSArticleViewControllerInternal;
  v5 = [(NSSArticleViewControllerInternal *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(NSSArticleViewControllerInternal *)v5 setArticle:articleCopy];
  }

  return v6;
}

- (NSSArticleViewControllerInternal)initWithNotification:(id)notification
{
  notificationCopy = notification;
  v11.receiver = self;
  v11.super_class = NSSArticleViewControllerInternal;
  v5 = [(NSSArticleViewControllerInternal *)&v11 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    v5->_articleLoading = notificationCopy != 0;
    objc_initWeak(&location, v5);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__NSSArticleViewControllerInternal_initWithNotification___block_invoke;
    v8[3] = &unk_279980D70;
    objc_copyWeak(&v9, &location);
    [NSSArticleInternal articleFromNotification:notificationCopy completion:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __57__NSSArticleViewControllerInternal_initWithNotification___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v4)
  {
    [WeakRetained setArticle:v4];
  }

  [WeakRetained setArticleLoading:0];
}

- (NSSArticleViewControllerInternal)initWithSpotlightIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([NSSArticleInternal coreSpotlightIdentifierRepresentsArticleIdentifier:identifierCopy])
  {
    v12.receiver = self;
    v12.super_class = NSSArticleViewControllerInternal;
    v5 = [(NSSArticleViewControllerInternal *)&v12 initWithNibName:0 bundle:0];
    v6 = v5;
    if (v5)
    {
      v5->_articleLoading = identifierCopy != 0;
      objc_initWeak(&location, v5);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __64__NSSArticleViewControllerInternal_initWithSpotlightIdentifier___block_invoke;
      v9[3] = &unk_279980D70;
      objc_copyWeak(&v10, &location);
      [NSSArticleInternal articleFromCoreSpotlightIdentifier:identifierCopy completion:v9];
      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

void __64__NSSArticleViewControllerInternal_initWithSpotlightIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v4)
  {
    [WeakRetained setArticle:v4];
  }

  [WeakRetained setArticleLoading:0];
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = NSSArticleViewControllerInternal;
  [(NSSArticleViewControllerInternal *)&v11 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [(NSSArticleViewControllerInternal *)self setSpinner:v3];

  spinner = [(NSSArticleViewControllerInternal *)self spinner];
  [spinner setHidesWhenStopped:1];

  view = [(NSSArticleViewControllerInternal *)self view];
  spinner2 = [(NSSArticleViewControllerInternal *)self spinner];
  [view addSubview:spinner2];

  v7 = [NSSArticleView alloc];
  v8 = [(NSSArticleView *)v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(NSSArticleViewControllerInternal *)self setArticleView:v8];

  view2 = [(NSSArticleViewControllerInternal *)self view];
  articleView = [(NSSArticleViewControllerInternal *)self articleView];
  [view2 addSubview:articleView];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = NSSArticleViewControllerInternal;
  [(NSSArticleViewControllerInternal *)&v13 viewWillLayoutSubviews];
  view = [(NSSArticleViewControllerInternal *)self view];
  [view bounds];
  MidX = CGRectGetMidX(v14);
  view2 = [(NSSArticleViewControllerInternal *)self view];
  [view2 bounds];
  MidY = CGRectGetMidY(v15);
  spinner = [(NSSArticleViewControllerInternal *)self spinner];
  [spinner setCenter:{MidX, MidY}];

  view3 = [(NSSArticleViewControllerInternal *)self view];
  [view3 bounds];
  Width = CGRectGetWidth(v16);
  view4 = [(NSSArticleViewControllerInternal *)self view];
  [view4 bounds];
  Height = CGRectGetHeight(v17);
  articleView = [(NSSArticleViewControllerInternal *)self articleView];
  [articleView setFrame:{0.0, 0.0, Width, Height}];
}

- (void)setArticleLoading:(BOOL)loading
{
  if (self->_articleLoading != loading)
  {
    self->_articleLoading = loading;
    [(NSSArticleViewControllerInternal *)self _tickleSpinner];
  }
}

- (void)setArticle:(id)article
{
  articleCopy = article;
  if (self->_article != articleCopy)
  {
    v11 = articleCopy;
    objc_storeStrong(&self->_article, article);
    [(NSSArticleViewControllerInternal *)self _tickleArticleView];
    articleView = [(NSSArticleViewControllerInternal *)self articleView];
    [articleView preferredSize];
    v8 = v7;
    v10 = v9;

    [(NSSArticleViewControllerInternal *)self setPreferredContentSize:v8, v10];
    articleCopy = v11;
  }
}

- (void)presentArticle:(id)article completion:(id)completion
{
  articleCopy = article;
  completionCopy = completion;
  if (self->_article != articleCopy)
  {
    objc_storeStrong(&self->_article, article);
    [(NSSArticleViewControllerInternal *)self _tickleArticleView];
    if (completionCopy)
    {
      articleView = [(NSSArticleViewControllerInternal *)self articleView];
      [articleView preferredSize];
      v10 = v9;
      v12 = v11;

      completionCopy[2](completionCopy, v10, v12);
    }

    [(NSSArticleViewControllerInternal *)self _tickleSpinner];
  }
}

- (void)_tickleSpinner
{
  if ([(NSSArticleViewControllerInternal *)self isViewLoaded])
  {
    articleLoading = [(NSSArticleViewControllerInternal *)self articleLoading];
    spinner = [(NSSArticleViewControllerInternal *)self spinner];
    v5 = spinner;
    if (articleLoading)
    {
      [spinner startAnimating];
    }

    else
    {
      [spinner stopAnimating];
    }
  }
}

- (void)_tickleArticleView
{
  if ([(NSSArticleViewControllerInternal *)self isViewLoaded])
  {
    article = [(NSSArticleViewControllerInternal *)self article];
    articleView = [(NSSArticleViewControllerInternal *)self articleView];
    [articleView setArticle:article];

    article2 = [(NSSArticleViewControllerInternal *)self article];
    articleView2 = [(NSSArticleViewControllerInternal *)self articleView];
    [articleView2 setHidden:article2 == 0];
  }
}

@end