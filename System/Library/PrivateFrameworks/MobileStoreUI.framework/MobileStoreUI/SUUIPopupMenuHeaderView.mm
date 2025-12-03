@interface SUUIPopupMenuHeaderView
- (CGSize)sizeThatFits:(CGSize)result;
- (SUUIPopupMenuDelegate)delegate;
- (SUUIPopupMenuHeaderView)initWithFrame:(CGRect)frame;
- (id)_titleLabel;
- (void)_menuButtonAction:(id)action;
- (void)_reloadMenuButton;
- (void)dealloc;
- (void)layoutSubviews;
- (void)menuViewController:(id)controller didSelectItemAtIndex:(int64_t)index;
- (void)popoverControllerDidDismissPopover:(id)popover;
- (void)setBackgroundColor:(id)color;
- (void)setColoringWithColorScheme:(id)scheme;
- (void)setMenuItemTitles:(id)titles;
- (void)setMenuLabelTitle:(id)title;
- (void)setSelectedMenuItemIndex:(int64_t)index;
- (void)setTitle:(id)title;
@end

@implementation SUUIPopupMenuHeaderView

- (SUUIPopupMenuHeaderView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SUUIPopupMenuHeaderView;
  v3 = [(SUUIPopupMenuHeaderView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(SUUIPopupMenuHeaderView *)v3 setBackgroundColor:whiteColor];
  }

  return v3;
}

- (void)dealloc
{
  [(UIPopoverController *)self->_menuPopoverController setDelegate:0];
  [(SUUIMenuViewController *)self->_menuViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIPopupMenuHeaderView;
  [(SUUIPopupMenuHeaderView *)&v3 dealloc];
}

- (void)setColoringWithColorScheme:(id)scheme
{
  menuLabel = self->_menuLabel;
  if (scheme)
  {
    schemeCopy = scheme;
    secondaryTextColor = [schemeCopy secondaryTextColor];
    [(UILabel *)menuLabel setTextColor:secondaryTextColor];

    titleLabel = self->_titleLabel;
    primaryTextColor = [schemeCopy primaryTextColor];
    v10 = titleLabel;
  }

  else
  {
    v11 = MEMORY[0x277D75348];
    v12 = 0;
    v13 = [v11 colorWithWhite:0.0 alpha:0.5];
    [(UILabel *)menuLabel setTextColor:v13];

    v14 = self->_titleLabel;
    primaryTextColor = [MEMORY[0x277D75348] blackColor];
    v10 = v14;
  }

  [(UILabel *)v10 setTextColor:primaryTextColor];

  backgroundColor = [scheme backgroundColor];

  [(SUUIPopupMenuHeaderView *)self setBackgroundColor:backgroundColor];
}

- (void)setMenuItemTitles:(id)titles
{
  if (self->_menuItemTitles != titles)
  {
    v4 = [titles copy];
    menuItemTitles = self->_menuItemTitles;
    self->_menuItemTitles = v4;

    [(SUUIPopupMenuHeaderView *)self _reloadMenuButton];
  }
}

- (void)setMenuLabelTitle:(id)title
{
  if (self->_menuLabelTitle != title)
  {
    v4 = [title copy];
    menuLabelTitle = self->_menuLabelTitle;
    self->_menuLabelTitle = v4;

    [(SUUIPopupMenuHeaderView *)self _reloadMenuButton];
  }
}

- (void)setSelectedMenuItemIndex:(int64_t)index
{
  if (self->_selectedMenuItemIndex != index)
  {
    self->_selectedMenuItemIndex = index;
    [(SUUIPopupMenuHeaderView *)self _reloadMenuButton];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  _titleLabel = [(SUUIPopupMenuHeaderView *)self _titleLabel];
  [_titleLabel setText:titleCopy];
}

- (void)layoutSubviews
{
  [(SUUIPopupMenuHeaderView *)self bounds];
  v4 = v3;
  v6 = v5 + -15.0;
  menuButton = self->_menuButton;
  if (menuButton)
  {
    [(UIButton *)menuButton frame];
    v9 = v8;
    v11 = v10;
    v12 = v6 - v8;
    v13 = (v4 - v10) * 0.5;
    v14 = floorf(v13);
    [(UIButton *)self->_menuButton setFrame:v12, v14];
    menuLabel = self->_menuLabel;
    if (menuLabel)
    {
      [(UILabel *)menuLabel frame];
      v9 = v16;
      v11 = v17;
      v12 = v12 - v16 + -5.0;
      v18 = (v4 - v17) * 0.5;
      v14 = floorf(v18);
      [(UILabel *)self->_menuLabel setFrame:v12, v14];
    }

    v27.origin.x = v12;
    v27.origin.y = v14;
    v27.size.width = v9;
    v27.size.height = v11;
    v6 = CGRectGetMinX(v27) + -15.0;
  }

  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel frame];
    [(UILabel *)self->_titleLabel sizeThatFits:v6 + -15.0, 1.79769313e308];
    v21 = v20;
    v23 = v22;
    *&v20 = (v4 - v22) * 0.5;
    v24 = self->_titleLabel;
    v25 = floorf(*&v20);

    [(UILabel *)v24 setFrame:15.0, v25, v21, v23];
  }
}

