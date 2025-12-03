@interface OBTableWelcomeController
- (BOOL)_buttonTrayInlined;
- (BOOL)_scrollContentUnderButtonTrayForGroupedStyle;
- (BOOL)_scrollViewContentIsUnderTray;
- (BOOL)contentViewUnderButtonTray;
- (OBTableWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (OBTableWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view;
- (OBTableWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name;
- (OBTableWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view;
- (double)headerViewBottomToTableViewTopPadding;
- (id)scrollView;
- (void)_floatButtonTray;
- (void)_inlineButtonTray;
- (void)_insertPendingTableView;
- (void)_layoutButtonTray;
- (void)_layoutFooterContainerFloatButtonTray;
- (void)_layoutFooterContainerInlineButtonTray;
- (void)_scrollViewDidLayoutSubviews:(id)subviews;
- (void)_setTableView:(id)view;
- (void)_setTableViewNonHeaderFooterDonation:(id)donation;
- (void)_setTableViewWithHeaderFooterDonation:(id)donation;
- (void)_setupScrollView;
- (void)_updateButtonTrayTableFooterContainerSizeIfNeeded;
- (void)_updateDirectionalLayoutMarginsForTableView;
- (void)_updateHeaderFooterViewSizeIfNeeded;
- (void)_updateHeaderTopOffsetConstraint;
- (void)_updateTableHeaderViewSizeIfNeeded;
- (void)loadView;
- (void)setTableFooterView:(id)view;
- (void)setTableHeaderView:(id)view;
- (void)setTableView:(id)view;
- (void)updateDirectionalLayoutMargins;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation OBTableWelcomeController

- (OBTableWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  v6.receiver = self;
  v6.super_class = OBTableWelcomeController;
  result = [(OBWelcomeController *)&v6 initWithTitle:title detailText:text icon:icon contentLayout:3];
  if (result)
  {
    result->_adoptTableViewScrollView = 0;
  }

  return result;
}

- (OBTableWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name
{
  v8.receiver = self;
  v8.super_class = OBTableWelcomeController;
  v5 = [(OBWelcomeController *)&v8 initWithTitle:title detailText:text symbolName:name];
  v6 = v5;
  if (v5)
  {
    [(OBWelcomeController *)v5 setContentViewLayout:3];
    v6->_adoptTableViewScrollView = 0;
  }

  return v6;
}

- (OBTableWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view
{
  v8.receiver = self;
  v8.super_class = OBTableWelcomeController;
  result = [(OBWelcomeController *)&v8 initWithTitle:title detailText:text icon:icon contentLayout:3];
  if (result)
  {
    result->_adoptTableViewScrollView = view;
  }

  return result;
}

- (OBTableWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view
{
  v8.receiver = self;
  v8.super_class = OBTableWelcomeController;
  result = [(OBWelcomeController *)&v8 initWithTitle:title detailText:text symbolName:name contentLayout:3];
  if (result)
  {
    result->_adoptTableViewScrollView = view;
  }

  return result;
}

- (void)setTableView:(id)view
{
  viewCopy = view;
  if (([(OBTableWelcomeController *)self isViewLoaded]& 1) != 0)
  {
    [(OBTableWelcomeController *)self _setTableView:viewCopy];
  }

  else
  {
    objc_storeStrong(&self->_tableView, view);
  }
}

- (void)updateDirectionalLayoutMargins
{
  v3.receiver = self;
  v3.super_class = OBTableWelcomeController;
  [(OBWelcomeController *)&v3 updateDirectionalLayoutMargins];
  [(OBTableWelcomeController *)self _updateDirectionalLayoutMarginsForTableView];
}

- (void)_updateDirectionalLayoutMarginsForTableView
{
  [(OBBaseWelcomeController *)self directionalLayoutMargins];
  v4 = v3;
  v6 = v5;
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setDirectionalLayoutMargins:{0.0, v4, 0.0, v6}];

  tableView4 = +[OBDevice currentDevice];
  if ([tableView4 type] == 2)
  {
    tableView2 = [(OBTableWelcomeController *)self tableView];
    style = [tableView2 style];

    if (style)
    {
      return;
    }

    tableView3 = [(OBTableWelcomeController *)self tableView];
    [tableView3 separatorInset];
    v12 = v11;
    v14 = v13;

    tableView4 = [(OBTableWelcomeController *)self tableView];
    [tableView4 setSeparatorInset:{v12, v4, v14, v6}];
  }
}

- (void)_setTableViewNonHeaderFooterDonation:(id)donation
{
  v33[4] = *MEMORY[0x1E69E9840];
  donationCopy = donation;
  objc_storeStrong(&self->_tableView, donation);
  [(OBTableWelcomeController *)self _updateDirectionalLayoutMarginsForTableView];
  contentView = [(OBWelcomeController *)self contentView];
  [contentView addSubview:donationCopy];

  contentView2 = [(OBWelcomeController *)self contentView];
  if (contentView2)
  {
    v8 = contentView2;
    tableView = [(OBTableWelcomeController *)self tableView];

    if (tableView)
    {
      v23 = MEMORY[0x1E696ACD8];
      contentView3 = [(OBWelcomeController *)self contentView];
      topAnchor = [contentView3 topAnchor];
      tableView2 = [(OBTableWelcomeController *)self tableView];
      topAnchor2 = [tableView2 topAnchor];
      v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v33[0] = v28;
      contentView4 = [(OBWelcomeController *)self contentView];
      leadingAnchor = [contentView4 leadingAnchor];
      tableView3 = [(OBTableWelcomeController *)self tableView];
      leadingAnchor2 = [tableView3 leadingAnchor];
      v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v33[1] = v22;
      contentView5 = [(OBWelcomeController *)self contentView];
      trailingAnchor = [contentView5 trailingAnchor];
      tableView4 = [(OBTableWelcomeController *)self tableView];
      trailingAnchor2 = [tableView4 trailingAnchor];
      v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v33[2] = v12;
      contentView6 = [(OBWelcomeController *)self contentView];
      bottomAnchor = [contentView6 bottomAnchor];
      tableView5 = [(OBTableWelcomeController *)self tableView];
      bottomAnchor2 = [tableView5 bottomAnchor];
      v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v33[3] = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
      [v23 activateConstraints:v18];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)scrollView
{
  if ([(OBTableWelcomeController *)self adoptTableViewScrollView])
  {
    tableView = [(OBTableWelcomeController *)self tableView];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = OBTableWelcomeController;
    tableView = [(OBWelcomeController *)&v5 scrollView];
  }

  return tableView;
}

- (void)loadView
{
  if ([(OBTableWelcomeController *)self adoptTableViewScrollView])
  {
    v3 = [[OBTableHeaderFooterView alloc] initWithLayout:0];
    [(OBTableWelcomeController *)self setHeaderContainer:v3];

    v4 = [[OBTableHeaderFooterView alloc] initWithLayout:1];
    [(OBTableWelcomeController *)self setFooterContainer:v4];

    headerContainer = [(OBTableWelcomeController *)self headerContainer];
    headerView = [(OBWelcomeController *)self headerView];
    [headerContainer setInternalContentView:headerView];
  }

  v7.receiver = self;
  v7.super_class = OBTableWelcomeController;
  [(OBWelcomeController *)&v7 loadView];
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = OBTableWelcomeController;
  [(OBWelcomeController *)&v11 viewDidLoad];
  [(OBTableWelcomeController *)self _insertPendingTableView];
  [(OBBaseWelcomeController *)self directionalLayoutMargins];
  v4 = v3;
  v6 = v5;
  headerContainer = [(OBTableWelcomeController *)self headerContainer];
  [(OBWelcomeController *)self _headerTopOffset];
  v9 = v8;
  [(OBTableWelcomeController *)self headerViewBottomToTableViewTopPadding];
  [headerContainer setInternalContentPadding:{v9, v4, v10, v6}];
}

- (void)_updateHeaderTopOffsetConstraint
{
  if (![(OBTableWelcomeController *)self adoptTableViewScrollView])
  {
    v3.receiver = self;
    v3.super_class = OBTableWelcomeController;
    [(OBWelcomeController *)&v3 _updateHeaderTopOffsetConstraint];
  }
}

- (void)_setTableViewWithHeaderFooterDonation:(id)donation
{
  v41[3] = *MEMORY[0x1E69E9840];
  donationCopy = donation;
  objc_storeStrong(&self->_tableView, donation);
  [(UITableView *)self->_tableView setDelegate:self];
  [donationCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(OBTableWelcomeController *)self view];
  v39 = donationCopy;
  [view addSubview:donationCopy];

  array = [MEMORY[0x1E695DF70] array];
  view2 = [(OBTableWelcomeController *)self view];
  leadingAnchor = [view2 leadingAnchor];
  tableView = [(OBTableWelcomeController *)self tableView];
  leadingAnchor2 = [tableView leadingAnchor];
  v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v41[0] = v34;
  view3 = [(OBTableWelcomeController *)self view];
  trailingAnchor = [view3 trailingAnchor];
  tableView2 = [(OBTableWelcomeController *)self tableView];
  trailingAnchor2 = [tableView2 trailingAnchor];
  v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v41[1] = v9;
  view4 = [(OBTableWelcomeController *)self view];
  bottomAnchor = [view4 bottomAnchor];
  tableView3 = [(OBTableWelcomeController *)self tableView];
  bottomAnchor2 = [tableView3 bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v41[2] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:3];
  [array addObjectsFromArray:v15];

  LODWORD(tableView2) = +[OBFeatureFlags isNaturalUIEnabled];
  view5 = [(OBTableWelcomeController *)self view];
  v17 = view5;
  if (tableView2)
  {
    topAnchor = [view5 topAnchor];
    tableView4 = [(OBTableWelcomeController *)self tableView];
    topAnchor2 = [tableView4 topAnchor];
    v20TopAnchor = [topAnchor constraintEqualToAnchor:topAnchor2];
    v22 = array;
    [array addObject:v20TopAnchor];
  }

  else
  {
    topAnchor = [view5 safeAreaLayoutGuide];
    tableView4 = [topAnchor topAnchor];
    topAnchor2 = [(OBTableWelcomeController *)self tableView];
    v20TopAnchor = [topAnchor2 topAnchor];
    v23 = [tableView4 constraintEqualToAnchor:v20TopAnchor];
    v22 = array;
    [array addObject:v23];
  }

  [MEMORY[0x1E696ACD8] activateConstraints:v22];
  headerContainer = [(OBTableWelcomeController *)self headerContainer];
  view6 = [(OBTableWelcomeController *)self view];
  [view6 bounds];
  [headerContainer setFrame:{0.0, 0.0}];

  headerContainer2 = [(OBTableWelcomeController *)self headerContainer];
  [headerContainer2 setNeedsLayout];

  headerContainer3 = [(OBTableWelcomeController *)self headerContainer];
  [headerContainer3 layoutIfNeeded];

  headerView = [(OBWelcomeController *)self headerView];
  view7 = [(OBTableWelcomeController *)self view];
  [view7 bounds];
  [headerView setFrame:{0.0, 0.0}];

  headerContainer4 = [(OBTableWelcomeController *)self headerContainer];
  [v39 setTableHeaderView:headerContainer4];

  v31 = *MEMORY[0x1E69E9840];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = OBTableWelcomeController;
  [(OBWelcomeController *)&v3 viewDidLayoutSubviews];
  [(OBTableWelcomeController *)self _updateHeaderFooterViewSizeIfNeeded];
}

- (void)setTableFooterView:(id)view
{
  [(OBTableWelcomeController *)self setHostedTableFooterView:view];

  [(OBTableWelcomeController *)self _layoutButtonTray];
}

- (void)setTableHeaderView:(id)view
{
  [(OBTableWelcomeController *)self setHostedTableHeaderView:view];
  [(OBBaseWelcomeController *)self directionalLayoutMargins];
  v5 = v4;
  v7 = v6;
  headerContainer = [(OBTableWelcomeController *)self headerContainer];
  hostedTableHeaderView = [(OBTableWelcomeController *)self hostedTableHeaderView];
  [headerContainer setHostedView:hostedTableHeaderView];

  headerContainer2 = [(OBTableWelcomeController *)self headerContainer];
  [headerContainer2 setHostedViewPadding:{0.0, v5, 0.0, v7}];

  headerContainer3 = [(OBTableWelcomeController *)self headerContainer];
  [headerContainer3 layoutIfNeeded];

  tableView = [(OBTableWelcomeController *)self tableView];
  headerContainer4 = [(OBTableWelcomeController *)self headerContainer];
  [tableView setTableHeaderView:headerContainer4];

  view = [(OBTableWelcomeController *)self view];
  [view setNeedsLayout];

  view2 = [(OBTableWelcomeController *)self view];
  [view2 layoutIfNeeded];
}

- (double)headerViewBottomToTableViewTopPadding
{
  v2 = +[OBDevice currentDevice];
  templateType = [v2 templateType];

  if ((templateType - 2) > 7)
  {
    return 57.0;
  }

  else
  {
    return dbl_1B4FFC138[templateType - 2];
  }
}

- (void)_layoutButtonTray
{
  if (![(OBTableWelcomeController *)self adoptTableViewScrollView]|| ([(OBTableWelcomeController *)self tableView], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4.receiver = self;
    v4.super_class = OBTableWelcomeController;
    [(OBWelcomeController *)&v4 _layoutButtonTray];
  }
}

- (void)_floatButtonTray
{
  if ([(OBTableWelcomeController *)self adoptTableViewScrollView])
  {
    footerContainer = [(OBTableWelcomeController *)self footerContainer];
    view = [(OBTableWelcomeController *)self view];
    [view bounds];
    [footerContainer setFrame:{0.0, 0.0}];

    hostedTableFooterView = [(OBTableWelcomeController *)self hostedTableFooterView];
    if (hostedTableFooterView)
    {
    }

    else
    {
      buttonTray = [(OBWelcomeController *)self buttonTray];
      isHidden = [buttonTray isHidden];

      if (isHidden)
      {
        v8 = *MEMORY[0x1E695F058];
        v9 = *(MEMORY[0x1E695F058] + 8);
        v10 = *(MEMORY[0x1E695F058] + 16);
        v11 = *(MEMORY[0x1E695F058] + 24);
        footerContainer2 = [(OBTableWelcomeController *)self footerContainer];
        [footerContainer2 setFrame:{v8, v9, v10, v11}];

        footerContainer3 = [(OBTableWelcomeController *)self footerContainer];
        [footerContainer3 setAutoresizingMask:0];

LABEL_7:
        tableView = [(OBTableWelcomeController *)self tableView];
        footerContainer4 = [(OBTableWelcomeController *)self footerContainer];
        [tableView setTableFooterView:footerContainer4];

        goto LABEL_8;
      }
    }

    [(OBTableWelcomeController *)self _layoutFooterContainerFloatButtonTray];
    goto LABEL_7;
  }

LABEL_8:
  v16.receiver = self;
  v16.super_class = OBTableWelcomeController;
  [(OBWelcomeController *)&v16 _floatButtonTray];
}

- (void)_inlineButtonTray
{
  if ([(OBTableWelcomeController *)self adoptTableViewScrollView])
  {
    footerContainer = [(OBTableWelcomeController *)self footerContainer];
    view = [(OBTableWelcomeController *)self view];
    [view bounds];
    [footerContainer setFrame:{0.0, 0.0}];

    footerContainer2 = [(OBTableWelcomeController *)self footerContainer];
    [footerContainer2 setAutoresizingMask:16];

    [(OBTableWelcomeController *)self _layoutFooterContainerInlineButtonTray];
    tableView = [(OBTableWelcomeController *)self tableView];
    footerContainer3 = [(OBTableWelcomeController *)self footerContainer];
    [tableView setTableFooterView:footerContainer3];

    [(OBTableWelcomeController *)self _updateButtonTrayTableFooterContainerSizeIfNeeded];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = OBTableWelcomeController;
    [(OBWelcomeController *)&v8 _inlineButtonTray];
  }
}

- (BOOL)_buttonTrayInlined
{
  if ([(OBTableWelcomeController *)self adoptTableViewScrollView]&& ([(OBTableWelcomeController *)self tableView], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    buttonTray = [(OBWelcomeController *)self buttonTray];
    superview = [buttonTray superview];
    footerContainer = [(OBTableWelcomeController *)self footerContainer];
    v7 = superview == footerContainer;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = OBTableWelcomeController;
    return [(OBWelcomeController *)&v9 _buttonTrayInlined];
  }

  return v7;
}

- (BOOL)contentViewUnderButtonTray
{
  if ([(OBTableWelcomeController *)self adoptTableViewScrollView])
  {
    scrollView = [(OBTableWelcomeController *)self scrollView];
    [scrollView contentSize];
    v5 = v4;
    scrollView2 = [(OBTableWelcomeController *)self scrollView];
    [scrollView2 frame];
    MaxY = CGRectGetMaxY(v13);
    buttonTray = [(OBWelcomeController *)self buttonTray];
    [buttonTray intrinsicContentSize];
    v10 = v5 >= MaxY - v9;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = OBTableWelcomeController;
    return [(OBWelcomeController *)&v12 contentViewUnderButtonTray];
  }

  return v10;
}

- (BOOL)_scrollViewContentIsUnderTray
{
  tableView = [(OBTableWelcomeController *)self tableView];
  if ([tableView style] == 1)
  {
    if (![(OBTableWelcomeController *)self _buttonTrayInlined])
    {
      adoptTableViewScrollView = [(OBTableWelcomeController *)self adoptTableViewScrollView];

      if (adoptTableViewScrollView)
      {
        goto LABEL_11;
      }

LABEL_9:
      v8.receiver = self;
      v8.super_class = OBTableWelcomeController;
      return [(OBWelcomeController *)&v8 _scrollViewContentIsUnderTray];
    }

LABEL_8:

    goto LABEL_9;
  }

  tableView2 = [(OBTableWelcomeController *)self tableView];
  if ([tableView2 style] != 2 || -[OBTableWelcomeController _buttonTrayInlined](self, "_buttonTrayInlined"))
  {

    goto LABEL_8;
  }

  adoptTableViewScrollView2 = [(OBTableWelcomeController *)self adoptTableViewScrollView];

  if (!adoptTableViewScrollView2)
  {
    goto LABEL_9;
  }

LABEL_11:

  return [(OBTableWelcomeController *)self _scrollContentUnderButtonTrayForGroupedStyle];
}

- (BOOL)_scrollContentUnderButtonTrayForGroupedStyle
{
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView bounds];
  v5 = v4;

  buttonTray = [(OBWelcomeController *)self buttonTray];
  [buttonTray bounds];
  v8 = v7;

  v9 = 0;
  if (v5 != 0.0 && v8 != 0.0)
  {
    tableView2 = [(OBTableWelcomeController *)self tableView];
    [tableView2 contentSize];
    v12 = v11;
    tableView3 = [(OBTableWelcomeController *)self tableView];
    [tableView3 contentOffset];
    v15 = v12 - v14;
    [(OBWelcomeController *)self keyboardFrame];
    v9 = v15 > v5 - v8 - v16;
  }

  return v9;
}

- (void)_updateButtonTrayTableFooterContainerSizeIfNeeded
{
  footerContainer = [(OBTableWelcomeController *)self footerContainer];
  [footerContainer layoutIfNeeded];

  [(OBBaseWelcomeController *)self directionalLayoutMargins];
  v5 = v4;
  v7 = v6;
  footerContainer2 = [(OBTableWelcomeController *)self footerContainer];
  [footerContainer2 setInternalContentPadding:{0.0, v5, 0.0, v7}];

  footerContainer3 = [(OBTableWelcomeController *)self footerContainer];
  footerContainer4 = [(OBTableWelcomeController *)self footerContainer];
  [footerContainer4 frame];
  v12 = v11;
  footerContainer5 = [(OBTableWelcomeController *)self footerContainer];
  [footerContainer5 frame];
  v15 = v14;
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView bounds];
  v18 = v17;
  footerContainer6 = [(OBTableWelcomeController *)self footerContainer];
  [footerContainer6 intrinsicContentSize];
  [footerContainer3 setFrame:{v12, v15, v18, v20}];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  footerContainer7 = [(OBTableWelcomeController *)self footerContainer];
  [tableView2 setTableFooterView:footerContainer7];

  [(OBWelcomeController *)self _updateButtonTrayBackdrop];
}

- (void)_updateTableHeaderViewSizeIfNeeded
{
  if ([(OBTableWelcomeController *)self adoptTableViewScrollView])
  {
    [(OBBaseWelcomeController *)self directionalLayoutMargins];
    v4 = v3;
    v6 = v5;
    headerContainer = [(OBTableWelcomeController *)self headerContainer];
    [(OBWelcomeController *)self _headerTopOffset];
    v9 = v8;
    [(OBTableWelcomeController *)self headerViewBottomToTableViewTopPadding];
    [headerContainer setInternalContentPadding:{v9, v4, v10, v6}];

    headerContainer2 = [(OBTableWelcomeController *)self headerContainer];
    [headerContainer2 layoutIfNeeded];

    headerContainer3 = [(OBTableWelcomeController *)self headerContainer];
    [headerContainer3 frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;

    headerContainer4 = [(OBTableWelcomeController *)self headerContainer];
    [headerContainer4 intrinsicContentSize];
    v21 = v20;

    headerContainer5 = [(OBTableWelcomeController *)self headerContainer];
    [headerContainer5 setFrame:{v14, v16, v18, v21}];

    tableView = [(OBTableWelcomeController *)self tableView];
    headerContainer6 = [(OBTableWelcomeController *)self headerContainer];
    [tableView setTableHeaderView:headerContainer6];
  }
}

- (void)_setupScrollView
{
  if (![(OBTableWelcomeController *)self adoptTableViewScrollView])
  {
    v3.receiver = self;
    v3.super_class = OBTableWelcomeController;
    [(OBWelcomeController *)&v3 _setupScrollView];
  }
}

- (void)_layoutFooterContainerInlineButtonTray
{
  hostedTableFooterView = [(OBTableWelcomeController *)self hostedTableFooterView];

  if (hostedTableFooterView)
  {
    footerContainer = [(OBTableWelcomeController *)self footerContainer];
    buttonTray = [(OBWelcomeController *)self buttonTray];
    [footerContainer setInternalContentView:buttonTray];

    footerContainer2 = [(OBTableWelcomeController *)self footerContainer];
    [(OBBaseWelcomeController *)self directionalLayoutMargins];
    v8 = v7;
    [(OBBaseWelcomeController *)self directionalLayoutMargins];
    [footerContainer2 setInternalContentPadding:{0.0, v8, 0.0}];

    footerContainer3 = [(OBTableWelcomeController *)self footerContainer];
    hostedTableFooterView2 = [(OBTableWelcomeController *)self hostedTableFooterView];
    [footerContainer3 setHostedView:hostedTableFooterView2];

    footerContainer4 = [(OBTableWelcomeController *)self footerContainer];
    [(OBBaseWelcomeController *)self directionalLayoutMargins];
    v13 = v12;
    [(OBBaseWelcomeController *)self directionalLayoutMargins];
    [footerContainer4 setHostedViewPadding:{0.0, v13, 0.0}];
  }

  footerContainer5 = [(OBTableWelcomeController *)self footerContainer];
  buttonTray2 = [(OBWelcomeController *)self buttonTray];
  [footerContainer5 setInternalContentView:buttonTray2];
}

- (void)_layoutFooterContainerFloatButtonTray
{
  hostedTableFooterView = [(OBTableWelcomeController *)self hostedTableFooterView];

  if (hostedTableFooterView)
  {
    footerContainer = [(OBTableWelcomeController *)self footerContainer];
    [footerContainer setInternalContentView:0];

    footerContainer2 = [(OBTableWelcomeController *)self footerContainer];
    [(OBBaseWelcomeController *)self directionalLayoutMargins];
    v7 = v6;
    [(OBBaseWelcomeController *)self directionalLayoutMargins];
    [footerContainer2 setInternalContentPadding:{0.0, v7, 0.0}];

    footerContainer3 = [(OBTableWelcomeController *)self footerContainer];
    hostedTableFooterView2 = [(OBTableWelcomeController *)self hostedTableFooterView];
    [footerContainer3 setHostedView:hostedTableFooterView2];

    footerContainer4 = [(OBTableWelcomeController *)self footerContainer];
    [(OBBaseWelcomeController *)self directionalLayoutMargins];
    v12 = v11;
    [(OBBaseWelcomeController *)self directionalLayoutMargins];
    [footerContainer4 setHostedViewPadding:{0.0, v12, 0.0}];
  }

  footerContainer5 = [(OBTableWelcomeController *)self footerContainer];
  [footerContainer5 setInternalContentView:0];
}

- (void)_updateHeaderFooterViewSizeIfNeeded
{
  if ([(OBTableWelcomeController *)self adoptTableViewScrollView])
  {
    [(OBTableWelcomeController *)self _updateTableHeaderViewSizeIfNeeded];

    [(OBTableWelcomeController *)self _updateButtonTrayTableFooterContainerSizeIfNeeded];
  }
}

- (void)_insertPendingTableView
{
  tableView = [(OBTableWelcomeController *)self tableView];
  if (tableView)
  {
    v4 = tableView;
    tableView2 = [(OBTableWelcomeController *)self tableView];
    superview = [tableView2 superview];

    if (!superview)
    {
      tableView3 = [(OBTableWelcomeController *)self tableView];
      [(OBTableWelcomeController *)self _setTableView:tableView3];
    }
  }
}

- (void)_setTableView:(id)view
{
  viewCopy = view;
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView _setLayoutObserver:0];

  v5 = [[OBScrollViewWeakLayoutObserver alloc] initWithLayoutObserver:self];
  [viewCopy _setLayoutObserver:v5];

  if ([(OBTableWelcomeController *)self adoptTableViewScrollView])
  {
    [(OBTableWelcomeController *)self _setTableViewWithHeaderFooterDonation:viewCopy];
  }

  else
  {
    [(OBTableWelcomeController *)self _setTableViewNonHeaderFooterDonation:viewCopy];
  }
}

- (void)_scrollViewDidLayoutSubviews:(id)subviews
{
  v4.receiver = self;
  v4.super_class = OBTableWelcomeController;
  [(OBWelcomeController *)&v4 _scrollViewDidLayoutSubviews:subviews];
  [(OBWelcomeController *)self updateNavigationBarAnimated:1];
}

@end