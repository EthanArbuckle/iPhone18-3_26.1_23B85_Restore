@interface CBSTableViewController
- (CGRect)containerFooterViewFrame;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)headerView;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)_setupFooterView;
- (void)_setupTableView;
- (void)_setupView;
- (void)_updateHeaderView;
- (void)setAttributedDetailDescriptionText:(id)a3;
- (void)setDetailDescriptionText:(id)a3;
- (void)setTitleText:(id)a3;
- (void)viewDidLoad;
@end

@implementation CBSTableViewController

- (void)viewDidLoad
{
  v3 = CheckerBoardLogHandleForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2433DB000, v3, OS_LOG_TYPE_DEFAULT, "Created a square", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = CBSTableViewController;
  [(CBSTableViewController *)&v4 viewDidLoad];
  [(CBSTableViewController *)self _setupView];
  [(CBSTableViewController *)self _updateHeaderView];
}

- (void)_setupView
{
  [(CBSTableViewController *)self _setupTableView];

  [(CBSTableViewController *)self _setupFooterView];
}

- (void)_setupTableView
{
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [(CBSTableViewController *)self view];
  [v4 frame];
  v5 = [v3 initWithFrame:1 style:?];
  tableView = self->_tableView;
  self->_tableView = v5;

  v7 = [MEMORY[0x277D75348] clearColor];
  [(UITableView *)self->_tableView setBackgroundColor:v7];

  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setAutoresizingMask:18];
  v8 = [(CBSTableViewController *)self view];
  [v8 addSubview:self->_tableView];
}

- (void)_updateHeaderView
{
  v3 = [(CBSTableViewController *)self headerView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v16 = [(CBSTableViewController *)self titleText];
    v5 = [(CBSTableViewController *)self detailDescriptionText];
    v6 = [(CBSTableViewController *)self attributedDetailDescriptionText];
    v7 = [(CBSTableViewController *)self iconName];
    v8 = [(CBSTableViewController *)self iconTintColor];
    v9 = [(CBSTableViewController *)self headerView];
    if ([v16 length] || objc_msgSend(v5, "length") || objc_msgSend(v6, "length"))
    {
      [v9 setTitleText:v16];
      v10 = [v6 length];
      v11 = [v9 detailTextLabel];
      v12 = v11;
      if (v10)
      {
        [v11 setAttributedText:v6];
      }

      else
      {
        [v11 setText:v5];
      }
    }

    if (v7 && [v7 length])
    {
      v13 = [MEMORY[0x277D755B8] imageNamed:v7];
      v14 = v13;
      if (v8)
      {
        v15 = [v13 _flatImageWithColor:v8];

        v14 = v15;
      }

      [v9 setIcon:v14];
    }
  }
}

- (void)_setupFooterView
{
  v3 = [(CBSTableViewController *)self footerView];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    v5 = [MEMORY[0x277D75418] currentDevice];
    v6 = [v5 userInterfaceIdiom];

    v7 = [v4 initWithFrame:{0.0, 0.0, 0.0, dbl_2433E2E20[(v6 & 0xFFFFFFFFFFFFFFFBLL) == 1]}];
    [(CBSTableViewController *)self setContainerFooterView:v7];

    v8 = [(CBSTableViewController *)self containerFooterView];
    [v8 frame];
    [(CBSTableViewController *)self setContainerFooterViewFrame:?];

    v10 = [(CBSTableViewController *)self containerFooterView];
    v9 = [(CBSTableViewController *)self footerView];
    [v10 addSubview:v9];
  }
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  if (a4)
  {
    return *MEMORY[0x277D76F30];
  }

  v6 = a3;
  v7 = [(CBSTableViewController *)self headerView];
  [v6 frame];
  v9 = v8;

  [v7 systemLayoutSizeFittingSize:{v9, *(MEMORY[0x277D76C78] + 8)}];
  v11 = v10;
  [(CBSTableViewController *)self headerToFooterViewSpacing];
  v4 = v11 + v12;

  return v4;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  if (a4)
  {
    return *MEMORY[0x277D76F30];
  }

  v5 = [(CBSTableViewController *)self containerFooterView];
  [v5 frame];
  v4 = v6;

  return v4;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  if (a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(CBSTableViewController *)self headerView:a3];
  }

  return v6;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  if (a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(CBSTableViewController *)self containerFooterView:a3];
  }

  return v6;
}

- (void)setTitleText:(id)a3
{
  if (self->_titleText != a3)
  {
    objc_storeStrong(&self->_titleText, a3);
    if ([(CBSTableViewController *)self isViewLoaded])
    {
      [(CBSTableViewController *)self _updateHeaderView];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setDetailDescriptionText:(id)a3
{
  if (self->_detailDescriptionText != a3)
  {
    objc_storeStrong(&self->_detailDescriptionText, a3);
    if ([(CBSTableViewController *)self isViewLoaded])
    {
      [(CBSTableViewController *)self _updateHeaderView];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setAttributedDetailDescriptionText:(id)a3
{
  if (self->_attributedDetailDescriptionText != a3)
  {
    objc_storeStrong(&self->_attributedDetailDescriptionText, a3);
    if ([(CBSTableViewController *)self isViewLoaded])
    {
      [(CBSTableViewController *)self _updateHeaderView];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (id)headerView
{
  headerView = self->_headerView;
  if (!headerView)
  {
    v4 = objc_alloc(MEMORY[0x277D4DA98]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = self->_headerView;
    self->_headerView = v5;

    headerView = self->_headerView;
  }

  return headerView;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  __assert_rtn("[CBSTableViewController tableView:cellForRowAtIndexPath:]", "CBSTableViewController.m", 246, "0");
}

- (CGRect)containerFooterViewFrame
{
  x = self->_containerFooterViewFrame.origin.x;
  y = self->_containerFooterViewFrame.origin.y;
  width = self->_containerFooterViewFrame.size.width;
  height = self->_containerFooterViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end