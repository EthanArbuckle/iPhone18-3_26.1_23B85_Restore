@interface MCUIAppSignerUninstallerUtilities
+ (id)_provisioningProfileUUIDsForAppSigner:(id)signer;
+ (void)_asyncUninstallApplicationsForAppsigner:(id)appsigner withUninstaller:(id)uninstaller dispatchGroup:(id)group;
+ (void)_asyncUninstallProvisioningProfilesForAppSigner:(id)signer withUninstaller:(id)uninstaller dispatchGroup:(id)group;
+ (void)uninstallAppSigner:(id)signer withUninstaller:(id)uninstaller dispatchGroup:(id)group completion:(id)completion;
@end

@implementation MCUIAppSignerUninstallerUtilities

+ (void)uninstallAppSigner:(id)signer withUninstaller:(id)uninstaller dispatchGroup:(id)group completion:(id)completion
{
  signerCopy = signer;
  uninstallerCopy = uninstaller;
  groupCopy = group;
  completionCopy = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__MCUIAppSignerUninstallerUtilities_uninstallAppSigner_withUninstaller_dispatchGroup_completion___block_invoke;
  block[3] = &unk_279861F08;
  v22 = completionCopy;
  selfCopy = self;
  v19 = signerCopy;
  v20 = uninstallerCopy;
  v21 = groupCopy;
  v14 = completionCopy;
  v15 = groupCopy;
  v16 = uninstallerCopy;
  v17 = signerCopy;
  dispatch_group_notify(v15, MEMORY[0x277D85CD0], block);
}

void __97__MCUIAppSignerUninstallerUtilities_uninstallAppSigner_withUninstaller_dispatchGroup_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 64) _asyncUninstallProvisioningProfilesForAppSigner:*(a1 + 32) withUninstaller:*(a1 + 40) dispatchGroup:*(a1 + 48)];
  [*(a1 + 64) _asyncUninstallApplicationsForAppsigner:*(a1 + 32) withUninstaller:*(a1 + 40) dispatchGroup:*(a1 + 48)];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__MCUIAppSignerUninstallerUtilities_uninstallAppSigner_withUninstaller_dispatchGroup_completion___block_invoke_2;
  block[3] = &unk_279861B30;
  v2 = *(a1 + 48);
  v4 = *(a1 + 56);
  dispatch_group_notify(v2, MEMORY[0x277D85CD0], block);
}

+ (void)_asyncUninstallProvisioningProfilesForAppSigner:(id)signer withUninstaller:(id)uninstaller dispatchGroup:(id)group
{
  signerCopy = signer;
  uninstallerCopy = uninstaller;
  groupCopy = group;
  v11 = dispatch_get_global_queue(25, 0);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __115__MCUIAppSignerUninstallerUtilities__asyncUninstallProvisioningProfilesForAppSigner_withUninstaller_dispatchGroup___block_invoke;
  v15[3] = &unk_279861F58;
  v16 = signerCopy;
  v17 = groupCopy;
  v18 = uninstallerCopy;
  selfCopy = self;
  v12 = uninstallerCopy;
  v13 = groupCopy;
  v14 = signerCopy;
  dispatch_async(v11, v15);
}

void __115__MCUIAppSignerUninstallerUtilities__asyncUninstallProvisioningProfilesForAppSigner_withUninstaller_dispatchGroup___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 56) _provisioningProfileUUIDsForAppSigner:*(a1 + 32)];
  NSLog(&cfstr_Mcuiappsigneru_3.isa, [v2 count]);
  if ([v2 count])
  {
    v3 = 0;
    do
    {
      dispatch_group_enter(*(a1 + 40));
      ++v3;
    }

    while ([v2 count] > v3);
  }

  v4 = [v2 count];
  v5 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __115__MCUIAppSignerUninstallerUtilities__asyncUninstallProvisioningProfilesForAppSigner_withUninstaller_dispatchGroup___block_invoke_2;
  block[3] = &unk_279861F30;
  v8 = *(a1 + 48);
  v9 = v2;
  v10 = *(a1 + 40);
  v6 = v2;
  dispatch_apply(v4, v5, block);
}

void __115__MCUIAppSignerUninstallerUtilities__asyncUninstallProvisioningProfilesForAppSigner_withUninstaller_dispatchGroup___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  [v3 uninstallProvisioningProfileWithUUID:v4];

  v5 = *(a1 + 48);

  dispatch_group_leave(v5);
}

+ (void)_asyncUninstallApplicationsForAppsigner:(id)appsigner withUninstaller:(id)uninstaller dispatchGroup:(id)group
{
  appsignerCopy = appsigner;
  uninstallerCopy = uninstaller;
  groupCopy = group;
  v10 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __107__MCUIAppSignerUninstallerUtilities__asyncUninstallApplicationsForAppsigner_withUninstaller_dispatchGroup___block_invoke;
  block[3] = &unk_279861DF8;
  v15 = appsignerCopy;
  v16 = groupCopy;
  v17 = uninstallerCopy;
  v11 = uninstallerCopy;
  v12 = groupCopy;
  v13 = appsignerCopy;
  dispatch_async(v10, block);
}

void __107__MCUIAppSignerUninstallerUtilities__asyncUninstallApplicationsForAppsigner_withUninstaller_dispatchGroup___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) applications];
  NSLog(&cfstr_Mcuiappsigneru_4.isa, [v2 count]);
  if ([v2 count])
  {
    v3 = 0;
    do
    {
      dispatch_group_enter(*(a1 + 40));
      ++v3;
    }

    while ([v2 count] > v3);
  }

  v4 = [v2 count];
  v5 = dispatch_get_global_queue(-2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __107__MCUIAppSignerUninstallerUtilities__asyncUninstallApplicationsForAppsigner_withUninstaller_dispatchGroup___block_invoke_2;
  block[3] = &unk_279861F80;
  v8 = *(a1 + 48);
  v9 = v2;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v6 = v2;
  dispatch_apply(v4, v5, block);
}

void __107__MCUIAppSignerUninstallerUtilities__asyncUninstallApplicationsForAppsigner_withUninstaller_dispatchGroup___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  [v4 uninstallApplicationWithBundleID:v5];

  v6 = *(a1 + 48);
  v7 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  [v6 main_removeMCUIReferenceForBundleID:v7];

  v8 = *(a1 + 56);

  dispatch_group_leave(v8);
}

+ (id)_provisioningProfileUUIDsForAppSigner:(id)signer
{
  v21 = *MEMORY[0x277D85DE8];
  signerCopy = signer;
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  provisioningProfiles = [signerCopy provisioningProfiles];
  v6 = [provisioningProfiles countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(provisioningProfiles);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        uuid = [v10 uuid];
        v12 = [uuid length];

        if (v12)
        {
          uuid2 = [v10 uuid];
          [v4 addObject:uuid2];
        }
      }

      v7 = [provisioningProfiles countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

@end