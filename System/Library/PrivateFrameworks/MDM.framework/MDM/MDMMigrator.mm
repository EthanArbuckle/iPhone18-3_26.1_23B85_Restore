@interface MDMMigrator
+ (id)sharedMigrator;
- (void)_createRMAccountWithPersonaID:(id)d managedAppleID:(id)iD profileIdentifier:(id)identifier organizationName:(id)name;
- (void)_migrateForRTSIfNeeded;
- (void)_moveNonStoreManagedBooksToSystemGroupContainer;
- (void)_moveNonStoreManagedBooksToSystemGroupContainerFromLegacyPath:(id)path;
- (void)_resetManagedAppRemovability;
- (void)_resetManagedAppTapToPayScreenLock;
- (void)_updateNonStoreBooksManifestForSystemGroupContainer;
- (void)_updateSkipBackupKeyForNonStoreBooksDirectory;
- (void)_updateToMDMPropertiesForDDMActiveState;
- (void)_updateUnlockTokenSecretToClassDIfNeeded;
- (void)_updateUserEnrollmentToUseRMAccount;
- (void)migrateMDMWithContext:(int)context;
@end

@implementation MDMMigrator

+ (id)sharedMigrator
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  if (!sharedMigrator_obj)
  {
    v3 = objc_alloc_init(MDMMigrator);
    v4 = sharedMigrator_obj;
    sharedMigrator_obj = v3;
  }

  objc_sync_exit(v2);

  v5 = sharedMigrator_obj;

  return v5;
}

- (void)migrateMDMWithContext:(int)context
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277D035A0]) initWithReason:@"mdmd-MigrateMDM"];
  v6 = *DMCLogObjects();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_DEFAULT, "MDM migrating...", buf, 2u);
  }

  if (context)
  {
    v7 = MDMManagedNonStoreBooksSystemGroupContainer();
    v8 = [v7 stringByAppendingPathComponent:@"Managed"];

    v17 = 0;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [defaultManager fileExistsAtPath:v8 isDirectory:&v17];

    if (v10 && v17 == 1)
    {
      v11 = *DMCLogObjects();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2561F5000, v11, OS_LOG_TYPE_DEFAULT, "Found non-store managed books in seed-only system location. Migrating...", buf, 2u);
      }

      [(MDMMigrator *)self _moveNonStoreManagedBooksToSystemGroupContainerFromLegacyPath:v8];
    }

    [(MDMMigrator *)self _moveNonStoreManagedBooksToSystemGroupContainer];
    [(MDMMigrator *)self _updateNonStoreBooksManifestForSystemGroupContainer];
    [(MDMMigrator *)self _updateSkipBackupKeyForNonStoreBooksDirectory];
    [(MDMMigrator *)self _updateUnlockTokenSecretToClassDIfNeeded];
    [(MDMMigrator *)self _updateUserEnrollmentToUseRMAccount];
    [(MDMMigrator *)self _updateToMDMPropertiesForDDMActiveState];

    if (context == 2)
    {
      [(MDMMigrator *)self _resetManagedAppRemovability];
      [(MDMMigrator *)self _resetManagedAppTapToPayScreenLock];
    }
  }

  else
  {
    v18 = 0;
    v12 = MDMKeybagCreateMDMEscrowWithPasscode(&stru_2868451F0, &v18);
    v13 = v18;
    if (!v12)
    {
      v14 = *DMCLogObjects();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v20 = v13;
        _os_log_impl(&dword_2561F5000, v14, OS_LOG_TYPE_ERROR, "Unable to create unlock escrow during erase-context migration: %{public}@", buf, 0xCu);
      }
    }

    [(MDMMigrator *)self _migrateForRTSIfNeeded];
  }

  v15 = *DMCLogObjects();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v15, OS_LOG_TYPE_DEFAULT, "MDM completed migration.", buf, 2u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_moveNonStoreManagedBooksToSystemGroupContainer
{
  v3 = MDMLegacyManagedNonStoreBooksDirectory();
  [(MDMMigrator *)self _moveNonStoreManagedBooksToSystemGroupContainerFromLegacyPath:v3];
}

