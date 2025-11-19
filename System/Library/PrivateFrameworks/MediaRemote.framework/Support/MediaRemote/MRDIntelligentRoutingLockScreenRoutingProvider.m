@interface MRDIntelligentRoutingLockScreenRoutingProvider
- (MRDIntelligentRoutingLockScreenRoutingProvider)init;
- (MRDIntelligentRoutingLockScreenRoutingProvider)initWithDelegate:(id)a3 queue:(id)a4 routeRecommender:(id)a5 routeRecommendationStore:(id)a6;
- (NSArray)nearbyDeviceIdentifiers;
- (void)startObservationIfNeeded;
- (void)update;
@end

@implementation MRDIntelligentRoutingLockScreenRoutingProvider

- (void)update
{
  v2 = self;
  sub_100014364();
}

- (NSArray)nearbyDeviceIdentifiers
{
  v2 = self;
  sub_100014E30();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (MRDIntelligentRoutingLockScreenRoutingProvider)initWithDelegate:(id)a3 queue:(id)a4 routeRecommender:(id)a5 routeRecommendationStore:(id)a6
{
  swift_unknownObjectRetain();
  v10 = a4;
  swift_unknownObjectRetain();
  return sub_10034B6D4(a3, v10, a5, a6);
}

- (void)startObservationIfNeeded
{
  v2 = self;
  sub_10034B8A8();
}

- (MRDIntelligentRoutingLockScreenRoutingProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end