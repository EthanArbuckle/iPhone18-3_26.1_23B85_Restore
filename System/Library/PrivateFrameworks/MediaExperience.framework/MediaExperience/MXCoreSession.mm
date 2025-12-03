@interface MXCoreSession
- (BOOL)allowsAirPlayBuffered;
- (BOOL)allowsAirPlayVideo;
- (BOOL)doesSessionConfigurationChangeRequireOutputUnmute:(id)unmute oldAudioMode:(id)mode;
- (BOOL)getIsPlayingVideoOutput;
- (BOOL)hasAudioTrack;
- (BOOL)isAirPlayCapableVideo;
- (BOOL)isEligibleForOutputMuting;
- (BOOL)isLongFormVideo;
- (BOOL)isMediaSession;
- (BOOL)requiresExclaveSensor;
- (BOOL)shouldAllowEnhancedDialogue;
- (BOOL)shouldAttemptSmartRoutingHijackForMusicApp;
- (BOOL)shouldSendSessionConfigurationInfoToVA;
- (BOOL)userPreferredInputPortIsBluetoothManagedAndHighQuality;
- (BOOL)willRouteToOnDemandVADOnActivation;
- (MXCoreSession)init;
- (NSSet)notificationsSubscribedTo;
- (NSString)badgeType;
- (id)additiveRoutingInfo;
- (id)copyCurrentActiveRoutes;
- (id)copyDetailedRouteDescription;
- (id)copyDetailedRouteDescriptionForContinuityScreenOutput:(id)output;
- (id)copyMXSessionList;
- (id)copyPreferredAvailableInputPortFromCache;
- (id)copyPreferredInputPortFromConnectedPorts:(id)ports;
- (id)copyUserPreferredInputPort;
- (int)sendSessionConfigurationInfoToVA;
- (int)setUpDefaultBehavioursForCategoryAtClientRequest;
- (int)setUpDefaultInterruptionStyleForCategoryAndMode;
- (int)updateInterruptionStyle:(unsigned int)style;
- (unint64_t)mxSessionListAddSession:(id)session;
- (void)dealloc;
- (void)reapplyDeviceSampleRateAndBufferSizeOnVADIfNeeded;
- (void)resetInterruptionFlags;
- (void)restoreSavedHWControlFlagsForClientThatDoesActuallyPlayAudio;
- (void)setBadgeType:(id)type;
- (void)setNotificationsSubscribedTo:(id)to;
- (void)subscribeToNotifications:(id)notifications;
- (void)updateAllowEnhancedDialogue;
- (void)updateApplicationStateAndPIDToInheritAppStateFrom;
- (void)updateCameraExtensionFlagsIfNeeded;
- (void)updatePreferredIOBufferDuration:(float)duration;
@end

@implementation MXCoreSession

- (id)copyMXSessionList
{
  v3 = objc_autoreleasePoolPush();
  [(NSLock *)[(MXCoreSession *)self mxSessionListLock] lock];
  allObjects = [(NSPointerArray *)[(MXCoreSession *)self mxSessionList] allObjects];
  [(NSLock *)[(MXCoreSession *)self mxSessionListLock] unlock];
  objc_autoreleasePoolPop(v3);
  return allObjects;
}

