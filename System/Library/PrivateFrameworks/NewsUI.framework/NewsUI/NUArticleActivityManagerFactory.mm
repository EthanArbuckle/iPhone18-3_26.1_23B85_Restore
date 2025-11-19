@interface NUArticleActivityManagerFactory
- (NUArticleActivityManagerFactory)initWithReadingHistory:(id)a3 readingList:(id)a4 subscriptionList:(id)a5 URLHandler:(id)a6 optionsProvider:(id)a7;
- (id)activityProviderForHeadline:(id)a3 reportConcernViewPresenter:(id)a4 URLModifier:(id)a5;
@end

@implementation NUArticleActivityManagerFactory

- (NUArticleActivityManagerFactory)initWithReadingHistory:(id)a3 readingList:(id)a4 subscriptionList:(id)a5 URLHandler:(id)a6 optionsProvider:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = NUArticleActivityManagerFactory;
  v17 = [(NUArticleActivityManagerFactory *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_readingHistory, a3);
    objc_storeStrong(&v18->_readingList, a4);
    objc_storeStrong(&v18->_subscriptionList, a5);
    objc_storeStrong(&v18->_URLHandler, a6);
    objc_storeStrong(&v18->_optionsProvider, a7);
  }

  return v18;
}

- (id)activityProviderForHeadline:(id)a3 reportConcernViewPresenter:(id)a4 URLModifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [NUArticleActivityManager alloc];
  v12 = [(NUArticleActivityManagerFactory *)self readingHistory];
  v13 = [(NUArticleActivityManagerFactory *)self readingList];
  v14 = [(NUArticleActivityManagerFactory *)self subscriptionList];
  v15 = [(NUArticleActivityManagerFactory *)self URLHandler];
  v16 = [(NUArticleActivityManagerFactory *)self optionsProvider];
  v17 = [(NUArticleActivityManager *)v11 initWithHeadline:v10 readingHistory:v12 readingList:v13 subscriptionList:v14 URLHandler:v15 reportConcernViewPresenter:v9 URLModifier:v8 optionsProvider:v16];

  return v17;
}

@end