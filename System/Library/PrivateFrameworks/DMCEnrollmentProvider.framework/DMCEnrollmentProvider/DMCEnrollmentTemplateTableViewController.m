@interface DMCEnrollmentTemplateTableViewController
- (DMCEnrollmentTemplateTableViewController)initWithIconName:(id)a3 iconImage:(id)a4 title:(id)a5 subTitle:(id)a6 layoutStyle:(unint64_t)a7;
- (DMCEnrollmentTemplateTableViewController)initWithStyle:(int64_t)a3;
- (SEL)_actionSelectorForBarButtonPosition:(unint64_t)a3;
- (double)_lastCellBlockedHeight;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)_addCellData:(id)a3 createNewSection:(BOOL)a4 animated:(BOOL)a5;
- (void)_addBottomView:(id)a3;
- (void)_adjustFloatyViewFrameWithKeyboardFrame:(CGRect)a3 animationDuration:(double)a4;
- (void)_maskNavigationBar;
- (void)_setUpBackdrops;
- (void)_setupHeaderSectionWithIconName:(id)a3 iconImage:(id)a4 title:(id)a5 subTitle:(id)a6;
- (void)_setupNotification;
- (void)_touchViewFrame:(id)a3;
- (void)_updateEffectiveViewVisibility;
- (void)_updateFloatyViewForKeyboardFrame:(CGRect)a3 duration:(double)a4;
- (void)addBottomView:(id)a3;
- (void)addCellData:(id)a3 toSection:(unint64_t)a4 animated:(BOOL)a5;
- (void)addFloatyBottomView:(id)a3;
- (void)keyboardDidShow:(id)a3;
- (void)keyboardWillHide:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)removeCellData:(id)a3 fromSection:(unint64_t)a4 animated:(BOOL)a5;
- (void)setIconName:(id)a3;
- (void)setInProgress:(BOOL)a3;
- (void)setSubtitleText:(id)a3;
- (void)setTitleText:(id)a3;
- (void)updateContinueButtonStatus;
- (void)updateNavBarButtonType:(unint64_t)a3 forButtonPosition:(unint64_t)a4 enabled:(BOOL)a5;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation DMCEnrollmentTemplateTableViewController

- (DMCEnrollmentTemplateTableViewController)initWithIconName:(id)a3 iconImage:(id)a4 title:(id)a5 subTitle:(id)a6 layoutStyle:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [(DMCEnrollmentTemplateTableViewController *)self initWithStyle:2];
  v17 = v16;
  if (v16)
  {
    v16->_layoutStyle = a7;
    [(DMCEnrollmentTemplateTableViewController *)v16 _setupHeaderSectionWithIconName:v12 iconImage:v13 title:v14 subTitle:v15];
  }

  return v17;
}

- (DMCEnrollmentTemplateTableViewController)initWithStyle:(int64_t)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = DMCEnrollmentTemplateTableViewController;
  v4 = [(DMCEnrollmentTemplateTableViewController *)&v17 init];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D75B40]);
    v6 = [v5 initWithFrame:a3 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    tableView = v4->_tableView;
    v4->_tableView = v6;

    [(UITableView *)v4->_tableView setBounces:1];
    [(UITableView *)v4->_tableView setAlwaysBounceVertical:0];
    [(UITableView *)v4->_tableView setDelegate:v4];
    [(UITableView *)v4->_tableView setDataSource:v4];
    [(UITableView *)v4->_tableView setClipsToBounds:0];
    v8 = [(DMCEnrollmentTemplateTableViewController *)v4 view];
    [v8 addSubview:v4->_tableView];

    v9 = objc_opt_new();
    cellDataCollection = v4->_cellDataCollection;
    v4->_cellDataCollection = v9;

    [(DMCEnrollmentTemplateTableViewController *)v4 _setupNotification];
    objc_initWeak(&location, v4);
    v18[0] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __58__DMCEnrollmentTemplateTableViewController_initWithStyle___block_invoke;
    v14[3] = &unk_278EE7C08;
    objc_copyWeak(&v15, &location);
    v12 = [(DMCEnrollmentTemplateTableViewController *)v4 registerForTraitChanges:v11 withHandler:v14];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __58__DMCEnrollmentTemplateTableViewController_initWithStyle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained view];
    [v2 setNeedsLayout];

    WeakRetained = v3;
  }
}

- (void)_setupNotification
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel_keyboardDidShow_ name:*MEMORY[0x277D76BA8] object:0];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel_keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
}