- (void)_moveNonStoreManagedBooksToSystemGroupContainerFromLegacyPath:(id)path
{
  v48 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v4 = *DMCLogObjects();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, "Migrating non-store managed books to system group container...", buf, 2u);
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v43 = 0;
  v6 = [defaultManager fileExistsAtPath:pathCopy isDirectory:&v43];
  mEMORY[0x277D24640] = [MEMORY[0x277D24640] sharedConfiguration];
  userMode = [mEMORY[0x277D24640] userMode];

  if (userMode == 1)
  {
    [defaultManager removeItemAtPath:pathCopy error:0];
    goto LABEL_56;
  }

  if (!v6 || v43 != 1)
  {
    v13 = 0;
    goto LABEL_47;
  }

  v42 = 0;
  v9 = [defaultManager contentsOfDirectoryAtPath:pathCopy error:&v42];
  v10 = v42;
  if (![v9 count])
  {
    v14 = v10 != 0;
    v12 = 1;
    goto LABEL_21;
  }

  if ([v9 count] == 1)
  {
    firstObject = [v9 firstObject];
    v12 = [firstObject isEqualToString:@".Managed.plist.lock"];
  }

  else
  {
    v12 = 0;
  }

  v14 = v10 != 0;
  if (v10 || (v12 & 1) != 0)
  {
LABEL_21:
    v13 = 0;
    if (v14)
    {
      v21 = v10;
    }

    else
    {
      v21 = 0;
    }

    if (!v14 && v12)
    {
      v22 = *DMCLogObjects();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2561F5000, v22, OS_LOG_TYPE_DEFAULT, "Removing empty legacy non-store managed books...", buf, 2u);
      }

      v39 = 0;
      [defaultManager removeItemAtPath:pathCopy error:&v39];
      v21 = v39;
      if (v21)
      {
        v23 = *DMCLogObjects();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v47 = v21;
          _os_log_impl(&dword_2561F5000, v23, OS_LOG_TYPE_ERROR, "Failed to delete empty legacy non-store managed books with error %{public}@", buf, 0xCu);
        }
      }

      v13 = 0;
    }

    goto LABEL_46;
  }

  v15 = *DMCLogObjects();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v15, OS_LOG_TYPE_DEFAULT, "Moving legacy non-store managed books directory...", buf, 2u);
  }

  v16 = MDMManagedNonStoreBooksDirectory();
  v41[1] = 0;
  v17 = DMCSafelyCopyItemAtPathToDestinationPath();
  v18 = 0;

  if (v18)
  {
    v19 = *DMCLogObjects();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 138543362;
    v47 = v18;
    v20 = "Failed to move legacy non-store managed books with error %{public}@";
    goto LABEL_20;
  }

  if (!v17)
  {
    v24 = *DMCLogObjects();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v24, OS_LOG_TYPE_ERROR, "Failed to move legacy non-store managed books with no error", buf, 2u);
    }

    goto LABEL_39;
  }

  if (![defaultManager fileExistsAtPath:pathCopy])
  {
LABEL_39:
    v18 = 0;
    goto LABEL_40;
  }

  v41[0] = 0;
  [defaultManager removeItemAtPath:pathCopy error:v41];
  v18 = v41[0];
  if (v18)
  {
    v19 = *DMCLogObjects();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v47 = v18;
      v20 = "Failed to delete legacy non-store managed books with error %{public}@";
LABEL_20:
      _os_log_impl(&dword_2561F5000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);
    }
  }

