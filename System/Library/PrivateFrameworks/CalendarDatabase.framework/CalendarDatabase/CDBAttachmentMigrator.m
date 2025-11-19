@interface CDBAttachmentMigrator
+ (BOOL)_createNewContainerIfNeeded:(id)a3 error:(id *)a4;
+ (BOOL)_moveAttachmentWithInfo:(id)a3 error:(id *)a4;
+ (BOOL)_moveAttachmentsWithInfo:(id)a3 error:(id *)a4;
+ (id)_attachmentInfoForLegacyAttachmentURL:(id)a3 newAttachmentContainerForStore:(id)a4 newCalendarDataContainer:(id)a5 database:(CalDatabase *)a6 attachmentUUID:(id *)a7;
+ (id)_infoForAttachmentsInLegacyAttachmentContainerForStore:(id)a3 newAttachmentContainerForStore:(id)a4 newCalendarDataContainer:(id)a5 database:(CalDatabase *)a6;
+ (void)_moveAttachmentsForStore:(void *)a3 fromLegacyAttachmentContainer:(id)a4 calendarDataContainerProvider:(id)a5 database:(CalDatabase *)a6;
+ (void)_moveAttachmentsFromLegacyAttachmentContainer:(id)a3 calendarDataContainerProvider:(id)a4 database:(CalDatabase *)a5;
+ (void)_setFileSizeForAttachmentUUID:(id)a3 attachmentURL:(id)a4 database:(CalDatabase *)a5;
+ (void)_setFileSizeForAttachmentsWithInfo:(id)a3 database:(CalDatabase *)a4;
+ (void)_setLocalRelativePathForAttachmentUUID:(id)a3 localRelativePath:(id)a4 database:(CalDatabase *)a5;
+ (void)_updateLocalRelativeURLForAttachmentsWithInfo:(id)a3 database:(CalDatabase *)a4;
+ (void)migrateDataClassProtectionForAttachmentsInLegacyCalendarDataContainer:(id)a3;
+ (void)migrateWithLegacyCalendarDataContainer:(id)a3 calendarDataContainerProvider:(id)a4 database:(CalDatabase *)a5;
@end

@implementation CDBAttachmentMigrator

+ (void)migrateWithLegacyCalendarDataContainer:(id)a3 calendarDataContainerProvider:(id)a4 database:(CalDatabase *)a5
{
  v8 = a4;
  v9 = a3;
  [a1 migrateDataClassProtectionForAttachmentsInLegacyCalendarDataContainer:v9];
  v10 = [MEMORY[0x1E6992F10] legacyAttachmentContainerWithBaseURL:v9];

  [a1 _moveAttachmentsFromLegacyAttachmentContainer:v10 calendarDataContainerProvider:v8 database:a5];
  if ((CalDatabaseSave(a5) & 1) == 0)
  {
    v11 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_1DEBB1000, v11, OS_LOG_TYPE_ERROR, "Could not save database.", v12, 2u);
    }
  }
}

+ (void)_moveAttachmentsFromLegacyAttachmentContainer:(id)a3 calendarDataContainerProvider:(id)a4 database:(CalDatabase *)a5
{
  v14 = a3;
  v8 = a4;
  v9 = CalDatabaseCopyOfAllStores(a5);
  if (v9)
  {
    v10 = v9;
    Count = CFArrayGetCount(v9);
    if (Count >= 1)
    {
      v12 = Count;
      for (i = 0; i != v12; ++i)
      {
        [a1 _moveAttachmentsForStore:CFArrayGetValueAtIndex(v10 fromLegacyAttachmentContainer:i) calendarDataContainerProvider:v14 database:{v8, a5}];
      }
    }

    CFRelease(v10);
  }
}

