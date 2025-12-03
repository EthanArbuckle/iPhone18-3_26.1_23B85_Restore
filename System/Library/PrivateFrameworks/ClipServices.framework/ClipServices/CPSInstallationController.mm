@interface CPSInstallationController
- (BOOL)stopStallingCurrentInstallation;
- (CPSInstallationController)initWithAppInfoFetcher:(id)fetcher;
- (CPSInstallationControllerDelegate)delegate;
- (id)_asdClipRequestWithSession:(id)session;
- (id)_bundleIDFromSession:(id)session;
- (id)_placeholderArtworkForSession:(id)session;
- (void)_cancelClipSessionWithBundleID:(id)d completion:(id)completion;
- (void)_continueInstallForBundleID:(id)d session:(id)session completion:(id)completion;
- (void)_doneWithSession:(id)session error:(id)error;
- (void)_getClipSessionForBundleID:(id)d sourceBundleID:(id)iD forInstall:(BOOL)install completion:(id)completion;
- (void)_informDelegateDidInstallPlaceholder:(id)placeholder;
- (void)_prewarmDemoIPAWithBundleID:(id)d session:(id)session completion:(id)completion;
- (void)clipSession:(id)session didFailWithError:(id)error;
- (void)clipSession:(id)session didUpdateProgress:(double)progress;
- (void)clipSessionDidCompleteSuccessfully:(id)successfully;
- (void)clipSessionDidInstallPlaceholder:(id)placeholder;
- (void)installClipWithBundleID:(id)d session:(id)session completion:(id)completion;
- (void)prewarmClipWithBundleID:(id)d session:(id)session completion:(id)completion;
@end

@implementation CPSInstallationController

- (CPSInstallationController)initWithAppInfoFetcher:(id)fetcher
{
  fetcherCopy = fetcher;
  v17.receiver = self;
  v17.super_class = CPSInstallationController;
  v6 = [(CPSInstallationController *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appInfoFetcher, fetcher);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    sessionsByBundleID = v7->_sessionsByBundleID;
    v7->_sessionsByBundleID = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    installPromisesBySessionID = v7->_installPromisesBySessionID;
    v7->_installPromisesBySessionID = dictionary2;

    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v13 = dispatch_queue_create("com.apple.ClipServices.clipserviced.CPSInstallationController", v12);
    queue = v7->_queue;
    v7->_queue = v13;

    v15 = v7;
  }

  return v7;
}

- (void)_prewarmDemoIPAWithBundleID:(id)d session:(id)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  dCopy = d;
  v11 = +[CPSSessionManager sharedManager];
  legacyInstaller = [v11 legacyInstaller];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained installationControllerWillStartInstall:self];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __76__CPSInstallationController__prewarmDemoIPAWithBundleID_session_completion___block_invoke;
  v17[3] = &unk_278DCDFA8;
  v18 = legacyInstaller;
  v19 = sessionCopy;
  selfCopy = self;
  v21 = completionCopy;
  v14 = completionCopy;
  v15 = sessionCopy;
  v16 = legacyInstaller;
  [v16 downloadAppWithBundleID:dCopy completionHandler:v17];
}

void __76__CPSInstallationController__prewarmDemoIPAWithBundleID_session_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __76__CPSInstallationController__prewarmDemoIPAWithBundleID_session_completion___block_invoke_cold_1();
    }
  }

  else
  {
    v8 = a1[4];
    v9 = a1[5];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __76__CPSInstallationController__prewarmDemoIPAWithBundleID_session_completion___block_invoke_2;
    v11[3] = &unk_278DCDF80;
    v10 = a1[7];
    v11[4] = a1[6];
    v12 = v10;
    [v8 installAppWithBundleID:v5 session:v9 completionHandler:v11];
  }
}

void __76__CPSInstallationController__prewarmDemoIPAWithBundleID_session_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __76__CPSInstallationController__prewarmDemoIPAWithBundleID_session_completion___block_invoke_2_cold_1();
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
    [WeakRetained installationControllerDidInstallPlaceholder:*(a1 + 32)];

    v10 = objc_loadWeakRetained((*(a1 + 32) + 40));
    [v10 installationController:*(a1 + 32) didUpdateProgress:0.5];
  }

  (*(*(a1 + 40) + 16))();
}

