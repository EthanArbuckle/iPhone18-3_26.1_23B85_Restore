@interface CAMCancelVideoZoomRampCommand
- (void)executeWithContext:(id)a3;
@end

@implementation CAMCancelVideoZoomRampCommand

- (void)executeWithContext:(id)a3
{
  v3 = [a3 currentVideoDevice];
  [v3 cancelVideoZoomRamp];
}

@end