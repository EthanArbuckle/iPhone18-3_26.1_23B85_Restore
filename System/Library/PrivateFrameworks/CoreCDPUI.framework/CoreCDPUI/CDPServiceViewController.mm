@interface CDPServiceViewController
- (void)offsetForCurrentKeyboard:(id)a3;
- (void)viewDidLoad;
@end

@implementation CDPServiceViewController

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = CDPServiceViewController;
  [(CDPServiceViewController *)&v21 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x277D3FAC8]);
  v4 = objc_alloc_init(CDPRemoteUILocalSecretEntryViewController);
  v5 = [(CDPRemoteUILocalSecretEntryViewController *)v4 navigationItem];
  [v5 setAccessibilityIdentifier:@"local-secret-entry-view"];

  [v3 showController:v4];
  objc_storeStrong(&self->_contentViewController, v3);
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v6 = getBFFStyleClass_softClass_2;
  v26 = getBFFStyleClass_softClass_2;
  if (!getBFFStyleClass_softClass_2)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __getBFFStyleClass_block_invoke_2;
    v22[3] = &unk_278E2BA40;
    v22[4] = &v23;
    __getBFFStyleClass_block_invoke_2(v22);
    v6 = v24[3];
  }

  v7 = v6;
  _Block_object_dispose(&v23, 8);
  v8 = [v6 sharedStyle];
  [v8 applyThemeToNavigationController:v3];

  [(UIViewController *)self->_contentViewController willMoveToParentViewController:self];
  [(CDPServiceViewController *)self addChildViewController:self->_contentViewController];
  v9 = [(CDPServiceViewController *)self view];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(UIViewController *)self->_contentViewController view];
  [v18 setFrame:{v11, v13, v15, v17}];

  v19 = [(CDPServiceViewController *)self view];
  v20 = [(UIViewController *)self->_contentViewController view];
  [v19 addSubview:v20];

  [(UIViewController *)self->_contentViewController didMoveToParentViewController:self];
}

- (void)offsetForCurrentKeyboard:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__CDPServiceViewController_offsetForCurrentKeyboard___block_invoke;
    v10[3] = &unk_278E2C008;
    v6 = v4;
    v11 = v6;
    v7 = [(CDPServiceViewController *)self _remoteViewControllerProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__CDPServiceViewController_offsetForCurrentKeyboard___block_invoke_2;
    v8[3] = &unk_278E2C030;
    v9 = v6;
    [v7 hostKeyboardOffset:v8];
  }
}

uint64_t __53__CDPServiceViewController_offsetForCurrentKeyboard___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 floatValue];
  v3.n128_f64[0] = v3.n128_f32[0];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

@end