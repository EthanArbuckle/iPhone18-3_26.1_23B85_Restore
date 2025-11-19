@interface FCBaseURLConfiguration
+ (BOOL)hasOverrideCAPIURL;
+ (id)CAPIBaseURLForConfiguration:(id)a3;
+ (id)appAnalyticsSportsEventsBaseURLForConfiguration:(id)a3;
+ (id)authTokenBaseURLForConfiguration:(id)a3;
+ (id)ckEdgeCachedMultiFetchBaseURLForConfiguration:(id)a3;
+ (id)ckEdgeCachedOrderFeedBaseURLForConfiguration:(id)a3;
+ (id)ckMultiFetchBaseURLForConfiguration:(id)a3;
+ (id)ckOrderFeedBaseURLForConfiguration:(id)a3;
+ (id)ckRecordFetchBaseURLForConfiguration:(id)a3;
+ (id)fairPlayBaseURLForConfiguration:(id)a3;
+ (id)fineGrainedNewsletterSubscriptionBaseURLForConfiguration:(id)a3;
+ (id)liveActivityBaseURLForConfiguration:(id)a3;
+ (id)newsletterBaseURLForConfiguration:(id)a3;
+ (id)notificationsBaseURLForConfiguration:(id)a3;
+ (id)overrideCAPIURLString;
+ (id)puzzlesArchiveBaseURLForConfiguration:(id)a3;
+ (id)searchBaseURLForConfiguration:(id)a3;
+ (id)smarterFetchBaseURLForConfiguration:(id)a3;
+ (id)sportsDataVisualizationBaseURLForConfiguration:(id)a3;
- (FCBaseURLConfiguration)initWithCoreConfiguration:(id)a3;
- (id)CAPIBaseURL;
- (id)baseURL:(id)a3 fallback:(void *)a4;
- (id)baseURLString:(id)a3 fallback:(void *)a4;
@end

@implementation FCBaseURLConfiguration

- (id)CAPIBaseURL
{
  v2 = [(FCBaseURLConfiguration *)self baseURLString:&__block_literal_global_130 fallback:FCDefaultClientAPIBaseURLStringForEnvironment];
  v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];

  return v3;
}

+ (id)fairPlayBaseURLForConfiguration:(id)a3
{
  v3 = a3;
  v4 = [[FCBaseURLConfiguration alloc] initWithCoreConfiguration:v3];

  v5 = [(FCBaseURLConfiguration *)v4 fairPlayBaseURL];

  return v5;
}

+ (id)notificationsBaseURLForConfiguration:(id)a3
{
  v3 = a3;
  v4 = [[FCBaseURLConfiguration alloc] initWithCoreConfiguration:v3];

  v5 = [(FCBaseURLConfiguration *)v4 notificationsBaseURL];

  return v5;
}

+ (id)newsletterBaseURLForConfiguration:(id)a3
{
  v3 = a3;
  v4 = [[FCBaseURLConfiguration alloc] initWithCoreConfiguration:v3];

  v5 = [(FCBaseURLConfiguration *)v4 newsletterBaseURL];

  return v5;
}

+ (id)CAPIBaseURLForConfiguration:(id)a3
{
  v3 = a3;
  v4 = [[FCBaseURLConfiguration alloc] initWithCoreConfiguration:v3];

  v5 = [(FCBaseURLConfiguration *)v4 CAPIBaseURL];

  return v5;
}

+ (id)searchBaseURLForConfiguration:(id)a3
{
  v3 = a3;
  v4 = [[FCBaseURLConfiguration alloc] initWithCoreConfiguration:v3];

  v5 = [(FCBaseURLConfiguration *)v4 searchBaseURLForConfiguration];

  return v5;
}

+ (id)puzzlesArchiveBaseURLForConfiguration:(id)a3
{
  v3 = a3;
  v4 = [[FCBaseURLConfiguration alloc] initWithCoreConfiguration:v3];

  v5 = [(FCBaseURLConfiguration *)v4 puzzlesArchiveBaseURLForConfiguration];

  return v5;
}

+ (id)authTokenBaseURLForConfiguration:(id)a3
{
  v3 = a3;
  v4 = [[FCBaseURLConfiguration alloc] initWithCoreConfiguration:v3];

  v5 = [(FCBaseURLConfiguration *)v4 authTokenBaseURLForConfiguration];

  return v5;
}

+ (id)sportsDataVisualizationBaseURLForConfiguration:(id)a3
{
  v3 = a3;
  v4 = [[FCBaseURLConfiguration alloc] initWithCoreConfiguration:v3];

  v5 = [(FCBaseURLConfiguration *)v4 sportsDataVisualizationBaseURLForConfiguration];

  return v5;
}

