@interface HealthPluginHostService
- (NSString)description;
- (_TtC10healthappd23HealthPluginHostService)init;
- (void)collectFeedItemCacheDiagnosticsWithCompletion:(id)a3;
- (void)commitSharedSummaryTransactionAsUrgent:(BOOL)a3 completion:(id)a4;
- (void)dealloc;
- (void)debuggingInfoRequestedWithNote:(id)a3;
- (void)deleteFeedWithFeedKinds:(id)a3 completion:(id)a4;
- (void)handleJournaledSharingEntries:(id)a3 completion:(id)a4;
- (void)populateFeedWithFeedKinds:(id)a3 for:(id)a4 completion:(id)a5;
- (void)postNotificationWith:(id)a3 userInfo:(id)a4;
- (void)submitTrainingFor:(id)a3 completion:(id)a4;
@end

@implementation HealthPluginHostService

- (void)populateFeedWithFeedKinds:(id)a3 for:(id)a4 completion:(id)a5
{
  v7 = type metadata accessor for DateInterval();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a5);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = self;
  sub_100017B18(v13, v16, sub_10002389C, v14);

  (*(v8 + 8))(v11, v7);
}

- (void)submitTrainingFor:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_100004210(0, &qword_1000423A8, NSData_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = self;
  sub_1000182E8(v6, sub_10002389C, v7);
}

- (void)postNotificationWith:(id)a3 userInfo:(id)a4
{
  if (a4)
  {
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v8 = self;
  sub_100018D14(v7, v6);
}

- (void)collectFeedItemCacheDiagnosticsWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1000191CC(sub_100023804, v5);
}

- (void)deleteFeedWithFeedKinds:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  v7 = self;
  sub_1000229A0(v6, v7, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)commitSharedSummaryTransactionAsUrgent:(BOOL)a3 completion:(id)a4
{
  ObjectType = swift_getObjectType();
  v8 = _Block_copy(a4);
  v9 = swift_allocObject();
  v10 = *(&self->super.isa + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_longRunningProcessOracle);
  *(v9 + 16) = v8;
  v11 = *(v10 + 16);
  v12 = *(&self->super.isa + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_transactionBuilderManager);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = sub_100023898;
  *(v13 + 32) = v9;
  *(v13 + 40) = ObjectType;
  v14 = self;
  v15 = v11;

  dispatch thunk of OpenTransactionBuilderManager.commitTransaction(healthStore:asUrgent:completion:)();
}

- (void)handleJournaledSharingEntries:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  *(swift_allocObject() + 16) = v5;
  v6 = self;
  sub_100022D40(sub_1000237DC);
}

- (void)dealloc
{
  v3 = type metadata accessor for HealthPluginHostService(0);
  v4 = self;
  DebuggingResponder.deregisterForDebuggingRequests()();
  v5.receiver = v4;
  v5.super_class = v3;
  [(HealthPluginHostService *)&v5 dealloc];
}

- (_TtC10healthappd23HealthPluginHostService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  v2 = self;
  sub_10001DB38();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)debuggingInfoRequestedWithNote:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_10001DD44();

  (*(v5 + 8))(v8, v4);
}

@end