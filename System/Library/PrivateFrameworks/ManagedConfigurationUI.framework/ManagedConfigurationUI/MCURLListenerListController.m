@interface MCURLListenerListController
+ (void)setOriginalURLSender:(id)a3;
- (void)_presentMDMMigrationAlert;
- (void)_pushProfileDetailsForProfileWithID:(id)a3 withCompletion:(id)a4;
- (void)_showSheetToInstallConfigurationProfileFromInstallationQueueWithCompletion:(id)a3;
- (void)_showSheetToInstallConfigurationProfileFromPurgatoryWithCompletion:(id)a3;
- (void)_showSheetToInstallConfigurationProfileWithData:(id)a3 withCompletion:(id)a4;
- (void)handleURL:(id)a3;
@end

@implementation MCURLListenerListController

+ (void)setOriginalURLSender:(id)a3
{
  v3 = [a3 copy];
  v4 = sOriginalURLSender;
  sOriginalURLSender = v3;

  MEMORY[0x2821F96F8](v3, v4);
}

- (void)_showSheetToInstallConfigurationProfileFromPurgatoryWithCompletion:(id)a3
{
  v6 = a3;
  v4 = [MEMORY[0x277D262A0] sharedConnection];
  v5 = [v4 peekProfileDataFromPurgatoryForDeviceType:{objc_msgSend(MEMORY[0x277D26290], "thisDeviceType")}];

  if (v5)
  {
    [(MCURLListenerListController *)self _showSheetToInstallConfigurationProfileWithData:v5 withCompletion:v6];
  }
}

- (void)_showSheetToInstallConfigurationProfileFromInstallationQueueWithCompletion:(id)a3
{
  v6 = a3;
  v4 = [MEMORY[0x277D262A0] sharedConnection];
  v5 = [v4 popProfileDataFromHeadOfInstallationQueue];

  if (v5)
  {
    [(MCURLListenerListController *)self _showSheetToInstallConfigurationProfileWithData:v5 withCompletion:v6];
  }
}

- (void)_showSheetToInstallConfigurationProfileWithData:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [[MCInstallProfileViewController alloc] initWithInstallableProfileData:v7 fromSource:2];

  v8 = [objc_alloc(MEMORY[0x277D03260]) initWithRootViewController:v9];
  [(MCURLListenerListController *)self presentViewController:v8 animated:1 completion:v6];
}

- (void)_pushProfileDetailsForProfileWithID:(id)a3 withCompletion:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(MCURLListenerListController *)self specifier];
    v9 = [v8 name];
    v10 = [v9 isEqualToString:v6];

    if (!v10)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v11 = [(MCURLListenerListController *)self specifiers];
      v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v26;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v26 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v25 + 1) + 8 * i);
            v17 = [v16 name];
            v18 = [v17 isEqualToString:v6];

            if (v18)
            {
              v19 = *&v16[*MEMORY[0x277D3FC98]];
              if (v19 == objc_opt_class())
              {
                v22 = [MEMORY[0x277D262A0] sharedConnection];
                v20 = [v22 installedProfileWithIdentifier:v6];

                v23 = [[MCRemoveProfileViewController alloc] initWithProfile:v20];
                [(MCURLListenerListController *)self dmc_pushViewController:v23 animated:1];
              }

              else
              {
                v20 = CreateDetailControllerInstanceWithClass();
                v21 = [(MCURLListenerListController *)self rootController];
                [v20 setRootController:v21];

                [v20 setParentController:self];
                [v20 setSpecifier:v16];
                [(MCURLListenerListController *)self showController:v20 animate:0];
              }

              goto LABEL_16;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      NSLog(&cfstr_ErrorCouldNotF.isa, v6);
    }
  }

LABEL_16:
  if (v7)
  {
    v7[2](v7);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_presentMDMMigrationAlert
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__MCURLListenerListController__presentMDMMigrationAlert__block_invoke;
  block[3] = &unk_279861968;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __56__MCURLListenerListController__presentMDMMigrationAlert__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277D03248] mdmMigrationAlert];
  [v1 dmc_presentAlert:v2 completion:0];
}

- (void)handleURL:(id)a3
{
  v7 = a3;
  v4 = [v7 objectForKey:@"sender"];
  v5 = [v7 objectForKey:@"path"];
  [objc_opt_class() setOriginalURLSender:v4];
  NSLog(&cfstr_Mcurllistenerl.isa, v5, v4);
  if ([v5 isEqualToString:*MEMORY[0x277D264C0]])
  {
    [(MCURLListenerListController *)self _showSheetToInstallConfigurationProfileFromInstallationQueueWithCompletion:0];
  }

  else if ([v5 isEqualToString:*MEMORY[0x277D24D08]])
  {
    [(MCURLListenerListController *)self _showSheetToInstallConfigurationProfileFromPurgatoryWithCompletion:0];
  }

  else if ([v5 isEqualToString:*MEMORY[0x277D24D18]])
  {
    [(MCURLListenerListController *)self _presentMDMMigrationAlert];
  }

  else if ([v5 isEqualToString:*MEMORY[0x277D264B8]])
  {
    v6 = [v7 objectForKey:@"profileID"];
    [(MCURLListenerListController *)self _pushProfileDetailsForProfileWithID:v6 withCompletion:0];
  }

  else
  {
    NSLog(&cfstr_Mcurllistenerl_0.isa, v5, v4);
  }
}

@end