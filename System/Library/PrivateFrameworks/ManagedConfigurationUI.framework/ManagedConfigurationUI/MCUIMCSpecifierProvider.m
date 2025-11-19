@interface MCUIMCSpecifierProvider
- (id)_specifierForAppSigner:(id)a3;
- (id)_specifierForBlockedApp:(id)a3;
- (id)specifiers;
- (void)_loadAppSignerFromSpecifier:(id)a3;
- (void)_presentErrorTitle:(id)a3 message:(id)a4;
- (void)_selectInstalledProfileIdentifier:(id)a3;
- (void)_selectUninstalledProfileIdentifier:(id)a3;
- (void)loadProfileFromSpecifier:(id)a3;
@end

@implementation MCUIMCSpecifierProvider

- (id)specifiers
{
  v78[1] = *MEMORY[0x277D85DE8];
  v3 = +[MCUIDataManager sharedManager];
  v73 = 0;
  v74 = 0;
  v71 = 0;
  v72 = 0;
  v69 = 0;
  v70 = 0;
  [v3 allDeviceManagementOutMDMProfileInfo:&v74 outConfigurationProfilesInfo:&v73 outUninstalledProfilesInfo:&v72 outEnterpriseAppSigners:&v71 outFreeDevAppSigners:&v70 outBlockedApplications:&v69];
  v4 = v74;
  v5 = v73;
  v6 = v72;
  v7 = v71;
  v8 = v70;
  v9 = v69;

  v10 = objc_opt_new();
  v55 = v9;
  if (v4)
  {
    v11 = [MEMORY[0x277CB8F48] defaultStore];
    v12 = [v11 dmc_visibleRemoteManagementAccounts];

    if (![v12 count])
    {
      v78[0] = v4;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:1];
      v14 = [(MCUISpecifierProvider *)self specifiersForMDMProfiles:v13];

      if (v14)
      {
        [v10 addObjectsFromArray:v14];
      }

      v9 = v55;
    }
  }

  v15 = [(MCUISpecifierProvider *)self specifiersForUninstalledProfiles:v6];
  if (v15)
  {
    [v10 addObjectsFromArray:v15];
  }

  v16 = [(MCUISpecifierProvider *)self specifiersForInstalledProfiles:v5];
  if (v16)
  {
    [v10 addObjectsFromArray:v16];
  }

  v68 = 0;
  v53 = v6;
  v54 = v5;
  v49 = v8;
  v51 = v16;
  v52 = v15;
  if ([(MCUISpecifierProvider *)self isSectionPopulated:v7 outIsPlural:&v68])
  {
    if (v68)
    {
      v17 = @"ENTERPRISE_APP_PLURAL";
    }

    else
    {
      v17 = @"ENTERPRISE_APP_SINGULAR";
    }

    v18 = MCUILocalizedString(v17);
    v19 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:v18];
    [v10 addObject:v19];

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v20 = v7;
    v21 = v7;
    v22 = [v21 countByEnumeratingWithState:&v64 objects:v77 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v65;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v65 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [(MCUIMCSpecifierProvider *)self _specifierForAppSigner:*(*(&v64 + 1) + 8 * i)];
          [v10 addObject:v26];
        }

        v23 = [v21 countByEnumeratingWithState:&v64 objects:v77 count:16];
      }

      while (v23);
    }

    v15 = v52;
    v6 = v53;
    v7 = v20;
    v8 = v49;
    v5 = v54;
    v9 = v55;
    v16 = v51;
  }

  v50 = v7;
  if ([(MCUISpecifierProvider *)self isSectionPopulated:v8 outIsPlural:&v68])
  {
    if (v68)
    {
      v27 = @"DEVELOPER_APP_PLURAL";
    }

    else
    {
      v27 = @"DEVELOPER_APP_SINGULAR";
    }

    v28 = MCUILocalizedString(v27);
    v29 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:v28];
    [v10 addObject:v29];

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v30 = v8;
    v31 = [v30 countByEnumeratingWithState:&v60 objects:v76 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v61;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v61 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = [(MCUIMCSpecifierProvider *)self _specifierForAppSigner:*(*(&v60 + 1) + 8 * j)];
          [v10 addObject:v35];
        }

        v32 = [v30 countByEnumeratingWithState:&v60 objects:v76 count:16];
      }

      while (v32);
    }

    v15 = v52;
    v6 = v53;
    v7 = v50;
    v16 = v51;
    v5 = v54;
    v9 = v55;
  }

  if ([(MCUISpecifierProvider *)self isSectionPopulated:v9 outIsPlural:&v68])
  {
    v48 = v4;
    if (v68)
    {
      v36 = @"BLOCKED_APP_PLURAL";
    }

    else
    {
      v36 = @"BLOCKED_APP";
    }

    v37 = MCUILocalizedString(v36);
    v38 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:v37];
    [v10 addObject:v38];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v39 = v9;
    v40 = [v39 countByEnumeratingWithState:&v56 objects:v75 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v57;
      do
      {
        for (k = 0; k != v41; ++k)
        {
          if (*v57 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v56 + 1) + 8 * k);
          v45 = [(MCUIMCSpecifierProvider *)self _specifierForBlockedApp:v44];
          if (v45)
          {
            [v10 addObject:v45];
          }

          else
          {
            NSLog(&cfstr_McuiMcSpecifie.isa, v44);
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v56 objects:v75 count:16];
      }

      while (v41);
    }

    v4 = v48;
    v8 = v49;
    v6 = v53;
    v5 = v54;
    v7 = v50;
    v16 = v51;
    v9 = v55;
    v15 = v52;
  }

  v46 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_specifierForAppSigner:(id)a3
{
  v4 = a3;
  v5 = [v4 identity];
  v6 = [(MCUISpecifierProvider *)self specifierWithName:v5 detail:objc_opt_class()];

  v7 = [v4 displayName];
  [v6 setProperty:v7 forKey:*MEMORY[0x277D40170]];

  if ([v4 isTrusted])
  {
    v8 = MEMORY[0x277CCABB8];
    v9 = MEMORY[0x277CCABB0];
    v10 = [v4 applications];
    v11 = [v9 numberWithInteger:{objc_msgSend(v10, "count")}];
    v12 = [v8 localizedStringFromNumber:v11 numberStyle:0];
  }

  else
  {
    v12 = MCUILocalizedString(@"NOT_TRUSTED_PROFILE");
  }

  [v6 setProperty:v12 forKey:*MEMORY[0x277D40160]];
  [v6 setProperty:v4 forKey:@"MCUIPSItemKey"];
  [v6 setControllerLoadAction:sel__loadAppSignerFromSpecifier_];
  [v6 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];

  return v6;
}

