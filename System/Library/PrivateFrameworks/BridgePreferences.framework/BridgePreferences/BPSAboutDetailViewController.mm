@interface BPSAboutDetailViewController
- (BPSAboutDetailViewController)init;
- (void)donePressed;
- (void)presentWithController:(id)controller onDismiss:(id)dismiss;
- (void)viewDidLoad;
@end

@implementation BPSAboutDetailViewController

- (BPSAboutDetailViewController)init
{
  v6.receiver = self;
  v6.super_class = BPSAboutDetailViewController;
  v2 = [(OBTextWelcomeController *)&v6 initWithTitle:&stru_285406330];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v2 action:sel_donePressed];
    navigationItem = [(OBBaseWelcomeController *)v2 navigationItem];
    [navigationItem setLeftBarButtonItem:v3];
  }

  return v2;
}

- (void)viewDidLoad
{
  v38 = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = BPSAboutDetailViewController;
  [(OBBaseWelcomeController *)&v35 viewDidLoad];
  headerView = [(BPSAboutDetailViewController *)self headerView];
  titleString = [(BPSAboutDetailViewController *)self titleString];
  [headerView setTitle:titleString];

  headerGlyph = [(BPSAboutDetailViewController *)self headerGlyph];

  if (headerGlyph)
  {
    headerView2 = [(BPSAboutDetailViewController *)self headerView];
    headerGlyph2 = [(BPSAboutDetailViewController *)self headerGlyph];
    [headerView2 setIcon:headerGlyph2 accessibilityLabel:0];
  }

  headerString = [(BPSAboutDetailViewController *)self headerString];

  if (headerString)
  {
    headerString2 = [(BPSAboutDetailViewController *)self headerString];
    [(OBTextWelcomeController *)self addSectionWithHeader:0 content:headerString2];
  }

  bullets = [(BPSAboutDetailViewController *)self bullets];

  if (bullets)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    bullets2 = [(BPSAboutDetailViewController *)self bullets];
    v12 = [bullets2 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(bullets2);
          }

          [(OBTextWelcomeController *)self addBulletedListItemWithTitle:*(*(&v31 + 1) + 8 * i) description:0];
        }

        v13 = [bullets2 countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v13);
    }
  }

  paragraphs = [(BPSAboutDetailViewController *)self paragraphs];

  if (paragraphs)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    paragraphs2 = [(BPSAboutDetailViewController *)self paragraphs];
    v18 = [paragraphs2 countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v28;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(paragraphs2);
          }

          v22 = *(*(&v27 + 1) + 8 * j);
          v23 = [v22 objectForKeyedSubscript:@"heading"];
          v24 = [v22 objectForKeyedSubscript:@"text"];
          if (v24)
          {
            [(OBTextWelcomeController *)self addSectionWithHeader:v23 content:v24];
          }
        }

        v19 = [paragraphs2 countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v19);
    }
  }

  footerString = [(BPSAboutDetailViewController *)self footerString];

  if (footerString)
  {
    footerString2 = [(BPSAboutDetailViewController *)self footerString];
    [(OBTextWelcomeController *)self addSectionWithHeader:0 content:footerString2];
  }
}

- (void)donePressed
{
  parentViewController = [(BPSAboutDetailViewController *)self parentViewController];
  [parentViewController dismissViewControllerAnimated:1 completion:self->_onDismiss];

  onDismiss = self->_onDismiss;
  self->_onDismiss = 0;
}

- (void)presentWithController:(id)controller onDismiss:(id)dismiss
{
  controllerCopy = controller;
  v7 = _Block_copy(dismiss);
  onDismiss = self->_onDismiss;
  self->_onDismiss = v7;

  v14 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self];
  [controllerCopy presentViewController:v14 animated:1 completion:0];

  view = [v14 view];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [view setBackgroundColor:clearColor];

  navigationBar = [v14 navigationBar];
  [navigationBar setBarStyle:1];
  [navigationBar setTranslucent:1];
  v12 = BPSNavBarBackgroundPointImage();
  [navigationBar setBackgroundImage:v12 forBarMetrics:0];

  v13 = BPSSetupTintColor();
  [navigationBar setTintColor:v13];
}

@end