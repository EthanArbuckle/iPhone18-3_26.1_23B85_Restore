@interface MFContactMessageInteraction
- (BOOL)shouldShowContactHeader;
- (CNContactCustomViewConfiguration)headerViewConfiguration;
- (MFContactMessageInteraction)init;
- (MFContactMessageInteractionDelegate)delegate;
- (MFSecureMIMEPersonHeaderView)headerView;
- (UIViewController)presentingViewController;
- (id)_headerViewModel;
- (void)_certificateControllerDidFinish;
- (void)_configureSecureMIMEPersonHeaderView:(id)view;
- (void)_presentCertificateTrustInfo:(id)info;
- (void)_updateHeaderView;
- (void)_viewEncryptionCertificateButtonTapped:(id)tapped;
- (void)_viewSigningCertificateButtonTapped:(id)tapped;
- (void)addNotificationObservers;
- (void)installCertificateWithTrustException:(BOOL)exception;
- (void)performCertificateActionInstall;
- (void)performCertificateActionRemove;
- (void)performCertificateActionTrust;
- (void)performCertificateActionTrustAndInstall;
- (void)performCertificateActionUntrust;
- (void)promptOrInstallCertificationWithBlock:(id)block;
- (void)promptToReplaceCurrentCertificateWithBlock:(id)block;
- (void)refreshCertificateViewControllerStatus;
- (void)setCertificateViewController:(id)controller certificateTrustInfo:(id)info;
- (void)updateCertificateAction;
- (void)updateWithSecurityInformation:(id)information;
@end

@implementation MFContactMessageInteraction

- (MFContactMessageInteraction)init
{
  v5.receiver = self;
  v5.super_class = MFContactMessageInteraction;
  v2 = [(MFContactMessageInteraction *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MFContactMessageInteraction *)v2 addNotificationObservers];
  }

  return v3;
}

- (void)addNotificationObservers
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleTrustDidChange name:*MEMORY[0x277D28178] object:0];
}