- (id)_placeholderArtworkForSession:(id)session
{
  applicationIconFileURL = [session applicationIconFileURL];
  if (!applicationIconFileURL)
  {
    goto LABEL_6;
  }

  v10 = 0;
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:applicationIconFileURL options:8 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CPSInstallationController *)v5 _placeholderArtworkForSession:v6];
    }

    goto LABEL_5;
  }

  if (!v4)
  {
LABEL_5:

LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  v8 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_2436ED000, v8, OS_LOG_TYPE_INFO, "Uses app icon in prox card as the placeholder icon.", v9, 2u);
  }

LABEL_7:

  return v4;
}

- (id)_asdClipRequestWithSession:(id)session
{
  sessionCopy = session;
  v5 = objc_alloc(MEMORY[0x277CEC380]);
  metadata = [sessionCopy metadata];
  amsDictionary = [metadata amsDictionary];
  v8 = [v5 initWithDictionary:amsDictionary];

  configuration = [sessionCopy configuration];
  if ([configuration canPrefetchEncryptionKey])
  {
    [v8 setPrefetchDecryption:1];
  }

  v10 = [(CPSInstallationController *)self _placeholderArtworkForSession:sessionCopy];
  [v8 setPlaceholderArtwork:v10];

  v11 = [sessionCopy url];
  [v8 setSourceURL:v11];

  analyticsReferrerBundleID = [configuration analyticsReferrerBundleID];
  [v8 setInstallSourceBundleID:analyticsReferrerBundleID];

  analyticsLaunchReason = [configuration analyticsLaunchReason];
  [v8 setReferrerType:analyticsLaunchReason];

  return v8;
}

- (void)prewarmClipWithBundleID:(id)d session:(id)session completion:(id)completion
{
  dCopy = d;
  sessionCopy = session;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__CPSInstallationController_prewarmClipWithBundleID_session_completion___block_invoke;
  v15[3] = &unk_278DCDFF8;
  v15[4] = self;
  v16 = dCopy;
  v17 = sessionCopy;
  v18 = completionCopy;
  v12 = sessionCopy;
  v13 = completionCopy;
  v14 = dCopy;
  dispatch_async(queue, v15);
}

