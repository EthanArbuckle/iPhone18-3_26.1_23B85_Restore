@interface _CDPHostViewController
- (NSExtension)weakExtension;
- (double)_keyboardHeightOffset;
- (void)dealloc;
- (void)hostKeyboardOffset:(id)a3;
- (void)viewServiceDidTerminateWithError:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation _CDPHostViewController

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(_CDPHostViewController *)v4 viewServiceDidTerminateWithError:v5];
  }

  viewServiceTerminationBlock = self->_viewServiceTerminationBlock;
  if (viewServiceTerminationBlock)
  {
    viewServiceTerminationBlock[2]();
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = _CDPHostViewController;
  [(_UIRemoteViewController *)&v6 viewWillAppear:?];
  v5 = [(_CDPHostViewController *)self navigationController];
  [v5 setNavigationBarHidden:1 animated:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = _CDPHostViewController;
  [(_UIRemoteViewController *)&v6 viewWillDisappear:?];
  v5 = [(_CDPHostViewController *)self navigationController];
  [v5 setNavigationBarHidden:0 animated:v3];
}

- (void)hostKeyboardOffset:(id)a3
{
  if (a3)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = a3;
    [(_CDPHostViewController *)self _keyboardHeightOffset];
    v7 = [v5 numberWithDouble:?];
    (*(a3 + 2))(v6, v7);
  }
}

- (double)_keyboardHeightOffset
{
  [MEMORY[0x277D75658] sizeForInterfaceOrientation:{-[_CDPHostViewController interfaceOrientation](self, "interfaceOrientation")}];
  v30 = v3;
  v4 = [(_CDPHostViewController *)self view];
  v5 = [(_CDPHostViewController *)self view];
  [v5 bounds];
  [v4 convertRect:0 toView:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [MEMORY[0x277D759A0] mainScreen];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v31.origin.x = v16;
  v31.origin.y = v18;
  v31.size.width = v20;
  v31.size.height = v22;
  MaxY = CGRectGetMaxY(v31);
  v32.origin.x = v7;
  v32.origin.y = v9;
  v32.size.width = v11;
  v32.size.height = v13;
  v24 = v30 - (MaxY - CGRectGetMaxY(v32));
  v25 = [MEMORY[0x277D75418] currentDevice];
  v26 = [v25 userInterfaceIdiom];
  v27 = 50.0;
  if (v26 != 1)
  {
    v27 = 0.0;
  }

  v28 = v24 + v27;

  return v28;
}

- (void)dealloc
{
  v3 = [(_CDPHostViewController *)self request];

  if (v3)
  {
    v4 = [(_CDPHostViewController *)self weakExtension];
    v5 = [(_CDPHostViewController *)self request];
    [v4 cancelExtensionRequestWithIdentifier:v5];
  }

  v6.receiver = self;
  v6.super_class = _CDPHostViewController;
  [(_CDPHostViewController *)&v6 dealloc];
}

- (NSExtension)weakExtension
{
  WeakRetained = objc_loadWeakRetained(&self->_weakExtension);

  return WeakRetained;
}

- (void)viewServiceDidTerminateWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2451DB000, a2, OS_LOG_TYPE_ERROR, "CDP view service terminated with error: %@", &v2, 0xCu);
}

@end