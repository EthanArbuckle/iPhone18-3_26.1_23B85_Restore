@interface NANowPlayingViewController(NANowPlayingTitleViewLayoutSpecProvider)
- (double)publisherLogoHeight;
@end

@implementation NANowPlayingViewController(NANowPlayingTitleViewLayoutSpecProvider)

- (double)publisherLogoHeight
{
  v2 = [(NANowPlayingViewController *)self view];
  v3 = [v2 window];
  [NANowPlayingLayoutSpec publisherLogoHeightInView:v3];
  v5 = v4;

  return v5;
}

@end