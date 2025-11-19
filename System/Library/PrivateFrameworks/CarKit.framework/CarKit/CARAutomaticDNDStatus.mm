@interface CARAutomaticDNDStatus
+ (BOOL)isAutomaticDNDAvailable;
+ (id)_DNDServiceInterface;
- (BOOL)hasAdjustedTriggerMethod;
- (BOOL)hasCompletedFirstRidePreference;
- (BOOL)hasMigratedToDriving;
- (BOOL)hasOptedOutOfAutomaticDND;
- (BOOL)hasStartedFirstRidePreference;
- (BOOL)isAutomaticDNDInternalDNDBuddyPreference;
- (BOOL)isAutomaticDNDInternalExitConfirmationOverrideEnabledPreference;
- (BOOL)isAutomaticDNDInternalForceOverrideEnabledPreference;
- (BOOL)isAutomaticDNDInternalShowGeofencingAlertsEnabledPreference;
- (BOOL)isAutomaticDNDInternalShowUserAlertsEnabledPreference;
- (BOOL)platformSupportsSendingAutoReplies;
- (BOOL)platformSupportsUrgentMessages;
- (BOOL)shouldActivateWithCarPlay;
- (CARAutomaticDNDStatus)init;
- (double)mostRecentTriggerMethodChange;
- (id)disableTimerTimestamp;
- (id)firstBuddyPresentationFirstMoment;
- (unint64_t)automaticDNDTriggeringMethod;
- (void)_detachObservers;
- (void)_dndStateChanged:(BOOL)a3;
- (void)_exitConfirmationStateChanged:(BOOL)a3;
- (void)_performCARPreferencesBlock:(id)a3 forReading:(BOOL)a4;
- (void)_resetUserDNDSettingsWithReply:(id)a3;
- (void)_setupConnection;
- (void)_xpcFetchWithServiceBlock:(id)a3 errorHandler:(id)a4;
- (void)allowedAutoReplyAudience:(id)a3;
- (void)autoReplyMessageWithReply:(id)a3;
- (void)dealloc;
- (void)disableDNDUntilEndOfDriveWithContext:(id)a3 reply:(id)a4;
- (void)fetchAutomaticDNDAssertionWithReply:(id)a3;
- (void)fetchAutomaticDNDExitConfirmationWithReply:(id)a3;
- (void)fetchAutomaticDNDTriggerPreferenceWithReply:(id)a3;
- (void)setActivateWithCarPlay:(BOOL)a3;
- (void)setAllowedAutoReplyAudience:(unint64_t)a3 reply:(id)a4;
- (void)setAutoReplyMessage:(id)a3 reply:(id)a4;
- (void)setAutomaticDNDActive:(BOOL)a3 withReply:(id)a4;
- (void)setAutomaticDNDInternalDNDBuddyEnabledPreference:(BOOL)a3;
- (void)setAutomaticDNDInternalExitConfirmationOverrideEnabledPreference:(BOOL)a3;
- (void)setAutomaticDNDInternalForceOverrideEnabledPreference:(BOOL)a3;
- (void)setAutomaticDNDInternalShowGeofencingAlertsEnabledPreference:(BOOL)a3;
- (void)setAutomaticDNDInternalShowUserAlertsEnabledPreference:(BOOL)a3;
- (void)setAutomaticDNDTriggerPreference:(unint64_t)a3 withReply:(id)a4;
- (void)setAutomaticDNDTriggeringMethod:(unint64_t)a3;
- (void)setCompletedFirstRidePreference:(BOOL)a3;
- (void)setDisableTimerTimestamp:(id)a3;
- (void)setFirstBuddyPresentationFirstMoment:(id)a3;
- (void)setHasAdjustedTriggerMethod:(BOOL)a3;
- (void)setHasMigratedToDriving:(BOOL)a3;
- (void)setMostRecentTriggerMethodChange:(double)a3;
- (void)setOptedOutOfAutomaticDND:(BOOL)a3;
- (void)setStartedFirstRidePreference:(BOOL)a3;
@end

@implementation CARAutomaticDNDStatus