+ (void)_moveAttachmentsForStore:(void *)a3 fromLegacyAttachmentContainer:(id)a4 calendarDataContainerProvider:(id)a5 database:(CalDatabase *)a6
{
  v57 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = CalStoreCopyUUID(a3);
  if (v12)
  {
    v13 = [v10 URLByAppendingPathComponent:v12];
    v14 = v13;
    if (!v13)
    {
      v28 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v50 = v12;
        v51 = 2112;
        v52 = v10;
        _os_log_impl(&dword_1DEBB1000, v28, OS_LOG_TYPE_ERROR, "Could not get attachment container for store. store uuid = %{public}@, legacy attachment container = %@", buf, 0x16u);
      }

      goto LABEL_40;
    }

    v15 = [v13 path];
    if (!v15)
    {
      v29 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v50 = v12;
        v51 = 2112;
        v52 = v10;
        _os_log_impl(&dword_1DEBB1000, v29, OS_LOG_TYPE_INFO, "Could not get attachment container path for store. store uuid = %{public}@, legacy attachment container = %@", buf, 0x16u);
      }

      goto LABEL_39;
    }

    v16 = [MEMORY[0x1E696AC08] defaultManager];
    v48 = 0;
    if ([v16 fileExistsAtPath:v15 isDirectory:&v48])
    {
      if (v48)
      {
        v17 = [v11 containerForAccountIdentifier:0];
        if (v17)
        {
          v18 = [MEMORY[0x1E6992F10] attachmentContainerWithBaseURL:v17];
          v19 = v18;
          if (v18)
          {
            v45 = v17;
            v20 = [v18 URLByAppendingPathComponent:v12];
            v46 = v20;
            if (v20)
            {
              v21 = v20;
              v44 = v19;
              v47 = 0;
              v22 = [a1 _createNewContainerIfNeeded:v20 error:&v47];
              v43 = v47;
              if (v22)
              {
                v23 = v21;
                v17 = v45;
                v42 = [a1 _infoForAttachmentsInLegacyAttachmentContainerForStore:v14 newAttachmentContainerForStore:v23 newCalendarDataContainer:v45 database:a6];
                v24 = [a1 _moveAttachmentsWithInfo:? error:?];
                v41 = 0;
                if (v24)
                {
                  [a1 _updateLocalRelativeURLForAttachmentsWithInfo:v42 database:a6];
                  [a1 _setFileSizeForAttachmentsWithInfo:v42 database:a6];
                  v25 = v43;
                  v19 = v44;
                }

                else
                {
                  v39 = CDBLogHandle;
                  v25 = v43;
                  v19 = v44;
                  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138413058;
                    v50 = v41;
                    v51 = 2112;
                    v52 = v14;
                    v53 = 2112;
                    v54 = v44;
                    v55 = 2112;
                    v56 = v42;
                    _os_log_impl(&dword_1DEBB1000, v39, OS_LOG_TYPE_ERROR, "Could not move attachments for store. error = %@, legacy attachment container for store = %@, new attachment container = %@, attachment info = %@", buf, 0x2Au);
                  }
                }
              }

              else
              {
                v38 = CDBLogHandle;
                v19 = v44;
                v17 = v45;
                v25 = v43;
                if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v50 = v43;
                  v51 = 2112;
                  v52 = v46;
                  _os_log_impl(&dword_1DEBB1000, v38, OS_LOG_TYPE_ERROR, "Could not create new attachment container for store if needed. error = %@, new attachment container for store = %@", buf, 0x16u);
                }
              }
            }

            else
            {
              v37 = CDBLogHandle;
              if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v50 = v12;
                v51 = 2112;
                v52 = 0;
                _os_log_impl(&dword_1DEBB1000, v37, OS_LOG_TYPE_ERROR, "Could not get new attachment container for store. store uuid = %{public}@, new attachment container = %@", buf, 0x16u);
              }
            }
          }

          else
          {
            v36 = CDBLogHandle;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v50 = v12;
              v51 = 2112;
              v52 = v17;
              _os_log_impl(&dword_1DEBB1000, v36, OS_LOG_TYPE_ERROR, "Could not get new attachment container. store uuid = %{public}@, new calendar data container = %@", buf, 0x16u);
            }
          }
        }

        else
        {
          v35 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v50 = v12;
            _os_log_impl(&dword_1DEBB1000, v35, OS_LOG_TYPE_ERROR, "Could not get new calendar data container. store uuid = %{public}@", buf, 0xCu);
          }
        }

        goto LABEL_38;
      }

      v34 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v50 = v12;
        v51 = 2112;
        v52 = v15;
        v31 = "Legacy attachment container for store is not a directory. store uuid = %{public}@, legacy attachment container for store path = %@";
        v32 = v34;
        v33 = OS_LOG_TYPE_ERROR;
        goto LABEL_22;
      }
    }

    else
    {
      v30 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v50 = v12;
        v51 = 2112;
        v52 = v15;
        v31 = "Legacy attachment container for store does not exist. store uuid = %{public}@, legacy attachment container for store path = %@";
        v32 = v30;
        v33 = OS_LOG_TYPE_INFO;
LABEL_22:
        _os_log_impl(&dword_1DEBB1000, v32, v33, v31, buf, 0x16u);
      }
    }

LABEL_38:

LABEL_39:
LABEL_40:

    goto LABEL_41;
  }

  v26 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    v27 = v26;
    *buf = 67109120;
    LODWORD(v50) = CalStoreGetUID();
    _os_log_impl(&dword_1DEBB1000, v27, OS_LOG_TYPE_ERROR, "Could not get account persistent id for store. store uid = %d", buf, 8u);
  }

LABEL_41:

  v40 = *MEMORY[0x1E69E9840];
}

