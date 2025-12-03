@interface TextActivityItemProvider
- (_TtC12GameStoreKit24TextActivityItemProvider)initWithPlaceholderItem:(id)item;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)item;
@end

@implementation TextActivityItemProvider

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  if (type)
  {
    v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12GameStoreKit24TextActivityItemProvider_excludedActivityTypes);
    controllerCopy = controller;
    selfCopy = self;
    typeCopy = type;
    if (sub_24F4D3F30(typeCopy, v7))
    {

      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    controllerCopy2 = controller;
    selfCopy2 = self;
  }

  v15 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12GameStoreKit24TextActivityItemProvider_text);
  v14 = *(&self->super.super._iop.__prevOp + OBJC_IVAR____TtC12GameStoreKit24TextActivityItemProvider_text);
  v16 = MEMORY[0x277D837D0];
  v23[3] = MEMORY[0x277D837D0];
  v23[0] = v15;
  v23[1] = v14;

  v17 = __swift_project_boxed_opaque_existential_1(v23, v16);
  v18 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, v19);
  v11 = sub_24F92CDE8();
  (*(v18 + 8))(v21, v16);
  __swift_destroy_boxed_opaque_existential_1(v23);
LABEL_6:

  return v11;
}

- (id)item
{

  v2 = sub_24F92CF68();

  return v2;
}

- (_TtC12GameStoreKit24TextActivityItemProvider)initWithPlaceholderItem:(id)item
{
  swift_unknownObjectRetain();
  sub_24F92C648();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end