+ (BOOL)isAutomaticDNDAvailable
{
  if (isAutomaticDNDAvailable_onceToken != -1)
  {
    +[CARAutomaticDNDStatus isAutomaticDNDAvailable];
  }

  return isAutomaticDNDAvailable___isAvailable;
}

- (CARAutomaticDNDStatus)init
{
  v6.receiver = self;
  v6.super_class = CARAutomaticDNDStatus;
  v2 = [(CARAutomaticDNDStatus *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_cachedAutomaticDNDActiveState = 0;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, _CARDNDEnabledCallback, CARAutomaticDNDEnabledNotification, 0, 1028);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, _CARDNDDisabledCallback, CARAutomaticDNDDisabledNotification, 0, 1028);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, _CARDNDExitConfirmationEnabledCallback, CARAutomaticDNDExitConfirmationEnabledNotification, 0, 1028);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, _CARDNDExitConfirmationDisabledCallback, CARAutomaticDNDExitConfirmationDisabledNotification, 0, 1028);
    [(CARAutomaticDNDStatus *)v3 _setupConnection];
  }

  return v3;
}

+ (id)_DNDServiceInterface
{
  if (_DNDServiceInterface_onceToken != -1)
  {
    +[CARAutomaticDNDStatus _DNDServiceInterface];
  }

  v3 = _DNDServiceInterface___interface;

  return v3;
}

uint64_t __45__CARAutomaticDNDStatus__DNDServiceInterface__block_invoke()
{
  _DNDServiceInterface___interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4803A08];

  return MEMORY[0x1EEE66BB8]();
}

- (void)_setupConnection
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.carkit.dnd.service" options:4096];
  v4 = [objc_opt_class() _DNDServiceInterface];
  [v3 setRemoteObjectInterface:v4];

  v5 = CarDNDWDLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_DEFAULT, "Connecting to CarKit DND service.", v6, 2u);
  }

  [v3 resume];
  [(CARAutomaticDNDStatus *)self setConnection:v3];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = CARAutomaticDNDStatus;
  [(CARAutomaticDNDStatus *)&v4 dealloc];
}

- (void)fetchAutomaticDNDAssertionWithReply:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__CARAutomaticDNDStatus_fetchAutomaticDNDAssertionWithReply___block_invoke;
  v8[3] = &unk_1E82FC960;
  v8[4] = self;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__CARAutomaticDNDStatus_fetchAutomaticDNDAssertionWithReply___block_invoke_116;
  v6[3] = &unk_1E82FBF48;
  v7 = v9;
  v5 = v9;
  [(CARAutomaticDNDStatus *)self _xpcFetchWithServiceBlock:v8 errorHandler:v6];
}

void __61__CARAutomaticDNDStatus_fetchAutomaticDNDAssertionWithReply___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__CARAutomaticDNDStatus_fetchAutomaticDNDAssertionWithReply___block_invoke_2;
  v4[3] = &unk_1E82FC938;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 isCarPlayAutomaticDNDActiveWithReply:v4];
}

uint64_t __61__CARAutomaticDNDStatus_fetchAutomaticDNDAssertionWithReply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = CarDNDWDLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1C81FC000, v4, OS_LOG_TYPE_DEFAULT, "Fetched Driving state %@", &v8, 0xCu);
  }

  v6 = 1;
  if (a2)
  {
    v6 = 2;
  }

  *(*(a1 + 32) + 8) = v6;
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

uint64_t __61__CARAutomaticDNDStatus_fetchAutomaticDNDAssertionWithReply___block_invoke_116(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __48__CARAutomaticDNDStatus_isAutomaticDNDAvailable__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    isAutomaticDNDAvailable___isAvailable = CFEqual(v0, @"iPhone") != 0;

    CFRelease(v1);
  }
}

