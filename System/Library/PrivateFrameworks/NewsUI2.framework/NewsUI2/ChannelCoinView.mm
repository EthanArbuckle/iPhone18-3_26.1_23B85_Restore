@interface ChannelCoinView
- (unint64_t)accessibilityTraits;
- (void)setAccessibilityTraits:(unint64_t)traits;
@end

@implementation ChannelCoinView

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  accessibilityTraits = [(ChannelCoinView *)&v7 accessibilityTraits];
  v4 = *MEMORY[0x277D76548];

  if ((v4 & ~accessibilityTraits) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

- (void)setAccessibilityTraits:(unint64_t)traits
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(ChannelCoinView *)&v4 setAccessibilityTraits:traits];
}

@end