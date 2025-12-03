@interface MSDStoreInfoListViewController
- (MSDStoreInfoListViewController)initWithStoreInfoList:(id)list andDelegate:(id)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_close:(id)_close;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation MSDStoreInfoListViewController

- (MSDStoreInfoListViewController)initWithStoreInfoList:(id)list andDelegate:(id)delegate
{
  listCopy = list;
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = MSDStoreInfoListViewController;
  v8 = [(MSDStoreInfoListViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MSDStoreInfoListViewController *)v8 setStoreList:listCopy];
    [(MSDStoreInfoListViewController *)v9 setDelegate:delegateCopy];
    [(MSDStoreInfoListViewController *)v9 setTableView:0];
  }

  return v9;
}

- (void)viewDidLoad
{
  v85[2] = *MEMORY[0x277D85DE8];
  v82.receiver = self;
  v82.super_class = MSDStoreInfoListViewController;
  [(MSDStoreInfoListViewController *)&v82 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(MSDStoreInfoListViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  v5 = [MEMORY[0x277D75220] buttonWithType:1];
  v80 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark"];
  [v5 setImage:v80 forState:0];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [v5 setTintColor:systemGrayColor];

  [v5 addTarget:self action:sel__close_ forControlEvents:64];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(MSDStoreInfoListViewController *)self view];
  [view2 addSubview:v5];

  v81 = v5;
  trailingAnchor = [v5 trailingAnchor];
  view3 = [(MSDStoreInfoListViewController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-30.0];
  v85[0] = v10;
  topAnchor = [v5 topAnchor];
  view4 = [(MSDStoreInfoListViewController *)self view];
  safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide2 topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:30.0];
  v85[1] = v15;
  v79 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:2];

  [MEMORY[0x277CCAAD0] activateConstraints:v79];
  v16 = objc_alloc(MEMORY[0x277D756B8]);
  v17 = *MEMORY[0x277CBF3A0];
  v18 = *(MEMORY[0x277CBF3A0] + 8);
  v19 = *(MEMORY[0x277CBF3A0] + 16);
  v20 = *(MEMORY[0x277CBF3A0] + 24);
  v21 = [v16 initWithFrame:{*MEMORY[0x277CBF3A0], v18, v19, v20}];
  [v21 setNumberOfLines:0];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = MEMORY[0x277CCACA8];
  v23 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/MobileStoreDemoSetupUI.framework"];
  v24 = [v23 localizedStringForKey:@"STORE_COUNT" value:&stru_286AE2298 table:@"Localizable"];
  storeList = [(MSDStoreInfoListViewController *)self storeList];
  v26 = [v22 localizedStringWithFormat:v24, objc_msgSend(storeList, "count")];
  [v21 setText:v26];

  v27 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
  [v21 setFont:v27];

  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  view5 = [(MSDStoreInfoListViewController *)self view];
  [view5 addSubview:v21];

  leadingAnchor = [v21 leadingAnchor];
  view6 = [(MSDStoreInfoListViewController *)self view];
  safeAreaLayoutGuide3 = [view6 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide3 leadingAnchor];
  v65 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:30.0];
  v84[0] = v65;
  trailingAnchor3 = [v21 trailingAnchor];
  leadingAnchor3 = [v81 leadingAnchor];
  v59 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor3];
  v84[1] = v59;
  v78 = v21;
  topAnchor3 = [v21 topAnchor];
  view7 = [(MSDStoreInfoListViewController *)self view];
  safeAreaLayoutGuide4 = [view7 safeAreaLayoutGuide];
  topAnchor4 = [safeAreaLayoutGuide4 topAnchor];
  v33 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v84[2] = v33;
  centerYAnchor = [v21 centerYAnchor];
  centerYAnchor2 = [v81 centerYAnchor];
  v36 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v84[3] = v36;
  v76 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v76];
  v37 = [objc_alloc(MEMORY[0x277D75B40]) initWithFrame:0 style:{v17, v18, v19, v20}];
  [(MSDStoreInfoListViewController *)self setTableView:v37];

  tableView = [(MSDStoreInfoListViewController *)self tableView];
  [tableView setDataSource:self];

  tableView2 = [(MSDStoreInfoListViewController *)self tableView];
  [tableView2 setDelegate:self];

  tableView3 = [(MSDStoreInfoListViewController *)self tableView];
  [tableView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view8 = [(MSDStoreInfoListViewController *)self view];
  tableView4 = [(MSDStoreInfoListViewController *)self tableView];
  [view8 addSubview:tableView4];

  tableView5 = [(MSDStoreInfoListViewController *)self tableView];
  topAnchor5 = [tableView5 topAnchor];
  bottomAnchor = [v81 bottomAnchor];
  v68 = [topAnchor5 constraintEqualToAnchor:bottomAnchor constant:15.0];
  v83[0] = v68;
  tableView6 = [(MSDStoreInfoListViewController *)self tableView];
  bottomAnchor2 = [tableView6 bottomAnchor];
  view9 = [(MSDStoreInfoListViewController *)self view];
  bottomAnchor3 = [view9 bottomAnchor];
  v58 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v83[1] = v58;
  tableView7 = [(MSDStoreInfoListViewController *)self tableView];
  leadingAnchor4 = [tableView7 leadingAnchor];
  view10 = [(MSDStoreInfoListViewController *)self view];
  safeAreaLayoutGuide5 = [view10 safeAreaLayoutGuide];
  leadingAnchor5 = [safeAreaLayoutGuide5 leadingAnchor];
  v45 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  v83[2] = v45;
  tableView8 = [(MSDStoreInfoListViewController *)self tableView];
  trailingAnchor4 = [tableView8 trailingAnchor];
  view11 = [(MSDStoreInfoListViewController *)self view];
  safeAreaLayoutGuide6 = [view11 safeAreaLayoutGuide];
  trailingAnchor5 = [safeAreaLayoutGuide6 trailingAnchor];
  v51 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v83[3] = v51;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v54];
  tableView9 = [(MSDStoreInfoListViewController *)self tableView];
  [tableView9 registerClass:objc_opt_class() forCellReuseIdentifier:@"StoreInfoCell"];

  v53 = *MEMORY[0x277D85DE8];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(MSDStoreInfoListViewController *)self storeList:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  storeList = [(MSDStoreInfoListViewController *)self storeList];
  v7 = [pathCopy row];

  v8 = [storeList objectAtIndex:v7];

  if ([v8 isHQ])
  {
    v9 = @"building.2.crop.circle.fill";
  }

  else
  {
    v9 = @"mappin.circle.fill";
  }

  v10 = [MEMORY[0x277D755B8] systemImageNamed:v9];
  v11 = [MSDStoreInfoTableViewCell alloc];
  storeName = [v8 storeName];
  storeDescription = [v8 storeDescription];
  systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  v15 = [(MSDStoreInfoTableViewCell *)v11 initWithTitle:storeName description:storeDescription image:v10 imageColor:systemRedColor reuseIdentifier:@"StoreInfoCell"];

  return v15;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  tableView = [(MSDStoreInfoListViewController *)self tableView];
  v7 = [tableView numberOfRowsInSection:0];

  if (v5 < v7)
  {
    storeList = [(MSDStoreInfoListViewController *)self storeList];
    v9 = [storeList objectAtIndex:{objc_msgSend(pathCopy, "row")}];

    v10 = [MSDStoreInfoViewController alloc];
    delegate = [(MSDStoreInfoListViewController *)self delegate];
    v12 = [(MSDStoreInfoViewController *)v10 initWithStoreInfo:v9 andDelegate:delegate];

    navigationController = [(MSDStoreInfoListViewController *)self navigationController];
    [navigationController pushViewController:v12 animated:1];

    tableView2 = [(MSDStoreInfoListViewController *)self tableView];
    [tableView2 deselectRowAtIndexPath:pathCopy animated:1];
  }
}

- (void)_close:(id)_close
{
  navigationController = [(MSDStoreInfoListViewController *)self navigationController];
  v5 = [navigationController popViewControllerAnimated:1];

  delegate = [(MSDStoreInfoListViewController *)self delegate];
  [delegate listViewDidClose:self];
}

@end