- (void)setBackgroundColor:(id)color
{
  menuButton = self->_menuButton;
  colorCopy = color;
  [(UIButton *)menuButton setBackgroundColor:colorCopy];
  menuLabel = self->_menuLabel;
  if (colorCopy)
  {
    [(UILabel *)self->_menuLabel setBackgroundColor:colorCopy];
    [(UILabel *)self->_titleLabel setBackgroundColor:colorCopy];
  }

  else
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)menuLabel setBackgroundColor:clearColor];

    titleLabel = self->_titleLabel;
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)titleLabel setBackgroundColor:clearColor2];
  }

  v10.receiver = self;
  v10.super_class = SUUIPopupMenuHeaderView;
  [(SUUIPopupMenuHeaderView *)&v10 setBackgroundColor:colorCopy];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 44.0;
  result.height = v3;
  return result;
}

- (void)menuViewController:(id)controller didSelectItemAtIndex:(int64_t)index
{
  if (self->_selectedMenuItemIndex != index)
  {
    self->_selectedMenuItemIndex = index;
    controllerCopy = controller;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 popupMenuHeader:self didSelectMenuItemAtIndex:index];
    }

    [(SUUIPopupMenuHeaderView *)self _reloadMenuButton];
    [(SUUIPopupMenuHeaderView *)self layoutIfNeeded];
    menuPopoverController = self->_menuPopoverController;
    [(UIButton *)self->_menuButton frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    superview = [(UIButton *)self->_menuButton superview];
    [(UIPopoverController *)menuPopoverController presentPopoverFromRect:superview inView:1 permittedArrowDirections:1 animated:v11, v13, v15, v17];

    [controllerCopy setIndexOfCheckedTitle:self->_selectedMenuItemIndex];
  }
}

- (void)popoverControllerDidDismissPopover:(id)popover
{
  [(SUUIMenuViewController *)self->_menuViewController setDelegate:0];
  menuViewController = self->_menuViewController;
  self->_menuViewController = 0;

  [(UIPopoverController *)self->_menuPopoverController setDelegate:0];
  menuPopoverController = self->_menuPopoverController;
  self->_menuPopoverController = 0;
}

