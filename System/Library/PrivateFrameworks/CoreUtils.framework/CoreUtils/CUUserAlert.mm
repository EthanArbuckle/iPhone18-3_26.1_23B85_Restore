@interface CUUserAlert
- (CUUserAlert)init;
- (void)_activateWithCompletion:(id)a3;
- (void)_autoInvalidate;
- (void)_invalidated;
- (void)_responseCallback:(__CFUserNotification *)a3 responseFlags:(unint64_t)a4;
- (void)activateWithCompletion:(id)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CUUserAlert

- (void)_responseCallback:(__CFUserNotification *)a3 responseFlags:(unint64_t)a4
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CUUserAlert__responseCallback_responseFlags___block_invoke;
  block[3] = &unk_1E73A3FC8;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(dispatchQueue, block);
}

void __47__CUUserAlert__responseCallback_responseFlags___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 40) == *(*(a1 + 32) + 16))
  {
    if (gLogCategory_CUUserAlert <= 30 && (gLogCategory_CUUserAlert != -1 || _LogCategory_Initialize(&gLogCategory_CUUserAlert, 0x1Eu)))
    {
      LogPrintF_safe(&gLogCategory_CUUserAlert, "[CUUserAlert _responseCallback:responseFlags:]_block_invoke", 0x1Eu, "User alert response: Flags 0x%lX", a5, a6, a7, a8, *(a1 + 48));
    }

    *(*(a1 + 32) + 11) = 1;
    v10 = qword_191FFA0D0[*(a1 + 48) & 3];
    v13 = _Block_copy(*(*(a1 + 32) + 120));
    v11 = *(a1 + 32);
    v12 = *(v11 + 120);
    *(v11 + 120) = 0;

    if (v13)
    {
      v13[2](v13, v10);
    }

    [*(a1 + 32) _autoInvalidate];
  }
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_userNotification)
  {
    v11 = _Block_copy(self->_actionHandler);
    actionHandler = self->_actionHandler;
    self->_actionHandler = 0;

    if (v11)
    {
      v11[2](v11, -71148);
    }

    v4 = _Block_copy(self->_invalidationHandler);
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    if (v4)
    {
      v4[2](v4);
    }

    self->_invalidateDone = 1;
    if (gLogCategory_CUUserAlert <= 30 && (gLogCategory_CUUserAlert != -1 || _LogCategory_Initialize(&gLogCategory_CUUserAlert, 0x1Eu)))
    {
      LogPrintF_safe(&gLogCategory_CUUserAlert, "[CUUserAlert _invalidated]", 0x1Eu, "Invalidated", v6, v7, v8, v9, v10);
    }
  }
}

- (void)_autoInvalidate
{
  if (!self->_invalidateCalled && gLogCategory_CUUserAlert <= 30 && (gLogCategory_CUUserAlert != -1 || _LogCategory_Initialize(&gLogCategory_CUUserAlert, 0x1Eu)))
  {
    LogPrintF_safe(&gLogCategory_CUUserAlert, "[CUUserAlert _autoInvalidate]", 0x1Eu, "Auto-invalidate", v2, v3, v4, v5, v13);
  }

  self->_invalidateCalled = 1;
  userRLS = self->_userRLS;
  if (userRLS)
  {
    v8 = *MEMORY[0x1E695E8E0];
    Main = CFRunLoopGetMain();
    CFRunLoopRemoveSource(Main, userRLS, v8);
    CFRelease(userRLS);
    self->_userRLS = 0;
  }

  userNotification = self->_userNotification;
  if (userNotification)
  {
    pthread_mutex_lock(&gCUUserAlertMutex);
    v11 = gCUUserAlertMap;
    v12 = [MEMORY[0x1E696AD98] numberWithLong:userNotification];
    [v11 setObject:0 forKeyedSubscript:v12];

    pthread_mutex_unlock(&gCUUserAlertMutex);
    if (!self->_dismissed)
    {
      CFUserNotificationCancel(userNotification);
    }

    CFRelease(userNotification);
    self->_userNotification = 0;
  }

  [(CUUserAlert *)self _invalidated];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__CUUserAlert_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __25__CUUserAlert_invalidate__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  if (gLogCategory_CUUserAlert <= 30)
  {
    if (gLogCategory_CUUserAlert != -1 || (result = _LogCategory_Initialize(&gLogCategory_CUUserAlert, 0x1Eu), result))
    {
      result = LogPrintF_safe(&gLogCategory_CUUserAlert, "[CUUserAlert invalidate]_block_invoke", 0x1Eu, "Invalidate", a5, a6, a7, a8, v11);
    }
  }

  v9 = *(v8 + 32);
  if ((*(v9 + 9) & 1) == 0)
  {
    *(v9 + 9) = 1;
    v10 = *(v8 + 32);

    return [v10 _autoInvalidate];
  }

  return result;
}

