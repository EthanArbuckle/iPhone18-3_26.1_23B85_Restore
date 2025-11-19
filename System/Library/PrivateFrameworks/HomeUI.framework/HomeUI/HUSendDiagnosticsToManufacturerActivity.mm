@interface HUSendDiagnosticsToManufacturerActivity
- (HUSendDiagnosticsToManufacturerActivity)initWithDiagnosticItem:(id)a3;
- (id)activityTitle;
- (id)activityViewController;
- (void)prepareWithActivityItems:(id)a3;
@end

@implementation HUSendDiagnosticsToManufacturerActivity

- (HUSendDiagnosticsToManufacturerActivity)initWithDiagnosticItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HUSendDiagnosticsToManufacturerActivity;
  v6 = [(UIActivity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_diagnosticItem, a3);
  }

  return v7;
}

- (id)activityTitle
{
  v2 = [(HUSendDiagnosticsToManufacturerActivity *)self diagnosticItem];
  v3 = [v2 manufacturer];
  v10 = HULocalizedStringWithFormat(@"HUSendDiagnosticsToManufacturerActivityTitle", @"%@", v4, v5, v6, v7, v8, v9, v3);

  return v10;
}

- (void)prepareWithActivityItems:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Preparing with activity items :%@", &v5, 0xCu);
  }
}

- (id)activityViewController
{
  v3 = [HUAccessoryDiagnosticsConsentViewController alloc];
  v4 = [(HUSendDiagnosticsToManufacturerActivity *)self diagnosticItem];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__HUSendDiagnosticsToManufacturerActivity_activityViewController__block_invoke;
  v10[3] = &unk_277DB8C28;
  v10[4] = self;
  v5 = [(HUAccessoryDiagnosticsConsentViewController *)v3 initWithItem:v4 completionHandler:v10];

  v6 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v5];
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Returning activityViewController for HUSendDiagnosticsToManufacturerActivity", v9, 2u);
  }

  return v6;
}

uint64_t __65__HUSendDiagnosticsToManufacturerActivity_activityViewController__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [MEMORY[0x277D142C8] sharedManager];
    v5 = [*(a1 + 32) diagnosticItem];
    [v4 uploadDiagnosticLogUsingItem:v5];
  }

  v6 = *(a1 + 32);

  return [v6 activityDidFinish:a2];
}

@end