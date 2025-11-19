@interface NUMediaSharingPolicyProvider
- (NUMediaSharingPolicyProvider)initWithHeadline:(id)a3 appConfigurationManager:(id)a4;
- (unint64_t)mediaSharingPolicy;
@end

@implementation NUMediaSharingPolicyProvider

- (NUMediaSharingPolicyProvider)initWithHeadline:(id)a3 appConfigurationManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NUMediaSharingPolicyProvider;
  v9 = [(NUMediaSharingPolicyProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_headline, a3);
    objc_storeStrong(&v10->_appConfigurationManager, a4);
  }

  return v10;
}

- (unint64_t)mediaSharingPolicy
{
  v3 = [(NUMediaSharingPolicyProvider *)self headline];
  v4 = [v3 sourceChannelID];

  v5 = [(NUMediaSharingPolicyProvider *)self appConfigurationManager];
  v6 = [v5 appConfiguration];
  v7 = [v6 mediaSharingBlacklistedChannelIDs];
  v8 = [v7 containsObject:v4];

  return v8;
}

@end