@interface MITransportModePredictionManager
- (MITransportModePredictionManager)init;
- (id)transportModeWithOrigin:(id)origin destination:(id)destination features:(id)features userHash4:(id)hash4;
@end

@implementation MITransportModePredictionManager

- (MITransportModePredictionManager)init
{
  v3 = objc_allocWithZone(type metadata accessor for MapsIntelligenceTransportModePredictionManager());
  *(&self->super.isa + OBJC_IVAR___MITransportModePredictionManager__manager) = MapsIntelligenceTransportModePredictionManager.init()();
  v5.receiver = self;
  v5.super_class = type metadata accessor for MITransportModePredictionManagerWrapper();
  return [(MITransportModePredictionManager *)&v5 init];
}

- (id)transportModeWithOrigin:(id)origin destination:(id)destination features:(id)features userHash4:(id)hash4
{
  if (hash4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  featuresCopy = features;
  selfCopy = self;
  v10 = MITransportModePredictionManagerWrapper.transportMode(origin:destination:features:userHash4:)();

  return v10;
}

@end