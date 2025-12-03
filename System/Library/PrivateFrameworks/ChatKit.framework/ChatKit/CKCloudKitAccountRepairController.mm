@interface CKCloudKitAccountRepairController
- (Class)authenticationContextClass;
- (id)AKSecurityUpgradeContextMessages;
- (id)CDPUIDeviceToDeviceEncryptionHelperWithPresentingViewController:(id)controller;
- (id)accountStore;
- (id)authenticationContext;
- (id)primaryAppleAccount;
- (void)beginRepairWithPresentingViewController:(id)controller completion:(id)completion;
- (void)deviceToDeviceEncryptionHelper:(id)helper shouldContinueUpgradingUserToHSA2WithCompletion:(id)completion;
@end

@implementation CKCloudKitAccountRepairController

- (id)CDPUIDeviceToDeviceEncryptionHelperWithPresentingViewController:(id)controller
{
  controllerCopy = controller;
  if (CDPUIDeviceToDeviceEncryptionHelperWithPresentingViewController__onceToken != -1)
  {
    [CKCloudKitAccountRepairController CDPUIDeviceToDeviceEncryptionHelperWithPresentingViewController:];
  }

  if (CDPUIDeviceToDeviceEncryptionHelperWithPresentingViewController__sClass)
  {
    v4 = [[CDPUIDeviceToDeviceEncryptionHelperWithPresentingViewController__sClass alloc] initWithPresentingViewController:controllerCopy];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Loading weak linked class CDPUIDeviceToDeviceEncryptionHelper from CoreCDPUI failed", v7, 2u);
      }
    }

    v4 = 0;
  }

  return v4;
}

uint64_t __101__CKCloudKitAccountRepairController_CDPUIDeviceToDeviceEncryptionHelperWithPresentingViewController___block_invoke()
{
  result = MEMORY[0x193AF5EC0](@"CDPUIDeviceToDeviceEncryptionHelper", @"CoreCDPUI");
  CDPUIDeviceToDeviceEncryptionHelperWithPresentingViewController__sClass = result;
  return result;
}

- (id)accountStore
{
  if (accountStore_onceToken != -1)
  {
    [CKCloudKitAccountRepairController accountStore];
  }

  if (accountStore_sClass)
  {
    v2 = objc_alloc_init(accountStore_sClass);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Loading weak linked class ACAccountStore from Accounts failed", v5, 2u);
      }
    }

    v2 = 0;
  }

  return v2;
}

uint64_t __49__CKCloudKitAccountRepairController_accountStore__block_invoke()
{
  result = MEMORY[0x193AF5EC0](@"ACAccountStore", @"Accounts");
  accountStore_sClass = result;
  return result;
}

- (id)AKSecurityUpgradeContextMessages
{
  if (AKSecurityUpgradeContextMessages_onceToken != -1)
  {
    [CKCloudKitAccountRepairController AKSecurityUpgradeContextMessages];
  }

  v2 = AKSecurityUpgradeContextMessages_sSecurityUpgradeContext;
  if (AKSecurityUpgradeContextMessages_sSecurityUpgradeContext)
  {
    v3 = AKSecurityUpgradeContextMessages_sSecurityUpgradeContext;
  }

  else if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Loading weak linked sSecurityUpgradeContext from AuthKit failed", v6, 2u);
    }
  }

  return v2;
}

void __69__CKCloudKitAccountRepairController_AKSecurityUpgradeContextMessages__block_invoke()
{
  v0 = *MEMORY[0x193AF5ED0]("AKSecurityUpgradeContextMessages", @"AuthKit");

  objc_storeStrong(&AKSecurityUpgradeContextMessages_sSecurityUpgradeContext, v0);
}

- (id)primaryAppleAccount
{
  accountStore = [(CKCloudKitAccountRepairController *)self accountStore];
  aa_primaryAppleAccount = [accountStore aa_primaryAppleAccount];
  v4 = aa_primaryAppleAccount;
  if (aa_primaryAppleAccount)
  {
    v5 = aa_primaryAppleAccount;
  }

  else if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Loading weak primary apple account failed", v8, 2u);
    }
  }

  return v4;
}

- (Class)authenticationContextClass
{
  if (authenticationContextClass_onceToken[0] != -1)
  {
    [CKCloudKitAccountRepairController authenticationContextClass];
  }

  v2 = authenticationContextClass_sClass;
  if (authenticationContextClass_sClass)
  {
    v3 = authenticationContextClass_sClass;
  }

  else if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Loading weak linked AKAppleIDAuthenticationContext from AuthKit failed", v6, 2u);
    }
  }

  return v2;
}

