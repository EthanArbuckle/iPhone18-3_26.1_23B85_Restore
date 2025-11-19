@interface NUArticleResourceURLTranslator
- (NUArticleResourceURLTranslator)initWithAppConfigurationManager:(id)a3;
- (id)defaultURLForEndpoint:(int64_t)a3;
- (id)translateFileURLForURL:(id)a3;
- (int64_t)endpointForScheme:(id)a3;
@end

@implementation NUArticleResourceURLTranslator

- (NUArticleResourceURLTranslator)initWithAppConfigurationManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NUArticleResourceURLTranslator;
  v6 = [(NUArticleResourceURLTranslator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appConfigurationManager, a3);
  }

  return v7;
}

- (id)translateFileURLForURL:(id)a3
{
  v4 = a3;
  v5 = [v4 scheme];
  v6 = [(NUArticleResourceURLTranslator *)self endpointForScheme:v5];

  v7 = [(NUArticleResourceURLTranslator *)self appConfigurationManager];
  v8 = [v7 appConfiguration];

  v9 = [v8 endpointConfigsByEnvironment];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:FCDefaultsReadEndpointEnvironment()];
  v11 = [v9 objectForKey:v10];

  if (v6 == 2)
  {
    v12 = [v11 remoteDataSourceBaseURLString];
  }

  else
  {
    if (v6 != 1)
    {
LABEL_6:
      v13 = [(NUArticleResourceURLTranslator *)self defaultURLForEndpoint:v6];
      goto LABEL_7;
    }

    v12 = [v11 staticAssetBaseURLString];
  }

  v13 = v12;
  if (!v12)
  {
    goto LABEL_6;
  }

LABEL_7:
  v14 = [MEMORY[0x277CCACE0] componentsWithString:v13];
  v15 = MEMORY[0x277CCACA8];
  v16 = [v4 host];
  v17 = [v15 stringWithFormat:@"/%@", v16];

  v18 = [v4 path];
  if (v18)
  {
    v19 = v18;
    v20 = [v4 path];
    v21 = [v20 length];

    if (v21)
    {
      v22 = [v4 path];
      v23 = [v17 stringByAppendingString:v22];

      v17 = v23;
    }
  }

  [v14 setPath:v17];
  v24 = [v14 URL];

  return v24;
}

- (int64_t)endpointForScheme:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"news-static-asset"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"news-remote-data"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)defaultURLForEndpoint:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = FCDefaultsReadEndpointEnvironment() - 1;
    if (v3 < 6)
    {
      v4 = off_2799A3E38;
      return v4[v3];
    }
  }

  else if (a3 == 2)
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