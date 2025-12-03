@interface HFServiceMigrationController
+ (BOOL)homeNeedsMigration:(id)migration;
+ (BOOL)homeNeedsToDisplayMigrationOnboardingUI;
+ (id)accessoriesToMigrateFavoritesForHome:(id)home;
+ (id)primaryServicesToMigrateForHome:(id)home;
- (HFServiceMigrationController)initWithHome:(id)home;
- (id)migrateServicesToAccessory;
@end

@implementation HFServiceMigrationController

- (HFServiceMigrationController)initWithHome:(id)home
{
  homeCopy = home;
  v9.receiver = self;
  v9.super_class = HFServiceMigrationController;
  v5 = [(HFServiceMigrationController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(HFServiceMigrationController *)v5 setHome:homeCopy];
    v7 = +[HFHomeKitDispatcher sharedDispatcher];
    [(HFServiceMigrationController *)v6 setDispatcher:v7];

    [(HFServiceMigrationController *)v6 setTimeoutOverride:0];
  }

  return v6;
}

- (id)migrateServicesToAccessory
{
  v37 = *MEMORY[0x277D85DE8];
  home = [(HFServiceMigrationController *)self home];
  home2 = [(HFServiceMigrationController *)self home];
  currentUser = [home2 currentUser];
  v6 = [home homeAccessControlForUser:currentUser];
  isAdministrator = [v6 isAdministrator];

  if (isAdministrator)
  {
    v8 = objc_opt_class();
    home3 = [(HFServiceMigrationController *)self home];
    v10 = [v8 primaryServicesToMigrateForHome:home3];

    v11 = objc_opt_class();
    home4 = [(HFServiceMigrationController *)self home];
    v13 = [v11 accessoriesToMigrateFavoritesForHome:home4];

    v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
    v15 = HFLogForCategory(9uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [v10 count];
      _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "Migrating %lu services", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v35 = 0x2020000000;
    v36 = 0;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __58__HFServiceMigrationController_migrateServicesToAccessory__block_invoke;
    v30[3] = &unk_277DF7450;
    v30[4] = self;
    v16 = v13;
    v31 = v16;
    p_buf = &buf;
    v17 = v14;
    v32 = v17;
    [v10 na_each:v30];
    v18 = [MEMORY[0x277D2C900] combineAllFutures:v17];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __58__HFServiceMigrationController_migrateServicesToAccessory__block_invoke_18;
    v29[3] = &unk_277DF2720;
    v29[4] = self;
    v19 = [v18 addSuccessBlock:v29];
    timeoutOverride = [(HFServiceMigrationController *)self timeoutOverride];
    if (timeoutOverride)
    {
      v21 = 1000000000 * timeoutOverride;
    }

    else
    {
      v21 = 30000000000;
    }

    v22 = dispatch_time(0, v21);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __58__HFServiceMigrationController_migrateServicesToAccessory__block_invoke_20;
    v27[3] = &unk_277DF3D38;
    futureWithNoResult = v18;
    v28 = futureWithNoResult;
    dispatch_after(v22, MEMORY[0x277D85CD0], v27);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v24 = HFLogForCategory(9uLL);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_20D9BF000, v24, OS_LOG_TYPE_DEFAULT, "User is not an admin - skipping.", &buf, 2u);
    }

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v25 = *MEMORY[0x277D85DE8];

  return futureWithNoResult;
}

