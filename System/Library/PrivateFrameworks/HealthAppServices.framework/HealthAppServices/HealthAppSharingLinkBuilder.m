@interface HealthAppSharingLinkBuilder
- (id)URLForSharingOverview;
@end

@implementation HealthAppSharingLinkBuilder

- (id)URLForSharingOverview
{
  v3 = objc_alloc_init(MEMORY[0x277CCACE0]);
  v4 = +[HAServicesDefines internalHealthAppURLScheme];
  [v3 setScheme:v4];

  v5 = +[HAServicesDefines sharingOverviewHostName];
  [v3 setHost:v5];

  v6 = [(HealthAppLinkBuilder *)self profileIdentifier];
  v7 = [v6 type];

  if (v7 == 2)
  {
    v9 = [v3 URL];
    v10 = [(HealthAppLinkBuilder *)self profileIdentifier];
    v8 = [v9 _hk_appendProfileIdentifier:v10];
  }

  else if (v7 == 1)
  {
    v8 = [v3 URL];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end