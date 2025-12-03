@interface CSAddParticipantsViewController
- (CSAddParticipantsViewController)initWithCKShare:(id)share containerSetupInfo:(id)info fileURL:(id)l collaborationOptionsGroups:(id)groups headerImageData:(id)data headerTitle:(id)title loadingText:(id)text supplementaryText:(id)self0 primaryButtonText:(id)self1 secondaryButtonText:(id)self2;
- (CSAddParticipantsViewControllerDelegate)delegate;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPicker:(id)picker didSelectContactProperty:(id)property;
- (void)dismissViewControllerWithError:(id)error shareURL:(id)l ckShare:(id)share;
- (void)embedViewController:(id)controller;
- (void)showContactPickerFromSourceRect:(id)rect;
- (void)viewDidLoad;
@end

@implementation CSAddParticipantsViewController

- (CSAddParticipantsViewController)initWithCKShare:(id)share containerSetupInfo:(id)info fileURL:(id)l collaborationOptionsGroups:(id)groups headerImageData:(id)data headerTitle:(id)title loadingText:(id)text supplementaryText:(id)self0 primaryButtonText:(id)self1 secondaryButtonText:(id)self2
{
  v58 = *MEMORY[0x277D85DE8];
  shareCopy = share;
  infoCopy = info;
  infoCopy2 = info;
  lCopy = l;
  lCopy2 = l;
  obj = groups;
  groupsCopy = groups;
  dataCopy = data;
  titleCopy = title;
  textCopy = text;
  supplementaryTextCopy = supplementaryText;
  v23 = dataCopy;
  buttonTextCopy = buttonText;
  secondaryButtonTextCopy = secondaryButtonText;
  v55.receiver = self;
  v55.super_class = CSAddParticipantsViewController;
  v26 = [(CSAddParticipantsViewController *)&v55 initWithNibName:0 bundle:0];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_share, share);
    objc_storeStrong(&v27->_collaborationOptionsGroups, obj);
    v28 = [[CSAddressingViewModel alloc] initWithHeaderImageData:v23 headerTitle:titleCopy loadingText:textCopy supplementaryText:supplementaryTextCopy userInfoText:0 primaryButtonText:buttonTextCopy secondaryButtonText:secondaryButtonTextCopy];
    addressingViewModel = v27->_addressingViewModel;
    v27->_addressingViewModel = v28;

    objc_storeStrong(&v27->_fileURL, lCopy);
    if (!lCopy2)
    {
LABEL_15:
      objc_storeStrong(&v27->_containerSetupInfo, infoCopy);
      [(CSAddParticipantsViewController *)v27 setTitle:titleCopy];
      goto LABEL_16;
    }

    v46 = supplementaryTextCopy;
    v49 = textCopy;
    v54 = 0;
    v30 = [MEMORY[0x277CC6438] wrapperWithURL:lCopy2 readonly:0 error:&v54];
    v31 = v54;
    sandboxingURLWrapper = v27->_sandboxingURLWrapper;
    v27->_sandboxingURLWrapper = v30;

    v33 = v27->_sandboxingURLWrapper;
    v34 = CSLogForCategory();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_INFO);
    if (v33)
    {
      if (v35)
      {
        *buf = 138412290;
        v57 = v31;
        _os_log_impl(&dword_243B1E000, v34, OS_LOG_TYPE_INFO, "Created read/write FPSandboxingURLWrapper for URL: %@", buf, 0xCu);
      }

      textCopy = v49;
      goto LABEL_14;
    }

    if (v35)
    {
      *buf = 138412290;
      v57 = v31;
      _os_log_impl(&dword_243B1E000, v34, OS_LOG_TYPE_INFO, "Failed to create read/write FPSandboxingURLWrapper for URL: %@--trying read-only", buf, 0xCu);
    }

    v53 = v31;
    v36 = [MEMORY[0x277CC6438] wrapperWithURL:lCopy2 readonly:1 error:&v53];
    obja = v53;

    v37 = v27->_sandboxingURLWrapper;
    v27->_sandboxingURLWrapper = v36;

    v38 = v27->_sandboxingURLWrapper;
    v39 = CSLogForCategory();
    v34 = v39;
    textCopy = v49;
    if (v38)
    {
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v31 = obja;
        v57 = obja;
        _os_log_impl(&dword_243B1E000, v34, OS_LOG_TYPE_INFO, "Created read-only FPSandboxingURLWrapper for URL: %@", buf, 0xCu);
LABEL_14:

        sandboxingURLWrapperError = v27->_sandboxingURLWrapperError;
        v27->_sandboxingURLWrapperError = v31;

        supplementaryTextCopy = v46;
        goto LABEL_15;
      }
    }

    else if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v31 = obja;
      [CSAddParticipantsViewController initWithCKShare:v34 containerSetupInfo:? fileURL:? collaborationOptionsGroups:? headerImageData:? headerTitle:? loadingText:? supplementaryText:? primaryButtonText:? secondaryButtonText:?];
      goto LABEL_14;
    }

    v31 = obja;
    goto LABEL_14;
  }

