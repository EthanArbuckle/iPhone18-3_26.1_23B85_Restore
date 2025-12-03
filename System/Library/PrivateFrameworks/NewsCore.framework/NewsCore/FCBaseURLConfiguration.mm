@interface FCBaseURLConfiguration
+ (BOOL)hasOverrideCAPIURL;
+ (id)CAPIBaseURLForConfiguration:(id)configuration;
+ (id)appAnalyticsSportsEventsBaseURLForConfiguration:(id)configuration;
+ (id)authTokenBaseURLForConfiguration:(id)configuration;
+ (id)ckEdgeCachedMultiFetchBaseURLForConfiguration:(id)configuration;
+ (id)ckEdgeCachedOrderFeedBaseURLForConfiguration:(id)configuration;
+ (id)ckMultiFetchBaseURLForConfiguration:(id)configuration;
+ (id)ckOrderFeedBaseURLForConfiguration:(id)configuration;
+ (id)ckRecordFetchBaseURLForConfiguration:(id)configuration;
+ (id)fairPlayBaseURLForConfiguration:(id)configuration;
+ (id)fineGrainedNewsletterSubscriptionBaseURLForConfiguration:(id)configuration;
+ (id)liveActivityBaseURLForConfiguration:(id)configuration;
+ (id)newsletterBaseURLForConfiguration:(id)configuration;
+ (id)notificationsBaseURLForConfiguration:(id)configuration;
+ (id)overrideCAPIURLString;
+ (id)puzzlesArchiveBaseURLForConfiguration:(id)configuration;
+ (id)searchBaseURLForConfiguration:(id)configuration;
+ (id)smarterFetchBaseURLForConfiguration:(id)configuration;
+ (id)sportsDataVisualizationBaseURLForConfiguration:(id)configuration;
- (FCBaseURLConfiguration)initWithCoreConfiguration:(id)configuration;
- (id)CAPIBaseURL;
- (id)baseURL:(id)l fallback:(void *)fallback;
- (id)baseURLString:(id)string fallback:(void *)fallback;
@end

@implementation FCBaseURLConfiguration

- (id)CAPIBaseURL
{
  v2 = [(FCBaseURLConfiguration *)self baseURLString:&__block_literal_global_130 fallback:FCDefaultClientAPIBaseURLStringForEnvironment];
  v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];

  return v3;
}

+ (id)fairPlayBaseURLForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [[FCBaseURLConfiguration alloc] initWithCoreConfiguration:configurationCopy];

  fairPlayBaseURL = [(FCBaseURLConfiguration *)v4 fairPlayBaseURL];

  return fairPlayBaseURL;
}

+ (id)notificationsBaseURLForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [[FCBaseURLConfiguration alloc] initWithCoreConfiguration:configurationCopy];

  notificationsBaseURL = [(FCBaseURLConfiguration *)v4 notificationsBaseURL];

  return notificationsBaseURL;
}

+ (id)newsletterBaseURLForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [[FCBaseURLConfiguration alloc] initWithCoreConfiguration:configurationCopy];

  newsletterBaseURL = [(FCBaseURLConfiguration *)v4 newsletterBaseURL];

  return newsletterBaseURL;
}

+ (id)CAPIBaseURLForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [[FCBaseURLConfiguration alloc] initWithCoreConfiguration:configurationCopy];

  cAPIBaseURL = [(FCBaseURLConfiguration *)v4 CAPIBaseURL];

  return cAPIBaseURL;
}

+ (id)searchBaseURLForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [[FCBaseURLConfiguration alloc] initWithCoreConfiguration:configurationCopy];

  searchBaseURLForConfiguration = [(FCBaseURLConfiguration *)v4 searchBaseURLForConfiguration];

  return searchBaseURLForConfiguration;
}

+ (id)puzzlesArchiveBaseURLForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [[FCBaseURLConfiguration alloc] initWithCoreConfiguration:configurationCopy];

  puzzlesArchiveBaseURLForConfiguration = [(FCBaseURLConfiguration *)v4 puzzlesArchiveBaseURLForConfiguration];

  return puzzlesArchiveBaseURLForConfiguration;
}

+ (id)authTokenBaseURLForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [[FCBaseURLConfiguration alloc] initWithCoreConfiguration:configurationCopy];

  authTokenBaseURLForConfiguration = [(FCBaseURLConfiguration *)v4 authTokenBaseURLForConfiguration];

  return authTokenBaseURLForConfiguration;
}

+ (id)sportsDataVisualizationBaseURLForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [[FCBaseURLConfiguration alloc] initWithCoreConfiguration:configurationCopy];

  sportsDataVisualizationBaseURLForConfiguration = [(FCBaseURLConfiguration *)v4 sportsDataVisualizationBaseURLForConfiguration];

  return sportsDataVisualizationBaseURLForConfiguration;
}

+ (id)liveActivityBaseURLForConfiguration:(id)configuration
{
  v3 = [self sportsDataVisualizationBaseURLForConfiguration:configuration];
  v4 = [v3 URLByAppendingPathComponent:@"/liveactivity/v1/"];

  return v4;
}

+ (id)appAnalyticsSportsEventsBaseURLForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [[FCBaseURLConfiguration alloc] initWithCoreConfiguration:configurationCopy];

  appAnalyticsSportsEventsBaseURLForConfiguration = [(FCBaseURLConfiguration *)v4 appAnalyticsSportsEventsBaseURLForConfiguration];

  return appAnalyticsSportsEventsBaseURLForConfiguration;
}

+ (id)fineGrainedNewsletterSubscriptionBaseURLForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [[FCBaseURLConfiguration alloc] initWithCoreConfiguration:configurationCopy];

  fineGrainedNewsletterSubscriptionBaseURLForConfiguration = [(FCBaseURLConfiguration *)v4 fineGrainedNewsletterSubscriptionBaseURLForConfiguration];

  return fineGrainedNewsletterSubscriptionBaseURLForConfiguration;
}

+ (id)ckOrderFeedBaseURLForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [[FCBaseURLConfiguration alloc] initWithCoreConfiguration:configurationCopy];

  ckOrderFeedBaseURLForConfiguration = [(FCBaseURLConfiguration *)v4 ckOrderFeedBaseURLForConfiguration];

  return ckOrderFeedBaseURLForConfiguration;
}

+ (id)ckMultiFetchBaseURLForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [[FCBaseURLConfiguration alloc] initWithCoreConfiguration:configurationCopy];

  ckMultiFetchBaseURLForConfiguration = [(FCBaseURLConfiguration *)v4 ckMultiFetchBaseURLForConfiguration];

  return ckMultiFetchBaseURLForConfiguration;
}

+ (id)ckRecordFetchBaseURLForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [[FCBaseURLConfiguration alloc] initWithCoreConfiguration:configurationCopy];

  ckRecordFetchBaseURLForConfiguration = [(FCBaseURLConfiguration *)v4 ckRecordFetchBaseURLForConfiguration];

  return ckRecordFetchBaseURLForConfiguration;
}

+ (id)ckEdgeCachedOrderFeedBaseURLForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [[FCBaseURLConfiguration alloc] initWithCoreConfiguration:configurationCopy];

  ckEdgeCachedOrderFeedBaseURLForConfiguration = [(FCBaseURLConfiguration *)v4 ckEdgeCachedOrderFeedBaseURLForConfiguration];

  return ckEdgeCachedOrderFeedBaseURLForConfiguration;
}

+ (id)ckEdgeCachedMultiFetchBaseURLForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [[FCBaseURLConfiguration alloc] initWithCoreConfiguration:configurationCopy];

  ckEdgeCachedMultiFetchBaseURLForConfiguration = [(FCBaseURLConfiguration *)v4 ckEdgeCachedMultiFetchBaseURLForConfiguration];

  return ckEdgeCachedMultiFetchBaseURLForConfiguration;
}

+ (id)smarterFetchBaseURLForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [[FCBaseURLConfiguration alloc] initWithCoreConfiguration:configurationCopy];

  smarterFetchBaseURLForConfiguration = [(FCBaseURLConfiguration *)v4 smarterFetchBaseURLForConfiguration];

  return smarterFetchBaseURLForConfiguration;
}

- (FCBaseURLConfiguration)initWithCoreConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = FCBaseURLConfiguration;
  v6 = [(FCBaseURLConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coreConfiguration, configuration);
  }

  return v7;
}

- (id)baseURLString:(id)string fallback:(void *)fallback
{
  stringCopy = string;
  EndpointEnvironment = FCDefaultsReadEndpointEnvironment();
  coreConfiguration = [(FCBaseURLConfiguration *)self coreConfiguration];
  endpointConfigsByEnvironment = [coreConfiguration endpointConfigsByEnvironment];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:EndpointEnvironment];
  v11 = [endpointConfigsByEnvironment objectForKey:v10];

  v12 = stringCopy[2](stringCopy, v11);

  if (!v12)
  {
    v12 = (fallback)(EndpointEnvironment);
  }

  return v12;
}

- (id)baseURL:(id)l fallback:(void *)fallback
{
  v4 = [(FCBaseURLConfiguration *)self baseURLString:l fallback:fallback];
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