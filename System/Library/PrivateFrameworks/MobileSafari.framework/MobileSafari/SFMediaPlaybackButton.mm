@interface SFMediaPlaybackButton
- (BOOL)isHighlighted;
- (SFMediaPlaybackButton)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)updateHighlightIndicator;
@end

@implementation SFMediaPlaybackButton

- (void)updateHighlightIndicator
{
  selfCopy = self;
  sub_18BABBEEC();
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MediaPlaybackButton();
  return [(SFMediaPlaybackButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = type metadata accessor for MediaPlaybackButton();
  v4 = v5.receiver;
  [(SFMediaPlaybackButton *)&v5 setHighlighted:highlightedCopy];
  sub_18BABC11C();
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for MediaPlaybackButton();
  v2 = v5.receiver;
  [(SFMediaPlaybackButton *)&v5 layoutSubviews];
  v3 = OBJC_IVAR___SFMediaPlaybackButton_highlightIndicatorView;
  layer = [*&v2[OBJC_IVAR___SFMediaPlaybackButton_highlightIndicatorView] layer];
  [*&v2[v3] bounds];
  [layer setCornerRadius_];
}

- (SFMediaPlaybackButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end