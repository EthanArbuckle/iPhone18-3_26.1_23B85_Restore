@interface ICTableActionMenu
+ (ICTableActionMenu)menuWithTableAttachmentViewController:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 completion:(id)a6;
+ (ICTableActionMenu)menuWithTableAttachmentViewController:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 deferredChildren:(BOOL)a6 completion:(id)a7;
- (ICTableActionMenu)init;
- (ICTableActionMenu)initWithTableAttachmentViewController:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 completion:(id)a6;
- (UIBarButtonItem)presentingBarButtonItem;
- (id)completion;
- (id)makeMenu;
- (id)menuSections;
- (void)setCompletion:(id)a3;
- (void)setPresentingBarButtonItem:(id)a3;
@end

@implementation ICTableActionMenu

- (ICTableActionMenu)initWithTableAttachmentViewController:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
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

  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = sub_2153A6A9C(a3, v12, a5, v9, v10);
  sub_2151AF750(v9);

  return v14;
}

+ (ICTableActionMenu)menuWithTableAttachmentViewController:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 deferredChildren:(BOOL)a6 completion:(id)a7
{
  v7 = a6;
  v11 = _Block_copy(a7);
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

  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = _s11NotesEditor15TableActionMenuC4menu29tableAttachmentViewController010presentingiJ00K13BarButtonItem16deferredChildren10completionSo6UIMenuCSo07ICTablehiJ0CSg_So06UIViewJ0CSo05UIBarmN0CSgSbySb_SStcSgtFZ_0(a3, v14, a5, v7, v11, v12);
  sub_2151AF750(v11);

  return v16;
}

+ (ICTableActionMenu)menuWithTableAttachmentViewController:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
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

  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = _s11NotesEditor15TableActionMenuC4menu29tableAttachmentViewController010presentingiJ00K13BarButtonItem10completionSo6UIMenuCSo07ICTablehiJ0CSg_So06UIViewJ0CSo05UIBarmN0CSgySb_SStcSgtFZ_0(a3, v12, a5, v9, v10);
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

- (void)setCompletion:(id)a3
{
  v4 = _Block_copy(a3);
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
  v8 = self;
  sub_2151AF750(v7);
}

- (UIBarButtonItem)presentingBarButtonItem
{
  v3 = OBJC_IVAR___ICTableActionMenu_presentingBarButtonItem;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPresentingBarButtonItem:(id)a3
{
  v5 = OBJC_IVAR___ICTableActionMenu_presentingBarButtonItem;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (id)menuSections
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2154BDB20;
  v4 = self;
  *(v3 + 32) = sub_2153A5D30();

  sub_2153A7284();
  v5 = sub_2154A1F3C();

  return v5;
}

- (id)makeMenu
{
  type metadata accessor for TableActionMenu();
  sub_2153A6F0C();
  v3 = self;
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