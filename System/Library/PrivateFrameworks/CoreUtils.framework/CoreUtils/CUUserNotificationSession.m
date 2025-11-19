@interface CUUserNotificationSession
+ (void)addMockSession:(id)a3 mockID:(id)a4;
+ (void)removeMockSession:(id)a3 mockID:(id)a4;
+ (void)reportAction:(int)a3 error:(id)a4 mockID:(id)a5;
- (BOOL)_runInit:(id *)a3;
- (BOOL)_runRequestAddStart:(id *)a3;
- (BOOL)_runResponse:(id)a3 error:(id *)a4;
- (CUUserNotificationSession)init;
- (void)_invalidate;
- (void)_invalidated;
- (void)_reportError:(id)a3;
- (void)_reportTimeout;
- (void)_run;
- (void)_runAuthorizeCheckStart;
- (void)_runAuthorizeRequestStart;
- (void)_updateActionCategories;
- (void)activate;
- (void)addActionWithIdentifier:(id)a3 title:(id)a4 flags:(unsigned int)a5 handler:(id)a6;
- (void)dealloc;
- (void)invalidate;
- (void)removeActionWithIdentifier:(id)a3;
- (void)removeAllActions;
- (void)setLabel:(id)a3;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation CUUserNotificationSession

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __105__CUUserNotificationSession_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke;
  v15[3] = &unk_1E73A4108;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(dispatchQueue, v15);
}

void __105__CUUserNotificationSession_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (v9 == *(v10 + 64))
  {
    v12 = [*(a1 + 48) notification];
    v13 = [v12 request];

    v14 = [v13 content];
    v15 = [v14 categoryIdentifier];

    if ([v15 isEqual:*(*(a1 + 40) + 120)])
    {
      v20 = [v13 identifier];
      v25 = [v20 isEqual:*(*(a1 + 40) + 184)];
      v26 = *(a1 + 40);
      if (v25)
      {
        v27 = *(a1 + 48);
        v37 = 0;
        [v26 _runResponse:v27 error:&v37];
        v32 = v37;
        if (!v32)
        {
          goto LABEL_26;
        }

        v33 = *(*(a1 + 40) + 72);
        if (*v33 > 90)
        {
          goto LABEL_26;
        }

        if (*v33 == -1)
        {
          if (!_LogCategory_Initialize(v33, 0x5Au))
          {
            goto LABEL_26;
          }

          v33 = *(*(a1 + 40) + 72);
        }

        LogPrintF(v33, "[CUUserNotificationSession userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]_block_invoke", 0x5Au, "### Response failed: %{error}\n", v28, v29, v30, v31, v32);
LABEL_26:
        (*(*(a1 + 56) + 16))();

        goto LABEL_27;
      }

      v36 = v26[9];
      if (*v36 <= 30)
      {
        if (*v36 == -1)
        {
          if (!_LogCategory_Initialize(v26[9], 0x1Eu))
          {
            goto LABEL_24;
          }

          v36 = *(*(a1 + 40) + 72);
        }

        LogPrintF(v36, "[CUUserNotificationSession userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]_block_invoke", 0x1Eu, "Response wrong ID: %@ vs %@\n", v21, v22, v23, v24, v20);
      }

LABEL_24:
      (*(*(a1 + 56) + 16))();
LABEL_27:

      goto LABEL_28;
    }

    v34 = *(*(a1 + 40) + 72);
    if (*v34 <= 30)
    {
      if (*v34 == -1)
      {
        if (!_LogCategory_Initialize(v34, 0x1Eu))
        {
          goto LABEL_22;
        }

        v34 = *(*(a1 + 40) + 72);
      }

      LogPrintF(v34, "[CUUserNotificationSession userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]_block_invoke", 0x1Eu, "Response wrong category: %@ vs %@\n", v16, v17, v18, v19, v15);
    }

LABEL_22:
    (*(*(a1 + 56) + 16))();
LABEL_28:

    return;
  }

  v11 = *(v10 + 72);
  if (*v11 <= 30)
  {
    if (*v11 == -1)
    {
      if (!_LogCategory_Initialize(v11, 0x1Eu))
      {
        goto LABEL_15;
      }

      v9 = *(a1 + 32);
      v11 = *(*(a1 + 40) + 72);
    }

    LogPrintF(v11, "[CUUserNotificationSession userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]_block_invoke", 0x1Eu, "Response wrong center: %{ptr} vs %{ptr}\n", a5, a6, a7, a8, v9);
  }

LABEL_15:
  v35 = *(*(a1 + 56) + 16);

  v35();
}