void __58__HFServiceMigrationController_migrateServicesToAccessory__block_invoke(uint64_t a1, void *a2)
{
  *&v40[5] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 accessory];
  if (v4)
  {
    v5 = +[HFHomeKitDispatcher sharedDispatcher];
    v6 = [v5 homeManager];

    v7 = [HFAccessoryBuilder alloc];
    v8 = [*(a1 + 32) home];
    v9 = [(HFAccessoryBuilder *)v7 initWithExistingObject:v4 inHome:v8];

    [(HFAccessoryBuilder *)v9 setSkipPropagateFavoriteToServices:1];
    if ([*(a1 + 40) containsObject:v4])
    {
      v10 = [v4 services];
      v11 = [v10 na_any:&__block_literal_global_57];

      v12 = HFLogForCategory(9uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v4 name];
        *buf = 67109378;
        v40[0] = v11;
        LOWORD(v40[1]) = 2112;
        *(&v40[1] + 2) = v13;
        _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "Migrating showInHomeDashboard %{BOOL}d for %@", buf, 0x12u);
      }

      [(HFAccessoryBuilder *)v9 setShowInHomeDashboard:v11];
    }

    v14 = [HFNamingComponents namingComponentFromService:v3];
    v15 = [v14 name];
    if ([v4 hf_isPowerStrip])
    {
      v16 = [v4 configuredName];

      if (v16)
      {
        v23 = *(a1 + 48);
        v24 = [(HFAccessoryBuilder *)v9 commitItem];
        [v23 addObject:v24];
LABEL_16:

        goto LABEL_17;
      }

      if (++*(*(*(a1 + 56) + 8) + 24) < 2uLL)
      {
        _HFLocalizedStringWithDefaultValue(@"HFMigrationAccessoryNamePowerStripSingle", @"HFMigrationAccessoryNamePowerStripSingle", 1);
      }

      else
      {
        HFLocalizedStringWithFormat(@"HFMigrationAccessoryNamePowerStripMultiple", @"%lu", v17, v18, v19, v20, v21, v22, *(*(*(a1 + 56) + 8) + 24));
      }
      v25 = ;

      v15 = v25;
    }

    [(HFAccessoryBuilder *)v9 setName:v15];
    v26 = MEMORY[0x277D2C900];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __58__HFServiceMigrationController_migrateServicesToAccessory__block_invoke_13;
    v31[3] = &unk_277DF7428;
    v15 = v15;
    v32 = v15;
    v27 = v6;
    v28 = *(a1 + 32);
    v33 = v27;
    v34 = v28;
    v35 = v4;
    v36 = *(a1 + 48);
    v37 = v9;
    v38 = v3;
    v29 = [v26 futureWithBlock:v31];
    [*(a1 + 48) addObject:v29];

    v24 = v32;
    goto LABEL_16;
  }

  v6 = HFLogForCategory(9uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v40 = v3;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Service cannot be migrated because it does not have an accessory: %@", buf, 0xCu);
  }

LABEL_17:

  v30 = *MEMORY[0x277D85DE8];
}

void __58__HFServiceMigrationController_migrateServicesToAccessory__block_invoke_13(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(9uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v19 = v5;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Checking name %@ with home manager", buf, 0xCu);
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = [*(a1 + 48) home];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__HFServiceMigrationController_migrateServicesToAccessory__block_invoke_14;
  v11[3] = &unk_277DF7400;
  v12 = *(a1 + 56);
  v13 = *(a1 + 32);
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v16 = *(a1 + 80);
  v17 = v3;
  v9 = v3;
  [v6 checkName:v7 inHome:v8 withValidationOptions:1 completionHandler:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __58__HFServiceMigrationController_migrateServicesToAccessory__block_invoke_14(uint64_t a1, int a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a2)
  {
    v10 = HFLogForCategory(9uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v17 = 138412546;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "Valid - Renaming %@ to primary service name %@", &v17, 0x16u);
    }

    v13 = *(a1 + 48);
    v14 = [*(a1 + 56) commitItem];
    [v13 addObject:v14];
LABEL_8:

    goto LABEL_9;
  }

  if (v8)
  {
    v14 = HFLogForCategory(9uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 64);
      v17 = 138412546;
      v18 = v16;
      v19 = 2112;
      v20 = v9;
      _os_log_error_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_ERROR, "Skip name migration on service %@ due to error %@", &v17, 0x16u);
    }

    goto LABEL_8;
  }

LABEL_9:
  [*(a1 + 72) finishWithNoResult];

  v15 = *MEMORY[0x277D85DE8];
}

void __58__HFServiceMigrationController_migrateServicesToAccessory__block_invoke_18(uint64_t a1)
{
  v2 = HFLogForCategory(9uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "Name migration complete!", v5, 2u);
  }

  v3 = [*(a1 + 32) home];
  v4 = [v3 hf_setHomeHasMigratedServicesToAccessories:1];
}

