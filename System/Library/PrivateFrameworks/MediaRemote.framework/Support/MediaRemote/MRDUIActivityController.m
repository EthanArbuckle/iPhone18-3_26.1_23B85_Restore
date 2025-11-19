@interface MRDUIActivityController
- (MRDUIActivityController)init;
- (MRDUIActivityControllerDelegate)delegate;
- (NSDictionary)currentActivitiesInfo;
- (NSString)nowPlayingActivityIdentifier;
- (id)contextForActivityIdentifier:(id)a3;
- (id)startRouteRecommendationActivityFor:(id)a3 relevanceScore:(double)a4;
- (void)clearActivities;
- (void)endRouteRecommendationActivityFor:(id)a3;
- (void)setRouteRecommendationRelevanceScore:(double)a3 activityIdentifier:(id)a4;
- (void)startGroupSessionNearbyActivity:(id)a3;
- (void)startMirroringActivity;
- (void)startNowPlayingActivityWithPreferredState:(int64_t)a3 suppressedBundleIdentifiers:(id)a4;
- (void)updateNowPlayingActivityState:(int64_t)a3 suppressedBundleIdentifiers:(id)a4;
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

- (void)startNowPlayingActivityWithPreferredState:(int64_t)a3 suppressedBundleIdentifiers:(id)a4
{
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = self;
  ActivityController.startNowPlayingActivity(preferredState:suppressedBundleIdentifiers:)(a3, v6);
}

- (void)updateNowPlayingActivityState:(int64_t)a3 suppressedBundleIdentifiers:(id)a4
{
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = self;
  _s12mediaremoted18ActivityControllerC016updateNowPlayingB5State_27suppressedBundleIdentifiersySo05MRNowfB7UIStateV_SaySSGtF_0(a3, v6);
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

- (id)startRouteRecommendationActivityFor:(id)a3 relevanceScore:(double)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  object = ActivityController.startRouteRecommendationActivity(for:relevanceScore:)(v10, a4).value._object;

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

- (void)setRouteRecommendationRelevanceScore:(double)a3 activityIdentifier:(id)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (qword_100536470 != -1)
  {
    swift_once();
  }

  sub_100388968(2u, v5, v7, a3);
}

- (void)endRouteRecommendationActivityFor:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (qword_100536470 != -1)
  {
    swift_once();
  }

  sub_1003871AC(2, v3, v5);
}

- (void)startGroupSessionNearbyActivity:(id)a3
{
  v4 = a3;
  v5 = self;
  ActivityController.startGroupSessionNearbyActivity(_:)(v4);
}

- (void)clearActivities
{
  if (qword_100536470 != -1)
  {
    swift_once();
  }

  sub_100384DBC();
}

- (id)contextForActivityIdentifier:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
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