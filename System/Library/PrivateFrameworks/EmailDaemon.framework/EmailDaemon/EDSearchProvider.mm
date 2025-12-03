@interface EDSearchProvider
- (EDSearchProvider)initWithLocalSearchProvider:(id)provider remoteSearchProvider:(id)searchProvider;
@end

@implementation EDSearchProvider

- (EDSearchProvider)initWithLocalSearchProvider:(id)provider remoteSearchProvider:(id)searchProvider
{
  providerCopy = provider;
  searchProviderCopy = searchProvider;
  v12.receiver = self;
  v12.super_class = EDSearchProvider;
  v9 = [(EDSearchProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_localSearchProvider, provider);
    objc_storeStrong(&v10->_remoteSearchProvider, searchProvider);
  }

  return v10;
}

@end