uint64_t __58__HFServiceMigrationController_migrateServicesToAccessory__block_invoke_20(uint64_t a1)
{
  result = [*(a1 + 32) isFinished];
  if ((result & 1) == 0)
  {
    v3 = HFLogForCategory(9uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_ERROR, "Name migration is taking too long to complete. Cancelling.", v4, 2u);
    }

    return [*(a1 + 32) cancel];
  }

  return result;
}

+ (id)primaryServicesToMigrateForHome:(id)home
{
  homeCopy = home;
  v4 = objc_opt_new();
  accessories = [homeCopy accessories];

  v6 = [accessories na_filter:&__block_literal_global_25_1];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__HFServiceMigrationController_primaryServicesToMigrateForHome___block_invoke_2;
  v9[3] = &unk_277DF5200;
  v7 = v4;
  v10 = v7;
  [v6 na_each:v9];

  return v7;
}

BOOL __64__HFServiceMigrationController_primaryServicesToMigrateForHome___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 hf_visibleServices];
  v3 = [v2 count] != 0;

  return v3;
}

void __64__HFServiceMigrationController_primaryServicesToMigrateForHome___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 hf_primaryService];
  if (([v5 hf_isCamera] & 1) == 0 && (objc_msgSend(v5, "hf_isMediaAccessory") & 1) == 0)
  {
    v4 = [v5 hf_isRemoteControl];
    if (v3)
    {
      if ((v4 & 1) == 0)
      {
        [*(a1 + 32) addObject:v3];
      }
    }
  }
}

+ (id)accessoriesToMigrateFavoritesForHome:(id)home
{
  accessories = [home accessories];
  v4 = [accessories na_filter:&__block_literal_global_28_1];

  v5 = [MEMORY[0x277CBEB98] setWithArray:v4];

  return v5;
}

uint64_t __69__HFServiceMigrationController_accessoriesToMigrateFavoritesForHome___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 hf_visibleServices];
  v3 = [v2 na_any:&__block_literal_global_30_3];

  return v3;
}

+ (BOOL)homeNeedsMigration:(id)migration
{
  v23 = *MEMORY[0x277D85DE8];
  migrationCopy = migration;
  hf_homeHasMigratedServicesToAccessories = [migrationCopy hf_homeHasMigratedServicesToAccessories];
  v5 = [objc_opt_class() primaryServicesToMigrateForHome:migrationCopy];
  v6 = [v5 count];

  v7 = HFForceAccessoryNamingMigration();
  currentUser = [migrationCopy currentUser];
  v9 = [migrationCopy homeAccessControlForUser:currentUser];

  isAdministrator = [v9 isAdministrator];
  v11 = HFLogForCategory(9uLL);
  v12 = hf_homeHasMigratedServicesToAccessories ^ 1;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109888;
    v16[1] = v12;
    v17 = 1024;
    v18 = v6 != 0;
    v19 = 1024;
    v20 = v7;
    v21 = 1024;
    v22 = isAdministrator;
    _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "homeNeedsMigration %{BOOL}d homeHasVisibleServicesToMigrate %{BOOL}d forcedMigrationPref %{BOOL}d isAdmin %{BOOL}d", v16, 0x1Au);
  }

  if (v6)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return (v13 & isAdministrator | v7) & 1;
}

+ (BOOL)homeNeedsToDisplayMigrationOnboardingUI
{
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  homeManager = [v3 homeManager];

  homes = [homeManager homes];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HFServiceMigrationController_homeNeedsToDisplayMigrationOnboardingUI__block_invoke;
  v7[3] = &__block_descriptor_40_e16_B16__0__HMHome_8l;
  v7[4] = self;
  LOBYTE(self) = [homes na_any:v7];

  return self;
}

BOOL __71__HFServiceMigrationController_homeNeedsToDisplayMigrationOnboardingUI__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [objc_opt_class() primaryServicesToMigrateForHome:v3];

  v5 = [v4 na_filter:&__block_literal_global_33_1];
  v6 = [v5 count] != 0;

  return v6;
}

BOOL __71__HFServiceMigrationController_homeNeedsToDisplayMigrationOnboardingUI__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 accessory];
  v3 = [v2 hf_visibleServices];
  v4 = [v3 count] > 1;

  return v4;
}

@end