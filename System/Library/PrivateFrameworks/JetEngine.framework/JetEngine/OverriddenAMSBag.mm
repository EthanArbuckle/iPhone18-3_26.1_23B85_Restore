@interface OverriddenAMSBag
- (AMSBagProtocol)replacingSnapshotIfNeeded;
- (NSDate)expirationDate;
- (_TtC9JetEngine16OverriddenAMSBag)init;
- (_TtC9JetEngine16OverriddenAMSBag)initWithData:(id)data;
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
  v4 = sub_1AB45F284();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB45F254();
  selfCopy = self;
  sub_1AB372CC0();

  (*(v5 + 8))(v7, v4);
}

- (NSDate)expirationDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = *(&self->super.super.isa + OBJC_IVAR____TtC9JetEngine16OverriddenAMSBag_backing);
  selfCopy = self;
  expirationDate = [v9 expirationDate];
  if (expirationDate)
  {
    v12 = expirationDate;
    sub_1AB45F984();

    v13 = sub_1AB45F9B4();
    (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
  }

  else
  {
    v13 = sub_1AB45F9B4();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  }

  sub_1AB167244(v5, v8);

  sub_1AB45F9B4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v8, 1, v13);
  v16 = 0;
  if (v15 != 1)
  {
    v17 = sub_1AB45F914();
    (*(v14 + 8))(v8, v13);
    v16 = v17;
  }

  return v16;
}

- (id)arrayForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_1AB3733CC(keyCopy, &selRef_arrayForKey_);

  return v6;
}

- (id)BOOLForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_1AB3733CC(keyCopy, &selRef_BOOLForKey_);

  return v6;
}

- (id)doubleForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_1AB3733CC(keyCopy, &selRef_doubleForKey_);

  return v6;
}

- (id)integerForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_1AB3733CC(keyCopy, &selRef_integerForKey_);

  return v6;
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_1AB3733CC(keyCopy, &selRef_stringForKey_);

  return v6;
}

- (id)URLForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_1AB3733CC(keyCopy, &selRef_URLForKey_);

  return v6;
}

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_1AB3733CC(keyCopy, &selRef_dictionaryForKey_);

  return v6;
}

- (void)createSnapshotWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(&self->super.super.isa + OBJC_IVAR____TtC9JetEngine16OverriddenAMSBag_backing);
  v7 = *(&self->super.super.isa + OBJC_IVAR____TtC9JetEngine16OverriddenAMSBag_overrides);
  v8 = swift_allocObject();
  v8[2] = sub_1AB16723C;
  v8[3] = v5;
  v8[4] = v7;
  v11[4] = sub_1AB373B48;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1AB09C234;
  v11[3] = &block_descriptor_37;
  v9 = _Block_copy(v11);
  selfCopy = self;

  [v6 createSnapshotWithCompletion_];

  _Block_release(v9);
}

- (AMSBagProtocol)replacingSnapshotIfNeeded
{
  selfCopy = self;
  v3 = sub_1AB373758();

  return v3;
}

- (_TtC9JetEngine16OverriddenAMSBag)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9JetEngine16OverriddenAMSBag)initWithData:(id)data
{
  dataCopy = data;
  sub_1AB45F854();

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end