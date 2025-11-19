@interface MITransportModePredictionManager
- (MITransportModePredictionManager)init;
- (id)transportModeWithOrigin:(id)a3 destination:(id)a4 features:(id)a5 userHash4:(id)a6;
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

- (id)transportModeWithOrigin:(id)a3 destination:(id)a4 features:(id)a5 userHash4:(id)a6
{
  if (a6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a5;
  v9 = self;
  v10 = MITransportModePredictionManagerWrapper.transportMode(origin:destination:features:userHash4:)();

  return v10;
}

@end