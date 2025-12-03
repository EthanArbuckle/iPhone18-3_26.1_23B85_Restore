@interface NUANFArticleFactory
- (NUANFArticleFactory)initWithArticleController:(id)controller;
- (id)createArticleForHeadline:(id)headline;
- (id)createArticlesForArticleIDs:(id)ds;
@end

@implementation NUANFArticleFactory

- (NUANFArticleFactory)initWithArticleController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = NUANFArticleFactory;
  v6 = [(NUANFArticleFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_articleController, controller);
    *&v7->_qualityOfService = xmmword_25C311CB0;
  }

  return v7;
}

- (id)createArticlesForArticleIDs:(id)ds
{
  v21 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = dsCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        articleController = [(NUANFArticleFactory *)self articleController];
        v13 = [articleController articleWithID:v11 forceArticleUpdate:0 qualityOfService:-[NUANFArticleFactory qualityOfService](self relativePriority:{"qualityOfService"), -[NUANFArticleFactory relativePriority](self, "relativePriority")}];

        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)createArticleForHeadline:(id)headline
{
  headlineCopy = headline;
  articleController = [(NUANFArticleFactory *)self articleController];
  v6 = [articleController articleWithHeadline:headlineCopy];

  return v6;
}

@end