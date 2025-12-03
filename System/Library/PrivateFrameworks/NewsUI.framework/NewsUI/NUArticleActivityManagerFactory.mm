@interface NUArticleActivityManagerFactory
- (NUArticleActivityManagerFactory)initWithReadingHistory:(id)history readingList:(id)list subscriptionList:(id)subscriptionList URLHandler:(id)handler optionsProvider:(id)provider;
- (id)activityProviderForHeadline:(id)headline reportConcernViewPresenter:(id)presenter URLModifier:(id)modifier;
@end

@implementation NUArticleActivityManagerFactory

- (NUArticleActivityManagerFactory)initWithReadingHistory:(id)history readingList:(id)list subscriptionList:(id)subscriptionList URLHandler:(id)handler optionsProvider:(id)provider
{
  historyCopy = history;
  listCopy = list;
  subscriptionListCopy = subscriptionList;
  handlerCopy = handler;
  providerCopy = provider;
  v21.receiver = self;
  v21.super_class = NUArticleActivityManagerFactory;
  v17 = [(NUArticleActivityManagerFactory *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_readingHistory, history);
    objc_storeStrong(&v18->_readingList, list);
    objc_storeStrong(&v18->_subscriptionList, subscriptionList);
    objc_storeStrong(&v18->_URLHandler, handler);
    objc_storeStrong(&v18->_optionsProvider, provider);
  }

  return v18;
}

- (id)activityProviderForHeadline:(id)headline reportConcernViewPresenter:(id)presenter URLModifier:(id)modifier
{
  modifierCopy = modifier;
  presenterCopy = presenter;
  headlineCopy = headline;
  v11 = [NUArticleActivityManager alloc];
  readingHistory = [(NUArticleActivityManagerFactory *)self readingHistory];
  readingList = [(NUArticleActivityManagerFactory *)self readingList];
  subscriptionList = [(NUArticleActivityManagerFactory *)self subscriptionList];
  uRLHandler = [(NUArticleActivityManagerFactory *)self URLHandler];
  optionsProvider = [(NUArticleActivityManagerFactory *)self optionsProvider];
  v17 = [(NUArticleActivityManager *)v11 initWithHeadline:headlineCopy readingHistory:readingHistory readingList:readingList subscriptionList:subscriptionList URLHandler:uRLHandler reportConcernViewPresenter:presenterCopy URLModifier:modifierCopy optionsProvider:optionsProvider];

  return v17;
}

@end