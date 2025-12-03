@interface IncomingCallCombinedSubtitleBadgeView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation IncomingCallCombinedSubtitleBadgeView

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = IncomingCallCombinedSubtitleBadgeView.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  IncomingCallCombinedSubtitleBadgeView.layoutSubviews()();
}

@end