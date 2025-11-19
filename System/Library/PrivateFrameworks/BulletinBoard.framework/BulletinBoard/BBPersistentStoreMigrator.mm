@interface BBPersistentStoreMigrator
+ (BOOL)removeSavedChronologicalSectionInfos:(id)a3;
+ (id)_sectionIdentifiersForNonDefaultSectionCategoriesFromSectionInfos:(id)a3;
+ (id)_sectionIdentifiersForWeeAppsFromSectionInfos:(id)a3;
+ (void)_migrateContentPreviewSettings:(id)a3;
+ (void)_migrateSectionIDs:(id)a3;
+ (void)migrateSectionInfoForStore:(id)a3;
@end

@implementation BBPersistentStoreMigrator

+ (void)migrateSectionInfoForStore:(id)a3
{
  v71 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v52 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [v4 hasSectionInfoLegacyFile];
  if (v5)
  {
    v6 = BBLogMigration;
    if (os_log_type_enabled(BBLogMigration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241EFF000, v6, OS_LOG_TYPE_DEFAULT, "Migrating from old sectionInfo file to new versionedSectionInfo file.", buf, 2u);
    }

    v7 = [v4 readSectionInfoLegacy];
    v8 = 0;
  }

  else
  {
    v9 = [v4 readSectionInfoWithVersionNumberForMigration];
    v7 = [v9 objectForKey:@"sectionInfo"];
    v10 = [v9 objectForKey:@"sectionInfoVersionNumber"];
    v8 = [v10 unsignedIntegerValue];
  }

  v11 = [a1 _sectionIDsToMigrate];
  v12 = [v7 allKeys];
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __56__BBPersistentStoreMigrator_migrateSectionInfoForStore___block_invoke;
  v61[3] = &unk_278D2B5B8;
  v13 = v11;
  v62 = v13;
  v14 = [v12 bs_containsObjectPassingTest:v61];

  if (v8 > 2)
  {
    v15 = BBLogMigration;
    if (os_log_type_enabled(BBLogMigration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241EFF000, v15, OS_LOG_TYPE_DEFAULT, "Due to a downgrade we are deleting the versioned section info file. Notification Settings will be corrupt.", buf, 2u);
    }

    [v4 deleteSectionInfoFile];
    BBIsInternalDevice();
  }

  if (v8 < 2)
  {
    v16 = 1;
  }

  else
  {
    v16 = v14;
  }

  if (v16 == 1)
  {
    v44 = v14;
    v45 = v8;
    v46 = a1;
    v48 = v13;
    v49 = v4;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = [v7 allKeys];
    v17 = [obj countByEnumeratingWithState:&v57 objects:v70 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v58;
      do
      {
        v20 = 0;
        do
        {
          if (*v58 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v57 + 1) + 8 * v20);
          v22 = objc_autoreleasePoolPush();
          v23 = v7;
          v24 = [v7 objectForKey:v21];
          v25 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v24 error:0];
          if (v25)
          {
            [v52 setObject:v25 forKey:v21];
          }

          else
          {
            v26 = BBLogMigration;
            if (os_log_type_enabled(BBLogMigration, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v64 = v21;
              _os_log_error_impl(&dword_241EFF000, v26, OS_LOG_TYPE_ERROR, "Decoding BBSectionInfo for sectionID %{public}@ failed", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(v22);
          ++v20;
          v7 = v23;
        }

        while (v18 != v20);
        v18 = [obj countByEnumeratingWithState:&v57 objects:v70 count:16];
      }

      while (v18);
    }

    if (v44)
    {
      [v46 _migrateSectionIDs:v52];
    }

    v13 = v48;
    v4 = v49;
    if (v45 != 1)
    {
      if (v45)
      {
LABEL_46:
        [v4 writeSectionInfo:v52];
        goto LABEL_47;
      }

      [v46 _removeVestigialSections:v52];
      [v46 _migrateContentPreviewSettings:v52];
      if (v5)
      {
        [v49 deleteSectionInfoLegacyFile];
      }
    }

    v47 = v7;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v27 = [v52 allKeys];
    v28 = [v27 countByEnumeratingWithState:&v53 objects:v69 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v54;
      do
      {
        v31 = 0;
        obja = v29;
        do
        {
          if (*v54 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v53 + 1) + 8 * v31);
          v33 = objc_autoreleasePoolPush();
          v34 = [v52 objectForKey:v32];
          v35 = [v34 pushSettings];
          if ([v34 alertType])
          {
            v36 = (8 * v35) & 0x20 | v35;
          }

          else
          {
            v36 = v35 & 0xFFFFFFFFFFFFFFDFLL;
          }

          if (v36 != [v34 pushSettings])
          {
            v37 = BBLogMigration;
            if (os_log_type_enabled(BBLogMigration, OS_LOG_TYPE_DEFAULT))
            {
              v38 = v37;
              v39 = BBPushSettingsDescription([v34 pushSettings]);
              BBPushSettingsDescription(v36);
              v40 = v30;
              v42 = v41 = v27;
              *buf = 138543874;
              v64 = v32;
              v65 = 2114;
              v66 = v39;
              v67 = 2114;
              v68 = v42;
              _os_log_impl(&dword_241EFF000, v38, OS_LOG_TYPE_DEFAULT, "Migrating pushSettings of BBSectionInfo for sectionID: %{public}@ from %{public}@ to %{public}@", buf, 0x20u);

              v27 = v41;
              v30 = v40;
              v29 = obja;
            }

            [v34 setPushSettings:v36];
          }

          objc_autoreleasePoolPop(v33);
          ++v31;
        }

        while (v29 != v31);
        v29 = [v27 countByEnumeratingWithState:&v53 objects:v69 count:16];
      }

      while (v29);
    }

    v13 = v48;
    v4 = v49;
    v7 = v47;
    goto LABEL_46;
  }

LABEL_47:

  v43 = *MEMORY[0x277D85DE8];
}

BOOL __56__BBPersistentStoreMigrator_migrateSectionInfoForStore___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  v3 = v2 != 0;

  return v3;
}

