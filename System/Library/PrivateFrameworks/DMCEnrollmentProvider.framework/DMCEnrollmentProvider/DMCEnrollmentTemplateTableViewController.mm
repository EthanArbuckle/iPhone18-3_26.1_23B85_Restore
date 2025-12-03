@interface DMCEnrollmentTemplateTableViewController
- (DMCEnrollmentTemplateTableViewController)initWithIconName:(id)name iconImage:(id)image title:(id)title subTitle:(id)subTitle layoutStyle:(unint64_t)style;
- (DMCEnrollmentTemplateTableViewController)initWithStyle:(int64_t)style;
- (SEL)_actionSelectorForBarButtonPosition:(unint64_t)position;
- (double)_lastCellBlockedHeight;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)_addCellData:(id)data createNewSection:(BOOL)section animated:(BOOL)animated;
- (void)_addBottomView:(id)view;
- (void)_adjustFloatyViewFrameWithKeyboardFrame:(CGRect)frame animationDuration:(double)duration;
- (void)_maskNavigationBar;
- (void)_setUpBackdrops;
- (void)_setupHeaderSectionWithIconName:(id)name iconImage:(id)image title:(id)title subTitle:(id)subTitle;
- (void)_setupNotification;
- (void)_touchViewFrame:(id)frame;
- (void)_updateEffectiveViewVisibility;
- (void)_updateFloatyViewForKeyboardFrame:(CGRect)frame duration:(double)duration;
- (void)addBottomView:(id)view;
- (void)addCellData:(id)data toSection:(unint64_t)section animated:(BOOL)animated;
- (void)addFloatyBottomView:(id)view;
- (void)keyboardDidShow:(id)show;
- (void)keyboardWillHide:(id)hide;
- (void)keyboardWillShow:(id)show;
- (void)removeCellData:(id)data fromSection:(unint64_t)section animated:(BOOL)animated;
- (void)setIconName:(id)name;
- (void)setInProgress:(BOOL)progress;
- (void)setSubtitleText:(id)text;
- (void)setTitleText:(id)text;
- (void)updateContinueButtonStatus;
- (void)updateNavBarButtonType:(unint64_t)type forButtonPosition:(unint64_t)position enabled:(BOOL)enabled;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation DMCEnrollmentTemplateTableViewController

- (DMCEnrollmentTemplateTableViewController)initWithIconName:(id)name iconImage:(id)image title:(id)title subTitle:(id)subTitle layoutStyle:(unint64_t)style
{
  nameCopy = name;
  imageCopy = image;
  titleCopy = title;
  subTitleCopy = subTitle;
  v16 = [(DMCEnrollmentTemplateTableViewController *)self initWithStyle:2];
  v17 = v16;
  if (v16)
  {
    v16->_layoutStyle = style;
    [(DMCEnrollmentTemplateTableViewController *)v16 _setupHeaderSectionWithIconName:nameCopy iconImage:imageCopy title:titleCopy subTitle:subTitleCopy];
  }

  return v17;
}

- (DMCEnrollmentTemplateTableViewController)initWithStyle:(int64_t)style
{
  v18[1] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = DMCEnrollmentTemplateTableViewController;
  v4 = [(DMCEnrollmentTemplateTableViewController *)&v17 init];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D75B40]);
    v6 = [v5 initWithFrame:style style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    tableView = v4->_tableView;
    v4->_tableView = v6;

    [(UITableView *)v4->_tableView setBounces:1];
    [(UITableView *)v4->_tableView setAlwaysBounceVertical:0];
    [(UITableView *)v4->_tableView setDelegate:v4];
    [(UITableView *)v4->_tableView setDataSource:v4];
    [(UITableView *)v4->_tableView setClipsToBounds:0];
    view = [(DMCEnrollmentTemplateTableViewController *)v4 view];
    [view addSubview:v4->_tableView];

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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_keyboardDidShow_ name:*MEMORY[0x277D76BA8] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
}

