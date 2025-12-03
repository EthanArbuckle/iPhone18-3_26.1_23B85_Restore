@interface ProxyBag
- (NSDate)expirationDate;
- (_TtC7JetCore8ProxyBag)init;
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
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = *(&self->super.isa + OBJC_IVAR____TtC7JetCore8ProxyBag_bag);
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
  arrayForKey_ = [*(&self->super.isa + OBJC_IVAR____TtC7JetCore8ProxyBag_bag) arrayForKey_];

  return arrayForKey_;
}

- (id)BOOLForKey:(id)key
{
  bOOLForKey_ = [*(&self->super.isa + OBJC_IVAR____TtC7JetCore8ProxyBag_bag) BOOLForKey_];

  return bOOLForKey_;
}

- (void)createSnapshotWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC7JetCore8ProxyBag_bag);
  v9[4] = sub_1DB35EA18;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DB46E918;
  v9[3] = &block_descriptor_16;
  v7 = _Block_copy(v9);
  selfCopy = self;
  swift_unknownObjectRetain();

  [v6 createSnapshotWithCompletion_];

  _Block_release(v7);
  swift_unknownObjectRelease();
}

- (id)doubleForKey:(id)key
{
  doubleForKey_ = [*(&self->super.isa + OBJC_IVAR____TtC7JetCore8ProxyBag_bag) doubleForKey_];

  return doubleForKey_;
}

- (id)integerForKey:(id)key
{
  integerForKey_ = [*(&self->super.isa + OBJC_IVAR____TtC7JetCore8ProxyBag_bag) integerForKey_];

  return integerForKey_;
}

- (id)stringForKey:(id)key
{
  stringForKey_ = [*(&self->super.isa + OBJC_IVAR____TtC7JetCore8ProxyBag_bag) stringForKey_];

  return stringForKey_;
}

- (id)URLForKey:(id)key
{
  uRLForKey_ = [*(&self->super.isa + OBJC_IVAR____TtC7JetCore8ProxyBag_bag) URLForKey_];

  return uRLForKey_;
}

- (id)dictionaryForKey:(id)key
{
  dictionaryForKey_ = [*(&self->super.isa + OBJC_IVAR____TtC7JetCore8ProxyBag_bag) dictionaryForKey_];

  return dictionaryForKey_;
}

- (_TtC7JetCore8ProxyBag)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end