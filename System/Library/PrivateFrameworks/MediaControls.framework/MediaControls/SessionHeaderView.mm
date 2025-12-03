@interface SessionHeaderView
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)isHighlighted;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
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

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5 = type metadata accessor for SessionHeaderView(0);
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isHighlighted = [(SessionHeaderView *)&v9 isHighlighted];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(SessionHeaderView *)&v8 setHighlighted:highlightedCopy];
  sub_1A22C9A9C(isHighlighted);
}

- (void)dealloc
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_titleLabel);
  selfCopy = self;
  [v2 setMarqueeRunning_];
  [*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_subtitleLabel) setMarqueeRunning_];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for SessionHeaderView(0);
  [(SessionHeaderView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1A22CA18C();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
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

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  v6 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.isa) + 0xC8);
  touchCopy = touch;
  selfCopy = self;
  eventCopy = event;
  v6(v13);
  sub_1A22CC9A0(v13);
  if (v13[0])
  {
    v10 = 0;
  }

  else
  {
    v12.receiver = selfCopy;
    v12.super_class = type metadata accessor for SessionHeaderView(0);
    v10 = [(SessionHeaderView *)&v12 beginTrackingWithTouch:touchCopy withEvent:eventCopy];
  }

  return v10;
}

- (void)updateContentSizeCategory
{
  selfCopy = self;
  sub_1A22CB5E0();
}

- (void)updateVisualStyling
{
  selfCopy = self;
  sub_1A22CB86C();
}

@end