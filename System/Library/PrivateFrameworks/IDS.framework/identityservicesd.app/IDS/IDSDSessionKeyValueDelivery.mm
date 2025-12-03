@interface IDSDSessionKeyValueDelivery
+ (id)createWithDelegate:(id)delegate session:(id)session metricsCollector:(id)collector pushTokensForCapabilityProvider:(id)provider;
- (NSSet)objcMaterials;
- (_TtC17identityservicesd27IDSDSessionKeyValueDelivery)init;
- (id)getAllKeyValueDeliveryLocalMaterialSetForGroupID:(id)d;
- (void)addDeliveryHandler:(id)handler uuid:(id)uuid;
- (void)addMaterialProviderToSession:(id)session;
- (void)dealloc;
- (void)receiveDictionaryData:(id)data forType:(int)type fromParticipant:(unint64_t)participant;
- (void)removeDeliveryHandler:(id)handler;
- (void)requestDataForKey:(unsigned int)key participantID:(unint64_t)d;
- (void)sendData:(NSData *)data forKey:(unsigned int)key encryption:(unsigned int)encryption capability:(NSString *)capability withCompletion:(id)completion;
- (void)test_receiveData:(id)data forKey:(unsigned int)key fromParticipant:(unint64_t)participant;
@end

@implementation IDSDSessionKeyValueDelivery

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_state);
  selfCopy = self;

  os_unfair_lock_lock((v2 + 48));
  swift_unknownObjectWeakAssign();
  v4 = sub_100728D14(&_swiftEmptyArrayStorage);

  *(v2 + 24) = v4;
  v5 = sub_100728EFC(&_swiftEmptyArrayStorage);

  *(v2 + 32) = v5;
  v6 = sub_10072900C(&_swiftEmptyArrayStorage);

  *(v2 + 40) = v6;
  os_unfair_lock_unlock((v2 + 48));

  v7.receiver = selfCopy;
  v7.super_class = type metadata accessor for IDSDSessionKeyValueDelivery(0);
  [(IDSDSessionKeyValueDelivery *)&v7 dealloc];
}

- (void)addDeliveryHandler:(id)handler uuid:(id)uuid
{
  v6 = sub_1009360A8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100936078();
  v10 = *((swift_isaMask & self->super.isa) + 0xC0);
  swift_unknownObjectRetain();
  selfCopy = self;
  v10(handler, v9);
  swift_unknownObjectRelease();

  (*(v7 + 8))(v9, v6);
}

- (void)removeDeliveryHandler:(id)handler
{
  v4 = sub_1009360A8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100936078();
  v8 = *((swift_isaMask & self->super.isa) + 0xC8);
  selfCopy = self;
  v8(v7);

  (*(v5 + 8))(v7, v4);
}

- (id)getAllKeyValueDeliveryLocalMaterialSetForGroupID:(id)d
{
  v4 = sub_100936B38();
  v6 = v5;
  selfCopy = self;
  v8 = sub_10071FAE4(v4, v6);

  return v8;
}

- (NSSet)objcMaterials
{
  selfCopy = self;
  v3 = IDSDSessionKeyValueDelivery.objcMaterials.getter();

  return v3;
}

- (void)receiveDictionaryData:(id)data forType:(int)type fromParticipant:(unint64_t)participant
{
  v6 = *&type;
  v8 = sub_100936A78();
  selfCopy = self;
  IDSDSessionKeyValueDelivery.receive(dictionaryData:forType:fromParticipant:)(v8, v6, participant);
}

- (void)test_receiveData:(id)data forKey:(unsigned int)key fromParticipant:(unint64_t)participant
{
  v6 = *&key;
  dataCopy = data;
  selfCopy = self;
  v10 = sub_100935EA8();
  v12 = v11;

  (*((swift_isaMask & selfCopy->super.isa) + 0x118))(v10, v12, v6, participant);

  sub_1007156D8(v10, v12);
}

- (void)sendData:(NSData *)data forKey:(unsigned int)key encryption:(unsigned int)encryption capability:(NSString *)capability withCompletion:(id)completion
{
  v13 = sub_100706B30(&qword_100CB3410);
  __chkstk_darwin(v13 - 8);
  v15 = &v24 - v14;
  v16 = _Block_copy(completion);
  v17 = swift_allocObject();
  *(v17 + 16) = data;
  *(v17 + 24) = key;
  *(v17 + 28) = encryption;
  *(v17 + 32) = capability;
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
  dataCopy = data;
  capabilityCopy = capability;
  selfCopy = self;
  sub_100724A14(0, 0, v15, &unk_1009ACF58, v20);
}

- (void)requestDataForKey:(unsigned int)key participantID:(unint64_t)d
{
  v5 = *&key;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_state);
  selfCopy = self;
  os_unfair_lock_lock(v6 + 12);
  Strong = swift_unknownObjectWeakLoadStrong();
  os_unfair_lock_unlock(v6 + 12);
  if (Strong)
  {
    [Strong requestKeyValueDeliveryDataForKey:v5 participantID:d];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

+ (id)createWithDelegate:(id)delegate session:(id)session metricsCollector:(id)collector pushTokensForCapabilityProvider:(id)provider
{
  swift_unknownObjectRetain();
  sessionCopy = session;
  collectorCopy = collector;
  swift_unknownObjectRetain();
  v12 = sub_100729DEC(delegate, sessionCopy, collectorCopy, provider);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v12;
}

- (void)addMaterialProviderToSession:(id)session
{
  v4 = *((swift_isaMask & *session) + 0x130);
  selfCopy = self;
  sessionCopy = session;
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
  v14[4] = selfCopy;
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