LABEL_40:
  v25 = MDMManagedNonStoreBooksDirectory();
  v26 = [defaultManager fileExistsAtPath:v25];

  if (v26)
  {
    v44 = *MEMORY[0x277CCA180];
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:511];
    v45 = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];

    v29 = MDMManagedNonStoreBooksDirectory();
    v40 = v18;
    [defaultManager setAttributes:v28 ofItemAtPath:v29 error:&v40];
    v21 = v40;

    if (v21)
    {
      v30 = *DMCLogObjects();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v47 = v21;
        _os_log_impl(&dword_2561F5000, v30, OS_LOG_TYPE_ERROR, "Failed to set permissions on new non-store managed books directory with error %{public}@", buf, 0xCu);
      }
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
    v21 = v18;
  }

LABEL_46:

LABEL_47:
  v31 = MDMManagedNonStoreBooksDirectory();
  v32 = [defaultManager fileExistsAtPath:v31];

  if (!v32)
  {
    if (!v13)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v33 = MDMManagedNonStoreBooksDirectory();
  v34 = DMCFixPermissionsOfSystemGroupContainerDirectoryAndContents();
  v35 = 0;

  if ((v34 & 1) == 0)
  {
    if ([v35 count])
    {
      v36 = *DMCLogObjects();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v47 = v35;
        _os_log_impl(&dword_2561F5000, v36, OS_LOG_TYPE_ERROR, "Failed to fix permissions of device's MDM managed non-store books with errors %{public}@", buf, 0xCu);
      }
    }
  }

  if (v13)
  {
LABEL_55:
    MDMSendManagedBooksChangedNotification();
  }

LABEL_56:
  v37 = *DMCLogObjects();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v37, OS_LOG_TYPE_DEFAULT, "Completed non-store managed books system group container migration.", buf, 2u);
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_updateNonStoreBooksManifestForSystemGroupContainer
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = *DMCLogObjects();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v2, OS_LOG_TYPE_DEFAULT, "Beginning update of non-store managed books manifest...", buf, 2u);
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = MDMManagedNonStoreBooksManifestPath();
  v5 = [defaultManager fileExistsAtPath:v4];

  if (v5)
  {
    v6 = MEMORY[0x277CBEAC0];
    v7 = MDMManagedNonStoreBooksManifestPath();
    v8 = [v6 dictionaryWithContentsOfFile:v7];

    if (!v8)
    {
      v39 = *DMCLogObjects();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2561F5000, v39, OS_LOG_TYPE_DEFAULT, "Completed non-store managed books manifest update with empty manifest.", buf, 2u);
      }

      goto LABEL_38;
    }

    v9 = *MEMORY[0x277D24948];
    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277D24948]];
    if (!v10)
    {
      v40 = *DMCLogObjects();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2561F5000, v40, OS_LOG_TYPE_DEFAULT, "Completed non-store managed books manifest update with no books.", buf, 2u);
      }

      goto LABEL_37;
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    dictionary2 = v10;
    v12 = [dictionary2 countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v12)
    {
      v13 = v12;
      v42 = v9;
      v43 = defaultManager;
      v44 = v10;
      v45 = v8;
      v46 = 0;
      v14 = *v53;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v53 != v14)
          {
            objc_enumerationMutation(dictionary2);
          }

          v16 = [objc_alloc(MEMORY[0x277D24628]) initWithManifestDictionary:*(*(&v52 + 1) + 8 * i)];
          persistentID = [v16 persistentID];

          if (persistentID)
          {
            fullPath = [v16 fullPath];
            if (fullPath)
            {
              v19 = fullPath;
              fullPath2 = [v16 fullPath];
              MDMManagedNonStoreBooksDirectory();
              v22 = v21 = dictionary2;
              v23 = [fullPath2 hasPrefix:v22];

              dictionary2 = v21;
              if ((v23 & 1) == 0)
              {
                v24 = MDMManagedNonStoreBooksDirectory();
                fullPath3 = [v16 fullPath];
                lastPathComponent = [fullPath3 lastPathComponent];
                v27 = [v24 stringByAppendingPathComponent:lastPathComponent];

                dictionary2 = v21;
                [v16 setFullPath:v27];

                v46 = 1;
              }
            }

            persistentID2 = [v16 persistentID];
            [dictionary setObject:v16 forKeyedSubscript:persistentID2];
          }
        }

        v13 = [dictionary2 countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v13);

      defaultManager = v43;
      v10 = v44;
      if ((v46 & 1) == 0)
      {
        goto LABEL_28;
      }

      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      v29 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(dictionary, "count")}];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      allValues = [dictionary allValues];
      v31 = [allValues countByEnumeratingWithState:&v48 objects:v57 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v49;
        do
        {
          for (j = 0; j != v32; ++j)
          {
            if (*v49 != v33)
            {
              objc_enumerationMutation(allValues);
            }

            manifestDictionary = [*(*(&v48 + 1) + 8 * j) manifestDictionary];
            [v29 addObject:manifestDictionary];
          }

          v32 = [allValues countByEnumeratingWithState:&v48 objects:v57 count:16];
        }

        while (v32);
      }

      [dictionary2 setObject:v29 forKeyedSubscript:v42];
      v36 = MDMManagedNonStoreBooksManifestPath();
      [dictionary2 writeToFile:v36 atomically:1];

      MDMSendManagedBooksChangedNotification();
      v10 = v44;
      v8 = v45;
    }

