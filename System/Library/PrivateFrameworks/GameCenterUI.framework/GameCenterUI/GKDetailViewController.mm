@interface GKDetailViewController
- (void)reportProblemAboutPlayer:(id)a3;
- (void)shareAchievement:(id)a3 sendingView:(id)a4;
- (void)shareScore:(id)a3 fromLeaderboard:(id)a4 sendingView:(id)a5;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation GKDetailViewController

- (void)reportProblemAboutPlayer:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D0C138] localPlayer];
  v6 = [v5 alertUserInStoreDemoModeEnabled];

  if ((v6 & 1) == 0)
  {
    v7 = [(GKDetailViewController *)self view];
    [v7 setUserInteractionEnabled:0];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__GKDetailViewController_RequestReport__reportProblemAboutPlayer___block_invoke;
    v9[3] = &unk_27966A788;
    v9[4] = self;
    v8 = [GKReportProblemRemoteUIController controllerForProblemPlayer:v4 completionHandler:v9];
  }
}

void __66__GKDetailViewController_RequestReport__reportProblemAboutPlayer___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) view];
  [v7 setUserInteractionEnabled:1];

  if (v6)
  {
    v8 = *(a1 + 32);
    v9 = GKGameCenterUIFrameworkBundle();
    v10 = GKGetLocalizedStringFromTableInBundle();
    v11 = GKGameCenterUIFrameworkBundle();
    v12 = GKGetLocalizedStringFromTableInBundle();
    v13 = [v8 _gkPresentAlertForError:v6 title:v10 defaultMessage:v12];
  }

  else
  {
    v14 = [[GKRemoteUINavigationController alloc] initWithRemoteUIController:v5];
    v15 = [MEMORY[0x277D75418] currentDevice];
    v16 = [v15 userInterfaceIdiom];

    if (v16 == 1 && (*MEMORY[0x277D0C258] != 1 || (*MEMORY[0x277D0C8F0] & 1) != 0))
    {
      [(GKRemoteUINavigationController *)v14 setModalPresentationStyle:2];
      v17 = [(GKRemoteUINavigationController *)v14 view];
      v18 = [v17 layer];
      [v18 setMasksToBounds:1];

      v19 = [MEMORY[0x277D0C8C8] sharedTheme];
      [v19 formSheetCornerRadius];
      v21 = v20;
      v22 = [(GKRemoteUINavigationController *)v14 view];
      v23 = [v22 layer];
      [v23 setCornerRadius:v21];
    }

    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __66__GKDetailViewController_RequestReport__reportProblemAboutPlayer___block_invoke_2;
    v27 = &unk_27966A760;
    v28 = *(a1 + 32);
    v29 = v14;
    v9 = v14;
    [v5 setCompletionHandler:&v24];
    [*(a1 + 32) presentViewController:v9 animated:1 completion:{0, v24, v25, v26, v27, v28}];
  }
}

uint64_t __66__GKDetailViewController_RequestReport__reportProblemAboutPlayer___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = GKGameCenterUIFrameworkBundle();
    v6 = GKGetLocalizedStringFromTableInBundle();
    v7 = GKGameCenterUIFrameworkBundle();
    v8 = GKGetLocalizedStringFromTableInBundle();
    v9 = GKGameCenterUIFrameworkBundle();
    v10 = GKGetLocalizedStringFromTableInBundle();
    v11 = [v4 _gkPresentAlertWithTitle:v6 message:v8 buttonTitle:v10];
  }

  v12 = *(a1 + 40);

  return [v12 dismissViewControllerAnimated:1 completion:0];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = GKDetailViewController;
  [(GKDashboardCollectionViewController *)&v2 viewDidLoad];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = GKDetailViewController;
  [(GKDashboardCollectionViewController *)&v3 viewWillAppear:a3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = GKDetailViewController;
  [(GKDetailViewController *)&v3 viewWillDisappear:a3];
}

- (void)shareAchievement:(id)a3 sendingView:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D0C1D8] shared];
  v9 = [v8 shouldAllowGameProgressSharing];

  if (v9)
  {
    v18[0] = v6;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v11 = [(GKDetailViewController *)self _gkPresentActivityViewControllerForActivityItems:v10 fromView:v7 withCompletionHandler:0];
  }

  else
  {
    v10 = GKGameCenterUIFrameworkBundle();
    v12 = GKGetLocalizedStringFromTableInBundle();
    v13 = GKGameCenterUIFrameworkBundle();
    v14 = GKGetLocalizedStringFromTableInBundle();
    v15 = GKGameCenterUIFrameworkBundle();
    v16 = GKGetLocalizedStringFromTableInBundle();
    v17 = [(GKDetailViewController *)self _gkPresentAlertWithTitle:v12 message:v14 buttonTitle:v16 dismissHandler:0];
  }
}

- (void)shareScore:(id)a3 fromLeaderboard:(id)a4 sendingView:(id)a5
{
  v19[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [MEMORY[0x277D0C1D8] shared];
  v10 = [v9 shouldAllowGameProgressSharing];

  if (v10)
  {
    v19[0] = v7;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v12 = [(GKDetailViewController *)self _gkPresentActivityViewControllerForActivityItems:v11 fromView:v8 withCompletionHandler:0];
  }

  else
  {
    v11 = GKGameCenterUIFrameworkBundle();
    v13 = GKGetLocalizedStringFromTableInBundle();
    v14 = GKGameCenterUIFrameworkBundle();
    v15 = GKGetLocalizedStringFromTableInBundle();
    v16 = GKGameCenterUIFrameworkBundle();
    v17 = GKGetLocalizedStringFromTableInBundle();
    v18 = [(GKDetailViewController *)self _gkPresentAlertWithTitle:v13 message:v15 buttonTitle:v17 dismissHandler:0];
  }
}

@end