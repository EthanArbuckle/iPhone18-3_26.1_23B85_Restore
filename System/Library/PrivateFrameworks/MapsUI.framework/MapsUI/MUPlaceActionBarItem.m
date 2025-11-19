@interface MUPlaceActionBarItem
- (MUPlaceActionBarItem)init;
- (MUPlaceActionBarItem)initWithType:(id)a3 axID:(id)a4;
- (MUPlaceActionBarType)type;
- (NSArray)handlers;
- (void)addHandler:(id)a3;
- (void)addMenuProvider:(id)a3;
- (void)setHandlers:(id)a3;
- (void)setType:(id)a3;
@end

@implementation MUPlaceActionBarItem

- (NSArray)handlers
{
  v3 = OBJC_IVAR___MUPlaceActionBarItem_handlers;
  swift_beginAccess();
  v4 = *(self + v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170E00, &qword_1C5878C88);
  v5 = sub_1C584F750();

  return v5;
}

- (void)setHandlers:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170E00, &qword_1C5878C88);
  v4 = sub_1C584F770();
  v5 = OBJC_IVAR___MUPlaceActionBarItem_handlers;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (MUPlaceActionBarType)type
{
  v3 = OBJC_IVAR___MUPlaceActionBarItem_type;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setType:(id)a3
{
  v5 = OBJC_IVAR___MUPlaceActionBarItem_type;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (MUPlaceActionBarItem)initWithType:(id)a3 axID:(id)a4
{
  ObjectType = swift_getObjectType();
  v7 = sub_1C584F660();
  v8 = MEMORY[0x1E69E7CC0];
  *(self + OBJC_IVAR___MUPlaceActionBarItem_handlers) = MEMORY[0x1E69E7CC0];
  *(self + OBJC_IVAR___MUPlaceActionBarItem_menuProviders) = v8;
  *(self + OBJC_IVAR___MUPlaceActionBarItem_type) = a3;
  v9 = (self + OBJC_IVAR___MUPlaceActionBarItem_axID);
  *v9 = v7;
  v9[1] = v10;
  v13.receiver = self;
  v13.super_class = ObjectType;
  v11 = a3;
  return [(MUPlaceActionBarItem *)&v13 init];
}

- (void)addHandler:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = OBJC_IVAR___MUPlaceActionBarItem_handlers;
  swift_beginAccess();
  v6 = self;
  MEMORY[0x1C6949DF0]();
  if (*((*(self + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(self + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v7 = *((*(self + v5) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1C584F7A0();
  }

  sub_1C584F7E0();
  swift_endAccess();
  _Block_release(v4);
}

- (void)addMenuProvider:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1C5752B9C;
  *(v6 + 24) = v5;
  v7 = OBJC_IVAR___MUPlaceActionBarItem_menuProviders;
  swift_beginAccess();
  v8 = *(self + v7);
  v9 = self;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(self + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1C574C64C(0, v8[2] + 1, 1, v8);
    *(self + v7) = v8;
  }

  v12 = v8[2];
  v11 = v8[3];
  if (v12 >= v11 >> 1)
  {
    v8 = sub_1C574C64C((v11 > 1), v12 + 1, 1, v8);
  }

  v8[2] = v12 + 1;
  v13 = &v8[2 * v12];
  v13[4] = sub_1C574F7EC;
  v13[5] = v6;
  *(self + v7) = v8;
  swift_endAccess();
}

- (MUPlaceActionBarItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end