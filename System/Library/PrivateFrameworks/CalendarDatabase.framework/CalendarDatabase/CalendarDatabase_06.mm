uint64_t __CalDatabaseSetDefaultCalendarForEntityType_block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = CDBLockingAssertionsEnabled;
  if (!v2)
  {
    v3 = 0;
  }

  if (a1[5])
  {
    if (v3)
    {
      if (*v2)
      {
        if (*(*v2 + 104))
        {
          Context = CPRecordStoreGetContext();
          if (Context)
          {
            os_unfair_lock_assert_owner(Context + 20);
          }
        }
      }
    }

    v5 = a1[7];
    v6 = a1[4];
    CPSqliteConnectionSetValueForProperty();
    v7 = a1[6];
    if (CDBLockingAssertionsEnabled == 1 && v7 != 0)
    {
      if (*v7)
      {
        if (*(*v7 + 104))
        {
          v9 = CPRecordStoreGetContext();
          if (v9)
          {
            os_unfair_lock_assert_owner(v9 + 20);
          }
        }
      }
    }

    v10 = a1[8];
    _CalCalendarGetStoreId(a1[5]);
    CPSqliteConnectionSetIntegerForProperty();
    v11 = a1[6];
    if (CDBLockingAssertionsEnabled == 1 && v11 != 0)
    {
      if (*v11)
      {
        if (*(*v11 + 104))
        {
          v13 = CPRecordStoreGetContext();
          if (v13)
          {
            os_unfair_lock_assert_owner(v13 + 20);
          }
        }
      }
    }

    v14 = a1[9];
    _CalCalendarGetTitle(a1[5]);
  }

  else
  {
    if (v3)
    {
      if (*v2)
      {
        if (*(*v2 + 104))
        {
          v15 = CPRecordStoreGetContext();
          if (v15)
          {
            os_unfair_lock_assert_owner(v15 + 20);
          }
        }
      }
    }

    v16 = a1[7];
    CPSqliteConnectionSetValueForProperty();
    v17 = a1[6];
    if (CDBLockingAssertionsEnabled == 1 && v17 != 0)
    {
      if (*v17)
      {
        if (*(*v17 + 104))
        {
          v19 = CPRecordStoreGetContext();
          if (v19)
          {
            os_unfair_lock_assert_owner(v19 + 20);
          }
        }
      }
    }

    v20 = a1[8];
    CPSqliteConnectionSetValueForProperty();
    v21 = a1[6];
    if (CDBLockingAssertionsEnabled == 1 && v21 != 0)
    {
      if (*v21)
      {
        if (*(*v21 + 104))
        {
          v23 = CPRecordStoreGetContext();
          if (v23)
          {
            os_unfair_lock_assert_owner(v23 + 20);
          }
        }
      }
    }

    v24 = a1[9];
  }

  return CPSqliteConnectionSetValueForProperty();
}

uint64_t _CalCalendarRemoveAddedSubentity(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  return CPRecordStoreRemoveRecord();
}

uint64_t __GatherColorCounts(uint64_t a1, const __CFDictionary *a2)
{
  v4 = sqlite3_column_text(*(a1 + 8), 0);
  if ((sqlite3_column_int(*(a1 + 8), 1) & 2) == 0)
  {
    if (v4)
    {
      v5 = CFStringCreateWithCString(0, v4, 0x8000100u);
      if (v5)
      {
        v6 = v5;
        _UpdateColorCountsWithColorString(v5, a2);
        CFRelease(v6);
      }
    }
  }

  return 0;
}

uint64_t _CompareColorFrequencies(void *key, const void *a2, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, key);
  v6 = CFDictionaryGetValue(theDict, a2);
  if (Value < v6)
  {
    return -1;
  }

  else
  {
    return Value > v6;
  }
}

void _UpdateColorCountsWithColorString(const __CFString *a1, const __CFDictionary *a2)
{
  if (a1)
  {
    v4 = EKGetDefaultCalendarColors();
    Count = CFArrayGetCount(v4);
    _GetHueFromColorString(a1);
    if (Count >= 1)
    {
      v7 = v6;
      v8 = 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v8 - 1);
        _GetHueFromColorString(ValueAtIndex);
        v11 = v7 - v10;
        if (v11 < 0.0)
        {
          v11 = -v11;
        }

        if (v11 >= 0.004)
        {
          ValueAtIndex = 0;
        }

        if (v8 >= Count)
        {
          break;
        }

        ++v8;
      }

      while (!ValueAtIndex);
      if (ValueAtIndex)
      {
        v12 = (CFDictionaryGetValue(a2, ValueAtIndex) + 1);

        CFDictionarySetValue(a2, ValueAtIndex, v12);
      }
    }
  }
}

uint64_t _GetHueFromColorString(const __CFString *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v3 = 0;
  CFStringGetCString(a1, buffer, 100, 0x8000100u);
  result = sscanf(buffer, "#%02X%02X%02X", &v4, &v3 + 4, &v3);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void _UpdateColorCountsWithCalendar(uint64_t a1, const __CFDictionary *a2)
{
  if (!_CalCalendarGetFlag(a1, 2))
  {
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          Context = CPRecordStoreGetContext();
          if (Context)
          {
            os_unfair_lock_assert_owner(Context + 20);
          }
        }
      }
    }

    Property = CPRecordGetProperty();

    _UpdateColorCountsWithColorString(Property, a2);
  }
}

void CalDatabasePerformMigrationBetweenDirectoriesIfNeeded(void *a1, void *a2, void *a3, void *a4)
{
  v131 = *MEMORY[0x1E69E9840];
  v83 = a1;
  v84 = a2;
  v82 = a3;
  v81 = a4;
  v85 = [v81 lastObject];
  if (v85)
  {
    v7 = v83;
    v8 = v85;
    v9 = [v84 URLByAppendingPathComponent:v8];
    if ([v9 checkResourceIsReachableAndReturnError:0])
    {

      goto LABEL_81;
    }

    v10 = [v7 URLByAppendingPathComponent:v8];
    v11 = [v10 checkResourceIsReachableAndReturnError:0];

    if ((v11 & 1) == 0)
    {
LABEL_81:
      v79 = CDBGroupContainerMigrationHandle;
      if (os_log_type_enabled(CDBGroupContainerMigrationHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v126 = v8;
        v75 = "Skipping migration because %@ is already migrated";
        v76 = v79;
        v77 = OS_LOG_TYPE_INFO;
        v78 = 12;
        goto LABEL_83;
      }

      goto LABEL_84;
    }
  }

  v12 = CDBGroupContainerMigrationHandle;
  if (os_log_type_enabled(CDBGroupContainerMigrationHandle, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    *buf = 134218754;
    *v126 = [v82 count];
    *&v126[8] = 2048;
    v127 = [v81 count];
    *v128 = 2112;
    *&v128[2] = v83;
    v129 = 2112;
    v130 = v84;
    _os_log_impl(&dword_1DEBB1000, v13, OS_LOG_TYPE_DEFAULT, "Beginning migration of up to %lu directories and %lu files from %@ to %@", buf, 0x2Au);
  }

  v102 = 0;
  v103 = 0;
  v104 = 0;
  if (v82)
  {
    v89 = v83;
    v88 = v84;
    v14 = v82;
    v98 = [MEMORY[0x1E696AC08] defaultManager];
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    obj = v14;
    v90 = [obj countByEnumeratingWithState:&v108 objects:buf count:16];
    if (!v90)
    {
      goto LABEL_55;
    }

    v87 = *v109;
    v15 = *MEMORY[0x1E695DB78];
    v16 = *MEMORY[0x1E695DBA0];
    v95 = *MEMORY[0x1E696A250];
    while (1)
    {
      for (i = 0; i != v90; ++i)
      {
        if (*v109 != v87)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v108 + 1) + 8 * i);
        v18 = CDBGroupContainerMigrationHandle;
        if (os_log_type_enabled(CDBGroupContainerMigrationHandle, OS_LOG_TYPE_INFO))
        {
          LODWORD(v122) = 138543362;
          *(&v122 + 4) = v17;
          _os_log_impl(&dword_1DEBB1000, v18, OS_LOG_TYPE_INFO, "Beginning migration for directory %{public}@", &v122, 0xCu);
        }

        *&v122 = 0;
        *(&v122 + 1) = &v122;
        v123 = 0x2020000000;
        v124 = 1;
        v93 = [v89 URLByAppendingPathComponent:v17 isDirectory:1];
        v100 = [v88 URLByAppendingPathComponent:v17 isDirectory:1];
        v92 = v17;
        v121[0] = v15;
        v121[1] = v16;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v121 count:2];
        *v116 = MEMORY[0x1E69E9820];
        *&v116[8] = 3221225472;
        *&v116[16] = __CalDatabaseMigrateDirectories_block_invoke;
        v117 = &unk_1E868C2D0;
        v120 = &v102;
        v118 = v17;
        v119 = &v122;
        v20 = [v98 enumeratorAtURL:v93 includingPropertiesForKeys:v19 options:16 errorHandler:v116];

        v21 = 0;
        v22 = 0;
        while (1)
        {
          v23 = [v20 nextObject];

          if (!v23)
          {
            break;
          }

          v24 = [v23 relativePath];
          v115[0] = v15;
          v115[1] = v16;
          v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:2];
          v26 = [v23 resourceValuesForKeys:v25 error:0];

          v27 = [v26 objectForKeyedSubscript:v15];
          if ([v27 BOOLValue])
          {
          }

          else
          {
            v28 = [v26 objectForKeyedSubscript:v16];
            v29 = [v28 BOOLValue];

            if (!v29)
            {
              if ((v22 & 1) == 0)
              {
                v107 = 0;
                v31 = [v98 createDirectoryAtURL:v100 withIntermediateDirectories:1 attributes:0 error:&v107];
                v32 = v107;
                if ((v31 & 1) == 0)
                {
                  v33 = CDBGroupContainerMigrationHandle;
                  if (os_log_type_enabled(CDBGroupContainerMigrationHandle, OS_LOG_TYPE_ERROR))
                  {
                    *v112 = 138543618;
                    *&v112[4] = v92;
                    v113 = 2112;
                    v114 = v32;
                    _os_log_impl(&dword_1DEBB1000, v33, OS_LOG_TYPE_ERROR, "Error migrating directory %{public}@: can't create target directory: %@", v112, 0x16u);
                  }
                }
              }

              v34 = [v100 URLByAppendingPathComponent:v24];
              v106 = 0;
              v35 = [v98 moveItemAtURL:v23 toURL:v34 error:&v106];
              v36 = v106;
              v37 = v36;
              if (v35)
              {
                v38 = CDBGroupContainerMigrationHandle;
                if (os_log_type_enabled(CDBGroupContainerMigrationHandle, OS_LOG_TYPE_INFO))
                {
                  *v112 = 138543362;
                  *&v112[4] = v24;
                  _os_log_impl(&dword_1DEBB1000, v38, OS_LOG_TYPE_INFO, "Migrated file %{public}@", v112, 0xCu);
                }

                ++v104;
                goto LABEL_41;
              }

              v39 = [v36 domain];
              if ([v39 isEqualToString:v95])
              {
                v40 = [v37 code] == 516;

                if (v40)
                {
                  v41 = CDBGroupContainerMigrationHandle;
                  if (os_log_type_enabled(CDBGroupContainerMigrationHandle, OS_LOG_TYPE_INFO))
                  {
                    *v112 = 138543362;
                    *&v112[4] = v24;
                    _os_log_impl(&dword_1DEBB1000, v41, OS_LOG_TYPE_INFO, "Skipping migrating file %{public}@ because the file already exists in the destination", v112, 0xCu);
                  }

                  v42 = &v102;
LABEL_40:
                  ++*v42;
                  *(*(&v122 + 1) + 24) = 0;
LABEL_41:

                  v22 = 1;
                  goto LABEL_42;
                }
              }

              else
              {
              }

              v43 = CDBGroupContainerMigrationHandle;
              v44 = os_log_type_enabled(CDBGroupContainerMigrationHandle, OS_LOG_TYPE_ERROR);
              v42 = (&v103 + 4);
              if (v44)
              {
                *v112 = 138543618;
                *&v112[4] = v24;
                v113 = 2112;
                v114 = v37;
                _os_log_impl(&dword_1DEBB1000, v43, OS_LOG_TYPE_ERROR, "Error migrating %{public}@: %@", v112, 0x16u);
                v42 = (&v103 + 4);
              }

              goto LABEL_40;
            }
          }

          v30 = CDBGroupContainerMigrationHandle;
          if (os_log_type_enabled(CDBGroupContainerMigrationHandle, OS_LOG_TYPE_INFO))
          {
            *v112 = 138412290;
            *&v112[4] = v24;
            _os_log_impl(&dword_1DEBB1000, v30, OS_LOG_TYPE_INFO, "Skipped unexpected file %@", v112, 0xCu);
          }

          ++HIDWORD(v102);
          *(*(&v122 + 1) + 24) = 0;
LABEL_42:

          v21 = v23;
        }

        if (*(*(&v122 + 1) + 24) == 1)
        {
          v105 = 0;
          v45 = [v98 removeItemAtURL:v93 error:&v105];
          v46 = v105;
          v47 = CDBGroupContainerMigrationHandle;
          if (v45)
          {
            if (os_log_type_enabled(CDBGroupContainerMigrationHandle, OS_LOG_TYPE_INFO))
            {
              *v112 = 138543362;
              *&v112[4] = v92;
              v48 = v47;
              v49 = OS_LOG_TYPE_INFO;
              v50 = "Removed successfully migrated directory %{public}@";
              v51 = 12;
              goto LABEL_51;
            }
          }

          else if (os_log_type_enabled(CDBGroupContainerMigrationHandle, OS_LOG_TYPE_ERROR))
          {
            *v112 = 138543618;
            *&v112[4] = v92;
            v113 = 2112;
            v114 = v46;
            v48 = v47;
            v49 = OS_LOG_TYPE_ERROR;
            v50 = "Error removing source directory %{public}@: %@";
            v51 = 22;
LABEL_51:
            _os_log_impl(&dword_1DEBB1000, v48, v49, v50, v112, v51);
          }
        }

        else
        {
          v52 = CDBGroupContainerMigrationHandle;
          if (os_log_type_enabled(CDBGroupContainerMigrationHandle, OS_LOG_TYPE_INFO))
          {
            *v112 = 138543362;
            *&v112[4] = v92;
            _os_log_impl(&dword_1DEBB1000, v52, OS_LOG_TYPE_INFO, "Skipped removing migrated directory %{public}@ because there are unmigrated files in it", v112, 0xCu);
          }
        }

        _Block_object_dispose(&v122, 8);
      }

      v90 = [obj countByEnumeratingWithState:&v108 objects:buf count:16];
      if (!v90)
      {
LABEL_55:

        break;
      }
    }
  }

  if (v81)
  {
    v97 = v83;
    v101 = v84;
    v53 = v81;
    v99 = [MEMORY[0x1E696AC08] defaultManager];
    *&v122 = 0;
    v54 = [v99 createDirectoryAtURL:v101 withIntermediateDirectories:1 attributes:0 error:&v122];
    v55 = v122;
    if ((v54 & 1) == 0)
    {
      v56 = CDBGroupContainerMigrationHandle;
      if (os_log_type_enabled(CDBGroupContainerMigrationHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v126 = v101;
        *&v126[8] = 2112;
        v127 = v55;
        _os_log_impl(&dword_1DEBB1000, v56, OS_LOG_TYPE_ERROR, "Error migrating: can't create new directory %@: %@", buf, 0x16u);
      }
    }

    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v96 = v53;
    v57 = [v96 countByEnumeratingWithState:&v108 objects:buf count:16];
    if (v57)
    {
      v58 = *v109;
      v94 = *MEMORY[0x1E696A250];
      do
      {
        for (j = 0; j != v57; ++j)
        {
          if (*v109 != v58)
          {
            objc_enumerationMutation(v96);
          }

          v60 = *(*(&v108 + 1) + 8 * j);
          v61 = [v97 URLByAppendingPathComponent:v60];
          v62 = [v101 URLByAppendingPathComponent:v60];
          *v112 = 0;
          v63 = [v99 moveItemAtURL:v61 toURL:v62 error:v112];
          v64 = *v112;
          v65 = v64;
          if (v63)
          {
            v66 = CDBGroupContainerMigrationHandle;
            v67 = os_log_type_enabled(CDBGroupContainerMigrationHandle, OS_LOG_TYPE_INFO);
            v68 = &v104;
            if (v67)
            {
              *v116 = 138543362;
              *&v116[4] = v60;
              _os_log_impl(&dword_1DEBB1000, v66, OS_LOG_TYPE_INFO, "Migrated file %{public}@", v116, 0xCu);
              v68 = &v104;
            }

            goto LABEL_76;
          }

          v69 = [v64 domain];
          if ([v69 isEqualToString:v94])
          {
            v70 = [v65 code] == 516;

            if (v70)
            {
              v71 = CDBGroupContainerMigrationHandle;
              if (os_log_type_enabled(CDBGroupContainerMigrationHandle, OS_LOG_TYPE_INFO))
              {
                *v116 = 138543362;
                *&v116[4] = v60;
                _os_log_impl(&dword_1DEBB1000, v71, OS_LOG_TYPE_INFO, "Skipping migrating file %{public}@ because the file already exists in the destination", v116, 0xCu);
              }

              v68 = &v102;
              goto LABEL_76;
            }
          }

          else
          {
          }

          v72 = CDBGroupContainerMigrationHandle;
          v73 = os_log_type_enabled(CDBGroupContainerMigrationHandle, OS_LOG_TYPE_ERROR);
          v68 = (&v103 + 4);
          if (v73)
          {
            *v116 = 138543618;
            *&v116[4] = v60;
            *&v116[12] = 2112;
            *&v116[14] = v65;
            _os_log_impl(&dword_1DEBB1000, v72, OS_LOG_TYPE_ERROR, "Error migrating %{public}@: %@", v116, 0x16u);
            v68 = (&v103 + 4);
          }

LABEL_76:
          ++*v68;
        }

        v57 = [v96 countByEnumeratingWithState:&v108 objects:buf count:16];
      }

      while (v57);
    }
  }

  v74 = CDBGroupContainerMigrationHandle;
  if (os_log_type_enabled(CDBGroupContainerMigrationHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    *v126 = v104;
    *&v126[4] = 1024;
    *&v126[6] = v102;
    LOWORD(v127) = 1024;
    *(&v127 + 2) = HIDWORD(v102);
    HIWORD(v127) = 1024;
    *v128 = HIDWORD(v103);
    v75 = "Finished migration. Successfully moved %i files. Skipped %i files or directories that already existed in the destination directory. Skipped %i subdirectories. Failed to move %i files.";
    v76 = v74;
    v77 = OS_LOG_TYPE_DEFAULT;
    v78 = 26;
LABEL_83:
    _os_log_impl(&dword_1DEBB1000, v76, v77, v75, buf, v78);
  }

LABEL_84:

  v80 = *MEMORY[0x1E69E9840];
}

uint64_t __CalDatabaseMigrateDirectories_block_invoke(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 domain];
  if ([v7 isEqualToString:*MEMORY[0x1E696A798]])
  {
    v8 = [v6 code];

    if (v8 == 2)
    {
      ++*(a1[6] + 8);
      goto LABEL_7;
    }
  }

  else
  {
  }

  v9 = CDBGroupContainerMigrationHandle;
  if (os_log_type_enabled(CDBGroupContainerMigrationHandle, OS_LOG_TYPE_ERROR))
  {
    v10 = a1[4];
    v13 = 138543874;
    v14 = v10;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_1DEBB1000, v9, OS_LOG_TYPE_ERROR, "Error migrating %{public}@; encountered error for %@: %@", &v13, 0x20u);
  }

LABEL_7:
  *(*(a1[5] + 8) + 24) = 0;

  v11 = *MEMORY[0x1E69E9840];
  return 1;
}

void CalParticipantPropagateUUIDsFromMainEventToDetachments(uint64_t a1)
{
  v2 = CalEventCopyDetachedEvents(a1);
  if (v2)
  {
    v36 = v2;
    v34 = CalEventCopyAttendees(a1);
    if (v34)
    {
      v3 = objc_opt_new();
      v4 = objc_opt_new();
      v5 = CalEventCopyOrganizer(a1);
      if (v5)
      {
        v6 = v5;
        v7 = CalParticipantSemanticIdentifier(v5);
        v8 = CalOrganizerCopyUUID(v6);
        v35 = v8;
        if (v7 && v8)
        {
          [v4 setObject:v8 forKeyedSubscript:v7];
        }

        CFRelease(v6);
      }

      else
      {
        v35 = 0;
        v7 = 0;
      }

      if ([v34 count])
      {
        for (i = 0; i < [v34 count]; ++i)
        {
          v10 = [v34 objectAtIndexedSubscript:i];

          v11 = CalParticipantSemanticIdentifier(v10);
          v12 = CalAttendeeCopyUUID(v10);
          EntityType = CalParticipantGetEntityType(v10);
          if (!v11 || !v12)
          {
            goto LABEL_18;
          }

          if (EntityType == 8)
          {
            v14 = [v4 objectForKeyedSubscript:v11];

            v15 = v4;
            if (!v14)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v16 = [v3 objectForKeyedSubscript:v11];

            v15 = v3;
            if (!v16)
            {
LABEL_17:
              [v15 setObject:v12 forKeyedSubscript:v11];
            }
          }

LABEL_18:
        }
      }

      if ([(__CFArray *)v36 count])
      {
        v17 = 0;
        do
        {
          v18 = [(__CFArray *)v36 objectAtIndexedSubscript:v17];

          v19 = CalEventCopyOrganizer(v18);
          if (v19)
          {
            v20 = v19;
            v21 = CalParticipantSemanticIdentifier(v19);
            v22 = CalOrganizerCopyUUID(v20);
            v23 = v22;
            if (v21 && v22)
            {
              if (v35)
              {
                CalParticipantSetUUID(v20, v35);
              }

              else
              {
                [v4 setObject:v22 forKeyedSubscript:v21];
              }
            }

            CFRelease(v20);
          }

          v24 = CalEventCopyAttendees(v18);
          if ([v24 count])
          {
            v25 = 0;
            do
            {
              v26 = [v24 objectAtIndexedSubscript:v25];

              v27 = CalParticipantSemanticIdentifier(v26);
              v28 = CalAttendeeCopyUUID(v26);
              v29 = CalParticipantGetEntityType(v26);
              if (v27 && v28)
              {
                if (v29 == 8)
                {
                  v30 = v4;
                }

                else
                {
                  v30 = v3;
                }

                v31 = v30;
                v32 = [v31 objectForKeyedSubscript:v27];
                if (v32)
                {
                  CalParticipantSetUUID(v26, v32);
                }

                else
                {
                  [v31 setObject:v28 forKeyedSubscript:v27];
                }
              }

              ++v25;
            }

            while (v25 < [v24 count]);
          }

          ++v17;
        }

        while (v17 < [(__CFArray *)v36 count]);
      }
    }

    v2 = v36;
  }
}

