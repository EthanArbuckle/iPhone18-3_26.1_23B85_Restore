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

  profileIdentifier = [(HealthAppLinkBuilder *)self profileIdentifier];
  type = [profileIdentifier type];

  if (type == 2)
  {
    v9 = [v3 URL];
    profileIdentifier2 = [(HealthAppLinkBuilder *)self profileIdentifier];
    v8 = [v9 _hk_appendProfileIdentifier:profileIdentifier2];
  }

  else if (type == 1)
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