- (MFSecureMIMEPersonHeaderView)headerView
{
  if ([(MFContactMessageInteraction *)self shouldShowContactHeader])
  {
    v3 = objc_alloc(MEMORY[0x277CD68C8]);
    v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(MFContactMessageInteraction *)self _configureSecureMIMEPersonHeaderView:v4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CNContactCustomViewConfiguration)headerViewConfiguration
{
  if ([(MFContactMessageInteraction *)self shouldShowContactHeader])
  {
    _headerViewModel = [(MFContactMessageInteraction *)self _headerViewModel];
    contactsCustomViewConfiguration = [_headerViewModel contactsCustomViewConfiguration];
  }

  else
  {
    contactsCustomViewConfiguration = 0;
  }

  return contactsCustomViewConfiguration;
}

- (UIViewController)presentingViewController
{
  delegate = [(MFContactMessageInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate presentingViewControllerForMessageInteraction:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)shouldShowContactHeader
{
  selfCopy = self;
  securityInformation = [(MFContactMessageInteraction *)self securityInformation];
  isSigned = [securityInformation isSigned];

  securityInformation2 = [(MFContactMessageInteraction *)selfCopy securityInformation];
  LOBYTE(selfCopy) = [securityInformation2 isEncrypted];

  return (isSigned | selfCopy) & 1;
}

- (void)updateWithSecurityInformation:(id)information
{
  informationCopy = information;
  [(MFContactMessageInteraction *)self setSecurityInformation:?];
  [(MFContactMessageInteraction *)self _updateHeaderView];
}

- (id)_headerViewModel
{
  if (![(MFContactMessageInteraction *)self shouldShowContactHeader])
  {
    v7 = 0;
    goto LABEL_34;
  }

  securityInformation = [(MFContactMessageInteraction *)self securityInformation];
  smimeError = [securityInformation smimeError];
  isSigned = [securityInformation isSigned];
  isEncrypted = [securityInformation isEncrypted];
  v7 = objc_alloc_init(MEMORY[0x277CD68C0]);
  if (smimeError)
  {
    code = [smimeError code];
    if (code == 1035)
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v10 = [mainBundle localizedStringForKey:@"DECRYPTION_ERROR" value:&stru_2826D1AD8 table:@"Main"];
      [v7 setWarningLabelText:v10];
    }

    else
    {
      if (code != 1036)
      {
LABEL_13:
        localizedDescription = [smimeError localizedDescription];
        [v7 setExplanationText:localizedDescription];
LABEL_32:

        goto LABEL_33;
      }

      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v10 = [mainBundle localizedStringForKey:@"SIGNATURE_ERROR" value:&stru_2826D1AD8 table:@"Main"];
      [v7 setWarningLabelText:v10];
    }

    goto LABEL_13;
  }

  if (isSigned)
  {
    signers = [securityInformation signers];
    firstObject = [signers firstObject];

    localizedDescription = [MEMORY[0x277CBEB18] array];
    if (firstObject)
    {
      v13 = objc_alloc(MEMORY[0x277D281F8]);
      signingCertificateTrustInfo = [firstObject signingCertificateTrustInfo];
      v15 = [v13 initWithTrustInformation:signingCertificateTrustInfo];

      v51 = v15;
      if (([v15 action] | 2) == 2)
      {
        mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
        v17 = [mainBundle2 localizedStringForKey:@"UNTRUSTED_SIGNATURE" value:&stru_2826D1AD8 table:@"Main"];
        [v7 setWarningLabelText:v17];

        v18 = MEMORY[0x277CCACA8];
        v19 = MFLookupLocalizedString();
        signingCertificateTrustInfo2 = [firstObject signingCertificateTrustInfo];
        sender = [signingCertificateTrustInfo2 sender];
        v22 = [v18 stringWithFormat:v19, sender];
        [v7 setExplanationText:v22];

        v50 = 1;
      }

      else
      {
        v50 = 0;
      }

      if ([firstObject hasSeparateSigningAndEncryptionCertificates])
      {
        v28 = objc_alloc(MEMORY[0x277CD68B8]);
        mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
        v30 = [mainBundle3 localizedStringForKey:@"VIEW_SIGNING_CERTIFICATE" value:&stru_2826D1AD8 table:@"Main"];
        v31 = [v28 initWithTitle:v30 target:self selector:sel__viewSigningCertificateButtonTapped_];
        [localizedDescription addObject:v31];

        v32 = objc_alloc(MEMORY[0x277CD68B8]);
        mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
        v34 = [mainBundle4 localizedStringForKey:@"VIEW_ENCRYPTION_CERTIFICATE" value:&stru_2826D1AD8 table:@"Main"];
        v35 = [v32 initWithTitle:v34 target:self selector:sel__viewEncryptionCertificateButtonTapped_];
        [localizedDescription addObject:v35];
      }

      else
      {
        encryptionCertificateTrustInfo = [firstObject encryptionCertificateTrustInfo];
        v37 = &selRef__viewEncryptionCertificateButtonTapped_;
        if (!encryptionCertificateTrustInfo)
        {
          v37 = &selRef__viewSigningCertificateButtonTapped_;
        }

        v38 = *v37;

        v39 = objc_alloc(MEMORY[0x277CD68B8]);
        mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
        v34 = [mainBundle4 localizedStringForKey:@"VIEW_CERTIFICATE" value:&stru_2826D1AD8 table:@"Main"];
        v35 = [v39 initWithTitle:v34 target:self selector:v38];
        [localizedDescription addObject:v35];
      }

      v40 = [localizedDescription copy];
      [v7 setActions:v40];
    }

    else
    {
      mainBundle5 = [MEMORY[0x277CCA8D8] mainBundle];
      v27 = [mainBundle5 localizedStringForKey:@"SIGNATURE_ERROR" value:&stru_2826D1AD8 table:@"Main"];
      [v7 setWarningLabelText:v27];

      v51 = MFLookupLocalizedString();
      [v7 setExplanationText:v51];
      v50 = 1;
    }

    v25 = firstObject;

    if (isEncrypted)
    {
      mainBundle6 = [MEMORY[0x277CCA8D8] mainBundle];
      v42 = [mainBundle6 localizedStringForKey:@"ENCRYPTED" value:&stru_2826D1AD8 table:@"Main"];
      v25 = firstObject;
      [v7 setSecureLabelText:v42];
    }

    if ((v50 & 1) == 0)
    {
      mainBundle7 = [MEMORY[0x277CCA8D8] mainBundle];
      v44 = [mainBundle7 localizedStringForKey:@"SIGNED" value:&stru_2826D1AD8 table:@"Main"];
      [v7 setSignedLabelText:v44];

      mainBundle8 = [MEMORY[0x277CCA8D8] mainBundle];
      v46 = mainBundle8;
      if (isEncrypted)
      {
        v47 = @"SIGNED_AND_ENCRYPTED_DESCRIPTION";
      }

      else
      {
        v47 = @"SIGNED_DESCRIPTION";
      }

      v48 = [mainBundle8 localizedStringForKey:v47 value:&stru_2826D1AD8 table:@"Main"];
      v25 = firstObject;
      [v7 setExplanationText:v48];
    }

    goto LABEL_31;
  }

  if (isEncrypted)
  {
    mainBundle9 = [MEMORY[0x277CCA8D8] mainBundle];
    v24 = [mainBundle9 localizedStringForKey:@"ENCRYPTED" value:&stru_2826D1AD8 table:@"Main"];
    [v7 setSecureLabelText:v24];

    localizedDescription = [MEMORY[0x277CCA8D8] mainBundle];
    v25 = [localizedDescription localizedStringForKey:@"ENCRYPTED_DESCRIPTION" value:&stru_2826D1AD8 table:@"Main"];
    [v7 setExplanationText:v25];
LABEL_31:

    goto LABEL_32;
  }

LABEL_33:

LABEL_34:

  return v7;
}

- (void)_configureSecureMIMEPersonHeaderView:(id)view
{
  viewCopy = view;
  _headerViewModel = [(MFContactMessageInteraction *)self _headerViewModel];
  v5 = _headerViewModel;
  if (_headerViewModel)
  {
    signedLabelText = [_headerViewModel signedLabelText];
    [viewCopy setSignedLabelText:signedLabelText];

    secureLabelText = [v5 secureLabelText];
    [viewCopy setSecureLabelText:secureLabelText];

    warningLabelText = [v5 warningLabelText];
    [viewCopy setWarningLabelText:warningLabelText];

    explanationText = [v5 explanationText];
    [viewCopy setExplanationText:explanationText];

    actions = [v5 actions];
    v11 = [actions count];

    if (v11)
    {
      actions2 = [v5 actions];
      v13 = [actions2 ef_map:&__block_literal_global_3];
      [viewCopy setButtons:v13];
    }
  }

  [viewCopy invalidateIntrinsicContentSize];
}

id __68__MFContactMessageInteraction__configureSecureMIMEPersonHeaderView___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x277D75220] buttonWithType:1];
  v4 = [v2 title];
  [v3 setTitle:v4 forState:0];

  v5 = [v2 target];
  [v3 addTarget:v5 action:objc_msgSend(v2 forControlEvents:{"actionSelector"), 64}];

  return v3;
}

