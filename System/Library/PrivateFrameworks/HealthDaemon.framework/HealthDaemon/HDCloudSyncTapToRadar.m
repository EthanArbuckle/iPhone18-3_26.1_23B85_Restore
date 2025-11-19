@interface HDCloudSyncTapToRadar
+ (BOOL)isTapToRadarAllowed;
+ (void)openTapToRadarWithTitle:(id)a3 description:(id)a4 completion:(id)a5;
+ (void)showTapToRadarRequestWithTitle:(id)a3 message:(id)a4 proceed:(id)a5 disable:(id)a6 completion:(id)a7;
@end

@implementation HDCloudSyncTapToRadar

+ (BOOL)isTapToRadarAllowed
{
  v2 = [MEMORY[0x277CCDD30] isAppleInternalInstall];
  if (v2)
  {
    LOBYTE(v2) = [MEMORY[0x277CCDD30] isTestingDevice] ^ 1;
  }

  return v2;
}

+ (void)showTapToRadarRequestWithTitle:(id)a3 message:(id)a4 proceed:(id)a5 disable:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([a1 isTapToRadarAllowed])
  {
    if (showTapToRadarRequestWithTitle_message_proceed_disable_completion__isPresenting == 1)
    {
      v23 = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __91__HDCloudSyncTapToRadar_showTapToRadarRequestWithTitle_message_proceed_disable_completion___block_invoke_2;
      v26 = &unk_278613658;
      v27 = v16;
      HKDispatchAsyncOnGlobalConcurrentQueue();
      v17 = v27;
    }

    else
    {
      showTapToRadarRequestWithTitle_message_proceed_disable_completion__isPresenting = 1;
      v17 = objc_alloc_init(MEMORY[0x277D10BC0]);
      [v17 setTitle:v12];
      [v17 setMessage:v13];
      [v17 setDefaultButton:@"Tap-to-Radar"];
      [v17 setCancelButton:@"Not Now"];
      [v17 setOtherButton:@"Do not ask again"];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __91__HDCloudSyncTapToRadar_showTapToRadarRequestWithTitle_message_proceed_disable_completion___block_invoke_3;
      v18[3] = &unk_278628F08;
      v22 = a1;
      v19 = v14;
      v20 = v15;
      v21 = v16;
      [v17 presentWithResponseHandler:v18];
    }
  }

  else
  {
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __91__HDCloudSyncTapToRadar_showTapToRadarRequestWithTitle_message_proceed_disable_completion___block_invoke;
    v31 = &unk_278613658;
    v32 = v16;
    HKDispatchAsyncOnGlobalConcurrentQueue();
    v17 = v32;
  }
}

void __91__HDCloudSyncTapToRadar_showTapToRadarRequestWithTitle_message_proceed_disable_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hk_error:110 format:@"Tap to radar is not available on this device."];
  (*(v1 + 16))(v1, v2);
}

void __91__HDCloudSyncTapToRadar_showTapToRadarRequestWithTitle_message_proceed_disable_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hk_error:100 format:@"Tap to radar is already presented."];
  (*(v1 + 16))(v1, v2);
}

void __91__HDCloudSyncTapToRadar_showTapToRadarRequestWithTitle_message_proceed_disable_completion___block_invoke_3(void *a1, void *a2, uint64_t a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  showTapToRadarRequestWithTitle_message_proceed_disable_completion__isPresenting = 0;
  switch(a3)
  {
    case 2:
      _HKInitializeLogging();
      v14 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v15 = a1[7];
        v17 = 138543362;
        v18 = v15;
        _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: cloud sync alert, 'Do not ask again' button pressed", &v17, 0xCu);
      }

      v11 = a1[5];
      goto LABEL_12;
    case 1:
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v13 = a1[7];
        v17 = 138543362;
        v18 = v13;
        _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: cloud sync alert, 'Not Now' button pressed", &v17, 0xCu);
      }

      break;
    case 0:
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v10 = a1[7];
        v17 = 138543362;
        v18 = v10;
        _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: cloud sync alert, 'Tap-to-Radar' button pressed", &v17, 0xCu);
      }

      v11 = a1[4];
LABEL_12:
      (*(v11 + 16))();
      break;
  }

  (*(a1[6] + 16))();

  v16 = *MEMORY[0x277D85DE8];
}

+ (void)openTapToRadarWithTitle:(id)a3 description:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([a1 isTapToRadarAllowed])
  {
    v11 = [MEMORY[0x277CBEBC0] hk_tapToHealthRadarURLForComponent:1578787 title:v8 description:v9 classification:6 reproducibility:6 keywords:0 autoDiagnostics:2 attachments:0];
    v12 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __72__HDCloudSyncTapToRadar_openTapToRadarWithTitle_description_completion___block_invoke;
    v13[3] = &unk_278628708;
    v14 = v10;
    [v12 openURL:v11 configuration:0 completionHandler:v13];
  }

  else if (v10)
  {
    v10[2](v10);
  }
}

void __72__HDCloudSyncTapToRadar_openTapToRadarWithTitle_description_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = v6;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "Could not open Tap-to-Radar URL %{public}@", &v10, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))();
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end