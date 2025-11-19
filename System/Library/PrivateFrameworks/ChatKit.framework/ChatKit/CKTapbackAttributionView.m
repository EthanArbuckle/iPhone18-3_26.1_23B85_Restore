@interface CKTapbackAttributionView
- (CGSize)estimatedAttributionViewDismissalSizeForAnimationController:(id)a3;
- (_TtC7ChatKit24CKTapbackAttributionView)initWithCoder:(id)a3;
- (_TtC7ChatKit24CKTapbackAttributionView)initWithFrame:(CGRect)a3;
- (_TtP7ChatKit32CKTapbackAttributionViewDelegate_)delegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)dismiss;
- (void)layoutSubviews;
- (void)present;
- (void)tapbackAttributionViewModel:(id)a3 didTapToSaveSticker:(id)a4;
@end

@implementation CKTapbackAttributionView

- (_TtP7ChatKit32CKTapbackAttributionViewDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC7ChatKit24CKTapbackAttributionView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC7ChatKit24CKTapbackAttributionView_hostedView) = 0;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_190CE5E38();
}

- (void)present
{
  v2 = self;
  sub_190CE5F4C();
}

- (void)dismiss
{
  v2 = self;
  sub_190CE5FB4();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_190CE6118(a4, x, y);

  return v10;
}

- (_TtC7ChatKit24CKTapbackAttributionView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)tapbackAttributionViewModel:(id)a3 didTapToSaveSticker:(id)a4
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong tapbackAttributionView:self didTapToSaveSticker:a4];
    swift_unknownObjectRelease();
  }
}

- (CGSize)estimatedAttributionViewDismissalSizeForAnimationController:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC7ChatKit24CKTapbackAttributionView_viewModel);
  swift_getKeyPath();
  sub_190CE6654(&qword_1EAD56B18, type metadata accessor for TapbackAttributionViewModel);
  v5 = self;
  sub_190D51C20();

  v6 = *(v4 + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__measuredContentSize);
  [(CKTapbackAttributionView *)v5 bounds];
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end