+ (void)_updateLocalRelativeURLForAttachmentsWithInfo:(id)a3 database:(CalDatabase *)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80__CDBAttachmentMigrator__updateLocalRelativeURLForAttachmentsWithInfo_database___block_invoke;
  v4[3] = &__block_descriptor_48_e44_v32__0__NSString_8__CDBAttachmentInfo_16_B24l;
  v4[4] = a1;
  v4[5] = a4;
  [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

void __80__CDBAttachmentMigrator__updateLocalRelativeURLForAttachmentsWithInfo_database___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 localRelativePath];
  [*(a1 + 32) _setLocalRelativePathForAttachmentUUID:v5 localRelativePath:v6 database:*(a1 + 40)];
}

+ (void)_setLocalRelativePathForAttachmentUUID:(id)a3 localRelativePath:(id)a4 database:(CalDatabase *)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = CalDatabaseCopyAttachmentFileWithUUID(a5, v7);
  if (v9)
  {
    v10 = v9;
    CalAttachmentFileSetLocalRelativePath(v9);
    CFRelease(v10);
  }

  else
  {
    v11 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      v13 = [v8 stringByDeletingPathExtension];
      v15 = 138543618;
      v16 = v7;
      v17 = 2114;
      v18 = v13;
      _os_log_impl(&dword_1DEBB1000, v12, OS_LOG_TYPE_ERROR, "Could not get attachment. attachment uuid = %{public}@, local relative path = %{public}@", &v15, 0x16u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (void)_setFileSizeForAttachmentsWithInfo:(id)a3 database:(CalDatabase *)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__CDBAttachmentMigrator__setFileSizeForAttachmentsWithInfo_database___block_invoke;
  v4[3] = &__block_descriptor_48_e44_v32__0__NSString_8__CDBAttachmentInfo_16_B24l;
  v4[4] = a1;
  v4[5] = a4;
  [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

void __69__CDBAttachmentMigrator__setFileSizeForAttachmentsWithInfo_database___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 url];
  [*(a1 + 32) _setFileSizeForAttachmentUUID:v5 attachmentURL:v6 database:*(a1 + 40)];
}

+ (void)_setFileSizeForAttachmentUUID:(id)a3 attachmentURL:(id)a4 database:(CalDatabase *)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v8 path];
  if (v9)
  {
    v10 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v21 = v7;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_1DEBB1000, v10, OS_LOG_TYPE_INFO, "Setting file size for attachment uuid = %{public}@, attachment url = %@", buf, 0x16u);
    }

    v11 = [MEMORY[0x1E696AC08] defaultManager];
    v19 = 0;
    v12 = [MEMORY[0x1E6992F10] getFileSizeForPath:v9 fileManager:v11 error:&v19];
    v13 = v19;
    if (v12)
    {
      v14 = CalDatabaseCopyAttachmentFileWithUUID(a5, v7);
      if (v14)
      {
        v15 = v14;
        CalAttachmentFileSetFileSize(v14);
        CFRelease(v15);
LABEL_12:

        goto LABEL_13;
      }

      v16 = CDBLogHandle;
      if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      *buf = 138543874;
      v21 = v7;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v12;
      v17 = "Could not get attachment. attachment uuid = %{public}@, attachment path = %@, file size = %@";
    }

    else
    {
      v16 = CDBLogHandle;
      if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      *buf = 138412802;
      v21 = v13;
      v22 = 2114;
      v23 = v7;
      v24 = 2112;
      v25 = v9;
      v17 = "Could not get file size. error = %@, attachment uuid = %{public}@, attachment path = %@";
    }

    _os_log_impl(&dword_1DEBB1000, v16, OS_LOG_TYPE_ERROR, v17, buf, 0x20u);
    goto LABEL_12;
  }

LABEL_13:

  v18 = *MEMORY[0x1E69E9840];
}

+ (BOOL)_moveAttachmentsWithInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__CDBAttachmentMigrator__moveAttachmentsWithInfo_error___block_invoke;
  v9[3] = &unk_1E8689600;
  v9[5] = &v16;
  v9[6] = a1;
  v9[4] = &v10;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];
  if (a4)
  {
    *a4 = v11[5];
  }

  v7 = *(v17 + 24);
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
  return v7;
}

void __56__CDBAttachmentMigrator__moveAttachmentsWithInfo_error___block_invoke(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[6];
  v7 = *(a1[4] + 8);
  obj = *(v7 + 40);
  v8 = [v6 _moveAttachmentWithInfo:a3 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  if ((v8 & 1) == 0)
  {
    *(*(a1[5] + 8) + 24) = 0;
    *a4 = 1;
  }
}

+ (BOOL)_moveAttachmentWithInfo:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 legacyURL];
  v7 = [v5 url];

  v8 = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(a4) = [v8 moveItemAtURL:v6 toURL:v7 error:a4];

  return a4;
}

