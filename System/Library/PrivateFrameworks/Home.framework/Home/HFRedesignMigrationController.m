@interface HFRedesignMigrationController
- (BOOL)_accessoryLikeItemIsHighValue:(id)a3;
- (BOOL)_accessoryLikeObjectMustUseLargerSize:(id)a3;
- (HFRedesignMigrationController)initWithHome:(id)a3;
- (double)_computeUsageThreshold:(id)a3;
- (id)_clearHomeDashboardSectionOrder;
- (id)_migrateFavorites;
- (id)_migrateRoomOrder;
- (id)_migrateServiceItemsOrderInRooms;
- (id)_migrateTileSize;
- (id)_sortAccessoriesInRoom:(id)a3 fromScoreMap:(id)a4;
- (void)_reduceScoreForRepeatingPattern:(id)a3 accessoryScores:(id)a4;
- (void)_updateScoreForAccessoriesInGroup:(id)a3 accessoryScores:(id)a4 incrementBy:(int64_t)a5 singleAccessoryIncrement:(int64_t)a6;
- (void)performMigrationIfNeeded;
- (void)performMigrationSuccessTasks;
@end

@implementation HFRedesignMigrationController

- (HFRedesignMigrationController)initWithHome:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HFRedesignMigrationController;
  v6 = [(HFRedesignMigrationController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, a3);
    v8 = [HFItemProviderUtilities _legacyFavoriteServicesForHome:v5 withLimit:-1];
    legacyFavoriteTiles = v7->_legacyFavoriteTiles;
    v7->_legacyFavoriteTiles = v8;
  }

  return v7;
}

- (void)performMigrationIfNeeded
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = [(HFRedesignMigrationController *)self home];
  LOBYTE(v3) = [v3 homeNeedsMigration:v4];

  if ((v3 & 1) == 0)
  {
    v10 = HFLogForCategory(9uLL);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v24 = [(HFRedesignMigrationController *)self home];
    *buf = 138412290;
    v30 = v24;
    v25 = "HFRedesignMigrationController: Migration not needed for home: %@";
LABEL_12:
    _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, v25, buf, 0xCu);

    goto LABEL_13;
  }

  v5 = [(HFRedesignMigrationController *)self home];
  v6 = [(HFRedesignMigrationController *)self home];
  v7 = [v6 currentUser];
  v8 = [v5 homeAccessControlForUser:v7];
  v9 = [v8 isAdministrator];

  v10 = HFLogForCategory(9uLL);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if ((v9 & 1) == 0)
  {
    if (!v11)
    {
      goto LABEL_13;
    }

    v24 = [(HFRedesignMigrationController *)self home];
    *buf = 138412290;
    v30 = v24;
    v25 = "HFRedesignMigrationController: User is not admin; skipping migration for home %@";
    goto LABEL_12;
  }

  if (v11)
  {
    v12 = [(HFRedesignMigrationController *)self home];
    *buf = 138412290;
    v30 = v12;
    _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "HFRedesignMigrationController: Performing migration for home %@", buf, 0xCu);
  }

  v13 = HFLogForCategory(9uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "HFRedesignMigrationController: Legacy favorites:", buf, 2u);
  }

  v14 = [(HFRedesignMigrationController *)self legacyFavoriteTiles];
  [v14 na_each:&__block_literal_global_238];

  v15 = MEMORY[0x277D2C900];
  v10 = [(HFRedesignMigrationController *)self _migrateFavorites];
  v28[0] = v10;
  v16 = [(HFRedesignMigrationController *)self _migrateRoomOrder];
  v28[1] = v16;
  v17 = [(HFRedesignMigrationController *)self _migrateServiceItemsOrderInRooms];
  v28[2] = v17;
  v18 = [(HFRedesignMigrationController *)self _clearHomeDashboardSectionOrder];
  v28[3] = v18;
  v19 = [(HFRedesignMigrationController *)self _migrateShowOnHomeDashboard];
  v28[4] = v19;
  v20 = [(HFRedesignMigrationController *)self _migrateTileSize];
  v28[5] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:6];
  v22 = [v15 chainFutures:v21];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __57__HFRedesignMigrationController_performMigrationIfNeeded__block_invoke_4;
  v27[3] = &unk_277DF5938;
  v27[4] = self;
  v23 = [v22 flatMap:v27];
  [(HFRedesignMigrationController *)self setMigrationFuture:v23];

LABEL_13:
  v26 = *MEMORY[0x277D85DE8];
}