void __72__CPSInstallationController_prewarmClipWithBundleID_session_completion___block_invoke(id *a1)
{
  v61 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 2) objectForKeyedSubscript:a1[5]];

  if (v2)
  {
    v3 = *(a1[7] + 2);
    v4 = *MEMORY[0x277D85DE8];

    v3();
  }

  else
  {
    [a1[4] setDelegate:a1[6]];
    if (+[CPSClipURL usesDemoMetadata])
    {
      v5 = a1[4];
      v6 = a1[5];
      v7 = a1[6];
      v8 = a1[7];
      v9 = *MEMORY[0x277D85DE8];

      [v5 _prewarmDemoIPAWithBundleID:v6 session:v7 completion:v8];
    }

    else
    {
      v10 = [a1[6] metadata];
      v56 = 0;
      if ([v10 hasUpToDateVersionInstalledOnSystemIsPlaceholder:&v56] && (v56 & 1) == 0)
      {
        v33 = CPS_LOG_CHANNEL_PREFIXClipServices();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = a1[4];
          v35 = v33;
          v36 = objc_opt_class();
          v37 = a1[5];
          *buf = 138543619;
          v58 = v36;
          v59 = 2113;
          v60 = v37;
          _os_log_impl(&dword_2436ED000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping prewarm since clip is already installed for %{private}@", buf, 0x16u);
        }

        [a1[4] _informDelegateDidInstallPlaceholder:0];
        (*(a1[7] + 2))();
      }

      else
      {
        v11 = [v10 amsDictionary];
        if (v11)
        {
          v12 = objc_alloc(MEMORY[0x277CEC390]);
          v13 = [a1[4] _asdClipRequestWithSession:a1[6]];
          v14 = [v12 initWithRequest:v13];

          [v14 setDelegate:a1[4]];
          WeakRetained = objc_loadWeakRetained(a1[4] + 5);
          [WeakRetained installationControllerWillStartInstall:a1[4]];

          [*(a1[4] + 2) setObject:v14 forKeyedSubscript:a1[5]];
          v16 = CPS_LOG_CHANNEL_PREFIXClipServices();
          if (os_signpost_enabled(v16))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_2436ED000, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PlaceholderInstall", "Start creating placeholder.", buf, 2u);
          }

          v17 = +[CPSUtilities isNetworkConstrained];
          v18 = CPS_LOG_CHANNEL_PREFIXClipServices();
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
          if (v17)
          {
            if (v19)
            {
              v20 = a1[4];
              v21 = v18;
              v22 = objc_opt_class();
              v23 = a1[5];
              *buf = 138543619;
              v58 = v22;
              v59 = 2113;
              v60 = v23;
              _os_log_impl(&dword_2436ED000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Prewarming with placeholder only for %{private}@", buf, 0x16u);
            }

            v53[0] = MEMORY[0x277D85DD0];
            v53[1] = 3221225472;
            v53[2] = __72__CPSInstallationController_prewarmClipWithBundleID_session_completion___block_invoke_11;
            v53[3] = &unk_278DCDFD0;
            v24 = &v54 + 1;
            v25 = &v55;
            v26 = &v55 + 1;
            v48 = a1[4];
            v27 = a1[6];
            v28 = a1[5];
            v29 = a1[7];
            *&v30 = v28;
            *(&v30 + 1) = v29;
            *&v31 = v48;
            *(&v31 + 1) = v27;
            v54 = v31;
            v55 = v30;
            [v14 installPlaceholderWithCompletionHandler:v53];
          }

          else
          {
            if (v19)
            {
              v38 = a1[4];
              v39 = v18;
              v40 = objc_opt_class();
              v41 = a1[5];
              *buf = 138543619;
              v58 = v40;
              v59 = 2113;
              v60 = v41;
              _os_log_impl(&dword_2436ED000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@: Prewarming for %{private}@", buf, 0x16u);
            }

            v50[0] = MEMORY[0x277D85DD0];
            v50[1] = 3221225472;
            v50[2] = __72__CPSInstallationController_prewarmClipWithBundleID_session_completion___block_invoke_13;
            v50[3] = &unk_278DCDFD0;
            v24 = &v51 + 1;
            v25 = &v52;
            v26 = &v52 + 1;
            v49 = a1[4];
            v42 = a1[6];
            v43 = a1[5];
            v44 = a1[7];
            *&v45 = v43;
            *(&v45 + 1) = v44;
            *&v46 = v49;
            *(&v46 + 1) = v42;
            v51 = v46;
            v52 = v45;
            [v14 startDownloadWithCompletionHandler:v50];
          }
        }

        else
        {
          v32 = a1[7];
          v14 = [MEMORY[0x277CCA9B8] cps_errorWithCode:4];
          v32[2](v32, v14);
        }
      }

      v47 = *MEMORY[0x277D85DE8];
    }
  }
}