- (void)_setupHeaderSectionWithIconName:(id)a3 iconImage:(id)a4 title:(id)a5 subTitle:(id)a6
{
  v26 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_opt_new();
  if (v26)
  {
    v14 = [v26 copy];
    iconName = self->_iconName;
    self->_iconName = v14;

    v16 = [[DMCEnrollmentTableViewIconCell alloc] initWithIconName:v26];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_6;
    }

    v16 = [[DMCEnrollmentTableViewIconCell alloc] initWithIconImage:v10 layoutStyle:self->_layoutStyle];
  }

  iconCell = self->_iconCell;
  self->_iconCell = v16;

  [v13 addObject:self->_iconCell];
LABEL_6:
  if ([v11 length])
  {
    v18 = [v11 copy];
    titleText = self->_titleText;
    self->_titleText = v18;

    v20 = [[DMCEnrollmentTableViewTitleCell alloc] initWithTitle:v11];
    titleCell = self->_titleCell;
    self->_titleCell = v20;

    [v13 addObject:self->_titleCell];
  }

  if ([v12 length])
  {
    v22 = [v12 copy];
    subtitleText = self->_subtitleText;
    self->_subtitleText = v22;

    v24 = [[DMCEnrollmentTableViewTextCell alloc] initWithText:v12 bold:0];
    subtitleCell = self->_subtitleCell;
    self->_subtitleCell = v24;

    [v13 addObject:self->_subtitleCell];
  }

  if ([v13 count])
  {
    self->_headerSection = [(DMCEnrollmentTemplateTableViewController *)self addSectionWithCellData:v13 animated:0];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = DMCEnrollmentTemplateTableViewController;
  [(DMCEnrollmentTemplateTableViewController *)&v8 viewWillAppear:a3];
  v4 = [MEMORY[0x277D75348] systemBackgroundColor];
  v5 = [(DMCEnrollmentTemplateTableViewController *)self view];
  [v5 setBackgroundColor:v4];

  v6 = [MEMORY[0x277D75348] systemBackgroundColor];
  v7 = [(DMCEnrollmentTemplateTableViewController *)self tableView];
  [v7 setBackgroundColor:v6];

  [(DMCEnrollmentTemplateTableViewController *)self _maskNavigationBar];
}