void __57__HFRedesignMigrationController_performMigrationIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory(9uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "%@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

id __57__HFRedesignMigrationController_performMigrationIfNeeded__block_invoke_4(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(9uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) home];
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "HFRedesignMigrationController: Completed migration for home %@", &v9, 0xCu);
  }

  v4 = [*(a1 + 32) home];
  v5 = [v4 hf_setHomeHasMigratedForRedesign:1];

  v6 = [MEMORY[0x277D2C900] futureWithNoResult];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)performMigrationSuccessTasks
{
  objc_initWeak(&location, self);
  v3 = [(HFRedesignMigrationController *)self migrationFuture];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __61__HFRedesignMigrationController_performMigrationSuccessTasks__block_invoke;
  v8 = &unk_277DFF118;
  objc_copyWeak(&v9, &location);
  v4 = [v3 addSuccessBlock:&v5];

  [(HFRedesignMigrationController *)self setMigrationFuture:0, v5, v6, v7, v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __61__HFRedesignMigrationController_performMigrationSuccessTasks__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 postNotificationName:@"HFRedesignMigrationTileSizeHasUpdatedNotification" object:WeakRetained];
}

- (id)_migrateFavorites
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [(HFRedesignMigrationController *)self legacyFavoriteTiles];
  v4 = [v3 count];

  v5 = [(HFRedesignMigrationController *)self home];
  v6 = [v5 hf_accessoryLikeObjects];
  v7 = [v6 count];

  if (v7)
  {
    v8 = v4 / v7;
    if (v8 >= 0.33 || fabsf(v8 + -0.33) < 0.00000011921)
    {
      v10 = 6;
      if (v4 < 6)
      {
        v10 = v4;
      }

      if (v7 <= 0x11)
      {
        v9 = 0;
      }

      else
      {
        v9 = v10;
      }
    }

    else if (v4 >= 0xC)
    {
      v9 = 12;
    }

    else
    {
      v9 = v4;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = HFLogForCategory(9uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v29 = v9;
    v30 = 2048;
    v31 = v4;
    v32 = 2048;
    v33 = v7;
    _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "HFRedesignMigrationController: Migrating %lu favorites (%lu previous favorites, %lu accessories total)", buf, 0x20u);
  }

  v12 = [MEMORY[0x277CBEB18] array];
  if (v9)
  {
    v14 = 0;
    *&v13 = 138412290;
    v27 = v13;
    do
    {
      v15 = [(HFRedesignMigrationController *)self legacyFavoriteTiles];
      v16 = [v15 count];

      if (v14 >= v16)
      {
        break;
      }

      v17 = [(HFRedesignMigrationController *)self legacyFavoriteTiles];
      v18 = [v17 objectAtIndexedSubscript:v14];
      v19 = &unk_28252A588;
      if ([v18 conformsToProtocol:v19])
      {
        v20 = v18;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;

      v22 = HFLogForCategory(9uLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v27;
        v29 = v21;
        _os_log_impl(&dword_20D9BF000, v22, OS_LOG_TYPE_DEFAULT, "HFRedesignMigrationController: Migrating favorite: %@", buf, 0xCu);
      }

      v23 = [v21 hf_updateIsFavorite:1];
      [v12 addObject:v23];

      ++v14;
    }

    while (v9 != v14);
  }

  if ([v12 count])
  {
    [MEMORY[0x277D2C900] combineAllFutures:v12];
  }

  else
  {
    [MEMORY[0x277D2C900] futureWithNoResult];
  }
  v24 = ;

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)_migrateRoomOrder
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = [(HFRedesignMigrationController *)self home];
  v4 = [v3 hf_reorderableRoomsList];
  v5 = [v4 mutableCopy];

  v6 = [HFReorderableHomeKitItemList alloc];
  v7 = [(HFRedesignMigrationController *)self home];
  v8 = [(HFReorderableHomeKitItemList *)v6 initWithApplicationDataContainer:v7 category:@"homeRooms_legacy"];
  v9 = [(HFReorderableHomeKitItemList *)v8 mutableCopy];

  v10 = HFLogForCategory(9uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 sortedHomeKitObjectIdentifiers];
    *buf = 138412290;
    v40 = v11;
    _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "HFRedesignMigrationController: Legacy room order: %@", buf, 0xCu);
  }

  if ([v9 isEmpty])
  {
    v12 = [v5 sortedHomeKitObjectIdentifiers];
    [v9 setSortedHomeKitIdentifiers:v12];

    v13 = [v9 saveWithSender:self];
  }

  v32 = v5;
  v14 = [MEMORY[0x277CBEB38] dictionary];
  v15 = [(HFRedesignMigrationController *)self legacyFavoriteTiles];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __50__HFRedesignMigrationController__migrateRoomOrder__block_invoke;
  v37[3] = &unk_277E02F00;
  v16 = v14;
  v38 = v16;
  [v15 enumerateObjectsUsingBlock:v37];

  v17 = [(HFRedesignMigrationController *)self home];
  v18 = [v17 hf_allRooms];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __50__HFRedesignMigrationController__migrateRoomOrder__block_invoke_2;
  v33[3] = &unk_277E02F28;
  v31 = v16;
  v34 = v31;
  v35 = self;
  v30 = v9;
  v36 = v30;
  v19 = [v18 sortedArrayUsingComparator:v33];

  v20 = HFLogForCategory(9uLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_DEFAULT, "HFRedesignMigrationController: Migrating to room order:", buf, 2u);
  }

  if ([v19 count])
  {
    v21 = 0;
    do
    {
      v22 = HFLogForCategory(9uLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v19 objectAtIndexedSubscript:v21];
        v24 = [v23 name];
        v25 = [v19 objectAtIndexedSubscript:v21];
        v26 = [v25 uniqueIdentifier];
        *buf = 134218498;
        v40 = v21;
        v41 = 2112;
        v42 = v24;
        v43 = 2112;
        v44 = v26;
        _os_log_impl(&dword_20D9BF000, v22, OS_LOG_TYPE_DEFAULT, "HFRedesignMigrationController: %lu: %@ (%@)", buf, 0x20u);
      }

      ++v21;
    }

    while (v21 < [v19 count]);
  }

  [v32 setSortedHomeKitObjects:v19];
  v27 = [v32 saveWithSender:self];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