BOOL CalAttendeeUpdateFromICSUserAddress(void *a1, const void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  if (a2)
  {
    v9 = a4;
    v10 = [v7 cn];

    if (v10)
    {
      v11 = [v7 cn];
      CalAttendeeSetDisplayName(a2, v11);
    }

    CalAttendeeSetAddress(a2, [v7 value]);
    CalAttendeeSetEmailAddress(a2, [v7 emailAddress]);
    CalAttendeeSetPhoneNumber(a2, [v7 phoneNumber]);
    v12 = CalAttendeeTypeFromICSCalendarUser([v7 cutype]);
    CalAttendeeSetType(a2, v12);
    v13 = CalAttendeeStatusFromICSParticipationStatus([v7 partstat]);
    CalAttendeeSetStatus(a2, v13);
    v14 = CalAttendeeRoleFromICSRole([v7 role]);
    CalAttendeeSetRole(a2, v14);
    v15 = [v9 valueForKey:@"ItemBridgeOptions"];

    v16 = [v15 unsignedIntegerValue];
    v17 = CalScheduleAgentFromICSScheduleAgent([v7 scheduleAgentWithDefaultValue:2 * ((~v16 & 2) == 0)]);
    CalParticipantSetScheduleAgent(a2, v17);
    CalParticipantSetRSVP(a2, [v7 rsvp]);
    CalAttendeeSetScheduleStatus(a2, [v7 schedulestatus]);
    CalAttendeeSetScheduleForceSend(a2, [v7 scheduleforcesend] != 0);
    v18 = [v7 partstatModified];
    v19 = MEMORY[0x1E6993100];
    if (v18)
    {
      v20 = objc_alloc(MEMORY[0x1E69E3C90]);
      v21 = [v7 partstatModified];
      v22 = [v20 initWithValue:v21];

      v23 = CalDateFromICSDate(v22, v8);
      if (vabdd_f64(v23, *v19) >= 2.22044605e-16)
      {
        CalAttendeeSetLastModified(a2, v23);
      }
    }

    v24 = [v7 alternateTimeProposal];

    if (v24)
    {
      v25 = objc_alloc(MEMORY[0x1E69E3C90]);
      v26 = [v7 alternateTimeProposal];
      v27 = [v26 startDate];
      v28 = [v25 initWithValue:v27];

      v29 = CalDateFromICSDateAsUTC(v28);
      CalAttendeeSetProposedStartDate(a2, v29);
      v30 = [v7 alternateTimeProposal];
      CalAttendeeSetProposedStartDateStatus(a2, [v30 status]);
    }

    else
    {
      CalAttendeeSetProposedStartDate(a2, *v19);
      CalAttendeeSetProposedStartDateStatus(a2, 0);
    }

    CalParticipantSaveUnrecognizedPararmeters(v7, a2);
  }

  return a2 != 0;
}

void CalParticipantSaveUnrecognizedPararmeters(void *a1, _BOOL8 a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [v3 allParameters];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 uppercaseString];
        if ((_isSavedParameter(v11) & 1) == 0)
        {
          v12 = [v5 objectForKey:v10];
          if (v12)
          {
            [v4 setObject:v12 forKey:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v21 = @"extraParams";
    v22 = v4;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v16 = 0;
    v14 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v16];
  }

  else
  {
    v14 = 0;
  }

  CalParticipantSetExternalRepresentation(a2, v14);

  v15 = *MEMORY[0x1E69E9840];
}

id ICSUserAddressFromCalAttendee(uint64_t a1)
{
  if (!a1)
  {
    v6 = 0;
    goto LABEL_19;
  }

  v2 = CalAttendeeCopyAddress(a1);
  v3 = CalAttendeeCopyEmailAddress(a1);
  v4 = CalAttendeeCopyPhoneNumber(a1);
  v5 = v4;
  if (v2)
  {
    v6 = [objc_alloc(MEMORY[0x1E69E3D10]) initWithURL:v2];
    [v6 setEmail:v3];
    [v6 setX_apple_telephone:v5];
    if (!v3)
    {
      if (!v5)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v3)
  {
    v6 = [objc_alloc(MEMORY[0x1E69E3D10]) initWithEmailAddress:v3];
    [v6 setX_apple_telephone:v5];
LABEL_9:
    CFRelease(v3);
    if (!v5)
    {
LABEL_11:
      v7 = CalAttendeeCopyDisplayName(a1);
      if (v7)
      {
        v8 = v7;
        [v6 setCn:v7];
        CFRelease(v8);
      }

      Type = CalAttendeeGetType(a1);
      [v6 setCutype:ICSCalendarUserFromCalAttendeeType(Type)];
      Status = CalAttendeeGetStatus(a1);
      [v6 setPartstat:ICSParticipationStatusFromCalAttendeeStatus(Status)];
      Role = CalAttendeeGetRole(a1);
      [v6 setRole:ICSRoleFromCalAttendeeRole(Role)];
      ScheduleAgent = CalParticipantGetScheduleAgent(a1);
      [v6 setScheduleagent:ICSScheduleAgentFromCalScheduleAgent(ScheduleAgent)];
      [v6 setRsvp:CalParticipantGetRSVP(a1)];
      [v6 setScheduleforcesend:CalAttendeeGetScheduleForceSend(a1)];
      LastModified = CalAttendeeGetLastModified(a1);
      v14 = *MEMORY[0x1E6993100];
      if (vabdd_f64(LastModified, *MEMORY[0x1E6993100]) >= 2.22044605e-16)
      {
        v34 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
        v15 = objc_alloc(MEMORY[0x1E695DEE8]);
        v32 = [v15 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
        v33 = [objc_alloc(MEMORY[0x1E695DFE8]) initWithName:@"GMT"];
        [v32 setTimeZone:v33];
        v16 = [v32 components:252 fromDate:v34];
        v17 = objc_alloc(MEMORY[0x1E69E3C98]);
        v18 = [v16 year];
        v19 = [v16 month];
        v20 = [v16 day];
        v21 = [v16 hour];
        v22 = v2;
        v23 = [v16 minute];
        v24 = [v16 second];
        v25 = v23;
        v2 = v22;
        v26 = [v17 initWithYear:v18 month:v19 day:v20 hour:v21 minute:v25 second:v24];
        [v6 setPartstatModified:v26];
      }

      ProposedStartDate = CalAttendeeGetProposedStartDate(a1);
      if (ProposedStartDate != v14)
      {
        v28 = ProposedStartDate;
        v29 = objc_opt_new();
        v30 = ICSDateTimeForCalDate(v28);
        [v29 setStartDate:v30];

        [v29 setStatus:CalAttendeeGetProposedStartDateStatus(a1)];
        [v6 setAlternateTimeProposal:v29];
      }

      CalParticipantApplyExternalRepresentationToICSUser(a1, v6);
      goto LABEL_18;
    }

LABEL_10:
    CFRelease(v5);
    goto LABEL_11;
  }

  if (v4)
  {
    v6 = [objc_alloc(MEMORY[0x1E69E3D10]) initWithPhoneNumber:v4];
    goto LABEL_10;
  }

  v6 = 0;
LABEL_18:

LABEL_19:

  return v6;
}

void CalParticipantApplyExternalRepresentationToICSUser(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CalParticipantCopyExternalRepresentation(a1);
  if (v4)
  {
    v5 = [MEMORY[0x1E69E3CD0] valueAndParameterClasses];
    v29 = 0;
    v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v5 fromData:v4 error:&v29];
    v7 = v29;
    v8 = v7;
    if (v6)
    {
      v22 = v7;
      v23 = v5;
      v24 = v4;
      v9 = [v6 objectForKeyedSubscript:@"extraParams"];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v26;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v26 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v25 + 1) + 8 * i);
            v15 = [v14 uppercaseString];
            isSavedParameter = _isSavedParameter(v15);

            if ((isSavedParameter & 1) == 0)
            {
              v17 = [v3 parameterValueForName:v14];

              if (v17)
              {
                v18 = CDBiCalendarConversionHandle;
                if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138543362;
                  v32 = v14;
                  _os_log_impl(&dword_1DEBB1000, v18, OS_LOG_TYPE_FAULT, "We have a saved value for an unrecognized parameter %{public}@ on an attachment, but the property already has a parameter with that name! _isSavedParameter may be out of date.", buf, 0xCu);
                }
              }

              else
              {
                v19 = [v9 objectForKeyedSubscript:v14];
                [v3 setParameterValue:v19 forName:v14];
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v11);
      }

      v5 = v23;
      v4 = v24;
      v8 = v22;
    }

    else
    {
      v20 = CDBiCalendarConversionHandle;
      if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = v8;
        _os_log_impl(&dword_1DEBB1000, v20, OS_LOG_TYPE_ERROR, "Error decoding extra parameters for attendee: %@", buf, 0xCu);
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

id ICSAttendeeCommentFromCalAttendee(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = CalAttendeeCopyResponseComment(a1);
    if (v4)
    {
      v5 = [v3 value];
      v6 = [v5 absoluteString];
      if (v6)
      {
        v7 = [objc_alloc(MEMORY[0x1E69E3C58]) initWithComment:v4];
        [v7 setX_calendarserver_attendee_ref:v6];
        CommentLastModified = CalParticipantGetCommentLastModified(a1);
        v9 = ICSDateTimeForCalDate(CommentLastModified);
        [v7 setX_calendarserver_dtstamp:v9];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL CalOrganizerUpdateFromICSUserAddress(void *a1, void *a2, _BOOL8 a3, int a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  if (a3)
  {
    v11 = a5;
    v12 = [v9 cn];

    if (v12)
    {
      v13 = [v9 cn];
      CalOrganizerSetDisplayName(a3, v13);
    }

    CalOrganizerSetAddress(a3, [v9 value]);
    v14 = [v9 emailAddress];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [v10 emailAddress];
    }

    v17 = v16;

    CalOrganizerSetEmailAddress(a3, v17);
    v18 = [v9 phoneNumber];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = [v10 phoneNumber];
    }

    v21 = v20;

    CalOrganizerSetPhoneNumber(a3, v21);
    v22 = [v11 valueForKey:@"ItemBridgeOptions"];

    v23 = [v22 unsignedIntegerValue];
    if (a4)
    {
      v24 = 0;
    }

    else
    {
      v24 = 2 * ((~v23 & 2) == 0);
    }

    v25 = CalScheduleAgentFromICSScheduleAgent([v9 scheduleAgentWithDefaultValue:v24]);
    CalParticipantSetScheduleAgent(a3, v25);
    CalParticipantSetRSVP(a3, [v9 rsvp]);
    CalParticipantSetScheduleForceSend(a3, [v9 scheduleforcesend] != 0);
    CalParticipantSaveUnrecognizedPararmeters(v9, a3);
  }

  return a3;
}

id ICSUserAddressFromCalOrganizer(uint64_t a1)
{
  if (!a1)
  {
    v6 = 0;
    goto LABEL_17;
  }

  v2 = CalOrganizerCopyAddress(a1);
  v3 = CalOrganizerCopyEmailAddress(a1);
  v4 = CalOrganizerCopyPhoneNumber(a1);
  v5 = v4;
  if (v2)
  {
    v6 = [objc_alloc(MEMORY[0x1E69E3D10]) initWithURL:v2];
    [v6 setEmail:v3];
    [v6 setX_apple_telephone:v5];
    if (!v3)
    {
      if (!v5)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else
  {
    if (!v3)
    {
      if (!v4)
      {
        v6 = 0;
        goto LABEL_11;
      }

      v6 = [objc_alloc(MEMORY[0x1E69E3D10]) initWithPhoneNumber:v4];
      goto LABEL_10;
    }

    v6 = [objc_alloc(MEMORY[0x1E69E3D10]) initWithEmailAddress:v3];
    [v6 setX_apple_telephone:v5];
  }

  CFRelease(v3);
  if (v5)
  {
LABEL_10:
    CFRelease(v5);
  }

LABEL_11:
  v7 = CalOrganizerCopyDisplayName(a1);
  if (v7)
  {
    v8 = v7;
    [v6 setCn:v7];
    CFRelease(v8);
  }

  ScheduleAgent = CalParticipantGetScheduleAgent(a1);
  [v6 setScheduleagent:ICSScheduleAgentFromCalScheduleAgent(ScheduleAgent)];
  [v6 setRsvp:CalParticipantGetRSVP(a1)];
  if (CalParticipantGetScheduleForceSend(a1))
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  [v6 setScheduleforcesend:v10];
  CalParticipantApplyExternalRepresentationToICSUser(a1, v6);

LABEL_17:

  return v6;
}

uint64_t _isSavedParameter(void *a1)
{
  v1 = _isSavedParameter_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    _isSavedParameter_cold_1();
  }

  v3 = [_isSavedParameter_savedAttendeeParameters containsObject:v2];

  return v3;
}

uint64_t ___isSavedParameter_block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E69E3EC8], *MEMORY[0x1E69E3F20], *MEMORY[0x1E69E3E68], *MEMORY[0x1E69E3D20], *MEMORY[0x1E69E3EE8], *MEMORY[0x1E69E3F88], *MEMORY[0x1E69E3FB8], *MEMORY[0x1E69E3FD0], *MEMORY[0x1E69E3FC8], *MEMORY[0x1E69E3FE0], *MEMORY[0x1E69E3FD8], *MEMORY[0x1E69E3E60], *MEMORY[0x1E69E3EA0], 0}];
  v1 = _isSavedParameter_savedAttendeeParameters;
  _isSavedParameter_savedAttendeeParameters = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

const void *_CalRecurrenceCopyOwningEventTimeZoneIfDifferent(uint64_t a1, const void *a2)
{
  Owner = _CalRecurrenceGetOwner(a1, 0);
  if (!Owner)
  {
    return 0;
  }

  started = _CalCalendarItemCopyStartTimeZone(Owner);
  v5 = started;
  if (started && CFEqual(started, a2))
  {
    CFRelease(v5);
    return 0;
  }

  return v5;
}

