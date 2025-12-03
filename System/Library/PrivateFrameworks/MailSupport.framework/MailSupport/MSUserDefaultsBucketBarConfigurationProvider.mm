@interface MSUserDefaultsBucketBarConfigurationProvider
- (EFCancelable)token;
- (MSBucketBarConfigurationProviderDelegate)delegate;
- (MSUserDefaultsBucketBarConfigurationProvider)init;
- (MSUserDefaultsBucketBarConfigurationProvider)initWithUserDefaults:(id)defaults delegate:(id)delegate;
- (void)setToken:(id)token;
- (void)storeBucketBarConfiguration:(id)configuration;
- (void)storeBucketSelectionConfiguration:(id)configuration;
@end

@implementation MSUserDefaultsBucketBarConfigurationProvider

- (MSUserDefaultsBucketBarConfigurationProvider)init
{
  em_userDefaults = [objc_opt_self() em_userDefaults];
  if (em_userDefaults)
  {
    v4 = em_userDefaults;
    v5 = [(MSUserDefaultsBucketBarConfigurationProvider *)self initWithUserDefaults:em_userDefaults delegate:0];

    return v5;
  }

  else
  {
    result = sub_257FA97C0();
    __break(1u);
  }

  return result;
}

- (MSUserDefaultsBucketBarConfigurationProvider)initWithUserDefaults:(id)defaults delegate:(id)delegate
{
  defaultsCopy = defaults;
  swift_unknownObjectRetain();
  return MSUserDefaultsBucketBarConfigurationProvider.init(userDefaults:delegate:)(defaultsCopy);
}

- (MSBucketBarConfigurationProviderDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (EFCancelable)token
{
  v2 = *(self + OBJC_IVAR___MSUserDefaultsBucketBarConfigurationProvider_token);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)setToken:(id)token
{
  v3 = *(self + OBJC_IVAR___MSUserDefaultsBucketBarConfigurationProvider_token);
  *(self + OBJC_IVAR___MSUserDefaultsBucketBarConfigurationProvider_token) = token;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)storeBucketBarConfiguration:(id)configuration
{
  sub_257F909B0(0, &qword_280CFF6A0, 0x277CCABB0);
  v4 = sub_257FA9610();
  selfCopy = self;
  MSUserDefaultsBucketBarConfigurationProvider.storeBucketBarConfiguration(_:)(v4);
}

- (void)storeBucketSelectionConfiguration:(id)configuration
{
  sub_257F909B0(0, &qword_280CFF6A0, 0x277CCABB0);
  sub_257FA9610();
  selfCopy = self;
  userDefaults = [(MSUserDefaultsBucketBarConfigurationProvider *)selfCopy userDefaults];
  v6 = sub_257FA9600();
  bucketSelectionConfigurationKey = [(MSUserDefaultsBucketBarConfigurationProvider *)selfCopy bucketSelectionConfigurationKey];
  [(NSUserDefaults *)userDefaults setObject:v6 forKey:bucketSelectionConfigurationKey];
}

@end