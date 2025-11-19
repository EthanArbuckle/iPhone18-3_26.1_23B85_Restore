@interface AddedBookmarkToastInteractionView
- (_TtC14MobileSafariUI33AddedBookmarkToastInteractionView)initWithFrame:(CGRect)a3;
- (void)_hyperGestureInteractionDidBegin:(id)a3;
- (void)_hyperGestureInteractionDidEnd:(id)a3;
- (void)_hyperGestureUpdateStateForInteractionEnded:(id)a3;
- (void)_hyperInteractorApplyPresentationPoint:(id)a3;
- (void)layoutSubviews;
@end

@implementation AddedBookmarkToastInteractionView

- (void)layoutSubviews
{
  v2 = self;
  sub_215A42EC8();
}

- (_TtC14MobileSafariUI33AddedBookmarkToastInteractionView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)_hyperInteractorApplyPresentationPoint:(id)a3
{
  v3 = self;
  [(AddedBookmarkToastInteractionView *)v3 setNeedsLayout];
  [(AddedBookmarkToastInteractionView *)v3 layoutIfNeeded];
}

- (void)_hyperGestureUpdateStateForInteractionEnded:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_215A435E4(v4);
}

- (void)_hyperGestureInteractionDidBegin:(id)a3
{
  v4 = self + OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 8);
    v8 = self;
    v7(ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (void)_hyperGestureInteractionDidEnd:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_215A43A2C();
}

@end