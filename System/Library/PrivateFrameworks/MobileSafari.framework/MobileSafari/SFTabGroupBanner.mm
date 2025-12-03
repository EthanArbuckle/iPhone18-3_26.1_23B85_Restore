@interface SFTabGroupBanner
- (CGSize)sizeThatFits:(CGSize)fits;
- (SFTabGroupBanner)initWithFrame:(CGRect)frame;
- (void)_updateToolbarItems;
- (void)setCollaborationButton:(id)button;
- (void)setTabGroup:(id)group;
- (void)setTabGroupTapAction:(id)action;
- (void)themeDidChange;
@end

@implementation SFTabGroupBanner

- (SFTabGroupBanner)initWithFrame:(CGRect)frame
{
  v33[4] = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = SFTabGroupBanner;
  v3 = [(SFPinnableBanner *)&v32 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFPinnableBanner *)v3 setSeparableFromStatusBar:0];
    isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
    if (isSolariumEnabled)
    {
      v6 = 10.0;
    }

    else
    {
      v6 = 0.0;
    }

    if ((isSolariumEnabled & 1) == 0)
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
    leadingAnchor = [(UIToolbar *)v4->_toolbar leadingAnchor];
    leadingAnchor2 = [(SFTabGroupBanner *)v4 leadingAnchor];
    v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v33[0] = v28;
    widthAnchor = [(UIToolbar *)v4->_toolbar widthAnchor];
    widthAnchor2 = [(SFTabGroupBanner *)v4 widthAnchor];
    v16 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v33[1] = v16;
    topAnchor = [(UIToolbar *)v4->_toolbar topAnchor];
    topAnchor2 = [(SFTabGroupBanner *)v4 topAnchor];
    v19 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:v6];
    v33[2] = v19;
    heightAnchor = [(UIToolbar *)v4->_toolbar heightAnchor];
    heightAnchor2 = [(SFTabGroupBanner *)v4 heightAnchor];
    v22 = [heightAnchor constraintEqualToAnchor:heightAnchor2 constant:v6 * -2.0];
    v33[3] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
    [v26 activateConstraints:v23];

    v24 = v4;
  }

  return v4;
}

- (void)setTabGroup:(id)group
{
  groupCopy = group;
  if (self->_tabGroup != groupCopy)
  {
    v6 = groupCopy;
    objc_storeStrong(&self->_tabGroup, group);
    [(SFTabGroupTitleView *)self->_titleView setTabGroup:v6];
    [(SFTabGroupTitleView *)self->_titleView sizeToFit];
    [(SFTabGroupBanner *)self _updateToolbarItems];
    groupCopy = v6;
  }
}

- (void)setTabGroupTapAction:(id)action
{
  actionCopy = action;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_tabGroupTapAction, action);
    [(SFTabGroupTitleView *)self->_titleView removeActionForIdentifier:@"com.apple.mobilesafari.TabGroupTap" forControlEvents:64];
    [(SFTabGroupTitleView *)self->_titleView addAction:actionCopy forControlEvents:64];
  }
}

- (void)setCollaborationButton:(id)button
{
  buttonCopy = button;
  if (self->_collaborationButton != buttonCopy)
  {
    v6 = buttonCopy;
    objc_storeStrong(&self->_collaborationButton, button);
    [(SFTabGroupBanner *)self _updateToolbarItems];
    buttonCopy = v6;
  }
}

- (void)themeDidChange
{
  theme = [(SFPinnableBanner *)self theme];
  [(SFThemeColorEffectView *)self->_backdrop setTheme:theme];
  -[SFTabGroupBanner setOverrideUserInterfaceStyle:](self, "setOverrideUserInterfaceStyle:", [theme userInterfaceStyle]);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1112014848;
  [(SFTabGroupBanner *)self systemLayoutSizeFittingSize:fits.width withHorizontalFittingPriority:fits.height verticalFittingPriority:v3, v4];
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
  flexibleSpaceItem = [MEMORY[0x1E69DC708] flexibleSpaceItem];
  v9[1] = flexibleSpaceItem;
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