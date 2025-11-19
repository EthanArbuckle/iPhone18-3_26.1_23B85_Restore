@interface DKCloudUploadViewController
- (DKCloudUploadViewController)init;
- (id)_timeRemainingString:(double)a3;
- (void)_cancelTapped:(id)a3;
- (void)_showUploadFailureAlertForResults:(id)a3;
- (void)_skipTapped:(id)a3;
- (void)setProgress:(double)a3;
- (void)uploadDidComplete:(id)a3;
- (void)uploadProgress:(float)a3 withTimeRemaining:(double)a4;
- (void)viewDidLoad;
@end

@implementation DKCloudUploadViewController

- (DKCloudUploadViewController)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"CLOUD_UPLOAD_TITLE" value:&stru_285BC2A70 table:@"Localizable"];
  v9.receiver = self;
  v9.super_class = DKCloudUploadViewController;
  v5 = [(OBSetupAssistantProgressController *)&v9 initWithTitle:v4 detailText:0 symbolName:@"icloud.and.arrow.up"];

  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCA958]);
    durationFormatter = v5->_durationFormatter;
    v5->_durationFormatter = v6;

    [(NSDateComponentsFormatter *)v5->_durationFormatter setUnitsStyle:3];
    [(NSDateComponentsFormatter *)v5->_durationFormatter setMaximumUnitCount:1];
    [(NSDateComponentsFormatter *)v5->_durationFormatter setAllowedUnits:240];
    [(NSDateComponentsFormatter *)v5->_durationFormatter setIncludesApproximationPhrase:1];
  }

  return v5;
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = DKCloudUploadViewController;
  [(OBSetupAssistantProgressController *)&v17 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CANCEL" value:&stru_285BC2A70 table:@"Localizable"];
  v6 = [v3 initWithTitle:v5 style:0 target:self action:sel__cancelTapped_];
  v7 = [(OBBaseWelcomeController *)self navigationItem];
  [v7 setLeftBarButtonItem:v6];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"TIME_REMAINING" value:&stru_285BC2A70 table:@"Localizable"];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"ESTIMATING_TIME_REMAINING" value:&stru_285BC2A70 table:@"Localizable"];
  v12 = [v9 stringByAppendingString:v11];
  [(OBSetupAssistantProgressController *)self setProgressText:v12];

  [(DKCloudUploadViewController *)self setProgress:0.0];
  v13 = [MEMORY[0x277D37650] linkButton];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"SKIP_BACKUP" value:&stru_285BC2A70 table:@"Localizable"];
  [v13 setTitle:v15 forState:0];

  [v13 addTarget:self action:sel__skipTapped_ forControlEvents:64];
  v16 = [(DKCloudUploadViewController *)self buttonTray];
  [v16 addButton:v13];
}

- (void)setProgress:(double)a3
{
  if (a3 < 0.02)
  {
    a3 = 0.02;
  }

  v3.receiver = self;
  v3.super_class = DKCloudUploadViewController;
  [(OBSetupAssistantProgressController *)&v3 setProgress:a3];
}

- (void)uploadProgress:(float)a3 withTimeRemaining:(double)a4
{
  [(DKCloudUploadViewController *)self setProgress:a3];
  v6 = [(DKCloudUploadViewController *)self _timeRemainingString:a4];
  [(OBSetupAssistantProgressController *)self setProgressText:v6];
}

- (void)uploadDidComplete:(id)a3
{
  v6 = a3;
  if ([v6 success])
  {
    [DKCloudUploadViewController uploadDidComplete:];
  }

  v4 = [(DKCloudUploadViewController *)self view];
  v5 = [v4 window];

  if (v5)
  {
    [(DKCloudUploadViewController *)self _showUploadFailureAlertForResults:v6];
  }

  else
  {
    [(DKCloudUploadViewController *)self setUploadResults:v6];
    [(DKCloudUploadViewController *)self setShowUploadFailureAlert:1];
  }
}

- (id)_timeRemainingString:(double)a3
{
  if (a3 <= 604800.0)
  {
    if (a3 > 0.0)
    {
      v6 = [(NSDateComponentsFormatter *)self->_durationFormatter stringFromTimeInterval:?];
      goto LABEL_7;
    }

    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = v3;
    v5 = @"LESS_THAN_ONE_MINUTE_REMAINING";
  }

  else
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = v3;
    v5 = @"ESTIMATING_TIME_REMAINING";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_285BC2A70 table:@"Localizable"];

