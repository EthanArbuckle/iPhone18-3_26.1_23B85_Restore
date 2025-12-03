@interface SFPinnedOverflowItemView
- (SFPinnedOverflowItemView)initWithFrame:(CGRect)frame;
- (SFPinnedOverflowMenuVisibilityDelegate)delegate;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
@end

@implementation SFPinnedOverflowItemView

- (SFPinnedOverflowItemView)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = SFPinnedOverflowItemView;
  v3 = [(SFUnifiedBarItemView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(SFUnifiedBarItemView *)v3 contentView];
    v6 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward.2"];
    v8 = [v6 initWithImage:v7];

    [v8 setAutoresizingMask:18];
    [v8 setContentMode:4];
    [contentView bounds];
    [v8 setFrame:?];
    v9 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:2];
    [v8 setPreferredSymbolConfiguration:v9];

    [contentView addSubview:v8];
    [(SFPinnedOverflowItemView *)v4 setShowsMenuAsPrimaryAction:1];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(SFPinnedOverflowItemView *)v4 setTintColor:secondaryLabelColor];

    [(UIView *)v4 sf_applyContentSizeCategoryLimitsForToolbarButton];
    v11 = v4;
  }

  return v4;
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  v7.receiver = self;
  v7.super_class = SFPinnedOverflowItemView;
  [(SFPinnedOverflowItemView *)&v7 contextMenuInteraction:interaction willDisplayMenuForConfiguration:configuration animator:animator];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained pinnedOverflowItemViewWillShowMenu:self];
  }
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  v14.receiver = self;
  v14.super_class = SFPinnedOverflowItemView;
  animatorCopy = animator;
  [(SFPinnedOverflowItemView *)&v14 contextMenuInteraction:interaction willEndForConfiguration:configuration animator:animatorCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__SFPinnedOverflowItemView_contextMenuInteraction_willEndForConfiguration_animator___block_invoke;
  v11[3] = &unk_1E721B400;
  v12 = WeakRetained;
  selfCopy = self;
  v10 = WeakRetained;
  [animatorCopy addCompletion:v11];
}

uint64_t __84__SFPinnedOverflowItemView_contextMenuInteraction_willEndForConfiguration_animator___block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 pinnedOverflowItemViewDidHideMenu:v4];
  }

  return result;
}

- (SFPinnedOverflowMenuVisibilityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end