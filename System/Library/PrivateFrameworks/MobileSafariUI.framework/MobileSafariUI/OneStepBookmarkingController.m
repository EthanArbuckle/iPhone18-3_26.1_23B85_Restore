@interface OneStepBookmarkingController
- (OneStepBookmarkingController)init;
- (OneStepBookmarkingController)initWithCurrentTabProvider:(id)a3;
- (_SFSyntheticBookmarkProvider)syntheticBookmarkProvider;
- (id)currentTabProvider;
- (id)didSaveBookmark;
- (void)configureOneStepBookmarkingButton:(id)a3;
- (void)setDidSaveBookmark:(id)a3;
@end

@implementation OneStepBookmarkingController

- (OneStepBookmarkingController)initWithCurrentTabProvider:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR___OneStepBookmarkingController_didSaveBookmark);
  *v6 = CGSizeMake;
  v6[1] = 0;
  swift_unknownObjectWeakInit();
  v7 = (self + OBJC_IVAR___OneStepBookmarkingController_currentTabProvider);
  *v7 = sub_215A180DC;
  v7[1] = v5;
  v9.receiver = self;
  v9.super_class = OneStepBookmarkingController;
  return [(OneStepBookmarkingController *)&v9 init];
}

- (id)currentTabProvider
{
  v2 = *(self + OBJC_IVAR___OneStepBookmarkingController_currentTabProvider + 8);
  v5[4] = *(self + OBJC_IVAR___OneStepBookmarkingController_currentTabProvider);
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_215A16278;
  v5[3] = &block_descriptor_25;
  v3 = _Block_copy(v5);

  return v3;
}

- (id)didSaveBookmark
{
  v2 = *(self + OBJC_IVAR___OneStepBookmarkingController_didSaveBookmark + 8);
  v5[4] = *(self + OBJC_IVAR___OneStepBookmarkingController_didSaveBookmark);
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_215A16500;
  v5[3] = &block_descriptor_22;
  v3 = _Block_copy(v5);

  return v3;
}

- (void)setDidSaveBookmark:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR___OneStepBookmarkingController_didSaveBookmark);
  *v6 = sub_215A180C4;
  v6[1] = v5;
}

- (_SFSyntheticBookmarkProvider)syntheticBookmarkProvider
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)configureOneStepBookmarkingButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_215A16650(v4);
}

- (OneStepBookmarkingController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end