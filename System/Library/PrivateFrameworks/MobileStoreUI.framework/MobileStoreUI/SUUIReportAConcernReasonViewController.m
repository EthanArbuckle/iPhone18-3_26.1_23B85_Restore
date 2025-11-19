@interface SUUIReportAConcernReasonViewController
- (SUUIReportAConcernReasonViewController)initWithCoder:(id)a3;
- (SUUIReportAConcernReasonViewController)initWithConfiguration:(id)a3;
- (SUUIReportAConcernReasonViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SUUIReportAConcernReasonViewController

- (SUUIReportAConcernReasonViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = objc_alloc_init(SUUIReportAConcernConfiguration);
  v6 = [(SUUIReportAConcernReasonViewController *)self initWithConfiguration:v5];

  return v6;
}

- (SUUIReportAConcernReasonViewController)initWithCoder:(id)a3
{
  v4 = objc_alloc_init(SUUIReportAConcernConfiguration);
  v5 = [(SUUIReportAConcernReasonViewController *)self initWithConfiguration:v4];

  return v5;
}

- (SUUIReportAConcernReasonViewController)initWithConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUUIReportAConcernReasonViewController;
  v6 = [(SUUIReportAConcernReasonViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = SUUIReportAConcernReasonViewController;
  [(SUUIReportAConcernReasonViewController *)&v25 viewDidLoad];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"REPORT_A_CONCERN" value:&stru_286AECDE0 table:0];
  [(SUUIReportAConcernReasonViewController *)self setTitle:v4];

  v5 = objc_alloc(MEMORY[0x277D751E0]);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"BACK" value:&stru_286AECDE0 table:0];
  v8 = [v5 initWithTitle:v7 style:0 target:0 action:0];
  v9 = [(SUUIReportAConcernReasonViewController *)self navigationItem];
  [v9 setBackBarButtonItem:v8];

  v10 = objc_alloc(MEMORY[0x277D751E0]);
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"CANCEL" value:&stru_286AECDE0 table:0];
  v13 = [v10 initWithTitle:v12 style:0 target:self action:sel_cancelPressed_];
  v14 = [(SUUIReportAConcernReasonViewController *)self navigationItem];
  [v14 setLeftBarButtonItem:v13];

  v15 = objc_alloc(MEMORY[0x277D75B40]);
  v16 = [v15 initWithFrame:1 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v16 setDelegate:self];
  v17 = [[SUUIReportAConcernReasonDataSource alloc] initWithTableView:v16];
  v18 = [(SUUIReportAConcernReasonViewController *)self configuration];
  v19 = [v18 reasons];
  [(SUUIReportAConcernReasonDataSource *)v17 setReasons:v19];

  v20 = [(SUUIReportAConcernReasonViewController *)self configuration];
  v21 = [v20 selectReasonTitle];
  [(SUUIReportAConcernReasonDataSource *)v17 setSelectReasonTitle:v21];

  v22 = [(SUUIReportAConcernReasonViewController *)self configuration];
  v23 = [v22 selectReasonSubtitle];
  [(SUUIReportAConcernReasonDataSource *)v17 setSelectReasonSubtitle:v23];

  [v16 setDataSource:v17];
  [(SUUIReportAConcernReasonViewController *)self setDataSource:v17];
  v24 = [(SUUIReportAConcernReasonViewController *)self view];
  [v24 addSubview:v16];

  [(SUUIReportAConcernReasonViewController *)self setTableView:v16];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = SUUIReportAConcernReasonViewController;
  [(SUUIReportAConcernReasonViewController *)&v13 viewWillLayoutSubviews];
  v3 = [(SUUIReportAConcernReasonViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(SUUIReportAConcernReasonViewController *)self tableView];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v7 = [(SUUIReportAConcernReasonViewController *)self configuration];
  v8 = [v7 reasons];
  v9 = [v6 row];

  v17 = [v8 objectAtIndexedSubscript:v9];

  v10 = [(SUUIReportAConcernReasonViewController *)self configuration];
  v11 = [v10 copy];

  v12 = [[SUUIReportAConcernDetailsViewController alloc] initWithConfiguration:v11];
  v13 = objc_alloc_init(SUUIReportAConcernMetadata);
  [(SUUIReportAConcernMetadata *)v13 setSelectedReason:v17];
  -[SUUIReportAConcernMetadata setItemIdentifier:](v13, "setItemIdentifier:", [v11 itemIdentifier]);
  v14 = [v11 reportConcernURL];
  [(SUUIReportAConcernMetadata *)v13 setReportConcernURL:v14];

  [(SUUIReportAConcernDetailsViewController *)v12 setMetadata:v13];
  v15 = [(SUUIReportAConcernReasonViewController *)self completion];
  [(SUUIReportAConcernDetailsViewController *)v12 setCompletion:v15];

  v16 = [(SUUIReportAConcernReasonViewController *)self navigationController];
  [v16 pushViewController:v12 animated:1];
}

@end