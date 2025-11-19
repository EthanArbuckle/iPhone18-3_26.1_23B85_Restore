@interface DAUserAlert
+ (id)accessoryRemovalAlert:(id)a3 appName:(id)a4;
+ (id)accessoryUnpairAlert:(id)a3 appName:(id)a4;
- (DAUserAlert)init;
- (void)_activateWithCompletionHandler:(id)a3;
- (void)_autoInvalidate;
- (void)_invalidated;
- (void)_responseCallback:(__CFUserNotification *)a3 responseFlags:(unint64_t)a4;
- (void)activateWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation DAUserAlert

- (DAUserAlert)init
{
  v6.receiver = self;
  v6.super_class = DAUserAlert;
  v2 = [(DAUserAlert *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v4 = v3;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateDone)
  {
    v2 = [DAUserAlert dealloc];
    [(DAUserAlert *)v2 activateWithCompletionHandler:v3, v4];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = DAUserAlert;
    [(DAUserAlert *)&v5 dealloc];
  }
}

- (void)activateWithCompletionHandler:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__DAUserAlert_activateWithCompletionHandler___block_invoke;
  v7[3] = &unk_278F57DA8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __45__DAUserAlert_activateWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (*(v9 + 8) == 1)
  {
    v15 = DAErrorF(350002, "activate already called", a3, a4, a5, a6, a7, a8, v13);
    if (gLogCategory_DAUserAlert <= 90 && (gLogCategory_DAUserAlert != -1 || _LogCategory_Initialize()))
    {
      __45__DAUserAlert_activateWithCompletionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) _autoInvalidate];
LABEL_11:

    return;
  }

  if (*(v9 + 9) == 1)
  {
    v15 = DAErrorF(350002, "activate after invalidate", a3, a4, a5, a6, a7, a8, v13);
    if (gLogCategory_DAUserAlert <= 90 && (gLogCategory_DAUserAlert != -1 || _LogCategory_Initialize()))
    {
      __45__DAUserAlert_activateWithCompletionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_11;
  }

  if (gLogCategory_DAUserAlert <= 30)
  {
    if (gLogCategory_DAUserAlert != -1 || (v10 = _LogCategory_Initialize(), v9 = *(a1 + 32), v10))
    {
      v14 = *(v9 + 104);
      LogPrintF();
      v9 = *(a1 + 32);
    }
  }

  *(v9 + 8) = 1;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);

  [v11 _activateWithCompletionHandler:v12];
}