- (void)_xpcFetchWithServiceBlock:(id)a3 errorHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([objc_opt_class() isAutomaticDNDAvailable])
  {
    v8 = [(CARAutomaticDNDStatus *)self connection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64__CARAutomaticDNDStatus__xpcFetchWithServiceBlock_errorHandler___block_invoke_2;
    v14[3] = &unk_1E82FBF48;
    v9 = &v15;
    v15 = v7;
    v10 = [v8 remoteObjectProxyWithErrorHandler:v14];

    if (v6)
    {
      v11 = CarDNDWDLogging();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C81FC000, v11, OS_LOG_TYPE_DEFAULT, "Connecting to CarKit Driving service.", buf, 2u);
      }

      v6[2](v6, v10);
    }

    goto LABEL_10;
  }

  v12 = CarDNDWDLogging();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C81FC000, v12, OS_LOG_TYPE_DEFAULT, "DND While Driving is not available on this device.", buf, 2u);
  }

  if (v7)
  {
    v10 = [(CARAutomaticDNDStatus *)self connection];
    v13 = [v10 _queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__CARAutomaticDNDStatus__xpcFetchWithServiceBlock_errorHandler___block_invoke;
    block[3] = &unk_1E82FC988;
    v9 = &v17;
    v17 = v7;
    dispatch_async(v13, block);

LABEL_10:
  }
}

void __64__CARAutomaticDNDStatus__xpcFetchWithServiceBlock_errorHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CarDNDWDLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1C81FC000, v4, OS_LOG_TYPE_DEFAULT, "CarKit Driving service error: %@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)_resetUserDNDSettingsWithReply:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__CARAutomaticDNDStatus__resetUserDNDSettingsWithReply___block_invoke;
  v8[3] = &unk_1E82FC9B0;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__CARAutomaticDNDStatus__resetUserDNDSettingsWithReply___block_invoke_2;
  v6[3] = &unk_1E82FBF48;
  v7 = v9;
  v5 = v9;
  [(CARAutomaticDNDStatus *)self _xpcFetchWithServiceBlock:v8 errorHandler:v6];
}

uint64_t __56__CARAutomaticDNDStatus__resetUserDNDSettingsWithReply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)setAutomaticDNDActive:(BOOL)a3 withReply:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__CARAutomaticDNDStatus_setAutomaticDNDActive_withReply___block_invoke;
  v10[3] = &unk_1E82FC9D8;
  v12 = a3;
  v11 = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__CARAutomaticDNDStatus_setAutomaticDNDActive_withReply___block_invoke_2;
  v8[3] = &unk_1E82FBF48;
  v9 = v11;
  v7 = v11;
  [(CARAutomaticDNDStatus *)self _xpcFetchWithServiceBlock:v10 errorHandler:v8];
}

uint64_t __57__CARAutomaticDNDStatus_setAutomaticDNDActive_withReply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)fetchAutomaticDNDExitConfirmationWithReply:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__CARAutomaticDNDStatus_fetchAutomaticDNDExitConfirmationWithReply___block_invoke;
  v8[3] = &unk_1E82FC9B0;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__CARAutomaticDNDStatus_fetchAutomaticDNDExitConfirmationWithReply___block_invoke_2;
  v6[3] = &unk_1E82FBF48;
  v7 = v9;
  v5 = v9;
  [(CARAutomaticDNDStatus *)self _xpcFetchWithServiceBlock:v8 errorHandler:v6];
}

uint64_t __68__CARAutomaticDNDStatus_fetchAutomaticDNDExitConfirmationWithReply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)allowedAutoReplyAudience:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__CARAutomaticDNDStatus_allowedAutoReplyAudience___block_invoke;
  v8[3] = &unk_1E82FC9B0;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__CARAutomaticDNDStatus_allowedAutoReplyAudience___block_invoke_2;
  v6[3] = &unk_1E82FBF48;
  v7 = v9;
  v5 = v9;
  [(CARAutomaticDNDStatus *)self _xpcFetchWithServiceBlock:v8 errorHandler:v6];
}

uint64_t __50__CARAutomaticDNDStatus_allowedAutoReplyAudience___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)setAllowedAutoReplyAudience:(unint64_t)a3 reply:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__CARAutomaticDNDStatus_setAllowedAutoReplyAudience_reply___block_invoke;
  v10[3] = &unk_1E82FCA00;
  v12 = a3;
  v11 = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__CARAutomaticDNDStatus_setAllowedAutoReplyAudience_reply___block_invoke_2;
  v8[3] = &unk_1E82FBF48;
  v9 = v11;
  v7 = v11;
  [(CARAutomaticDNDStatus *)self _xpcFetchWithServiceBlock:v10 errorHandler:v8];
}