- (BOOL)_runResponse:(id)a3 error:(id *)a4
{
  v12 = [a3 actionIdentifier];
  if (v12)
  {
    v19 = self->_requestIdentifier;
    if (v19)
    {
      v20 = getUNNotificationDefaultActionIdentifier();
      v21 = [v12 isEqual:v20];

      if (v21)
      {
        ucat = self->_ucat;
        if (ucat->var0 > 30)
        {
          goto LABEL_16;
        }

        if (ucat->var0 == -1)
        {
          if (!_LogCategory_Initialize(ucat, 0x1Eu))
          {
LABEL_16:
            v43 = _Block_copy(self->_actionHandler);
            v44 = v43;
            if (v43)
            {
              v45 = v43[2];
LABEL_21:
              v45();
              goto LABEL_22;
            }

            goto LABEL_22;
          }

          ucat = self->_ucat;
        }

        LogPrintF(ucat, "[CUUserNotificationSession _runResponse:error:]", 0x1Eu, "Request action default: %@\n", v22, v23, v24, v25, v19);
        goto LABEL_16;
      }

      v27 = getUNNotificationDismissActionIdentifier();
      v28 = [v12 isEqual:v27];

      if (v28)
      {
        v33 = self->_ucat;
        if (v33->var0 > 30)
        {
          goto LABEL_19;
        }

        if (v33->var0 == -1)
        {
          if (!_LogCategory_Initialize(v33, 0x1Eu))
          {
LABEL_19:
            v46 = _Block_copy(self->_actionHandler);
            v44 = v46;
            if (v46)
            {
              v45 = v46[2];
              goto LABEL_21;
            }

LABEL_22:

LABEL_27:
            v49 = 1;
LABEL_28:

            goto LABEL_29;
          }

          v33 = self->_ucat;
        }

        LogPrintF(v33, "[CUUserNotificationSession _runResponse:error:]", 0x1Eu, "Request action dismiss: %@\n", v29, v30, v31, v32, v19);
        goto LABEL_19;
      }

      v34 = [(NSMutableDictionary *)self->_actions objectForKeyedSubscript:v12];
      if (v34)
      {
        v41 = v34;
        v42 = self->_ucat;
        if (v42->var0 <= 30)
        {
          if (v42->var0 == -1)
          {
            if (!_LogCategory_Initialize(v42, 0x1Eu))
            {
              goto LABEL_24;
            }

            v42 = self->_ucat;
          }

          LogPrintF(v42, "[CUUserNotificationSession _runResponse:error:]", 0x1Eu, "Request action: %@, %@\n", v37, v38, v39, v40, v19);
        }

LABEL_24:
        v47 = [v41 handler];
        v48 = v47;
        if (v47)
        {
          (*(v47 + 16))(v47);
        }

        goto LABEL_27;
      }

      if (a4)
      {
        NSErrorWithOSStatusF(4294960584, "Request action unknown: '%@'", v35, v36, v37, v38, v39, v40, v12);
        goto LABEL_34;
      }
    }

    else if (a4)
    {
      NSErrorWithOSStatusF(4294960588, "No identifier", v13, v14, v15, v16, v17, v18, v51);
LABEL_34:
      *a4 = v49 = 0;
      goto LABEL_28;
    }

    v49 = 0;
    goto LABEL_28;
  }

  if (a4)
  {
    NSErrorWithOSStatusF(4294960591, "No actionID", v6, v7, v8, v9, v10, v11, v51);
    *a4 = v49 = 0;
  }

  else
  {
    v49 = 0;
  }

LABEL_29:

  return v49;
}

