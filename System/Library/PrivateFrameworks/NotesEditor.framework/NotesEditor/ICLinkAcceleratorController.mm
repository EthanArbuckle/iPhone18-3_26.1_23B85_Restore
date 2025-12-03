@interface ICLinkAcceleratorController
- (BOOL)handleArrowDown;
- (BOOL)handleArrowUp;
- (BOOL)handleUseCurrentSuggestion;
- (BOOL)isShowing;
- (ICLinkAcceleratorController)init;
- (void)didSelectAutocompleteItem:(id)item;
- (void)hideAccelerator;
- (void)presentLinkAcceleratorIfNecessaryWithCompletionHandler:(id)handler;
- (void)setIsShowing:(BOOL)showing;
- (void)updateAcceleratorOriginWith:(CGRect)with;
@end

@implementation ICLinkAcceleratorController

- (BOOL)isShowing
{
  v3 = OBJC_IVAR___ICLinkAcceleratorController_isShowing;
  swift_beginAccess();
  return *(self + v3);
}

- (void)presentLinkAcceleratorIfNecessaryWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2154A202C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2154BF990;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2154BECA0;
  v12[5] = v11;
  selfCopy = self;
  sub_2153717B8(0, 0, v7, &unk_2154BEDB0, v12);
}

- (void)setIsShowing:(BOOL)showing
{
  v5 = OBJC_IVAR___ICLinkAcceleratorController_isShowing;
  swift_beginAccess();
  *(self + v5) = showing;
}

- (void)updateAcceleratorOriginWith:(CGRect)with
{
  height = with.size.height;
  width = with.size.width;
  y = with.origin.y;
  x = with.origin.x;
  v7 = *((*MEMORY[0x277D85000] & **(self + OBJC_IVAR___ICLinkAcceleratorController_viewController)) + 0xF0);
  selfCopy = self;
  v7(x, y, width, height);
}

- (void)didSelectAutocompleteItem:(id)item
{
  v5 = sub_21549E93C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  itemCopy = item;
  selfCopy = self;
  sub_21549E8AC();
  if (sub_21549E8CC())
  {
    sub_21536FCCC();
  }

  else
  {
    sub_2153704B0();
  }

  (*(v6 + 8))(v8, v5);
}

- (BOOL)handleArrowUp
{
  v2 = *((*MEMORY[0x277D85000] & **(self + OBJC_IVAR___ICLinkAcceleratorController_viewController)) + 0x128);
  selfCopy = self;
  v4 = v2();

  return v4 & 1;
}

- (BOOL)handleArrowDown
{
  v2 = *((*MEMORY[0x277D85000] & **(self + OBJC_IVAR___ICLinkAcceleratorController_viewController)) + 0x110);
  selfCopy = self;
  v4 = v2();

  return v4 & 1;
}

- (BOOL)handleUseCurrentSuggestion
{
  selfCopy = self;
  v3 = LinkAcceleratorController.handleUseCurrentSuggestion()();

  return v3;
}

- (void)hideAccelerator
{
  selfCopy = self;
  LinkAcceleratorController.hideAccelerator()();
}

- (ICLinkAcceleratorController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end