uint64_t __59__CARAutomaticDNDStatus_setAllowedAutoReplyAudience_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)autoReplyMessageWithReply:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__CARAutomaticDNDStatus_autoReplyMessageWithReply___block_invoke;
  v8[3] = &unk_1E82FC9B0;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__CARAutomaticDNDStatus_autoReplyMessageWithReply___block_invoke_3;
  v6[3] = &unk_1E82FBF48;
  v7 = v9;
  v5 = v9;
  [(CARAutomaticDNDStatus *)self _xpcFetchWithServiceBlock:v8 errorHandler:v6];
}

void __51__CARAutomaticDNDStatus_autoReplyMessageWithReply___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__CARAutomaticDNDStatus_autoReplyMessageWithReply___block_invoke_2;
  v3[3] = &unk_1E82FCA28;
  v4 = *(a1 + 32);
  [a2 autoReplyMessageWithReply:v3];
}

uint64_t __51__CARAutomaticDNDStatus_autoReplyMessageWithReply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __51__CARAutomaticDNDStatus_autoReplyMessageWithReply___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)setAutoReplyMessage:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__CARAutomaticDNDStatus_setAutoReplyMessage_reply___block_invoke;
  v12[3] = &unk_1E82FC960;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__CARAutomaticDNDStatus_setAutoReplyMessage_reply___block_invoke_3;
  v10[3] = &unk_1E82FBF48;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(CARAutomaticDNDStatus *)self _xpcFetchWithServiceBlock:v12 errorHandler:v10];
}

void __51__CARAutomaticDNDStatus_setAutoReplyMessage_reply___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__CARAutomaticDNDStatus_setAutoReplyMessage_reply___block_invoke_2;
  v4[3] = &unk_1E82FC6C8;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 setAutoReplyMessage:v3 reply:v4];
}

uint64_t __51__CARAutomaticDNDStatus_setAutoReplyMessage_reply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __51__CARAutomaticDNDStatus_setAutoReplyMessage_reply___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (BOOL)platformSupportsSendingAutoReplies
{
  v2 = MGCopyAnswer();
  v3 = CFEqual(v2, @"iPhone") != 0;
  CFRelease(v2);
  return v3;
}

- (BOOL)platformSupportsUrgentMessages
{
  v2 = MGCopyAnswer();
  v3 = CFEqual(v2, @"iPhone") != 0;
  CFRelease(v2);
  return v3;
}

- (void)fetchAutomaticDNDTriggerPreferenceWithReply:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__CARAutomaticDNDStatus_fetchAutomaticDNDTriggerPreferenceWithReply___block_invoke;
  v8[3] = &unk_1E82FC9B0;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__CARAutomaticDNDStatus_fetchAutomaticDNDTriggerPreferenceWithReply___block_invoke_2;
  v6[3] = &unk_1E82FBF48;
  v7 = v9;
  v5 = v9;
  [(CARAutomaticDNDStatus *)self _xpcFetchWithServiceBlock:v8 errorHandler:v6];
}

uint64_t __69__CARAutomaticDNDStatus_fetchAutomaticDNDTriggerPreferenceWithReply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)setAutomaticDNDTriggerPreference:(unint64_t)a3 withReply:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__CARAutomaticDNDStatus_setAutomaticDNDTriggerPreference_withReply___block_invoke;
  v10[3] = &unk_1E82FCA00;
  v12 = a3;
  v11 = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__CARAutomaticDNDStatus_setAutomaticDNDTriggerPreference_withReply___block_invoke_2;
  v8[3] = &unk_1E82FBF48;
  v9 = v11;
  v7 = v11;
  [(CARAutomaticDNDStatus *)self _xpcFetchWithServiceBlock:v10 errorHandler:v8];
}

