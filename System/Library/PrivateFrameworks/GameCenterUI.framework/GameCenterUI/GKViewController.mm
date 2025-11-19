@interface GKViewController
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3;
- (GKColorPalette)colorPalette;
- (GKViewController)rootViewController;
- (void)loadView;
- (void)popToRootViewControllerAnimated:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation GKViewController

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = GKViewController;
  [(GKViewController *)&v5 loadView];
  v3 = [(GKViewController *)self view];
  v4 = [v3 layer];
  [v4 setHitTestsAsOpaque:1];
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
    v4 = [MEMORY[0x277D0C868] sharedPalette];
    [(GKViewController *)self setColorPalette:v4];

    colorPalette = self->_colorPalette;
  }

  return colorPalette;
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = GKViewController;
  [(GKViewController *)&v6 viewWillAppear:a3];
  if (!-[GKViewController shouldUpdateContentOnlyWhenAuthenticated](self, "shouldUpdateContentOnlyWhenAuthenticated") || ([MEMORY[0x277D0C138] localPlayer], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isAuthenticated"), v4, v5))
  {
    [(GKViewController *)self _gkSetContentsNeedUpdateWithHandler:0];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = GKViewController;
  [(GKViewController *)&v3 viewDidAppear:a3];
}

- (void)popToRootViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(GKViewController *)self navigationController];
  v4 = [v5 popToRootViewControllerAnimated:v3];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3
{
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  v6 = *MEMORY[0x277D0C258];
  if (v5 == 1)
  {
    v7 = v6 ^ 1 | *MEMORY[0x277D0C8F0];
  }

  else
  {
    v7 = 0;
  }

  return (a3 == 1) | (v7 ^ v6) & 1;
}

@end