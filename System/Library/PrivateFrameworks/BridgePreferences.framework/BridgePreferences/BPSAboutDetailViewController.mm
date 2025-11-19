@interface BPSAboutDetailViewController
- (BPSAboutDetailViewController)init;
- (void)donePressed;
- (void)presentWithController:(id)a3 onDismiss:(id)a4;
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
    v4 = [(OBBaseWelcomeController *)v2 navigationItem];
    [v4 setLeftBarButtonItem:v3];
  }

  return v2;
}

- (void)viewDidLoad
{
  v38 = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = BPSAboutDetailViewController;
  [(OBBaseWelcomeController *)&v35 viewDidLoad];
  v3 = [(BPSAboutDetailViewController *)self headerView];
  v4 = [(BPSAboutDetailViewController *)self titleString];
  [v3 setTitle:v4];

  v5 = [(BPSAboutDetailViewController *)self headerGlyph];

  if (v5)
  {
    v6 = [(BPSAboutDetailViewController *)self headerView];
    v7 = [(BPSAboutDetailViewController *)self headerGlyph];
    [v6 setIcon:v7 accessibilityLabel:0];
  }

  v8 = [(BPSAboutDetailViewController *)self headerString];

  if (v8)
  {
    v9 = [(BPSAboutDetailViewController *)self headerString];
    [(OBTextWelcomeController *)self addSectionWithHeader:0 content:v9];
  }

  v10 = [(BPSAboutDetailViewController *)self bullets];

  if (v10)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = [(BPSAboutDetailViewController *)self bullets];
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v37 count:16];
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
            objc_enumerationMutation(v11);
          }

          [(OBTextWelcomeController *)self addBulletedListItemWithTitle:*(*(&v31 + 1) + 8 * i) description:0];
        }

        v13 = [v11 countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v13);
    }
  }

  v16 = [(BPSAboutDetailViewController *)self paragraphs];

  if (v16)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = [(BPSAboutDetailViewController *)self paragraphs];
    v18 = [v17 countByEnumeratingWithState:&v27 objects:v36 count:16];
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
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v27 + 1) + 8 * j);
          v23 = [v22 objectForKeyedSubscript:@"heading"];
          v24 = [v22 objectForKeyedSubscript:@"text"];
          if (v24)
          {
            [(OBTextWelcomeController *)self addSectionWithHeader:v23 content:v24];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v19);
    }
  }

  v25 = [(BPSAboutDetailViewController *)self footerString];

  if (v25)
  {
    v26 = [(BPSAboutDetailViewController *)self footerString];
    [(OBTextWelcomeController *)self addSectionWithHeader:0 content:v26];
  }
}

- (void)donePressed
{
  v3 = [(BPSAboutDetailViewController *)self parentViewController];
  [v3 dismissViewControllerAnimated:1 completion:self->_onDismiss];

  onDismiss = self->_onDismiss;
  self->_onDismiss = 0;
}

- (void)presentWithController:(id)a3 onDismiss:(id)a4
{
  v6 = a3;
  v7 = _Block_copy(a4);
  onDismiss = self->_onDismiss;
  self->_onDismiss = v7;

  v14 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self];
  [v6 presentViewController:v14 animated:1 completion:0];

  v9 = [v14 view];
  v10 = [MEMORY[0x277D75348] clearColor];
  [v9 setBackgroundColor:v10];

  v11 = [v14 navigationBar];
  [v11 setBarStyle:1];
  [v11 setTranslucent:1];
  v12 = BPSNavBarBackgroundPointImage();
  [v11 setBackgroundImage:v12 forBarMetrics:0];

  v13 = BPSSetupTintColor();
  [v11 setTintColor:v13];
}

@end