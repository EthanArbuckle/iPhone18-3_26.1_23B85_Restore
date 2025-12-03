@interface FAMemberPhotoRequest404Cache
- (BOOL)shouldAllowRequestFor:(id)for cacheDuration:(int64_t)duration;
- (FAMemberPhotoRequest404Cache)init;
- (id)getLast404ResponseFor:(id)for;
- (void)save404ResponseFor:(id)for;
@end

@implementation FAMemberPhotoRequest404Cache

- (FAMemberPhotoRequest404Cache)init
{
  v3 = OBJC_IVAR___FAMemberPhotoRequest404Cache_encoder;
  v4 = type metadata accessor for JSONEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(&self->super.isa + v3) = JSONEncoder.init()();
  v7 = OBJC_IVAR___FAMemberPhotoRequest404Cache_decoder;
  v8 = type metadata accessor for JSONDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(&self->super.isa + v7) = JSONDecoder.init()();
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  *(&self->super.isa + OBJC_IVAR___FAMemberPhotoRequest404Cache_persistence) = standardUserDefaults;
  v13.receiver = self;
  v13.super_class = type metadata accessor for MemberPhotoRequest404Cache();
  return [(FAMemberPhotoRequest404Cache *)&v13 init];
}

- (void)save404ResponseFor:(id)for
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  MemberPhotoRequest404Cache.save404Response(for:)(v8);
}

- (id)getLast404ResponseFor:(id)for
{
  v4 = sub_100022F18(&qword_1000B89A8, &qword_10008CE90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v19 - v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  selfCopy = self;
  MemberPhotoRequest404Cache.getLast404Response(for:)(v9, v11, v8);

  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v8, 1, v13);
  v16 = 0;
  if (v15 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v14 + 8))(v8, v13);
    v16 = isa;
  }

  return v16;
}

- (BOOL)shouldAllowRequestFor:(id)for cacheDuration:(int64_t)duration
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  selfCopy = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  LOBYTE(duration) = MemberPhotoRequest404Cache.shouldAllowRequest(for:cacheDuration:)(v10, duration);

  return duration & 1;
}

@end