LABEL_16:

  v41 = *MEMORY[0x277D85DE8];
  return v27;
}

- (void)viewDidLoad
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_243B1E000, a2, OS_LOG_TYPE_ERROR, "No CloudSharingAddParticipantsViewService extension: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __46__CSAddParticipantsViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 sandboxingURLWrapperError];
  [v1 dismissViewControllerWithError:v2 shareURL:0 ckShare:0];
}

void __46__CSAddParticipantsViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2)
{
  v14 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v14 serviceViewControllerProxy];
    [v14 setPublicController:WeakRetained];
    v5 = [WeakRetained share];

    if (v5)
    {
      v6 = [WeakRetained share];
      [v4 setShare:v6];
    }

    v7 = [WeakRetained collaborationOptionsGroups];

    if (v7)
    {
      v8 = [WeakRetained collaborationOptionsGroups];
      [v4 setCollaborationOptionsGroups:v8];
    }

    v9 = [WeakRetained addressingViewModel];
    [v4 setAddressingViewModel:v9];

    v10 = [WeakRetained sandboxingURLWrapper];

    if (v10)
    {
      v11 = [WeakRetained sandboxingURLWrapper];
      [v4 setSandboxingURLWrapper:v11];
    }

    v12 = [WeakRetained containerSetupInfo];

    if (v12)
    {
      v13 = [WeakRetained containerSetupInfo];
      [v4 setContainerSetupInfo:v13];
    }
  }
}

