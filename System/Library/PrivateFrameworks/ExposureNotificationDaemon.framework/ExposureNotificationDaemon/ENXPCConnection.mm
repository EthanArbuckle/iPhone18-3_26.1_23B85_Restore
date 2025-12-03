@interface ENXPCConnection
- (BOOL)_appActiveStatusWithError:(id *)error;
- (BOOL)_authorizationPreflightUnknownAndReturnError:(id *)error;
- (BOOL)_authorizedAndReturnError:(id *)error;
- (BOOL)_entitledForAccessLevel:(int)level error:(id *)error;
- (BOOL)_rateLimitAndReturnError:(id *)error;
- (BOOL)_xpcManagerActivateIfNecessaryWithRequest:(id)request error:(id *)error;
- (id)_regionConfigForXPCRequest:(id)request error:(id *)error;
- (id)_regionServerConfigForXPCRequest:(id)request error:(id *)error;
- (void)_fetchClientPublicKeyWithVerificationID:(id)d keyVersion:(id)version completion:(id)completion;
- (void)_processServerResponseConfigurationsForRegion:(id)region serverResponses:(id)responses request:(id)request;
- (void)_sendOnboardingMetricForRegionConfiguration:(id)configuration;
- (void)_updateActiveEntityFromTCCResult:(BOOL)result;
- (void)_xpcConnectionRequest:(id)request;
- (void)_xpcDiagnosticControl:(id)control;
- (void)_xpcDiagnosticLog:(id)log;
- (void)_xpcDiagnosticShow:(id)show;
- (void)_xpcDownload:(id)download;
- (void)_xpcEntitlementCheck:(id)check;
- (void)_xpcExposureDetectionFileActivate:(id)activate;
- (void)_xpcExposureDetectionFileAdd:(id)add;
- (void)_xpcExposureDetectionFileAddNext:(id)next fileSession:(id)session publicKey:(id)key;
- (void)_xpcExposureDetectionFileFinish:(id)finish;
- (void)_xpcExposureDetectionFileGetExposureWindows:(id)windows;
- (void)_xpcExposureDetectionFileGetExposures:(id)exposures;
- (void)_xpcExposureDetectionHistoryGetFiles:(id)files;
- (void)_xpcExposureDetectionHistoryGetSessions:(id)sessions;
- (void)_xpcFetchTestVerificationMetadata:(id)metadata;
- (void)_xpcFinishTestVerificationSession:(id)session;
- (void)_xpcGetActiveRegion:(id)region;
- (void)_xpcGetAllRegionAgencyConfig:(id)config;
- (void)_xpcGetAllRegionConfig:(id)config;
- (void)_xpcGetAllRegionGeneralConfig:(id)config;
- (void)_xpcGetAllRegionServerConfig:(id)config;
- (void)_xpcGetCurrentAgencyConfig:(id)config;
- (void)_xpcGetDataVaultSize:(id)size;
- (void)_xpcGetEntities:(id)entities;
- (void)_xpcGetInfo:(id)info;
- (void)_xpcGetLastExposureNotification:(id)notification;
- (void)_xpcGetPreAuthorizeDiagnosisKeysEnabled:(id)enabled;
- (void)_xpcGetRegionAgencyConfig:(id)config;
- (void)_xpcGetRegionConfig:(id)config;
- (void)_xpcGetRegionHistory:(id)history;
- (void)_xpcGetRegionHistoryEnabled:(id)enabled;
- (void)_xpcGetRegionMonitorEnabled:(id)enabled;
- (void)_xpcGetRegionServerConfig:(id)config;
- (void)_xpcGetRegionSystemConfig:(id)config;
- (void)_xpcGetRemotePresentationRequestIfNeeded:(id)needed;
- (void)_xpcGetStatusForBundleIdentifier:(id)identifier;
- (void)_xpcGetSubdivisionList:(id)list;
- (void)_xpcGetTravelStatusEnabled:(id)enabled;
- (void)_xpcGetUserTraveled:(id)traveled;
- (void)_xpcGetUserTraveledPromptWithCompletion:(id)completion;
- (void)_xpcGetUserTraveledReplyAllowed:(BOOL)allowed request:(id)request;
- (void)_xpcLegalConsentPageCount:(id)count;
- (void)_xpcManagerActivate:(id)activate;
- (void)_xpcMessageAddCommonKeys:(id)keys allowed:(BOOL)allowed;
- (void)_xpcNotificationTrigger:(id)trigger;
- (void)_xpcOnboardingDidStart:(id)start;
- (void)_xpcPreAuthorizeDiagnosisKeys:(id)keys;
- (void)_xpcRemotePresentationReceivedDecision:(id)decision;
- (void)_xpcRequestPreAuthorizedDiagnosisKeys:(id)keys;
- (void)_xpcResetData:(id)data;
- (void)_xpcSendMessage:(id)message;
- (void)_xpcSendReplyError:(id)error reply:(id)reply;
- (void)_xpcSendReplyError:(id)error request:(id)request;
- (void)_xpcSetActiveApp:(id)app;
- (void)_xpcSetActiveEntity:(id)entity;
- (void)_xpcSetActiveRegion:(id)region;
- (void)_xpcSetAutomaticRegionSwitch:(id)switch;
- (void)_xpcSetAvailabilityAlertEnabled:(id)enabled;
- (void)_xpcSetDeveloperRegionServerConfig:(id)config;
- (void)_xpcSetEnabled:(id)enabled;
- (void)_xpcSetMonthlySummaryAlertEnabled:(id)enabled;
- (void)_xpcSetPaused:(id)paused;
- (void)_xpcSetPreAuthorizeDiagnosisKeysEnabled:(id)enabled;
- (void)_xpcSetRegionConsent:(id)consent;
- (void)_xpcSetRegionHistoryEnabled:(id)enabled;
- (void)_xpcSetTravelStatusEnabled:(id)enabled;
- (void)_xpcShowBuddy:(id)buddy;
- (void)_xpcStartSelfReportWebSession:(id)session;
- (void)_xpcStartTestVerificationSession:(id)session;
- (void)_xpcTCCCheck:(id)check;
- (void)_xpcVerifyTextMessage:(id)message;
- (void)enqueuePreAuthorizedLockScreenActionForRequest:(id)request outError:(id *)error;
- (void)invalidate;
- (void)updateDiagnosisKeysPreAuthorizationForRequest:(id)request withDecision:(BOOL)decision errorOut:(id *)out;
- (void)xpcConnectionEvent:(id)event;
- (void)xpcPreAuthorizedDiagnosisKeysAvailable;
- (void)xpcReportActivityFlags:(unsigned int)flags;
- (void)xpcStatusChanged;
@end

@implementation ENXPCConnection

- (void)invalidate
{
  v3 = self->_userAlert;
  if (v3)
  {
    if (_MergedGlobals < 31 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENXPCConnection invalidate];
    }

    [(ENUserAlert *)v3 invalidate];
    userAlert = self->_userAlert;
    self->_userAlert = 0;

    userAlert = [(ENDaemon *)self->_daemon userAlert];

    if (v3 == userAlert)
    {
      [(ENDaemon *)self->_daemon setUserAlert:0];
    }
  }

  v6 = self->_detectionSession;
  if (v6)
  {
    v7 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed = [v7 isSensitiveLoggingAllowed];

    if ((isSensitiveLoggingAllowed & 1) != 0 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENXPCConnection invalidate];
    }

    [(ENExposureDetectionDaemonSession *)v6 invalidate];
    detectionSession = self->_detectionSession;
    self->_detectionSession = 0;
  }

  v10 = self->_manager;
  if (v10)
  {
    if (_MergedGlobals < 31 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENXPCConnection invalidate];
    }

    [(ENManager *)v10 invalidate];
    manager = self->_manager;
    self->_manager = 0;
  }

  onboardingRegionTrigger = [(ENDaemon *)self->_daemon onboardingRegionTrigger];
  if (onboardingRegionTrigger)
  {
    signingIdentity = [(ENXPCClient *)self->_client signingIdentity];
    v14 = [signingIdentity isEqualToString:@"com.apple.Preferences"];

    if (v14)
    {
      configurationManager = [(ENDaemon *)self->_daemon configurationManager];
      configurationStore = [configurationManager configurationStore];

      v17 = [configurationStore configurationForRegion:onboardingRegionTrigger];
      if (v17)
      {
        if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          [ENXPCConnection invalidate];
        }

        [(ENXPCConnection *)self _sendOnboardingMetricForRegionConfiguration:v17];
      }

      [(ENDaemon *)self->_daemon setOnboardingTrigger:0];
      [(ENDaemon *)self->_daemon setOnboardingRegionTrigger:0];
      [(ENDaemon *)self->_daemon setOnboardingFirstTime:0];
      [(ENDaemon *)self->_daemon setOnboardingLegalConsentLastViewCount:[(ENDaemon *)self->_daemon _getLegalConsentPageCount]];
    }
  }

  xpcCnx = self->_xpcCnx;
  if (xpcCnx)
  {
    xpc_connection_cancel(xpcCnx);
  }

  daemon = self->_daemon;

  [(ENDaemon *)daemon xpcConnectionInvalidated:self];
}

- (BOOL)_appActiveStatusWithError:(id *)error
{
  signingIdentity = [(ENXPCClient *)self->_client signingIdentity];
  v6 = signingIdentity;
  if (!signingIdentity)
  {
    if (error)
    {
LABEL_18:
      ENErrorF();
      *error = v18 = 0;
      goto LABEL_12;
    }

LABEL_19:
    v18 = 0;
    goto LABEL_12;
  }

  if (signingIdentity == @"com.apple.enutil")
  {
    v7 = 1;
  }

  else
  {
    v7 = [(__CFString *)signingIdentity isEqual:@"com.apple.enutil"];
  }

  v8 = [(__CFString *)v6 hasPrefix:@"com.apple."];
  activeEntity = [(ENDaemon *)self->_daemon activeEntity];
  entity = [activeEntity entity];
  bundleIdentifier = [entity bundleIdentifier];
  v12 = v6;
  v13 = bundleIdentifier;
  v14 = v13;
  if (v12 == v13)
  {

    goto LABEL_10;
  }

  if (!v13)
  {

    goto LABEL_14;
  }

  v15 = [(__CFString *)v12 isEqual:v13];

  if (v15)
  {
LABEL_10:
    activeEntity2 = [(ENDaemon *)self->_daemon activeEntity];
    v17 = [activeEntity2 activeStatus] != 3;

    if (((v17 | v7 | v8) & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

LABEL_14:

  if (((v7 | v8) & 1) == 0)
  {
LABEL_15:
    if (error)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

LABEL_11:
  v18 = 1;
LABEL_12:

  return v18;
}

- (BOOL)_authorizedAndReturnError:(id *)error
{
  if (MEMORY[0x282233AA0])
  {
    xpcCnx = self->_xpcCnx;
    xpc_connection_get_audit_token();
    v5 = *MEMORY[0x277D6C150];
    v6 = TCCAccessCheckAuditToken();
    v7 = v6 != 0;
    if (!v6)
    {
      [ENXPCConnection _authorizedAndReturnError:error];
    }
  }

  else if (error)
  {
    ENErrorF();
    *error = v7 = 0;
  }

  else
  {
    return 0;
  }

  return v7;
}

- (BOOL)_authorizationPreflightUnknownAndReturnError:(id *)error
{
  if (MEMORY[0x282233AA0])
  {
    xpcCnx = self->_xpcCnx;
    xpc_connection_get_audit_token();
    v4 = *MEMORY[0x277D6C150];
    return TCCAccessPreflightWithAuditToken() == 2;
  }

  else if (error)
  {
    v7 = ENErrorF();
    v8 = v7;
    result = 0;
    *error = v7;
  }

  else
  {
    return 0;
  }

  return result;
}

- (BOOL)_entitledForAccessLevel:(int)level error:(id *)error
{
  accessLevel = [(ENXPCClient *)self->_client accessLevel];
  v7 = accessLevel;
  if (error && accessLevel < level)
  {
    *error = ENErrorF();
  }

  return v7 >= level;
}

- (BOOL)_rateLimitAndReturnError:(id *)error
{
  Int64 = CFPrefs_GetInt64();
  Current = CFAbsoluteTimeGetCurrent();
  CFPrefs_GetDouble();
  if (vabdd_f64(Current, v7) >= 86400.0)
  {
    CFPrefs_SetDouble();
    Int64 = 0;
  }

  appAPIVersion = [(ENXPCClient *)self->_client appAPIVersion];
  daemon = self->_daemon;
  if (appAPIVersion < 2)
  {
    prefRateLimitMaxAPICount = [(ENDaemon *)daemon prefRateLimitMaxAPICount];
  }

  else
  {
    prefRateLimitMaxAPICount = [(ENDaemon *)daemon prefRateLimitMaxAPICountV2];
  }

  v11 = prefRateLimitMaxAPICount;
  if (Int64 >= prefRateLimitMaxAPICount)
  {
    [ENXPCConnection _rateLimitAndReturnError:error];
  }

  else
  {
    CFPrefs_SetInt64();
  }

  return Int64 < v11;
}

- (id)_regionConfigForXPCRequest:(id)request error:(id *)error
{
  requestCopy = request;
  configurationManager = [(ENDaemon *)self->_daemon configurationManager];
  if (configurationManager)
  {
    activeEntity = [(ENDaemon *)self->_daemon activeEntity];
    entity = [activeEntity entity];
    region = [entity region];

    objc_opt_class();
    v11 = ENXPCDecodeSecureObjectIfPresent();
    if (v11)
    {
      configurationStore = [configurationManager configurationStore];
      v13 = [configurationStore configurationForRegion:v11];

      if (!v13)
      {
        if (error)
        {
          goto LABEL_18;
        }

        goto LABEL_19;
      }
    }

    else
    {
      if (!region)
      {
        if (error)
        {
          goto LABEL_18;
        }

        goto LABEL_19;
      }

      configurationStore2 = [configurationManager configurationStore];
      v13 = [configurationStore2 configurationForRegion:region];

      if (!v13)
      {
        if (error)
        {
LABEL_18:
          ENErrorF();
          *error = v13 = 0;
          goto LABEL_8;
        }

LABEL_19:
        v13 = 0;
      }
    }

LABEL_8:

    goto LABEL_9;
  }

  if (error)
  {
    ENErrorF();
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_9:

  return v13;
}

- (id)_regionServerConfigForXPCRequest:(id)request error:(id *)error
{
  requestCopy = request;
  configurationManager = [(ENDaemon *)self->_daemon configurationManager];
  if (configurationManager)
  {
    activeEntity = [(ENDaemon *)self->_daemon activeEntity];
    entity = [activeEntity entity];
    region = [entity region];

    objc_opt_class();
    v11 = ENXPCDecodeSecureObjectIfPresent();
    if (v11)
    {
      configurationStore = [configurationManager configurationStore];
      v13 = [configurationStore serverConfigurationForRegion:v11];

      if (!v13)
      {
        if (error)
        {
          goto LABEL_18;
        }

        goto LABEL_19;
      }
    }

    else
    {
      if (!region)
      {
        if (error)
        {
          goto LABEL_18;
        }

        goto LABEL_19;
      }

      configurationStore2 = [configurationManager configurationStore];
      v13 = [configurationStore2 serverConfigurationForRegion:region];

      if (!v13)
      {
        if (error)
        {
LABEL_18:
          ENErrorF();
          *error = v13 = 0;
          goto LABEL_8;
        }

LABEL_19:
        v13 = 0;
      }
    }

LABEL_8:

    goto LABEL_9;
  }

  if (error)
  {
    ENErrorF();
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_9:

  return v13;
}

- (void)xpcConnectionEvent:(id)event
{
  eventCopy = event;
  if (MEMORY[0x24C214BB0]() == MEMORY[0x277D86468])
  {
    [(ENXPCConnection *)self _xpcConnectionRequest:eventCopy];
    goto LABEL_12;
  }

  v4 = eventCopy;
  if (eventCopy == MEMORY[0x277D863F8])
  {
    if (_MergedGlobals <= 20 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENXPCConnection xpcConnectionEvent:?];
    }

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = 0;

    [(ENXPCConnection *)self invalidate];
    goto LABEL_12;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v4 = eventCopy, v5))
    {
      [ENXPCConnection xpcConnectionEvent:];
LABEL_12:
      v4 = eventCopy;
    }
  }
}

- (void)_xpcConnectionRequest:(id)request
{
  requestCopy = request;
  int64 = xpc_dictionary_get_int64(requestCopy, "mTyp");
  v5 = int64;
  if (int64 <= 100)
  {
    switch(int64)
    {
      case 10:
        [(ENXPCConnection *)self _xpcManagerActivate:requestCopy];
        goto LABEL_81;
      case 11:
        [(ENXPCConnection *)self _xpcSetEnabled:requestCopy];
        goto LABEL_81;
      case 12:
      case 19:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 45:
      case 46:
      case 47:
      case 59:
      case 60:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
        goto LABEL_45;
      case 13:
        [(ENXPCConnection *)self _xpcEntitlementCheck:requestCopy];
        goto LABEL_81;
      case 14:
        [(ENXPCConnection *)self _xpcSetPaused:requestCopy];
        goto LABEL_81;
      case 15:
        [(ENXPCConnection *)self _xpcGetUserTraveled:requestCopy];
        goto LABEL_81;
      case 16:
        [(ENXPCConnection *)self _xpcPreAuthorizeDiagnosisKeys:requestCopy];
        goto LABEL_81;
      case 17:
        [(ENXPCConnection *)self _xpcGetTravelStatusEnabled:requestCopy];
        goto LABEL_81;
      case 18:
        [(ENXPCConnection *)self _xpcSetTravelStatusEnabled:requestCopy];
        goto LABEL_81;
      case 20:
        selfCopy2 = self;
        v8 = requestCopy;
        v9 = 0;
        goto LABEL_63;
      case 21:
        [(ENXPCConnection *)self _xpcResetData:requestCopy];
        goto LABEL_81;
      case 22:
        selfCopy2 = self;
        v8 = requestCopy;
        v9 = 1;
LABEL_63:
        [(ENXPCConnection *)selfCopy2 _xpcGetDiagnosisKeys:v8 testMode:v9];
        break;
      case 23:
        [(ENXPCConnection *)self _xpcRequestPreAuthorizedDiagnosisKeys:requestCopy];
        break;
      case 40:
        [(ENXPCConnection *)self _xpcExposureDetectionFileActivate:requestCopy];
        break;
      case 41:
        [(ENXPCConnection *)self _xpcExposureDetectionFileAdd:requestCopy];
        break;
      case 42:
        [(ENXPCConnection *)self _xpcExposureDetectionFileFinish:requestCopy];
        break;
      case 43:
        [(ENXPCConnection *)self _xpcExposureDetectionFileGetExposures:requestCopy];
        break;
      case 44:
        [(ENXPCConnection *)self _xpcExposureDetectionFileGetExposureWindows:requestCopy];
        break;
      case 48:
        [(ENXPCConnection *)self _xpcExposureDetectionHistoryGetFiles:requestCopy];
        break;
      case 49:
        [(ENXPCConnection *)self _xpcExposureDetectionHistoryGetSessions:requestCopy];
        break;
      case 50:
        [(ENXPCConnection *)self _xpcGetActiveRegion:requestCopy];
        break;
      case 51:
        [(ENXPCConnection *)self _xpcGetRegionConfig:requestCopy];
        break;
      case 52:
        [(ENXPCConnection *)self _xpcGetAllRegionConfig:requestCopy];
        break;
      case 53:
        [(ENXPCConnection *)self _xpcSetRegionConsent:requestCopy];
        break;
      case 54:
        [(ENXPCConnection *)self _xpcSetDeveloperRegionServerConfig:requestCopy];
        break;
      case 55:
        [(ENXPCConnection *)self _xpcGetRegionHistory:requestCopy];
        break;
      case 56:
        [(ENXPCConnection *)self _xpcGetRegionHistoryEnabled:requestCopy];
        break;
      case 57:
        [(ENXPCConnection *)self _xpcSetRegionHistoryEnabled:requestCopy];
        break;
      case 58:
        [(ENXPCConnection *)self _xpcGetCurrentAgencyConfig:requestCopy];
        break;
      case 61:
        [(ENXPCConnection *)self _xpcGetRegionMonitorEnabled:requestCopy];
        break;
      case 62:
        [(ENXPCConnection *)self _xpcGetSubdivisionList:requestCopy];
        break;
      case 70:
        [(ENXPCConnection *)self _xpcTCCCheck:requestCopy];
        break;
      default:
        if (int64 != 100)
        {
          goto LABEL_45;
        }

        [(ENXPCConnection *)self _xpcDiagnosticControl:requestCopy];
        break;
    }

    goto LABEL_81;
  }

  if (int64 <= 199)
  {
    if (int64 <= 102)
    {
      if (int64 == 101)
      {
        [(ENXPCConnection *)self _xpcDiagnosticLog:requestCopy];
      }

      else
      {
        [(ENXPCConnection *)self _xpcDiagnosticShow:requestCopy];
      }

      goto LABEL_81;
    }

    switch(int64)
    {
      case 103:
        [(ENXPCConnection *)self _xpcNotificationTrigger:requestCopy];
        goto LABEL_81;
      case 150:
        [(ENXPCConnection *)self _xpcGetEntities:requestCopy];
        goto LABEL_81;
      case 151:
        [(ENXPCConnection *)self _xpcSetActiveEntity:requestCopy];
        goto LABEL_81;
    }

    goto LABEL_45;
  }

  if (int64 > 299)
  {
    if (int64 <= 301)
    {
      if (int64 == 300)
      {
        [(ENXPCConnection *)self _xpcStartTestVerificationSession:requestCopy];
      }

      else
      {
        [(ENXPCConnection *)self _xpcFetchTestVerificationMetadata:requestCopy];
      }

      goto LABEL_81;
    }

    if (int64 == 302)
    {
      [(ENXPCConnection *)self _xpcFinishTestVerificationSession:requestCopy];
      goto LABEL_81;
    }

    if (int64 == 303)
    {
      [(ENXPCConnection *)self _xpcStartSelfReportWebSession:requestCopy];
      goto LABEL_81;
    }

LABEL_45:
    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      [ENXPCConnection _xpcConnectionRequest:];
    }

    if (xpc_dictionary_expects_reply())
    {
      v10 = v5;
      v6 = ENErrorF();
      [(ENXPCConnection *)self _xpcSendReplyError:v6 request:requestCopy, v10];
    }

    goto LABEL_81;
  }

  switch(int64)
  {
    case 200:
      [(ENXPCConnection *)self _xpcGetStatusForBundleIdentifier:requestCopy];
      break;
    case 201:
      [(ENXPCConnection *)self _xpcGetInfo:requestCopy];
      break;
    case 202:
      [(ENXPCConnection *)self _xpcSetActiveApp:requestCopy];
      break;
    case 204:
      [(ENXPCConnection *)self _xpcGetLastExposureNotification:requestCopy];
      break;
    case 205:
      [(ENXPCConnection *)self _xpcDownload:requestCopy];
      break;
    case 206:
      [(ENXPCConnection *)self _xpcSetActiveRegion:requestCopy];
      break;
    case 207:
      [(ENXPCConnection *)self _xpcSetAutomaticRegionSwitch:requestCopy];
      break;
    case 209:
      [(ENXPCConnection *)self _xpcOnboardingDidStart:requestCopy];
      break;
    case 210:
      [(ENXPCConnection *)self _xpcGetPreAuthorizeDiagnosisKeysEnabled:requestCopy];
      break;
    case 211:
      [(ENXPCConnection *)self _xpcSetPreAuthorizeDiagnosisKeysEnabled:requestCopy];
      break;
    case 212:
      [(ENXPCConnection *)self _xpcGetRemotePresentationRequestIfNeeded:requestCopy];
      break;
    case 213:
      [(ENXPCConnection *)self _xpcRemotePresentationReceivedDecision:requestCopy];
      break;
    case 214:
      [(ENXPCConnection *)self _xpcGetDataVaultSize:requestCopy];
      break;
    case 215:
      [(ENXPCConnection *)self _xpcSetAvailabilityAlertEnabled:requestCopy];
      break;
    case 216:
      [(ENXPCConnection *)self _xpcSetMonthlySummaryAlertEnabled:requestCopy];
      break;
    case 217:
      [(ENXPCConnection *)self _xpcShowBuddy:requestCopy];
      break;
    case 218:
      [(ENXPCConnection *)self _xpcVerifyTextMessage:requestCopy];
      break;
    case 219:
      [(ENXPCConnection *)self _xpcLegalConsentPageCount:requestCopy];
      break;
    default:
      goto LABEL_45;
  }

LABEL_81:
}

- (void)_xpcMessageAddCommonKeys:(id)keys allowed:(BOOL)allowed
{
  allowedCopy = allowed;
  keysCopy = keys;
  xdict = keysCopy;
  if (allowedCopy)
  {
    xpc_dictionary_set_BOOL(keysCopy, "enbd", [(ENDaemon *)self->_daemon prefEnabled]);
    xpc_dictionary_set_BOOL(xdict, "paus", [(ENDaemon *)self->_daemon prefPaused]);
    v7 = [(ENDaemon *)self->_daemon prefDifferentialPrivacyConsent]== 2;
  }

  else
  {
    xpc_dictionary_set_BOOL(keysCopy, "enbd", 0);
    xpc_dictionary_set_BOOL(xdict, "paus", 0);
    v7 = 0;
  }

  xpc_dictionary_set_BOOL(xdict, "dpEn", v7);
  appAPIVersion = [(ENXPCClient *)self->_client appAPIVersion];
  if (allowedCopy)
  {
    getOverallStatus = [(ENDaemon *)self->_daemon getOverallStatus];
  }

  else if (appAPIVersion <= 1)
  {
    getOverallStatus = 4;
  }

  else
  {
    getOverallStatus = 6;
  }

  xpc_dictionary_set_int64(xdict, "stat", getOverallStatus);
}

- (void)_xpcSendMessage:(id)message
{
  message = message;
  v4 = self->_xpcCnx;
  v5 = v4;
  if (v4)
  {
    xpc_connection_send_message(v4, message);
  }

  else
  {
    [ENXPCConnection _xpcSendMessage:];
  }
}

- (void)_xpcSendReplyError:(id)error request:(id)request
{
  errorCopy = error;
  requestCopy = request;
  v7 = self->_xpcCnx;
  if (v7)
  {
    reply = xpc_dictionary_create_reply(requestCopy);
    if (reply)
    {
      [(ENXPCConnection *)self _xpcSendReplyError:errorCopy reply:reply];
    }

    else
    {
      [ENXPCConnection _xpcSendReplyError:request:];
    }
  }

  else
  {
    [ENXPCConnection _xpcSendReplyError:request:];
  }
}

- (void)_xpcSendReplyError:(id)error reply:(id)reply
{
  errorCopy = error;
  replyCopy = reply;
  v7 = self->_xpcCnx;
  if (v7)
  {
    CUXPCEncodeNSError();
    xpc_connection_send_message(v7, replyCopy);
    signingIdentity = [(ENXPCClient *)self->_client signingIdentity];
    if (signingIdentity != @"com.apple.enutil")
    {
      v9 = signingIdentity;
      if (!signingIdentity || (v10 = [(__CFString *)signingIdentity isEqual:@"com.apple.enutil"], v9, v9, (v10 & 1) == 0))
      {
        domain = [errorCopy domain];
        v12 = [domain isEqualToString:*MEMORY[0x277CC5BD0]];

        if (v12)
        {
          v13 = [errorCopy code] - 5;
          if (v13 <= 0xB && ((0xCE9u >> v13) & 1) != 0)
          {
            v14 = dword_24A28BE7C[v13];
            delegate = [(ENDaemon *)self->_daemon delegate];
            [delegate sendErrorMetricWithType:v14];
          }
        }
      }
    }
  }

  else
  {
    [ENXPCConnection _xpcSendReplyError:reply:];
  }
}

- (void)_xpcEntitlementCheck:(id)check
{
  checkCopy = check;
  v9 = 0;
  v5 = [(ENXPCConnection *)self _entitledForAccessLevel:2 error:&v9];
  v6 = v9;
  if (_MergedGlobals > 30 || _MergedGlobals == -1 && !_LogCategory_Initialize())
  {
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_11:
    [(ENXPCConnection *)self _xpcSendReplyError:v6 request:checkCopy];
    goto LABEL_12;
  }

  [ENXPCConnection _xpcEntitlementCheck:];
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ([(ENDaemon *)self->_daemon getOverallStatus]== 4)
  {
    v7 = ENErrorF();

    [(ENXPCConnection *)self _xpcSendReplyError:v7 request:checkCopy];
    v6 = v7;
  }

  else
  {
    reply = xpc_dictionary_create_reply(checkCopy);
    if (reply)
    {
      [(ENXPCConnection *)self _xpcSendMessage:reply];
    }

    else
    {
      [ENXPCConnection _xpcEntitlementCheck:];
    }
  }

LABEL_12:
}

- (void)_xpcGetUserTraveled:(id)traveled
{
  traveledCopy = traveled;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__3;
  v40 = __Block_byref_object_dispose__3;
  v41 = 0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __39__ENXPCConnection__xpcGetUserTraveled___block_invoke;
  v33[3] = &unk_278FD10D0;
  v35 = &v36;
  v33[4] = self;
  v5 = traveledCopy;
  v34 = v5;
  v6 = MEMORY[0x24C214430](v33);
  v7 = v37;
  obj = v37[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:2 error:&obj];
  objc_storeStrong(v7 + 5, obj);
  if (v8)
  {
    v9 = v37;
    v31 = v37[5];
    v10 = [(ENXPCConnection *)self _authorizedAndReturnError:&v31];
    objc_storeStrong(v9 + 5, v31);
    if (v10)
    {
      v11 = v37;
      v30 = v37[5];
      v12 = [(ENXPCConnection *)self _appActiveStatusWithError:&v30];
      objc_storeStrong(v11 + 5, v30);
      if (v12)
      {
        if (-[ENDaemon overallStatus](self->_daemon, "overallStatus") != 1 || (-[ENDaemon regionMonitor](self->_daemon, "regionMonitor"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 getAuthorizationState], v13, v14 != 2))
        {
          v21 = ENErrorF();
          v16 = v37[5];
          v37[5] = v21;
          goto LABEL_15;
        }

        v15 = v37;
        v29 = v37[5];
        v16 = [(ENXPCConnection *)self _regionConfigForXPCRequest:v5 error:&v29];
        objc_storeStrong(v15 + 5, v29);
        if (!v16)
        {
LABEL_15:

          goto LABEL_16;
        }

        configurationManager = [(ENDaemon *)self->_daemon configurationManager];
        configurationStore = [configurationManager configurationStore];

        if (!configurationStore)
        {
          v22 = ENErrorF();
          v23 = v37[5];
          v37[5] = v22;

          goto LABEL_14;
        }

        travelerModeEnabled = [v16 travelerModeEnabled];
        if (travelerModeEnabled == 1)
        {
          v20 = 0;
        }

        else
        {
          if (!travelerModeEnabled)
          {
            v24[0] = MEMORY[0x277D85DD0];
            v24[1] = 3221225472;
            v24[2] = __39__ENXPCConnection__xpcGetUserTraveled___block_invoke_2;
            v24[3] = &unk_278FD1A28;
            v24[4] = self;
            v28 = &v36;
            v25 = v5;
            v26 = v16;
            v27 = configurationStore;
            [(ENXPCConnection *)self _xpcGetUserTraveledPromptWithCompletion:v24];

LABEL_14:
            goto LABEL_15;
          }

          v20 = 1;
        }

        [(ENXPCConnection *)self _xpcGetUserTraveledReplyAllowed:v20 request:v5];
        goto LABEL_14;
      }
    }
  }

LABEL_16:
  v6[2](v6);

  _Block_object_dispose(&v36, 8);
}

uint64_t __39__ENXPCConnection__xpcGetUserTraveled___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

void __39__ENXPCConnection__xpcGetUserTraveled___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(*(a1 + 64) + 8) + 40);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    [v5 _xpcSendReplyError:v4 request:v6];
  }

  else
  {
    if (a2)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    [*(a1 + 48) setTravelerModeEnabled:v8];
    v10 = *(a1 + 48);
    v9 = *(a1 + 56);
    v11 = *(*(a1 + 64) + 8);
    v19 = *(v11 + 40);
    v12 = [v9 saveRegionConfiguration:v10 error:&v19];
    objc_storeStrong((v11 + 40), v19);
    v13 = *(a1 + 32);
    if (v12)
    {
      [v13 _xpcGetUserTraveledReplyAllowed:a2 request:*(a1 + 40)];
    }

    else
    {
      v14 = v13[6];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __39__ENXPCConnection__xpcGetUserTraveled___block_invoke_3;
      v16[3] = &unk_278FD1A00;
      v15 = *(a1 + 64);
      v16[4] = v13;
      v18 = v15;
      v17 = *(a1 + 40);
      dispatch_async(v14, v16);
    }
  }
}

- (void)_xpcGetUserTraveledPromptWithCompletion:(id)completion
{
  completionCopy = completion;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__3;
  v32 = __Block_byref_object_dispose__3;
  v33 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __59__ENXPCConnection__xpcGetUserTraveledPromptWithCompletion___block_invoke;
  v25[3] = &unk_278FD1A50;
  v27 = &v28;
  v5 = completionCopy;
  v26 = v5;
  v6 = MEMORY[0x24C214430](v25);
  if (self->_userAlert || ([(ENDaemon *)self->_daemon userAlert], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = ENErrorF();
    v9 = v29[5];
    v29[5] = v8;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CEEE98]);
    v10 = [v9 applicationInfoForPID:{-[ENXPCClient pid](self->_client, "pid")}];
    v11 = *MEMORY[0x277CEEE78];
    Int64Ranged = CFDictionaryGetInt64Ranged();
    [v9 invalidate];
    if (Int64Ranged == 8)
    {
      signingIdentity = [(ENXPCClient *)self->_client signingIdentity];
      if (signingIdentity)
      {
        v14 = [MEMORY[0x277CC1E68] applicationProxyForIdentifier:signingIdentity placeholder:0];
        localizedName = [v14 localizedName];

        v16 = objc_alloc_init(MEMORY[0x277CC5D38]);
        objc_storeStrong(&self->_userAlert, v16);
        [v16 setDispatchQueue:self->_dispatchQueue];
        [v16 setTitleKey:@"SHARE_TRAVEL_TITLE_FORMAT"];
        if (localizedName)
        {
          v17 = localizedName;
        }

        else
        {
          v17 = @"?";
        }

        [v16 setTitleParameter:v17];
        [v16 setSubTitleKey:@"SHARE_TRAVEL_MESSAGE"];
        [v16 setDefaultButtonTitleKey:@"SHARE_BUTTON"];
        [v16 setAlternativeButtonTitleKey:@"DONT_SHARE_BUTTON"];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __59__ENXPCConnection__xpcGetUserTraveledPromptWithCompletion___block_invoke_2;
        v23[3] = &unk_278FD1A78;
        v23[4] = self;
        v23[5] = v16;
        v18 = v5;
        v24 = v18;
        [v16 setActionHandler:v23];
        if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }

        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __59__ENXPCConnection__xpcGetUserTraveledPromptWithCompletion___block_invoke_3;
        v21[3] = &unk_278FD1AA0;
        v21[4] = self;
        v21[5] = v16;
        v22 = v18;
        [v16 activateWithCompletionHandler:v21];
      }

      else
      {
        v20 = ENErrorF();
        localizedName = v29[5];
        v29[5] = v20;
      }
    }

    else
    {
      v19 = ENErrorF();
      signingIdentity = v29[5];
      v29[5] = v19;
    }
  }

  v6[2](v6);
  _Block_object_dispose(&v28, 8);
}

uint64_t __59__ENXPCConnection__xpcGetUserTraveledPromptWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = *(a1 + 40);
      if (!v4)
      {
        goto LABEL_7;
      }

      v7 = *(*(v2 + 8) + 40);
    }

    v8 = CUPrintNSError();
    LogPrintF_safe();

    v2 = *(a1 + 40);
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = *(*(a1 + 32) + 16);

  return v6();
}

uint64_t __59__ENXPCConnection__xpcGetUserTraveledPromptWithCompletion___block_invoke_2(void *a1, unint64_t a2)
{
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __59__ENXPCConnection__xpcGetUserTraveledPromptWithCompletion___block_invoke_2_cold_1(a2);
  }

  v4 = a1[4];
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;

  v6 = a1[5];
  v7 = [*(a1[4] + 32) userAlert];

  if (v6 == v7)
  {
    [*(a1[4] + 32) setUserAlert:0];
  }

  v8 = *(a1[6] + 16);

  return v8();
}

void __59__ENXPCConnection__xpcGetUserTraveledPromptWithCompletion___block_invoke_3(void *a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      __59__ENXPCConnection__xpcGetUserTraveledPromptWithCompletion___block_invoke_3_cold_1();
    }

    v3 = a1[4];
    v4 = *(v3 + 8);
    *(v3 + 8) = 0;

    v5 = a1[5];
    v6 = [*(a1[4] + 32) userAlert];

    if (v5 == v6)
    {
      [*(a1[4] + 32) setUserAlert:0];
    }

    (*(a1[6] + 16))();
  }

  else if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __59__ENXPCConnection__xpcGetUserTraveledPromptWithCompletion___block_invoke_3_cold_2();
  }
}

