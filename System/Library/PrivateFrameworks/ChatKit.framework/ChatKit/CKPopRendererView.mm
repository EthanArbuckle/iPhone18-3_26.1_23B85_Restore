@interface CKPopRendererView
- (BOOL)playWithSourceView:(id)a3;
- (CKPopRendererView)initWithFrame:(CGRect)a3;
- (CKPopRendererView)initWithFrame:(CGRect)a3 device:(id)a4;
- (CKPopRendererViewDelegate)delegate;
- (void)didMoveToWindow;
- (void)drawFrom:(id)a3;
- (void)layoutSubviews;
- (void)setDelegate:(id)a3;
@end

@implementation CKPopRendererView

- (CKPopRendererViewDelegate)delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)a3
{
  v5 = OBJC_IVAR___CKPopRendererView_delegate;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (CKPopRendererView)initWithFrame:(CGRect)a3 device:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  swift_unknownObjectRetain();
  return PopRendererView.init(frame:device:)(a4, x, y, width, height);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_190B79FA0();
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PopRendererView();
  v2 = v3.receiver;
  [(CKPopRendererView *)&v3 didMoveToWindow];
  [v2 setNeedsLayout];
}

- (BOOL)playWithSourceView:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_190B7A78C(v4);

  return self & 1;
}

- (void)drawFrom:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_190B7ADE4(v4);
}

- (CKPopRendererView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end