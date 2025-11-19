@interface UIDocumentPickerViewServiceViewController
@end

@implementation UIDocumentPickerViewServiceViewController

void __84___UIDocumentPickerViewServiceViewController__createBookmarkAndDismissWithCloudURL___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = a3;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84___UIDocumentPickerViewServiceViewController__createBookmarkAndDismissWithCloudURL___block_invoke_2;
    block[3] = &unk_278DD64E0;
    v11 = v4;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v12 = v5;
    v13 = v6;
    v7 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v9 = [*(a1 + 40) hostingViewController];
    [v9 _didSelectURLBookmark:a2];
  }
}

void __84___UIDocumentPickerViewServiceViewController__createBookmarkAndDismissWithCloudURL___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v4 = [v3 localizedStringForKey:@"The file could not be made available to the application. (%@)" value:@"The file could not be made available to the application. (%@)" table:@"Localizable"];
  v5 = [*(a1 + 32) localizedDescription];
  v6 = [v2 stringWithFormat:v4, v5];

  v7 = MEMORY[0x277D75110];
  v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v9 = [v8 localizedStringForKey:@"Failed to make file available" value:@"Failed to make file available" table:@"Localizable"];
  v10 = [v7 alertControllerWithTitle:v9 message:v6 preferredStyle:1];

  v11 = cdui_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    __84___UIDocumentPickerViewServiceViewController__createBookmarkAndDismissWithCloudURL___block_invoke_2_cold_1(a1);
  }

  v12 = MEMORY[0x277D750F8];
  v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v14 = [v13 localizedStringForKey:@"Dismiss" value:@"Dismiss" table:@"Localizable"];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __84___UIDocumentPickerViewServiceViewController__createBookmarkAndDismissWithCloudURL___block_invoke_92;
  v16[3] = &unk_278DD6A08;
  v16[4] = *(a1 + 48);
  v15 = [v12 actionWithTitle:v14 style:0 handler:v16];
  [v10 addAction:v15];

  [*(a1 + 48) presentViewController:v10 animated:1 completion:&__block_literal_global_11];
}

void __84___UIDocumentPickerViewServiceViewController__createBookmarkAndDismissWithCloudURL___block_invoke_92(uint64_t a1)
{
  v1 = [*(a1 + 32) hostingViewController];
  [v1 _dismissViewController];
}

void __91___UIDocumentPickerViewServiceViewController__dismissWithFileProviderURL_bundleIdentifier___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v9)
  {
    v13 = cdui_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      __91___UIDocumentPickerViewServiceViewController__dismissWithFileProviderURL_bundleIdentifier___block_invoke_cold_1(a1, v9, v13);
    }

    v14 = [*(a1 + 40) hostingViewController];
    [v14 _dismissViewController];
  }

  else
  {
    v15 = (a1 + 40);
    if ([*(a1 + 40) pickerMode] == 3)
    {
      v16 = cdui_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [*(a1 + 40) uploadURL];
        v18 = *(a1 + 32);
        v19 = *(a1 + 48);
        *buf = 138412802;
        v31 = v17;
        v32 = 2112;
        v33 = v18;
        v34 = 2112;
        v35 = v19;
        _os_log_impl(&dword_243823000, v16, OS_LOG_TYPE_INFO, "[INFO] File %@ has been written to %@ by provider %@. Removing original file since we are in Move mode.", buf, 0x20u);
      }

      v20 = objc_alloc_init(MEMORY[0x277CCA9E8]);
      v21 = [*v15 uploadURL];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __91___UIDocumentPickerViewServiceViewController__dismissWithFileProviderURL_bundleIdentifier___block_invoke_99;
      v28[3] = &unk_278DD6BB0;
      v28[4] = *v15;
      v29 = 0;
      [v20 coordinateWritingItemAtURL:v21 options:1 error:&v29 byAccessor:v28];
      v22 = v29;

      if (v22)
      {
        v23 = cdui_default_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          __91___UIDocumentPickerViewServiceViewController__dismissWithFileProviderURL_bundleIdentifier___block_invoke_cold_2((a1 + 40));
        }
      }
    }

    [MEMORY[0x277D75ED8] assembleURL:*(a1 + 32) sandbox:v10 physicalURL:v11 physicalSandbox:v12];
    [*(a1 + 32) ui_setIsFileProviderURL:1];
    v24 = cdui_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = *(a1 + 32);
      v26 = *(a1 + 56);
      *buf = 138412546;
      v31 = v25;
      v32 = 2112;
      v33 = v26;
      _os_log_impl(&dword_243823000, v24, OS_LOG_TYPE_INFO, "[INFO] Returning selected URL %@ to host app %@", buf, 0x16u);
    }

    v14 = [*(a1 + 40) hostingViewController];
    v27 = [MEMORY[0x277D75ED8] wrapperWithURL:*(a1 + 32)];
    [v14 _didSelectURLWrapper:v27];
  }
}