LABEL_28:
    v37 = *DMCLogObjects();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v37, OS_LOG_TYPE_DEFAULT, "Completed non-store managed books manifest update.", buf, 2u);
    }

LABEL_37:
LABEL_38:

    goto LABEL_39;
  }

  v38 = *DMCLogObjects();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v38, OS_LOG_TYPE_DEFAULT, "Completed non-store managed books manifest update with no manifest.", buf, 2u);
  }

LABEL_39:

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_updateSkipBackupKeyForNonStoreBooksDirectory
{
  v16 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = MDMManagedNonStoreBooksDirectory();
  v4 = [defaultManager fileExistsAtPath:v3];

  if (v4)
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15[0]) = 0;
      _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_DEFAULT, "Migrating enterprise book backup flag...", v15, 2u);
    }

    v6 = !+[MDMMCInterface isEnterpriseBookBackupAllowed];
    v7 = MDMManagedNonStoreBooksDirectory();
    v8 = DMCSetSkipBackupAttributeToItemAtPath();

    v9 = *DMCLogObjects();
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v15[0] = 67109120;
        v15[1] = v6;
        v10 = "Set backup exclusion on enterprise books directory to %d";
        v11 = v9;
        v12 = OS_LOG_TYPE_DEFAULT;
        v13 = 8;
