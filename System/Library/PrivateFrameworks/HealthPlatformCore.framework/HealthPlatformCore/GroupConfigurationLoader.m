@interface GroupConfigurationLoader
- (_TtC18HealthPlatformCore24GroupConfigurationLoader)init;
- (id)elementGroupWithIdentifier:(id)a3;
@end

@implementation GroupConfigurationLoader

- (id)elementGroupWithIdentifier:(id)a3
{
  v3 = [objc_opt_self() topElementGroupWithIdentifier_];

  return v3;
}

- (_TtC18HealthPlatformCore24GroupConfigurationLoader)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GroupConfigurationLoader();
  return [(GroupConfigurationLoader *)&v3 init];
}

@end