- (void)viewWillLayoutSubviews
{
  v74.receiver = self;
  v74.super_class = DMCEnrollmentTemplateTableViewController;
  [(DMCEnrollmentTemplateTableViewController *)&v74 viewWillLayoutSubviews];
  v3 = [(DMCEnrollmentTemplateTableViewController *)self tableView];
  [v3 contentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = [MEMORY[0x277D03530] isPad];
  v11 = 38.0;
  if (!v10)
  {
    v11 = 15.0;
  }

  v73 = v11;
  v12 = [(DMCEnrollmentTemplateTableViewController *)self view];
  v13 = [(DMCEnrollmentTemplateTableViewController *)self tableView];
  [v12 sendSubviewToBack:v13];

  v14 = [MEMORY[0x277D03530] isPad];
  v15 = [(DMCEnrollmentTemplateTableViewController *)self floatyBottomView];
  if (v15)
  {
  }

  else
  {
    v16 = [(DMCEnrollmentTemplateTableViewController *)self bottomView];

    if (!v16)
    {
      v72 = 0.0;
      goto LABEL_27;
    }
  }

  v70 = v7;
  v71 = v5;
  v17 = [(DMCEnrollmentTemplateTableViewController *)self view];
  [v17 bounds];
  v18 = CGRectGetWidth(v75) + v73 * -2.0 + -34.0;
  v19 = [(DMCEnrollmentTemplateTableViewController *)self view];
  [v19 safeAreaInsets];
  v21 = v18 + v20 * -2.0;

  v22 = [(DMCEnrollmentTemplateTableViewController *)self bottomView];
  [v22 sizeThatFits:{v21, 1.79769313e308}];
  v24 = v23;

  v25 = [(DMCEnrollmentTemplateTableViewController *)self floatyBottomView];
  [v25 sizeThatFits:{v21, 1.79769313e308}];
  v27 = v26;

  v28 = [(DMCEnrollmentTemplateTableViewController *)self bottomView];
  if (v28)
  {
    v29 = 20.0;
  }

  else
  {
    v29 = 0.0;
  }

  [(DMCEnrollmentTemplateTableViewController *)self gapBetweenButtons];
  if (v29 >= v30)
  {
    v31 = v29;
  }

  else
  {
    v31 = v30;
  }

  if (v14)
  {
    v32 = 46.0;
  }

  else
  {
    v32 = 30.0;
  }

  v33 = [(DMCEnrollmentTemplateTableViewController *)self view];
  [v33 safeAreaInsets];
  v35 = v32 + v34;

  v36 = [(DMCEnrollmentTemplateTableViewController *)self floatyBottomView];

  if (v36)
  {
    v35 = v31 + v27 + v35;
  }

  v37 = [(DMCEnrollmentTemplateTableViewController *)self bottomView];

  if (v37)
  {
    v38 = v24 + v35;
  }

  else
  {
    v38 = v35;
  }

  v39 = [(DMCEnrollmentTemplateTableViewController *)self view];
  [v39 bounds];
  v40 = CGRectGetMaxY(v76) - v38;
  v41 = [(DMCEnrollmentTemplateTableViewController *)self view];
  [v41 bounds];
  Width = CGRectGetWidth(v77);
  v43 = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];
  v72 = v38;
  [v43 setFrame:{0.0, v40, Width, v38}];

  v44 = [(DMCEnrollmentTemplateTableViewController *)self view];
  [v44 safeAreaInsets];
  v46 = v73 + 17.0 + v45;
  v47 = [(DMCEnrollmentTemplateTableViewController *)self floatyBottomView];
  if (v47)
  {
    v48 = v27 + v31 + 22.0;
  }

  else
  {
    v48 = 22.0;
  }

  v49 = [(DMCEnrollmentTemplateTableViewController *)self bottomView];
  [v49 setFrame:{v46, v48, v21, v24}];

  v50 = [(DMCEnrollmentTemplateTableViewController *)self view];
  [v50 safeAreaInsets];
  v52 = v73 + 17.0 + v51;
  v53 = [(DMCEnrollmentTemplateTableViewController *)self floatyBottomView];
  [v53 setFrame:{v52, 22.0, v21, v27}];

  if ([MEMORY[0x277D03530] isPad])
  {
    v5 = v71;
    v7 = v70;
  }

  else
  {
    v54 = [(DMCEnrollmentTemplateTableViewController *)self view];
    [v54 safeAreaInsets];
    v7 = 8.0 - v55;

    v5 = v71;
  }

LABEL_27:
  v56 = [(DMCEnrollmentTemplateTableViewController *)self tableView];
  [v56 verticalScrollIndicatorInsets];
  v58 = v57;
  v60 = v59;
  v62 = v61;

  v63 = [(DMCEnrollmentTemplateTableViewController *)self tableView];
  [v63 setVerticalScrollIndicatorInsets:{v58, v60, v62, -v73}];

  v64 = [(DMCEnrollmentTemplateTableViewController *)self view];
  [v64 bounds];
  v65 = CGRectGetWidth(v78) + v73 * -2.0;
  v66 = [(DMCEnrollmentTemplateTableViewController *)self view];
  [v66 bounds];
  v67 = CGRectGetMaxY(v79) - v72 + 1.0;
  v68 = [(DMCEnrollmentTemplateTableViewController *)self tableView];
  [v68 setFrame:{v73, 0.0, v65, v67}];

  v69 = [(DMCEnrollmentTemplateTableViewController *)self tableView];
  [v69 setContentInset:{-5.0, v5, v7, v9}];

  [(DMCEnrollmentTemplateTableViewController *)self _updateEffectiveViewVisibility];
}

- (void)addBottomView:(id)a3
{
  v6 = a3;
  v4 = [(DMCEnrollmentTemplateTableViewController *)self bottomView];

  if (v4)
  {
    v5 = [(DMCEnrollmentTemplateTableViewController *)self bottomView];
    [v5 removeFromSuperview];
  }

  [(DMCEnrollmentTemplateTableViewController *)self _addBottomView:v6];
  [(DMCEnrollmentTemplateTableViewController *)self setBottomView:v6];
}

- (void)addFloatyBottomView:(id)a3
{
  v6 = a3;
  v4 = [(DMCEnrollmentTemplateTableViewController *)self floatyBottomView];

  if (v4)
  {
    v5 = [(DMCEnrollmentTemplateTableViewController *)self floatyBottomView];
    [v5 removeFromSuperview];
  }

  [(DMCEnrollmentTemplateTableViewController *)self _addBottomView:v6];
  [(DMCEnrollmentTemplateTableViewController *)self setFloatyBottomView:v6];
}