LABEL_9:
        _os_log_impl(&dword_2561F5000, v11, v12, v10, v15, v13);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15[0]) = 0;
      v10 = "Failed to set backup exclusion on enterprise books directory";
      v11 = v9;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 2;
      goto LABEL_9;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_updateUnlockTokenSecretToClassDIfNeeded
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D03520];
  v3 = *MEMORY[0x277D24D00];
  v4 = *MEMORY[0x277D24958];
  mEMORY[0x277D24648] = [MEMORY[0x277D24648] sharedConfiguration];
  personaID = [mEMORY[0x277D24648] personaID];
  v42 = 0;
  LOBYTE(v35) = personaID != 0;
  v7 = [v2 dataFromService:v3 account:v4 label:0 description:0 group:0 useSystemKeychain:0 enforcePersonalPersona:v35 outError:&v42];
  v8 = v42;

  v9 = [MEMORY[0x277D03520] stringFromServiceData:v7];
  v10 = MEMORY[0x277D03520];
  v11 = *MEMORY[0x277D24800];
  mEMORY[0x277D24648]2 = [MEMORY[0x277D24648] sharedConfiguration];
  personaID2 = [mEMORY[0x277D24648]2 personaID];
  v41 = v8;
  LOBYTE(v36) = personaID2 != 0;
  v38 = v11;
  v14 = [v10 dataFromService:v3 account:v11 label:0 description:0 group:0 useSystemKeychain:0 enforcePersonalPersona:v36 outError:&v41];
  v15 = v41;

  v16 = v9;
  v17 = [MEMORY[0x277D03520] stringFromServiceData:v14];
  if (v16)
  {
    v39 = v7;
    v18 = MEMORY[0x277D03520];
    mEMORY[0x277D24648]3 = [MEMORY[0x277D24648] sharedConfiguration];
    personaID3 = [mEMORY[0x277D24648]3 personaID];
    [v18 removeItemForService:v3 account:v4 label:0 description:0 useSystemKeychain:0 enforcePersonalPersona:personaID3 != 0 group:0];

    if (v17)
    {
      v21 = *DMCLogObjects();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2561F5000, v21, OS_LOG_TYPE_DEFAULT, "Not migrating old MDM secret because we already have a new one!", buf, 2u);
      }

      v22 = +[MDMEvents sharedInstance];
      [v22 recordDateForEvent:@"UnlockTokenSuperseded"];

      v7 = v39;
    }

    else
    {
      v24 = v14;
      v25 = MEMORY[0x277D03520];
      v26 = v16;
      v27 = [MEMORY[0x277D03520] dataFromString:v16];
      v28 = *MEMORY[0x277CDBF00];
      mEMORY[0x277D24648]4 = [MEMORY[0x277D24648] sharedConfiguration];
      personaID4 = [mEMORY[0x277D24648]4 personaID];
      v40 = v15;
      BYTE2(v37) = personaID4 != 0;
      LOWORD(v37) = 256;
      LOBYTE(v25) = [v25 setData:v27 forService:v3 account:v38 label:0 description:0 access:v28 group:0 useSystemKeychain:v37 sysBound:&v40 enforcePersonalPersona:? outError:?];
      v31 = v40;

      if (v25)
      {
        v32 = +[MDMEvents sharedInstance];
        [v32 recordDateForEvent:@"UnlockTokenMigrationDate"];
      }

      else
      {
        v33 = *DMCLogObjects();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v44 = v31;
          _os_log_impl(&dword_2561F5000, v33, OS_LOG_TYPE_ERROR, "Could not set unlock token item: %{public}@", buf, 0xCu);
        }
      }

      v15 = v31;
      v7 = v39;
      v16 = v26;
      v14 = v24;
      v17 = 0;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (v15)
  {
    v23 = *DMCLogObjects();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v44 = v15;
      _os_log_impl(&dword_2561F5000, v23, OS_LOG_TYPE_ERROR, "Could not get unlock token item: %{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

LABEL_15:

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_resetManagedAppRemovability
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = MDMAppManagementFilePath();
  v4 = [v2 dictionaryWithContentsOfFile:v3];

  if ([v4 count])
  {
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D248A8]];
    if ([v5 count])
    {
      v6 = *DMCLogObjects();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_DEFAULT, "Cleaning up managed app removability...", v7, 2u);
      }

      [v5 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_1];
    }
  }
}

void __43__MDMMigrator__resetManagedAppRemovability__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 objectForKeyedSubscript:*MEMORY[0x277D248A0]];
  if ([v5 count])
  {
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D24888]];
    v7 = v6;
    if (v6 && ([v6 BOOLValue] & 1) == 0)
    {
      v8 = MEMORY[0x277D1C148];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __43__MDMMigrator__resetManagedAppRemovability__block_invoke_2;
      v9[3] = &unk_27982C048;
      v10 = v4;
      [v8 setRemovability:2 forAppWithBundleID:v10 completion:v9];
    }
  }
}

