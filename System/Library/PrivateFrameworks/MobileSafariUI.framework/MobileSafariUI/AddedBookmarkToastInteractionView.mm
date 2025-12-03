@interface AddedBookmarkToastInteractionView
- (_TtC14MobileSafariUI33AddedBookmarkToastInteractionView)initWithFrame:(CGRect)frame;
- (void)_hyperGestureInteractionDidBegin:(id)begin;
- (void)_hyperGestureInteractionDidEnd:(id)end;
- (void)_hyperGestureUpdateStateForInteractionEnded:(id)ended;
- (void)_hyperInteractorApplyPresentationPoint:(id)point;
- (void)layoutSubviews;
@end

@implementation AddedBookmarkToastInteractionView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_215A42EC8();
}

- (_TtC14MobileSafariUI33AddedBookmarkToastInteractionView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)_hyperInteractorApplyPresentationPoint:(id)point
{
  selfCopy = self;
  [(AddedBookmarkToastInteractionView *)selfCopy setNeedsLayout];
  [(AddedBookmarkToastInteractionView *)selfCopy layoutIfNeeded];
}

- (void)_hyperGestureUpdateStateForInteractionEnded:(id)ended
{
  endedCopy = ended;
  selfCopy = self;
  sub_215A435E4(endedCopy);
}

- (void)_hyperGestureInteractionDidBegin:(id)begin
{
  v4 = self + OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 8);
    selfCopy = self;
    v7(ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (void)_hyperGestureInteractionDidEnd:(id)end
{
  endCopy = end;
  selfCopy = self;
  sub_215A43A2C();
}

@end