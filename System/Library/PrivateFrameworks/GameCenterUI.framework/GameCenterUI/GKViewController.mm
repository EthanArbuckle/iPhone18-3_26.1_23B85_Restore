@interface GKViewController
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation;
- (GKColorPalette)colorPalette;
- (GKViewController)rootViewController;
- (void)loadView;
- (void)popToRootViewControllerAnimated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation GKViewController

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = GKViewController;
  [(GKViewController *)&v5 loadView];
  view = [(GKViewController *)self view];
  layer = [view layer];
  [layer setHitTestsAsOpaque:1];
}

- (GKViewController)rootViewController
{
  if (self->_rootViewController)
  {
    self = self->_rootViewController;
  }

  return self;
}

- (GKColorPalette)colorPalette
{
  colorPalette = self->_colorPalette;
  if (!colorPalette)
  {
    mEMORY[0x277D0C868] = [MEMORY[0x277D0C868] sharedPalette];
    [(GKViewController *)self setColorPalette:mEMORY[0x277D0C868]];

    colorPalette = self->_colorPalette;
  }

  return colorPalette;
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = GKViewController;
  [(GKViewController *)&v6 viewWillAppear:appear];
  if (!-[GKViewController shouldUpdateContentOnlyWhenAuthenticated](self, "shouldUpdateContentOnlyWhenAuthenticated") || ([MEMORY[0x277D0C138] localPlayer], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isAuthenticated"), v4, v5))
  {
    [(GKViewController *)self _gkSetContentsNeedUpdateWithHandler:0];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = GKViewController;
  [(GKViewController *)&v3 viewDidAppear:appear];
}

- (void)popToRootViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  navigationController = [(GKViewController *)self navigationController];
  v4 = [navigationController popToRootViewControllerAnimated:animatedCopy];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v6 = *MEMORY[0x277D0C258];
  if (userInterfaceIdiom == 1)
  {
    v7 = v6 ^ 1 | *MEMORY[0x277D0C8F0];
  }

  else
  {
    v7 = 0;
  }

  return (orientation == 1) | (v7 ^ v6) & 1;
}

@end