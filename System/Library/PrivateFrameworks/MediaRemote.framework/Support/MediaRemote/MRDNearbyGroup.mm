@interface MRDNearbyGroup
+ (void)createWithCompletion:(id)a3;
- (NSString)description;
- (NSString)sessionSecret;
- (_TtC12mediaremoted14MRDNearbyGroup)init;
- (void)setSessionSecret:(id)a3;
@end

@implementation MRDNearbyGroup

+ (void)createWithCompletion:(id)a3
{
  v5 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
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
  v12[4] = &unk_10044F2E0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10044F2E8;
  v13[5] = v12;
  sub_1001D34BC(0, 0, v8, &unk_10044F2F0, v13);
}

- (NSString)sessionSecret
{
  v2 = self;
  sub_1001E098C();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)setSessionSecret:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR____TtC12mediaremoted14MRDNearbyGroup____lazy_storage___sessionSecret);
  v6 = *&self->nearbyGroup[OBJC_IVAR____TtC12mediaremoted14MRDNearbyGroup____lazy_storage___sessionSecret];
  *v5 = v4;
  v5[1] = v7;
}

- (NSString)description
{
  swift_getObjectType();
  v3 = self;
  v4._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 8250;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  v8._countAndFlagsBits = (*((swift_isaMask & v3->super.isa) + 0x68))(v6, v7);
  String.append(_:)(v8);

  v9._countAndFlagsBits = 62;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);

  v10 = String._bridgeToObjectiveC()();

  return v10;
}

- (_TtC12mediaremoted14MRDNearbyGroup)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end