void __72__CPSInstallationController_prewarmClipWithBundleID_session_completion___block_invoke_11(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __72__CPSInstallationController_prewarmClipWithBundleID_session_completion___block_invoke_11_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = v5;
    v8 = objc_opt_class();
    v9 = [*(a1 + 40) logID];
    v10 = *(a1 + 48);
    v12 = 138543875;
    v13 = v8;
    v14 = 2048;
    v15 = v9;
    v16 = 2113;
    v17 = v10;
    _os_log_impl(&dword_2436ED000, v7, OS_LOG_TYPE_INFO, "%{public}@: Completed request for placeholder for session (%p) %{private}@", &v12, 0x20u);
  }

  (*(*(a1 + 56) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

void __72__CPSInstallationController_prewarmClipWithBundleID_session_completion___block_invoke_13(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __72__CPSInstallationController_prewarmClipWithBundleID_session_completion___block_invoke_13_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = v5;
    v8 = objc_opt_class();
    v9 = [*(a1 + 40) logID];
    v10 = *(a1 + 48);
    v12 = 138543875;
    v13 = v8;
    v14 = 2048;
    v15 = v9;
    v16 = 2113;
    v17 = v10;
    _os_log_impl(&dword_2436ED000, v7, OS_LOG_TYPE_INFO, "%{public}@: Started download clip for session (%p) %{private}@", &v12, 0x20u);
  }

  (*(*(a1 + 56) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)installClipWithBundleID:(id)d session:(id)session completion:(id)completion
{
  dCopy = d;
  sessionCopy = session;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__CPSInstallationController_installClipWithBundleID_session_completion___block_invoke;
  v15[3] = &unk_278DCE070;
  v16 = dCopy;
  v17 = sessionCopy;
  selfCopy = self;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = sessionCopy;
  v14 = dCopy;
  dispatch_async(queue, v15);
}

void __72__CPSInstallationController_installClipWithBundleID_session_completion___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138478083;
    v32 = v3;
    v33 = 2048;
    v34 = v4;
    _os_log_impl(&dword_2436ED000, v2, OS_LOG_TYPE_DEFAULT, "CPSInstallationController: Installing clip with bundleID (%{private}@), session (%p)", buf, 0x16u);
  }

  v5 = [*(*(a1 + 48) + 16) objectForKeyedSubscript:*(a1 + 32)];
  v6 = v5;
  if (v5)
  {
    v7 = *(*(a1 + 48) + 24);
    v8 = [v5 uniqueID];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9)
    {
      +[CPSClipURL shouldStallProgress];
    }

    else
    {
      v9 = +[CPSPromise promise];
      v15 = *(*(a1 + 48) + 24);
      v16 = [v6 uniqueID];
      [v15 setObject:v9 forKeyedSubscript:v16];

      if (!+[CPSClipURL shouldStallProgress])
      {
        [*(a1 + 48) _continueInstallForBundleID:*(a1 + 32) session:v6 completion:*(a1 + 56)];
        goto LABEL_10;
      }
    }

    (*(*(a1 + 56) + 16))();
LABEL_10:

    goto LABEL_12;
  }

  if (+[CPSClipURL usesDemoMetadata])
  {
    v10 = +[CPSSessionManager sharedManager];
    v11 = [v10 legacyInstaller];
    [v11 stopStallingCurrentInstallation];

    v12 = dispatch_time(0, 300000000);
    v13 = *(a1 + 48);
    v14 = *(v13 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__CPSInstallationController_installClipWithBundleID_session_completion___block_invoke_16;
    block[3] = &unk_278DCDE30;
    block[4] = v13;
    dispatch_after(v12, v14, block);
  }

  else
  {
    v17 = *(a1 + 48);
    v18 = *(a1 + 32);
    v19 = [*(a1 + 40) configuration];
    v20 = [v19 sourceBundleID];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __72__CPSInstallationController_installClipWithBundleID_session_completion___block_invoke_2;
    v27[3] = &unk_278DCE048;
    v26 = *(a1 + 48);
    v21 = *(&v26 + 1);
    v22 = *(a1 + 40);
    *&v23 = *(a1 + 32);
    *(&v24 + 1) = v22;
    *(&v23 + 1) = *(&v26 + 1);
    *&v24 = v26;
    v29 = v23;
    v28 = v24;
    [v17 _getClipSessionForBundleID:v18 sourceBundleID:v20 forInstall:1 completion:v27];
  }

LABEL_12:

  v25 = *MEMORY[0x277D85DE8];
}

void __72__CPSInstallationController_installClipWithBundleID_session_completion___block_invoke_16(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  [WeakRetained installationController:*(a1 + 32) didUpdateProgress:0.9];

  v3 = objc_loadWeakRetained((*(a1 + 32) + 40));
  [v3 installationController:*(a1 + 32) didFinishWithError:0];
}

void __72__CPSInstallationController_installClipWithBundleID_session_completion___block_invoke_2(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__CPSInstallationController_installClipWithBundleID_session_completion___block_invoke_3;
  block[3] = &unk_278DCE020;
  v13 = v5;
  v7 = *(a1 + 56);
  v16 = a3;
  v11 = *(a1 + 32);
  v8 = *(&v11 + 1);
  *&v9 = *(a1 + 48);
  *(&v9 + 1) = v7;
  v14 = v11;
  v15 = v9;
  v10 = v5;
  dispatch_async(v6, block);
}

void __72__CPSInstallationController_installClipWithBundleID_session_completion___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) setDelegate:*(a1 + 48)];
    [*(*(a1 + 40) + 16) setObject:*(a1 + 32) forKeyedSubscript:*(a1 + 56)];
    v2 = +[CPSPromise promise];
    v3 = *(*(a1 + 40) + 24);
    v4 = [*(a1 + 32) uniqueID];
    [v3 setObject:v2 forKeyedSubscript:v4];

    if (+[CPSClipURL shouldStallProgress])
    {
      v5 = *(a1 + 32);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __72__CPSInstallationController_installClipWithBundleID_session_completion___block_invoke_4;
      v17[3] = &unk_278DCDBB0;
      v6 = &v18;
      v18 = *(a1 + 56);
      v7 = &v19;
      v19 = *(a1 + 64);
      [v5 startDownloadWithCompletionHandler:v17];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 40));
      [WeakRetained installationControllerWillStartInstall:*(a1 + 40)];

      v12 = *(a1 + 32);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __72__CPSInstallationController_installClipWithBundleID_session_completion___block_invoke_17;
      v14[3] = &unk_278DCDBB0;
      v6 = &v15;
      v15 = *(a1 + 56);
      v7 = &v16;
      v16 = *(a1 + 64);
      [v12 downloadAndInstallWithCompletionHandler:v14];
    }
  }

  else
  {
    v8 = *(a1 + 64);
    if (*(a1 + 72) == 1)
    {
      v9 = *(v8 + 16);
      v10 = *(a1 + 64);

      v9(v10, 0);
    }

    else
    {
      v13 = [MEMORY[0x277CCA9B8] cps_errorWithCode:4];
      (*(v8 + 16))(v8, v13);
    }
  }
}