- (void)_viewSigningCertificateButtonTapped:(id)tapped
{
  securityInformation = [(MFContactMessageInteraction *)self securityInformation];
  signers = [securityInformation signers];
  firstObject = [signers firstObject];
  signingCertificateTrustInfo = [firstObject signingCertificateTrustInfo];

  v7 = [objc_alloc(MEMORY[0x277D281F8]) initWithTrustInformation:signingCertificateTrustInfo];
  [(MFContactMessageInteraction *)self setCertificateKeychainManager:v7];

  [(MFContactMessageInteraction *)self _presentCertificateTrustInfo:signingCertificateTrustInfo];
}

- (void)_viewEncryptionCertificateButtonTapped:(id)tapped
{
  securityInformation = [(MFContactMessageInteraction *)self securityInformation];
  signers = [securityInformation signers];
  firstObject = [signers firstObject];
  encryptionCertificateTrustInfo = [firstObject encryptionCertificateTrustInfo];

  v7 = [objc_alloc(MEMORY[0x277D281F8]) initWithTrustInformation:encryptionCertificateTrustInfo];
  [(MFContactMessageInteraction *)self setCertificateKeychainManager:v7];

  [(MFContactMessageInteraction *)self _presentCertificateTrustInfo:encryptionCertificateTrustInfo];
}

