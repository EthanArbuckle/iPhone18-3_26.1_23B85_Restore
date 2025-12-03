@interface NUMediaSharingPolicyProvider
- (NUMediaSharingPolicyProvider)initWithHeadline:(id)headline appConfigurationManager:(id)manager;
- (unint64_t)mediaSharingPolicy;
@end

@implementation NUMediaSharingPolicyProvider

- (NUMediaSharingPolicyProvider)initWithHeadline:(id)headline appConfigurationManager:(id)manager
{
  headlineCopy = headline;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = NUMediaSharingPolicyProvider;
  v9 = [(NUMediaSharingPolicyProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_headline, headline);
    objc_storeStrong(&v10->_appConfigurationManager, manager);
  }

  return v10;
}

- (unint64_t)mediaSharingPolicy
{
  headline = [(NUMediaSharingPolicyProvider *)self headline];
  sourceChannelID = [headline sourceChannelID];

  appConfigurationManager = [(NUMediaSharingPolicyProvider *)self appConfigurationManager];
  appConfiguration = [appConfigurationManager appConfiguration];
  mediaSharingBlacklistedChannelIDs = [appConfiguration mediaSharingBlacklistedChannelIDs];
  v8 = [mediaSharingBlacklistedChannelIDs containsObject:sourceChannelID];

  return v8;
}

@end