uint64_t __68__CARAutomaticDNDStatus_setAutomaticDNDTriggerPreference_withReply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)disableDNDUntilEndOfDriveWithContext:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__CARAutomaticDNDStatus_disableDNDUntilEndOfDriveWithContext_reply___block_invoke;
  v12[3] = &unk_1E82FC960;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__CARAutomaticDNDStatus_disableDNDUntilEndOfDriveWithContext_reply___block_invoke_2;
  v10[3] = &unk_1E82FBF48;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(CARAutomaticDNDStatus *)self _xpcFetchWithServiceBlock:v12 errorHandler:v10];
}

uint64_t __68__CARAutomaticDNDStatus_disableDNDUntilEndOfDriveWithContext_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)setAutomaticDNDInternalExitConfirmationOverrideEnabledPreference:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v4 = @"CARDNDMiniInternalExitConfirmationOverride";
  v5 = CarDNDWDLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    v8 = 138412802;
    v9 = v4;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = CRPreferencesAutomaticDNDDomain;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_INFO, "Setting %@ to %@ in %@.", &v8, 0x20u);
  }

  v7 = MEMORY[0x1E695E4D0];
  if (!v3)
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  CFPreferencesSetAppValue(v4, *v7, CRPreferencesAutomaticDNDDomain);
}

- (BOOL)isAutomaticDNDInternalExitConfirmationOverrideEnabledPreference
{
  v2 = CFPreferencesCopyAppValue(@"CARDNDMiniInternalExitConfirmationOverride", CRPreferencesAutomaticDNDDomain);
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setAutomaticDNDInternalForceOverrideEnabledPreference:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v4 = @"CARDNDMiniInternalForceOverride";
  v5 = CarDNDWDLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    v8 = 138412802;
    v9 = v4;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = CRPreferencesAutomaticDNDDomain;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_INFO, "Setting %@ to %@ in %@.", &v8, 0x20u);
  }

  v7 = MEMORY[0x1E695E4D0];
  if (!v3)
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  CFPreferencesSetAppValue(v4, *v7, CRPreferencesAutomaticDNDDomain);
}

- (BOOL)isAutomaticDNDInternalForceOverrideEnabledPreference
{
  v2 = CFPreferencesCopyAppValue(@"CARDNDMiniInternalForceOverride", CRPreferencesAutomaticDNDDomain);
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setCompletedFirstRidePreference:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v4 = @"CARDNDMiniHasCompletedFirstRide";
  v5 = CarDNDWDLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    v8 = 138412802;
    v9 = v4;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = CRPreferencesAutomaticDNDDomain;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_INFO, "Setting %@ to %@ in %@.", &v8, 0x20u);
  }

  v7 = MEMORY[0x1E695E4D0];
  if (!v3)
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  CFPreferencesSetAppValue(v4, *v7, CRPreferencesAutomaticDNDDomain);
}

- (BOOL)hasCompletedFirstRidePreference
{
  v2 = CFPreferencesCopyAppValue(@"CARDNDMiniHasCompletedFirstRide", CRPreferencesAutomaticDNDDomain);
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setStartedFirstRidePreference:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v4 = @"CARDNDMiniHasStartedFirstRide";
  v5 = CarDNDWDLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    v8 = 138412802;
    v9 = v4;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = CRPreferencesAutomaticDNDDomain;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_INFO, "Setting %@ to %@ in %@.", &v8, 0x20u);
  }

  v7 = MEMORY[0x1E695E4D0];
  if (!v3)
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  CFPreferencesSetAppValue(v4, *v7, CRPreferencesAutomaticDNDDomain);
}