void __50__HFRedesignMigrationController__migrateRoomOrder__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a2;
  if ([v17 conformsToProtocol:&unk_28252A588])
  {
    v5 = v17;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 hf_safeRoom];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [v7 uniqueIdentifier];
    v10 = [v8 objectForKeyedSubscript:v9];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [MEMORY[0x277CBEB18] array];
    }

    v13 = v12;

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [v13 addObject:v14];

    v15 = *(a1 + 32);
    v16 = [v7 uniqueIdentifier];
    [v15 setObject:v13 forKeyedSubscript:v16];
  }
}

uint64_t __50__HFRedesignMigrationController__migrateRoomOrder__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 uniqueIdentifier];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v9 valueForKeyPath:@"@avg.self"];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = MEMORY[0x277CCABB0];
    v14 = [*(a1 + 40) legacyFavoriteTiles];
    v12 = [v13 numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
  }

  v15 = *(a1 + 32);
  v16 = [v6 uniqueIdentifier];
  v17 = [v15 objectForKeyedSubscript:v16];
  v18 = [v17 valueForKeyPath:@"@avg.self"];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v21 = MEMORY[0x277CCABB0];
    v22 = [*(a1 + 40) legacyFavoriteTiles];
    v20 = [v21 numberWithUnsignedInteger:{objc_msgSend(v22, "count")}];
  }

  v23 = [v12 compare:v20];
  if (!v23)
  {
    v24 = *(a1 + 32);
    v25 = [v5 uniqueIdentifier];
    v26 = [v24 objectForKeyedSubscript:v25];
    v27 = [v26 objectAtIndex:0];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v30 = MEMORY[0x277CCABB0];
      v31 = [*(a1 + 40) legacyFavoriteTiles];
      v29 = [v30 numberWithUnsignedInteger:{objc_msgSend(v31, "count")}];
    }

    v32 = *(a1 + 32);
    v33 = [v6 uniqueIdentifier];
    v34 = [v32 objectForKeyedSubscript:v33];
    v35 = [v34 objectAtIndex:0];
    v36 = v35;
    if (v35)
    {
      v37 = v35;
    }

    else
    {
      v38 = MEMORY[0x277CCABB0];
      v39 = [*(a1 + 40) legacyFavoriteTiles];
      v37 = [v38 numberWithUnsignedInteger:{objc_msgSend(v39, "count")}];
    }

    v23 = [v29 compare:v37];
    if (!v23)
    {
      v40 = MEMORY[0x277CCABB0];
      v41 = [v5 hf_accessoryLikeObjects];
      v42 = [v40 numberWithUnsignedInteger:{objc_msgSend(v41, "count")}];

      v43 = MEMORY[0x277CCABB0];
      v44 = [v6 hf_accessoryLikeObjects];
      v45 = [v43 numberWithUnsignedInteger:{objc_msgSend(v44, "count")}];

      v23 = [v45 compare:v42];
      if (!v23)
      {
        v46 = [*(a1 + 48) sortedHomeKitObjectComparator];
        v23 = (v46)[2](v46, v5, v6);
      }
    }
  }

  return v23;
}