- (void)_menuButtonAction:(id)action
{
  if (!self->_menuPopoverController)
  {
    actionCopy = action;
    v5 = [[SUUIMenuViewController alloc] initWithMenuTitles:self->_menuItemTitles];
    menuViewController = self->_menuViewController;
    self->_menuViewController = v5;

    [(SUUIMenuViewController *)self->_menuViewController setDelegate:self];
    [(SUUIMenuViewController *)self->_menuViewController setIndexOfCheckedTitle:self->_selectedMenuItemIndex];
    v7 = (45 * [(NSArray *)self->_menuItemTitles count]);
    [(SUUIMenuViewController *)self->_menuViewController setPreferredContentSize:320.0, v7];
    v8 = [objc_alloc(MEMORY[0x277D758A0]) initWithContentViewController:self->_menuViewController];
    menuPopoverController = self->_menuPopoverController;
    self->_menuPopoverController = v8;

    [(UIPopoverController *)self->_menuPopoverController setDelegate:self];
    [(UIPopoverController *)self->_menuPopoverController setPopoverContentSize:320.0, v7];
    v10 = self->_menuPopoverController;
    [actionCopy frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    superview = [actionCopy superview];

    [(UIPopoverController *)v10 presentPopoverFromRect:superview inView:1 permittedArrowDirections:1 animated:v12, v14, v16, v18];
  }
}

- (void)_reloadMenuButton
{
  selectedMenuItemIndex = self->_selectedMenuItemIndex;
  if (selectedMenuItemIndex < [(NSArray *)self->_menuItemTitles count]&& ([(NSArray *)self->_menuItemTitles objectAtIndex:self->_selectedMenuItemIndex], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    menuButton = self->_menuButton;
    v25 = v5;
    if (!menuButton)
    {
      v7 = [MEMORY[0x277D75220] buttonWithType:1];
      v8 = self->_menuButton;
      self->_menuButton = v7;

      [(UIButton *)self->_menuButton addTarget:self action:sel__menuButtonAction_ forControlEvents:0xFFFFFFFFLL];
      v9 = self->_menuButton;
      backgroundColor = [(SUUIPopupMenuHeaderView *)self backgroundColor];
      [(UIButton *)v9 setBackgroundColor:backgroundColor];

      titleLabel = [(UIButton *)self->_menuButton titleLabel];
      v12 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
      [titleLabel setFont:v12];

      [(SUUIPopupMenuHeaderView *)self addSubview:self->_menuButton];
      v5 = v25;
      menuButton = self->_menuButton;
    }

    [(UIButton *)menuButton setTitle:v5 forState:0];
    [(UIButton *)self->_menuButton sizeToFit];
    menuLabelTitle = self->_menuLabelTitle;
    if (menuLabelTitle)
    {
      menuLabel = self->_menuLabel;
      if (!menuLabel)
      {
        v15 = objc_alloc_init(MEMORY[0x277D756B8]);
        v16 = self->_menuLabel;
        self->_menuLabel = v15;

        v17 = self->_menuLabel;
        backgroundColor2 = [(SUUIPopupMenuHeaderView *)self backgroundColor];
        [(UILabel *)v17 setBackgroundColor:backgroundColor2];

        v19 = self->_menuLabel;
        v20 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
        [(UILabel *)v19 setFont:v20];

        v21 = self->_menuLabel;
        v22 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
        [(UILabel *)v21 setTextColor:v22];

        [(SUUIPopupMenuHeaderView *)self addSubview:self->_menuLabel];
        menuLabel = self->_menuLabel;
        menuLabelTitle = self->_menuLabelTitle;
      }

      [(UILabel *)menuLabel setText:menuLabelTitle];
      [(UILabel *)self->_menuLabel sizeToFit];
    }

    [(SUUIPopupMenuHeaderView *)self setNeedsLayout];
    v23 = v25;
  }

  else
  {
    [(UIButton *)self->_menuButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
    [(UIButton *)self->_menuButton removeFromSuperview];
    v24 = self->_menuButton;
    self->_menuButton = 0;

    [(UILabel *)self->_menuLabel removeFromSuperview];
    v23 = self->_menuLabel;
    self->_menuLabel = 0;
  }
}

- (id)_titleLabel
{
  titleLabel = self->_titleLabel;
  if (!titleLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    v5 = self->_titleLabel;
    self->_titleLabel = v4;

    v6 = self->_titleLabel;
    backgroundColor = [(SUUIPopupMenuHeaderView *)self backgroundColor];
    [(UILabel *)v6 setBackgroundColor:backgroundColor];

    v8 = self->_titleLabel;
    v9 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    [(UILabel *)v8 setFont:v9];

    v10 = self->_titleLabel;
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(UILabel *)v10 setTextColor:blackColor];

    [(SUUIPopupMenuHeaderView *)self addSubview:self->_titleLabel];
    titleLabel = self->_titleLabel;
  }

  return titleLabel;
}

- (SUUIPopupMenuDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end