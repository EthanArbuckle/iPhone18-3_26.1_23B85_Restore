@interface MSUserDefaultsBucketBarConfigurationProvider
- (EFCancelable)token;
- (MSBucketBarConfigurationProviderDelegate)delegate;
- (MSUserDefaultsBucketBarConfigurationProvider)init;
- (MSUserDefaultsBucketBarConfigurationProvider)initWithUserDefaults:(id)a3 delegate:(id)a4;
- (void)setToken:(id)a3;
- (void)storeBucketBarConfiguration:(id)a3;
- (void)storeBucketSelectionConfiguration:(id)a3;
@end

@implementation MSUserDefaultsBucketBarConfigurationProvider

- (MSUserDefaultsBucketBarConfigurationProvider)init
{
  v3 = [objc_opt_self() em_userDefaults];
  if (v3)
  {
    v4 = v3;
    v5 = [(MSUserDefaultsBucketBarConfigurationProvider *)self initWithUserDefaults:v3 delegate:0];

    return v5;
  }

  else
  {
    result = sub_257FA97C0();
    __break(1u);
  }

  return result;
}

- (MSUserDefaultsBucketBarConfigurationProvider)initWithUserDefaults:(id)a3 delegate:(id)a4
{
  v4 = a3;
  swift_unknownObjectRetain();
  return MSUserDefaultsBucketBarConfigurationProvider.init(userDefaults:delegate:)(v4);
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

- (void)setToken:(id)a3
{
  v3 = *(self + OBJC_IVAR___MSUserDefaultsBucketBarConfigurationProvider_token);
  *(self + OBJC_IVAR___MSUserDefaultsBucketBarConfigurationProvider_token) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)storeBucketBarConfiguration:(id)a3
{
  sub_257F909B0(0, &qword_280CFF6A0, 0x277CCABB0);
  v4 = sub_257FA9610();
  v5 = self;
  MSUserDefaultsBucketBarConfigurationProvider.storeBucketBarConfiguration(_:)(v4);
}

- (void)storeBucketSelectionConfiguration:(id)a3
{
  sub_257F909B0(0, &qword_280CFF6A0, 0x277CCABB0);
  sub_257FA9610();
  v4 = self;
  v5 = [(MSUserDefaultsBucketBarConfigurationProvider *)v4 userDefaults];
  v6 = sub_257FA9600();
  v7 = [(MSUserDefaultsBucketBarConfigurationProvider *)v4 bucketSelectionConfigurationKey];
  [(NSUserDefaults *)v5 setObject:v6 forKey:v7];
}

@end