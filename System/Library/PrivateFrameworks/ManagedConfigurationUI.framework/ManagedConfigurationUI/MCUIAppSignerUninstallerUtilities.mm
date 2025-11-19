@interface MCUIAppSignerUninstallerUtilities
+ (id)_provisioningProfileUUIDsForAppSigner:(id)a3;
+ (void)_asyncUninstallApplicationsForAppsigner:(id)a3 withUninstaller:(id)a4 dispatchGroup:(id)a5;
+ (void)_asyncUninstallProvisioningProfilesForAppSigner:(id)a3 withUninstaller:(id)a4 dispatchGroup:(id)a5;
+ (void)uninstallAppSigner:(id)a3 withUninstaller:(id)a4 dispatchGroup:(id)a5 completion:(id)a6;
@end

@implementation MCUIAppSignerUninstallerUtilities

+ (void)uninstallAppSigner:(id)a3 withUninstaller:(id)a4 dispatchGroup:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__MCUIAppSignerUninstallerUtilities_uninstallAppSigner_withUninstaller_dispatchGroup_completion___block_invoke;
  block[3] = &unk_279861F08;
  v22 = v13;
  v23 = a1;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v14 = v13;
  v15 = v12;
  v16 = v11;
  v17 = v10;
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

+ (void)_asyncUninstallProvisioningProfilesForAppSigner:(id)a3 withUninstaller:(id)a4 dispatchGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_global_queue(25, 0);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __115__MCUIAppSignerUninstallerUtilities__asyncUninstallProvisioningProfilesForAppSigner_withUninstaller_dispatchGroup___block_invoke;
  v15[3] = &unk_279861F58;
  v16 = v8;
  v17 = v10;
  v18 = v9;
  v19 = a1;
  v12 = v9;
  v13 = v10;
  v14 = v8;
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

+ (void)_asyncUninstallApplicationsForAppsigner:(id)a3 withUninstaller:(id)a4 dispatchGroup:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __107__MCUIAppSignerUninstallerUtilities__asyncUninstallApplicationsForAppsigner_withUninstaller_dispatchGroup___block_invoke;
  block[3] = &unk_279861DF8;
  v15 = v7;
  v16 = v9;
  v17 = v8;
  v11 = v8;
  v12 = v9;
  v13 = v7;
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

+ (id)_provisioningProfileUUIDsForAppSigner:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v3 provisioningProfiles];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 uuid];
        v12 = [v11 length];

        if (v12)
        {
          v13 = [v10 uuid];
          [v4 addObject:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

@end