void __43__MDMMigrator__resetManagedAppRemovability__block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *DMCLogObjects();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v7 = 138412546;
      v8 = v5;
      v9 = 2114;
      v10 = v3;
      _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_ERROR, "Could not set removability for bundle identifier: %{bundleIdentifier}@, error: %{public}@", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_resetManagedAppTapToPayScreenLock
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = MDMAppManagementFilePath();
  v4 = [v2 dictionaryWithContentsOfFile:v3];

  if ([v4 count])
  {
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D248A8]];
    if ([v5 count])
    {
      v6 = *DMCLogObjects();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_DEFAULT, "Cleaning up managed app tapToPayScreenLock...", v7, 2u);
      }

      [v5 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_29];
    }
  }
}

void __49__MDMMigrator__resetManagedAppTapToPayScreenLock__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D248A0]];
  if ([v6 count])
  {
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D24890]];
    v8 = v7;
    if (v7 && [v7 BOOLValue])
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2050000000;
      v9 = getPRSettingsProviderClass_softClass;
      v16 = getPRSettingsProviderClass_softClass;
      if (!getPRSettingsProviderClass_softClass)
      {
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v18 = __getPRSettingsProviderClass_block_invoke;
        v19 = &unk_27982C0C0;
        v20 = &v13;
        __getPRSettingsProviderClass_block_invoke(&buf);
        v9 = v14[3];
      }

      v10 = v9;
      _Block_object_dispose(&v13, 8);
      [v9 setMDMAppAttribute:0 withValue:objc_msgSend(v8 forBundleID:{"BOOLValue", v13), v4}];
      v11 = *DMCLogObjects();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v8;
        _os_log_impl(&dword_2561F5000, v11, OS_LOG_TYPE_DEBUG, "Called [PRSettingsProvider setMDMAppAttribute] enabled=%@", &buf, 0xCu);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_updateUserEnrollmentToUseRMAccount
{
  v3 = *DMCLogObjects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_DEFAULT, "MDM migration: beginning update of user enrollment to use RMAccount.", buf, 2u);
  }

  if ([MEMORY[0x277D03538] isSharediPad])
  {
    v4 = *DMCLogObjects();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v33 = 0;
    v5 = "MDM migration: ending update of user enrollment: not required on Shared iPad.";
    v6 = &v33;
LABEL_13:
    _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    return;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = MDMFilePath();
  v9 = [defaultManager fileExistsAtPath:v8 isDirectory:0];

  if ((v9 & 1) == 0)
  {
    v4 = *DMCLogObjects();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *v32 = 0;
    v5 = "MDM migration: ending update of user enrollment: no MDM enrollment present.";
    v6 = v32;
    goto LABEL_13;
  }

  mEMORY[0x277D24648] = [MEMORY[0x277D24648] sharedConfiguration];
  if ([mEMORY[0x277D24648] isUserEnrollment])
  {
    rmAccountID = [mEMORY[0x277D24648] rmAccountID];

    v12 = *DMCLogObjects();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (!rmAccountID)
    {
      if (v13)
      {
        *v31 = 0;
        _os_log_impl(&dword_2561F5000, v12, OS_LOG_TYPE_DEFAULT, "MDM migration: upgrading user enrollment to add an RMAccount", v31, 2u);
      }

      personaID = [mEMORY[0x277D24648] personaID];
      v19 = [MEMORY[0x277D03490] managedAppleIDNameWithPersonaID:personaID];
      managingProfileIdentifier = [mEMORY[0x277D24648] managingProfileIdentifier];
      defaultStore = [MEMORY[0x277CB8F48] defaultStore];
      v22 = [defaultStore dmc_iCloudAccountWithUsername:v19];

      accountDescription = [v22 accountDescription];
      v24 = accountDescription;
      if (accountDescription)
      {
        v25 = accountDescription;
      }

      else
      {
        v25 = v19;
      }

      v26 = v25;

      [(MDMMigrator *)self _createRMAccountWithPersonaID:personaID managedAppleID:v19 profileIdentifier:managingProfileIdentifier organizationName:v26];
      v27 = *DMCLogObjects();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *v30 = 0;
        _os_log_impl(&dword_2561F5000, v27, OS_LOG_TYPE_DEFAULT, "MDM migration: ending update of user enrollment: upgrade complete.", v30, 2u);
      }

      goto LABEL_25;
    }

    if (v13)
    {
      v29 = 0;
      v14 = "MDM migration: ending update of user enrollment: no need to upgrade.";
      v15 = &v29;
      v16 = v12;
LABEL_16:
      _os_log_impl(&dword_2561F5000, v16, OS_LOG_TYPE_DEFAULT, v14, v15, 2u);
    }
  }

  else
  {
    v17 = *DMCLogObjects();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 0;
      v14 = "MDM migration: ending update of user enrollment: no MDM user enrollment present.";
      v15 = &v28;
      v16 = v17;
      goto LABEL_16;
    }
  }