- (BOOL)_runRequestAddStart:(id *)a3
{
  stepError = self->_stepError;
  self->_stepError = 0;

  self->_stepState = 1;
  v12 = self->_bundleID;
  if (v12)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/System/Library/UserNotifications/Bundles/%@.bundle"];
    v14 = [MEMORY[0x1E696AAE8] bundleWithPath:v13];
    if (![v14 _cfBundle])
    {
      if (a3)
      {
        NSErrorWithOSStatusF(4294960591, "No bundle found: '%@'", v15, v16, v17, v18, v19, v20, v12);
        *a3 = v29 = 0;
      }

      else
      {
        v29 = 0;
      }

      goto LABEL_53;
    }

    v21 = objc_alloc_init(getUNMutableNotificationContentClass[0]());
    v28 = self->_categoryID;
    v29 = v28 != 0;
    if (!v28)
    {
      if (a3)
      {
        *a3 = NSErrorWithOSStatusF(4294960591, "No categoryID", v22, v23, v24, v25, v26, v27, v12);
      }

      goto LABEL_52;
    }

    [v21 setCategoryIdentifier:v28];
    v30 = self->_header;
    if (v30)
    {
      [v21 setHeader:v30];
    }

    v82 = v28 != 0;
    v31 = self->_icon;
    if (v31)
    {
      [v21 setIcon:v31];
    }

    v79 = v31;
    v32 = self->_iconAppIdentifier;
    v83 = v32;
    if (v32)
    {
      v33 = [getUNNotificationIconClass[0]() iconForApplicationIdentifier:v32];
      [v21 setIcon:v33];
    }

    v34 = self->_iconName;
    v78 = v34;
    if (v34)
    {
      v35 = [getUNNotificationIconClass[0]() iconNamed:v34];
      [v21 setIcon:v35];
    }

    v36 = self->_iconPath;
    v77 = v36;
    if (v36)
    {
      v37 = [getUNNotificationIconClass[0]() iconAtPath:v36];
      [v21 setIcon:v37];
    }

    v38 = self->_iconSystemName;
    v76 = v38;
    if (v38)
    {
      v39 = [getUNNotificationIconClass[0]() iconForSystemImageNamed:v38];
      [v21 setIcon:v39];
    }

    v40 = self->_titleKey;
    if (v40)
    {
      v41 = [MEMORY[0x1E696AEC0] localizedUserNotificationStringForKey:v40 arguments:self->_titleArguments];
      [v21 setTitle:v41];
    }

    v42 = self->_subtitleKey;
    v74 = v42;
    if (v42)
    {
      v43 = [MEMORY[0x1E696AEC0] localizedUserNotificationStringForKey:v42 arguments:self->_subtitleArguments];
      [v21 setSubtitle:v43];
    }

    v44 = self->_bodyKey;
    v73 = v44;
    if (v44)
    {
      v45 = [MEMORY[0x1E696AEC0] localizedUserNotificationStringForKey:v44 arguments:self->_bodyArguments];
      [v21 setBody:v45];
    }

    if ((self->_interruptionLevel - 1) <= 3)
    {
      [v21 setInterruptionLevel:?];
    }

    if (self->_flags)
    {
      [v21 setShouldAuthenticateDefaultAction:1];
    }

    [v21 setShouldBackgroundDefaultAction:1];
    flags = self->_flags;
    if ((flags & 8) != 0)
    {
      [v21 setShouldSuppressDefaultAction:1];
      flags = self->_flags;
      if ((flags & 0x10) == 0)
      {
LABEL_28:
        if ((flags & 0x40) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_44;
      }
    }

    else if ((flags & 0x10) == 0)
    {
      goto LABEL_28;
    }

    [v21 setShouldIgnoreDoNotDisturb:1];
    flags = self->_flags;
    if ((flags & 0x40) == 0)
    {
LABEL_29:
      if ((flags & 0x80) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

LABEL_44:
    [v21 setShouldShowSubordinateIcon:1];
    if ((self->_flags & 0x80) == 0)
    {
LABEL_31:
      if (self->_sound)
      {
        [v21 setSound:?];
      }

      v80 = v30;
      soundAlertType = self->_soundAlertType;
      if (soundAlertType)
      {
        v48 = [getUNNotificationSoundClass[0]() soundWithAlertType:soundAlertType];
        [v21 setSound:v48];
      }

      v75 = v40;
      v49 = self->_userInfo;
      if (v49)
      {
        [v21 setUserInfo:v49];
      }

      v54 = self->_identifier;
      if (!v54)
      {
        v55 = [MEMORY[0x1E696AFB0] UUID];
        v54 = [v55 UUIDString];

        objc_storeStrong(&self->_identifier, v54);
      }

      ucat = self->_ucat;
      v57 = v83;
      if (ucat->var0 > 30)
      {
        goto LABEL_47;
      }

      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x1Eu))
        {
          goto LABEL_47;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUUserNotificationSession _runRequestAddStart:]", 0x1Eu, "Request add start: Category %@, ID %@\n", v50, v51, v52, v53, v28);
LABEL_47:
      v81 = v28;
      objc_storeStrong(&self->_requestIdentifier, v54);
      v58 = [getUNNotificationRequestClass[0]() requestWithIdentifier:v54 content:v21 trigger:0];
      v59 = self->_unCenter;
      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 3221225472;
      v85[2] = __49__CUUserNotificationSession__runRequestAddStart___block_invoke;
      v85[3] = &unk_1E73A4200;
      v85[4] = self;
      v85[5] = v59;
      v60 = v54;
      v86 = v60;
      [(UNUserNotificationCenter *)v59 addNotificationRequest:v58 withCompletionHandler:v85];
      if (self->_timeoutSeconds > 0.0)
      {
        v72 = v14;
        v61 = v13;
        v62 = v12;
        timer = self->_timer;
        if (timer)
        {
          v64 = timer;
          dispatch_source_cancel(v64);
          v65 = self->_timer;
          self->_timer = 0;
        }

        v66 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
        v67 = self->_timer;
        self->_timer = v66;
        v68 = v66;

        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __49__CUUserNotificationSession__runRequestAddStart___block_invoke_3;
        handler[3] = &unk_1E73A49F0;
        handler[4] = v68;
        handler[5] = self;
        dispatch_source_set_event_handler(v68, handler);
        v69 = dispatch_time(0, (self->_timeoutSeconds * 1000000000.0));
        dispatch_source_set_timer(v68, v69, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
        dispatch_activate(v68);

        v12 = v62;
        v13 = v61;
        v14 = v72;
        v57 = v83;
      }

      v29 = v82;
      v28 = v81;
LABEL_52:

LABEL_53:
      goto LABEL_54;
    }

LABEL_30:
    [v21 setShouldDisplayActionsInline:1];
    goto LABEL_31;
  }

  if (a3)
  {
    NSErrorWithOSStatusF(4294960591, "No bundleID", v6, v7, v8, v9, v10, v11, v71);
    *a3 = v29 = 0;
  }

  else
  {
    v29 = 0;
  }

LABEL_54:

  return v29;
}

void __49__CUUserNotificationSession__runRequestAddStart___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v4 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v5 = *(a1 + 32);
  v8[2] = __49__CUUserNotificationSession__runRequestAddStart___block_invoke_2;
  v8[3] = &unk_1E73A40E0;
  v6 = *(v5 + 128);
  v9 = v4;
  v10 = *(a1 + 48);
  v11 = v3;
  v7 = v3;
  dispatch_async(v6, v8);
}