- (void)_addBottomView:(id)a3
{
  v4 = a3;
  v5 = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(DMCEnrollmentTemplateTableViewController *)self setBottomContainerView:v6];

    v7 = [MEMORY[0x277D75348] systemBackgroundColor];
    v8 = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];
    [v8 setBackgroundColor:v7];

    v9 = [(DMCEnrollmentTemplateTableViewController *)self view];
    v10 = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];
    [v9 addSubview:v10];

    [(DMCEnrollmentTemplateTableViewController *)self _setUpBackdrops];
  }

  v11 = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];
  [v11 addSubview:v4];
}

- (void)setIconName:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_iconName isEqualToString:?])
  {
    v4 = [v6 copy];
    iconName = self->_iconName;
    self->_iconName = v4;

    [(DMCEnrollmentTableViewIconCell *)self->_iconCell setIconName:v6];
  }
}

- (void)setTitleText:(id)a3
{
  v8 = a3;
  if (![(NSString *)self->_titleText isEqualToString:?])
  {
    v4 = [v8 copy];
    titleText = self->_titleText;
    self->_titleText = v4;

    v6 = self->_titleText;
    v7 = [(DMCEnrollmentTemplateTableViewController *)self titleCell];
    [v7 setTitle:v6];
  }
}

- (void)setSubtitleText:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(NSString *)self->_subtitleText isEqualToString:v4])
  {
    v5 = [v4 copy];
    subtitleText = self->_subtitleText;
    self->_subtitleText = v5;

    v7 = [(DMCEnrollmentTemplateTableViewController *)self subtitleCell];
    if (v7)
    {
    }

    else if ([v4 length])
    {
      v13 = [[DMCEnrollmentTableViewTextCell alloc] initWithText:v4 bold:0];
      [(DMCEnrollmentTemplateTableViewController *)self setSubtitleCell:v13];

      v11 = [(DMCEnrollmentTemplateTableViewController *)self subtitleCell];
      v17[0] = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
      [(DMCEnrollmentTemplateTableViewController *)self addCellData:v12 toSection:[(DMCEnrollmentTemplateTableViewController *)self headerSection] animated:0];
      goto LABEL_9;
    }

    v8 = [(DMCEnrollmentTemplateTableViewController *)self subtitleCell];
    if (!v8)
    {
      goto LABEL_10;
    }

    v9 = v8;
    v10 = [v4 length];

    if (v10)
    {
      goto LABEL_10;
    }

    v11 = [(DMCEnrollmentTemplateTableViewController *)self subtitleCell];
    v16 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    [(DMCEnrollmentTemplateTableViewController *)self removeCellData:v12 fromSection:[(DMCEnrollmentTemplateTableViewController *)self headerSection] animated:0];
LABEL_9:

LABEL_10:
    v14 = self->_subtitleText;
    v15 = [(DMCEnrollmentTemplateTableViewController *)self subtitleCell];
    [v15 setText:v14];
  }
}

- (void)setInProgress:(BOOL)a3
{
  v27 = *MEMORY[0x277D85DE8];
  if (self->_inProgress != a3)
  {
    v3 = a3;
    self->_inProgress = a3;
    v5 = [(DMCEnrollmentTemplateTableViewController *)self view];
    [v5 setUserInteractionEnabled:!v3];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
    v16 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v16)
    {
      v15 = *v22;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v21 + 1) + 8 * i);
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v8 = v7;
          v9 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v18;
            do
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v18 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v17 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
                {
                  [v13 setEnabled:!v3];
                }
              }

              v10 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
            }

            while (v10);
          }
        }

        v16 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v16);
    }

    [(DMCEnrollmentTemplateTableViewController *)self updateContinueButtonStatus];
  }
}

- (void)updateContinueButtonStatus
{
  if ([(DMCEnrollmentTemplateTableViewController *)self inProgress])
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  [(DMCEnrollmentTemplateTableViewController *)self updateNavBarButtonType:v3 forButtonPosition:1 enabled:0];
}

