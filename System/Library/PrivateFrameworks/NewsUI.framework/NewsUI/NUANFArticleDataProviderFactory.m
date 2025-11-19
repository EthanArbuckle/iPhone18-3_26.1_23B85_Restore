@interface NUANFArticleDataProviderFactory
- (NUANFArticleDataProviderFactory)initWithContentContext:(id)a3 fontRegistration:(id)a4 host:(id)a5 embedDataManager:(id)a6 linkedContentManagerFactory:(id)a7;
- (id)createArticleDataProviderWithArticle:(id)a3;
@end

@implementation NUANFArticleDataProviderFactory

- (NUANFArticleDataProviderFactory)initWithContentContext:(id)a3 fontRegistration:(id)a4 host:(id)a5 embedDataManager:(id)a6 linkedContentManagerFactory:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = NUANFArticleDataProviderFactory;
  v17 = [(NUANFArticleDataProviderFactory *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_contentContext, a3);
    objc_storeStrong(&v18->_fontRegistration, a4);
    objc_storeStrong(&v18->_host, a5);
    objc_storeStrong(&v18->_embedDataManager, a6);
    objc_storeStrong(&v18->_linkedContentManagerFactory, a7);
  }

  return v18;
}

- (id)createArticleDataProviderWithArticle:(id)a3
{
  v4 = a3;
  v5 = [(NUANFArticleDataProviderFactory *)self linkedContentManagerFactory];
  v6 = [v5 createLinkedContentManagerForArticle:v4];

  v7 = [v4 headline];
  v8 = [v7 isLocalDraft];

  if (v8)
  {
    v9 = [NUBundledArticleDataProvider alloc];
    v10 = [(NUANFArticleDataProviderFactory *)self embedDataManager];
    v11 = [(NUBundledArticleDataProvider *)v9 initWithArticle:v4 embedDataManager:v10 linkedContentManager:v6];
  }

  else
  {
    v12 = [NUANFArticleDataProvider alloc];
    v10 = [(NUANFArticleDataProviderFactory *)self contentContext];
    v13 = [(NUANFArticleDataProviderFactory *)self fontRegistration];
    v14 = [(NUANFArticleDataProviderFactory *)self host];
    v15 = [(NUANFArticleDataProviderFactory *)self embedDataManager];
    v11 = [(NUANFArticleDataProvider *)v12 initWithArticle:v4 contentContext:v10 fontRegistration:v13 host:v14 embedDataManager:v15 linkedContentManager:v6];
  }

  return v11;
}

@end