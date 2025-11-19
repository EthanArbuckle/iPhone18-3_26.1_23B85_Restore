@interface CDPPassphraseEntryPane
- (BOOL)shouldInsetContent;
- (CDPPassphraseEntryPane)initWithFrame:(CGRect)a3;
- (CGRect)availableHeaderRect;
- (double)desiredMinPinHeight;
- (double)keyboardHeightOffset;
- (void)_keyboardLayoutChanged;
- (void)_layoutContainerView;
- (void)_layoutHeaderRect;
- (void)_layoutPinView;
- (void)_layoutSubviews;
- (void)availableHeaderRect;
- (void)dealloc;
- (void)didFinishResizingPinView;
- (void)layoutSubviews;
- (void)startListeningForKeyboardEvents;
@end

@implementation CDPPassphraseEntryPane

- (CDPPassphraseEntryPane)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16.receiver = self;
  v16.super_class = CDPPassphraseEntryPane;
  v7 = [(DevicePINPane *)&v16 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D759D8]) initWithFrame:{x, y, width, height}];
    containerView = v7->_containerView;
    v7->_containerView = v8;

    [(UIScrollView *)v7->_containerView setKeyboardDismissMode:0];
    [(CDPPassphraseEntryPane *)v7 addSubview:v7->_containerView];
    [(UIScrollView *)v7->_containerView addSubview:*(&v7->super.super.super.super.super.isa + *MEMORY[0x277D3FBD8])];
    v10 = [MEMORY[0x277D75348] _systemBackgroundColor];
    [(CDPPassphraseEntryPane *)v7 setBackgroundColor:v10];

    v11 = [MEMORY[0x277D75348] _systemBackgroundColor];
    [(UIScrollView *)v7->_containerView setBackgroundColor:v11];

    v12 = [CDPPaneHeaderView alloc];
    v13 = [(CDPPaneHeaderView *)v12 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    headerView = v7->_headerView;
    v7->_headerView = v13;

    [(UIScrollView *)v7->_containerView addSubview:v7->_headerView];
    [(CDPPassphraseEntryPane *)v7 startListeningForKeyboardEvents];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CDPPassphraseEntryPane;
  [(DevicePINPane *)&v4 dealloc];
}

- (void)startListeningForKeyboardEvents
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__keyboardLayoutChanged name:*MEMORY[0x277D76BE8] object:0];
}

- (BOOL)shouldInsetContent
{
  if ([MEMORY[0x277CFD560] isNaturalUIEnabled])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = CDPPassphraseEntryPane;
  return [(PSEditingPane *)&v4 shouldInsetContent];
}

