@interface NDODeviceServicesComposition
+ (id)makeAirPodsDataCollectionHandler;
+ (void)isAccCheckInDisabledWithCompletionHandler:(id)a3;
+ (void)loadWithRequest:(id)a3 completion:(id)a4;
- (_TtC8ndoagent28NDODeviceServicesComposition)init;
@end

@implementation NDODeviceServicesComposition

+ (id)makeAirPodsDataCollectionHandler
{
  v2 = [objc_allocWithZone(NDOAirPodsDataCollectionHandler) init];

  return v2;
}

+ (void)loadWithRequest:(id)a3 completion:(id)a4
{
  v5 = type metadata accessor for URLRequest();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(a4);
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = sub_10005C67C();
  swift_beginAccess();
  sub_100001E10(v12, v14);
  sub_100001F3C(v14, v14[3]);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_10004967C;
  *(v13 + 24) = v11;

  dispatch thunk of NDOURLClient.load(request:with:)();

  (*(v6 + 8))(v9, v5);
  sub_100001E74(v14);
}

+ (void)isAccCheckInDisabledWithCompletionHandler:(id)a3
{
  v5 = sub_10001A078(&qword_1000A7920, &qword_10007AE70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10007F010;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10007F020;
  v13[5] = v12;
  sub_10001C3D0(0, 0, v8, &unk_10007F030, v13);
}

- (_TtC8ndoagent28NDODeviceServicesComposition)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NDODeviceServicesComposition();
  return [(NDODeviceServicesComposition *)&v3 init];
}

@end