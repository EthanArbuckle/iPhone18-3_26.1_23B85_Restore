@interface WDMedicalRecordSourceDataViewController
- (WDMedicalRecordSourceDataViewController)initWithProfile:(id)a3 medicalRecord:(id)a4;
- (void)_fetchAndDisplaySourceStringIfNecessary;
- (void)displaySourceString:(id)a3;
- (void)loadView;
- (void)share:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation WDMedicalRecordSourceDataViewController

- (WDMedicalRecordSourceDataViewController)initWithProfile:(id)a3 medicalRecord:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = WDMedicalRecordSourceDataViewController;
  v9 = [(WDMedicalRecordSourceDataViewController *)&v15 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_profile, a3);
    v11 = [v8 copy];
    medicalRecord = v10->_medicalRecord;
    v10->_medicalRecord = v11;

    v13 = HRLocalizedString(@"ORIGINAL_SOURCE_DATA_TITLE");
    [(WDMedicalRecordSourceDataViewController *)v10 setTitle:v13];
  }

  return v10;
}

- (void)loadView
{
  v16.receiver = self;
  v16.super_class = WDMedicalRecordSourceDataViewController;
  [(WDMedicalRecordSourceDataViewController *)&v16 loadView];
  v3 = objc_alloc(MEMORY[0x1E69DD168]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
  sourceView = self->_sourceView;
  self->_sourceView = v4;

  v6 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UITextView *)self->_sourceView setTextColor:v6];

  [(UITextView *)self->_sourceView setTextAlignment:0];
  [(UITextView *)self->_sourceView setEditable:0];
  v7 = [(WDMedicalRecordSourceDataViewController *)self view];
  [v7 addSubview:self->_sourceView];

  v8 = self->_sourceView;
  v9 = [(WDMedicalRecordSourceDataViewController *)self view];
  [(UITextView *)v8 hk_alignConstraintsWithView:v9];

  if ([MEMORY[0x1E696C608] isAppleInternalInstall])
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 target:self action:sel_share_];
    [(WDMedicalRecordSourceDataViewController *)self setShareItem:v11];

    v12 = [(WDMedicalRecordSourceDataViewController *)self shareItem];
    [v10 addObject:v12];

    v13 = [(WDMedicalRecordSourceDataViewController *)self shareItem];
    [v13 setEnabled:0];

    v14 = [MEMORY[0x1E69DC708] makeTapToRadarItemWithTarget:self action:sel__tapToRadar_];
    if (v14)
    {
      [v10 addObject:v14];
    }

    v15 = [(WDMedicalRecordSourceDataViewController *)self navigationItem];
    [v15 setRightBarButtonItems:v10];
  }
}

- (void)share:(id)a3
{
  v28[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v5 setDateFormat:@"yyyyMMdd'T'HHmmss"];
  v6 = MEMORY[0x1E696AEC0];
  v7 = [MEMORY[0x1E695DF00] date];
  v8 = [v5 stringFromDate:v7];
  v9 = [(WDMedicalRecordSourceDataViewController *)self medicalRecord];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v6 stringWithFormat:@"%@ %@.json", v8, v11];

  v13 = MEMORY[0x1E695DFF8];
  v14 = NSTemporaryDirectory();
  v15 = [v14 stringByAppendingPathComponent:v12];
  v16 = [v13 fileURLWithPath:v15];

  v17 = [(WDMedicalRecordSourceDataViewController *)self sourceView];
  v18 = [v17 text];
  v19 = [v18 dataUsingEncoding:4];

  v27 = 0;
  LOBYTE(v18) = [v19 writeToURL:v16 options:0 error:&v27];
  v20 = v27;
  if (v18)
  {
    v21 = objc_alloc(MEMORY[0x1E69CD9F8]);
    v28[0] = v16;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    v23 = [v21 initWithActivityItems:v22 applicationActivities:0];

    v24 = [v23 popoverPresentationController];
    [v24 setSourceItem:v4];

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __49__WDMedicalRecordSourceDataViewController_share___block_invoke;
    v25[3] = &unk_1E83DD418;
    v26 = v16;
    [v23 setCompletionWithItemsHandler:v25];
    [(WDMedicalRecordSourceDataViewController *)self presentViewController:v23 animated:1 completion:0];
  }

  else
  {
    _HKInitializeLogging();
    v23 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [(WDMedicalRecordSourceDataViewController *)v20 share:v23];
    }
  }
}

