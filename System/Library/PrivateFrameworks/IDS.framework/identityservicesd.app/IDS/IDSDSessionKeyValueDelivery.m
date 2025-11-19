@interface IDSDSessionKeyValueDelivery
+ (id)createWithDelegate:(id)a3 session:(id)a4 metricsCollector:(id)a5 pushTokensForCapabilityProvider:(id)a6;
- (NSSet)objcMaterials;
- (_TtC17identityservicesd27IDSDSessionKeyValueDelivery)init;
- (id)getAllKeyValueDeliveryLocalMaterialSetForGroupID:(id)a3;
- (void)addDeliveryHandler:(id)a3 uuid:(id)a4;
- (void)addMaterialProviderToSession:(id)a3;
- (void)dealloc;
- (void)receiveDictionaryData:(id)a3 forType:(int)a4 fromParticipant:(unint64_t)a5;
- (void)removeDeliveryHandler:(id)a3;
- (void)requestDataForKey:(unsigned int)a3 participantID:(unint64_t)a4;
- (void)sendData:(NSData *)a3 forKey:(unsigned int)a4 encryption:(unsigned int)a5 capability:(NSString *)a6 withCompletion:(id)a7;
- (void)test_receiveData:(id)a3 forKey:(unsigned int)a4 fromParticipant:(unint64_t)a5;
@end

@implementation IDSDSessionKeyValueDelivery

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_state);
  v3 = self;

  os_unfair_lock_lock((v2 + 48));
  swift_unknownObjectWeakAssign();
  v4 = sub_100728D14(&_swiftEmptyArrayStorage);

  *(v2 + 24) = v4;
  v5 = sub_100728EFC(&_swiftEmptyArrayStorage);

  *(v2 + 32) = v5;
  v6 = sub_10072900C(&_swiftEmptyArrayStorage);

  *(v2 + 40) = v6;
  os_unfair_lock_unlock((v2 + 48));

  v7.receiver = v3;
  v7.super_class = type metadata accessor for IDSDSessionKeyValueDelivery(0);
  [(IDSDSessionKeyValueDelivery *)&v7 dealloc];
}

- (void)addDeliveryHandler:(id)a3 uuid:(id)a4
{
  v6 = sub_1009360A8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100936078();
  v10 = *((swift_isaMask & self->super.isa) + 0xC0);
  swift_unknownObjectRetain();
  v11 = self;
  v10(a3, v9);
  swift_unknownObjectRelease();

  (*(v7 + 8))(v9, v6);
}

- (void)removeDeliveryHandler:(id)a3
{
  v4 = sub_1009360A8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100936078();
  v8 = *((swift_isaMask & self->super.isa) + 0xC8);
  v9 = self;
  v8(v7);

  (*(v5 + 8))(v7, v4);
}

- (id)getAllKeyValueDeliveryLocalMaterialSetForGroupID:(id)a3
{
  v4 = sub_100936B38();
  v6 = v5;
  v7 = self;
  v8 = sub_10071FAE4(v4, v6);

  return v8;
}

- (NSSet)objcMaterials
{
  v2 = self;
  v3 = IDSDSessionKeyValueDelivery.objcMaterials.getter();

  return v3;
}

- (void)receiveDictionaryData:(id)a3 forType:(int)a4 fromParticipant:(unint64_t)a5
{
  v6 = *&a4;
  v8 = sub_100936A78();
  v9 = self;
  IDSDSessionKeyValueDelivery.receive(dictionaryData:forType:fromParticipant:)(v8, v6, a5);
}

- (void)test_receiveData:(id)a3 forKey:(unsigned int)a4 fromParticipant:(unint64_t)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = self;
  v10 = sub_100935EA8();
  v12 = v11;

  (*((swift_isaMask & v9->super.isa) + 0x118))(v10, v12, v6, a5);

  sub_1007156D8(v10, v12);
}

- (void)sendData:(NSData *)a3 forKey:(unsigned int)a4 encryption:(unsigned int)a5 capability:(NSString *)a6 withCompletion:(id)a7
{
  v13 = sub_100706B30(&qword_100CB3410);
  __chkstk_darwin(v13 - 8);
  v15 = &v24 - v14;
  v16 = _Block_copy(a7);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 28) = a5;
  *(v17 + 32) = a6;
  *(v17 + 40) = v16;
  *(v17 + 48) = self;
  v18 = sub_100936DB8();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1009ACF38;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_1009ACF48;
  v20[5] = v19;
  v21 = a3;
  v22 = a6;
  v23 = self;
  sub_100724A14(0, 0, v15, &unk_1009ACF58, v20);
}

- (void)requestDataForKey:(unsigned int)a3 participantID:(unint64_t)a4
{
  v5 = *&a3;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_state);
  v8 = self;
  os_unfair_lock_lock(v6 + 12);
  Strong = swift_unknownObjectWeakLoadStrong();
  os_unfair_lock_unlock(v6 + 12);
  if (Strong)
  {
    [Strong requestKeyValueDeliveryDataForKey:v5 participantID:a4];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

+ (id)createWithDelegate:(id)a3 session:(id)a4 metricsCollector:(id)a5 pushTokensForCapabilityProvider:(id)a6
{
  swift_unknownObjectRetain();
  v10 = a4;
  v11 = a5;
  swift_unknownObjectRetain();
  v12 = sub_100729DEC(a3, v10, v11, a6);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v12;
}

- (void)addMaterialProviderToSession:(id)a3
{
  v4 = *((swift_isaMask & *a3) + 0x130);
  v5 = self;
  v6 = a3;
  v7 = v4(v15);
  v9 = v8;
  v10 = *v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v9 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_100724F00(0, v10[2] + 1, 1, v10);
    *v9 = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_100724F00((v12 > 1), v13 + 1, 1, v10);
    *v9 = v10;
  }

  v10[2] = v13 + 1;
  v14 = &v10[2 * v13];
  v14[4] = v5;
  v14[5] = &off_100BE6B00;
  v7(v15, 0);
}

- (_TtC17identityservicesd27IDSDSessionKeyValueDelivery)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end