- (void)_loadAppSignerFromSpecifier:(id)a3
{
  v8 = a3;
  v4 = [v8 propertyForKey:@"MCUIPSItemKey"];
  if (v4)
  {
    v5 = [[MCUIAppSignerViewController alloc] initWithAppSigner:v4];
    v6 = [(MCUISpecifierProvider *)self delegate];
    v7 = [v6 mcuiViewController];
    [v7 dmc_pushViewController:v5 animated:1];
  }

  else
  {
    NSLog(&cfstr_McuiMcSpecifie_0.isa, v8);
  }
}

- (id)_specifierForBlockedApp:(id)a3
{
  v4 = a3;
  if ([v4 isBlocked])
  {
    v5 = [v4 bundleID];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = MCUILocalizedString(@"UNKNOWN_APP");
    }

    v9 = v7;

    v10 = [v4 name];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v9;
    }

    v13 = v12;

    v8 = [(MCUISpecifierProvider *)self specifierWithName:v13 detail:objc_opt_class()];
    v14 = [v4 misCDHash];
    [v8 setProperty:v14 forKey:@"MCUIBlockedAppCdHash"];

    v15 = [v4 misHashType];
    [v8 setProperty:v15 forKey:@"MCUIBlockedAppHashType"];

    [v8 setProperty:v13 forKey:@"MCUIBlockedAppName"];
    [v8 setProperty:v13 forKey:*MEMORY[0x277D40170]];

    v16 = [v4 iconForVariant:0];
    [v8 setProperty:v16 forKey:*MEMORY[0x277D3FFC0]];

    [v8 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)loadProfileFromSpecifier:(id)a3
{
  v4 = a3;
  v7 = [v4 propertyForKey:@"MCUIPSItemKey"];
  if (v7)
  {
    v5 = [v4 propertyForKey:@"MCUIPSInstalledKey"];

    if (v5 && [v5 BOOLValue])
    {
      v6 = [v7 identifier];
      [(MCUIMCSpecifierProvider *)self _selectInstalledProfileIdentifier:v6];
    }

    else
    {
      v6 = [v7 identifier];
      [(MCUIMCSpecifierProvider *)self _selectUninstalledProfileIdentifier:v6];
    }
  }

  else
  {
    NSLog(&cfstr_McuiMcSpecifie_1.isa, v4);
    v5 = v4;
  }
}