- (id)_clearHomeDashboardSectionOrder
{
  v3 = [(HFRedesignMigrationController *)self home];
  v4 = [v3 hf_reorderableDashboardSectionList];

  [v4 setSortedItems:MEMORY[0x277CBEBF8]];
  v5 = [v4 saveWithSender:self];

  return v5;
}

- (id)_migrateServiceItemsOrderInRooms
{
  v76 = *MEMORY[0x277D85DE8];
  v51 = +[HFAccessoryListUtilities sortedAccessoryTypeGroups];
  v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v52 = self;
  v3 = [(HFRedesignMigrationController *)self home];
  v4 = [v3 hf_allRooms];

  obj = v4;
  v46 = [v4 countByEnumeratingWithState:&v65 objects:v75 count:16];
  if (v46)
  {
    v45 = *v66;
    do
    {
      v5 = 0;
      do
      {
        if (*v66 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v65 + 1) + 8 * v5);
        v7 = [[HFReorderableHomeKitItemList alloc] initWithApplicationDataContainer:v6 category:@"roomServices_legacy"];
        v8 = [(HFReorderableHomeKitItemList *)v7 mutableCopy];

        v9 = HFLogForCategory(9uLL);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 sortedHomeKitObjectIdentifiers];
          *buf = 138412546;
          v72 = v10;
          v73 = 2112;
          v74 = v6;
          _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "HFRedesignMigrationController: Legacy service item order: %@ for room %@", buf, 0x16u);
        }

        v48 = v5;

        if ([v8 isEmpty])
        {
          v11 = [v6 hf_reorderableServicesList];
          v12 = [v11 sortedHomeKitObjectIdentifiers];
          [v8 setSortedHomeKitIdentifiers:v12];

          v13 = [v8 saveWithSender:v52];
        }

        v14 = [v6 hf_accessoryLikeObjects];
        v15 = [v14 allObjects];
        v16 = [v15 na_filter:&__block_literal_global_148];
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __65__HFRedesignMigrationController__migrateServiceItemsOrderInRooms__block_invoke_2;
        v63[3] = &unk_277E02F50;
        v47 = v8;
        v64 = v47;
        v17 = [v16 sortedArrayUsingComparator:v63];

        v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v49 = v17;
        v19 = [v49 countByEnumeratingWithState:&v59 objects:v70 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v60;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v60 != v21)
              {
                objc_enumerationMutation(v49);
              }

              v23 = *(*(&v59 + 1) + 8 * i);
              v24 = [v23 accessoryType];
              v57[0] = MEMORY[0x277D85DD0];
              v57[1] = 3221225472;
              v57[2] = __65__HFRedesignMigrationController__migrateServiceItemsOrderInRooms__block_invoke_3;
              v57[3] = &unk_277DF4CE8;
              v25 = v24;
              v58 = v25;
              v26 = [v51 na_firstObjectPassingTest:v57];
              if (!v26)
              {
                v26 = +[HFAccessoryTypeGroup otherAccessoryTypeGroup];
              }

              v27 = [v26 uniqueIdentifier];
              v28 = [v27 UUIDString];

              if (v28)
              {
                v29 = [v18 objectForKeyedSubscript:v28];
                if (!v29)
                {
                  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  [v18 setValue:v29 forKey:v28];
                }

                [v29 addObject:v23];
              }

              else
              {
                v29 = HFLogForCategory(9uLL);
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v72 = v25;
                  v73 = 2112;
                  v74 = v23;
                  _os_log_impl(&dword_20D9BF000, v29, OS_LOG_TYPE_DEFAULT, "HFRedesignMigrationController: Couldn't find an accessory type group for this accessory, skipping. %@ %@", buf, 0x16u);
                }
              }
            }

            v20 = [v49 countByEnumeratingWithState:&v59 objects:v70 count:16];
          }

          while (v20);
        }

        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v30 = v18;
        v31 = [v30 countByEnumeratingWithState:&v53 objects:v69 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v54;
          do
          {
            for (j = 0; j != v32; ++j)
            {
              if (*v54 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v53 + 1) + 8 * j);
              v36 = [v30 objectForKeyedSubscript:v35];
              v37 = [v36 na_map:&__block_literal_global_171_0];
              v38 = [@"roomServicesGroupedByType-" stringByAppendingString:v35];
              v39 = [(HFReorderableHomeKitItemList *)[HFMutableReorderableHomeKitItemList alloc] initWithApplicationDataContainer:v6 category:v38];
              [(HFMutableReorderableHomeKitItemList *)v39 setSortedHomeKitObjects:v37];
              v40 = [(HFMutableReorderableHomeKitItemList *)v39 saveWithSender:v52];
              [v50 addObject:v40];
            }

            v32 = [v30 countByEnumeratingWithState:&v53 objects:v69 count:16];
          }

          while (v32);
        }

        v5 = v48 + 1;
      }

      while (v48 + 1 != v46);
      v46 = [obj countByEnumeratingWithState:&v65 objects:v75 count:16];
    }

    while (v46);
  }

  v41 = [MEMORY[0x277D2C900] combineAllFutures:v50];

  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

