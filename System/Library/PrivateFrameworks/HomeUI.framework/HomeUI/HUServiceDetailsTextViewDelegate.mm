@interface HUServiceDetailsTextViewDelegate
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (HUServiceDetailsItemManager)itemManager;
- (UIViewController)viewController;
- (id)privacyIdentifierForSectionIdentifier:(id)identifier;
- (id)unifiedIdentifiersForSectionIdentifier:(id)identifier;
- (void)dismissTextViewController;
- (void)displayPrivacyInformationWithIdentifier:(id)identifier;
- (void)displayUnifiedPrivacyInformationWithIdentifiers:(id)identifiers;
@end

@implementation HUServiceDetailsTextViewDelegate

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v71 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  lCopy = l;
  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v69 = 2112;
    v70 = lCopy;
    _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", buf, 0x16u);
  }

  v12 = [objc_alloc(MEMORY[0x277D14C80]) initWithURL:lCopy];
  if ([v12 destination] == 17)
  {
    itemManager = [(HUServiceDetailsTextViewDelegate *)self itemManager];
    sourceItem = [itemManager sourceItem];
    latestResults = [sourceItem latestResults];
    mEMORY[0x277D148E8] = [latestResults objectForKey:*MEMORY[0x277D13BD0]];

    mEMORY[0x277D14B80] = [MEMORY[0x277D14B80] sharedManager];
    v18 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:lCopy resolvingAgainstBaseURL:0];
    queryItems = [v18 queryItems];
    v20 = [queryItems na_firstObjectPassingTest:&__block_literal_global_136];

    value = [v20 value];

    if (value)
    {
      v63 = viewCopy;
      value2 = [v20 value];
      v23 = NSStringToHMSymptomType();

      v24 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:v23];
      if (mEMORY[0x277D148E8])
      {
        viewController = [(HUServiceDetailsTextViewDelegate *)self viewController];
        [mEMORY[0x277D14B80] fixSymptom:v24 forFixableObject:mEMORY[0x277D148E8] presentingViewController:viewController];
      }

      else
      {
        v62 = v12;
        itemManager2 = [(HUServiceDetailsTextViewDelegate *)self itemManager];
        sourceItem2 = [itemManager2 sourceItem];
        accessories = [sourceItem2 accessories];
        v34 = [accessories count];

        if (v34 != 1)
        {
          NSLog(&cfstr_AttemptingToFi.isa);
        }

        itemManager3 = [(HUServiceDetailsTextViewDelegate *)self itemManager];
        sourceItem3 = [itemManager3 sourceItem];
        if ([sourceItem3 conformsToProtocol:&unk_28251B0C8])
        {
          v37 = sourceItem3;
        }

        else
        {
          v37 = 0;
        }

        v38 = v37;

        viewController = [v38 accessories];

        anyObject = [viewController anyObject];
        viewController2 = [(HUServiceDetailsTextViewDelegate *)self viewController];
        [mEMORY[0x277D14B80] fixSymptom:v24 forFixableObject:anyObject presentingViewController:viewController2];

        mEMORY[0x277D148E8] = 0;
        v12 = v62;
      }

      viewCopy = v63;
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

  if (!interaction)
  {
    v27 = v12;
    hf_locationDeviceSettingsURL = [MEMORY[0x277CBEBC0] hf_locationDeviceSettingsURL];
    v29 = [lCopy isEqual:hf_locationDeviceSettingsURL];

    if (v29)
    {
      mEMORY[0x277D148E8] = [MEMORY[0x277D148E8] sharedInstance];
      v30 = [mEMORY[0x277D148E8] openURL:lCopy];
      v26 = 1;
    }

    else
    {
      if ([lCopy hf_isHomeKnowledgeBasedArticleURL])
      {
        v26 = 1;
        v12 = v27;
        goto LABEL_38;
      }

      hf_cameraRecordingURL = [MEMORY[0x277CBEBC0] hf_cameraRecordingURL];
      v42 = [lCopy isEqual:hf_cameraRecordingURL];

      if (v42)
      {
        viewController3 = [(HUServiceDetailsTextViewDelegate *)self viewController];
        navigationController = [viewController3 navigationController];
        v45 = navigationController;
        if (navigationController)
        {
          viewController4 = navigationController;
        }

        else
        {
          viewController4 = [(HUServiceDetailsTextViewDelegate *)self viewController];
        }

        v51 = viewController4;

        v52 = objc_alloc(MEMORY[0x277D37688]);
        v53 = _HULocalizedStringWithDefaultValue(@"HUCameraAndRecordingLearnMoreTitle", @"HUCameraAndRecordingLearnMoreTitle", 1);
        v54 = _HULocalizedStringWithDefaultValue(@"HUCameraAndRecordingLearnMoreBody", @"HUCameraAndRecordingLearnMoreBody", 1);
        v55 = [v52 initWithTitle:v53 detailText:v54 symbolName:0 contentLayout:2];

        mEMORY[0x277D148E8] = [MEMORY[0x277D37618] boldButton];
        v56 = _HULocalizedStringWithDefaultValue(@"HUDoneTitle", @"HUDoneTitle", 1);
        [mEMORY[0x277D148E8] setTitle:v56 forState:0];

        [mEMORY[0x277D148E8] addTarget:self action:sel_dismissTextViewController forControlEvents:64];
        buttonTray = [v55 buttonTray];
        [buttonTray addButton:mEMORY[0x277D148E8]];

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
        v47 = viewCopy;
        if (objc_opt_isKindOfClass())
        {
          v48 = v47;
        }

        else
        {
          v48 = 0;
        }

        v49 = v48;

        mEMORY[0x277D148E8] = [v49 identifier];

        v50 = [(HUServiceDetailsTextViewDelegate *)self unifiedIdentifiersForSectionIdentifier:mEMORY[0x277D148E8]];
        if (v50)
        {
          [(HUServiceDetailsTextViewDelegate *)self displayUnifiedPrivacyInformationWithIdentifiers:v50];
        }

        else
        {
          v60 = [(HUServiceDetailsTextViewDelegate *)self privacyIdentifierForSectionIdentifier:mEMORY[0x277D148E8]];
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
  viewController = [(HUServiceDetailsTextViewDelegate *)self viewController];
  navigationController = [viewController navigationController];
  v5 = navigationController;
  if (navigationController)
  {
    viewController2 = navigationController;
  }

  else
  {
    viewController2 = [(HUServiceDetailsTextViewDelegate *)self viewController];
  }

  v7 = viewController2;

  [v7 dismissViewControllerAnimated:1 completion:0];
}

- (void)displayUnifiedPrivacyInformationWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (!identifiersCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUServiceDetailsTextViewDelegate.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"unifiedIdentifiers"}];
  }

  viewController = [(HUServiceDetailsTextViewDelegate *)self viewController];
  navigationController = [viewController navigationController];
  v7 = navigationController;
  if (navigationController)
  {
    viewController2 = navigationController;
  }

  else
  {
    viewController2 = [(HUServiceDetailsTextViewDelegate *)self viewController];
  }

  v9 = viewController2;

  v10 = [MEMORY[0x277D37678] presenterForPrivacyUnifiedAboutWithIdentifiers:identifiersCopy];
  [v10 setPresentingViewController:v9];
  [v10 present];
}

