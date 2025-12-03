@interface UIListContentConfiguration(MobileSafariExtras)
- (uint64_t)safari_usesWhiteText;
@end

@implementation UIListContentConfiguration(MobileSafariExtras)

- (uint64_t)safari_usesWhiteText
{
  textProperties = [self textProperties];
  resolvedColor = [textProperties resolvedColor];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v4 = [resolvedColor isEqual:whiteColor];

  return v4;
}

@end