@interface AVURLAsset(MediaCoreUI_SwiftWorkaround)
- (id)mcui_safeURL;
@end

@implementation AVURLAsset(MediaCoreUI_SwiftWorkaround)

- (id)mcui_safeURL
{
  v1 = [self URL];
  v2 = [v1 copy];

  return v2;
}

@end