- (void)updateNavBarButtonType:(unint64_t)a3 forButtonPosition:(unint64_t)a4 enabled:(BOOL)a5
{
  v5 = a5;
  v9 = [(DMCEnrollmentTemplateTableViewController *)self navigationItem];
  v10 = v9;
  if (a4)
  {
    [v9 rightBarButtonItem];
  }

  else
  {
    [v9 leftBarButtonItem];
  }
  v16 = ;

  if (a3 - 1 < 4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(DMCEnrollmentUIBarButtonItem *)v16 buttonType]== a3)
    {
      v11 = v16;
      v12 = v16;
      goto LABEL_17;
    }

    v11 = [[DMCEnrollmentUIBarButtonItem alloc] initWithType:a3 target:self action:[(DMCEnrollmentTemplateTableViewController *)self _actionSelectorForBarButtonPosition:a4]];
    goto LABEL_13;
  }

  if (a3)
  {
    v11 = 0;
LABEL_13:
    v12 = v16;
    goto LABEL_14;
  }

  v12 = v16;
  if (!v16)
  {
    goto LABEL_21;
  }

  v11 = 0;
LABEL_14:
  if (v11 != v12)
  {
    [(DMCEnrollmentUIBarButtonItem *)v11 setEnabled:v5];
    v13 = [(DMCEnrollmentTemplateTableViewController *)self navigationItem];
    v14 = v13;
    if (a4)
    {
      [v13 setRightBarButtonItem:v11];
    }

    else
    {
      [v13 setLeftBarButtonItem:v11];
    }

    goto LABEL_20;
  }

LABEL_17:
  [(DMCEnrollmentUIBarButtonItem *)v12 setEnabled:v5];
LABEL_20:
  v15 = [(DMCEnrollmentTemplateTableViewController *)self navigationItem];
  DMCSendNavUIUpdatedNotification(v15);

  v12 = v16;
LABEL_21:
}

- (SEL)_actionSelectorForBarButtonPosition:(unint64_t)a3
{
  if (a3 == 1)
  {
    return sel_rightBarButtonTapped_;
  }

  if (!a3)
  {
    return sel_leftBarButtonTapped_;
  }

  return self;
}

- (void)_maskNavigationBar
{
  v13.width = 1.0;
  v13.height = 1.0;
  UIGraphicsBeginImageContext(v13);
  v3 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v3 set];

  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = 1.0;
  v14.size.height = 1.0;
  UIRectFill(v14);
  v11 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v4 = [(DMCEnrollmentTemplateTableViewController *)self navigationController];
  v5 = [v4 navigationBar];
  [v5 setBackgroundImage:v11 forBarMetrics:0];

  v6 = [(DMCEnrollmentTemplateTableViewController *)self navigationController];
  v7 = [v6 navigationBar];
  v8 = objc_opt_new();
  [v7 setShadowImage:v8];

  v9 = [(DMCEnrollmentTemplateTableViewController *)self navigationController];
  v10 = [v9 navigationBar];
  [v10 setTranslucent:1];
}

- (void)addCellData:(id)a3 toSection:(unint64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
  v10 = [v9 count];

  v11 = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
  v12 = v11;
  if (v10 <= a4)
  {
    v16 = [v8 mutableCopy];

    [v12 addObject:v16];
    if (!v5)
    {
      goto LABEL_7;
    }

    v14 = [(DMCEnrollmentTemplateTableViewController *)self tableView];
    v15 = [MEMORY[0x277CCAA78] indexSetWithIndex:a4];
    [v14 insertSections:v15 withRowAnimation:0];
  }

  else
  {
    v13 = [v11 objectAtIndexedSubscript:a4];
    [v13 addObjectsFromArray:v8];

    if (!v5)
    {
      goto LABEL_7;
    }

    v14 = [(DMCEnrollmentTemplateTableViewController *)self tableView];
    v15 = [MEMORY[0x277CCAA78] indexSetWithIndex:a4];
    [v14 reloadSections:v15 withRowAnimation:100];
  }

LABEL_7:
  v17 = [(DMCEnrollmentTemplateTableViewController *)self tableView];
  [v17 reloadData];
}

- (unint64_t)_addCellData:(id)a3 createNewSection:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
  v10 = [v9 count] - !v6;

  [(DMCEnrollmentTemplateTableViewController *)self addCellData:v8 toSection:v10 animated:v5];
  return v10;
}