void __49__WDMedicalRecordSourceDataViewController_share___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = *(a1 + 32);
  v7 = 0;
  v4 = [v2 removeItemAtURL:v3 error:&v7];
  v5 = v7;

  if ((v4 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __49__WDMedicalRecordSourceDataViewController_share___block_invoke_cold_1(v5, v6);
    }
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = WDMedicalRecordSourceDataViewController;
  [(WDMedicalRecordSourceDataViewController *)&v4 viewWillAppear:a3];
  [(WDMedicalRecordSourceDataViewController *)self _fetchAndDisplaySourceStringIfNecessary];
}

- (void)_fetchAndDisplaySourceStringIfNecessary
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (![(WDMedicalRecordSourceDataViewController *)self hasFetchedSourceString])
  {
    [(WDMedicalRecordSourceDataViewController *)self setHasFetchedSourceString:1];
    objc_initWeak(&location, self);
    v3 = [(WDMedicalRecordSourceDataViewController *)self profile];
    v4 = [v3 healthRecordsStore];
    v5 = [(WDMedicalRecordSourceDataViewController *)self medicalRecord];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __82__WDMedicalRecordSourceDataViewController__fetchAndDisplaySourceStringIfNecessary__block_invoke;
    v6[3] = &unk_1E83DD440;
    objc_copyWeak(&v7, &location);
    v6[4] = self;
    [v4 fetchRawSourceStringForHealthRecord:v5 completion:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __82__WDMedicalRecordSourceDataViewController__fetchAndDisplaySourceStringIfNecessary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (v5)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__WDMedicalRecordSourceDataViewController__fetchAndDisplaySourceStringIfNecessary__block_invoke_322;
    block[3] = &unk_1E83DC9D0;
    block[4] = WeakRetained;
    v9 = v5;
    v10 = *(a1 + 32);
    v13 = v9;
    v14 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    _HKInitializeLogging();
    v11 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __82__WDMedicalRecordSourceDataViewController__fetchAndDisplaySourceStringIfNecessary__block_invoke_cold_1(v8, v6, v11);
    }
  }
}

void __82__WDMedicalRecordSourceDataViewController__fetchAndDisplaySourceStringIfNecessary__block_invoke_322(uint64_t a1)
{
  [*(a1 + 32) displaySourceString:*(a1 + 40)];
  if ([MEMORY[0x1E696C608] isAppleInternalInstall])
  {
    v2 = [*(a1 + 48) shareItem];
    [v2 setEnabled:1];
  }
}

- (void)displaySourceString:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = MEMORY[0x1E69DB878];
  v6 = *MEMORY[0x1E69DDD08];
  v7 = [(WDMedicalRecordSourceDataViewController *)self traitCollection];
  v8 = [v5 preferredFontForTextStyle:v6 compatibleWithTraitCollection:v7];
  v9 = [(WDMedicalRecordSourceDataViewController *)self sourceView];
  [v9 setFont:v8];

  v10 = [(WDMedicalRecordSourceDataViewController *)self sourceView];
  [v10 setText:v4];
}

- (void)share:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1D101F000, a2, OS_LOG_TYPE_ERROR, "Failed to write resource for sharing with error %{public}@", &v2, 0xCu);
}

void __49__WDMedicalRecordSourceDataViewController_share___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1D101F000, a2, OS_LOG_TYPE_ERROR, "Failed to clean up resource with error %{public}@", &v2, 0xCu);
}

void __82__WDMedicalRecordSourceDataViewController__fetchAndDisplaySourceStringIfNecessary__block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 medicalRecord];
  v6 = HKSensitiveLogItem();
  v7 = 138412546;
  v8 = v6;
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&dword_1D101F000, a3, OS_LOG_TYPE_ERROR, "Failed to fetch source string for medical record %@: %{public}@", &v7, 0x16u);
}

@end