@interface DDParsecLoadingViewController
- (id)initForSolarium:(BOOL)solarium;
- (void)loadView;
@end

@implementation DDParsecLoadingViewController

- (id)initForSolarium:(BOOL)solarium
{
  v5.receiver = self;
  v5.super_class = DDParsecLoadingViewController;
  result = [(DDParsecLoadingViewController *)&v5 initWithNibName:0 bundle:0];
  if (result)
  {
    *(result + 992) = solarium;
  }

  return result;
}

- (void)loadView
{
  v12 = objc_opt_new();
  if (self->_solarium)
  {
    [v12 setBackgroundColor:0];
  }

  else
  {
    systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    [v12 setBackgroundColor:systemGroupedBackgroundColor];
  }

  layer = [v12 layer];
  [layer setCornerRadius:14.0];

  v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 insertSubview:v5 atIndex:2];
  centerXAnchor = [v5 centerXAnchor];
  centerXAnchor2 = [v12 centerXAnchor];
  v8 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v8 setActive:1];

  centerYAnchor = [v5 centerYAnchor];
  centerYAnchor2 = [v12 centerYAnchor];
  v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v11 setActive:1];

  [v5 startAnimating];
  [(DDParsecLoadingViewController *)self setView:v12];
}

@end