void *__49__CUUserNotificationSession__runRequestAddStart___block_invoke_3(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  v4 = result[7];
  if (v3 == v4)
  {
    if (v3)
    {
      v5 = v4;
      dispatch_source_cancel(v5);
      v6 = *(a1 + 40);
      v7 = *(v6 + 56);
      *(v6 + 56) = 0;

      result = *(a1 + 40);
    }

    return [result _reportTimeout];
  }

  return result;
}

uint64_t __49__CUUserNotificationSession__runRequestAddStart___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(result + 40);
  if (*(result + 32) != *(v9 + 64))
  {
    return result;
  }

  v10 = result;
  v11 = *(v9 + 72);
  if (*v11 <= 30)
  {
    if (*v11 == -1)
    {
      v12 = _LogCategory_Initialize(v11, 0x1Eu);
      v9 = *(v10 + 40);
      if (!v12)
      {
        goto LABEL_6;
      }

      v11 = *(v9 + 72);
    }

    LogPrintF(v11, "[CUUserNotificationSession _runRequestAddStart:]_block_invoke_2", 0x1Eu, "Request added: %@, %{error}\n", a5, a6, a7, a8, *(v10 + 48));
    v9 = *(v10 + 40);
  }

LABEL_6:
  if (*(v10 + 56))
  {
    v13 = 3;
  }

  else
  {
    v13 = 4;
  }

  *(v9 + 48) = v13;
  objc_storeStrong((*(v10 + 40) + 40), *(v10 + 56));
  v14 = *(v10 + 40);

  return [v14 _run];
}

- (void)_runAuthorizeRequestStart
{
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_5;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUUserNotificationSession _runAuthorizeRequestStart]", 0x1Eu, "Authorize request\n", v2, v3, v4, v5, v11[0]);
  }

LABEL_5:
  stepError = self->_stepError;
  self->_stepError = 0;

  self->_stepState = 1;
  unCenter = self->_unCenter;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__CUUserNotificationSession__runAuthorizeRequestStart__block_invoke;
  v11[3] = &unk_1E73A40B8;
  v11[4] = self;
  v11[5] = unCenter;
  v10 = unCenter;
  [(UNUserNotificationCenter *)v10 requestAuthorizationWithOptions:6 completionHandler:v11];
}

void __54__CUUserNotificationSession__runAuthorizeRequestStart__block_invoke(int8x16_t *a1, char a2, void *a3)
{
  v5 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v6 = vextq_s8(a1[2], a1[2], 8uLL);
  v7 = a1[2].i64[0];
  v10[2] = __54__CUUserNotificationSession__runAuthorizeRequestStart__block_invoke_2;
  v10[3] = &unk_1E73A4090;
  v8 = *(v7 + 128);
  v11 = v6;
  v13 = a2;
  v12 = v5;
  v9 = v5;
  dispatch_async(v8, v10);
}

uint64_t __54__CUUserNotificationSession__runAuthorizeRequestStart__block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(result + 40);
  if (*(result + 32) != *(v9 + 64))
  {
    return result;
  }

  v10 = result;
  v11 = *(v9 + 72);
  if (*v11 <= 30)
  {
    if (*v11 != -1)
    {
LABEL_4:
      v12 = "no";
      if (*(v10 + 56))
      {
        v12 = "yes";
      }

      LogPrintF(v11, "[CUUserNotificationSession _runAuthorizeRequestStart]_block_invoke_2", 0x1Eu, "Authorize response: Granted %s, %{error}\n", a5, a6, a7, a8, v12);
      v9 = *(v10 + 40);
      goto LABEL_8;
    }

    v13 = _LogCategory_Initialize(v11, 0x1Eu);
    v9 = *(v10 + 40);
    if (v13)
    {
      v11 = *(v9 + 72);
      goto LABEL_4;
    }
  }

