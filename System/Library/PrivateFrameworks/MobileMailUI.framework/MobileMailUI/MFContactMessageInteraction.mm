@interface MFContactMessageInteraction
- (BOOL)shouldShowContactHeader;
- (CNContactCustomViewConfiguration)headerViewConfiguration;
- (MFContactMessageInteraction)init;
- (MFContactMessageInteractionDelegate)delegate;
- (MFSecureMIMEPersonHeaderView)headerView;
- (UIViewController)presentingViewController;
- (id)_headerViewModel;
- (void)_certificateControllerDidFinish;
- (void)_configureSecureMIMEPersonHeaderView:(id)a3;
- (void)_presentCertificateTrustInfo:(id)a3;
- (void)_updateHeaderView;
- (void)_viewEncryptionCertificateButtonTapped:(id)a3;
- (void)_viewSigningCertificateButtonTapped:(id)a3;
- (void)addNotificationObservers;
- (void)installCertificateWithTrustException:(BOOL)a3;
- (void)performCertificateActionInstall;
- (void)performCertificateActionRemove;
- (void)performCertificateActionTrust;
- (void)performCertificateActionTrustAndInstall;
- (void)performCertificateActionUntrust;
- (void)promptOrInstallCertificationWithBlock:(id)a3;
- (void)promptToReplaceCurrentCertificateWithBlock:(id)a3;
- (void)refreshCertificateViewControllerStatus;
- (void)setCertificateViewController:(id)a3 certificateTrustInfo:(id)a4;
- (void)updateCertificateAction;
- (void)updateWithSecurityInformation:(id)a3;
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__handleTrustDidChange name:*MEMORY[0x277D28178] object:0];
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
    v3 = [(MFContactMessageInteraction *)self _headerViewModel];
    v4 = [v3 contactsCustomViewConfiguration];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UIViewController)presentingViewController
{
  v3 = [(MFContactMessageInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 presentingViewControllerForMessageInteraction:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)shouldShowContactHeader
{
  v2 = self;
  v3 = [(MFContactMessageInteraction *)self securityInformation];
  v4 = [v3 isSigned];

  v5 = [(MFContactMessageInteraction *)v2 securityInformation];
  LOBYTE(v2) = [v5 isEncrypted];

  return (v4 | v2) & 1;
}

- (void)updateWithSecurityInformation:(id)a3
{
  v4 = a3;
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

  v3 = [(MFContactMessageInteraction *)self securityInformation];
  v4 = [v3 smimeError];
  v5 = [v3 isSigned];
  v6 = [v3 isEncrypted];
  v7 = objc_alloc_init(MEMORY[0x277CD68C0]);
  if (v4)
  {
    v8 = [v4 code];
    if (v8 == 1035)
    {
      v9 = [MEMORY[0x277CCA8D8] mainBundle];
      v10 = [v9 localizedStringForKey:@"DECRYPTION_ERROR" value:&stru_2826D1AD8 table:@"Main"];
      [v7 setWarningLabelText:v10];
    }

    else
    {
      if (v8 != 1036)
      {
LABEL_13:
        v12 = [v4 localizedDescription];
        [v7 setExplanationText:v12];
LABEL_32:

        goto LABEL_33;
      }

      v9 = [MEMORY[0x277CCA8D8] mainBundle];
      v10 = [v9 localizedStringForKey:@"SIGNATURE_ERROR" value:&stru_2826D1AD8 table:@"Main"];
      [v7 setWarningLabelText:v10];
    }

    goto LABEL_13;
  }

  if (v5)
  {
    v11 = [v3 signers];
    v52 = [v11 firstObject];

    v12 = [MEMORY[0x277CBEB18] array];
    if (v52)
    {
      v13 = objc_alloc(MEMORY[0x277D281F8]);
      v14 = [v52 signingCertificateTrustInfo];
      v15 = [v13 initWithTrustInformation:v14];

      v51 = v15;
      if (([v15 action] | 2) == 2)
      {
        v16 = [MEMORY[0x277CCA8D8] mainBundle];
        v17 = [v16 localizedStringForKey:@"UNTRUSTED_SIGNATURE" value:&stru_2826D1AD8 table:@"Main"];
        [v7 setWarningLabelText:v17];

        v18 = MEMORY[0x277CCACA8];
        v19 = MFLookupLocalizedString();
        v20 = [v52 signingCertificateTrustInfo];
        v21 = [v20 sender];
        v22 = [v18 stringWithFormat:v19, v21];
        [v7 setExplanationText:v22];

        v50 = 1;
      }

      else
      {
        v50 = 0;
      }

      if ([v52 hasSeparateSigningAndEncryptionCertificates])
      {
        v28 = objc_alloc(MEMORY[0x277CD68B8]);
        v29 = [MEMORY[0x277CCA8D8] mainBundle];
        v30 = [v29 localizedStringForKey:@"VIEW_SIGNING_CERTIFICATE" value:&stru_2826D1AD8 table:@"Main"];
        v31 = [v28 initWithTitle:v30 target:self selector:sel__viewSigningCertificateButtonTapped_];
        [v12 addObject:v31];

        v32 = objc_alloc(MEMORY[0x277CD68B8]);
        v33 = [MEMORY[0x277CCA8D8] mainBundle];
        v34 = [v33 localizedStringForKey:@"VIEW_ENCRYPTION_CERTIFICATE" value:&stru_2826D1AD8 table:@"Main"];
        v35 = [v32 initWithTitle:v34 target:self selector:sel__viewEncryptionCertificateButtonTapped_];
        [v12 addObject:v35];
      }

      else
      {
        v36 = [v52 encryptionCertificateTrustInfo];
        v37 = &selRef__viewEncryptionCertificateButtonTapped_;
        if (!v36)
        {
          v37 = &selRef__viewSigningCertificateButtonTapped_;
        }

        v38 = *v37;

        v39 = objc_alloc(MEMORY[0x277CD68B8]);
        v33 = [MEMORY[0x277CCA8D8] mainBundle];
        v34 = [v33 localizedStringForKey:@"VIEW_CERTIFICATE" value:&stru_2826D1AD8 table:@"Main"];
        v35 = [v39 initWithTitle:v34 target:self selector:v38];
        [v12 addObject:v35];
      }

      v40 = [v12 copy];
      [v7 setActions:v40];
    }

    else
    {
      v26 = [MEMORY[0x277CCA8D8] mainBundle];
      v27 = [v26 localizedStringForKey:@"SIGNATURE_ERROR" value:&stru_2826D1AD8 table:@"Main"];
      [v7 setWarningLabelText:v27];

      v51 = MFLookupLocalizedString();
      [v7 setExplanationText:v51];
      v50 = 1;
    }

    v25 = v52;

    if (v6)
    {
      v41 = [MEMORY[0x277CCA8D8] mainBundle];
      v42 = [v41 localizedStringForKey:@"ENCRYPTED" value:&stru_2826D1AD8 table:@"Main"];
      v25 = v52;
      [v7 setSecureLabelText:v42];
    }

    if ((v50 & 1) == 0)
    {
      v43 = [MEMORY[0x277CCA8D8] mainBundle];
      v44 = [v43 localizedStringForKey:@"SIGNED" value:&stru_2826D1AD8 table:@"Main"];
      [v7 setSignedLabelText:v44];

      v45 = [MEMORY[0x277CCA8D8] mainBundle];
      v46 = v45;
      if (v6)
      {
        v47 = @"SIGNED_AND_ENCRYPTED_DESCRIPTION";
      }

      else
      {
        v47 = @"SIGNED_DESCRIPTION";
      }

      v48 = [v45 localizedStringForKey:v47 value:&stru_2826D1AD8 table:@"Main"];
      v25 = v52;
      [v7 setExplanationText:v48];
    }

    goto LABEL_31;
  }

  if (v6)
  {
    v23 = [MEMORY[0x277CCA8D8] mainBundle];
    v24 = [v23 localizedStringForKey:@"ENCRYPTED" value:&stru_2826D1AD8 table:@"Main"];
    [v7 setSecureLabelText:v24];

    v12 = [MEMORY[0x277CCA8D8] mainBundle];
    v25 = [v12 localizedStringForKey:@"ENCRYPTED_DESCRIPTION" value:&stru_2826D1AD8 table:@"Main"];
    [v7 setExplanationText:v25];
LABEL_31:

    goto LABEL_32;
  }

LABEL_33:

LABEL_34:

  return v7;
}

- (void)_configureSecureMIMEPersonHeaderView:(id)a3
{
  v14 = a3;
  v4 = [(MFContactMessageInteraction *)self _headerViewModel];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 signedLabelText];
    [v14 setSignedLabelText:v6];

    v7 = [v5 secureLabelText];
    [v14 setSecureLabelText:v7];

    v8 = [v5 warningLabelText];
    [v14 setWarningLabelText:v8];

    v9 = [v5 explanationText];
    [v14 setExplanationText:v9];

    v10 = [v5 actions];
    v11 = [v10 count];

    if (v11)
    {
      v12 = [v5 actions];
      v13 = [v12 ef_map:&__block_literal_global_3];
      [v14 setButtons:v13];
    }
  }

  [v14 invalidateIntrinsicContentSize];
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

- (void)_viewSigningCertificateButtonTapped:(id)a3
{
  v4 = [(MFContactMessageInteraction *)self securityInformation];
  v5 = [v4 signers];
  v6 = [v5 firstObject];
  v8 = [v6 signingCertificateTrustInfo];

  v7 = [objc_alloc(MEMORY[0x277D281F8]) initWithTrustInformation:v8];
  [(MFContactMessageInteraction *)self setCertificateKeychainManager:v7];

  [(MFContactMessageInteraction *)self _presentCertificateTrustInfo:v8];
}

- (void)_viewEncryptionCertificateButtonTapped:(id)a3
{
  v4 = [(MFContactMessageInteraction *)self securityInformation];
  v5 = [v4 signers];
  v6 = [v5 firstObject];
  v8 = [v6 encryptionCertificateTrustInfo];

  v7 = [objc_alloc(MEMORY[0x277D281F8]) initWithTrustInformation:v8];
  [(MFContactMessageInteraction *)self setCertificateKeychainManager:v7];

  [(MFContactMessageInteraction *)self _presentCertificateTrustInfo:v8];
}

- (void)_presentCertificateTrustInfo:(id)a3
{
  v21 = a3;
  v4 = [(MFContactMessageInteraction *)self certificateKeychainManager];
  v5 = [v4 action];

  v6 = [objc_alloc(MEMORY[0x277CF96F8]) initWithTrust:objc_msgSend(v21 action:{"trust"), v5}];
  v7 = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = [v7 localizedStringForKey:@"CERTIFICATE" value:&stru_2826D1AD8 table:@"Main"];
  [v6 setTitle:v8];

  v9 = objc_alloc(MEMORY[0x277D751E0]);
  v10 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [v10 localizedStringForKey:@"DONE" value:&stru_2826D1AD8 table:@"Main"];
  v12 = [v9 initWithTitle:v11 style:2 target:self action:sel__certificateControllerDidFinish];
  v13 = [v6 navigationItem];
  [v13 setRightBarButtonItem:v12];

  [(MFContactMessageInteraction *)self setCertificateViewController:v6 certificateTrustInfo:v21];
  v14 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v6];
  v15 = [(MFContactMessageInteraction *)self presentingViewController];
  v16 = [v15 presentedViewController];

  if (v16)
  {
    v17 = [v15 presentedViewController];

    v18 = v17;
    [v14 setModalPresentationStyle:3];
  }

  else
  {
    v19 = [v15 navigationController];
    v20 = [v19 topViewController];

    v18 = v20;
  }

  [v18 presentViewController:v14 animated:1 completion:0];
}

