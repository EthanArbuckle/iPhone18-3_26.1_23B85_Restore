@interface NDOCompositionLayer
+ (_TtC8ndoagent18NDOUIActionHandler)uiActionHandler;
+ (id)makePushHandler;
+ (id)makeWarrantyPropertiesLoaderFor:(unint64_t)a3;
+ (void)getLocalDeviceListWithCompletion:(id)a3;
+ (void)getLocalDeviceWarrantyFor:(id)a3 completion:(id)a4;
+ (void)getRemoteDeviceListWithCompletion:(id)a3;
+ (void)getRemoteDeviceWarrantyFor:(id)a3 with:(id)a4 completion:(id)a5;
+ (void)registerBackgroundCheckInTasksWith:(id)a3;
+ (void)setUiActionHandler:(id)a3;
- (_TtC8ndoagent19NDOCompositionLayer)init;
@end

@implementation NDOCompositionLayer

+ (void)getLocalDeviceListWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_10004E4F4(ObjCClassMetadata, v3);

  _Block_release(v3);
}

+ (void)getRemoteDeviceListWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v6 = sub_10005EA4C();
  swift_beginAccess();
  sub_100001E10(v6, v8);
  sub_100001F3C(v8, v8[3]);
  v7 = swift_allocObject();
  v7[2] = sub_10004F6F4;
  v7[3] = v4;
  v7[4] = ObjCClassMetadata;

  dispatch thunk of NDOLoader.load(with:)();

  sub_100001E74(v8);
}

+ (void)getLocalDeviceWarrantyFor:(id)a3 completion:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v4);
  sub_10004E91C(v5, v7, ObjCClassMetadata, v4);
  _Block_release(v4);
  _Block_release(v4);
}

+ (void)getRemoteDeviceWarrantyFor:(id)a3 with:(id)a4 completion:(id)a5
{
  v5 = _Block_copy(a5);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  swift_getObjCClassMetadata();
  sub_10004D368(v6, v8, v9, sub_10004E348, v10);
}

+ (_TtC8ndoagent18NDOUIActionHandler)uiActionHandler
{
  if (qword_1000B04A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return qword_1000B1FA0;
}

+ (void)setUiActionHandler:(id)a3
{
  v3 = qword_1000B04A8;
  v4 = a3;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_1000B1FA0;
  qword_1000B1FA0 = v4;
}

+ (void)registerBackgroundCheckInTasksWith:(id)a3
{
  v4 = qword_1000B04B8;
  swift_unknownObjectRetain();
  if (v4 != -1)
  {
    swift_once();
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  swift_beginAccess();
  v6 = qword_1000B1FD0;
  v7 = swift_allocObject();
  *(v7 + 16) = ObjCClassMetadata;
  *(v7 + 24) = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = ObjCClassMetadata;
  *(v8 + 24) = a3;
  v9 = *((swift_isaMask & *v6) + 0x78);
  swift_unknownObjectRetain_n();
  v10 = v6;
  v9(sub_1000633FC, v7, sub_100063400, v8);

  swift_unknownObjectRelease();
}

+ (id)makePushHandler
{
  swift_getObjCClassMetadata();
  v2 = static NDOCompositionLayer.makePushHandler()();

  return v2;
}

- (_TtC8ndoagent19NDOCompositionLayer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NDOCompositionLayer();
  return [(NDOCompositionLayer *)&v3 init];
}

+ (id)makeWarrantyPropertiesLoaderFor:(unint64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_10006F3FC(a3);

  return v4;
}

@end