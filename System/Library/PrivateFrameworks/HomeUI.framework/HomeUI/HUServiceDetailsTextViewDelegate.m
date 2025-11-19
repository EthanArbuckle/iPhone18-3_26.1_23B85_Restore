@interface HUServiceDetailsTextViewDelegate
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (HUServiceDetailsItemManager)itemManager;
- (UIViewController)viewController;
- (id)privacyIdentifierForSectionIdentifier:(id)a3;
- (id)unifiedIdentifiersForSectionIdentifier:(id)a3;
- (void)dismissTextViewController;
- (void)displayPrivacyInformationWithIdentifier:(id)a3;
- (void)displayUnifiedPrivacyInformationWithIdentifiers:(id)a3;
@end

@implementation HUServiceDetailsTextViewDelegate

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v71 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v68 = self;
    v69 = 2112;
    v70 = v10;
    _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", buf, 0x16u);
  }

  v12 = [objc_alloc(MEMORY[0x277D14C80]) initWithURL:v10];
  if ([v12 destination] == 17)
  {
    v13 = [(HUServiceDetailsTextViewDelegate *)self itemManager];
    v14 = [v13 sourceItem];
    v15 = [v14 latestResults];
    v16 = [v15 objectForKey:*MEMORY[0x277D13BD0]];

    v17 = [MEMORY[0x277D14B80] sharedManager];
    v18 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v10 resolvingAgainstBaseURL:0];
    v19 = [v18 queryItems];
    v20 = [v19 na_firstObjectPassingTest:&__block_literal_global_136];

    v21 = [v20 value];

    if (v21)
    {
      v63 = v9;
      v22 = [v20 value];
      v23 = NSStringToHMSymptomType();

      v24 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:v23];
      if (v16)
      {
        v25 = [(HUServiceDetailsTextViewDelegate *)self viewController];
        [v17 fixSymptom:v24 forFixableObject:v16 presentingViewController:v25];
      }

      else
      {
        v62 = v12;
        v31 = [(HUServiceDetailsTextViewDelegate *)self itemManager];
        v32 = [v31 sourceItem];
        v33 = [v32 accessories];
        v34 = [v33 count];

        if (v34 != 1)
        {
          NSLog(&cfstr_AttemptingToFi.isa);
        }

        v35 = [(HUServiceDetailsTextViewDelegate *)self itemManager];
        v36 = [v35 sourceItem];
        if ([v36 conformsToProtocol:&unk_28251B0C8])
        {
          v37 = v36;
        }

        else
        {
          v37 = 0;
        }

        v38 = v37;

        v25 = [v38 accessories];

        v39 = [v25 anyObject];
        v40 = [(HUServiceDetailsTextViewDelegate *)self viewController];
        [v17 fixSymptom:v24 forFixableObject:v39 presentingViewController:v40];

        v16 = 0;
        v12 = v62;
      }

      v9 = v63;
    }

    else
    {
      v24 = HFLogForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_20CEB6000, v24, OS_LOG_TYPE_ERROR, "Unable to initiate fix for symptom. Couldn't find a symptom type.", buf, 2u);
      }
    }

    v26 = 0;
    goto LABEL_37;
  }

  if (!a6)
  {
    v27 = v12;
    v28 = [MEMORY[0x277CBEBC0] hf_locationDeviceSettingsURL];
    v29 = [v10 isEqual:v28];

    if (v29)
    {
      v16 = [MEMORY[0x277D148E8] sharedInstance];
      v30 = [v16 openURL:v10];
      v26 = 1;
    }

    else
    {
      if ([v10 hf_isHomeKnowledgeBasedArticleURL])
      {
        v26 = 1;
        v12 = v27;
        goto LABEL_38;
      }

      v41 = [MEMORY[0x277CBEBC0] hf_cameraRecordingURL];
      v42 = [v10 isEqual:v41];

      if (v42)
      {
        v43 = [(HUServiceDetailsTextViewDelegate *)self viewController];
        v44 = [v43 navigationController];
        v45 = v44;
        if (v44)
        {
          v46 = v44;
        }

        else
        {
          v46 = [(HUServiceDetailsTextViewDelegate *)self viewController];
        }

        v51 = v46;

        v52 = objc_alloc(MEMORY[0x277D37688]);
        v53 = _HULocalizedStringWithDefaultValue(@"HUCameraAndRecordingLearnMoreTitle", @"HUCameraAndRecordingLearnMoreTitle", 1);
        v54 = _HULocalizedStringWithDefaultValue(@"HUCameraAndRecordingLearnMoreBody", @"HUCameraAndRecordingLearnMoreBody", 1);
        v55 = [v52 initWithTitle:v53 detailText:v54 symbolName:0 contentLayout:2];

        v16 = [MEMORY[0x277D37618] boldButton];
        v56 = _HULocalizedStringWithDefaultValue(@"HUDoneTitle", @"HUDoneTitle", 1);
        [v16 setTitle:v56 forState:0];

        [v16 addTarget:self action:sel_dismissTextViewController forControlEvents:64];
        v57 = [v55 buttonTray];
        [v57 addButton:v16];

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __87__HUServiceDetailsTextViewDelegate_textView_shouldInteractWithURL_inRange_interaction___block_invoke_92;
        block[3] = &unk_277DB7558;
        v65 = v51;
        v66 = v55;
        v58 = v51;
        v59 = v55;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }

      else
      {
        objc_opt_class();
        v47 = v9;
        if (objc_opt_isKindOfClass())
        {
          v48 = v47;
        }

        else
        {
          v48 = 0;
        }

        v49 = v48;

        v16 = [v49 identifier];

        v50 = [(HUServiceDetailsTextViewDelegate *)self unifiedIdentifiersForSectionIdentifier:v16];
        if (v50)
        {
          [(HUServiceDetailsTextViewDelegate *)self displayUnifiedPrivacyInformationWithIdentifiers:v50];
        }

        else
        {
          v60 = [(HUServiceDetailsTextViewDelegate *)self privacyIdentifierForSectionIdentifier:v16];
          [(HUServiceDetailsTextViewDelegate *)self displayPrivacyInformationWithIdentifier:v60];
        }
      }

      v26 = 0;
    }

    v12 = v27;
LABEL_37:

    goto LABEL_38;
  }

  v26 = 0;