- (void)_selectInstalledProfileIdentifier:(id)a3
{
  v4 = MEMORY[0x277D262A0];
  v5 = a3;
  v6 = [v4 sharedConnection];
  v10 = [v6 installedProfileWithIdentifier:v5];

  v7 = [[MCRemoveProfileViewController alloc] initWithProfile:v10];
  v8 = [(MCUISpecifierProvider *)self delegate];
  v9 = [v8 mcuiViewController];
  [v9 dmc_pushViewController:v7 animated:1];
}

- (void)_selectUninstalledProfileIdentifier:(id)a3
{
  v4 = MEMORY[0x277D262A0];
  v5 = a3;
  v6 = [v4 sharedConnection];
  v7 = [v6 uninstalledProfileDataWithIdentifier:v5 targetDevice:{objc_msgSend(MEMORY[0x277D26290], "thisDeviceType")}];

  v15 = 0;
  v8 = [MEMORY[0x277D26290] profileWithData:v7 outError:&v15];
  v9 = v8;
  if (v15)
  {
    NSLog(&cfstr_Mcuimcspecifie.isa);
    v10 = MCUILocalizedString(@"PROFILE_UNABLE_TO_INSTALL");
    v11 = @"PROFILE_ERROR_DESERIALIZE_FAIL";
  }

  else
  {
    if (![v8 isUserEnrollmentProfile])
    {
      v10 = [[MCInstallProfileViewController alloc] initWithInstallableProfileData:v7 fromSource:1];
      v12 = [objc_alloc(MEMORY[0x277D03260]) initWithRootViewController:v10];
      v13 = [(MCUISpecifierProvider *)self delegate];
      v14 = [v13 mcuiViewController];
      [v14 presentViewController:v12 animated:1 completion:0];

      goto LABEL_6;
    }

    NSLog(&cfstr_Mcuimcspecifie_0.isa);
    v10 = MCUILocalizedString(@"PROFILE_UNABLE_TO_INSTALL");
    v11 = @"PROFILE_ERROR_PDUE_NOT_SUPPORTED";
  }

  v12 = MCUILocalizedString(v11);
  [(MCUIMCSpecifierProvider *)self _presentErrorTitle:v10 message:v12];
LABEL_6:
}

- (void)_presentErrorTitle:(id)a3 message:(id)a4
{
  v8 = [MEMORY[0x277D75110] alertControllerWithTitle:a3 message:a4 preferredStyle:1];
  v5 = MCUILocalizedString(@"OK");
  [v8 MCUIAddCancelActionWithTitle:v5];

  v6 = [(MCUISpecifierProvider *)self delegate];
  v7 = [v6 mcuiViewController];
  [v7 dmc_presentAlert:v8 completion:0];
}

@end