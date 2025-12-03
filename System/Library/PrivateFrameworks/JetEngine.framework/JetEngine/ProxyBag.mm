@interface ProxyBag
- (NSDate)expirationDate;
- (_TtC9JetEngine8ProxyBag)init;
- (id)BOOLForKey:(id)key;
- (id)URLForKey:(id)key;
- (id)arrayForKey:(id)key;
- (id)dictionaryForKey:(id)key;
- (id)doubleForKey:(id)key;
- (id)integerForKey:(id)key;
- (id)stringForKey:(id)key;
- (void)createSnapshotWithCompletion:(id)completion;
@end

@implementation ProxyBag

- (NSDate)expirationDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  v9 = *(&self->super.isa + OBJC_IVAR____TtC9JetEngine8ProxyBag_bag);
  selfCopy = self;
  expirationDate = [v9 expirationDate];
  if (expirationDate)
  {
    v12 = expirationDate;
    sub_1AB45F984();

    v13 = sub_1AB45F9B4();
    (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
  }

  else
  {
    v13 = sub_1AB45F9B4();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  }

  sub_1AB167244(v6, v8);

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
  arrayForKey_ = [*(&self->super.isa + OBJC_IVAR____TtC9JetEngine8ProxyBag_bag) arrayForKey_];

  return arrayForKey_;
}

- (id)BOOLForKey:(id)key
{
  bOOLForKey_ = [*(&self->super.isa + OBJC_IVAR____TtC9JetEngine8ProxyBag_bag) BOOLForKey_];

  return bOOLForKey_;
}

- (void)createSnapshotWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC9JetEngine8ProxyBag_bag);
  v9[4] = sub_1AB16723C;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1AB09C234;
  v9[3] = &block_descriptor_2;
  v7 = _Block_copy(v9);
  selfCopy = self;
  swift_unknownObjectRetain();

  [v6 createSnapshotWithCompletion_];

  _Block_release(v7);
  swift_unknownObjectRelease();
}

- (id)doubleForKey:(id)key
{
  doubleForKey_ = [*(&self->super.isa + OBJC_IVAR____TtC9JetEngine8ProxyBag_bag) doubleForKey_];

  return doubleForKey_;
}

- (id)integerForKey:(id)key
{
  integerForKey_ = [*(&self->super.isa + OBJC_IVAR____TtC9JetEngine8ProxyBag_bag) integerForKey_];

  return integerForKey_;
}

- (id)stringForKey:(id)key
{
  stringForKey_ = [*(&self->super.isa + OBJC_IVAR____TtC9JetEngine8ProxyBag_bag) stringForKey_];

  return stringForKey_;
}

- (id)URLForKey:(id)key
{
  uRLForKey_ = [*(&self->super.isa + OBJC_IVAR____TtC9JetEngine8ProxyBag_bag) URLForKey_];

  return uRLForKey_;
}

- (id)dictionaryForKey:(id)key
{
  dictionaryForKey_ = [*(&self->super.isa + OBJC_IVAR____TtC9JetEngine8ProxyBag_bag) dictionaryForKey_];

  return dictionaryForKey_;
}

- (_TtC9JetEngine8ProxyBag)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end