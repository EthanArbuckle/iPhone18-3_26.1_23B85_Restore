@interface ProductionProfileExtension
- (_TtC19HealthBalanceDaemon26ProductionProfileExtension)init;
- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)a3;
@end

@implementation ProductionProfileExtension

- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)a3
{
  v4 = *MEMORY[0x277CCC0F0];
  v5 = sub_22892F0C8();
  v7 = v6;
  if (v5 == sub_22892F0C8() && v7 == v8)
  {
    v13 = self;
  }

  else
  {
    v10 = sub_22892F818();
    v11 = self;

    if ((v10 & 1) == 0)
    {
      v12 = 0;
      goto LABEL_9;
    }
  }

  v12 = *(&self->super.isa + OBJC_IVAR____TtC19HealthBalanceDaemon26ProductionProfileExtension_sleepingSampleAnalysisFeatureAvailabilityManager);
LABEL_9:

  return v12;
}

- (_TtC19HealthBalanceDaemon26ProductionProfileExtension)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end