- (void)removeCellData:(id)a3 fromSection:(unint64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
  v10 = [v9 count];

  if (v10 > a4 && [v8 count])
  {
    v11 = objc_opt_new();
    v12 = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
    v13 = [v12 objectAtIndexedSubscript:a4];

    v14 = objc_opt_new();
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __80__DMCEnrollmentTemplateTableViewController_removeCellData_fromSection_animated___block_invoke;
    v28 = &unk_278EE7D40;
    v29 = v8;
    v15 = v11;
    v30 = v15;
    v16 = v14;
    v31 = v16;
    v32 = a4;
    [v13 enumerateObjectsUsingBlock:&v25];
    v17 = [v15 count];
    v18 = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
    v19 = v18;
    if (v17)
    {
      [v18 setObject:v15 atIndexedSubscript:a4];

      v20 = [(DMCEnrollmentTemplateTableViewController *)self tableView];
      v21 = v20;
      if (v5)
      {
        v22 = 0;
      }

      else
      {
        v22 = 5;
      }

      [v20 deleteRowsAtIndexPaths:v16 withRowAnimation:v22];
    }

    else
    {
      [v18 removeObjectAtIndex:a4];

      v21 = [(DMCEnrollmentTemplateTableViewController *)self tableView];
      v23 = [MEMORY[0x277CCAA78] indexSetWithIndex:a4];
      if (v5)
      {
        v24 = 0;
      }

      else
      {
        v24 = 5;
      }

      [v21 deleteSections:v23 withRowAnimation:v24];
    }
  }
}

void __80__DMCEnrollmentTemplateTableViewController_removeCellData_fromSection_animated___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    v5 = *(a1 + 48);
    v6 = [MEMORY[0x277CCAA70] indexPathForRow:a3 inSection:*(a1 + 56)];
    [v5 addObject:v6];
  }

  else
  {
    [*(a1 + 40) addObject:v7];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
  v7 = [v6 count];

  if (v7 <= a4)
  {
    return 0;
  }

  v8 = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
  v9 = [v8 objectAtIndexedSubscript:a4];
  v10 = [v9 count];

  return v10;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
  v8 = [v5 row];

  v9 = [v7 objectAtIndexedSubscript:v8];
  v10 = [v9 cell];

  return v10;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 section];
  v7 = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
  v8 = [v7 count];

  if (v6 >= v8)
  {
    v13 = *MEMORY[0x277D76F30];
  }

  else
  {
    v9 = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
    v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
    v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];
    [v11 cellHeight];
    v13 = v12;
  }

  return v13;
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 section];
  v7 = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
  v8 = [v7 count];

  if (v6 >= v8)
  {
    v13 = *MEMORY[0x277D76F30];
  }

  else
  {
    v9 = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
    v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
    v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];
    [v11 estimatedCellHeight];
    v13 = v12;
  }

  return v13;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v4 = objc_alloc(MEMORY[0x277D75B70]);
  v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  return v5;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v4 = objc_alloc(MEMORY[0x277D75B70]);
  v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  return v5;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
  v7 = [v6 count];

  if (v7 <= a4)
  {
    return *MEMORY[0x277D76F30];
  }

  v8 = [(DMCEnrollmentTemplateTableViewController *)self customTopMargin];

  if (v8)
  {
    v9 = [(DMCEnrollmentTemplateTableViewController *)self customTopMargin];
    [v9 floatValue];
    v11 = v10;

    return v11;
  }

  if (a4)
  {
    return 0.00100000005;
  }

  v11 = 10.0;
  if ([(DMCEnrollmentTemplateTableViewController *)self layoutStyle])
  {
    return v11;
  }

  return kDMCTopMarginForViewController(self);
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
  v7 = [v6 count];

  if (v7 > a4)
  {
    v8 = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
    v9 = [v8 objectAtIndexedSubscript:a4];
    v10 = [v9 lastObject];

    v11 = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
    if ([v11 count] - 1 == a4)
    {
    }

    else
    {
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        [v10 gapToNextSection];
        v12 = v14;
LABEL_10:

        return v12;
      }
    }

    if ([(DMCEnrollmentTemplateTableViewController *)self layoutStyle])
    {
      v12 = 0.00100000005;
    }

    else
    {
      v12 = *MEMORY[0x277D76F30];
    }

    goto LABEL_10;
  }

  return *MEMORY[0x277D76F30];
}

- (void)keyboardWillShow:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D76BB8]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(DMCEnrollmentTemplateTableViewController *)self _updateFloatyViewForKeyboardFrame:v7 duration:v9, v11, v13, 0.25];
}

- (void)keyboardDidShow:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D76BB8]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(DMCEnrollmentTemplateTableViewController *)self _updateFloatyViewForKeyboardFrame:v7 duration:v9, v11, v13, 0.100000001];
}

