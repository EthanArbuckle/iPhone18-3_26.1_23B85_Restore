@interface PRNeedsWallpaperCaptureView
@end

@implementation PRNeedsWallpaperCaptureView

void ___PRNeedsWallpaperCaptureView_block_invoke()
{
  v0 = [MEMORY[0x277CF0CA8] sharedInstance];
  v2 = [v0 productType];

  if ([v2 isEqualToString:{@"iPhone10, 2"}])
  {
    v1 = 1;
  }

  else
  {
    v1 = [v2 isEqualToString:{@"iPhone10, 5"}];
  }

  _PRNeedsWallpaperCaptureView_needsWallpaperCaptureView = v1;
}

@end