uint64_t __65__HFRedesignMigrationController__migrateServiceItemsOrderInRooms__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 homeKitObject];
  v3 = [v2 conformsToProtocol:&unk_282562908];

  return v3;
}

uint64_t __65__HFRedesignMigrationController__migrateServiceItemsOrderInRooms__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 sortedHomeKitObjectComparator];
  v8 = [v6 homeKitObject];

  v9 = [v5 homeKitObject];

  v10 = (v7)[2](v7, v8, v9);
  return v10;
}

- (void)_updateScoreForAccessoriesInGroup:(id)a3 accessoryScores:(id)a4 incrementBy:(int64_t)a5 singleAccessoryIncrement:(int64_t)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = [v10 objectForKey:v15];
        v17 = [v16 integerValue];
        if ([v9 count] == 1)
        {
          v18 = a6;
        }

        else
        {
          v18 = 0;
        }

        v19 = [MEMORY[0x277CCABB0] numberWithInteger:v17 + a5 + v18];

        [v10 setObject:v19 forKey:v15];
      }

      v12 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)_accessoryLikeItemIsHighValue:(id)a3
{
  v14[5] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CD0E58];
  v4 = a3;
  v5 = [HFAccessoryType serviceType:v3];
  v6 = [HFAccessoryType serviceType:*MEMORY[0x277CD0EB0], v5];
  v14[1] = v6;
  v7 = [HFAccessoryType serviceType:*MEMORY[0x277CD0E60]];
  v14[2] = v7;
  v8 = [HFAccessoryType serviceType:*MEMORY[0x277CD0ED8]];
  v14[3] = v8;
  v9 = [HFAccessoryType serviceType:*MEMORY[0x277CD0F30]];
  v14[4] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:5];

  v11 = [v4 accessoryType];

  LOBYTE(v4) = [v10 containsObject:v11];
  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)_accessoryLikeObjectMustUseLargerSize:(id)a3
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CD0E60];
  v4 = a3;
  v5 = [HFAccessoryType serviceType:v3];
  v11[0] = v5;
  v6 = [HFAccessoryType serviceType:*MEMORY[0x277CD0F30]];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  v8 = [v4 accessoryType];

  LOBYTE(v5) = [v7 containsObject:v8];
  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)_sortAccessoriesInRoom:(id)a3 fromScoreMap:(id)a4
{
  v5 = a4;
  v6 = [a3 hf_reorderableServicesList];
  v7 = [v6 sortedHomeKitObjectComparator];

  v8 = [v5 keyEnumerator];

  v9 = [v8 allObjects];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__HFRedesignMigrationController__sortAccessoriesInRoom_fromScoreMap___block_invoke;
  v13[3] = &unk_277E02F98;
  v14 = v7;
  v10 = v7;
  v11 = [v9 sortedArrayUsingComparator:v13];

  return v11;
}

uint64_t __69__HFRedesignMigrationController__sortAccessoriesInRoom_fromScoreMap___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 homeKitObject];
  v7 = [v5 homeKitObject];

  v8 = (*(v4 + 16))(v4, v6, v7);
  return v8;
}

- (double)_computeUsageThreshold:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      v8 = 0.0;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = [v4 objectForKey:{*(*(&v16 + 1) + 8 * i), v16}];
          [v10 doubleValue];
          v12 = v11;

          v8 = v8 + v12;
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 0.0;
    }

    v13 = v8 / [v4 count] * 1.2;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)_reduceScoreForRepeatingPattern:(id)a3 accessoryScores:(id)a4
{
  v10 = a3;
  v5 = a4;
  v6 = [v5 objectForKey:v10];
  v7 = [v6 integerValue];

  if (v7 >= 1)
  {
    v8 = 5;
    if (v7 > 5)
    {
      v8 = v7;
    }

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:v8 - 5];
    [v5 setObject:v9 forKey:v10];
  }
}