- (void)_xpcGetUserTraveledReplyAllowed:(BOOL)allowed request:(id)request
{
  allowedCopy = allowed;
  requestCopy = request;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__3;
  v30 = __Block_byref_object_dispose__3;
  v31 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __59__ENXPCConnection__xpcGetUserTraveledReplyAllowed_request___block_invoke;
  v23[3] = &unk_278FD10D0;
  v25 = &v26;
  v23[4] = self;
  v7 = requestCopy;
  v24 = v7;
  v8 = MEMORY[0x24C214430](v23);
  if (!allowedCopy)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    v16 = 0;
    goto LABEL_16;
  }

  activeEntity = [(ENDaemon *)self->_daemon activeEntity];
  entity = [activeEntity entity];
  region = [entity region];

  regionMonitor = [(ENDaemon *)self->_daemon regionMonitor];
  v13 = (v27 + 5);
  obj = v27[5];
  v14 = [regionMonitor getAllRegionsWithError:&obj];
  objc_storeStrong(v13, obj);

  if (v27[5])
  {
    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    goto LABEL_26;
  }

  if (!v14 || !region)
  {
    v20 = ENErrorF();
    v21 = v27[5];
    v27[5] = v20;

LABEL_26:
    goto LABEL_18;
  }

  v15 = [MEMORY[0x277CBEB50] setWithSet:v14];
  [v15 addObject:region];
  v16 = [v15 count] > 1;
  v17 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v17 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

LABEL_16:
  reply = xpc_dictionary_create_reply(v7);
  region = reply;
  if (reply)
  {
    xpc_dictionary_set_BOOL(reply, "userTraveled", v16);
    [(ENXPCConnection *)self _xpcSendMessage:region];
  }

  else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

LABEL_18:

  v8[2](v8);
  _Block_object_dispose(&v26, 8);
}

uint64_t __59__ENXPCConnection__xpcGetUserTraveledReplyAllowed_request___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcGetTravelStatusEnabled:(id)enabled
{
  enabledCopy = enabled;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__3;
  v31 = __Block_byref_object_dispose__3;
  v32 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __46__ENXPCConnection__xpcGetTravelStatusEnabled___block_invoke;
  v24[3] = &unk_278FD10D0;
  v26 = &v27;
  v24[4] = self;
  v5 = enabledCopy;
  v25 = v5;
  v6 = MEMORY[0x24C214430](v24);
  v7 = (v28 + 5);
  obj = v28[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = (v28 + 5);
    v22 = v28[5];
    v10 = [(ENXPCConnection *)self _authorizedAndReturnError:&v22];
    objc_storeStrong(v9, v22);
    if (v10)
    {
      v11 = (v28 + 5);
      v21 = v28[5];
      v12 = [(ENXPCConnection *)self _regionConfigForXPCRequest:v5 error:&v21];
      objc_storeStrong(v11, v21);
      if (v12)
      {
        travelerModeEnabled = [v12 travelerModeEnabled];
        v14 = +[ENLoggingPrefs sharedENLoggingPrefs];
        isSensitiveLoggingAllowed = [v14 isSensitiveLoggingAllowed];

        if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          if (travelerModeEnabled <= 2)
          {
            v16 = off_278FD2238[travelerModeEnabled];
          }

          region = [v12 region];
          regionCode = [region regionCode];
          LogPrintF_safe();
        }

        reply = xpc_dictionary_create_reply(v5);
        v19 = reply;
        if (reply)
        {
          xpc_dictionary_set_BOOL(reply, "enbd", travelerModeEnabled == 2);
          [(ENXPCConnection *)self _xpcSendMessage:v19];
        }

        else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }
      }
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v27, 8);
}

uint64_t __46__ENXPCConnection__xpcGetTravelStatusEnabled___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcSetTravelStatusEnabled:(id)enabled
{
  enabledCopy = enabled;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__3;
  v38 = __Block_byref_object_dispose__3;
  v39 = 0;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __46__ENXPCConnection__xpcSetTravelStatusEnabled___block_invoke;
  v31[3] = &unk_278FD10D0;
  v33 = &v34;
  v31[4] = self;
  v5 = enabledCopy;
  v32 = v5;
  v6 = MEMORY[0x24C214430](v31);
  v7 = (v35 + 5);
  obj = v35[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = (v35 + 5);
    v29 = v35[5];
    v10 = [(ENXPCConnection *)self _authorizedAndReturnError:&v29];
    objc_storeStrong(v9, v29);
    if (v10)
    {
      configurationManager = [(ENDaemon *)self->_daemon configurationManager];
      configurationStore = [configurationManager configurationStore];

      if (configurationStore)
      {
        v13 = (v35 + 5);
        v28 = v35[5];
        v14 = [(ENXPCConnection *)self _regionConfigForXPCRequest:v5 error:&v28];
        objc_storeStrong(v13, v28);
        if (v14)
        {
          v15 = xpc_dictionary_get_BOOL(v5, "enbd");
          v16 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isSensitiveLoggingAllowed = [v16 isSensitiveLoggingAllowed];

          if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            if (v15)
            {
              v18 = "yes";
            }

            else
            {
              v18 = "no";
            }

            region = [v14 region];
            [region regionCode];
            v26 = v25 = v18;
            LogPrintF_safe();
          }

          if (v15)
          {
            v20 = 2;
          }

          else
          {
            v20 = 1;
          }

          [v14 setTravelerModeEnabled:{v20, v25, v26}];
          v21 = (v35 + 5);
          v27 = v35[5];
          v22 = [configurationStore saveRegionConfiguration:v14 error:&v27];
          objc_storeStrong(v21, v27);
          if (v22)
          {
            [(ENDaemon *)self->_daemon prefsChanged];
            reply = xpc_dictionary_create_reply(v5);
            if (reply)
            {
              [(ENXPCConnection *)self _xpcSendMessage:reply];
            }

            else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe();
            }
          }
        }
      }

      else
      {
        v24 = ENErrorF();
        v14 = v35[5];
        v35[5] = v24;
      }
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v34, 8);
}

uint64_t __46__ENXPCConnection__xpcSetTravelStatusEnabled___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcManagerActivate:(id)activate
{
  activateCopy = activate;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__3;
  v46 = __Block_byref_object_dispose__3;
  v47 = 0;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __39__ENXPCConnection__xpcManagerActivate___block_invoke;
  v39[3] = &unk_278FD10D0;
  v41 = &v42;
  v39[4] = self;
  v5 = activateCopy;
  v40 = v5;
  v35 = MEMORY[0x24C214430](v39);
  v6 = (v43 + 5);
  obj = v43[5];
  v7 = [(ENXPCConnection *)self _entitledForAccessLevel:2 error:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    v36 = v5;
    if (self->_manager)
    {
      v32 = ENErrorF();
      reply = v43[5];
      v43[5] = v32;
LABEL_28:

      v5 = v36;
      goto LABEL_29;
    }

    v8 = (v43 + 5);
    v37 = v43[5];
    v9 = [(ENXPCConnection *)self _xpcManagerActivateIfNecessaryWithRequest:v5 error:&v37];
    objc_storeStrong(v8, v37);
    if (v9)
    {
      [(ENDaemon *)self->_daemon setUsageManagerActivate:[(ENDaemon *)self->_daemon usageManagerActivate]+ 1];
      [(ENDaemon *)self->_daemon _scheduleUpdate];
      reply = xpc_dictionary_create_reply(v5);
      if (!reply)
      {
        if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }

        goto LABEL_28;
      }

      [(ENXPCConnection *)self _xpcMessageAddCommonKeys:reply allowed:[(ENXPCConnection *)self _appActiveStatusWithError:0]];
      [(ENXPCConnection *)self _xpcSendMessage:reply];
      CFStringGetTypeID();
      v11 = CFPrefs_CopyTypedValue();
      if (!v11)
      {
        goto LABEL_26;
      }

      activeEntity = [(ENDaemon *)self->_daemon activeEntity];
      entity = [activeEntity entity];
      bundleIdentifier = [entity bundleIdentifier];
      client2 = v11;
      v14 = bundleIdentifier;
      v15 = v14;
      if (client2 == v14)
      {
      }

      else
      {
        if (!v14)
        {
          v17 = 0;
LABEL_18:

LABEL_19:
          client = [(ENXPCConnection *)self client];
          signingIdentity = [client signingIdentity];
          v27 = signingIdentity;
          if (signingIdentity != @"com.apple.enutil")
          {
            if (!signingIdentity)
            {
              v28 = 0;
LABEL_24:

              if ((v17 | v28))
              {
                [(ENXPCConnection *)self enqueuePreAuthorizedLockScreenActionForRequest:v36 outError:0];
              }

LABEL_26:

              daemon = self->_daemon;
              signingIdentity2 = [(ENXPCClient *)self->_client signingIdentity];
              v31 = [(ENDaemon *)daemon appDequeueActivityFlagsWithBundleID:signingIdentity2];

              if (v31)
              {
                [(ENXPCConnection *)self xpcReportActivityFlags:v31];
              }

              goto LABEL_28;
            }

            v28 = [(__CFString *)signingIdentity isEqual:@"com.apple.enutil"];

            if (!v28)
            {
              goto LABEL_24;
            }
          }

          v28 = IsAppleInternalBuild() != 0;
          goto LABEL_24;
        }

        v16 = [client2 isEqual:v14];

        if (!v16)
        {
          v17 = 0;
          goto LABEL_19;
        }
      }

      client2 = [(ENXPCConnection *)self client];
      signingIdentity3 = [client2 signingIdentity];
      activeEntity2 = [(ENDaemon *)self->_daemon activeEntity];
      entity2 = [activeEntity2 entity];
      bundleIdentifier2 = [entity2 bundleIdentifier];
      v22 = signingIdentity3;
      v23 = bundleIdentifier2;
      v24 = v23;
      if (v22 == v23)
      {
        v17 = 1;
      }

      else if ((v22 != 0) == (v23 == 0))
      {
        v17 = 0;
      }

      else
      {
        v17 = [v22 isEqual:v23];
      }

      goto LABEL_18;
    }
  }

LABEL_29:
  v35[2](v35);

  _Block_object_dispose(&v42, 8);
}

uint64_t __39__ENXPCConnection__xpcManagerActivate___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (BOOL)_xpcManagerActivateIfNecessaryWithRequest:(id)request error:(id *)error
{
  p_manager = &self->_manager;
  if (!self->_manager)
  {
    requestCopy = request;
    int64 = xpc_dictionary_get_int64(requestCopy, "apiV");
    v14 = 0;
    v13 = 1;
    CUXPCDecodeNSString();
    CUXPCDecodeBool();

    client = self->_client;
    p_client = &self->_client;
    [(ENXPCClient *)client accessLevel];
    [(ENXPCClient *)*p_client activateWithAppAPIVersion:int64 regionISO:0];
    v10 = objc_alloc_init(MEMORY[0x277CC5C88]);
    v11 = *p_manager;
    *p_manager = v10;

    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [(ENXPCConnection *)p_manager _xpcManagerActivateIfNecessaryWithRequest:&v13 error:?];
    }
  }

  return 1;
}

- (void)xpcReportActivityFlags:(unsigned int)flags
{
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(xdict, "mTyp", 19);
  xpc_dictionary_set_uint64(xdict, "actF", flags);
  [(ENXPCConnection *)self _xpcSendMessage:xdict];
}

- (void)_xpcSetEnabled:(id)enabled
{
  enabledCopy = enabled;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__3;
  v36 = __Block_byref_object_dispose__3;
  v37 = 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __34__ENXPCConnection__xpcSetEnabled___block_invoke;
  v29[3] = &unk_278FD10D0;
  v31 = &v32;
  v29[4] = self;
  v5 = enabledCopy;
  v30 = v5;
  v6 = MEMORY[0x24C214430](v29);
  v7 = (v33 + 5);
  obj = v33[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:2 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = (v33 + 5);
    v27 = v33[5];
    v10 = [(ENXPCConnection *)self _authorizedAndReturnError:&v27];
    objc_storeStrong(v9, v27);
    if (v10)
    {
      v11 = (v33 + 5);
      v26 = v33[5];
      v12 = [(ENXPCConnection *)self _appActiveStatusWithError:&v26];
      objc_storeStrong(v11, v26);
      if (v12)
      {
        accessLevel = [(ENXPCClient *)self->_client accessLevel];
        v14 = MEMORY[0x277CBED18];
        if (accessLevel == 3)
        {
          if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }

          v15 = *v14;
          CFPrefs_SetValue();
        }

        else if ([(ENXPCClient *)self->_client accessLevel]== 2)
        {
          if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }

          CFPrefs_RemoveValue();
        }

        [(ENDaemon *)self->_daemon prefsChanged];
        v16 = xpc_dictionary_get_BOOL(v5, "enbd");
        if ([(ENDaemon *)self->_daemon overallStatus]== 4)
        {
          v24 = ENErrorF();
          reply = v33[5];
          v33[5] = v24;
        }

        else
        {
          if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            v17 = "Disable";
            if (v16)
            {
              v17 = "Enable";
            }

            v25 = v17;
            LogPrintF_safe();
          }

          v18 = MEMORY[0x277CBED20];
          if (!v16)
          {
            v18 = v14;
          }

          v19 = *v18;
          CFPrefs_SetValue();
          daemon = self->_daemon;
          if (v16)
          {
            [(ENDaemon *)daemon setUsageUserEnabled:[(ENDaemon *)self->_daemon usageUserEnabled]+ 1];
          }

          else
          {
            [(ENDaemon *)daemon setUsageUserDisabled:[(ENDaemon *)self->_daemon usageUserDisabled]+ 1];
          }

          [(ENDaemon *)self->_daemon prefsChanged];
          client = [(ENXPCConnection *)self client];
          appRegion = [client appRegion];

          if (appRegion)
          {
            [(ENDaemon *)self->_daemon startServerConfigurationFetchForRegion:appRegion];
          }

          reply = xpc_dictionary_create_reply(v5);
          if (reply)
          {
            [(ENXPCConnection *)self _xpcMessageAddCommonKeys:reply allowed:1];
            [(ENXPCConnection *)self _xpcSendMessage:reply];
          }

          else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }
        }
      }
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v32, 8);
}

uint64_t __34__ENXPCConnection__xpcSetEnabled___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcSetPaused:(id)paused
{
  pausedCopy = paused;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__3;
  v26 = __Block_byref_object_dispose__3;
  v27 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __33__ENXPCConnection__xpcSetPaused___block_invoke;
  v19[3] = &unk_278FD10D0;
  v21 = &v22;
  v19[4] = self;
  v5 = pausedCopy;
  v20 = v5;
  v6 = MEMORY[0x24C214430](v19);
  v7 = (v23 + 5);
  obj = v23[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = (v23 + 5);
    v17 = v23[5];
    v10 = [(ENXPCConnection *)self _authorizedAndReturnError:&v17];
    objc_storeStrong(v9, v17);
    if (v10)
    {
      v11 = xpc_dictionary_get_BOOL(v5, "paus");
      v12 = xpc_dictionary_get_double(v5, "dura");
      v13 = MEMORY[0x277CBED20];
      if (!v11)
      {
        v13 = MEMORY[0x277CBED18];
      }

      v14 = *v13;
      CFPrefs_SetValue();
      if (v11)
      {
        if (v12 <= 0.0)
        {
          if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }

          CFPrefs_RemoveValue();
        }

        else
        {
          if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            v16 = CUPrintDurationDouble();
            LogPrintF_safe();
          }

          CFAbsoluteTimeGetCurrent();
          CFPrefs_SetDouble();
        }

        [(ENDaemon *)self->_daemon setUsageUserPaused:[(ENDaemon *)self->_daemon usageUserPaused]+ 1];
      }

      else
      {
        if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }

        CFPrefs_RemoveValue();
        [(ENDaemon *)self->_daemon setUsageUserUnpaused:[(ENDaemon *)self->_daemon usageUserUnpaused]+ 1];
      }

      [(ENDaemon *)self->_daemon pauseUpdate];
      [(ENDaemon *)self->_daemon prefsChanged];
      reply = xpc_dictionary_create_reply(v5);
      if (reply)
      {
        [(ENXPCConnection *)self _xpcMessageAddCommonKeys:reply allowed:1];
        [(ENXPCConnection *)self _xpcSendMessage:reply];
      }

      else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v22, 8);
}

uint64_t __33__ENXPCConnection__xpcSetPaused___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)xpcStatusChanged
{
  v3 = [(ENXPCConnection *)self _appActiveStatusWithError:0];
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, "mTyp", 12);
  [(ENXPCConnection *)self _xpcMessageAddCommonKeys:v4 allowed:v3];
  [(ENXPCConnection *)self _xpcSendMessage:v4];
}

- (void)_xpcGetPreAuthorizeDiagnosisKeysEnabled:(id)enabled
{
  enabledCopy = enabled;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__3;
  v32 = __Block_byref_object_dispose__3;
  v33 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __59__ENXPCConnection__xpcGetPreAuthorizeDiagnosisKeysEnabled___block_invoke;
  v25[3] = &unk_278FD10D0;
  v27 = &v28;
  v25[4] = self;
  v5 = enabledCopy;
  v26 = v5;
  v6 = MEMORY[0x24C214430](v25);
  v7 = (v29 + 5);
  obj = v29[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = (v29 + 5);
    v23 = v29[5];
    v10 = [(ENXPCConnection *)self _authorizedAndReturnError:&v23];
    objc_storeStrong(v9, v23);
    if (v10)
    {
      v11 = (v29 + 5);
      v22 = v29[5];
      v12 = [(ENXPCConnection *)self _regionConfigForXPCRequest:v5 error:&v22];
      objc_storeStrong(v11, v22);
      if (v12)
      {
        diagnosisKeysPreAuthorization = [v12 diagnosisKeysPreAuthorization];
        userAuthorization = [diagnosisKeysPreAuthorization userAuthorization];

        v15 = +[ENLoggingPrefs sharedENLoggingPrefs];
        isSensitiveLoggingAllowed = [v15 isSensitiveLoggingAllowed];

        if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          client = [(ENXPCConnection *)self client];
          LogPrintF_safe();
        }

        if (userAuthorization == 1 || (v18 = (v29 + 5), v21 = v29[5], [(ENXPCConnection *)self updateDiagnosisKeysPreAuthorizationForRequest:v5 withDecision:0 errorOut:&v21], objc_storeStrong(v18, v21), !v29[5]))
        {
          reply = xpc_dictionary_create_reply(v5);
          v20 = reply;
          if (reply)
          {
            xpc_dictionary_set_BOOL(reply, "enbd", userAuthorization == 1);
            [(ENXPCConnection *)self _xpcSendMessage:v20];
          }

          else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }
        }
      }
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v28, 8);
}

uint64_t __59__ENXPCConnection__xpcGetPreAuthorizeDiagnosisKeysEnabled___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcSetPreAuthorizeDiagnosisKeysEnabled:(id)enabled
{
  enabledCopy = enabled;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__3;
  v35 = __Block_byref_object_dispose__3;
  v36 = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __59__ENXPCConnection__xpcSetPreAuthorizeDiagnosisKeysEnabled___block_invoke;
  v28[3] = &unk_278FD10D0;
  v30 = &v31;
  v28[4] = self;
  v5 = enabledCopy;
  v29 = v5;
  v6 = MEMORY[0x24C214430](v28);
  v7 = (v32 + 5);
  obj = v32[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = (v32 + 5);
    v26 = v32[5];
    v10 = [(ENXPCConnection *)self _authorizedAndReturnError:&v26];
    objc_storeStrong(v9, v26);
    if (v10)
    {
      v11 = (v32 + 5);
      v25 = v32[5];
      v12 = [(ENXPCConnection *)self _regionServerConfigForXPCRequest:v5 error:&v25];
      objc_storeStrong(v11, v25);
      if (v12)
      {
        if (-[ENDaemon _isNKDActive](self->_daemon, "_isNKDActive") && ([v12 preArmTestVerificationEnabled] & 1) == 0)
        {
          v21 = ENErrorF();
          reply = v32[5];
          v32[5] = v21;
        }

        else
        {
          v13 = xpc_dictionary_get_BOOL(v5, "enbd");
          v14 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isSensitiveLoggingAllowed = [v14 isSensitiveLoggingAllowed];

          if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            client = [(ENXPCConnection *)self client];
            v17 = client;
            v18 = "no";
            if (v13)
            {
              v18 = "yes";
            }

            v22 = v18;
            v23 = client;
            LogPrintF_safe();
          }

          v19 = (v32 + 5);
          v24 = v32[5];
          [(ENXPCConnection *)self updateDiagnosisKeysPreAuthorizationForRequest:v5 withDecision:v13 errorOut:&v24, v22, v23];
          objc_storeStrong(v19, v24);
          if (v32[5])
          {
            goto LABEL_17;
          }

          reply = xpc_dictionary_create_reply(v5);
          if (reply)
          {
            [(ENXPCConnection *)self _xpcSendMessage:reply];
          }

          else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }
        }
      }

LABEL_17:
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v31, 8);
}

uint64_t __59__ENXPCConnection__xpcSetPreAuthorizeDiagnosisKeysEnabled___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcPreAuthorizeDiagnosisKeys:(id)keys
{
  keysCopy = keys;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__3;
  v29 = __Block_byref_object_dispose__3;
  v30 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __49__ENXPCConnection__xpcPreAuthorizeDiagnosisKeys___block_invoke;
  v22[3] = &unk_278FD10D0;
  v24 = &v25;
  v22[4] = self;
  v5 = keysCopy;
  v23 = v5;
  v6 = MEMORY[0x24C214430](v22);
  v7 = (v26 + 5);
  obj = v26[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:2 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = (v26 + 5);
    v20 = v26[5];
    v10 = [(ENXPCConnection *)self _regionServerConfigForXPCRequest:v5 error:&v20];
    objc_storeStrong(v9, v20);
    if (!v10)
    {
LABEL_15:

      goto LABEL_16;
    }

    if (-[ENDaemon _isNKDActive](self->_daemon, "_isNKDActive") && ([v10 preArmTestVerificationEnabled] & 1) == 0 || (uuid = xpc_dictionary_get_uuid(v5, "rpsid")) == 0)
    {
      v19 = ENErrorF();
      v12 = v26[5];
      v26[5] = v19;
      goto LABEL_14;
    }

    v12 = [objc_alloc(MEMORY[0x277CCAD70]) initWithUUIDBytes:uuid];
    remoteUISessions = [(ENDaemon *)self->_daemon remoteUISessions];
    v14 = [remoteUISessions objectForKeyedSubscript:v12];

    if (v14)
    {
      [v14 setOriginalRequest:v5];
      [v14 setConnection:self];
      v15 = +[ENLoggingPrefs sharedENLoggingPrefs];
      isSensitiveLoggingAllowed = [v15 isSensitiveLoggingAllowed];

      if (!isSensitiveLoggingAllowed || _MergedGlobals > 30 || _MergedGlobals == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      client = [(ENXPCConnection *)self client];
      LogPrintF_safe();
    }

    else
    {
      v18 = ENErrorF();
      client = v26[5];
      v26[5] = v18;
    }

LABEL_13:
LABEL_14:

    goto LABEL_15;
  }

LABEL_16:
  v6[2](v6);

  _Block_object_dispose(&v25, 8);
}

uint64_t __49__ENXPCConnection__xpcPreAuthorizeDiagnosisKeys___block_invoke(uint64_t result)
{
  v1 = result + 48;
  if (*(*(*(result + 48) + 8) + 40))
  {
    v2 = result;
    v3 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v4 = [v3 isSensitiveLoggingAllowed];

    if (v4 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __49__ENXPCConnection__xpcPreAuthorizeDiagnosisKeys___block_invoke_cold_1(v1);
    }

    v5 = v2[5];
    v6 = *(*(v2[6] + 8) + 40);
    v7 = v2[4];

    return [v7 _xpcSendReplyError:v6 request:v5];
  }

  return result;
}

uint64_t __70__ENXPCConnection__xpcPreAuthorizeDiagnosisKeysComplete_userDecision___block_invoke(uint64_t result)
{
  v1 = result + 48;
  if (*(*(*(result + 48) + 8) + 40))
  {
    v2 = result;
    v3 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v4 = [v3 isSensitiveLoggingAllowed];

    if (v4 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __70__ENXPCConnection__xpcPreAuthorizeDiagnosisKeysComplete_userDecision___block_invoke_cold_1(v1);
    }

    v5 = v2[5];
    v6 = *(*(v2[6] + 8) + 40);
    v7 = v2[4];

    return [v7 _xpcSendReplyError:v6 request:v5];
  }

  return result;
}

- (void)_xpcRequestPreAuthorizedDiagnosisKeys:(id)keys
{
  keysCopy = keys;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__3;
  v30 = __Block_byref_object_dispose__3;
  v31 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __57__ENXPCConnection__xpcRequestPreAuthorizedDiagnosisKeys___block_invoke;
  v23[3] = &unk_278FD10D0;
  v25 = &v26;
  v23[4] = self;
  v5 = keysCopy;
  v24 = v5;
  v6 = MEMORY[0x24C214430](v23);
  v7 = (v27 + 5);
  obj = v27[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:2 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    if ([(ENXPCConnection *)self _appActiveStatusWithError:0])
    {
      v9 = +[ENLoggingPrefs sharedENLoggingPrefs];
      isSensitiveLoggingAllowed = [v9 isSensitiveLoggingAllowed];

      if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        client = [(ENXPCConnection *)self client];
        LogPrintF_safe();
      }

      CFStringGetTypeID();
      client2 = CFPrefs_CopyTypedValue();
      if (client2)
      {
        v12 = +[ENLoggingPrefs sharedENLoggingPrefs];
        isSensitiveLoggingAllowed2 = [v12 isSensitiveLoggingAllowed];

        if (isSensitiveLoggingAllowed2 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }
      }

      else
      {
        v14 = (v27 + 5);
        v21 = v27[5];
        [(ENXPCConnection *)self enqueuePreAuthorizedLockScreenActionForRequest:v5 outError:&v21];
        objc_storeStrong(v14, v21);
        if (v27[5])
        {
LABEL_17:

          goto LABEL_18;
        }
      }

      reply = xpc_dictionary_create_reply(v5);
      if (reply)
      {
        [(ENXPCConnection *)self _xpcSendMessage:reply];
      }

      else
      {
        v18 = +[ENLoggingPrefs sharedENLoggingPrefs];
        isSensitiveLoggingAllowed3 = [v18 isSensitiveLoggingAllowed];

        if (isSensitiveLoggingAllowed3 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }
      }
    }

    else
    {
      client2 = [(ENXPCConnection *)self client];
      reply = [client2 signingIdentity];
      v16 = ENErrorF();
      v17 = v27[5];
      v27[5] = v16;
    }

    goto LABEL_17;
  }

LABEL_18:
  v6[2](v6);

  _Block_object_dispose(&v26, 8);
}

uint64_t __57__ENXPCConnection__xpcRequestPreAuthorizedDiagnosisKeys___block_invoke(uint64_t result)
{
  v1 = result + 48;
  if (*(*(*(result + 48) + 8) + 40))
  {
    v2 = result;
    v3 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v4 = [v3 isSensitiveLoggingAllowed];

    if (v4 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __57__ENXPCConnection__xpcRequestPreAuthorizedDiagnosisKeys___block_invoke_cold_1(v1);
    }

    v5 = v2[5];
    v6 = *(*(v2[6] + 8) + 40);
    v7 = v2[4];

    return [v7 _xpcSendReplyError:v6 request:v5];
  }

  return result;
}

- (void)enqueuePreAuthorizedLockScreenActionForRequest:(id)request outError:(id *)error
{
  requestCopy = request;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__3;
  v29 = __Block_byref_object_dispose__3;
  v30 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __75__ENXPCConnection_enqueuePreAuthorizedLockScreenActionForRequest_outError___block_invoke;
  v24[3] = &unk_278FD1AC8;
  v24[4] = &v25;
  v24[5] = error;
  v7 = MEMORY[0x24C214430](v24);
  if ([(ENXPCConnection *)self _appActiveStatusWithError:0])
  {
    v8 = (v26 + 5);
    obj = v26[5];
    client2 = [(ENXPCConnection *)self _regionConfigForXPCRequest:requestCopy error:&obj];
    objc_storeStrong(v8, obj);
    if (client2)
    {
      CFPrefs_RemoveValue();
      diagnosisKeysPreAuthorization = [client2 diagnosisKeysPreAuthorization];
      userAuthorization = [diagnosisKeysPreAuthorization userAuthorization];

      if (userAuthorization == 1)
      {
        client = [(ENXPCConnection *)self client];
        signingIdentity = [client signingIdentity];
        CFPrefs_SetValue();

        objc_initWeak(&location, self);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __75__ENXPCConnection_enqueuePreAuthorizedLockScreenActionForRequest_outError___block_invoke_2;
        v20[3] = &unk_278FD1738;
        objc_copyWeak(&v21, &location);
        v14 = MEMORY[0x24C214430](v20);
        [(ENDaemon *)self->_daemon enqueueScreenUnlockAction:v14 withIdentifier:@"PreArmUnlockActionIdentifier"];

        objc_destroyWeak(&v21);
        objc_destroyWeak(&location);
      }

      else
      {
        v17 = ENErrorF();
        v18 = v26[5];
        v26[5] = v17;
      }
    }
  }

  else
  {
    client2 = [(ENXPCConnection *)self client];
    signingIdentity2 = [client2 signingIdentity];
    v15 = ENErrorF();
    v16 = v26[5];
    v26[5] = v15;
  }

  v7[2](v7);
  _Block_object_dispose(&v25, 8);
}

void __75__ENXPCConnection_enqueuePreAuthorizedLockScreenActionForRequest_outError___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    if (dword_281346508 > 90)
    {
      goto LABEL_6;
    }

    if (dword_281346508 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_6:
        if (*(a1 + 40))
        {
          **(a1 + 40) = *(*(*(a1 + 32) + 8) + 40);
        }

        return;
      }

      v2 = *(*(*(a1 + 32) + 8) + 40);
    }

    v3 = CUPrintNSError();
    LogPrintF_safe();

    goto LABEL_6;
  }
}

void __75__ENXPCConnection_enqueuePreAuthorizedLockScreenActionForRequest_outError___block_invoke_2(uint64_t a1)
{
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __75__ENXPCConnection_enqueuePreAuthorizedLockScreenActionForRequest_outError___block_invoke_2_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained xpcPreAuthorizedDiagnosisKeysAvailable];
}

- (void)updateDiagnosisKeysPreAuthorizationForRequest:(id)request withDecision:(BOOL)decision errorOut:(id *)out
{
  decisionCopy = decision;
  requestCopy = request;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__3;
  v62 = __Block_byref_object_dispose__3;
  v63 = 0;
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __87__ENXPCConnection_updateDiagnosisKeysPreAuthorizationForRequest_withDecision_errorOut___block_invoke;
  v57[3] = &unk_278FD1AC8;
  v57[4] = &v58;
  v57[5] = out;
  v9 = MEMORY[0x24C214430](v57);
  v10 = (v59 + 5);
  obj = v59[5];
  v11 = [(ENXPCConnection *)self _regionConfigForXPCRequest:requestCopy error:&obj];
  objc_storeStrong(v10, obj);
  if (v11)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      v12 = "no";
      if (decisionCopy)
      {
        v12 = "yes";
      }

      v51 = *&v12;
      LogPrintF_safe();
    }

    if (decisionCopy)
    {
      CFPrefs_GetDouble();
      v14 = v13;
      if (v13 > 0.0 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        v51 = v14;
        LogPrintF_safe();
      }

      date = [MEMORY[0x277CBEAA0] date];
      v16 = date;
      v17 = 432000.0;
      if (v14 > 0.0)
      {
        v17 = v14;
      }

      v18 = [date dateByAddingTimeInterval:v17];

      diagnosisKeysPreAuthorization = [v11 diagnosisKeysPreAuthorization];

      if (!diagnosisKeysPreAuthorization)
      {
        v20 = [objc_alloc(MEMORY[0x277CC5D40]) initWithIdentifier:@"DiagnosisKeysPreAuthorization"];
        [v11 setDiagnosisKeysPreAuthorization:v20];
      }

      diagnosisKeysPreAuthorization2 = [v11 diagnosisKeysPreAuthorization];
      [diagnosisKeysPreAuthorization2 setUserAuthorization:1 withExpiration:v18];

      v22 = xpc_dictionary_get_value(requestCopy, "meta");
      v23 = MEMORY[0x24C214BB0]();
      v24 = MEMORY[0x277CBEC08];
      v25 = MEMORY[0x277CBEC08];
      if (v23 == MEMORY[0x277D86468])
      {
        v25 = _CFXPCCreateCFObjectFromXPCObject();
      }

      objc_opt_class();
      v52 = v18;
      selfCopy = self;
      v54 = requestCopy;
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
      }

      else
      {
        v26 = v24;
      }

      v27 = v26;
      v28 = [v27 objectForKeyedSubscript:*MEMORY[0x277CC5BB0]];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      diagnosisKeysPreAuthorization3 = [v11 diagnosisKeysPreAuthorization];
      v31 = diagnosisKeysPreAuthorization3;
      if (isKindOfClass)
      {
        v32 = v28;
      }

      else
      {
        v32 = 0;
      }

      [diagnosisKeysPreAuthorization3 setSymptomOnsetDate:v32];

      v33 = [v27 objectForKeyedSubscript:*MEMORY[0x277CC5BC8]];
      objc_opt_class();
      v34 = objc_opt_isKindOfClass();
      diagnosisKeysPreAuthorization4 = [v11 diagnosisKeysPreAuthorization];
      v36 = diagnosisKeysPreAuthorization4;
      if (v34)
      {
        v37 = v33;
      }

      else
      {
        v37 = 0;
      }

      [diagnosisKeysPreAuthorization4 setDidUserTravel:v37];

      v38 = [v27 objectForKeyedSubscript:*MEMORY[0x277CC5BA0]];
      objc_opt_class();
      v39 = objc_opt_isKindOfClass();
      diagnosisKeysPreAuthorization5 = [v11 diagnosisKeysPreAuthorization];
      v41 = diagnosisKeysPreAuthorization5;
      if (v39)
      {
        v42 = v38;
      }

      else
      {
        v42 = 0;
      }

      [diagnosisKeysPreAuthorization5 setIsUserVaccinated:v42];

      self = selfCopy;
      requestCopy = v54;
    }

    else
    {
      [v11 setDiagnosisKeysPreAuthorization:0];
    }

    configurationManager = [(ENDaemon *)self->_daemon configurationManager];
    configurationStore = [configurationManager configurationStore];

    if (configurationStore)
    {
      v45 = (v59 + 5);
      v55 = v59[5];
      v46 = [configurationStore saveRegionConfiguration:v11 error:&v55];
      objc_storeStrong(v45, v55);
      if (!v46)
      {
        goto LABEL_42;
      }

      v47 = +[ENLoggingPrefs sharedENLoggingPrefs];
      isSensitiveLoggingAllowed = [v47 isSensitiveLoggingAllowed];

      if (!isSensitiveLoggingAllowed || _MergedGlobals > 30 || _MergedGlobals == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_42;
      }

      diagnosisKeysPreAuthorization6 = [v11 diagnosisKeysPreAuthorization];
      LogPrintF_safe();
    }

    else
    {
      v50 = ENErrorF();
      diagnosisKeysPreAuthorization6 = v59[5];
      v59[5] = v50;
    }

LABEL_42:
  }

  v9[2](v9);
  _Block_object_dispose(&v58, 8);
}

void __87__ENXPCConnection_updateDiagnosisKeysPreAuthorizationForRequest_withDecision_errorOut___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(*(*(a1 + 32) + 8) + 40);
  if (v3)
  {
    if (*(a1 + 40))
    {
      **(a1 + 40) = v3;
    }

    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      __87__ENXPCConnection_updateDiagnosisKeysPreAuthorizationForRequest_withDecision_errorOut___block_invoke_cold_1(v2);
    }
  }
}