LABEL_38:

  return v26;
}

uint64_t __87__HUServiceDetailsTextViewDelegate_textView_shouldInteractWithURL_inRange_interaction___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 isEqualToString:*MEMORY[0x277D14250]];

  return v3;
}

- (void)dismissTextViewController
{
  v3 = [(HUServiceDetailsTextViewDelegate *)self viewController];
  v4 = [v3 navigationController];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(HUServiceDetailsTextViewDelegate *)self viewController];
  }

  v7 = v6;

  [v7 dismissViewControllerAnimated:1 completion:0];
}

- (void)displayUnifiedPrivacyInformationWithIdentifiers:(id)a3
{
  v12 = a3;
  if (!v12)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"HUServiceDetailsTextViewDelegate.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"unifiedIdentifiers"}];
  }

  v5 = [(HUServiceDetailsTextViewDelegate *)self viewController];
  v6 = [v5 navigationController];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [(HUServiceDetailsTextViewDelegate *)self viewController];
  }

  v9 = v8;

  v10 = [MEMORY[0x277D37678] presenterForPrivacyUnifiedAboutWithIdentifiers:v12];
  [v10 setPresentingViewController:v9];
  [v10 present];
}

- (void)displayPrivacyInformationWithIdentifier:(id)a3
{
  v13 = a3;
  if (!v13)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"HUServiceDetailsTextViewDelegate.m" lineNumber:112 description:{@"Invalid parameter not satisfying: %@", @"privacyIdentifier"}];
  }

  v5 = [(HUServiceDetailsTextViewDelegate *)self viewController];
  v6 = [v5 navigationController];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [(HUServiceDetailsTextViewDelegate *)self viewController];
  }

  v9 = v8;

  v10 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:v13];
  v11 = [v10 splashController];
  [v11 setDisplayDeviceType:6];

  [v10 setPresentingViewController:v9];
  [v10 present];
}

- (id)privacyIdentifierForSectionIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqual:*MEMORY[0x277D139E8]])
  {
    v4 = MEMORY[0x277D376F0];
LABEL_9:
    v5 = *v4;
    goto LABEL_10;
  }

  if ([v3 isEqual:*MEMORY[0x277D139C8]])
  {
    v4 = MEMORY[0x277D376E0];
    goto LABEL_9;
  }

  if ([v3 isEqual:*MEMORY[0x277D13988]])
  {
    v4 = MEMORY[0x277D376B0];
    goto LABEL_9;
  }

  if ([v3 isEqual:*MEMORY[0x277D13968]])
  {
    v4 = MEMORY[0x277D376D8];
    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (id)unifiedIdentifiersForSectionIdentifier:(id)a3
{
  v6[2] = *MEMORY[0x277D85DE8];
  if ([a3 isEqualToString:*MEMORY[0x277D13988]])
  {
    v3 = *MEMORY[0x277D376E8];
    v6[0] = *MEMORY[0x277D376B0];
    v6[1] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (HUServiceDetailsItemManager)itemManager
{
  WeakRetained = objc_loadWeakRetained(&self->_itemManager);

  return WeakRetained;
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end