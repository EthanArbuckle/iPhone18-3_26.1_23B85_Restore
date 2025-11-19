@interface BundleHardPaywallView
- (CGRect)accessibilityFrame;
@end

@implementation BundleHardPaywallView

- (CGRect)accessibilityFrame
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_contentView) accessibilityFrame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end