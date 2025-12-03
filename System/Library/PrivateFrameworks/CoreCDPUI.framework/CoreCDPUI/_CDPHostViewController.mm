@interface _CDPHostViewController
- (NSExtension)weakExtension;
- (double)_keyboardHeightOffset;
- (void)dealloc;
- (void)hostKeyboardOffset:(id)offset;
- (void)viewServiceDidTerminateWithError:(id)error;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation _CDPHostViewController

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(_CDPHostViewController *)errorCopy viewServiceDidTerminateWithError:v5];
  }

  viewServiceTerminationBlock = self->_viewServiceTerminationBlock;
  if (viewServiceTerminationBlock)
  {
    viewServiceTerminationBlock[2]();
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = _CDPHostViewController;
  [(_UIRemoteViewController *)&v6 viewWillAppear:?];
  navigationController = [(_CDPHostViewController *)self navigationController];
  [navigationController setNavigationBarHidden:1 animated:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = _CDPHostViewController;
  [(_UIRemoteViewController *)&v6 viewWillDisappear:?];
  navigationController = [(_CDPHostViewController *)self navigationController];
  [navigationController setNavigationBarHidden:0 animated:disappearCopy];
}

- (void)hostKeyboardOffset:(id)offset
{
  if (offset)
  {
    v5 = MEMORY[0x277CCABB0];
    offsetCopy = offset;
    [(_CDPHostViewController *)self _keyboardHeightOffset];
    v7 = [v5 numberWithDouble:?];
    (*(offset + 2))(offsetCopy, v7);
  }
}

- (double)_keyboardHeightOffset
{
  [MEMORY[0x277D75658] sizeForInterfaceOrientation:{-[_CDPHostViewController interfaceOrientation](self, "interfaceOrientation")}];
  v30 = v3;
  view = [(_CDPHostViewController *)self view];
  view2 = [(_CDPHostViewController *)self view];
  [view2 bounds];
  [view convertRect:0 toView:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  v27 = 50.0;
  if (userInterfaceIdiom != 1)
  {
    v27 = 0.0;
  }

  v28 = v24 + v27;

  return v28;
}

- (void)dealloc
{
  request = [(_CDPHostViewController *)self request];

  if (request)
  {
    weakExtension = [(_CDPHostViewController *)self weakExtension];
    request2 = [(_CDPHostViewController *)self request];
    [weakExtension cancelExtensionRequestWithIdentifier:request2];
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