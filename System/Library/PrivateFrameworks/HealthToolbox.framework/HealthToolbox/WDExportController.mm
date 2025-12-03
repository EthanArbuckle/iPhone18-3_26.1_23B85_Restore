@interface WDExportController
- (WDExportController)initWithProfile:(id)profile;
- (void)_beginExport;
- (void)_cleanUpExport;
- (void)_shareExportFileAndCleanUp;
- (void)verifyExportWithPresentingViewController:(id)controller shareSheetSourceView:(id)view;
@end

@implementation WDExportController

- (WDExportController)initWithProfile:(id)profile
{
  profileCopy = profile;
  v9.receiver = self;
  v9.super_class = WDExportController;
  v5 = [(WDExportController *)&v9 init];
  if (v5)
  {
    v6 = [[WDExportManager alloc] initWithProfile:profileCopy];
    exportManager = v5->_exportManager;
    v5->_exportManager = v6;
  }

  return v5;
}

- (void)verifyExportWithPresentingViewController:(id)controller shareSheetSourceView:(id)view
{
  v6 = MEMORY[0x277D75110];
  obj = view;
  controllerCopy = controller;
  v8 = WDBundle();
  v9 = [v8 localizedStringForKey:@"EXPORT_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v10 = WDBundle();
  v11 = [v10 localizedStringForKey:@"EXPORT_PROMPT" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v12 = [v6 alertControllerWithTitle:v9 message:v11 preferredStyle:1];

  v13 = MEMORY[0x277D750F8];
  v14 = WDBundle();
  v15 = [v14 localizedStringForKey:@"CANCEL" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __84__WDExportController_verifyExportWithPresentingViewController_shareSheetSourceView___block_invoke;
  v24[3] = &unk_2796E7088;
  v24[4] = self;
  v16 = [v13 actionWithTitle:v15 style:1 handler:v24];

  [v12 addAction:v16];
  v17 = MEMORY[0x277D750F8];
  v18 = WDBundle();
  v19 = [v18 localizedStringForKey:@"EXPORT_YES" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __84__WDExportController_verifyExportWithPresentingViewController_shareSheetSourceView___block_invoke_2;
  v23[3] = &unk_2796E7088;
  v23[4] = self;
  v20 = [v17 actionWithTitle:v19 style:0 handler:v23];

  [v12 addAction:v20];
  objc_storeWeak(&self->_exportSourceView, obj);

  v21 = objc_storeWeak(&self->_exportPresentingViewController, controllerCopy);
  [controllerCopy presentViewController:v12 animated:1 completion:0];
}

id __84__WDExportController_verifyExportWithPresentingViewController_shareSheetSourceView___block_invoke(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 48), 0);
  v2 = (*(a1 + 32) + 56);

  return objc_storeWeak(v2, 0);
}

- (void)_beginExport
{
  self->_isExporting = 1;
  v3 = MEMORY[0x277D75110];
  v4 = WDBundle();
  v5 = [v4 localizedStringForKey:@"EXPORT_PREPARING_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v6 = WDBundle();
  v7 = [v6 localizedStringForKey:@"EXPORT_PREPARING_MESSAGE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v8 = [v3 alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  v9 = MEMORY[0x277D750F8];
  v10 = WDBundle();
  v11 = [v10 localizedStringForKey:@"CANCEL" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __34__WDExportController__beginExport__block_invoke;
  v21[3] = &unk_2796E7088;
  v21[4] = self;
  v12 = [v9 actionWithTitle:v11 style:1 handler:v21];

  [v8 addAction:v12];
  WeakRetained = objc_loadWeakRetained(&self->_exportPresentingViewController);
  [WeakRetained presentViewController:v8 animated:1 completion:0];

  objc_initWeak(&location, self);
  applicationProvider = [(WDExportController *)self applicationProvider];
  application = [applicationProvider application];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __34__WDExportController__beginExport__block_invoke_2;
  v18[3] = &unk_2796E6DE0;
  objc_copyWeak(&v19, &location);
  v18[4] = self;
  self->_backgroundTask = [application beginBackgroundTaskWithName:@"Export" expirationHandler:v18];

  exportManager = self->_exportManager;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __34__WDExportController__beginExport__block_invoke_3;
  v17[3] = &unk_2796E70B0;
  v17[4] = self;
  [(WDExportManager *)exportManager createExportFileWithCompletion:v17];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

uint64_t __34__WDExportController__beginExport__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[3];
  if (v5 == 1)
  {
    v12 = v3;
    v4 = [v4 _shareExportFileAndCleanUp];
  }

  else
  {
    if (v5)
    {
      goto LABEL_6;
    }

    v4[3] = 2;
    v12 = v3;
    [*(*(a1 + 32) + 8) cancelCurrentExport];
    v6 = MEMORY[0x277D75110];
    v7 = WDBundle();
    v8 = [v7 localizedStringForKey:@"EXPORT_CANCELING_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
    v9 = [v6 alertControllerWithTitle:v8 message:0 preferredStyle:1];

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
    [WeakRetained presentViewController:v9 animated:1 completion:0];
  }

  v3 = v12;
LABEL_6:

  return MEMORY[0x2821F96F8](v4, v3);
}

void __34__WDExportController__beginExport__block_invoke_2(uint64_t a1)
{
  NSLog(&cfstr_BackgroundHand.isa);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained applicationProvider];
  v3 = [v2 application];
  [v3 endBackgroundTask:*(*(a1 + 32) + 16)];

  WeakRetained[2] = *MEMORY[0x277D767B0];
}

void __34__WDExportController__beginExport__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__WDExportController__beginExport__block_invoke_4;
  v5[3] = &unk_2796E6BD8;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __34__WDExportController__beginExport__block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[3];
  if (v3 == 2)
  {
    [v2 _cleanUpExport];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
    v7 = WeakRetained;
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __34__WDExportController__beginExport__block_invoke_6;
    v12 = &unk_2796E6D18;
    v13 = *(a1 + 32);
    v8 = &v9;
    goto LABEL_6;
  }

  if (!v3)
  {
    v2[3] = 1;
    objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
    v4 = objc_loadWeakRetained((*(a1 + 32) + 56));
    v5 = [v4 presentedViewController];

    if (v5)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
      v7 = WeakRetained;
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __34__WDExportController__beginExport__block_invoke_5;
      v17 = &unk_2796E6D18;
      v18 = *(a1 + 32);
      v8 = &v14;
LABEL_6:
      [WeakRetained dismissViewControllerAnimated:1 completion:{v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18}];
    }
  }
}

- (void)_shareExportFileAndCleanUp
{
  v32[1] = *MEMORY[0x277D85DE8];
  if (self->_exportFileURL)
  {
    v3 = objc_alloc_init(WDExportSource);
    [(WDExportSource *)v3 setUrl:self->_exportFileURL];
    v4 = WDBundle();
    v5 = [v4 localizedStringForKey:@"EXPORT_SUBJECT" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
    [(WDExportSource *)v3 setSubject:v5];

    v6 = objc_alloc(MEMORY[0x277D546D8]);
    v32[0] = v3;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    v8 = [v6 initWithActivityItems:v7 applicationActivities:0];

    popoverPresentationController = [v8 popoverPresentationController];
    WeakRetained = objc_loadWeakRetained(&self->_exportSourceView);
    [popoverPresentationController setSourceView:WeakRetained];

    v11 = *MEMORY[0x277D54748];
    v31[0] = @"com.apple.Health.ShareExtension";
    v31[1] = v11;
    v12 = *MEMORY[0x277D54770];
    v31[2] = *MEMORY[0x277D54760];
    v31[3] = v12;
    v13 = *MEMORY[0x277D54718];
    v31[4] = *MEMORY[0x277D54778];
    v31[5] = v13;
    v14 = *MEMORY[0x277D54708];
    v31[6] = *MEMORY[0x277D54780];
    v31[7] = v14;
    v15 = *MEMORY[0x277D54768];
    v31[8] = *MEMORY[0x277D54750];
    v31[9] = v15;
    v31[10] = *MEMORY[0x277D54758];
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:11];
    [v8 setExcludedActivityTypes:v16];

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __48__WDExportController__shareExportFileAndCleanUp__block_invoke;
    v30[3] = &unk_2796E70D8;
    v30[4] = self;
    [v8 setCompletionWithItemsHandler:v30];
    v17 = objc_loadWeakRetained(&self->_exportPresentingViewController);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __48__WDExportController__shareExportFileAndCleanUp__block_invoke_2;
    v29[3] = &unk_2796E6D18;
    v29[4] = self;
    [v17 presentViewController:v8 animated:1 completion:v29];
  }

  else
  {
    v18 = MEMORY[0x277D75110];
    v19 = WDBundle();
    v20 = [v19 localizedStringForKey:@"EXPORT_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
    v21 = WDBundle();
    v22 = [v21 localizedStringForKey:@"EXPORT_NO_DATA" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
    v3 = [v18 alertControllerWithTitle:v20 message:v22 preferredStyle:1];

    v23 = MEMORY[0x277D750F8];
    v24 = WDBundle();
    v25 = [v24 localizedStringForKey:@"OK" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
    v8 = [v23 actionWithTitle:v25 style:1 handler:0];

    [(WDExportSource *)v3 addAction:v8];
    v26 = objc_loadWeakRetained(&self->_exportPresentingViewController);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __48__WDExportController__shareExportFileAndCleanUp__block_invoke_3;
    v28[3] = &unk_2796E6D18;
    v28[4] = self;
    [v26 presentViewController:v3 animated:1 completion:v28];

    [(WDExportController *)self _cleanUpExport];
  }

  v27 = *MEMORY[0x277D85DE8];
}

id __48__WDExportController__shareExportFileAndCleanUp__block_invoke_2(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 48), 0);
  v2 = (*(a1 + 32) + 56);

  return objc_storeWeak(v2, 0);
}

- (void)_cleanUpExport
{
  self->_isExporting = 0;
  exportFileURL = self->_exportFileURL;
  self->_exportResult = 0;
  self->_exportFileURL = 0;

  applicationProvider = [(WDExportController *)self applicationProvider];
  application = [applicationProvider application];
  [application endBackgroundTask:self->_backgroundTask];

  self->_backgroundTask = *MEMORY[0x277D767B0];
  exportManager = self->_exportManager;

  [(WDExportManager *)exportManager cleanupExportFilesWithError:0];
}

@end