void __91___UIDocumentPickerViewServiceViewController__dismissWithFileProviderURL_bundleIdentifier___block_invoke_99(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAA00];
  v4 = a2;
  v5 = [v3 defaultManager];
  v11 = 0;
  v6 = [v5 removeItemAtURL:v4 error:&v11];

  v7 = v11;
  v8 = cdui_default_log();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_243823000, v9, OS_LOG_TYPE_INFO, "[INFO] Removed successfully", v10, 2u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    __91___UIDocumentPickerViewServiceViewController__dismissWithFileProviderURL_bundleIdentifier___block_invoke_99_cold_1(a1);
  }
}

uint64_t __79___UIDocumentPickerViewServiceViewController__waitForDownloadOfURL_completion___block_invoke(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) finishObserving];
  v2 = MEMORY[0x277CCAC48];
  v3 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 _removeSubscriber:v3];
}

void __79___UIDocumentPickerViewServiceViewController__waitForDownloadOfURL_completion___block_invoke_2(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __79___UIDocumentPickerViewServiceViewController__waitForDownloadOfURL_completion___block_invoke_3;
  v4[3] = &unk_278DD6C78;
  v6 = *(a1 + 48);
  v5 = *(a1 + 40);
  v7 = *(a1 + 56);
  [v2 coordinateReadingItemAtURL:v3 options:0 error:0 byAccessor:v4];
}

void __79___UIDocumentPickerViewServiceViewController__waitForDownloadOfURL_completion___block_invoke_3(id *a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79___UIDocumentPickerViewServiceViewController__waitForDownloadOfURL_completion___block_invoke_4;
  block[3] = &unk_278DD6C50;
  v4 = a1[5];
  v3 = a1[4];
  v5 = a1[6];
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __79___UIDocumentPickerViewServiceViewController__waitForDownloadOfURL_completion___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) presentingViewController];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __79___UIDocumentPickerViewServiceViewController__waitForDownloadOfURL_completion___block_invoke_5;
  v3[3] = &unk_278DD6C28;
  v4 = *(a1 + 48);
  [v2 dismissViewControllerAnimated:1 completion:v3];
}

id __79___UIDocumentPickerViewServiceViewController__waitForDownloadOfURL_completion___block_invoke_6(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCABC8] keyPathWithRootObject:a2 path:"fractionCompleted"];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79___UIDocumentPickerViewServiceViewController__waitForDownloadOfURL_completion___block_invoke_7;
  v11[3] = &unk_278DD6CC8;
  v14 = *(a1 + 72);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v4 = [v3 addObserverBlock:v11];
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  [*(a1 + 48) addObject:*(*(*(a1 + 64) + 8) + 40)];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79___UIDocumentPickerViewServiceViewController__waitForDownloadOfURL_completion___block_invoke_9;
  v9[3] = &unk_278DD6C28;
  v10 = *(a1 + 56);
  v7 = MEMORY[0x245D41DF0](v9);

  return v7;
}

