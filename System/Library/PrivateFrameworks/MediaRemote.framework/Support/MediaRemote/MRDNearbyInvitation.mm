@interface MRDNearbyInvitation
+ (void)createWithNearbyGroup:(_TtC12mediaremoted14MRDNearbyGroup *)a3 displayName:(NSString *)a4 routeType:(unsigned __int8)a5 completion:(id)a6;
- (NSData)invitationData;
- (NSString)description;
- (_TtC12mediaremoted19MRDNearbyInvitation)init;
- (void)markAsUsed;
@end

@implementation MRDNearbyInvitation

- (NSData)invitationData
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC12mediaremoted19MRDNearbyInvitation_nearbyInvitation);
  v3 = self;
  v4 = dispatch thunk of NearbyInvitation.invitationData.getter();
  v6 = v5;

  v7.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1001C4034(v4, v6);

  return v7.super.isa;
}

+ (void)createWithNearbyGroup:(_TtC12mediaremoted14MRDNearbyGroup *)a3 displayName:(NSString *)a4 routeType:(unsigned __int8)a5 completion:(id)a6
{
  v11 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v22 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
  *(v16 + 40) = v15;
  *(v16 + 48) = a1;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_10044F2A8;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_10044F2B8;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  sub_1001D34BC(0, 0, v14, &unk_10044F2C8, v19);
}

- (NSString)description
{
  swift_getObjectType();
  v3 = self;
  v4._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x3D6469203ALL;
  v5._object = 0xE500000000000000;
  String.append(_:)(v5);
  v8._countAndFlagsBits = (*((swift_isaMask & v3->super.isa) + 0x60))(v6, v7);
  String.append(_:)(v8);

  v9._countAndFlagsBits = 62;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);

  v10 = String._bridgeToObjectiveC()();

  return v10;
}

- (void)markAsUsed
{
  v3 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  v9 = self;
  sub_1001CB290(0, 0, v6, &unk_10044F298, v8);
}

- (_TtC12mediaremoted19MRDNearbyInvitation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end