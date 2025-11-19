@interface SUUIClientContextViewControllerFactory
- (id)newPlaceholderViewController;
@end

@implementation SUUIClientContextViewControllerFactory

- (id)newPlaceholderViewController
{
  v7.receiver = self;
  v7.super_class = SUUIClientContextViewControllerFactory;
  v2 = [(SUViewControllerFactory *)&v7 newPlaceholderViewController];
  v3 = MEMORY[0x277D7FDD8];
  v4 = [MEMORY[0x277D75348] systemBackgroundColor];
  v5 = [v3 gradientWithColor:v4];
  [v2 setDefaultBackgroundGradient:v5];

  return v2;
}

@end