- (void)_presentCertificateTrustInfo:(id)info
{
  infoCopy = info;
  certificateKeychainManager = [(MFContactMessageInteraction *)self certificateKeychainManager];
  action = [certificateKeychainManager action];

  v6 = [objc_alloc(MEMORY[0x277CF96F8]) initWithTrust:objc_msgSend(infoCopy action:{"trust"), action}];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = [mainBundle localizedStringForKey:@"CERTIFICATE" value:&stru_2826D1AD8 table:@"Main"];
  [v6 setTitle:v8];

  v9 = objc_alloc(MEMORY[0x277D751E0]);
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [mainBundle2 localizedStringForKey:@"DONE" value:&stru_2826D1AD8 table:@"Main"];
  v12 = [v9 initWithTitle:v11 style:2 target:self action:sel__certificateControllerDidFinish];
  navigationItem = [v6 navigationItem];
  [navigationItem setRightBarButtonItem:v12];

  [(MFContactMessageInteraction *)self setCertificateViewController:v6 certificateTrustInfo:infoCopy];
  v14 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v6];
  presentingViewController = [(MFContactMessageInteraction *)self presentingViewController];
  presentedViewController = [presentingViewController presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [presentingViewController presentedViewController];

    v18 = presentedViewController2;
    [v14 setModalPresentationStyle:3];
  }

  else
  {
    navigationController = [presentingViewController navigationController];
    topViewController = [navigationController topViewController];

    v18 = topViewController;
  }

  [v18 presentViewController:v14 animated:1 completion:0];
}

- (void)setCertificateViewController:(id)controller certificateTrustInfo:(id)info
{
  controllerCopy = controller;
  infoCopy = info;
  if (self->_certificateViewController != controllerCopy)
  {
    objc_storeStrong(&self->_certificateViewController, controller);
    objc_storeStrong(&self->_certificateTrustInfo, info);
    [(MFContactMessageInteraction *)self updateCertificateAction];
  }
}

- (void)_certificateControllerDidFinish
{
  certificateViewController = self->_certificateViewController;
  if (certificateViewController)
  {
    presentingViewController = [(CertificateViewController *)certificateViewController presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];

    v5 = self->_certificateViewController;
    self->_certificateViewController = 0;

    certificateTrustInfo = self->_certificateTrustInfo;
    self->_certificateTrustInfo = 0;
  }
}

