@interface AVSystemControllerCommon
+ (void)initialize;
+ (void)postNotificationOnMainQueue:(id)a3 notification:(id)a4 object:(id)a5;
- (AVSystemControllerCommon)init;
- (BOOL)setAttribute:(id)a3 forKey:(id)a4 error:(id *)a5;
- (OpaqueFigSystemController)copyFigController;
- (id)attributeForKey:(id)a3;
- (id)copyAttributeForKeyMappingToFig;
- (id)copySetAttributeForKeyMappingToFig;
- (void)dealloc;
- (void)initializeAttributeForKeyMappingToFig;
- (void)releaseSharedInstance;
@end

@implementation AVSystemControllerCommon

- (AVSystemControllerCommon)init
{
  v6.receiver = self;
  v6.super_class = AVSystemControllerCommon;
  v2 = [(AVSystemControllerCommon *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(AVSystemControllerCommon *)v2 initializeAttributeForKeyMappingToFig];
    objc_storeWeak(&selfWeakAVSCReference, [(AVSystemControllerCommon *)v3 selfWeak]);
    if (FigSystemControllerRemoteCreate(*MEMORY[0x1E695E480], 0, &v3->mFigController) || !v3->mFigController || (CMNotificationCenterGetDefaultLocalCenter(), mFigController = v3->mFigController, FigNotificationCenterAddWeakListeners()) || !v3->mFigController)
    {

      return 0;
    }
  }

  return v3;
}

- (void)initializeAttributeForKeyMappingToFig
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AVSystemControllerCommon_initializeAttributeForKeyMappingToFig__block_invoke;
  block[3] = &unk_1E7AE7CE0;
  block[4] = self;
  if (initializeAttributeForKeyMappingToFig_onceToken != -1)
  {
    dispatch_once(&initializeAttributeForKeyMappingToFig_onceToken, block);
  }
}

void __65__AVSystemControllerCommon_initializeAttributeForKeyMappingToFig__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) copyAttributeForKeyMappingToFig];
  v4 = [*(a1 + 32) copySetAttributeForKeyMappingToFig];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  sAttributeForKeyMappingToFig = [v3 initWithObjectsAndKeys:{@"SubscribeToNotifications", AVSystemController_SubscribeToNotificationsAttribute, 0}];
  sSetAttributeForKeyMappingToFig = objc_alloc_init(MEMORY[0x1E695DF90]);
  [sAttributeForKeyMappingToFig addEntriesFromDictionary:v2];
  [sSetAttributeForKeyMappingToFig addEntriesFromDictionary:v4];
}

+ (void)initialize
{
  if (objc_opt_self() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();

    fig_note_initialize_category_with_default_work();
  }
}

- (OpaqueFigSystemController)copyFigController
{
  result = self->mFigController;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

+ (void)postNotificationOnMainQueue:(id)a3 notification:(id)a4 object:(id)a5
{
  v7 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__AVSystemControllerCommon_postNotificationOnMainQueue_notification_object___block_invoke;
  v8[3] = &unk_1E7AEA340;
  v8[4] = a4;
  v8[5] = a3;
  MXDispatchAsync("+[AVSystemControllerCommon postNotificationOnMainQueue:notification:object:]", "AVSystemController_Common.m", 157, 0, 0, MEMORY[0x1E69E96A0], v8);
}

void __76__AVSystemControllerCommon_postNotificationOnMainQueue_notification_object___block_invoke(uint64_t a1)
{
  if (objc_loadWeak(&selfWeakAVSCReference))
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  v2 = *(a1 + 40);
}

- (void)dealloc
{
  if (self->mFigController)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    mFigController = self->mFigController;
    FigNotificationCenterRemoveWeakListeners();
    v4 = self->mFigController;
    if (v4)
    {
      CFRelease(v4);
      self->mFigController = 0;
    }
  }

  v5.receiver = self;
  v5.super_class = AVSystemControllerCommon;
  [(AVSystemControllerCommon *)&v5 dealloc];
}

- (id)attributeForKey:(id)a3
{
  v13 = 0;
  v5 = [sAttributeForKeyMappingToFig valueForKey:?];
  if (v5)
  {
    v6 = v5;
    mFigController = self->mFigController;
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v8(mFigController, v6, *MEMORY[0x1E695E480], &v13);
      v9 = v13;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    return v13;
  }

  else if ([a3 isEqualToString:AVSystemController_PostNotificationsFromMainThreadOnly] || objc_msgSend(a3, "isEqualToString:", AVSystemController_DeviceManufacturedForEURegion))
  {
    v12 = MEMORY[0x1E696AD98];

    return [v12 numberWithBool:0];
  }

  else
  {
    return 0;
  }
}

- (BOOL)setAttribute:(id)a3 forKey:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = 0;
  }

  if ([a4 isEqualToString:AVSystemController_IAmTheiPodAppAttribute])
  {
    return 1;
  }

  v10 = [sSetAttributeForKeyMappingToFig valueForKey:a4];
  if (v10)
  {
    v11 = v10;
    mFigController = self->mFigController;
    VTable = CMBaseObjectGetVTable();
    v14 = *(*(VTable + 8) + 56);
    if (v14)
    {
      v15 = *(VTable + 8) + 56;
      v16 = v14(mFigController, v11, a3);
    }

    else
    {
      v16 = 4294954514;
    }

    v17 = 0;
    if (a5 && v16)
    {
      v18 = @"setAttribute failed: '%@'";
LABEL_18:
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:v18, 0, a4];
    }
  }

  else
  {
    v19 = [a4 isEqualToString:AVSystemController_PostNotificationsFromMainThreadOnly];
    v17 = 0;
    if (v19)
    {
      v16 = 0;
    }

    else
    {
      v16 = 4294967246;
    }

    if ((v19 & 1) == 0 && a5)
    {
      v18 = @"unsupported attribute: '%@'";
      v16 = 4294967246;
      goto LABEL_18;
    }
  }

  if (a5)
  {
    if (v16)
    {
      *a5 = [(AVSystemControllerCommon *)self errorWithCode:v16 description:v17];
    }
  }

  return v16 == 0;
}

- (void)releaseSharedInstance
{
  v4 = *MEMORY[0x1E69E9840];
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v3 = *MEMORY[0x1E69E9840];
}

- (id)copySetAttributeForKeyMappingToFig
{
  v5 = *MEMORY[0x1E69E9840];
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)copyAttributeForKeyMappingToFig
{
  v5 = *MEMORY[0x1E69E9840];
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

@end