void __72__CPSInstallationController_installClipWithBundleID_session_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __72__CPSInstallationController_installClipWithBundleID_session_completion___block_invoke_4_cold_1(a1, v5, v3);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8 = 138477827;
    v9 = v6;
    _os_log_impl(&dword_2436ED000, v5, OS_LOG_TYPE_INFO, "ClipSessionManager: startDownload succeeds for bundleID %{private}@", &v8, 0xCu);
  }

  (*(*(a1 + 40) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

void __72__CPSInstallationController_installClipWithBundleID_session_completion___block_invoke_17(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __72__CPSInstallationController_installClipWithBundleID_session_completion___block_invoke_17_cold_1(a1, v5, v3);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8 = 138477827;
    v9 = v6;
    _os_log_impl(&dword_2436ED000, v5, OS_LOG_TYPE_INFO, "ClipSessionManager: downloadAndInstall succeeds for bundleID %{private}@", &v8, 0xCu);
  }

  (*(*(a1 + 40) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_continueInstallForBundleID:(id)d session:(id)session completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  sessionCopy = session;
  v11 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2436ED000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ContinueInstall", "Start continuing install.", buf, 2u);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__CPSInstallationController__continueInstallForBundleID_session_completion___block_invoke;
  v14[3] = &unk_278DCE098;
  v14[4] = self;
  v15 = dCopy;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = dCopy;
  [sessionCopy continueInstallWithCompletionHandler:v14];
}

void __76__CPSInstallationController__continueInstallForBundleID_session_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__CPSInstallationController__continueInstallForBundleID_session_completion___block_invoke_2;
  block[3] = &unk_278DCDCF8;
  v7 = v3;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t __76__CPSInstallationController__continueInstallForBundleID_session_completion___block_invoke_2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 4);
  v3 = a1[4];
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __76__CPSInstallationController__continueInstallForBundleID_session_completion___block_invoke_2_cold_1(a1, v2, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = a1[5];
    v9 = 138477827;
    v10 = v6;
    _os_log_impl(&dword_2436ED000, v5, OS_LOG_TYPE_INFO, "ClipSessionManager: continueInstall succeeds for bundleID %{private}@", &v9, 0xCu);
  }

  result = a1[6];
  if (result)
  {
    result = (*(result + 16))(result, *v2);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_getClipSessionForBundleID:(id)d sourceBundleID:(id)iD forInstall:(BOOL)install completion:(id)completion
{
  completionCopy = completion;
  appInfoFetcher = self->_appInfoFetcher;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __93__CPSInstallationController__getClipSessionForBundleID_sourceBundleID_forInstall_completion___block_invoke;
  v13[3] = &unk_278DCE0C0;
  installCopy = install;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  [(CPSAppInfoFetching *)appInfoFetcher lookUpClipMetadataByBundleID:d sourceBundleID:iD downloadIconIfNeeded:0 skipCaching:0 completionHandler:v13];
}

void __93__CPSInstallationController__getClipSessionForBundleID_sourceBundleID_forInstall_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 amsDictionary];
  if (!v4)
  {
    v7 = *(*(a1 + 40) + 16);
LABEL_9:
    v7();
    goto LABEL_12;
  }

  v8 = 0;
  if ([v3 hasUpToDateVersionInstalledOnSystemIsPlaceholder:&v8] && (*(a1 + 48) != 1 || (v8 & 1) == 0))
  {
    v7 = *(*(a1 + 40) + 16);
    goto LABEL_9;
  }

  v5 = [objc_alloc(MEMORY[0x277CEC380]) initWithDictionary:v4];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CEC390]) initWithRequest:v5];
    [v6 setDelegate:*(a1 + 32)];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

