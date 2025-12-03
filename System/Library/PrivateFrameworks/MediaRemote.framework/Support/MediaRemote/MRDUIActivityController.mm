@interface MRDUIActivityController
- (MRDUIActivityController)init;
- (MRDUIActivityControllerDelegate)delegate;
- (NSDictionary)currentActivitiesInfo;
- (NSString)nowPlayingActivityIdentifier;
- (id)contextForActivityIdentifier:(id)identifier;
- (id)startRouteRecommendationActivityFor:(id)for relevanceScore:(double)score;
- (void)clearActivities;
- (void)endRouteRecommendationActivityFor:(id)for;
- (void)setRouteRecommendationRelevanceScore:(double)score activityIdentifier:(id)identifier;
- (void)startGroupSessionNearbyActivity:(id)activity;
- (void)startMirroringActivity;
- (void)startNowPlayingActivityWithPreferredState:(int64_t)state suppressedBundleIdentifiers:(id)identifiers;
- (void)updateNowPlayingActivityState:(int64_t)state suppressedBundleIdentifiers:(id)identifiers;
@end

@implementation MRDUIActivityController

- (MRDUIActivityControllerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSDictionary)currentActivitiesInfo
{
  if (qword_100536470 != -1)
  {
    swift_once();
  }

  sub_100384948();
  sub_1001BC5A8(&qword_1005229B0, &unk_100450110);
  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)startNowPlayingActivityWithPreferredState:(int64_t)state suppressedBundleIdentifiers:(id)identifiers
{
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  ActivityController.startNowPlayingActivity(preferredState:suppressedBundleIdentifiers:)(state, v6);
}

- (void)updateNowPlayingActivityState:(int64_t)state suppressedBundleIdentifiers:(id)identifiers
{
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  _s12mediaremoted18ActivityControllerC016updateNowPlayingB5State_27suppressedBundleIdentifiersySo05MRNowfB7UIStateV_SaySSGtF_0(state, v6);
}

- (NSString)nowPlayingActivityIdentifier
{
  if (qword_100536470 != -1)
  {
    swift_once();
  }

  v2 = sub_10038916C(0);
  if (*(v2 + 2))
  {
    v3 = *(v2 + 4);
    v4 = *(v2 + 5);

    v5 = String._bridgeToObjectiveC()();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)startMirroringActivity
{
  if (qword_100536470 != -1)
  {
    swift_once();
  }

  v2 = sub_10021F050(_swiftEmptyArrayStorage);
  sub_100384FCC(1, v2);
}

- (id)startRouteRecommendationActivityFor:(id)for relevanceScore:(double)score
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  selfCopy = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  object = ActivityController.startRouteRecommendationActivity(for:relevanceScore:)(v10, score).value._object;

  if (object)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)setRouteRecommendationRelevanceScore:(double)score activityIdentifier:(id)identifier
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (qword_100536470 != -1)
  {
    swift_once();
  }

  sub_100388968(2u, v5, v7, score);
}

- (void)endRouteRecommendationActivityFor:(id)for
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (qword_100536470 != -1)
  {
    swift_once();
  }

  sub_1003871AC(2, v3, v5);
}

- (void)startGroupSessionNearbyActivity:(id)activity
{
  activityCopy = activity;
  selfCopy = self;
  ActivityController.startGroupSessionNearbyActivity(_:)(activityCopy);
}

- (void)clearActivities
{
  if (qword_100536470 != -1)
  {
    swift_once();
  }

  sub_100384DBC();
}

- (id)contextForActivityIdentifier:(id)identifier
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8 = _s12mediaremoted18ActivityControllerC010contextForB10IdentifierySo11MRUIContextaSSF_0(v4, v6);

  return v8;
}

- (MRDUIActivityController)init
{
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for ActivityController();
  return [(MRDUIActivityController *)&v4 init];
}

@end