void __79___UIDocumentPickerViewServiceViewController__waitForDownloadOfURL_completion___block_invoke_7(uint64_t a1, void *a2)
{
  [a2 floatValue];
  v4 = [MEMORY[0x277CCA8E8] stringFromByteCount:(v3 * *(a1 + 48)) countStyle:0];
  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v7 = [v6 localizedStringForKey:@"%@ of %@ downloaded" value:@"%@ of %@ downloaded" table:@"Localizable"];
  v8 = [v5 localizedStringWithFormat:v7, v4, *(a1 + 32)];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79___UIDocumentPickerViewServiceViewController__waitForDownloadOfURL_completion___block_invoke_8;
  block[3] = &unk_278DD6200;
  v11 = *(a1 + 40);
  v12 = v8;
  v9 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __79___UIDocumentPickerViewServiceViewController__waitForDownloadOfURL_completion___block_invoke_10(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

uint64_t __58___UIDocumentPickerViewServiceViewController__showPicker___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[4];
  v7 = a1[5];
  if (a4)
  {
    return [v6 _presentError:a4 forThirdPartyPickerWithDescription:v7];
  }

  else
  {
    return [v6 _didInstantiateThirdPartyPickerWithDescription:v7 placeholder:*(*(a1[6] + 8) + 40)];
  }
}

void __105___UIDocumentPickerViewServiceViewController__didInstantiateThirdPartyPickerWithDescription_placeholder___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = cdui_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __105___UIDocumentPickerViewServiceViewController__didInstantiateThirdPartyPickerWithDescription_placeholder___block_invoke_cold_1();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __105___UIDocumentPickerViewServiceViewController__didInstantiateThirdPartyPickerWithDescription_placeholder___block_invoke_145;
  block[3] = &unk_278DD61B0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __105___UIDocumentPickerViewServiceViewController__didInstantiateThirdPartyPickerWithDescription_placeholder___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    [v4 _presentError:a2 forThirdPartyPickerWithDescription:v5];
  }

  else
  {
    v6 = [a3 objectForKey:*(a1 + 48)];
    if (([*(a1 + 32) pickerMode] == 3 || objc_msgSend(*(a1 + 32), "pickerMode") == 1) && (objc_msgSend(v6, "objectForKey:", @"documentStorageURL"), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
    {
      v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v9 = [v13 localizedStringForKey:@"File provider component not found" value:@"File provider component not found" table:@"Localizable"];

      v14 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CC6330];
      v21 = *MEMORY[0x277CCA450];
      v22[0] = v9;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v17 = [v14 errorWithDomain:v15 code:0 userInfo:v16];

      [*(a1 + 32) _presentError:v17 forThirdPartyPickerWithDescription:*(a1 + 40)];
    }

    else
    {
      v8 = [v6 dictionaryWithValuesForKeys:&unk_28569A4D0];
      v9 = [v8 mutableCopy];

      v10 = [*(a1 + 40) fileProviderDocumentGroup];
      [v9 setValue:v10 forKey:@"documentGroup"];

      v11 = [*(a1 + 40) localizedName];
      [v9 setValue:v11 forKey:@"localizedName"];

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __105___UIDocumentPickerViewServiceViewController__didInstantiateThirdPartyPickerWithDescription_placeholder___block_invoke_3;
      v18[3] = &unk_278DD6D90;
      v18[4] = *(a1 + 32);
      v12 = *(a1 + 56);
      v19 = *(a1 + 64);
      v20 = *(a1 + 40);
      [v12 _prepareWithExtensionInfo:v9 completionHandler:v18];
    }
  }
}

void __105___UIDocumentPickerViewServiceViewController__didInstantiateThirdPartyPickerWithDescription_placeholder___block_invoke_3(id *a1, unsigned int a2)
{
  if (a2 >> 8 >= 0x803)
  {
    v3 = [a1[4] containedNavController];
    [v3 setNavigationBarHidden:1];
  }

  [a1[5] endDelayingDisplayOfRemoteController];
  v4 = [a1[6] identifier];
  [a1[4] setCurrentPickerIdentifier:v4];
}