- (void)_activateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__2;
  v66 = __Block_byref_object_dispose__2;
  v67 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__DAUserAlert__activateWithCompletionHandler___block_invoke;
  aBlock[3] = &unk_278F57DD0;
  v61 = &v62;
  v5 = v4;
  aBlock[4] = self;
  v60 = v5;
  v6 = _Block_copy(aBlock);
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = self->_titleKey;
  v9 = MEMORY[0x277CBF188];
  if (v8)
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:v8 value:&stru_285B4C350 table:0];

    v12 = self->_titleParameter;
    if (v12)
    {
      v57 = v12;
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v11];

      v11 = v13;
    }

    v14 = *v9;

    [v7 setObject:v11 forKeyedSubscript:v14];
  }

  v15 = self->_localizedTitle;
  if (v15)
  {
    [v7 setObject:v15 forKeyedSubscript:*v9];
  }

  v16 = self->_subTitleKey;
  v17 = MEMORY[0x277CBF198];
  if (v16)
  {
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:v16 value:&stru_285B4C350 table:0];

    v20 = self->_subTitleParameter;
    if (v20)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = objc_alloc(MEMORY[0x277CCACA8]);
        v57 = [v20 unsignedIntValue];
        v22 = [v21 initWithFormat:v19];
      }

      else
      {
        v57 = v20;
        v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v19];
      }

      v23 = v22;

      v19 = v23;
    }

    v24 = *v17;

    [v7 setObject:v19 forKeyedSubscript:v24];
  }

  v25 = self->_localizedMessage;
  if (v25)
  {
    [v7 setObject:v25 forKeyedSubscript:*v17];
  }

  v26 = self->_defaultButtonTitleKey;
  if (v26)
  {
    v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v28 = CULocalizedStringEx();
    v29 = *MEMORY[0x277CBF1E8];

    [v7 setObject:v28 forKeyedSubscript:v29];
  }

  v30 = self->_alternativeButtonTitleKey;
  if (v30)
  {
    v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v32 = CULocalizedStringEx();
    v33 = *MEMORY[0x277CBF1C0];

    [v7 setObject:v32 forKeyedSubscript:v33];
  }

  if (self->_showOnLockScreen)
  {
    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CBF1B0]];
    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D67348]];
    [v7 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D67328]];
    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D672A0]];
  }

  error = 0;
  v34 = CFUserNotificationCreate(0, self->_timeoutSeconds, 2uLL, &error, v7);
  v41 = v34;
  if (!v34)
  {
    v55 = DAErrorF(350004, "Create alert failed (%d)", v35, v36, v37, v38, v39, v40, error);
LABEL_30:
    v56 = v63[5];
    v63[5] = v55;

    goto LABEL_27;
  }

  self->_userNotification = v34;
  pthread_mutex_lock(&gDAUserAlertMutex);
  v42 = gDAUserAlertMap;
  if (!gDAUserAlertMap)
  {
    v43 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v44 = gDAUserAlertMap;
    gDAUserAlertMap = v43;

    v42 = gDAUserAlertMap;
  }

  v45 = [MEMORY[0x277CCABB0] numberWithLong:v41];
  [v42 setObject:self forKeyedSubscript:v45];

  pthread_mutex_unlock(&gDAUserAlertMutex);
  RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v41, _responseCallback, 0);
  v53 = RunLoopSource;
  if (!RunLoopSource)
  {
    v55 = DAErrorF(350004, "Create alert RLS failed", v47, v48, v49, v50, v51, v52, v57);
    goto LABEL_30;
  }

  self->_userRLS = RunLoopSource;
  Main = CFRunLoopGetMain();
  CFRunLoopAddSource(Main, v53, *MEMORY[0x277CBF058]);
  (*(v5 + 2))(v5, 0);
LABEL_27:

  v6[2](v6);
  _Block_object_dispose(&v62, 8);
}

uint64_t __46__DAUserAlert__activateWithCompletionHandler___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (gLogCategory_DAUserAlert <= 90)
  {
    if (gLogCategory_DAUserAlert == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v7 = *(*(v2 + 8) + 40);
    }

    v8 = CUPrintNSError();
    LogPrintF();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  (*(a1[5] + 16))(a1[5]);
  v6 = a1[4];

  return [v6 _autoInvalidate];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__DAUserAlert_invalidate__block_invoke;
  block[3] = &unk_278F57CE0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __25__DAUserAlert_invalidate__block_invoke(uint64_t result)
{
  v1 = result;
  if (gLogCategory_DAUserAlert <= 30)
  {
    if (gLogCategory_DAUserAlert != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __25__DAUserAlert_invalidate__block_invoke_cold_1();
    }
  }

  v2 = *(v1 + 32);
  if ((*(v2 + 9) & 1) == 0)
  {
    *(v2 + 9) = 1;
    v3 = *(v1 + 32);

    return [v3 _autoInvalidate];
  }

  return result;
}

- (void)_autoInvalidate
{
  if (!self->_invalidateCalled && gLogCategory_DAUserAlert <= 30 && (gLogCategory_DAUserAlert != -1 || _LogCategory_Initialize()))
  {
    [DAUserAlert _autoInvalidate];
  }

  self->_invalidateCalled = 1;
  userRLS = self->_userRLS;
  if (userRLS)
  {
    v4 = *MEMORY[0x277CBF058];
    Main = CFRunLoopGetMain();
    CFRunLoopRemoveSource(Main, userRLS, v4);
    CFRelease(userRLS);
    self->_userRLS = 0;
  }

  userNotification = self->_userNotification;
  if (userNotification)
  {
    pthread_mutex_lock(&gDAUserAlertMutex);
    v7 = gDAUserAlertMap;
    v8 = [MEMORY[0x277CCABB0] numberWithLong:userNotification];
    [v7 setObject:0 forKeyedSubscript:v8];

    pthread_mutex_unlock(&gDAUserAlertMutex);
    if (!self->_dismissed)
    {
      CFUserNotificationCancel(userNotification);
    }

    CFRelease(userNotification);
    self->_userNotification = 0;
  }

  [(DAUserAlert *)self _invalidated];
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_userNotification)
  {
    v6 = _Block_copy(self->_actionHandler);
    actionHandler = self->_actionHandler;
    self->_actionHandler = 0;

    if (v6)
    {
      v6[2](v6, 15);
    }

    v4 = _Block_copy(self->_invalidationHandler);
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    if (v4)
    {
      v4[2](v4);
    }

    self->_invalidateDone = 1;
    if (gLogCategory_DAUserAlert <= 30 && (gLogCategory_DAUserAlert != -1 || _LogCategory_Initialize()))
    {
      [DAUserAlert _invalidated];
    }
  }
}