- (void)xpcPreAuthorizedDiagnosisKeysAvailable
{
  v49 = *MEMORY[0x277D85DE8];
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__3;
  v46 = __Block_byref_object_dispose__3;
  v47 = 0;
  client = [(ENXPCConnection *)self client];
  signingIdentity = [client signingIdentity];

  activeEntity = [(ENDaemon *)self->_daemon activeEntity];
  entity = [activeEntity entity];
  region = [entity region];

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __57__ENXPCConnection_xpcPreAuthorizedDiagnosisKeysAvailable__block_invoke;
  v41[3] = &unk_278FD10D0;
  v41[6] = &v42;
  v41[4] = self;
  v41[5] = region;
  v30 = MEMORY[0x24C214430](v41);
  if (self->_xpcCnx)
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v6, "mTyp", 24);
    if ([(ENXPCConnection *)self _appActiveStatusWithError:0]&& region)
    {
      CFPrefs_RemoveValue();
      v7 = (v43 + 5);
      obj = v43[5];
      v31 = [(ENXPCConnection *)self _regionConfigForXPCRequest:v6 error:&obj];
      objc_storeStrong(v7, obj);
      if (v31)
      {
        diagnosisKeysPreAuthorization = [v31 diagnosisKeysPreAuthorization];
        v9 = [diagnosisKeysPreAuthorization userAuthorization] == 1;

        if (v9)
        {
          v10 = (v43 + 5);
          v39 = v43[5];
          [(ENXPCConnection *)self updateDiagnosisKeysPreAuthorizationForRequest:v6 withDecision:0 errorOut:&v39];
          objc_storeStrong(v10, v39);
          temporaryExposureKeyManager = [(ENDaemon *)self->_daemon temporaryExposureKeyManager];
          if (temporaryExposureKeyManager)
          {
            v12 = 144 * (((CFAbsoluteTimeGetCurrent() + *MEMORY[0x277CBECD8]) / 600.0) / 0x90) - 2016;
            client = self->_client;
            v14 = (v43 + 5);
            v38 = v43[5];
            v15 = [temporaryExposureKeyManager getTemporaryExposureKeysForClient:client fromRollingStart:v12 didPrompt:1 forTesting:0 forceRefresh:0 error:&v38];
            objc_storeStrong(v14, v38);
            if (v15)
            {
              v16 = xpc_array_create(0, 0);
              v36 = 0u;
              v37 = 0u;
              v34 = 0u;
              v35 = 0u;
              v15 = v15;
              v17 = [v15 countByEnumeratingWithState:&v34 objects:v48 count:16];
              if (v17)
              {
                v18 = *v35;
                do
                {
                  for (i = 0; i != v17; ++i)
                  {
                    if (*v35 != v18)
                    {
                      objc_enumerationMutation(v15);
                    }

                    v20 = *(*(&v34 + 1) + 8 * i);
                    v21 = xpc_dictionary_create(0, 0, 0);
                    [v20 encodeWithXPCObject:v21];
                    xpc_array_set_value(v16, 0xFFFFFFFFFFFFFFFFLL, v21);
                  }

                  v17 = [v15 countByEnumeratingWithState:&v34 objects:v48 count:16];
                }

                while (v17);
              }

              xpc_dictionary_set_value(v6, "tekA", v16);
              if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
              {
                count = xpc_array_get_count(v16);
                LogPrintF_safe();
              }

              [(ENXPCConnection *)self _xpcSendMessage:v6, count];
            }
          }

          else
          {
            v27 = ENErrorF();
            v15 = v43[5];
            v43[5] = v27;
          }
        }

        else
        {
          v25 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isSensitiveLoggingAllowed = [v25 isSensitiveLoggingAllowed];

          if (isSensitiveLoggingAllowed && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }
        }
      }
    }

    else
    {
      v24 = ENErrorF();
      v32 = v43[5];
      v43[5] = v24;
    }
  }

  else
  {
    v23 = ENErrorF();
    v6 = v43[5];
    v43[5] = v23;
  }

  v30[2](v30);
  _Block_object_dispose(&v42, 8);

  v22 = *MEMORY[0x277D85DE8];
}

void __57__ENXPCConnection_xpcPreAuthorizedDiagnosisKeysAvailable__block_invoke(void *a1)
{
  if (*(*(a1[6] + 8) + 40))
  {
    if (dword_281346508 > 90)
    {
      return;
    }

    if (dword_281346508 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v4 = *(*(a1[6] + 8) + 40);
    }

    v5 = CUPrintNSError();
    LogPrintF_safe();
  }

  else
  {
    v2 = a1[5];
    v3 = *(a1[4] + 32);

    [v3 postPreAuthorizationNotificationForRegion:v2];
  }
}

uint64_t __49__ENXPCConnection__xpcGetDiagnosisKeys_testMode___block_invoke(uint64_t result)
{
  v1 = result + 48;
  if (*(*(*(result + 48) + 8) + 40))
  {
    v2 = result;
    v3 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v4 = [v3 isSensitiveLoggingAllowed];

    if (v4 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __49__ENXPCConnection__xpcGetDiagnosisKeys_testMode___block_invoke_cold_1(v1);
    }

    v5 = v2[5];
    v6 = *(*(v2[6] + 8) + 40);
    v7 = v2[4];

    return [v7 _xpcSendReplyError:v6 request:v5];
  }

  return result;
}

uint64_t __75__ENXPCConnection__xpcGetDiagnosisKeysCompletion_didPrompt_testMode_error___block_invoke(uint64_t result)
{
  v1 = result + 48;
  if (*(*(*(result + 48) + 8) + 40))
  {
    v2 = result;
    v3 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v4 = [v3 isSensitiveLoggingAllowed];

    if (v4 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __75__ENXPCConnection__xpcGetDiagnosisKeysCompletion_didPrompt_testMode_error___block_invoke_cold_1(v1);
    }

    v5 = v2[5];
    v6 = *(*(v2[6] + 8) + 40);
    v7 = v2[4];

    return [v7 _xpcSendReplyError:v6 request:v5];
  }

  return result;
}

- (void)_xpcResetData:(id)data
{
  dataCopy = data;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__3;
  v26 = __Block_byref_object_dispose__3;
  v27 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __33__ENXPCConnection__xpcResetData___block_invoke;
  v19[3] = &unk_278FD10D0;
  v21 = &v22;
  v19[4] = self;
  v5 = dataCopy;
  v20 = v5;
  v6 = MEMORY[0x24C214430](v19);
  v7 = (v23 + 5);
  obj = v23[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = (v23 + 5);
    v17 = v23[5];
    v10 = [(ENXPCConnection *)self _authorizedAndReturnError:&v17];
    objc_storeStrong(v9, v17);
    if (v10)
    {
      v11 = (v23 + 5);
      v16 = v23[5];
      v28 = 0;
      v12 = CUXPCDecodeUInt64RangedEx();
      v13 = v28;
      objc_storeStrong(v11, v16);
      if (v12 != 5)
      {
        if (v12 == 6)
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        [(ENDaemon *)self->_daemon _resetDataWithFlags:v14];
        reply = xpc_dictionary_create_reply(v5);
        if (reply)
        {
          [(ENXPCConnection *)self _xpcSendMessage:reply];
        }

        else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }
      }
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v22, 8);
}

uint64_t __33__ENXPCConnection__xpcResetData___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcDiagnosticControl:(id)control
{
  controlCopy = control;
  v265 = 0;
  v266 = &v265;
  v267 = 0x3032000000;
  v268 = __Block_byref_object_copy__3;
  v269 = __Block_byref_object_dispose__3;
  v270 = 0;
  v262[0] = MEMORY[0x277D85DD0];
  v262[1] = 3221225472;
  v262[2] = __41__ENXPCConnection__xpcDiagnosticControl___block_invoke;
  v262[3] = &unk_278FD10D0;
  v264 = &v265;
  v262[4] = self;
  v5 = controlCopy;
  v263 = v5;
  v6 = MEMORY[0x24C214430](v262);
  v7 = v266;
  v261 = v266[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&v261];
  objc_storeStrong(v7 + 5, v261);
  if (v8)
  {
    v9 = xpc_dictionary_get_value(v5, "parm");
    v10 = v9;
    if (!v9 || MEMORY[0x24C214BB0](v9) != MEMORY[0x277D86468])
    {
      v67 = ENErrorF();
      v68 = v266[5];
      v266[5] = v67;

      goto LABEL_86;
    }

    v255 = 0;
    v256 = &v255;
    v257 = 0x3032000000;
    v258 = __Block_byref_object_copy__3;
    v259 = __Block_byref_object_dispose__3;
    v260 = 0;
    string = xpc_dictionary_get_string(v10, "iStr");
    if (!string)
    {
      v69 = ENErrorF();
      v70 = v266[5];
      v266[5] = v69;

      goto LABEL_85;
    }

    v254[0] = MEMORY[0x277D85DD0];
    v254[1] = 3221225472;
    v254[2] = __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_2;
    v254[3] = &unk_278FD1AF0;
    v254[4] = v10;
    v12 = MEMORY[0x24C214430](v254);
    v253[0] = MEMORY[0x277D85DD0];
    v253[1] = 3221225472;
    v253[2] = __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_3;
    v253[3] = &unk_278FD1B18;
    v253[4] = v10;
    v173 = MEMORY[0x24C214430](v253);
    delegate = [(ENDaemon *)self->_daemon delegate];
    if (!strcasecmp(string, "Activity"))
    {
      if (!xpc_dictionary_get_string(v10, "activity"))
      {
        goto LABEL_35;
      }

      if (stricmp_prefix())
      {
        if (stricmp_prefix())
        {
          if (stricmp_prefix())
          {
            if (stricmp_prefix())
            {
              goto LABEL_35;
            }

            v18 = 8;
          }

          else
          {
            v18 = 4;
          }
        }

        else
        {
          v18 = 2;
        }
      }

      else
      {
        v18 = 1;
      }

      v28 = xpc_dictionary_get_string(v10, "bundleID");
      if (!v28)
      {
        goto LABEL_35;
      }

      v29 = [MEMORY[0x277CCACA0] stringWithUTF8String:v28];
      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        CUPrintFlags32();
        v167 = v161 = v29;
        LogPrintF_safe();
      }

      if ((v18 & 3) != 0)
      {
        v30 = 30;
      }

      else
      {
        v30 = ((v18 << 29) >> 31) & 0xD2;
      }

      [(ENDaemon *)self->_daemon appLaunchWithBundleID:v29 activity:v18 shouldEnterForeground:(v18 & 7) == 0 requiredRuntimeInSeconds:v30, v161, v167];
      v31 = (v256 + 5);
      v252 = v256[5];
      NSAppendPrintF_safe();
      objc_storeStrong(v31, v252);
    }

    else
    {
      if (!strcasecmp(string, "BTDebug"))
      {
        if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }

        [delegate printBluetoothDebug];
        v20 = (v256 + 5);
        v251 = v256[5];
        NSAppendPrintF_safe();
        v21 = v251;
        goto LABEL_64;
      }

      if (!strcasecmp(string, "chaff") && IsAppleInternalBuild())
      {
        location = 0;
        CUXPCDecodeNSString();
        [0 doubleValue];
        if (v15 > 0.0)
        {
          CFPrefs_SetDouble();
        }

        v249 = 0;
        CUXPCDecodeNSString();
        if ([0 integerValue] >= 1)
        {
          CFPrefs_SetDouble();
        }

        v248 = 0;
        CUXPCDecodeNSString();
        [0 doubleValue];
        if (v16 > 0.0)
        {
          CFPrefs_SetDouble();
        }

        [(ENDaemon *)self->_daemon prefsChanged];
        v17 = (v256 + 5);
        obj = v256[5];
        NSAppendPrintF_safe();
        objc_storeStrong(v17, obj);

LABEL_47:
        goto LABEL_76;
      }

      if (!strcasecmp(string, "chaffReset") && IsAppleInternalBuild())
      {
        testResultManager = [(ENDaemon *)self->_daemon testResultManager];
        [testResultManager deactivateAutomatedChaffing];

        [(ENDaemon *)self->_daemon prefsChanged];
        v20 = (v256 + 5);
        v246 = v256[5];
        NSAppendPrintF_safe();
        v21 = v246;
LABEL_64:
        objc_storeStrong(v20, v21);
        goto LABEL_76;
      }

      if (!strcasecmp(string, "chaffOverridesReset") && IsAppleInternalBuild())
      {
        CFPrefs_RemoveValue();
        CFPrefs_RemoveValue();
        CFPrefs_RemoveValue();
        [(ENDaemon *)self->_daemon prefsChanged];
        v20 = (v256 + 5);
        v245 = v256[5];
        NSAppendPrintF_safe();
        v21 = v245;
        goto LABEL_64;
      }

      if (!strcasecmp(string, "configureTestRegion") && IsAppleInternalBuild())
      {
        v22 = xpc_dictionary_get_string(v10, "mcc");
        if (!v22)
        {
          v25 = v12[2](v12);
          goto LABEL_93;
        }

        region2 = [MEMORY[0x277CCACA0] stringWithUTF8String:v22];
        v24 = [ENCoreTelephonyUtility countryCodeISOForMobileCountryCode:region2];
        if (v24)
        {
          v25 = [objc_alloc(MEMORY[0x277CC5CA0]) initWithCountryCode:v24];

LABEL_93:
          if (v25)
          {
            v42 = objc_alloc(MEMORY[0x277CC5D08]);
            date = [MEMORY[0x277CBEAA0] date];
            v44 = [v42 initWithRegion:v25 date:date];

            v244 = 0;
            v45 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:v44 requiringSecureCoding:1 error:&v244];
            v46 = v244;
            if (v45)
            {
              CFPrefs_SetValue();
              v47 = *MEMORY[0x277CBED20];
              CFPrefs_SetValue();
              objc_initWeak(&location, self);
              dispatchQueue = self->_dispatchQueue;
              v239[0] = MEMORY[0x277D85DD0];
              v239[1] = 3221225472;
              v239[2] = __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_4;
              v239[3] = &unk_278FD1B40;
              v239[4] = self;
              v242 = &v255;
              v240 = v25;
              v241 = v5;
              objc_copyWeak(&v243, &location);
              dispatch_async(dispatchQueue, v239);
              v49 = (v256 + 5);
              v238 = v256[5];
              NSAppendPrintF_safe();
              objc_storeStrong(v49, v238);
              objc_destroyWeak(&v243);

              objc_destroyWeak(&location);
            }

            else
            {
              v124 = ENErrorF();
              v125 = v266[5];
              v266[5] = v124;
            }

            goto LABEL_84;
          }

          v123 = ENErrorF();
          region2 = v266[5];
          v266[5] = v123;
          goto LABEL_83;
        }

LABEL_263:
        v126 = ENErrorF();
        v127 = v266[5];
        v266[5] = v126;

LABEL_83:
        goto LABEL_84;
      }

      if (!strcasecmp(string, "disableTestRegion"))
      {
        if (CFPrefs_GetInt64())
        {
          CFPrefs_RemoveValue();
          objc_initWeak(&location, self);
          v26 = self->_dispatchQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_5;
          block[3] = &unk_278FD1B68;
          block[4] = self;
          v236 = &v255;
          v235 = v5;
          objc_copyWeak(&v237, &location);
          dispatch_async(v26, block);
          objc_destroyWeak(&v237);
          v27 = v235;
LABEL_61:

          objc_destroyWeak(&location);
          goto LABEL_84;
        }

        goto LABEL_35;
      }

      if (!strcasecmp(string, "phoneNumbers"))
      {
        v36 = (v256 + 5);
        v233 = v256[5];
        v29 = +[ENCoreTelephonyUtility sharedInstance];
        currentPhoneNumbers = [v29 currentPhoneNumbers];
        NSAppendPrintF();
        objc_storeStrong(v36, v233);
      }

      else
      {
        if (!strcasecmp(string, "setRegionMonitoringMode") && IsAppleInternalBuild())
        {
          v37 = xpc_dictionary_get_string(v10, "mode");
          if (v37)
          {
            v38 = [MEMORY[0x277CCACA0] stringWithUTF8String:v37];
            v39 = objc_alloc_init(MEMORY[0x277CCABC0]);
            v40 = [v39 numberFromString:v38];
            v41 = v12;
          }

          else
          {
            v41 = v12;
            v40 = 0;
          }

          objc_initWeak(&location, self);
          v51 = self->_dispatchQueue;
          v228[0] = MEMORY[0x277D85DD0];
          v228[1] = 3221225472;
          v228[2] = __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_6;
          v228[3] = &unk_278FD1B90;
          v228[4] = self;
          v229 = v40;
          v231 = &v255;
          v230 = v5;
          v52 = v40;
          objc_copyWeak(&v232, &location);
          dispatch_async(v51, v228);
          objc_destroyWeak(&v232);

          objc_destroyWeak(&location);
          v12 = v41;
          goto LABEL_84;
        }

        if (!strcasecmp(string, "getRegionMonitoringMode") && IsAppleInternalBuild())
        {
          objc_initWeak(&location, self);
          v50 = self->_dispatchQueue;
          v224[0] = MEMORY[0x277D85DD0];
          v224[1] = 3221225472;
          v224[2] = __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_7;
          v224[3] = &unk_278FD1B68;
          v224[4] = self;
          v226 = &v255;
          v225 = v5;
          objc_copyWeak(&v227, &location);
          dispatch_async(v50, v224);
          objc_destroyWeak(&v227);
          v27 = v225;
          goto LABEL_61;
        }

        if (strcasecmp(string, "ErrorTest"))
        {
          if (!strcasecmp(string, "getStateMetric"))
          {
            if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe();
            }

            stateMetricVersion = [(ENDaemon *)self->_daemon stateMetricVersion];
            v20 = (v256 + 5);
            v222 = v256[5];
            ENVersionToString(stateMetricVersion);
            NSAppendPrintF_safe();
            v21 = v222;
            goto LABEL_64;
          }

          if (!strcasecmp(string, "PreAuthKeys"))
          {
            if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe();
            }

            [(ENDaemon *)self->_daemon xpcPreAuthorizedDiagnosisKeysAvailable];
            v20 = (v256 + 5);
            v221 = v256[5];
            NSAppendPrintF_safe();
            v21 = v221;
            goto LABEL_64;
          }

          if (strcasecmp(string, "ServerFetch"))
          {
            if (strcasecmp(string, "RawConfig"))
            {
              if (!strcasecmp(string, "RemoveConfiguration") && IsAppleInternalBuild())
              {
                configurationManager = [(ENDaemon *)self->_daemon configurationManager];
                region = v12[2](v12);
                if (!region)
                {
                  activeEntity = [(ENDaemon *)self->_daemon activeEntity];
                  entity = [activeEntity entity];
                  region = [entity region];

                  if (!region)
                  {
                    v153 = ENErrorF();
                    v154 = v266[5];
                    v266[5] = v153;

                    goto LABEL_84;
                  }
                }

                if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                {
                  v161 = region;
                  LogPrintF_safe();
                }

                configurationManager2 = [(ENDaemon *)self->_daemon configurationManager];
                configurationStore = [configurationManager2 configurationStore];
                v90 = v266;
                v215 = v266[5];
                v91 = [configurationStore removeConfigurationsForRegion:region includingSubdivisions:1 error:&v215];
                objc_storeStrong(v90 + 5, v215);

                if (v91)
                {
                  [(ENDaemon *)self->_daemon configurationManager:configurationManager exposureNotificationRegionConfigurationRemovedForRegion:region];
                }

                v92 = (v256 + 5);
                v214 = v256[5];
                NSAppendPrintF_safe();
                objc_storeStrong(v92, v214);

                goto LABEL_76;
              }

              if (!strcasecmp(string, "ResetCloudCache") && IsAppleInternalBuild())
              {
                if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF_safe();
                }

                configurationManager3 = [(ENDaemon *)self->_daemon configurationManager];
                [configurationManager3 resetConfigurationCache];

                [(ENDaemon *)self->_daemon prefsChanged];
                v20 = (v256 + 5);
                v213 = v256[5];
                NSAppendPrintF_safe();
                v21 = v213;
                goto LABEL_64;
              }

              if (!strcasecmp(string, "SimulateRemoveCloudConfig") && IsAppleInternalBuild())
              {
                if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF_safe();
                }

                configurationManager4 = [(ENDaemon *)self->_daemon configurationManager];
                [configurationManager4 resetConfigurationCache];

                [(ENDaemon *)self->_daemon prefsChanged];
                activeEntity2 = [(ENDaemon *)self->_daemon activeEntity];
                entity2 = [activeEntity2 entity];
                region2 = [entity2 region];

                if (region2)
                {
                  [(ENDaemon *)self->_daemon _exposureNotificationRegionConfigurationRemoved:region2];
                  v108 = (v256 + 5);
                  v212 = v256[5];
                  NSAppendPrintF_safe();
                  v109 = v212;
                }

                else
                {
                  v108 = (v256 + 5);
                  v211 = v256[5];
                  NSAppendPrintF_safe();
                  v109 = v211;
                }

                v110 = v109;
                v111 = *v108;
                *v108 = v110;

LABEL_160:
LABEL_76:
                reply = xpc_dictionary_create_reply(v5);
                region2 = reply;
                if (reply)
                {
                  if (v256[5])
                  {
                    v33 = v256[5];
                  }

                  else
                  {
                    v33 = @"None\n";
                  }

                  v34 = reply;
                  uTF8String = [(__CFString *)v33 UTF8String];
                  if (uTF8String)
                  {
                    xpc_dictionary_set_string(v34, "oStr", uTF8String);
                  }

                  [(ENXPCConnection *)self _xpcSendMessage:v34];
                }

                else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF_safe();
                }

                goto LABEL_83;
              }

              if (!strcasecmp(string, "removeCloudOverrides"))
              {
                if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF_safe();
                }

                v94 = (v256 + 5);
                v210 = v256[5];
                NSAppendPrintF_safe();
                objc_storeStrong(v94, v210);
                CFPrefs_RemoveValue();
                if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF_safe();
                }

                v95 = (v256 + 5);
                v209 = v256[5];
                NSAppendPrintF_safe();
                objc_storeStrong(v95, v209);
                CFPrefs_RemoveValue();
                if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF_safe();
                }

                v96 = (v256 + 5);
                v208 = v256[5];
                NSAppendPrintF_safe();
                objc_storeStrong(v96, v208);
                CFPrefs_RemoveValue();
                if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF_safe();
                }

                v97 = (v256 + 5);
                v207 = v256[5];
                NSAppendPrintF_safe();
                objc_storeStrong(v97, v207);
                CFPrefs_RemoveValue();
                if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF_safe();
                }

                v98 = (v256 + 5);
                v206 = v256[5];
                NSAppendPrintF_safe();
                objc_storeStrong(v98, v206);
                CFPrefs_RemoveValue();
                if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF_safe();
                }

                v99 = (v256 + 5);
                v205 = v256[5];
                NSAppendPrintF_safe();
                objc_storeStrong(v99, v205);
                CFPrefs_RemoveValue();
                if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF_safe();
                }

                v100 = (v256 + 5);
                v204 = v256[5];
                NSAppendPrintF_safe();
                objc_storeStrong(v100, v204);
                CFPrefs_RemoveValue();
                CFPrefs_RemoveValue();
                goto LABEL_76;
              }

              if (!strcasecmp(string, "telemetryAuthorization") && IsAppleInternalBuild())
              {
                configurationManager5 = [(ENDaemon *)self->_daemon configurationManager];
                configurationStore2 = [configurationManager5 configurationStore];

                region3 = v12[2](v12);
                if (region3)
                {
                  goto LABEL_287;
                }

                activeEntity3 = [(ENDaemon *)self->_daemon activeEntity];
                entity3 = [activeEntity3 entity];
                region3 = [entity3 region];

                if (region3)
                {
LABEL_287:
                  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                  {
                    v161 = region3;
                    LogPrintF_safe();
                  }

                  location = 0;
                  v112 = v266;
                  v203 = v266[5];
                  v113 = CUXPCDecodeNSString();
                  objc_storeStrong(v112 + 5, v203);
                  if (v113)
                  {
                    bOOLValue = [location BOOLValue];
                    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                    {
                      v115 = "no";
                      if (bOOLValue)
                      {
                        v115 = "yes";
                      }

                      v161 = v115;
                      LogPrintF_safe();
                    }

                    v116 = [configurationStore2 serverConfigurationResponseForRegion:{region3, v161}];
                    if (v116)
                    {
                      v170 = [MEMORY[0x277CBEB30] dictionaryWithDictionary:v116];
                      v169 = [v116 objectForKeyedSubscript:@"config"];
                      v117 = [MEMORY[0x277CBEB30] dictionaryWithDictionary:v169];
                      v118 = [MEMORY[0x277CCABA8] numberWithBool:bOOLValue];
                      [v117 setValue:v118 forKey:@"telemetryAuthorization"];

                      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                      {
                        v119 = "no";
                        if (bOOLValue)
                        {
                          v119 = "yes";
                        }

                        v166 = v119;
                        LogPrintF_safe();
                      }

                      [v170 setValue:v117 forKey:{@"config", v166}];
                      v120 = v266;
                      v202 = v266[5];
                      v121 = [configurationStore2 saveServerConfigurationResponse:v170 error:&v202];
                      objc_storeStrong(v120 + 5, v202);
                      if (v121)
                      {
                        v122 = [configurationStore2 configurationForRegion:region3];
                        [(ENDaemon *)self->_daemon _exposureNotificationRegionConfigurationChanged:v122];
                      }

                      else
                      {
                        v159 = v266[5];
                        v160 = ENNestedErrorF();
                        v122 = v266[5];
                        v266[5] = v160;
                      }

                      if ((v121 & 1) == 0)
                      {
                        goto LABEL_84;
                      }

                      goto LABEL_76;
                    }
                  }

                  v157 = ENErrorF();
                  v158 = v266[5];
                  v266[5] = v157;
                }

                else
                {
                  v155 = ENErrorF();
                  v156 = v266[5];
                  v266[5] = v155;
                }

                v152 = configurationStore2;
LABEL_269:

                goto LABEL_84;
              }

              if (!strcasecmp(string, "sendErrorMetric"))
              {
                location = 0;
                v82 = v266;
                v201 = v266[5];
                CUXPCDecodeNSString();
                objc_storeStrong(v82 + 5, v201);
                if (_MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF_safe();
                }
              }

              else
              {
                if (!strcasecmp(string, "latestExposureDPMetric"))
                {
                  _getLatestExposureForDifferentialPrivacy = [(ENDaemon *)self->_daemon _getLatestExposureForDifferentialPrivacy];
                  if (_getLatestExposureForDifferentialPrivacy == 1)
                  {
                    v20 = (v256 + 5);
                    v199 = v256[5];
                    NSAppendPrintF();
                    v21 = v199;
                  }

                  else
                  {
                    v20 = (v256 + 5);
                    if (_getLatestExposureForDifferentialPrivacy)
                    {
                      v198 = v256[5];
                      NSAppendPrintF();
                      v21 = v198;
                    }

                    else
                    {
                      v200 = v256[5];
                      NSAppendPrintF();
                      v21 = v200;
                    }
                  }

                  goto LABEL_64;
                }

                if (strcasecmp(string, "resetAA"))
                {
                  if (!strcasecmp(string, "help"))
                  {
                    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF_safe();
                    }

                    v128 = (v256 + 5);
                    v197 = v256[5];
                    NSAppendPrintF_safe();
                    objc_storeStrong(v128, v197);
                    v129 = (v256 + 5);
                    v196 = v256[5];
                    NSAppendPrintF_safe();
                    objc_storeStrong(v129, v196);
                    v130 = (v256 + 5);
                    v195 = v256[5];
                    NSAppendPrintF_safe();
                    objc_storeStrong(v130, v195);
                    v131 = (v256 + 5);
                    v194 = v256[5];
                    NSAppendPrintF_safe();
                    objc_storeStrong(v131, v194);
                    v132 = (v256 + 5);
                    v193 = v256[5];
                    NSAppendPrintF_safe();
                    objc_storeStrong(v132, v193);
                    v133 = (v256 + 5);
                    v192 = v256[5];
                    NSAppendPrintF_safe();
                    objc_storeStrong(v133, v192);
                    v134 = (v256 + 5);
                    v191 = v256[5];
                    NSAppendPrintF_safe();
                    objc_storeStrong(v134, v191);
                    v135 = (v256 + 5);
                    v190 = v256[5];
                    NSAppendPrintF_safe();
                    objc_storeStrong(v135, v190);
                    v136 = (v256 + 5);
                    v189 = v256[5];
                    NSAppendPrintF_safe();
                    objc_storeStrong(v136, v189);
                    v137 = (v256 + 5);
                    v188 = v256[5];
                    NSAppendPrintF_safe();
                    objc_storeStrong(v137, v188);
                    v138 = (v256 + 5);
                    v187 = v256[5];
                    NSAppendPrintF_safe();
                    objc_storeStrong(v138, v187);
                    v139 = (v256 + 5);
                    v186 = v256[5];
                    NSAppendPrintF_safe();
                    objc_storeStrong(v139, v186);
                    v140 = (v256 + 5);
                    v185 = v256[5];
                    NSAppendPrintF_safe();
                    objc_storeStrong(v140, v185);
                    v141 = (v256 + 5);
                    v184 = v256[5];
                    NSAppendPrintF_safe();
                    objc_storeStrong(v141, v184);
                    v142 = (v256 + 5);
                    v183 = v256[5];
                    NSAppendPrintF_safe();
                    objc_storeStrong(v142, v183);
                    v143 = (v256 + 5);
                    v182 = v256[5];
                    NSAppendPrintF_safe();
                    objc_storeStrong(v143, v182);
                    v144 = (v256 + 5);
                    v181 = v256[5];
                    NSAppendPrintF_safe();
                    objc_storeStrong(v144, v181);
                    v145 = (v256 + 5);
                    v180 = v256[5];
                    NSAppendPrintF_safe();
                    objc_storeStrong(v145, v180);
                    v146 = (v256 + 5);
                    v179 = v256[5];
                    NSAppendPrintF_safe();
                    objc_storeStrong(v146, v179);
                    v147 = (v256 + 5);
                    v178 = v256[5];
                    NSAppendPrintF_safe();
                    objc_storeStrong(v147, v178);
                    v148 = (v256 + 5);
                    v177 = v256[5];
                    NSAppendPrintF_safe();
                    objc_storeStrong(v148, v177);
                    v149 = (v256 + 5);
                    v176 = v256[5];
                    NSAppendPrintF_safe();
                    objc_storeStrong(v149, v176);
                    v20 = (v256 + 5);
                    v175 = v256[5];
                    NSAppendPrintF_safe();
                    v21 = v175;
                    goto LABEL_64;
                  }

                  goto LABEL_35;
                }

                location = 0;
                CUXPCDecodeNSString();
                if ([0 integerValue] >= 1)
                {
                  regionMonitor = [(ENDaemon *)self->_daemon regionMonitor];
                  v102 = [regionMonitor getCurrentRegionVisitWithError:0];
                  region4 = [v102 region];

                  if (region4)
                  {
                    [(ENDaemon *)self->_daemon _writePreferenceRegionPendingOnboarding:region4];
                    CFPrefs_SetDouble();
                    daemon = [(ENXPCConnection *)self daemon];
                    [daemon onboardingTriggerRetry:0];
                  }

                  else if (_MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF_safe();
                  }

                  goto LABEL_47;
                }

                if (_MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF_safe();
                }

                v150 = ENErrorF();
                v151 = v266[5];
                v266[5] = v150;
              }

              v152 = location;
              goto LABEL_269;
            }

            if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe();
            }

            region2 = v12[2](v12);
            if (region2)
            {
              goto LABEL_158;
            }

            activeEntity4 = [(ENDaemon *)self->_daemon activeEntity];
            entity4 = [activeEntity4 entity];
            region2 = [entity4 region];

            if (region2)
            {
LABEL_158:
              configurationManager6 = [(ENDaemon *)self->_daemon configurationManager];
              configurationStore3 = [configurationManager6 configurationStore];
              v75 = [configurationStore3 serverConfigurationResponseForRegion:region2];

              if (!v75)
              {
                goto LABEL_263;
              }

              v76 = (v256 + 5);
              v216 = v256[5];
              NSAppendPrintF_safe();
              objc_storeStrong(v76, v216);

              goto LABEL_160;
            }

LABEL_35:
            v13 = ENErrorF();
            v14 = v266[5];
            v266[5] = v13;

LABEL_84:
LABEL_85:
            _Block_object_dispose(&v255, 8);

LABEL_86:
            goto LABEL_87;
          }

          if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }

          region5 = v12[2](v12);
          if (!region5)
          {
            activeEntity5 = [(ENDaemon *)self->_daemon activeEntity];
            entity5 = [activeEntity5 entity];
            region5 = [entity5 region];

            if (!region5)
            {
              goto LABEL_35;
            }
          }

          v64 = v173[2]();
          v65 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isSensitiveLoggingAllowed = [v65 isSensitiveLoggingAllowed];

          if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            v161 = region5;
            v167 = v64;
            LogPrintF_safe();
          }

          if ([v64 length])
          {
            integerValue = [v64 integerValue];
            if (integerValue > 3)
            {
              if (_MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
              {
                LogPrintF_safe();
              }

              v85 = ENErrorF();
              v86 = v266[5];
              v266[5] = v85;

              goto LABEL_183;
            }

            if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              v165 = region5;
              v168 = integerValue;
              LogPrintF_safe();
            }

            v83 = [(ENDaemon *)self->_daemon configurationManager:v165];
            [v83 overrideRampModeForRegion:region5 rampMode:integerValue];
          }

          objc_initWeak(&location, self);
          configurationManager7 = [(ENDaemon *)self->_daemon configurationManager];
          v217[0] = MEMORY[0x277D85DD0];
          v217[1] = 3221225472;
          v217[2] = __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_8;
          v217[3] = &unk_278FD1BE0;
          v217[4] = self;
          v219 = &v255;
          v218 = v5;
          objc_copyWeak(&v220, &location);
          [configurationManager7 fetchServerConfigurationsForRegion:region5 userInitiated:0 withCompletion:v217];

          objc_destroyWeak(&v220);
          objc_destroyWeak(&location);
LABEL_183:

          goto LABEL_84;
        }

        v29 = ENErrorF();
        if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          v163 = CUPrintNSError();
          LogPrintF_safe();
        }

        v53 = *MEMORY[0x277CCA598];
        v54 = NSErrorF();
        v55 = ENNestedErrorF();
        if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          v164 = CUPrintNSError();
          LogPrintF_safe();
        }

        v56 = (v256 + 5);
        v223 = v256[5];
        NSAppendPrintF_safe();
        objc_storeStrong(v56, v223);
      }
    }

    goto LABEL_76;
  }

LABEL_87:
  v6[2](v6);

  _Block_object_dispose(&v265, 8);
}

uint64_t __41__ENXPCConnection__xpcDiagnosticControl___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

id __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  CUXPCDecodeNSString();
  v3 = *(a1 + 32);
  CUXPCDecodeNSString();

  return 0;
}

id __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  CUXPCDecodeNSString();
  v2 = 0;

  return v2;
}

void __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) regionMonitor];
  v3 = [v2 testRegionDataSource];

  v4 = [*(*(a1 + 32) + 32) regionMonitor];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 testRegionDataSource];
    [v6 regionChanged];
  }

  else
  {
    [v4 resetRegionMonitor];
  }

  v7 = *(*(a1 + 56) + 8);
  v14 = *(a1 + 40);
  obj = *(v7 + 40);
  NSAppendPrintF_safe();
  objc_storeStrong((v7 + 40), obj);
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_4_cold_1((a1 + 40));
  }

  reply = xpc_dictionary_create_reply(*(a1 + 48));
  v9 = reply;
  if (reply)
  {
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v10 = *(*(*(a1 + 56) + 8) + 40);
    }

    else
    {
      v10 = @"None\n";
    }

    v11 = reply;
    v12 = [(__CFString *)v10 UTF8String];
    if (v12)
    {
      xpc_dictionary_set_string(v11, "oStr", v12);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained _xpcSendMessage:v11];
  }

  else
  {
    __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_4_cold_2();
  }
}

void __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_5(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) regionMonitor];
  [v2 resetRegionMonitor];

  v3 = [*(*(a1 + 32) + 32) regionMonitor];
  v4 = [v3 getCurrentRegionVisitWithError:0];

  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  NSAppendPrintF_safe();
  objc_storeStrong((v5 + 40), obj);
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_5_cold_1();
  }

  reply = xpc_dictionary_create_reply(*(a1 + 40));
  v7 = reply;
  if (reply)
  {
    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v8 = *(*(*(a1 + 48) + 8) + 40);
    }

    else
    {
      v8 = @"None\n";
    }

    v9 = reply;
    v10 = [(__CFString *)v8 UTF8String];
    if (v10)
    {
      xpc_dictionary_set_string(v9, "oStr", v10);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _xpcSendMessage:v9];
  }

  else
  {
    __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_5_cold_2();
  }
}

void __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_6(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) regionMonitor];
  [v2 updateRegionMonitorMonitoringMode:{objc_msgSend(*(a1 + 40), "unsignedIntegerValue")}];

  v3 = *(*(a1 + 56) + 8);
  v10 = *(a1 + 40);
  obj = *(v3 + 40);
  NSAppendPrintF_safe();
  objc_storeStrong((v3 + 40), obj);
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_6_cold_1((a1 + 40));
  }

  reply = xpc_dictionary_create_reply(*(a1 + 48));
  v5 = reply;
  if (reply)
  {
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v6 = *(*(*(a1 + 56) + 8) + 40);
    }

    else
    {
      v6 = @"None\n";
    }

    v7 = reply;
    v8 = [(__CFString *)v6 UTF8String];
    if (v8)
    {
      xpc_dictionary_set_string(v7, "oStr", v8);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained _xpcSendMessage:v7];
  }

  else
  {
    __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_6_cold_2();
  }
}

void __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_7(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) regionMonitor];
  v3 = [v2 getMonitoringMode];

  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  NSAppendPrintF_safe();
  objc_storeStrong((v4 + 40), obj);
  v5 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v6 = [v5 isSensitiveLoggingAllowed];

  if (v6 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_7_cold_1();
  }

  reply = xpc_dictionary_create_reply(*(a1 + 40));
  v8 = reply;
  if (reply)
  {
    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v9 = *(*(*(a1 + 48) + 8) + 40);
    }

    else
    {
      v9 = @"None";
    }

    v10 = reply;
    v11 = [(__CFString *)v9 UTF8String];
    if (v11)
    {
      xpc_dictionary_set_string(v10, "oStr", v11);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _xpcSendMessage:v10];
  }

  else
  {
    __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_7_cold_2();
  }
}

void __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_8_cold_1();
  }

  v7 = *(*(a1 + 32) + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_9;
  block[3] = &unk_278FD1BB8;
  v13 = v5;
  v14 = v6;
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v9 = v6;
  v10 = v5;
  objc_copyWeak(&v16, (a1 + 56));
  dispatch_async(v7, block);
  objc_destroyWeak(&v16);
}