__CFArray *_CalRecurrenceCopyOccurrenceDatesDispatch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, CFAbsoluteTime a9, CFAbsoluteTime a10, double a11, const __CFTimeZone *a12)
{
  v22 = a12;
  v230 = *MEMORY[0x1E69E9840];
  Frequency = _CalRecurrenceGetFrequency(a1);
  theArray = 0;
  if (Frequency > 2)
  {
    if (Frequency != 3)
    {
      if (Frequency != 4)
      {
        goto LABEL_351;
      }

      if (_CalRecurrenceIsSimpleYearly(a1))
      {
        v37 = *&a5;
        v38 = _CalRecurrenceCopyOccurrenceDatesDispatch_sCalendar;
        if (!_CalRecurrenceCopyOccurrenceDatesDispatch_sCalendar)
        {
          v39 = [MEMORY[0x1E695DEE8] CalGregorianGMTCalendar];
          v40 = [v39 copy];
          v41 = _CalRecurrenceCopyOccurrenceDatesDispatch_sCalendar;
          _CalRecurrenceCopyOccurrenceDatesDispatch_sCalendar = v40;

          v38 = _CalRecurrenceCopyOccurrenceDatesDispatch_sCalendar;
        }

        [v38 setTimeZone:a12];
        v42 = objc_alloc_init(MEMORY[0x1E695DF10]);
        v43 = objc_alloc_init(MEMORY[0x1E695DF10]);
        v44 = objc_alloc_init(MEMORY[0x1E695DF10]);
        [v42 setYear:a2];
        [v42 setMonth:a2 << 24 >> 56];
        [v42 setDay:a2 << 16 >> 56];
        [v42 setHour:a2 << 8 >> 56];
        [v42 setMinute:a2 >> 56];
        [v42 setSecond:*&a3];
        [v43 setYear:a4];
        [v43 setMonth:a4 << 24 >> 56];
        [v43 setDay:a4 << 16 >> 56];
        [v43 setHour:a4 << 8 >> 56];
        [v43 setMinute:a4 >> 56];
        [v43 setSecond:v37];
        [v44 setYear:a6];
        [v44 setMonth:a6 << 24 >> 56];
        [v44 setDay:a6 << 16 >> 56];
        [v44 setHour:a6 << 8 >> 56];
        [v44 setMinute:a6 >> 56];
        v216 = v44;
        [v44 setSecond:*&a7];
        v45 = _CalRecurrenceCopyOccurrenceDatesDispatch_sCalendar;
        Interval = _CalRecurrenceGetInterval(a1);
        ShouldPinMonthDays = _CalRecurrenceShouldPinMonthDays(a1);
        v48 = v45;
        v49 = v42;
        v50 = v43;
        theArray = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        v51 = [v49 copy];
        v212 = v50;
        [v51 setYear:{objc_msgSend(v50, "year")}];
        v52 = _CalValidateCalDate(v48, v51, ShouldPinMonthDays);
        v53 = [v48 dateFromComponents:v51];
        [v53 timeIntervalSinceReferenceDate];
        if (a8)
        {
          if (fabs(a11) < 2.22044605e-16 || a11 > 1577840000.0)
          {
            a11 = 1577840000.0;
          }
        }

        if (v54 <= a11)
        {
          v56 = Interval;
          v57 = a8;
          if (a8)
          {
            v58 = -1;
          }

          else
          {
            v58 = 0;
          }

          v59 = v56;
          do
          {
            if (v54 >= a10 && v52)
            {
              CFArrayAppendValue(theArray, v53);
              v57 += v58;
            }

            [v51 setYear:{objc_msgSend(v51, "year") + v59}];
            [v51 setDay:{objc_msgSend(v49, "day")}];
            v52 = _CalValidateCalDate(v48, v51, ShouldPinMonthDays);
            v60 = [v48 dateFromComponents:v51];

            [v60 timeIntervalSinceReferenceDate];
            v53 = v60;
            if (a8)
            {
              v61 = v57 == 0;
            }

            else
            {
              v61 = 0;
            }

            v62 = !v61;
          }

          while (v54 <= a11 && (v62 & 1) != 0);
        }

        goto LABEL_351;
      }

      v226 = a8;
      theArray = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      v89 = _CalRecurrenceGetInterval(a1);
      memset(v229, 0, 28);
      CalGregorianDateGetGregorianDateForYear();
      CalGregorianDateGetGregorianDateForYear();
      CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
      v91 = v90;
      CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
      CFAbsoluteTimeGetDifferenceAsGregorianUnits(&v228, v92, v91, a12, 1uLL);
      v93 = v228.years % v89;
      *&v227.years = 0;
      v227.days = 1 - CFAbsoluteTimeGetDayOfYear(a10, a12);
      memset(&v227.hours, 0, 20);
      CalAbsoluteTimeAddGregorianUnits();
      v95 = v94;
      if (v93 >= 1)
      {
        v227.years = v89 - v93;
        memset(&v227.months, 0, 28);
        CalAbsoluteTimeAddGregorianUnits();
        v95 = v96;
      }

      v97 = _CalRecurrenceShouldPinMonthDays(a1);
      v224 = 0.0;
      v225 = 0.0;
      v222 = 0;
      v223 = 0;
      v220 = 0.0;
      v221 = 0.0;
      v98 = _CalRecurrenceCopyByYearDayDays(a1);
      v202 = _CalRecurrenceCopyByDayDays(a1);
      v99 = _CalRecurrenceCopyByMonthDayDays(a1);
      v100 = _CalRecurrenceCopyByWeekWeeks(a1);
      v213 = _CalRecurrenceCopyBySetPos(a1);
      v101 = _CalRecurrenceGetByMonthMonths(a1);
      v201 = v98;
      if (v98 && CFArrayGetCount(v98) >= 1)
      {
        cf = v99;
        v102 = v98;
        v103 = 0;
        v104 = _CalRecurrenceByYearDayGenerator;
        v224 = COERCE_DOUBLE(_CalRecurrenceByYearDayGenerator);
      }

      else
      {
        if (v99 && CFArrayGetCount(v99) >= 1)
        {
          v125 = _CalRecurrenceShouldPinMonthDays(a1);
          v126 = v99;
          if (v125)
          {
            v104 = _CalRecurrenceByMonthDayGeneratorPinned;
          }

          else
          {
            v104 = _CalRecurrenceByMonthDayGenerator;
          }

          v224 = *&v104;
          v225 = *&v126;
          cf = v126;
          v103 = v202;
          if (!v202)
          {
            v202 = 0;
            goto LABEL_257;
          }

          if (CFArrayGetCount(v202) < 1)
          {
            v103 = 0;
            goto LABEL_257;
          }

          p_days = &v227.days;
          *&v227.years = _CalRecurrenceByDayFilter;
          v102 = v202;
          v103 = 1;
LABEL_256:
          *p_days = v102;
LABEL_257:
          if (v101)
          {
LABEL_271:
            v169 = cf;
LABEL_272:
            v172 = &v227 + 2 * v103++;
            *v172 = _CalRecurrenceByMonthFilter;
            v172[1] = v101;
            if (!v100)
            {
              cf = v169;
              v175 = 1;
              v85 = v213;
              goto LABEL_280;
            }

            v85 = v213;
            goto LABEL_274;
          }

          if (!v100)
          {
            v85 = v213;
            if (v104 == _CalRecurrenceByYearDayGenerator)
            {
              v175 = 1;
              goto LABEL_280;
            }

LABEL_270:
            v101 = 1 << (((a2 >> 8) >> 24) - 1);
            goto LABEL_271;
          }

          v85 = v213;
LABEL_260:
          if (CFArrayGetCount(v100) || v104 == _CalRecurrenceByYearDayGenerator)
          {
            v169 = cf;
LABEL_274:
            cf = v169;
            if (!CFArrayGetCount(v100))
            {
              v175 = 0;
              goto LABEL_280;
            }

            v173 = 1;
            goto LABEL_276;
          }

          goto LABEL_270;
        }

        if (!v202 || CFArrayGetCount(v202) < 1)
        {
          if (v101)
          {
            if (v99)
            {
              CFRelease(v99);
            }

            *values = SBYTE5(a2);
            *&v169 = COERCE_DOUBLE(CFArrayCreate(0, values, 1, 0));
            v170 = _CalRecurrenceShouldPinMonthDays(a1);
            v103 = 0;
            v171 = _CalRecurrenceByMonthDayGenerator;
            if (v170)
            {
              v171 = _CalRecurrenceByMonthDayGeneratorPinned;
            }

            v224 = *&v171;
            v225 = *&v169;
            goto LABEL_272;
          }

          cf = v99;
          if (!v100)
          {
            v173 = 0;
            v103 = 0;
            v199 = 1;
            v85 = v213;
            goto LABEL_285;
          }

          v85 = v213;
          if (CFArrayGetCount(v100) < 1)
          {
            v173 = 0;
            v103 = 0;
            if (!CFArrayGetCount(v100))
            {
              v199 = 0;
              v103 = 0;
              goto LABEL_285;
            }

LABEL_276:
            v223 = v100;
            WeekStart = _CalRecurrenceGetWeekStart(a1);
            v175 = 0;
            LODWORD(v222) = WeekStart;
            v176 = &v227 + 2 * v103++;
            *v176 = _CalRecurrenceByWeekNoFilter;
            v176[1] = &v222;
            if (!v173)
            {
              v199 = 0;
              v173 = 0;
              goto LABEL_285;
            }

LABEL_280:
            v199 = v175;
            if (v85)
            {
              if (!CFArrayGetCount(v85))
              {
                v220 = a10;
                v221 = a11;
                v177 = &v227 + 2 * v103++;
                *v177 = _CalRecurrenceRangeFilter;
                v177[1] = &v220;
                CFRelease(v85);
                v85 = 0;
              }
            }

            else
            {
              v220 = a10;
              v221 = a11;
              v178 = &v227 + 2 * v103++;
              *v178 = _CalRecurrenceRangeFilter;
              v178[1] = &v220;
            }

            v173 = 1;
LABEL_285:
            v218 = 0;
            v219 = 0;
            v179 = fabs(a11);
            if (a9 >= a10 && (a9 < a11 || v179 < 2.22044605e-16))
            {
              _CalInsertAbsoluteTimeIntoArrayAtIndex(theArray, 0, a9);
              if (a8)
              {
                v226 = a8 - 1;
              }

              if (v85)
              {
                v218 = 1;
              }
            }

            v200 = v100;
            v180 = a11;
            if (a8)
            {
              if (v179 >= 2.22044605e-16 && a11 <= 1577840000.0)
              {
                v180 = a11;
              }

              else
              {
                v180 = 1577840000.0;
              }
            }

            if (v95 < v180)
            {
              if (v85)
              {
                v182 = 0.0;
              }

              else
              {
                v182 = a9;
              }

              v183 = &v226;
              if (v85)
              {
                v183 = 0;
              }

              v208 = v183;
              v204 = v97;
              do
              {
                if (a8 && !v226)
                {
                  break;
                }

                if (v173)
                {
                  v184 = _CalRecurrenceApplyGenerator(theArray, &v224, &v227, v103, 4, v208, v22, v182, a10, a11, v95);
LABEL_310:
                  v219 = v184;
                  if (v85)
                  {
                    if (v184)
                    {
                      _CalRecurrenceApplyBySetPosToRange(theArray, v85, &v218, v226, a10, a11, a9);
                      v184 = v219;
                      if (v226)
                      {
                        v226 -= v219;
                      }
                    }
                  }

                  goto LABEL_331;
                }

                GregorianDateWithFallbackToDefaultTimeZone = CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
                v187 = v186;
                v188 = GregorianDateWithFallbackToDefaultTimeZone & 0xFFFF0000FFFFFFFFLL;
                v189 = BYTE5(a2);
                if (v97)
                {
                  DaysInMonth = CalGregorianDateGetDaysInMonth();
                  v189 = DaysInMonth;
                  if (DaysInMonth >= SBYTE5(a2))
                  {
                    v189 = BYTE5(a2);
                  }
                }

                *&v232.year = a2 & 0xFF00000000 | (v189 << 40) | v188;
                v232.second = v187;
                if (CFGregorianDateIsValid(v232, 7uLL))
                {
                  v22 = a12;
                  CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
                  v192 = v191 < a11 || v179 < 2.22044605e-16;
                  if (v191 < a10 || !v192)
                  {
                    v184 = 0;
LABEL_330:
                    v97 = v204;
                    goto LABEL_331;
                  }

                  v194 = v191;
                  if (vabdd_f64(v191, a9) < 2.22044605e-16)
                  {
                    v184 = 0;
                    goto LABEL_330;
                  }

                  if (v103 && !_CalRecurrenceApplyFiltersToSingleDate(0, &v227, v103, a12, v191, a9))
                  {
                    v184 = 0;
                    goto LABEL_330;
                  }

                  _CalAppendAbsoluteTimeToArray(theArray, v194);
                  v97 = v204;
                  v184 = 1;
                  if (!v226 || v85)
                  {
                    goto LABEL_310;
                  }

                  --v226;
                  v184 = 1;
                }

                else
                {
                  v184 = 0;
                  v22 = a12;
                }

LABEL_331:
                *values = v89;
                *&values[4] = v229[0];
                *&values[16] = *(v229 + 12);
                CalAbsoluteTimeAddGregorianUnits();
                v95 = v195;
                v218 = v218 + v184;
                v219 = 0;
              }

              while (v195 < v180);
            }

            if (v202)
            {
              CFRelease(v202);
            }

            if (cf)
            {
              CFRelease(cf);
            }

            if (v201)
            {
              CFRelease(v201);
            }

            if ((v199 & 1) == 0)
            {
              v168 = v200;
LABEL_347:
              CFRelease(v168);
            }

LABEL_348:
            if (v85)
            {
              v120 = v85;
              goto LABEL_350;
            }

            goto LABEL_351;
          }

          if (v202)
          {
            CFRelease(v202);
          }

          *values = 0;
          *&values[4] = CalAbsoluteTimeGetDayOfWeek();
          v218 = values;
          *&v198 = COERCE_DOUBLE(CFArrayCreate(0, &v218, 1, MEMORY[0x1E6993118]));
          v103 = 0;
          v104 = _CalRecurrenceByDayGenerator;
          v224 = COERCE_DOUBLE(_CalRecurrenceByDayGenerator);
          v225 = *&v198;
          v202 = v198;
          goto LABEL_260;
        }

        cf = v99;
        v104 = _CalRecurrenceByDayGenerator;
        v224 = COERCE_DOUBLE(_CalRecurrenceByDayGenerator);
        v102 = v202;
        v103 = 0;
      }

      p_days = &v225;
      goto LABEL_256;
    }

    LODWORD(v218) = a8;
    theArray = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v77 = _CalRecurrenceGetInterval(a1);
    memset(v229, 0, 24);
    CalGregorianDateGetGregorianDateForMonth();
    CalGregorianDateGetGregorianDateForMonth();
    CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
    v79 = v78;
    CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
    CFAbsoluteTimeGetDifferenceAsGregorianUnits(&v228, v80, v79, a12, 2uLL);
    *&v227.years = 0;
    v227.days = 1 - ((a4 >> 16) >> 24);
    v81 = v228.months % v77;
    memset(&v227.hours, 0, 20);
    CalAbsoluteTimeAddGregorianUnits();
    v83 = v82;
    if (v81 >= 1)
    {
      v227.years = 0;
      v227.months = v77 - v81;
      memset(&v227.days, 0, 24);
      CalAbsoluteTimeAddGregorianUnits();
      v83 = v84;
    }

    v209 = _CalRecurrenceShouldPinMonthDays(a1);
    v85 = _CalRecurrenceCopyBySetPos(a1);
    v86 = _CalRecurrenceGetByMonthMonths(a1);
    v87 = v86;
    v224 = 0.0;
    v225 = 0.0;
    v222 = 0;
    v223 = 0;
    if (v86)
    {
      *&v227.years = _CalRecurrenceByMonthFilter;
      *&v227.days = v86;
      v88 = 1;
    }

    else
    {
      v88 = 0;
    }

    v121 = _CalRecurrenceCopyByMonthDayDays(a1);
    v122 = _CalRecurrenceCopyByDayDays(a1);
    v123 = *&v122;
    v220 = 0.0;
    v221 = 0.0;
    v203 = v122;
    if (v122)
    {
      if (CFArrayGetCount(v122) < 1)
      {
        LOBYTE(v123) = 0;
        v124 = 1;
        if (!v121)
        {
          goto LABEL_187;
        }
      }

      else
      {
        v124 = 0;
        v220 = COERCE_DOUBLE(_CalRecurrenceByDayGenerator);
        v221 = v123;
        LOBYTE(v123) = 1;
        if (!v121)
        {
          goto LABEL_187;
        }
      }
    }

    else
    {
      v124 = 1;
      if (!v121)
      {
        goto LABEL_187;
      }
    }

    if (CFArrayGetCount(v121))
    {
      if (v124)
      {
        v214 = 0;
        *&v147 = COERCE_DOUBLE(_CalRecurrenceByMonthDayGenerator);
        if (v209)
        {
          *&v147 = COERCE_DOUBLE(_CalRecurrenceByMonthDayGeneratorPinned);
        }

        v220 = *&v147;
        v148 = &v220;
      }

      else
      {
        if (v209)
        {
          v150 = _CalRecurrenceByMonthDayFilterPinned;
        }

        else
        {
          v150 = _CalRecurrenceByMonthDayFilter;
        }

        v148 = (&v227.years + 4 * v88);
        *v148 = v150;
        v214 = 1;
      }

      *(v148 + 1) = v121;
      goto LABEL_194;
    }

LABEL_187:
    v214 = 0;
    if ((LOBYTE(v123) & 1) == 0)
    {
      v149 = 0;
LABEL_199:
      if (a9 >= a10 && (a9 < a11 || fabs(a11) < 2.22044605e-16))
      {
        _CalInsertAbsoluteTimeIntoArrayAtIndex(theArray, 0, a9);
        if (a8)
        {
          LODWORD(v218) = a8 - 1;
        }

        if (v85)
        {
          v222 = 1;
        }
      }

      v153 = a11;
      if (a8)
      {
        if (fabs(a11) >= 2.22044605e-16 && a11 <= 1577840000.0)
        {
          v153 = a11;
        }

        else
        {
          v153 = 1577840000.0;
        }
      }

      if (v83 >= v153)
      {
LABEL_248:
        if (v203)
        {
          CFRelease(v203);
        }

        v168 = v121;
        if (v121)
        {
          goto LABEL_347;
        }

        goto LABEL_348;
      }

      v155 = fabs(a11);
      if (v85)
      {
        v156 = 0.0;
      }

      else
      {
        v156 = a9;
      }

      v157 = &v218;
      if (v85)
      {
        v157 = 0;
      }

      cfa = v157;
      while (1)
      {
        if (a8 && !v218)
        {
          goto LABEL_248;
        }

        if (v87 && !_CalRecurrenceApplyFiltersToSingleDate(0, &v227, 1, v22, v83, a9))
        {
          goto LABEL_240;
        }

        if (v149)
        {
          v158 = _CalRecurrenceApplyGenerator(theArray, &v220, &v227 + 16 * v88, v214, 3, cfa, v22, v156, a10, a11, v83);
LABEL_226:
          v223 = v158;
          if (v85)
          {
            if (v158)
            {
              _CalRecurrenceApplyBySetPosToRange(theArray, v85, &v222, v218, a10, a11, a9);
              v158 = v223;
              if (v218)
              {
                LODWORD(v218) = v218 - v223;
              }
            }
          }

          goto LABEL_242;
        }

        v159 = CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
        v161 = v160;
        v162 = v159 & 0xFFFF00FFFFFFFFFFLL;
        v163 = BYTE5(a2);
        if (v209)
        {
          v164 = CalGregorianDateGetDaysInMonth();
          v163 = v164;
          if (v164 >= SBYTE5(a2))
          {
            v163 = BYTE5(a2);
          }
        }

        *&v231.year = (v163 << 40) | v162;
        v231.second = v161;
        if (!CFGregorianDateIsValid(v231, 7uLL))
        {
          v158 = 0;
          v22 = a12;
          goto LABEL_242;
        }

        v22 = a12;
        CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
        v158 = 0;
        v166 = v165 < a11 || v155 < 2.22044605e-16;
        if (v165 < a10 || !v166)
        {
          goto LABEL_242;
        }

        if (vabdd_f64(v165, a9) >= 2.22044605e-16)
        {
          _CalAppendAbsoluteTimeToArray(theArray, v165);
          if (!v218)
          {
            v158 = 1;
            goto LABEL_226;
          }

          v158 = 1;
          if (v85)
          {
            goto LABEL_226;
          }

          LODWORD(v218) = v218 - 1;
          v158 = 1;
        }

        else
        {
LABEL_240:
          v158 = 0;
        }

LABEL_242:
        *values = 0;
        *&values[4] = v77;
        *&values[8] = v229[0];
        *&values[24] = *&v229[1];
        CalAbsoluteTimeAddGregorianUnits();
        v83 = v167;
        v222 += v158;
        v223 = 0;
        if (v167 >= v153)
        {
          goto LABEL_248;
        }
      }
    }

LABEL_194:
    if (v85)
    {
      if (!CFArrayGetCount(v85))
      {
        v224 = a10;
        v225 = a11;
        v151 = &v227 + 2 * v214++ + 2 * v88;
        *v151 = _CalRecurrenceRangeFilter;
        v151[1] = &v224;
        CFRelease(v85);
        v85 = 0;
      }
    }

    else
    {
      v224 = a10;
      v225 = a11;
      v152 = &v227 + 2 * v214++ + 2 * v88;
      *v152 = _CalRecurrenceRangeFilter;
      v152[1] = &v224;
    }

    v149 = 1;
    goto LABEL_199;
  }

  if (Frequency != 1)
  {
    if (Frequency != 2)
    {
      goto LABEL_351;
    }

    theArray = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v24 = _CalRecurrenceGetInterval(a1);
    LODWORD(v222) = 0;
    v25 = _CalRecurrenceGetWeekStart(a1);
    CalAbsoluteTimeGetGregorianDateForWeek();
    CalAbsoluteTimeGetGregorianDateForWeek();
    CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
    v27 = v26;
    CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
    CFAbsoluteTimeGetDifferenceAsGregorianUnits(&v227, v28, v27, a12, 4uLL);
    v29 = v227.days / 7 % v24;
    if (v29 <= 0)
    {
      v30 = 0;
    }

    else
    {
      v30 = 7 * (v24 - v29);
    }

    *(&v228.minutes + 1) = 0;
    v228.minutes = 0;
    *&v228.years = 0;
    HIDWORD(v228.seconds) = 0;
    *&v228.days = (v30 - v222);
    CalAbsoluteTimeAddGregorianUnits();
    v32 = v31;
    v33 = _CalRecurrenceCopyByDayDays(a1);
    v34 = _CalRecurrenceCopyBySetPos(a1);
    v35 = _CalRecurrenceGetByMonthMonths(a1);
    v224 = 0.0;
    v225 = 0.0;
    if (v35)
    {
      *&v228.years = _CalRecurrenceByMonthFilter;
      *&v228.days = v35;
      v36 = 1;
    }

    else
    {
      v36 = 0;
    }

    v229[0] = 0uLL;
    if (v34)
    {
      if (!CFArrayGetCount(v34))
      {
        *v229 = a10;
        *(v229 + 1) = a11;
        v105 = &v228 + 2 * v36++;
        *v105 = _CalRecurrenceRangeFilter;
        v105[1] = v229;
        CFRelease(v34);
        v34 = 0;
      }

      if (v33)
      {
        goto LABEL_62;
      }
    }

    else
    {
      *v229 = a10;
      *(v229 + 1) = a11;
      v107 = &v228 + 2 * v36++;
      *v107 = _CalRecurrenceRangeFilter;
      v107[1] = v229;
      if (v33)
      {
LABEL_62:
        if (CFArrayGetCount(v33) < 1)
        {
          v106 = 1 << CalAbsoluteTimeGetDayOfWeek();
        }

        else
        {
          v106 = _CalRecurrenceByDayMaskFromArrayByDayItems(v33);
        }

        CFRelease(v33);
LABEL_117:
        v128 = (v106 >> v25) | (v106 << (7 - v25));
        if (!v25)
        {
          v128 = v106;
        }

        v210 = v128;
        v129 = a8;
        if (a9 >= a10)
        {
          if (a9 < a11 || (v129 = a8, fabs(a11) < 2.22044605e-16))
          {
            _CalInsertAbsoluteTimeIntoArrayAtIndex(theArray, 0, a9);
            v129 = a8 ? a8 - 1 : 0;
            if (v34)
            {
              *&v224 = 1;
            }
          }
        }

        v130 = a11;
        if (a8)
        {
          if (fabs(a11) >= 2.22044605e-16 && a11 <= 1577840000.0)
          {
            v130 = a11;
          }

          else
          {
            v130 = 1577840000.0;
          }
        }

        if (v129)
        {
          v132 = 1;
        }

        else
        {
          v132 = a8 == 0;
        }

        if (v132 && v32 < v130)
        {
          v207 = 7 * v24;
          if (v34)
          {
            v133 = 0.0;
          }

          else
          {
            v133 = a9;
          }

          v134 = fabs(a11);
          do
          {
            *&v135 = 0.0;
            v136 = v25;
            v137 = v210;
            do
            {
              if (v137)
              {
                *&values[20] = 0;
                v138 = v136 >= v25 ? 0 : 7;
                *&values[16] = 0;
                *&values[28] = 0;
                *values = 0;
                *&values[8] = v136 - v25 + v138;
                CalAbsoluteTimeAddGregorianUnits();
                v140 = v139;
                v141 = vabdd_f64(v139, a9) < 2.22044605e-16 && v34 == 0;
                if (!v141 && (!v36 || _CalRecurrenceApplyFiltersToSingleDate(0, &v228, v36, a12, v139, v133)))
                {
                  _CalAppendAbsoluteTimeToArray(theArray, v140);
                  if (v129)
                  {
                    v142 = v34 == 0;
                  }

                  else
                  {
                    v142 = 0;
                  }

                  v143 = v142;
                  v129 -= v143;
                  ++v135;
                }
              }

              if (v137 < 2)
              {
                break;
              }

              v136 = (v136 + 1) % 7;
              if (v136 == v25)
              {
                break;
              }

              v137 >>= 1;
            }

            while (v134 >= 2.22044605e-16 || v129);
            v225 = *&v135;
            if (v34 && v135 >= 1)
            {
              _CalRecurrenceApplyBySetPosToRange(theArray, v34, &v224, v129, a10, a11, a9);
              *&v135 = v225;
              if (v129)
              {
                v129 -= LODWORD(v225);
              }

              else
              {
                v129 = 0;
              }
            }

            *values = 0;
            *&values[8] = v207;
            memset(&values[12], 0, 20);
            CalAbsoluteTimeAddGregorianUnits();
            *&v224 += v135;
            v225 = 0.0;
            if (a8)
            {
              v145 = v129 == 0;
            }

            else
            {
              v145 = 0;
            }

            v146 = !v145;
          }

          while (v144 < v130 && (v146 & 1) != 0);
        }

        if (v34)
        {
          v120 = v34;
          goto LABEL_350;
        }

        goto LABEL_351;
      }
    }

    v106 = 1 << CalAbsoluteTimeGetDayOfWeek();
    goto LABEL_117;
  }

  theArray = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v63 = _CalRecurrenceGetInterval(a1);
  *values = 0;
  *&values[8] = 0;
  CalGregorianDateGetGregorianDateForDay();
  CalGregorianDateGetGregorianDateForDay();
  CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
  v65 = v64;
  CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
  CFAbsoluteTimeGetDifferenceAsGregorianUnits(&v228, v66, v65, a12, 4uLL);
  if ((v228.days % v63) >= 1)
  {
    *(&v227.minutes + 1) = 0;
    v227.minutes = 0;
    HIDWORD(v227.seconds) = 0;
    *&v227.years = 0;
    *&v227.days = v63 - v228.days % v63;
    CalAbsoluteTimeAddGregorianUnits();
    a10 = v67;
    a4 = CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
    a5 = v68;
  }

  v69 = a8;
  v70 = _CalRecurrenceCopyByDayDays(a1);
  v71 = _CalRecurrenceGetByMonthMonths(a1);
  if (!v71)
  {
    v73 = 0;
    v76 = 0;
    if (!v70)
    {
      goto LABEL_69;
    }

    goto LABEL_67;
  }

  *&v227.years = _CalRecurrenceByMonthFilter;
  *&v227.days = v71;
  v72 = _CalRecurrenceCopyByMonthDayDays(a1);
  v73 = v72;
  if (!v72 || CFArrayGetCount(v72) < 1)
  {
    v76 = 1;
    if (!v70)
    {
      goto LABEL_69;
    }

    goto LABEL_67;
  }

  v74 = _CalRecurrenceShouldPinMonthDays(a1);
  v75 = _CalRecurrenceByMonthDayFilter;
  if (v74)
  {
    v75 = _CalRecurrenceByMonthDayFilterPinned;
  }

  *&v227.minutes = v75;
  *&v227.seconds = v73;
  v76 = 2;
  if (v70)
  {
LABEL_67:
    if (CFArrayGetCount(v70) >= 1)
    {
      v108 = &v227 + 2 * v76;
      *v108 = _CalRecurrenceByDayMaskFilter;
      ++v76;
      v108[1] = _CalRecurrenceByDayMaskFromArrayByDayItems(v70);
    }
  }

LABEL_69:
  *values = a4;
  *&values[8] = a5;
  if (a8)
  {
    if (fabs(a11) < 2.22044605e-16 || a11 > 1577840000.0)
    {
      a11 = 1577840000.0;
    }
  }

  if (a10 < a11)
  {
    v110 = a8;
    do
    {
      if (!v76 || vabdd_f64(a10, a9) < 2.22044605e-16)
      {
        goto LABEL_83;
      }

      v111 = &v227.days;
      v112 = 1;
      do
      {
        v113 = (*(v111 - 1))(*v111, values, a12, a10);
        if (v112 >= v76)
        {
          break;
        }

        ++v112;
        v111 += 4;
      }

      while ((v113 & 1) != 0);
      v69 = a8;
      if (v113)
      {
LABEL_83:
        v114 = CFDateCreate(0, a10);
        if (v114)
        {
          v115 = v114;
          CFArrayAppendValue(theArray, v114);
          CFRelease(v115);
        }

        if (v110)
        {
          --v110;
        }

        else
        {
          v110 = 0;
        }
      }

      *values = CalGregorianDateAddDays();
      *&values[8] = v116;
      CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
      if (v69)
      {
        v118 = v110 == 0;
      }

      else
      {
        v118 = 0;
      }

      v119 = !v118;
      if (v117 >= a11)
      {
        break;
      }

      a10 = v117;
    }

    while ((v119 & 1) != 0);
  }

  if (v73)
  {
    CFRelease(v73);
  }

  if (v70)
  {
    v120 = v70;
LABEL_350:
    CFRelease(v120);
  }

LABEL_351:
  v196 = *MEMORY[0x1E69E9840];
  return theArray;
}

