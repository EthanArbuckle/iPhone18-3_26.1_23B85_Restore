@interface NUEmbedDataManager
- (NUEmbedDataManager)initWithEmbedConfigurationLoader:(id)a3;
- (id)embedForType:(id)a3;
- (void)loadEmbedDataWithCompletion:(id)a3;
@end

@implementation NUEmbedDataManager

- (NUEmbedDataManager)initWithEmbedConfigurationLoader:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NUEmbedDataManager;
  v6 = [(NUEmbedDataManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_embedConfigurationLoader, a3);
  }

  return v7;
}

- (void)loadEmbedDataWithCompletion:(id)a3
{
  v6 = a3;
  v4 = [(NUEmbedDataManager *)self embedConfigurationLoader];
  v5 = [v4 loadEmbededConfigurationWithCompletion:v6];
}

- (id)embedForType:(id)a3
{
  v4 = a3;
  v5 = [(NUEmbedDataManager *)self embedConfigurationLoader];
  v6 = [v5 embedConfiguration];
  v7 = [v6 objectForKey:v4];

  return v7;
}

@end