void __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_9(uint64_t a1)
{
  v2 = *(*(a1 + 56) + 8);
  v4 = *(v2 + 40);
  v3 = (v2 + 40);
  obj = v4;
  v5 = *(a1 + 32);
  if (!v5)
  {
    v5 = *(a1 + 40);
  }

  v12 = v5;
  NSAppendPrintF_safe();
  objc_storeStrong(v3, obj);
  reply = xpc_dictionary_create_reply(*(a1 + 48));
  v7 = reply;
  if (reply)
  {
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v8 = *(*(*(a1 + 56) + 8) + 40);
    }

    else
    {
      v8 = @"None\n";
    }

    v9 = reply;
    v10 = [(__CFString *)v8 UTF8String];
    if (v10)
    {
      xpc_dictionary_set_string(v9, "oStr", v10);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained _xpcSendMessage:v9];
  }

  else
  {
    __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_9_cold_1();
  }
}

- (void)_xpcDiagnosticLog:(id)log
{
  logCopy = log;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__3;
  v30 = __Block_byref_object_dispose__3;
  v31 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __37__ENXPCConnection__xpcDiagnosticLog___block_invoke;
  v23[3] = &unk_278FD10D0;
  v25 = &v26;
  v23[4] = self;
  v5 = logCopy;
  v24 = v5;
  v6 = MEMORY[0x24C214430](v23);
  v7 = (v27 + 5);
  obj = v27[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = xpc_dictionary_get_value(v5, "parm");
    v10 = v9;
    if (v9)
    {
      if (MEMORY[0x24C214BB0](v9) == MEMORY[0x277D86468])
      {
        if (!xpc_dictionary_get_string(v10, "iStr") || !LogControl())
        {
          goto LABEL_6;
        }

        v18 = *MEMORY[0x277CCA598];
        v19 = NSErrorF();
        v20 = ENNestedErrorF();
        v21 = v27[5];
        v27[5] = v20;
      }

      else
      {
        v16 = ENErrorF();
        v17 = v27[5];
        v27[5] = v16;
      }

LABEL_10:

      goto LABEL_11;
    }

LABEL_6:
    if (LogShow())
    {
      v13 = *MEMORY[0x277CCA598];
      v12 = NSErrorF();
      v14 = ENNestedErrorF();
      v15 = v27[5];
      v27[5] = v14;
    }

    else
    {
      reply = xpc_dictionary_create_reply(v5);
      v12 = reply;
      if (reply)
      {
        xpc_dictionary_set_string(reply, "oStr", 0);
        free(0);
        [(ENXPCConnection *)self _xpcSendMessage:v12];
      }

      else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }
    }

    goto LABEL_10;
  }

LABEL_11:
  v6[2](v6);

  _Block_object_dispose(&v26, 8);
}

uint64_t __37__ENXPCConnection__xpcDiagnosticLog___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcDiagnosticShow:(id)show
{
  showCopy = show;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__3;
  v34 = __Block_byref_object_dispose__3;
  v35 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __38__ENXPCConnection__xpcDiagnosticShow___block_invoke;
  v27[3] = &unk_278FD10D0;
  v29 = &v30;
  v27[4] = self;
  v5 = showCopy;
  v28 = v5;
  v6 = MEMORY[0x24C214430](v27);
  v7 = v31;
  obj = v31[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7 + 5, obj);
  if (v8)
  {
    v9 = xpc_dictionary_get_value(v5, "parm");
    v10 = v9;
    if (!v9)
    {
      goto LABEL_7;
    }

    if (MEMORY[0x24C214BB0](v9) != MEMORY[0x277D86468])
    {
      goto LABEL_6;
    }

    string = xpc_dictionary_get_string(v10, "iStr");
    xpc_dictionary_get_int64(v10, "vrbL");
    if (string)
    {
      if (strcasecmp(string, "adv"))
      {
LABEL_6:
        v12 = ENErrorF();
        v13 = 0;
        v14 = v31[5];
        v31[5] = v12;
LABEL_16:

        goto LABEL_17;
      }

      btTracingAppID = [(ENDaemon *)self->_daemon btTracingAppID];

      if (!btTracingAppID)
      {
        NSAppendPrintF_safe();
        v13 = 0;
LABEL_9:
        reply = xpc_dictionary_create_reply(v5);
        v14 = reply;
        if (reply)
        {
          if (v13)
          {
            v19 = v13;
          }

          else
          {
            v19 = @"None\n";
          }

          v14 = reply;
          uTF8String = [(__CFString *)v19 UTF8String];
          if (uTF8String)
          {
            xpc_dictionary_set_string(v14, "oStr", uTF8String);
          }

          [(ENXPCConnection *)self _xpcSendMessage:v14];
        }

        else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }

        goto LABEL_16;
      }

      delegate = [(ENDaemon *)self->_daemon delegate];
      retrieveCurrentAdvertisingPayload = [delegate retrieveCurrentAdvertisingPayload];

      [retrieveCurrentAdvertisingPayload bytes];
      if ([retrieveCurrentAdvertisingPayload length] < 0x14)
      {
        v24 = 0;
        v23 = &v24;
        [retrieveCurrentAdvertisingPayload length];
        NSAppendPrintF();
      }

      else
      {
        v25[0] = 0;
        v23 = v25;
        NSAppendPrintF();
      }

      v17 = *v23;
    }

    else
    {
LABEL_7:
      v25[1] = 0;
      daemon = self->_daemon;
      retrieveCurrentAdvertisingPayload = CUDescriptionWithLevel();
      NSAppendPrintF_safe();
      v17 = 0;
    }

    v13 = v17;

    goto LABEL_9;
  }

LABEL_17:
  v6[2](v6);

  _Block_object_dispose(&v30, 8);
}

uint64_t __38__ENXPCConnection__xpcDiagnosticShow___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcNotificationTrigger:(id)trigger
{
  triggerCopy = trigger;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__3;
  v51 = __Block_byref_object_dispose__3;
  v52 = 0;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __43__ENXPCConnection__xpcNotificationTrigger___block_invoke;
  v44[3] = &unk_278FD10D0;
  v46 = &v47;
  v44[4] = self;
  v5 = triggerCopy;
  v45 = v5;
  v6 = MEMORY[0x24C214430](v44);
  v7 = (v48 + 5);
  obj = v48[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    int64 = xpc_dictionary_get_int64(v5, "noteType");
    uint64 = xpc_dictionary_get_uint64(v5, "intS");
    activeEntity = [(ENDaemon *)self->_daemon activeEntity];
    entity = [activeEntity entity];
    bundleIdentifier = [entity bundleIdentifier];

    string = xpc_dictionary_get_string(v5, "aBid");
    if (string)
    {
      v15 = [objc_alloc(MEMORY[0x277CCACA0]) initWithUTF8String:string];

      bundleIdentifier = v15;
    }

    v16 = (v48 + 5);
    v42 = v48[5];
    v17 = CUXPCDecodeNSString();
    objc_storeStrong(v16, v42);
    if ((v17 & 1) == 0)
    {
      goto LABEL_65;
    }

    activeEntity2 = [(ENDaemon *)self->_daemon activeEntity];
    entity2 = [activeEntity2 entity];
    region = [entity2 region];

    v21 = xpc_dictionary_get_value(v5, "regionData");

    if (v21)
    {
      objc_opt_class();
      v22 = (v48 + 5);
      v41 = v48[5];
      v23 = ENXPCDecodeSecureObject();
      objc_storeStrong(v22, v41);

      region = v23;
      if (!v23)
      {
        goto LABEL_65;
      }
    }

    if (int64 <= 3)
    {
      if (int64 == 1)
      {
        if (region)
        {
          v26 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isSensitiveLoggingAllowed = [v26 isSensitiveLoggingAllowed];

          if (isSensitiveLoggingAllowed && _MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }

          v34 = objc_alloc_init(MEMORY[0x277CC5C68]);
          uUID = [MEMORY[0x277CCAD70] UUID];
          [v34 setIdentifier:uUID];

          v36 = [MEMORY[0x277CBEBC8] URLWithString:@"https://example.com"];
          [v34 setLearnMoreURL:v36];

          [v34 setLocalizedBodyText:@"Example body text."];
          [v34 setLocalizedSubjectText:@"Example Title"];
          date = [MEMORY[0x277CBEAA0] date];
          [v34 setNotificationDate:date];

          [v34 setRegion:region];
          [(ENDaemon *)self->_daemon postExposureNotification:v34];

          goto LABEL_61;
        }
      }

      else
      {
        if (int64 != 2)
        {
          if (int64 == 3 && [bundleIdentifier length])
          {
            if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe();
            }

            [(ENDaemon *)self->_daemon postExposureSummaryAccessNotificationWithAppBundleIdentifier:bundleIdentifier string:@"{Example string from the Public Health Agency}"];
LABEL_61:
            reply = xpc_dictionary_create_reply(v5);
            if (reply)
            {
              [(ENXPCConnection *)self _xpcSendMessage:reply];
            }

            else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe();
            }

            goto LABEL_64;
          }

          goto LABEL_32;
        }

        if (region)
        {
          v30 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isSensitiveLoggingAllowed2 = [v30 isSensitiveLoggingAllowed];

          if (isSensitiveLoggingAllowed2 && _MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            v40 = region;
            LogPrintF_safe();
          }

          [(ENDaemon *)self->_daemon postOnboardingNotificationForRegion:region, v40];
          goto LABEL_61;
        }
      }

LABEL_72:
      v39 = ENErrorF();
      region = v48[5];
      v48[5] = v39;
      goto LABEL_64;
    }

    switch(int64)
    {
      case 4:
        if (uint64)
        {
          if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            v40 = uint64;
            LogPrintF_safe();
          }

          [(ENDaemon *)self->_daemon monthlyTriggerActivateWithIntervalOverride:uint64, v40];
          goto LABEL_61;
        }

        if ([bundleIdentifier length])
        {
          if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }

          [(ENDaemon *)self->_daemon postMonthlySummaryNotificationForAppBundleIdentifier:bundleIdentifier];
          goto LABEL_61;
        }

        break;
      case 5:
        if (region)
        {
          v32 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isSensitiveLoggingAllowed3 = [v32 isSensitiveLoggingAllowed];

          if (isSensitiveLoggingAllowed3 && _MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            v40 = region;
            LogPrintF_safe();
          }

          [(ENDaemon *)self->_daemon postAnalyticsOptInNotificationForRegion:region, v40];
          goto LABEL_61;
        }

        goto LABEL_72;
      case 6:
        if (region)
        {
          v24 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isSensitiveLoggingAllowed4 = [v24 isSensitiveLoggingAllowed];

          if (isSensitiveLoggingAllowed4 && _MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            v40 = region;
            LogPrintF_safe();
          }

          [(ENDaemon *)self->_daemon postPreAuthorizationNotificationForRegion:region, v40];
          goto LABEL_61;
        }

        goto LABEL_72;
    }

LABEL_32:
    v28 = ENErrorF();
    v29 = v48[5];
    v48[5] = v28;

LABEL_64:
LABEL_65:
  }

  v6[2](v6);

  _Block_object_dispose(&v47, 8);
}

uint64_t __43__ENXPCConnection__xpcNotificationTrigger___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcGetActiveRegion:(id)region
{
  regionCopy = region;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __39__ENXPCConnection__xpcGetActiveRegion___block_invoke;
  v18[3] = &unk_278FD10D0;
  v20 = &v21;
  v18[4] = self;
  v5 = regionCopy;
  v19 = v5;
  v6 = MEMORY[0x24C214430](v18);
  v7 = (v22 + 5);
  obj = v22[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    activeEntity = [(ENDaemon *)self->_daemon activeEntity];
    entity = [activeEntity entity];
    region = [entity region];

    if (region)
    {
      reply = xpc_dictionary_create_reply(v5);
      if (reply)
      {
        v13 = (v22 + 5);
        v16 = v22[5];
        v14 = ENXPCEncodeSecureObject();
        objc_storeStrong(v13, v16);
        if (v14)
        {
          [(ENXPCConnection *)self _xpcSendMessage:reply];
        }
      }

      else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }
    }

    else
    {
      v15 = ENErrorF();
      reply = v22[5];
      v22[5] = v15;
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v21, 8);
}

uint64_t __39__ENXPCConnection__xpcGetActiveRegion___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcGetRegionHistory:(id)history
{
  historyCopy = history;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__3;
  v27 = __Block_byref_object_dispose__3;
  v28 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __40__ENXPCConnection__xpcGetRegionHistory___block_invoke;
  v20[3] = &unk_278FD10D0;
  v22 = &v23;
  v20[4] = self;
  v5 = historyCopy;
  v21 = v5;
  v6 = MEMORY[0x24C214430](v20);
  v7 = (v24 + 5);
  obj = v24[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    regionMonitor = [(ENDaemon *)self->_daemon regionMonitor];
    v18 = 0;
    v10 = [regionMonitor getAllRegionVisitsWithError:&v18];
    v11 = v18;

    if (v11)
    {
      v16 = ENNestedErrorF();
    }

    else
    {
      if (v10)
      {
        reply = xpc_dictionary_create_reply(v5);
        if (reply)
        {
          v13 = (v24 + 5);
          v17 = v24[5];
          v14 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v17];
          objc_storeStrong(v13, v17);
          v15 = _CFXPCCreateXPCObjectFromCFObject();
          xpc_dictionary_set_value(reply, "rgnHy", v15);
          [(ENXPCConnection *)self _xpcSendMessage:reply];
        }

        else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }

        goto LABEL_6;
      }

      v16 = ENErrorF();
    }

    reply = v24[5];
    v24[5] = v16;
LABEL_6:
  }

  v6[2](v6);

  _Block_object_dispose(&v23, 8);
}

uint64_t __40__ENXPCConnection__xpcGetRegionHistory___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcGetRegionHistoryEnabled:(id)enabled
{
  enabledCopy = enabled;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __47__ENXPCConnection__xpcGetRegionHistoryEnabled___block_invoke;
  v16[3] = &unk_278FD10D0;
  v18 = &v19;
  v16[4] = self;
  v5 = enabledCopy;
  v17 = v5;
  v6 = MEMORY[0x24C214430](v16);
  v7 = (v20 + 5);
  obj = v20[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = (v20 + 5);
    v14 = v20[5];
    v10 = [(ENXPCConnection *)self _authorizedAndReturnError:&v14];
    objc_storeStrong(v9, v14);
    if (v10)
    {
      Int64 = CFPrefs_GetInt64();
      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      reply = xpc_dictionary_create_reply(v5);
      v13 = reply;
      if (reply)
      {
        xpc_dictionary_set_BOOL(reply, "enbd", Int64 == 0);
        [(ENXPCConnection *)self _xpcSendMessage:v13];
      }

      else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v19, 8);
}

uint64_t __47__ENXPCConnection__xpcGetRegionHistoryEnabled___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcSetRegionHistoryEnabled:(id)enabled
{
  enabledCopy = enabled;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __47__ENXPCConnection__xpcSetRegionHistoryEnabled___block_invoke;
  v17[3] = &unk_278FD10D0;
  v19 = &v20;
  v17[4] = self;
  v5 = enabledCopy;
  v18 = v5;
  v6 = MEMORY[0x24C214430](v17);
  v7 = (v21 + 5);
  obj = v21[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = (v21 + 5);
    v15 = v21[5];
    v10 = [(ENXPCConnection *)self _authorizedAndReturnError:&v15];
    objc_storeStrong(v9, v15);
    if (v10)
    {
      v11 = xpc_dictionary_get_BOOL(v5, "enbd");
      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      v12 = MEMORY[0x277CBED20];
      if (v11)
      {
        v12 = MEMORY[0x277CBED18];
      }

      v13 = *v12;
      CFPrefs_SetValue();
      [(ENDaemon *)self->_daemon prefsChanged];
      reply = xpc_dictionary_create_reply(v5);
      if (reply)
      {
        [(ENXPCConnection *)self _xpcSendMessage:reply];
      }

      else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v20, 8);
}

uint64_t __47__ENXPCConnection__xpcSetRegionHistoryEnabled___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcGetRegionMonitorEnabled:(id)enabled
{
  enabledCopy = enabled;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __47__ENXPCConnection__xpcGetRegionMonitorEnabled___block_invoke;
  v17[3] = &unk_278FD10D0;
  v19 = &v20;
  v17[4] = self;
  v5 = enabledCopy;
  v18 = v5;
  v6 = MEMORY[0x24C214430](v17);
  v7 = (v21 + 5);
  obj = v21[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = (v21 + 5);
    v15 = v21[5];
    v10 = [(ENXPCConnection *)self _authorizedAndReturnError:&v15];
    objc_storeStrong(v9, v15);
    if (v10)
    {
      regionMonitor = [(ENDaemon *)self->_daemon regionMonitor];
      getAuthorizationState = [regionMonitor getAuthorizationState];

      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      reply = xpc_dictionary_create_reply(v5);
      v14 = reply;
      if (reply)
      {
        xpc_dictionary_set_BOOL(reply, "enbd", getAuthorizationState == 2);
        [(ENXPCConnection *)self _xpcSendMessage:v14];
      }

      else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v20, 8);
}

uint64_t __47__ENXPCConnection__xpcGetRegionMonitorEnabled___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcGetRegionConfig:(id)config
{
  configCopy = config;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __39__ENXPCConnection__xpcGetRegionConfig___block_invoke;
  v16[3] = &unk_278FD10D0;
  v18 = &v19;
  v16[4] = self;
  v5 = configCopy;
  v17 = v5;
  v6 = MEMORY[0x24C214430](v16);
  v7 = (v20 + 5);
  obj = v20[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    activeEntity = [(ENDaemon *)self->_daemon activeEntity];
    entity = [activeEntity entity];
    region = [entity region];

    if (region)
    {
      int64 = xpc_dictionary_get_int64(v5, "cty");
      switch(int64)
      {
        case 0:
          [(ENXPCConnection *)self _xpcGetRegionSystemConfig:v5];
          goto LABEL_10;
        case 10:
          [(ENXPCConnection *)self _xpcGetRegionServerConfig:v5];
          goto LABEL_10;
        case 20:
          [(ENXPCConnection *)self _xpcGetRegionAgencyConfig:v5];
LABEL_10:

          goto LABEL_11;
      }
    }

    v13 = ENErrorF();
    v14 = v20[5];
    v20[5] = v13;

    goto LABEL_10;
  }

LABEL_11:
  v6[2](v6);

  _Block_object_dispose(&v19, 8);
}

uint64_t __39__ENXPCConnection__xpcGetRegionConfig___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcGetRegionSystemConfig:(id)config
{
  configCopy = config;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __45__ENXPCConnection__xpcGetRegionSystemConfig___block_invoke;
  v17[3] = &unk_278FD10D0;
  v19 = &v20;
  v17[4] = self;
  v5 = configCopy;
  v18 = v5;
  v6 = MEMORY[0x24C214430](v17);
  activeEntity = [(ENDaemon *)self->_daemon activeEntity];
  entity = [activeEntity entity];
  region = [entity region];

  if (region)
  {
    reply = xpc_dictionary_create_reply(v5);
    if (reply)
    {
      configurationManager = [(ENDaemon *)self->_daemon configurationManager];
      configurationStore = [configurationManager configurationStore];
      v13 = [configurationStore configurationForRegion:region];

      if (v13)
      {
        v14 = (v21 + 5);
        obj = v21[5];
        v15 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&obj];
        objc_storeStrong(v14, obj);
        xpc_dictionary_set_data(reply, "svrCfg", [v15 bytes], objc_msgSend(v15, "length"));
      }

      [(ENXPCConnection *)self _xpcSendMessage:reply];
    }

    else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

  else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  v6[2](v6);
  _Block_object_dispose(&v20, 8);
}

uint64_t __45__ENXPCConnection__xpcGetRegionSystemConfig___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcGetRegionServerConfig:(id)config
{
  configCopy = config;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__3;
  v27 = __Block_byref_object_dispose__3;
  v28 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __45__ENXPCConnection__xpcGetRegionServerConfig___block_invoke;
  v20[3] = &unk_278FD10D0;
  v22 = &v23;
  v20[4] = self;
  v5 = configCopy;
  v21 = v5;
  v6 = MEMORY[0x24C214430](v20);
  objc_opt_class();
  v7 = (v24 + 5);
  obj = v24[5];
  region = ENXPCDecodeSecureObjectIfPresent();
  objc_storeStrong(v7, obj);
  if (region)
  {
    goto LABEL_2;
  }

  if (v24[5])
  {
    goto LABEL_24;
  }

  activeEntity = [(ENDaemon *)self->_daemon activeEntity];
  entity = [activeEntity entity];
  region = [entity region];

  if (region)
  {
LABEL_2:
    reply = xpc_dictionary_create_reply(v5);
    if (reply)
    {
      configurationManager = [(ENDaemon *)self->_daemon configurationManager];
      configurationStore = [configurationManager configurationStore];
      v12 = [configurationStore serverConfigurationForRegion:region];

      if (v12)
      {
        v13 = (v24 + 5);
        v18 = v24[5];
        v14 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v18];
        objc_storeStrong(v13, v18);
        xpc_dictionary_set_data(reply, "svrCfg", [v14 bytes], objc_msgSend(v14, "length"));
        [(ENXPCConnection *)self _xpcSendMessage:reply];
      }

      else
      {
        v15 = ENErrorF();
        v14 = v24[5];
        v24[5] = v15;
      }
    }

    else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

  else
  {
LABEL_24:
    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v23, 8);
}

uint64_t __45__ENXPCConnection__xpcGetRegionServerConfig___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcGetRegionAgencyConfig:(id)config
{
  configCopy = config;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __45__ENXPCConnection__xpcGetRegionAgencyConfig___block_invoke;
  v17[3] = &unk_278FD10D0;
  v19 = &v20;
  v17[4] = self;
  v5 = configCopy;
  v18 = v5;
  v6 = MEMORY[0x24C214430](v17);
  activeEntity = [(ENDaemon *)self->_daemon activeEntity];
  entity = [activeEntity entity];
  region = [entity region];

  if (region)
  {
    reply = xpc_dictionary_create_reply(v5);
    if (reply)
    {
      configurationManager = [(ENDaemon *)self->_daemon configurationManager];
      configurationStore = [configurationManager configurationStore];
      v13 = [configurationStore agencyConfigurationForRegion:region];

      if (v13)
      {
        v14 = (v21 + 5);
        obj = v21[5];
        v15 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&obj];
        objc_storeStrong(v14, obj);
        xpc_dictionary_set_data(reply, "svrCfg", [v15 bytes], objc_msgSend(v15, "length"));
      }

      [(ENXPCConnection *)self _xpcSendMessage:reply];
    }

    else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

  else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  v6[2](v6);
  _Block_object_dispose(&v20, 8);
}

uint64_t __45__ENXPCConnection__xpcGetRegionAgencyConfig___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcGetAllRegionConfig:(id)config
{
  configCopy = config;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__3;
  v20 = __Block_byref_object_dispose__3;
  v21 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __42__ENXPCConnection__xpcGetAllRegionConfig___block_invoke;
  v13[3] = &unk_278FD10D0;
  v15 = &v16;
  v13[4] = self;
  v5 = configCopy;
  v14 = v5;
  v6 = MEMORY[0x24C214430](v13);
  v7 = (v17 + 5);
  obj = v17[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    int64 = xpc_dictionary_get_int64(v5, "cty");
    if (int64)
    {
      if (int64 == 10)
      {
        [(ENXPCConnection *)self _xpcGetAllRegionServerConfig:v5];
      }

      else if (int64 == 20)
      {
        [(ENXPCConnection *)self _xpcGetAllRegionAgencyConfig:v5];
      }

      else
      {
        v10 = ENErrorF();
        v11 = v17[5];
        v17[5] = v10;
      }
    }

    else
    {
      [(ENXPCConnection *)self _xpcGetAllRegionGeneralConfig:v5];
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v16, 8);
}

uint64_t __42__ENXPCConnection__xpcGetAllRegionConfig___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcGetAllRegionGeneralConfig:(id)config
{
  configCopy = config;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__3;
  v14[4] = __Block_byref_object_dispose__3;
  v15 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__ENXPCConnection__xpcGetAllRegionGeneralConfig___block_invoke;
  v11[3] = &unk_278FD10D0;
  v13 = v14;
  v11[4] = self;
  v5 = configCopy;
  v12 = v5;
  v6 = MEMORY[0x24C214430](v11);
  reply = xpc_dictionary_create_reply(v5);
  if (reply)
  {
    configurationManager = [(ENDaemon *)self->_daemon configurationManager];
    configurationStore = [configurationManager configurationStore];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __49__ENXPCConnection__xpcGetAllRegionGeneralConfig___block_invoke_2;
    v10[3] = &unk_278FD1C08;
    v10[5] = self;
    v10[6] = v14;
    v10[4] = reply;
    [configurationStore allRegionConfigurationsWithCompletion:v10];
  }

  else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  v6[2](v6);
  _Block_object_dispose(v14, 8);
}

uint64_t __49__ENXPCConnection__xpcGetAllRegionGeneralConfig___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

void __49__ENXPCConnection__xpcGetAllRegionGeneralConfig___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:a2 requiringSecureCoding:1 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  xpc_dictionary_set_data(*(a1 + 32), "svrCfg", [v4 bytes], objc_msgSend(v4, "length"));
  [*(a1 + 40) _xpcSendMessage:*(a1 + 32)];
}

- (void)_xpcGetAllRegionServerConfig:(id)config
{
  configCopy = config;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__3;
  v34 = __Block_byref_object_dispose__3;
  v35 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __48__ENXPCConnection__xpcGetAllRegionServerConfig___block_invoke;
  v27[3] = &unk_278FD10D0;
  v29 = &v30;
  v27[4] = self;
  v5 = configCopy;
  v28 = v5;
  v6 = MEMORY[0x24C214430](v27);
  v19 = v6;
  configurationManager = [(ENDaemon *)self->_daemon configurationManager];
  configurationManager2 = [(ENDaemon *)self->_daemon configurationManager];
  configurationStore = [configurationManager2 configurationStore];

  if (!configurationManager || !configurationStore)
  {
    v18 = ENErrorF();
    reply = v31[5];
    v31[5] = v18;
    goto LABEL_28;
  }

  reply = xpc_dictionary_create_reply(v5);
  if (reply)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __48__ENXPCConnection__xpcGetAllRegionServerConfig___block_invoke_2;
    v23[3] = &unk_278FD1C80;
    v23[4] = configurationManager;
    v23[5] = self;
    v26 = &v30;
    v11 = v5;
    v24 = v11;
    v25 = reply;
    v12 = MEMORY[0x24C214430](v23);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __48__ENXPCConnection__xpcGetAllRegionServerConfig___block_invoke_5;
    v22[3] = &unk_278FD1CD0;
    v22[4] = configurationStore;
    v22[5] = self;
    v22[6] = reply;
    v13 = MEMORY[0x24C214430](v22);
    objc_opt_class();
    v14 = v31;
    obj = v31[5];
    v15 = ENXPCDecodeSecureObjectIfPresent();
    objc_storeStrong(v14 + 5, obj);
    if (v15)
    {
      if (!xpc_dictionary_get_BOOL(v11, "frcFet"))
      {
        int64 = xpc_dictionary_get_int64(v11, "feRsn");
        switch(int64)
        {
          case 0:
            if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe();
            }

            (v13)[2](v13, v15);
            goto LABEL_27;
          case 1:
            if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              v17 = 1;
              LogPrintF_safe();
            }

            else
            {
              v17 = 1;
            }

            break;
          case 2:
            if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe();
            }

            v17 = 0;
            break;
          default:
            goto LABEL_27;
        }

        (v12)[2](v12, v15, v17);
        goto LABEL_27;
      }

      (v12)[2](v12, v15, 0);
    }

    else
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __48__ENXPCConnection__xpcGetAllRegionServerConfig___block_invoke_8;
      v20[3] = &unk_278FD1C08;
      v20[5] = self;
      v20[6] = &v30;
      v20[4] = reply;
      [configurationStore allRegionServerConfigurationsWithCompletion:v20];
    }

LABEL_27:

    v6 = v19;
    goto LABEL_28;
  }

  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

LABEL_28:

  v6[2](v6);
  _Block_object_dispose(&v30, 8);
}

uint64_t __48__ENXPCConnection__xpcGetAllRegionServerConfig___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

void __48__ENXPCConnection__xpcGetAllRegionServerConfig___block_invoke_2(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__ENXPCConnection__xpcGetAllRegionServerConfig___block_invoke_3;
  v11[3] = &unk_278FD1C58;
  v15 = a1[8];
  v6 = a1[4];
  v7 = a1[6];
  v11[4] = a1[5];
  v12 = v5;
  v8 = v7;
  v9 = a1[7];
  v13 = v8;
  v14 = v9;
  v10 = v5;
  [v6 fetchServerConfigurationsForRegion:v10 userInitiated:a3 withCompletion:v11];
}

void __48__ENXPCConnection__xpcGetAllRegionServerConfig___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ENXPCConnection__xpcGetAllRegionServerConfig___block_invoke_4;
  block[3] = &unk_278FD1C30;
  v14 = v6;
  v15 = v5;
  v18 = *(a1 + 64);
  *&v8 = *(a1 + 40);
  *(&v8 + 1) = *(a1 + 32);
  v12 = v8;
  *&v9 = *(a1 + 48);
  *(&v9 + 1) = *(a1 + 56);
  v16 = v12;
  v17 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, block);
}

uint64_t __48__ENXPCConnection__xpcGetAllRegionServerConfig___block_invoke_4(void *a1)
{
  if (a1[4] || !a1[5])
  {
    if (dword_281346508 <= 90)
    {
      if (dword_281346508 != -1 || (v7 = _LogCategory_Initialize(), v8 = a1[4], v7))
      {
        v15 = CUPrintNSError();
        LogPrintF_safe();

        v2 = a1[4];
      }
    }

    v16 = a1[6];
    v9 = ENNestedErrorF();
    v10 = *(a1[10] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = *(*(a1[10] + 8) + 40);
    v13 = a1[7];
    v14 = a1[8];

    return [v13 _xpcSendReplyError:v12 request:v14];
  }

  else
  {
    v4 = a1[6];
    v3 = a1[7];
    v5 = a1[9];

    return [v3 _processServerResponseConfigurationsForRegion:v4 serverResponses:? request:?];
  }
}

void __48__ENXPCConnection__xpcGetAllRegionServerConfig___block_invoke_5(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 countryCode];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__ENXPCConnection__xpcGetAllRegionServerConfig___block_invoke_6;
  v8[3] = &unk_278FD15A8;
  v6 = a1[6];
  v8[4] = a1[5];
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v4 allCachedServerResponseConfigurationsWithCountryCode:v5 completion:v8];
}

void __48__ENXPCConnection__xpcGetAllRegionServerConfig___block_invoke_6(void *a1, void *a2)
{
  v3 = a2;
  v5 = a1[4];
  v4 = a1[5];
  v6 = *(v5 + 48);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__ENXPCConnection__xpcGetAllRegionServerConfig___block_invoke_7;
  v8[3] = &unk_278FD1CA8;
  v8[4] = v5;
  v9 = v4;
  v10 = v3;
  v11 = a1[6];
  v7 = v3;
  dispatch_async(v6, v8);
}

void __48__ENXPCConnection__xpcGetAllRegionServerConfig___block_invoke_8(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:a2 requiringSecureCoding:1 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  xpc_dictionary_set_data(*(a1 + 32), "svrCfg", [v4 bytes], objc_msgSend(v4, "length"));
  [*(a1 + 40) _xpcSendMessage:*(a1 + 32)];
}

- (void)_processServerResponseConfigurationsForRegion:(id)region serverResponses:(id)responses request:(id)request
{
  v84[1] = *MEMORY[0x277D85DE8];
  regionCopy = region;
  responsesCopy = responses;
  requestCopy = request;
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = __Block_byref_object_copy__3;
  v79 = __Block_byref_object_dispose__3;
  v80 = 0;
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __89__ENXPCConnection__processServerResponseConfigurationsForRegion_serverResponses_request___block_invoke;
  v72[3] = &unk_278FD10D0;
  v74 = &v75;
  selfCopy = self;
  v72[4] = self;
  xdict = requestCopy;
  v73 = xdict;
  v53 = MEMORY[0x24C214430](v72);
  configurationManager = [(ENDaemon *)self->_daemon configurationManager];
  configurationManager2 = [(ENDaemon *)self->_daemon configurationManager];
  configurationStore = [configurationManager2 configurationStore];

  if (!configurationManager || !configurationStore)
  {
    v51 = ENErrorF();
    v49 = v76[5];
    v76[5] = v51;
    goto LABEL_27;
  }

  v11 = [configurationStore serverConfigurationForRegion:regionCopy];
  v52 = v11;
  if (!v11)
  {
    v59 = [MEMORY[0x277CBEB10] arrayWithCapacity:{objc_msgSend(responsesCopy, "count")}];
    v60 = [MEMORY[0x277CBEB10] arrayWithCapacity:{objc_msgSend(responsesCopy, "count")}];
    v58 = [MEMORY[0x277CBEB10] arrayWithCapacity:{objc_msgSend(responsesCopy, "count")}];
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v23 = responsesCopy;
    v24 = [v23 countByEnumeratingWithState:&v65 objects:v81 count:16];
    if (!v24)
    {
      goto LABEL_21;
    }

    v25 = *v66;
    while (1)
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v66 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = [objc_alloc(MEMORY[0x277CC5CD0]) initWithServerResponseDictionary:*(*(&v65 + 1) + 8 * i)];
        region = [v27 region];
        if ([region isEqual:regionCopy])
        {
        }

        else
        {
          region2 = [v27 region];
          v30 = [region2 isCountryCodeEqualToRegion:regionCopy];

          if (!v30)
          {
            goto LABEL_19;
          }
        }

        [v60 addObject:v27];
        region3 = [v27 region];
        v32 = [configurationStore configurationForRegion:region3];

        if (v32)
        {
          [v59 addObject:v32];
        }

        region4 = [v32 region];
        v34 = [configurationStore agencyConfigurationForRegion:region4];

        if (v34)
        {
          [v58 addObject:v34];
        }

LABEL_19:
      }

      v24 = [v23 countByEnumeratingWithState:&v65 objects:v81 count:16];
      if (!v24)
      {
LABEL_21:

        v35 = (v76 + 5);
        v64 = v76[5];
        v36 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:v60 requiringSecureCoding:1 error:&v64];
        objc_storeStrong(v35, v64);
        v37 = v36;
        xpc_dictionary_set_data(xdict, "svrCfg", [v36 bytes], objc_msgSend(v36, "length"));
        v38 = (v76 + 5);
        v63 = v76[5];
        v39 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:v59 requiringSecureCoding:1 error:&v63];
        objc_storeStrong(v38, v63);

        v40 = v39;
        xpc_dictionary_set_data(xdict, "rgnCfg", [v39 bytes], objc_msgSend(v39, "length"));
        v41 = (v76 + 5);
        v62 = v76[5];
        v42 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:v58 requiringSecureCoding:1 error:&v62];
        objc_storeStrong(v41, v62);

        v43 = v42;
        xpc_dictionary_set_data(xdict, "agnCfg", [v42 bytes], objc_msgSend(v42, "length"));

        goto LABEL_26;
      }
    }
  }

  v12 = MEMORY[0x277CCAAB8];
  v84[0] = v11;
  v13 = [MEMORY[0x277CBEA68] arrayWithObjects:v84 count:1];
  v14 = (v76 + 5);
  obj = v76[5];
  v15 = [v12 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&obj];
  objc_storeStrong(v14, obj);

  v16 = v15;
  xpc_dictionary_set_data(xdict, "svrCfg", [v15 bytes], objc_msgSend(v15, "length"));
  v17 = [configurationStore configurationForRegion:regionCopy];
  v60 = v17;
  if (v17)
  {
    v18 = MEMORY[0x277CCAAB8];
    v83 = v17;
    v19 = [MEMORY[0x277CBEA68] arrayWithObjects:&v83 count:1];
    v20 = (v76 + 5);
    v70 = v76[5];
    v21 = [v18 archivedDataWithRootObject:v19 requiringSecureCoding:1 error:&v70];
    objc_storeStrong(v20, v70);

    v22 = v21;
    xpc_dictionary_set_data(xdict, "rgnCfg", [v21 bytes], objc_msgSend(v21, "length"));
  }

  else
  {
    v21 = v15;
  }

  v44 = [configurationStore agencyConfigurationForRegion:regionCopy];
  v58 = v44;
  if (v44)
  {
    v45 = MEMORY[0x277CCAAB8];
    v82 = v44;
    v46 = [MEMORY[0x277CBEA68] arrayWithObjects:&v82 count:1];
    v47 = (v76 + 5);
    v69 = v76[5];
    v59 = [v45 archivedDataWithRootObject:v46 requiringSecureCoding:1 error:&v69];
    objc_storeStrong(v47, v69);

    v48 = v59;
    xpc_dictionary_set_data(xdict, "agnCfg", [v59 bytes], objc_msgSend(v59, "length"));
  }

  else
  {
    v59 = v21;
  }

LABEL_26:

  [(ENXPCConnection *)selfCopy _xpcSendMessage:xdict];
  v49 = v52;
LABEL_27:

  v53[2](v53);
  _Block_object_dispose(&v75, 8);

  v50 = *MEMORY[0x277D85DE8];
}