LABEL_8:
  if (*(v10 + 56))
  {
    v14 = 4;
  }

  else
  {
    v14 = 3;
  }

  *(v9 + 48) = v14;
  objc_storeStrong((*(v10 + 40) + 40), *(v10 + 48));
  v15 = *(v10 + 40);

  return [v15 _run];
}

- (void)_runAuthorizeCheckStart
{
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_5;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUUserNotificationSession _runAuthorizeCheckStart]", 0x1Eu, "Authorization status request\n", v2, v3, v4, v5, v11[0]);
  }

LABEL_5:
  stepError = self->_stepError;
  self->_stepError = 0;

  self->_stepState = 1;
  unCenter = self->_unCenter;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__CUUserNotificationSession__runAuthorizeCheckStart__block_invoke;
  v11[3] = &unk_1E73A4068;
  v11[4] = self;
  v11[5] = unCenter;
  v10 = unCenter;
  [(UNUserNotificationCenter *)v10 getNotificationSettingsWithCompletionHandler:v11];
}

void __52__CUUserNotificationSession__runAuthorizeCheckStart__block_invoke(int8x16_t *a1, void *a2)
{
  v3 = [a2 authorizationStatus];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v4 = vextq_s8(a1[2], a1[2], 8uLL);
  v5 = a1[2].i64[0];
  block[2] = __52__CUUserNotificationSession__runAuthorizeCheckStart__block_invoke_2;
  block[3] = &unk_1E73A4040;
  v6 = *(v5 + 128);
  v8 = v4;
  v9 = v3;
  dispatch_async(v6, block);
}

uint64_t __52__CUUserNotificationSession__runAuthorizeCheckStart__block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(result + 40);
  if (*(result + 32) != *(v9 + 64))
  {
    return result;
  }

  v10 = result;
  v11 = *(v9 + 72);
  if (*v11 <= 30)
  {
    if (*v11 == -1)
    {
      if (!_LogCategory_Initialize(v11, 0x1Eu))
      {
        goto LABEL_10;
      }

      v11 = *(*(v10 + 40) + 72);
    }

    v12 = *(v10 + 48);
    if (v12 > 3)
    {
      v13 = "?";
    }

    else
    {
      v13 = off_1E73A41B0[v12];
    }

    LogPrintF(v11, "[CUUserNotificationSession _runAuthorizeCheckStart]_block_invoke_2", 0x1Eu, "Authorization status response: %s\n", a5, a6, a7, a8, v13);
  }

LABEL_10:
  v14 = *(v10 + 48);
  if ((v14 - 2) < 2)
  {
    v15 = *(v10 + 40);
    v16 = 2;
  }

  else
  {
    if (v14 == 1)
    {
      *(*(v10 + 40) + 48) = 3;
      v17 = NSErrorWithOSStatusF(4294896150, "Authorization status denied", a3, a4, a5, a6, a7, a8, v21);
      v18 = *(v10 + 40);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      goto LABEL_16;
    }

    v15 = *(v10 + 40);
    v16 = 4;
  }

  *(v15 + 48) = v16;
LABEL_16:
  v20 = *(v10 + 40);

  return [v20 _run];
}

