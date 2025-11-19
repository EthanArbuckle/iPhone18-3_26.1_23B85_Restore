@interface SFSafariSettingsBrowsingDataExportController
+ (id)_sandboxExtensionForURL:(id)a3;
+ (void)exportBookmarksToFileWithURL:(id)a3 completionHandler:(id)a4;
+ (void)exportExtensionsToDirectoryWithURL:(id)a3 profileIdentifiersToExportFrom:(id)a4 tabGroupManager:(id)a5 completionHandler:(id)a6;
+ (void)exportHistoryToDirectoryWithURL:(id)a3 profileIdentifiersToExportFrom:(id)a4 tabGroupManager:(id)a5 completionHandler:(id)a6;
@end

@implementation SFSafariSettingsBrowsingDataExportController

+ (void)exportHistoryToDirectoryWithURL:(id)a3 profileIdentifiersToExportFrom:(id)a4 tabGroupManager:(id)a5 completionHandler:(id)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v31 = a5;
  block = a6;
  v11 = dispatch_group_create();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v10;
  v12 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v29 = *v35;
    do
    {
      v14 = 0;
      do
      {
        if (*v35 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v15 = [v31 profileWithIdentifier:*(*(&v34 + 1) + 8 * v14)];
        v16 = [v15 title];
        v17 = [v16 safari_filenameByFixingIllegalCharacters];

        v18 = MEMORY[0x1E69C8ED0];
        if ([v15 isDefault])
        {
          v19 = 0;
        }

        else
        {
          v19 = v17;
        }

        v20 = [v18 fileURLFromExportFolderURL:v9 profileTitle:v19 forBrowsingDataExportType:2];
        v21 = [v20 safari_URLWithUniqueFilename];

        v22 = [MEMORY[0x1E696AC08] defaultManager];
        v23 = [v21 path];
        [v22 createFileAtPath:v23 contents:0 attributes:0];

        v24 = objc_alloc_init(MEMORY[0x1E69E2100]);
        v25 = [a1 _sandboxExtensionForURL:v9];
        if (v25)
        {
          dispatch_group_enter(v11);
          v26 = [v15 identifier];
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __145__SFSafariSettingsBrowsingDataExportController_exportHistoryToDirectoryWithURL_profileIdentifiersToExportFrom_tabGroupManager_completionHandler___block_invoke;
          v32[3] = &unk_1E721E178;
          v33 = v11;
          [v24 exportSafariHistoryToURL:v21 sandboxExtension:v25 profileIdentifier:v26 completionHandler:v32];
        }

        ++v14;
      }

      while (v13 != v14);
      v13 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v13);
  }

  dispatch_group_notify(v11, MEMORY[0x1E69E96A0], block);
}

void __145__SFSafariSettingsBrowsingDataExportController_exportHistoryToDirectoryWithURL_profileIdentifiersToExportFrom_tabGroupManager_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXExport();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __145__SFSafariSettingsBrowsingDataExportController_exportHistoryToDirectoryWithURL_profileIdentifiersToExportFrom_tabGroupManager_completionHandler___block_invoke_cold_1(v4, v3);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

+ (void)exportBookmarksToFileWithURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E69E2100]);
  v9 = [a1 _sandboxExtensionForURL:v6];
  if (v9)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __95__SFSafariSettingsBrowsingDataExportController_exportBookmarksToFileWithURL_completionHandler___block_invoke;
    v10[3] = &unk_1E721E1A0;
    v11 = v7;
    [v8 exportBookmarksToURL:v6 sandboxExtension:v9 completionHandler:v10];
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

void __95__SFSafariSettingsBrowsingDataExportController_exportBookmarksToFileWithURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXExport();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __95__SFSafariSettingsBrowsingDataExportController_exportBookmarksToFileWithURL_completionHandler___block_invoke_cold_1(v4, v3);
    }
  }

  dispatch_async(MEMORY[0x1E69E96A0], *(a1 + 32));
}

+ (void)exportExtensionsToDirectoryWithURL:(id)a3 profileIdentifiersToExportFrom:(id)a4 tabGroupManager:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __148__SFSafariSettingsBrowsingDataExportController_exportExtensionsToDirectoryWithURL_profileIdentifiersToExportFrom_tabGroupManager_completionHandler___block_invoke;
  v17[3] = &unk_1E721E1C8;
  v18 = v11;
  v19 = v10;
  v20 = v9;
  v21 = v12;
  v13 = v12;
  v14 = v9;
  v15 = v10;
  v16 = v11;
  dispatch_async(MEMORY[0x1E69E96A0], v17);
}

