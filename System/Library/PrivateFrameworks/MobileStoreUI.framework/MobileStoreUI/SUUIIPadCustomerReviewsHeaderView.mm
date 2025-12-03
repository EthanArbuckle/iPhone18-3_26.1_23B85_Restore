@interface SUUIIPadCustomerReviewsHeaderView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SUUIIPadCustomerReviewsHeaderView)initWithClientContext:(id)context;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_destroySortPopoverController;
- (void)_reloadSortButton;
- (void)_sortButtonAction:(id)action;
- (void)dealloc;
- (void)layoutSubviews;
- (void)menuViewController:(id)controller didSelectItemAtIndex:(int64_t)index;
- (void)setBackgroundColor:(id)color;
- (void)setColorScheme:(id)scheme;
- (void)setSelectedSortIndex:(int64_t)index;
- (void)setSortTitles:(id)titles;
@end

@implementation SUUIIPadCustomerReviewsHeaderView

- (SUUIIPadCustomerReviewsHeaderView)initWithClientContext:(id)context
{
  contextCopy = context;
  v39.receiver = self;
  v39.super_class = SUUIIPadCustomerReviewsHeaderView;
  v6 = [(SUUIIPadCustomerReviewsHeaderView *)&v39 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, context);
    v8 = [MEMORY[0x277D75220] buttonWithType:1];
    appSupportButton = v7->_appSupportButton;
    v7->_appSupportButton = v8;

    titleLabel = [(UIButton *)v7->_appSupportButton titleLabel];
    v11 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    [titleLabel setFont:v11];

    v12 = v7->_appSupportButton;
    if (contextCopy)
    {
      [contextCopy localizedStringForKey:@"REVIEWS_HEADER_BUTTON_APP_SUPPORT" inTable:@"ProductPage"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"REVIEWS_HEADER_BUTTON_APP_SUPPORT" inBundles:0 inTable:@"ProductPage"];
    }
    v13 = ;
    [(UIButton *)v12 setTitle:v13 forState:0];

    [(UIButton *)v7->_appSupportButton sizeToFit];
    v14 = v7->_appSupportButton;
    secondaryTextColor = [(SUUIColorScheme *)v7->_colorScheme secondaryTextColor];
    [(UIButton *)v14 setTintColor:secondaryTextColor];

    [(SUUIIPadCustomerReviewsHeaderView *)v7 addSubview:v7->_appSupportButton];
    v16 = [MEMORY[0x277D75220] buttonWithType:1];
    writeAReviewButton = v7->_writeAReviewButton;
    v7->_writeAReviewButton = v16;

    titleLabel2 = [(UIButton *)v7->_writeAReviewButton titleLabel];
    v19 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    [titleLabel2 setFont:v19];

    v20 = v7->_writeAReviewButton;
    if (contextCopy)
    {
      [contextCopy localizedStringForKey:@"REVIEWS_HEADER_BUTTON_WRITE_A_REVIEW_IPAD" inTable:@"ProductPage"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"REVIEWS_HEADER_BUTTON_WRITE_A_REVIEW_IPAD" inBundles:0 inTable:@"ProductPage"];
    }
    v21 = ;
    [(UIButton *)v20 setTitle:v21 forState:0];

    [(UIButton *)v7->_writeAReviewButton sizeToFit];
    v22 = v7->_writeAReviewButton;
    secondaryTextColor2 = [(SUUIColorScheme *)v7->_colorScheme secondaryTextColor];
    [(UIButton *)v22 setTintColor:secondaryTextColor2];

    [(SUUIIPadCustomerReviewsHeaderView *)v7 addSubview:v7->_writeAReviewButton];
    v24 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v7->_titleLabel;
    v7->_titleLabel = v24;

    v26 = v7->_titleLabel;
    v27 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
    [(UILabel *)v26 setFont:v27];

    v28 = v7->_titleLabel;
    secondaryTextColor3 = [(SUUIColorScheme *)v7->_colorScheme secondaryTextColor];
    if (secondaryTextColor3)
    {
      [(UILabel *)v28 setTextColor:secondaryTextColor3];
    }

    else
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
      [(UILabel *)v28 setTextColor:blackColor];
    }

    v31 = v7->_titleLabel;
    if (contextCopy)
    {
      [contextCopy localizedStringForKey:@"REVIEWS_HEADER_TITLE" inTable:@"ProductPage"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"REVIEWS_HEADER_TITLE" inBundles:0 inTable:@"ProductPage"];
    }
    v32 = ;
    [(UILabel *)v31 setText:v32];

    [(UILabel *)v7->_titleLabel sizeToFit];
    [(SUUIIPadCustomerReviewsHeaderView *)v7 addSubview:v7->_titleLabel];
    v33 = objc_alloc_init(MEMORY[0x277D75D18]);
    separatorView = v7->_separatorView;
    v7->_separatorView = v33;

    v35 = v7->_separatorView;
    primaryTextColor = [(SUUIColorScheme *)v7->_colorScheme primaryTextColor];
    if (primaryTextColor)
    {
      [(UIView *)v35 setBackgroundColor:primaryTextColor];
    }

    else
    {
      v37 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
      [(UIView *)v35 setBackgroundColor:v37];
    }

    [(SUUIIPadCustomerReviewsHeaderView *)v7 addSubview:v7->_separatorView];
  }

  return v7;
}

