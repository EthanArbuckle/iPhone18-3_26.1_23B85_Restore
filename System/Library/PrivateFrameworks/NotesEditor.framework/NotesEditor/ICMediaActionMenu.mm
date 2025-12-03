@interface ICMediaActionMenu
+ (ICMediaActionMenu)menuWithIsCameraAvailable:(BOOL)available isLiveTextAvailable:(BOOL)textAvailable isPasswordProtected:(BOOL)protected isInSecureScreen:(BOOL)screen presentingViewController:(id)controller presentingBarButtonItem:(id)item presentingSourceView:(id)view deferredChildren:(BOOL)self0 sidecarMenuController:(id)self1 completion:(id)self2;
+ (ICMediaActionMenu)menuWithIsPasswordProtected:(BOOL)protected isInSecureScreen:(BOOL)screen presentingViewController:(id)controller presentingBarButtonItem:(id)item presentingSourceView:(id)view sidecarMenuController:(id)menuController completion:(id)aBlock;
- (BOOL)hasSidecarMenuItems;
- (ICMediaActionMenu)init;
- (ICMediaActionMenu)initWithIsCameraAvailable:(BOOL)available isLiveTextAvailable:(BOOL)textAvailable isPasswordProtected:(BOOL)protected isInSecureScreen:(BOOL)screen presentingViewController:(id)controller presentingBarButtonItem:(id)item presentingSourceView:(id)view sidecarMenuController:(id)self0 completion:(id)aBlock;
- (ICMediaActionMenu)initWithIsPasswordProtected:(BOOL)protected isInSecureScreen:(BOOL)screen presentingViewController:(id)controller presentingBarButtonItem:(id)item presentingSourceView:(id)view sidecarMenuController:(id)menuController completion:(id)aBlock;
- (UIBarButtonItem)presentingBarButtonItem;
- (id)completion;
- (id)makeMenu;
- (id)menuSections;
- (void)setCompletion:(id)completion;
- (void)setPresentingBarButtonItem:(id)item;
- (void)willShowMenu;
@end

@implementation ICMediaActionMenu

- (ICMediaActionMenu)initWithIsPasswordProtected:(BOOL)protected isInSecureScreen:(BOOL)screen presentingViewController:(id)controller presentingBarButtonItem:(id)item presentingSourceView:(id)view sidecarMenuController:(id)menuController completion:(id)aBlock
{
  v15 = _Block_copy(aBlock);
  if (v15)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    v15 = sub_21537A5D4;
  }

  else
  {
    v16 = 0;
  }

  controllerCopy = controller;
  itemCopy = item;
  viewCopy = view;
  menuControllerCopy = menuController;
  return MediaActionMenu.init(isPasswordProtected:isInSecureScreen:presentingViewController:presentingBarButtonItem:presentingSourceView:sidecarMenuController:completion:)(protected, screen, controllerCopy, item, view, menuController, v15, v16);
}

- (ICMediaActionMenu)initWithIsCameraAvailable:(BOOL)available isLiveTextAvailable:(BOOL)textAvailable isPasswordProtected:(BOOL)protected isInSecureScreen:(BOOL)screen presentingViewController:(id)controller presentingBarButtonItem:(id)item presentingSourceView:(id)view sidecarMenuController:(id)self0 completion:(id)aBlock
{
  v14 = _Block_copy(aBlock);
  if (v14)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    v14 = sub_21537A5D4;
  }

  else
  {
    v15 = 0;
  }

  controllerCopy = controller;
  itemCopy = item;
  viewCopy = view;
  menuControllerCopy = menuController;
  v20 = sub_2151BD580(available, textAvailable, protected, screen, controllerCopy, item, view, menuController, v14, v15);
  sub_2151AF750(v14);

  return v20;
}

- (id)makeMenu
{
  type metadata accessor for MediaActionMenu();
  sub_2151BD978();
  selfCopy = self;
  v4 = sub_21549F4FC();

  return v4;
}

- (BOOL)hasSidecarMenuItems
{
  selfCopy = self;
  v3 = sub_215377544();

  return v3 & 1;
}

+ (ICMediaActionMenu)menuWithIsCameraAvailable:(BOOL)available isLiveTextAvailable:(BOOL)textAvailable isPasswordProtected:(BOOL)protected isInSecureScreen:(BOOL)screen presentingViewController:(id)controller presentingBarButtonItem:(id)item presentingSourceView:(id)view deferredChildren:(BOOL)self0 sidecarMenuController:(id)self1 completion:(id)self2
{
  v15 = _Block_copy(completion);
  if (v15)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    v15 = sub_21537A5D4;
  }

  else
  {
    v16 = 0;
  }

  controllerCopy = controller;
  itemCopy = item;
  viewCopy = view;
  menuControllerCopy = menuController;
  v21 = sub_215379CD4(available, textAvailable, protected, screen, controllerCopy, item, view, children, menuController, v15, v16);
  sub_2151AF750(v15);

  return v21;
}

+ (ICMediaActionMenu)menuWithIsPasswordProtected:(BOOL)protected isInSecureScreen:(BOOL)screen presentingViewController:(id)controller presentingBarButtonItem:(id)item presentingSourceView:(id)view sidecarMenuController:(id)menuController completion:(id)aBlock
{
  v14 = _Block_copy(aBlock);
  if (v14)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    v14 = sub_21537A5D4;
  }

  else
  {
    v15 = 0;
  }

  controllerCopy = controller;
  itemCopy = item;
  viewCopy = view;
  menuControllerCopy = menuController;
  v20 = _s11NotesEditor15MediaActionMenuC4menu19isPasswordProtected0G14InSecureScreen24presentingViewController0M13BarButtonItem0m6SourceN007sidecareO010completionSo6UIMenuCSb_SbSo06UIViewO0CSo05UIBarqR0CSgSo0W0CSgAA013SidecarInserteO0CSgySb_SStcSgtFZ_0(protected, screen, controllerCopy, item, view, menuController, v14, v15);
  sub_2151AF750(v14);

  return v20;
}

- (id)completion
{
  v2 = (self + OBJC_IVAR___ICMediaActionMenu_completion);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2153777F0;
    aBlock[3] = &block_descriptor_62;
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
    v4 = sub_21537A59C;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___ICMediaActionMenu_completion);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_2151AF750(v7);
}

- (UIBarButtonItem)presentingBarButtonItem
{
  v3 = OBJC_IVAR___ICMediaActionMenu_presentingBarButtonItem;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPresentingBarButtonItem:(id)item
{
  v5 = OBJC_IVAR___ICMediaActionMenu_presentingBarButtonItem;
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
  *(v3 + 32) = sub_21537876C();

  sub_2151A6C9C(0, &qword_281199650);
  v5 = sub_2154A1F3C();

  return v5;
}

- (void)willShowMenu
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      [v4 addNewNoteIfNeeded];
    }
  }
}

- (ICMediaActionMenu)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end