LABEL_12:
}

- (void)_cancelClipSessionWithBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__CPSInstallationController__cancelClipSessionWithBundleID_completion___block_invoke;
  block[3] = &unk_278DCDCF8;
  block[4] = self;
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

void __71__CPSInstallationController__cancelClipSessionWithBundleID_completion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __71__CPSInstallationController__cancelClipSessionWithBundleID_completion___block_invoke_2;
    v4[3] = &unk_278DCDFD0;
    v4[4] = *(a1 + 32);
    v5 = v2;
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    [v5 cancelInstallWithCompletionHandler:v4];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __71__CPSInstallationController__cancelClipSessionWithBundleID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __71__CPSInstallationController__cancelClipSessionWithBundleID_completion___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = v5;
    v8 = objc_opt_class();
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    *buf = 138543875;
    v21 = v8;
    v22 = 2048;
    v23 = v9;
    v24 = 2113;
    v25 = v10;
    _os_log_impl(&dword_2436ED000, v7, OS_LOG_TYPE_INFO, "%{public}@: Successfully canceled session (%p) for %{private}@", buf, 0x20u);
  }

  (*(*(a1 + 56) + 16))();
  v11 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__CPSInstallationController__cancelClipSessionWithBundleID_completion___block_invoke_20;
  block[3] = &unk_278DCE110;
  v12 = *(a1 + 48);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v17 = v12;
  v18 = v13;
  v19 = v14;
  dispatch_async(v11, block);

  v15 = *MEMORY[0x277D85DE8];
}

void __71__CPSInstallationController__cancelClipSessionWithBundleID_completion___block_invoke_20(uint64_t *a1)
{
  v2 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:a1[4] allowPlaceholder:1 error:0];
  if ([v2 isPlaceholder])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __71__CPSInstallationController__cancelClipSessionWithBundleID_completion___block_invoke_2_22;
    v5[3] = &unk_278DCE0E8;
    v3 = a1[4];
    v4 = a1[6];
    v5[4] = a1[5];
    v6 = v4;
    v7 = a1[4];
    [CPSUtilities uninstallAppWithBundleIdentifier:v3 completion:v5];
  }
}

