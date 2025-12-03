@interface MRDIntelligentRoutingLockScreenRoutingProvider
- (MRDIntelligentRoutingLockScreenRoutingProvider)init;
- (MRDIntelligentRoutingLockScreenRoutingProvider)initWithDelegate:(id)delegate queue:(id)queue routeRecommender:(id)recommender routeRecommendationStore:(id)store;
- (NSArray)nearbyDeviceIdentifiers;
- (void)startObservationIfNeeded;
- (void)update;
@end

@implementation MRDIntelligentRoutingLockScreenRoutingProvider

- (void)update
{
  selfCopy = self;
  sub_100014364();
}

- (NSArray)nearbyDeviceIdentifiers
{
  selfCopy = self;
  sub_100014E30();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (MRDIntelligentRoutingLockScreenRoutingProvider)initWithDelegate:(id)delegate queue:(id)queue routeRecommender:(id)recommender routeRecommendationStore:(id)store
{
  swift_unknownObjectRetain();
  queueCopy = queue;
  swift_unknownObjectRetain();
  return sub_10034B6D4(delegate, queueCopy, recommender, store);
}

- (void)startObservationIfNeeded
{
  selfCopy = self;
  sub_10034B8A8();
}

- (MRDIntelligentRoutingLockScreenRoutingProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end