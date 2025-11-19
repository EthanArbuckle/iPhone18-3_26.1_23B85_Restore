@interface IncomingCallCombinedSubtitleBadgeView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation IncomingCallCombinedSubtitleBadgeView

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = IncomingCallCombinedSubtitleBadgeView.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  IncomingCallCombinedSubtitleBadgeView.layoutSubviews()();
}

@end