void __71__CPSInstallationController__cancelClipSessionWithBundleID_completion___block_invoke_2_22(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __71__CPSInstallationController__cancelClipSessionWithBundleID_completion___block_invoke_2_22_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = v5;
    v8 = objc_opt_class();
    v9 = a1[5];
    v10 = a1[6];
    v12 = 138543875;
    v13 = v8;
    v14 = 2048;
    v15 = v9;
    v16 = 2113;
    v17 = v10;
    _os_log_impl(&dword_2436ED000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully cleaned up placeholder for session (%p) for %{private}@", &v12, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_bundleIDFromSession:(id)session
{
  sessionCopy = session;
  dispatch_assert_queue_V2(self->_queue);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  sessionsByBundleID = self->_sessionsByBundleID;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__CPSInstallationController__bundleIDFromSession___block_invoke;
  v9[3] = &unk_278DCE138;
  v6 = sessionCopy;
  v10 = v6;
  v11 = &v12;
  [(NSMutableDictionary *)sessionsByBundleID enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __50__CPSInstallationController__bundleIDFromSession___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v8 = [a3 uniqueID];
  v9 = [*(a1 + 32) uniqueID];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_doneWithSession:(id)session error:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__CPSInstallationController__doneWithSession_error___block_invoke;
  block[3] = &unk_278DCE110;
  v12 = sessionCopy;
  selfCopy = self;
  v14 = errorCopy;
  v9 = errorCopy;
  v10 = sessionCopy;
  dispatch_async(queue, block);
}

void __52__CPSInstallationController__doneWithSession_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:0];
  v8 = [*(a1 + 40) _bundleIDFromSession:*(a1 + 32)];
  if (v8)
  {
    [*(*(a1 + 40) + 16) setObject:0 forKeyedSubscript:v8];
  }

  v2 = *(*(a1 + 40) + 24);
  v3 = [*(a1 + 32) uniqueID];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = *(*(a1 + 40) + 24);
  v6 = [*(a1 + 32) uniqueID];
  [v5 setObject:0 forKeyedSubscript:v6];

  if (*(a1 + 48))
  {
    [v4 finishWithError:?];
  }

  else
  {
    [v4 finish];
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 40));
  [WeakRetained installationController:*(a1 + 40) didFinishWithError:*(a1 + 48)];
}

- (BOOL)stopStallingCurrentInstallation
{
  sessionsByBundleID = self->_sessionsByBundleID;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__CPSInstallationController_stopStallingCurrentInstallation__block_invoke;
  v4[3] = &unk_278DCE160;
  v4[4] = self;
  [(NSMutableDictionary *)sessionsByBundleID enumerateKeysAndObjectsUsingBlock:v4];
  return 1;
}

- (void)clipSession:(id)session didFailWithError:(id)error
{
  v24 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277CEC2F8]])
  {
    code = [errorCopy code];

    if (code == 907)
    {
      v10 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        v18 = 138543618;
        v19 = objc_opt_class();
        v20 = 2048;
        v21 = sessionCopy;
        _os_log_impl(&dword_2436ED000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Session (%p) User Canceled.", &v18, 0x16u);
      }

      v12 = [MEMORY[0x277CCA9B8] cps_errorWithCode:8];
      [(CPSInstallationController *)self _doneWithSession:sessionCopy error:v12];

      goto LABEL_10;
    }
  }

  else
  {
  }

  v13 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v15 = v13;
    v16 = objc_opt_class();
    cps_privacyPreservingDescription = [errorCopy cps_privacyPreservingDescription];
    v18 = 138543874;
    v19 = v16;
    v20 = 2048;
    v21 = sessionCopy;
    v22 = 2114;
    v23 = cps_privacyPreservingDescription;
    _os_log_error_impl(&dword_2436ED000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Session (%p) failed: %{public}@", &v18, 0x20u);
  }

  [(CPSInstallationController *)self _doneWithSession:sessionCopy error:errorCopy];
LABEL_10:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)clipSession:(id)session didUpdateProgress:(double)progress
{
  v17 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v7 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v11 = 138543874;
    v12 = objc_opt_class();
    v13 = 2048;
    v14 = sessionCopy;
    v15 = 2048;
    progressCopy = progress;
    _os_log_impl(&dword_2436ED000, v8, OS_LOG_TYPE_INFO, "%{public}@: Updated progress for session (%p): %f", &v11, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained installationController:self didUpdateProgress:progress];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)clipSessionDidCompleteSuccessfully:(id)successfully
{
  v13 = *MEMORY[0x277D85DE8];
  successfullyCopy = successfully;
  v5 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v9 = 138543618;
    v10 = objc_opt_class();
    v11 = 2048;
    v12 = successfullyCopy;
    _os_log_impl(&dword_2436ED000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully completed session (%p)", &v9, 0x16u);
  }

  [(CPSInstallationController *)self _doneWithSession:successfullyCopy error:0];
  v7 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_signpost_enabled(v7))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_2436ED000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ContinueInstall", "End continuing install enableTelemetry=YES ", &v9, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)clipSessionDidInstallPlaceholder:(id)placeholder
{
  v13 = *MEMORY[0x277D85DE8];
  placeholderCopy = placeholder;
  v5 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v9 = 138543618;
    v10 = objc_opt_class();
    v11 = 2048;
    v12 = placeholderCopy;
    _os_log_impl(&dword_2436ED000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully installed placeholder (%p)", &v9, 0x16u);
  }

  [(CPSInstallationController *)self _informDelegateDidInstallPlaceholder:placeholderCopy];
  v7 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_signpost_enabled(v7))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_2436ED000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PlaceholderInstall", "End creating placeholder.", &v9, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_informDelegateDidInstallPlaceholder:(id)placeholder
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained installationControllerDidInstallPlaceholder:self];
}

