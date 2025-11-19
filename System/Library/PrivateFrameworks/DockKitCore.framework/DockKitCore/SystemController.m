@interface SystemController
- (_TtC11DockKitCore16SystemController)initWithAccessory:(id)a3 id:(int64_t)a4 type:(int64_t)a5 name:(id)a6;
- (_TtC11DockKitCore16SystemController)initWithCoder:(id)a3;
- (_TtC11DockKitCore16SystemController)initWithId:(int64_t)a3 type:(int64_t)a4 name:(id)a5;
@end

@implementation SystemController

- (_TtC11DockKitCore16SystemController)initWithAccessory:(id)a3 id:(int64_t)a4 type:(int64_t)a5 name:(id)a6
{
  v10 = sub_224627CD8();
  v12 = v11;
  swift_unknownObjectWeakInit();
  *&self->_TtC11DockKitCore6System_opaque[OBJC_IVAR____TtC11DockKitCore6System_components] = MEMORY[0x277D84F98];
  *&self->_TtC11DockKitCore6System_opaque[OBJC_IVAR____TtC11DockKitCore6System_id] = a4;
  *&self->_TtC11DockKitCore6System_opaque[OBJC_IVAR____TtC11DockKitCore6System_type] = a5;
  v13 = &self->_TtC11DockKitCore6System_opaque[OBJC_IVAR____TtC11DockKitCore6System_name];
  *v13 = v10;
  v13[1] = v12;
  v17.receiver = self;
  v17.super_class = type metadata accessor for System();
  v14 = a3;
  v15 = [(System *)&v17 init];
  swift_unknownObjectWeakAssign();

  return v15;
}

- (_TtC11DockKitCore16SystemController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  v4 = a3;
  v5 = sub_2245B4A54();

  return v5;
}

- (_TtC11DockKitCore16SystemController)initWithId:(int64_t)a3 type:(int64_t)a4 name:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end