- (id)_migrateTileSize
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__HFRedesignMigrationController__migrateTileSize__block_invoke;
  aBlock[3] = &unk_277E02FC0;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [(HFRedesignMigrationController *)self home];
  v5 = [v4 hf_accessoryRepresentableUsageCountsByRoomWithFilter:&__block_literal_global_180_1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__HFRedesignMigrationController__migrateTileSize__block_invoke_3;
  v9[3] = &unk_277E03030;
  v9[4] = self;
  v10 = v3;
  v6 = v3;
  v7 = [v5 flatMap:v9];

  return v7;
}

BOOL __49__HFRedesignMigrationController__migrateTileSize__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) _accessoryLikeObjectMustUseLargerSize:v5])
  {
    v7 = 1;
  }

  else
  {
    v8 = [*(a1 + 32) legacyFavoriteTiles];
    v9 = [v5 homeKitObject];
    if ([v8 containsObject:v9])
    {
    }

    else
    {
      v10 = [*(a1 + 32) _accessoryLikeItemIsHighValue:v5];

      if ((v10 & 1) == 0)
      {
        v7 = 0;
        goto LABEL_8;
      }
    }

    v11 = [v6 objectForKey:v5];
    v12 = [v11 integerValue];

    v7 = v12 > 1;
  }

LABEL_8:

  return v7;
}

id __49__HFRedesignMigrationController__migrateTileSize__block_invoke_3(uint64_t a1, void *a2)
{
  v135 = *MEMORY[0x277D85DE8];
  v93 = a2;
  v3 = 0x277CCA000uLL;
  v96 = [MEMORY[0x277CCAB00] mapTableWithStrongToStrongObjects];
  v4 = HFLogForCategory(9uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Starting Tile Size Migration", buf, 2u);
  }

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v5 = [*(a1 + 32) home];
  v6 = [v5 hf_allRooms];

  obj = v6;
  v94 = [v6 countByEnumeratingWithState:&v123 objects:v134 count:16];
  if (v94)
  {
    v92 = *v124;
    *&v7 = 138412546;
    v89 = v7;
    do
    {
      v8 = 0;
      do
      {
        if (*v124 != v92)
        {
          objc_enumerationMutation(obj);
        }

        v95 = v8;
        v9 = *(*(&v123 + 1) + 8 * v8);
        v104 = [v93 objectForKey:{v9, v89}];
        [*(a1 + 32) _computeUsageThreshold:?];
        v11 = v10;
        v12 = [*(v3 + 2816) mapTableWithStrongToStrongObjects];
        v98 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v102 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v100 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v97 = v9;
        v13 = [v9 hf_accessoryLikeObjects];
        v14 = [v13 na_filter:&__block_literal_global_185_0];

        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v119 objects:v133 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v120;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v120 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v119 + 1) + 8 * i);
              if ([v20 hf_effectiveShowInHomeDashboard])
              {
                v21 = [*(a1 + 32) legacyFavoriteTiles];
                v22 = [v20 homeKitObject];
                v23 = [v21 containsObject:v22];

                if (v23)
                {
                  [v98 addObject:v20];
                }

                if ([*(a1 + 32) _accessoryLikeItemIsHighValue:v20])
                {
                  [v102 addObject:v20];
                }

                v24 = [v104 objectForKey:v20];
                [v24 doubleValue];
                v26 = v25;

                if (v26 > v11)
                {
                  [v100 addObject:v20];
                }

                v27 = [v20 accessoryType];
                v28 = [v12 objectForKey:v27];
                v29 = v28;
                if (v28)
                {
                  v30 = v28;
                }

                else
                {
                  v30 = objc_alloc_init(MEMORY[0x277CBEB58]);
                }

                v31 = v30;

                [v31 addObject:v20];
                v32 = [v20 accessoryType];
                [v12 setObject:v31 forKey:v32];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v119 objects:v133 count:16];
          }

          while (v17);
        }

        v3 = 0x277CCA000uLL;
        v33 = [MEMORY[0x277CCAB00] mapTableWithStrongToStrongObjects];
        if ([v15 count] >= 2)
        {
          [*(a1 + 32) _updateScoreForAccessoriesInGroup:v98 accessoryScores:v33 incrementBy:1 singleAccessoryIncrement:3];
        }

        [*(a1 + 32) _updateScoreForAccessoriesInGroup:v102 accessoryScores:v33 incrementBy:2 singleAccessoryIncrement:2];
        [*(a1 + 32) _updateScoreForAccessoriesInGroup:v100 accessoryScores:v33 incrementBy:1 singleAccessoryIncrement:1];
        v34 = HFLogForCategory(9uLL);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [v97 name];
          *buf = v89;
          v130 = v97;
          v131 = 2112;
          v132 = v35;
          _os_log_impl(&dword_20D9BF000, v34, OS_LOG_TYPE_DEFAULT, "Tile Size Migration: Room: %@ %@", buf, 0x16u);
        }

        v36 = HFLogForCategory(9uLL);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v130 = v98;
          _os_log_impl(&dword_20D9BF000, v36, OS_LOG_TYPE_DEFAULT, "Tile Size Migration: favoriteAccessories: %@", buf, 0xCu);
        }

        v37 = HFLogForCategory(9uLL);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v130 = v102;
          _os_log_impl(&dword_20D9BF000, v37, OS_LOG_TYPE_DEFAULT, "Tile Size Migration: highValueAccessories: %@", buf, 0xCu);
        }

        v38 = HFLogForCategory(9uLL);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v130 = v100;
          _os_log_impl(&dword_20D9BF000, v38, OS_LOG_TYPE_DEFAULT, "Tile Size Migration: mostUsedAccessories: %@", buf, 0xCu);
        }

        v39 = HFLogForCategory(9uLL);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v130 = v12;
          _os_log_impl(&dword_20D9BF000, v39, OS_LOG_TYPE_DEFAULT, "Tile Size Migration: accessoriesByType: %@", buf, 0xCu);
        }

        if ([v12 count] >= 2)
        {
          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
          v40 = v12;
          v41 = [v40 countByEnumeratingWithState:&v115 objects:v128 count:16];
          if (v41)
          {
            v42 = v41;
            v91 = v33;
            v43 = 0;
            v44 = 0;
            v45 = *v116;
            while (2)
            {
              for (j = 0; j != v42; ++j)
              {
                if (*v116 != v45)
                {
                  objc_enumerationMutation(v40);
                }

                v47 = [v40 objectForKey:*(*(&v115 + 1) + 8 * j)];
                if ([v47 count] == 1)
                {
                  if (v44)
                  {

                    v44 = 0;
                    v33 = v91;
                    v3 = 0x277CCA000;
                    goto LABEL_56;
                  }

                  v44 = [v47 anyObject];
                }

                else if ([v47 count] > 1)
                {
                  ++v43;
                }
              }

              v42 = [v40 countByEnumeratingWithState:&v115 objects:v128 count:16];
              if (v42)
              {
                continue;
              }

              break;
            }

            v48 = v44;
            if (v44)
            {
              v33 = v91;
              v3 = 0x277CCA000;
              if (v43 < 1)
              {
                goto LABEL_57;
              }

              v49 = [v91 objectForKey:v44];
              v40 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v49, "integerValue") + 1}];

              [v91 setObject:v40 forKey:v44];