- (void)dealloc
{
  [(UIButton *)self->_sortButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  contentViewController = [(UIPopoverController *)self->_sortPopoverController contentViewController];
  [contentViewController setDelegate:0];
  [(UIPopoverController *)self->_sortPopoverController setDelegate:0];

  v4.receiver = self;
  v4.super_class = SUUIIPadCustomerReviewsHeaderView;
  [(SUUIIPadCustomerReviewsHeaderView *)&v4 dealloc];
}

- (void)setColorScheme:(id)scheme
{
  schemeCopy = scheme;
  if (self->_colorScheme != schemeCopy)
  {
    v22 = schemeCopy;
    objc_storeStrong(&self->_colorScheme, scheme);
    titleLabel = self->_titleLabel;
    secondaryTextColor = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (secondaryTextColor)
    {
      [(UILabel *)titleLabel setTextColor:secondaryTextColor];
    }

    else
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
      [(UILabel *)titleLabel setTextColor:blackColor];
    }

    sortLabel = self->_sortLabel;
    primaryTextColor = [(SUUIColorScheme *)self->_colorScheme primaryTextColor];
    v11 = SUUIColorWithAlpha(primaryTextColor, 0.6);
    if (v11)
    {
      [(UILabel *)sortLabel setTextColor:v11];
    }

    else
    {
      v12 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
      [(UILabel *)sortLabel setTextColor:v12];
    }

    separatorView = self->_separatorView;
    primaryTextColor2 = [(SUUIColorScheme *)self->_colorScheme primaryTextColor];
    if (primaryTextColor2)
    {
      [(UIView *)separatorView setBackgroundColor:primaryTextColor2];
    }

    else
    {
      v15 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
      [(UIView *)separatorView setBackgroundColor:v15];
    }

    appSupportButton = self->_appSupportButton;
    secondaryTextColor2 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    [(UIButton *)appSupportButton setTintColor:secondaryTextColor2];

    writeAReviewButton = self->_writeAReviewButton;
    secondaryTextColor3 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    [(UIButton *)writeAReviewButton setTintColor:secondaryTextColor3];

    sortButton = self->_sortButton;
    secondaryTextColor4 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    [(UIButton *)sortButton setTintColor:secondaryTextColor4];

    schemeCopy = v22;
  }
}

- (void)setSelectedSortIndex:(int64_t)index
{
  if (self->_selectedSortIndex != index)
  {
    self->_selectedSortIndex = index;
    [(SUUIIPadCustomerReviewsHeaderView *)self _reloadSortButton];
  }
}