- (void)updateCertificateAction
{
  certificateKeychainManager = [(MFContactMessageInteraction *)self certificateKeychainManager];
  keychainStatus = [certificateKeychainManager keychainStatus];

  securityInformation = [(MFContactMessageInteraction *)self securityInformation];
  smimeError = [securityInformation smimeError];

  certificateKeychainManager2 = [(MFContactMessageInteraction *)self certificateKeychainManager];
  action = [certificateKeychainManager2 action];

  certificateType = [(EMCertificateTrustInformation *)self->_certificateTrustInfo certificateType];
  certificateKeychainManager3 = [(MFContactMessageInteraction *)self certificateKeychainManager];
  canSaveCertificateToKeychain = [certificateKeychainManager3 canSaveCertificateToKeychain];

  certificateKeychainManager4 = [(MFContactMessageInteraction *)self certificateKeychainManager];
  action2 = [certificateKeychainManager4 action];
  certificateViewController = [(MFContactMessageInteraction *)self certificateViewController];
  [certificateViewController setCertUIAction:action2];

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v16 = mainBundle;
  if (certificateType == 1)
  {
    [mainBundle localizedStringForKey:@"ENCRYPTION_CERTIFICATE_DESCRIPTION" value:&stru_2826D1AD8 table:@"Main"];
  }

  else
  {
    [mainBundle localizedStringForKey:@"SIGNING_CERTIFICATE_DESCRIPTION" value:&stru_2826D1AD8 table:@"Main"];
  }
  v17 = ;

  if (keychainStatus == 1)
  {
    objc_initWeak(&location, self);
    certificateViewController2 = [(MFContactMessageInteraction *)self certificateViewController];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v20 = [mainBundle2 localizedStringForKey:@"REMOVE" value:&stru_2826D1AD8 table:@"Main"];
    v21 = v35;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __54__MFContactMessageInteraction_updateCertificateAction__block_invoke;
    v35[3] = &unk_278181470;
    objc_copyWeak(&v36, &location);
    [certificateViewController2 setShowCertificateButton:1 localizedTitle:v20 localizedDescription:v17 destructive:1 handler:v35];
  }

  else
  {
    if (smimeError)
    {
      v22 = 0;
    }

    else
    {
      v22 = action == 1;
    }

    v23 = !v22;
    if (canSaveCertificateToKeychain)
    {
      if (v23)
      {
        objc_initWeak(&location, self);
        certificateViewController2 = [(MFContactMessageInteraction *)self certificateViewController];
        mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
        v20 = [mainBundle2 localizedStringForKey:@"INSTALL" value:&stru_2826D1AD8 table:@"Main"];
        v21 = v33;
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __54__MFContactMessageInteraction_updateCertificateAction__block_invoke_2;
        v33[3] = &unk_278181470;
        objc_copyWeak(&v34, &location);
        [certificateViewController2 setShowCertificateButton:1 localizedTitle:v20 localizedDescription:v17 destructive:0 handler:v33];
      }

      else
      {
        objc_initWeak(&location, self);
        certificateViewController2 = [(MFContactMessageInteraction *)self certificateViewController];
        mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
        v20 = [mainBundle2 localizedStringForKey:@"INSTALL" value:&stru_2826D1AD8 table:@"Main"];
        v21 = v31;
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __54__MFContactMessageInteraction_updateCertificateAction__block_invoke_3;
        v31[3] = &unk_278181470;
        objc_copyWeak(&v32, &location);
        [certificateViewController2 setShowCertificateButton:1 localizedTitle:v20 localizedDescription:v17 destructive:0 handler:v31];
      }
    }

    else if (v23)
    {
      objc_initWeak(&location, self);
      certificateViewController2 = [(MFContactMessageInteraction *)self certificateViewController];
      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      v20 = [mainBundle2 localizedStringForKey:@"TRUST" value:&stru_2826D1AD8 table:@"Main"];
      v21 = v29;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __54__MFContactMessageInteraction_updateCertificateAction__block_invoke_4;
      v29[3] = &unk_278181470;
      objc_copyWeak(&v30, &location);
      [certificateViewController2 setShowCertificateButton:1 localizedTitle:v20 localizedDescription:v17 destructive:0 handler:v29];
    }

    else
    {
      certificateKeychainManager5 = [(MFContactMessageInteraction *)self certificateKeychainManager];
      hasTrustException = [certificateKeychainManager5 hasTrustException];

      if (!hasTrustException)
      {
        certificateViewController3 = [(MFContactMessageInteraction *)self certificateViewController];
        [certificateViewController3 setShowCertificateButton:0 localizedTitle:0 localizedDescription:0 destructive:0 handler:0];

        goto LABEL_7;
      }

      objc_initWeak(&location, self);
      certificateViewController2 = [(MFContactMessageInteraction *)self certificateViewController];
      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      v20 = [mainBundle2 localizedStringForKey:@"UNTRUST" value:&stru_2826D1AD8 table:@"Main"];
      v21 = v27;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __54__MFContactMessageInteraction_updateCertificateAction__block_invoke_5;
      v27[3] = &unk_278181470;
      objc_copyWeak(&v28, &location);
      [certificateViewController2 setShowCertificateButton:1 localizedTitle:v20 localizedDescription:v17 destructive:1 handler:v27];
    }
  }

  objc_destroyWeak(v21 + 4);
  objc_destroyWeak(&location);
LABEL_7:
}

void __54__MFContactMessageInteraction_updateCertificateAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performCertificateActionRemove];
}

void __54__MFContactMessageInteraction_updateCertificateAction__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performCertificateActionTrustAndInstall];
}

void __54__MFContactMessageInteraction_updateCertificateAction__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performCertificateActionInstall];
}

void __54__MFContactMessageInteraction_updateCertificateAction__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performCertificateActionTrust];
}

void __54__MFContactMessageInteraction_updateCertificateAction__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performCertificateActionUntrust];
}

- (void)performCertificateActionRemove
{
  certificateKeychainManager = [(MFContactMessageInteraction *)self certificateKeychainManager];
  [certificateKeychainManager removeTrustException];

  certificateKeychainManager2 = [(MFContactMessageInteraction *)self certificateKeychainManager];
  [certificateKeychainManager2 removeCertificateFromKeychain];

  [(MFContactMessageInteraction *)self updateCertificateAction];

  [(MFContactMessageInteraction *)self refreshCertificateViewControllerStatus];
}

- (void)performCertificateActionTrustAndInstall
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __70__MFContactMessageInteraction_performCertificateActionTrustAndInstall__block_invoke;
  v2[3] = &unk_2781816C0;
  v2[4] = self;
  [(MFContactMessageInteraction *)self promptOrInstallCertificationWithBlock:v2];
}

