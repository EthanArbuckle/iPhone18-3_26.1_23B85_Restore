@interface SystemController
- (_TtC11DockKitCore16SystemController)initWithAccessory:(id)accessory id:(int64_t)id type:(int64_t)type name:(id)name;
- (_TtC11DockKitCore16SystemController)initWithCoder:(id)coder;
- (_TtC11DockKitCore16SystemController)initWithId:(int64_t)id type:(int64_t)type name:(id)name;
@end

@implementation SystemController

- (_TtC11DockKitCore16SystemController)initWithAccessory:(id)accessory id:(int64_t)id type:(int64_t)type name:(id)name
{
  v10 = sub_224627CD8();
  v12 = v11;
  swift_unknownObjectWeakInit();
  *&self->_TtC11DockKitCore6System_opaque[OBJC_IVAR____TtC11DockKitCore6System_components] = MEMORY[0x277D84F98];
  *&self->_TtC11DockKitCore6System_opaque[OBJC_IVAR____TtC11DockKitCore6System_id] = id;
  *&self->_TtC11DockKitCore6System_opaque[OBJC_IVAR____TtC11DockKitCore6System_type] = type;
  v13 = &self->_TtC11DockKitCore6System_opaque[OBJC_IVAR____TtC11DockKitCore6System_name];
  *v13 = v10;
  v13[1] = v12;
  v17.receiver = self;
  v17.super_class = type metadata accessor for System();
  accessoryCopy = accessory;
  v15 = [(System *)&v17 init];
  swift_unknownObjectWeakAssign();

  return v15;
}

- (_TtC11DockKitCore16SystemController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  coderCopy = coder;
  v5 = sub_2245B4A54();

  return v5;
}

- (_TtC11DockKitCore16SystemController)initWithId:(int64_t)id type:(int64_t)type name:(id)name
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end