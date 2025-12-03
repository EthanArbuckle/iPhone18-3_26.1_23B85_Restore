@interface CBSTableViewController
- (CGRect)containerFooterViewFrame;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)headerView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)_setupFooterView;
- (void)_setupTableView;
- (void)_setupView;
- (void)_updateHeaderView;
- (void)setAttributedDetailDescriptionText:(id)text;
- (void)setDetailDescriptionText:(id)text;
- (void)setTitleText:(id)text;
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
  view = [(CBSTableViewController *)self view];
  [view frame];
  v5 = [v3 initWithFrame:1 style:?];
  tableView = self->_tableView;
  self->_tableView = v5;

  clearColor = [MEMORY[0x277D75348] clearColor];
  [(UITableView *)self->_tableView setBackgroundColor:clearColor];

  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setAutoresizingMask:18];
  view2 = [(CBSTableViewController *)self view];
  [view2 addSubview:self->_tableView];
}

- (void)_updateHeaderView
{
  headerView = [(CBSTableViewController *)self headerView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    titleText = [(CBSTableViewController *)self titleText];
    detailDescriptionText = [(CBSTableViewController *)self detailDescriptionText];
    attributedDetailDescriptionText = [(CBSTableViewController *)self attributedDetailDescriptionText];
    iconName = [(CBSTableViewController *)self iconName];
    iconTintColor = [(CBSTableViewController *)self iconTintColor];
    headerView2 = [(CBSTableViewController *)self headerView];
    if ([titleText length] || objc_msgSend(detailDescriptionText, "length") || objc_msgSend(attributedDetailDescriptionText, "length"))
    {
      [headerView2 setTitleText:titleText];
      v10 = [attributedDetailDescriptionText length];
      detailTextLabel = [headerView2 detailTextLabel];
      v12 = detailTextLabel;
      if (v10)
      {
        [detailTextLabel setAttributedText:attributedDetailDescriptionText];
      }

      else
      {
        [detailTextLabel setText:detailDescriptionText];
      }
    }

    if (iconName && [iconName length])
    {
      v13 = [MEMORY[0x277D755B8] imageNamed:iconName];
      v14 = v13;
      if (iconTintColor)
      {
        v15 = [v13 _flatImageWithColor:iconTintColor];

        v14 = v15;
      }

      [headerView2 setIcon:v14];
    }
  }
}

- (void)_setupFooterView
{
  footerView = [(CBSTableViewController *)self footerView];

  if (footerView)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v7 = [v4 initWithFrame:{0.0, 0.0, 0.0, dbl_2433E2E20[(userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1]}];
    [(CBSTableViewController *)self setContainerFooterView:v7];

    containerFooterView = [(CBSTableViewController *)self containerFooterView];
    [containerFooterView frame];
    [(CBSTableViewController *)self setContainerFooterViewFrame:?];

    containerFooterView2 = [(CBSTableViewController *)self containerFooterView];
    footerView2 = [(CBSTableViewController *)self footerView];
    [containerFooterView2 addSubview:footerView2];
  }
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  if (section)
  {
    return *MEMORY[0x277D76F30];
  }

  viewCopy = view;
  headerView = [(CBSTableViewController *)self headerView];
  [viewCopy frame];
  v9 = v8;

  [headerView systemLayoutSizeFittingSize:{v9, *(MEMORY[0x277D76C78] + 8)}];
  v11 = v10;
  [(CBSTableViewController *)self headerToFooterViewSpacing];
  v4 = v11 + v12;

  return v4;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  if (section)
  {
    return *MEMORY[0x277D76F30];
  }

  containerFooterView = [(CBSTableViewController *)self containerFooterView];
  [containerFooterView frame];
  v4 = v6;

  return v4;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  if (section)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(CBSTableViewController *)self headerView:view];
  }

  return v6;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  if (section)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(CBSTableViewController *)self containerFooterView:view];
  }

  return v6;
}

- (void)setTitleText:(id)text
{
  if (self->_titleText != text)
  {
    objc_storeStrong(&self->_titleText, text);
    if ([(CBSTableViewController *)self isViewLoaded])
    {
      [(CBSTableViewController *)self _updateHeaderView];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setDetailDescriptionText:(id)text
{
  if (self->_detailDescriptionText != text)
  {
    objc_storeStrong(&self->_detailDescriptionText, text);
    if ([(CBSTableViewController *)self isViewLoaded])
    {
      [(CBSTableViewController *)self _updateHeaderView];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setAttributedDetailDescriptionText:(id)text
{
  if (self->_attributedDetailDescriptionText != text)
  {
    objc_storeStrong(&self->_attributedDetailDescriptionText, text);
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
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