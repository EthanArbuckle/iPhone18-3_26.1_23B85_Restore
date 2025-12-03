@interface MCURLListenerListController
+ (void)setOriginalURLSender:(id)sender;
- (void)_presentMDMMigrationAlert;
- (void)_pushProfileDetailsForProfileWithID:(id)d withCompletion:(id)completion;
- (void)_showSheetToInstallConfigurationProfileFromInstallationQueueWithCompletion:(id)completion;
- (void)_showSheetToInstallConfigurationProfileFromPurgatoryWithCompletion:(id)completion;
- (void)_showSheetToInstallConfigurationProfileWithData:(id)data withCompletion:(id)completion;
- (void)handleURL:(id)l;
@end

@implementation MCURLListenerListController

+ (void)setOriginalURLSender:(id)sender
{
  v3 = [sender copy];
  v4 = sOriginalURLSender;
  sOriginalURLSender = v3;

  MEMORY[0x2821F96F8](v3, v4);
}

- (void)_showSheetToInstallConfigurationProfileFromPurgatoryWithCompletion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v5 = [mEMORY[0x277D262A0] peekProfileDataFromPurgatoryForDeviceType:{objc_msgSend(MEMORY[0x277D26290], "thisDeviceType")}];

  if (v5)
  {
    [(MCURLListenerListController *)self _showSheetToInstallConfigurationProfileWithData:v5 withCompletion:completionCopy];
  }
}

- (void)_showSheetToInstallConfigurationProfileFromInstallationQueueWithCompletion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  popProfileDataFromHeadOfInstallationQueue = [mEMORY[0x277D262A0] popProfileDataFromHeadOfInstallationQueue];

  if (popProfileDataFromHeadOfInstallationQueue)
  {
    [(MCURLListenerListController *)self _showSheetToInstallConfigurationProfileWithData:popProfileDataFromHeadOfInstallationQueue withCompletion:completionCopy];
  }
}

- (void)_showSheetToInstallConfigurationProfileWithData:(id)data withCompletion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  v9 = [[MCInstallProfileViewController alloc] initWithInstallableProfileData:dataCopy fromSource:2];

  v8 = [objc_alloc(MEMORY[0x277D03260]) initWithRootViewController:v9];
  [(MCURLListenerListController *)self presentViewController:v8 animated:1 completion:completionCopy];
}

- (void)_pushProfileDetailsForProfileWithID:(id)d withCompletion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  if (dCopy)
  {
    specifier = [(MCURLListenerListController *)self specifier];
    name = [specifier name];
    v10 = [name isEqualToString:dCopy];

    if (!v10)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      specifiers = [(MCURLListenerListController *)self specifiers];
      v12 = [specifiers countByEnumeratingWithState:&v25 objects:v29 count:16];
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
              objc_enumerationMutation(specifiers);
            }

            v16 = *(*(&v25 + 1) + 8 * i);
            name2 = [v16 name];
            v18 = [name2 isEqualToString:dCopy];

            if (v18)
            {
              v19 = *&v16[*MEMORY[0x277D3FC98]];
              if (v19 == objc_opt_class())
              {
                mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
                v20 = [mEMORY[0x277D262A0] installedProfileWithIdentifier:dCopy];

                v23 = [[MCRemoveProfileViewController alloc] initWithProfile:v20];
                [(MCURLListenerListController *)self dmc_pushViewController:v23 animated:1];
              }

              else
              {
                v20 = CreateDetailControllerInstanceWithClass();
                rootController = [(MCURLListenerListController *)self rootController];
                [v20 setRootController:rootController];

                [v20 setParentController:self];
                [v20 setSpecifier:v16];
                [(MCURLListenerListController *)self showController:v20 animate:0];
              }

              goto LABEL_16;
            }
          }

          v13 = [specifiers countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      NSLog(&cfstr_ErrorCouldNotF.isa, dCopy);
    }
  }

LABEL_16:
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
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

- (void)handleURL:(id)l
{
  lCopy = l;
  v4 = [lCopy objectForKey:@"sender"];
  v5 = [lCopy objectForKey:@"path"];
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
    v6 = [lCopy objectForKey:@"profileID"];
    [(MCURLListenerListController *)self _pushProfileDetailsForProfileWithID:v6 withCompletion:0];
  }

  else
  {
    NSLog(&cfstr_Mcurllistenerl_0.isa, v5, v4);
  }
}

@end