- (void)keyboardWillHide:(id)a3
{
  v4 = [(DMCEnrollmentTemplateTableViewController *)self floatyBottomView];

  if (v4)
  {
    [(DMCEnrollmentTemplateTableViewController *)self setGapBetweenButtons:0.0];
    v5 = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];
    [(DMCEnrollmentTemplateTableViewController *)self _touchViewFrame:v5];

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __61__DMCEnrollmentTemplateTableViewController_keyboardWillHide___block_invoke;
    v6[3] = &unk_278EE74C0;
    v6[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v6 animations:0.25];
  }
}

void __61__DMCEnrollmentTemplateTableViewController_keyboardWillHide___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

- (void)_setUpBackdrops
{
  v32[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D75D68]);
  v4 = [MEMORY[0x277D75210] effectWithStyle:1100];
  v5 = [v3 initWithEffect:v4];
  [(DMCEnrollmentTemplateTableViewController *)self setEffectView:v5];

  v6 = [(DMCEnrollmentTemplateTableViewController *)self effectView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];
  v8 = [(DMCEnrollmentTemplateTableViewController *)self effectView];
  [v7 addSubview:v8];

  v23 = MEMORY[0x277CCAAD0];
  v31 = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];
  v29 = [v31 widthAnchor];
  v30 = [(DMCEnrollmentTemplateTableViewController *)self effectView];
  v28 = [v30 widthAnchor];
  v27 = [v29 constraintEqualToAnchor:v28 multiplier:1.0];
  v32[0] = v27;
  v26 = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];
  v24 = [v26 heightAnchor];
  v25 = [(DMCEnrollmentTemplateTableViewController *)self effectView];
  v22 = [v25 heightAnchor];
  v21 = [v24 constraintEqualToAnchor:v22 multiplier:1.0];
  v32[1] = v21;
  v20 = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];
  v19 = [v20 leadingAnchor];
  v9 = [(DMCEnrollmentTemplateTableViewController *)self effectView];
  v10 = [v9 leadingAnchor];
  v11 = [v19 constraintEqualToAnchor:v10];
  v32[2] = v11;
  v12 = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];
  v13 = [v12 bottomAnchor];
  v14 = [(DMCEnrollmentTemplateTableViewController *)self effectView];
  v15 = [v14 bottomAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v32[3] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:4];
  [v23 activateConstraints:v17];

  v18 = [(DMCEnrollmentTemplateTableViewController *)self effectView];
  [v18 setAlpha:0.0];
}

- (double)_lastCellBlockedHeight
{
  v3 = [(DMCEnrollmentTemplateTableViewController *)self tableView];
  v4 = [v3 visibleCells];
  v5 = [v4 lastObject];

  v6 = [(DMCEnrollmentTemplateTableViewController *)self tableView];
  v7 = [v6 indexPathForCell:v5];

  v8 = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
  v9 = [v8 count];
  if (v9 == [v7 section] + 1)
  {
    v10 = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
    v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];
    v12 = [v11 count];
    if (v12 == [v7 row] + 1)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = 50.0;
    }
  }

  else
  {
    v13 = 50.0;
  }

  v14 = [v5 superview];
  [v5 frame];
  v16 = v15;
  v18 = v17;
  v19 = [(DMCEnrollmentTemplateTableViewController *)self view];
  v20 = [v19 window];
  [v14 convertPoint:v20 toView:{v16, v18}];
  v22 = v21;

  v23 = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];
  v24 = [v23 superview];
  v25 = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];
  [v25 frame];
  v27 = v26;
  v29 = v28;
  v30 = [(DMCEnrollmentTemplateTableViewController *)self view];
  v31 = [v30 window];
  [v24 convertPoint:v31 toView:{v27, v29}];
  v33 = v32;

  [v5 bounds];
  v35 = v13 + v22 + v34 - v33;

  return v35;
}

- (void)_updateEffectiveViewVisibility
{
  v3 = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];

  if (v3)
  {
    [(DMCEnrollmentTemplateTableViewController *)self _lastCellBlockedHeight];
    v5 = v4 <= 0.0;
    v6 = 0.0;
    v9 = 3221225472;
    v8 = MEMORY[0x277D85DD0];
    v10 = __74__DMCEnrollmentTemplateTableViewController__updateEffectiveViewVisibility__block_invoke;
    v11 = &unk_278EE7D68;
    if (!v5)
    {
      v6 = 1.0;
    }

    v12 = self;
    v13 = v6;
    [MEMORY[0x277D75D18] animateWithDuration:&v8 animations:0.100000001];
    v7 = [(DMCEnrollmentTemplateTableViewController *)self view:v8];
    [v7 setNeedsDisplay];
  }
}

