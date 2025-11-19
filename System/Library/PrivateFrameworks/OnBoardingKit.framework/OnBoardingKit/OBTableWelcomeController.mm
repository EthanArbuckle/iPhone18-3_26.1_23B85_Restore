@interface OBTableWelcomeController
- (BOOL)_buttonTrayInlined;
- (BOOL)_scrollContentUnderButtonTrayForGroupedStyle;
- (BOOL)_scrollViewContentIsUnderTray;
- (BOOL)contentViewUnderButtonTray;
- (OBTableWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (OBTableWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (OBTableWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5;
- (OBTableWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (double)headerViewBottomToTableViewTopPadding;
- (id)scrollView;
- (void)_floatButtonTray;
- (void)_inlineButtonTray;
- (void)_insertPendingTableView;
- (void)_layoutButtonTray;
- (void)_layoutFooterContainerFloatButtonTray;
- (void)_layoutFooterContainerInlineButtonTray;
- (void)_scrollViewDidLayoutSubviews:(id)a3;
- (void)_setTableView:(id)a3;
- (void)_setTableViewNonHeaderFooterDonation:(id)a3;
- (void)_setTableViewWithHeaderFooterDonation:(id)a3;
- (void)_setupScrollView;
- (void)_updateButtonTrayTableFooterContainerSizeIfNeeded;
- (void)_updateDirectionalLayoutMarginsForTableView;
- (void)_updateHeaderFooterViewSizeIfNeeded;
- (void)_updateHeaderTopOffsetConstraint;
- (void)_updateTableHeaderViewSizeIfNeeded;
- (void)loadView;
- (void)setTableFooterView:(id)a3;
- (void)setTableHeaderView:(id)a3;
- (void)setTableView:(id)a3;
- (void)updateDirectionalLayoutMargins;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation OBTableWelcomeController

- (OBTableWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  v6.receiver = self;
  v6.super_class = OBTableWelcomeController;
  result = [(OBWelcomeController *)&v6 initWithTitle:a3 detailText:a4 icon:a5 contentLayout:3];
  if (result)
  {
    result->_adoptTableViewScrollView = 0;
  }

  return result;
}

- (OBTableWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5
{
  v8.receiver = self;
  v8.super_class = OBTableWelcomeController;
  v5 = [(OBWelcomeController *)&v8 initWithTitle:a3 detailText:a4 symbolName:a5];
  v6 = v5;
  if (v5)
  {
    [(OBWelcomeController *)v5 setContentViewLayout:3];
    v6->_adoptTableViewScrollView = 0;
  }

  return v6;
}

- (OBTableWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  v8.receiver = self;
  v8.super_class = OBTableWelcomeController;
  result = [(OBWelcomeController *)&v8 initWithTitle:a3 detailText:a4 icon:a5 contentLayout:3];
  if (result)
  {
    result->_adoptTableViewScrollView = a6;
  }

  return result;
}

- (OBTableWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  v8.receiver = self;
  v8.super_class = OBTableWelcomeController;
  result = [(OBWelcomeController *)&v8 initWithTitle:a3 detailText:a4 symbolName:a5 contentLayout:3];
  if (result)
  {
    result->_adoptTableViewScrollView = a6;
  }

  return result;
}

- (void)setTableView:(id)a3
{
  v5 = a3;
  if (([(OBTableWelcomeController *)self isViewLoaded]& 1) != 0)
  {
    [(OBTableWelcomeController *)self _setTableView:v5];
  }

  else
  {
    objc_storeStrong(&self->_tableView, a3);
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
  v7 = [(OBTableWelcomeController *)self tableView];
  [v7 setDirectionalLayoutMargins:{0.0, v4, 0.0, v6}];

  v15 = +[OBDevice currentDevice];
  if ([v15 type] == 2)
  {
    v8 = [(OBTableWelcomeController *)self tableView];
    v9 = [v8 style];

    if (v9)
    {
      return;
    }

    v10 = [(OBTableWelcomeController *)self tableView];
    [v10 separatorInset];
    v12 = v11;
    v14 = v13;

    v15 = [(OBTableWelcomeController *)self tableView];
    [v15 setSeparatorInset:{v12, v4, v14, v6}];
  }
}

- (void)_setTableViewNonHeaderFooterDonation:(id)a3
{
  v33[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_tableView, a3);
  [(OBTableWelcomeController *)self _updateDirectionalLayoutMarginsForTableView];
  v6 = [(OBWelcomeController *)self contentView];
  [v6 addSubview:v5];

  v7 = [(OBWelcomeController *)self contentView];
  if (v7)
  {
    v8 = v7;
    v9 = [(OBTableWelcomeController *)self tableView];

    if (v9)
    {
      v23 = MEMORY[0x1E696ACD8];
      v32 = [(OBWelcomeController *)self contentView];
      v30 = [v32 topAnchor];
      v31 = [(OBTableWelcomeController *)self tableView];
      v29 = [v31 topAnchor];
      v28 = [v30 constraintEqualToAnchor:v29];
      v33[0] = v28;
      v27 = [(OBWelcomeController *)self contentView];
      v25 = [v27 leadingAnchor];
      v26 = [(OBTableWelcomeController *)self tableView];
      v24 = [v26 leadingAnchor];
      v22 = [v25 constraintEqualToAnchor:v24];
      v33[1] = v22;
      v21 = [(OBWelcomeController *)self contentView];
      v20 = [v21 trailingAnchor];
      v10 = [(OBTableWelcomeController *)self tableView];
      v11 = [v10 trailingAnchor];
      v12 = [v20 constraintEqualToAnchor:v11];
      v33[2] = v12;
      v13 = [(OBWelcomeController *)self contentView];
      v14 = [v13 bottomAnchor];
      v15 = [(OBTableWelcomeController *)self tableView];
      v16 = [v15 bottomAnchor];
      v17 = [v14 constraintEqualToAnchor:v16];
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
    v3 = [(OBTableWelcomeController *)self tableView];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = OBTableWelcomeController;
    v3 = [(OBWelcomeController *)&v5 scrollView];
  }

  return v3;
}

- (void)loadView
{
  if ([(OBTableWelcomeController *)self adoptTableViewScrollView])
  {
    v3 = [[OBTableHeaderFooterView alloc] initWithLayout:0];
    [(OBTableWelcomeController *)self setHeaderContainer:v3];

    v4 = [[OBTableHeaderFooterView alloc] initWithLayout:1];
    [(OBTableWelcomeController *)self setFooterContainer:v4];

    v5 = [(OBTableWelcomeController *)self headerContainer];
    v6 = [(OBWelcomeController *)self headerView];
    [v5 setInternalContentView:v6];
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
  v7 = [(OBTableWelcomeController *)self headerContainer];
  [(OBWelcomeController *)self _headerTopOffset];
  v9 = v8;
  [(OBTableWelcomeController *)self headerViewBottomToTableViewTopPadding];
  [v7 setInternalContentPadding:{v9, v4, v10, v6}];
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

- (void)_setTableViewWithHeaderFooterDonation:(id)a3
{
  v41[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_tableView, a3);
  [(UITableView *)self->_tableView setDelegate:self];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(OBTableWelcomeController *)self view];
  v39 = v5;
  [v6 addSubview:v5];

  v40 = [MEMORY[0x1E695DF70] array];
  v38 = [(OBTableWelcomeController *)self view];
  v36 = [v38 leadingAnchor];
  v37 = [(OBTableWelcomeController *)self tableView];
  v35 = [v37 leadingAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v41[0] = v34;
  v33 = [(OBTableWelcomeController *)self view];
  v32 = [v33 trailingAnchor];
  v7 = [(OBTableWelcomeController *)self tableView];
  v8 = [v7 trailingAnchor];
  v9 = [v32 constraintEqualToAnchor:v8];
  v41[1] = v9;
  v10 = [(OBTableWelcomeController *)self view];
  v11 = [v10 bottomAnchor];
  v12 = [(OBTableWelcomeController *)self tableView];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v41[2] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:3];
  [v40 addObjectsFromArray:v15];

  LODWORD(v7) = +[OBFeatureFlags isNaturalUIEnabled];
  v16 = [(OBTableWelcomeController *)self view];
  v17 = v16;
  if (v7)
  {
    v18 = [v16 topAnchor];
    v19 = [(OBTableWelcomeController *)self tableView];
    v20 = [v19 topAnchor];
    v21 = [v18 constraintEqualToAnchor:v20];
    v22 = v40;
    [v40 addObject:v21];
  }

  else
  {
    v18 = [v16 safeAreaLayoutGuide];
    v19 = [v18 topAnchor];
    v20 = [(OBTableWelcomeController *)self tableView];
    v21 = [v20 topAnchor];
    v23 = [v19 constraintEqualToAnchor:v21];
    v22 = v40;
    [v40 addObject:v23];
  }

  [MEMORY[0x1E696ACD8] activateConstraints:v22];
  v24 = [(OBTableWelcomeController *)self headerContainer];
  v25 = [(OBTableWelcomeController *)self view];
  [v25 bounds];
  [v24 setFrame:{0.0, 0.0}];

  v26 = [(OBTableWelcomeController *)self headerContainer];
  [v26 setNeedsLayout];

  v27 = [(OBTableWelcomeController *)self headerContainer];
  [v27 layoutIfNeeded];

  v28 = [(OBWelcomeController *)self headerView];
  v29 = [(OBTableWelcomeController *)self view];
  [v29 bounds];
  [v28 setFrame:{0.0, 0.0}];

  v30 = [(OBTableWelcomeController *)self headerContainer];
  [v39 setTableHeaderView:v30];

  v31 = *MEMORY[0x1E69E9840];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = OBTableWelcomeController;
  [(OBWelcomeController *)&v3 viewDidLayoutSubviews];
  [(OBTableWelcomeController *)self _updateHeaderFooterViewSizeIfNeeded];
}

- (void)setTableFooterView:(id)a3
{
  [(OBTableWelcomeController *)self setHostedTableFooterView:a3];

  [(OBTableWelcomeController *)self _layoutButtonTray];
}

- (void)setTableHeaderView:(id)a3
{
  [(OBTableWelcomeController *)self setHostedTableHeaderView:a3];
  [(OBBaseWelcomeController *)self directionalLayoutMargins];
  v5 = v4;
  v7 = v6;
  v8 = [(OBTableWelcomeController *)self headerContainer];
  v9 = [(OBTableWelcomeController *)self hostedTableHeaderView];
  [v8 setHostedView:v9];

  v10 = [(OBTableWelcomeController *)self headerContainer];
  [v10 setHostedViewPadding:{0.0, v5, 0.0, v7}];

  v11 = [(OBTableWelcomeController *)self headerContainer];
  [v11 layoutIfNeeded];

  v12 = [(OBTableWelcomeController *)self tableView];
  v13 = [(OBTableWelcomeController *)self headerContainer];
  [v12 setTableHeaderView:v13];

  v14 = [(OBTableWelcomeController *)self view];
  [v14 setNeedsLayout];

  v15 = [(OBTableWelcomeController *)self view];
  [v15 layoutIfNeeded];
}

- (double)headerViewBottomToTableViewTopPadding
{
  v2 = +[OBDevice currentDevice];
  v3 = [v2 templateType];

  if ((v3 - 2) > 7)
  {
    return 57.0;
  }

  else
  {
    return dbl_1B4FFC138[v3 - 2];
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
    v3 = [(OBTableWelcomeController *)self footerContainer];
    v4 = [(OBTableWelcomeController *)self view];
    [v4 bounds];
    [v3 setFrame:{0.0, 0.0}];

    v5 = [(OBTableWelcomeController *)self hostedTableFooterView];
    if (v5)
    {
    }

    else
    {
      v6 = [(OBWelcomeController *)self buttonTray];
      v7 = [v6 isHidden];

      if (v7)
      {
        v8 = *MEMORY[0x1E695F058];
        v9 = *(MEMORY[0x1E695F058] + 8);
        v10 = *(MEMORY[0x1E695F058] + 16);
        v11 = *(MEMORY[0x1E695F058] + 24);
        v12 = [(OBTableWelcomeController *)self footerContainer];
        [v12 setFrame:{v8, v9, v10, v11}];

        v13 = [(OBTableWelcomeController *)self footerContainer];
        [v13 setAutoresizingMask:0];

LABEL_7:
        v14 = [(OBTableWelcomeController *)self tableView];
        v15 = [(OBTableWelcomeController *)self footerContainer];
        [v14 setTableFooterView:v15];

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
    v3 = [(OBTableWelcomeController *)self footerContainer];
    v4 = [(OBTableWelcomeController *)self view];
    [v4 bounds];
    [v3 setFrame:{0.0, 0.0}];

    v5 = [(OBTableWelcomeController *)self footerContainer];
    [v5 setAutoresizingMask:16];

    [(OBTableWelcomeController *)self _layoutFooterContainerInlineButtonTray];
    v6 = [(OBTableWelcomeController *)self tableView];
    v7 = [(OBTableWelcomeController *)self footerContainer];
    [v6 setTableFooterView:v7];

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
    v4 = [(OBWelcomeController *)self buttonTray];
    v5 = [v4 superview];
    v6 = [(OBTableWelcomeController *)self footerContainer];
    v7 = v5 == v6;
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
    v3 = [(OBTableWelcomeController *)self scrollView];
    [v3 contentSize];
    v5 = v4;
    v6 = [(OBTableWelcomeController *)self scrollView];
    [v6 frame];
    MaxY = CGRectGetMaxY(v13);
    v8 = [(OBWelcomeController *)self buttonTray];
    [v8 intrinsicContentSize];
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
  v3 = [(OBTableWelcomeController *)self tableView];
  if ([v3 style] == 1)
  {
    if (![(OBTableWelcomeController *)self _buttonTrayInlined])
    {
      v4 = [(OBTableWelcomeController *)self adoptTableViewScrollView];

      if (v4)
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

  v5 = [(OBTableWelcomeController *)self tableView];
  if ([v5 style] != 2 || -[OBTableWelcomeController _buttonTrayInlined](self, "_buttonTrayInlined"))
  {

    goto LABEL_8;
  }

  v7 = [(OBTableWelcomeController *)self adoptTableViewScrollView];

  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_11:

  return [(OBTableWelcomeController *)self _scrollContentUnderButtonTrayForGroupedStyle];
}

- (BOOL)_scrollContentUnderButtonTrayForGroupedStyle
{
  v3 = [(OBTableWelcomeController *)self tableView];
  [v3 bounds];
  v5 = v4;

  v6 = [(OBWelcomeController *)self buttonTray];
  [v6 bounds];
  v8 = v7;

  v9 = 0;
  if (v5 != 0.0 && v8 != 0.0)
  {
    v10 = [(OBTableWelcomeController *)self tableView];
    [v10 contentSize];
    v12 = v11;
    v13 = [(OBTableWelcomeController *)self tableView];
    [v13 contentOffset];
    v15 = v12 - v14;
    [(OBWelcomeController *)self keyboardFrame];
    v9 = v15 > v5 - v8 - v16;
  }

  return v9;
}

- (void)_updateButtonTrayTableFooterContainerSizeIfNeeded
{
  v3 = [(OBTableWelcomeController *)self footerContainer];
  [v3 layoutIfNeeded];

  [(OBBaseWelcomeController *)self directionalLayoutMargins];
  v5 = v4;
  v7 = v6;
  v8 = [(OBTableWelcomeController *)self footerContainer];
  [v8 setInternalContentPadding:{0.0, v5, 0.0, v7}];

  v9 = [(OBTableWelcomeController *)self footerContainer];
  v10 = [(OBTableWelcomeController *)self footerContainer];
  [v10 frame];
  v12 = v11;
  v13 = [(OBTableWelcomeController *)self footerContainer];
  [v13 frame];
  v15 = v14;
  v16 = [(OBTableWelcomeController *)self tableView];
  [v16 bounds];
  v18 = v17;
  v19 = [(OBTableWelcomeController *)self footerContainer];
  [v19 intrinsicContentSize];
  [v9 setFrame:{v12, v15, v18, v20}];

  v21 = [(OBTableWelcomeController *)self tableView];
  v22 = [(OBTableWelcomeController *)self footerContainer];
  [v21 setTableFooterView:v22];

  [(OBWelcomeController *)self _updateButtonTrayBackdrop];
}

- (void)_updateTableHeaderViewSizeIfNeeded
{
  if ([(OBTableWelcomeController *)self adoptTableViewScrollView])
  {
    [(OBBaseWelcomeController *)self directionalLayoutMargins];
    v4 = v3;
    v6 = v5;
    v7 = [(OBTableWelcomeController *)self headerContainer];
    [(OBWelcomeController *)self _headerTopOffset];
    v9 = v8;
    [(OBTableWelcomeController *)self headerViewBottomToTableViewTopPadding];
    [v7 setInternalContentPadding:{v9, v4, v10, v6}];

    v11 = [(OBTableWelcomeController *)self headerContainer];
    [v11 layoutIfNeeded];

    v12 = [(OBTableWelcomeController *)self headerContainer];
    [v12 frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = [(OBTableWelcomeController *)self headerContainer];
    [v19 intrinsicContentSize];
    v21 = v20;

    v22 = [(OBTableWelcomeController *)self headerContainer];
    [v22 setFrame:{v14, v16, v18, v21}];

    v24 = [(OBTableWelcomeController *)self tableView];
    v23 = [(OBTableWelcomeController *)self headerContainer];
    [v24 setTableHeaderView:v23];
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
  v3 = [(OBTableWelcomeController *)self hostedTableFooterView];

  if (v3)
  {
    v4 = [(OBTableWelcomeController *)self footerContainer];
    v5 = [(OBWelcomeController *)self buttonTray];
    [v4 setInternalContentView:v5];

    v6 = [(OBTableWelcomeController *)self footerContainer];
    [(OBBaseWelcomeController *)self directionalLayoutMargins];
    v8 = v7;
    [(OBBaseWelcomeController *)self directionalLayoutMargins];
    [v6 setInternalContentPadding:{0.0, v8, 0.0}];

    v9 = [(OBTableWelcomeController *)self footerContainer];
    v10 = [(OBTableWelcomeController *)self hostedTableFooterView];
    [v9 setHostedView:v10];

    v11 = [(OBTableWelcomeController *)self footerContainer];
    [(OBBaseWelcomeController *)self directionalLayoutMargins];
    v13 = v12;
    [(OBBaseWelcomeController *)self directionalLayoutMargins];
    [v11 setHostedViewPadding:{0.0, v13, 0.0}];
  }

  v15 = [(OBTableWelcomeController *)self footerContainer];
  v14 = [(OBWelcomeController *)self buttonTray];
  [v15 setInternalContentView:v14];
}

- (void)_layoutFooterContainerFloatButtonTray
{
  v3 = [(OBTableWelcomeController *)self hostedTableFooterView];

  if (v3)
  {
    v4 = [(OBTableWelcomeController *)self footerContainer];
    [v4 setInternalContentView:0];

    v5 = [(OBTableWelcomeController *)self footerContainer];
    [(OBBaseWelcomeController *)self directionalLayoutMargins];
    v7 = v6;
    [(OBBaseWelcomeController *)self directionalLayoutMargins];
    [v5 setInternalContentPadding:{0.0, v7, 0.0}];

    v8 = [(OBTableWelcomeController *)self footerContainer];
    v9 = [(OBTableWelcomeController *)self hostedTableFooterView];
    [v8 setHostedView:v9];

    v10 = [(OBTableWelcomeController *)self footerContainer];
    [(OBBaseWelcomeController *)self directionalLayoutMargins];
    v12 = v11;
    [(OBBaseWelcomeController *)self directionalLayoutMargins];
    [v10 setHostedViewPadding:{0.0, v12, 0.0}];
  }

  v13 = [(OBTableWelcomeController *)self footerContainer];
  [v13 setInternalContentView:0];
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
  v3 = [(OBTableWelcomeController *)self tableView];
  if (v3)
  {
    v4 = v3;
    v5 = [(OBTableWelcomeController *)self tableView];
    v6 = [v5 superview];

    if (!v6)
    {
      v7 = [(OBTableWelcomeController *)self tableView];
      [(OBTableWelcomeController *)self _setTableView:v7];
    }
  }
}

- (void)_setTableView:(id)a3
{
  v6 = a3;
  v4 = [(OBTableWelcomeController *)self tableView];
  [v4 _setLayoutObserver:0];

  v5 = [[OBScrollViewWeakLayoutObserver alloc] initWithLayoutObserver:self];
  [v6 _setLayoutObserver:v5];

  if ([(OBTableWelcomeController *)self adoptTableViewScrollView])
  {
    [(OBTableWelcomeController *)self _setTableViewWithHeaderFooterDonation:v6];
  }

  else
  {
    [(OBTableWelcomeController *)self _setTableViewNonHeaderFooterDonation:v6];
  }
}

- (void)_scrollViewDidLayoutSubviews:(id)a3
{
  v4.receiver = self;
  v4.super_class = OBTableWelcomeController;
  [(OBWelcomeController *)&v4 _scrollViewDidLayoutSubviews:a3];
  [(OBWelcomeController *)self updateNavigationBarAnimated:1];
}

@end