uint64_t __89__ENXPCConnection__processServerResponseConfigurationsForRegion_serverResponses_request___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcGetAllRegionAgencyConfig:(id)config
{
  configCopy = config;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__ENXPCConnection__xpcGetAllRegionAgencyConfig___block_invoke;
  v12[3] = &unk_278FD10D0;
  v14 = &v15;
  v12[4] = self;
  v5 = configCopy;
  v13 = v5;
  v6 = MEMORY[0x24C214430](v12);
  if (xpc_dictionary_get_string(v5, "loc"))
  {
    reply = xpc_dictionary_create_reply(v5);
    if (reply)
    {
      configurationManager = [(ENDaemon *)self->_daemon configurationManager];
      configurationStore = [configurationManager configurationStore];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __48__ENXPCConnection__xpcGetAllRegionAgencyConfig___block_invoke_2;
      v11[3] = &unk_278FD1C08;
      v11[5] = self;
      v11[6] = &v15;
      v11[4] = reply;
      [configurationStore allAgencyServerRegionConfigurationsWithCompletion:v11];
    }

    else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

  else
  {
    v10 = ENErrorF();
    reply = v16[5];
    v16[5] = v10;
  }

  v6[2](v6);
  _Block_object_dispose(&v15, 8);
}

uint64_t __48__ENXPCConnection__xpcGetAllRegionAgencyConfig___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

void __48__ENXPCConnection__xpcGetAllRegionAgencyConfig___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:a2 requiringSecureCoding:1 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  xpc_dictionary_set_data(*(a1 + 32), "svrCfg", [v4 bytes], objc_msgSend(v4, "length"));
  [*(a1 + 40) _xpcSendMessage:*(a1 + 32)];
}

- (void)_xpcGetSubdivisionList:(id)list
{
  v50 = *MEMORY[0x277D85DE8];
  listCopy = list;
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENXPCConnection _xpcGetSubdivisionList:];
  }

  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__3;
  v47 = __Block_byref_object_dispose__3;
  v48 = 0;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __42__ENXPCConnection__xpcGetSubdivisionList___block_invoke;
  v40[3] = &unk_278FD10D0;
  v42 = &v43;
  v40[4] = self;
  v5 = listCopy;
  v41 = v5;
  v6 = MEMORY[0x24C214430](v40);
  objc_opt_class();
  v7 = (v44 + 5);
  obj = v44[5];
  v8 = ENXPCDecodeSecureObjectIfPresent();
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__3;
    v37 = __Block_byref_object_dispose__3;
    configurationManager = [(ENDaemon *)self->_daemon configurationManager];
    configurationStore = [configurationManager configurationStore];
    v38 = [configurationStore subdivisionListForRegion:v8];

    v11 = xpc_array_create(0, 0);
    if (v34[5])
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v12 = v34[5];
      v13 = [v12 countByEnumeratingWithState:&v22 objects:v49 count:16];
      if (v13)
      {
        v14 = *v23;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v22 + 1) + 8 * i);
            v17 = [v16 cStringUsingEncoding:{4, v22}];
            if (v17)
            {
              xpc_array_set_string(v11, 0xFFFFFFFFFFFFFFFFLL, v17);
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v22 objects:v49 count:16];
        }

        while (v13);
      }

      reply = xpc_dictionary_create_reply(v5);
      v19 = reply;
      if (reply)
      {
        xpc_dictionary_set_value(reply, "subCodes", v11);
        [(ENXPCConnection *)self _xpcSendMessage:v19];
      }

      else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }
    }

    else
    {
      objc_initWeak(&location, self);
      configurationManager2 = [(ENDaemon *)self->_daemon configurationManager];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __42__ENXPCConnection__xpcGetSubdivisionList___block_invoke_2;
      v26[3] = &unk_278FD1CF8;
      v30 = &v33;
      v26[4] = self;
      v27 = v8;
      v28 = v11;
      v29 = v5;
      objc_copyWeak(&v31, &location);
      [configurationManager2 fetchServerConfigurationsForRegion:v27 userInitiated:0 withCompletion:v26];

      objc_destroyWeak(&v31);
      objc_destroyWeak(&location);
    }

    _Block_object_dispose(&v33, 8);
  }

  else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  v6[2](v6);
  _Block_object_dispose(&v43, 8);

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __42__ENXPCConnection__xpcGetSubdivisionList___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

void __42__ENXPCConnection__xpcGetSubdivisionList___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 32) configurationManager];
  v3 = [v2 configurationStore];
  v4 = [v3 subdivisionListForRegion:*(a1 + 40)];
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = *(*(*(a1 + 64) + 8) + 40);
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 cStringUsingEncoding:{4, v18}];
        if (v13)
        {
          xpc_array_set_string(*(a1 + 48), 0xFFFFFFFFFFFFFFFFLL, v13);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  reply = xpc_dictionary_create_reply(*(a1 + 56));
  v15 = reply;
  if (reply)
  {
    xpc_dictionary_set_value(reply, "subCodes", *(a1 + 48));
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    [WeakRetained _xpcSendMessage:v15];
  }

  else
  {
    __42__ENXPCConnection__xpcGetSubdivisionList___block_invoke_2_cold_1();
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_xpcGetCurrentAgencyConfig:(id)config
{
  configCopy = config;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__3;
  v29 = __Block_byref_object_dispose__3;
  v30 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __46__ENXPCConnection__xpcGetCurrentAgencyConfig___block_invoke;
  v22[3] = &unk_278FD10D0;
  v24 = &v25;
  v22[4] = self;
  v5 = configCopy;
  v23 = v5;
  v6 = MEMORY[0x24C214430](v22);
  v7 = (v26 + 5);
  obj = v26[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    configurationManager = [(ENDaemon *)self->_daemon configurationManager];
    if (!configurationManager)
    {
      if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      goto LABEL_14;
    }

    if (xpc_dictionary_get_BOOL(v5, "feAll"))
    {
      reply = xpc_dictionary_create_reply(v5);
      if (!reply)
      {
        if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }

        goto LABEL_13;
      }

      configurationStore = [configurationManager configurationStore];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __46__ENXPCConnection__xpcGetCurrentAgencyConfig___block_invoke_2;
      v20[3] = &unk_278FD1C08;
      v20[5] = self;
      v20[6] = &v25;
      v20[4] = reply;
      [configurationStore allAgencyServerRegionConfigurationsWithCompletion:v20];
    }

    else
    {
      activeEntity = [(ENDaemon *)self->_daemon activeEntity];
      entity = [activeEntity entity];
      reply = [entity region];

      if (!reply)
      {
        v18 = ENErrorF();
        reply = v26[5];
        v26[5] = v18;
        goto LABEL_13;
      }

      configurationStore2 = [configurationManager configurationStore];
      configurationStore = [configurationStore2 agencyConfigurationForRegion:reply];

      v15 = (v26 + 5);
      v19 = v26[5];
      v16 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:configurationStore requiringSecureCoding:1 error:&v19];
      objc_storeStrong(v15, v19);
      if (v16)
      {
        v17 = xpc_dictionary_create_reply(v5);
        if (v17)
        {
          xpc_dictionary_set_data(v17, "svrCfg", [v16 bytes], objc_msgSend(v16, "length"));
          [(ENXPCConnection *)self _xpcSendMessage:v17];
        }

        else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }
      }
    }

LABEL_13:
LABEL_14:
  }

  v6[2](v6);

  _Block_object_dispose(&v25, 8);
}

uint64_t __46__ENXPCConnection__xpcGetCurrentAgencyConfig___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

void __46__ENXPCConnection__xpcGetCurrentAgencyConfig___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:a2 requiringSecureCoding:1 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  xpc_dictionary_set_data(*(a1 + 32), "svrCfg", [v4 bytes], objc_msgSend(v4, "length"));
  [*(a1 + 40) _xpcSendMessage:*(a1 + 32)];
}

- (void)_xpcSetDeveloperRegionServerConfig:(id)config
{
  configCopy = config;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__3;
  v36 = __Block_byref_object_dispose__3;
  v37 = 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __54__ENXPCConnection__xpcSetDeveloperRegionServerConfig___block_invoke;
  v29[3] = &unk_278FD10D0;
  v31 = &v32;
  v29[4] = self;
  v5 = configCopy;
  v30 = v5;
  v6 = MEMORY[0x24C214430](v29);
  v7 = (v33 + 5);
  obj = v33[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    if (![(ENDaemon *)self->_daemon prefDeveloperServerConfiguration])
    {
      v23 = ENErrorF();
      v9 = v33[5];
      v33[5] = v23;
      goto LABEL_29;
    }

    v9 = xpc_dictionary_get_value(v5, "svrCfg");
    v10 = _CFXPCCreateCFObjectFromXPCObject();
    configurationManager = [(ENDaemon *)self->_daemon configurationManager];
    configurationStore = [configurationManager configurationStore];

    if (!v10)
    {
      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      [configurationStore clearTemporaryCountrySubdivisionList];
      [configurationStore clearTemporaryServerConfigurations];
      goto LABEL_26;
    }

    v25 = v6;
    reply = [v10 objectForKeyedSubscript:@"appConfigs"];
    if (reply && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [reply count])
    {
      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      v14 = (v33 + 5);
      v27 = v33[5];
      v15 = [configurationStore saveTemporaryServerConfigurations:reply error:{&v27, v9}];
      objc_storeStrong(v14, v27);
      if ((v15 & 1) == 0)
      {
        v9 = v24;
        goto LABEL_28;
      }

      v16 = [reply objectAtIndexedSubscript:0];
      v17 = [v16 objectForKeyedSubscript:@"countryCode"];

      v18 = [v10 objectForKeyedSubscript:@"subdivisions"];
      if (!v18)
      {
        goto LABEL_25;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![v18 count])
      {
        goto LABEL_25;
      }

      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      v19 = [MEMORY[0x277CC5CA0] regionWithCode:v17];
      v20 = (v33 + 5);
      v26 = v33[5];
      v21 = [configurationStore saveTemporaryCountrySubdivisionList:v18 region:v19 error:&v26];
      objc_storeStrong(v20, v26);

      if (v21)
      {
LABEL_25:

        v9 = v24;
        v6 = v25;
LABEL_26:
        [(ENDaemon *)self->_daemon prefsChanged];
        reply = xpc_dictionary_create_reply(v5);
        if (reply)
        {
          [(ENXPCConnection *)self _xpcSendMessage:reply];
        }

        else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }

        goto LABEL_28;
      }

      v9 = v24;
      v6 = v25;
    }

    else
    {
      v22 = ENErrorF();
      v17 = v33[5];
      v33[5] = v22;
    }

LABEL_28:
LABEL_29:
  }

  v6[2](v6);

  _Block_object_dispose(&v32, 8);
}

uint64_t __54__ENXPCConnection__xpcSetDeveloperRegionServerConfig___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcSetRegionConsent:(id)consent
{
  v91[1] = *MEMORY[0x277D85DE8];
  consentCopy = consent;
  v85 = 0;
  v86 = &v85;
  v87 = 0x3032000000;
  v88 = __Block_byref_object_copy__3;
  v89 = __Block_byref_object_dispose__3;
  v90 = 0;
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __40__ENXPCConnection__xpcSetRegionConsent___block_invoke;
  v82[3] = &unk_278FD10D0;
  v84 = &v85;
  v82[4] = self;
  original = consentCopy;
  v83 = original;
  v69 = MEMORY[0x24C214430](v82);
  v5 = v86;
  obj = v86[5];
  v6 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v5 + 5, obj);
  if (v6)
  {
    configurationManager = [(ENDaemon *)self->_daemon configurationManager];
    v68 = configurationManager;
    if (!configurationManager)
    {
      v58 = ENErrorF();
      v72 = v86[5];
      v86[5] = v58;

      goto LABEL_58;
    }

    configurationStore = [configurationManager configurationStore];
    v8 = v86;
    v80 = v86[5];
    v9 = [(ENXPCConnection *)self _regionConfigForXPCRequest:original error:&v80];
    objc_storeStrong(v8 + 5, v80);
    if (!v9)
    {
LABEL_57:

LABEL_58:
      goto LABEL_59;
    }

    if ([v9 enVersion] <= 1)
    {
      v59 = ENErrorF();
      region = v86[5];
      v86[5] = v59;
      goto LABEL_56;
    }

    region = [v9 region];
    v70 = [configurationStore serverConfigurationForRegion:region];
    appBundleID = [v70 appBundleID];
    if (appBundleID)
    {
      v11 = [MEMORY[0x277CC1E68] applicationProxyForIdentifier:appBundleID placeholder:0];
      appState = [v11 appState];
      if ([appState isInstalled])
      {

        goto LABEL_8;
      }

      appState2 = [v11 appState];
      isPlaceholder = [appState2 isPlaceholder];

      if (isPlaceholder)
      {
LABEL_8:
        v15 = ENErrorF();
        v16 = v86[5];
        v86[5] = v15;

LABEL_55:
LABEL_56:

        goto LABEL_57;
      }
    }

    activeEntity = [(ENDaemon *)self->_daemon activeEntity];
    entity = [activeEntity entity];
    region2 = [entity region];
    regionCode = [region2 regionCode];
    regionCode2 = [region regionCode];
    if ([regionCode hasPrefix:regionCode2])
    {
    }

    else
    {
      userConsent = [v9 userConsent];
      v23 = [userConsent consent] == 4;

      if (v23)
      {
        v24 = ENErrorF();
        v11 = v86[5];
        v86[5] = v24;
        goto LABEL_55;
      }
    }

    objc_opt_class();
    v25 = v86;
    v79 = v86[5];
    v11 = ENXPCDecodeSecureObjectIfPresent();
    objc_storeStrong(v25 + 5, v79);
    if (!v11)
    {
      goto LABEL_55;
    }

    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      v60 = region;
      v63 = v11;
      LogPrintF_safe();
    }

    userConsent2 = [v9 userConsent];
    consentVersion = [userConsent2 consentVersion];
    consentVersion2 = [v11 consentVersion];
    v29 = [consentVersion isEqualToString:consentVersion2];

    if ((v29 & 1) == 0)
    {
      legalConsentVersion = [v70 legalConsentVersion];
      consentVersion3 = [v11 consentVersion];
      v32 = [legalConsentVersion isEqualToString:consentVersion3];

      if ((v32 & 1) == 0)
      {
        consentVersion4 = [v11 consentVersion];
        v36 = ENErrorF();
        v37 = v86[5];
        v86[5] = v36;
LABEL_54:

        goto LABEL_55;
      }
    }

    userConsent3 = [v9 userConsent];
    v34 = [userConsent3 updatedConsent:v11];
    [v9 setUserConsent:v34];

    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [v9 userConsent];
      v64 = v61 = region;
      LogPrintF_safe();
    }

    [(ENXPCConnection *)self _sendOnboardingMetricForRegionConfiguration:v9, v61, v64];
    v38 = v86;
    v78 = v86[5];
    v39 = [configurationStore saveRegionConfiguration:v9 error:&v78];
    objc_storeStrong(v38 + 5, v78);
    if (!v39)
    {
      goto LABEL_55;
    }

    userConsent4 = [v9 userConsent];
    consent = [userConsent4 consent];

    consentVersion4 = [(ENDaemon *)self->_daemon _readPreferenceRegionPendingOnboarding];
    v67 = consent - 1;
    switch(consent)
    {
      case 1:
        goto LABEL_30;
      case 2:
        [(ENDaemon *)self->_daemon _disableAvailabilityAlertIfNeeded];
        [(ENDaemon *)self->_daemon prefsChanged];
        break;
      case 3:
LABEL_30:
        activeEntity2 = [(ENDaemon *)self->_daemon activeEntity];
        entity2 = [activeEntity2 entity];
        region3 = [entity2 region];
        v45 = [region isEqual:region3];

        if (v45)
        {
          if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            v66 = off_278FD2298[consent - 1];
            LogPrintF_safe();
            [(ENDaemon *)self->_daemon _turnOffEN:region];
          }

          else
          {
            [(ENDaemon *)self->_daemon _turnOffEN:v62];
          }
        }

        break;
    }

    v46 = [consentVersion4 isEqual:region];
    if (consent)
    {
      v47 = v46;
    }

    else
    {
      v47 = 0;
    }

    if (v47 == 1)
    {
      userNotificationCenter = [(ENDaemon *)self->_daemon userNotificationCenter];
      v91[0] = @"com.apple.ExposureNotification.onboarding";
      v49 = [MEMORY[0x277CBEA68] arrayWithObjects:v91 count:1];
      [userNotificationCenter removeDeliveredNotificationsWithIdentifiers:v49];

      onboardingManager = [(ENDaemon *)self->_daemon onboardingManager];
      [onboardingManager setShouldObserveDeviceUnlocks:0];

      onboardingManager2 = [(ENDaemon *)self->_daemon onboardingManager];
      [onboardingManager2 setPendingBuddyOnboarding:0];
    }

    userNotificationCenter2 = [(ENDaemon *)self->_daemon userNotificationCenter];
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __40__ENXPCConnection__xpcSetRegionConsent___block_invoke_2;
    v75[3] = &unk_278FD1D20;
    v53 = region;
    v76 = v53;
    selfCopy = self;
    [userNotificationCenter2 getDeliveredNotificationsWithCompletionHandler:v75];

    v54 = [consentVersion4 isEqual:v53];
    if (v67 < 2)
    {
      v55 = v54;
    }

    else
    {
      v55 = 0;
    }

    if (v55 == 1)
    {
      [(ENDaemon *)self->_daemon onboardingTriggerDeactivate];
    }

    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    reply = xpc_dictionary_create_reply(original);
    if (reply)
    {
      [(ENXPCConnection *)self _xpcSendMessage:reply];
      [(ENDaemon *)self->_daemon prefsChanged];
    }

    else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    v37 = v76;
    goto LABEL_54;
  }

LABEL_59:
  v69[2](v69);

  _Block_object_dispose(&v85, 8);
  v57 = *MEMORY[0x277D85DE8];
}

uint64_t __40__ENXPCConnection__xpcSetRegionConsent___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

void __40__ENXPCConnection__xpcSetRegionConsent___block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a2;
  v2 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v2)
  {
    v3 = v2;
    v21 = *v23;
    v4 = @"regionCode";
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v23 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        v7 = [v6 request];
        v8 = [v7 content];
        v9 = [v8 userInfo];
        v10 = [v9 objectForKeyedSubscript:v4];

        v11 = [v6 request];
        v12 = [v11 content];
        v13 = [v12 categoryIdentifier];
        if ([v13 isEqualToString:@"com.apple.ExposureNotification.UserNotification.analyticsConsent"])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [*(a1 + 32) regionCode];
            v15 = v14 = v4;
            v16 = [v15 isEqualToString:v10];

            v4 = v14;
            if (!v16)
            {
              goto LABEL_11;
            }

            v11 = [*(*(a1 + 40) + 32) userNotificationCenter];
            v12 = [v6 request];
            v13 = [v12 identifier];
            v26 = v13;
            v17 = [MEMORY[0x277CBEA68] arrayWithObjects:&v26 count:1];
            [v11 removeDeliveredNotificationsWithIdentifiers:v17];

            v4 = v14;
          }
        }

LABEL_11:
      }

      v3 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v3);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_sendOnboardingMetricForRegionConfiguration:(id)configuration
{
  configurationCopy = configuration;
  onboardingTrigger = [(ENDaemon *)self->_daemon onboardingTrigger];
  v5 = configurationCopy;
  if (onboardingTrigger)
  {
    userConsent = [configurationCopy userConsent];
    consent = [userConsent consent];

    onboardingFirstTime = [(ENDaemon *)self->_daemon onboardingFirstTime];
    region = [configurationCopy region];
    countryCode = [region countryCode];
    utf8ValueSafe = [countryCode utf8ValueSafe];

    onboardingRegionTrigger = [(ENDaemon *)self->_daemon onboardingRegionTrigger];
    v11 = [region isSubdivisionCodeEqualToRegion:?];
    _getLegalConsentPageCount = [(ENDaemon *)self->_daemon _getLegalConsentPageCount];
    v13 = [(ENDaemon *)self->_daemon onboardingLegalConsentLastViewCount]< _getLegalConsentPageCount;
    if ([region validSubdivisionCode])
    {
      subdivisionCode = [region subdivisionCode];
    }

    else
    {
      subdivisionCode = 0;
    }

    v38 = region;
    v15 = [subdivisionCode componentsSeparatedByString:@"-"];
    if ([v15 count] == 2)
    {
      [v15 objectAtIndexedSubscript:1];
      v16 = v11;
      v17 = onboardingTrigger;
      v18 = v15;
      v19 = subdivisionCode;
      v20 = consent;
      v22 = v21 = utf8ValueSafe;
      utf8ValueSafe2 = [v22 utf8ValueSafe];

      utf8ValueSafe = v21;
      consent = v20;
      subdivisionCode = v19;
      v15 = v18;
      onboardingTrigger = v17;
      v11 = v16;
    }

    else
    {
      utf8ValueSafe2 = 0;
    }

    v24 = v13 & v11;
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      if (onboardingTrigger > 4)
      {
        v25 = "?";
      }

      else
      {
        v25 = off_278FD22B0[onboardingTrigger - 1];
      }

      if (utf8ValueSafe2)
      {
        v26 = utf8ValueSafe2;
      }

      else
      {
        v26 = utf8ValueSafe;
      }

      v27 = "no";
      if (v24)
      {
        v28 = "yes";
      }

      else
      {
        v28 = "no";
      }

      if (consent == 2)
      {
        v29 = "yes";
      }

      else
      {
        v29 = "no";
      }

      if (onboardingFirstTime)
      {
        v27 = "yes";
      }

      v36 = v29;
      v37 = v27;
      v34 = v26;
      v35 = v28;
      v33 = v25;
      LogPrintF_safe();
    }

    v30 = [(ENDaemon *)self->_daemon delegate:v33];
    countryCode2 = [v38 countryCode];
    if ([v38 validSubdivisionCode])
    {
      subdivisionCode2 = [v38 subdivisionCode];
      [v30 sendOnBoardingMetricWithTrigger:onboardingTrigger completed:consent == 2 firstTime:onboardingFirstTime countryCode:countryCode2 subdivisionCode:subdivisionCode2 legalConsent:v24];
    }

    else
    {
      [v30 sendOnBoardingMetricWithTrigger:onboardingTrigger completed:consent == 2 firstTime:onboardingFirstTime countryCode:countryCode2 subdivisionCode:@"Unknown" legalConsent:v24];
    }

    [(ENDaemon *)self->_daemon setOnboardingTrigger:0];
    [(ENDaemon *)self->_daemon setOnboardingFirstTime:0];
    [(ENDaemon *)self->_daemon setOnboardingRegionTrigger:0];
    [(ENDaemon *)self->_daemon setOnboardingLegalConsentLastViewCount:[(ENDaemon *)self->_daemon _getLegalConsentPageCount]];

    v5 = configurationCopy;
  }
}

- (void)_xpcTCCCheck:(id)check
{
  checkCopy = check;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__3;
  v29 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __32__ENXPCConnection__xpcTCCCheck___block_invoke;
  v21[3] = &unk_278FD10D0;
  v23 = &v24;
  v21[4] = self;
  v5 = checkCopy;
  v22 = v5;
  v6 = MEMORY[0x24C214430](v21);
  if (MEMORY[0x282233AA0])
  {
    v7 = v25;
    obj = v25[5];
    v8 = [(ENXPCConnection *)self _authorizationPreflightUnknownAndReturnError:&obj];
    objc_storeStrong(v7 + 5, obj);
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      v9 = "no";
      if (v8)
      {
        v9 = "yes";
      }

      v19 = v9;
      LogPrintF_safe();
    }

    xpcCnx = self->_xpcCnx;
    xpc_connection_get_audit_token();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE0], 1, MEMORY[0x277CBF140], MEMORY[0x277CBF148]);
    CFDictionarySetValue(Mutable, *MEMORY[0x277D6C0B0], *MEMORY[0x277CBED20]);
    v12 = *MEMORY[0x277D6C150];
    v13 = TCCAccessCheckAuditToken();
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      v14 = "granted";
      if (!v13)
      {
        v14 = "not granted";
      }

      v19 = v14;
      LogPrintF_safe();
    }

    if (v8)
    {
      [(ENXPCConnection *)self _updateActiveEntityFromTCCResult:v13 != 0, v19];
    }

    CFRelease(Mutable);
    if (v13)
    {
      reply = xpc_dictionary_create_reply(v5);
      if (reply)
      {
        [(ENXPCConnection *)self _xpcSendMessage:reply];
      }

      else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }
    }

    else
    {
      v18 = ENErrorF();
      reply = v25[5];
      v25[5] = v18;
    }
  }

  else
  {
    v16 = ENErrorF();
    v17 = v25[5];
    v25[5] = v16;
  }

  v6[2](v6);

  _Block_object_dispose(&v24, 8);
}

uint64_t __32__ENXPCConnection__xpcTCCCheck___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_updateActiveEntityFromTCCResult:(BOOL)result
{
  v5 = MEMORY[0x277CC1E68];
  signingIdentity = [(ENXPCClient *)self->_client signingIdentity];
  v7 = [v5 applicationProxyForIdentifier:signingIdentity placeholder:0];

  if (!v7)
  {
    [ENXPCConnection _updateActiveEntityFromTCCResult:];
    goto LABEL_27;
  }

  v8 = [(ENDaemon *)self->_daemon _getInfoDictFromAppProxy:v7];
  if (!v8)
  {
    [ENXPCConnection _updateActiveEntityFromTCCResult:];
    goto LABEL_26;
  }

  v9 = [(ENDaemon *)self->_daemon regionForBundleInfo:v8];
  if (v9)
  {
    if (result)
    {
      v10 = [ENActiveEntity alloc];
      v11 = objc_alloc(MEMORY[0x277CC5C18]);
      signingIdentity2 = [(ENXPCClient *)self->_client signingIdentity];
      v13 = [v11 initWithBundleID:signingIdentity2 region:v9];
      v14 = [(ENActiveEntity *)v10 initWithEntity:v13 activeStatus:2];

      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        [ENXPCConnection _updateActiveEntityFromTCCResult:];
      }

      configurationManager = [(ENDaemon *)self->_daemon configurationManager];
      configurationStore = [configurationManager configurationStore];
      v17 = [configurationStore configurationForRegion:v9];

      if (v17)
      {
        userConsent = [v17 userConsent];
        [userConsent setConsent:4];

        configurationManager2 = [(ENDaemon *)self->_daemon configurationManager];
        configurationStore2 = [configurationManager2 configurationStore];
        v37 = 0;
        v21 = [configurationStore2 saveRegionConfiguration:v17 error:&v37];
        v22 = v37;

        if ((v21 & 1) == 0 && dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          [ENXPCConnection _updateActiveEntityFromTCCResult:];
        }
      }

      [(ENDaemon *)self->_daemon _writePreferenceActiveEntity:v14];

      goto LABEL_17;
    }

    activeEntity = [(ENDaemon *)self->_daemon activeEntity];
    entity = [activeEntity entity];
    region = [entity region];
    v35 = [region isEqual:v9];

    if (v35)
    {
      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        [ENXPCConnection _updateActiveEntityFromTCCResult:];
      }

      [(ENDaemon *)self->_daemon _turnOffEN];
      goto LABEL_25;
    }
  }

  else if (result)
  {
    v23 = [ENActiveEntity alloc];
    v24 = objc_alloc(MEMORY[0x277CC5C18]);
    signingIdentity3 = [(ENXPCClient *)self->_client signingIdentity];
    v26 = [v24 initWithBundleID:signingIdentity3 region:0];
    v14 = [(ENActiveEntity *)v23 initWithEntity:v26 activeStatus:2];

    [(ENDaemon *)self->_daemon _writePreferenceActiveEntity:v14];
    daemon = self->_daemon;
    signingIdentity4 = [(ENXPCClient *)self->_client signingIdentity];
    [(ENDaemon *)daemon _setActiveRegionForApp:signingIdentity4 infoDict:v8];

LABEL_17:
    v29 = *MEMORY[0x277D6C160];
    TCCAccessSetForBundleId();
    [(ENDaemon *)self->_daemon _disableAvailabilityAlertIfNeeded];
    [(ENDaemon *)self->_daemon prefsChanged];
    if (v9 && [(ENXPCClient *)self->_client accessLevel]<= 2)
    {
      signingIdentity5 = [(ENXPCClient *)self->_client signingIdentity];
      v31 = self->_daemon;
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __52__ENXPCConnection__updateActiveEntityFromTCCResult___block_invoke;
      v36[3] = &unk_278FD1D48;
      v36[4] = signingIdentity5;
      v36[5] = v9;
      v36[6] = self;
      [(ENDaemon *)v31 fetchServerConfigurationForRegion:v9 completion:v36];
    }

    goto LABEL_25;
  }

  [ENXPCConnection _updateActiveEntityFromTCCResult:];
LABEL_25:

LABEL_26:
LABEL_27:
}

void __52__ENXPCConnection__updateActiveEntityFromTCCResult___block_invoke(void *a1, void *a2, void *a3)
{
  v11 = a2;
  v6 = a3;
  if (v11)
  {
    v3 = [v11 appBundleID];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  v7 = [v6 domain];
  if (![v7 isEqualToString:@"ENConfigurationManagerErrorDomain"])
  {

    if (!v11)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v8 = [v6 code];

  if (v11)
  {
  }

  if (v8 == 5)
  {
LABEL_7:
    v9 = [ENActiveEntity alloc];
    v10 = [objc_alloc(MEMORY[0x277CC5C18]) initWithBundleID:a1[4] region:a1[5]];
    v3 = [(ENActiveEntity *)v9 initWithEntity:v10 activeStatus:1];

    [*(a1[6] + 32) _writePreferenceActiveEntity:v3];
    CFPrefs_RemoveValue();
    [*(a1[6] + 32) prefsChanged];
LABEL_9:
  }

LABEL_10:
}

- (void)_xpcExposureDetectionFileActivate:(id)activate
{
  activateCopy = activate;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__3;
  v46 = __Block_byref_object_dispose__3;
  v47 = 0;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __53__ENXPCConnection__xpcExposureDetectionFileActivate___block_invoke;
  v39[3] = &unk_278FD10D0;
  v41 = &v42;
  v39[4] = self;
  v5 = activateCopy;
  v40 = v5;
  v6 = MEMORY[0x24C214430](v39);
  v7 = v43;
  obj = v43[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:2 error:&obj];
  objc_storeStrong(v7 + 5, obj);
  if (v8)
  {
    v9 = v43;
    v37 = v43[5];
    v10 = [(ENXPCConnection *)self _authorizedAndReturnError:&v37];
    objc_storeStrong(v9 + 5, v37);
    if (v10)
    {
      if (![(ENDaemon *)self->_daemon prefEnabled])
      {
        v29 = ENErrorF();
        v20 = v43[5];
        v43[5] = v29;
LABEL_20:

        goto LABEL_21;
      }

      v11 = v43;
      v36 = v43[5];
      v12 = [(ENXPCConnection *)self _appActiveStatusWithError:&v36];
      objc_storeStrong(v11 + 5, v36);
      if (v12)
      {
        v13 = v43;
        v35 = v43[5];
        v14 = [(ENXPCConnection *)self _xpcManagerActivateIfNecessaryWithRequest:v5 error:&v35];
        objc_storeStrong(v13 + 5, v35);
        if (v14)
        {
          if ([(ENXPCClient *)self->_client accessLevel]> 2 || (v15 = v43, v34 = v43[5], v16 = [(ENXPCConnection *)self _rateLimitAndReturnError:&v34], objc_storeStrong(v15 + 5, v34), v16))
          {
            [(ENExposureDetectionDaemonSession *)self->_detectionSession invalidate];
            detectionSession = self->_detectionSession;
            self->_detectionSession = 0;

            v18 = objc_alloc(MEMORY[0x277CC5C38]);
            v19 = v43;
            v33 = v43[5];
            v20 = [v18 initWithXPCObject:v5 error:&v33];
            objc_storeStrong(v19 + 5, v33);
            if (v20)
            {
              exposureDetectionManager = [(ENDaemon *)self->_daemon exposureDetectionManager];
              if (exposureDetectionManager)
              {
                client = self->_client;
                configuration = [v20 configuration];
                v24 = v43;
                v32 = v43[5];
                v25 = [exposureDetectionManager createDetectionSessionForClient:client configuration:configuration error:&v32];
                objc_storeStrong(v24 + 5, v32);

                if (v25)
                {
                  [v25 setSkipFileSigningVerification:{-[ENXPCConnection skipFileSigningVerification](self, "skipFileSigningVerification")}];
                  [(ENDaemon *)self->_daemon setUsageExposureDetectFileActivate:[(ENDaemon *)self->_daemon usageExposureDetectFileActivate]+ 1];
                  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                  {
                    [(ENXPCClient *)self->_client appAPIVersion];
                    LogPrintF_safe();
                  }

                  objc_storeStrong(&self->_detectionSession, v25);
                  v26 = v43;
                  v31 = v43[5];
                  v27 = [v25 prepareAndReturnError:&v31];
                  objc_storeStrong(v26 + 5, v31);
                  if (v27)
                  {
                    reply = xpc_dictionary_create_reply(v5);
                    if (reply)
                    {
                      [(ENXPCConnection *)self _xpcSendMessage:reply];
                    }

                    else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF_safe();
                    }
                  }

                  else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF_safe();
                  }
                }
              }

              else
              {
                v30 = ENErrorF();
                v25 = v43[5];
                v43[5] = v30;
              }
            }

            goto LABEL_20;
          }
        }
      }
    }
  }

LABEL_21:
  v6[2](v6);

  _Block_object_dispose(&v42, 8);
}

uint64_t __53__ENXPCConnection__xpcExposureDetectionFileActivate___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcExposureDetectionFileAdd:(id)add
{
  addCopy = add;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__3;
  v59 = __Block_byref_object_dispose__3;
  v60 = 0;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __48__ENXPCConnection__xpcExposureDetectionFileAdd___block_invoke;
  v52[3] = &unk_278FD10D0;
  v54 = &v55;
  v52[4] = self;
  v5 = addCopy;
  v53 = v5;
  v6 = MEMORY[0x24C214430](v52);
  v7 = v56;
  v51 = v56[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:2 error:&v51];
  objc_storeStrong(v7 + 5, v51);
  if (v8)
  {
    exposureDetectionManager = [(ENDaemon *)self->_daemon exposureDetectionManager];
    if (exposureDetectionManager)
    {
      v10 = self->_detectionSession;
      if (!v10 || ([(ENDaemon *)self->_daemon setUsageExposureDetectFileAddKeys:[(ENDaemon *)self->_daemon usageExposureDetectFileAddKeys]+ 1], v11 = xpc_dictionary_dup_fd(v5, "fd"), v11 < 0))
      {
        v26 = ENErrorF();
        v27 = v56[5];
        v56[5] = v26;
      }

      else
      {
        xpc_dictionary_get_string(v5, "sbTk");
        v12 = v56;
        v50 = v56[5];
        v13 = ENCloneFileToTemporaryDirectory();
        objc_storeStrong(v12 + 5, v50);
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __48__ENXPCConnection__xpcExposureDetectionFileAdd___block_invoke_2;
        v48[3] = &__block_descriptor_36_e5_v8__0l;
        v49 = v11;
        v14 = MEMORY[0x24C214430](v48);
        if ((v13 & 0x80000000) == 0)
        {
          v42 = v10;
          v47 = 0;
          CUXPCDecodeNSData();
          createFileSession = [exposureDetectionManager createFileSession];
          v16 = v56;
          obj = v56[5];
          v17 = [createFileSession activateWithFD:v13 signatureData:0 error:&obj];
          objc_storeStrong(v16 + 5, obj);
          if (v17)
          {
            signatures = [createFileSession signatures];
            firstObject = [signatures firstObject];

            keyID = [firstObject keyID];
            keyVersion = [firstObject keyVersion];
            v21 = +[ENLoggingPrefs sharedENLoggingPrefs];
            isSensitiveLoggingAllowed = [v21 isSensitiveLoggingAllowed];

            if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              sha256Data = [createFileSession sha256Data];
              appleBundleID = [firstObject appleBundleID];
              batchNumber = [firstObject batchNumber];
              batchCount = [firstObject batchCount];
              keyID2 = [firstObject keyID];
              keyVersion2 = [firstObject keyVersion];
              metadata = [createFileSession metadata];
              CUPrintNSObjectOneLine();
              v34 = v33 = keyVersion2;
              v31 = batchCount;
              v32 = keyID2;
              v29 = appleBundleID;
              v30 = batchNumber;
              v28 = sha256Data;
              LogPrintF_safe();
            }

            signatureData = [firstObject signatureData];

            if (signatureData && keyVersion)
            {
              v43[0] = MEMORY[0x277D85DD0];
              v43[1] = 3221225472;
              v43[2] = __48__ENXPCConnection__xpcExposureDetectionFileAdd___block_invoke_3;
              v43[3] = &unk_278FD1DB8;
              v43[4] = self;
              v44 = v5;
              v45 = createFileSession;
              [(ENXPCConnection *)self _fetchClientPublicKeyWithVerificationID:keyID keyVersion:keyVersion completion:v43];
            }

            else
            {
              [(ENXPCConnection *)self _xpcExposureDetectionFileAddNext:v5 fileSession:createFileSession publicKey:0];
            }
          }

          else
          {
            close(v13);
          }

          v10 = v42;
        }

        v14[2](v14);
      }
    }

    else
    {
      v25 = ENErrorF();
      v10 = v56[5];
      v56[5] = v25;
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v55, 8);
}

uint64_t __48__ENXPCConnection__xpcExposureDetectionFileAdd___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