- (void)_activateWithCompletion:(id)a3
{
  v4 = a3;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__9014;
  v62 = __Block_byref_object_dispose__9015;
  v63 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__CUUserAlert__activateWithCompletion___block_invoke;
  aBlock[3] = &unk_1E73A3FA0;
  v57 = &v58;
  v5 = v4;
  aBlock[4] = self;
  v56 = v5;
  v6 = _Block_copy(aBlock);
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = self->_titleKey;
  if (v8)
  {
    localizationBundle = self->_localizationBundle;
    v10 = localizationBundle;
    if (!localizationBundle)
    {
      v10 = [MEMORY[0x1E696AAE8] mainBundle];
    }

    v11 = CULocalizedStringEx(v10, self->_localizationTableName, v8);
    if (!localizationBundle)
    {
    }

    v12 = self->_titleParameter;
    if (v12)
    {
      v53 = v12;
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v11];

      v11 = v13;
    }

    v14 = *MEMORY[0x1E695EE58];

    [v7 setObject:v11 forKeyedSubscript:v14];
  }

  v15 = self->_subtitleKey;
  if (v15)
  {
    v16 = self->_localizationBundle;
    v17 = v16;
    if (!v16)
    {
      v17 = [MEMORY[0x1E696AAE8] mainBundle];
    }

    v18 = CULocalizedStringEx(v17, self->_localizationTableName, v15);
    if (!v16)
    {
    }

    v19 = self->_subtitleParameter;
    if (v19)
    {
      v53 = v19;
      v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v18];

      v18 = v20;
    }

    v21 = *MEMORY[0x1E695EE60];

    [v7 setObject:v18 forKeyedSubscript:v21];
  }

  v22 = self->_defaultButtonTitleKey;
  if (v22)
  {
    v23 = self->_localizationBundle;
    v24 = v23;
    if (!v23)
    {
      v24 = [MEMORY[0x1E696AAE8] mainBundle];
    }

    v25 = CULocalizedStringEx(v24, self->_localizationTableName, v22);
    v26 = *MEMORY[0x1E695EE78];
    if (!v23)
    {
    }

    [v7 setObject:v25 forKeyedSubscript:v26];
  }

  v27 = self->_alternativeButtonTitleKey;
  if (v27)
  {
    v28 = self->_localizationBundle;
    v29 = v28;
    if (!v28)
    {
      v29 = [MEMORY[0x1E696AAE8] mainBundle];
    }

    v30 = CULocalizedStringEx(v29, self->_localizationTableName, v27);
    v31 = *MEMORY[0x1E695EE70];
    if (!v28)
    {
    }

    [v7 setObject:v30 forKeyedSubscript:v31];
  }

  error = 0;
  v32 = CFUserNotificationCreate(0, self->_timeoutSeconds, 2uLL, &error, v7);
  v38 = v32;
  if (!v32)
  {
    v51 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "Create alert failed (%d)", v33, v34, v35, v36, v37, error);
LABEL_37:
    v52 = v59[5];
    v59[5] = v51;

    goto LABEL_34;
  }

  self->_userNotification = v32;
  pthread_mutex_lock(&gCUUserAlertMutex);
  v39 = gCUUserAlertMap;
  if (!gCUUserAlertMap)
  {
    v40 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v41 = gCUUserAlertMap;
    gCUUserAlertMap = v40;

    v39 = gCUUserAlertMap;
  }

  v42 = [MEMORY[0x1E696AD98] numberWithLong:v38];
  [v39 setObject:self forKeyedSubscript:v42];

  pthread_mutex_unlock(&gCUUserAlertMutex);
  RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v38, _responseCallback, 0);
  v49 = RunLoopSource;
  if (!RunLoopSource)
  {
    v51 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "Create alert RLS failed", v44, v45, v46, v47, v48, v53);
    goto LABEL_37;
  }

  self->_userRLS = RunLoopSource;
  Main = CFRunLoopGetMain();
  CFRunLoopAddSource(Main, v49, *MEMORY[0x1E695E8E0]);
  (*(v5 + 2))(v5, 0);