- (void)_responseCallback:(__CFUserNotification *)a3 responseFlags:(unint64_t)a4
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__DAUserAlert__responseCallback_responseFlags___block_invoke;
  block[3] = &unk_278F57DF8;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(dispatchQueue, block);
}

void __47__DAUserAlert__responseCallback_responseFlags___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == *(*(a1 + 32) + 16))
  {
    if (gLogCategory_DAUserAlert <= 30 && (gLogCategory_DAUserAlert != -1 || _LogCategory_Initialize()))
    {
      __47__DAUserAlert__responseCallback_responseFlags___block_invoke_cold_1(a1);
    }

    *(*(a1 + 32) + 11) = 1;
    v3 = qword_2488F0CD0[*(a1 + 48) & 3];
    v6 = _Block_copy(*(*(a1 + 32) + 112));
    v4 = *(a1 + 32);
    v5 = *(v4 + 112);
    *(v4 + 112) = 0;

    if (v6)
    {
      v6[2](v6, v3);
    }

    [*(a1 + 32) _autoInvalidate];
  }
}

+ (id)accessoryRemovalAlert:(id)a3 appName:(id)a4
{
  v5 = MEMORY[0x277CCA8D8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 bundleForClass:objc_opt_class()];
  v9 = CULocalizedStringEx();

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = CULocalizedStringEx();

  v12 = objc_alloc_init(DAUserAlert);
  [(DAUserAlert *)v12 setLocalizedTitle:v9];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:v11, v6, v7];

  [(DAUserAlert *)v12 setLocalizedMessage:v13];
  [(DAUserAlert *)v12 setDefaultButtonTitleKey:@"DeviceRemoveAlertPrimaryKey"];
  [(DAUserAlert *)v12 setAlternativeButtonTitleKey:@"DeviceRemoveAlertSecondaryKey"];

  return v12;
}

+ (id)accessoryUnpairAlert:(id)a3 appName:(id)a4
{
  v5 = MEMORY[0x277CCA8D8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 bundleForClass:objc_opt_class()];
  v9 = CULocalizedStringEx();

  MGGetBoolAnswer();
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = CULocalizedStringEx();

  v12 = objc_alloc_init(DAUserAlert);
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:v9, v7];

  [(DAUserAlert *)v12 setLocalizedTitle:v13];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:v11, v6];

  [(DAUserAlert *)v12 setLocalizedMessage:v14];
  [(DAUserAlert *)v12 setDefaultButtonTitleKey:@"DeviceUnpairAlertPrimaryKey"];
  [(DAUserAlert *)v12 setAlternativeButtonTitleKey:@"DeviceUnpairAlertSecondaryKey"];

  return v12;
}

void __45__DAUserAlert_activateWithCompletionHandler___block_invoke_cold_1()
{
  v0 = CUPrintNSError();
  LogPrintF();
}

@end