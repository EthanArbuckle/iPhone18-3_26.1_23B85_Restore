@interface NANowPlayingViewController(NANowPlayingTitleViewLayoutSpecProvider)
- (double)publisherLogoHeight;
@end

@implementation NANowPlayingViewController(NANowPlayingTitleViewLayoutSpecProvider)

- (double)publisherLogoHeight
{
  view = [(NANowPlayingViewController *)self view];
  window = [view window];
  [NANowPlayingLayoutSpec publisherLogoHeightInView:window];
  v5 = v4;

  return v5;
}

@end