double _CalRecurrenceGetOrComputeCachedEndDate(uint64_t a1, int a2, int a3, const void *a4, CFAbsoluteTime a5)
{
  v10 = _CalRecurrenceCopyCachedEndDate(a1);
  v11 = *&v10;
  v12 = *MEMORY[0x1E6993100];
  if (vabdd_f64(*&v10, *MEMORY[0x1E6993100]) < 2.22044605e-16)
  {
    goto LABEL_9;
  }

  v13 = *&v10;
  if (a3)
  {
    v14 = CalTimeZoneCopyCFTimeZone();
    v13 = v12;
    if (v14)
    {
      v15 = v14;
      if (CFEqual(v14, a4))
      {
        v13 = v11;
      }

      else
      {
        v13 = v12;
      }

      CFRelease(v15);
    }
  }

  if (vabdd_f64(v13, v12) < 2.22044605e-16)
  {
LABEL_9:
    GregorianDateWithFallbackToDefaultTimeZone = CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
    v18 = v17;
    Owner = _CalRecurrenceGetOwner(a1, 0);
    if (Owner && (v20 = Owner, IsAllDay = _CalCalendarItemIsAllDay(Owner), a2) && IsAllDay)
    {
      v22 = objc_alloc_init(CDBRecurrenceGenerator);
      v23 = [(CDBRecurrenceGenerator *)v22 computeRecurrenceEndDateForCalEvent:v20 recurrenceRule:a1 locked:1];
      v24 = v23;
      if (v23)
      {
        v25 = CFRetain(v23);
      }

      else
      {
        v25 = 0;
      }

      if (!v25)
      {
LABEL_24:
        v34 = *&a5;
        goto LABEL_25;
      }
    }

    else
    {
      Null = CalGregorianDateGetNull();
      v28 = _CalRecurrenceCopyOccurrenceDatesDispatch(a1, GregorianDateWithFallbackToDefaultTimeZone, v18, GregorianDateWithFallbackToDefaultTimeZone, v18, Null, v27, a2, a5, a5, 0.0, a4);
      if (!v28)
      {
        goto LABEL_24;
      }

      v29 = v28;
      Count = CFArrayGetCount(v28);
      if (Count < 1)
      {
        v25 = 0;
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v29, Count - 1);
        v25 = ValueAtIndex;
        if (ValueAtIndex)
        {
          CFRetain(ValueAtIndex);
        }
      }

      CFRelease(v29);
      if (!v25)
      {
        goto LABEL_24;
      }
    }

    a5 = MEMORY[0x1E12C5EF0](v25);
    v34 = *&a5;
    CFRelease(v25);
LABEL_25:
    v32 = CalCFTimeZoneCopyCalTimeZone();
    CalDateTimeSetTimeZone();
    CFRelease(v32);
    _CalRecurrenceSetCachedEndDate(a1, v34);
    CalDateTimeRelease();
    return a5;
  }

  CalDateTimeRelease();
  return v13;
}

__CFArray *_CalRecurrenceCopyOccurrenceDatesInDateRange(uint64_t a1, uint64_t a2, const __CFString *a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, char a10)
{
  if (a10)
  {
    return _CalRecurrenceCopyOccurrenceDatesInDateRangeOrCountLimited(a1, a2, a3, a4, a5, a6, a7, a8, 0, a9);
  }

  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v20 = _CalRecurrenceCopyOccurrenceDatesInDateRangeOrCountLimited(a1, a2, a3, a4, a5, a6, a7, a8, 0, a9);
  if (RecordLock)
  {
    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(RecordLock);
    }

    os_unfair_lock_unlock(RecordLock);
  }

  return v20;
}

__CFArray *_CalRecurrenceCopyOccurrenceDatesInDateRangeOrCountLimited(uint64_t a1, uint64_t a2, const __CFString *a3, unsigned int a4, uint64_t GregorianDateWithFallbackToDefaultTimeZone, uint64_t a6, uint64_t a7, uint64_t a8, int a9, const void *a10)
{
  v15 = a10;
  CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
  v17 = v16;
  CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
  v19 = v18;
  v20 = _CalRecurrenceCopyOwningEventTimeZoneIfDifferent(a1, a10);
  if (v20 && !CFEqual(a10, v20))
  {
    GregorianDateWithFallbackToDefaultTimeZone = CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
    a7 = CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
    a8 = v21;
    v15 = v20;
  }

  Owner = _CalRecurrenceGetOwner(a1, 0);
  v23 = Owner;
  if (Owner && _CalEntityIsOfType(Owner, 2))
  {
    _CalEventIsAllDay(v23);
  }

  CalDateTimeGetAbsoluteTime();
  v25 = v24;
  EndDate = _CalRecurrenceGetEndDate(a1);
  v27 = *MEMORY[0x1E6993100];
  if (vabdd_f64(EndDate, *MEMORY[0x1E6993100]) >= 2.22044605e-16)
  {
    if (_CalCalendarItemIsFloating(v23))
    {
      v31 = CalTimeZoneCopyCFTimeZone();
      CalAbsoluteTimeGetAbsoluteTimeInTimeZone();
      EndDate = v32;
      CFRelease(v31);
    }
  }

  else
  {
    Count = _CalRecurrenceGetCount(a1);
    if (Count)
    {
      v29 = Count;
      v30 = CFStringCompare(a3, @"_float", 0) == kCFCompareEqualTo;
      EndDate = _CalRecurrenceGetOrComputeCachedEndDate(a1, v29, v30, v15, v25);
    }
  }

  if (v25 > v17 || ((v35 = vabdd_f64(EndDate, v27), v36 = a4, v35 >= 2.22044605e-16) ? (v37 = v19 > EndDate + a4) : (v37 = 0), v37))
  {
    v33 = 0;
    if (!v20)
    {
      return v33;
    }

LABEL_14:
    CFRelease(v20);
    return v33;
  }

  v38 = CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
  v40 = v38;
  v41 = v39;
  v42 = v38;
  v43 = v39;
  if (v19 < v25 || v25 < v19 && v25 + v36 > v19)
  {
    v44 = v25;
    GregorianDateWithFallbackToDefaultTimeZone = v38;
    goto LABEL_24;
  }

  v55 = v39;
  CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
  v44 = v50;
  v51 = v19 - v50;
  if (v51 <= 0.0)
  {
    CalAbsoluteTimeAddGregorianUnits();
    CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
    CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
    v41 = v55;
    if (v52 <= v19)
    {
      goto LABEL_24;
    }

    goto LABEL_35;
  }

  if (v51 >= v36)
  {
LABEL_35:
    CalAbsoluteTimeAddGregorianUnits();
    v44 = v53;
    GregorianDateWithFallbackToDefaultTimeZone = CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
    v43 = v54;
    v42 = GregorianDateWithFallbackToDefaultTimeZone;
  }

  v41 = v55;
LABEL_24:
  v45 = v42 & 0xFFFF000000000000;
  if (v35 >= 2.22044605e-16 && v17 > EndDate)
  {
    v17 = EndDate + 1.0;
    v47 = v41;
    v48 = CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
    v41 = v47;
    a7 = v48;
    a8 = v49;
  }

  v33 = _CalRecurrenceCopyOccurrenceDatesDispatch(a1, v40, v41, v45 | GregorianDateWithFallbackToDefaultTimeZone & 0xFFFFFFFFFFFFLL, v43, a7, a8, a9, v25, v44, v17, v15);
  if (v20)
  {
    goto LABEL_14;
  }

  return v33;
}

void _CalEventGetLargestPossibleAlarmOffsets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  *a2 = 0x7FFFFFFFFFFFFFFFLL;
  *a3 = 0x7FFFFFFFFFFFFFFFLL;
  if (_CalCalendarItemHasAlarms(a1))
  {
    v20 = _CalEventCopyTravelTime(a1);
    v21 = [v20 intValue];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = _CalCalendarItemCopyAlarms(a1);
    v7 = [(__CFArray *)v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (!v7)
    {
      goto LABEL_29;
    }

    v8 = v7;
    v9 = *v23;
    v10 = -604800 - v21;
    v11 = 32400 - v21;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        if (_CalAlarmIsDefaultAlarm(v13))
        {
          if (v10 < 0)
          {
            v14 = a2;
            if (*a2 > v10)
            {
              goto LABEL_18;
            }
          }

          else
          {
            v14 = a3;
            if (*a3 == 0x7FFFFFFFFFFFFFFFLL || (v14 = a3, *a3 < v10))
            {
LABEL_18:
              *v14 = v10;
            }
          }

          if (v11 < 0)
          {
            v18 = a2;
            if (*a2 <= v11)
            {
              continue;
            }

LABEL_24:
            *v18 = v11;
            continue;
          }

          v18 = a3;
          if (*a3 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_24;
          }

          v18 = a3;
          if (*a3 < v11)
          {
            goto LABEL_24;
          }

          continue;
        }

        if (_CalAlarmGetTriggerDate(v13) != 1.17549435e-38)
        {
          continue;
        }

        TriggerInterval = _CalAlarmGetTriggerInterval(v13);
        v16 = TriggerInterval - v21;
        if (TriggerInterval - v21 < 0)
        {
          v17 = a2;
          if (*a2 <= v16)
          {
            continue;
          }

LABEL_26:
          *v17 = v16;
          continue;
        }

        v17 = a3;
        if (*a3 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_26;
        }

        v17 = a3;
        if (*a3 < v16)
        {
          goto LABEL_26;
        }
      }

      v8 = [(__CFArray *)v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (!v8)
      {
LABEL_29:

        break;
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

__CFArray *_CalEventCopyOccurrenceDatesInDateRangeWhileLocked(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, int a6, uint64_t a7)
{
  v13 = a2;
  v14 = a3;
  v58 = a4;
  v15 = _CalCalendarItemCopyRecurrencesWhileLocked(a1, a5);
  _CalEventCopyStartDateWhileLocked(a1, a5);
  theString1 = v16;
  DurationWhileLocked = _CalEventGetDurationWhileLocked(a1, a5);
  cf = v15;
  if (v15)
  {
    v18 = CFArrayGetCount(v15) > 0;
    if (!a6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v23 = v14;
    v59 = 0;
    v60 = 0;
    if (a5)
    {
      _CalEventGetLargestPossibleAlarmOffsets(a1, &v60, &v59);
      if (v60 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v24 = 0;
      }

      else
      {
        v24 = v60;
      }

      if (v59 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v25 = 0;
      }

      else
      {
        v25 = v59;
      }
    }

    else
    {
      RecordLock = CalGetRecordLock();
      os_unfair_lock_lock(RecordLock);
      _CalEventGetLargestPossibleAlarmOffsets(a1, &v60, &v59);
      if (v60 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v24 = 0;
      }

      else
      {
        v24 = v60;
      }

      if (v59 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v25 = 0;
      }

      else
      {
        v25 = v59;
      }

      v27 = CalGetRecordLock();
      v28 = v27;
      if (CDBLockingAssertionsEnabled == 1)
      {
        os_unfair_lock_assert_owner(v27);
      }

      os_unfair_lock_unlock(v28);
    }

    v29 = [v13 dateByAddingTimeInterval:-v25];

    v14 = [v23 dateByAddingTimeInterval:-v24];

    v13 = v29;
    if (v18)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  v18 = 0;
  if (a6)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v18)
  {
LABEL_4:
    v19 = objc_alloc_init(CDBRecurrenceGenerator);
    v20 = [(CDBRecurrenceGenerator *)v19 copyOccurrenceDatesWithCalEvent:a1 startDate:v13 endDate:v14 timeZone:v58 includeExtraOccurrencesPastEndDate:a7 locked:a5];
    v21 = [v20 mutableCopy];

    Mutable = CFRetain(v21);
    goto LABEL_46;
  }

LABEL_23:
  v30 = MEMORY[0x1E695DF00];
  CalDateTimeGetAbsoluteTime();
  v19 = [v30 dateWithTimeIntervalSinceReferenceDate:?];
  v31 = DurationWhileLocked;
  v21 = [(CDBRecurrenceGenerator *)v19 dateByAddingTimeInterval:DurationWhileLocked];
  if (-[CDBRecurrenceGenerator CalIsAfterOrSameAsDate:](v19, "CalIsAfterOrSameAsDate:", v13) && (-[CDBRecurrenceGenerator CalIsBeforeDate:](v19, "CalIsBeforeDate:", v14) & 1) != 0 || [v21 CalIsAfterDate:v13] && (objc_msgSend(v21, "CalIsBeforeOrSameAsDate:", v14) & 1) != 0 || -[CDBRecurrenceGenerator CalIsBeforeDate:](v19, "CalIsBeforeDate:", v13) && objc_msgSend(v21, "CalIsAfterDate:", v14))
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    CFArrayAppendValue(Mutable, v19);
  }

  else
  {
    Mutable = 0;
  }

  v32 = v14;
  if (a5)
  {
    ProposedStartDate = _CalEventGetProposedStartDate(a1);
  }

  else
  {
    CalEventGetProposedStartDate(a1);
  }

  if (ProposedStartDate != *MEMORY[0x1E6993100])
  {
    v34 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
    v35 = [v34 dateByAddingTimeInterval:v31];
    if ([v34 CalIsAfterOrSameAsDate:v13] && (objc_msgSend(v34, "CalIsBeforeDate:", v32) & 1) != 0 || objc_msgSend(v35, "CalIsAfterDate:", v13) && (objc_msgSend(v35, "CalIsBeforeOrSameAsDate:", v32) & 1) != 0 || objc_msgSend(v34, "CalIsBeforeDate:", v13) && objc_msgSend(v35, "CalIsAfterDate:", v32))
    {
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      }

      CFArrayAppendValue(Mutable, v34);
    }
  }

  v14 = v32;
LABEL_46:

  if (Mutable)
  {
    Count = CFArrayGetCount(Mutable);
    if (Count > 0 && v18)
    {
      v38 = Count;
      v39 = a5 ? _CalCalendarItemCopyExceptionDatesForRecurrences(a1) : CalCalendarItemCopyExceptionDatesForRecurrences(a1);
      v40 = v39;
      if (v39)
      {
        v41 = CFArrayGetCount(v39);
        if (v41 >= 1)
        {
          v42 = v41;
          v54 = v14;
          v43 = CFStringCompare(theString1, @"_float", 0);
          v44 = 0;
          if (v43 == kCFCompareEqualTo)
          {
            v44 = CalTimeZoneCopyCFTimeZone();
          }

          for (i = 0; i != v42; ++i)
          {
            v46 = CFArrayGetValueAtIndex(v40, i);
            if (v46)
            {
              v47 = v46;
              if (v43)
              {
                v48 = v46;
              }

              else
              {
                v49 = v44;
                if (!v44)
                {
                  v55 = CalCopyTimeZone();
                  v49 = v55;
                }

                v48 = [v47 dateInTimeZone:v58 fromTimeZone:{v49, v54}];

                if (!v44)
                {
                }
              }

              v61.location = 0;
              v61.length = v38;
              v50 = CFArrayBSearchValues(Mutable, v61, v48, MEMORY[0x1E695D770], 0);
              if (v50 < v38)
              {
                v51 = v50;
                ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v50);
                if (CFEqual(ValueAtIndex, v48))
                {
                  CFArrayRemoveValueAtIndex(Mutable, v51);
                  --v38;
                }
              }
            }

            else
            {
              v48 = 0;
            }
          }

          v14 = v54;
          if (v44)
          {
            CFRelease(v44);
          }
        }

        CFRelease(v40);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  CalDateTimeRelease();

  return Mutable;
}

uint64_t _CalEventOccurrencesExistInDateRange(uint64_t a1, uint64_t GregorianDateWithFallbackToDefaultTimeZone, uint64_t a3, uint64_t a4, uint64_t a5, int a6, const void *a7)
{
  v69 = *MEMORY[0x1E69E9840];
  StartDate = _CalEventGetStartDate(a1);
  v56 = v14;
  v57 = StartDate;
  v15 = _CalCalendarItemCopyRecurrencesWhileLocked(a1, 1);
  Duration = _CalEventGetDuration(a1);
  if (!v15)
  {
    CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
    v41 = 0;
    goto LABEL_60;
  }

  Count = CFArrayGetCount(v15);
  CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
  v48 = Count;
  if (Count < 1)
  {
    v41 = 0;
    goto LABEL_59;
  }

  v18 = v17;
  v46 = a1;
  CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
  v20 = v19;
  v21 = 0;
  theArray = 0;
  cf = 0;
  range = 0;
  if (Duration)
  {
    v22 = 1;
  }

  else
  {
    v22 = 2;
  }

  v45 = v22;
  allocator = *MEMORY[0x1E695E480];
  v49 = a7;
  v47 = a4;
  while (1)
  {
    v50 = v21;
    ValueAtIndex = CFArrayGetValueAtIndex(v15, v21);
    if (v20 <= v18)
    {
      break;
    }

LABEL_8:
    v23 = v20;
LABEL_48:
    v21 = v50 + 1;
    v20 = v23;
    if (v50 + 1 >= v48)
    {
      v41 = 0;
      v31 = theArray;
      if (theArray)
      {
        goto LABEL_55;
      }

      goto LABEL_56;
    }
  }

  v24 = v45;
  while (1)
  {
    v25 = _CalRecurrenceCopyOccurrenceDatesInDateRangeOrCountLimited(ValueAtIndex, v57, v56, Duration, GregorianDateWithFallbackToDefaultTimeZone, a3, a4, a5, v24, a7);
    if (!v25)
    {
      goto LABEL_8;
    }

    v26 = v25;
    v27 = CFArrayGetCount(v25);
    if (v27 < 1)
    {
      v23 = v20;
      goto LABEL_47;
    }

    v28 = v27;
    v54 = a3;
    v55 = GregorianDateWithFallbackToDefaultTimeZone;
    v29 = CFArrayGetValueAtIndex(v26, 0);
    v30 = 0;
    if (v28 != 1)
    {
      v30 = CFArrayGetValueAtIndex(v26, 1);
    }

    v31 = theArray;
    if (!v29 || MEMORY[0x1E12C5EF0](v29) > v18)
    {
LABEL_42:
      v23 = v20;
      a3 = v54;
      GregorianDateWithFallbackToDefaultTimeZone = v55;
LABEL_47:
      CFRelease(v26);
      goto LABEL_48;
    }

    if (!a6 || MEMORY[0x1E12C5EF0](v29) >= v20)
    {
      break;
    }

LABEL_27:
    theArray = v31;
    if (v24 < 2)
    {
      MEMORY[0x1E12C5EF0](v29);
    }

    else
    {
      if (!v30)
      {
        goto LABEL_42;
      }

      MEMORY[0x1E12C5EF0](v30);
    }

    GregorianDateWithFallbackToDefaultTimeZone = CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
    a3 = v36;
    CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
    v23 = v37;
    if (v37 <= v20)
    {
      if (v24 >= 2)
      {
        v40 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_FAULT))
        {
          *buf = 134218754;
          v62 = v23;
          v63 = 2048;
          v64 = v20;
          v65 = 1024;
          v66 = Duration;
          v67 = 2114;
          v68 = a7;
          _os_log_impl(&dword_1DEBB1000, v40, OS_LOG_TYPE_FAULT, "_CalEventOccurrencesExistInDateRange is not making any progress. currentStartAbs=%f, lastStartAbs=%f, duration=%u, tz=%{public}@", buf, 0x26u);
        }

        a4 = v47;
        goto LABEL_47;
      }

      v24 = 2;
    }

    CFRelease(v26);
    v20 = v23;
    if (v23 > v18)
    {
      goto LABEL_48;
    }
  }

  if (!theArray)
  {
    v38 = _CalCalendarItemCopyExceptionDatesForRecurrences(v46);
    if (!v38)
    {
      v38 = CFArrayCreate(allocator, 0, 0, MEMORY[0x1E695E9C0]);
    }

    range = CFArrayGetCount(v38);
    _CalEventGetStartDate(v46);
    theArray = v38;
    if (v39 && CFStringCompare(v39, @"_float", 0) == kCFCompareEqualTo && !cf)
    {
      cf = CalTimeZoneCopyCFTimeZone();
    }
  }

  v32 = CFRetain(v29);
  if (cf)
  {
    MEMORY[0x1E12C5EF0](v29);
    CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
    CFRelease(v32);
    a4 = v47;
    CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
    v32 = CFDateCreate(0, v33);
  }

  v31 = theArray;
  v70.location = 0;
  v70.length = range;
  v34 = CFArrayBSearchValues(theArray, v70, v32, MEMORY[0x1E695D770], 0);
  if ((v34 & 0x8000000000000000) == 0 && v34 < range)
  {
    v35 = CFArrayGetValueAtIndex(theArray, v34);
    if (CFEqual(v32, v35))
    {
      if (v32)
      {
        CFRelease(v32);
      }

      a7 = v49;
      goto LABEL_27;
    }
  }

  if (v32)
  {
    CFRelease(v32);
  }

  CFRelease(v26);
  v41 = 1;
  if (theArray)
  {
LABEL_55:
    CFRelease(v31);
  }

LABEL_56:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_59:
  CFRelease(v15);
LABEL_60:
  v42 = *MEMORY[0x1E69E9840];
  return v41;
}

uint64_t _CalEventOccurrencesExistWithinTimeInterval(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, double a5, uint64_t a6, uint64_t a7, const void *a8)
{
  v13 = _CalCalendarItemCopyRecurrencesWhileLocked(a1, 1);
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  Count = CFArrayGetCount(v13);
  if (Count < 1)
  {
    v36 = 0;
  }

  else
  {
    if (!a2 || (CFStringCompare(a2, @"_float", 0), (v15 = CalTimeZoneCopyCFTimeZone()) == 0))
    {
      v15 = CFRetain(a8);
    }

    CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
    v17 = v16;
    CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
    v41 = (v18 - v17);
    if (v15)
    {
      CFRelease(v15);
    }

    v19 = 0;
    v40 = *&v17;
    v20 = Count;
    v38 = a4;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v14, v19);
      _CalRecurrenceGetFrequency(ValueAtIndex);
      _CalRecurrenceGetInterval(ValueAtIndex);
      v22 = CalGregorianDateAddUnits();
      v24 = _CalRecurrenceCopyOccurrenceDatesInDateRangeOrCountLimited(ValueAtIndex, v40, a2, v41, a3, a4, v22, v23, 0, a8);
      if (v24)
      {
        v25 = v24;
        v26 = CFArrayGetCount(v24);
        if (v26 < 1)
        {
          v36 = 0;
        }

        else
        {
          v27 = v26;
          v28 = a8;
          v29 = a2;
          v30 = v14;
          v31 = 0;
          v32 = 0;
          while (1)
          {
            v33 = CFArrayGetValueAtIndex(v25, v32);
            v34 = v33;
            if (v31)
            {
              v35 = MEMORY[0x1E12C5EF0](v33);
              if (v35 - (MEMORY[0x1E12C5EF0](v31) + v41) < a5)
              {
                break;
              }
            }

            ++v32;
            v31 = v34;
            if (v32 >= v27)
            {
              v36 = 0;
              goto LABEL_19;
            }
          }

          v36 = 1;
LABEL_19:
          v14 = v30;
          a2 = v29;
          a8 = v28;
          a4 = v38;
          v20 = Count;
        }

        CFRelease(v25);
      }

      else
      {
        v36 = 0;
      }

      ++v19;
    }

    while (v19 < v20 && !v36);
  }

  CFRelease(v14);
  return v36;
}