- (BOOL)hasStartedFirstRidePreference
{
  v2 = CFPreferencesCopyAppValue(@"CARDNDMiniHasStartedFirstRide", CRPreferencesAutomaticDNDDomain);
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setAutomaticDNDTriggeringMethod:(unint64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(CARAutomaticDNDStatus *)self automaticDNDTriggeringMethod]!= a3)
  {
    v5 = @"CARDNDAutomaticTriggeringMethod";
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v7 = CarDNDWDLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412802;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = CRPreferencesAutomaticDNDDomain;
      _os_log_impl(&dword_1C81FC000, v7, OS_LOG_TYPE_INFO, "Setting %@ to %@ in %@.", &v9, 0x20u);
    }

    CFPreferencesSetAppValue(v5, v6, CRPreferencesAutomaticDNDDomain);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [(CARAutomaticDNDStatus *)self setMostRecentTriggerMethodChange:?];
    [(CARAutomaticDNDStatus *)self setHasAdjustedTriggerMethod:1];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, CARAutomaticDNDTriggeringPreferenceChangedNotification, 0, 0, 1u);
  }
}

- (unint64_t)automaticDNDTriggeringMethod
{
  v2 = CFPreferencesCopyAppValue(@"CARDNDAutomaticTriggeringMethod", CRPreferencesAutomaticDNDDomain);
  v3 = [v2 integerValue];

  return v3;
}

- (void)setAutomaticDNDInternalShowGeofencingAlertsEnabledPreference:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v4 = @"CARDNDMiniInternalShowGeofencingAlerts";
  v5 = CarDNDWDLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    v8 = 138412802;
    v9 = v4;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = CRPreferencesAutomaticDNDDomain;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_INFO, "Setting %@ to %@ in %@.", &v8, 0x20u);
  }

  v7 = MEMORY[0x1E695E4D0];
  if (!v3)
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  CFPreferencesSetAppValue(v4, *v7, CRPreferencesAutomaticDNDDomain);
}

- (BOOL)isAutomaticDNDInternalShowGeofencingAlertsEnabledPreference
{
  v2 = CFPreferencesCopyAppValue(@"CARDNDMiniInternalShowGeofencingAlerts", CRPreferencesAutomaticDNDDomain);
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setAutomaticDNDInternalShowUserAlertsEnabledPreference:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v4 = @"CARDNDMiniInternalShowInternalAlerts";
  v5 = CarDNDWDLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    v8 = 138412802;
    v9 = v4;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = CRPreferencesAutomaticDNDDomain;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_INFO, "Setting %@ to %@ in %@.", &v8, 0x20u);
  }

  v7 = MEMORY[0x1E695E4D0];
  if (!v3)
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  CFPreferencesSetAppValue(v4, *v7, CRPreferencesAutomaticDNDDomain);
}

- (BOOL)isAutomaticDNDInternalShowUserAlertsEnabledPreference
{
  v2 = CFPreferencesCopyAppValue(@"CARDNDMiniInternalShowInternalAlerts", CRPreferencesAutomaticDNDDomain);
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setAutomaticDNDInternalDNDBuddyEnabledPreference:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v4 = @"CARDNDInternalDNDBuddyDisplay";
  v5 = CarDNDWDLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    v8 = 138412802;
    v9 = v4;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = CRPreferencesAutomaticDNDDomain;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_INFO, "Setting %@ to %@ in %@.", &v8, 0x20u);
  }

  v7 = MEMORY[0x1E695E4D0];
  if (!v3)
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  CFPreferencesSetAppValue(v4, *v7, CRPreferencesAutomaticDNDDomain);
}

- (BOOL)isAutomaticDNDInternalDNDBuddyPreference
{
  v2 = CFPreferencesCopyAppValue(@"CARDNDInternalDNDBuddyDisplay", CRPreferencesAutomaticDNDDomain);
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setOptedOutOfAutomaticDND:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v4 = @"CARDNDMiniUserOptedOutInBuddy";
  v5 = CarDNDWDLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    v8 = 138412802;
    v9 = v4;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = CRPreferencesAutomaticDNDDomain;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_INFO, "Setting %@ to %@ in %@.", &v8, 0x20u);
  }

  v7 = MEMORY[0x1E695E4D0];
  if (!v3)
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  CFPreferencesSetAppValue(v4, *v7, CRPreferencesAutomaticDNDDomain);
}