LABEL_56:

              v48 = v44;
            }

            else
            {
              v33 = v91;
              v3 = 0x277CCA000;
            }

LABEL_57:

            goto LABEL_58;
          }

          v44 = 0;
          goto LABEL_56;
        }

LABEL_58:
        v111[0] = MEMORY[0x277D85DD0];
        v111[1] = 3221225472;
        v111[2] = __49__HFRedesignMigrationController__migrateTileSize__block_invoke_186;
        v111[3] = &unk_277E03008;
        v50 = *(a1 + 32);
        v112 = v33;
        v113 = v50;
        v114 = v12;
        v51 = v12;
        v52 = v33;
        [v15 na_each:v111];
        [v96 setObject:v52 forKey:v97];

        v8 = v95 + 1;
      }

      while (v95 + 1 != v94);
      v53 = [obj countByEnumeratingWithState:&v123 objects:v134 count:16];
      v94 = v53;
    }

    while (v53);
  }

  v54 = [*(a1 + 32) home];
  v55 = [v54 hf_orderedRooms];

  v56 = 0;
  while (1)
  {
    v57 = [v55 count] ? objc_msgSend(v55, "count") - 1 : 0;
    if (v56 >= v57)
    {
      break;
    }

    v58 = [v55 objectAtIndexedSubscript:v56];
    v59 = [v55 objectAtIndexedSubscript:++v56];
    v60 = [v96 objectForKey:v58];
    v61 = [v96 objectForKey:v59];
    if ([v60 count] && objc_msgSend(v61, "count"))
    {
      v62 = [*(a1 + 32) _sortAccessoriesInRoom:v58 fromScoreMap:v60];
      v63 = [*(a1 + 32) _sortAccessoriesInRoom:v59 fromScoreMap:v61];
      v105 = v62;
      v64 = [v62 firstObject];
      v65 = [v63 firstObject];
      if ((*(*(a1 + 40) + 16))() && (*(*(a1 + 40) + 16))() && ([*(a1 + 32) _accessoryLikeObjectMustUseLargerSize:v65] & 1) == 0)
      {
        [*(a1 + 32) _reduceScoreForRepeatingPattern:v65 accessoryScores:v61];
      }
    }
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v66 = v55;
  v103 = [v66 countByEnumeratingWithState:&v107 objects:v127 count:16];
  if (!v103)
  {

    v67 = 0;
LABEL_105:
    v83 = [v67 firstObject];
    v84 = [v83 hf_setTileSize:@"HFTileResizableSizeMedium"];

    goto LABEL_106;
  }

  v67 = 0;
  v68 = 0;
  v101 = *v108;
  v99 = v66;
  do
  {
    for (k = 0; k != v103; ++k)
    {
      v106 = v67;
      if (*v108 != v101)
      {
        objc_enumerationMutation(v99);
      }

      v70 = *(*(&v107 + 1) + 8 * k);
      v71 = [v96 objectForKey:v70];
      v72 = [*(a1 + 32) _sortAccessoriesInRoom:v70 fromScoreMap:v71];
      if ([v72 count])
      {
        v73 = 0;
        do
        {
          v74 = [v72 objectAtIndexedSubscript:v73];
          if (v73 == [v72 count] - 2 && objc_msgSend(v72, "count") >= 4)
          {
            [*(a1 + 32) _reduceScoreForRepeatingPattern:v74 accessoryScores:v71];
          }

          if (v73 == [v72 count] - 1 && objc_msgSend(v72, "count") >= 2)
          {
            v75 = *(a1 + 40);
            v76 = [v72 objectAtIndexedSubscript:v73 - 1];
            LOBYTE(v75) = (*(v75 + 16))(v75, v76, v71);

            if ((v75 & 1) == 0)
            {
              [v71 setObject:&unk_2825254D0 forKey:v74];
            }
          }

          if ((*(*(a1 + 40) + 16))())
          {
            v77 = [v74 hf_setTileSize:@"HFTileResizableSizeMedium"];
            v78 = v73 + 1;
            if ([v72 count] > v73 + 1)
            {
              v79 = [v72 objectAtIndexedSubscript:v73 + 1];
              [*(a1 + 32) _reduceScoreForRepeatingPattern:v79 accessoryScores:v71];
            }

            if ([v72 count] > v73 + 2)
            {
              v80 = [v72 objectAtIndexedSubscript:?];
              [*(a1 + 32) _reduceScoreForRepeatingPattern:v80 accessoryScores:v71];
            }

            v68 = 1;
          }

          else
          {
            v78 = v73 + 1;
          }

          v73 = v78;
        }

        while (v78 < [v72 count]);
      }

      v67 = v106;
      if (!v106 || (v81 = [v72 count], v81 > objc_msgSend(v106, "count")))
      {
        v82 = v72;

        v67 = v82;
      }
    }

    v66 = v99;
    v103 = [v99 countByEnumeratingWithState:&v107 objects:v127 count:16];
  }

  while (v103);

  if ((v68 & 1) == 0)
  {
    goto LABEL_105;
  }

LABEL_106:
  v85 = HFLogForCategory(9uLL);
  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v130 = v96;
    _os_log_impl(&dword_20D9BF000, v85, OS_LOG_TYPE_DEFAULT, "Tile Size Migration: Room Scores: %@", buf, 0xCu);
  }

  v86 = [MEMORY[0x277D2C900] futureWithNoResult];

  v87 = *MEMORY[0x277D85DE8];

  return v86;
}

uint64_t __49__HFRedesignMigrationController__migrateTileSize__block_invoke_183(uint64_t a1, void *a2)
{
  v2 = [a2 homeKitObject];
  v3 = [v2 conformsToProtocol:&unk_282562908];

  return v3;
}

void __49__HFRedesignMigrationController__migrateTileSize__block_invoke_186(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 accessoryType];
  v4 = [HFAccessoryType serviceType:*MEMORY[0x277CD0EA0]];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    goto LABEL_2;
  }

  if ([*(a1 + 40) _accessoryLikeObjectMustUseLargerSize:v12])
  {
    v6 = v12;
    v7 = &unk_2825254E8;
    goto LABEL_5;
  }

  if ([*(a1 + 40) _accessoryLikeItemIsHighValue:v12])
  {
    v8 = *(a1 + 48);
    v9 = [v12 accessoryType];
    v10 = [v8 objectForKey:v9];
    v11 = [v10 count];

    if (v11 >= 2)
    {
LABEL_2:
      v6 = v12;
      v7 = &unk_2825254D0;
LABEL_5:
      [*(a1 + 32) setObject:v7 forKey:v6];
    }
  }
}

@end