uint64_t __63__CKCloudKitAccountRepairController_authenticationContextClass__block_invoke()
{
  result = MEMORY[0x193AF5EC0](@"AKAppleIDAuthenticationContext", @"AuthKit");
  authenticationContextClass_sClass = result;
  return result;
}

- (id)authenticationContext
{
  primaryAppleAccount = [(CKCloudKitAccountRepairController *)self primaryAppleAccount];
  if (!primaryAppleAccount || (v4 = [(CKCloudKitAccountRepairController *)self authenticationContextClass]) == 0)
  {
    v10 = 0;
    goto LABEL_17;
  }

  v5 = objc_alloc_init(v4);
  aa_altDSID = [primaryAppleAccount aa_altDSID];
  [v5 setAltDSID:aa_altDSID];

  altDSID = [v5 altDSID];

  if (!altDSID)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v16 = 0;
        v12 = "Loading weak linked altDSID failed";
        v13 = &v16;
LABEL_13:
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, v12, v13, 2u);
      }

LABEL_14:
    }

LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  aKSecurityUpgradeContextMessages = [(CKCloudKitAccountRepairController *)self AKSecurityUpgradeContextMessages];
  [v5 setSecurityUpgradeContext:aKSecurityUpgradeContextMessages];

  securityUpgradeContext = [v5 securityUpgradeContext];

  if (!securityUpgradeContext)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v15 = 0;
        v12 = "Loading weak linked securityUpgradeContext";
        v13 = &v15;
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v10 = v5;
LABEL_16:

LABEL_17:

  return v10;
}

- (void)beginRepairWithPresentingViewController:(id)controller completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  completionCopy = completion;
  encryptionHelper = [(CKCloudKitAccountRepairController *)self encryptionHelper];
  if (encryptionHelper)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "calling beginRepairWithPresentingViewController when repair already in flight", buf, 2u);
      }
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }

  else
  {
    authenticationContext = [(CKCloudKitAccountRepairController *)self authenticationContext];
    v11 = [(CKCloudKitAccountRepairController *)self CDPUIDeviceToDeviceEncryptionHelperWithPresentingViewController:controllerCopy];
    [(CKCloudKitAccountRepairController *)self setEncryptionHelper:v11];

    encryptionHelper2 = [(CKCloudKitAccountRepairController *)self encryptionHelper];

    v13 = IMOSLoggingEnabled();
    if (encryptionHelper2 && authenticationContext)
    {
      if (v13)
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = objc_opt_class();
          v16 = NSStringFromClass(v15);
          *buf = 138412290;
          v26 = v16;
          _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "actually beginning repair with presented view controller: %@", buf, 0xCu);
        }
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __88__CKCloudKitAccountRepairController_beginRepairWithPresentingViewController_completion___block_invoke;
      aBlock[3] = &unk_1E72F0178;
      aBlock[4] = self;
      v23 = controllerCopy;
      v24 = completionCopy;
      v17 = _Block_copy(aBlock);
      encryptionHelper3 = [(CKCloudKitAccountRepairController *)self encryptionHelper];
      [encryptionHelper3 setDelegate:self];

      encryptionHelper4 = [(CKCloudKitAccountRepairController *)self encryptionHelper];
      [encryptionHelper4 performDeviceToDeviceEncryptionStateRepairForContext:authenticationContext withCompletion:v17];
    }

    else
    {
      if (v13)
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "starting cloud kit account repair failed", buf, 2u);
        }
      }

      encryptionHelper5 = [(CKCloudKitAccountRepairController *)self encryptionHelper];
      [encryptionHelper5 setDelegate:0];

      [(CKCloudKitAccountRepairController *)self setEncryptionHelper:0];
      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, 0, 0);
      }
    }
  }
}

void __88__CKCloudKitAccountRepairController_beginRepairWithPresentingViewController_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [*(a1 + 32) encryptionHelper];
  [v6 setDelegate:0];

  [*(a1 + 32) setEncryptionHelper:0];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = @"NO";
      v12 = 138412802;
      v13 = v9;
      v14 = 2112;
      if (a2)
      {
        v10 = @"YES";
      }

      v15 = v10;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "actually completed repair with presented view controller: %@, with success: %@, error: %@", &v12, 0x20u);
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, a2, v5);
  }
}

- (void)deviceToDeviceEncryptionHelper:(id)helper shouldContinueUpgradingUserToHSA2WithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 1);
  }
}

@end