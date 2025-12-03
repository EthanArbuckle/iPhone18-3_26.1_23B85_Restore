@interface SystemApertureInCallWaveformTrailingView
- (CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)frame;
@end

@implementation SystemApertureInCallWaveformTrailingView

- (CGRect)frame
{
  selfCopy = self;
  SystemApertureInCallWaveformTrailingView.frame.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  selfCopy = self;
  SystemApertureInCallWaveformTrailingView.frame.setter();
}

- (void)layoutSubviews
{
  selfCopy = self;
  SystemApertureInCallWaveformTrailingView.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  SystemApertureInCallWaveformTrailingView.sizeThatFits(_:)(__PAIR128__(v5, v4));

  v6 = 43.0;
  v7 = 19.0;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode
{
  selfCopy = self;
  SystemApertureInCallWaveformTrailingView.sizeThatFits(_:for:)();
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end