@interface DOCProgressIndicatorView
- (_TtC26DocumentManagerExecutables24DOCProgressIndicatorView)initWithFrame:(CGRect)a3;
- (double)fractionCompleted;
- (void)setFractionCompleted:(double)a3;
@end

@implementation DOCProgressIndicatorView

- (double)fractionCompleted
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_fractionCompleted;
  swift_beginAccess();
  return *(&self->super.super.super.super.isa + v3);
}

- (void)setFractionCompleted:(double)a3
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_fractionCompleted;
  swift_beginAccess();
  *(&self->super.super.super.super.isa + v5) = a3;
  v6 = self;
  DOCProgressIndicatorView.fractionCompleted.didset();
}

- (_TtC26DocumentManagerExecutables24DOCProgressIndicatorView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end