void __48__ENXPCConnection__xpcExposureDetectionFileAdd___block_invoke_3(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = a1[4];
  v7 = a1[5];
  v9 = *(v8 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ENXPCConnection__xpcExposureDetectionFileAdd___block_invoke_4;
  block[3] = &unk_278FD1D90;
  v15 = v5;
  v16 = v8;
  v17 = v6;
  v10 = v7;
  v11 = a1[6];
  v18 = v10;
  v19 = v11;
  v12 = v6;
  v13 = v5;
  dispatch_async(v9, block);
}

uint64_t __48__ENXPCConnection__xpcExposureDetectionFileAdd___block_invoke_4(void *a1)
{
  if (!a1[4] && dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    __48__ENXPCConnection__xpcExposureDetectionFileAdd___block_invoke_4_cold_1(a1);
  }

  v2 = a1[7];
  v3 = a1[8];
  v5 = a1[4];
  v4 = a1[5];

  return [v4 _xpcExposureDetectionFileAddNext:v2 fileSession:v3 publicKey:v5];
}

- (void)_fetchClientPublicKeyWithVerificationID:(id)d keyVersion:(id)version completion:(id)completion
{
  dCopy = d;
  versionCopy = version;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__3;
  v38 = __Block_byref_object_dispose__3;
  v39 = 0;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __81__ENXPCConnection__fetchClientPublicKeyWithVerificationID_keyVersion_completion___block_invoke;
  v31[3] = &unk_278FD1A50;
  v33 = &v34;
  v11 = completionCopy;
  v32 = v11;
  v12 = MEMORY[0x24C214430](v31);
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    v24 = dCopy;
    v25 = versionCopy;
    client = self->_client;
    LogPrintF_safe();
  }

  if (![versionCopy length])
  {
    v21 = ENErrorF();
    v14 = v35[5];
    v35[5] = v21;
    goto LABEL_15;
  }

  appRegion = [(ENXPCClient *)self->_client appRegion];
  if (!appRegion)
  {
    v14 = dCopy;
    prefRegionIdentifierOverride = [(ENDaemon *)self->_daemon prefRegionIdentifierOverride];
    if (!prefRegionIdentifierOverride)
    {
      v16 = [ENCoreTelephonyUtility countryCodeISOForMobileCountryCode:v14];
      v17 = v16;
      v18 = v16 ? v16 : v14;
      prefRegionIdentifierOverride = v18;

      if (!prefRegionIdentifierOverride)
      {
        v22 = ENErrorF();
        v20 = v35[5];
        v35[5] = v22;
        goto LABEL_14;
      }
    }

    appRegion = [objc_alloc(MEMORY[0x277CC5CA0]) initWithCountryCode:prefRegionIdentifierOverride];
  }

  daemon = self->_daemon;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __81__ENXPCConnection__fetchClientPublicKeyWithVerificationID_keyVersion_completion___block_invoke_2;
  v26[3] = &unk_278FD1E00;
  v30 = &v34;
  v29 = v11;
  v26[4] = self;
  v14 = appRegion;
  v27 = v14;
  v28 = versionCopy;
  [(ENDaemon *)daemon fetchServerConfigurationForRegion:v14 completion:v26];

  v20 = v29;
LABEL_14:

LABEL_15:
  v12[2](v12);

  _Block_object_dispose(&v34, 8);
}

uint64_t __81__ENXPCConnection__fetchClientPublicKeyWithVerificationID_keyVersion_completion___block_invoke(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __81__ENXPCConnection__fetchClientPublicKeyWithVerificationID_keyVersion_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __81__ENXPCConnection__fetchClientPublicKeyWithVerificationID_keyVersion_completion___block_invoke_3;
  v35[3] = &unk_278FD1A50;
  v33 = *(a1 + 56);
  v7 = v33;
  v36 = v33;
  v8 = MEMORY[0x24C214430](v35);
  if (v6)
  {
    v9 = [v6 domain];
    if ([v9 isEqualToString:@"ENConfigurationManagerErrorDomain"])
    {
      v10 = [v6 code];

      if (v10 == 5)
      {
        v11 = [*(*(a1 + 32) + 24) signingIdentity];
        v30 = *(a1 + 40);
        v12 = ENErrorF();
        v13 = *(*(a1 + 64) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = v12;

        goto LABEL_24;
      }
    }

    else
    {
    }

LABEL_11:
    v28 = *(a1 + 40);
    v17 = ENNestedErrorF();
    v18 = *(*(a1 + 64) + 8);
    v11 = *(v18 + 40);
    *(v18 + 40) = v17;
    goto LABEL_24;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  v11 = [v5 publicKeyVersion];
  if (([v11 isEqualToString:*(a1 + 48)] & 1) == 0)
  {
    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      v16 = *(a1 + 40);
      v15 = *(a1 + 48);
      [*(*(a1 + 32) + 24) signingIdentity];
      v32 = v31 = v16;
      v27 = v15;
      v29 = v11;
      LogPrintF_safe();
    }

    v19 = [*(*(a1 + 32) + 32) configurationManager];
    [v19 fetchServerConfigurationsForRegion:*(a1 + 40) userInitiated:0 withCompletion:&__block_literal_global_2291];
  }

  v20 = [v5 publicKey];
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    v27 = v20;
    LogPrintF_safe();
  }

  v21 = *MEMORY[0x277CDBFF8];
  v22 = *(*(a1 + 64) + 8);
  obj = *(v22 + 40);
  v23 = [ENSecKey keyFromBase64String:v20 keyClass:v21 error:&obj, v27];
  objc_storeStrong((v22 + 40), obj);
  if (v23)
  {
    (*(*(a1 + 56) + 16))();
    if (([*(a1 + 32) skipFileSigningVerification] & 1) == 0)
    {
      v24 = [*(*(a1 + 32) + 32) configurationManager];
      v25 = [v24 configurationStore];
      v26 = [v25 configurationForRegion:*(a1 + 40)];

      if (v26)
      {
        [*(*(a1 + 32) + 32) _exposureNotificationRegionConfigurationChanged:v26];
      }

      else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }
    }
  }

LABEL_24:
  v8[2](v8);
}

uint64_t __81__ENXPCConnection__fetchClientPublicKeyWithVerificationID_keyVersion_completion___block_invoke_3(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)_xpcExposureDetectionFileAddNext:(id)next fileSession:(id)session publicKey:(id)key
{
  nextCopy = next;
  sessionCopy = session;
  keyCopy = key;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__3;
  v35 = __Block_byref_object_dispose__3;
  v36 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __74__ENXPCConnection__xpcExposureDetectionFileAddNext_fileSession_publicKey___block_invoke;
  v26[3] = &unk_278FD1E28;
  v10 = sessionCopy;
  v30 = &v31;
  v27 = v10;
  selfCopy = self;
  v11 = nextCopy;
  v29 = v11;
  v12 = MEMORY[0x24C214430](v26);
  v13 = self->_detectionSession;
  v14 = v13;
  if (!v13)
  {
    v23 = ENErrorF();
    reply = v32[5];
    v32[5] = v23;
LABEL_10:

    goto LABEL_11;
  }

  statistics = [(ENExposureDetectionDaemonSession *)v13 statistics];
  [statistics fileKeyCount];

  statistics2 = [(ENExposureDetectionDaemonSession *)v14 statistics];
  [statistics2 matchedKeyCount];

  v17 = (v32 + 5);
  obj = v32[5];
  LOBYTE(statistics2) = [(ENExposureDetectionDaemonSession *)v14 addMatchesFromFileSession:v10 publicKey:keyCopy endpoint:0 error:&obj];
  objc_storeStrong(v17, obj);
  if (statistics2)
  {
    statistics3 = [(ENExposureDetectionDaemonSession *)v14 statistics];
    [statistics3 fileKeyCount];

    statistics4 = [(ENExposureDetectionDaemonSession *)v14 statistics];
    [statistics4 matchedKeyCount];

    v20 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed = [v20 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    reply = xpc_dictionary_create_reply(v11);
    if (reply)
    {
      [(ENXPCConnection *)self _xpcSendMessage:reply];
    }

    else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    goto LABEL_10;
  }

LABEL_11:

  v12[2](v12);
  _Block_object_dispose(&v31, 8);
}

uint64_t __74__ENXPCConnection__xpcExposureDetectionFileAddNext_fileSession_publicKey___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 56);
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = *(a1 + 56);
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = *(a1 + 56);
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcExposureDetectionFileFinish:(id)finish
{
  finishCopy = finish;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__3;
  v31 = __Block_byref_object_dispose__3;
  v32 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __51__ENXPCConnection__xpcExposureDetectionFileFinish___block_invoke;
  v24[3] = &unk_278FD10D0;
  v26 = &v27;
  v24[4] = self;
  v5 = finishCopy;
  v25 = v5;
  v6 = MEMORY[0x24C214430](v24);
  v7 = (v28 + 5);
  obj = v28[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:2 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = self->_detectionSession;
    v10 = v9;
    if (v9)
    {
      v11 = (v28 + 5);
      v22 = v28[5];
      v12 = [(ENExposureDetectionDaemonSession *)v9 finishAndReturnError:&v22];
      objc_storeStrong(v11, v22);
      if (v12)
      {
        statistics = [v12 statistics];
        if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          processedFileCount = [statistics processedFileCount];
          fileKeyCount = [statistics fileKeyCount];
          invalidFileSignatureCount = [statistics invalidFileSignatureCount];
          v19 = processedFileCount;
          LogPrintF_safe();
        }

        [(ENDaemon *)self->_daemon setUsageExposureDetectFileFinish:[(ENDaemon *)self->_daemon usageExposureDetectFileFinish:v19]+ 1];
        reply = xpc_dictionary_create_reply(v5);
        if (reply)
        {
          summary = [v12 summary];
          v17 = summary;
          if (summary)
          {
            [summary encodeWithXPCObject:reply];
            [(ENXPCConnection *)self _xpcSendMessage:reply];
          }

          else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }
        }

        else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }
      }

      else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }
    }

    else
    {
      v18 = ENErrorF();
      v12 = v28[5];
      v28[5] = v18;
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v27, 8);
}

uint64_t __51__ENXPCConnection__xpcExposureDetectionFileFinish___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcExposureDetectionFileGetExposures:(id)exposures
{
  exposuresCopy = exposures;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__3;
  v62 = __Block_byref_object_dispose__3;
  v63 = 0;
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __57__ENXPCConnection__xpcExposureDetectionFileGetExposures___block_invoke;
  v55[3] = &unk_278FD10D0;
  v57 = &v58;
  v55[4] = self;
  v5 = exposuresCopy;
  v56 = v5;
  v6 = MEMORY[0x24C214430](v55);
  v7 = v59;
  v54 = v59[5];
  v38 = v6;
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:2 error:&v54];
  objc_storeStrong(v7 + 5, v54);
  if (v8)
  {
    if ([(ENXPCClient *)self->_client accessLevel]<= 3 && [(ENXPCClient *)self->_client appAPIVersion]>= 2)
    {
      v33 = ENErrorF();
      v10 = v59[5];
      v59[5] = v33;
    }

    else
    {
      v9 = self->_detectionSession;
      v10 = v9;
      if (v9)
      {
        exposureCalculationSession = [(ENExposureDetectionDaemonSession *)v9 exposureCalculationSession];
        if (exposureCalculationSession)
        {
          v12 = v59;
          v53 = v59[5];
          v13 = [(ENExposureDetectionDaemonSession *)v10 getAnalysisSessionAndReturnError:&v53];
          objc_storeStrong(v12 + 5, v53);
          if (v13)
          {
            v40 = v13;
            configuration = [v13 configuration];
            string = xpc_dictionary_get_string(v5, "auEx");
            if (string)
            {
              v39 = [MEMORY[0x277CCACA0] stringWithUTF8String:string];
            }

            else
            {
              v39 = &stru_285D62BB0;
            }

            v49 = 0;
            v50 = &v49;
            v51 = 0x2020000000;
            v52 = 0;
            v47[0] = 0;
            v47[1] = v47;
            v47[2] = 0x2020000000;
            minimumRiskScore = [configuration minimumRiskScore];
            [configuration minimumRiskScoreFullRange];
            v16 = v15;
            v43 = 0;
            v44 = &v43;
            v45 = 0x2020000000;
            v46 = 0;
            Current = CFAbsoluteTimeGetCurrent();
            v18 = xpc_array_create(0, 0);
            v42[0] = MEMORY[0x277D85DD0];
            v42[1] = 3221225472;
            v42[2] = __57__ENXPCConnection__xpcExposureDetectionFileGetExposures___block_invoke_2;
            v42[3] = &unk_278FD1E50;
            v42[6] = &v49;
            v42[7] = v47;
            *&v42[9] = Current;
            v42[10] = v16;
            v42[8] = &v43;
            v42[4] = v13;
            v42[5] = v18;
            [exposureCalculationSession enumerateCachedExposureInfo:v42];
            if (v50[3])
            {
              v37 = exposureCalculationSession;
              v19 = v5;
              activeEntity = [(ENDaemon *)self->_daemon activeEntity];
              entity = [activeEntity entity];
              bundleIdentifier = [entity bundleIdentifier];
              if ([bundleIdentifier length])
              {
                activeEntity2 = [(ENDaemon *)self->_daemon activeEntity];
                entity2 = [activeEntity2 entity];
                bundleIdentifier2 = [entity2 bundleIdentifier];
              }

              else
              {
                bundleIdentifier2 = @"?";
              }

              [(ENDaemon *)self->_daemon postExposureSummaryAccessNotificationWithAppBundleIdentifier:bundleIdentifier2 string:v39];
              v5 = v19;
              exposureCalculationSession = v37;
            }

            v26 = +[ENLoggingPrefs sharedENLoggingPrefs];
            isSensitiveLoggingAllowed = [v26 isSensitiveLoggingAllowed];

            if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              v35 = v44[3];
              v36 = configuration;
              v34 = v50[3];
              LogPrintF_safe();
            }

            [(ENDaemon *)self->_daemon setUsageExposureDetectFileGetExposures:[(ENDaemon *)self->_daemon usageExposureDetectFileGetExposures:v34]+ 1];
            reply = xpc_dictionary_create_reply(v5);
            v29 = reply;
            if (reply)
            {
              xpc_dictionary_set_value(reply, "exIA", v18);
              [(ENXPCConnection *)self _xpcSendMessage:v29];
              if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
              {
                LogPrintF_safe();
              }

              [(ENExposureDetectionDaemonSession *)v10 invalidate];
              detectionSession = self->_detectionSession;
              self->_detectionSession = 0;
            }

            else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe();
            }

            _Block_object_dispose(&v43, 8);
            _Block_object_dispose(v47, 8);
            _Block_object_dispose(&v49, 8);

            v13 = v40;
          }
        }

        else
        {
          v32 = ENErrorF();
          v13 = v59[5];
          v59[5] = v32;
        }

        v6 = v38;
      }

      else
      {
        v31 = ENErrorF();
        exposureCalculationSession = v59[5];
        v59[5] = v31;
      }
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v58, 8);
}

uint64_t __57__ENXPCConnection__xpcExposureDetectionFileGetExposures___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

void __57__ENXPCConnection__xpcExposureDetectionFileGetExposures___block_invoke_2(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *(*(*(a1 + 48) + 8) + 24) += [v3 count];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v37;
    v26 = v4;
    v27 = a1;
    v25 = *v37;
    do
    {
      v8 = 0;
      v28 = v6;
      do
      {
        if (*v37 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v36 + 1) + 8 * v8);
        v35 = 0;
        [*(a1 + 32) estimateRiskWithExposureInfo:v9 referenceTime:&v35 + 1 transmissionRiskLevel:&v35 skip:{*(a1 + 72), v25, v26}];
        if ((v35 & 1) == 0)
        {
          v11 = v10;
          if (v10 > 255.0)
          {
            v10 = 255.0;
          }

          if (v10 < 0.0)
          {
            v10 = 0.0;
          }

          if (*(*(*(a1 + 56) + 8) + 24) <= v10 && v11 >= *(a1 + 80))
          {
            v29 = v10;
            [v9 duration];
            v13 = 60 * ((v12 + 59) / 0x3C);
            if (v13 >= 0x708)
            {
              v13 = 1800;
            }

            [v9 setDuration:v13];
            v14 = objc_alloc_init(MEMORY[0x277CBEB10]);
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v30 = v9;
            v15 = [v9 attenuationDurations];
            v16 = [v15 countByEnumeratingWithState:&v31 objects:v40 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v32;
              do
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v32 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = 60 * (([*(*(&v31 + 1) + 8 * i) unsignedIntValue] + 59) / 0x3C);
                  if (v20 >= 0x708)
                  {
                    v21 = 1800;
                  }

                  else
                  {
                    v21 = v20;
                  }

                  v22 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v21];
                  [v14 addObject:v22];
                }

                v17 = [v15 countByEnumeratingWithState:&v31 objects:v40 count:16];
              }

              while (v17);
            }

            [v30 setAttenuationDurations:v14];
            [v30 setTotalRiskScore:v29];
            [v30 setTotalRiskScoreFullRange:v11];
            [v30 setTransmissionRiskLevel:HIBYTE(v35)];
            v23 = xpc_dictionary_create(0, 0, 0);
            [v30 encodeWithXPCObject:v23];
            a1 = v27;
            xpc_array_set_value(*(v27 + 40), 0xFFFFFFFFFFFFFFFFLL, v23);

            v7 = v25;
            v4 = v26;
            v6 = v28;
          }

          else
          {
            ++*(*(*(a1 + 64) + 8) + 24);
          }
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [v4 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v6);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_xpcExposureDetectionFileGetExposureWindows:(id)windows
{
  windowsCopy = windows;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__3;
  v62 = __Block_byref_object_dispose__3;
  v63 = 0;
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __63__ENXPCConnection__xpcExposureDetectionFileGetExposureWindows___block_invoke;
  v55[3] = &unk_278FD10D0;
  v57 = &v58;
  v55[4] = self;
  v5 = windowsCopy;
  v56 = v5;
  v6 = MEMORY[0x24C214430](v55);
  v7 = v59;
  obj = v59[5];
  v46 = v6;
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:2 error:&obj];
  objc_storeStrong(v7 + 5, obj);
  if (v8)
  {
    activeEntity = [(ENDaemon *)self->_daemon activeEntity];
    entity = [activeEntity entity];
    region = [entity region];

    configurationManager = [(ENDaemon *)self->_daemon configurationManager];
    configurationStore = [configurationManager configurationStore];

    v44 = configurationStore;
    v45 = region;
    v14 = [configurationStore serverConfigurationForRegion:region];
    variantOfConcernEnabled = [v14 variantOfConcernEnabled];

    v16 = self->_detectionSession;
    v17 = v16;
    if (!v16)
    {
      v35 = ENErrorF();
      v19 = v59[5];
      v59[5] = v35;
      goto LABEL_31;
    }

    exposureCalculationSession = [(ENExposureDetectionDaemonSession *)v16 exposureCalculationSession];
    v19 = exposureCalculationSession;
    if (!exposureCalculationSession || (v20 = [exposureCalculationSession cachedExposureWindowCount], uint64 = xpc_dictionary_get_uint64(v5, "expWndIdx"), v22 = uint64, v20 < uint64))
    {
      v36 = ENErrorF();
      v37 = v59[5];
      v59[5] = v36;

      goto LABEL_31;
    }

    if (v20 - uint64 >= 0x400)
    {
      v23 = 1024;
    }

    else
    {
      v23 = v20 - uint64;
    }

    v50 = 0;
    v51 = &v50;
    v52 = 0x2020000000;
    v53 = 0;
    value = xpc_array_create(0, 0);
    if (v20 != v22)
    {
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __63__ENXPCConnection__xpcExposureDetectionFileGetExposureWindows___block_invoke_2;
      v48[3] = &unk_278FD1E78;
      v48[6] = &v50;
      v49 = variantOfConcernEnabled;
      v48[4] = self;
      v48[5] = value;
      [v19 enumerateCachedExposureWindows:v48 inRange:v22 withBatchSize:{v23, 1024}];
    }

    v24 = v51[3] + v22;
    if (v24 >= v20)
    {
      v27 = +[ENLoggingPrefs sharedENLoggingPrefs];
      isSensitiveLoggingAllowed = [v27 isSensitiveLoggingAllowed];

      if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        v42 = v24;
        v43 = v20;
        v39 = v23;
        v40 = v51[3];
        v38 = v22;
        LogPrintF_safe();
      }

      [(ENDaemon *)self->_daemon setUsageExposureDetectFileGetExposureWindows:[(ENDaemon *)self->_daemon usageExposureDetectFileGetExposureWindows:v38]+ 1];
      reply = xpc_dictionary_create_reply(v5);
      v30 = reply;
      if (reply)
      {
        xpc_dictionary_set_value(reply, "expWndA", value);
        xpc_dictionary_set_uint64(v30, "expWndIdx", 0);
        [(ENXPCConnection *)self _xpcSendMessage:v30];
        v32 = +[ENLoggingPrefs sharedENLoggingPrefs];
        isSensitiveLoggingAllowed2 = [v32 isSensitiveLoggingAllowed];

        if (isSensitiveLoggingAllowed2 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }

        [(ENExposureDetectionDaemonSession *)v17 invalidate];
        detectionSession = self->_detectionSession;
        self->_detectionSession = 0;

        goto LABEL_30;
      }

      if (dword_281346508 > 90 || dword_281346508 == -1 && !_LogCategory_Initialize())
      {
LABEL_30:

        _Block_object_dispose(&v50, 8);
LABEL_31:

        v6 = v46;
        goto LABEL_32;
      }
    }

    else
    {
      v25 = +[ENLoggingPrefs sharedENLoggingPrefs];
      isSensitiveLoggingAllowed3 = [v25 isSensitiveLoggingAllowed];

      if (isSensitiveLoggingAllowed3 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        v41 = v51[3];
        LogPrintF_safe();
      }

      v29 = xpc_dictionary_create_reply(v5);
      v30 = v29;
      if (v29)
      {
        xpc_dictionary_set_value(v29, "expWndA", value);
        xpc_dictionary_set_uint64(v30, "expWndIdx", v24);
        [(ENXPCConnection *)self _xpcSendMessage:v30];
        goto LABEL_30;
      }

      if (dword_281346508 > 90 || dword_281346508 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_30;
      }
    }

    LogPrintF_safe();
    goto LABEL_30;
  }

LABEL_32:
  v6[2](v6);

  _Block_object_dispose(&v58, 8);
}

uint64_t __63__ENXPCConnection__xpcExposureDetectionFileGetExposureWindows___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

void __63__ENXPCConnection__xpcExposureDetectionFileGetExposureWindows___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *(*(*(a1 + 48) + 8) + 24) += [v3 count];
  if (([*(*(a1 + 32) + 32) prefSkipExposureWindowShuffling] & 1) == 0)
  {
    v4 = [v3 enRandomlyShuffled];

    v3 = v4;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 infectiousness])
        {
          if ((*(a1 + 56) & 1) == 0)
          {
            [v10 setVariantOfConcernType:0];
          }

          v11 = xpc_dictionary_create(0, 0, 0);
          [v10 encodeWithXPCObject:v11];
          xpc_array_set_value(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL, v11);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_xpcExposureDetectionHistoryGetFiles:(id)files
{
  filesCopy = files;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__ENXPCConnection__xpcExposureDetectionHistoryGetFiles___block_invoke;
  v15[3] = &unk_278FD10D0;
  v17 = &v18;
  v15[4] = self;
  v5 = filesCopy;
  v16 = v5;
  v6 = MEMORY[0x24C214430](v15);
  v7 = v19;
  obj = v19[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7 + 5, obj);
  if (v8)
  {
    v9 = v19;
    v12 = v19[5];
    v13 = 0;
    v10 = CUXPCDecodeNSUUID();
    objc_storeStrong(v9 + 5, v12);
    if (v10)
    {
      v11 = ENErrorF();
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v18, 8);
}

uint64_t __56__ENXPCConnection__xpcExposureDetectionHistoryGetFiles___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

void __56__ENXPCConnection__xpcExposureDetectionHistoryGetFiles___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  value = xpc_dictionary_create(0, 0, 0);
  [v3 encodeWithXPCObject:value];

  xpc_array_set_value(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL, value);
}

- (void)_xpcExposureDetectionHistoryGetSessions:(id)sessions
{
  sessionsCopy = sessions;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__3;
  v29 = __Block_byref_object_dispose__3;
  v30 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __59__ENXPCConnection__xpcExposureDetectionHistoryGetSessions___block_invoke;
  v22[3] = &unk_278FD10D0;
  v24 = &v25;
  v22[4] = self;
  v5 = sessionsCopy;
  v23 = v5;
  v6 = MEMORY[0x24C214430](v22);
  v7 = (v26 + 5);
  obj = v26[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    daemon = self->_daemon;
    v10 = (v26 + 5);
    v20 = v26[5];
    v11 = [(ENDaemon *)daemon getExposureDatabaseAndReturnError:&v20];
    objc_storeStrong(v10, v20);
    if (v11)
    {
      [(ENDaemon *)self->_daemon _migrateLegacyHistoryIfNecessary];
      v12 = xpc_array_create(0, 0);
      v14 = (v26 + 5);
      v13 = v26[5];
      v18[4] = v12;
      v19 = v13;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __59__ENXPCConnection__xpcExposureDetectionHistoryGetSessions___block_invoke_2;
      v18[3] = &unk_278FD1EA0;
      v15 = [v11 enumerateExposureDetectionHistorySessionsWithError:&v19 handler:v18];
      objc_storeStrong(v14, v19);
      if (v15)
      {
        reply = xpc_dictionary_create_reply(v5);
        v17 = reply;
        if (reply)
        {
          xpc_dictionary_set_value(reply, "detHS", v12);
          [(ENXPCConnection *)self _xpcSendMessage:v17];
        }

        else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }
      }
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v25, 8);
}

uint64_t __59__ENXPCConnection__xpcExposureDetectionHistoryGetSessions___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

void __59__ENXPCConnection__xpcExposureDetectionHistoryGetSessions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  value = xpc_dictionary_create(0, 0, 0);
  [v3 encodeWithXPCObject:value];

  xpc_array_set_value(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL, value);
}

- (void)_xpcDownload:(id)download
{
  downloadCopy = download;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __32__ENXPCConnection__xpcDownload___block_invoke;
  v18[3] = &unk_278FD10D0;
  v20 = &v21;
  v18[4] = self;
  v5 = downloadCopy;
  v19 = v5;
  v6 = MEMORY[0x24C214430](v18);
  v7 = (v22 + 5);
  obj = v22[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = xpc_dictionary_get_BOOL(v5, "detX");
    downloadManager = [(ENDaemon *)self->_daemon downloadManager];
    v11 = downloadManager;
    if (downloadManager && [downloadManager enabledEndpointCount])
    {
      reply = xpc_dictionary_create_reply(v5);
      v13 = reply;
      if (reply)
      {
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __32__ENXPCConnection__xpcDownload___block_invoke_2;
        v15[3] = &unk_278FD1EF0;
        v16 = v9;
        v15[4] = self;
        v15[5] = reply;
        [v11 performDownloadsForced:1 completion:v15];
      }

      else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }
    }

    else
    {
      v14 = ENErrorF();
      v13 = v22[5];
      v22[5] = v14;
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v21, 8);
}

uint64_t __32__ENXPCConnection__xpcDownload___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

void __32__ENXPCConnection__xpcDownload___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3[4] exposureDetectionManager];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __32__ENXPCConnection__xpcDownload___block_invoke_3;
    v6[3] = &unk_278FD1EC8;
    v7 = *(a1 + 32);
    [v4 performNativeExposureDetectionWithResultHandler:v6];
  }

  else
  {
    v5 = *(a1 + 40);

    [v3 _xpcSendMessage:v5];
  }
}

void __32__ENXPCConnection__xpcDownload___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8)
  {
    [*(a1 + 32) _xpcSendMessage:*(a1 + 40)];
  }

  else
  {
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = ENErrorF();
    }

    v7 = v6;
    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      __32__ENXPCConnection__xpcDownload___block_invoke_3_cold_1();
    }

    [*(a1 + 32) _xpcSendReplyError:v7 reply:*(a1 + 40)];
  }
}

- (void)_xpcGetInfo:(id)info
{
  infoCopy = info;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__3;
  v51 = __Block_byref_object_dispose__3;
  v52 = 0;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __31__ENXPCConnection__xpcGetInfo___block_invoke;
  v44[3] = &unk_278FD10D0;
  v46 = &v47;
  v44[4] = self;
  v5 = infoCopy;
  v45 = v5;
  v6 = MEMORY[0x24C214430](v44);
  v7 = (v48 + 5);
  obj = v48[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    delegate = [(ENDaemon *)self->_daemon delegate];
    string = xpc_dictionary_get_string(v5, "iStr");
    if (!string)
    {
      v38 = ENErrorF();
      activeEntity = v48[5];
      v48[5] = v38;
      goto LABEL_38;
    }

    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      v42 = string;
      LogPrintF_safe();
    }

    activeEntity = [(ENDaemon *)self->_daemon activeEntity];
    if (!strcmp(string, "activeApp"))
    {
      if ([activeEntity activeStatus] != 2)
      {
        goto LABEL_37;
      }

      entity = [activeEntity entity];
      bundleIdentifier = [entity bundleIdentifier];

      if (!bundleIdentifier)
      {
        goto LABEL_37;
      }

      goto LABEL_33;
    }

    if (!strcmp(string, "activeRegion"))
    {
      activeEntity2 = [(ENDaemon *)self->_daemon activeEntity];
      entity2 = [activeEntity2 entity];
      region = [entity2 region];

      if (!region)
      {
        goto LABEL_37;
      }

      regionCode = [region regionCode];
    }

    else
    {
      if (!strcmp(string, "automaticRegionSwitch"))
      {
        automaticRegionSwitchEnabled = [(ENDaemon *)self->_daemon automaticRegionSwitchEnabled];
        goto LABEL_26;
      }

      if (!strcmp(string, "availabilityAlertEnabled"))
      {
        automaticRegionSwitchEnabled = [(ENDaemon *)self->_daemon availabilityAlertDisabled];
LABEL_28:
        v19 = MEMORY[0x277CBEC30];
        v20 = MEMORY[0x277CBEC20];
        goto LABEL_29;
      }

      if (!strcmp(string, "dataPresent"))
      {
        storedAdvertisementCount = [delegate storedAdvertisementCount];
        v28 = MEMORY[0x277CBEC30];
        if (!storedAdvertisementCount)
        {
          v29 = [delegate retrieveTEKHistoryIncludingActive:1 generateNewTEK:0];
          v30 = [v29 count];

          if (!v30)
          {
            v28 = MEMORY[0x277CBEC20];
          }
        }

        v21 = v28;
        goto LABEL_32;
      }

      if (strcmp(string, "differentialPrivacyMetadata"))
      {
        if (strcmp(string, "profileInstalled"))
        {
          if (strcmp(string, "supported"))
          {
            if (strcmp(string, "weeklySummaryAlertEnabled"))
            {
LABEL_37:
              v25 = ENErrorF();
              v26 = v48[5];
              v48[5] = v25;

LABEL_38:
              goto LABEL_39;
            }

            automaticRegionSwitchEnabled = [(ENDaemon *)self->_daemon monthlySummaryDisabled];
            goto LABEL_28;
          }

          entity3 = [activeEntity entity];
          region2 = [entity3 region];

          if (!region2)
          {
            goto LABEL_37;
          }

          configurationManager = [(ENDaemon *)self->_daemon configurationManager];
          configurationStore = [configurationManager configurationStore];
          v35 = [configurationStore serverConfigurationForRegion:region2];

          if (!v35)
          {
            v40 = ENErrorF();
            v41 = v48[5];
            v48[5] = v40;

            goto LABEL_38;
          }

          enEnabled = [v35 enEnabled];
          v37 = MEMORY[0x277CBEC20];
          if (enEnabled)
          {
            v37 = MEMORY[0x277CBEC30];
          }

          bundleIdentifier = v37;

LABEL_33:
          v22 = _CFXPCCreateXPCObjectFromCFObject();
          if (v22)
          {
            reply = xpc_dictionary_create_reply(v5);
            v24 = reply;
            if (reply)
            {
              xpc_dictionary_set_value(reply, "oObj", v22);
              [(ENXPCConnection *)self _xpcSendMessage:v24];
            }

            else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe();
            }
          }

          else
          {
            v39 = ENErrorF();
            v24 = v48[5];
            v48[5] = v39;
          }

          goto LABEL_38;
        }

        automaticRegionSwitchEnabled = [delegate isENLoggingProfileInstalled];
LABEL_26:
        v19 = MEMORY[0x277CBEC20];
        v20 = MEMORY[0x277CBEC30];
LABEL_29:
        if (automaticRegionSwitchEnabled)
        {
          v19 = v20;
        }

        v21 = v19;
LABEL_32:
        bundleIdentifier = v21;
        goto LABEL_33;
      }

      if (![(ENXPCClient *)self->_client entitledForDifferentialPrivacy])
      {
        goto LABEL_37;
      }

      region = [(ENDaemon *)self->_daemon differentialPrivacyManager];
      regionCode = [region metadata];
    }

    bundleIdentifier = regionCode;

    if (!bundleIdentifier)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

LABEL_39:
  v6[2](v6);

  _Block_object_dispose(&v47, 8);
}

uint64_t __31__ENXPCConnection__xpcGetInfo___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcGetDataVaultSize:(id)size
{
  v48[1] = *MEMORY[0x277D85DE8];
  sizeCopy = size;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__3;
  v45 = __Block_byref_object_dispose__3;
  v46 = 0;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __40__ENXPCConnection__xpcGetDataVaultSize___block_invoke;
  v38[3] = &unk_278FD10D0;
  v40 = &v41;
  selfCopy = self;
  v38[4] = self;
  original = sizeCopy;
  v39 = original;
  v25 = MEMORY[0x24C214430](v38);
  v5 = v42;
  obj = v42[5];
  LOBYTE(self) = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v5 + 5, obj);
  if (self)
  {
    v27 = objc_alloc_init(MEMORY[0x277CCAA08]);
    v6 = ENDataVaultURL();
    v30 = *MEMORY[0x277CBE840];
    v48[0] = *MEMORY[0x277CBE840];
    v7 = [MEMORY[0x277CBEA68] arrayWithObjects:v48 count:1];
    v8 = [v27 enumeratorAtURL:v6 includingPropertiesForKeys:v7 options:0 errorHandler:0];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v29 = v8;
    v9 = 0;
    v10 = 0;
    v11 = [v29 countByEnumeratingWithState:&v33 objects:v47 count:16];
    if (v11)
    {
      v12 = *v34;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(v29);
          }

          v14 = *(*(&v33 + 1) + 8 * i);
          v31 = 0;
          v32 = 0;
          v15 = [v14 getResourceValue:&v32 forKey:v30 error:{&v31, v23, v24}];
          v16 = v32;
          v17 = v31;
          if (v15)
          {
            v9 += [v16 unsignedLongLongValue];
            ++v10;
          }

          else
          {
            v18 = +[ENLoggingPrefs sharedENLoggingPrefs];
            isSensitiveLoggingAllowed = [v18 isSensitiveLoggingAllowed];

            if (isSensitiveLoggingAllowed && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              CUPrintNSError();
              v24 = v23 = v14;
              LogPrintF_safe();
            }
          }
        }

        v11 = [v29 countByEnumeratingWithState:&v33 objects:v47 count:16];
      }

      while (v11);
    }

    if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    reply = xpc_dictionary_create_reply(original);
    v21 = reply;
    if (reply)
    {
      xpc_dictionary_set_uint64(reply, "bytes", v9);
      [(ENXPCConnection *)selfCopy _xpcSendMessage:v21];
    }

    else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

  v25[2](v25);

  _Block_object_dispose(&v41, 8);
  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __40__ENXPCConnection__xpcGetDataVaultSize___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcGetEntities:(id)entities
{
  entitiesCopy = entities;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__3;
  v34 = __Block_byref_object_dispose__3;
  v35 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __35__ENXPCConnection__xpcGetEntities___block_invoke;
  v27[3] = &unk_278FD10D0;
  v29 = &v30;
  v27[4] = self;
  v5 = entitiesCopy;
  v28 = v5;
  v6 = MEMORY[0x24C214430](v27);
  v7 = v31;
  obj = v31[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7 + 5, obj);
  if (v8)
  {
    activeEntity = [(ENDaemon *)self->_daemon activeEntity];
    entity = [activeEntity entity];
    v11 = [entity copy];

    v12 = +[ENLoggingPrefs sharedENLoggingPrefs];
    LODWORD(entity) = [v12 isSensitiveLoggingAllowed];

    if (entity && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    v13 = objc_opt_new();
    v14 = objc_opt_new();
    configurationManager = [(ENDaemon *)self->_daemon configurationManager];
    configurationStore = [configurationManager configurationStore];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __35__ENXPCConnection__xpcGetEntities___block_invoke_2;
    v20[3] = &unk_278FD1F40;
    v20[4] = self;
    v17 = v11;
    v21 = v17;
    v18 = v13;
    v22 = v18;
    v19 = v14;
    v23 = v19;
    v24 = v5;
    v25 = &v30;
    [configurationStore allRegionConfigurationsWithCompletion:v20];
  }

  v6[2](v6);

  _Block_object_dispose(&v30, 8);
}

uint64_t __35__ENXPCConnection__xpcGetEntities___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

void __35__ENXPCConnection__xpcGetEntities___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__ENXPCConnection__xpcGetEntities___block_invoke_3;
  block[3] = &unk_278FD1F18;
  block[4] = v5;
  v15 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v16 = v12;
  v17 = v11;
  v18 = *(a1 + 72);
  v13 = v3;
  dispatch_async(v6, block);
}