void __148__SFSafariSettingsBrowsingDataExportController_exportExtensionsToDirectoryWithURL_profileIdentifiersToExportFrom_tabGroupManager_completionHandler___block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v35 = [[SFExtensionsProfilesDataSource alloc] initWithTabGroupManager:*(a1 + 32)];
  group = dispatch_group_create();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v36 = a1;
  obj = *(a1 + 40);
  v37 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v37)
  {
    v34 = *v48;
    v31 = v40;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v48 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v3 = [*(v36 + 32) profileWithIdentifier:{*(*(&v47 + 1) + 8 * i), v31}];
        v4 = [v3 title];
        v5 = [v4 safari_filenameByFixingIllegalCharacters];

        v6 = MEMORY[0x1E69C8ED0];
        v7 = *(v36 + 48);
        v38 = v5;
        if ([v3 isDefault])
        {
          v8 = 0;
        }

        else
        {
          v8 = v5;
        }

        v9 = [v6 fileURLFromExportFolderURL:v7 profileTitle:v8 forBrowsingDataExportType:4];
        v10 = [v9 safari_URLWithUniqueFilename];

        v11 = [MEMORY[0x1E696AC08] defaultManager];
        v12 = [v10 path];
        [v11 createFileAtPath:v12 contents:0 attributes:0];

        v13 = [(SFExtensionsProfilesDataSource *)v35 profileServerIDToContentBlockerManagers];
        v14 = [v3 serverID];
        v15 = [v13 objectForKeyedSubscript:v14];
        v54[0] = v15;
        v16 = [(SFExtensionsProfilesDataSource *)v35 profileServerIDToWebExtensionsControllers];
        v17 = [v3 serverID];
        v18 = [v16 objectForKeyedSubscript:v17];
        v54[1] = v18;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];

        v20 = [MEMORY[0x1E695DF70] array];
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v21 = v19;
        v22 = [v21 countByEnumeratingWithState:&v43 objects:v53 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v44;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v44 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = [*(*(&v43 + 1) + 8 * j) extensionsDataForExport];
              [v20 addObjectsFromArray:v26];
            }

            v23 = [v21 countByEnumeratingWithState:&v43 objects:v53 count:16];
          }

          while (v23);
        }

        v27 = objc_alloc(MEMORY[0x1E69C97A0]);
        v42 = 0;
        v28 = [v27 initWithURL:v10 error:&v42];
        v29 = v42;
        if (v29)
        {
          v30 = WBS_LOG_CHANNEL_PREFIXExport();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            __148__SFSafariSettingsBrowsingDataExportController_exportExtensionsToDirectoryWithURL_profileIdentifiersToExportFrom_tabGroupManager_completionHandler___block_invoke_cold_1(v51, v30, v29, &v52);
          }
        }

        else
        {
          dispatch_group_enter(group);
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v40[0] = __148__SFSafariSettingsBrowsingDataExportController_exportExtensionsToDirectoryWithURL_profileIdentifiersToExportFrom_tabGroupManager_completionHandler___block_invoke_7;
          v40[1] = &unk_1E721E178;
          v41 = group;
          [v28 exportExtensionDictionaries:v20 completionHandler:v39];
        }
      }

      v37 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v37);
  }

  dispatch_group_notify(group, MEMORY[0x1E69E96A0], *(v36 + 56));
}

void __148__SFSafariSettingsBrowsingDataExportController_exportExtensionsToDirectoryWithURL_profileIdentifiersToExportFrom_tabGroupManager_completionHandler___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXExport();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __148__SFSafariSettingsBrowsingDataExportController_exportExtensionsToDirectoryWithURL_profileIdentifiersToExportFrom_tabGroupManager_completionHandler___block_invoke_7_cold_1(v4, v3);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

+ (id)_sandboxExtensionForURL:(id)a3
{
  v3 = a3;
  [v3 fileSystemRepresentation];
  v4 = sandbox_extension_issue_file();
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v4 length:strlen(v4) encoding:4 freeWhenDone:1];
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXExport();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(SFSafariSettingsBrowsingDataExportController *)v3 _sandboxExtensionForURL:v6];
    }

    v5 = 0;
  }

  return v5;
}

void __145__SFSafariSettingsBrowsingDataExportController_exportHistoryToDirectoryWithURL_profileIdentifiersToExportFrom_tabGroupManager_completionHandler___block_invoke_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v9 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __95__SFSafariSettingsBrowsingDataExportController_exportBookmarksToFileWithURL_completionHandler___block_invoke_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v9 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __148__SFSafariSettingsBrowsingDataExportController_exportExtensionsToDirectoryWithURL_profileIdentifiersToExportFrom_tabGroupManager_completionHandler___block_invoke_cold_1(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 safari_privacyPreservingDescription];
  *a1 = 138543362;
  *a4 = v8;
  _os_log_error_impl(&dword_18B7AC000, v7, OS_LOG_TYPE_ERROR, "Error exporting extensions: %{public}@", a1, 0xCu);
}

void __148__SFSafariSettingsBrowsingDataExportController_exportExtensionsToDirectoryWithURL_profileIdentifiersToExportFrom_tabGroupManager_completionHandler___block_invoke_7_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v9 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

+ (void)_sandboxExtensionForURL:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v2 = a2;
  __error();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

@end