void __95___UIDocumentPickerViewServiceViewController__presentError_forThirdPartyPickerWithDescription___block_invoke(id *a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v4 = [v3 localizedStringForKey:@"Failed to launch “%@”" value:@"Failed to launch “%@”" table:@"Localizable"];
  v5 = [a1[4] localizedName];
  v6 = [v2 stringWithFormat:v4, v5];

  v7 = MEMORY[0x277CCACA8];
  v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v9 = [v8 localizedStringForKey:@"The document picker “%@” failed to launch (%i)." value:@"The document picker “%@” failed to launch (%i)." table:@"Localizable"];
  v10 = [a1[4] localizedName];
  v11 = [v7 stringWithFormat:v9, v10, objc_msgSend(a1[5], "code")];

  v12 = [MEMORY[0x277D75110] alertControllerWithTitle:v6 message:v11 preferredStyle:1];
  v13 = MEMORY[0x277D750F8];
  v14 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v15 = [v14 localizedStringForKey:@"Dismiss" value:@"Dismiss" table:@"Localizable"];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __95___UIDocumentPickerViewServiceViewController__presentError_forThirdPartyPickerWithDescription___block_invoke_2;
  v17[3] = &unk_278DD6A08;
  v17[4] = a1[6];
  v16 = [v13 actionWithTitle:v15 style:0 handler:v17];
  [v12 addAction:v16];

  [a1[6] presentViewController:v12 animated:0 completion:&__block_literal_global_173];
}

void __95___UIDocumentPickerViewServiceViewController__presentError_forThirdPartyPickerWithDescription___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) hostingViewController];
  [v1 _dismissViewController];
}

void __102___UIDocumentPickerViewServiceViewController_overviewController_selectedDocumentPickerWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [_UIDocumentPickerModalManagementViewController alloc];
  v3 = [*(a1 + 32) pickableTypes];
  v4 = -[_UIDocumentPickerModalManagementViewController initWithFileTypes:mode:](v2, "initWithFileTypes:mode:", v3, [*(a1 + 32) pickerMode]);

  [*(a1 + 32) presentViewController:v4 animated:1 completion:0];
}

void __102___UIDocumentPickerViewServiceViewController_overviewController_selectedDocumentPickerWithIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) currentPickerIdentifier];
  v3 = [v2 isEqual:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    [v4 _showPicker:v5];
  }
}

void __88___UIDocumentPickerViewServiceViewController_documentListController_didSelectItemAtURL___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __88___UIDocumentPickerViewServiceViewController_documentListController_didSelectItemAtURL___block_invoke_2;
  v3[3] = &unk_278DD6DE0;
  v3[4] = v2;
  v4 = v1;
  [v2 _waitForDownloadOfURL:v4 completion:v3];
}

uint64_t __88___UIDocumentPickerViewServiceViewController_documentListController_didSelectItemAtURL___block_invoke_2(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [*(result + 32) dismissWithURL:*(result + 40) forBundleIdentifier:0];
  }

  return result;
}

void __106___UIDocumentPickerViewServiceViewController_documentListController_didSelectContainerWithViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentedURL];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __106___UIDocumentPickerViewServiceViewController_documentListController_didSelectContainerWithViewController___block_invoke_2;
  v7[3] = &unk_278DD6E08;
  v7[4] = *(a1 + 40);
  v3 = [_UIDocumentListController _listControllerHierarchyForURL:v2 withConstructorBlock:v7];

  v4 = *(a1 + 40);
  v5 = [v3 firstObject];
  [v5 setDelegate:v4];

  v6 = [*(a1 + 40) containedNavController];
  [v6 setViewControllers:v3];
}