- (void)setSortTitles:(id)titles
{
  if (self->_sortTitles != titles)
  {
    v4 = [titles copy];
    sortTitles = self->_sortTitles;
    self->_sortTitles = v4;

    [(SUUIIPadCustomerReviewsHeaderView *)self _reloadSortButton];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v11.receiver = self;
  v11.super_class = SUUIIPadCustomerReviewsHeaderView;
  v7 = [(SUUIIPadCustomerReviewsHeaderView *)&v11 hitTest:event withEvent:?];
  if (v7 == self)
  {
    sortButton = self->_sortButton;
    if (sortButton)
    {
      [(UIButton *)sortButton frame];
      v15 = CGRectInset(v14, -20.0, -20.0);
      v13.x = x;
      v13.y = y;
      if (CGRectContainsPoint(v15, v13))
      {
        v10 = self->_sortButton;

        v7 = v10;
      }
    }
  }

  return v7;
}

- (void)layoutSubviews
{
  [(SUUIIPadCustomerReviewsHeaderView *)self bounds];
  v4 = v3;
  v6 = v5;
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel frame];
    v9 = v8;
    [(UILabel *)self->_titleLabel setFrame:15.0, 10.0, v4 + -15.0 + -15.0];
    v29.origin.x = 15.0;
    v29.origin.y = 10.0;
    v29.size.width = v4 + -15.0 + -15.0;
    v29.size.height = v9;
    v10 = CGRectGetMaxY(v29) + -5.0 + 19.0 + -11.0;
  }

  else
  {
    v10 = 4.0;
  }

  writeAReviewButton = self->_writeAReviewButton;
  if (writeAReviewButton)
  {
    [(UIButton *)writeAReviewButton frame];
    v13 = v12;
    v15 = v14;
    [(UIButton *)self->_writeAReviewButton setFrame:15.0, v10];
    v30.origin.x = 15.0;
    v30.origin.y = v10;
    v30.size.width = v13;
    v30.size.height = v15;
    v16 = CGRectGetMaxX(v30) + 20.0;
  }

  else
  {
    v16 = 15.0;
  }

  appSupportButton = self->_appSupportButton;
  if (appSupportButton)
  {
    [(UIButton *)appSupportButton frame];
    [(UIButton *)self->_appSupportButton setFrame:v16, v10];
  }

  sortButton = self->_sortButton;
  if (sortButton)
  {
    [(UIButton *)sortButton frame];
    v20 = v4 + -15.0 - v19;
    [(UIButton *)self->_sortButton setFrame:v20, v10];
    [(UILabel *)self->_sortLabel frame];
    [(UILabel *)self->_sortLabel setFrame:v20 + -5.0 - v21, v10 + 7.0];
  }

  separatorView = self->_separatorView;
  if (separatorView)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v24 = v6 - 1.0 / v23;
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 scale];
    [(UIView *)separatorView setFrame:15.0, v24, v4 + -15.0, 1.0 / v26];
  }
}