- (void)_setupHeaderSectionWithIconName:(id)name iconImage:(id)image title:(id)title subTitle:(id)subTitle
{
  nameCopy = name;
  imageCopy = image;
  titleCopy = title;
  subTitleCopy = subTitle;
  v13 = objc_opt_new();
  if (nameCopy)
  {
    v14 = [nameCopy copy];
    iconName = self->_iconName;
    self->_iconName = v14;

    v16 = [[DMCEnrollmentTableViewIconCell alloc] initWithIconName:nameCopy];
  }

  else
  {
    if (!imageCopy)
    {
      goto LABEL_6;
    }

    v16 = [[DMCEnrollmentTableViewIconCell alloc] initWithIconImage:imageCopy layoutStyle:self->_layoutStyle];
  }

  iconCell = self->_iconCell;
  self->_iconCell = v16;

  [v13 addObject:self->_iconCell];
LABEL_6:
  if ([titleCopy length])
  {
    v18 = [titleCopy copy];
    titleText = self->_titleText;
    self->_titleText = v18;

    v20 = [[DMCEnrollmentTableViewTitleCell alloc] initWithTitle:titleCopy];
    titleCell = self->_titleCell;
    self->_titleCell = v20;

    [v13 addObject:self->_titleCell];
  }

  if ([subTitleCopy length])
  {
    v22 = [subTitleCopy copy];
    subtitleText = self->_subtitleText;
    self->_subtitleText = v22;

    v24 = [[DMCEnrollmentTableViewTextCell alloc] initWithText:subTitleCopy bold:0];
    subtitleCell = self->_subtitleCell;
    self->_subtitleCell = v24;

    [v13 addObject:self->_subtitleCell];
  }

  if ([v13 count])
  {
    self->_headerSection = [(DMCEnrollmentTemplateTableViewController *)self addSectionWithCellData:v13 animated:0];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = DMCEnrollmentTemplateTableViewController;
  [(DMCEnrollmentTemplateTableViewController *)&v8 viewWillAppear:appear];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(DMCEnrollmentTemplateTableViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  systemBackgroundColor2 = [MEMORY[0x277D75348] systemBackgroundColor];
  tableView = [(DMCEnrollmentTemplateTableViewController *)self tableView];
  [tableView setBackgroundColor:systemBackgroundColor2];

  [(DMCEnrollmentTemplateTableViewController *)self _maskNavigationBar];
}

- (void)viewWillLayoutSubviews
{
  v74.receiver = self;
  v74.super_class = DMCEnrollmentTemplateTableViewController;
  [(DMCEnrollmentTemplateTableViewController *)&v74 viewWillLayoutSubviews];
  tableView = [(DMCEnrollmentTemplateTableViewController *)self tableView];
  [tableView contentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  isPad = [MEMORY[0x277D03530] isPad];
  v11 = 38.0;
  if (!isPad)
  {
    v11 = 15.0;
  }

  v73 = v11;
  view = [(DMCEnrollmentTemplateTableViewController *)self view];
  tableView2 = [(DMCEnrollmentTemplateTableViewController *)self tableView];
  [view sendSubviewToBack:tableView2];

  isPad2 = [MEMORY[0x277D03530] isPad];
  floatyBottomView = [(DMCEnrollmentTemplateTableViewController *)self floatyBottomView];
  if (floatyBottomView)
  {
  }

  else
  {
    bottomView = [(DMCEnrollmentTemplateTableViewController *)self bottomView];

    if (!bottomView)
    {
      v72 = 0.0;
      goto LABEL_27;
    }
  }

  v70 = v7;
  v71 = v5;
  view2 = [(DMCEnrollmentTemplateTableViewController *)self view];
  [view2 bounds];
  v18 = CGRectGetWidth(v75) + v73 * -2.0 + -34.0;
  view3 = [(DMCEnrollmentTemplateTableViewController *)self view];
  [view3 safeAreaInsets];
  v21 = v18 + v20 * -2.0;

  bottomView2 = [(DMCEnrollmentTemplateTableViewController *)self bottomView];
  [bottomView2 sizeThatFits:{v21, 1.79769313e308}];
  v24 = v23;

  floatyBottomView2 = [(DMCEnrollmentTemplateTableViewController *)self floatyBottomView];
  [floatyBottomView2 sizeThatFits:{v21, 1.79769313e308}];
  v27 = v26;

  bottomView3 = [(DMCEnrollmentTemplateTableViewController *)self bottomView];
  if (bottomView3)
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

  if (isPad2)
  {
    v32 = 46.0;
  }

  else
  {
    v32 = 30.0;
  }

  view4 = [(DMCEnrollmentTemplateTableViewController *)self view];
  [view4 safeAreaInsets];
  v35 = v32 + v34;

  floatyBottomView3 = [(DMCEnrollmentTemplateTableViewController *)self floatyBottomView];

  if (floatyBottomView3)
  {
    v35 = v31 + v27 + v35;
  }

  bottomView4 = [(DMCEnrollmentTemplateTableViewController *)self bottomView];

  if (bottomView4)
  {
    v38 = v24 + v35;
  }

  else
  {
    v38 = v35;
  }

  view5 = [(DMCEnrollmentTemplateTableViewController *)self view];
  [view5 bounds];
  v40 = CGRectGetMaxY(v76) - v38;
  view6 = [(DMCEnrollmentTemplateTableViewController *)self view];
  [view6 bounds];
  Width = CGRectGetWidth(v77);
  bottomContainerView = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];
  v72 = v38;
  [bottomContainerView setFrame:{0.0, v40, Width, v38}];

  view7 = [(DMCEnrollmentTemplateTableViewController *)self view];
  [view7 safeAreaInsets];
  v46 = v73 + 17.0 + v45;
  floatyBottomView4 = [(DMCEnrollmentTemplateTableViewController *)self floatyBottomView];
  if (floatyBottomView4)
  {
    v48 = v27 + v31 + 22.0;
  }

  else
  {
    v48 = 22.0;
  }

  bottomView5 = [(DMCEnrollmentTemplateTableViewController *)self bottomView];
  [bottomView5 setFrame:{v46, v48, v21, v24}];

  view8 = [(DMCEnrollmentTemplateTableViewController *)self view];
  [view8 safeAreaInsets];
  v52 = v73 + 17.0 + v51;
  floatyBottomView5 = [(DMCEnrollmentTemplateTableViewController *)self floatyBottomView];
  [floatyBottomView5 setFrame:{v52, 22.0, v21, v27}];

  if ([MEMORY[0x277D03530] isPad])
  {
    v5 = v71;
    v7 = v70;
  }

  else
  {
    view9 = [(DMCEnrollmentTemplateTableViewController *)self view];
    [view9 safeAreaInsets];
    v7 = 8.0 - v55;

    v5 = v71;
  }

LABEL_27:
  tableView3 = [(DMCEnrollmentTemplateTableViewController *)self tableView];
  [tableView3 verticalScrollIndicatorInsets];
  v58 = v57;
  v60 = v59;
  v62 = v61;

  tableView4 = [(DMCEnrollmentTemplateTableViewController *)self tableView];
  [tableView4 setVerticalScrollIndicatorInsets:{v58, v60, v62, -v73}];

  view10 = [(DMCEnrollmentTemplateTableViewController *)self view];
  [view10 bounds];
  v65 = CGRectGetWidth(v78) + v73 * -2.0;
  view11 = [(DMCEnrollmentTemplateTableViewController *)self view];
  [view11 bounds];
  v67 = CGRectGetMaxY(v79) - v72 + 1.0;
  tableView5 = [(DMCEnrollmentTemplateTableViewController *)self tableView];
  [tableView5 setFrame:{v73, 0.0, v65, v67}];

  tableView6 = [(DMCEnrollmentTemplateTableViewController *)self tableView];
  [tableView6 setContentInset:{-5.0, v5, v7, v9}];

  [(DMCEnrollmentTemplateTableViewController *)self _updateEffectiveViewVisibility];
}

- (void)addBottomView:(id)view
{
  viewCopy = view;
  bottomView = [(DMCEnrollmentTemplateTableViewController *)self bottomView];

  if (bottomView)
  {
    bottomView2 = [(DMCEnrollmentTemplateTableViewController *)self bottomView];
    [bottomView2 removeFromSuperview];
  }

  [(DMCEnrollmentTemplateTableViewController *)self _addBottomView:viewCopy];
  [(DMCEnrollmentTemplateTableViewController *)self setBottomView:viewCopy];
}

- (void)addFloatyBottomView:(id)view
{
  viewCopy = view;
  floatyBottomView = [(DMCEnrollmentTemplateTableViewController *)self floatyBottomView];

  if (floatyBottomView)
  {
    floatyBottomView2 = [(DMCEnrollmentTemplateTableViewController *)self floatyBottomView];
    [floatyBottomView2 removeFromSuperview];
  }

  [(DMCEnrollmentTemplateTableViewController *)self _addBottomView:viewCopy];
  [(DMCEnrollmentTemplateTableViewController *)self setFloatyBottomView:viewCopy];
}

- (void)_addBottomView:(id)view
{
  viewCopy = view;
  bottomContainerView = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];

  if (!bottomContainerView)
  {
    v6 = objc_opt_new();
    [(DMCEnrollmentTemplateTableViewController *)self setBottomContainerView:v6];

    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    bottomContainerView2 = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];
    [bottomContainerView2 setBackgroundColor:systemBackgroundColor];

    view = [(DMCEnrollmentTemplateTableViewController *)self view];
    bottomContainerView3 = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];
    [view addSubview:bottomContainerView3];

    [(DMCEnrollmentTemplateTableViewController *)self _setUpBackdrops];
  }

  bottomContainerView4 = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];
  [bottomContainerView4 addSubview:viewCopy];
}