LABEL_7:
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"TIME_REMAINING" value:&stru_285BC2A70 table:@"Localizable"];
  v9 = [v8 stringByAppendingString:v6];

  return v9;
}

- (void)_showUploadFailureAlertForResults:(id)a3
{
  v86 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    [DKCloudUploadViewController _showUploadFailureAlertForResults:];
  }

  v5 = v4;
  v6 = [v4 syncResult];
  v7 = [v6 success];

  v8 = 0x277CCA000uLL;
  v73 = v5;
  if (v7)
  {
    v72 = self;
    v9 = [v5 backupResults];
    v10 = [v9 mutableCopy];

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v11 = [v10 reverseObjectEnumerator];
    v12 = [v11 countByEnumeratingWithState:&v80 objects:v85 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v81;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v81 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v80 + 1) + 8 * i);
          if ([v16 success])
          {
            [v10 removeObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v80 objects:v85 count:16];
      }

      while (v13);
    }

    v17 = [v10 count];
    v18 = [v10 firstObject];
    v19 = v18;
    v71 = v10;
    if (v17 == 1)
    {
      v20 = [v18 isPrimaryAccount];
      v21 = [v20 BOOLValue];

      v22 = [v19 error];
      v23 = [v22 dkui_isBackupDisabled];

      self = v72;
      if (v21)
      {
        v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v25 = v24;
        if (v23)
        {
          v26 = [v24 localizedStringForKey:@"BACKUP_DISABLED_ALERT_TITLE" value:&stru_285BC2A70 table:@"Localizable"];

          v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v28 = [v27 localizedStringForKey:@"BACKUP_DISABLED_ALERT_MESSAGE" value:&stru_285BC2A70 table:@"Localizable"];
        }

        else
        {
          v26 = [v24 localizedStringForKey:@"CLOUD_UPLOAD_GENERIC_FAILURE_ALERT_TITLE" value:&stru_285BC2A70 table:@"Localizable"];

          v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v57 = SFLocalizableWAPIStringKeyForKey();
          v28 = [v27 localizedStringForKey:v57 value:&stru_285BC2A70 table:@"Localizable"];
        }

        goto LABEL_36;
      }

      v45 = MEMORY[0x277CCACA8];
      v46 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v47 = v46;
      if (v23)
      {
        v48 = [v46 localizedStringForKey:@"BACKUP_DISABLED_ALERT_SINGLE_ACCOUNT_TITLE" value:&stru_285BC2A70 table:@"Localizable"];
        v49 = [v19 username];
        v26 = [v45 localizedStringWithFormat:v48, v49];

        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v28 = [v27 localizedStringForKey:@"BACKUP_DISABLED_ALERT_SINGLE_ACCOUNT_MESSAGE" value:&stru_285BC2A70 table:@"Localizable"];
      }

      else
      {
        v58 = [v46 localizedStringForKey:@"CLOUD_UPLOAD_GENERIC_FAILURE_ALERT_SINGLE_ACCOUNT_TITLE" value:&stru_285BC2A70 table:@"Localizable"];
        v59 = [v19 username];
        v26 = [v45 localizedStringWithFormat:v58, v59];

        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v60 = SFLocalizableWAPIStringKeyForKey();
        v28 = [v27 localizedStringForKey:v60 value:&stru_285BC2A70 table:@"Localizable"];
      }
    }

    else
    {
      v32 = [v18 username];

      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v33 = v10;
      v34 = [v33 countByEnumeratingWithState:&v76 objects:v84 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v77;
        v37 = 1;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v77 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v39 = *(*(&v76 + 1) + 8 * j);
            v40 = [v39 error];
            v41 = [v40 dkui_isBackupDisabled];

            v42 = [v39 isPrimaryAccount];
            v43 = [v42 BOOLValue];

            if (v43)
            {
              v44 = [v39 username];

              v32 = v44;
            }

            v37 &= v41;
          }

          v35 = [v33 countByEnumeratingWithState:&v76 objects:v84 count:16];
        }

        while (v35);

        if (!v37)
        {
          v53 = MEMORY[0x277CCACA8];
          self = v72;
          v54 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v55 = [v54 localizedStringForKey:@"CLOUD_UPLOAD_GENERIC_FAILURE_ALERT_MULTIPLE_ACCOUNT_TITLE" value:&stru_285BC2A70 table:@"Localizable"];
          v26 = [v53 localizedStringWithFormat:v55, v32, objc_msgSend(v33, "count") - 1];

          v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v56 = SFLocalizableWAPIStringKeyForKey();
          v10 = v71;
          v28 = [v27 localizedStringForKey:v56 value:&stru_285BC2A70 table:@"Localizable"];

          v19 = v32;
LABEL_36:

          goto LABEL_37;
        }

        self = v72;
        v8 = 0x277CCA000;
      }

      else
      {

        self = v72;
      }

      v50 = MEMORY[0x277CCACA8];
      v51 = [*(v8 + 2264) bundleForClass:objc_opt_class()];
      v52 = [v51 localizedStringForKey:@"BACKUP_DISABLED_ALERT_MULTIPLE_ACCOUNTS_TITLE" value:&stru_285BC2A70 table:@"Localizable"];
      v26 = [v50 localizedStringWithFormat:v52, v32, objc_msgSend(v33, "count") - 1];

      v27 = [*(v8 + 2264) bundleForClass:objc_opt_class()];
      v28 = [v27 localizedStringForKey:@"BACKUP_DISABLED_ALERT_MULTIPLE_ACCOUNTS_MESSAGE" value:&stru_285BC2A70 table:@"Localizable"];
      v19 = v32;
    }

    v10 = v71;
    goto LABEL_36;
  }

  v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v26 = [v29 localizedStringForKey:@"CLOUD_UPLOAD_GENERIC_FAILURE_ALERT_TITLE" value:&stru_285BC2A70 table:@"Localizable"];

  v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v31 = SFLocalizableWAPIStringKeyForKey();
  v28 = [v30 localizedStringForKey:v31 value:&stru_285BC2A70 table:@"Localizable"];

