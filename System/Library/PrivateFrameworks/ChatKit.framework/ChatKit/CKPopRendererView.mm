@interface CKPopRendererView
- (BOOL)playWithSourceView:(id)view;
- (CKPopRendererView)initWithFrame:(CGRect)frame;
- (CKPopRendererView)initWithFrame:(CGRect)frame device:(id)device;
- (CKPopRendererViewDelegate)delegate;
- (void)didMoveToWindow;
- (void)drawFrom:(id)from;
- (void)layoutSubviews;
- (void)setDelegate:(id)delegate;
@end

@implementation CKPopRendererView

- (CKPopRendererViewDelegate)delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  v5 = OBJC_IVAR___CKPopRendererView_delegate;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = delegate;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (CKPopRendererView)initWithFrame:(CGRect)frame device:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  swift_unknownObjectRetain();
  return PopRendererView.init(frame:device:)(device, x, y, width, height);
}

- (void)layoutSubviews
{
  selfCopy = self;
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

- (BOOL)playWithSourceView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_190B7A78C(viewCopy);

  return self & 1;
}

- (void)drawFrom:(id)from
{
  fromCopy = from;
  selfCopy = self;
  sub_190B7ADE4(fromCopy);
}

- (CKPopRendererView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end