void __35__ENXPCConnection__xpcGetEntities___block_invoke_3(uint64_t a1)
{
  v140 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D6C150];
  v3 = TCCAccessCopyInformation();
  v4 = MEMORY[0x277D6C0D8];
  v5 = *MEMORY[0x277D6C0D8];
  v111 = [MEMORY[0x277CCAC28] predicateWithFormat:@"%K == %@", *MEMORY[0x277D6C0D8], *MEMORY[0x277CBED20]];
  v6 = [v3 filteredArrayUsingPredicate:?];
  v7 = *v4;
  [MEMORY[0x277CCAC28] predicateWithFormat:@"%K == %@", *v4, *MEMORY[0x277CBED18]];
  v110 = v112 = v3;
  v116 = [v3 filteredArrayUsingPredicate:?];
  v8 = [*(*(a1 + 32) + 32) regionMonitor];
  v134 = 0;
  v113 = [v8 getAllRegionsWithError:&v134];
  v9 = v134;

  v109 = v9;
  if ((v9 || !v113) && dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    __35__ENXPCConnection__xpcGetEntities___block_invoke_3_cold_1();
  }

  v10 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v11 = [v10 isSensitiveLoggingAllowed];

  if (v11 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __35__ENXPCConnection__xpcGetEntities___block_invoke_3_cold_2();
  }

  v12 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v13 = [v12 isSensitiveLoggingAllowed];

  if (v13 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __35__ENXPCConnection__xpcGetEntities___block_invoke_3_cold_3(a1);
  }

  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v130 objects:v139 count:16];
  v16 = MEMORY[0x277D6C0C0];
  v118 = v14;
  if (v15)
  {
    v17 = v15;
    v18 = *v131;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v131 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = [*(*(&v130 + 1) + 8 * i) objectForKey:*v16];
        if (v20)
        {
          v21 = v20;
          v22 = [*(*(a1 + 32) + 32) _getBundleIDFromBundle:v20];
          if (v22)
          {
            v23 = [*(*(a1 + 32) + 32) _getInfoDictFromBundle:v21];
            if (v23)
            {
              v24 = [*(*(a1 + 32) + 32) regionForBundleInfo:v23];
              v25 = [objc_alloc(MEMORY[0x277CC5C18]) initWithBundleID:v22 region:v24];
              v26 = [*(a1 + 48) bundleIdentifier];
              v27 = [v22 isEqual:v26];

              if ((v27 & 1) == 0)
              {
                v28 = [*(a1 + 48) region];
                v29 = [v24 isEqual:v28];

                if ((v29 & 1) == 0)
                {
                  [*(a1 + 56) addObject:v25];
                }
              }

              v14 = v118;
              v16 = MEMORY[0x277D6C0C0];
            }
          }
        }
      }

      v17 = [v14 countByEnumeratingWithState:&v130 objects:v139 count:16];
    }

    while (v17);
  }

  v129 = 0u;
  v127 = 0u;
  v128 = 0u;
  v126 = 0u;
  v30 = v116;
  v31 = [v30 countByEnumeratingWithState:&v126 objects:v138 count:16];
  v117 = v30;
  if (v31)
  {
    v32 = v31;
    v33 = *v127;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v127 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [*(*(&v126 + 1) + 8 * j) objectForKey:*v16];
        if (v35)
        {
          v36 = v35;
          v37 = [*(*(a1 + 32) + 32) _getBundleIDFromBundle:v35];
          if (v37)
          {
            v38 = [*(*(a1 + 32) + 32) _getInfoDictFromBundle:v36];
            if (v38)
            {
              v39 = [*(*(a1 + 32) + 32) regionForBundleInfo:v38];
              v40 = [objc_alloc(MEMORY[0x277CC5C18]) initWithBundleID:v37 region:v39];
              v41 = [*(a1 + 48) bundleIdentifier];
              v42 = [v37 isEqual:v41];

              if ((v42 & 1) == 0)
              {
                v43 = [*(a1 + 48) region];
                v44 = [v39 isEqual:v43];

                if ((v44 & 1) == 0)
                {
                  [*(a1 + 64) addObject:v40];
                }
              }

              v30 = v117;
              v16 = MEMORY[0x277D6C0C0];
            }
          }
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v126 objects:v138 count:16];
    }

    while (v32);
  }

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v45 = *(a1 + 40);
  v46 = [v45 countByEnumeratingWithState:&v122 objects:v137 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v123;
    v114 = v45;
    do
    {
      v49 = 0;
      do
      {
        if (*v123 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = *(*(&v122 + 1) + 8 * v49);
        v51 = [v50 region];
        v52 = [*(*(a1 + 32) + 32) configurationManager];
        v53 = [v52 configurationStore];
        v54 = [v53 serverConfigurationForRegion:v51];

        if (v54)
        {
          if ([v54 enEnabled])
          {
            if ([v54 enVersion] >= 2)
            {
              v55 = [*(a1 + 48) region];
              v56 = [v51 isEqual:v55];

              if ((v56 & 1) == 0)
              {
                v57 = objc_alloc(MEMORY[0x277CC5C18]);
                v58 = [v54 appBundleID];
                v59 = [v57 initWithBundleID:v58 region:v51];

                v60 = [v59 bundleIdentifier];
                if ([v60 length])
                {

                  goto LABEL_58;
                }

                v61 = [v59 region];

                if (!v61)
                {
                  goto LABEL_86;
                }

LABEL_58:
                v62 = [v50 userConsent];
                v63 = [v62 consent];

                if (v63 == 2)
                {
                  v64 = MEMORY[0x277CCAC28];
                  v65 = [v59 region];
                  v66 = [v64 predicateWithFormat:@"region == %@", v65];

                  v115 = [*(a1 + 64) filteredSetUsingPredicate:v66];
                  v67 = +[ENLoggingPrefs sharedENLoggingPrefs];
                  LODWORD(v64) = [v67 isSensitiveLoggingAllowed];

                  if (v64 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                  {
                    __35__ENXPCConnection__xpcGetEntities___block_invoke_3_cold_5((a1 + 64));
                  }

                  v68 = +[ENLoggingPrefs sharedENLoggingPrefs];
                  v69 = [v68 isSensitiveLoggingAllowed];

                  if (v69 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                  {
                    __35__ENXPCConnection__xpcGetEntities___block_invoke_3_cold_6();
                  }

                  if ([*(a1 + 64) containsObject:v59] & 1) != 0 || (objc_msgSend(v115, "containsObject:", v59))
                  {
                    v70 = +[ENLoggingPrefs sharedENLoggingPrefs];
                    v71 = [v70 isSensitiveLoggingAllowed];

                    if (v71 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                    {
                      __35__ENXPCConnection__xpcGetEntities___block_invoke_3_cold_8();
                    }
                  }

                  else
                  {
                    v77 = +[ENLoggingPrefs sharedENLoggingPrefs];
                    v78 = [v77 isSensitiveLoggingAllowed];

                    if (v78 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                    {
                      __35__ENXPCConnection__xpcGetEntities___block_invoke_3_cold_7();
                    }

                    [*(a1 + 56) addObject:v59];
                  }

                  goto LABEL_85;
                }

                if (([v113 containsObject:v51] & 1) == 0)
                {
                  v72 = [v51 countryCode];
                  v73 = [*(*(a1 + 32) + 32) prefRegionIdentifierOverride];
                  v66 = v72;
                  v74 = v73;
                  v75 = v74;
                  if (v66 != v74)
                  {
                    if ((v66 != 0) == (v74 == 0))
                    {

                      goto LABEL_85;
                    }

                    v76 = [v66 isEqual:v74];

                    if (v76)
                    {
                      goto LABEL_90;
                    }

LABEL_86:

                    v45 = v114;
                    goto LABEL_87;
                  }
                }

LABEL_90:
                v79 = [*(*(a1 + 32) + 32) configurationManager];
                v80 = [v79 configurationStore];
                v66 = [v80 agencyConfigurationForRegion:v51];

                if (v66)
                {
                  if (([*(a1 + 56) containsObject:v59] & 1) == 0)
                  {
                    [*(a1 + 64) addObject:v59];
                  }
                }

                else
                {
                  v81 = +[ENLoggingPrefs sharedENLoggingPrefs];
                  v82 = [v81 isSensitiveLoggingAllowed];

                  if (v82 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                  {
                    __35__ENXPCConnection__xpcGetEntities___block_invoke_3_cold_4();
                  }
                }

LABEL_85:

                goto LABEL_86;
              }
            }
          }
        }

LABEL_87:

        ++v49;
      }

      while (v47 != v49);
      v83 = [v45 countByEnumeratingWithState:&v122 objects:v137 count:16];
      v47 = v83;
    }

    while (v83);
  }

  v84 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v85 = [v84 isSensitiveLoggingAllowed];

  if (v85 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __35__ENXPCConnection__xpcGetEntities___block_invoke_3_cold_9(a1);
  }

  v86 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v87 = [v86 isSensitiveLoggingAllowed];

  if (v87 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __35__ENXPCConnection__xpcGetEntities___block_invoke_3_cold_10(a1);
  }

  reply = xpc_dictionary_create_reply(*(a1 + 72));
  if (reply)
  {
    v89 = *(a1 + 48);
    v90 = *(*(a1 + 80) + 8);
    obj = *(v90 + 40);
    v91 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:v89 requiringSecureCoding:1 error:&obj];
    objc_storeStrong((v90 + 40), obj);
    xpc_dictionary_set_data(reply, "acEn", [v91 bytes], objc_msgSend(v91, "length"));
    CFDataGetTypeID();
    v92 = CFPrefs_CopyTypedValue();
    v93 = v92;
    if (v92)
    {
      v94 = v92;
    }

    else
    {
      v94 = v91;
    }

    v95 = v94;

    v96 = [v95 bytes];
    v97 = [v95 length];

    xpc_dictionary_set_data(reply, "tnEn", v96, v97);
    v98 = MEMORY[0x277CCAAB8];
    v99 = [*(a1 + 56) allObjects];
    v136 = v99;
    v100 = [MEMORY[0x277CBEA68] arrayWithObjects:&v136 count:1];
    v101 = *(*(a1 + 80) + 8);
    v120 = *(v101 + 40);
    v102 = [v98 archivedDataWithRootObject:v100 requiringSecureCoding:1 error:&v120];
    objc_storeStrong((v101 + 40), v120);

    xpc_dictionary_set_data(reply, "auEn", [v102 bytes], objc_msgSend(v102, "length"));
    v103 = MEMORY[0x277CCAAB8];
    v104 = [*(a1 + 64) allObjects];
    v135 = v104;
    v105 = [MEMORY[0x277CBEA68] arrayWithObjects:&v135 count:1];
    v106 = *(*(a1 + 80) + 8);
    v119 = *(v106 + 40);
    v107 = [v103 archivedDataWithRootObject:v105 requiringSecureCoding:1 error:&v119];
    objc_storeStrong((v106 + 40), v119);

    xpc_dictionary_set_data(reply, "avaEn", [v107 bytes], objc_msgSend(v107, "length"));
    [*(a1 + 32) _xpcSendMessage:reply];
  }

  else
  {
    __35__ENXPCConnection__xpcGetEntities___block_invoke_3_cold_11();
  }

  v108 = *MEMORY[0x277D85DE8];
}

- (void)_xpcSetActiveEntity:(id)entity
{
  v58 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__3;
  v56 = __Block_byref_object_dispose__3;
  v57 = 0;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __39__ENXPCConnection__xpcSetActiveEntity___block_invoke;
  v49[3] = &unk_278FD10D0;
  v51 = &v52;
  selfCopy = self;
  v49[4] = self;
  original = entityCopy;
  v50 = original;
  v43 = MEMORY[0x24C214430](v49);
  v5 = v53;
  obj = v53[5];
  v6 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v5 + 5, obj);
  if (v6)
  {
    objc_opt_class();
    v7 = v53 + 5;
    v47 = v53[5];
    v45 = ENXPCDecodeSecureObjectIfPresent();
    objc_storeStrong(v7, v47);
    if (v53[5])
    {
      v38 = ENErrorF();
      v39 = v53[5];
      v53[5] = v38;
    }

    else
    {
      if (v45)
      {
        v8 = +[ENLoggingPrefs sharedENLoggingPrefs];
        isSensitiveLoggingAllowed = [v8 isSensitiveLoggingAllowed];

        if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          v42 = v45;
          LogPrintF_safe();
        }

        configurationManager = [(ENDaemon *)self->_daemon configurationManager];
        configurationStore = [configurationManager configurationStore];
        v12 = [configurationStore configurationForRegion:v45];

        v13 = v45;
        configurationManager2 = [(ENDaemon *)self->_daemon configurationManager];
        configurationStore2 = [configurationManager2 configurationStore];
        v16 = [configurationStore2 serverConfigurationForRegion:v13];

        if (!v16)
        {
          v22 = 0;
          appBundleID4 = 0;
LABEL_24:
          if (![(ENDaemon *)selfCopy->_daemon prefEnabled])
          {
            if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe();
            }

            v30 = *MEMORY[0x277CBED20];
            CFPrefs_SetValue();
          }

          v31 = [ENActiveEntity alloc];
          v32 = [objc_alloc(MEMORY[0x277CC5C18]) initWithBundleID:appBundleID4 region:v13];
          v33 = [(ENActiveEntity *)v31 initWithEntity:v32 activeStatus:v22];

          if ([(ENDaemon *)selfCopy->_daemon _writePreferenceActiveEntity:v33])
          {
            [(ENDaemon *)selfCopy->_daemon _disableAvailabilityAlertIfNeeded];
            [(ENDaemon *)selfCopy->_daemon prefsChanged];
            [(ENDaemon *)selfCopy->_daemon xpcReportStatus];
          }

          else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }

          reply = xpc_dictionary_create_reply(original);
          if (reply)
          {
            [(ENXPCConnection *)selfCopy _xpcSendMessage:reply];
          }

          else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }

          goto LABEL_42;
        }

        v17 = MEMORY[0x277CC1E68];
        appBundleID = [v16 appBundleID];
        v19 = [v17 applicationProxyForIdentifier:appBundleID placeholder:0];

        appBundleID2 = [v16 appBundleID];
        if ([appBundleID2 length])
        {
          appBundleID3 = [v16 appBundleID];
        }

        else
        {
          appBundleID3 = &stru_285D62BB0;
        }

        appState = [v19 appState];
        if ([appState isInstalled])
        {
          v25 = [(__CFString *)appBundleID3 length]== 0;

          if (!v25)
          {
            if ([(ENDaemon *)selfCopy->_daemon tccAccessForBundleID:appBundleID3]!= 2)
            {
              appBundleID4 = [v16 appBundleID];
              v22 = 2;
LABEL_23:

              goto LABEL_24;
            }

LABEL_45:
            v36 = ENErrorF();
            v37 = v53[5];
            v53[5] = v36;

LABEL_46:
            appBundleID4 = 0;
LABEL_42:

            goto LABEL_43;
          }
        }

        else
        {
        }

        if ([v12 enVersion] == 2)
        {
          userConsent = [v12 userConsent];
          consent = [userConsent consent];

          if ((consent - 1) < 2)
          {
            v28 = *MEMORY[0x277D6C160];
            TCCAccessSetForBundleId();
            appBundleID4 = 0;
            v22 = 3;
            goto LABEL_23;
          }
        }

        else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          appState2 = [v19 appState];
          [appState2 isInstalled];
          [v12 enVersion];
          LogPrintF_safe();
        }

        goto LABEL_45;
      }

      CUXPCDecodeNSString();
      v40 = ENErrorF();
      v41 = v53[5];
      v53[5] = v40;
    }

    v13 = 0;
    goto LABEL_46;
  }

LABEL_43:
  v43[2](v43);

  _Block_object_dispose(&v52, 8);
  v35 = *MEMORY[0x277D85DE8];
}

uint64_t __39__ENXPCConnection__xpcSetActiveEntity___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcGetLastExposureNotification:(id)notification
{
  notificationCopy = notification;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__3;
  v31 = __Block_byref_object_dispose__3;
  v32 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __51__ENXPCConnection__xpcGetLastExposureNotification___block_invoke;
  v24[3] = &unk_278FD10D0;
  v26 = &v27;
  v24[4] = self;
  v5 = notificationCopy;
  v25 = v5;
  v6 = MEMORY[0x24C214430](v24);
  v7 = (v28 + 5);
  obj = v28[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    daemon = self->_daemon;
    v10 = (v28 + 5);
    v22 = v28[5];
    v11 = [(ENDaemon *)daemon getExposureDatabaseAndReturnError:&v22];
    objc_storeStrong(v10, v22);
    if (v11)
    {
      v21 = 0;
      v12 = objc_opt_class();
      v13 = (v28 + 5);
      v20 = v28[5];
      v14 = [v11 getValue:&v21 forKey:@"LastExposureNotification" ofClass:v12 error:&v20];
      v15 = v21;
      objc_storeStrong(v13, v20);
      if (v14)
      {
        reply = xpc_dictionary_create_reply(v5);
        if (reply)
        {
          if (!v15 || (v17 = (v28 + 5), v19 = v28[5], v18 = ENXPCEncodeSecureObject(), objc_storeStrong(v17, v19), v18))
          {
            [(ENXPCConnection *)self _xpcSendMessage:reply, v19];
          }
        }

        else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }
      }
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v27, 8);
}

uint64_t __51__ENXPCConnection__xpcGetLastExposureNotification___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcGetStatusForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__3;
  v37 = __Block_byref_object_dispose__3;
  v38 = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __52__ENXPCConnection__xpcGetStatusForBundleIdentifier___block_invoke;
  v30[3] = &unk_278FD10D0;
  v32 = &v33;
  v30[4] = self;
  v5 = identifierCopy;
  v31 = v5;
  v6 = MEMORY[0x24C214430](v30);
  v7 = (v34 + 5);
  obj = v34[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (!v8)
  {
    goto LABEL_21;
  }

  activeEntity = [(ENDaemon *)self->_daemon activeEntity];
  entity = [activeEntity entity];
  bundleIdentifier = [entity bundleIdentifier];

  if (bundleIdentifier)
  {
    activeEntity2 = [(ENDaemon *)self->_daemon activeEntity];
    entity2 = [activeEntity2 entity];
    region = [entity2 region];

    configurationManager = [(ENDaemon *)self->_daemon configurationManager];
    configurationStore = [configurationManager configurationStore];
    v17 = [configurationStore serverConfigurationForRegion:region];

    string = xpc_dictionary_get_string(v5, "aBid");
    if (!string)
    {
      v24 = 0;
      LOBYTE(v23) = 0;
LABEL_14:
      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      reply = xpc_dictionary_create_reply(v5);
      v28 = reply;
      if (reply)
      {
        xpc_dictionary_set_BOOL(reply, "enbd", v23);
        xpc_dictionary_set_uint64(v28, "aBARi", v24);
        [(ENXPCConnection *)self _xpcSendMessage:v28];
      }

      else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      goto LABEL_21;
    }

    activeEntity3 = [(ENDaemon *)self->_daemon activeEntity];
    entity3 = [activeEntity3 entity];
    bundleIdentifier2 = [entity3 bundleIdentifier];
    utf8ValueSafe = [bundleIdentifier2 utf8ValueSafe];

    if (utf8ValueSafe)
    {
      v23 = strcmp(utf8ValueSafe, string) == 0;
      if (!v17)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v23 = 0;
      if (!v17)
      {
LABEL_10:
        v26 = 14400;
LABEL_11:
        if (v23)
        {
          v24 = v26;
        }

        else
        {
          v24 = 0;
        }

        goto LABEL_14;
      }
    }

    [v17 applicationBackgroundRuntimeInterval];
    v26 = v25;
    if (v25)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

LABEL_21:
  v6[2](v6);

  _Block_object_dispose(&v33, 8);
}

uint64_t __52__ENXPCConnection__xpcGetStatusForBundleIdentifier___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcLegalConsentPageCount:(id)count
{
  countCopy = count;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__3;
  v20 = __Block_byref_object_dispose__3;
  v21 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __45__ENXPCConnection__xpcLegalConsentPageCount___block_invoke;
  v13[3] = &unk_278FD10D0;
  v15 = &v16;
  v13[4] = self;
  v5 = countCopy;
  v14 = v5;
  v6 = MEMORY[0x24C214430](v13);
  objc_opt_class();
  v7 = (v17 + 5);
  obj = v17[5];
  v8 = ENXPCDecodeSecureObject();
  objc_storeStrong(v7, obj);
  if (v8)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      v11 = v8;
      LogPrintF_safe();
    }

    v9 = [(ENDaemon *)self->_daemon _getLegalConsentPageCount]+ 1;
    CFPrefs_SetInt64();
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    reply = xpc_dictionary_create_reply(v5);
    if (reply)
    {
      [(ENXPCConnection *)self _xpcSendMessage:reply];
    }

    else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

  v6[2](v6);
  _Block_object_dispose(&v16, 8);
}

uint64_t __45__ENXPCConnection__xpcLegalConsentPageCount___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcOnboardingDidStart:(id)start
{
  startCopy = start;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__3;
  v47 = __Block_byref_object_dispose__3;
  v48 = 0;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __42__ENXPCConnection__xpcOnboardingDidStart___block_invoke;
  v40[3] = &unk_278FD10D0;
  v42 = &v43;
  v40[4] = self;
  v5 = startCopy;
  v41 = v5;
  v6 = MEMORY[0x24C214430](v40);
  v7 = (v44 + 5);
  obj = v44[5];
  v35 = v6;
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    string = xpc_dictionary_get_string(v5, "iStr");
    if (!string)
    {
      v27 = ENErrorF();
      v10 = v44[5];
      v44[5] = v27;
      goto LABEL_33;
    }

    v10 = [MEMORY[0x277CCACA0] stringWithUTF8String:string];
    if ([v10 isEqualToString:@"com.apple.Preferences"])
    {
      v11 = 1;
    }

    else if ([v10 isEqualToString:@"com.apple.PublicHealthRemoteUI"])
    {
      if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      v12 = *MEMORY[0x277CBED20];
      CFPrefs_SetValue();
      v11 = 2;
    }

    else if ([v10 isEqualToString:@"com.apple.ENDaemon"])
    {
      v11 = 3;
    }

    else
    {
      if (([v10 isEqualToString:@"com.apple.HealthENLauncher"] & 1) == 0)
      {
        v28 = ENErrorF();
        v14 = v44[5];
        v44[5] = v28;
        goto LABEL_32;
      }

      v11 = 4;
    }

    objc_opt_class();
    v13 = (v44 + 5);
    v38 = v44[5];
    v14 = ENXPCDecodeSecureObject();
    objc_storeStrong(v13, v38);
    if (!v14)
    {
LABEL_32:

LABEL_33:
      goto LABEL_34;
    }

    v36 = v5;
    v34 = v10;
    configurationManager = [(ENDaemon *)self->_daemon configurationManager];
    v16 = configurationManager;
    if (configurationManager)
    {
      configurationStore = [configurationManager configurationStore];
      v18 = [configurationStore configurationForRegion:v14];

      if (v18)
      {
        everStartedOnboarding = [v18 everStartedOnboarding];
        [v18 setEverStartedOnboarding:1];
        configurationStore2 = [v16 configurationStore];
        v21 = (v44 + 5);
        v37 = v44[5];
        v22 = [configurationStore2 saveRegionConfiguration:v18 error:&v37];
        objc_storeStrong(v21, v37);

        if ((v22 & 1) == 0)
        {
          v6 = v35;
          goto LABEL_31;
        }

        regionCode = [v14 regionCode];
        v24 = "yes";
        if (everStartedOnboarding)
        {
          v24 = "no";
        }

        if (regionCode)
        {
          v25 = v24;
        }

        else
        {
          v25 = "N/A";
        }

        if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          regionCode2 = [v14 regionCode];
          v33 = v25;
          v31 = string;
          LogPrintF_safe();
        }

        [(ENDaemon *)self->_daemon setOnboardingTrigger:v11, v31, regionCode2, v33];
        [(ENDaemon *)self->_daemon setOnboardingFirstTime:everStartedOnboarding ^ 1u];
        [(ENDaemon *)self->_daemon setOnboardingRegionTrigger:v14];
        [(ENDaemon *)self->_daemon setOnboardingLegalConsentLastViewCount:[(ENDaemon *)self->_daemon _getLegalConsentPageCount]];
        v6 = v35;
        reply = xpc_dictionary_create_reply(v36);
        if (reply)
        {
          [(ENXPCConnection *)self _xpcSendMessage:reply];
        }

        else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }
      }

      else
      {
        v30 = ENErrorF();
        reply = v44[5];
        v44[5] = v30;
      }
    }

    else
    {
      v29 = ENErrorF();
      v18 = v44[5];
      v44[5] = v29;
    }

LABEL_31:

    v10 = v34;
    v5 = v36;
    goto LABEL_32;
  }

LABEL_34:
  v6[2](v6);

  _Block_object_dispose(&v43, 8);
}

uint64_t __42__ENXPCConnection__xpcOnboardingDidStart___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcSetActiveApp:(id)app
{
  v45 = *MEMORY[0x277D85DE8];
  appCopy = app;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__3;
  v42 = __Block_byref_object_dispose__3;
  v43 = 0;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __36__ENXPCConnection__xpcSetActiveApp___block_invoke;
  v35[3] = &unk_278FD10D0;
  v37 = &v38;
  v35[4] = self;
  xdict = appCopy;
  v36 = xdict;
  v28 = MEMORY[0x24C214430](v35);
  v5 = v39;
  obj = v39[5];
  v6 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v5 + 5, obj);
  if (v6)
  {
    string = xpc_dictionary_get_string(xdict, "aBid");
    if (string)
    {
      v8 = *MEMORY[0x277D6C150];
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v9 = TCCAccessCopyInformation();
      v10 = [v9 countByEnumeratingWithState:&v30 objects:v44 count:16];
      if (v10)
      {
        v11 = 0;
        v12 = *v31;
        v13 = MEMORY[0x277D6C0C0];
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v31 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v15 = [*(*(&v30 + 1) + 8 * i) objectForKey:{*v13, v27}];
            if (v15)
            {
              v16 = [(ENDaemon *)self->_daemon _getBundleIDFromBundle:v15];
              v17 = v16;
              if (v16 && !strcmp(string, [v16 utf8ValueSafe]))
              {
                if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                {
                  v27 = v17;
                  LogPrintF_safe();
                }

                InfoDictionary = CFBundleGetInfoDictionary(v15);
                if (InfoDictionary)
                {
                  v19 = [(ENDaemon *)self->_daemon regionForBundleInfo:InfoDictionary];
                  if (v19)
                  {
                    [(ENDaemon *)self->_daemon fetchServerConfigurationForAppBundleIdentifier:v17 infoDictionary:InfoDictionary];
                  }

                  goto LABEL_25;
                }

                v11 = 1;
              }
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v30 objects:v44 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }

        if (v11)
        {
          v19 = 0;
          v17 = 0;
LABEL_25:
          v20 = [ENActiveEntity alloc];
          v21 = [objc_alloc(MEMORY[0x277CC5C18]) initWithBundleID:v17 region:v19];
          v22 = [(ENActiveEntity *)v20 initWithEntity:v21 activeStatus:2];

          [(ENDaemon *)self->_daemon _writePreferenceActiveEntity:v22];
          [(ENDaemon *)self->_daemon xpcReportStatus];
          reply = xpc_dictionary_create_reply(xdict);
          if (reply)
          {
            [(ENXPCConnection *)self _xpcSendMessage:reply];
          }

          else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }

          goto LABEL_28;
        }
      }

      else
      {
      }

      v25 = ENErrorF();
      v19 = v39[5];
      v39[5] = v25;
LABEL_28:
    }

    else
    {
      v26 = ENErrorF();
      v9 = v39[5];
      v39[5] = v26;
    }
  }

  v28[2](v28);

  _Block_object_dispose(&v38, 8);
  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __36__ENXPCConnection__xpcSetActiveApp___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcSetAutomaticRegionSwitch:(id)switch
{
  switchCopy = switch;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __48__ENXPCConnection__xpcSetAutomaticRegionSwitch___block_invoke;
  v14[3] = &unk_278FD10D0;
  v16 = &v17;
  v14[4] = self;
  v5 = switchCopy;
  v15 = v5;
  v6 = MEMORY[0x24C214430](v14);
  v7 = (v18 + 5);
  obj = v18[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = xpc_dictionary_get_BOOL(v5, "enbd");
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    v10 = MEMORY[0x277CBED20];
    if (!v9)
    {
      v10 = MEMORY[0x277CBED18];
    }

    v11 = *v10;
    CFPrefs_SetValue();
    [(ENDaemon *)self->_daemon prefsChanged];
    reply = xpc_dictionary_create_reply(v5);
    if (reply)
    {
      [(ENXPCConnection *)self _xpcSendMessage:reply];
    }

    else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v17, 8);
}

uint64_t __48__ENXPCConnection__xpcSetAutomaticRegionSwitch___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcSetAvailabilityAlertEnabled:(id)enabled
{
  enabledCopy = enabled;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__ENXPCConnection__xpcSetAvailabilityAlertEnabled___block_invoke;
  v14[3] = &unk_278FD10D0;
  v16 = &v17;
  v14[4] = self;
  v5 = enabledCopy;
  v15 = v5;
  v6 = MEMORY[0x24C214430](v14);
  v7 = (v18 + 5);
  obj = v18[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = xpc_dictionary_get_BOOL(v5, "enbd");
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    v10 = MEMORY[0x277CBED20];
    if (v9)
    {
      v10 = MEMORY[0x277CBED18];
    }

    v11 = *v10;
    CFPrefs_SetValue();
    [(ENDaemon *)self->_daemon prefsChanged];
    reply = xpc_dictionary_create_reply(v5);
    if (reply)
    {
      [(ENXPCConnection *)self _xpcSendMessage:reply];
    }

    else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v17, 8);
}

uint64_t __51__ENXPCConnection__xpcSetAvailabilityAlertEnabled___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcSetActiveRegion:(id)region
{
  regionCopy = region;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__3;
  v40 = __Block_byref_object_dispose__3;
  v41 = 0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __39__ENXPCConnection__xpcSetActiveRegion___block_invoke;
  v33[3] = &unk_278FD10D0;
  v35 = &v36;
  v33[4] = self;
  v5 = regionCopy;
  v34 = v5;
  v6 = MEMORY[0x24C214430](v33);
  v7 = (v37 + 5);
  obj = v37[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    objc_opt_class();
    v9 = (v37 + 5);
    v31 = v37[5];
    v10 = ENXPCDecodeSecureObjectIfPresent();
    objc_storeStrong(v9, v31);
    if (v10 || !v37[5])
    {
      v11 = +[ENLoggingPrefs sharedENLoggingPrefs];
      isSensitiveLoggingAllowed = [v11 isSensitiveLoggingAllowed];

      if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        v30 = v10;
        LogPrintF_safe();
      }

      configurationManager = [(ENDaemon *)self->_daemon configurationManager];
      configurationStore = [configurationManager configurationStore];
      v15 = [configurationStore configurationForRegion:v10];

      configurationManager2 = [(ENDaemon *)self->_daemon configurationManager];
      configurationStore2 = [configurationManager2 configurationStore];
      v18 = [configurationStore2 serverConfigurationForRegion:v10];

      if (v18)
      {
        v19 = MEMORY[0x277CC1E68];
        appBundleID = [v18 appBundleID];
        v21 = [v19 applicationProxyForIdentifier:appBundleID placeholder:0];

        appState = [v21 appState];
        isInstalled = [appState isInstalled];

        if (isInstalled)
        {
          appBundleID2 = [v18 appBundleID];
          v25 = 2;
        }

        else
        {
          appBundleID2 = 0;
          if ([v15 enVersion] == 2)
          {
            v25 = 3;
          }

          else
          {
            v25 = 0;
          }
        }
      }

      else
      {
        v25 = 0;
        appBundleID2 = 0;
      }

      v26 = [ENActiveEntity alloc];
      v27 = [objc_alloc(MEMORY[0x277CC5C18]) initWithBundleID:appBundleID2 region:v10];
      v28 = [(ENActiveEntity *)v26 initWithEntity:v27 activeStatus:v25];

      if ([(ENDaemon *)self->_daemon _writePreferenceActiveEntity:v28])
      {
        [(ENDaemon *)self->_daemon prefsChanged];
        [(ENDaemon *)self->_daemon xpcReportStatus];
      }

      else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      reply = xpc_dictionary_create_reply(v5);
      if (reply)
      {
        [(ENXPCConnection *)self _xpcSendMessage:reply];
      }

      else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v36, 8);
}

uint64_t __39__ENXPCConnection__xpcSetActiveRegion___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcSetMonthlySummaryAlertEnabled:(id)enabled
{
  enabledCopy = enabled;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__ENXPCConnection__xpcSetMonthlySummaryAlertEnabled___block_invoke;
  v14[3] = &unk_278FD10D0;
  v16 = &v17;
  v14[4] = self;
  v5 = enabledCopy;
  v15 = v5;
  v6 = MEMORY[0x24C214430](v14);
  v7 = (v18 + 5);
  obj = v18[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = xpc_dictionary_get_BOOL(v5, "enbd");
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      v10 = "disabled";
      if (v9)
      {
        v10 = "enabled";
      }

      v12 = v10;
      LogPrintF_safe();
    }

    [(ENDaemon *)self->_daemon setMonthlySummaryDisabled:!v9, v12];
    reply = xpc_dictionary_create_reply(v5);
    if (reply)
    {
      [(ENXPCConnection *)self _xpcSendMessage:reply];
    }

    else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v17, 8);
}

uint64_t __53__ENXPCConnection__xpcSetMonthlySummaryAlertEnabled___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcGetRemotePresentationRequestIfNeeded:(id)needed
{
  neededCopy = needed;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__3;
  v54 = __Block_byref_object_dispose__3;
  v55 = 0;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __60__ENXPCConnection__xpcGetRemotePresentationRequestIfNeeded___block_invoke;
  v47[3] = &unk_278FD10D0;
  v49 = &v50;
  v47[4] = self;
  v5 = neededCopy;
  v48 = v5;
  v6 = MEMORY[0x24C214430](v47);
  v7 = (v51 + 5);
  obj = v51[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:2 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = (v51 + 5);
    v45 = v51[5];
    v10 = [(ENXPCConnection *)self _authorizedAndReturnError:&v45];
    objc_storeStrong(v9, v45);
    if (v10)
    {
      int64 = xpc_dictionary_get_int64(v5, "rprt");
      v12 = int64;
      switch(int64)
      {
        case 1:
          v15 = 0;
          goto LABEL_12;
        case 2:
          v16 = (v51 + 5);
          v43 = v51[5];
          v17 = [(ENXPCConnection *)self _appActiveStatusWithError:&v43];
          objc_storeStrong(v16, v43);
          if (v17)
          {
            temporaryExposureKeyManager = [(ENDaemon *)self->_daemon temporaryExposureKeyManager];
            if ([(ENXPCClient *)self->_client entitledToSkipKeyReleasePrompt])
            {
              v19 = 0;
            }

            else
            {
              v19 = [temporaryExposureKeyManager requireKeyReleasePromptForClient:self->_client];
            }

            v15 = 1;
LABEL_16:
            v22 = +[ENLoggingPrefs sharedENLoggingPrefs];
            isSensitiveLoggingAllowed = [v22 isSensitiveLoggingAllowed];

            if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              client = self->_client;
              LogPrintF_safe();
            }

            if (v19)
            {
              if (!v15)
              {
LABEL_25:
                reply = xpc_dictionary_create_reply(v5);
                if (reply)
                {
                  v28 = [MEMORY[0x277CC5D10] presentationRequestWithType:v12];
                  signingIdentity = [(ENXPCClient *)self->_client signingIdentity];
                  [v28 setAppBundleIdentifier:signingIdentity];

                  appRegion = [(ENXPCClient *)self->_client appRegion];
                  [v28 setAgencyRegion:appRegion];

                  v31 = objc_alloc_init(ENRemoteUISession);
                  receiptId = [v28 receiptId];
                  [(ENRemoteUISession *)v31 setSessionID:receiptId];

                  remoteUISessions = [(ENDaemon *)self->_daemon remoteUISessions];
                  receiptId2 = [v28 receiptId];
                  [remoteUISessions setObject:v31 forKeyedSubscript:receiptId2];

                  v35 = (v51 + 5);
                  v42 = v51[5];
                  ENXPCEncodeSecureObject();
                  objc_storeStrong(v35, v42);
                  xpc_dictionary_set_BOOL(reply, "rpn", 1);
                  [(ENXPCConnection *)self _xpcSendMessage:reply];
                }

                else
                {
                  v39 = ENErrorF();
                  v28 = v51[5];
                  v51[5] = v39;
                }

                goto LABEL_30;
              }

              reply = objc_alloc_init(MEMORY[0x277CEEE98]);
              v25 = [reply applicationInfoForPID:{-[ENXPCClient pid](self->_client, "pid")}];
              v26 = *MEMORY[0x277CEEE78];
              Int64Ranged = CFDictionaryGetInt64Ranged();
              [reply invalidate];
              if (Int64Ranged == 8)
              {

                goto LABEL_25;
              }

              v40 = ENErrorF();
              v41 = v51[5];
              v51[5] = v40;
            }

            else
            {
              v36 = xpc_dictionary_create_reply(v5);
              reply = v36;
              if (v36)
              {
                xpc_dictionary_set_BOOL(v36, "rpn", 0);
                [(ENXPCConnection *)self _xpcSendMessage:reply];
              }

              else
              {
                v37 = ENErrorF();
                v38 = v51[5];
                v51[5] = v37;
              }
            }

LABEL_30:
          }

          break;
        case 3:
          v13 = (v51 + 5);
          v44 = v51[5];
          v14 = [(ENXPCConnection *)self _appActiveStatusWithError:&v44];
          objc_storeStrong(v13, v44);
          if (v14)
          {
            v15 = 1;
LABEL_12:
            v19 = 1;
            goto LABEL_16;
          }

          break;
        default:
          v20 = ENErrorF();
          reply = v51[5];
          v51[5] = v20;
          goto LABEL_30;
      }
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v50, 8);
}