- (BOOL)hasOptedOutOfAutomaticDND
{
  v2 = CFPreferencesCopyAppValue(@"CARDNDMiniUserOptedOutInBuddy", CRPreferencesAutomaticDNDDomain);
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setHasAdjustedTriggerMethod:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v4 = @"CARDNDUserHasAdjustedTriggerMethod";
  v5 = CarDNDWDLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    v8 = 138412802;
    v9 = v4;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = CRPreferencesAutomaticDNDDomain;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_INFO, "Setting %@ to %@ in %@.", &v8, 0x20u);
  }

  v7 = MEMORY[0x1E695E4D0];
  if (!v3)
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  CFPreferencesSetAppValue(v4, *v7, CRPreferencesAutomaticDNDDomain);
}

- (BOOL)hasAdjustedTriggerMethod
{
  v2 = CFPreferencesCopyAppValue(@"CARDNDUserHasAdjustedTriggerMethod", CRPreferencesAutomaticDNDDomain);
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)hasMigratedToDriving
{
  v2 = CFPreferencesCopyAppValue(@"CARHasMigratedToDriving", CRPreferencesAutomaticDNDDomain);
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setHasMigratedToDriving:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v4 = @"CARHasMigratedToDriving";
  v5 = CarDNDWDLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    v8 = 138412802;
    v9 = v4;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = CRPreferencesAutomaticDNDDomain;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_INFO, "Setting %@ to %@ in %@.", &v8, 0x20u);
  }

  v7 = MEMORY[0x1E695E4D0];
  if (!v3)
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  CFPreferencesSetAppValue(v4, *v7, CRPreferencesAutomaticDNDDomain);
}

- (void)setActivateWithCarPlay:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  if ([(CARAutomaticDNDStatus *)self shouldActivateWithCarPlay]!= a3)
  {
    v4 = @"CARDNDActivateWithCarPlay";
    v5 = CarDNDWDLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
      v9 = 138412802;
      v10 = v4;
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = CRPreferencesAutomaticDNDDomain;
      _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_INFO, "Setting %@ to %@ in %@.", &v9, 0x20u);
    }

    v7 = MEMORY[0x1E695E4D0];
    if (!v3)
    {
      v7 = MEMORY[0x1E695E4C0];
    }

    CFPreferencesSetAppValue(v4, *v7, CRPreferencesAutomaticDNDDomain);

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, CARAutomaticDNDCarPlayActivationChangedNotification, 0, 0, 1u);
  }
}

- (BOOL)shouldActivateWithCarPlay
{
  v2 = CFPreferencesCopyAppValue(@"CARDNDActivateWithCarPlay", CRPreferencesAutomaticDNDDomain);
  v3 = [v2 BOOLValue];

  return v3;
}

- (double)mostRecentTriggerMethodChange
{
  v2 = CFPreferencesCopyAppValue(@"CARDNDTriggerPreferenceChangedTimestamp", CRPreferencesAutomaticDNDDomain);
  v3 = [v2 integerValue];

  return v3;
}

- (void)setMostRecentTriggerMethodChange:(double)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = @"CARDNDTriggerPreferenceChangedTimestamp";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
  v6 = CarDNDWDLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138412802;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = CRPreferencesAutomaticDNDDomain;
    _os_log_impl(&dword_1C81FC000, v6, OS_LOG_TYPE_INFO, "Setting %@ to %@ in %@.", &v7, 0x20u);
  }

  CFPreferencesSetAppValue(v4, v5, CRPreferencesAutomaticDNDDomain);
}

- (void)setFirstBuddyPresentationFirstMoment:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E695DEE8] currentCalendar];
    v5 = [v4 startOfDayForDate:v3];

    [(__CFString *)v5 timeIntervalSinceReferenceDate];
    v7 = v6;
    v8 = @"CARDNDFirstBuddyDateFirstMoment";
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    v10 = CarDNDWDLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138412802;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = CRPreferencesAutomaticDNDDomain;
      _os_log_impl(&dword_1C81FC000, v10, OS_LOG_TYPE_INFO, "Setting %@ to %@ in %@.", &v12, 0x20u);
    }

    CFPreferencesSetAppValue(v8, v9, CRPreferencesAutomaticDNDDomain);
  }

  else
  {
    v5 = @"CARDNDFirstBuddyDateFirstMoment";
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    v11 = CarDNDWDLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 138412802;
      v13 = v5;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = CRPreferencesAutomaticDNDDomain;
      _os_log_impl(&dword_1C81FC000, v11, OS_LOG_TYPE_INFO, "Setting %@ to %@ in %@.", &v12, 0x20u);
    }

    CFPreferencesSetAppValue(v5, v8, CRPreferencesAutomaticDNDDomain);
  }
}