+ (id)_infoForAttachmentsInLegacyAttachmentContainerForStore:(id)a3 newAttachmentContainerForStore:(id)a4 newCalendarDataContainer:(id)a5 database:(CalDatabase *)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x1E696AC08] defaultManager];
  v29 = v10;
  v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v36 = 0;
  v28 = v13;
  v14 = [v13 contentsOfDirectoryAtURL:v10 includingPropertiesForKeys:0 options:4 error:&v36];
  v27 = v36;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v33;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v32 + 1) + 8 * i);
        v31 = 0;
        v21 = [a1 _attachmentInfoForLegacyAttachmentURL:v20 newAttachmentContainerForStore:v11 newCalendarDataContainer:v12 database:a6 attachmentUUID:&v31];
        v22 = v31;
        if (v22)
        {
          v23 = v21 == 0;
        }

        else
        {
          v23 = 1;
        }

        if (!v23)
        {
          [v30 setObject:v21 forKeyedSubscript:v22];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v17);
  }

  v24 = [v30 copy];
  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (id)_attachmentInfoForLegacyAttachmentURL:(id)a3 newAttachmentContainerForStore:(id)a4 newCalendarDataContainer:(id)a5 database:(CalDatabase *)a6 attachmentUUID:(id *)a7
{
  v35 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [v11 path];
  v15 = v14;
  if (!v14)
  {
    v24 = 0;
    goto LABEL_21;
  }

  v16 = [v14 lastPathComponent];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 stringByDeletingPathExtension];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
      *a7 = v19;
      v21 = CalDatabaseCopyAttachmentFileWithUUID(a6, v19);
      if (v21)
      {
        CFRelease(v21);
        v22 = [v12 URLByAppendingPathComponent:v17];
        if (v22)
        {
          v23 = [MEMORY[0x1E6992F10] localRelativePathForLocalAbsoluteURL:v22 localBaseURL:v13];
          if (v23)
          {
            v24 = [[CDBAttachmentInfo alloc] initWithLegacyURL:v11 url:v22 localRelativePath:v23];
          }

          else
          {
            v26 = CDBLogHandle;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
            {
              v29 = 138412802;
              v30 = v19;
              v31 = 2112;
              v32 = v22;
              v33 = 2112;
              v34 = v13;
              _os_log_impl(&dword_1DEBB1000, v26, OS_LOG_TYPE_ERROR, "Could not get new attachment local relative path. attachment uuid = %@ new attachment url = %@, new calendar data container = %@", &v29, 0x20u);
            }

            v24 = 0;
          }
        }

        else
        {
          v24 = 0;
        }

        goto LABEL_19;
      }

      v25 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
      {
        v29 = 138412290;
        v30 = v19;
        _os_log_impl(&dword_1DEBB1000, v25, OS_LOG_TYPE_INFO, "Could not get attachment for file name = %@", &v29, 0xCu);
      }
    }

    v24 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v24 = 0;
LABEL_20:

LABEL_21:
  v27 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (BOOL)_createNewContainerIfNeeded:(id)a3 error:(id *)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v5 path];
  if (v7)
  {
    LOBYTE(v12) = 0;
    if ([v6 fileExistsAtPath:v7 isDirectory:&v12] && (v12 & 1) != 0)
    {
      v8 = 1;
    }

    else
    {
      v8 = [v6 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:a4];
    }
  }

  else
  {
    v9 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_1DEBB1000, v9, OS_LOG_TYPE_ERROR, "New container path is nil. new attachment container = %@", &v12, 0xCu);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (void)migrateDataClassProtectionForAttachmentsInLegacyCalendarDataContainer:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v4, OS_LOG_TYPE_INFO, "Fixing up dataclass protection for calendar attachments", buf, 2u);
  }

  v5 = [MEMORY[0x1E6992F10] legacyAttachmentContainerWithBaseURL:v3];
  v6 = v5;
  if (v5)
  {
    v18 = v5;
    v19 = v3;
    v7 = [v5 path];
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [v8 enumeratorAtPath:v7];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [v7 stringByAppendingPathComponent:*(*(&v21 + 1) + 8 * i)];
          v20 = 0;
          if ([v8 fileExistsAtPath:v14 isDirectory:&v20] && (v20 & 1) == 0)
          {
            v15 = CDBLogHandle;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v26 = v14;
              _os_log_impl(&dword_1DEBB1000, v15, OS_LOG_TYPE_INFO, "Setting dataclass protection for attachment: %@", buf, 0xCu);
            }

            CalAttachmentFileSetDataProtection(v14);
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v11);
    }

    v6 = v18;
    v3 = v19;
  }

  else
  {
    v16 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v16, OS_LOG_TYPE_ERROR, "Could not get legacy attachment container", buf, 2u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

@end