- (void)setIconName:(id)name
{
  nameCopy = name;
  if (![(NSString *)self->_iconName isEqualToString:?])
  {
    v4 = [nameCopy copy];
    iconName = self->_iconName;
    self->_iconName = v4;

    [(DMCEnrollmentTableViewIconCell *)self->_iconCell setIconName:nameCopy];
  }
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_titleText isEqualToString:?])
  {
    v4 = [textCopy copy];
    titleText = self->_titleText;
    self->_titleText = v4;

    v6 = self->_titleText;
    titleCell = [(DMCEnrollmentTemplateTableViewController *)self titleCell];
    [titleCell setTitle:v6];
  }
}

- (void)setSubtitleText:(id)text
{
  v17[1] = *MEMORY[0x277D85DE8];
  textCopy = text;
  if (![(NSString *)self->_subtitleText isEqualToString:textCopy])
  {
    v5 = [textCopy copy];
    subtitleText = self->_subtitleText;
    self->_subtitleText = v5;

    subtitleCell = [(DMCEnrollmentTemplateTableViewController *)self subtitleCell];
    if (subtitleCell)
    {
    }

    else if ([textCopy length])
    {
      v13 = [[DMCEnrollmentTableViewTextCell alloc] initWithText:textCopy bold:0];
      [(DMCEnrollmentTemplateTableViewController *)self setSubtitleCell:v13];

      subtitleCell2 = [(DMCEnrollmentTemplateTableViewController *)self subtitleCell];
      v17[0] = subtitleCell2;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
      [(DMCEnrollmentTemplateTableViewController *)self addCellData:v12 toSection:[(DMCEnrollmentTemplateTableViewController *)self headerSection] animated:0];
      goto LABEL_9;
    }

    subtitleCell3 = [(DMCEnrollmentTemplateTableViewController *)self subtitleCell];
    if (!subtitleCell3)
    {
      goto LABEL_10;
    }

    v9 = subtitleCell3;
    v10 = [textCopy length];

    if (v10)
    {
      goto LABEL_10;
    }

    subtitleCell2 = [(DMCEnrollmentTemplateTableViewController *)self subtitleCell];
    v16 = subtitleCell2;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    [(DMCEnrollmentTemplateTableViewController *)self removeCellData:v12 fromSection:[(DMCEnrollmentTemplateTableViewController *)self headerSection] animated:0];
LABEL_9:

LABEL_10:
    v14 = self->_subtitleText;
    subtitleCell4 = [(DMCEnrollmentTemplateTableViewController *)self subtitleCell];
    [subtitleCell4 setText:v14];
  }
}

