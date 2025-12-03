@interface TapToRadarHelper
+ (id)dispatchQueue;
+ (void)tapToRadar:(id)radar withMessage:(id)message withReason:(id)reason;
@end

@implementation TapToRadarHelper

+ (id)dispatchQueue
{
  if (dispatchQueue_onceToken_0 != -1)
  {
    +[TapToRadarHelper dispatchQueue];
  }

  v3 = dispatchQueue_queue_0;

  return v3;
}

uint64_t __33__TapToRadarHelper_dispatchQueue__block_invoke()
{
  dispatchQueue_queue_0 = dispatch_queue_create("com.apple.csf.availability", 0);

  return MEMORY[0x1EEE66BB8]();
}

+ (void)tapToRadar:(id)radar withMessage:(id)message withReason:(id)reason
{
  radarCopy = radar;
  messageCopy = message;
  reasonCopy = reason;
  v11 = _CSFGetLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF47C000, v11, OS_LOG_TYPE_DEFAULT, "Attempting to post a new TTR, dispatching.", buf, 2u);
  }

  dispatchQueue = [self dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__TapToRadarHelper_tapToRadar_withMessage_withReason___block_invoke;
  block[3] = &unk_1E86BB378;
  v17 = radarCopy;
  v18 = messageCopy;
  v19 = reasonCopy;
  v13 = reasonCopy;
  v14 = messageCopy;
  v15 = radarCopy;
  dispatch_async(dispatchQueue, block);
}

void __54__TapToRadarHelper_tapToRadar_withMessage_withReason___block_invoke(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = _CSFGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __54__TapToRadarHelper_tapToRadar_withMessage_withReason___block_invoke_cold_1(v2);
  }

  v3 = [getTapToRadarServiceClass[0]() shared];
  v4 = [v3 serviceSettings];

  v5 = _CSFGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&dword_1DF47C000, v5, OS_LOG_TYPE_DEFAULT, "Got settings, checking if we should post a new TTR.", &v22, 2u);
  }

  if ([v4 authorizationStatus])
  {
    if ([v4 authorizationStatus] == 1)
    {
      v6 = _CSFGetLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        v7 = "User denied authorization for process to file TTR. Will not prompt user.";
LABEL_14:
        v8 = v6;
        v9 = 2;
LABEL_15:
        _os_log_impl(&dword_1DF47C000, v8, OS_LOG_TYPE_DEFAULT, v7, &v22, v9);
        goto LABEL_16;
      }

      goto LABEL_16;
    }

    if ([v4 authorizationStatus] == 2)
    {
      v6 = _CSFGetLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        v7 = "Process is rate limited for sending TTRs. Will not prompt user.";
        goto LABEL_14;
      }

      goto LABEL_16;
    }

    v11 = [v4 authorizationStatus];
    v6 = _CSFGetLogSystem();
    v12 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v11 != 3)
    {
      if (!v12)
      {
        goto LABEL_16;
      }

      v19 = [v4 authorizationStatus];
      v22 = 134217984;
      v23 = v19;
      v7 = "Process has unknown authorization to display prompt %zd, will not post prompt.";
      v8 = v6;
      v9 = 12;
      goto LABEL_15;
    }

    if (v12)
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_1DF47C000, v6, OS_LOG_TYPE_DEFAULT, "Process is fully authorized to display TTR.", &v22, 2u);
    }

    v6 = [v4 rateLimitResetDate];
    if (v6)
    {
      v13 = [MEMORY[0x1E695DF00] now];
      v14 = [v6 compare:v13];

      v15 = _CSFGetLogSystem();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v14 != -1)
      {
        if (!v16)
        {
LABEL_33:

          goto LABEL_16;
        }

        v17 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v18 = [v17 stringFromDate:v6];
        v22 = 138412290;
        v23 = v18;
        _os_log_impl(&dword_1DF47C000, v15, OS_LOG_TYPE_DEFAULT, "Device is being rate limited and is not eligible for another TTR prompt. will be shown %@", &v22, 0xCu);

LABEL_32:
        goto LABEL_33;
      }

      if (v16)
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_1DF47C000, v15, OS_LOG_TYPE_DEFAULT, "Device is not being rate limited and is eligible for another TTR prompt.", &v22, 2u);
      }
    }

    v20 = _CSFGetLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_1DF47C000, v20, OS_LOG_TYPE_DEFAULT, "Posting TTR.", &v22, 2u);
    }

    v15 = objc_alloc_init(getRadarDraftClass[0]());
    [v15 setTitle:a1[4]];
    [v15 setProblemDescription:a1[5]];
    [v15 setClassification:6];
    [v15 setReproducibility:6];
    [v15 setIsUserInitiated:0];
    v21 = [objc_alloc(getRadarComponentClass()) initWithName:@"iCloudSubscription Client" version:@"Greymatter" identifier:1656574];
    [v15 setComponent:v21];

    v18 = [getTapToRadarServiceClass[0]() shared];
    [v18 createDraft:v15 forProcessNamed:@"iCloud daemon" withDisplayReason:a1[6] completionHandler:&__block_literal_global_19_0];
    goto LABEL_32;
  }

  v6 = _CSFGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v22) = 0;
    v7 = "Process is not authorized for TTR. Will not prompt user.";
    goto LABEL_14;
  }

LABEL_16:

  v10 = *MEMORY[0x1E69E9840];
}

void __54__TapToRadarHelper_tapToRadar_withMessage_withReason___block_invoke_16(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _CSFGetLogSystem();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __54__TapToRadarHelper_tapToRadar_withMessage_withReason___block_invoke_16_cold_1(v2, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1DF47C000, v4, OS_LOG_TYPE_DEFAULT, "Completed posting TTR", v5, 2u);
  }
}

void __54__TapToRadarHelper_tapToRadar_withMessage_withReason___block_invoke_16_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DF47C000, a2, OS_LOG_TYPE_ERROR, "Error posting TTR: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end