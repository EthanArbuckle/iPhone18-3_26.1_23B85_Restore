@interface CCUIControlTemplateView.ButtonGlyphWrapperView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtCE18ControlCenterUIKitCSo23CCUIControlTemplateViewP33_879E0E7CB08486FFF84F986CA934EC6922ButtonGlyphWrapperView)initWithCoder:(id)coder;
- (_TtCE18ControlCenterUIKitCSo23CCUIControlTemplateViewP33_879E0E7CB08486FFF84F986CA934EC6922ButtonGlyphWrapperView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation CCUIControlTemplateView.ButtonGlyphWrapperView

- (_TtCE18ControlCenterUIKitCSo23CCUIControlTemplateViewP33_879E0E7CB08486FFF84F986CA934EC6922ButtonGlyphWrapperView)initWithCoder:(id)coder
{
  result = sub_1D16CC694();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(CCUIControlTemplateView.ButtonGlyphWrapperView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtCE18ControlCenterUIKitCSo23CCUIControlTemplateViewP33_879E0E7CB08486FFF84F986CA934EC6922ButtonGlyphWrapperView_wrappedView];
  [v2 bounds];
  [v3 setFrame_];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtCE18ControlCenterUIKitCSo23CCUIControlTemplateViewP33_879E0E7CB08486FFF84F986CA934EC6922ButtonGlyphWrapperView_wrappedView) sizeThatFits_];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtCE18ControlCenterUIKitCSo23CCUIControlTemplateViewP33_879E0E7CB08486FFF84F986CA934EC6922ButtonGlyphWrapperView_wrappedView) intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtCE18ControlCenterUIKitCSo23CCUIControlTemplateViewP33_879E0E7CB08486FFF84F986CA934EC6922ButtonGlyphWrapperView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end