- (BOOL)_runInit:(id *)a3
{
  v11 = self->_bundleID;
  if (v11)
  {
    v18 = self->_categoryID;
    if (v18)
    {
      v25 = [objc_alloc(getUNUserNotificationCenterClass[0]()) initWithBundleIdentifier:v11];
      v26 = v25 != 0;
      if (v25)
      {
        objc_storeStrong(&self->_unCenter, v25);
        [v25 setDelegate:self];
        [v25 setWantsNotificationResponsesDelivered];
        [(CUUserNotificationSession *)self _updateActionCategories];
      }

      else if (a3)
      {
        *a3 = NSErrorWithOSStatusF(4294960591, "No UN center", v19, v20, v21, v22, v23, v24, v28);
      }
    }

    else if (a3)
    {
      NSErrorWithOSStatusF(4294960591, "No categoryID", v12, v13, v14, v15, v16, v17, v28);
      *a3 = v26 = 0;
    }

    else
    {
      v26 = 0;
    }
  }

  else if (a3)
  {
    NSErrorWithOSStatusF(4294960591, "No bundleID", v5, v6, v7, v8, v9, v10, v28);
    *a3 = v26 = 0;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (void)_run
{
  while (!self->_invalidateCalled)
  {
    state = self->_state;
    if (state > 11)
    {
      if (state > 13)
      {
        if (state == 14)
        {
          v16 = 0;
          [(CUUserNotificationSession *)self _runRequestAddStart:&v16];
          v15 = v16;
          if (!v15)
          {
            ++self->_state;
            goto LABEL_31;
          }

          goto LABEL_30;
        }

        if (state != 15)
        {
          goto LABEL_34;
        }

        stepError = self->_stepError;
        if (stepError)
        {
          [(CUUserNotificationSession *)self _reportError:?];
        }

        stepState = self->_stepState;
        if (stepState == 1)
        {
          goto LABEL_34;
        }

        if (stepState == 4)
        {
          goto LABEL_33;
        }

        v11 = 4294960596;
        v12 = "Request add failed";
      }

      else
      {
        if (state == 12)
        {
          [(CUUserNotificationSession *)self _runAuthorizeRequestStart];
LABEL_33:
          ++self->_state;
          goto LABEL_34;
        }

        stepError = self->_stepError;
        if (stepError)
        {
          [(CUUserNotificationSession *)self _reportError:?];
        }

        v10 = self->_stepState;
        if (v10 == 1)
        {
          goto LABEL_34;
        }

        if (v10 == 4)
        {
          goto LABEL_33;
        }

        v11 = 4294896150;
        v12 = "Authorize request failed";
      }

      v15 = NSErrorWithOSStatusF(v11, v12, stepError, v2, v3, v4, v5, v6, v16);
LABEL_30:
      [(CUUserNotificationSession *)self _reportError:v15];
      goto LABEL_31;
    }

    if (!state)
    {
      v17 = 0;
      [(CUUserNotificationSession *)self _runInit:&v17];
      v15 = v17;
      if (!v15)
      {
        self->_state = 10;
LABEL_31:

        goto LABEL_34;
      }

      goto LABEL_30;
    }

    if (state == 10)
    {
      [(CUUserNotificationSession *)self _runAuthorizeCheckStart];
      goto LABEL_33;
    }

    if (state != 11)
    {
      goto LABEL_34;
    }

    if (self->_stepError)
    {
      [(CUUserNotificationSession *)self _reportError:?];
    }

    v13 = self->_stepState;
    if (v13 == 1)
    {
      goto LABEL_34;
    }

    if (v13 != 2)
    {
      goto LABEL_33;
    }

    self->_state = 14;
LABEL_34:
    if (self->_state == state)
    {
      return;
    }
  }
}

- (void)_reportTimeout
{
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[CUUserNotificationSession _reportTimeout]", 0x1Eu, "Timeout\n", v2, v3, v4, v5, v10);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(ucat, 0x1Eu))
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  v8 = _Block_copy(self->_actionHandler);
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, 5, 0);
  }

  [(CUUserNotificationSession *)self _invalidate];
}

- (void)_reportError:(id)a3
{
  v13 = a3;
  ucat = self->_ucat;
  if (ucat->var0 <= 90)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x5Au))
      {
        goto LABEL_9;
      }

      ucat = self->_ucat;
    }

    state = self->_state;
    if (state > 0x10)
    {
      v10 = "?";
    }

    else
    {
      v10 = off_1E73A4128[state];
    }

    LogPrintF(ucat, "[CUUserNotificationSession _reportError:]", 0x5Au, "### Failed: %s, %{error}\n", v4, v5, v6, v7, v10);
  }

LABEL_9:
  self->_state = 3;
  v11 = _Block_copy(self->_actionHandler);
  v12 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11, 4, v13);
  }
}

- (void)_updateActionCategories
{
  if (self->_actionsChanged)
  {
    v12[9] = v2;
    v12[10] = v3;
    categoryID = self->_categoryID;
    if (categoryID)
    {
      v6 = MEMORY[0x1E695DF70];
      v7 = categoryID;
      v8 = objc_alloc_init(v6);
      actions = self->_actions;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __52__CUUserNotificationSession__updateActionCategories__block_invoke;
      v12[3] = &unk_1E73A4018;
      v12[4] = v8;
      [(NSMutableDictionary *)actions enumerateKeysAndObjectsUsingBlock:v12];
      v11 = [getUNNotificationCategoryClass[0]() categoryWithIdentifier:v7 actions:v8 intentIdentifiers:MEMORY[0x1E695E0F0] options:1];
      v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&v11 count:1];
      [(UNUserNotificationCenter *)self->_unCenter setNotificationCategories:v10];
      self->_actionsChanged = 0;
    }
  }
}

void __52__CUUserNotificationSession__updateActionCategories__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 action];
  [v3 addObject:v4];
}

- (void)removeAllActions
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CUUserNotificationSession_removeAllActions__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__45__CUUserNotificationSession_removeAllActions__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  if (*v3 <= 30)
  {
    if (*v3 != -1)
    {
LABEL_3:
      v4 = [*(v2 + 8) count];
      LogPrintF(v3, "[CUUserNotificationSession removeAllActions]_block_invoke", 0x1Eu, "Remove all actions: %d total\n", v5, v6, v7, v8, v4);
      v2 = *(a1 + 32);
      goto LABEL_5;
    }

    v9 = _LogCategory_Initialize(*(v2 + 72), 0x1Eu);
    v2 = *(a1 + 32);
    if (v9)
    {
      v3 = *(v2 + 72);
      goto LABEL_3;
    }
  }

LABEL_5:
  [*(v2 + 8) removeAllObjects];
  *(*(a1 + 32) + 16) = 1;
  result = *(a1 + 32);
  if (result[8])
  {

    return [result _updateActionCategories];
  }

  return result;
}

