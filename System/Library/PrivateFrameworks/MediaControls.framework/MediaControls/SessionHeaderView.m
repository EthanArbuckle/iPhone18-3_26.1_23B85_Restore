@interface SessionHeaderView
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)isHighlighted;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)updateContentSizeCategory;
- (void)updateVisualStyling;
@end

@implementation SessionHeaderView

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SessionHeaderView(0);
  return [(SessionHeaderView *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for SessionHeaderView(0);
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(SessionHeaderView *)&v9 isHighlighted];
  v8.receiver = v6;
  v8.super_class = v5;
  [(SessionHeaderView *)&v8 setHighlighted:v3];
  sub_1A22C9A9C(v7);
}

- (void)dealloc
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_titleLabel);
  v3 = self;
  [v2 setMarqueeRunning_];
  [*(&v3->super.super.super.super.isa + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_subtitleLabel) setMarqueeRunning_];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for SessionHeaderView(0);
  [(SessionHeaderView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1A22CA18C();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  sub_1A22CA69C();
  v6 = v5;
  sub_1A22CA69C();
  v8 = v7;

  v9 = v6 + v8;
  v10 = width;
  result.height = v9;
  result.width = v10;
  return result;
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.isa) + 0xC8);
  v7 = a3;
  v8 = self;
  v9 = a4;
  v6(v13);
  sub_1A22CC9A0(v13);
  if (v13[0])
  {
    v10 = 0;
  }

  else
  {
    v12.receiver = v8;
    v12.super_class = type metadata accessor for SessionHeaderView(0);
    v10 = [(SessionHeaderView *)&v12 beginTrackingWithTouch:v7 withEvent:v9];
  }

  return v10;
}

- (void)updateContentSizeCategory
{
  v2 = self;
  sub_1A22CB5E0();
}

- (void)updateVisualStyling
{
  v2 = self;
  sub_1A22CB86C();
}

@end