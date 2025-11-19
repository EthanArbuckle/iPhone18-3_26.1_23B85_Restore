@interface MSDStoreInfoListViewController
- (MSDStoreInfoListViewController)initWithStoreInfoList:(id)a3 andDelegate:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_close:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation MSDStoreInfoListViewController

- (MSDStoreInfoListViewController)initWithStoreInfoList:(id)a3 andDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MSDStoreInfoListViewController;
  v8 = [(MSDStoreInfoListViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MSDStoreInfoListViewController *)v8 setStoreList:v6];
    [(MSDStoreInfoListViewController *)v9 setDelegate:v7];
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
  v3 = [MEMORY[0x277D75348] systemBackgroundColor];
  v4 = [(MSDStoreInfoListViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [MEMORY[0x277D75220] buttonWithType:1];
  v80 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark"];
  [v5 setImage:v80 forState:0];
  v6 = [MEMORY[0x277D75348] systemGrayColor];
  [v5 setTintColor:v6];

  [v5 addTarget:self action:sel__close_ forControlEvents:64];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [(MSDStoreInfoListViewController *)self view];
  [v7 addSubview:v5];

  v81 = v5;
  v75 = [v5 trailingAnchor];
  v77 = [(MSDStoreInfoListViewController *)self view];
  v8 = [v77 safeAreaLayoutGuide];
  v9 = [v8 trailingAnchor];
  v10 = [v75 constraintEqualToAnchor:v9 constant:-30.0];
  v85[0] = v10;
  v11 = [v5 topAnchor];
  v12 = [(MSDStoreInfoListViewController *)self view];
  v13 = [v12 safeAreaLayoutGuide];
  v14 = [v13 topAnchor];
  v15 = [v11 constraintEqualToAnchor:v14 constant:30.0];
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
  v25 = [(MSDStoreInfoListViewController *)self storeList];
  v26 = [v22 localizedStringWithFormat:v24, objc_msgSend(v25, "count")];
  [v21 setText:v26];

  v27 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
  [v21 setFont:v27];

  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  v28 = [(MSDStoreInfoListViewController *)self view];
  [v28 addSubview:v21];

  v71 = [v21 leadingAnchor];
  v73 = [(MSDStoreInfoListViewController *)self view];
  v69 = [v73 safeAreaLayoutGuide];
  v67 = [v69 leadingAnchor];
  v65 = [v71 constraintEqualToAnchor:v67 constant:30.0];
  v84[0] = v65;
  v63 = [v21 trailingAnchor];
  v61 = [v81 leadingAnchor];
  v59 = [v63 constraintEqualToAnchor:v61];
  v84[1] = v59;
  v78 = v21;
  v29 = [v21 topAnchor];
  v30 = [(MSDStoreInfoListViewController *)self view];
  v31 = [v30 safeAreaLayoutGuide];
  v32 = [v31 topAnchor];
  v33 = [v29 constraintEqualToAnchor:v32];
  v84[2] = v33;
  v34 = [v21 centerYAnchor];
  v35 = [v81 centerYAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];
  v84[3] = v36;
  v76 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v76];
  v37 = [objc_alloc(MEMORY[0x277D75B40]) initWithFrame:0 style:{v17, v18, v19, v20}];
  [(MSDStoreInfoListViewController *)self setTableView:v37];

  v38 = [(MSDStoreInfoListViewController *)self tableView];
  [v38 setDataSource:self];

  v39 = [(MSDStoreInfoListViewController *)self tableView];
  [v39 setDelegate:self];

  v40 = [(MSDStoreInfoListViewController *)self tableView];
  [v40 setTranslatesAutoresizingMaskIntoConstraints:0];

  v41 = [(MSDStoreInfoListViewController *)self view];
  v42 = [(MSDStoreInfoListViewController *)self tableView];
  [v41 addSubview:v42];

  v74 = [(MSDStoreInfoListViewController *)self tableView];
  v72 = [v74 topAnchor];
  v70 = [v81 bottomAnchor];
  v68 = [v72 constraintEqualToAnchor:v70 constant:15.0];
  v83[0] = v68;
  v66 = [(MSDStoreInfoListViewController *)self tableView];
  v62 = [v66 bottomAnchor];
  v64 = [(MSDStoreInfoListViewController *)self view];
  v60 = [v64 bottomAnchor];
  v58 = [v62 constraintEqualToAnchor:v60];
  v83[1] = v58;
  v57 = [(MSDStoreInfoListViewController *)self tableView];
  v55 = [v57 leadingAnchor];
  v56 = [(MSDStoreInfoListViewController *)self view];
  v43 = [v56 safeAreaLayoutGuide];
  v44 = [v43 leadingAnchor];
  v45 = [v55 constraintEqualToAnchor:v44];
  v83[2] = v45;
  v46 = [(MSDStoreInfoListViewController *)self tableView];
  v47 = [v46 trailingAnchor];
  v48 = [(MSDStoreInfoListViewController *)self view];
  v49 = [v48 safeAreaLayoutGuide];
  v50 = [v49 trailingAnchor];
  v51 = [v47 constraintEqualToAnchor:v50];
  v83[3] = v51;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v54];
  v52 = [(MSDStoreInfoListViewController *)self tableView];
  [v52 registerClass:objc_opt_class() forCellReuseIdentifier:@"StoreInfoCell"];

  v53 = *MEMORY[0x277D85DE8];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(MSDStoreInfoListViewController *)self storeList:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(MSDStoreInfoListViewController *)self storeList];
  v7 = [v5 row];

  v8 = [v6 objectAtIndex:v7];

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
  v12 = [v8 storeName];
  v13 = [v8 storeDescription];
  v14 = [MEMORY[0x277D75348] systemRedColor];
  v15 = [(MSDStoreInfoTableViewCell *)v11 initWithTitle:v12 description:v13 image:v10 imageColor:v14 reuseIdentifier:@"StoreInfoCell"];

  return v15;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v15 = a4;
  v5 = [v15 row];
  v6 = [(MSDStoreInfoListViewController *)self tableView];
  v7 = [v6 numberOfRowsInSection:0];

  if (v5 < v7)
  {
    v8 = [(MSDStoreInfoListViewController *)self storeList];
    v9 = [v8 objectAtIndex:{objc_msgSend(v15, "row")}];

    v10 = [MSDStoreInfoViewController alloc];
    v11 = [(MSDStoreInfoListViewController *)self delegate];
    v12 = [(MSDStoreInfoViewController *)v10 initWithStoreInfo:v9 andDelegate:v11];

    v13 = [(MSDStoreInfoListViewController *)self navigationController];
    [v13 pushViewController:v12 animated:1];

    v14 = [(MSDStoreInfoListViewController *)self tableView];
    [v14 deselectRowAtIndexPath:v15 animated:1];
  }
}

- (void)_close:(id)a3
{
  v4 = [(MSDStoreInfoListViewController *)self navigationController];
  v5 = [v4 popViewControllerAnimated:1];

  v6 = [(MSDStoreInfoListViewController *)self delegate];
  [v6 listViewDidClose:self];
}

@end