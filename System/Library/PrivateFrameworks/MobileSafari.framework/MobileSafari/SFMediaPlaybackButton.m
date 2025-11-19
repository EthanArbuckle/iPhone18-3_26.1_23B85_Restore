@interface SFMediaPlaybackButton
- (BOOL)isHighlighted;
- (SFMediaPlaybackButton)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)updateHighlightIndicator;
@end

@implementation SFMediaPlaybackButton

- (void)updateHighlightIndicator
{
  v2 = self;
  sub_18BABBEEC();
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MediaPlaybackButton();
  return [(SFMediaPlaybackButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for MediaPlaybackButton();
  v4 = v5.receiver;
  [(SFMediaPlaybackButton *)&v5 setHighlighted:v3];
  sub_18BABC11C();
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for MediaPlaybackButton();
  v2 = v5.receiver;
  [(SFMediaPlaybackButton *)&v5 layoutSubviews];
  v3 = OBJC_IVAR___SFMediaPlaybackButton_highlightIndicatorView;
  v4 = [*&v2[OBJC_IVAR___SFMediaPlaybackButton_highlightIndicatorView] layer];
  [*&v2[v3] bounds];
  [v4 setCornerRadius_];
}

- (SFMediaPlaybackButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end