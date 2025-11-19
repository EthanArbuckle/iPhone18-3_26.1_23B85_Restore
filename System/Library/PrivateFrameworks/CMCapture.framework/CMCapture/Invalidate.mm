@interface Invalidate
@end

@implementation Invalidate

void __captureDeferredPhotoProcessor_Invalidate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(*(a1 + 32) + 24) = 0;
  captureDeferredPhotoProcessor_cleanupForCurrentProcessingRequest(v2);
  [+[BWDeferredTransactionBroker sharedInstance](BWDeferredTransactionBroker closeTransaction:"closeTransaction:", 1];

  v3 = *(a1 + 32);
  *(v3 + 40) = 0;

  v4 = *(a1 + 32);
  v4[12] = 0;
  v5 = v4[10];
  if (v5)
  {
    v4[10] = 0;
    xpc_release(v5);
    v4 = *(a1 + 32);
  }

  v4[11] = 0;
}

void __captureSession_Invalidate_block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 384));
  v2 = *(a1 + 32);
  *(v2 + 388) = 0;
  *(v2 + 396) = 0;

  v3 = *(a1 + 32);
  *(v3 + 440) = 0;
  if (*(v3 + 399) == 1)
  {
    [*(v3 + 488) setClientApplicationID:*(v3 + 88)];
    [+[BWCoreAnalyticsReporter sharedInstance](BWCoreAnalyticsReporter sendEvent:"sendEvent:", *(*(a1 + 32) + 488)];
    v3 = *(a1 + 32);
  }

  v4 = *(a1 + 32);
  *(v4 + 488) = 0;
  os_unfair_lock_unlock((v4 + 384));
  if (*(*(a1 + 32) + 112) == 1)
  {
    [+[FigCaptureDisplayLayoutMonitor sharedDisplayLayoutMonitor](FigCaptureDisplayLayoutMonitor "sharedDisplayLayoutMonitor")];
    v5 = *(a1 + 32);
    *(v5 + 112) = 0;
    v6 = *(v5 + 88);
    if (v6)
    {
      os_unfair_lock_lock(&sFigCaptureSessionPrewarming);
      v7 = [qword_1ED844908 objectForKeyedSubscript:v6];
      if (v7)
      {
        v8 = [v7 referencedObject];
        if (!v8 || v8 == *(a1 + 40))
        {
          [qword_1ED844908 setObject:0 forKeyedSubscript:v6];
        }
      }

      os_unfair_lock_unlock(&sFigCaptureSessionPrewarming);
    }
  }

  captureSession_stopRunningInternal(*(a1 + 40), 1, 0);
  OUTLINED_FUNCTION_41_11();
  captureSession_teardownGraph();
  [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];

  v9 = *(a1 + 32);
  *(v9 + 904) = 0;
  [*(v9 + 120) invalidate];

  v10 = *(a1 + 32);
  *(v10 + 120) = 0;
  os_unfair_lock_lock((v10 + 900));
  v11 = *(a1 + 32);
  v11[224]._os_unfair_lock_opaque = 0;
  os_unfair_lock_unlock(v11 + 225);
  os_unfair_lock_lock((*(a1 + 32) + 384));

  v12 = *(a1 + 32);
  *(v12 + 560) = 0;

  v13 = *(a1 + 32);
  *(v13 + 568) = 0;

  v14 = *(a1 + 32);
  *(v14 + 576) = 0;

  v15 = *(a1 + 32);
  *(v15 + 584) = 0;

  v16 = *(a1 + 32);
  *(v16 + 592) = 0;

  v17 = *(a1 + 32);
  *(v17 + 496) = 0;

  v18 = *(a1 + 32);
  *(v18 + 504) = 0;

  v19 = *(a1 + 32);
  *(v19 + 512) = 0;

  v20 = *(a1 + 32);
  *(v20 + 520) = 0;

  v21 = *(a1 + 32);
  *(v21 + 536) = 0;

  v22 = *(a1 + 32);
  *(v22 + 544) = 0;

  v25 = *(a1 + 32);
  *(v25 + 552) = 0;
  v26 = *(v25 + 424);
  if (v26)
  {
    memset(v51, 0, sizeof(v51));
    v27 = OUTLINED_FUNCTION_37(v23, v24, v51, v50);
    if (v27)
    {
      v28 = v27;
      do
      {
        v29 = 0;
        do
        {
          OUTLINED_FUNCTION_49_7();
          if (!v30)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [*(*(&v51[0] + 1) + 8 * v29++) setDelegate:0];
        }

        while (v28 != v29);
        v28 = OUTLINED_FUNCTION_37(v31, v32, v51, v50);
      }

      while (v28);
    }

    v25 = *(a1 + 32);
    *(v25 + 424) = 0;
  }

  v33 = *(a1 + 32);
  *(v33 + 608) = 0;
  os_unfair_lock_unlock((v33 + 384));
  os_unfair_lock_lock((*(a1 + 32) + 264));

  v34 = *(a1 + 32);
  *(v34 + 272) = 0;
  os_unfair_lock_unlock((v34 + 264));

  v35 = *(a1 + 32);
  *(v35 + 832) = 0;

  v36 = *(a1 + 32);
  *(v36 + 840) = 0;
  *(v36 + 976) = 0;
  *(v36 + 968) = 0;

  v37 = *(a1 + 32);
  *(v37 + 880) = 0;

  v38 = *(a1 + 32);
  *(v38 + 888) = 0;
  v39 = *(v38 + 328);
  if (v39)
  {
    dispatch_source_cancel(v39);

    v38 = *(a1 + 32);
    *(v38 + 328) = 0;
  }

  if (*(v38 + 304))
  {
    v40 = [MEMORY[0x1E698D710] sharedInstance];
    [v40 removeObserverForType:1 observer:*(*(a1 + 32) + 304) name:*MEMORY[0x1E698D5B0]];
    v38 = *(a1 + 32);
  }

  if (*(v38 + 312))
  {
    v41 = [MEMORY[0x1E698D710] sharedInstance];
    [v41 removeObserverForType:1 observer:*(*(a1 + 32) + 312) name:*MEMORY[0x1E698D5C0]];
    v38 = *(a1 + 32);
  }

  v42 = *(a1 + 32);
  *(v42 + 304) = 0;

  v43 = *(a1 + 32);
  *(v43 + 312) = 0;

  v44 = *(a1 + 32);
  *(v44 + 280) = 0;
  cs_clearPocketDetectionNeeded(0, *(v44 + 88));
  v45 = *(*(a1 + 32) + 288);
  if (v45)
  {
    CFRelease(v45);
    *(*(a1 + 32) + 288) = 0;
  }

  captureSession_stopObservingInvalidAudioRecordingState();
  v46 = *(*(a1 + 32) + 368);
  if (v46)
  {
    CFRelease(v46);
    *(*(a1 + 32) + 368) = 0;
  }

  captureSession_cancelPrewarmingTimeoutTimer();

  v47 = *(a1 + 32);
  *(v47 + 936) = 0;

  v48 = *(a1 + 32);
  *(v48 + 928) = 0;
  v49 = *(v48 + 920);
  if (v49)
  {
    CFRelease(v49);
    *(*(a1 + 32) + 920) = 0;
    v48 = *(a1 + 32);
  }

  dispatch_sync(*(v48 + 144), &__block_literal_global_1331);
}

@end