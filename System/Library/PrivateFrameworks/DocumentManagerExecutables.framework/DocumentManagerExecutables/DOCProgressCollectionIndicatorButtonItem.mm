@interface DOCProgressCollectionIndicatorButtonItem
- (BOOL)isActivePopoverSource;
- (_TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem)init;
- (void)progressIndicatorViewDidReceiveTap:(id)a3;
- (void)setIsActivePopoverSource:(BOOL)a3;
@end

@implementation DOCProgressCollectionIndicatorButtonItem

- (void)progressIndicatorViewDidReceiveTap:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCProgressCollectionIndicatorButtonItem.progressIndicatorViewDidReceiveTap(_:)(v4);
}

- (BOOL)isActivePopoverSource
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_isActivePopoverSource;
  swift_beginAccess();
  return *(&self->super.super.super.super.isa + v3);
}

- (void)setIsActivePopoverSource:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_isActivePopoverSource;
  swift_beginAccess();
  *(&self->super.super.super.super.isa + v5) = a3;
  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_containerView);
  v6[OBJC_IVAR____TtCC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItemP33_B63CAF900B351F60B6673B49E171E6A025ProgressItemContainerView_isActivePopoverSource] = a3;
  [v6 setNeedsLayout];
}

- (_TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end