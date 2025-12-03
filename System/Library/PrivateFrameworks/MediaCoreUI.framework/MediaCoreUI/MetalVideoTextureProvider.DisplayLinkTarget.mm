@interface MetalVideoTextureProvider.DisplayLinkTarget
- (void)frame:(id)frame;
@end

@implementation MetalVideoTextureProvider.DisplayLinkTarget

- (void)frame:(id)frame
{
  frameCopy = frame;

  sub_1C5A0CEE0(frameCopy);
}

@end