LABEL_34:

  v6[2](v6);
  _Block_object_dispose(&v58, 8);
}

uint64_t __39__CUUserAlert__activateWithCompletion___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(*(result + 48) + 8) + 40);
  if (!v8)
  {
    return result;
  }

  v9 = result;
  if (gLogCategory_CUUserAlert <= 90)
  {
    if (gLogCategory_CUUserAlert == -1)
    {
      if (!_LogCategory_Initialize(&gLogCategory_CUUserAlert, 0x5Au))
      {
        goto LABEL_7;
      }

      v8 = *(*(v9[6] + 8) + 40);
    }

    v10 = NSPrintF("%{error}", a2, a3, a4, a5, a6, a7, a8, v8);
    LogPrintF_safe(&gLogCategory_CUUserAlert, "[CUUserAlert _activateWithCompletion:]_block_invoke", 0x5Au, "### Activate failed: %@", v11, v12, v13, v14, v10);
  }

LABEL_7:
  (*(v9[5] + 16))();
  v15 = v9[4];

  return [v15 _autoInvalidate];
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__CUUserAlert_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E73A49A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __38__CUUserAlert_activateWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (*(v9 + 8) == 1)
  {
    v10 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960575, "activate already called", a4, a5, a6, a7, a8, v39);
    v40 = v10;
    if (gLogCategory_CUUserAlert <= 90)
    {
      if (gLogCategory_CUUserAlert != -1 || (v34 = _LogCategory_Initialize(&gLogCategory_CUUserAlert, 0x5Au), v10 = v40, v34))
      {
        v17 = NSPrintF("%{error}", v10, v11, v12, v13, v14, v15, v16, v10);
        LogPrintF_safe(&gLogCategory_CUUserAlert, "[CUUserAlert activateWithCompletion:]_block_invoke", 0x5Au, "### Activate failed: %@", v18, v19, v20, v21, v17);
      }
    }

    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) _autoInvalidate];
LABEL_16:

    return;
  }

  if (*(v9 + 9) == 1)
  {
    v22 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294896148, "activate after invalidate", a4, a5, a6, a7, a8, v39);
    v40 = v22;
    if (gLogCategory_CUUserAlert <= 90)
    {
      if (gLogCategory_CUUserAlert != -1 || (v35 = _LogCategory_Initialize(&gLogCategory_CUUserAlert, 0x5Au), v22 = v40, v35))
      {
        v29 = NSPrintF("%{error}", v22, v23, v24, v25, v26, v27, v28, v22);
        LogPrintF_safe(&gLogCategory_CUUserAlert, "[CUUserAlert activateWithCompletion:]_block_invoke", 0x5Au, "### Activate failed: %@", v30, v31, v32, v33, v29);
      }
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_16;
  }

  if (gLogCategory_CUUserAlert <= 30)
  {
    if (gLogCategory_CUUserAlert != -1 || (v36 = _LogCategory_Initialize(&gLogCategory_CUUserAlert, 0x1Eu), v9 = *(a1 + 32), v36))
    {
      LogPrintF_safe(&gLogCategory_CUUserAlert, "[CUUserAlert activateWithCompletion:]_block_invoke", 0x1Eu, "Activate: Timeout %.3f", a5, a6, a7, a8, *(v9 + 112));
      v9 = *(a1 + 32);
    }
  }

  *(v9 + 8) = 1;
  v37 = *(a1 + 32);
  v38 = *(a1 + 40);

  [v37 _activateWithCompletion:v38];
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateDone)
  {
    FatalErrorF("Activate without invalidate", a2, v2, v3, v4, v5, v6, v7, v8.receiver);
  }

  v8.receiver = self;
  v8.super_class = CUUserAlert;
  [(CUUserAlert *)&v8 dealloc];
}

- (CUUserAlert)init
{
  v6.receiver = self;
  v6.super_class = CUUserAlert;
  v2 = [(CUUserAlert *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v4 = v3;
  }

  return v3;
}

@end