- (void)setCertificateViewController:(id)a3 certificateTrustInfo:(id)a4
{
  v8 = a3;
  v7 = a4;
  if (self->_certificateViewController != v8)
  {
    objc_storeStrong(&self->_certificateViewController, a3);
    objc_storeStrong(&self->_certificateTrustInfo, a4);
    [(MFContactMessageInteraction *)self updateCertificateAction];
  }
}

- (void)_certificateControllerDidFinish
{
  certificateViewController = self->_certificateViewController;
  if (certificateViewController)
  {
    v4 = [(CertificateViewController *)certificateViewController presentingViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];

    v5 = self->_certificateViewController;
    self->_certificateViewController = 0;

    certificateTrustInfo = self->_certificateTrustInfo;
    self->_certificateTrustInfo = 0;
  }
}

- (void)updateCertificateAction
{
  v3 = [(MFContactMessageInteraction *)self certificateKeychainManager];
  v4 = [v3 keychainStatus];

  v5 = [(MFContactMessageInteraction *)self securityInformation];
  v6 = [v5 smimeError];

  v7 = [(MFContactMessageInteraction *)self certificateKeychainManager];
  v8 = [v7 action];

  v9 = [(EMCertificateTrustInformation *)self->_certificateTrustInfo certificateType];
  v10 = [(MFContactMessageInteraction *)self certificateKeychainManager];
  v11 = [v10 canSaveCertificateToKeychain];

  v12 = [(MFContactMessageInteraction *)self certificateKeychainManager];
  v13 = [v12 action];
  v14 = [(MFContactMessageInteraction *)self certificateViewController];
  [v14 setCertUIAction:v13];

  v15 = [MEMORY[0x277CCA8D8] mainBundle];
  v16 = v15;
  if (v9 == 1)
  {
    [v15 localizedStringForKey:@"ENCRYPTION_CERTIFICATE_DESCRIPTION" value:&stru_2826D1AD8 table:@"Main"];
  }

  else
  {
    [v15 localizedStringForKey:@"SIGNING_CERTIFICATE_DESCRIPTION" value:&stru_2826D1AD8 table:@"Main"];
  }
  v17 = ;

  if (v4 == 1)
  {
    objc_initWeak(&location, self);
    v18 = [(MFContactMessageInteraction *)self certificateViewController];
    v19 = [MEMORY[0x277CCA8D8] mainBundle];
    v20 = [v19 localizedStringForKey:@"REMOVE" value:&stru_2826D1AD8 table:@"Main"];
    v21 = v35;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __54__MFContactMessageInteraction_updateCertificateAction__block_invoke;
    v35[3] = &unk_278181470;
    objc_copyWeak(&v36, &location);
    [v18 setShowCertificateButton:1 localizedTitle:v20 localizedDescription:v17 destructive:1 handler:v35];
  }

  else
  {
    if (v6)
    {
      v22 = 0;
    }

    else
    {
      v22 = v8 == 1;
    }

    v23 = !v22;
    if (v11)
    {
      if (v23)
      {
        objc_initWeak(&location, self);
        v18 = [(MFContactMessageInteraction *)self certificateViewController];
        v19 = [MEMORY[0x277CCA8D8] mainBundle];
        v20 = [v19 localizedStringForKey:@"INSTALL" value:&stru_2826D1AD8 table:@"Main"];
        v21 = v33;
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __54__MFContactMessageInteraction_updateCertificateAction__block_invoke_2;
        v33[3] = &unk_278181470;
        objc_copyWeak(&v34, &location);
        [v18 setShowCertificateButton:1 localizedTitle:v20 localizedDescription:v17 destructive:0 handler:v33];
      }

      else
      {
        objc_initWeak(&location, self);
        v18 = [(MFContactMessageInteraction *)self certificateViewController];
        v19 = [MEMORY[0x277CCA8D8] mainBundle];
        v20 = [v19 localizedStringForKey:@"INSTALL" value:&stru_2826D1AD8 table:@"Main"];
        v21 = v31;
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __54__MFContactMessageInteraction_updateCertificateAction__block_invoke_3;
        v31[3] = &unk_278181470;
        objc_copyWeak(&v32, &location);
        [v18 setShowCertificateButton:1 localizedTitle:v20 localizedDescription:v17 destructive:0 handler:v31];
      }
    }

    else if (v23)
    {
      objc_initWeak(&location, self);
      v18 = [(MFContactMessageInteraction *)self certificateViewController];
      v19 = [MEMORY[0x277CCA8D8] mainBundle];
      v20 = [v19 localizedStringForKey:@"TRUST" value:&stru_2826D1AD8 table:@"Main"];
      v21 = v29;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __54__MFContactMessageInteraction_updateCertificateAction__block_invoke_4;
      v29[3] = &unk_278181470;
      objc_copyWeak(&v30, &location);
      [v18 setShowCertificateButton:1 localizedTitle:v20 localizedDescription:v17 destructive:0 handler:v29];
    }

    else
    {
      v24 = [(MFContactMessageInteraction *)self certificateKeychainManager];
      v25 = [v24 hasTrustException];

      if (!v25)
      {
        v26 = [(MFContactMessageInteraction *)self certificateViewController];
        [v26 setShowCertificateButton:0 localizedTitle:0 localizedDescription:0 destructive:0 handler:0];

        goto LABEL_7;
      }

      objc_initWeak(&location, self);
      v18 = [(MFContactMessageInteraction *)self certificateViewController];
      v19 = [MEMORY[0x277CCA8D8] mainBundle];
      v20 = [v19 localizedStringForKey:@"UNTRUST" value:&stru_2826D1AD8 table:@"Main"];
      v21 = v27;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __54__MFContactMessageInteraction_updateCertificateAction__block_invoke_5;
      v27[3] = &unk_278181470;
      objc_copyWeak(&v28, &location);
      [v18 setShowCertificateButton:1 localizedTitle:v20 localizedDescription:v17 destructive:1 handler:v27];
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
  v3 = [(MFContactMessageInteraction *)self certificateKeychainManager];
  [v3 removeTrustException];

  v4 = [(MFContactMessageInteraction *)self certificateKeychainManager];
  [v4 removeCertificateFromKeychain];

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
  v3 = [(MFContactMessageInteraction *)self certificateKeychainManager];
  [v3 addTrustException];

  [(MFContactMessageInteraction *)self updateCertificateAction];

  [(MFContactMessageInteraction *)self refreshCertificateViewControllerStatus];
}

- (void)performCertificateActionUntrust
{
  v3 = [(MFContactMessageInteraction *)self certificateKeychainManager];
  [v3 removeTrustException];

  [(MFContactMessageInteraction *)self updateCertificateAction];

  [(MFContactMessageInteraction *)self refreshCertificateViewControllerStatus];
}

- (void)installCertificateWithTrustException:(BOOL)a3
{
  if (a3)
  {
    v4 = [(MFContactMessageInteraction *)self certificateKeychainManager];
    [v4 addTrustException];
  }

  v5 = [(MFContactMessageInteraction *)self certificateKeychainManager];
  [v5 saveCertificateToKeychain];

  [(MFContactMessageInteraction *)self updateCertificateAction];

  [(MFContactMessageInteraction *)self refreshCertificateViewControllerStatus];
}

- (void)_updateHeaderView
{
  v4 = [(MFContactMessageInteraction *)self headerView];
  [(MFContactMessageInteraction *)self _configureSecureMIMEPersonHeaderView:?];

  v5 = [(MFContactMessageInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(MFContactMessageInteraction *)self headerView];
    [v5 contactMessageInteraction:self didUpdateHeaderView:v3];
  }
}

- (void)refreshCertificateViewControllerStatus
{
  v3 = [(MFContactMessageInteraction *)self certificateViewController];
  v2 = [v3 tableView];
  [v2 reloadData];
}

- (void)promptOrInstallCertificationWithBlock:(id)a3
{
  v6 = a3;
  v4 = [(MFContactMessageInteraction *)self certificateKeychainManager];
  v5 = [v4 keychainStatus];

  if (v5 == 2)
  {
    [(MFContactMessageInteraction *)self promptToReplaceCurrentCertificateWithBlock:v6];
  }

  else
  {
    v6[2]();
  }
}

- (void)promptToReplaceCurrentCertificateWithBlock:(id)a3
{
  v23 = a3;
  v4 = [(MFContactMessageInteraction *)self certificateKeychainManager];
  v5 = [v4 addressForSaving];

  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [v6 localizedStringForKey:@"OVERWRITE_CERTIFICATE_DESCRIPTION_FORMAT" value:&stru_2826D1AD8 table:@"Main"];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:v7, v5];
  v9 = MEMORY[0x277D75110];
  v10 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [v10 localizedStringForKey:@"INSTALL_CERTIFICATE" value:&stru_2826D1AD8 table:@"Main"];
  v12 = [v9 alertControllerWithTitle:v11 message:v8 preferredStyle:1];

  v13 = MEMORY[0x277D750F8];
  v14 = [MEMORY[0x277CCA8D8] mainBundle];
  v15 = [v14 localizedStringForKey:@"INSTALL" value:&stru_2826D1AD8 table:@"Main"];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __74__MFContactMessageInteraction_promptToReplaceCurrentCertificateWithBlock___block_invoke;
  v24[3] = &unk_278181B20;
  v16 = v23;
  v25 = v16;
  v17 = [v13 actionWithTitle:v15 style:0 handler:v24];
  [v12 addAction:v17];

  v18 = MEMORY[0x277D750F8];
  v19 = [MEMORY[0x277CCA8D8] mainBundle];
  v20 = [v19 localizedStringForKey:@"CANCEL" value:&stru_2826D1AD8 table:@"Main"];
  v21 = [v18 actionWithTitle:v20 style:1 handler:0];
  [v12 addAction:v21];

  v22 = [(MFContactMessageInteraction *)self certificateViewController];
  [v22 presentViewController:v12 animated:1 completion:0];
}

- (MFContactMessageInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end