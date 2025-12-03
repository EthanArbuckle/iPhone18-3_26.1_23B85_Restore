@interface CKTapbackAttributionView
- (CGSize)estimatedAttributionViewDismissalSizeForAnimationController:(id)controller;
- (_TtC7ChatKit24CKTapbackAttributionView)initWithCoder:(id)coder;
- (_TtC7ChatKit24CKTapbackAttributionView)initWithFrame:(CGRect)frame;
- (_TtP7ChatKit32CKTapbackAttributionViewDelegate_)delegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)dismiss;
- (void)layoutSubviews;
- (void)present;
- (void)tapbackAttributionViewModel:(id)model didTapToSaveSticker:(id)sticker;
@end

@implementation CKTapbackAttributionView

- (_TtP7ChatKit32CKTapbackAttributionViewDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC7ChatKit24CKTapbackAttributionView)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC7ChatKit24CKTapbackAttributionView_hostedView) = 0;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_190CE5E38();
}

- (void)present
{
  selfCopy = self;
  sub_190CE5F4C();
}

- (void)dismiss
{
  selfCopy = self;
  sub_190CE5FB4();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_190CE6118(event, x, y);

  return v10;
}

- (_TtC7ChatKit24CKTapbackAttributionView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)tapbackAttributionViewModel:(id)model didTapToSaveSticker:(id)sticker
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong tapbackAttributionView:self didTapToSaveSticker:sticker];
    swift_unknownObjectRelease();
  }
}

- (CGSize)estimatedAttributionViewDismissalSizeForAnimationController:(id)controller
{
  v4 = *(self + OBJC_IVAR____TtC7ChatKit24CKTapbackAttributionView_viewModel);
  swift_getKeyPath();
  sub_190CE6654(&qword_1EAD56B18, type metadata accessor for TapbackAttributionViewModel);
  selfCopy = self;
  sub_190D51C20();

  v6 = *(v4 + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__measuredContentSize);
  [(CKTapbackAttributionView *)selfCopy bounds];
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end