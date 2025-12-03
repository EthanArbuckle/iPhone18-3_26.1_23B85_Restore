@interface IDSGroupQUICMaterialExchangeController
- (_TtC17identityservicesd38IDSGroupQUICMaterialExchangeController)init;
- (id)takeAllCurrentMaterials;
- (void)addHandler:(id)handler;
- (void)removeHandler:(id)handler;
- (void)sendDesiredMaterialsIfNeeded;
@end

@implementation IDSGroupQUICMaterialExchangeController

- (void)sendDesiredMaterialsIfNeeded
{
  selfCopy = self;
  sub_10072B21C();
}

- (void)addHandler:(id)handler
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10072E5B4(handler);
  swift_unknownObjectRelease();
}

- (void)removeHandler:(id)handler
{
  v5 = OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_handlers;
  swift_beginAccess();
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_100732CD0((self + v5), handler);
  v8 = (*(&self->super.isa + v5))[2];
  if (v8 < v7)
  {
    __break(1u);
  }

  else
  {
    sub_100732F54(v7, v8);
    swift_endAccess();
    swift_unknownObjectRelease();
  }
}

- (id)takeAllCurrentMaterials
{
  selfCopy = self;
  sub_10072E924();

  sub_100014170(0, &qword_100CB3658);
  v3.super.isa = sub_100936CD8().super.isa;

  return v3.super.isa;
}

- (_TtC17identityservicesd38IDSGroupQUICMaterialExchangeController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end