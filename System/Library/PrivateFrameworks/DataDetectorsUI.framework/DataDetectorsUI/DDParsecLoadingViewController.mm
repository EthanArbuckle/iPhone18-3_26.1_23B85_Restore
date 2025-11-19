@interface DDParsecLoadingViewController
- (id)initForSolarium:(BOOL)a3;
- (void)loadView;
@end

@implementation DDParsecLoadingViewController

- (id)initForSolarium:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = DDParsecLoadingViewController;
  result = [(DDParsecLoadingViewController *)&v5 initWithNibName:0 bundle:0];
  if (result)
  {
    *(result + 992) = a3;
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
    v3 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    [v12 setBackgroundColor:v3];
  }

  v4 = [v12 layer];
  [v4 setCornerRadius:14.0];

  v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 insertSubview:v5 atIndex:2];
  v6 = [v5 centerXAnchor];
  v7 = [v12 centerXAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  [v8 setActive:1];

  v9 = [v5 centerYAnchor];
  v10 = [v12 centerYAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v11 setActive:1];

  [v5 startAnimating];
  [(DDParsecLoadingViewController *)self setView:v12];
}

@end