void __74__DMCEnrollmentTemplateTableViewController__updateEffectiveViewVisibility__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) effectView];
  [v2 setAlpha:v1];
}

- (void)_adjustFloatyViewFrameWithKeyboardFrame:(CGRect)a3 animationDuration:(double)a4
{
  v5 = [(DMCEnrollmentTemplateTableViewController *)self floatyBottomView];
  v6 = [v5 superview];
  v7 = [(DMCEnrollmentTemplateTableViewController *)self floatyBottomView];
  [v7 frame];
  [v6 convertRect:0 toView:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];
  v17 = [v16 superview];
  v18 = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];
  [v18 frame];
  [v17 convertRect:0 toView:?];
  v20 = v19;
  rect = v21;
  v23 = v22;
  v25 = v24;

  v43.origin.x = v9;
  v43.origin.y = v11;
  v43.size.width = v13;
  v43.size.height = v15;
  v26 = v15;
  v27 = CGRectGetMaxY(v43) + 20.0;
  v41 = v27 - CGRectGetMinY(a3);
  v44.origin.x = v20;
  v44.origin.y = rect;
  v44.size.width = v23;
  v44.size.height = v25;
  MaxY = CGRectGetMaxY(v44);
  v45.origin.x = v9;
  v45.origin.y = v11;
  v45.size.width = v13;
  v45.size.height = v26;
  v29 = MaxY - CGRectGetMaxY(v45) + -8.0;
  v30 = [(DMCEnrollmentTemplateTableViewController *)self view];
  [v30 safeAreaInsets];
  v32 = v29 - v31;

  v33 = [(DMCEnrollmentTemplateTableViewController *)self bottomView];

  if (v33)
  {
    v34 = [(DMCEnrollmentTemplateTableViewController *)self bottomView];
    [v34 frame];
    v32 = v32 - CGRectGetHeight(v46);
  }

  v35 = fmax(v41 + v32, 0.0);
  [(DMCEnrollmentTemplateTableViewController *)self gapBetweenButtons];
  if (v36 != v35)
  {
    [(DMCEnrollmentTemplateTableViewController *)self setGapBetweenButtons:v35];
    v37 = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];
    [(DMCEnrollmentTemplateTableViewController *)self _touchViewFrame:v37];

    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __102__DMCEnrollmentTemplateTableViewController__adjustFloatyViewFrameWithKeyboardFrame_animationDuration___block_invoke;
    v42[3] = &unk_278EE74C0;
    v42[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v42 animations:a4];
  }
}

void __102__DMCEnrollmentTemplateTableViewController__adjustFloatyViewFrameWithKeyboardFrame_animationDuration___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

- (void)_updateFloatyViewForKeyboardFrame:(CGRect)a3 duration:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(DMCEnrollmentTemplateTableViewController *)self floatyBottomView];

  if (v10)
  {
    v11 = [(DMCEnrollmentTemplateTableViewController *)self navigationController];
    if (!v11 || (v12 = v11, -[DMCEnrollmentTemplateTableViewController navigationController](self, "navigationController"), v13 = objc_claimAutoreleasedReturnValue(), [v13 topViewController], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v12, v14 == self))
    {
      v15 = [(DMCEnrollmentTemplateTableViewController *)self presentedViewController];

      if (!v15)
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __87__DMCEnrollmentTemplateTableViewController__updateFloatyViewForKeyboardFrame_duration___block_invoke;
        v16[3] = &unk_278EE7D90;
        v16[4] = self;
        *&v16[5] = x;
        *&v16[6] = y;
        *&v16[7] = width;
        *&v16[8] = height;
        *&v16[9] = a4;
        dispatch_async(MEMORY[0x277D85CD0], v16);
      }
    }
  }
}

void __87__DMCEnrollmentTemplateTableViewController__updateFloatyViewForKeyboardFrame_duration___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _adjustFloatyViewFrameWithKeyboardFrame:*(a1 + 40) animationDuration:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  [*(a1 + 32) _lastCellBlockedHeight];
  [*(a1 + 32) _lastCellBlockedHeight];
  if (v2 > 0.0)
  {
    v3 = v2;
    v6 = [*(a1 + 32) tableView];
    v4 = [*(a1 + 32) tableView];
    [v4 contentOffset];
    [v6 setContentOffset:1 animated:{0.0, v3 + v5}];
  }
}

- (void)_touchViewFrame:(id)a3
{
  v3 = a3;
  [v3 frame];
  [v3 setFrame:?];
}

@end