uint64_t __60__ENXPCConnection__xpcGetRemotePresentationRequestIfNeeded___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcRemotePresentationReceivedDecision:(id)decision
{
  decisionCopy = decision;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__3;
  v41 = __Block_byref_object_dispose__3;
  v42 = 0;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __58__ENXPCConnection__xpcRemotePresentationReceivedDecision___block_invoke;
  v34[3] = &unk_278FD10D0;
  v36 = &v37;
  v34[4] = self;
  original = decisionCopy;
  v35 = original;
  v5 = MEMORY[0x24C214430](v34);
  v6 = (v38 + 5);
  obj = v38[5];
  v30 = v5;
  v7 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    objc_opt_class();
    v8 = (v38 + 5);
    v32 = v38[5];
    v9 = ENXPCDecodeSecureObject();
    objc_storeStrong(v8, v32);
    if (!v9)
    {
LABEL_21:

      goto LABEL_22;
    }

    receiptId = [v9 receiptId];
    remoteUISessions = [(ENDaemon *)self->_daemon remoteUISessions];
    v12 = [remoteUISessions objectForKeyedSubscript:receiptId];

    if (!v12)
    {
      v27 = ENErrorF();
      connection = v38[5];
      v38[5] = v27;
      goto LABEL_20;
    }

    remoteUISessions2 = [(ENDaemon *)self->_daemon remoteUISessions];
    [remoteUISessions2 setObject:0 forKeyedSubscript:receiptId];

    connection = [v12 connection];
    if (!connection)
    {
      v28 = ENErrorF();
      originalRequest = v38[5];
      v38[5] = v28;
      goto LABEL_19;
    }

    originalRequest = [v12 originalRequest];
    if (!originalRequest || ([v9 decisionInfo], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "objectForKeyedSubscript:", @"decisionType"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "integerValue"), v17, v16, v18 != objc_msgSend(v9, "requestType")))
    {
      v29 = ENErrorF();
      v23 = v38[5];
      v38[5] = v29;
      goto LABEL_18;
    }

    testMode = [v9 testMode];
    decisionInfo = [v9 decisionInfo];
    v21 = [decisionInfo objectForKeyedSubscript:@"decisionResult"];
    bOOLValue = [v21 BOOLValue];

    if (bOOLValue)
    {
      v23 = 0;
    }

    else
    {
      v23 = ENErrorF();
    }

    requestType = [v9 requestType];
    if (requestType == 2)
    {
      [connection _xpcGetDiagnosisKeysCompletion:originalRequest didPrompt:1 testMode:testMode error:v23];
    }

    else
    {
      if (requestType != 3)
      {
        [v9 requestType];
        v26 = ENErrorF();
        reply = v38[5];
        v38[5] = v26;
LABEL_17:

LABEL_18:
LABEL_19:

LABEL_20:
        v5 = v30;
        goto LABEL_21;
      }

      [connection _xpcPreAuthorizeDiagnosisKeysComplete:originalRequest userDecision:bOOLValue];
    }

    reply = xpc_dictionary_create_reply(original);
    if (reply)
    {
      [(ENXPCConnection *)self _xpcSendMessage:reply];
    }

    else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    goto LABEL_17;
  }

LABEL_22:
  v5[2](v5);

  _Block_object_dispose(&v37, 8);
}

uint64_t __58__ENXPCConnection__xpcRemotePresentationReceivedDecision___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_xpcStartSelfReportWebSession:(id)session
{
  sessionCopy = session;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__3;
  v37 = __Block_byref_object_dispose__3;
  v38 = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __49__ENXPCConnection__xpcStartSelfReportWebSession___block_invoke;
  v30[3] = &unk_278FD10D0;
  v32 = &v33;
  v30[4] = self;
  v5 = sessionCopy;
  v31 = v5;
  v6 = MEMORY[0x24C214430](v30);
  objc_opt_class();
  v7 = v34;
  obj = v34[5];
  region = ENXPCDecodeSecureObjectIfPresent();
  objc_storeStrong(v7 + 5, obj);
  if (!v34[5])
  {
    activeEntity = [(ENDaemon *)self->_daemon activeEntity];
    v10 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed = [v10 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      v12 = @" <>";
      if (region)
      {
        v12 = region;
      }

      v22 = v12;
      v23 = activeEntity;
      LogPrintF_safe();
    }

    if ([(ENDaemon *)self->_daemon _isNKDActive:v22])
    {
      testResultManager = [(ENDaemon *)self->_daemon testResultManager];
      if (testResultManager)
      {
        if (region)
        {
          goto LABEL_13;
        }

        activeEntity2 = [(ENDaemon *)self->_daemon activeEntity];
        entity = [activeEntity2 entity];
        region = [entity region];

        if (region)
        {
LABEL_13:
          daemon = self->_daemon;
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __49__ENXPCConnection__xpcStartSelfReportWebSession___block_invoke_2;
          v24[3] = &unk_278FD1F90;
          v28 = &v33;
          v24[4] = self;
          v25 = v5;
          v26 = testResultManager;
          region = region;
          v27 = region;
          [(ENDaemon *)daemon fetchServerConfigurationForRegion:region completion:v24];
        }

        else
        {
          v20 = ENTestResultErrorF(9);
          v21 = v34[5];
          v34[5] = v20;

          region = 0;
        }
      }

      else
      {
        v18 = ENErrorF();
        v19 = v34[5];
        v34[5] = v18;
      }
    }

    else
    {
      v17 = ENErrorF();
      testResultManager = v34[5];
      v34[5] = v17;
    }
  }

  v6[2](v6);
  _Block_object_dispose(&v33, 8);
}

uint64_t __49__ENXPCConnection__xpcStartSelfReportWebSession___block_invoke(uint64_t result)
{
  v1 = result + 48;
  if (*(*(*(result + 48) + 8) + 40))
  {
    v2 = result;
    v3 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v4 = [v3 isSensitiveLoggingAllowed];

    if (v4 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __49__ENXPCConnection__xpcStartSelfReportWebSession___block_invoke_cold_1(v1);
    }

    v5 = v2[5];
    v6 = *(*(v2[6] + 8) + 40);
    v7 = v2[4];

    return [v7 _xpcSendReplyError:v6 request:v5];
  }

  return result;
}

void __49__ENXPCConnection__xpcStartSelfReportWebSession___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if (([v5 supportsFeatures:2] & 1) == 0)
    {
      __49__ENXPCConnection__xpcStartSelfReportWebSession___block_invoke_2_cold_1(a1);
      goto LABEL_11;
    }

    reply = xpc_dictionary_create_reply(*(a1 + 40));
    if (reply)
    {
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __49__ENXPCConnection__xpcStartSelfReportWebSession___block_invoke_3;
      v14[3] = &unk_278FD1F68;
      v11 = *(a1 + 32);
      v14[4] = reply;
      v14[5] = v11;
      [v9 startSelfReportWebSession:v10 completionHandler:v14];
    }

    else
    {
      __49__ENXPCConnection__xpcStartSelfReportWebSession___block_invoke_2_cold_2();
    }
  }

  else
  {
    reply = ENNestedTestResultErrorF(v6, 9);
    v12 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v13 = [v12 isSensitiveLoggingAllowed];

    if (v13 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __49__ENXPCConnection__xpcStartSelfReportWebSession___block_invoke_2_cold_3(a1);
    }

    [*(a1 + 32) _xpcSendReplyError:reply request:*(a1 + 40)];
  }

LABEL_11:
}

void __49__ENXPCConnection__xpcStartSelfReportWebSession___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  if (v12 && v7 || (!v8 ? (ENErrorF(), v9 = objc_claimAutoreleasedReturnValue()) : (v9 = v8), v10 = v9, v11 = *(a1 + 32), CUXPCEncodeNSError(), v10, v7))
  {
    xpc_dictionary_set_string(*(a1 + 32), "nonce", [v7 utf8ValueSafe]);
  }

  if (v12)
  {
    xpc_dictionary_set_string(*(a1 + 32), "APIKey", [v12 utf8ValueSafe]);
  }

  [*(a1 + 40) _xpcSendMessage:*(a1 + 32)];
}

- (void)_xpcStartTestVerificationSession:(id)session
{
  sessionCopy = session;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__3;
  v60 = __Block_byref_object_dispose__3;
  v61 = 0;
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __52__ENXPCConnection__xpcStartTestVerificationSession___block_invoke;
  v53[3] = &unk_278FD10D0;
  v55 = &v56;
  v53[4] = self;
  v5 = sessionCopy;
  v54 = v5;
  v6 = MEMORY[0x24C214430](v53);
  if ([(ENXPCClient *)self->_client entitledForTestVerification]|| (v7 = v57, obj = v57[5], v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj], objc_storeStrong(v7 + 5, obj), v8))
  {
    v9 = xpc_dictionary_get_BOOL(v5, "chaff");
    v10 = v57;
    v50 = v57[5];
    v51 = 0;
    v11 = CUXPCDecodeNSString();
    objc_storeStrong(v10 + 5, v50);
    if ((v11 & 1) == 0)
    {
LABEL_26:

      goto LABEL_27;
    }

    if (!v9)
    {
      v34 = ENErrorF();
      region = v57[5];
      v57[5] = v34;
      goto LABEL_25;
    }

    objc_opt_class();
    v12 = v57;
    v49 = v57[5];
    region = ENXPCDecodeSecureObjectIfPresent();
    objc_storeStrong(v12 + 5, v49);
    if (v57[5])
    {
LABEL_25:

      goto LABEL_26;
    }

    activeEntity = [(ENDaemon *)self->_daemon activeEntity];
    v15 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed = [v15 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      v17 = "";
      if (v9)
      {
        v17 = "Chaff, ";
      }

      v18 = @" <>";
      if (region)
      {
        v18 = region;
      }

      v39 = v18;
      v40 = activeEntity;
      v37 = v17;
      v38 = v51;
      LogPrintF_safe();
    }

    if ([(ENDaemon *)self->_daemon getOverallStatus:v37]== 2)
    {
      goto LABEL_29;
    }

    if ([activeEntity activeStatus] == 2)
    {
      entity = [activeEntity entity];
      bundleIdentifier = [entity bundleIdentifier];

      v21 = ENErrorF();
      v22 = v57[5];
      v57[5] = v21;

      userInfo = [v57[5] userInfo];
      v24 = [userInfo mutableCopy];

      [v24 setObject:bundleIdentifier forKeyedSubscript:*MEMORY[0x277CC5BE0]];
      v25 = objc_alloc(MEMORY[0x277CCA9B0]);
      domain = [v57[5] domain];
      v27 = [v25 initWithDomain:domain code:objc_msgSend(v57[5] userInfo:{"code"), v24}];
      v28 = v57[5];
      v57[5] = v27;

LABEL_24:
      goto LABEL_25;
    }

    if (![(ENDaemon *)self->_daemon _isNKDActive])
    {
LABEL_29:
      v35 = ENErrorF();
      bundleIdentifier = v57[5];
      v57[5] = v35;
      goto LABEL_24;
    }

    bundleIdentifier = [(ENDaemon *)self->_daemon testResultManager];
    if (bundleIdentifier)
    {
      if (region)
      {
        goto LABEL_22;
      }

      activeEntity2 = [(ENDaemon *)self->_daemon activeEntity];
      entity2 = [activeEntity2 entity];
      region = [entity2 region];

      if (region)
      {
LABEL_22:
        dispatchQueue = [(ENDaemon *)self->_daemon dispatchQueue];
        differentialPrivacyManager = [(ENDaemon *)self->_daemon differentialPrivacyManager];
        daemon = self->_daemon;
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __52__ENXPCConnection__xpcStartTestVerificationSession___block_invoke_2;
        v41[3] = &unk_278FD2008;
        v41[4] = self;
        v48 = v9;
        v42 = v5;
        v43 = bundleIdentifier;
        region = region;
        v44 = region;
        v45 = v51;
        v46 = dispatchQueue;
        v47 = differentialPrivacyManager;
        [(ENDaemon *)daemon fetchServerConfigurationForRegion:region completion:v41];

LABEL_23:
        goto LABEL_24;
      }

      v36 = ENTestResultErrorF(9);
      region = 0;
    }

    else
    {
      v36 = ENErrorF();
    }

    dispatchQueue = v57[5];
    v57[5] = v36;
    goto LABEL_23;
  }

LABEL_27:
  v6[2](v6);

  _Block_object_dispose(&v56, 8);
}

uint64_t __52__ENXPCConnection__xpcStartTestVerificationSession___block_invoke(uint64_t result)
{
  v1 = result + 48;
  if (*(*(*(result + 48) + 8) + 40))
  {
    v2 = result;
    v3 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v4 = [v3 isSensitiveLoggingAllowed];

    if (v4 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __52__ENXPCConnection__xpcStartTestVerificationSession___block_invoke_cold_1(v1);
    }

    v5 = v2[5];
    v6 = *(*(v2[6] + 8) + 40);
    v7 = v2[4];

    return [v7 _xpcSendReplyError:v6 request:v5];
  }

  return result;
}

void __52__ENXPCConnection__xpcStartTestVerificationSession___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    reply = xpc_dictionary_create_reply(*(a1 + 40));
    v5 = reply;
    if (reply)
    {
      v6 = *(a1 + 48);
      if (*(a1 + 88) == 1)
      {
        v7 = *(a1 + 56);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __52__ENXPCConnection__xpcStartTestVerificationSession___block_invoke_3;
        v18[3] = &unk_278FD1FB8;
        v8 = *(a1 + 32);
        v18[4] = reply;
        v18[5] = v8;
        [v6 startChaffTestVerficationSessionForRegion:v7 completionHandler:v18];
      }

      else
      {
        v11 = *(a1 + 64);
        v12 = [*(*(a1 + 32) + 32) prefNetworkProxyEnabled];
        v13 = *(a1 + 56);
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __52__ENXPCConnection__xpcStartTestVerificationSession___block_invoke_4;
        v17[3] = &unk_278FD1FE0;
        v14 = *(a1 + 80);
        v17[4] = *(a1 + 72);
        v17[5] = v5;
        v15 = *(a1 + 32);
        v17[6] = v14;
        v17[7] = v15;
        [v6 startTestVerficationSessionWithCode:v11 proxyEnabled:v12 region:v13 completionHandler:v17];
      }
    }

    else
    {
      __52__ENXPCConnection__xpcStartTestVerificationSession___block_invoke_2_cold_1();
    }
  }

  else
  {
    v16 = ENNestedTestResultErrorF(a3, 9);
    v9 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v10 = [v9 isSensitiveLoggingAllowed];

    if (v10 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __52__ENXPCConnection__xpcStartTestVerificationSession___block_invoke_2_cold_2();
    }

    [*(a1 + 32) _xpcSendReplyError:v16 request:*(a1 + 40)];
  }
}

uint64_t __52__ENXPCConnection__xpcStartTestVerificationSession___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    CUXPCEncodeNSError();
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v4 _xpcSendMessage:v5];
}

void __52__ENXPCConnection__xpcStartTestVerificationSession___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ENXPCConnection__xpcStartTestVerificationSession___block_invoke_5;
  block[3] = &unk_278FD1D90;
  v11 = v5;
  v12 = *(a1 + 40);
  v13 = *(a1 + 56);
  v14 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

uint64_t __52__ENXPCConnection__xpcStartTestVerificationSession___block_invoke_5(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v10 = *(a1 + 64);
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = ENErrorF();
    }

    v5 = v11;
    v12 = *(a1 + 40);
    CUXPCEncodeNSError();
LABEL_13:

    goto LABEL_14;
  }

  v3 = *(a1 + 40);
  *uuid = 0;
  v18 = 0;
  v4 = v3;
  [v2 getUUIDBytes:uuid];
  xpc_dictionary_set_uuid(v4, "sessID", uuid);

  if (*(a1 + 48))
  {
    v5 = *(a1 + 32);
    v6 = [*(*(a1 + 56) + 32) _getLatestExposureForDifferentialPrivacy];
    v7 = [*(*(a1 + 56) + 32) _getReportTypeForSession:v5];
    v8 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v9 = [v8 isSensitiveLoggingAllowed];

    if (v9 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      v15 = v6;
      v16 = v7;
      LogPrintF_safe();
    }

    [*(a1 + 48) reportUserCodeVerified:v6 reportType:{objc_msgSend(v7, "unsignedIntValue", v15, v16)}];

    goto LABEL_13;
  }

LABEL_14:
  result = [*(a1 + 56) _xpcSendMessage:*(a1 + 40)];
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_xpcFetchTestVerificationMetadata:(id)metadata
{
  metadataCopy = metadata;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__ENXPCConnection__xpcFetchTestVerificationMetadata___block_invoke;
  v16[3] = &unk_278FD10D0;
  v18 = &v19;
  v16[4] = self;
  v5 = metadataCopy;
  v17 = v5;
  v6 = MEMORY[0x24C214430](v16);
  v7 = (v20 + 5);
  obj = v20[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = (v20 + 5);
    v13 = v20[5];
    v14 = 0;
    v10 = CUXPCDecodeNSUUID();
    objc_storeStrong(v9, v13);
    if (v10)
    {
      v11 = ENErrorF();
      v12 = v20[5];
      v20[5] = v11;
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v19, 8);
}

uint64_t __53__ENXPCConnection__xpcFetchTestVerificationMetadata___block_invoke(uint64_t result)
{
  v1 = result + 48;
  if (*(*(*(result + 48) + 8) + 40))
  {
    v2 = result;
    v3 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v4 = [v3 isSensitiveLoggingAllowed];

    if (v4 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __53__ENXPCConnection__xpcFetchTestVerificationMetadata___block_invoke_cold_1(v1);
    }

    v5 = v2[5];
    v6 = *(*(v2[6] + 8) + 40);
    v7 = v2[4];

    return [v7 _xpcSendReplyError:v6 request:v5];
  }

  return result;
}

- (void)_xpcFinishTestVerificationSession:(id)session
{
  sessionCopy = session;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__ENXPCConnection__xpcFinishTestVerificationSession___block_invoke;
  v16[3] = &unk_278FD10D0;
  v18 = &v19;
  v16[4] = self;
  v5 = sessionCopy;
  v17 = v5;
  v6 = MEMORY[0x24C214430](v16);
  v7 = v20;
  obj = v20[5];
  v8 = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v7 + 5, obj);
  if (v8)
  {
    v9 = v20;
    v13 = v20[5];
    v14 = 0;
    v10 = CUXPCDecodeNSUUID();
    objc_storeStrong(v9 + 5, v13);
    if (v10)
    {
      v11 = ENErrorF();
      v12 = v20[5];
      v20[5] = v11;
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v19, 8);
}

uint64_t __53__ENXPCConnection__xpcFinishTestVerificationSession___block_invoke(uint64_t result)
{
  v1 = result + 48;
  if (*(*(*(result + 48) + 8) + 40))
  {
    v2 = result;
    v3 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v4 = [v3 isSensitiveLoggingAllowed];

    if (v4 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __53__ENXPCConnection__xpcFinishTestVerificationSession___block_invoke_cold_1(v1);
    }

    v5 = v2[5];
    v6 = *(*(v2[6] + 8) + 40);
    v7 = v2[4];

    return [v7 _xpcSendReplyError:v6 request:v5];
  }

  return result;
}

void __53__ENXPCConnection__xpcFinishTestVerificationSession___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v20 = v5;
  if ((a2 & 1) == 0)
  {
    if (v5)
    {
      v14 = v5;
    }

    else
    {
      v14 = ENErrorF();
    }

    v11 = v14;
    v15 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v16 = [v15 isSensitiveLoggingAllowed];

    if (v16 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __53__ENXPCConnection__xpcFinishTestVerificationSession___block_invoke_2_cold_1();
    }

    v17 = *(a1 + 32);
    CUXPCEncodeNSError();
    goto LABEL_23;
  }

  if (*(a1 + 64) == 1)
  {
    v6 = [*(*(a1 + 40) + 32) differentialPrivacyManager];

    if (v6)
    {
      v7 = [*(*(a1 + 40) + 32) _getLatestExposureForDifferentialPrivacy];
      v8 = +[ENLoggingPrefs sharedENLoggingPrefs];
      v9 = [v8 isSensitiveLoggingAllowed];

      if (v9 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        __53__ENXPCConnection__xpcFinishTestVerificationSession___block_invoke_2_cold_2(v7, a1);
      }

      v10 = [*(*(a1 + 40) + 32) differentialPrivacyManager];
      [v10 reportUserKeysUploaded:v7 reportType:{objc_msgSend(*(a1 + 48), "unsignedIntValue")}];

      v11 = [*(a1 + 56) objectForKeyedSubscript:*MEMORY[0x277CC5BA0]];
      v12 = [*(*(a1 + 40) + 32) _getDiagnosedVaccineStatusForDifferentialPrivacyWithUserVaccinationStatus:v11];
      if (v12)
      {
        v13 = [*(*(a1 + 40) + 32) differentialPrivacyManager];
        [v13 reportUserDiagnosedVaccineStatus:v12];
      }

      else
      {
        v18 = +[ENLoggingPrefs sharedENLoggingPrefs];
        v19 = [v18 isSensitiveLoggingAllowed];

        if (v19 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          __53__ENXPCConnection__xpcFinishTestVerificationSession___block_invoke_2_cold_3();
        }
      }

LABEL_23:
    }
  }

  [*(a1 + 40) _xpcSendMessage:*(a1 + 32)];
}

- (void)_xpcShowBuddy:(id)buddy
{
  buddyCopy = buddy;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __33__ENXPCConnection__xpcShowBuddy___block_invoke;
  v16[3] = &unk_278FD10D0;
  v18 = &v19;
  v16[4] = self;
  v5 = buddyCopy;
  v17 = v5;
  v6 = MEMORY[0x24C214430](v16);
  if ([(ENXPCClient *)self->_client entitledToShowBuddy])
  {
    objc_opt_class();
    v7 = v20;
    obj = v20[5];
    v8 = ENXPCDecodeSecureObject();
    objc_storeStrong(v7 + 5, obj);
    if (v8)
    {
      reply = xpc_dictionary_create_reply(v5);
      v10 = reply;
      if (reply)
      {
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __33__ENXPCConnection__xpcShowBuddy___block_invoke_2;
        v14[3] = &unk_278FD1FB8;
        v14[4] = reply;
        v14[5] = self;
        v11 = MEMORY[0x24C214430](v14);
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __33__ENXPCConnection__xpcShowBuddy___block_invoke_3;
        v13[3] = &unk_278FD2058;
        v13[4] = self;
        v13[5] = v10;
        v12 = MEMORY[0x24C214430](v13);
        [(ENDaemon *)self->_daemon presentBuddyForRegion:v8 errorHandler:v11 completionHandler:v12];
      }

      else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v19, 8);
}

uint64_t __33__ENXPCConnection__xpcShowBuddy___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (_MergedGlobals <= 90)
  {
    if (_MergedGlobals == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

void __33__ENXPCConnection__xpcShowBuddy___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = *(a1 + 32);
    CUXPCEncodeNSError();
  }

  [*(a1 + 40) _xpcSendMessage:*(a1 + 32)];
}

- (void)_xpcVerifyTextMessage:(id)message
{
  v107[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v100 = 0;
  v101 = &v100;
  v102 = 0x3032000000;
  v103 = __Block_byref_object_copy__3;
  v104 = __Block_byref_object_dispose__3;
  v105 = 0;
  v97[0] = MEMORY[0x277D85DD0];
  v97[1] = 3221225472;
  v97[2] = __41__ENXPCConnection__xpcVerifyTextMessage___block_invoke;
  v97[3] = &unk_278FD10D0;
  v99 = &v100;
  selfCopy = self;
  v97[4] = self;
  original = messageCopy;
  v98 = original;
  v5 = MEMORY[0x24C214430](v97);
  v96 = 0;
  v6 = v101;
  obj = v101[5];
  v79 = v5;
  LOBYTE(self) = [(ENXPCConnection *)self _entitledForAccessLevel:4 error:&obj];
  objc_storeStrong(v6 + 5, obj);
  if (self)
  {
    if ([(ENDaemon *)selfCopy->_daemon overallStatus]!= 1)
    {
      v49 = ENErrorF();
      v81 = v101[5];
      v101[5] = v49;

      goto LABEL_73;
    }

    textMessageManager = [(ENDaemon *)selfCopy->_daemon textMessageManager];
    if (!textMessageManager)
    {
      v50 = ENErrorF();
      v77 = v101[5];
      v101[5] = v50;

      goto LABEL_72;
    }

    configurationManager = [(ENDaemon *)selfCopy->_daemon configurationManager];
    configurationStore = [configurationManager configurationStore];

    if (!configurationStore)
    {
      v51 = ENErrorF();
      v85 = v101[5];
      v101[5] = v51;

      goto LABEL_71;
    }

    objc_opt_class();
    v8 = v101 + 5;
    v94 = v101[5];
    v84 = ENXPCDecodeSecureObject();
    objc_storeStrong(v8, v94);
    if (!v84)
    {
LABEL_70:

LABEL_71:
LABEL_72:

      goto LABEL_73;
    }

    testVerificationCode = [v84 testVerificationCode];
    if (!testVerificationCode)
    {
      goto LABEL_80;
    }

    testVerificationRegion = [v84 testVerificationRegion];
    if (!testVerificationRegion)
    {
      activeEntity = [(ENDaemon *)selfCopy->_daemon activeEntity];
      entity = [activeEntity entity];
      region = [entity region];

      testVerificationRegion = region;
      if (!region)
      {
LABEL_80:
        v52 = ENErrorF();
        v73 = v101[5];
        v101[5] = v52;

        goto LABEL_69;
      }
    }

    v72 = testVerificationRegion;
    v67 = [configurationStore configurationForRegion:?];
    if (!v67)
    {
      v53 = ENErrorF();
      v75 = v101[5];
      v101[5] = v53;

      goto LABEL_68;
    }

    v13 = [configurationStore serverConfigurationForRegion:v72];
    v74 = v13;
    if (!v13 || ([v13 textMessageVerificationEnabled] & 1) == 0)
    {
      v54 = ENErrorF();
      v69 = v101[5];
      v101[5] = v54;

      goto LABEL_67;
    }

    v14 = [configurationStore agencyConfigurationForRegion:v72];
    v68 = v14;
    if (!v14 || ([v14 localizedConfiguration], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "testVerificationNotificationBody"), v16 = objc_claimAutoreleasedReturnValue(), v17 = v16 == 0, v16, v15, v17))
    {
      v55 = ENErrorF();
      v64 = v101[5];
      v101[5] = v55;

      goto LABEL_66;
    }

    preArmTestVerificationEnabled = [v74 preArmTestVerificationEnabled];
    v18 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed = [v18 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      if (preArmTestVerificationEnabled)
      {
        v20 = "yes";
      }

      else
      {
        v20 = "no";
      }

      v60 = v84;
      v62 = v20;
      LogPrintF_safe();
    }

    CFStringGetTypeID();
    v21 = CFPrefs_CopyTypedValue();
    v63 = v21;
    if (v21)
    {
      v107[0] = v21;
      currentPhoneNumbers = [MEMORY[0x277CBEA68] arrayWithObjects:v107 count:1];
    }

    else
    {
      v22 = +[ENCoreTelephonyUtility sharedInstance];
      currentPhoneNumbers = [v22 currentPhoneNumbers];
    }

    if (![currentPhoneNumbers count])
    {
      v56 = ENErrorF();
      v83 = v101[5];
      v101[5] = v56;

      goto LABEL_65;
    }

    textMessagePublicKey = [v74 textMessagePublicKey];
    v24 = *MEMORY[0x277CDBFF8];
    v25 = v101 + 5;
    v93 = v101[5];
    v82 = [ENSecKey keyFromBase64String:textMessagePublicKey keyClass:v24 error:&v93];
    objc_storeStrong(v25, v93);

    if (!v82)
    {
LABEL_64:

LABEL_65:
LABEL_66:

LABEL_67:
LABEL_68:

LABEL_69:
      goto LABEL_70;
    }

    textMessagePublicKeyVersion = [v74 textMessagePublicKeyVersion];
    v92 = 0;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v27 = currentPhoneNumbers;
    v28 = [v27 countByEnumeratingWithState:&v88 objects:v106 count:16];
    if (v28)
    {
      v29 = *v89;
      while (2)
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v89 != v29)
          {
            objc_enumerationMutation(v27);
          }

          v31 = *(*(&v88 + 1) + 8 * i);
          v32 = v101[5];
          v101[5] = 0;

          date = [MEMORY[0x277CBEAA0] date];
          v34 = v101 + 5;
          v87 = v101[5];
          LOBYTE(v31) = [textMessageManager verifyTextMessage:v84 phoneNumber:v31 verificationDate:date publicKey:v82 publicKeyVersion:textMessagePublicKeyVersion userReport:&v92 outError:&v87];
          objc_storeStrong(v34, v87);
          v5 = v79;

          if (v31)
          {
            v35 = 1;
            goto LABEL_37;
          }
        }

        v28 = [v27 countByEnumeratingWithState:&v88 objects:v106 count:16];
        if (v28)
        {
          continue;
        }

        break;
      }
    }

    v35 = 0;
LABEL_37:

    if (v92)
    {
      v36 = 3;
    }

    else
    {
      v36 = 0;
    }

    if (!v92 || ([v74 supportsFeatures:2] & 1) != 0)
    {
      if (CFPrefs_GetInt64())
      {
        v37 = IsAppleInternalBuild() != 0;
      }

      else
      {
        v37 = 0;
      }

      if (_MergedGlobals <= 40 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        v38 = "no";
        if (v37)
        {
          v38 = "yes";
        }

        v61 = v38;
        LogPrintF_safe();
      }

      if ((v35 | v37))
      {
        if (preArmTestVerificationEnabled && (v92 & 1) == 0 && ([v67 diagnosisKeysPreAuthorization], v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "userAuthorization") == 1, v39, v40))
        {
          v41 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isSensitiveLoggingAllowed2 = [v41 isSensitiveLoggingAllowed];

          if (isSensitiveLoggingAllowed2 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }

          diagnosisKeysPreAuthorization = [v67 diagnosisKeysPreAuthorization];
          [diagnosisKeysPreAuthorization setVerificationCode:testVerificationCode];

          diagnosisKeysPreAuthorization2 = [v67 diagnosisKeysPreAuthorization];
          [diagnosisKeysPreAuthorization2 setReportType:v36];

          v47 = v101 + 5;
          v86 = v101[5];
          v48 = [configurationStore saveRegionConfiguration:v67 error:&v86];
          objc_storeStrong(v47, v86);
          if (!v48)
          {
            goto LABEL_63;
          }

          [(ENDaemon *)selfCopy->_daemon enqueuePreauthorizedTestVerificationUnlockAction];
        }

        else
        {
          [(ENDaemon *)selfCopy->_daemon postTestVerificationReceivedNotification:v84 region:v72 reportType:v36, v61];
        }

        reply = xpc_dictionary_create_reply(original);
        if (reply)
        {
          [(ENXPCConnection *)selfCopy _xpcSendMessage:reply];
        }

        else
        {
          v57 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isSensitiveLoggingAllowed3 = [v57 isSensitiveLoggingAllowed];

          if (isSensitiveLoggingAllowed3 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }
        }

        goto LABEL_62;
      }

      if (v101[5])
      {
        goto LABEL_63;
      }
    }

    v59 = ENErrorF();
    reply = v101[5];
    v101[5] = v59;
LABEL_62:

LABEL_63:
    goto LABEL_64;
  }

LABEL_73:
  v5[2](v5);

  _Block_object_dispose(&v100, 8);
  v44 = *MEMORY[0x277D85DE8];
}

uint64_t __41__ENXPCConnection__xpcVerifyTextMessage___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v2 + 8) + 40);
    }

    v9 = CUPrintNSError();
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = a1[4];
  v7 = a1[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

- (void)_authorizedAndReturnError:(void *)result .cold.1(void *result)
{
  if (result)
  {
    v1 = result;
    result = ENErrorF();
    *v1 = result;
  }

  return result;
}

- (void)_rateLimitAndReturnError:(void *)result .cold.1(void *result)
{
  if (result)
  {
    v1 = result;
    result = ENErrorF();
    *v1 = result;
  }

  return result;
}

- (void)xpcConnectionEvent:.cold.1()
{
  v0 = CUPrintXPC();
  LogPrintF_safe();
}

- (void)xpcConnectionEvent:(uint64_t)a1 .cold.2(uint64_t a1)
{
  [*(a1 + 24) pid];
  v1 = CUPrintPID();
  LogPrintF_safe();
}

- (void)_xpcSendMessage:.cold.1()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2();
  }
}

- (void)_xpcSendReplyError:request:.cold.1()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF_safe();
    }
  }
}

- (void)_xpcSendReplyError:request:.cold.2()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2();
  }
}

- (void)_xpcSendReplyError:reply:.cold.1()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2();
  }
}

- (void)_xpcEntitlementCheck:.cold.2()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

uint64_t __59__ENXPCConnection__xpcGetUserTraveledPromptWithCompletion___block_invoke_2_cold_1(unint64_t a1)
{
  if (a1 <= 0xB)
  {
    v1 = off_278FD21D8[a1];
  }

  return LogPrintF_safe();
}

void __59__ENXPCConnection__xpcGetUserTraveledPromptWithCompletion___block_invoke_3_cold_1()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

- (uint64_t)_xpcManagerActivateIfNecessaryWithRequest:(_BYTE *)a3 error:.cold.1(uint64_t *a1, uint64_t *a2, _BYTE *a3)
{
  *a3;
  v5 = *a2;
  v4 = *a1;
  return LogPrintF_safe();
}

void __49__ENXPCConnection__xpcPreAuthorizeDiagnosisKeys___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  v1 = CUPrintNSError();
  LogPrintF_safe();
}

void __70__ENXPCConnection__xpcPreAuthorizeDiagnosisKeysComplete_userDecision___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  v1 = CUPrintNSError();
  LogPrintF_safe();
}

void __57__ENXPCConnection__xpcRequestPreAuthorizedDiagnosisKeys___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  v1 = CUPrintNSError();
  LogPrintF_safe();
}

void __87__ENXPCConnection_updateDiagnosisKeysPreAuthorizationForRequest_withDecision_errorOut___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  v1 = CUPrintNSError();
  LogPrintF_safe();
}

void __49__ENXPCConnection__xpcGetDiagnosisKeys_testMode___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  v1 = CUPrintNSError();
  LogPrintF_safe();
}

void __75__ENXPCConnection__xpcGetDiagnosisKeysCompletion_didPrompt_testMode_error___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  v1 = CUPrintNSError();
  LogPrintF_safe();
}

void __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_4_cold_2()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

void __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_5_cold_2()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

void __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_6_cold_2()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

void __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_7_cold_2()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

void __41__ENXPCConnection__xpcDiagnosticControl___block_invoke_9_cold_1()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

void __42__ENXPCConnection__xpcGetSubdivisionList___block_invoke_2_cold_1()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

- (void)_updateActiveEntityFromTCCResult:.cold.4()
{
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2();
  }
}

- (void)_updateActiveEntityFromTCCResult:.cold.5()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2();
  }
}

- (void)_updateActiveEntityFromTCCResult:.cold.6()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2();
  }
}

uint64_t __48__ENXPCConnection__xpcExposureDetectionFileAdd___block_invoke_4_cold_1(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 24);
  v3 = *(a1 + 48);
  return LogPrintF_safe();
}

void __32__ENXPCConnection__xpcDownload___block_invoke_3_cold_1()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

void __35__ENXPCConnection__xpcGetEntities___block_invoke_3_cold_11()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

void __49__ENXPCConnection__xpcStartSelfReportWebSession___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  v1 = CUPrintNSError();
  LogPrintF_safe();
}

void __49__ENXPCConnection__xpcStartSelfReportWebSession___block_invoke_2_cold_1(uint64_t a1)
{
  v2 = ENErrorF();
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __49__ENXPCConnection__xpcStartSelfReportWebSession___block_invoke_2_cold_2()
{
  v0 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v1 = [v0 isSensitiveLoggingAllowed];

  if (v1 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {

    LogPrintF_safe();
  }
}

void __49__ENXPCConnection__xpcStartSelfReportWebSession___block_invoke_2_cold_3(uint64_t a1)
{
  v1 = *(*(*(a1 + 64) + 8) + 40);
  v2 = CUPrintNSError();
  LogPrintF_safe();
}

void __52__ENXPCConnection__xpcStartTestVerificationSession___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  v1 = CUPrintNSError();
  LogPrintF_safe();
}

void __52__ENXPCConnection__xpcStartTestVerificationSession___block_invoke_2_cold_1()
{
  v0 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v1 = [v0 isSensitiveLoggingAllowed];

  if (v1 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {

    LogPrintF_safe();
  }
}

void __52__ENXPCConnection__xpcStartTestVerificationSession___block_invoke_2_cold_2()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

void __53__ENXPCConnection__xpcFetchTestVerificationMetadata___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  v1 = CUPrintNSError();
  LogPrintF_safe();
}

void __53__ENXPCConnection__xpcFinishTestVerificationSession___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  v1 = CUPrintNSError();
  LogPrintF_safe();
}

void __53__ENXPCConnection__xpcFinishTestVerificationSession___block_invoke_2_cold_1()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

@end