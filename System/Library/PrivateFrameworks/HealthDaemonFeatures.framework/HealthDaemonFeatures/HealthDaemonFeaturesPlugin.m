@interface HealthDaemonFeaturesPlugin
- (NSString)pluginIdentifier;
- (_TtC20HealthDaemonFeatures26HealthDaemonFeaturesPlugin)init;
- (id)extensionForProfile:(id)a3;
@end

@implementation HealthDaemonFeaturesPlugin

- (NSString)pluginIdentifier
{
  v2 = sub_251567F20();

  return v2;
}

- (id)extensionForProfile:(id)a3
{
  v3 = a3;
  if ([v3 profileType] == 1)
  {
    v4 = objc_allocWithZone(type metadata accessor for HealthDaemonFeaturesProfileExtension());
    v5 = sub_25156189C(v3);
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (_TtC20HealthDaemonFeatures26HealthDaemonFeaturesPlugin)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HealthDaemonFeaturesPlugin();
  return [(HealthDaemonFeaturesPlugin *)&v3 init];
}

@end