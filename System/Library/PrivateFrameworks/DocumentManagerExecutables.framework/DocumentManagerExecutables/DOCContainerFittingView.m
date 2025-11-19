@interface DOCContainerFittingView
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3;
- (_TtC26DocumentManagerExecutables23DOCContainerFittingView)initWithCoder:(id)a3;
- (_TtC26DocumentManagerExecutables23DOCContainerFittingView)initWithFrame:(CGRect)a3;
- (double)contentOffsetFromTop;
- (void)layoutSubviews;
- (void)setContentOffsetFromTop:(double)a3;
@end

@implementation DOCContainerFittingView

- (double)contentOffsetFromTop
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_contentOffsetFromTop;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setContentOffsetFromTop:(double)a3
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_contentOffsetFromTop;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
}

- (void)layoutSubviews
{
  v2 = self;
  DOCContainerFittingView.layoutSubviews()();
}

- (_TtC26DocumentManagerExecutables23DOCContainerFittingView)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_fittingSize);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_preventContentOffsetUpdates) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_contentOffsetFromTop) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCContainerFittingView_observationContext) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x78);
  v3 = self;
  v4 = v2();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3
{
  v3 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x78);
  v4 = self;
  v5 = v3();
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (_TtC26DocumentManagerExecutables23DOCContainerFittingView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end