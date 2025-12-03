@interface DMCEnrollmentTableViewPlatterCell
- (DMCEnrollmentTableViewPlatterCell)initWithCellData:(id)data parentTableView:(id)view useShadow:(BOOL)shadow;
- (UITableView)parentTableView;
- (double)cellHeight;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation DMCEnrollmentTableViewPlatterCell

- (DMCEnrollmentTableViewPlatterCell)initWithCellData:(id)data parentTableView:(id)view useShadow:(BOOL)shadow
{
  shadowCopy = shadow;
  v76 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  obj = view;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v72.receiver = self;
  v72.super_class = DMCEnrollmentTableViewPlatterCell;
  v11 = [(DMCEnrollmentTableViewPlatterCell *)&v72 initWithStyle:0 reuseIdentifier:v10];

  if (v11)
  {
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(DMCEnrollmentTableViewPlatterCell *)v11 setBackgroundColor:systemBackgroundColor];

    [(DMCEnrollmentTableViewPlatterCell *)v11 setSelectionStyle:0];
    contentView = [(DMCEnrollmentTableViewPlatterCell *)v11 contentView];
    layer = [contentView layer];
    [layer setMasksToBounds:0];

    objc_storeStrong(&v11->_cellData, data);
    objc_storeWeak(&v11->_parentTableView, obj);
    if (shadowCopy)
    {
      v15 = objc_opt_new();
      shadowView = v11->_shadowView;
      v11->_shadowView = v15;

      systemBackgroundColor2 = [MEMORY[0x277D75348] systemBackgroundColor];
      [(UIView *)v11->_shadowView setBackgroundColor:systemBackgroundColor2];

      layer2 = [(UIView *)v11->_shadowView layer];
      [layer2 setMasksToBounds:0];

      layer3 = [(UIView *)v11->_shadowView layer];
      [layer3 setShadowOffset:{0.0, 3.0}];

      layer4 = [(UIView *)v11->_shadowView layer];
      [layer4 setShadowRadius:5.0];

      layer5 = [(UIView *)v11->_shadowView layer];
      LODWORD(v22) = 1053609165;
      [layer5 setShadowOpacity:v22];

      lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
      v24 = lightGrayColor;
      cGColor = [lightGrayColor CGColor];
      layer6 = [(UIView *)v11->_shadowView layer];
      [layer6 setShadowColor:cGColor];
    }

    v27 = [[DMCEnrollmentTemplateTableViewController alloc] initWithIconName:0 iconImage:0 title:0 subTitle:0 layoutStyle:1];
    tableViewController = v11->_tableViewController;
    v11->_tableViewController = v27;

    tableView = [(DMCEnrollmentTemplateTableViewController *)v11->_tableViewController tableView];
    [tableView setScrollEnabled:0];

    tableView2 = [(DMCEnrollmentTemplateTableViewController *)v11->_tableViewController tableView];
    [tableView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v31 = dataCopy;
    v32 = [v31 countByEnumeratingWithState:&v68 objects:v75 count:16];
    if (v32)
    {
      v33 = *v69;
      do
      {
        v34 = 0;
        do
        {
          if (*v69 != v33)
          {
            objc_enumerationMutation(v31);
          }

          [(DMCEnrollmentTemplateTableViewController *)v11->_tableViewController addSectionWithCellData:*(*(&v68 + 1) + 8 * v34++) animated:0];
        }

        while (v32 != v34);
        v32 = [v31 countByEnumeratingWithState:&v68 objects:v75 count:16];
      }

      while (v32);
    }

    [(DMCEnrollmentTemplateTableViewController *)v11->_tableViewController willMoveToParentViewController:0];
    contentView2 = [(DMCEnrollmentTableViewPlatterCell *)v11 contentView];
    [contentView2 addSubview:v11->_shadowView];

    contentView3 = [(DMCEnrollmentTableViewPlatterCell *)v11 contentView];
    tableView3 = [(DMCEnrollmentTemplateTableViewController *)v11->_tableViewController tableView];
    [contentView3 addSubview:tableView3];

    [(DMCEnrollmentTemplateTableViewController *)v11->_tableViewController didMoveToParentViewController:0];
    v50 = MEMORY[0x277CCAAD0];
    tableView4 = [(DMCEnrollmentTemplateTableViewController *)v11->_tableViewController tableView];
    widthAnchor = [tableView4 widthAnchor];
    contentView4 = [(DMCEnrollmentTableViewPlatterCell *)v11 contentView];
    widthAnchor2 = [contentView4 widthAnchor];
    v58 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:1.0];
    v74[0] = v58;
    tableView5 = [(DMCEnrollmentTemplateTableViewController *)v11->_tableViewController tableView];
    heightAnchor = [tableView5 heightAnchor];
    contentView5 = [(DMCEnrollmentTableViewPlatterCell *)v11 contentView];
    heightAnchor2 = [contentView5 heightAnchor];
    v53 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:1.0];
    v74[1] = v53;
    tableView6 = [(DMCEnrollmentTemplateTableViewController *)v11->_tableViewController tableView];
    leadingAnchor = [tableView6 leadingAnchor];
    contentView6 = [(DMCEnrollmentTableViewPlatterCell *)v11 contentView];
    leadingAnchor2 = [contentView6 leadingAnchor];
    v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v74[2] = v40;
    tableView7 = [(DMCEnrollmentTemplateTableViewController *)v11->_tableViewController tableView];
    bottomAnchor = [tableView7 bottomAnchor];
    contentView7 = [(DMCEnrollmentTableViewPlatterCell *)v11 contentView];
    bottomAnchor2 = [contentView7 bottomAnchor];
    v45 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v74[3] = v45;
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:4];
    [v50 activateConstraints:v46];

    objc_initWeak(&location, v11);
    v73 = objc_opt_class();
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __80__DMCEnrollmentTableViewPlatterCell_initWithCellData_parentTableView_useShadow___block_invoke;
    v65[3] = &unk_278EE7C08;
    objc_copyWeak(&v66, &location);
    v48 = [(DMCEnrollmentTableViewPlatterCell *)v11 registerForTraitChanges:v47 withHandler:v65];

    objc_destroyWeak(&v66);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __80__DMCEnrollmentTableViewPlatterCell_initWithCellData_parentTableView_useShadow___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__DMCEnrollmentTableViewPlatterCell_initWithCellData_parentTableView_useShadow___block_invoke_2;
  block[3] = &unk_278EE74C0;
  v4 = WeakRetained;
  v2 = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __80__DMCEnrollmentTableViewPlatterCell_initWithCellData_parentTableView_useShadow___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) parentTableView];
  [v1 reloadData];
}