- (void)removeActionWithIdentifier:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__CUUserNotificationSession_removeActionWithIdentifier___block_invoke;
  v7[3] = &unk_1E73A49F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __56__CUUserNotificationSession_removeActionWithIdentifier___block_invoke(uint64_t a1)
{
  v12 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  [*(*(a1 + 32) + 8) setObject:0 forKeyedSubscript:*(a1 + 40)];
  *(*(a1 + 32) + 16) = 1;
  v2 = *(a1 + 32);
  v3 = v2[9];
  if (*v3 <= 30)
  {
    if (*v3 != -1)
    {
LABEL_3:
      v4 = *(a1 + 40);
      v5 = [v12 action];
      v11 = [v5 title];
      LogPrintF(v3, "[CUUserNotificationSession removeActionWithIdentifier:]_block_invoke", 0x1Eu, "Remove action: %@, '%@'\n", v6, v7, v8, v9, v4);

      v2 = *(a1 + 32);
      goto LABEL_5;
    }

    v10 = _LogCategory_Initialize(v2[9], 0x1Eu);
    v2 = *(a1 + 32);
    if (v10)
    {
      v3 = v2[9];
      goto LABEL_3;
    }
  }

LABEL_5:
  if (v2[8])
  {
    [v2 _updateActionCategories];
  }
}

- (void)addActionWithIdentifier:(id)a3 title:(id)a4 flags:(unsigned int)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [getUNNotificationActionClass[0]() actionWithIdentifier:v10 title:v11 options:a5 & 7];
  dispatchQueue = self->_dispatchQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __73__CUUserNotificationSession_addActionWithIdentifier_title_flags_handler___block_invoke;
  v19[3] = &unk_1E73A3FF0;
  v23 = v11;
  v24 = v12;
  v20 = v13;
  v21 = self;
  v22 = v10;
  v25 = a5;
  v15 = v11;
  v16 = v10;
  v17 = v12;
  v18 = v13;
  dispatch_async(dispatchQueue, v19);
}

void __73__CUUserNotificationSession_addActionWithIdentifier_title_flags_handler___block_invoke(void *a1)
{
  v13 = objc_alloc_init(CUUserNotificationCustomAction);
  [(CUUserNotificationCustomAction *)v13 setAction:a1[4]];
  [(CUUserNotificationCustomAction *)v13 setHandler:a1[8]];
  v2 = *(a1[5] + 8);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = a1[5];
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;

    v2 = *(a1[5] + 8);
  }

  [v2 setObject:v13 forKeyedSubscript:a1[6]];
  *(a1[5] + 16) = 1;
  v10 = a1[5];
  if (v10[8])
  {
    v11 = v10[9];
    if (*v11 <= 30)
    {
      if (*v11 == -1)
      {
        v12 = _LogCategory_Initialize(v11, 0x1Eu);
        v10 = a1[5];
        if (!v12)
        {
          goto LABEL_8;
        }

        v11 = v10[9];
      }

      LogPrintF(v11, "[CUUserNotificationSession addActionWithIdentifier:title:flags:handler:]_block_invoke", 0x1Eu, "Add action: %@, '%@', %#{flags}\n", v6, v7, v8, v9, a1[6]);
      v10 = a1[5];
    }

LABEL_8:
    [v10 _updateActionCategories];
  }
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    v3 = _Block_copy(self->_actionHandler);
    v4 = v3;
    if (v3)
    {
      (*(v3 + 2))(v3, 3, 0);
    }

    actionHandler = self->_actionHandler;
    self->_actionHandler = 0;

    self->_invalidateDone = 1;
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x1Eu))
        {
          return;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUUserNotificationSession _invalidated]", 0x1Eu, "Invalidated\n", v6, v7, v8, v9, v12);
    }
  }
}

- (void)_invalidate
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = self->_unCenter;
  v8 = self->_requestIdentifier;
  if (v8)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x1Eu))
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUUserNotificationSession _invalidate]", 0x1Eu, "Removing request: %@\n", v4, v5, v6, v7, v8);
    }

LABEL_6:
    v16[0] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [(UNUserNotificationCenter *)v3 removePendingNotificationRequestsWithIdentifiers:v10];
    [(UNUserNotificationCenter *)v3 removeDeliveredNotificationsWithIdentifiers:v10];
    requestIdentifier = self->_requestIdentifier;
    self->_requestIdentifier = 0;
  }

  timer = self->_timer;
  if (timer)
  {
    v13 = timer;
    dispatch_source_cancel(v13);
    v14 = self->_timer;
    self->_timer = 0;
  }

  [(UNUserNotificationCenter *)self->_unCenter setDelegate:0];
  unCenter = self->_unCenter;
  self->_unCenter = 0;

  [(CUUserNotificationSession *)self _invalidated];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CUUserNotificationSession_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __39__CUUserNotificationSession_invalidate__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(result + 32);
  if (*(v9 + 18))
  {
    return result;
  }

  v10 = result;
  *(v9 + 18) = 1;
  v11 = *(result + 32);
  v12 = v11[9];
  if (*v12 <= 30)
  {
    if (*v12 == -1)
    {
      v13 = _LogCategory_Initialize(v11[9], 0x1Eu);
      v11 = *(v10 + 32);
      if (!v13)
      {
        goto LABEL_6;
      }

      v12 = v11[9];
    }

    LogPrintF(v12, "[CUUserNotificationSession invalidate]_block_invoke", 0x1Eu, "Invalidate: BundleID %@, Category %@\n", a5, a6, a7, a8, v11[14]);
    v11 = *(v10 + 32);
  }

