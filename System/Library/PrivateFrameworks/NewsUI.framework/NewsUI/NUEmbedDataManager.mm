@interface NUEmbedDataManager
- (NUEmbedDataManager)initWithEmbedConfigurationLoader:(id)loader;
- (id)embedForType:(id)type;
- (void)loadEmbedDataWithCompletion:(id)completion;
@end

@implementation NUEmbedDataManager

- (NUEmbedDataManager)initWithEmbedConfigurationLoader:(id)loader
{
  loaderCopy = loader;
  v9.receiver = self;
  v9.super_class = NUEmbedDataManager;
  v6 = [(NUEmbedDataManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_embedConfigurationLoader, loader);
  }

  return v7;
}

- (void)loadEmbedDataWithCompletion:(id)completion
{
  completionCopy = completion;
  embedConfigurationLoader = [(NUEmbedDataManager *)self embedConfigurationLoader];
  v5 = [embedConfigurationLoader loadEmbededConfigurationWithCompletion:completionCopy];
}

- (id)embedForType:(id)type
{
  typeCopy = type;
  embedConfigurationLoader = [(NUEmbedDataManager *)self embedConfigurationLoader];
  embedConfiguration = [embedConfigurationLoader embedConfiguration];
  v7 = [embedConfiguration objectForKey:typeCopy];

  return v7;
}

@end