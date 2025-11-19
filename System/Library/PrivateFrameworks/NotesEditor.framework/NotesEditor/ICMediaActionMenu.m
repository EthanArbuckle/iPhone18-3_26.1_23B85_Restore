@interface ICMediaActionMenu
+ (ICMediaActionMenu)menuWithIsCameraAvailable:(BOOL)a3 isLiveTextAvailable:(BOOL)a4 isPasswordProtected:(BOOL)a5 isInSecureScreen:(BOOL)a6 presentingViewController:(id)a7 presentingBarButtonItem:(id)a8 presentingSourceView:(id)a9 deferredChildren:(BOOL)a10 sidecarMenuController:(id)a11 completion:(id)a12;
+ (ICMediaActionMenu)menuWithIsPasswordProtected:(BOOL)a3 isInSecureScreen:(BOOL)a4 presentingViewController:(id)a5 presentingBarButtonItem:(id)a6 presentingSourceView:(id)a7 sidecarMenuController:(id)a8 completion:(id)aBlock;
- (BOOL)hasSidecarMenuItems;
- (ICMediaActionMenu)init;
- (ICMediaActionMenu)initWithIsCameraAvailable:(BOOL)a3 isLiveTextAvailable:(BOOL)a4 isPasswordProtected:(BOOL)a5 isInSecureScreen:(BOOL)a6 presentingViewController:(id)a7 presentingBarButtonItem:(id)a8 presentingSourceView:(id)a9 sidecarMenuController:(id)a10 completion:(id)aBlock;
- (ICMediaActionMenu)initWithIsPasswordProtected:(BOOL)a3 isInSecureScreen:(BOOL)a4 presentingViewController:(id)a5 presentingBarButtonItem:(id)a6 presentingSourceView:(id)a7 sidecarMenuController:(id)a8 completion:(id)aBlock;
- (UIBarButtonItem)presentingBarButtonItem;
- (id)completion;
- (id)makeMenu;
- (id)menuSections;
- (void)setCompletion:(id)a3;
- (void)setPresentingBarButtonItem:(id)a3;
- (void)willShowMenu;
@end

@implementation ICMediaActionMenu

- (ICMediaActionMenu)initWithIsPasswordProtected:(BOOL)a3 isInSecureScreen:(BOOL)a4 presentingViewController:(id)a5 presentingBarButtonItem:(id)a6 presentingSourceView:(id)a7 sidecarMenuController:(id)a8 completion:(id)aBlock
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

  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  return MediaActionMenu.init(isPasswordProtected:isInSecureScreen:presentingViewController:presentingBarButtonItem:presentingSourceView:sidecarMenuController:completion:)(a3, a4, v17, a6, a7, a8, v15, v16);
}

- (ICMediaActionMenu)initWithIsCameraAvailable:(BOOL)a3 isLiveTextAvailable:(BOOL)a4 isPasswordProtected:(BOOL)a5 isInSecureScreen:(BOOL)a6 presentingViewController:(id)a7 presentingBarButtonItem:(id)a8 presentingSourceView:(id)a9 sidecarMenuController:(id)a10 completion:(id)aBlock
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

  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v20 = sub_2151BD580(a3, a4, a5, a6, v16, a8, a9, a10, v14, v15);
  sub_2151AF750(v14);

  return v20;
}

- (id)makeMenu
{
  type metadata accessor for MediaActionMenu();
  sub_2151BD978();
  v3 = self;
  v4 = sub_21549F4FC();

  return v4;
}

- (BOOL)hasSidecarMenuItems
{
  v2 = self;
  v3 = sub_215377544();

  return v3 & 1;
}

+ (ICMediaActionMenu)menuWithIsCameraAvailable:(BOOL)a3 isLiveTextAvailable:(BOOL)a4 isPasswordProtected:(BOOL)a5 isInSecureScreen:(BOOL)a6 presentingViewController:(id)a7 presentingBarButtonItem:(id)a8 presentingSourceView:(id)a9 deferredChildren:(BOOL)a10 sidecarMenuController:(id)a11 completion:(id)a12
{
  v15 = _Block_copy(a12);
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

  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a11;
  v21 = sub_215379CD4(a3, a4, a5, a6, v17, a8, a9, a10, a11, v15, v16);
  sub_2151AF750(v15);

  return v21;
}

+ (ICMediaActionMenu)menuWithIsPasswordProtected:(BOOL)a3 isInSecureScreen:(BOOL)a4 presentingViewController:(id)a5 presentingBarButtonItem:(id)a6 presentingSourceView:(id)a7 sidecarMenuController:(id)a8 completion:(id)aBlock
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

  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = _s11NotesEditor15MediaActionMenuC4menu19isPasswordProtected0G14InSecureScreen24presentingViewController0M13BarButtonItem0m6SourceN007sidecareO010completionSo6UIMenuCSb_SbSo06UIViewO0CSo05UIBarqR0CSgSo0W0CSgAA013SidecarInserteO0CSgySb_SStcSgtFZ_0(a3, a4, v16, a6, a7, a8, v14, v15);
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

- (void)setCompletion:(id)a3
{
  v4 = _Block_copy(a3);
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
  v8 = self;
  sub_2151AF750(v7);
}

- (UIBarButtonItem)presentingBarButtonItem
{
  v3 = OBJC_IVAR___ICMediaActionMenu_presentingBarButtonItem;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPresentingBarButtonItem:(id)a3
{
  v5 = OBJC_IVAR___ICMediaActionMenu_presentingBarButtonItem;
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