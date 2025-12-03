@interface LACUIKeyboardLayoutGuide
- (LACUIKeyboardLayoutGuide)initWithView:(id)view;
- (double)_defaultHeightConstant;
- (void)_handleKeyboardFrameChange:(id)change;
- (void)_setupKeyboardObservers;
- (void)_updateKeyboardLayoutGuide:(id)guide animated:(BOOL)animated;
@end

@implementation LACUIKeyboardLayoutGuide

- (LACUIKeyboardLayoutGuide)initWithView:(id)view
{
  v22[4] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v21.receiver = self;
  v21.super_class = LACUIKeyboardLayoutGuide;
  v5 = [(LACUIKeyboardLayoutGuide *)&v21 init];
  if (v5)
  {
    [viewCopy addLayoutGuide:v5];
    heightAnchor = [(LACUIKeyboardLayoutGuide *)v5 heightAnchor];
    [(LACUIKeyboardLayoutGuide *)v5 _defaultHeightConstant];
    obj = [heightAnchor constraintEqualToConstant:?];

    v18 = MEMORY[0x277CCAAD0];
    bottomAnchor = [(LACUIKeyboardLayoutGuide *)v5 bottomAnchor];
    bottomAnchor2 = [viewCopy bottomAnchor];
    v7 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v22[0] = v7;
    leadingAnchor = [(LACUIKeyboardLayoutGuide *)v5 leadingAnchor];
    leadingAnchor2 = [viewCopy leadingAnchor];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v22[1] = v10;
    trailingAnchor = [(LACUIKeyboardLayoutGuide *)v5 trailingAnchor];
    trailingAnchor2 = [viewCopy trailingAnchor];
    v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v22[2] = v13;
    v22[3] = obj;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
    [v18 activateConstraints:v14];

    objc_storeWeak(&v5->_keyboardLayoutHeightLC, obj);
    [(LACUIKeyboardLayoutGuide *)v5 _setupKeyboardObservers];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_setupKeyboardObservers
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleKeyboardFrameChange_ name:*MEMORY[0x277D76C60] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__handleKeyboardFrameChange_ name:*MEMORY[0x277D76BA8] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel__handleKeyboardFrameChange_ name:*MEMORY[0x277D76C50] object:0];
}

- (void)_handleKeyboardFrameChange:(id)change
{
  v13 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = LACLogKeyboard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = changeCopy;
    _os_log_impl(&dword_256063000, v5, OS_LOG_TYPE_DEFAULT, "Did receive keyboard notification: %{public}@", buf, 0xCu);
  }

  v6 = dispatch_time(0, 20000000);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__LACUIKeyboardLayoutGuide__handleKeyboardFrameChange___block_invoke;
  v9[3] = &unk_27981E870;
  v9[4] = self;
  v10 = changeCopy;
  v7 = changeCopy;
  dispatch_after(v6, MEMORY[0x277D85CD0], v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __55__LACUIKeyboardLayoutGuide__handleKeyboardFrameChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) userInfo];
  [v1 _updateKeyboardLayoutGuide:v2 animated:1];
}

- (void)_updateKeyboardLayoutGuide:(id)guide animated:(BOOL)animated
{
  guideCopy = guide;
  WeakRetained = objc_loadWeakRetained(&self->_keyboardLayoutHeightLC);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __64__LACUIKeyboardLayoutGuide__updateKeyboardLayoutGuide_animated___block_invoke;
  v18[3] = &unk_27981E898;
  v8 = guideCopy;
  v19 = v8;
  selfCopy = self;
  __64__LACUIKeyboardLayoutGuide__updateKeyboardLayoutGuide_animated___block_invoke(v18);
  [WeakRetained setConstant:?];

  v9 = [v8 objectForKey:*MEMORY[0x277D76B70]];
  v10 = [v9 integerValue] << 16;

  v11 = MEMORY[0x277D75D18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__LACUIKeyboardLayoutGuide__updateKeyboardLayoutGuide_animated___block_invoke_2;
  v15[3] = &unk_27981E8C0;
  v16 = v8;
  animatedCopy = animated;
  v12 = v8;
  v13 = __64__LACUIKeyboardLayoutGuide__updateKeyboardLayoutGuide_animated___block_invoke_2(v15);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__LACUIKeyboardLayoutGuide__updateKeyboardLayoutGuide_animated___block_invoke_9;
  v14[3] = &unk_27981E8E8;
  v14[4] = self;
  [v11 animateWithDuration:v10 delay:v14 options:&__block_literal_global_2 animations:v13 completion:0.0];
}

double __64__LACUIKeyboardLayoutGuide__updateKeyboardLayoutGuide_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:*MEMORY[0x277D76BB8]];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCAE60] valueWithRect:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  }

  v5 = v4;

  v6 = [*(a1 + 40) owningView];
  v7 = [*(a1 + 40) owningView];
  [v7 frame];
  [v6 convertRect:0 toView:?];
  v9 = v8;
  v11 = v10;

  [v5 rectValue];
  v13 = v9 + v11 - v12;
  if (v13 <= 0.0)
  {
    [*(a1 + 40) _defaultHeightConstant];
    v13 = v16;
  }

  else
  {
    v14 = [MEMORY[0x277CCAE60] valueWithRect:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    if ([v5 isEqualToValue:v14])
    {
      [*(a1 + 40) _defaultHeightConstant];
      v13 = v15;
    }
  }

  return v13;
}

float __64__LACUIKeyboardLayoutGuide__updateKeyboardLayoutGuide_animated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:*MEMORY[0x277D76B78]];
  v3 = v2;
  v4 = &unk_286827220;
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = 0.0;
  if (*(a1 + 40) == 1)
  {
    [v5 floatValue];
    v6 = v7;
  }

  return v6;
}

void __64__LACUIKeyboardLayoutGuide__updateKeyboardLayoutGuide_animated___block_invoke_9(uint64_t a1)
{
  v2 = [*(a1 + 32) owningView];
  v3 = [v2 window];

  if (v3)
  {
    v4 = [*(a1 + 32) owningView];
    [v4 layoutIfNeeded];
  }
}

- (double)_defaultHeightConstant
{
  owningView = [(LACUIKeyboardLayoutGuide *)self owningView];
  [owningView safeAreaInsets];
  v4 = v3;

  return v4;
}

@end