- (CPSInstallationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __76__CPSInstallationController__prewarmDemoIPAWithBundleID_session_completion___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0(&dword_2436ED000, v0, v1, "An error occurred when download IPA for %{private}@; error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __76__CPSInstallationController__prewarmDemoIPAWithBundleID_session_completion___block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0(&dword_2436ED000, v0, v1, "An error occurred when installing IPA for %{private}@; error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_placeholderArtworkForSession:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_2436ED000, a2, OS_LOG_TYPE_ERROR, "Fail to read placeholder icon: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __72__CPSInstallationController_prewarmClipWithBundleID_session_completion___block_invoke_11_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(v4, v5);
  OUTLINED_FUNCTION_7();
  v6 = [*(v1 + 40) logID];
  v7 = *(v1 + 48);
  v8 = [v0 cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1(&dword_2436ED000, v9, v10, "%{public}@: Failed to install placeholder for session (%p) for %{private}@: %{public}@", v11, v12, v13, v14, v16);

  v15 = *MEMORY[0x277D85DE8];
}

void __72__CPSInstallationController_prewarmClipWithBundleID_session_completion___block_invoke_13_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(v4, v5);
  OUTLINED_FUNCTION_7();
  v6 = [*(v1 + 40) logID];
  v7 = *(v1 + 48);
  v8 = [v0 cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1(&dword_2436ED000, v9, v10, "%{public}@: Failed to start download session (%p) for %{private}@: %{public}@", v11, v12, v13, v14, v16);

  v15 = *MEMORY[0x277D85DE8];
}

void __72__CPSInstallationController_installClipWithBundleID_session_completion___block_invoke_4_cold_1(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_2436ED000, v7, v8, "ClipSessionManager: startDownload failed for bundleID %{private}@ with error: %{public}@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

void __72__CPSInstallationController_installClipWithBundleID_session_completion___block_invoke_17_cold_1(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_2436ED000, v7, v8, "ClipSessionManager: downloadAndInstall failed for bundleID %{private}@ with error: %{public}@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

void __76__CPSInstallationController__continueInstallForBundleID_session_completion___block_invoke_2_cold_1(uint64_t a1, void **a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = *a2;
  v5 = a3;
  v6 = [v4 cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_2436ED000, v7, v8, "ClipSessionManager: continueInstall failed for bundleID %{private}@ with error: %{public}@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

void __71__CPSInstallationController__cancelClipSessionWithBundleID_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(v4, v5);
  OUTLINED_FUNCTION_7();
  v7 = *(v1 + 40);
  v6 = *(v1 + 48);
  v8 = [v0 cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1(&dword_2436ED000, v9, v10, "%{public}@: Failed to cancel session (%p) for %{private}@: %{public}@", v11, v12, v13, v14, v16);

  v15 = *MEMORY[0x277D85DE8];
}

void __71__CPSInstallationController__cancelClipSessionWithBundleID_completion___block_invoke_2_22_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(v4, v5);
  OUTLINED_FUNCTION_7();
  v7 = *(v1 + 40);
  v6 = *(v1 + 48);
  v8 = [v0 cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1(&dword_2436ED000, v9, v10, "%{public}@: Failed to clean up placeholder for session (%p) for %{private}@: %{public}@", v11, v12, v13, v14, v16);

  v15 = *MEMORY[0x277D85DE8];
}

@end