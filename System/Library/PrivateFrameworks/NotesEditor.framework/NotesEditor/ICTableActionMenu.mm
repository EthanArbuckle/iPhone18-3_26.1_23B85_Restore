@interface ICTableActionMenu
+ (ICTableActionMenu)menuWithTableAttachmentViewController:(id)controller presentingViewController:(id)viewController presentingBarButtonItem:(id)item completion:(id)completion;
+ (ICTableActionMenu)menuWithTableAttachmentViewController:(id)controller presentingViewController:(id)viewController presentingBarButtonItem:(id)item deferredChildren:(BOOL)children completion:(id)completion;
- (ICTableActionMenu)init;
- (ICTableActionMenu)initWithTableAttachmentViewController:(id)controller presentingViewController:(id)viewController presentingBarButtonItem:(id)item completion:(id)completion;
- (UIBarButtonItem)presentingBarButtonItem;
- (id)completion;
- (id)makeMenu;
- (id)menuSections;
- (void)setCompletion:(id)completion;
- (void)setPresentingBarButtonItem:(id)item;
@end

@implementation ICTableActionMenu

- (ICTableActionMenu)initWithTableAttachmentViewController:(id)controller presentingViewController:(id)viewController presentingBarButtonItem:(id)item completion:(id)completion
{
  v9 = _Block_copy(completion);
  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v9 = sub_2153A73C4;
  }

  else
  {
    v10 = 0;
  }

  controllerCopy = controller;
  viewControllerCopy = viewController;
  itemCopy = item;
  v14 = sub_2153A6A9C(controller, viewControllerCopy, item, v9, v10);
  sub_2151AF750(v9);

  return v14;
}

+ (ICTableActionMenu)menuWithTableAttachmentViewController:(id)controller presentingViewController:(id)viewController presentingBarButtonItem:(id)item deferredChildren:(BOOL)children completion:(id)completion
{
  childrenCopy = children;
  v11 = _Block_copy(completion);
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = sub_2153A73C4;
  }

  else
  {
    v12 = 0;
  }

  controllerCopy = controller;
  viewControllerCopy = viewController;
  itemCopy = item;
  v16 = _s11NotesEditor15TableActionMenuC4menu29tableAttachmentViewController010presentingiJ00K13BarButtonItem16deferredChildren10completionSo6UIMenuCSo07ICTablehiJ0CSg_So06UIViewJ0CSo05UIBarmN0CSgSbySb_SStcSgtFZ_0(controller, viewControllerCopy, item, childrenCopy, v11, v12);
  sub_2151AF750(v11);

  return v16;
}

+ (ICTableActionMenu)menuWithTableAttachmentViewController:(id)controller presentingViewController:(id)viewController presentingBarButtonItem:(id)item completion:(id)completion
{
  v9 = _Block_copy(completion);
  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v9 = sub_2153A73C4;
  }

  else
  {
    v10 = 0;
  }

  controllerCopy = controller;
  viewControllerCopy = viewController;
  itemCopy = item;
  v14 = _s11NotesEditor15TableActionMenuC4menu29tableAttachmentViewController010presentingiJ00K13BarButtonItem10completionSo6UIMenuCSo07ICTablehiJ0CSg_So06UIViewJ0CSo05UIBarmN0CSgySb_SStcSgtFZ_0(controller, viewControllerCopy, item, v9, v10);
  sub_2151AF750(v9);

  return v14;
}

- (id)completion
{
  v2 = (self + OBJC_IVAR___ICTableActionMenu_completion);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2153777F0;
    aBlock[3] = &block_descriptor_30;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_2153A72D0;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___ICTableActionMenu_completion);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_2151AF750(v7);
}

- (UIBarButtonItem)presentingBarButtonItem
{
  v3 = OBJC_IVAR___ICTableActionMenu_presentingBarButtonItem;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPresentingBarButtonItem:(id)item
{
  v5 = OBJC_IVAR___ICTableActionMenu_presentingBarButtonItem;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = item;
  itemCopy = item;
}

- (id)menuSections
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2154BDB20;
  selfCopy = self;
  *(v3 + 32) = sub_2153A5D30();

  sub_2153A7284();
  v5 = sub_2154A1F3C();

  return v5;
}

- (id)makeMenu
{
  type metadata accessor for TableActionMenu();
  sub_2153A6F0C();
  selfCopy = self;
  v4 = sub_21549F4FC();

  return v4;
}

- (ICTableActionMenu)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end