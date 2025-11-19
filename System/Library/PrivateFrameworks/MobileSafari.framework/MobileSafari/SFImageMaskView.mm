@interface SFImageMaskView
- (CGSize)intrinsicContentSize;
@end

@implementation SFImageMaskView

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari15SFImageMaskView_preferredSize);
  v3 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC12MobileSafari15SFImageMaskView_preferredSize);
  result.height = v3;
  result.width = v2;
  return result;
}

@end