+ (id)liveActivityBaseURLForConfiguration:(id)a3
{
  v3 = [a1 sportsDataVisualizationBaseURLForConfiguration:a3];
  v4 = [v3 URLByAppendingPathComponent:@"/liveactivity/v1/"];

  return v4;
}

+ (id)appAnalyticsSportsEventsBaseURLForConfiguration:(id)a3
{
  v3 = a3;
  v4 = [[FCBaseURLConfiguration alloc] initWithCoreConfiguration:v3];

  v5 = [(FCBaseURLConfiguration *)v4 appAnalyticsSportsEventsBaseURLForConfiguration];

  return v5;
}

+ (id)fineGrainedNewsletterSubscriptionBaseURLForConfiguration:(id)a3
{
  v3 = a3;
  v4 = [[FCBaseURLConfiguration alloc] initWithCoreConfiguration:v3];

  v5 = [(FCBaseURLConfiguration *)v4 fineGrainedNewsletterSubscriptionBaseURLForConfiguration];

  return v5;
}

+ (id)ckOrderFeedBaseURLForConfiguration:(id)a3
{
  v3 = a3;
  v4 = [[FCBaseURLConfiguration alloc] initWithCoreConfiguration:v3];

  v5 = [(FCBaseURLConfiguration *)v4 ckOrderFeedBaseURLForConfiguration];

  return v5;
}

+ (id)ckMultiFetchBaseURLForConfiguration:(id)a3
{
  v3 = a3;
  v4 = [[FCBaseURLConfiguration alloc] initWithCoreConfiguration:v3];

  v5 = [(FCBaseURLConfiguration *)v4 ckMultiFetchBaseURLForConfiguration];

  return v5;
}

+ (id)ckRecordFetchBaseURLForConfiguration:(id)a3
{
  v3 = a3;
  v4 = [[FCBaseURLConfiguration alloc] initWithCoreConfiguration:v3];

  v5 = [(FCBaseURLConfiguration *)v4 ckRecordFetchBaseURLForConfiguration];

  return v5;
}

+ (id)ckEdgeCachedOrderFeedBaseURLForConfiguration:(id)a3
{
  v3 = a3;
  v4 = [[FCBaseURLConfiguration alloc] initWithCoreConfiguration:v3];

  v5 = [(FCBaseURLConfiguration *)v4 ckEdgeCachedOrderFeedBaseURLForConfiguration];

  return v5;
}

+ (id)ckEdgeCachedMultiFetchBaseURLForConfiguration:(id)a3
{
  v3 = a3;
  v4 = [[FCBaseURLConfiguration alloc] initWithCoreConfiguration:v3];

  v5 = [(FCBaseURLConfiguration *)v4 ckEdgeCachedMultiFetchBaseURLForConfiguration];

  return v5;
}

+ (id)smarterFetchBaseURLForConfiguration:(id)a3
{
  v3 = a3;
  v4 = [[FCBaseURLConfiguration alloc] initWithCoreConfiguration:v3];

  v5 = [(FCBaseURLConfiguration *)v4 smarterFetchBaseURLForConfiguration];

  return v5;
}

- (FCBaseURLConfiguration)initWithCoreConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FCBaseURLConfiguration;
  v6 = [(FCBaseURLConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coreConfiguration, a3);
  }

  return v7;
}

- (id)baseURLString:(id)a3 fallback:(void *)a4
{
  v6 = a3;
  EndpointEnvironment = FCDefaultsReadEndpointEnvironment();
  v8 = [(FCBaseURLConfiguration *)self coreConfiguration];
  v9 = [v8 endpointConfigsByEnvironment];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:EndpointEnvironment];
  v11 = [v9 objectForKey:v10];

  v12 = v6[2](v6, v11);

  if (!v12)
  {
    v12 = (a4)(EndpointEnvironment);
  }

  return v12;
}

- (id)baseURL:(id)a3 fallback:(void *)a4
{
  v4 = [(FCBaseURLConfiguration *)self baseURLString:a3 fallback:a4];
  v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];

  return v5;
}

+ (BOOL)hasOverrideCAPIURL
{
  v2 = +[FCBaseURLConfiguration overrideCAPIURLString];
  v3 = [v2 length] != 0;

  return v3;
}

+ (id)overrideCAPIURLString
{
  v2 = NewsCoreUserDefaults();
  v3 = [v2 stringForKey:@"capi_base_url"];

  return v3;
}

@end