LABEL_25:
}

- (void)_createRMAccountWithPersonaID:(id)d managedAppleID:(id)iD profileIdentifier:(id)identifier organizationName:(id)name
{
  v39 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  identifierCopy = identifier;
  nameCopy = name;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__4;
  v35 = __Block_byref_object_dispose__4;
  v36 = 0;
  v13 = objc_opt_new();
  enrollmentFlowController = [MEMORY[0x277D031A0] enrollmentFlowController];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __95__MDMMigrator__createRMAccountWithPersonaID_managedAppleID_profileIdentifier_organizationName___block_invoke;
  v28[3] = &unk_27982C070;
  v30 = &v31;
  v15 = v13;
  v29 = v15;
  [enrollmentFlowController updateMDMUserEnrollmentWithManagedAppleID:iDCopy profileIdentifier:identifierCopy organizationName:nameCopy personaID:dCopy completionHandler:v28];
  [v15 waitForCompletion];
  if (v32[5])
  {
    v16 = *DMCLogObjects();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      dMCVerboseDescription = [v32[5] DMCVerboseDescription];
      *buf = 138543362;
      v38 = dMCVerboseDescription;
      _os_log_impl(&dword_2561F5000, v16, OS_LOG_TYPE_ERROR, "Failed to create RMAccount: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    v16 = [defaultStore dmc_remoteManagementAccountForManagementProfileIdentifier:identifierCopy];

    identifier = [v16 identifier];
    if (identifier)
    {
      v20 = *DMCLogObjects();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v38 = identifier;
        _os_log_impl(&dword_2561F5000, v20, OS_LOG_TYPE_DEBUG, "Created RMAccount: %{public}@", buf, 0xCu);
      }

      mEMORY[0x277D24648] = [MEMORY[0x277D24648] sharedConfiguration];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __95__MDMMigrator__createRMAccountWithPersonaID_managedAppleID_profileIdentifier_organizationName___block_invoke_36;
      v26[3] = &unk_27982C098;
      v27 = identifier;
      v25 = 0;
      [mEMORY[0x277D24648] updateMDMConfigurationWithUpdateBlock:v26 error:&v25];
      v22 = v25;

      if (v22)
      {
        v23 = *DMCLogObjects();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v38 = v22;
          _os_log_impl(&dword_2561F5000, v23, OS_LOG_TYPE_ERROR, "Failed to update MDM config with error: %{public}@", buf, 0xCu);
        }
      }
    }
  }

  _Block_object_dispose(&v31, 8);
  v24 = *MEMORY[0x277D85DE8];
}

void __95__MDMMigrator__createRMAccountWithPersonaID_managedAppleID_profileIdentifier_organizationName___block_invoke(uint64_t a1, int a2, int a3, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v6 = obj;
  [*(a1 + 32) complete];
}