- (void)setInProgress:(BOOL)progress
{
  v27 = *MEMORY[0x277D85DE8];
  if (self->_inProgress != progress)
  {
    progressCopy = progress;
    self->_inProgress = progress;
    view = [(DMCEnrollmentTemplateTableViewController *)self view];
    [view setUserInteractionEnabled:!progressCopy];

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
                  [v13 setEnabled:!progressCopy];
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

- (void)updateNavBarButtonType:(unint64_t)type forButtonPosition:(unint64_t)position enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  navigationItem = [(DMCEnrollmentTemplateTableViewController *)self navigationItem];
  v10 = navigationItem;
  if (position)
  {
    [navigationItem rightBarButtonItem];
  }

  else
  {
    [navigationItem leftBarButtonItem];
  }
  v16 = ;

  if (type - 1 < 4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(DMCEnrollmentUIBarButtonItem *)v16 buttonType]== type)
    {
      v11 = v16;
      v12 = v16;
      goto LABEL_17;
    }

    v11 = [[DMCEnrollmentUIBarButtonItem alloc] initWithType:type target:self action:[(DMCEnrollmentTemplateTableViewController *)self _actionSelectorForBarButtonPosition:position]];
    goto LABEL_13;
  }

  if (type)
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
    [(DMCEnrollmentUIBarButtonItem *)v11 setEnabled:enabledCopy];
    navigationItem2 = [(DMCEnrollmentTemplateTableViewController *)self navigationItem];
    v14 = navigationItem2;
    if (position)
    {
      [navigationItem2 setRightBarButtonItem:v11];
    }

    else
    {
      [navigationItem2 setLeftBarButtonItem:v11];
    }

    goto LABEL_20;
  }

