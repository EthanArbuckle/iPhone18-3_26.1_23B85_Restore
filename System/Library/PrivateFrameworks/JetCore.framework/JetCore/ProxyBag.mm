@interface ProxyBag
- (NSDate)expirationDate;
- (_TtC7JetCore8ProxyBag)init;
- (id)BOOLForKey:(id)a3;
- (id)URLForKey:(id)a3;
- (id)arrayForKey:(id)a3;
- (id)dictionaryForKey:(id)a3;
- (id)doubleForKey:(id)a3;
- (id)integerForKey:(id)a3;
- (id)stringForKey:(id)a3;
- (void)createSnapshotWithCompletion:(id)a3;
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
  v11 = self;
  v12 = [v10 expirationDate];
  if (v12)
  {
    v13 = v12;
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

- (id)arrayForKey:(id)a3
{
  v3 = [*(&self->super.isa + OBJC_IVAR____TtC7JetCore8ProxyBag_bag) arrayForKey_];

  return v3;
}

- (id)BOOLForKey:(id)a3
{
  v3 = [*(&self->super.isa + OBJC_IVAR____TtC7JetCore8ProxyBag_bag) BOOLForKey_];

  return v3;
}

- (void)createSnapshotWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
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
  v8 = self;
  swift_unknownObjectRetain();

  [v6 createSnapshotWithCompletion_];

  _Block_release(v7);
  swift_unknownObjectRelease();
}

- (id)doubleForKey:(id)a3
{
  v3 = [*(&self->super.isa + OBJC_IVAR____TtC7JetCore8ProxyBag_bag) doubleForKey_];

  return v3;
}

- (id)integerForKey:(id)a3
{
  v3 = [*(&self->super.isa + OBJC_IVAR____TtC7JetCore8ProxyBag_bag) integerForKey_];

  return v3;
}

- (id)stringForKey:(id)a3
{
  v3 = [*(&self->super.isa + OBJC_IVAR____TtC7JetCore8ProxyBag_bag) stringForKey_];

  return v3;
}

- (id)URLForKey:(id)a3
{
  v3 = [*(&self->super.isa + OBJC_IVAR____TtC7JetCore8ProxyBag_bag) URLForKey_];

  return v3;
}

- (id)dictionaryForKey:(id)a3
{
  v3 = [*(&self->super.isa + OBJC_IVAR____TtC7JetCore8ProxyBag_bag) dictionaryForKey_];

  return v3;
}

- (_TtC7JetCore8ProxyBag)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end