- (void)displayPrivacyInformationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUServiceDetailsTextViewDelegate.m" lineNumber:112 description:{@"Invalid parameter not satisfying: %@", @"privacyIdentifier"}];
  }

  viewController = [(HUServiceDetailsTextViewDelegate *)self viewController];
  navigationController = [viewController navigationController];
  v7 = navigationController;
  if (navigationController)
  {
    viewController2 = navigationController;
  }

  else
  {
    viewController2 = [(HUServiceDetailsTextViewDelegate *)self viewController];
  }

  v9 = viewController2;

  v10 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:identifierCopy];
  splashController = [v10 splashController];
  [splashController setDisplayDeviceType:6];

  [v10 setPresentingViewController:v9];
  [v10 present];
}

- (id)privacyIdentifierForSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqual:*MEMORY[0x277D139E8]])
  {
    v4 = MEMORY[0x277D376F0];
LABEL_9:
    v5 = *v4;
    goto LABEL_10;
  }

  if ([identifierCopy isEqual:*MEMORY[0x277D139C8]])
  {
    v4 = MEMORY[0x277D376E0];
    goto LABEL_9;
  }

  if ([identifierCopy isEqual:*MEMORY[0x277D13988]])
  {
    v4 = MEMORY[0x277D376B0];
    goto LABEL_9;
  }

  if ([identifierCopy isEqual:*MEMORY[0x277D13968]])
  {
    v4 = MEMORY[0x277D376D8];
    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (id)unifiedIdentifiersForSectionIdentifier:(id)identifier
{
  v6[2] = *MEMORY[0x277D85DE8];
  if ([identifier isEqualToString:*MEMORY[0x277D13988]])
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