uint64_t _CalRecurrenceByMonthFilter(unsigned int a1, uint64_t a2)
{
  if (*a2)
  {
    LOBYTE(v4) = *(a2 + 4);
  }

  else
  {
    GregorianDateWithFallbackToDefaultTimeZone = CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
    *a2 = GregorianDateWithFallbackToDefaultTimeZone;
    *(a2 + 8) = v6;
    v4 = HIDWORD(GregorianDateWithFallbackToDefaultTimeZone);
  }

  return (a1 >> (v4 - 1)) & 1;
}

uint64_t _CalRecurrenceByDayMaskFromArrayByDayItems(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v3 = Count;
  v4 = 0;
  for (i = 0; i != v3; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
    if (*ValueAtIndex <= 1u)
    {
      v4 = (1 << ValueAtIndex[1]) | v4;
    }
  }

  return v4;
}

uint64_t _CalRecurrenceApplyFiltersToSingleDate(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6)
{
  if (vabdd_f64(a5, a6) < 2.22044605e-16)
  {
    return 1;
  }

  p_Null = a1;
  Null = 0;
  v16 = 0;
  if (!a1)
  {
    Null = CalGregorianDateGetNull();
    v16 = v11;
    p_Null = &Null;
  }

  if (a3 < 1)
  {
    return 1;
  }

  v12 = (a2 + 8);
  v13 = 1;
  do
  {
    result = (*(v12 - 1))(*v12, p_Null, a4, a5);
    if (v13 >= a3)
    {
      break;
    }

    v12 += 2;
    ++v13;
  }

  while ((result & 1) != 0);
  return result;
}

BOOL _CalRecurrenceByMonthDayFilterInternal(const __CFArray *a1, uint64_t *a2, uint64_t a3, int a4)
{
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v8 = Count;
    DaysInMonth = 0;
    v10 = 1;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v10 - 1);
      if (ValueAtIndex < 0)
      {
        if (!DaysInMonth)
        {
          if (*a2)
          {
            v12 = *a2;
            v13 = a2[1];
          }

          else
          {
            *a2 = CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
            a2[1] = v14;
          }

          DaysInMonth = CalGregorianDateGetDaysInMonth();
        }

        ValueAtIndex += DaysInMonth + 1;
      }

      if (*a2)
      {
        if (a4)
        {
          goto LABEL_14;
        }
      }

      else
      {
        *a2 = CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
        a2[1] = v15;
        if (a4)
        {
LABEL_14:
          if (!DaysInMonth)
          {
            v16 = *a2;
            v17 = a2[1];
            DaysInMonth = CalGregorianDateGetDaysInMonth();
          }

          if (ValueAtIndex >= DaysInMonth)
          {
            ValueAtIndex = DaysInMonth;
          }
        }
      }

      v18 = *(a2 + 5);
      result = ValueAtIndex == v18;
      if (v10 < v8)
      {
        ++v10;
        if (ValueAtIndex != v18)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 0;
}

BOOL _CalRecurrenceRangeFilter(double *a1, double a2)
{
  if (*a1 > a2)
  {
    return 0;
  }

  v3 = a1[1];
  return v3 > a2 || fabs(v3) < 2.22044605e-16;
}

void _CalRecurrenceApplyBySetPosToRange(__CFArray *a1, CFArrayRef theArray, CFIndex *a3, int a4, double a5, double a6, double a7)
{
  v32 = a3[1];
  Count = CFArrayGetCount(theArray);
  if (a3[1] >= 1)
  {
    v15 = Count;
    v16 = 0;
    v17 = *a3;
    v18 = fabs(a6);
    do
    {
      v19 = v18 < 2.22044605e-16 && a4 == 0;
      if (v19 || ((v20 = CFArrayGetValueAtIndex(a1, v17), v21 = MEMORY[0x1E12C5EF0](v20), v22 = vabdd_f64(v21, a7), v21 >= a6) ? (v23 = v18 >= 2.22044605e-16) : (v23 = 0), v21 >= a5 ? (v24 = v22 < 2.22044605e-16) : (v24 = 1), v24 || v23 || v15 < 1))
      {
LABEL_22:
        CFArrayRemoveValueAtIndex(a1, v17);
        v31 = a3[1] - 1;
        a3[1] = v31;
        ++v16;
      }

      else
      {
        v25 = 0;
        v26 = v17 - *a3 + v16;
        v27 = v26 + 1;
        v28 = v26 - v32;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v25);
          if (ValueAtIndex == v27 || ValueAtIndex == v28)
          {
            break;
          }

          if (v15 == ++v25)
          {
            goto LABEL_22;
          }
        }

        a4 -= a4 > 0;
        ++v17;
        v31 = a3[1];
      }
    }

    while (v17 < *a3 + v31);
  }
}

uint64_t _CalRecurrenceByDayGenerator(const __CFArray *a1, CFRange *a2, int a3, CFArrayRef theArray, double a5, double a6, double a7, uint64_t a8, int a9, uint64_t a10)
{
  Count = CFArrayGetCount(theArray);
  result = CalAbsoluteTimeAddGregorianUnits();
  if (v20 > a5)
  {
    v21 = v20;
    v39 = a9;
    v22 = 0;
    v23 = 0.0;
    v24 = 1;
    v25 = a5;
    do
    {
      DayOfWeek = CalAbsoluteTimeGetDayOfWeek();
      if (fabs(v23) < 2.22044605e-16)
      {
        v24 = DayOfWeek;
      }

      v38 = v24;
      CalAbsoluteTimeAddGregorianUnits();
      CalAbsoluteTimeAddGregorianUnits();
      v23 = v27;
      CalAbsoluteTimeGetDayOfWeek();
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          if (*ValueAtIndex)
          {
            v30 = ValueAtIndex[1];
            *ValueAtIndex;
            CalAbsoluteTimeAddGregorianUnits();
            v32 = v31 < v25 || v31 > v23;
            if (!v32)
            {
              _CalRecurrenceResultsAddValueIfNotPresent(a1, a2, a8, v39, a10, v31, a7);
            }
          }

          else
          {
            v22 |= 1 << ValueAtIndex[1];
          }
        }
      }

      result = CalAbsoluteTimeAddGregorianUnits();
      v25 = v33;
      v24 = v38;
    }

    while (v33 < v21);
    if (v22)
    {
      v34 = 0;
      do
      {
        if (v22)
        {
          result = CalAbsoluteTimeAddGregorianUnits();
          if (v35 <= v21)
          {
            v36 = v35;
            do
            {
              _CalRecurrenceResultsAddValueIfNotPresent(a1, a2, a8, v39, a10, v36, a7);
              result = CalAbsoluteTimeAddGregorianUnits();
              v36 = v37;
            }

            while (v37 <= v21);
          }
        }

        ++v34;
        v32 = v22 > 1;
        v22 >>= 1;
      }

      while (v32);
    }
  }

  return result;
}

uint64_t _CalRecurrenceApplyGenerator(const __CFArray *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, uint64_t a7, double a8, double a9, double a10, double a11)
{
  Count = CFArrayGetCount(a1);
  v26 = 0;
  CalAbsoluteTimeAddGregorianUnits();
  (*a2)(a1, &Count, a5, *(a2 + 8), a3, a4, a7, a11, v22, a8, a9, a10);
  if (!a6)
  {
    return v26;
  }

  v23 = *a6;
  result = v26;
  if (v23)
  {
    if (v23 >= v26)
    {
LABEL_6:
      *a6 = v23 - result;
      return result;
    }

    v27.length = v26 - v23;
    v27.location = Count + v23;
    CFArrayReplaceValues(a1, v27, 0, 0);
    result = *a6;
    if (result)
    {
      LODWORD(v23) = *a6;
      goto LABEL_6;
    }

    return 0;
  }

  return result;
}

void _CalRecurrenceResultsAddValueIfNotPresent(const __CFArray *a1, CFRange *a2, uint64_t a3, int a4, uint64_t a5, CFAbsoluteTime a6, double a7)
{
  if (vabdd_f64(a6, a7) >= 2.22044605e-16)
  {
    location = a2->location;
    length = a2->length;
    if (!a4 || _CalRecurrenceApplyFiltersToSingleDate(0, a3, a4, a5, a6, a7))
    {
      v12 = length + location;
      v13 = CFDateCreate(0, a6);
      v14 = CFArrayBSearchValues(a1, *a2, v13, MEMORY[0x1E695D770], 0);
      v15 = v14;
      if (v14 >= v12 || v14 < 0 || (ValueAtIndex = CFArrayGetValueAtIndex(a1, v14), !CFEqual(ValueAtIndex, v13)))
      {
        if (v15 >= v12)
        {
          v17 = v12;
        }

        else
        {
          v17 = v15;
        }

        CFArrayInsertValueAtIndex(a1, v17, v13);
        ++a2->length;
      }

      CFRelease(v13);
    }
  }
}

CFIndex _CalRecurrenceByMonthDayGeneratorInternal(const __CFArray *a1, CFRange *a2, CFArrayRef theArray, uint64_t a4, int a5, uint64_t a6, int a7, double a8, double a9, double a10)
{
  result = CFArrayGetCount(theArray);
  if (a8 < a9)
  {
    v19 = result;
    do
    {
      CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
      DaysInMonth = CalGregorianDateGetDaysInMonth();
      if (v19 >= 1)
      {
        v21 = DaysInMonth;
        v22 = 0;
        v23 = DaysInMonth + 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v22);
          if ((v23 & (ValueAtIndex >> 31)) + ValueAtIndex >= v21)
          {
            v25 = v21;
          }

          else
          {
            v25 = (v23 & (ValueAtIndex >> 31)) + ValueAtIndex;
          }

          if (!a7)
          {
            v25 = (v23 & (ValueAtIndex >> 31)) + ValueAtIndex;
          }

          if (v25 >= 1 && v25 <= v21)
          {
            CalAbsoluteTimeAddGregorianUnits();
            _CalRecurrenceResultsAddValueIfNotPresent(a1, a2, a4, a5, a6, v27, a10);
          }

          ++v22;
        }

        while (v19 != v22);
      }

      result = CalAbsoluteTimeAddGregorianUnits();
    }

    while (v28 < a9);
  }

  return result;
}

BOOL _CalValidateCalDate(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 calendarIdentifier];
  v8 = [MEMORY[0x1E695DEE8] CalGregorianGMTCalendar];
  v9 = [v8 calendarIdentifier];
  v10 = [v7 isEqualToString:v9];

  if (v10)
  {
    [v6 year];
    [v6 month];
    DaysInMonth = CalGregorianDateGetDaysInMonth();
  }

  else
  {
    v12 = [v5 dateFromComponents:v6];
    [v5 rangeOfUnit:16 inUnit:8 forDate:v12];
    DaysInMonth = v13;
  }

  v14 = [v6 day];
  v15 = v14 <= DaysInMonth;
  if (v14 > DaysInMonth && a3)
  {
    [v6 setDay:DaysInMonth];
    v15 = 1;
  }

  return v15;
}

void _CalRecurrenceByYearDayGenerator(const __CFArray *a1, CFRange *a2, int a3, CFArrayRef theArray, double a5, double a6, double a7, uint64_t a8, int a9, uint64_t a10)
{
  Count = CFArrayGetCount(theArray);
  DaysInYear = CalAbsoluteTimeGetDaysInYear();
  if (Count >= 1)
  {
    v18 = DaysInYear;
    v19 = 0;
    v20 = DaysInYear + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v19);
      v22 = (v20 & (ValueAtIndex >> 31)) + ValueAtIndex;
      if (v22 >= 1 && v22 <= v18)
      {
        CalAbsoluteTimeAddGregorianUnits();
        _CalRecurrenceResultsAddValueIfNotPresent(a1, a2, a8, a9, a10, v24, a7);
      }

      ++v19;
    }

    while (Count != v19);
  }
}

uint64_t _CalRecurrenceByDayFilter(const __CFArray *a1, uint64_t *a2, const __CFTimeZone *a3, CFAbsoluteTime a4)
{
  Count = CFArrayGetCount(a1);
  DayOfWeek = CalAbsoluteTimeGetDayOfWeek();
  if (Count < 1)
  {
    return 0;
  }

  v10 = DayOfWeek;
  v11 = 0;
  v12 = 0;
  v13 = 1;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v13 - 1);
    if (ValueAtIndex[1] == v10)
    {
      break;
    }

    result = 0;
LABEL_24:
    if (v13 < Count)
    {
      ++v13;
      if (!result)
      {
        continue;
      }
    }

    return result;
  }

  v15 = ValueAtIndex;
  v16 = *ValueAtIndex;
  if (*ValueAtIndex)
  {
    if (!*a2)
    {
      *a2 = CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
      a2[1] = v17;
      v16 = *v15;
    }

    if (v16 < 1)
    {
      if (!v12)
      {
        v25 = *a2;
        v26 = a2[1];
        CalGregorianDateGetDaysInMonth();
        CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
        v27 = CalAbsoluteTimeGetDayOfWeek();
        v32 = 0;
        if (v27 >= v10)
        {
          v28 = 0;
        }

        else
        {
          v28 = 7;
        }

        v33 = v27 - v10 + v28;
        v35 = 0;
        v34 = 0;
        v36 = 0;
        CalAbsoluteTimeAddGregorianUnits();
        CFAbsoluteTimeGetDifferenceAsGregorianUnits(&v30, v29, a4, a3, 4uLL);
        v12 = v30.days / 7 + 1;
        v16 = *v15;
      }

      v23 = v16 + v12 == 0;
    }

    else
    {
      if (!v11)
      {
        v18 = a2[1];
        v19 = *a2 & 0xFFFF00FFFFFFFFFFLL;
        CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
        v20 = CalAbsoluteTimeGetDayOfWeek();
        v32 = 0;
        if (v10 >= v20)
        {
          v21 = 0;
        }

        else
        {
          v21 = 7;
        }

        v33 = v10 - v20 + v21;
        v35 = 0;
        v34 = 0;
        v36 = 0;
        CalAbsoluteTimeAddGregorianUnits();
        CFAbsoluteTimeGetDifferenceAsGregorianUnits(&v31, a4, v22, a3, 4uLL);
        v11 = v31.days / 7 + 1;
        v16 = *v15;
      }

      v23 = v16 == v11;
    }

    result = v23;
    goto LABEL_24;
  }

  return 1;
}

BOOL _CalRecurrenceByWeekNoFilter(CFArrayRef *a1)
{
  v2 = *a1;
  WeekOfYear = CalAbsoluteTimeGetWeekOfYear();
  Count = CFArrayGetCount(a1[1]);
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  WeeksInYear = 0;
  v7 = 1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1[1], v7 - 1);
    if ((ValueAtIndex & 0x80000000) != 0)
    {
      if (!WeeksInYear)
      {
        v9 = *a1;
        WeeksInYear = CalAbsoluteTimeGetWeeksInYear();
      }

      ValueAtIndex += WeeksInYear + 1;
    }

    result = ValueAtIndex == WeekOfYear;
    if (v7 >= v5)
    {
      break;
    }

    ++v7;
  }

  while (ValueAtIndex != WeekOfYear);
  return result;
}

void CalCategoryInitializeTables(uint64_t a1, void *a2)
{
  CPRecordStoreCreateTablesForClass();

  CalMigrationCreateIndexes(a2, &kCalCategoryClass, &kCalCategoryIndexes, 0);
}

void CalCategoryMigrateTables(uint64_t a1, void *a2, int a3)
{
  if (a3 <= 58)
  {
    CPRecordStoreCreateTablesForClass();

    CalMigrationCreateIndexes(a2, &kCalCategoryClass, &kCalCategoryIndexes, 0);
  }
}

