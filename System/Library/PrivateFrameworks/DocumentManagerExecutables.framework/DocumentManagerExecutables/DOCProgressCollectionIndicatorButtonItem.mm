@interface DOCProgressCollectionIndicatorButtonItem
- (BOOL)isActivePopoverSource;
- (_TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem)init;
- (void)progressIndicatorViewDidReceiveTap:(id)tap;
- (void)setIsActivePopoverSource:(BOOL)source;
@end

@implementation DOCProgressCollectionIndicatorButtonItem

- (void)progressIndicatorViewDidReceiveTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  DOCProgressCollectionIndicatorButtonItem.progressIndicatorViewDidReceiveTap(_:)(tapCopy);
}

- (BOOL)isActivePopoverSource
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_isActivePopoverSource;
  swift_beginAccess();
  return *(&self->super.super.super.super.isa + v3);
}

- (void)setIsActivePopoverSource:(BOOL)source
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_isActivePopoverSource;
  swift_beginAccess();
  *(&self->super.super.super.super.isa + v5) = source;
  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_containerView);
  v6[OBJC_IVAR____TtCC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItemP33_B63CAF900B351F60B6673B49E171E6A025ProgressItemContainerView_isActivePopoverSource] = source;
  [v6 setNeedsLayout];
}

- (_TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end