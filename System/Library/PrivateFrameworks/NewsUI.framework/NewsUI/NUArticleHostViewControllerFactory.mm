@interface NUArticleHostViewControllerFactory
- (NUArticleHostViewControllerFactory)initWithArticleViewControllerFactory:(id)factory settings:(id)settings errorMessageFactory:(id)messageFactory contentSizeManager:(id)manager;
- (id)createArticleHostViewControllerForArticle:(id)article;
@end

@implementation NUArticleHostViewControllerFactory

- (NUArticleHostViewControllerFactory)initWithArticleViewControllerFactory:(id)factory settings:(id)settings errorMessageFactory:(id)messageFactory contentSizeManager:(id)manager
{
  factoryCopy = factory;
  settingsCopy = settings;
  messageFactoryCopy = messageFactory;
  managerCopy = manager;
  v18.receiver = self;
  v18.super_class = NUArticleHostViewControllerFactory;
  v15 = [(NUArticleHostViewControllerFactory *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_articleViewControllerFactory, factory);
    objc_storeStrong(&v16->_settings, settings);
    objc_storeStrong(&v16->_errorMessageFactory, messageFactory);
    objc_storeStrong(&v16->_contentSizeManager, manager);
  }

  return v16;
}

- (id)createArticleHostViewControllerForArticle:(id)article
{
  articleCopy = article;
  v5 = [NUArticleHostViewController alloc];
  articleViewControllerFactory = [(NUArticleHostViewControllerFactory *)self articleViewControllerFactory];
  settings = [(NUArticleHostViewControllerFactory *)self settings];
  errorMessageFactory = [(NUArticleHostViewControllerFactory *)self errorMessageFactory];
  contentSizeManager = [(NUArticleHostViewControllerFactory *)self contentSizeManager];
  v10 = [(NUArticleHostViewController *)v5 initWithArticle:articleCopy articleViewControllerFactory:articleViewControllerFactory settings:settings errorMessageFactory:errorMessageFactory contentSizeManager:contentSizeManager];

  return v10;
}

@end