const void *_CalDatabaseCreateCategory(uint64_t a1)
{
  v2 = CPRecordCreate();
  TemporaryRecordIDForEntity = _CalDatbaseCreateTemporaryRecordIDForEntity(a1, 12);
  if (CDBLockingAssertionsEnabled == 1 && v2 != 0)
  {
    if (CPRecordGetStore())
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  CPRecordInitializeProperty();
  CFRelease(TemporaryRecordIDForEntity);
  _CalDatabaseAddEntity(a1, v2);
  return v2;
}

const void *CalDatabaseCreateCategoryWithNameAndEntityType(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  Category = _CalDatabaseCreateCategory(a1);
  v3 = Category;
  if (CDBLockingAssertionsEnabled == 1 && Category != 0)
  {
    if (CPRecordGetStore())
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1 && v3 != 0)
  {
    if (CPRecordGetStore())
    {
      v7 = CPRecordStoreGetContext();
      if (v7)
      {
        os_unfair_lock_assert_owner(v7 + 20);
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v3;
}

const void *CalDatabaseCreateCategory(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  Category = _CalDatabaseCreateCategory(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return Category;
}

uint64_t _CalCategoryRemove(const void *a1)
{
  DatabaseForRecord = CalGetDatabaseForRecord();
  v3 = _CalDatabaseCopyCalendarItemsInCategory(DatabaseForRecord);
  if (!v3)
  {
    goto LABEL_20;
  }

  v4 = v3;
  Count = CFArrayGetCount(v3);
  v6 = Count - 1;
  if (Count < 1)
  {
    CFRelease(v4);
LABEL_20:
    v14 = CalGetDatabaseForRecord();

    return _CalDatabaseRemoveEntity(v14, a1);
  }

  v7 = Count;
  v8 = 0;
  for (i = 0; i != v7; ++i)
  {
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
      if (!_CalCalendarItemIsInvite(ValueAtIndex))
      {
        break;
      }

      v8 = 1;
      if (v6 == i++)
      {
        CFRelease(v4);
        goto LABEL_11;
      }
    }

    _CalCalendarItemRemoveCategory(ValueAtIndex, a1);
  }

  CFRelease(v4);
  if ((v8 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordSetProperty();
}

uint64_t _CalDatabaseCopyCalendarItemsInCategory(uint64_t a1)
{
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  return CPRecordStoreCopyAllInstancesOfClassWithAliasAndFilter();
}

void CalCategoryRemove(const void *a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalCategoryRemove(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalCategoryGetWithUID(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  return CPRecordStoreGetInstanceOfClassWithUID();
}

const void *CalDatabaseCopyCategoryWithUID(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v3 = _CalCategoryGetWithUID(RecordStore);
  v4 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v4;
}

const void *CalDatabaseCopyCategoryWithNameAndEntityType(os_unfair_lock_s *a1, const __CFString *a2, int a3)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v9 = CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock();
  if (v9)
  {
    v10 = v9;
    Count = CFArrayGetCount(v9);
    if (Count <= 0)
    {
      CFRelease(v10);
    }

    else
    {
      if (Count != 1)
      {
        CFLog();
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v10, 0);
      CFRetain(ValueAtIndex);
      CFRelease(v10);
      if (ValueAtIndex)
      {
        goto LABEL_31;
      }
    }
  }

  v13 = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && v13 != 0)
  {
    v15 = CPRecordStoreGetContext();
    if (v15)
    {
      os_unfair_lock_assert_owner(v15 + 20);
    }
  }

  v16 = CPRecordStoreCopyAddedRecords();
  if (v16)
  {
    v17 = v16;
    v18 = CFArrayGetCount(v16);
    if (v18 < 1)
    {
LABEL_28:
      ValueAtIndex = 0;
    }

    else
    {
      v19 = v18;
      v20 = 0;
      while (1)
      {
        v21 = CFArrayGetValueAtIndex(v17, v20);
        if (_CalEntityGetType(v21) == 12 && _CalCategoryGetEntityType(v21) == a3)
        {
          Name = _CalCategoryGetName(v21);
          if (Name)
          {
            if (CFStringCompare(Name, a2, 1uLL) == kCFCompareEqualTo)
            {
              break;
            }
          }
        }

        if (v19 == ++v20)
        {
          goto LABEL_28;
        }
      }

      ValueAtIndex = CFRetain(v21);
    }

    CFRelease(v17);
  }

  else
  {
    ValueAtIndex = 0;
  }

LABEL_31:
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return ValueAtIndex;
}

uint64_t __CalDatabaseCopyCategoryWithNameAndEntityType_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  CStringFromCFString = CalCreateCStringFromCFString(*(a1 + 32));
  sqlite3_bind_text(v4, 1, CStringFromCFString, -1, MEMORY[0x1E69E9B38]);
  v6 = *(a2 + 8);
  v7 = *(a1 + 40);

  return sqlite3_bind_int(v6, 2, v7);
}

uint64_t _CalCategoryGetEntityType(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordGetProperty();
}

uint64_t _CalCategoryGetName(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordGetProperty();
}

uint64_t CalDatabaseCopyCategoriesWithEntityType(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v5 = CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v5;
}

uint64_t CalDatabaseCopyCalendarItemsInCategory(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  v2 = _CalDatabaseCopyCalendarItemsInCategory(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v2;
}

uint64_t _CalCategoryGetRecordID(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordGetProperty();
}

uint64_t CalCategoryGetUID()
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  ID = CPRecordGetID();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return ID;
}

void CalCategorySetName(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCategoryCopyName(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalCategorySetEntityType(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCategoryGetEntityType(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  EntityType = _CalCategoryGetEntityType(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return EntityType;
}

void CalCategorySetHidden(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL CalCategoryIsHidden(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Property != 0;
}

void _CalSaveRelation(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CachedProperty = CPRecordGetCachedProperty();
  if (CachedProperty)
  {
    v3 = CachedProperty;
    v4 = CFGetTypeID(CachedProperty);
    if (v4 == CalToManyRelationGetTypeID())
    {

      CalToManyRelationSave(v3);
    }

    else
    {
      v5 = CFGetTypeID(v3);
      pthread_once(&__CalRelationRegisterOnce, CalRelationRegisterClass);
      if (v5 == __CalRelationTypeID)
      {

        CalRelationOwnerDidSave(v3);
      }
    }
  }
}

uint64_t CalRelationRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  __CalRelationTypeID = result;
  return result;
}

CFTypeRef CalRelationCopyRelatedObject(uint64_t a1)
{
  _EnsureLoaded_0(a1);
  RelatedObject = CalRelationRawGetRelatedObject(a1);
  v3 = RelatedObject;
  if (RelatedObject)
  {
    CFRetain(RelatedObject);
  }

  return v3;
}

uint64_t _CalRelationUpdateSetRelationProperties(uint64_t a1, CFTypeRef a2)
{
  if (a2)
  {
    ID = CPRecordGetID();
  }

  else
  {
    ID = -1;
  }

  RelatedObject = CalRelationRawGetRelatedObject(a1);
  if (CDBLockingAssertionsEnabled == 1 && *(a1 + 16) != 0)
  {
    v7 = *(a1 + 16);
    if (CPRecordGetStore())
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  v9 = *(a1 + 28);
  result = CPRecordGetProperty();
  if (ID != result || ID == -1 && RelatedObject != a2)
  {
    if (CDBLockingAssertionsEnabled == 1 && *(a1 + 16) != 0)
    {
      v12 = *(a1 + 16);
      if (CPRecordGetStore())
      {
        v13 = CPRecordStoreGetContext();
        if (v13)
        {
          os_unfair_lock_assert_owner(v13 + 20);
        }
      }
    }

    v14 = *(a1 + 28);
    CPRecordSetProperty();
    if (RelatedObject)
    {
      if (*(a1 + 40))
      {
        if (*(a1 + 16))
        {
          DatabaseForRecord = CalGetDatabaseForRecord();
          _CalDatabaseRemoveEntity(DatabaseForRecord, RelatedObject);
        }
      }

      else
      {
        v16 = CDBGetCommonEntityFunctionalityHandler(RelatedObject, 0, 0);
        [v16 removeDestructionObserver:a1];
      }
    }

    CalRelationRawSetRelatedObject(a1, a2);
    if (a2 && (*(a1 + 40) & 1) == 0)
    {
      v17 = CDBGetCommonEntityFunctionalityHandler(a2, 1, 0);
      [v17 addDestructionObserver:a1];
    }

    if (CDBLockingAssertionsEnabled == 1 && *(a1 + 16) != 0)
    {
      v19 = *(a1 + 16);
      if (CPRecordGetStore())
      {
        v20 = CPRecordStoreGetContext();
        if (v20)
        {
          os_unfair_lock_assert_owner(v20 + 20);
        }
      }
    }

    v21 = *(a1 + 28);

    return CPRecordMarkPropertyChanged();
  }

  return result;
}

uint64_t _CalRelationUpdateSetRelationID(uint64_t a1)
{
  if (CDBLockingAssertionsEnabled == 1 && *(a1 + 16) != 0)
  {
    v3 = *(a1 + 16);
    if (CPRecordGetStore())
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  v5 = *(a1 + 28);

  return CPRecordSetProperty();
}

CFTypeRef CalRelationSetRelatedObject(void *a1, CFTypeRef a2)
{
  _EnsureLoaded_0(a1);
  result = CalRelationRawGetRelatedObject(a1);
  if (result != a2)
  {
    if (result)
    {
      _CalRelationUpdateInverseProperty(a1, result, 0);
    }

    if (a2)
    {
      _CalRelationUpdateInverseProperty(a1, a2, 1);
    }

    return _CalRelationUpdateSetRelationProperties(a1, a2);
  }

  return result;
}

uint64_t _CalRelationUpdateInverseProperty(void *a1, uint64_t a2, int a3)
{
  result = a1[4];
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v7 = result;
      for (i = 0; i != v7; ++i)
      {
        valuePtr = -1;
        ValueAtIndex = CFArrayGetValueAtIndex(a1[4], i);
        result = CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
        v10 = a1[8];
        if (v10)
        {
          result = v10(a1, a2, valuePtr);
          v11 = result ^ 1;
        }

        else
        {
          v11 = 0;
        }

        if (valuePtr != -1)
        {
          result = CPRecordGetPropertyDescriptor();
          if (result)
          {
            if (*(result + 16) == &kCalRelationMethods && *(result + 32))
            {
              if (CDBLockingAssertionsEnabled == 1)
              {
                if (CPRecordGetStore())
                {
                  Context = CPRecordStoreGetContext();
                  if (Context)
                  {
                    os_unfair_lock_assert_owner(Context + 20);
                  }
                }
              }

              result = CPRecordGetProperty();
              if (!((result == 0) | v11 & 1))
              {
                v13 = result;
                v14 = CFGetTypeID(result);
                pthread_once(&__CalRelationRegisterOnce, CalRelationRegisterClass);
                if (v14 == __CalRelationTypeID)
                {
                  if (a3)
                  {
                    _EnsureLoaded_0(v13);
                    RelatedObject = CalRelationRawGetRelatedObject(v13);
                    v16 = a1[2];
                    if (RelatedObject)
                    {
                      if (RelatedObject != v16)
                      {
                        _CalRelationUpdateInverseProperty(v13, RelatedObject, 0);
                        v16 = a1[2];
                      }
                    }
                  }

                  else
                  {
                    v16 = 0;
                  }

                  result = _CalRelationUpdateSetRelationProperties(v13, v16);
                }

                else
                {
                  v17 = CFGetTypeID(v13);
                  result = CalToManyRelationGetTypeID();
                  if (v17 == result)
                  {
                    v18 = a1[2];
                    if (a3)
                    {
                      result = CalToManyRelationAddObject(v13, v18);
                    }

                    else
                    {
                      result = CalToManyRelationRemoveObject(v13, v18);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t CalRelationOwnerWillSave(uint64_t a1)
{
  v2 = CFGetTypeID(a1);
  result = pthread_once(&__CalRelationRegisterOnce, CalRelationRegisterClass);
  if (v2 == __CalRelationTypeID)
  {
    if (CDBLockingAssertionsEnabled == 1 && *(a1 + 16) != 0)
    {
      v5 = *(a1 + 16);
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }

    v7 = *(a1 + 28);
    result = CPRecordGetProperty();
    if (result == -1)
    {
      _EnsureLoaded_0(a1);
      if (CalRelationRawGetRelatedObject(a1) && CPRecordGetID() == -1 && *(a1 + 40) == 1)
      {
        Store = CPRecordGetStore();
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (Store)
          {
            v9 = CPRecordStoreGetContext();
            if (v9)
            {
              os_unfair_lock_assert_owner(v9 + 20);
            }
          }
        }

        if (CPRecordProcessAddImmediate())
        {
          CPRecordGetID();
        }
      }

      if (CDBLockingAssertionsEnabled == 1 && *(a1 + 16) != 0)
      {
        v11 = *(a1 + 16);
        if (CPRecordGetStore())
        {
          v12 = CPRecordStoreGetContext();
          if (v12)
          {
            os_unfair_lock_assert_owner(v12 + 20);
          }
        }
      }

      v13 = *(a1 + 28);

      return CPRecordSetProperty();
    }
  }

  return result;
}

uint64_t CalRelationOwnerDidSave(uint64_t a1)
{
  result = CalRelationRawGetRelatedObject(a1);
  if (result)
  {
    if (*(a1 + 40) == 1)
    {
      v3 = result;
      result = *(a1 + 32);
      if (result)
      {
        result = CFArrayGetCount(result);
        if (result >= 1)
        {
          for (i = 0; i < result; ++i)
          {
            valuePtr = -1;
            ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), i);
            CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
            PropertyDescriptor = CPRecordGetPropertyDescriptor();
            if (PropertyDescriptor && *(PropertyDescriptor + 16) == &kCalRelationMethods)
            {
              v7 = *(PropertyDescriptor + 32);
            }

            else
            {
              v7 = 0;
            }

            v8 = *(a1 + 64);
            if (v8)
            {
              LOBYTE(v8) = v8(a1, v3, valuePtr) ^ 1;
            }

            if (v7 && (v8 & 1) == 0)
            {
              if (CDBLockingAssertionsEnabled == 1 && CPRecordGetStore())
              {
                Context = CPRecordStoreGetContext();
                if (Context)
                {
                  os_unfair_lock_assert_owner(Context + 20);
                }
              }

              v10 = *v7;
              v11 = *(a1 + 16);
              CPRecordGetID();
              CPRecordSetProperty();
            }

            result = CFArrayGetCount(*(a1 + 32));
          }
        }
      }
    }
  }

  return result;
}

uint64_t CalRelationMarkDirty(uint64_t a1)
{
  if (CDBLockingAssertionsEnabled == 1 && *(a1 + 16) != 0)
  {
    v3 = *(a1 + 16);
    if (CPRecordGetStore())
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  v5 = *(a1 + 28);

  return CPRecordMarkPropertyChanged();
}

__CFString *CalEntityTypeGetName(int a1)
{
  result = 0;
  if (a1 > 99)
  {
    v3 = @"CalendarItem";
    v4 = @"Notification";
    if (a1 != 102)
    {
      v4 = 0;
    }

    if (a1 != 101)
    {
      v3 = v4;
    }

    if (a1 == 100)
    {
      return @"Participant";
    }

    else
    {
      return v3;
    }
  }

  else
  {
    switch(a1)
    {
      case -1:
        result = @"Undefined";
        break;
      case 1:
        result = @"Calendar";
        break;
      case 2:
        result = @"Event";
        break;
      case 3:
        result = @"Task";
        break;
      case 4:
        result = @"Alarm";
        break;
      case 5:
        result = @"RecurrenceRule";
        break;
      case 6:
        result = @"Source";
        break;
      case 7:
        result = @"Attendee";
        break;
      case 8:
        result = @"Organizer";
        break;
      case 9:
        result = @"EventAction";
        break;
      case 10:
        result = @"ExceptionDate";
        break;
      case 11:
        result = @"Attachment";
        break;
      case 12:
        result = @"Category";
        break;
      case 13:
        result = @"CategoryLink";
        break;
      case 14:
        result = @"Location";
        break;
      case 15:
        result = @"Sharee";
        break;
      case 16:
        result = @"InviteReplyNotification";
        break;
      case 17:
        result = @"ResourceChangeNotification";
        break;
      case 18:
        result = @"ResourceChange";
        break;
      case 19:
        result = @"SuggestionNotification";
        break;
      case 20:
        result = @"SuggestedEventInfo";
        break;
      case 21:
        result = @"Contact";
        break;
      case 23:
        result = @"Conference";
        break;
      case 24:
        result = @"Error";
        break;
      case 25:
        result = @"AttachmentFile";
        break;
      case 26:
        result = @"AuxDatabase";
        break;
      case 27:
        result = @"AuxDatabaseAccount";
        break;
      case 28:
        result = @"Image";
        break;
      case 29:
        result = @"Color";
        break;
      default:
        return result;
    }
  }

  return result;
}

CFTypeRef _CalEntityGetDebugDescription(const void *a1)
{
  if (a1)
  {
    Type = _CalEntityGetType(a1);
    v3 = CalEntityTypeGetName(Type);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }

    v5 = CPRecordCopyChangedProperties();
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v5)
    {
      Count = CFArrayGetCount(v5);
      if (Count >= 1)
      {
        v8 = Count;
        for (i = 0; i != v8; ++i)
        {
          CFArrayGetValueAtIndex(v5, i);
          PropertyDescriptor = CPRecordGetPropertyDescriptor();
          if (PropertyDescriptor && *PropertyDescriptor)
          {
            v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
            [v6 addObject:v11];
          }
        }
      }

      CFRelease(v5);
    }

    v12 = [v6 componentsJoinedByString:{@", "}];
    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = [MEMORY[0x1E696AD98] numberWithInt:CPRecordGetID()];
    v15 = [v13 initWithFormat:@"entityType: [%@] address: [%p] row ID: [%@] changedProperties: [%@]", v3, a1, v14, v12];

    if ((Type - 7) < 2 || Type == 100)
    {
      DebugDescription = _CalParticipantGetDebugDescription(a1);
    }

    else
    {
      if (Type != 2)
      {
        v17 = 0;
        goto LABEL_20;
      }

      DebugDescription = _CalEventGetDebugDescription(a1);
    }

    v17 = DebugDescription;
LABEL_20:
    v18 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v15];
    v19 = v18;
    if (v17)
    {
      [v18 appendFormat:@" %@", v17];
    }

    v20 = CFRetain(v19);
    v21 = CFAutorelease(v20);

    return v21;
  }

  v23 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v23, OS_LOG_TYPE_ERROR, "NULL 'entity' given.  Will not generate a debug description.", buf, 2u);
  }

  return 0;
}

CFTypeRef CalEntityGetDebugDescription(const void *a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  DebugDescription = _CalEntityGetDebugDescription(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return DebugDescription;
}

uint64_t _CalEntityIsOfType(const void *a1, int a2)
{
  TypeID = CPRecordGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    return 0;
  }

  v5 = *(CPRecordGetClass() + 64);
  if (v5 == a2)
  {
    return 1;
  }

  if ((a2 - 7) <= 1)
  {
    if (v5 == 100)
    {
      EntityType = _CalParticipantGetEntityType(a1);
      return EntityType == a2;
    }

    return 0;
  }

  if ((a2 & 0xFFFFFFFE) == 2)
  {
    if (v5 == 101)
    {
      EntityType = _CalCalendarItemGetEntityType(a1);
      return EntityType == a2;
    }

    return 0;
  }

  result = 0;
  v8 = (a2 & 0xFFFFFFFE) == 0x10 || a2 == 19;
  if (v8 && v5 == 102)
  {
    EntityType = _CalNotificationGetEntityType(a1);
    return EntityType == a2;
  }

  return result;
}

uint64_t CalEntityIsOfType(const void *a1, int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v5 = _CalEntityIsOfType(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v5;
}

const void *CalEntityCopyRecordID(const void *a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  RecordID = _CalEntityGetRecordID(a1);
  v4 = RecordID;
  if (RecordID)
  {
    CFRetain(RecordID);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

__CFArray *_CalEntityCopyRelatedEntitiesDeletedByTriggers(uint64_t a1, const void *a2, _BYTE *a3)
{
  Type = _CalEntityGetType(a2);
  if (Type > 16)
  {
    switch(Type)
    {
      case 17:
        v8 = a1;
        v9 = a2;

        break;
      case 19:
        v8 = a1;
        v9 = a2;

        break;
      case 101:
        goto LABEL_11;
      default:
        return 0;
    }

    return _CalResourceChangeNotificationCopyRelatedEntitiesDeletedByTriggers(v8, v9);
  }

  if ((Type - 2) < 2)
  {
LABEL_11:

    return _CalCalendarItemCopyRelatedEntitiesDeletedByTriggers(a1, a2);
  }

  if (Type != 1)
  {
    if (Type == 6)
    {

      return _CalStoreCopyRelatedEntitiesDeletedByTriggers(a1, a2, a3);
    }

    return 0;
  }

  return _CalCalendarCopyRelatedEntitiesDeletedByTriggers(a1, a2, a3);
}

uint64_t _CalEntityIsNew(_BOOL8 a1)
{
  v1 = a1;
  if (a1)
  {
    if (CPRecordGetID() == -1)
    {
      return 1;
    }

    else
    {
      Store = CPRecordGetStore();
      if (CDBLockingAssertionsEnabled == 1 && Store != 0)
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }

      v5 = CPRecordStoreCopyAddedRecords();
      if (v5)
      {
        v6 = v5;
        v8.length = CFArrayGetCount(v5);
        v8.location = 0;
        v1 = CFArrayContainsValue(v6, v8, v1) != 0;
        CFRelease(v6);
      }

      else
      {
        return 0;
      }
    }
  }

  return v1;
}

uint64_t CalEntityIsNew(_BOOL8 a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  IsNew = _CalEntityIsNew(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IsNew;
}

const void *CalEntityCopyStore(const void *a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Store = _CalEntityGetStore(a1);
  v4 = Store;
  if (Store)
  {
    CFRetain(Store);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

uint64_t _CalEntityGetStore(const void *a1)
{
  v1 = a1;
  if (!a1)
  {
    return v1;
  }

  while (1)
  {
    RawType = CalEntityGetRawType(v1);
    if (RawType <= 99)
    {
      break;
    }

    switch(RawType)
    {
      case 'd':
        Owner = _CalParticipantGetOwner(v1);
        break;
      case 'e':
        Owner = _CalCalendarItemGetCalendar(v1);
        break;
      case 'f':
LABEL_8:
        Owner = _CalResourceChangeGetNotification(v1);
        break;
      default:
        return 0;
    }

LABEL_21:
    v1 = Owner;
    if (!Owner)
    {
      return v1;
    }
  }

  switch(RawType)
  {
    case 1:

      result = _CalCalendarGetStore(v1);
      break;
    case 4:
      Owner = _CalAlarmGetOwningEntity(v1);
      goto LABEL_21;
    case 5:
      Owner = _CalRecurrenceGetOwner(v1, 1);
      goto LABEL_21;
    case 6:
      return v1;
    case 9:
    case 23:
      Owner = _CalConferenceGetOwner(v1);
      goto LABEL_21;
    case 10:
      Owner = _CalExceptionDateGetOwner(v1);
      goto LABEL_21;
    case 11:
      Owner = _CalAttachmentGetOwner(v1);
      goto LABEL_21;
    case 13:
      Owner = _CalCategoryLinkGetOwner(v1);
      goto LABEL_21;
    case 14:
      Owner = _CalLocationGetOwner(v1);
      goto LABEL_21;
    case 15:
      Owner = _CalShareeGetOwner(v1);
      goto LABEL_21;
    case 18:
      goto LABEL_8;
    case 20:
      Owner = _CalSuggestedEventInfoGetOwner(v1);
      goto LABEL_21;
    case 21:
      Owner = _CalContactGetOwner(v1);
      goto LABEL_21;
    case 24:
      Owner = _CalErrorGetOwner(v1);
      goto LABEL_21;
    case 25:

      result = _CalAttachmentFileGetStore(v1);
      break;
    case 28:

      result = _CalImageGetStore(v1);
      break;
    case 29:

      result = _CalColorGetStore(v1);
      break;
    default:
      return 0;
  }

  return result;
}

__CFString *CalPrivacyLevelAsString(unsigned int a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E868C408 + a1);
  }
}

uint64_t CalAttendeeTypeAsString(uint64_t a1)
{
  if (a1 < 5)
  {
    return *(&off_1E868C428 + a1);
  }

  v2 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  v4 = [v2 stringWithFormat:@"Unknown (%@)", v3];

  return v4;
}

uint64_t CalAttendeeRoleAsString(uint64_t a1)
{
  if (a1 < 6)
  {
    return *(&off_1E868C450 + a1);
  }

  v2 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  v4 = [v2 stringWithFormat:@"Unknown (%@)", v3];

  return v4;
}

uint64_t CalAttendeeStatusAsString(uint64_t a1)
{
  if (a1 < 8)
  {
    return *(&off_1E868C480 + a1);
  }

  v2 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  v4 = [v2 stringWithFormat:@"Unknown (%@)", v3];

  return v4;
}

uint64_t _CalParticipantPrepareForSave(const void *a1, uint64_t a2)
{
  if (_CalEntityGetType(a1) == 8)
  {
    if (((a1 != 0) & CDBLockingAssertionsEnabled) == 0)
    {
      goto LABEL_10;
    }

    if (!CPRecordGetStore())
    {
      goto LABEL_10;
    }

    Context = CPRecordStoreGetContext();
    if (!Context)
    {
      goto LABEL_10;
    }

LABEL_9:
    os_unfair_lock_assert_owner(Context + 20);
    goto LABEL_10;
  }

  if (((a1 != 0) & CDBLockingAssertionsEnabled) != 0)
  {
    if (CPRecordGetStore())
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_10:
  Property = CPRecordGetProperty();
  CalRelationOwnerWillSave(Property);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v6 = CPRecordStoreGetContext();
        if (v6)
        {
          os_unfair_lock_assert_owner(v6 + 20);
        }
      }
    }
  }

  result = CPRecordGetProperty();
  if (result == -1)
  {
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v8 = CPRecordStoreGetContext();
          if (v8)
          {
            os_unfair_lock_assert_owner(v8 + 20);
          }
        }
      }
    }

    v9 = CPRecordGetProperty();
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v10 = CPRecordStoreGetContext();
          if (v10)
          {
            os_unfair_lock_assert_owner(v10 + 20);
          }
        }
      }
    }

    v11 = CPRecordGetProperty();
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v12 = CPRecordStoreGetContext();
          if (v12)
          {
            os_unfair_lock_assert_owner(v12 + 20);
          }
        }
      }
    }

    v13 = CPRecordGetProperty();
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v14 = CPRecordStoreGetContext();
          if (v14)
          {
            os_unfair_lock_assert_owner(v14 + 20);
          }
        }
      }
    }

    result = CPRecordGetProperty();
    v15 = result;
    if (v9 && (result = CFStringGetLength(v9)) != 0 || v11 && (result = CFStringGetLength(v11)) != 0 || v13 && (result = CFStringGetLength(v13)) != 0)
    {
      if (!a2)
      {
        return result;
      }
    }

    else
    {
      if (!v15)
      {
        return result;
      }

      result = CFStringGetLength(v15);
      if (!a2 || !result)
      {
        return result;
      }
    }

    result = _CalIdentityGetID(v9, v11, v13, v15, a2);
    if (result != -1)
    {
      if (a1)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (CPRecordGetStore())
          {
            v16 = CPRecordStoreGetContext();
            if (v16)
            {
              os_unfair_lock_assert_owner(v16 + 20);
            }
          }
        }
      }

      return CPRecordSetProperty();
    }
  }

  return result;
}

