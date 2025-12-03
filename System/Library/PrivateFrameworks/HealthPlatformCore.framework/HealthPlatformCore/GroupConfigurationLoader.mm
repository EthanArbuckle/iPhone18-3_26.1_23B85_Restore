@interface GroupConfigurationLoader
- (_TtC18HealthPlatformCore24GroupConfigurationLoader)init;
- (id)elementGroupWithIdentifier:(id)identifier;
@end

@implementation GroupConfigurationLoader

- (id)elementGroupWithIdentifier:(id)identifier
{
  topElementGroupWithIdentifier_ = [objc_opt_self() topElementGroupWithIdentifier_];

  return topElementGroupWithIdentifier_;
}

- (_TtC18HealthPlatformCore24GroupConfigurationLoader)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GroupConfigurationLoader();
  return [(GroupConfigurationLoader *)&v3 init];
}

@end