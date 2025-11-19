@interface SFTabGroupBanner
- (CGSize)sizeThatFits:(CGSize)a3;
- (SFTabGroupBanner)initWithFrame:(CGRect)a3;
- (void)_updateToolbarItems;
- (void)setCollaborationButton:(id)a3;
- (void)setTabGroup:(id)a3;
- (void)setTabGroupTapAction:(id)a3;
- (void)themeDidChange;
@end

@implementation SFTabGroupBanner

- (SFTabGroupBanner)initWithFrame:(CGRect)a3
{
  v33[4] = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = SFTabGroupBanner;
  v3 = [(SFPinnableBanner *)&v32 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFPinnableBanner *)v3 setSeparableFromStatusBar:0];
    v5 = [MEMORY[0x1E69C8880] isSolariumEnabled];
    if (v5)
    {
      v6 = 10.0;
    }

    else
    {
      v6 = 0.0;
    }

    if ((v5 & 1) == 0)
    {
      v7 = [SFThemeColorEffectView alloc];
      v8 = [MEMORY[0x1E69DC730] effectWithStyle:10];
      v9 = [(SFThemeColorEffectView *)v7 initWithEffect:v8];
      backdrop = v4->_backdrop;
      v4->_backdrop = v9;

      [(SFTabGroupBanner *)v4 bounds];
      [(SFThemeColorEffectView *)v4->_backdrop setFrame:?];
      [(SFThemeColorEffectView *)v4->_backdrop setAutoresizingMask:18];
      [(SFTabGroupBanner *)v4 insertSubview:v4->_backdrop atIndex:0];
    }

    v11 = objc_alloc_init(SFTabGroupTitleView);
    titleView = v4->_titleView;
    v4->_titleView = v11;

    v13 = objc_alloc_init(MEMORY[0x1E69DD180]);
    toolbar = v4->_toolbar;
    v4->_toolbar = v13;

    v31 = objc_alloc_init(MEMORY[0x1E69DD188]);
    [v31 configureWithTransparentBackground];
    [(UIToolbar *)v4->_toolbar setStandardAppearance:v31];
    [(UIToolbar *)v4->_toolbar setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFTabGroupBanner *)v4 addSubview:v4->_toolbar];
    v26 = MEMORY[0x1E696ACD8];
    v30 = [(UIToolbar *)v4->_toolbar leadingAnchor];
    v29 = [(SFTabGroupBanner *)v4 leadingAnchor];
    v28 = [v30 constraintEqualToAnchor:v29];
    v33[0] = v28;
    v27 = [(UIToolbar *)v4->_toolbar widthAnchor];
    v15 = [(SFTabGroupBanner *)v4 widthAnchor];
    v16 = [v27 constraintEqualToAnchor:v15];
    v33[1] = v16;
    v17 = [(UIToolbar *)v4->_toolbar topAnchor];
    v18 = [(SFTabGroupBanner *)v4 topAnchor];
    v19 = [v17 constraintGreaterThanOrEqualToAnchor:v18 constant:v6];
    v33[2] = v19;
    v20 = [(UIToolbar *)v4->_toolbar heightAnchor];
    v21 = [(SFTabGroupBanner *)v4 heightAnchor];
    v22 = [v20 constraintEqualToAnchor:v21 constant:v6 * -2.0];
    v33[3] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
    [v26 activateConstraints:v23];

    v24 = v4;
  }

  return v4;
}

- (void)setTabGroup:(id)a3
{
  v5 = a3;
  if (self->_tabGroup != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_tabGroup, a3);
    [(SFTabGroupTitleView *)self->_titleView setTabGroup:v6];
    [(SFTabGroupTitleView *)self->_titleView sizeToFit];
    [(SFTabGroupBanner *)self _updateToolbarItems];
    v5 = v6;
  }
}

- (void)setTabGroupTapAction:(id)a3
{
  v5 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_tabGroupTapAction, a3);
    [(SFTabGroupTitleView *)self->_titleView removeActionForIdentifier:@"com.apple.mobilesafari.TabGroupTap" forControlEvents:64];
    [(SFTabGroupTitleView *)self->_titleView addAction:v5 forControlEvents:64];
  }
}

- (void)setCollaborationButton:(id)a3
{
  v5 = a3;
  if (self->_collaborationButton != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_collaborationButton, a3);
    [(SFTabGroupBanner *)self _updateToolbarItems];
    v5 = v6;
  }
}

- (void)themeDidChange
{
  v3 = [(SFPinnableBanner *)self theme];
  [(SFThemeColorEffectView *)self->_backdrop setTheme:v3];
  -[SFTabGroupBanner setOverrideUserInterfaceStyle:](self, "setOverrideUserInterfaceStyle:", [v3 userInterfaceStyle]);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1112014848;
  [(SFTabGroupBanner *)self systemLayoutSizeFittingSize:a3.width withHorizontalFittingPriority:a3.height verticalFittingPriority:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)_updateToolbarItems
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:self->_titleView];
  v9[0] = v4;
  v5 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
  v9[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v7 = [v3 arrayWithArray:v6];

  if (self->_collaborationButton)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:self->_collaborationButton];
    [v7 addObject:v8];
  }

  [(UIToolbar *)self->_toolbar setItems:v7];
}

@end