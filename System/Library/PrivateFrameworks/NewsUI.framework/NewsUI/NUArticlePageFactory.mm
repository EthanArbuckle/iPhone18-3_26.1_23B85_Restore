@interface NUArticlePageFactory
- (NUArticlePageFactory)initWithArticleFactory:(id)a3 articleActivityFactory:(id)a4 articleHostViewControllerFactory:(id)a5;
- (id)createPagesForArticleIDs:(id)a3;
@end

@implementation NUArticlePageFactory

- (NUArticlePageFactory)initWithArticleFactory:(id)a3 articleActivityFactory:(id)a4 articleHostViewControllerFactory:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = NUArticlePageFactory;
  v12 = [(NUArticlePageFactory *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_articleFactory, a3);
    objc_storeStrong(&v13->_articleHostViewControllerFactory, a5);
    objc_storeStrong(&v13->_articleActivityFactory, a4);
  }

  return v13;
}

- (id)createPagesForArticleIDs:(id)a3
{
  v4 = a3;
  v5 = [(NUArticlePageFactory *)self articleFactory];
  v6 = [v5 createArticlesForArticleIDs:v4];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__NUArticlePageFactory_createPagesForArticleIDs___block_invoke;
  v9[3] = &unk_2799A3E70;
  v9[4] = self;
  v7 = [v6 fc_arrayByTransformingWithBlock:v9];

  return v7;
}

NUArticlePage *__49__NUArticlePageFactory_createPagesForArticleIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NUArticlePage alloc];
  v5 = [*(a1 + 32) articleHostViewControllerFactory];
  v6 = [*(a1 + 32) articleActivityFactory];
  v7 = [(NUArticlePage *)v4 initWithArticle:v3 articleHostViewControllerFactory:v5 articleActivityFactory:v6 pageNextAction:0];

  return v7;
}

@end