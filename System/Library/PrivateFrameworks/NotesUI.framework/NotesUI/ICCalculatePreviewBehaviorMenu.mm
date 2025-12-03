@interface ICCalculatePreviewBehaviorMenu
- (ICCalculatePreviewBehaviorMenu)init;
- (ICCalculatePreviewBehaviorMenu)initWithNote:(id)note isMathEnabled:(BOOL)enabled;
- (ICNote)note;
- (id)makeMenu;
@end

@implementation ICCalculatePreviewBehaviorMenu

- (ICNote)note
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (ICCalculatePreviewBehaviorMenu)initWithNote:(id)note isMathEnabled:(BOOL)enabled
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___ICCalculatePreviewBehaviorMenu_allBehaviors) = &unk_1F4F8C128;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *(self + OBJC_IVAR___ICCalculatePreviewBehaviorMenu_isMathEnabled) = enabled;
  v7.receiver = self;
  v7.super_class = ICCalculatePreviewBehaviorMenu;
  return [(ICCalculatePreviewBehaviorMenu *)&v7 init];
}

- (id)makeMenu
{
  selfCopy = self;
  v3 = ICCalculatePreviewBehaviorMenu.makeMenu()();

  return v3;
}

- (ICCalculatePreviewBehaviorMenu)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end