@interface CHUISControlIconView
- (CGSize)sizeThatFits:(CGSize)a3;
- (CHUISControlIconView)initWithCoder:(id)a3;
- (UIFont)font;
- (unint64_t)style;
- (void)layoutSubviews;
- (void)setFont:(id)a3;
- (void)setStyle:(unint64_t)a3;
@end

@implementation CHUISControlIconView

- (UIFont)font
{
  v3 = OBJC_IVAR___CHUISControlIconView_font;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setFont:(id)a3
{
  v5 = a3;
  v6 = self;
  CHUISControlIconView.font.setter(a3);
}

- (unint64_t)style
{
  v3 = type metadata accessor for ControlIconView(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v7 = OBJC_IVAR___CHUISControlIconView__controlIconView;
  swift_beginAccess();
  sub_1D92936FC(self + v7, v11);
  swift_dynamicCast();
  v8 = *&v6[*(v3 + 20)];
  sub_1D92D2EB0(v6);
  return v8;
}

- (void)setStyle:(unint64_t)a3
{
  v5 = type metadata accessor for ControlIconView(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v9 = OBJC_IVAR___CHUISControlIconView__controlIconView;
  swift_beginAccess();
  sub_1D92936FC(self + v9, v12);
  v10 = self;
  swift_dynamicCast();
  *&v8[*(v5 + 20)] = a3;
  sub_1D92D2694(v8);
}

- (CHUISControlIconView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___CHUISControlIconView_font) = 0;
  result = sub_1D9328534();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CHUISControlIconView;
  v2 = self;
  [(CHUISControlIconView *)&v4 layoutSubviews];
  v3 = *(&v2->super.super.super.isa + OBJC_IVAR___CHUISControlIconView__hostingView);
  [(CHUISControlIconView *)v2 bounds:v4.receiver];
  [v3 setFrame_];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [*(&self->super.super.super.isa + OBJC_IVAR___CHUISControlIconView__hostingView) sizeThatFits_];
  result.height = v4;
  result.width = v3;
  return result;
}

@end