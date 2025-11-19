@interface DMCEnrollmentTableViewPlatterCell
- (DMCEnrollmentTableViewPlatterCell)initWithCellData:(id)a3 parentTableView:(id)a4 useShadow:(BOOL)a5;
- (UITableView)parentTableView;
- (double)cellHeight;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3;
@end

@implementation DMCEnrollmentTableViewPlatterCell

- (DMCEnrollmentTableViewPlatterCell)initWithCellData:(id)a3 parentTableView:(id)a4 useShadow:(BOOL)a5
{
  v5 = a5;
  v76 = *MEMORY[0x277D85DE8];
  v63 = a3;
  obj = a4;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v72.receiver = self;
  v72.super_class = DMCEnrollmentTableViewPlatterCell;
  v11 = [(DMCEnrollmentTableViewPlatterCell *)&v72 initWithStyle:0 reuseIdentifier:v10];

  if (v11)
  {
    v12 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(DMCEnrollmentTableViewPlatterCell *)v11 setBackgroundColor:v12];

    [(DMCEnrollmentTableViewPlatterCell *)v11 setSelectionStyle:0];
    v13 = [(DMCEnrollmentTableViewPlatterCell *)v11 contentView];
    v14 = [v13 layer];
    [v14 setMasksToBounds:0];

    objc_storeStrong(&v11->_cellData, a3);
    objc_storeWeak(&v11->_parentTableView, obj);
    if (v5)
    {
      v15 = objc_opt_new();
      shadowView = v11->_shadowView;
      v11->_shadowView = v15;

      v17 = [MEMORY[0x277D75348] systemBackgroundColor];
      [(UIView *)v11->_shadowView setBackgroundColor:v17];

      v18 = [(UIView *)v11->_shadowView layer];
      [v18 setMasksToBounds:0];

      v19 = [(UIView *)v11->_shadowView layer];
      [v19 setShadowOffset:{0.0, 3.0}];

      v20 = [(UIView *)v11->_shadowView layer];
      [v20 setShadowRadius:5.0];

      v21 = [(UIView *)v11->_shadowView layer];
      LODWORD(v22) = 1053609165;
      [v21 setShadowOpacity:v22];

      v23 = [MEMORY[0x277D75348] lightGrayColor];
      v24 = v23;
      v25 = [v23 CGColor];
      v26 = [(UIView *)v11->_shadowView layer];
      [v26 setShadowColor:v25];
    }

    v27 = [[DMCEnrollmentTemplateTableViewController alloc] initWithIconName:0 iconImage:0 title:0 subTitle:0 layoutStyle:1];
    tableViewController = v11->_tableViewController;
    v11->_tableViewController = v27;

    v29 = [(DMCEnrollmentTemplateTableViewController *)v11->_tableViewController tableView];
    [v29 setScrollEnabled:0];

    v30 = [(DMCEnrollmentTemplateTableViewController *)v11->_tableViewController tableView];
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v31 = v63;
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
    v35 = [(DMCEnrollmentTableViewPlatterCell *)v11 contentView];
    [v35 addSubview:v11->_shadowView];

    v36 = [(DMCEnrollmentTableViewPlatterCell *)v11 contentView];
    v37 = [(DMCEnrollmentTemplateTableViewController *)v11->_tableViewController tableView];
    [v36 addSubview:v37];

    [(DMCEnrollmentTemplateTableViewController *)v11->_tableViewController didMoveToParentViewController:0];
    v50 = MEMORY[0x277CCAAD0];
    v62 = [(DMCEnrollmentTemplateTableViewController *)v11->_tableViewController tableView];
    v60 = [v62 widthAnchor];
    v61 = [(DMCEnrollmentTableViewPlatterCell *)v11 contentView];
    v59 = [v61 widthAnchor];
    v58 = [v60 constraintEqualToAnchor:v59 multiplier:1.0];
    v74[0] = v58;
    v57 = [(DMCEnrollmentTemplateTableViewController *)v11->_tableViewController tableView];
    v55 = [v57 heightAnchor];
    v56 = [(DMCEnrollmentTableViewPlatterCell *)v11 contentView];
    v54 = [v56 heightAnchor];
    v53 = [v55 constraintEqualToAnchor:v54 multiplier:1.0];
    v74[1] = v53;
    v52 = [(DMCEnrollmentTemplateTableViewController *)v11->_tableViewController tableView];
    v51 = [v52 leadingAnchor];
    v38 = [(DMCEnrollmentTableViewPlatterCell *)v11 contentView];
    v39 = [v38 leadingAnchor];
    v40 = [v51 constraintEqualToAnchor:v39];
    v74[2] = v40;
    v41 = [(DMCEnrollmentTemplateTableViewController *)v11->_tableViewController tableView];
    v42 = [v41 bottomAnchor];
    v43 = [(DMCEnrollmentTableViewPlatterCell *)v11 contentView];
    v44 = [v43 bottomAnchor];
    v45 = [v42 constraintEqualToAnchor:v44];
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
  v3 = [(DMCEnrollmentTableViewPlatterCell *)self layer];
  [v3 setMasksToBounds:0];

  v4 = [(DMCEnrollmentTableViewPlatterCell *)self contentView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6 + 6.0;
  v14 = v10 + -12.0;
  v15 = [(DMCEnrollmentTableViewPlatterCell *)self shadowView];
  [v15 setFrame:{v13, v8, v14, v12}];

  v16 = [(DMCEnrollmentTableViewPlatterCell *)self customHorizontalMargin];

  if (v16)
  {
    [(DMCEnrollmentTableViewPlatterCell *)self bounds];
    v18 = v17;
    v8 = v19;
    v21 = v20;
    v12 = v22;
    v23 = [(DMCEnrollmentTableViewPlatterCell *)self customHorizontalMargin];
    [v23 floatValue];
    v13 = v18 + v24;

    v25 = [(DMCEnrollmentTableViewPlatterCell *)self customHorizontalMargin];
    [v25 floatValue];
    v14 = v21 - (v26 + v26);
  }

  v27 = [(DMCEnrollmentTableViewPlatterCell *)self tableViewController];
  v28 = [v27 tableView];
  [v28 setFrame:{v13, v8, v14, v12}];

  v29 = [MEMORY[0x277D75348] clearColor];
  v30 = [(DMCEnrollmentTemplateTableViewController *)self->_tableViewController tableView];
  [v30 setBackgroundColor:v29];

  v31 = [(DMCEnrollmentTableViewPlatterCell *)self shadowView];
  v32 = [v31 layer];
  [v32 setCornerRadius:20.0];

  v33 = MEMORY[0x277D75208];
  v34 = [(DMCEnrollmentTableViewPlatterCell *)self shadowView];
  [v34 bounds];
  v35 = [v33 bezierPathWithRoundedRect:? cornerRadius:?];
  v36 = [v35 CGPath];
  v37 = [(DMCEnrollmentTableViewPlatterCell *)self shadowView];
  v38 = [v37 layer];
  [v38 setShadowPath:v36];

  [(DMCEnrollmentTableViewPlatterCell *)self previousWidth];
  v40 = v39;
  v41 = [(DMCEnrollmentTableViewPlatterCell *)self contentView];
  [v41 bounds];
  v43 = v42;

  if (v40 != v43)
  {
    v44 = [(DMCEnrollmentTableViewPlatterCell *)self contentView];
    [v44 bounds];
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

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(DMCEnrollmentTableViewPlatterCell *)self tableViewController];
  [v4 setInProgress:!v3];
}

- (double)cellHeight
{
  v2 = [(DMCEnrollmentTableViewPlatterCell *)self tableViewController];
  v3 = [v2 tableView];
  [v3 contentSize];
  v5 = v4;

  return v5;
}

- (UITableView)parentTableView
{
  WeakRetained = objc_loadWeakRetained(&self->_parentTableView);

  return WeakRetained;
}

@end