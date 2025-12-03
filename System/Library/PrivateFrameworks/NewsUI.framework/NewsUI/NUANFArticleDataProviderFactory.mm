@interface NUANFArticleDataProviderFactory
- (NUANFArticleDataProviderFactory)initWithContentContext:(id)context fontRegistration:(id)registration host:(id)host embedDataManager:(id)manager linkedContentManagerFactory:(id)factory;
- (id)createArticleDataProviderWithArticle:(id)article;
@end

@implementation NUANFArticleDataProviderFactory

- (NUANFArticleDataProviderFactory)initWithContentContext:(id)context fontRegistration:(id)registration host:(id)host embedDataManager:(id)manager linkedContentManagerFactory:(id)factory
{
  contextCopy = context;
  registrationCopy = registration;
  hostCopy = host;
  managerCopy = manager;
  factoryCopy = factory;
  v21.receiver = self;
  v21.super_class = NUANFArticleDataProviderFactory;
  v17 = [(NUANFArticleDataProviderFactory *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_contentContext, context);
    objc_storeStrong(&v18->_fontRegistration, registration);
    objc_storeStrong(&v18->_host, host);
    objc_storeStrong(&v18->_embedDataManager, manager);
    objc_storeStrong(&v18->_linkedContentManagerFactory, factory);
  }

  return v18;
}

- (id)createArticleDataProviderWithArticle:(id)article
{
  articleCopy = article;
  linkedContentManagerFactory = [(NUANFArticleDataProviderFactory *)self linkedContentManagerFactory];
  v6 = [linkedContentManagerFactory createLinkedContentManagerForArticle:articleCopy];

  headline = [articleCopy headline];
  isLocalDraft = [headline isLocalDraft];

  if (isLocalDraft)
  {
    v9 = [NUBundledArticleDataProvider alloc];
    embedDataManager = [(NUANFArticleDataProviderFactory *)self embedDataManager];
    v11 = [(NUBundledArticleDataProvider *)v9 initWithArticle:articleCopy embedDataManager:embedDataManager linkedContentManager:v6];
  }

  else
  {
    v12 = [NUANFArticleDataProvider alloc];
    embedDataManager = [(NUANFArticleDataProviderFactory *)self contentContext];
    fontRegistration = [(NUANFArticleDataProviderFactory *)self fontRegistration];
    host = [(NUANFArticleDataProviderFactory *)self host];
    embedDataManager2 = [(NUANFArticleDataProviderFactory *)self embedDataManager];
    v11 = [(NUANFArticleDataProvider *)v12 initWithArticle:articleCopy contentContext:embedDataManager fontRegistration:fontRegistration host:host embedDataManager:embedDataManager2 linkedContentManager:v6];
  }

  return v11;
}

@end