LABEL_37:
  v61 = [MEMORY[0x277D75110] alertControllerWithTitle:v26 message:v28 preferredStyle:1];
  v62 = MEMORY[0x277D750F8];
  v63 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v64 = [v63 localizedStringForKey:@"DONT_ERASE" value:&stru_285BC2A70 table:@"Localizable"];
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __65__DKCloudUploadViewController__showUploadFailureAlertForResults___block_invoke;
  v75[3] = &unk_278F7DBE8;
  v75[4] = self;
  v65 = [v62 actionWithTitle:v64 style:1 handler:v75];
  [v61 addAction:v65];

  v66 = MEMORY[0x277D750F8];
  v67 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v68 = [v67 localizedStringForKey:@"ERASE_ANYWAY" value:&stru_285BC2A70 table:@"Localizable"];
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __65__DKCloudUploadViewController__showUploadFailureAlertForResults___block_invoke_2;
  v74[3] = &unk_278F7DBE8;
  v74[4] = self;
  v69 = [v66 actionWithTitle:v68 style:2 handler:v74];
  [v61 addAction:v69];

  [(DKCloudUploadViewController *)self presentViewController:v61 animated:1 completion:0];
  v70 = *MEMORY[0x277D85DE8];
}

void __65__DKCloudUploadViewController__showUploadFailureAlertForResults___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cancelBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) cancelBlock];
    v3[2]();
  }
}

void __65__DKCloudUploadViewController__showUploadFailureAlertForResults___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) skipBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) skipBlock];
    v3[2]();
  }
}

- (void)_skipTapped:(id)a3
{
  v4 = [(DKCloudUploadViewController *)self skipBlock];

  if (v4)
  {
    v5 = [(DKCloudUploadViewController *)self skipBlock];
    v5[2]();
  }
}

- (void)_cancelTapped:(id)a3
{
  v4 = [(DKCloudUploadViewController *)self cancelBlock];

  if (v4)
  {
    v5 = [(DKCloudUploadViewController *)self cancelBlock];
    v5[2]();
  }
}

@end