- (void)performCertificateActionInstall
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __62__MFContactMessageInteraction_performCertificateActionInstall__block_invoke;
  v2[3] = &unk_2781816C0;
  v2[4] = self;
  [(MFContactMessageInteraction *)self promptOrInstallCertificationWithBlock:v2];
}

- (void)performCertificateActionTrust
{
  certificateKeychainManager = [(MFContactMessageInteraction *)self certificateKeychainManager];
  [certificateKeychainManager addTrustException];

  [(MFContactMessageInteraction *)self updateCertificateAction];

  [(MFContactMessageInteraction *)self refreshCertificateViewControllerStatus];
}

- (void)performCertificateActionUntrust
{
  certificateKeychainManager = [(MFContactMessageInteraction *)self certificateKeychainManager];
  [certificateKeychainManager removeTrustException];

  [(MFContactMessageInteraction *)self updateCertificateAction];

  [(MFContactMessageInteraction *)self refreshCertificateViewControllerStatus];
}

- (void)installCertificateWithTrustException:(BOOL)exception
{
  if (exception)
  {
    certificateKeychainManager = [(MFContactMessageInteraction *)self certificateKeychainManager];
    [certificateKeychainManager addTrustException];
  }

  certificateKeychainManager2 = [(MFContactMessageInteraction *)self certificateKeychainManager];
  [certificateKeychainManager2 saveCertificateToKeychain];

  [(MFContactMessageInteraction *)self updateCertificateAction];

  [(MFContactMessageInteraction *)self refreshCertificateViewControllerStatus];
}

- (void)_updateHeaderView
{
  headerView = [(MFContactMessageInteraction *)self headerView];
  [(MFContactMessageInteraction *)self _configureSecureMIMEPersonHeaderView:?];

  delegate = [(MFContactMessageInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    headerView2 = [(MFContactMessageInteraction *)self headerView];
    [delegate contactMessageInteraction:self didUpdateHeaderView:headerView2];
  }
}

- (void)refreshCertificateViewControllerStatus
{
  certificateViewController = [(MFContactMessageInteraction *)self certificateViewController];
  tableView = [certificateViewController tableView];
  [tableView reloadData];
}

- (void)promptOrInstallCertificationWithBlock:(id)block
{
  blockCopy = block;
  certificateKeychainManager = [(MFContactMessageInteraction *)self certificateKeychainManager];
  keychainStatus = [certificateKeychainManager keychainStatus];

  if (keychainStatus == 2)
  {
    [(MFContactMessageInteraction *)self promptToReplaceCurrentCertificateWithBlock:blockCopy];
  }

  else
  {
    blockCopy[2]();
  }
}

- (void)promptToReplaceCurrentCertificateWithBlock:(id)block
{
  blockCopy = block;
  certificateKeychainManager = [(MFContactMessageInteraction *)self certificateKeychainManager];
  addressForSaving = [certificateKeychainManager addressForSaving];

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [mainBundle localizedStringForKey:@"OVERWRITE_CERTIFICATE_DESCRIPTION_FORMAT" value:&stru_2826D1AD8 table:@"Main"];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:v7, addressForSaving];
  v9 = MEMORY[0x277D75110];
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [mainBundle2 localizedStringForKey:@"INSTALL_CERTIFICATE" value:&stru_2826D1AD8 table:@"Main"];
  v12 = [v9 alertControllerWithTitle:v11 message:v8 preferredStyle:1];

  v13 = MEMORY[0x277D750F8];
  mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
  v15 = [mainBundle3 localizedStringForKey:@"INSTALL" value:&stru_2826D1AD8 table:@"Main"];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __74__MFContactMessageInteraction_promptToReplaceCurrentCertificateWithBlock___block_invoke;
  v24[3] = &unk_278181B20;
  v16 = blockCopy;
  v25 = v16;
  v17 = [v13 actionWithTitle:v15 style:0 handler:v24];
  [v12 addAction:v17];

  v18 = MEMORY[0x277D750F8];
  mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
  v20 = [mainBundle4 localizedStringForKey:@"CANCEL" value:&stru_2826D1AD8 table:@"Main"];
  v21 = [v18 actionWithTitle:v20 style:1 handler:0];
  [v12 addAction:v21];

  certificateViewController = [(MFContactMessageInteraction *)self certificateViewController];
  [certificateViewController presentViewController:v12 animated:1 completion:0];
}

- (MFContactMessageInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end