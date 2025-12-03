@interface CAMCancelVideoZoomRampCommand
- (void)executeWithContext:(id)context;
@end

@implementation CAMCancelVideoZoomRampCommand

- (void)executeWithContext:(id)context
{
  currentVideoDevice = [context currentVideoDevice];
  [currentVideoDevice cancelVideoZoomRamp];
}

@end