const void *_CalParticipantPropertyDidChange(const void *result, unsigned int a2)
{
  if (a2 <= 0x1D)
  {
    v2 = result;
    if (((1 << a2) & 0x30600000) != 0)
    {
      if (result)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (CPRecordGetStore())
          {
            Context = CPRecordStoreGetContext();
            if (Context)
            {
              os_unfair_lock_assert_owner(Context + 20);
            }
          }
        }
      }

      result = CPRecordGetProperty();
      if (result != -1)
      {
        if (v2)
        {
          if (CDBLockingAssertionsEnabled)
          {
            if (CPRecordGetStore())
            {
              v4 = CPRecordStoreGetContext();
              if (v4)
              {
                os_unfair_lock_assert_owner(v4 + 20);
              }
            }
          }
        }

        CPRecordSetProperty();
        result = CPRecordGetStore();
        if (result)
        {
          result = CPRecordStoreGetContext();
          if (result)
          {

            return _CalDatabaseSetChangeFlags(result, 1);
          }
        }
      }
    }

    else if (a2 == 2)
    {
      Owner = _CalParticipantGetOwner(result);
      if (Owner)
      {
        v7 = Owner;
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (CPRecordGetStore())
          {
            v8 = CPRecordStoreGetContext();
            if (v8)
            {
              os_unfair_lock_assert_owner(v8 + 20);
            }
          }
        }

        CPRecordUnloadProperty();
        if (_CalCalendarItemGetSelfAttendee(v7) == v2)
        {
          if (v2)
          {
            if (CDBLockingAssertionsEnabled)
            {
              if (CPRecordGetStore())
              {
                v9 = CPRecordStoreGetContext();
                if (v9)
                {
                  os_unfair_lock_assert_owner(v9 + 20);
                }
              }
            }
          }

          OriginalProperty = CPRecordGetOriginalProperty();
          WeekStartRaw = _CalRecurrenceGetWeekStartRaw(v2);
          if (WeekStartRaw != OriginalProperty)
          {
            if (WeekStartRaw == 2 || OriginalProperty == 2)
            {
              v12 = CalCopyDatabaseForEntity(v2);
              _CalDatabaseSetChangeFlags(v12, 8);
              CFRelease(v12);
              _CalEventSelfAttendeeDeclinedChanged(v7);
            }

            _CalEventMarkAsModifiedForChangeTracking(v7);
          }
        }
      }

      return _CalParticipantSetFlag(v2, 1u, 0);
    }

    else if (a2 == 6)
    {
      if (result)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (CPRecordGetStore())
          {
            v5 = CPRecordStoreGetContext();
            if (v5)
            {
              os_unfair_lock_assert_owner(v5 + 20);
            }
          }
        }
      }

      return CPRecordUnloadProperty();
    }
  }

  return result;
}

uint64_t _CalParticipantPropertyWillChange(uint64_t result, int a2, uint64_t a3)
{
  if (a2 == 6 && a3 == -1)
  {
    v3 = result;
    if (result)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          Context = CPRecordStoreGetContext();
          if (Context)
          {
            os_unfair_lock_assert_owner(Context + 20);
          }
        }
      }
    }

    result = CPRecordGetProperty();
    if (result != -1)
    {
      if (v3)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (CPRecordGetStore())
          {
            v5 = CPRecordStoreGetContext();
            if (v5)
            {
              os_unfair_lock_assert_owner(v5 + 20);
            }
          }
        }
      }

      CPRecordGetProperty();
      if (v3)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (CPRecordGetStore())
          {
            v6 = CPRecordStoreGetContext();
            if (v6)
            {
              os_unfair_lock_assert_owner(v6 + 20);
            }
          }
        }
      }

      return CPRecordGetProperty();
    }
  }

  return result;
}

void CalAttendeeInitializeTables(uint64_t a1, void *a2)
{
  CPRecordStoreCreateTablesForClass();

  CalMigrationCreateIndexes(a2, &kCalParticipantClass, &kCalParticipantIndexes, &kCalParticipantChangesIndexes);
}

void CalAttendeeMigrateTables(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 > 6)
  {
    if (a3 > 0x37)
    {
      if (a3 <= 0x50)
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __CalAttendeeMigrateTables_block_invoke_3;
        v9[3] = &__block_descriptor_40_e5_v8__0l;
        v9[4] = a2;
        v8 = MEMORY[0x1E12C7520](v9);
        CalMigrateTableFull2(a2, &kCalParticipantClass, 0, &kCalParticipantMigrationInfo, 0, &kCalParticipantChangesMigrationInfo, 0, v8, &kCalParticipantIndexes, &kCalParticipantChangesIndexes, 0, a3);

        goto LABEL_18;
      }

      if (a3 <= 0x3E82)
      {
        CalMigrateTableFull2(a2, &kCalParticipantClass, 0, &kCalParticipantMigrationInfo, 0, &kCalParticipantChangesMigrationInfo, 0, 0, &kCalParticipantIndexes, &kCalParticipantChangesIndexes, 0, a3);
        CalPerformSQLWithConnection(a2, @"CREATE TEMP TABLE _MigrationParticipant (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, UUID TEXT, owner_id INTEGER, is_self INTEGER, entity_type INTEGER, identity_match_type INTEGER, identity_match_value TEXT);");
        CalPerformSQLWithConnection(a2, @"CREATE INDEX temp._MigrationParticipantIndex on _MigrationParticipant(owner_id, is_self, entity_type, identity_match_type, identity_match_value);");
        CalPerformSQLWithConnection(a2, @"        INSERT INTO temp._MigrationParticipant (ROWID, UUID, owner_id, is_self, entity_type, identity_match_type, identity_match_value) SELECT ROWID, UUID, owner_id, is_self, entity_type, CASE         WHEN Identity.address NOT NULL THEN 1         WHEN email NOT NULL THEN 2         WHEN phone_number NOT NULL THEN 3         WHEN Identity.display_name NOT NULL THEN 4         ELSE 5         END as identity_match_type,         CASE         WHEN Identity.address NOT NULL THEN Identity.address         WHEN email NOT NULL THEN email         WHEN phone_number NOT NULL THEN phone_number         WHEN Identity.display_name NOT NULL THEN Identity.display_name         ELSE Identity.first_name || _&NZB^^_ || Identity.last_name         END as identity_match_value         FROM Participant LEFT JOIN Identity ON identity_id = Identity.ROWID;");
        CalPerformSQLWithConnection(a2, @"        UPDATE temp._MigrationParticipant AS participantToUpdate         SET UUID = subQuery.mainParticipantUUID         FROM        (        SELECT detachedParticipant.ROWID as detachedParticipantROWID, mainParticipant.UUID AS mainParticipantUUID FROM temp._MigrationParticipant AS detachedParticipant         INNER JOIN CalendarItem AS detachedEvent ON detachedParticipant.owner_id = detachedEvent.ROWID         INNER JOIN CalendarItem AS mainEvent ON mainEvent.ROWID = detachedEvent.orig_item_id         INNER JOIN temp._MigrationParticipant AS mainParticipant ON mainEvent.ROWID = mainParticipant.owner_id         WHERE         detachedParticipant.is_self = mainParticipant.is_self AND         detachedParticipant.entity_type = mainParticipant.entity_type AND         detachedParticipant.identity_match_type = mainParticipant.identity_match_type AND         detachedParticipant.identity_match_value = mainParticipant.identity_match_value GROUP BY detachedParticipantROWID) AS subQuery         WHERE participantToUpdate.ROWID = subQuery.detachedParticipantROWID;");
        CalPerformSQLWithConnection(a2, @"UPDATE Participant SET UUID = subQuery.UUID FROM (SELECT ROWID, UUID FROM temp._MigrationParticipant) AS subQuery WHERE Participant.ROWID = subQuery.ROWID;");
        CalPerformSQLWithConnection(a2, @"DROP TABLE _MigrationParticipant;");
        goto LABEL_18;
      }

      if (a3 <= 0x4651)
      {
        CalMigrateTableFull2(a2, &kCalParticipantClass, 0, &kCalParticipantMigrationInfo, 0, &kCalParticipantChangesMigrationInfo, 0, 0, &kCalParticipantIndexes, &kCalParticipantChangesIndexes, 0, a3);
        goto LABEL_18;
      }
    }

    else
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __CalAttendeeMigrateTables_block_invoke;
      v12[3] = &__block_descriptor_36_e42__v24__0____CFString__8____CFDictionary__16l;
      v13 = a3;
      v5 = MEMORY[0x1E12C7520](v12);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __CalAttendeeMigrateTables_block_invoke_2;
      v10[3] = &__block_descriptor_44_e5_v8__0l;
      if (a3 == 55)
      {
        v6 = 0;
      }

      else
      {
        v6 = @"Attendee";
      }

      v11 = a3;
      v10[4] = a2;
      v7 = MEMORY[0x1E12C7520](v10);
      CalMigrateTableFull2(a2, &kCalParticipantClass, v6, &kCalParticipantMigrationInfo, v5, &kCalParticipantChangesMigrationInfo, 0, v7, &kCalParticipantIndexes, &kCalParticipantChangesIndexes, 0, a3);
    }

    if ((a3 - 13) >> 3 > 0x8C8)
    {
      return;
    }

LABEL_18:
    sqlite3_create_function(*(a2 + 8), "CalMigrateExtractCommentLastModifiedDate", 2, 526337, 0, _CalMigrateExtractCommentLastModifiedDate, 0, 0);
    CalPerformSQLWithConnection(a2, @"UPDATE Participant SET comment_last_modified = CalMigrateExtractCommentLastModifiedDate(ci.external_rep, i.address) FROM Participant p2 JOIN CalendarItem ci ON p2.owner_id = ci.ROWID JOIN Identity i ON p2.identity_id = i.ROWID WHERE Participant.ROWID = p2.ROWID AND Participant.comment IS NOT NULL AND Participant.comment_last_modified IS NULL");
    sqlite3_create_function(*(a2 + 8), "CalMigrateExtractCommentLastModifiedDate", 2, 526337, 0, 0, 0, 0);
    return;
  }

  CPRecordStoreCreateTablesForClass();

  CalMigrationCreateIndexes(a2, &kCalParticipantClass, &kCalParticipantIndexes, &kCalParticipantChangesIndexes);
}

CFStringRef __CalAttendeeMigrateTables_block_invoke(uint64_t a1, CFStringRef theString1)
{
  if (*(a1 + 32) > 52 || CFStringCompare(theString1, @"UUID", 0))
  {
    return 0;
  }

  v3 = CFUUIDCreate(0);
  v4 = CFUUIDCreateString(0, v3);
  CFRelease(v3);
  return v4;
}

void __CalAttendeeMigrateTables_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 >= 55)
  {
    v4 = @"UPDATE Participant SET email = (SELECT Identity.address FROM Participant_, Identity WHERE Participant_.ROWID = Participant.ROWID AND Participant_.identity_id = Identity.ROWID);";
  }

  else
  {
    v4 = @"UPDATE Participant SET identity_id = (SELECT Attendee_.participant_id FROM Attendee_ WHERE Attendee_.ROWID = Participant.ROWID);";
  }

  if (v2 >= 55)
  {
    v5 = @"UPDATE Identity SET address = IFNULL((SELECT external_id FROM Participant_, Identity WHERE Identity.ROWID = Participant_.identity_id), 'mailto:' || address);";
  }

  else
  {
    v5 = @"UPDATE Participant SET email = (SELECT Identity.address FROM Attendee_, Identity WHERE Attendee_.ROWID = Participant.ROWID AND Attendee_.participant_id = Identity.ROWID);";
  }

  CalPerformSQLWithConnection(v3, v4);
  v6 = *(a1 + 32);

  CalPerformSQLWithConnection(v6, v5);
}

void __CalAttendeeMigrateTables_block_invoke_3(uint64_t a1)
{
  CalPerformSQLWithConnection(*(a1 + 32), @"UPDATE Participant SET email = (SELECT Identity.address FROM Participant_, Identity WHERE Participant_.ROWID = Participant.ROWID AND Participant_.identity_id = Identity.ROWID);");
  v2 = *(a1 + 32);

  CalPerformSQLWithConnection(v2, @"UPDATE Identity SET address = IFNULL((SELECT external_id FROM Participant_, Identity WHERE Identity.ROWID = Participant_.identity_id), 'mailto:' || address);");
}

uint64_t _CalParticipantGetEntityType(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  if ((Property - 9) <= 0xFFFFFFFD)
  {
    CFLog();
  }

  return Property;
}

uint64_t CalParticipantGetEntityType(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Property;
}

CFTypeRef _CalParticipantHasValidParent(const void *a1)
{
  result = _CalParticipantGetOwner(a1);
  if (result)
  {

    return _CalRecordStillExists();
  }

  return result;
}

CFTypeRef _CalParticipantGetOwner(const void *a1)
{
  _CalEntityGetType(a1);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  result = CPRecordGetProperty();
  if (result)
  {

    return CalRelationGetRelatedObject(result);
  }

  return result;
}

const void *_CalCreateParticipant(uint64_t a1, int a2)
{
  v4 = CPRecordCreate();
  if ((a2 - 9) <= 0xFFFFFFFD)
  {
    _CalCreateParticipant_cold_1();
  }

  v5 = v4;
  TemporaryRecordIDForEntity = _CalDatbaseCreateTemporaryRecordIDForEntity(a1, a2);
  if (CDBLockingAssertionsEnabled == 1 && v5 != 0)
  {
    if (CPRecordGetStore())
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  CPRecordInitializeProperty();
  CFRelease(TemporaryRecordIDForEntity);
  if (CDBLockingAssertionsEnabled == 1 && v5 != 0)
  {
    if (CPRecordGetStore())
    {
      v10 = CPRecordStoreGetContext();
      if (v10)
      {
        os_unfair_lock_assert_owner(v10 + 20);
      }
    }
  }

  CPRecordInitializeProperty();
  if (CDBLockingAssertionsEnabled == 1 && v5 != 0)
  {
    if (CPRecordGetStore())
    {
      v12 = CPRecordStoreGetContext();
      if (v12)
      {
        os_unfair_lock_assert_owner(v12 + 20);
      }
    }
  }

  CPRecordInitializeProperty();
  if (CDBLockingAssertionsEnabled == 1 && v5 != 0)
  {
    if (CPRecordGetStore())
    {
      v14 = CPRecordStoreGetContext();
      if (v14)
      {
        os_unfair_lock_assert_owner(v14 + 20);
      }
    }
  }

  CPRecordInitializeProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v5)
    {
      if (CPRecordGetStore())
      {
        v15 = CPRecordStoreGetContext();
        if (v15)
        {
          os_unfair_lock_assert_owner(v15 + 20);
        }
      }
    }
  }

  CPRecordInitializeProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v5)
    {
      if (CPRecordGetStore())
      {
        v16 = CPRecordStoreGetContext();
        if (v16)
        {
          os_unfair_lock_assert_owner(v16 + 20);
        }
      }
    }
  }

  CPRecordInitializeProperty();
  if (a2 == 7)
  {
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (v5)
      {
        if (CPRecordGetStore())
        {
          v17 = CPRecordStoreGetContext();
          if (v17)
          {
            os_unfair_lock_assert_owner(v17 + 20);
          }
        }
      }
    }

    CPRecordInitializeProperty();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (v5)
      {
        if (CPRecordGetStore())
        {
          v18 = CPRecordStoreGetContext();
          if (v18)
          {
            os_unfair_lock_assert_owner(v18 + 20);
          }
        }
      }
    }

    CPRecordInitializeProperty();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (v5)
      {
        if (CPRecordGetStore())
        {
          v19 = CPRecordStoreGetContext();
          if (v19)
          {
            os_unfair_lock_assert_owner(v19 + 20);
          }
        }
      }
    }

    CPRecordInitializeProperty();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (v5)
      {
        if (CPRecordGetStore())
        {
          v20 = CPRecordStoreGetContext();
          if (v20)
          {
            os_unfair_lock_assert_owner(v20 + 20);
          }
        }
      }
    }

    CPRecordInitializeProperty();
  }

  v21 = _CalDBCreateUUIDString();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v5)
    {
      if (CPRecordGetStore())
      {
        v22 = CPRecordStoreGetContext();
        if (v22)
        {
          os_unfair_lock_assert_owner(v22 + 20);
        }
      }
    }
  }

  CPRecordInitializeProperty();
  CFRelease(v21);
  _CalDatabaseAddEntity(a1, v5);
  return v5;
}

const void *CalDatabaseCreateAttendee(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  Participant = _CalCreateParticipant(a1, 7);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return Participant;
}