void __56__BBPersistentStoreMigrator_migrateSectionInfoForStore___block_invoke_23(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:@"tap-to-radar://new?ComponentID=500088&ComponentName=PEP%20BulletinBoard&ComponentVersion=1.0"];
    v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v3 openURL:v4 configuration:0 completionHandler:0];
  }
}

+ (void)_migrateSectionIDs:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 _sectionIDsToMigrate];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v6 = [v5 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    v27 = v6;
    v28 = v5;
    v26 = *v38;
    do
    {
      v10 = 0;
      v29 = v8;
      do
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v37 + 1) + 8 * v10);
        v12 = [v5 objectForKey:{v11, v26, v27, v28}];
        v13 = [v4 objectForKey:v11];
        if (v13)
        {
          v31 = v11;
          v32 = v13;
          v14 = BBLogMigration;
          if (os_log_type_enabled(BBLogMigration, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v43 = v31;
            v44 = 2114;
            v45 = v12;
            _os_log_impl(&dword_241EFF000, v14, OS_LOG_TYPE_DEFAULT, "Migrating saved section info for %{public}@ to %{public}@", buf, 0x16u);
          }

          v15 = [v4 objectForKey:v12];

          if (v15)
          {
            v16 = BBLogMigration;
            if (os_log_type_enabled(BBLogMigration, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v43 = v12;
              _os_log_impl(&dword_241EFF000, v16, OS_LOG_TYPE_DEFAULT, "\t*** Not migrating because section info for %{public}@ already exists!", buf, 0xCu);
            }
          }

          else
          {
            v30 = v10;
            [v32 setSectionID:v12];
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v17 = [v32 dataProviderIDs];
            v18 = [v17 countByEnumeratingWithState:&v33 objects:v41 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v34;
              do
              {
                for (i = 0; i != v19; ++i)
                {
                  if (*v34 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v22 = *(*(&v33 + 1) + 8 * i);
                  v23 = [v4 objectForKey:v22];
                  if (v23)
                  {
                    v24 = BBLogMigration;
                    if (os_log_type_enabled(BBLogMigration, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138543362;
                      v43 = v22;
                      _os_log_impl(&dword_241EFF000, v24, OS_LOG_TYPE_DEFAULT, "\tUpdated data provider %{public}@", buf, 0xCu);
                    }

                    [v23 setFactorySectionID:v12];
                  }
                }

                v19 = [v17 countByEnumeratingWithState:&v33 objects:v41 count:16];
              }

              while (v19);
            }

            [v4 setObject:v32 forKey:v12];
            v6 = v27;
            v5 = v28;
            v9 = v26;
            v8 = v29;
            v10 = v30;
          }

          [v4 removeObjectForKey:v31];
          v13 = v32;
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [v6 countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v8);
  }

  v25 = *MEMORY[0x277D85DE8];
}

+ (BOOL)removeSavedChronologicalSectionInfos:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  v6 = [a1 _sectionIdentifiersForNonDefaultSectionCategoriesFromSectionInfos:v4];
  [v4 removeObjectsForKeys:v6];

  v7 = [a1 _sectionIdentifiersForWeeAppsFromSectionInfos:v4];
  [v4 removeObjectsForKeys:v7];

  v8 = [v4 count];
  return v8 != v5;
}

+ (id)_sectionIdentifiersForNonDefaultSectionCategoriesFromSectionInfos:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [v3 allKeys];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v3 objectForKey:v10];
        if ([v11 sectionCategory])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_sectionIdentifiersForWeeAppsFromSectionInfos:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [v3 allKeys];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v3 objectForKey:v10];
        if ([v11 sectionType] == 1)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (void)_migrateContentPreviewSettings:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [v3 allKeys];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v23;
    *&v5 = 138543874;
    v20 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = [v3 objectForKey:{v9, v20}];
        v11 = [v10 sectionInfoSettings];
        v12 = [v11 contentPreviewSetting];

        if (v12 == 2)
        {
          v13 = 3;
        }

        else
        {
          v13 = 2 * (v12 == 1);
        }

        v14 = [v10 sectionInfoSettings];
        [v14 setContentPreviewSetting:v13];

        [v3 setObject:v10 forKey:v9];
        v15 = BBLogMigration;
        if (os_log_type_enabled(BBLogMigration, OS_LOG_TYPE_DEFAULT))
        {
          v16 = @"<unknown>";
          if (v12 <= 2)
          {
            v16 = off_278D2B5F8[v12];
          }

          v17 = v15;
          v18 = BBStringFromBBContentPreviewSetting(v13);
          *buf = v20;
          v27 = v9;
          v28 = 2114;
          v29 = v16;
          v30 = 2114;
          v31 = v18;
          _os_log_impl(&dword_241EFF000, v17, OS_LOG_TYPE_DEFAULT, "Migrated content preview setting for sectionId %{public}@. Old: %{public}@ New: %{public}@", buf, 0x20u);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v6);
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end