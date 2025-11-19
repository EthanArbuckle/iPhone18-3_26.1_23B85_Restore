@interface CPUIFocusEffectView.RingView
- (_TtCE9CarPlayUICSo19CPUIFocusEffectViewP33_59948616FF201015BD314B4BA8C542B48RingView)initWithCoder:(id)a3;
- (_TtCE9CarPlayUICSo19CPUIFocusEffectViewP33_59948616FF201015BD314B4BA8C542B48RingView)initWithFrame:(CGRect)a3;
- (void)tintColorDidChange;
@end

@implementation CPUIFocusEffectView.RingView

- (_TtCE9CarPlayUICSo19CPUIFocusEffectViewP33_59948616FF201015BD314B4BA8C542B48RingView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)tintColorDidChange
{
  v6 = self;
  v2 = [(CPUIFocusEffectView.RingView *)v6 layer];
  v3 = [(CPUIFocusEffectView.RingView *)v6 tintColor];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 CGColor];

    [v2 setBorderColor_];
  }

  else
  {
    __break(1u);
  }
}

- (_TtCE9CarPlayUICSo19CPUIFocusEffectViewP33_59948616FF201015BD314B4BA8C542B48RingView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end