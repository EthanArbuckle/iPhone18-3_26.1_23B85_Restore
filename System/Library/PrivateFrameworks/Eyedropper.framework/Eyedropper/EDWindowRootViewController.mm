@interface EDWindowRootViewController
- (EDWindowRootViewController)initWithScreenBounds:(CGRect)bounds;
- (void)viewDidLoad;
@end

@implementation EDWindowRootViewController

- (EDWindowRootViewController)initWithScreenBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v14.receiver = self;
  v14.super_class = EDWindowRootViewController;
  v7 = [(EDWindowRootViewController *)&v14 initWithNibName:0 bundle:0];
  [(EDWindowRootViewController *)v7 _setIgnoreAppSupportedOrientations:1];
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MidY = CGRectGetMidY(v16);
  v10 = [[EDLensView alloc] initWithFrame:MidX, MidY, 288.0, 288.0];
  lensView = v7->_lensView;
  v7->_lensView = v10;

  [(EDLensView *)v7->_lensView setLastPosition:MidX, MidY];
  view = [(EDWindowRootViewController *)v7 view];
  [view addSubview:v7->_lensView];

  return v7;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = EDWindowRootViewController;
  [(EDWindowRootViewController *)&v5 viewDidLoad];
  clearColor = [MEMORY[0x277D75348] clearColor];
  view = [(EDWindowRootViewController *)self view];
  [view setBackgroundColor:clearColor];
}

@end