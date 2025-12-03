@interface NUArticlePage
- (NSString)identifier;
- (NUArticlePage)initWithArticle:(id)article articleHostViewControllerFactory:(id)factory articleActivityFactory:(id)activityFactory pageNextAction:(unint64_t)action;
- (id)asyncOnceLoadPageStyle:(id)style;
- (id)viewController;
- (void)activityProvider:(id)provider;
- (void)pageStyling:(id)styling;
- (void)prepare;
- (void)unprepare;
@end

@implementation NUArticlePage

- (NUArticlePage)initWithArticle:(id)article articleHostViewControllerFactory:(id)factory articleActivityFactory:(id)activityFactory pageNextAction:(unint64_t)action
{
  articleCopy = article;
  factoryCopy = factory;
  activityFactoryCopy = activityFactory;
  v19.receiver = self;
  v19.super_class = NUArticlePage;
  v14 = [(NUArticlePage *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_article, article);
    objc_storeStrong(&v15->_articleHostViewControllerFactory, factory);
    v15->_pageNextAction = action;
    v16 = [objc_alloc(MEMORY[0x277D30E30]) initWithTarget:v15 selector:sel_asyncOnceLoadPageStyle_];
    asyncOnceOperation = v15->_asyncOnceOperation;
    v15->_asyncOnceOperation = v16;

    objc_storeStrong(&v15->_articleActivityFactory, activityFactory);
  }

  return v15;
}

- (NSString)identifier
{
  article = [(NUArticlePage *)self article];
  articleID = [article articleID];

  return articleID;
}

- (id)viewController
{
  articleViewController = [(NUArticlePage *)self articleViewController];

  if (!articleViewController)
  {
    [(NUArticlePage *)self prepare];
  }

  return [(NUArticlePage *)self articleViewController];
}

- (void)prepare
{
  articleViewController = [(NUArticlePage *)self articleViewController];

  if (!articleViewController)
  {
    articleHostViewControllerFactory = [(NUArticlePage *)self articleHostViewControllerFactory];
    article = [(NUArticlePage *)self article];
    v6 = [articleHostViewControllerFactory createArticleHostViewControllerForArticle:article];

    [v6 setShouldApplyBackgroundColor:1];
    [v6 setShouldShowLoadingCover:1];
    [(NUArticlePage *)self setArticleViewController:v6];
  }

  pageStyle = [(NUArticlePage *)self pageStyle];

  if (!pageStyle)
  {

    [(NUArticlePage *)self pageStyling:0];
  }
}

- (void)unprepare
{
  articleViewController = [(NUArticlePage *)self articleViewController];
  parentViewController = [articleViewController parentViewController];

  if (!parentViewController)
  {
    [(NUArticlePage *)self setArticleViewController:0];
  }

  asyncOnceCancelHandler = [(NUArticlePage *)self asyncOnceCancelHandler];
  [asyncOnceCancelHandler cancel];

  pageStyle = [(NUArticlePage *)self pageStyle];

  if (!pageStyle)
  {
    v7 = [objc_alloc(MEMORY[0x277D30E30]) initWithTarget:self selector:sel_asyncOnceLoadPageStyle_];
    [(NUArticlePage *)self setAsyncOnceOperation:v7];
  }
}

- (void)pageStyling:(id)styling
{
  stylingCopy = styling;
  pageStyle = [(NUArticlePage *)self pageStyle];

  if (pageStyle)
  {
    if (stylingCopy)
    {
      pageStyle2 = [(NUArticlePage *)self pageStyle];
      stylingCopy[2](stylingCopy, pageStyle2);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    asyncOnceOperation = [(NUArticlePage *)self asyncOnceOperation];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __29__NUArticlePage_pageStyling___block_invoke;
    v9[3] = &unk_2799A32D8;
    v10 = stylingCopy;
    objc_copyWeak(&v11, &location);
    v8 = [asyncOnceOperation executeWithCompletionHandler:v9];
    [(NUArticlePage *)self setAsyncOnceCancelHandler:v8];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __29__NUArticlePage_pageStyling___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v2 = [WeakRetained pageStyle];
    (*(v1 + 16))(v1, v2);
  }
}

- (void)activityProvider:(id)provider
{
  providerCopy = provider;
  activityProvider = [(NUArticlePage *)self activityProvider];

  if (activityProvider)
  {
    activityProvider2 = [(NUArticlePage *)self activityProvider];
    providerCopy[2](providerCopy, activityProvider2);
  }

  else
  {
    objc_initWeak(&location, self);
    article = self->_article;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __34__NUArticlePage_activityProvider___block_invoke;
    v8[3] = &unk_2799A3300;
    objc_copyWeak(&v10, &location);
    v9 = providerCopy;
    [(FCArticle *)article performBlockWhenFullyLoaded:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __34__NUArticlePage_activityProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained articleActivityFactory];
  v5 = [v3 headline];

  v6 = [v4 activityProviderForHeadline:v5 reportConcernViewPresenter:0 URLModifier:0];
  [WeakRetained setActivityProvider:v6];

  v7 = *(a1 + 32);
  v8 = [WeakRetained activityProvider];
  (*(v7 + 16))(v7, v8);
}

- (id)asyncOnceLoadPageStyle:(id)style
{
  styleCopy = style;
  objc_initWeak(&location, self);
  v5 = [NUArticlePageStyleOperation alloc];
  article = [(NUArticlePage *)self article];
  pageNextAction = [(NUArticlePage *)self pageNextAction];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__NUArticlePage_asyncOnceLoadPageStyle___block_invoke;
  v12[3] = &unk_2799A3350;
  objc_copyWeak(&v14, &location);
  v8 = styleCopy;
  v13 = v8;
  v9 = [(NUArticlePageStyleOperation *)v5 initWithArticle:article pageNextAction:pageNextAction completion:v12];

  fc_sharedConcurrentQueue = [MEMORY[0x277CCABD8] fc_sharedConcurrentQueue];
  [fc_sharedConcurrentQueue addOperation:v9];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v9;
}

void __40__NUArticlePage_asyncOnceLoadPageStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__NUArticlePage_asyncOnceLoadPageStyle___block_invoke_2;
  block[3] = &unk_2799A3328;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
}

uint64_t __40__NUArticlePage_asyncOnceLoadPageStyle___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setPageStyle:v2];

  v4 = *(a1 + 32) != 0;
  v5 = *(*(a1 + 40) + 16);

  return v5();
}

@end