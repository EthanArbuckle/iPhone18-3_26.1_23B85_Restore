@interface DOCProgressIndicatorView
- (_TtC26DocumentManagerExecutables24DOCProgressIndicatorView)initWithFrame:(CGRect)frame;
- (double)fractionCompleted;
- (void)setFractionCompleted:(double)completed;
@end

@implementation DOCProgressIndicatorView

- (double)fractionCompleted
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_fractionCompleted;
  swift_beginAccess();
  return *(&self->super.super.super.super.isa + v3);
}

- (void)setFractionCompleted:(double)completed
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCProgressIndicatorView_fractionCompleted;
  swift_beginAccess();
  *(&self->super.super.super.super.isa + v5) = completed;
  selfCopy = self;
  DOCProgressIndicatorView.fractionCompleted.didset();
}

- (_TtC26DocumentManagerExecutables24DOCProgressIndicatorView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end