- (void)embedViewController:(id)controller
{
  controllerCopy = controller;
  view = [controllerCopy view];
  [view setTranslatesAutoresizingMaskIntoConstraints:1];

  view2 = [controllerCopy view];
  [view2 setAutoresizingMask:18];

  view3 = [(CSAddParticipantsViewController *)self view];
  [view3 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  view4 = [controllerCopy view];
  [view4 setFrame:{v8, v10, v12, v14}];

  [(CSAddParticipantsViewController *)self addChildViewController:controllerCopy];
  view5 = [(CSAddParticipantsViewController *)self view];
  view6 = [controllerCopy view];
  [view5 addSubview:view6];

  [controllerCopy didMoveToParentViewController:self];
}

- (void)dismissViewControllerWithError:(id)error shareURL:(id)l ckShare:(id)share
{
  errorCopy = error;
  lCopy = l;
  shareCopy = share;
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __83__CSAddParticipantsViewController_dismissViewControllerWithError_shareURL_ckShare___block_invoke;
  v27 = &unk_278DE3E88;
  v28 = errorCopy;
  selfCopy = self;
  v30 = lCopy;
  v31 = shareCopy;
  v11 = shareCopy;
  v12 = lCopy;
  v13 = errorCopy;
  v14 = _Block_copy(&v24);
  v15 = [(CSAddParticipantsViewController *)self presentingViewController:v24];

  if (v15)
  {
    navigationController = [(CSAddParticipantsViewController *)self navigationController];
    if (!navigationController)
    {
      goto LABEL_6;
    }

    v17 = navigationController;
    navigationController2 = [(CSAddParticipantsViewController *)self navigationController];
    viewControllers = [navigationController2 viewControllers];
    firstObject = [viewControllers firstObject];

    if (firstObject == self)
    {
LABEL_6:
      presentingViewController = [(CSAddParticipantsViewController *)self presentingViewController];
      [presentingViewController dismissViewControllerAnimated:1 completion:v14];

      goto LABEL_7;
    }

    navigationController3 = [(CSAddParticipantsViewController *)self navigationController];
    v22 = [navigationController3 popViewControllerAnimated:1];
  }

  v14[2](v14);
LABEL_7:
}

void __83__CSAddParticipantsViewController_dismissViewControllerWithError_shareURL_ckShare___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) delegate];
  v4 = *(a1 + 40);
  v5 = v3;
  if (v2)
  {
    [v3 addParticipantsViewController:v4 failedToSaveShareWithError:*(a1 + 32)];
  }

  else
  {
    [v3 addParticipantsViewController:v4 completedSharingWithShareURL:*(a1 + 48) ckShare:*(a1 + 56)];
  }
}

- (void)showContactPickerFromSourceRect:(id)rect
{
  v23[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBDC18];
  rectCopy = rect;
  v6 = [[v4 alloc] initWithNibName:0 bundle:0];
  v7 = *MEMORY[0x277CBCFC0];
  v23[0] = *MEMORY[0x277CBD098];
  v23[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  [v6 setDisplayedPropertyKeys:v8];

  [v6 setDelegate:self];
  [v6 setAllowsEditing:0];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(emailAddresses.@count > 0) OR (phoneNumbers.@count > 0)"];
  [v6 setPredicateForEnablingContact:v9];

  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"((emailAddresses.@count == 1) AND (phoneNumbers.@count == 0)) OR ((emailAddresses.@count == 0) AND (phoneNumbers.@count == 1))"];
  [v6 setPredicateForSelectionOfContact:v10];

  view = [(CSAddParticipantsViewController *)self view];
  popoverPresentationController = [v6 popoverPresentationController];
  [popoverPresentationController setSourceView:view];

  [rectCopy CGRectValue];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  popoverPresentationController2 = [v6 popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v14, v16, v18, v20}];

  [v6 setModalPresentationStyle:6];
  [(CSAddParticipantsViewController *)self presentViewController:v6 animated:1 completion:0];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  contactCopy = contact;
  childViewController = [(CSAddParticipantsViewController *)self childViewController];
  remoteViewController = [childViewController remoteViewController];
  serviceViewControllerProxy = [remoteViewController serviceViewControllerProxy];

  [serviceViewControllerProxy userDidSelectContact:contactCopy contactProperty:0];
}

- (void)contactPicker:(id)picker didSelectContactProperty:(id)property
{
  propertyCopy = property;
  childViewController = [(CSAddParticipantsViewController *)self childViewController];
  remoteViewController = [childViewController remoteViewController];
  serviceViewControllerProxy = [remoteViewController serviceViewControllerProxy];

  [serviceViewControllerProxy userDidSelectContact:0 contactProperty:propertyCopy];
}

- (CSAddParticipantsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithCKShare:(uint64_t)a1 containerSetupInfo:(NSObject *)a2 fileURL:collaborationOptionsGroups:headerImageData:headerTitle:loadingText:supplementaryText:primaryButtonText:secondaryButtonText:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_243B1E000, a2, OS_LOG_TYPE_ERROR, "Failed to create read-only FPSandboxingURLWrapper for URL: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end