@interface CPSAppInstaller
- (CPSAppInstaller)initWithAppInfoFetcher:(id)a3;
- (void)installDownloadedAppWithBundleID:(id)a3 localFilePath:(id)a4 completionHandler:(id)a5;
@end

@implementation CPSAppInstaller

- (CPSAppInstaller)initWithAppInfoFetcher:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CPSAppInstaller;
  v6 = [(CPSAppInstaller *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appInfoFetcher, a3);
    v8 = v7;
  }

  return v7;
}

- (void)installDownloadedAppWithBundleID:(id)a3 localFilePath:(id)a4 completionHandler:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v8];
  v12 = [v11 appState];
  v13 = [v12 isInstalled];

  if (v13)
  {
    v10[2](v10, 0);
  }

  else if (-[CPSAppBundleInstaller inactive](self->_appBundleInstaller, "inactive") || (-[CPSAppBundleInstaller bundleIdentifier](self->_appBundleInstaller, "bundleIdentifier"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 isEqualToString:v8], v14, !v15))
  {
    if (!self->_archiveService)
    {
      v37 = 0;
      v38 = &v37;
      v39 = 0x2050000000;
      v17 = getDSArchiveServiceClass_softClass;
      v40 = getDSArchiveServiceClass_softClass;
      if (!getDSArchiveServiceClass_softClass)
      {
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v42 = __getDSArchiveServiceClass_block_invoke;
        v43 = &unk_278DCDC00;
        v44 = &v37;
        __getDSArchiveServiceClass_block_invoke(&buf);
        v17 = v38[3];
      }

      v18 = v17;
      _Block_object_dispose(&v37, 8);
      v19 = objc_alloc_init(v17);
      archiveService = self->_archiveService;
      self->_archiveService = v19;
    }

    v21 = MEMORY[0x277CBEBC0];
    v22 = NSTemporaryDirectory();
    v23 = [MEMORY[0x277CCAD78] UUID];
    v24 = [v23 UUIDString];
    v25 = [v22 stringByAppendingPathComponent:v24];
    v26 = [v21 fileURLWithPath:v25];

    v27 = self->_archiveService;
    v28 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __84__CPSAppInstaller_installDownloadedAppWithBundleID_localFilePath_completionHandler___block_invoke;
    v32[3] = &unk_278DCDBD8;
    v36 = v10;
    v33 = v26;
    v34 = self;
    v35 = v8;
    v29 = v26;
    v30 = [(DSArchiveService *)v27 unarchiveItemAtURL:v28 passphrases:0 destinationFolderURL:v29 completionHandler:v32];
  }

  else
  {
    v16 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138477827;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_2436ED000, v16, OS_LOG_TYPE_INFO, "An installation for bundle ID %{private}@ is already in flight", &buf, 0xCu);
    }

    v10[2](v10, 0);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __84__CPSAppInstaller_installDownloadedAppWithBundleID_localFilePath_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __84__CPSAppInstaller_installDownloadedAppWithBundleID_localFilePath_completionHandler___block_invoke_cold_1(v8, v7);
    }

    v9 = *(a1 + 56);
    v10 = [MEMORY[0x277CCA9B8] cps_errorWithCode:5 underlyingError:v7];
    (*(v9 + 16))(v9, v10);
  }

  else
  {
    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = *(a1 + 32);
    v20 = 0;
    [v11 moveItemAtURL:v5 toURL:v12 error:&v20];
    v7 = v20;

    v13 = [[CPSAppBundleInstaller alloc] initWithBundleIdentifier:*(a1 + 48) extractedBundleURL:*(a1 + 32)];
    v14 = *(a1 + 40);
    v15 = *(v14 + 8);
    *(v14 + 8) = v13;

    v16 = *(a1 + 40);
    v17 = *(v16 + 8);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __84__CPSAppInstaller_installDownloadedAppWithBundleID_localFilePath_completionHandler___block_invoke_9;
    v18[3] = &unk_278DCDBB0;
    v18[4] = v16;
    v19 = *(a1 + 56);
    [v17 installWithCompletionHandler:v18];
  }
}

void __84__CPSAppInstaller_installDownloadedAppWithBundleID_localFilePath_completionHandler___block_invoke_9(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    *(v3 + 8) = 0;
  }

  (*(*(a1 + 40) + 16))();
}

void __84__CPSAppInstaller_installDownloadedAppWithBundleID_localFilePath_completionHandler___block_invoke_cold_1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 cps_privacyPreservingDescription];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_2436ED000, v3, OS_LOG_TYPE_ERROR, "Unable to unarchive IPA with error %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end