- (void)_keyboardLayoutChanged
{
  v3 = [(PSEditingPane *)self viewController];
  v4 = [v3 navigationController];
  v5 = [(PSEditingPane *)self viewController];
  v6 = v5;
  if (v4)
  {
    [v5 navigationController];
  }

  else
  {
    [v5 parentViewController];
  }
  v7 = ;
  v8 = [v7 parentViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__CDPPassphraseEntryPane__keyboardLayoutChanged__block_invoke;
    v10[3] = &unk_278E2BCF8;
    v10[4] = self;
    [v8 offsetForCurrentKeyboard:v10];
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__CDPPassphraseEntryPane__keyboardLayoutChanged__block_invoke_3;
    v9[3] = &unk_278E2AF90;
    v9[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }
}

void __48__CDPPassphraseEntryPane__keyboardLayoutChanged__block_invoke(uint64_t a1, double a2)
{
  *(*(a1 + 32) + 560) = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__CDPPassphraseEntryPane__keyboardLayoutChanged__block_invoke_2;
  block[3] = &unk_278E2AF90;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (double)keyboardHeightOffset
{
  v3 = MEMORY[0x277D75658];
  v4 = [(PSEditingPane *)self viewController];
  [v3 sizeForInterfaceOrientation:{objc_msgSend(v4, "interfaceOrientation")}];
  v29 = v5;

  v6 = [(PSEditingPane *)self viewController];
  v7 = [v6 view];
  v8 = [(PSEditingPane *)self viewController];
  v9 = [v8 view];
  [v9 bounds];
  [v7 convertRect:0 toView:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [MEMORY[0x277D759A0] mainScreen];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v30.origin.x = v20;
  v30.origin.y = v22;
  v30.size.width = v24;
  v30.size.height = v26;
  MaxY = CGRectGetMaxY(v30);
  v31.origin.x = v11;
  v31.origin.y = v13;
  v31.size.width = v15;
  v31.size.height = v17;
  return fmax(v29 - (MaxY - CGRectGetMaxY(v31)), 0.0);
}

- (void)layoutSubviews
{
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 560)];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0(&dword_2451DB000, v2, v3, "Starting layout with KB offset: %@", v4, v5, v6, v7, v8);
}

- (void)_layoutSubviews
{
  v3 = [(PSEditingPane *)self viewController];
  v4 = [v3 navigationController];
  v5 = [(PSEditingPane *)self viewController];
  v6 = v5;
  if (v4)
  {
    [v5 navigationController];
  }

  else
  {
    [v5 parentViewController];
  }
  v7 = ;
  v9 = [v7 parentViewController];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(CDPPassphraseEntryPane *)self keyboardHeightOffset];
    self->_keyboardOffset = v8;
  }

  [(CDPPassphraseEntryPane *)self _layoutContainerView];
  [(CDPPassphraseEntryPane *)self _layoutHeaderRect];
  [(CDPPassphraseEntryPane *)self _layoutPinView];
}

- (CGRect)availableHeaderRect
{
  [(UIScrollView *)self->_containerView bounds];
  Width = CGRectGetWidth(v12);
  [(UIScrollView *)self->_containerView bounds];
  v4 = CGRectGetHeight(v13) - self->_keyboardOffset;
  [(CDPPassphraseEntryPane *)self desiredMinPinHeight];
  v6 = v4 - v5;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(CDPPassphraseEntryPane *)Width availableHeaderRect];
  }

  v8 = 0.0;
  v9 = 0.0;
  v10 = Width;
  v11 = v6;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (double)desiredMinPinHeight
{
  v2 = [(DevicePINPane *)self simplePIN];
  result = 75.0;
  if (v2)
  {
    return 73.0;
  }

  return result;
}

- (void)_layoutContainerView
{
  containerView = self->_containerView;
  v5 = [(PSEditingPane *)self viewController];
  v3 = [v5 view];
  v4 = [v3 safeAreaLayoutGuide];
  [v4 layoutFrame];
  [(UIScrollView *)containerView setFrame:?];
}

- (void)_layoutHeaderRect
{
  headerView = self->_headerView;
  [(CDPPassphraseEntryPane *)self availableHeaderRect];
  [(CDPPaneHeaderView *)headerView setFrame:?];
  [(CDPPaneHeaderView *)self->_headerView layoutSubviews];

  [(CDPPassphraseEntryPane *)self didFinishResizingHeaderView];
}

- (void)_layoutPinView
{
  v4 = NSStringFromCGRect(*&a1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0(&dword_2451DB000, v5, v6, "Laid out pin view: %@", v7, v8, v9, v10, v11);
}

- (void)didFinishResizingPinView
{
  [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FBD8]) frame];
  v3 = CGRectGetMaxY(v7) + self->_keyboardOffset;
  [(UIScrollView *)self->_containerView setContentSize:0.0, v3];
  containerView = self->_containerView;
  [(UIScrollView *)containerView frame];
  v5 = fmax(v3 - CGRectGetHeight(v8), 0.0);

  [(UIScrollView *)containerView setContentOffset:0.0, v5];
}

- (void)availableHeaderRect
{
  v10.size.height = a2;
  v10.size.width = a1;
  v10.origin.x = 0.0;
  v10.origin.y = 0.0;
  v2 = NSStringFromCGRect(v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0(&dword_2451DB000, v3, v4, "Available header rect: %@", v5, v6, v7, v8, v9);
}

@end