LABEL_17:
  [(DMCEnrollmentUIBarButtonItem *)v12 setEnabled:enabledCopy];
LABEL_20:
  navigationItem3 = [(DMCEnrollmentTemplateTableViewController *)self navigationItem];
  DMCSendNavUIUpdatedNotification(navigationItem3);

  v12 = v16;
LABEL_21:
}

- (SEL)_actionSelectorForBarButtonPosition:(unint64_t)position
{
  if (position == 1)
  {
    return sel_rightBarButtonTapped_;
  }

  if (!position)
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
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [systemBackgroundColor set];

  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = 1.0;
  v14.size.height = 1.0;
  UIRectFill(v14);
  v11 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  navigationController = [(DMCEnrollmentTemplateTableViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setBackgroundImage:v11 forBarMetrics:0];

  navigationController2 = [(DMCEnrollmentTemplateTableViewController *)self navigationController];
  navigationBar2 = [navigationController2 navigationBar];
  v8 = objc_opt_new();
  [navigationBar2 setShadowImage:v8];

  navigationController3 = [(DMCEnrollmentTemplateTableViewController *)self navigationController];
  navigationBar3 = [navigationController3 navigationBar];
  [navigationBar3 setTranslucent:1];
}

- (void)addCellData:(id)data toSection:(unint64_t)section animated:(BOOL)animated
{
  animatedCopy = animated;
  dataCopy = data;
  cellDataCollection = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
  v10 = [cellDataCollection count];

  cellDataCollection2 = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
  v12 = cellDataCollection2;
  if (v10 <= section)
  {
    v16 = [dataCopy mutableCopy];

    [v12 addObject:v16];
    if (!animatedCopy)
    {
      goto LABEL_7;
    }

    tableView = [(DMCEnrollmentTemplateTableViewController *)self tableView];
    v15 = [MEMORY[0x277CCAA78] indexSetWithIndex:section];
    [tableView insertSections:v15 withRowAnimation:0];
  }

  else
  {
    v13 = [cellDataCollection2 objectAtIndexedSubscript:section];
    [v13 addObjectsFromArray:dataCopy];

    if (!animatedCopy)
    {
      goto LABEL_7;
    }

    tableView = [(DMCEnrollmentTemplateTableViewController *)self tableView];
    v15 = [MEMORY[0x277CCAA78] indexSetWithIndex:section];
    [tableView reloadSections:v15 withRowAnimation:100];
  }

LABEL_7:
  tableView2 = [(DMCEnrollmentTemplateTableViewController *)self tableView];
  [tableView2 reloadData];
}

- (unint64_t)_addCellData:(id)data createNewSection:(BOOL)section animated:(BOOL)animated
{
  animatedCopy = animated;
  sectionCopy = section;
  dataCopy = data;
  cellDataCollection = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
  v10 = [cellDataCollection count] - !sectionCopy;

  [(DMCEnrollmentTemplateTableViewController *)self addCellData:dataCopy toSection:v10 animated:animatedCopy];
  return v10;
}

- (void)removeCellData:(id)data fromSection:(unint64_t)section animated:(BOOL)animated
{
  animatedCopy = animated;
  dataCopy = data;
  cellDataCollection = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
  v10 = [cellDataCollection count];

  if (v10 > section && [dataCopy count])
  {
    v11 = objc_opt_new();
    cellDataCollection2 = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
    v13 = [cellDataCollection2 objectAtIndexedSubscript:section];

    v14 = objc_opt_new();
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __80__DMCEnrollmentTemplateTableViewController_removeCellData_fromSection_animated___block_invoke;
    v28 = &unk_278EE7D40;
    v29 = dataCopy;
    v15 = v11;
    v30 = v15;
    v16 = v14;
    v31 = v16;
    sectionCopy = section;
    [v13 enumerateObjectsUsingBlock:&v25];
    v17 = [v15 count];
    cellDataCollection3 = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
    v19 = cellDataCollection3;
    if (v17)
    {
      [cellDataCollection3 setObject:v15 atIndexedSubscript:section];

      tableView = [(DMCEnrollmentTemplateTableViewController *)self tableView];
      tableView2 = tableView;
      if (animatedCopy)
      {
        v22 = 0;
      }

      else
      {
        v22 = 5;
      }

      [tableView deleteRowsAtIndexPaths:v16 withRowAnimation:v22];
    }

    else
    {
      [cellDataCollection3 removeObjectAtIndex:section];

      tableView2 = [(DMCEnrollmentTemplateTableViewController *)self tableView];
      v23 = [MEMORY[0x277CCAA78] indexSetWithIndex:section];
      if (animatedCopy)
      {
        v24 = 0;
      }

      else
      {
        v24 = 5;
      }

      [tableView2 deleteSections:v23 withRowAnimation:v24];
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

- (int64_t)numberOfSectionsInTableView:(id)view
{
  cellDataCollection = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
  v4 = [cellDataCollection count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  cellDataCollection = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
  v7 = [cellDataCollection count];

  if (v7 <= section)
  {
    return 0;
  }

  cellDataCollection2 = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
  v9 = [cellDataCollection2 objectAtIndexedSubscript:section];
  v10 = [v9 count];

  return v10;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  cellDataCollection = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
  v7 = [cellDataCollection objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  v8 = [pathCopy row];

  v9 = [v7 objectAtIndexedSubscript:v8];
  cell = [v9 cell];

  return cell;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  cellDataCollection = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
  v8 = [cellDataCollection count];

  if (section >= v8)
  {
    v13 = *MEMORY[0x277D76F30];
  }

  else
  {
    cellDataCollection2 = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
    v10 = [cellDataCollection2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
    v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    [v11 cellHeight];
    v13 = v12;
  }

  return v13;
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  cellDataCollection = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
  v8 = [cellDataCollection count];

  if (section >= v8)
  {
    v13 = *MEMORY[0x277D76F30];
  }

  else
  {
    cellDataCollection2 = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
    v10 = [cellDataCollection2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
    v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    [v11 estimatedCellHeight];
    v13 = v12;
  }

  return v13;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v4 = objc_alloc(MEMORY[0x277D75B70]);
  v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  return v5;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v4 = objc_alloc(MEMORY[0x277D75B70]);
  v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  return v5;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  cellDataCollection = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
  v7 = [cellDataCollection count];

  if (v7 <= section)
  {
    return *MEMORY[0x277D76F30];
  }

  customTopMargin = [(DMCEnrollmentTemplateTableViewController *)self customTopMargin];

  if (customTopMargin)
  {
    customTopMargin2 = [(DMCEnrollmentTemplateTableViewController *)self customTopMargin];
    [customTopMargin2 floatValue];
    v11 = v10;

    return v11;
  }

  if (section)
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

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  cellDataCollection = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
  v7 = [cellDataCollection count];

  if (v7 > section)
  {
    cellDataCollection2 = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
    v9 = [cellDataCollection2 objectAtIndexedSubscript:section];
    lastObject = [v9 lastObject];

    cellDataCollection3 = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
    if ([cellDataCollection3 count] - 1 == section)
    {
    }

    else
    {
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        [lastObject gapToNextSection];
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

- (void)keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D76BB8]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(DMCEnrollmentTemplateTableViewController *)self _updateFloatyViewForKeyboardFrame:v7 duration:v9, v11, v13, 0.25];
}

- (void)keyboardDidShow:(id)show
{
  userInfo = [show userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D76BB8]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(DMCEnrollmentTemplateTableViewController *)self _updateFloatyViewForKeyboardFrame:v7 duration:v9, v11, v13, 0.100000001];
}

- (void)keyboardWillHide:(id)hide
{
  floatyBottomView = [(DMCEnrollmentTemplateTableViewController *)self floatyBottomView];

  if (floatyBottomView)
  {
    [(DMCEnrollmentTemplateTableViewController *)self setGapBetweenButtons:0.0];
    bottomContainerView = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];
    [(DMCEnrollmentTemplateTableViewController *)self _touchViewFrame:bottomContainerView];

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

  effectView = [(DMCEnrollmentTemplateTableViewController *)self effectView];
  [effectView setTranslatesAutoresizingMaskIntoConstraints:0];

  bottomContainerView = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];
  effectView2 = [(DMCEnrollmentTemplateTableViewController *)self effectView];
  [bottomContainerView addSubview:effectView2];

  v23 = MEMORY[0x277CCAAD0];
  bottomContainerView2 = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];
  widthAnchor = [bottomContainerView2 widthAnchor];
  effectView3 = [(DMCEnrollmentTemplateTableViewController *)self effectView];
  widthAnchor2 = [effectView3 widthAnchor];
  v27 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:1.0];
  v32[0] = v27;
  bottomContainerView3 = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];
  heightAnchor = [bottomContainerView3 heightAnchor];
  effectView4 = [(DMCEnrollmentTemplateTableViewController *)self effectView];
  heightAnchor2 = [effectView4 heightAnchor];
  v21 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:1.0];
  v32[1] = v21;
  bottomContainerView4 = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];
  leadingAnchor = [bottomContainerView4 leadingAnchor];
  effectView5 = [(DMCEnrollmentTemplateTableViewController *)self effectView];
  leadingAnchor2 = [effectView5 leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v32[2] = v11;
  bottomContainerView5 = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];
  bottomAnchor = [bottomContainerView5 bottomAnchor];
  effectView6 = [(DMCEnrollmentTemplateTableViewController *)self effectView];
  bottomAnchor2 = [effectView6 bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v32[3] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:4];
  [v23 activateConstraints:v17];

  effectView7 = [(DMCEnrollmentTemplateTableViewController *)self effectView];
  [effectView7 setAlpha:0.0];
}

- (double)_lastCellBlockedHeight
{
  tableView = [(DMCEnrollmentTemplateTableViewController *)self tableView];
  visibleCells = [tableView visibleCells];
  lastObject = [visibleCells lastObject];

  tableView2 = [(DMCEnrollmentTemplateTableViewController *)self tableView];
  v7 = [tableView2 indexPathForCell:lastObject];

  cellDataCollection = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
  v9 = [cellDataCollection count];
  if (v9 == [v7 section] + 1)
  {
    cellDataCollection2 = [(DMCEnrollmentTemplateTableViewController *)self cellDataCollection];
    v11 = [cellDataCollection2 objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];
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

  superview = [lastObject superview];
  [lastObject frame];
  v16 = v15;
  v18 = v17;
  view = [(DMCEnrollmentTemplateTableViewController *)self view];
  window = [view window];
  [superview convertPoint:window toView:{v16, v18}];
  v22 = v21;

  bottomContainerView = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];
  superview2 = [bottomContainerView superview];
  bottomContainerView2 = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];
  [bottomContainerView2 frame];
  v27 = v26;
  v29 = v28;
  view2 = [(DMCEnrollmentTemplateTableViewController *)self view];
  window2 = [view2 window];
  [superview2 convertPoint:window2 toView:{v27, v29}];
  v33 = v32;

  [lastObject bounds];
  v35 = v13 + v22 + v34 - v33;

  return v35;
}