- (void)layoutSubviews
{
  v47.receiver = self;
  v47.super_class = DMCEnrollmentTableViewPlatterCell;
  [(DMCEnrollmentTableViewPlatterCell *)&v47 layoutSubviews];
  layer = [(DMCEnrollmentTableViewPlatterCell *)self layer];
  [layer setMasksToBounds:0];

  contentView = [(DMCEnrollmentTableViewPlatterCell *)self contentView];
  [contentView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6 + 6.0;
  v14 = v10 + -12.0;
  shadowView = [(DMCEnrollmentTableViewPlatterCell *)self shadowView];
  [shadowView setFrame:{v13, v8, v14, v12}];

  customHorizontalMargin = [(DMCEnrollmentTableViewPlatterCell *)self customHorizontalMargin];

  if (customHorizontalMargin)
  {
    [(DMCEnrollmentTableViewPlatterCell *)self bounds];
    v18 = v17;
    v8 = v19;
    v21 = v20;
    v12 = v22;
    customHorizontalMargin2 = [(DMCEnrollmentTableViewPlatterCell *)self customHorizontalMargin];
    [customHorizontalMargin2 floatValue];
    v13 = v18 + v24;

    customHorizontalMargin3 = [(DMCEnrollmentTableViewPlatterCell *)self customHorizontalMargin];
    [customHorizontalMargin3 floatValue];
    v14 = v21 - (v26 + v26);
  }

  tableViewController = [(DMCEnrollmentTableViewPlatterCell *)self tableViewController];
  tableView = [tableViewController tableView];
  [tableView setFrame:{v13, v8, v14, v12}];

  clearColor = [MEMORY[0x277D75348] clearColor];
  tableView2 = [(DMCEnrollmentTemplateTableViewController *)self->_tableViewController tableView];
  [tableView2 setBackgroundColor:clearColor];

  shadowView2 = [(DMCEnrollmentTableViewPlatterCell *)self shadowView];
  layer2 = [shadowView2 layer];
  [layer2 setCornerRadius:20.0];

  v33 = MEMORY[0x277D75208];
  shadowView3 = [(DMCEnrollmentTableViewPlatterCell *)self shadowView];
  [shadowView3 bounds];
  v35 = [v33 bezierPathWithRoundedRect:? cornerRadius:?];
  cGPath = [v35 CGPath];
  shadowView4 = [(DMCEnrollmentTableViewPlatterCell *)self shadowView];
  layer3 = [shadowView4 layer];
  [layer3 setShadowPath:cGPath];

  [(DMCEnrollmentTableViewPlatterCell *)self previousWidth];
  v40 = v39;
  contentView2 = [(DMCEnrollmentTableViewPlatterCell *)self contentView];
  [contentView2 bounds];
  v43 = v42;

  if (v40 != v43)
  {
    contentView3 = [(DMCEnrollmentTableViewPlatterCell *)self contentView];
    [contentView3 bounds];
    [(DMCEnrollmentTableViewPlatterCell *)self setPreviousWidth:v45];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__DMCEnrollmentTableViewPlatterCell_layoutSubviews__block_invoke;
    block[3] = &unk_278EE74C0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __51__DMCEnrollmentTableViewPlatterCell_layoutSubviews__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) parentTableView];
  [v1 reloadData];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  tableViewController = [(DMCEnrollmentTableViewPlatterCell *)self tableViewController];
  [tableViewController setInProgress:!enabledCopy];
}

- (double)cellHeight
{
  tableViewController = [(DMCEnrollmentTableViewPlatterCell *)self tableViewController];
  tableView = [tableViewController tableView];
  [tableView contentSize];
  v5 = v4;

  return v5;
}

- (UITableView)parentTableView
{
  WeakRetained = objc_loadWeakRetained(&self->_parentTableView);

  return WeakRetained;
}

@end