const void *_CalParticipantCopy(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  Participant = _CalCreateParticipant(a1, Property);
  v7 = Participant;
  if (CDBLockingAssertionsEnabled == 1 && Participant != 0)
  {
    if (CPRecordGetStore())
    {
      v9 = CPRecordStoreGetContext();
      if (v9)
      {
        os_unfair_lock_assert_owner(v9 + 20);
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v10 = CPRecordStoreGetContext();
        if (v10)
        {
          os_unfair_lock_assert_owner(v10 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1 && v7 != 0)
  {
    if (CPRecordGetStore())
    {
      v12 = CPRecordStoreGetContext();
      if (v12)
      {
        os_unfair_lock_assert_owner(v12 + 20);
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v13 = CPRecordStoreGetContext();
        if (v13)
        {
          os_unfair_lock_assert_owner(v13 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1 && v7 != 0)
  {
    if (CPRecordGetStore())
    {
      v15 = CPRecordStoreGetContext();
      if (v15)
      {
        os_unfair_lock_assert_owner(v15 + 20);
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v16 = CPRecordStoreGetContext();
        if (v16)
        {
          os_unfair_lock_assert_owner(v16 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v7)
    {
      if (CPRecordGetStore())
      {
        v17 = CPRecordStoreGetContext();
        if (v17)
        {
          os_unfair_lock_assert_owner(v17 + 20);
        }
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v18 = CPRecordStoreGetContext();
        if (v18)
        {
          os_unfair_lock_assert_owner(v18 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v7)
    {
      if (CPRecordGetStore())
      {
        v19 = CPRecordStoreGetContext();
        if (v19)
        {
          os_unfair_lock_assert_owner(v19 + 20);
        }
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v20 = CPRecordStoreGetContext();
        if (v20)
        {
          os_unfair_lock_assert_owner(v20 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v7)
    {
      if (CPRecordGetStore())
      {
        v21 = CPRecordStoreGetContext();
        if (v21)
        {
          os_unfair_lock_assert_owner(v21 + 20);
        }
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v22 = CPRecordStoreGetContext();
        if (v22)
        {
          os_unfair_lock_assert_owner(v22 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v7)
    {
      if (CPRecordGetStore())
      {
        v23 = CPRecordStoreGetContext();
        if (v23)
        {
          os_unfair_lock_assert_owner(v23 + 20);
        }
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v24 = CPRecordStoreGetContext();
        if (v24)
        {
          os_unfair_lock_assert_owner(v24 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v7)
    {
      if (CPRecordGetStore())
      {
        v25 = CPRecordStoreGetContext();
        if (v25)
        {
          os_unfair_lock_assert_owner(v25 + 20);
        }
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v26 = CPRecordStoreGetContext();
        if (v26)
        {
          os_unfair_lock_assert_owner(v26 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v7)
    {
      if (CPRecordGetStore())
      {
        v27 = CPRecordStoreGetContext();
        if (v27)
        {
          os_unfair_lock_assert_owner(v27 + 20);
        }
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v28 = CPRecordStoreGetContext();
        if (v28)
        {
          os_unfair_lock_assert_owner(v28 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v7)
    {
      if (CPRecordGetStore())
      {
        v29 = CPRecordStoreGetContext();
        if (v29)
        {
          os_unfair_lock_assert_owner(v29 + 20);
        }
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v30 = CPRecordStoreGetContext();
        if (v30)
        {
          os_unfair_lock_assert_owner(v30 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v7)
    {
      if (CPRecordGetStore())
      {
        v31 = CPRecordStoreGetContext();
        if (v31)
        {
          os_unfair_lock_assert_owner(v31 + 20);
        }
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v32 = CPRecordStoreGetContext();
        if (v32)
        {
          os_unfair_lock_assert_owner(v32 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v7)
    {
      if (CPRecordGetStore())
      {
        v33 = CPRecordStoreGetContext();
        if (v33)
        {
          os_unfair_lock_assert_owner(v33 + 20);
        }
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v34 = CPRecordStoreGetContext();
        if (v34)
        {
          os_unfair_lock_assert_owner(v34 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v7)
    {
      if (CPRecordGetStore())
      {
        v35 = CPRecordStoreGetContext();
        if (v35)
        {
          os_unfair_lock_assert_owner(v35 + 20);
        }
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v36 = CPRecordStoreGetContext();
        if (v36)
        {
          os_unfair_lock_assert_owner(v36 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v7)
    {
      if (CPRecordGetStore())
      {
        v37 = CPRecordStoreGetContext();
        if (v37)
        {
          os_unfair_lock_assert_owner(v37 + 20);
        }
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v38 = CPRecordStoreGetContext();
        if (v38)
        {
          os_unfair_lock_assert_owner(v38 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v7)
    {
      if (CPRecordGetStore())
      {
        v39 = CPRecordStoreGetContext();
        if (v39)
        {
          os_unfair_lock_assert_owner(v39 + 20);
        }
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v40 = CPRecordStoreGetContext();
        if (v40)
        {
          os_unfair_lock_assert_owner(v40 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v7)
    {
      if (CPRecordGetStore())
      {
        v41 = CPRecordStoreGetContext();
        if (v41)
        {
          os_unfair_lock_assert_owner(v41 + 20);
        }
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v42 = CPRecordStoreGetContext();
        if (v42)
        {
          os_unfair_lock_assert_owner(v42 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v7)
    {
      if (CPRecordGetStore())
      {
        v43 = CPRecordStoreGetContext();
        if (v43)
        {
          os_unfair_lock_assert_owner(v43 + 20);
        }
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v44 = CPRecordStoreGetContext();
        if (v44)
        {
          os_unfair_lock_assert_owner(v44 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v7)
    {
      if (CPRecordGetStore())
      {
        v45 = CPRecordStoreGetContext();
        if (v45)
        {
          os_unfair_lock_assert_owner(v45 + 20);
        }
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v46 = CPRecordStoreGetContext();
        if (v46)
        {
          os_unfair_lock_assert_owner(v46 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v7)
    {
      if (CPRecordGetStore())
      {
        v47 = CPRecordStoreGetContext();
        if (v47)
        {
          os_unfair_lock_assert_owner(v47 + 20);
        }
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v48 = CPRecordStoreGetContext();
        if (v48)
        {
          os_unfair_lock_assert_owner(v48 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v7)
    {
      if (CPRecordGetStore())
      {
        v49 = CPRecordStoreGetContext();
        if (v49)
        {
          os_unfair_lock_assert_owner(v49 + 20);
        }
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v50 = CPRecordStoreGetContext();
        if (v50)
        {
          os_unfair_lock_assert_owner(v50 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v7)
    {
      if (CPRecordGetStore())
      {
        v51 = CPRecordStoreGetContext();
        if (v51)
        {
          os_unfair_lock_assert_owner(v51 + 20);
        }
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v52 = CPRecordStoreGetContext();
        if (v52)
        {
          os_unfair_lock_assert_owner(v52 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  return v7;
}

uint64_t _CalInvalidateParticipantsWithOwnerID(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  return CPRecordStoreInvalidateCachedInstancesOfClassWithBlock();
}

uint64_t CalParticipantGetUID(const void *a1)
{
  if ((CalEntityIsOfType(a1, 100) & 1) == 0)
  {
    CalParticipantGetUID_cold_1();
  }

  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  ID = CPRecordGetID();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return ID;
}

void CalRemoveParticipant(const void *a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRemoveParticipant(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalRemoveParticipant(const void *a1)
{
  result = CPRecordGetStore();
  if (result)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      v4 = Context;
      _CalDatabaseRemoveEntity(Context, a1);
      _CalDatabaseSetDeletionFlags(v4, 64);
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      v5 = CPRecordStoreGetContext();
      if (v5)
      {
        os_unfair_lock_assert_owner(v5 + 20);
      }
    }

    return CPRecordStoreRemoveRecord();
  }

  return result;
}

uint64_t _CalParticipantGetWithUID(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  return CPRecordStoreGetInstanceOfClassWithUID();
}

uint64_t _CalParticipantGetRecordID(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordGetProperty();
}

const __CFString *_CalParticipantSetIdentityPropertyIfDifferent(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  result = CPRecordGetProperty();
  if (result != a3 && ((a3 == 0) == (result != 0) || (result = CFStringCompare(a3, result, 0)) != 0))
  {
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v7 = CPRecordStoreGetContext();
          if (v7)
          {
            os_unfair_lock_assert_owner(v7 + 20);
          }
        }
      }
    }

    return CPRecordSetProperty();
  }

  return result;
}

void CalParticipantSetUUID(uint64_t a1, const __CFString *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalParticipantSetIdentityPropertyIfDifferent(a1, 8, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalParticipantCopyUUID(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalParticipantCopyUUID(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

uint64_t _CalParticipantCopyUUID(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordCopyProperty();
}

uint64_t CalDatabaseCopyOfAllAttendeesInStore(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v5 = CDBLockingAssertionsEnabled;
  if (!RecordStore)
  {
    v5 = 0;
  }

  if (a2)
  {
    if (v5)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  else if (v5)
  {
    v7 = CPRecordStoreGetContext();
    if (v7)
    {
      os_unfair_lock_assert_owner(v7 + 20);
    }
  }

  v8 = CPRecordStoreCopyAllInstancesOfClassWithAliasAndFilter();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v8;
}

void CalParticipantSetDisplayName(uint64_t a1, const __CFString *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalParticipantSetIdentityPropertyIfDifferent(a1, 21, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalParticipantCopyDisplayName(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalParticipantCopyDisplayName(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

uint64_t _CalParticipantCopyDisplayName(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordCopyProperty();
}

const __CFString *_CalParticipantSetAddress(uint64_t a1, CFURLRef anURL)
{
  if (anURL)
  {
    v3 = CFURLGetString(anURL);
  }

  else
  {
    v3 = 0;
  }

  return _CalParticipantSetIdentityPropertyIfDifferent(a1, 22, v3);
}

void CalParticipantSetAddress(uint64_t a1, const __CFURL *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalParticipantSetAddress(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

const __CFString *CalParticipantCopyAddress(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalParticipantCopyAddress(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

const __CFString *_CalParticipantCopyAddress(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  result = CPRecordCopyProperty();
  if (result)
  {
    v3 = result;
    v4 = CFURLCreateWithString(0, result, 0);
    CFRelease(v3);
    return v4;
  }

  return result;
}

void CalParticipantSetEmailAddress(_BOOL8 a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 9, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalParticipantCopyEmailAddress(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalRecurrenceCopyByDayDays(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalParticipantSetPhoneNumber(_BOOL8 a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 10, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalParticipantCopyPhoneNumber(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalParticipantCopyPhoneNumber(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

uint64_t _CalParticipantCopyPhoneNumber(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordCopyProperty();
}

void CalParticipantSetFirstName(uint64_t a1, const __CFString *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalParticipantSetIdentityPropertyIfDifferent(a1, 28, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalParticipantCopyFirstName(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Name = _CalParticipantCopyFirstName(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Name;
}

uint64_t _CalParticipantCopyFirstName(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordCopyProperty();
}

void CalParticipantSetLastName(uint64_t a1, const __CFString *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalParticipantSetIdentityPropertyIfDifferent(a1, 29, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalParticipantCopyLastName(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Name = _CalParticipantCopyLastName(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Name;
}

uint64_t _CalParticipantCopyLastName(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordCopyProperty();
}

void CalParticipantSetExternalRepresentation(_BOOL8 a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 7, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalParticipantCopyExternalRepresentation(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

uint64_t CalParticipantGetScheduleAgent(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Property;
}

void CalParticipantSetScheduleAgent(_BOOL8 a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 13, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL CalParticipantGetRSVP(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Flag = _CalParticipantGetFlag(a1, 1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Flag;
}

BOOL _CalParticipantGetFlag(uint64_t a1, int a2)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return (CPRecordGetProperty() & a2) != 0;
}

void CalParticipantSetRSVP(_BOOL8 a1, int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalParticipantSetFlag(a1, 1u, a2 != 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL _CalParticipantSetFlag(_BOOL8 a1, unsigned int a2, int a3)
{
  if (a1 && (CDBLockingAssertionsEnabled & 1) != 0)
  {
    if (CPRecordGetStore())
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  Property = CPRecordGetProperty();
  if (a3)
  {
    v8 = Property | a2;
  }

  else
  {
    v8 = Property & ~a2;
  }

  return _CalRecordSetPropertyIfDifferent(a1, 14, v8);
}

BOOL CalParticipantGetCommentChanged(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Flag = _CalParticipantGetFlag(a1, 2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Flag;
}

void CalParticipantSetCommentChanged(_BOOL8 a1, int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalParticipantSetFlag(a1, 2u, a2 != 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL CalParticipantGetStatusChanged(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Flag = _CalParticipantGetFlag(a1, 4);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Flag;
}

void CalParticipantSetStatusChanged(_BOOL8 a1, int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalParticipantSetFlag(a1, 4u, a2 != 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL CalParticipantGetProposedStartDateChanged(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Flag = _CalParticipantGetFlag(a1, 8);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Flag;
}

void CalParticipantSetProposedStartDateChanged(_BOOL8 a1, int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalParticipantSetFlag(a1, 8u, a2 != 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL CalParticipantGetAddedByForwarding(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Flag = _CalParticipantGetFlag(a1, 32);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Flag;
}

void CalParticipantSetAddedByForwarding(_BOOL8 a1, int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalParticipantSetFlag(a1, 0x20u, a2 != 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalParticipantSetResponseComment(_BOOL8 a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 12, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalParticipantCopyResponseComment(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalRecurrenceCopyByWeekWeeks(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalParticipantSetCommentLastModified(_BOOL8 a1, CFAbsoluteTime a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetDateProperty(a1, 30, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

double CalParticipantGetCommentLastModified(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  DateProperty = _CalRecordGetDateProperty(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return DateProperty;
}

BOOL _CalParticipantGetScheduleForceSend(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordGetProperty() != 0;
}

void CalParticipantSetScheduleForceSend(_BOOL8 a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 20, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL CalParticipantGetScheduleForceSend(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  ScheduleForceSend = _CalParticipantGetScheduleForceSend(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return ScheduleForceSend;
}

CFTypeRef CalParticipantCopyOwner(const void *a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Owner = _CalParticipantGetOwner(a1);
  v4 = Owner;
  if (Owner)
  {
    CFRetain(Owner);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalParticipantSetOwner(const void *a1, const void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalEntityGetType(a1);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  if (Property)
  {
    CalRelationSetRelatedObject(Property, a2);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalDatabaseCopyParticipantOrAttendeeChangesInStore(uint64_t a1, uint64_t a2, uint64_t a3, CFMutableDictionaryRef *a4)
{
  v6 = a1;
  v7 = _CalAttendeeCreateChangeHistoryWhereClauseForStore(a1, a2, a3);
  if (a2)
  {
    v6 = CalCopyDatabaseForRecord();
  }

  else if (v6)
  {
    CFRetain(v6);
  }

  v8 = _CalDatabaseCopyParticipantChangesWithWhereClause(v6, v7, a4);
  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v8;
}

uint64_t _CalDatabaseRemoveParticipantChangesInStoreToIndex(os_unfair_lock_s *a1, uint64_t a2, int a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (a2)
  {
    v5 = CalCopyDatabaseForRecord();
  }

  else
  {
    v5 = a1;
    CFRetain(a1);
  }

  os_unfair_lock_lock(v5 + 20);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___CalDatabaseRemoveParticipantChangesInStoreToIndex_block_invoke;
  v8[3] = &unk_1E868D418;
  v8[4] = &v11;
  v8[5] = v5;
  v8[6] = a2;
  v9 = 100;
  v10 = a3;
  _CalDatabaseLockForWriteTransaction(v5, v8);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v5 + 20);
  }

  os_unfair_lock_unlock(v5 + 20);
  CFRelease(v5);
  v6 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v6;
}

void sub_1DEC1BBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _CalDatabaseCopyParticipantOrAttendeeChangesInCalendar(os_unfair_lock_s *a1, const __CFString *a2, uint64_t a3, CFMutableDictionaryRef *a4)
{
  v7 = _CalAttendeeCreateChangeHistoryWhereClauseForCalendar(a2, a3);
  if (a2)
  {
    a1 = CalCopyDatabaseForRecord();
  }

  else if (a1)
  {
    CFRetain(a1);
  }

  v8 = _CalDatabaseCopyParticipantChangesWithWhereClause(a1, v7, a4);
  if (v7)
  {
    CFRelease(v7);
  }

  if (a1)
  {
    CFRelease(a1);
  }

  return v8;
}

uint64_t _CalDatabaseRemoveAttendeeChangesInCalendarToIndex(os_unfair_lock_s *a1, const __CFString *a2, int a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (a2)
  {
    v5 = CalCopyDatabaseForRecord();
  }

  else
  {
    v5 = a1;
    CFRetain(a1);
  }

  os_unfair_lock_lock(v5 + 20);
  v6 = _CalAttendeeCreateChangeHistoryWhereClauseForCalendar(a2, 100);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___CalDatabaseRemoveAttendeeChangesInCalendarToIndex_block_invoke;
  v9[3] = &unk_1E8689120;
  v9[4] = &v11;
  v9[5] = v5;
  v10 = a3;
  v9[6] = v6;
  _CalDatabaseLockForWriteTransaction(v5, v9);
  if (v6)
  {
    CFRelease(v6);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v5 + 20);
  }

  os_unfair_lock_unlock(v5 + 20);
  CFRelease(v5);
  v7 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v7;
}

void sub_1DEC1BDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _CalDatabaseRemoveAttendeeChangesWithIndices(os_unfair_lock_s *a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  os_unfair_lock_lock(a1 + 20);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___CalDatabaseRemoveAttendeeChangesWithIndices_block_invoke;
  v6[3] = &unk_1E8689148;
  v6[4] = &v7;
  v6[5] = a1;
  v6[6] = a2;
  _CalDatabaseLockForWriteTransaction(a1, v6);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_1DEC1BED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CalDatabaseCreateAttendeesSearchStatement(uint64_t *a1)
{
  os_unfair_lock_lock((a1[5] + 80));
  RecordStore = _CalDatabaseGetRecordStore(a1[5]);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  if (Database && (v6 = Database, !sqlite3_create_function(*(*(Database + 8) + 8), "IDENTITY_MATCHES", 1, 1, a1, IdentityMatcherCallback, 0, 0)))
  {
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*(v6 + 104))
      {
        v9 = CPRecordStoreGetContext();
        if (v9)
        {
          os_unfair_lock_assert_owner(v9 + 20);
        }
      }
    }

    return CPSqliteDatabaseStatementForReading();
  }

  else
  {
    v7 = a1[5];
    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(v7 + 20);
    }

    os_unfair_lock_unlock(v7 + 20);
    return 0;
  }
}

void IdentityMatcherCallback(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v5 = sqlite3_user_data(a1);
  v6 = sqlite3_value_int(*a3);
  v7 = CFSetGetValueIfPresent(v5[1], v6, 0) != 0;

  sqlite3_result_int(a1, v7);
}

void CalDatabaseDeleteAttendeesSearchStatement(uint64_t **a1, uint64_t a2)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a1)
      {
        v3 = **a1;
        if (v3)
        {
          if (*(v3 + 104))
          {
            Context = CPRecordStoreGetContext();
            if (Context)
            {
              os_unfair_lock_assert_owner(Context + 20);
            }
          }
        }
      }
    }
  }

  CPSqliteStatementReset();
  v5 = *(a2 + 40);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v5 + 20);
  }

  os_unfair_lock_unlock(v5 + 20);
}

uint64_t _CalDatabaseRemoveParticipantChangesInStoreToIndexInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = _CalAttendeeCreateChangeHistoryWhereClauseForStore(a1, a3, a2);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v8 = CPRecordStoreDeleteChangesForClassToIndexWhere();
  if (v4)
  {
    CFRelease(v4);
  }

  return v8;
}

uint64_t CalAttendeeBasePropertiesMappingDict(int a1)
{
  if (CalAttendeeBasePropertiesMappingDict_onceToken != -1)
  {
    CalAttendeeBasePropertiesMappingDict_cold_1();
  }

  v2 = &CalAttendeeBasePropertiesMappingDict_sOrganizerPropDict;
  if (!a1)
  {
    v2 = &CalAttendeeBasePropertiesMappingDict_sAttendeePropDict;
  }

  return *v2;
}

void __CalAttendeeBasePropertiesMappingDict_block_invoke()
{
  v49 = *MEMORY[0x1E69E9840];
  v27 = @"UUID";
  v28 = 8;
  v29 = @"displayNameRaw";
  v30 = 21;
  v31 = @"URLString";
  v32 = 22;
  v33 = @"emailAddress";
  v34 = 9;
  v35 = @"phoneNumber";
  v36 = 10;
  v37 = @"firstName";
  v38 = 28;
  v39 = @"lastName";
  v40 = 29;
  v41 = @"comment";
  v42 = 12;
  v43 = @"commentLastModifiedDate";
  v44 = 30;
  v45 = @"proposedStartDateStatus";
  v46 = 18;
  v0 = @"scheduleForceSend";
  v47 = v0;
  v48 = 20;
  CalAttendeeBasePropertiesMappingDict_sOrganizerPropDict = _CalDBCreatePropertyMap(&v27, 11);
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, CalAttendeeBasePropertiesMappingDict_sOrganizerPropDict);
  v5 = @"proposedStartDate";
  v6 = 16;
  v7 = @"inviterNameString";
  v8 = 17;
  v9 = @"flags";
  v10 = 14;
  v11 = @"lastModifiedParticipationStatus";
  v12 = 15;
  v13 = @"participantType";
  v14 = 1;
  v15 = @"participantRole";
  v16 = 4;
  v17 = @"statusRaw";
  v18 = 2;
  v19 = @"pendingStatusRaw";
  v20 = 3;
  v21 = @"scheduleStatus";
  v22 = 19;
  v23 = v0;
  v24 = 20;
  v25 = @"isCurrentUser";
  v26 = 32;
  _CalDBInsertPropertyMap(MutableCopy, &v5, 11);
  CalAttendeeBasePropertiesMappingDict_sAttendeePropDict = MutableCopy;
  for (i = 160; i != -16; i -= 16)
  {
  }

  for (j = 160; j != -16; j -= 16)
  {
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1DEC1C56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  for (i = 160; i != -16; i -= 16)
  {
  }

  for (j = 160; j != -16; j -= 16)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t CalAttendeeGetPropertyIDWithPropertyName(void *key)
{
  if (CalAttendeeGetPropertyIDWithPropertyName_onceToken != -1)
  {
    CalAttendeeGetPropertyIDWithPropertyName_cold_1();
  }

  value = 0;
  if (CFDictionaryGetValueIfPresent(CalAttendeeGetPropertyIDWithPropertyName_sPropDict, key, &value))
  {
    return value;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void __CalAttendeeGetPropertyIDWithPropertyName_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  if (CalAttendeeBasePropertiesMappingDict_onceToken != -1)
  {
    CalAttendeeBasePropertiesMappingDict_cold_1();
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, CalAttendeeBasePropertiesMappingDict_sAttendeePropDict);
  v2 = @"owner";
  v3 = 26;
  _CalDBInsertPropertyMap(MutableCopy, &v2, 1);
  CalAttendeeGetPropertyIDWithPropertyName_sPropDict = MutableCopy;

  v1 = *MEMORY[0x1E69E9840];
}

const __CFArray *_CalRemoveAttendee(const void *a1)
{
  Owner = _CalParticipantGetOwner(a1);
  if (Owner)
  {

    return _CalCalendarItemRemoveAttendee(Owner, a1);
  }

  else
  {
    DatabaseForRecord = CalGetDatabaseForRecord();

    return _CalDatabaseRemoveEntity(DatabaseForRecord, a1);
  }
}

void CalRemoveAttendee(const void *a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRemoveAttendee(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

const void *_CalDatabaseCopyParticipantWithUID(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v3 = _CalParticipantGetWithUID(RecordStore);
  v4 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v4;
}

CFTypeRef _CalDatabaseCopyParticipantWithUUID(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v5 = CPRecordStoreCopyAllInstancesOfClassWithAliasAndFilter();
  if (v5)
  {
    v6 = v5;
    if (CFArrayGetCount(v5) < 1)
    {
      v8 = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
      v8 = CFRetain(ValueAtIndex);
    }

    CFRelease(v6);
  }

  else
  {
    v8 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v8;
}

CFTypeRef CalDatabaseCopyAttendeeForEventWithAddress(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  UID = CalEventGetUID(a2);
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = ___CalDatabaseCopyParticipantForEventWithAddress_block_invoke;
  v29 = &__block_descriptor_44_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
  v31 = UID;
  v30 = a3;
  v10 = CPRecordStoreCopyAllInstancesOfClassWithAliasAndFilter();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  if (v10)
  {
    if (CFArrayGetCount(v10) <= 0)
    {
      CFRelease(v10);
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v10, 0);
      v12 = CFRetain(ValueAtIndex);
      CFRelease(v10);
      if (v12)
      {
        goto LABEL_25;
      }
    }
  }

  v13 = CalEventCopyAttendees(a2);
  v14 = [MEMORY[0x1E695DFF8] URLWithString:a3];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = v13;
  v12 = [v15 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v12)
  {
    v16 = *v23;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v15);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        v19 = CalParticipantCopyAddress(v18);
        if ([(__CFString *)v19 isEqual:v14, v22])
        {
          v12 = CFRetain(v18);

          goto LABEL_24;
        }
      }

      v12 = [v15 countByEnumeratingWithState:&v22 objects:v32 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_24:

LABEL_25:
  v20 = *MEMORY[0x1E69E9840];
  return v12;
}

void CalAttendeeSetType(_BOOL8 a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalAttendeeGetType(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Type = _CalAttendeeGetType(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Type;
}

uint64_t _CalAttendeeGetType(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordGetProperty();
}

void CalAttendeeSetRole(_BOOL8 a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 4, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalAttendeeGetRole(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Role = _CalAttendeeGetRole(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Role;
}

uint64_t _CalAttendeeGetRole(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordGetProperty();
}

uint64_t _CalAttendeeSetStatus(const void *a1, int a2)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  if (Property != a2)
  {
    goto LABEL_31;
  }

  v6 = Property;
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v7 = CPRecordStoreGetContext();
        if (v7)
        {
          os_unfair_lock_assert_owner(v7 + 20);
        }
      }
    }
  }

  result = CPRecordGetProperty();
  if (result != v6)
  {
LABEL_31:
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v9 = CPRecordStoreGetContext();
          if (v9)
          {
            os_unfair_lock_assert_owner(v9 + 20);
          }
        }
      }
    }

    CPRecordSetProperty();
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v10 = CPRecordStoreGetContext();
          if (v10)
          {
            os_unfair_lock_assert_owner(v10 + 20);
          }
        }
      }
    }

    CPRecordSetProperty();
    result = _CalParticipantGetOwner(a1);
    if (result)
    {
      v11 = result;
      result = _CalCalendarItemGetSelfAttendee(result);
      if (result == a1)
      {

        return _CalEventMarkPropertyModified(v11);
      }
    }
  }

  return result;
}

void CalAttendeeSetStatus(const void *a1, int a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalAttendeeSetStatus(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalAttendeeGetStatus(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  WeekStartRaw = _CalRecurrenceGetWeekStartRaw(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return WeekStartRaw;
}