- (void)_updateEffectiveViewVisibility
{
  bottomContainerView = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];

  if (bottomContainerView)
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

    selfCopy = self;
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

- (void)_adjustFloatyViewFrameWithKeyboardFrame:(CGRect)frame animationDuration:(double)duration
{
  floatyBottomView = [(DMCEnrollmentTemplateTableViewController *)self floatyBottomView];
  superview = [floatyBottomView superview];
  floatyBottomView2 = [(DMCEnrollmentTemplateTableViewController *)self floatyBottomView];
  [floatyBottomView2 frame];
  [superview convertRect:0 toView:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  bottomContainerView = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];
  superview2 = [bottomContainerView superview];
  bottomContainerView2 = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];
  [bottomContainerView2 frame];
  [superview2 convertRect:0 toView:?];
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
  v41 = v27 - CGRectGetMinY(frame);
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
  view = [(DMCEnrollmentTemplateTableViewController *)self view];
  [view safeAreaInsets];
  v32 = v29 - v31;

  bottomView = [(DMCEnrollmentTemplateTableViewController *)self bottomView];

  if (bottomView)
  {
    bottomView2 = [(DMCEnrollmentTemplateTableViewController *)self bottomView];
    [bottomView2 frame];
    v32 = v32 - CGRectGetHeight(v46);
  }

  v35 = fmax(v41 + v32, 0.0);
  [(DMCEnrollmentTemplateTableViewController *)self gapBetweenButtons];
  if (v36 != v35)
  {
    [(DMCEnrollmentTemplateTableViewController *)self setGapBetweenButtons:v35];
    bottomContainerView3 = [(DMCEnrollmentTemplateTableViewController *)self bottomContainerView];
    [(DMCEnrollmentTemplateTableViewController *)self _touchViewFrame:bottomContainerView3];

    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __102__DMCEnrollmentTemplateTableViewController__adjustFloatyViewFrameWithKeyboardFrame_animationDuration___block_invoke;
    v42[3] = &unk_278EE74C0;
    v42[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v42 animations:duration];
  }
}

void __102__DMCEnrollmentTemplateTableViewController__adjustFloatyViewFrameWithKeyboardFrame_animationDuration___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

- (void)_updateFloatyViewForKeyboardFrame:(CGRect)frame duration:(double)duration
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  floatyBottomView = [(DMCEnrollmentTemplateTableViewController *)self floatyBottomView];

  if (floatyBottomView)
  {
    navigationController = [(DMCEnrollmentTemplateTableViewController *)self navigationController];
    if (!navigationController || (v12 = navigationController, -[DMCEnrollmentTemplateTableViewController navigationController](self, "navigationController"), v13 = objc_claimAutoreleasedReturnValue(), [v13 topViewController], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v12, v14 == self))
    {
      presentedViewController = [(DMCEnrollmentTemplateTableViewController *)self presentedViewController];

      if (!presentedViewController)
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
        *&v16[9] = duration;
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

- (void)_touchViewFrame:(id)frame
{
  frameCopy = frame;
  [frameCopy frame];
  [frameCopy setFrame:?];
}

@end