- (id)firstBuddyPresentationFirstMoment
{
  v2 = CFPreferencesCopyAppValue(@"CARDNDFirstBuddyDateFirstMoment", CRPreferencesAutomaticDNDDomain);
  v3 = [v2 integerValue];

  if (v3 < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v3];
  }

  return v4;
}

- (void)setDisableTimerTimestamp:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    [a3 timeIntervalSinceReferenceDate];
    v4 = v3;
    v5 = @"CARDNDDisableTimerTimestamp";
    v6 = MEMORY[0x1E696AD98];
    v7 = v4;
  }

  else
  {
    v5 = @"CARDNDDisableTimerTimestamp";
    v6 = MEMORY[0x1E696AD98];
    v7 = 0;
  }

  v8 = [v6 numberWithInteger:v7];
  v9 = CarDNDWDLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = 138412802;
    v11 = v5;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = CRPreferencesAutomaticDNDDomain;
    _os_log_impl(&dword_1C81FC000, v9, OS_LOG_TYPE_INFO, "Setting %@ to %@ in %@.", &v10, 0x20u);
  }

  CFPreferencesSetAppValue(@"CARDNDDisableTimerTimestamp", v8, CRPreferencesAutomaticDNDDomain);
}

- (id)disableTimerTimestamp
{
  v2 = CFPreferencesCopyAppValue(@"CARDNDDisableTimerTimestamp", CRPreferencesAutomaticDNDDomain);
  v3 = [v2 integerValue];

  if (v3 < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v3];
  }

  return v4;
}

- (void)_performCARPreferencesBlock:(id)a3 forReading:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if (v4)
  {
    if (!CFPreferencesAppSynchronize(CRPreferencesAutomaticDNDDomain))
    {
      v7 = CarDNDWDLogging();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [CARAutomaticDNDStatus _performCARPreferencesBlock:v7 forReading:?];
      }
    }

    v6[2](v6);
  }

  else
  {
    v5[2](v5);
    if (!CFPreferencesAppSynchronize(CRPreferencesAutomaticDNDDomain))
    {
      v8 = CarDNDWDLogging();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [CARAutomaticDNDStatus _performCARPreferencesBlock:v8 forReading:?];
      }
    }
  }
}

- (void)_detachObservers
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
}

- (void)_dndStateChanged:(BOOL)a3
{
  v3 = a3;
  v5 = CarDNDWDLogging();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      *buf = 0;
      v7 = 2;
      _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_DEFAULT, "Received car DND state ON.", buf, 2u);
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    if (v6)
    {
      *v10 = 0;
      _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_DEFAULT, "Received car DND state OFF.", v10, 2u);
    }

    v7 = 1;
  }

  self->_cachedAutomaticDNDActiveState = v7;
  v8 = [(CARAutomaticDNDStatus *)self statusChangeObserver];

  if (v8)
  {
    v9 = [(CARAutomaticDNDStatus *)self statusChangeObserver];
    v9[2](v9, v3);
  }
}

- (void)_exitConfirmationStateChanged:(BOOL)a3
{
  v3 = a3;
  v5 = CarDNDWDLogging();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v12 = 0;
    v7 = "Received exit confirmation observer ON.";
    v8 = &v12;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v11 = 0;
    v7 = "Received exit confirmation observer OFF.";
    v8 = &v11;
  }

  _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
LABEL_7:

  v9 = [(CARAutomaticDNDStatus *)self exitConfirmationChangeObserver];

  if (v9)
  {
    v10 = [(CARAutomaticDNDStatus *)self exitConfirmationChangeObserver];
    v10[2](v10, v3);
  }
}

@end