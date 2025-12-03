@interface CPUIFocusEffectView.RingView
- (_TtCE9CarPlayUICSo19CPUIFocusEffectViewP33_59948616FF201015BD314B4BA8C542B48RingView)initWithCoder:(id)coder;
- (_TtCE9CarPlayUICSo19CPUIFocusEffectViewP33_59948616FF201015BD314B4BA8C542B48RingView)initWithFrame:(CGRect)frame;
- (void)tintColorDidChange;
@end

@implementation CPUIFocusEffectView.RingView

- (_TtCE9CarPlayUICSo19CPUIFocusEffectViewP33_59948616FF201015BD314B4BA8C542B48RingView)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)tintColorDidChange
{
  selfCopy = self;
  layer = [(CPUIFocusEffectView.RingView *)selfCopy layer];
  tintColor = [(CPUIFocusEffectView.RingView *)selfCopy tintColor];
  if (tintColor)
  {
    v4 = tintColor;
    cGColor = [tintColor CGColor];

    [layer setBorderColor_];
  }

  else
  {
    __break(1u);
  }
}

- (_TtCE9CarPlayUICSo19CPUIFocusEffectViewP33_59948616FF201015BD314B4BA8C542B48RingView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end