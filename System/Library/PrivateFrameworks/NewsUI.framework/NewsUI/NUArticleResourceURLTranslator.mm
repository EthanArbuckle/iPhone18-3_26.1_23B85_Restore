@interface NUArticleResourceURLTranslator
- (NUArticleResourceURLTranslator)initWithAppConfigurationManager:(id)manager;
- (id)defaultURLForEndpoint:(int64_t)endpoint;
- (id)translateFileURLForURL:(id)l;
- (int64_t)endpointForScheme:(id)scheme;
@end

@implementation NUArticleResourceURLTranslator

- (NUArticleResourceURLTranslator)initWithAppConfigurationManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = NUArticleResourceURLTranslator;
  v6 = [(NUArticleResourceURLTranslator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appConfigurationManager, manager);
  }

  return v7;
}

- (id)translateFileURLForURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  v6 = [(NUArticleResourceURLTranslator *)self endpointForScheme:scheme];

  appConfigurationManager = [(NUArticleResourceURLTranslator *)self appConfigurationManager];
  appConfiguration = [appConfigurationManager appConfiguration];

  endpointConfigsByEnvironment = [appConfiguration endpointConfigsByEnvironment];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:FCDefaultsReadEndpointEnvironment()];
  v11 = [endpointConfigsByEnvironment objectForKey:v10];

  if (v6 == 2)
  {
    remoteDataSourceBaseURLString = [v11 remoteDataSourceBaseURLString];
  }

  else
  {
    if (v6 != 1)
    {
LABEL_6:
      v13 = [(NUArticleResourceURLTranslator *)self defaultURLForEndpoint:v6];
      goto LABEL_7;
    }

    remoteDataSourceBaseURLString = [v11 staticAssetBaseURLString];
  }

  v13 = remoteDataSourceBaseURLString;
  if (!remoteDataSourceBaseURLString)
  {
    goto LABEL_6;
  }

LABEL_7:
  v14 = [MEMORY[0x277CCACE0] componentsWithString:v13];
  v15 = MEMORY[0x277CCACA8];
  host = [lCopy host];
  v17 = [v15 stringWithFormat:@"/%@", host];

  path = [lCopy path];
  if (path)
  {
    v19 = path;
    path2 = [lCopy path];
    v21 = [path2 length];

    if (v21)
    {
      path3 = [lCopy path];
      v23 = [v17 stringByAppendingString:path3];

      v17 = v23;
    }
  }

  [v14 setPath:v17];
  v24 = [v14 URL];

  return v24;
}

- (int64_t)endpointForScheme:(id)scheme
{
  schemeCopy = scheme;
  if ([schemeCopy isEqualToString:@"news-static-asset"])
  {
    v4 = 1;
  }

  else if ([schemeCopy isEqualToString:@"news-remote-data"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)defaultURLForEndpoint:(int64_t)endpoint
{
  if (endpoint == 1)
  {
    v3 = FCDefaultsReadEndpointEnvironment() - 1;
    if (v3 < 6)
    {
      v4 = off_2799A3E38;
      return v4[v3];
    }
  }

  else if (endpoint == 2)
  {
    v3 = FCDefaultsReadEndpointEnvironment() - 1;
    if (v3 < 6)
    {
      v4 = off_2799A3E08;
      return v4[v3];
    }
  }

  return 0;
}

@end