_UIDocumentListController *__106___UIDocumentPickerViewServiceViewController_documentListController_didSelectContainerWithViewController___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [_UIDocumentPickerURLContainerModel alloc];
  v5 = [*(a1 + 32) pickableTypes];
  v6 = -[_UIDocumentPickerURLContainerModel initWithURL:pickableTypes:mode:](v4, "initWithURL:pickableTypes:mode:", v3, v5, [*(a1 + 32) pickerMode]);

  v7 = [[_UIDocumentListController alloc] initWithModel:v6];

  return v7;
}

void __84___UIDocumentPickerViewServiceViewController__showExistsAlertForFile_withSourceURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a2;
  v5 = [v3 bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v6 = [v5 localizedStringForKey:@"New filename" value:@"New filename" table:@"Localizable"];
  [v4 setPlaceholder:v6];

  v8 = [*(a1 + 32) _mangledFilenameForURL:*(a1 + 40)];
  v7 = [v8 stringByDeletingPathExtension];
  [v4 setText:v7];
}

void __84___UIDocumentPickerViewServiceViewController__showExistsAlertForFile_withSourceURL___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained textFields];
  v8 = [v3 firstObject];

  v4 = [v8 text];
  v5 = [v4 stringByAppendingPathExtension:*(a1 + 32)];

  v6 = [*(a1 + 40) URLByDeletingLastPathComponent];
  v7 = [v6 URLByAppendingPathComponent:v5];

  [*(a1 + 48) _tryExportingFile:*(a1 + 56) toLocation:v7];
}

void __75___UIDocumentPickerViewServiceViewController__tryExportingFile_toLocation___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 8);
  obj = *(v4 + 40);
  [v3 moveItemAtURL:a2 toURL:a3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
}

void __75___UIDocumentPickerViewServiceViewController__tryExportingFile_toLocation___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v12 = 0;
  v6 = *MEMORY[0x277CBE900];
  v7 = a2;
  [v7 getResourceValue:&v12 forKey:v6 error:0];
  v8 = v12;
  v9 = *(a1 + 32);
  v10 = *(*(a1 + 40) + 8);
  obj = *(v10 + 40);
  [v9 copyItemAtURL:v7 toURL:v5 error:&obj];

  objc_storeStrong((v10 + 40), obj);
  if (v8)
  {
    [v5 setResourceValue:v8 forKey:v6 error:0];
  }
}

uint64_t __79___UIDocumentPickerViewServiceViewController__warnSharingForTarget_completion___block_invoke(uint64_t a1)
{
  v2 = cdui_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_243823000, v2, OS_LOG_TYPE_INFO, "[INFO] owner decided to break share by moving it between containers", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __79___UIDocumentPickerViewServiceViewController__warnSharingForTarget_completion___block_invoke_239(uint64_t a1)
{
  v2 = cdui_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_243823000, v2, OS_LOG_TYPE_INFO, "[INFO] owner decided to cancel move", v4, 2u);
  }

  return [*(a1 + 32) dismissWithURL:0 forBundleIdentifier:0];
}

void __84___UIDocumentPickerViewServiceViewController__createBookmarkAndDismissWithCloudURL___block_invoke_2_cold_1(uint64_t a1)
{
  v6 = [*(a1 + 48) _hostApplicationBundleIdentifier];
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x20u);
}

void __91___UIDocumentPickerViewServiceViewController__dismissWithFileProviderURL_bundleIdentifier___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_243823000, a2, a3, "[ERROR] Could not extend URL %@. Error: %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

void __91___UIDocumentPickerViewServiceViewController__dismissWithFileProviderURL_bundleIdentifier___block_invoke_cold_2(id *a1)
{
  v1 = [*a1 uploadURL];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __91___UIDocumentPickerViewServiceViewController__dismissWithFileProviderURL_bundleIdentifier___block_invoke_99_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) uploadURL];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __105___UIDocumentPickerViewServiceViewController__didInstantiateThirdPartyPickerWithDescription_placeholder___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end