- (void)_updateToMDMPropertiesForDDMActiveState
{
  v22 = *MEMORY[0x277D85DE8];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults valueForKey:@"RMDMActive"];

  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v3 BOOLValue];
      v5 = *DMCLogObjects();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v5;
        v8 = [v6 numberWithBool:bOOLValue];
        *buf = 138543362;
        v21 = v8;
        _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_DEBUG, "MDM migration: Got old DDM active state: %{public}@", buf, 0xCu);
      }

      if (!bOOLValue)
      {
        goto LABEL_15;
      }

      mEMORY[0x277D24648] = [MEMORY[0x277D24648] sharedConfiguration];
      v19 = 0;
      [mEMORY[0x277D24648] setPropertyForKey:@"RMDMActive" value:MEMORY[0x277CBEC38] error:&v19];
      v10 = v19;
      v11 = *DMCLogObjects();
      if (v10)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v21 = v10;
          v12 = "MDM migration: Failed to write new DDM active state with error: %{public}@";
          v13 = v11;
          v14 = OS_LOG_TYPE_ERROR;
          v15 = 12;
LABEL_13:
          _os_log_impl(&dword_2561F5000, v13, v14, v12, buf, v15);
        }
      }

      else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v12 = "MDM migration: Wrote new DDM active state";
        v13 = v11;
        v14 = OS_LOG_TYPE_DEBUG;
        v15 = 2;
        goto LABEL_13;
      }

LABEL_15:
      standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [standardUserDefaults2 removeObjectForKey:@"RMDMActive"];

      goto LABEL_16;
    }
  }

  v16 = *DMCLogObjects();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v16, OS_LOG_TYPE_DEBUG, "MDM migration: No DDM active state", buf, 2u);
  }

LABEL_16:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_migrateForRTSIfNeeded
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  [v2 migrateAllFiles];
  if ([MEMORY[0x277D034F8] isAppleInternal])
  {
    userDefaults = [v2 userDefaults];
    if ([userDefaults count])
    {
      v23 = v2;
      v4 = *DMCLogObjects();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, "Migrating user defaults for RTS...", buf, 2u);
      }

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v22 = userDefaults;
      v5 = userDefaults;
      v25 = [v5 countByEnumeratingWithState:&v31 objects:v42 count:16];
      if (v25)
      {
        v24 = *v32;
        do
        {
          v6 = 0;
          do
          {
            if (*v32 != v24)
            {
              objc_enumerationMutation(v5);
            }

            v26 = v6;
            v7 = *(*(&v31 + 1) + 8 * v6);
            v27 = 0u;
            v28 = 0u;
            v29 = 0u;
            v30 = 0u;
            v8 = [v5 objectForKeyedSubscript:v7];
            v9 = [v8 countByEnumeratingWithState:&v27 objects:v41 count:16];
            if (v9)
            {
              v10 = v9;
              v11 = *v28;
              do
              {
                for (i = 0; i != v10; ++i)
                {
                  if (*v28 != v11)
                  {
                    objc_enumerationMutation(v8);
                  }

                  v13 = *(*(&v27 + 1) + 8 * i);
                  v14 = *DMCLogObjects();
                  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
                  {
                    v15 = v14;
                    v16 = [v5 objectForKeyedSubscript:v7];
                    v17 = [v16 objectForKeyedSubscript:v13];
                    *buf = 138543874;
                    v36 = v13;
                    v37 = 2114;
                    v38 = v17;
                    v39 = 2114;
                    v40 = v7;
                    _os_log_impl(&dword_2561F5000, v15, OS_LOG_TYPE_DEBUG, "MDMMigrator setting user defaults (key: %{public}@, value: %{public}@, domain: %{public}@)", buf, 0x20u);
                  }

                  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
                  v19 = [v5 objectForKeyedSubscript:v7];
                  v20 = [v19 objectForKeyedSubscript:v13];
                  [standardUserDefaults setObject:v20 forKey:v13 inDomain:v7];
                }

                v10 = [v8 countByEnumeratingWithState:&v27 objects:v41 count:16];
              }

              while (v10);
            }

            v6 = v26 + 1;
          }

          while (v26 + 1 != v25);
          v25 = [v5 countByEnumeratingWithState:&v31 objects:v42 count:16];
        }

        while (v25);
      }

      userDefaults = v22;
      v2 = v23;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end