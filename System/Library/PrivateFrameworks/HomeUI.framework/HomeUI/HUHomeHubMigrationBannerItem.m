@interface HUHomeHubMigrationBannerItem
- (BOOL)shouldHideForHomes:(id)a3 withUserDefaults:(id)a4 softwareUpdateCounter:(id)a5;
- (HUHomeHubMigrationBannerItem)initWithHome:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUHomeHubMigrationBannerItem

- (HUHomeHubMigrationBannerItem)initWithHome:(id)a3
{
  v9.receiver = self;
  v9.super_class = HUHomeHubMigrationBannerItem;
  v3 = [(HUBannerItem *)&v9 initWithHome:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277D146E8] sharedDispatcher];
    v5 = [v4 homeManager];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__HUHomeHubMigrationBannerItem_initWithHome___block_invoke;
    v7[3] = &unk_277DBBEB0;
    v8 = v3;
    [v5 fetchDevicesWithCompletionHandler:v7];
  }

  return v3;
}

void __45__HUHomeHubMigrationBannerItem_initWithHome___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x277D146E8] sharedDispatcher];
      v8 = [v7 homeManager];
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Failed to fetch owner devices for homeManager: %@", &v11, 0xCu);
    }
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 72);
  *(v9 + 72) = v5;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v32[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D13BB0]];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = MEMORY[0x277D2C900];
    v8 = MEMORY[0x277D14780];
    v31 = *MEMORY[0x277D13FB8];
    v32[0] = MEMORY[0x277CBEC38];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v10 = [v8 outcomeWithResults:v9];
    v11 = [v7 futureWithResult:v10];
  }

  else
  {
    v12 = [MEMORY[0x277D146E8] sharedDispatcher];
    v9 = [v12 homeManager];

    if ([v9 isHH2MigrationAvailable] && !objc_msgSend(v9, "hasOptedToHH2"))
    {
      objc_initWeak(&buf, self);
      v19 = [MEMORY[0x277D146E8] sharedDispatcher];
      v20 = [v19 allHomesFuture];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __60__HUHomeHubMigrationBannerItem__subclass_updateWithOptions___block_invoke;
      v22[3] = &unk_277DC00F0;
      objc_copyWeak(&v23, &buf);
      v11 = [v20 flatMap:v22];
      objc_destroyWeak(&v23);

      objc_destroyWeak(&buf);
    }

    else
    {
      v13 = HFLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(HUBannerItem *)self home];
        LODWORD(buf) = 67109632;
        HIDWORD(buf) = [v14 hf_currentUserIsOwner];
        v27 = 1024;
        v28 = [v9 isHH2MigrationAvailable];
        v29 = 1024;
        v30 = [v9 hasOptedToHH2];
        _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationBannerItem-_subclass_updateWithOptions:] Should show HH2 migration banner?:NO | Owner:%{BOOL}d | migrationAvailable:%{BOOL}d | userAlreadyOptedIn:%{BOOL}d | Skipping all additional checks.", &buf, 0x14u);
      }

      v15 = MEMORY[0x277D2C900];
      v16 = MEMORY[0x277D14780];
      v24 = *MEMORY[0x277D13FB8];
      v25 = MEMORY[0x277CBEC38];
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v18 = [v16 outcomeWithResults:v17];
      v11 = [v15 futureWithResult:v18];
    }
  }

  return v11;
}

id __60__HUHomeHubMigrationBannerItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_opt_new();
  [v5 setObject:@"Home.Banners.Migration.HomeUpgradeRequired" forKeyedSubscript:*MEMORY[0x277D13DC8]];
  v6 = [WeakRetained home];
  v7 = [v6 hf_homeHubMigrationBannerTitle];
  [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v8 = [WeakRetained home];
  v9 = [v8 hf_homeHubMigrationBannerDescription];
  [v5 setObject:v9 forKeyedSubscript:*MEMORY[0x277D13E20]];

  v10 = [WeakRetained home];
  v11 = [v10 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];
  [v5 setObject:v11 forKeyedSubscript:*MEMORY[0x277D13DE8]];

  v12 = MEMORY[0x277D755D0];
  v13 = [MEMORY[0x277D75348] hf_keyColor];
  v14 = [v12 configurationWithHierarchicalColor:v13];

  v15 = [MEMORY[0x277D755D0] configurationWithScale:0];
  v16 = [v15 configurationByApplyingConfiguration:v14];
  v17 = [objc_alloc(MEMORY[0x277D14B78]) initWithSystemImageName:@"homekit" configuration:v16];
  v18 = [objc_alloc(MEMORY[0x277D14728]) initWithSymbolIconConfiguration:v17];
  [v5 setObject:v18 forKeyedSubscript:*MEMORY[0x277D13E88]];
  v19 = [WeakRetained shouldHideForHomes:v3];

  v20 = [MEMORY[0x277CCABB0] numberWithBool:v19];
  [v5 setObject:v20 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v21 = [MEMORY[0x277D2C900] futureWithResult:v5];

  return v21;
}

- (BOOL)shouldHideForHomes:(id)a3 withUserDefaults:(id)a4 softwareUpdateCounter:(id)a5
{
  v88 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if (HFForceHomeHubMigrationBannerVisible())
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "(HUHomeHubMigrationBannerItem:shouldHideForHomes:withUserDefaults:softwareUpdateCounter) Forcing home hub migration banner to be visible.", buf, 2u);
    }

    LOBYTE(v10) = 0;
    goto LABEL_51;
  }

  v11 = [(HUBannerItem *)self home];
  v12 = [v11 hf_shouldBlockCurrentUserFromHomeForRoarUpgrade];

  if (!v12)
  {
    v53 = self;
    v55 = v7;
    v56 = v8;
    v13 = [v7 na_filter:&__block_literal_global_169];
    v14 = objc_opt_new();
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v9 = v13;
    v15 = [v9 countByEnumeratingWithState:&v66 objects:v87 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v67;
      LOBYTE(v18) = 1;
      v57 = *v67;
      do
      {
        v19 = 0;
        v60 = v16;
        do
        {
          if (*v67 != v17)
          {
            objc_enumerationMutation(v9);
          }

          v20 = [*(*(&v66 + 1) + 8 * v19) hf_homePods];
          [v14 na_safeAddObjectsFromArray:v20];
          if (v18)
          {
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v21 = v20;
            v22 = [v21 countByEnumeratingWithState:&v62 objects:v86 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = v14;
              v25 = v9;
              v26 = *v63;
              while (2)
              {
                for (i = 0; i != v23; ++i)
                {
                  if (*v63 != v26)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v28 = [*(*(&v62 + 1) + 8 * i) device];
                  v29 = [v28 supportsHH2];

                  if (!v29)
                  {
                    v18 = 0;
                    goto LABEL_26;
                  }
                }

                v23 = [v21 countByEnumeratingWithState:&v62 objects:v86 count:16];
                if (v23)
                {
                  continue;
                }

                break;
              }

              v18 = 1;
LABEL_26:
              v9 = v25;
              v14 = v24;
              v17 = v57;
              v16 = v60;
            }

            else
            {
              v18 = 1;
            }
          }

          else
          {
            v18 = 0;
          }

          ++v19;
        }

        while (v19 != v16);
        v16 = [v9 countByEnumeratingWithState:&v66 objects:v87 count:16];
      }

      while (v16);
    }

    else
    {
      v18 = 1;
    }

    v8 = v56;
    if (v56)
    {
      v30 = v56;
    }

    else
    {
      v30 = [objc_alloc(MEMORY[0x277D14B28]) initWithAccessories:v14];
    }

    v31 = v30;
    v32 = v53;
    v58 = [v30 softwareUpdatesInProgress];
    v33 = [MEMORY[0x277D146E8] sharedDispatcher];
    v34 = [v33 homeManager];

    v35 = [(HUBannerItem *)v53 home];
    v36 = [v35 hf_currentUserIsOwner];

    v61 = v31;
    if (v36)
    {
      v37 = [(HUBannerItem *)v53 home];
      v38 = [v37 hf_canUpdateToHH2];

      v10 = 1;
      if (v38 && !v58 && ((v18 ^ 1) & 1) == 0)
      {
        v10 = [v34 isHH2MigrationInProgress];
      }

      v39 = HFLogForCategory();
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_50;
      }

      v52 = v58 != 0;
      v59 = [(HUBannerItem *)v53 home];
      v54 = [v59 currentUser];
      v40 = [v54 uniqueIdentifier];
      v51 = [(HUBannerItem *)v32 home];
      v50 = [v51 hf_currentUserIsOwner];
      v41 = [v34 isHH2MigrationAvailable];
      v42 = [v34 isHH2MigrationInProgress];
      v43 = [v34 hasOptedToHH2];
      *buf = 67111170;
      v71 = v10;
      v72 = 1024;
      *v73 = v38;
      *&v73[4] = 2114;
      *&v73[6] = v40;
      v44 = v40;
      v74 = 1024;
      v75 = v50;
      v76 = 1024;
      v77 = v41;
      v78 = 1024;
      v79 = v42;
      v80 = 1024;
      v81 = v43;
      v82 = 1024;
      v83 = v52;
      v8 = v56;
      v84 = 1024;
      v85 = v18;
      _os_log_impl(&dword_20CEB6000, v39, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationBannerItem-shouldHideForHomes:withUserDefaults:softwareUpdateCounter:] HH2 migration banner shouldHide = %{BOOL}d | canUpdateToHH2 = %{BOOL}d | currentUser.uniqueIdentifier: %{public}@ (isOwner = %{BOOL}d) | isHH2MigrationAvailable = %{BOOL}d | isHH2MigrationInProgress = %{BOOL}d | hasOptedToHH2 = %{BOOL}d | hasHomePodsUpdating = %{BOOL}d | allHomePodsSupportHH2 = %{BOOL}d", buf, 0x3Cu);
    }

    else
    {
      if ([v34 hasOptedToHH2] & 1) != 0 || !objc_msgSend(v34, "isHH2MigrationAvailable") || (objc_msgSend(v34, "isHH2MigrationInProgress"))
      {
        v10 = 1;
      }

      else if (v58)
      {
        v10 = 1;
      }

      else
      {
        v10 = v18 ^ 1;
      }

      v39 = HFLogForCategory();
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_50;
      }

      v45 = v58 != 0;
      v59 = [(HUBannerItem *)v53 home];
      v54 = [v59 currentUser];
      v44 = [v54 uniqueIdentifier];
      v46 = [v34 hasOptedToHH2];
      v47 = [v34 isHH2MigrationAvailable];
      v48 = [v34 isHH2MigrationInProgress];
      *buf = 67110658;
      v71 = v10;
      v72 = 2114;
      *v73 = v44;
      *&v73[8] = 1024;
      *&v73[10] = v46;
      v74 = 1024;
      v75 = v47;
      v76 = 1024;
      v77 = v48;
      v78 = 1024;
      v79 = v45;
      v8 = v56;
      v80 = 1024;
      v81 = v18;
      _os_log_impl(&dword_20CEB6000, v39, OS_LOG_TYPE_DEFAULT, "<HUHomeHubMigrationBannerItem-shouldHideForHomes:withUserDefaults:softwareUpdateCounter:> HH2 banner shouldHide = %{BOOL}d | currentUser is NOT owner (uniqueIdentifier: %{public}@) | hasOptedToHH2 = %{BOOL}d | isHH2MigrationAvailable = %{BOOL}d | hh2MigrationInProgress = %{BOOL}d | hasHomePodsUpdating = %{BOOL}d | allHomePodsSupportHH2 = %{BOOL}d", buf, 0x30u);
    }

LABEL_50:
    v7 = v55;

    goto LABEL_51;
  }

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationBannerItem:shouldHideForHomes:withUserDefaults:softwareUpdateCounter] Hiding banner because the block view is visible.", buf, 2u);
  }

  LOBYTE(v10) = 1;
LABEL_51:

  return v10;
}

uint64_t __90__HUHomeHubMigrationBannerItem_shouldHideForHomes_withUserDefaults_softwareUpdateCounter___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 currentUser];
  v4 = [v2 hf_userIsOwner:v3];

  return v4;
}

@end