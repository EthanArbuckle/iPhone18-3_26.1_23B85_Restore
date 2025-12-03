@interface URLActivityItemProvider
- (_TtC12GameStoreKit23URLActivityItemProvider)initWithPlaceholderItem:(id)item;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewControllerLinkPresentationMetadata:(id)metadata;
- (id)activityViewControllerSubject:(id)subject;
- (id)item;
@end

@implementation URLActivityItemProvider

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  if (type)
  {
    v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_excludedActivityTypes);
    controllerCopy = controller;
    selfCopy = self;
    typeCopy = type;
    if (sub_24F4D3F30(typeCopy, v7))
    {
      v25 = 0u;
      v26 = 0u;

      goto LABEL_6;
    }
  }

  else
  {
    controllerCopy2 = controller;
    selfCopy2 = self;
  }

  v13 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_shareSheetData);
  v14 = OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url;
  v15 = sub_24F91F4A8();
  *(&v26 + 1) = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v25);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v13 + v14, v15);

LABEL_6:
  v17 = *(&v26 + 1);
  if (*(&v26 + 1))
  {
    v18 = __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
    v19 = *(v17 - 8);
    v20 = MEMORY[0x28223BE20](v18);
    v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v22, v20);
    v23 = sub_24F92CDE8();
    (*(v19 + 8))(v22, v17);
    __swift_destroy_boxed_opaque_existential_1(&v25);
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)item
{
  selfCopy = self;
  sub_24F14AA18(v5);

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3 = sub_24F92CDE8();
  __swift_destroy_boxed_opaque_existential_1(v5);

  return v3;
}

- (_TtC12GameStoreKit23URLActivityItemProvider)initWithPlaceholderItem:(id)item
{
  swift_unknownObjectRetain();
  sub_24F92C648();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)activityViewControllerLinkPresentationMetadata:(id)metadata
{
  metadataCopy = metadata;
  selfCopy = self;
  v6 = sub_24F14AFC4();

  return v6;
}

- (id)activityViewControllerSubject:(id)subject
{
  sub_24F14BF58();
  if (v3)
  {

    v4 = sub_24F92B098();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end