LABEL_6:

  return [v11 _invalidate];
}

- (void)activate
{
  v3 = [(CUUserNotificationSession *)self mockID];
  if (v3)
  {
    [CUUserNotificationSession addMockSession:self mockID:v3];
  }

  dispatchQueue = self->_dispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__CUUserNotificationSession_activate__block_invoke;
  v6[3] = &unk_1E73A49F0;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(dispatchQueue, v6);
}

uint64_t __37__CUUserNotificationSession_activate__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 32);
  if (*(v8 + 17))
  {
    return result;
  }

  v9 = result;
  *(v8 + 17) = 1;
  v10 = *(result + 32);
  result = *(v10 + 72);
  if (*result <= 30)
  {
    if (*result != -1)
    {
LABEL_4:
      result = LogPrintF_safe(result, "[CUUserNotificationSession activate]_block_invoke", 0x1Eu, "Activate: bundleID=%@, category=%@, mockID=%@", a5, a6, a7, a8, *(v10 + 112));
      goto LABEL_6;
    }

    result = _LogCategory_Initialize(result, 0x1Eu);
    if (result)
    {
      v10 = *(v9 + 32);
      result = *(v10 + 72);
      goto LABEL_4;
    }
  }

LABEL_6:
  if (!*(v9 + 40))
  {
    v11 = *(v9 + 32);

    return [v11 _run];
  }

  return result;
}

- (void)setLabel:(id)a3
{
  objc_storeStrong(&self->_label, a3);
  v13 = a3;
  v5 = qword_1EADEA778;
  v6 = v13;
  [v13 UTF8String];
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v7, v8, v9, v10, v11, v12, v5);
}

- (void)dealloc
{
  v3 = self->_mockID;
  if (v3)
  {
    [CUUserNotificationSession removeMockSession:self mockID:v3];
  }

  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove(ucat);
    self->_ucat = 0;
  }

  v5.receiver = self;
  v5.super_class = CUUserNotificationSession;
  [(CUUserNotificationSession *)&v5 dealloc];
}

- (CUUserNotificationSession)init
{
  v6.receiver = self;
  v6.super_class = CUUserNotificationSession;
  v2 = [(CUUserNotificationSession *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v3->_ucat = &gLogCategory_CUUserNotificationSession;
    v4 = v3;
  }

  return v3;
}

+ (void)reportAction:(int)a3 error:(id)a4 mockID:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  os_unfair_lock_lock(&gMockLock);
  [gMockSessions objectForKeyedSubscript:v8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v22 = 0u;
  v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 dispatchQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __55__CUUserNotificationSession_reportAction_error_mockID___block_invoke;
        block[3] = &unk_1E73A49C8;
        block[4] = v13;
        v18 = a3;
        v17 = v7;
        dispatch_async(v14, block);
      }

      v10 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  os_unfair_lock_unlock(&gMockLock);
}

void __55__CUUserNotificationSession_reportAction_error_mockID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[18] & 1) == 0)
  {
    v3 = [v2 actionHandler];
    if (v3)
    {
      v4 = v3;
      v3[2](v3, *(a1 + 48), *(a1 + 40));
      v3 = v4;
    }
  }
}

+ (void)removeMockSession:(id)a3 mockID:(id)a4
{
  v7 = a4;
  v5 = a3;
  os_unfair_lock_lock(&gMockLock);
  v6 = [gMockSessions objectForKeyedSubscript:v7];
  [v6 removeObject:v5];

  if (![v6 count])
  {
    [gMockSessions setObject:0 forKeyedSubscript:v7];
  }

  os_unfair_lock_unlock(&gMockLock);
}

+ (void)addMockSession:(id)a3 mockID:(id)a4
{
  v10 = a3;
  v5 = a4;
  os_unfair_lock_lock(&gMockLock);
  v6 = [gMockSessions objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:0];
    v7 = gMockSessions;
    if (!gMockSessions)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = gMockSessions;
      gMockSessions = v8;

      v7 = gMockSessions;
    }

    [v7 setObject:v6 forKeyedSubscript:v5];
  }

  [v6 addObject:v10];
  os_unfair_lock_unlock(&gMockLock);
}

@end