- (void)setBackgroundColor:(id)color
{
  appSupportButton = self->_appSupportButton;
  colorCopy = color;
  [(UIButton *)appSupportButton setBackgroundColor:colorCopy];
  [(UIButton *)self->_sortButton setBackgroundColor:colorCopy];
  [(UILabel *)self->_sortLabel setBackgroundColor:colorCopy];
  [(UILabel *)self->_titleLabel setBackgroundColor:colorCopy];
  [(UIButton *)self->_writeAReviewButton setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUIIPadCustomerReviewsHeaderView;
  [(SUUIIPadCustomerReviewsHeaderView *)&v6 setBackgroundColor:colorCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(UILabel *)self->_titleLabel frame:fits.width];
  v6 = v5 + 30.0 + -5.0 + -5.0 + 19.0;
  [(UIButton *)self->_writeAReviewButton frame];
  v8 = v7 + v6 + -11.0 + -10.0;
  v9 = width;
  result.height = v8;
  result.width = v9;
  return result;
}

- (void)menuViewController:(id)controller didSelectItemAtIndex:(int64_t)index
{
  if (self->_selectedSortIndex != index)
  {
    self->_selectedSortIndex = index;
    [(SUUIIPadCustomerReviewsHeaderView *)self _reloadSortButton];
    [(SUUIIPadCustomerReviewsHeaderView *)self sendActionsForControlEvents:4096];
  }

  [(UIPopoverController *)self->_sortPopoverController dismissPopoverAnimated:1];

  [(SUUIIPadCustomerReviewsHeaderView *)self _destroySortPopoverController];
}

- (void)_sortButtonAction:(id)action
{
  if (!self->_sortPopoverController)
  {
    actionCopy = action;
    v17 = [[SUUIMenuViewController alloc] initWithMenuTitles:self->_sortTitles];
    [(SUUIMenuViewController *)v17 setDelegate:self];
    [(SUUIMenuViewController *)v17 setIndexOfCheckedTitle:self->_selectedSortIndex];
    v5 = [objc_alloc(MEMORY[0x277D758A0]) initWithContentViewController:v17];
    sortPopoverController = self->_sortPopoverController;
    self->_sortPopoverController = v5;

    [(UIPopoverController *)self->_sortPopoverController setDelegate:self];
    [(UIPopoverController *)self->_sortPopoverController setPopoverContentSize:320.0, [(NSArray *)self->_sortTitles count]* 44.0];
    v7 = self->_sortPopoverController;
    [actionCopy frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    superview = [actionCopy superview];

    [(UIPopoverController *)v7 presentPopoverFromRect:superview inView:15 permittedArrowDirections:1 animated:v9, v11, v13, v15];
  }
}

- (void)_destroySortPopoverController
{
  contentViewController = [(UIPopoverController *)self->_sortPopoverController contentViewController];
  [contentViewController setDelegate:0];
  [(UIPopoverController *)self->_sortPopoverController setDelegate:0];
  sortPopoverController = self->_sortPopoverController;
  self->_sortPopoverController = 0;
}

- (void)_reloadSortButton
{
  if ([(NSArray *)self->_sortTitles count])
  {
    if (!self->_sortButton)
    {
      v3 = [MEMORY[0x277D75220] buttonWithType:1];
      sortButton = self->_sortButton;
      self->_sortButton = v3;

      [(UIButton *)self->_sortButton addTarget:self action:sel__sortButtonAction_ forControlEvents:64];
      v5 = self->_sortButton;
      backgroundColor = [(SUUIIPadCustomerReviewsHeaderView *)self backgroundColor];
      [(UIButton *)v5 setBackgroundColor:backgroundColor];

      v7 = self->_sortButton;
      secondaryTextColor = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
      [(UIButton *)v7 setTintColor:secondaryTextColor];

      titleLabel = [(UIButton *)self->_sortButton titleLabel];
      v10 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
      [titleLabel setFont:v10];

      [(SUUIIPadCustomerReviewsHeaderView *)self addSubview:self->_sortButton];
    }

    if (!self->_sortLabel)
    {
      v11 = objc_alloc_init(MEMORY[0x277D756B8]);
      sortLabel = self->_sortLabel;
      self->_sortLabel = v11;

      v13 = self->_sortLabel;
      backgroundColor2 = [(SUUIIPadCustomerReviewsHeaderView *)self backgroundColor];
      [(UILabel *)v13 setBackgroundColor:backgroundColor2];

      v15 = self->_sortLabel;
      v16 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
      [(UILabel *)v15 setFont:v16];

      v17 = self->_sortLabel;
      primaryTextColor = [(SUUIColorScheme *)self->_colorScheme primaryTextColor];
      v19 = SUUIColorWithAlpha(primaryTextColor, 0.6);
      if (v19)
      {
        [(UILabel *)v17 setTextColor:v19];
      }

      else
      {
        v22 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
        [(UILabel *)v17 setTextColor:v22];
      }

      v23 = self->_sortLabel;
      clientContext = self->_clientContext;
      if (clientContext)
      {
        [(SUUIClientContext *)clientContext localizedStringForKey:@"REVIEWS_HEADER_SORT_BY" inTable:@"ProductPage"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"REVIEWS_HEADER_SORT_BY" inBundles:0 inTable:@"ProductPage"];
      }
      v25 = ;
      [(UILabel *)v23 setText:v25];

      [(UILabel *)self->_sortLabel sizeToFit];
      [(SUUIIPadCustomerReviewsHeaderView *)self addSubview:self->_sortLabel];
    }

    selectedSortIndex = self->_selectedSortIndex;
    if (selectedSortIndex < [(NSArray *)self->_sortTitles count])
    {
      v27 = self->_sortButton;
      v28 = [(NSArray *)self->_sortTitles objectAtIndex:self->_selectedSortIndex];
      [(UIButton *)v27 setTitle:v28 forState:0];

      [(UIButton *)self->_sortButton sizeToFit];
    }

    [(SUUIIPadCustomerReviewsHeaderView *)self setNeedsLayout];
  }

  else
  {
    [(UILabel *)self->_sortLabel removeFromSuperview];
    v20 = self->_sortLabel;
    self->_sortLabel = 0;

    [(UIButton *)self->_sortButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
    [(UIButton *)self->_sortButton removeFromSuperview];
    v21 = self->_sortButton;
    self->_sortButton = 0;
  }
}

@end