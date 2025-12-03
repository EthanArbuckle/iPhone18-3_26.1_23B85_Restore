@interface OverriddenAMSBag
- (AMSBagProtocol)replacingSnapshotIfNeeded;
- (NSDate)expirationDate;
- (_TtC7JetCore16OverriddenAMSBag)init;
- (_TtC7JetCore16OverriddenAMSBag)initWithData:(id)data;
- (id)BOOLForKey:(id)key;
- (id)URLForKey:(id)key;
- (id)arrayForKey:(id)key;
- (id)dictionaryForKey:(id)key;
- (id)doubleForKey:(id)key;
- (id)integerForKey:(id)key;
- (id)stringForKey:(id)key;
- (void)createSnapshotWithCompletion:(id)completion;
- (void)dealloc;
- (void)forwardSnapshotBagExpiredValueAccessed:(id)accessed;
@end

@implementation OverriddenAMSBag

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver_];

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(OverriddenAMSBag *)&v7 dealloc];
}

- (void)forwardSnapshotBagExpiredValueAccessed:(id)accessed
{
  v4 = sub_1DB509960();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB509940();
  selfCopy = self;
  sub_1DB35DBE8();

  (*(v5 + 8))(v8, v4);
}

- (NSDate)expirationDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = *(&self->super.super.isa + OBJC_IVAR____TtC7JetCore16OverriddenAMSBag_backing);
  selfCopy = self;
  expirationDate = [v10 expirationDate];
  if (expirationDate)
  {
    v13 = expirationDate;
    sub_1DB509DB0();

    v14 = sub_1DB509DD0();
    (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
  }

  else
  {
    v14 = sub_1DB509DD0();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  }

  sub_1DB35EA44(v6, v9);

  sub_1DB509DD0();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v9, 1, v14);
  v17 = 0;
  if (v16 != 1)
  {
    v18 = sub_1DB509D40();
    (*(v15 + 8))(v9, v14);
    v17 = v18;
  }

  return v17;
}

- (id)arrayForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_1DB35E2F4(keyCopy, &selRef_arrayForKey_);

  return v6;
}

- (id)BOOLForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_1DB35E2F4(keyCopy, &selRef_BOOLForKey_);

  return v6;
}

- (id)doubleForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_1DB35E2F4(keyCopy, &selRef_doubleForKey_);

  return v6;
}

- (id)integerForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_1DB35E2F4(keyCopy, &selRef_integerForKey_);

  return v6;
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_1DB35E2F4(keyCopy, &selRef_stringForKey_);

  return v6;
}

- (id)URLForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_1DB35E2F4(keyCopy, &selRef_URLForKey_);

  return v6;
}

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_1DB35E2F4(keyCopy, &selRef_dictionaryForKey_);

  return v6;
}

- (void)createSnapshotWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(&self->super.super.isa + OBJC_IVAR____TtC7JetCore16OverriddenAMSBag_backing);
  v7 = *(&self->super.super.isa + OBJC_IVAR____TtC7JetCore16OverriddenAMSBag_overrides);
  v8 = swift_allocObject();
  v8[2] = sub_1DB35EA18;
  v8[3] = v5;
  v8[4] = v7;
  v11[4] = sub_1DB35EA20;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1DB46E918;
  v11[3] = &block_descriptor_4;
  v9 = _Block_copy(v11);
  selfCopy = self;

  [v6 createSnapshotWithCompletion_];

  _Block_release(v9);
}

- (AMSBagProtocol)replacingSnapshotIfNeeded
{
  selfCopy = self;
  v3 = sub_1DB35E680();

  return v3;
}

- (_TtC7JetCore16OverriddenAMSBag)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7JetCore16OverriddenAMSBag)initWithData:(id)data
{
  dataCopy = data;
  sub_1DB509CE0();

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end