- (MXCoreSession)init
{
  v5.receiver = self;
  v5.super_class = MXCoreSession;
  v2 = [(MXCoreSessionBase *)&v5 init];
  if (v2)
  {
    v2->_mxSessionList = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
    v2->_mxSessionListLock = objc_alloc_init(MEMORY[0x1E696AD10]);
    v2->_sessionPropertiesLock = objc_alloc_init(MEMORY[0x1E696AD10]);
    objc_initWeak(&location, v2);
    [+[MXSessionManager sharedInstance](MXSessionManager mxCoreSessionListAddSession:"mxCoreSessionListAddSession:", objc_loadWeak(&location)];
    v2->_doesInterAppAudio = 0;
    v2->_notificationsSubscribedTo = objc_alloc_init(MEMORY[0x1E695DFD8]);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (int)setUpDefaultInterruptionStyleForCategoryAndMode
{
  [(MXCoreSessionBase *)self setMixesWithEveryone:0];
  [(MXCoreSessionBase *)self setInterruptionStyleSetByClient:0];
  if (![(MXCoreSessionBase *)self audioCategory])
  {
    goto LABEL_11;
  }

  if (CFEqual([(MXCoreSessionBase *)self audioCategory], @"UserInterfaceSoundEffects") || CFEqual([(MXCoreSessionBase *)self audioCategory], @"AmbientSound") || [+[MXSessionManager isSpeechDetectCategory:"isSpeechDetectCategory:"]
  {
    goto LABEL_5;
  }

  if (CFEqual([(MXCoreSessionBase *)self audioCategory], @"MediaPlayback") || CFEqual([(MXCoreSessionBase *)self audioCategory], @"MediaPlaybackNoSpeaker") || CFEqual([(MXCoreSessionBase *)self audioCategory], @"LiveAudio") || CFEqual([(MXCoreSessionBase *)self audioCategory], @"AudioProcessing") || CFEqual([(MXCoreSessionBase *)self audioCategory], @"SoloAmbientSound"))
  {
    goto LABEL_11;
  }

  if (CFEqual([(MXCoreSessionBase *)self audioCategory], @"Notice") || CFEqual([(MXCoreSessionBase *)self audioCategory], @"VoiceOver"))
  {
LABEL_15:
    [(MXCoreSessionBase *)self setMixesWithEveryone:1];
    v3 = 32;
    goto LABEL_12;
  }

  if (CFEqual([(MXCoreSessionBase *)self audioCategory], @"VoiceCommand") || CFEqual([(MXCoreSessionBase *)self audioCategory], @"VoiceCommand_WithBluetooth"))
  {
    goto LABEL_18;
  }

  if (CFEqual([(MXCoreSessionBase *)self audioCategory], @"VoiceCommandThatMixes") || CFEqual([(MXCoreSessionBase *)self audioCategory], @"VoiceCommandThatMixes_WithBluetooth"))
  {
    goto LABEL_15;
  }

  if (CFEqual([(MXCoreSessionBase *)self audioCategory], @"Record") || CFEqual([(MXCoreSessionBase *)self audioCategory], @"Record_WithBluetooth") || CFEqual([(MXCoreSessionBase *)self audioCategory], @"PlayAndRecord") || CFEqual([(MXCoreSessionBase *)self audioCategory], @"PlayAndRecord_WithBluetooth") || CFEqual([(MXCoreSessionBase *)self audioCategory], @"PlayAndRecord_NoBluetooth_DefaultToSpeaker") || CFEqual([(MXCoreSessionBase *)self audioCategory], @"PlayAndRecord_WithBluetooth_DefaultToSpeaker") || CFEqual([(MXCoreSessionBase *)self audioCategory], @"Multi") || CMSUtility_HasPhoneCallBehaviour(self))
  {
    goto LABEL_11;
  }

  if (CFEqual([(MXCoreSessionBase *)self audioCategory], @"Ringtone"))
  {
LABEL_18:
    v3 = 4;
    goto LABEL_12;
  }

  if (!CFEqual([(MXCoreSessionBase *)self audioCategory], @"Alarm"))
  {
    if (!CFEqual([(MXCoreSessionBase *)self audioCategory], @"RingtonePreview") && !CFEqual([(MXCoreSessionBase *)self audioCategory], @"FindMyPhone") && !CFEqual([(MXCoreSessionBase *)self audioCategory], @"WaterEjection") && !CFEqual([(MXCoreSessionBase *)self audioCategory], @"EmergencyAlert") && !CFEqual([(MXCoreSessionBase *)self audioCategory], @"EmergencyAlert_Muteable"))
    {
      if (CFEqual([(MXCoreSessionBase *)self audioCategory], @"Voicemail") || CFEqual([(MXCoreSessionBase *)self audioCategory], @"VoicemailGreeting"))
      {
        goto LABEL_11;
      }

      if (!CFEqual([(MXCoreSessionBase *)self audioCategory], @"FindMyAudioDevice"))
      {
        if (CFEqual([(MXCoreSessionBase *)self audioCategory], @"SystemSoundsAndHaptics"))
        {
LABEL_5:
          [(MXCoreSessionBase *)self setMixesWithEveryone:1];
          v3 = 16;
          goto LABEL_12;
        }

        if (!CFEqual([(MXCoreSessionBase *)self audioCategory], @"eARC"))
        {
          CFEqual([(MXCoreSessionBase *)self audioCategory], @"HearingTest");
        }

LABEL_11:
        v3 = 8;
        goto LABEL_12;
      }
    }

    goto LABEL_18;
  }

  if (CFEqual([(MXCoreSessionBase *)self audioMode], @"Sleep"))
  {
    v3 = 8;
  }

  else
  {
    v3 = 4;
  }

LABEL_12:
  [(MXCoreSession *)self updateInterruptionStyle:v3];
  return 0;
}

- (void)updateCameraExtensionFlagsIfNeeded
{
  v3 = MX_RunningBoardServices_CopyBundleExtensionPointID(self);
  -[MXCoreSession setIsCameraRecordingExtension:](self, "setIsCameraRecordingExtension:", [v3 isEqualToString:@"com.apple.securecapture"]);
}

- (void)updateApplicationStateAndPIDToInheritAppStateFrom
{
  v10 = *MEMORY[0x1E69E9840];
  [(MXCoreSessionBase *)self setApplicationState:0];
  v3 = [MXSystemController getPIDToInheritAppStateFromForPID:[(NSNumber *)[(MXCoreSessionBase *)self clientPID] intValue]];
  if (v3 != [(MXCoreSession *)self pidToInheritAppStateFrom])
  {
    pidToInheritAppStateFrom = [(MXCoreSession *)self pidToInheritAppStateFrom];
    [(MXCoreSession *)self setPidToInheritAppStateFrom:v3];
    if ([(MXCoreSession *)self pidToInheritAppStateFrom]>= 1)
    {
      MX_RunningBoardServices_StartMonitoringForPID([(MXCoreSession *)self pidToInheritAppStateFrom]);
    }

    if (pidToInheritAppStateFrom >= 1)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if ([(MXCoreSession *)self pidToInheritAppStateFrom:v8]< 1)
  {
    intValue = [(NSNumber *)[(MXCoreSessionBase *)self clientPID] intValue];
  }

  else
  {
    intValue = [(MXCoreSession *)self pidToInheritAppStateFrom];
  }

  [(MXCoreSessionBase *)self setApplicationState:MX_RunningBoardServices_GetApplicationStateForPID(intValue, 0)];
  v7 = *MEMORY[0x1E69E9840];
}

- (int)setUpDefaultBehavioursForCategoryAtClientRequest
{
  LocalSessionPriority = CMSM_GetLocalSessionPriority(self, 1);
  mixesWithEveryone = [(MXCoreSessionBase *)self mixesWithEveryone];
  setUpDefaultInterruptionStyleForCategoryAndMode = [(MXCoreSession *)self setUpDefaultInterruptionStyleForCategoryAndMode];
  if (!setUpDefaultInterruptionStyleForCategoryAndMode && [(MXCoreSessionBase *)self isActive])
  {
    mixesWithEveryone2 = [(MXCoreSessionBase *)self mixesWithEveryone];
    if (!mixesWithEveryone || mixesWithEveryone2)
    {
      cmsTryToTakeControl(self);
    }

    else
    {
      cmsBeginInterruptionGuts(self, 0, 2);
    }

    CMSUtility_RouteToPreferredRouteIfRequired(self, LocalSessionPriority, 5);
  }

  return setUpDefaultInterruptionStyleForCategoryAndMode;
}

- (id)additiveRoutingInfo
{
  v5.receiver = self;
  v5.super_class = MXCoreSession;
  v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{-[MXCoreSessionBase additiveRoutingInfo](&v5, sel_additiveRoutingInfo)}];
  if ([(MXCoreSession *)self activationContext])
  {
    [v3 setObject:-[MXCoreSession activationContext](self forKey:{"activationContext"), 0x1F2897550}];
  }

  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", -[MXCoreSession clientPriority](self, "clientPriority")), 0x1F2897530}];
  [(MXCoreSessionBase *)self populateAdditiveRoutingInfoWithRouteControlFeatures:v3];
  [(MXCoreSessionBase *)self populateAdditiveRoutingInfoWithEchoCancelledInput:v3];
  [(MXCoreSessionBase *)self populateAdditiveRoutingInfoWithBTRecordingCustomizations:v3];
  [(MXCoreSessionBase *)self populateAdditiveRoutingInfoWithDefaultBuiltInRouteCustomization:v3];
  if ([(MXCoreSession *)self allowedPortTypes])
  {
    [v3 setObject:-[MXCoreSession allowedPortTypes](self forKey:{"allowedPortTypes"), 0x1F28972B0}];
  }

  [(MXCoreSessionBase *)self populateAdditiveRoutingInfoWithFollowingVADInformation:v3 inputOnly:CMSMUtility_IsCategoryInputOnly([(MXCoreSessionBase *)self audioCategory])];
  return v3;
}

- (int)sendSessionConfigurationInfoToVA
{
  v9 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled() && ![(MXCoreSession *)self shouldSendSessionConfigurationInfoToVA])
  {
    if (dword_1EB75DE40)
    {
      v8 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    result = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MXCoreSession;
    result = [(MXCoreSessionBase *)&v6 sendSessionConfigurationInfoToVA:[(MXCoreSession *)self additiveRoutingInfo]];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)willRouteToOnDemandVADOnActivation
{
  v3.receiver = self;
  v3.super_class = MXCoreSession;
  return [(MXCoreSessionBase *)&v3 willRouteToOnDemandVADOnActivation:[(MXCoreSession *)self additiveRoutingInfo]];
}

- (BOOL)shouldSendSessionConfigurationInfoToVA
{
  v5.receiver = self;
  v5.super_class = MXCoreSession;
  shouldSendSessionConfigurationInfoToVA = [(MXCoreSessionBase *)&v5 shouldSendSessionConfigurationInfoToVA];
  if (shouldSendSessionConfigurationInfoToVA)
  {
    LOBYTE(shouldSendSessionConfigurationInfoToVA) = [(MXCoreSession *)self willRouteToOnDemandVADOnActivation];
  }

  return shouldSendSessionConfigurationInfoToVA;
}

- (BOOL)shouldAttemptSmartRoutingHijackForMusicApp
{
  isSharedAVAudioSessionInstance = [(NSString *)[(MXCoreSessionBase *)self displayID] isEqualToString:@"com.apple.Music"];
  if (isSharedAVAudioSessionInstance)
  {
    isSharedAVAudioSessionInstance = [(MXCoreSession *)self isSharedAVAudioSessionInstance];
    if (isSharedAVAudioSessionInstance)
    {
      if ([(MXCoreSessionBase *)self hasAudioCategory:@"MediaPlayback"])
      {
        LOBYTE(isSharedAVAudioSessionInstance) = 1;
      }

      else
      {

        LOBYTE(isSharedAVAudioSessionInstance) = [(MXCoreSessionBase *)self hasAudioCategory:@"MediaPlaybackNoSpeaker"];
      }
    }
  }

  return isSharedAVAudioSessionInstance;
}

- (void)reapplyDeviceSampleRateAndBufferSizeOnVADIfNeeded
{
  v18 = *MEMORY[0x1E69E9840];
  if (![(MXCoreSession *)self preferredOutputSampleRateSetByClient])
  {
    [(MXCoreSession *)self preferredOutputSampleRate];
    if (v4 != 0.0)
    {
      PreferredIOBufferDuration = CMSUtility_GetPreferredIOBufferDuration(self, v3);
      if (*&PreferredIOBufferDuration == 0.0)
      {
        if ([(MXCoreSession *)self preferredIOBufferFrames])
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          [(MXCoreSession *)self preferredOutputSampleRate:v16];
          v8 = v7;
          PreferredIOBufferFrames = CMSUtility_GetPreferredIOBufferFrames(self, v9);
          v12 = CMSUtility_GetPreferredIOBufferDuration(self, v11);
          v13 = *&v12;
          IsCategoryInputOnly = CMSMUtility_IsCategoryInputOnly([(MXCoreSessionBase *)self audioCategory]);
          cmsSetDeviceSampleRateAndBufferSize(self, PreferredIOBufferFrames, IsCategoryInputOnly, v8, v13);
        }
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)isMediaSession
{
  v3 = [(MXCoreSessionBase *)self hasAudioCategory:@"MediaPlayback"]|| [(MXCoreSessionBase *)self hasAudioCategory:@"MediaPlaybackNoSpeaker"]|| [(MXCoreSessionBase *)self hasAudioCategory:@"Audio/Video"]|| [(MXCoreSessionBase *)self hasAudioCategory:@"SoloAmbientSound"]|| [(MXCoreSessionBase *)self hasAudioCategory:@"AmbientSound"];
  if ([(MXCoreSessionBase *)self hasAudioMode:@"VoicePrompt"]|| [(MXCoreSessionBase *)self hasAudioMode:@"Measurement"]|| [(MXCoreSessionBase *)self hasAudioMode:@"Raw"])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = ![(MXCoreSessionBase *)self hasAudioMode:@"LowLatency"];
  }

  return v3 & v4;
}

- (id)copyDetailedRouteDescription
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager copyDetailedRouteDescription:"copyDetailedRouteDescription:", CMSUtility_GetCurrentOutputVADID(self)];
  v4 = [v3 mutableCopy];

  if ([(MXCoreSessionBase *)self hasInput])
  {
    v5 = [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager copyDetailedRouteDescription:"copyDetailedRouteDescription:", CMSUtility_GetCurrentInputVADID(self)];
    v6 = [v5 objectForKey:@"RouteDetailedDescription_Inputs"];
    if (v6)
    {
      [v4 setObject:v6 forKey:@"RouteDetailedDescription_Inputs"];
    }

    if (!v5)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (vaemIsContinuityScreenOutputPortPresentInConnectedOutputPorts())
  {
    v8 = [(MXCoreSession *)self copyDetailedRouteDescriptionForContinuityScreenOutput:v4];

    v4 = v8;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v4;
}

- (NSString)badgeType
{
  [(NSLock *)[(MXCoreSession *)self sessionPropertiesLock] lock];
  v3 = self->_badgeType;
  [(NSLock *)[(MXCoreSession *)self sessionPropertiesLock] unlock];
  return v3;
}

- (void)dealloc
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  [+[MXSessionManager sharedInstance](MXSessionManager mxCoreSessionListAddSession:"mxCoreSessionListAddSession:", 0];

  self->_mxSessionList = 0;
  self->_mxSessionListLock = 0;

  self->_sessionPropertiesLock = 0;
  self->_vibrationData = 0;

  self->_defaultVPChatMode = 0;
  self->_overridePortsList = 0;

  self->_subPortPreferences = 0;
  self->_supportedOutputChannelLayouts = 0;

  self->_activeRoutesWhenInterrupted = 0;
  self->_allowedRouteTypes = 0;

  self->_allowedPortTypes = 0;
  self->_aggregateDeviceClockUID = 0;
  if (self->_extendBackgroundAppAssertionTimer)
  {
    v4 = MXGetAssertionLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if ([(MXCoreSessionBase *)self playbackAssertionRef])
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v6 = [(NSDictionary *)self->_hostProcessPlaybackAssertions count];
      v17 = "-MXCoreSession_Embedded-";
      v18 = 2082;
      *buf = 136447234;
      v19 = "[MXCoreSession dealloc]";
      v20 = 1024;
      v21 = 138;
      v22 = 2114;
      v23 = v5;
      v24 = 2048;
      v25 = v6;
      _os_log_impl(&dword_1B17A2000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s:%i Extend background app assertion timer is running playbackAssertion exists: %{public}@, host process playbackassertion count: %lu", buf, 0x30u);
    }

    dispatch_source_cancel(self->_extendBackgroundAppAssertionTimer);

    self->_extendBackgroundAppAssertionTimer = 0;
  }

  interruptSessionWithoutValidAssertionsTimer = self->_interruptSessionWithoutValidAssertionsTimer;
  if (interruptSessionWithoutValidAssertionsTimer)
  {
    dispatch_source_cancel(interruptSessionWithoutValidAssertionsTimer);

    self->_interruptSessionWithoutValidAssertionsTimer = 0;
  }

  self->_activationContext = 0;
  self->_vpBlockConfiguration = 0;
  sessionDeactivateTimer = self->_sessionDeactivateTimer;
  if (sessionDeactivateTimer)
  {
    dispatch_source_cancel(sessionDeactivateTimer);

    self->_sessionDeactivateTimer = 0;
    if (dword_1EB75DE40)
    {
      v15 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  sessionAssertionAuditTimer = self->_sessionAssertionAuditTimer;
  if (sessionAssertionAuditTimer)
  {
    dispatch_source_cancel(sessionAssertionAuditTimer);

    self->_sessionAssertionAuditTimer = 0;
  }

  self->_excludedPortsList = 0;
  self->_cameraParameters = 0;

  self->_duckingSourceList = 0;
  self->_preferredHardwareFormat = 0;

  self->_waitingForRemoteInterruptionDoneIdentifier = 0;
  self->_siriInputDeviceUUID = 0;

  self->_desiredInputGainScalar = 0;
  self->_parentProcessAuditTokens = 0;

  self->_hostProcessPlaybackAssertions = 0;
  self->_hostProcessAttribution = 0;

  self->_powerProfile = 0;
  self->_preferredPersistentRoute = 0;

  self->_notificationsSubscribedTo = 0;
  self->_badgeType = 0;
  v11 = MXGetSerialQueue();
  MXDispatchAsync("[MXCoreSession dealloc]", "MXCoreSession.m", 253, 0, 0, v11, &__block_literal_global_13);
  v13.receiver = self;
  v13.super_class = MXCoreSession;
  [(MXCoreSessionBase *)&v13 dealloc];
  objc_autoreleasePoolPop(v3);
  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __24__MXCoreSession_dealloc__block_invoke()
{
  v0 = +[MXSessionManager sharedInstance];

  return [(MXSessionManager *)v0 updateNeroScreenState:0 suspendScreen:1];
}

- (id)copyDetailedRouteDescriptionForContinuityScreenOutput:(id)output
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = [output mutableCopy];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [output objectForKey:?];
  v5 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) mutableCopy];
        if (vaeGetPortTypeFromPortID([objc_msgSend(v9 objectForKey:{@"RouteDetailedDescription_ID", "unsignedIntValue"}]) == 1885565807)
        {
          [v9 setObject:@"Speaker" forKey:@"RouteDetailedDescription_Name"];
          [v9 setObject:@"Speaker" forKey:@"RouteDetailedDescription_UID"];
        }

        [v4 addObject:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  [v12 setObject:v4 forKey:@"RouteDetailedDescription_Outputs"];

  v10 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)shouldAllowEnhancedDialogue
{
  if (CMSMDeviceState_ItsAnAppleTV())
  {
    if (![(MXCoreSessionBase *)self hasAudioMode:@"MoviePlayback"])
    {
      LOBYTE(prefersEnhancedDialogue) = 0;
      return prefersEnhancedDialogue;
    }

LABEL_6:
    LOBYTE(prefersEnhancedDialogue) = ![(MXCoreSession *)self isAnyPlayingContentIneligibleForEnhancedDialogue];
    return prefersEnhancedDialogue;
  }

  prefersEnhancedDialogue = [(MXCoreSession *)self prefersEnhancedDialogue];
  if (prefersEnhancedDialogue)
  {
    prefersEnhancedDialogue = [(MXCoreSessionBase *)self hasAudioMode:@"MoviePlayback"];
    if (prefersEnhancedDialogue)
    {
      goto LABEL_6;
    }
  }

  return prefersEnhancedDialogue;
}

- (void)updateAllowEnhancedDialogue
{
  v6 = *MEMORY[0x1E69E9840];
  if (![(MXCoreSession *)self allowEnhancedDialogueWasSetByClient])
  {
    allowEnhancedDialogue = [(MXCoreSession *)self allowEnhancedDialogue];
    [(MXCoreSession *)self setAllowEnhancedDialogue:[(MXCoreSession *)self shouldAllowEnhancedDialogue]];
    if (allowEnhancedDialogue != [(MXCoreSession *)self allowEnhancedDialogue])
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMSMNotificationUtility_PostAllowEnhancedDialogueDidChange(self);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)updatePreferredIOBufferDuration:(float)duration
{
  [(MXCoreSession *)self preferredIOBufferDuration];
  if (*&v5 != duration)
  {
    *&v5 = duration;

    [(MXCoreSession *)self setPreferredIOBufferDuration:v5];
  }
}

- (void)setNotificationsSubscribedTo:(id)to
{
  [(NSLock *)[(MXCoreSession *)self sessionPropertiesLock] lock];

  self->_notificationsSubscribedTo = to;
  sessionPropertiesLock = [(MXCoreSession *)self sessionPropertiesLock];

  [(NSLock *)sessionPropertiesLock unlock];
}

- (NSSet)notificationsSubscribedTo
{
  [(NSLock *)[(MXCoreSession *)self sessionPropertiesLock] lock];
  v3 = self->_notificationsSubscribedTo;
  [(NSLock *)[(MXCoreSession *)self sessionPropertiesLock] unlock];
  return v3;
}

- (void)subscribeToNotifications:(id)notifications
{
  v17 = *MEMORY[0x1E69E9840];
  [(NSLock *)[(MXCoreSession *)self sessionPropertiesLock] lock];
  v5 = [MEMORY[0x1E695DFA8] setWithSet:self->_notificationsSubscribedTo];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [notifications countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(notifications);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v5 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [notifications countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  self->_notificationsSubscribedTo = [objc_alloc(MEMORY[0x1E695DFD8]) initWithSet:v5];
  [(NSLock *)[(MXCoreSession *)self sessionPropertiesLock] unlock];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)setBadgeType:(id)type
{
  v12 = *MEMORY[0x1E69E9840];
  [(NSLock *)[(MXCoreSession *)self sessionPropertiesLock] lock];
  if ([(NSString *)self->_badgeType isEqualToString:type])
  {
    sessionPropertiesLock = [(MXCoreSession *)self sessionPropertiesLock];
    v6 = *MEMORY[0x1E69E9840];

    [(NSLock *)sessionPropertiesLock unlock];
  }

  else
  {
    badgeType = self->_badgeType;

    self->_badgeType = type;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(NSLock *)[(MXCoreSession *)self sessionPropertiesLock:v10] unlock];
    if (badgeType)
    {
      CMSMNotificationUtility_PostBadgeTypeDidChange(self);
    }

    v9 = *MEMORY[0x1E69E9840];
  }
}

- (unint64_t)mxSessionListAddSession:(id)session
{
  objc_initWeak(&location, session);
  [(NSLock *)[(MXCoreSession *)self mxSessionListLock] lock];
  [(NSPointerArray *)[(MXCoreSession *)self mxSessionList] addPointer:objc_loadWeak(&location)];
  [(NSPointerArray *)[(MXCoreSession *)self mxSessionList] compact];
  v4 = [(NSPointerArray *)[(MXCoreSession *)self mxSessionList] count];
  [(NSLock *)[(MXCoreSession *)self mxSessionListLock] unlock];
  objc_destroyWeak(&location);
  return v4;
}

- (int)updateInterruptionStyle:(unsigned int)style
{
  if (style == 2)
  {
    styleCopy = 8;
  }

  else
  {
    styleCopy = style;
  }

  v5 = -12981;
  if (styleCopy <= 0x20)
  {
    if (((1 << styleCopy) & 0x10112) == 0)
    {
      if (styleCopy != 32)
      {
        goto LABEL_7;
      }

      if (![(MXCoreSession *)self duckToLevelScalarSetByClient])
      {
        LODWORD(v10) = 1045220557;
        [(MXCoreSession *)self setDuckToLevelScalar:v10];
      }

      if (![(MXCoreSession *)self duckToLevelDBSetByClient])
      {
        LODWORD(v11) = -1038090240;
        [(MXCoreSession *)self setDuckToLevelDB:v11];
      }

      if (![(MXCoreSession *)self unduckToLevelScalarSetByClient])
      {
        LODWORD(v12) = 1045220557;
        [(MXCoreSession *)self setUnduckToLevelScalar:v12];
      }

      if (![(MXCoreSession *)self duckFadeDurationSetByClient])
      {
        LODWORD(v13) = 0.5;
        [(MXCoreSession *)self setDuckFadeDuration:v13];
      }

      if (![(MXCoreSession *)self unduckFadeDurationSetByClient])
      {
        LODWORD(v14) = 0.5;
        [(MXCoreSession *)self setUnduckFadeDuration:v14];
      }

      if ([(MXCoreSessionBase *)self audioCategory]&& CFEqual([(MXCoreSessionBase *)self audioCategory], @"VoiceOver"))
      {
        *&v15 = CMSMUtility_GetVoiceOverDuckFadeDuration();
        [(MXCoreSession *)self setDuckFadeDuration:v15];
        *&v16 = CMSMUtility_GetVoiceOverDuckFadeDuration();
        [(MXCoreSession *)self setUnduckFadeDuration:v16];
      }
    }

    [(MXCoreSessionBase *)self setInterruptionStyle:styleCopy];
    [(MXCoreSessionBase *)self setMixesWithEveryone:((style - 16) & 0xFFFFFFEF) == 0];
    v5 = 0;
  }

LABEL_7:
  CMSMNP_UpdateNowPlayingAppForNewInterruptionStyle(self);
  selfCopy = self;
  v8 = MXGetNotificationSenderQueue();
  MXDispatchAsyncFunction("[MXCoreSession updateInterruptionStyle:]", "MXCoreSession.m", 1143, 0, 0, v8, self, CMSMNotificationUtility_PostSessionAudioBehaviourDidChange_f);
  return v5;
}

- (void)resetInterruptionFlags
{
  [(MXCoreSession *)self setWaitingToResumeWhenDeviceUnlocksOrInForeground:0];

  [(MXCoreSession *)self setWaitingForEndInterruptionWhenDeviceUnlocksOrInForeground:0];
}

- (BOOL)isEligibleForOutputMuting
{
  v3 = +[MXSessionManager sharedInstance];
  audioCategory = [(MXCoreSessionBase *)self audioCategory];
  audioMode = [(MXCoreSessionBase *)self audioMode];

  return [(MXSessionManager *)v3 isSessionConfigurationEligibleForOutputMuting:audioCategory audioMode:audioMode];
}

- (BOOL)hasAudioTrack
{
  v19 = *MEMORY[0x1E69E9840];
  copyMXSessionList = [(MXCoreSession *)self copyMXSessionList];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [copyMXSessionList countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v3)
  {
LABEL_15:

LABEL_16:
    result = 1;
    goto LABEL_17;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v15;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v15 != v6)
      {
        objc_enumerationMutation(copyMXSessionList);
      }

      v8 = *(*(&v14 + 1) + 8 * i);
      if ([v8 getClientType] == 3)
      {
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if ([v8 getAudioTrackStatus] == 2)
        {
          goto LABEL_15;
        }

        v5 = 1;
      }
    }

    v4 = [copyMXSessionList countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v4);

  if ((v5 & 1) == 0)
  {
    goto LABEL_16;
  }

  result = 0;
LABEL_17:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)doesSessionConfigurationChangeRequireOutputUnmute:(id)unmute oldAudioMode:(id)mode
{
  isOutputMuted = CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy();
  if (isOutputMuted)
  {
    isOutputMuted = [(MXCoreSession *)self isOutputMuted];
    if (isOutputMuted)
    {
      isOutputMuted = [+[MXSessionManager sharedInstance](MXSessionManager isSessionConfigurationEligibleForOutputMuting:"isSessionConfigurationEligibleForOutputMuting:audioMode:" audioMode:unmute, mode];
      if (isOutputMuted)
      {
        LOBYTE(isOutputMuted) = ![+[MXSessionManager sharedInstance](MXSessionManager isSessionConfigurationEligibleForOutputMuting:"isSessionConfigurationEligibleForOutputMuting:audioMode:" audioMode:[(MXCoreSessionBase *)self audioCategory], [(MXCoreSessionBase *)self audioMode]];
      }
    }
  }

  return isOutputMuted;
}

- (BOOL)requiresExclaveSensor
{
  if ([(MXCoreSessionBase *)self isTheAssistant]&& [(MXCoreSessionBase *)self isUsingBuiltInMicForRecording])
  {
    LOBYTE(isRecording) = 1;
  }

  else
  {
    isRecording = [(MXCoreSessionBase *)self isRecording];
    if (isRecording)
    {
      if ([(MXCoreSessionBase *)self isRecordingMuted])
      {
        LOBYTE(isRecording) = 0;
      }

      else
      {

        LOBYTE(isRecording) = [(MXCoreSessionBase *)self isUsingBuiltInMic];
      }
    }
  }

  return isRecording;
}

- (id)copyCurrentActiveRoutes
{
  v8 = 0;
  CurrentAudioDestination = CMSUtility_GetCurrentAudioDestination(self);
  VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName([(MXCoreSessionBase *)self audioCategory]);
  VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName([(MXCoreSessionBase *)self audioMode]);
  v6 = vaemCopyActivePortsListForRouteConfigurationScopeAndDevice(VADCategoryFromFigCategoryName, VADModeFromFigModeName, [(MXCoreSession *)self activationContext], [(MXCoreSession *)self allowedPortTypes], [(MXCoreSession *)self prefersBluetoothHighQualityContentCapture], 0, CurrentAudioDestination);
  if ([(__CFArray *)v6 count])
  {
    CMSMVAUtility_CopyRoutesInfoFromInputAndOutputPorts(v6, 0, &v8, 0, 0, 0);
  }

  return v8;
}

- (BOOL)allowsAirPlayVideo
{
  [(MXCoreSessionBase *)self audioCategory];
  [(MXCoreSessionBase *)self audioMode];
  v3 = FigCFEqual();
  if (v3)
  {
    if (FigCFEqual() || FigCFEqual() || (v3 = FigCFEqual()) != 0)
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (BOOL)allowsAirPlayBuffered
{
  [(MXCoreSessionBase *)self audioCategory];
  [(MXCoreSessionBase *)self displayID];
  return ![(MXCoreSessionBase *)self mixesWithEveryone]&& ![(MXCoreSession *)self prefersConcurrentAirPlayAudio]&& !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual();
}

- (id)copyPreferredInputPortFromConnectedPorts:(id)ports
{
  v22 = *MEMORY[0x1E69E9840];
  if ([ports objectForKey:@"RouteUID"])
  {
    VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName([(MXCoreSessionBase *)self audioCategory]);
    VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName([(MXCoreSessionBase *)self audioMode]);
    v6 = vaemCopyConnectedInputPortsForDefaultVADFromDeviceListWithRouteConfiguration(VADCategoryFromFigCategoryName, VADModeFromFigModeName, [(MXCoreSession *)self allowedPortTypes], [(MXCoreSession *)self prefersBluetoothHighQualityContentCapture]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = vaeCopyDeviceIdentifierFromVADPort([v11 unsignedIntValue]);
          if (FigCFEqual())
          {
            if (dword_1EB75DE40)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v13 = v11;

            goto LABEL_15;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_15:
  }

  else
  {
    v13 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)copyPreferredAvailableInputPortFromCache
{
  v14 = *MEMORY[0x1E69E9840];
  if (CMSMUtility_IsInputAllowedForCategory([(MXCoreSessionBase *)self audioCategory]))
  {
    v3 = CMSUtility_CopyBundleID(self);
    v4 = [+[MXUserPreferredInputRouteCache sharedInstance](MXUserPreferredInputRouteCache copyUserPreferredRoute:"copyUserPreferredRoute:", v3];
    if (v4)
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v6 = [(MXCoreSession *)self copyPreferredInputPortFromConnectedPorts:v4, v12, v13];
      if (v6)
      {
        goto LABEL_15;
      }
    }

    if (dword_1EB75DE40)
    {
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v8 = [+[MXUserPreferredInputRouteCache copyUserPreferredRoute:v12], "copyUserPreferredRoute:", 0];
    if (v8)
    {
      v6 = [(MXCoreSession *)self copyPreferredInputPortFromConnectedPorts:v8];
      if (v6 || !dword_1EB75DE40)
      {
        goto LABEL_14;
      }

      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v6 = 0;
LABEL_14:

LABEL_15:
    goto LABEL_16;
  }

  v6 = 0;
LABEL_16:
  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)copyUserPreferredInputPort
{
  v10 = *MEMORY[0x1E69E9840];
  copyPreferredAvailableInputPortFromCache = [(MXCoreSession *)self copyPreferredAvailableInputPortFromCache];
  v3 = copyPreferredAvailableInputPortFromCache;
  if (!copyPreferredAvailableInputPortFromCache)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  unsignedIntValue = [copyPreferredAvailableInputPortFromCache unsignedIntValue];
  v5 = unsignedIntValue;
  if (CMSMVAUtility_IsInputPortBluetoothMicrophone(unsignedIntValue) && !CMSMVAUtility_ShouldBTPortBeTreatedAsInEar(v5))
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_7;
  }

  v6 = v3;
LABEL_8:

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)userPreferredInputPortIsBluetoothManagedAndHighQuality
{
  prefersBluetoothHighQualityContentCapture = [(MXCoreSession *)self prefersBluetoothHighQualityContentCapture];
  if (prefersBluetoothHighQualityContentCapture)
  {
    copyPreferredAvailableInputPortFromCache = [(MXCoreSession *)self copyPreferredAvailableInputPortFromCache];
    v5 = -[MXAudioAccessoryServices isPortManaged:](+[MXAudioAccessoryServices sharedInstance](MXAudioAccessoryServices, "sharedInstance"), "isPortManaged:", [copyPreferredAvailableInputPortFromCache unsignedIntValue]);

    LOBYTE(prefersBluetoothHighQualityContentCapture) = v5;
  }

  return prefersBluetoothHighQualityContentCapture;
}

- (BOOL)getIsPlayingVideoOutput
{
  v13 = *MEMORY[0x1E69E9840];
  copyMXSessionList = [(MXCoreSession *)self copyMXSessionList];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [copyMXSessionList countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(copyMXSessionList);
        }

        if ([*(*(&v8 + 1) + 8 * i) getIsPlayingVideoOutput])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [copyMXSessionList countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)isLongFormVideo
{
  if ([(MXCoreSession *)self routeSharingPolicy]== 3 || (v3 = [+[MXSessionManager isLongFormVideoApp:"isLongFormVideoApp:"])
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (BOOL)isAirPlayCapableVideo
{
  if (![(MXCoreSession *)self isLongFormVideo]&& ![(MXCoreSessionBase *)self hasAudioMode:@"MoviePlayback"])
  {
    if ([(MXCoreSession *)self routeSharingPolicy]!= 1)
    {
      LOBYTE(getIsPlayingVideoOutput) = 0;
      return getIsPlayingVideoOutput;
    }

    getIsPlayingVideoOutput = [(MXCoreSession *)self getIsPlayingVideoOutput];
    if (!getIsPlayingVideoOutput)
    {
      return getIsPlayingVideoOutput;
    }
  }

  LOBYTE(getIsPlayingVideoOutput) = 1;
  return getIsPlayingVideoOutput;
}

- (void)restoreSavedHWControlFlagsForClientThatDoesActuallyPlayAudio
{
  v5 = *MEMORY[0x1E69E9840];
  if (![(MXCoreSession *)self hwControlFlags])
  {
    [(MXCoreSession *)self setHwControlFlags:[(MXCoreSession *)self savedHWControlFlagsForClientThatDoesNotActuallyPlayAudio]];
    [(MXCoreSession *)self setSavedHWControlFlagsForClientThatDoesNotActuallyPlayAudio:0];
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end