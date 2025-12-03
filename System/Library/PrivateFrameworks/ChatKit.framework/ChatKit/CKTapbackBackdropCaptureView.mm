@interface CKTapbackBackdropCaptureView
- (_TtC7ChatKit28CKTapbackBackdropCaptureView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation CKTapbackBackdropCaptureView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for CKTapbackBackdropCaptureView();
  v2 = v4.receiver;
  [(CKTapbackBackdropCaptureView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC7ChatKit28CKTapbackBackdropCaptureView_backdropLayer];
  [v2 bounds];
  [v3 setFrame_];
}

- (_TtC7ChatKit28CKTapbackBackdropCaptureView)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC7ChatKit28CKTapbackBackdropCaptureView_backdropLayer;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(type metadata accessor for CKTapbackBackdropCaptureLayer()) init];
  result = sub_190D58510();
  __break(1u);
  return result;
}

@end