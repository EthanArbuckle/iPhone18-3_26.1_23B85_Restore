@interface MXSystemController
+ (BOOL)allowBluetoothAccessoryToRequestAudioRoute;
+ (BOOL)getCanBeNowPlayingAppForPID:(int)d;
+ (BOOL)isAppAllowedToInitiatePlayback:(id)playback;
+ (id)copyMXSystemControllerList:(BOOL)list;
+ (int)getPIDForAnyAppThatWantsVolumeChanges;
+ (int)getPIDToInheritAppStateFromForPID:(int)d;
+ (void)dumpInfoOfMXSystemControllers;
+ (void)initialize;
+ (void)mxSystemControllerListAddInstance:(id)instance isSidekick:(BOOL)sidekick;
+ (void)notifyAll:(id)all payload:(id)payload dontPostIfSuspended:(BOOL)suspended remoteDeviceID:(id)d;
+ (void)updateMXSystemControllerList;
- (BOOL)isAppAllowedToInitiatePlayback:(id)playback;
- (BOOL)isSomeoneRecording;
- (BOOL)phoneCallExists;
- (BOOL)someLongFormVideoClientIsActiveOverAirPlayVideo;
- (BOOL)someLongFormVideoClientIsPlaying;
- (BOOL)someLongFormVideoClientIsPlayingOverAirPlayVideo;
- (BOOL)someSharePlayCapableCallSessionIsActive;
- (MXSystemController)initWithPID:(int)d remoteDeviceID:(id)iD;
- (id)info;
- (int)allowAppsToInitiatePlayback:(id)playback clientType:(id)type isTemporary:(BOOL)temporary;
- (int)applyPIDToInheritAppStateFrom:(const void *)from;
- (int)clearUplinkMutedCache;
- (int)copyAttributeForKey:(id)key withValueOut:(void *)out;
- (int)copyAttributeForKeyInternal:(id)internal withValueOut:(void *)out;
- (int)copySessionIDsWithMuteValue:(id *)value muteValue:(BOOL *)muteValue;
- (int)getAudioSessionID:(unsigned int *)d forAttributedPID:(int)iD;
- (int)getInputMute:(id *)mute outMuteValue:(BOOL *)value;
- (int)getVolumeButtonDelta:(id)delta outVolumeDelta:(float *)volumeDelta;
- (int)grantMediaEndowmentWithEnvironmentID:(id)d endowmentPayload:(id)payload;
- (int)performVolumeOperation:(unsigned int)operation volume:(float)volume category:(id)category mode:(id)mode routeName:(id)name routeDeviceIdentifier:(id)identifier routeSubtype:(id)subtype outVolume:(float *)self0 outSequenceNumber:(int64_t *)self1 outMuted:(BOOL *)self2 outCategoryCopy:(id *)self3 outModeCopy:(id *)self4;
- (int)performVolumeOperation:(unsigned int)operation volume:(float)volume category:(id)category mode:(id)mode routeName:(id)name routeDeviceIdentifier:(id)identifier routeSubtype:(id)subtype rampUpDuration:(float)self0 rampDownDuration:(float)self1 outVolume:(float *)self2 outSequenceNumber:(int64_t *)self3 outMuted:(BOOL *)self4 outCategoryCopy:(id *)self5 outModeCopy:(id *)self6;
- (int)performVolumeOperation:(unsigned int)operation volume:(float)volume category:(id)category mode:(id)mode routeName:(id)name routeDeviceIdentifier:(id)identifier routeSubtype:(id)subtype rampUpDuration:(float)self0 rampDownDuration:(float)self1 outVolume:(float *)self2 outSequenceNumber:(int64_t *)self3 outMuted:(BOOL *)self4 outCategoryCopy:(id *)self5 outModeCopy:(id *)self6 retainFullMute:(BOOL)self7;
- (int)performVolumeOperation:(unsigned int)operation volume:(float)volume category:(id)category mode:(id)mode routeName:(id)name routeDeviceIdentifier:(id)identifier routeSubtype:(id)subtype rampUpwardDuration:(id)self0 rampDownwardDuration:(id)self1 outVolume:(float *)self2 outSequenceNumber:(int64_t *)self3 outMuted:(BOOL *)self4 outCategoryCopy:(id *)self5 outModeCopy:(id *)self6;
- (int)revokeMediaEndowmentWithEnvironmentID:(id)d;
- (int)setAttributeForKey:(id)key andValue:(const void *)value;
- (int)setAttributeForKeyInternal:(id)internal andValue:(const void *)value;
- (int)setInputMute:(id *)mute muteValue:(BOOL)value;
- (int)toggleInputMute;
- (void)applyCanBeNowPlayingApp:(const void *)app;
- (void)dealloc;
- (void)volumeCategoryAndMode:(id)mode mode:(id)a4 outCategoryCopy:(id *)copy outModeCopy:(id *)modeCopy;
@end

@implementation MXSystemController

- (id)info
{
  if ([(MXSystemController *)self remoteDeviceID])
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<MXSystemController: %@ PID=%d RemoteDeviceID=%@, listOfNotificationSubscriptions=%@>", -[MXSystemController displayID](self, "displayID"), -[MXSystemController clientPID](self, "clientPID"), -[MXSystemController remoteDeviceID](self, "remoteDeviceID"), -[MXSystemController notificationsSubscribedTo](self, "notificationsSubscribedTo"), v10, v11];
  }

  if (MX_FeatureFlags_IsAirPlayDaemonEnabled() && [(MXSystemController *)self remoteDeviceIDs])
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<MXSystemController: %@ PID=%d RemoteDeviceIDs=%@, listOfNotificationSubscriptions=%@>", -[MXSystemController displayID](self, "displayID"), -[MXSystemController clientPID](self, "clientPID"), -[MXSystemController remoteDeviceIDs](self, "remoteDeviceIDs"), -[MXSystemController notificationsSubscribedTo](self, "notificationsSubscribedTo"), v10, v11];
  }

  v4 = MEMORY[0x1E696AEC0];
  displayID = [(MXSystemController *)self displayID];
  clientPID = [(MXSystemController *)self clientPID];
  pidToInheritAppStateFrom = [(MXSystemController *)self pidToInheritAppStateFrom];
  if ([(MXSystemController *)self appWantsVolumeChanges])
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  if ([(MXSystemController *)self hasEntitlementToEnableWombat])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  return [v4 stringWithFormat:@"<MXSystemController: %@ PID=%d InheritingFrom=%d wantsVolumeChanges=%s hasEntitlementToEnableWombat=%@, listOfNotificationSubscriptions=%@>", displayID, clientPID, pidToInheritAppStateFrom, v8, v9, -[MXSystemController notificationsSubscribedTo](self, "notificationsSubscribedTo")];
}

+ (int)getPIDForAnyAppThatWantsVolumeChanges
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MXSystemController copyMXSystemControllerList:0];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if (v6 && [*(*(&v9 + 1) + 8 * i) appWantsVolumeChanges])
        {
          LODWORD(v3) = [v6 clientPID];
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)someLongFormVideoClientIsActiveOverAirPlayVideo
{
  v2 = objc_autoreleasePoolPush();
  v3 = CMSMUtility_IsAnyLongFormVideoSessionActiveOverAirPlayVideo() != 0;
  objc_autoreleasePoolPop(v2);
  return v3;
}

- (BOOL)someLongFormVideoClientIsPlaying
{
  v2 = objc_autoreleasePoolPush();
  v3 = CMSMUtility_IsAnyLongFormVideoSessionPlaying() != 0;
  objc_autoreleasePoolPop(v2);
  return v3;
}

+ (void)initialize
{
  if (objc_opt_self() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();
    fig_note_initialize_category_with_default_work();
    if (byte_1EB75DE81)
    {
      unk_1EB75DE80 = 0;
    }

    MXSystemControllerSetup();
    gMXSystemControllerNonSerializedCopyProperties = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"ActiveNeroVisualStreamInfo", @"ActivePhoneCallInfo", @"AirPlayScreenSuspended", @"AppWantsVolumeChanges", @"CanBeNowPlayingApp", @"CarPlayAuxStreamSupport", @"CarPlayIsConnected", @"CarPlayIsPlayingLongerDurationSession", @"CarPlaySupportsMixableSiri", @"ExternalScreenType", @"CurrentlyActiveCategory", @"CurrentlyActiveMode", @"CurrentVideoStreams", @"DeviceSupportsPiP", @"HeadphoneJackHasInput", @"HeadphoneJackIsConnected", @"HighestArbitrationPriorityForTipi", @"iOSWillRequestToBorrowStarkMainAudio", @"iOSWillRequestToTakeStarkMainAudio", @"IsSomeoneRecording", @"LongFormVideoApps", @"IsMaximumSpeakerVolumeLimitEnabled", @"MaximumSpeakerVolumeLimit", @"DefaultMaximumSpeakerVolumeLimit", @"PreferHeadphonesOverCarsAndSpeakersEnabled", @"AllowBluetoothAccessoryToRequestAudioRoute", @"NowPlayingAppDisplayID", @"NowPlayingAppIsInterrupted", @"NowPlayingAppIsPlaying", @"NowPlayingAppPID", @"NowPlayingAppShouldResumeForCarPlay", @"PhoneCallExists", @"PIDToInheritApplicationStateFrom", @"PlayingSessionsDescription", @"RecordingClientPIDs", @"RecordingSessionsDescription", @"ShouldIgnorePlayCommandsFromAccessory", @"SilentModeEnabled", @"SomeClientIsPlaying", @"SomeClientIsPlayingLongFormAudio", @"SomeLongFormVideoClientIsActiveOverAirPlayVideo", @"SomeLongFormVideoClientIsPlaying", @"SomeLongFormVideoClientIsPlayingOverAirPlayVideo", @"SomeRecordingSessionPresentThatDisallowsSystemSounds", @"SomeSessionIsActiveThatPrefersNoInterruptionsByRingtonesAndAlerts", @"StarkMainAudioIsOwnedByiOSButBorrowedByCar", @"SystemHasAudioInputDevice", @"SystemHasAudioInputDeviceExcludingBluetooth", @"SystemIsAnAppleTV", @"UplinkMute", @"VibeIntensity", @"VoicePromptStyle", @"WombatEnabled", @"RemoteDeviceIDs", 0}];
    gMXSystemControllerNonSerializedSetProperties = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"AirPlayScreenSuspended", @"AllowAppToFadeInTemporarily", @"AllowAppToInitiatePlaybackTemporarily", @"AllowAppToInitiateRecordingTemporarily", @"AppWantsVolumeChanges", @"CarSpeechStateChanged", @"ClientAuditToken", @"NowPlayingAppShouldResumeForCarPlay", @"PostInterruptionEndedNotification", @"StarkMainAudioIsOwnedByiOSButBorrowedByCar", @"SubscribeToNotifications", @"VibeIntensity", @"RemoteDeviceIDs", 0}];
    gPreferHeadphonesOverCarsAndSpeakersEnabled = MXCFPreferencesGetBooleanWithDefault() != 0;
  }
}

+ (BOOL)allowBluetoothAccessoryToRequestAudioRoute
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager isCurrentRouteHeadphoneAndInEar:"isCurrentRouteHeadphoneAndInEar:", 0];
  v3 = v2 & +[MXSystemController preferHeadphonesOverCarsAndSpeakersEnabled]^ 1;
  if (unk_1EB75DE80)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

- (MXSystemController)initWithPID:(int)d remoteDeviceID:(id)iD
{
  v13.receiver = self;
  v13.super_class = MXSystemController;
  v6 = [(MXSystemController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_clientPID = d;
    v6->_hasEntitlementForPIDInheritance = 0;
    v6->_auditToken = 0;
    v6->_bundleID = 0;
    v6->_hasEntitlementToEnableWombat = getpid() == d;
    v7->_hasEntitlementToSetSilentMode = getpid() == d;
    v7->_hasEntitlementForSilentModeNotifications = getpid() == d;
    v7->_hasEntitlementToInitiateRecordingTemporarily = getpid() == d;
    v7->_notificationsSubscribedTo = objc_alloc_init(MEMORY[0x1E695DF90]);
    objc_initWeak(&location, v7);
    if (iD)
    {
      v7->_remoteDeviceID = iD;
    }

    [MXSystemController mxSystemControllerListAddInstance:objc_loadWeak(&location) isSidekick:iD != 0];
    v8 = MXGetSerialQueue();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49__MXSystemController_initWithPID_remoteDeviceID___block_invoke;
    v10[3] = &unk_1E7AEA958;
    objc_copyWeak(&v11, &location);
    MXDispatchAsync("[MXSystemController initWithPID:remoteDeviceID:]", "MXSystemController_Embedded.m", 336, 0, 0, v8, v10);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __49__MXSystemController_initWithPID_remoteDeviceID___block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v2 = Weak;
    v3 = MX_RunningBoardServices_CopyDisplayIDForPID([Weak clientPID]);
    [v2 setDisplayID:v3];
  }
}

- (void)dealloc
{
  v3 = objc_autoreleasePoolPush();
  clientPID = self->_clientPID;
  +[MXSystemController updateMXSystemControllerList];

  self->_appsAllowedToInitiatePlayback = 0;
  self->_appsAllowedToInitiatePlaybackClientType = 0;

  self->_appsAllowedToInitiatePlaybackTimestamp = 0;
  self->_auditToken = 0;

  self->_bundleID = 0;
  self->_displayID = 0;

  self->_notificationsSubscribedTo = 0;
  self->_remoteDeviceID = 0;

  self->_remoteDeviceID = 0;
  v5 = MXGetSerialQueue();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__MXSystemController_dealloc__block_invoke;
  v7[3] = &__block_descriptor_36_e5_v8__0l;
  v8 = clientPID;
  MXDispatchAsync("[MXSystemController dealloc]", "MXSystemController_Embedded.m", 402, 0, 0, v5, v7);
  v6.receiver = self;
  v6.super_class = MXSystemController;
  [(MXSystemController *)&v6 dealloc];
  objc_autoreleasePoolPop(v3);
}

uint64_t __29__MXSystemController_dealloc__block_invoke(uint64_t a1)
{
  v2 = +[MXNowPlayingAppManager sharedInstance];
  v3 = *(a1 + 32);

  return [(MXNowPlayingAppManager *)v2 updateNowPlayingApp:v3 session:0 reasonForUpdate:0];
}

- (BOOL)phoneCallExists
{
  v2 = objc_autoreleasePoolPush();
  v3 = CMSMUtility_IsPhoneCallActive();
  objc_autoreleasePoolPop(v2);
  return v3;
}

- (BOOL)isSomeoneRecording
{
  v2 = objc_autoreleasePoolPush();
  v3 = CMSMUtility_IsSomeClientRecording() != 0;
  objc_autoreleasePoolPop(v2);
  return v3;
}

- (BOOL)someLongFormVideoClientIsPlayingOverAirPlayVideo
{
  v2 = objc_autoreleasePoolPush();
  v3 = CMSMUtility_IsAnyLongFormVideoSessionPlayingOverAirPlayVideo() != 0;
  objc_autoreleasePoolPop(v2);
  return v3;
}

- (void)volumeCategoryAndMode:(id)mode mode:(id)a4 outCategoryCopy:(id *)copy outModeCopy:(id *)modeCopy
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  mode = [+[MXSessionManager sharedInstance](MXSessionManager getUncustomizedCategory:"getUncustomizedCategory:", mode];

  PVMCopyVolumeCategoryAndMode(mode, a4, copy, modeCopy);
}

- (int)toggleInputMute
{
  v16 = *MEMORY[0x1E69E9840];
  +[MXInitialization waitUntilMXIsFullyInitialized];
  if (MX_FeatureFlags_IsSessionBasedMutingEnabled())
  {
    if (unk_1EB75DE80)
    {
      v11 = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    MXSimulateCrash("This is unexpected. Please file a radar to MediaExperience (New Bugs) | All.");
    v4 = -15685;
  }

  else
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    if (MX_FeatureFlags_IsCallManagementMuteControlEnabled())
    {
      v3 = MXGetSerialQueue();
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __37__MXSystemController_toggleInputMute__block_invoke;
      v8[3] = &unk_1E7AE73A0;
      v8[4] = &v12;
      MXDispatchAsyncAndWait("[MXSystemController toggleInputMute]", "MXSystemController_Embedded.m", 497, 0, 0, v3, v8);
    }

    else
    {
      *(v13 + 6) = -15685;
      *type = 0;
      v9 = OS_LOG_TYPE_DEFAULT;
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v4 = *(v13 + 6);
    _Block_object_dispose(&v12, 8);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t __37__MXSystemController_toggleInputMute__block_invoke(uint64_t a1)
{
  v2 = +[MXSessionManager sharedInstance];
  *&v3 = -1;
  *(&v3 + 1) = -1;
  v5[0] = v3;
  v5[1] = v3;
  result = [(MXSessionManager *)v2 updateMuteState:v5 muteValue:0];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int)setInputMute:(id *)mute muteValue:(BOOL)value
{
  v24 = *MEMORY[0x1E69E9840];
  +[MXInitialization waitUntilMXIsFullyInitialized];
  if (MX_FeatureFlags_IsSessionBasedMutingEnabled())
  {
    if (unk_1EB75DE80)
    {
      v19 = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    MXSimulateCrash("This is unexpected. Please file a radar to MediaExperience (New Bugs) | All.");
    v9 = -15685;
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    if (MX_FeatureFlags_IsCallManagementMuteControlEnabled())
    {
      v7 = MXGetSerialQueue();
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v8 = *&mute->var0[4];
      v14 = *mute->var0;
      v13[2] = __45__MXSystemController_setInputMute_muteValue___block_invoke;
      v13[3] = &unk_1E7AEA980;
      v13[4] = &v20;
      v15 = v8;
      valueCopy = value;
      MXDispatchAsyncAndWait("[MXSystemController setInputMute:muteValue:]", "MXSystemController_Embedded.m", 526, 0, 0, v7, v13);
    }

    else
    {
      *(v21 + 6) = -15685;
      *type = 0;
      v17 = OS_LOG_TYPE_DEFAULT;
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v9 = *(v21 + 6);
    _Block_object_dispose(&v20, 8);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t __45__MXSystemController_setInputMute_muteValue___block_invoke(uint64_t a1)
{
  v2 = +[MXSessionManager sharedInstance];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 72)];
  v4 = *(a1 + 56);
  v6[0] = *(a1 + 40);
  v6[1] = v4;
  result = [(MXSessionManager *)v2 updateMuteState:v6 muteValue:v3];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int)getInputMute:(id *)mute outMuteValue:(BOOL *)value
{
  v23 = *MEMORY[0x1E69E9840];
  +[MXInitialization waitUntilMXIsFullyInitialized];
  if (MX_FeatureFlags_IsSessionBasedMutingEnabled())
  {
    if (unk_1EB75DE80)
    {
      v18 = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    MXSimulateCrash("This is unexpected. Please file a radar to MediaExperience (New Bugs) | All.");
    v9 = -15685;
  }

  else
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    if (MX_FeatureFlags_IsCallManagementMuteControlEnabled())
    {
      v7 = MXGetSerialQueue();
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __48__MXSystemController_getInputMute_outMuteValue___block_invoke;
      v13[3] = &unk_1E7AEA9A8;
      v8 = *&mute->var0[4];
      v14 = *mute->var0;
      v15 = v8;
      v13[4] = &v19;
      v13[5] = value;
      MXDispatchAsyncAndWait("[MXSystemController getInputMute:outMuteValue:]", "MXSystemController_Embedded.m", 554, 0, 0, v7, v13);
    }

    else
    {
      *(v20 + 6) = -15685;
      *value = 0;
      *type = 0;
      v16 = OS_LOG_TYPE_DEFAULT;
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v9 = *(v20 + 6);
    _Block_object_dispose(&v19, 8);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t __48__MXSystemController_getInputMute_outMuteValue___block_invoke(uint64_t a1)
{
  v2 = +[MXSessionManager sharedInstance];
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v6[0] = *(a1 + 48);
  v6[1] = v4;
  result = [(MXSessionManager *)v2 getMuteState:v6 outMuteValue:v3];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int)clearUplinkMutedCache
{
  v17 = *MEMORY[0x1E69E9840];
  +[MXInitialization waitUntilMXIsFullyInitialized];
  if (MX_FeatureFlags_IsSessionBasedMutingEnabled())
  {
    if (unk_1EB75DE80)
    {
      v12 = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    MXSimulateCrash("This is unexpected. Please file a radar to MediaExperience (New Bugs) | All.");
    v6 = -15685;
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    if (MX_FeatureFlags_IsCallManagementMuteControlEnabled() && [(MXSystemController *)self hasEntitlementToClearCacheForFirstPartyPhoneCalls])
    {
      v4 = MXGetSerialQueue();
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __43__MXSystemController_clearUplinkMutedCache__block_invoke;
      v9[3] = &unk_1E7AE73A0;
      v9[4] = &v13;
      MXDispatchAsyncAndWait("[MXSystemController clearUplinkMutedCache]", "MXSystemController_Embedded.m", 582, 0, 0, v4, v9);
    }

    else
    {
      *(v14 + 6) = -15685;
      *type = 0;
      v10 = OS_LOG_TYPE_DEFAULT;
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v6 = *(v14 + 6);
    _Block_object_dispose(&v13, 8);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t __43__MXSystemController_clearUplinkMutedCache__block_invoke(uint64_t a1)
{
  result = [+[MXSessionManager sharedInstance](MXSessionManager clearUplinkMutedCache];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int)copySessionIDsWithMuteValue:(id *)value muteValue:(BOOL *)muteValue
{
  v51 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsSessionBasedMutingEnabled())
  {
    v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *muteValue = 0;
    copyPhoneCallBehaviorRecordingSession = [+[MXSessionManager sharedInstance](MXSessionManager copyPhoneCallBehaviorRecordingSession];
    if ([copyPhoneCallBehaviorRecordingSession prefersBluetoothAccessoryMuting])
    {
      *muteValue = [copyPhoneCallBehaviorRecordingSession isRecordingMuted] ^ 1;
      v7 = +[MXSessionManager sharedInstance];
      if (copyPhoneCallBehaviorRecordingSession)
      {
        [copyPhoneCallBehaviorRecordingSession auditToken];
      }

      else
      {
        memset(v50, 0, 32);
      }

      obj = [(MXSessionManager *)v7 copySessionsWithAuditToken:v50];
      if (![obj count] && unk_1EB75DE80)
      {
        v38 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v29 = copyPhoneCallBehaviorRecordingSession;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v12 = [obj countByEnumeratingWithState:&v33 objects:v49 count:{16, v25, v27}];
      v13 = v30;
      if (v12)
      {
        v14 = v12;
        v32 = *v34;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v34 != v32)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v33 + 1) + 8 * i);
            [v13 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v16, "audioSessionID", v26, v28))}];
            if (unk_1EB75DE80)
            {
              v38 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v18 = v38;
              if (os_log_type_enabled(v17, type))
              {
                v19 = v18;
              }

              else
              {
                v19 = v18 & 0xFFFFFFFE;
              }

              if (v19)
              {
                info = [v16 info];
                v21 = *muteValue;
                audioSessionID = [v16 audioSessionID];
                v39 = 136316162;
                v40 = "[MXSystemController copySessionIDsWithMuteValue:muteValue:]";
                v41 = 2048;
                v42 = v16;
                v43 = 2114;
                v44 = info;
                v45 = 1024;
                v46 = v21;
                v13 = v30;
                v47 = 1024;
                v48 = audioSessionID;
                LODWORD(v28) = 44;
                v26 = &v39;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }

          v14 = [obj countByEnumeratingWithState:&v33 objects:v49 count:16];
        }

        while (v14);
      }

      *value = v13;

      v11 = 0;
      copyPhoneCallBehaviorRecordingSession = v29;
    }

    else
    {
      [+[MXSessionManager sharedInstance](MXSessionManager updateBluetoothFrameworkToPlayMuteChime:"updateBluetoothFrameworkToPlayMuteChime:playRejectTone:" playRejectTone:copyPhoneCallBehaviorRecordingSession, 1];
      if (unk_1EB75DE80)
      {
        v38 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v11 = -15687;
    }
  }

  else
  {
    if (unk_1EB75DE80)
    {
      v38 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v11 = -15685;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v11;
}

- (int)performVolumeOperation:(unsigned int)operation volume:(float)volume category:(id)category mode:(id)mode routeName:(id)name routeDeviceIdentifier:(id)identifier routeSubtype:(id)subtype rampUpwardDuration:(id)self0 rampDownwardDuration:(id)self1 outVolume:(float *)self2 outSequenceNumber:(int64_t *)self3 outMuted:(BOOL *)self4 outCategoryCopy:(id *)self5 outModeCopy:(id *)self6
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v24 = MXGetSerialQueue();
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __216__MXSystemController_performVolumeOperation_volume_category_mode_routeName_routeDeviceIdentifier_routeSubtype_rampUpwardDuration_rampDownwardDuration_outVolume_outSequenceNumber_outMuted_outCategoryCopy_outModeCopy___block_invoke;
  v26[3] = &unk_1E7AEA9D0;
  operationCopy = operation;
  volumeCopy = volume;
  v26[4] = self;
  v26[5] = category;
  v26[6] = mode;
  v26[7] = name;
  v26[8] = identifier;
  v26[9] = subtype;
  v26[10] = duration;
  v26[11] = downwardDuration;
  v26[12] = &v29;
  v26[13] = outVolume;
  v26[14] = number;
  v26[15] = muted;
  v26[16] = copy;
  v26[17] = modeCopy;
  MXDispatchAsyncAndWait("[MXSystemController performVolumeOperation:volume:category:mode:routeName:routeDeviceIdentifier:routeSubtype:rampUpwardDuration:rampDownwardDuration:outVolume:outSequenceNumber:outMuted:outCategoryCopy:outModeCopy:]", "MXSystemController_Embedded.m", 715, 0, 0, v24, v26);
  LODWORD(subtype) = *(v30 + 6);
  _Block_object_dispose(&v29, 8);
  return subtype;
}

uint64_t __216__MXSystemController_performVolumeOperation_volume_category_mode_routeName_routeDeviceIdentifier_routeSubtype_rampUpwardDuration_rampDownwardDuration_outVolume_outSequenceNumber_outMuted_outCategoryCopy_outModeCopy___block_invoke(uint64_t a1, double a2)
{
  LODWORD(a2) = *(a1 + 148);
  v3 = *(a1 + 104);
  result = [*(a1 + 32) _performVolumeOperation:*(a1 + 144) volume:*(a1 + 40) category:*(a1 + 48) mode:*(a1 + 56) routeName:*(a1 + 64) routeDeviceIdentifier:*(a1 + 72) routeSubtype:a2 rampUpwardDuration:*(a1 + 80) rampDownwardDuration:*(a1 + 88) outVolume:*(a1 + 104) outSequenceNumber:*(a1 + 112) outMuted:*(a1 + 120) outCategoryCopy:*(a1 + 128) outModeCopy:*(a1 + 136)];
  *(*(*(a1 + 96) + 8) + 24) = result;
  return result;
}

- (int)performVolumeOperation:(unsigned int)operation volume:(float)volume category:(id)category mode:(id)mode routeName:(id)name routeDeviceIdentifier:(id)identifier routeSubtype:(id)subtype rampUpDuration:(float)self0 rampDownDuration:(float)self1 outVolume:(float *)self2 outSequenceNumber:(int64_t *)self3 outMuted:(BOOL *)self4 outCategoryCopy:(id *)self5 outModeCopy:(id *)self6 retainFullMute:(BOOL)self7
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v27 = MXGetSerialQueue();
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __223__MXSystemController_performVolumeOperation_volume_category_mode_routeName_routeDeviceIdentifier_routeSubtype_rampUpDuration_rampDownDuration_outVolume_outSequenceNumber_outMuted_outCategoryCopy_outModeCopy_retainFullMute___block_invoke;
  v29[3] = &unk_1E7AEA9F8;
  operationCopy = operation;
  v29[4] = self;
  v29[5] = category;
  v29[6] = mode;
  v29[7] = name;
  v29[8] = identifier;
  v29[9] = subtype;
  volumeCopy = volume;
  durationCopy = duration;
  downDurationCopy = downDuration;
  v29[10] = &v35;
  v29[11] = outVolume;
  v29[12] = number;
  v29[13] = muted;
  v29[14] = copy;
  v29[15] = modeCopy;
  muteCopy = mute;
  MXDispatchAsyncAndWait("[MXSystemController performVolumeOperation:volume:category:mode:routeName:routeDeviceIdentifier:routeSubtype:rampUpDuration:rampDownDuration:outVolume:outSequenceNumber:outMuted:outCategoryCopy:outModeCopy:retainFullMute:]", "MXSystemController_Embedded.m", 801, 0, 0, v27, v29);
  LODWORD(subtype) = *(v36 + 6);
  _Block_object_dispose(&v35, 8);
  return subtype;
}

uint64_t __223__MXSystemController_performVolumeOperation_volume_category_mode_routeName_routeDeviceIdentifier_routeSubtype_rampUpDuration_rampDownDuration_outVolume_outSequenceNumber_outMuted_outCategoryCopy_outModeCopy_retainFullMute___block_invoke(uint64_t a1, double a2, double a3, double a4)
{
  LODWORD(a2) = *(a1 + 132);
  LODWORD(a3) = *(a1 + 136);
  LODWORD(a4) = *(a1 + 140);
  v5 = *(a1 + 88);
  LOBYTE(v7) = *(a1 + 144);
  result = [*(a1 + 32) _performVolumeOperation:*(a1 + 128) volume:*(a1 + 40) category:*(a1 + 48) mode:*(a1 + 56) routeName:*(a1 + 64) routeDeviceIdentifier:*(a1 + 72) routeSubtype:a2 rampUpDuration:a3 rampDownDuration:a4 outVolume:*(a1 + 88) outSequenceNumber:*(a1 + 96) outMuted:*(a1 + 104) outCategoryCopy:*(a1 + 112) outModeCopy:*(a1 + 120) retainFullMute:v7];
  *(*(*(a1 + 80) + 8) + 24) = result;
  return result;
}

- (int)performVolumeOperation:(unsigned int)operation volume:(float)volume category:(id)category mode:(id)mode routeName:(id)name routeDeviceIdentifier:(id)identifier routeSubtype:(id)subtype rampUpDuration:(float)self0 rampDownDuration:(float)self1 outVolume:(float *)self2 outSequenceNumber:(int64_t *)self3 outMuted:(BOOL *)self4 outCategoryCopy:(id *)self5 outModeCopy:(id *)self6
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v26 = MXGetSerialQueue();
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __208__MXSystemController_performVolumeOperation_volume_category_mode_routeName_routeDeviceIdentifier_routeSubtype_rampUpDuration_rampDownDuration_outVolume_outSequenceNumber_outMuted_outCategoryCopy_outModeCopy___block_invoke;
  v28[3] = &unk_1E7AEAA20;
  operationCopy = operation;
  v28[4] = self;
  v28[5] = category;
  v28[6] = mode;
  v28[7] = name;
  v28[8] = identifier;
  v28[9] = subtype;
  volumeCopy = volume;
  durationCopy = duration;
  downDurationCopy = downDuration;
  v28[10] = &v33;
  v28[11] = outVolume;
  v28[12] = number;
  v28[13] = muted;
  v28[14] = copy;
  v28[15] = modeCopy;
  MXDispatchAsyncAndWait("[MXSystemController performVolumeOperation:volume:category:mode:routeName:routeDeviceIdentifier:routeSubtype:rampUpDuration:rampDownDuration:outVolume:outSequenceNumber:outMuted:outCategoryCopy:outModeCopy:]", "MXSystemController_Embedded.m", 900, 0, 0, v26, v28);
  LODWORD(subtype) = *(v34 + 6);
  _Block_object_dispose(&v33, 8);
  return subtype;
}

uint64_t __208__MXSystemController_performVolumeOperation_volume_category_mode_routeName_routeDeviceIdentifier_routeSubtype_rampUpDuration_rampDownDuration_outVolume_outSequenceNumber_outMuted_outCategoryCopy_outModeCopy___block_invoke(uint64_t a1, double a2, double a3, double a4)
{
  LODWORD(a2) = *(a1 + 132);
  LODWORD(a3) = *(a1 + 136);
  LODWORD(a4) = *(a1 + 140);
  v5 = *(a1 + 88);
  result = [*(a1 + 32) _performVolumeOperation:*(a1 + 128) volume:*(a1 + 40) category:*(a1 + 48) mode:*(a1 + 56) routeName:*(a1 + 64) routeDeviceIdentifier:*(a1 + 72) routeSubtype:a2 rampUpDuration:a3 rampDownDuration:a4 outVolume:*(a1 + 88) outSequenceNumber:*(a1 + 96) outMuted:*(a1 + 104) outCategoryCopy:*(a1 + 112) outModeCopy:*(a1 + 120)];
  *(*(*(a1 + 80) + 8) + 24) = result;
  return result;
}

- (int)performVolumeOperation:(unsigned int)operation volume:(float)volume category:(id)category mode:(id)mode routeName:(id)name routeDeviceIdentifier:(id)identifier routeSubtype:(id)subtype outVolume:(float *)self0 outSequenceNumber:(int64_t *)self1 outMuted:(BOOL *)self2 outCategoryCopy:(id *)self3 outModeCopy:(id *)self4
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v22 = MXGetSerialQueue();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __176__MXSystemController_performVolumeOperation_volume_category_mode_routeName_routeDeviceIdentifier_routeSubtype_outVolume_outSequenceNumber_outMuted_outCategoryCopy_outModeCopy___block_invoke;
  v24[3] = &unk_1E7AEAA48;
  operationCopy = operation;
  volumeCopy = volume;
  v24[4] = self;
  v24[5] = category;
  v24[6] = mode;
  v24[7] = name;
  v24[8] = identifier;
  v24[9] = subtype;
  v24[10] = &v27;
  v24[11] = outVolume;
  v24[12] = number;
  v24[13] = muted;
  v24[14] = copy;
  v24[15] = modeCopy;
  MXDispatchAsyncAndWait("[MXSystemController performVolumeOperation:volume:category:mode:routeName:routeDeviceIdentifier:routeSubtype:outVolume:outSequenceNumber:outMuted:outCategoryCopy:outModeCopy:]", "MXSystemController_Embedded.m", 989, 0, 0, v22, v24);
  LODWORD(subtype) = *(v28 + 6);
  _Block_object_dispose(&v27, 8);
  return subtype;
}

uint64_t __176__MXSystemController_performVolumeOperation_volume_category_mode_routeName_routeDeviceIdentifier_routeSubtype_outVolume_outSequenceNumber_outMuted_outCategoryCopy_outModeCopy___block_invoke(uint64_t a1, double a2)
{
  LODWORD(a2) = *(a1 + 132);
  v3 = *(a1 + 88);
  result = [*(a1 + 32) _performVolumeOperation:*(a1 + 128) volume:*(a1 + 40) category:*(a1 + 48) mode:*(a1 + 56) routeName:*(a1 + 64) routeDeviceIdentifier:*(a1 + 72) routeSubtype:a2 outVolume:*(a1 + 88) outSequenceNumber:*(a1 + 96) outMuted:*(a1 + 104) outCategoryCopy:*(a1 + 112) outModeCopy:*(a1 + 120)];
  *(*(*(a1 + 80) + 8) + 24) = result;
  return result;
}

- (BOOL)someSharePlayCapableCallSessionIsActive
{
  v2 = objc_autoreleasePoolPush();
  v3 = CMSMUtility_IsSharePlayCapableCallSessionActive() != 0;
  objc_autoreleasePoolPop(v2);
  return v3;
}

- (int)applyPIDToInheritAppStateFrom:(const void *)from
{
  v24 = *MEMORY[0x1E69E9840];
  if (from)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MXSystemController applyPIDToInheritAppStateFrom:?];
LABEL_27:
      result = v22;
LABEL_20:
      v16 = *MEMORY[0x1E69E9840];
      return result;
    }
  }

  clientPID = [(MXSystemController *)self clientPID];
  if (clientPID < 1)
  {
    goto LABEL_26;
  }

  v6 = MX_RunningBoardServices_CopyBundleInfoValueForKeyAndPID(@"CanInheritApplicationStateFromOtherProcesses", clientPID);
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    goto LABEL_26;
  }

  bOOLValue = [v6 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
LABEL_26:
    [MXSystemController applyPIDToInheritAppStateFrom:?];
    goto LABEL_27;
  }

  if ([(MXSystemController *)self hasEntitlementForPIDInheritance])
  {
    -[MXSystemController setPidToInheritAppStateFrom:](self, "setPidToInheritAppStateFrom:", [from intValue]);
    v8 = [MXSystemController copyMXSystemControllerList:0];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * v12);
          if (v13)
          {
            clientPID2 = [*(*(&v18 + 1) + 8 * v12) clientPID];
            if (clientPID2 == [(MXSystemController *)self pidToInheritAppStateFrom])
            {
              if ([v13 pidToInheritAppStateFrom])
              {
                -[MXSystemController setPidToInheritAppStateFrom:](self, "setPidToInheritAppStateFrom:", [v13 pidToInheritAppStateFrom]);
              }
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v10);
    }

    CMSMUtility_ApplyPIDToInheritAppStateFrom([(MXSystemController *)self clientPID], [(MXSystemController *)self pidToInheritAppStateFrom]);
    result = 0;
    goto LABEL_20;
  }

  v17 = *MEMORY[0x1E69E9840];

  return FigSignalErrorAtGM();
}

- (void)applyCanBeNowPlayingApp:(const void *)app
{
  v10 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !CMSMUtility_FetchUIShouldIgnoreRemoteControlEvents([(MXSystemController *)self clientPID]))
  {
    canBeNowPlayingApp = [(MXSystemController *)self canBeNowPlayingApp];
    if (canBeNowPlayingApp != [app BOOLValue])
    {
      -[MXSystemController setCanBeNowPlayingApp:](self, "setCanBeNowPlayingApp:", [app BOOLValue]);
      if (unk_1EB75DE80)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [+[MXNowPlayingAppManager updateNowPlayingApp:v8]reasonForUpdate:"updateNowPlayingApp:session:reasonForUpdate:", [(MXSystemController *)self clientPID], 0, 4];
      CMSMUtility_UpdateRoutingContextForSessionsWithPID([(MXSystemController *)self clientPID]);
      [+[MXSessionManager sharedInstance](MXSessionManager updateSupportedOutputChannelLayouts];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __64__MXSystemController_setSilentMode_untilTime_reason_clientType___block_invoke(uint64_t a1)
{
  [+[MXSessionManager sharedInstance](MXSessionManager updateSilentModeState:"updateSilentModeState:untilTime:withReason:forClientType:updateForStartup:" untilTime:*(a1 + 52) withReason:*(a1 + 32) forClientType:*(a1 + 40) updateForStartup:*(a1 + 48), 0];

  v2 = *(a1 + 40);
}

- (int)grantMediaEndowmentWithEnvironmentID:(id)d endowmentPayload:(id)payload
{
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  auditToken = [(MXSystemController *)self auditToken];
  bundleID = [(MXSystemController *)self bundleID];
  v10 = [payload objectForKey:@"RecordingWebsite"];
  if (auditToken)
  {
    [v7 setObject:auditToken forKey:@"AuditToken"];
  }

  if (bundleID)
  {
    [v7 setObject:bundleID forKey:@"BundleID"];
  }

  if (v10)
  {
    [v7 setObject:v10 forKey:@"RecordingWebsite"];
  }

  v11 = [+[MXMediaEndowmentManager sharedInstance](MXMediaEndowmentManager grantMediaEndowment:"grantMediaEndowment:environmentID:endowmentPayload:" environmentID:[(MXSystemController *)self clientPID] endowmentPayload:d, v7];

  return v11;
}

- (int)revokeMediaEndowmentWithEnvironmentID:(id)d
{
  v5 = +[MXMediaEndowmentManager sharedInstance];
  clientPID = [(MXSystemController *)self clientPID];

  return [(MXMediaEndowmentManager *)v5 revokeMediaEndowment:clientPID environmentID:d];
}

- (int)allowAppsToInitiatePlayback:(id)playback clientType:(id)type isTemporary:(BOOL)temporary
{
  temporaryCopy = temporary;
  v15 = *MEMORY[0x1E69E9840];
  if ([(MXSystemController *)self hasEntitlementToAllowAppsToInitiatePlayback])
  {
    if (MX_FeatureFlags_IsAllowBackgroundPlaybackEnabled())
    {
      [(MXSystemController *)self setAppsAllowedToInitiatePlayback:playback];
      [(MXSystemController *)self setAppsAllowedToInitiatePlaybackClientType:type];
      if (temporaryCopy)
      {
        v9 = [MEMORY[0x1E695DF00] now];
      }

      else
      {
        v9 = 0;
      }

      [(MXSystemController *)self setAppsAllowedToInitiatePlaybackTimestamp:v9];
      if (unk_1EB75DE80)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      result = 0;
    }

    else
    {
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      result = -15687;
    }
  }

  else
  {
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    result = -12988;
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (int)getAudioSessionID:(unsigned int *)d forAttributedPID:(int)iD
{
  v28 = *MEMORY[0x1E69E9840];
  if (d && iD)
  {
    copyMXCoreSessionList = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = [copyMXCoreSessionList countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(copyMXCoreSessionList);
          }

          v10 = *(*(&v22 + 1) + 8 * i);
          *&v11 = -1;
          *(&v11 + 1) = -1;
          *v21.val = v11;
          *&v21.val[4] = v11;
          v12 = [-[MXMediaEndowmentManager getHostProcessAttributions:](+[MXMediaEndowmentManager sharedInstance](MXMediaEndowmentManager "sharedInstance")];
          if (!v12)
          {
            v12 = [objc_msgSend(v10 "hostProcessAttribution")];
          }

          v13 = [v12 valueForKey:@"AuditToken"];
          if (v13)
          {
            [v13 getBytes:&v21 length:32];
            atoken = v21;
            if (audit_token_to_pid(&atoken) == iD)
            {
              if (unk_1EB75DE80)
              {
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              *d = [v10 audioSessionID];
              goto LABEL_20;
            }
          }
        }

        v7 = [copyMXCoreSessionList countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:

    result = 0;
  }

  else
  {
    v21.val[0] = 0;
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    result = -12980;
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

- (int)getVolumeButtonDelta:(id)delta outVolumeDelta:(float *)volumeDelta
{
  v6 = +[MXSessionManager sharedInstance];

  return [(MXSessionManager *)v6 getVolumeButtonDelta:delta outVolumeDelta:volumeDelta];
}

- (int)copyAttributeForKey:(id)key withValueOut:(void *)out
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  +[MXInitialization waitUntilMXIsFullyInitialized];
  if ([MXSystemController isNonSerializedCopyProperty:key])
  {
    v8 = [(MXSystemController *)self copyAttributeForKeyInternal:key withValueOut:out];
    *(v14 + 6) = v8;
  }

  else
  {
    v9 = MXGetSerialQueue();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55__MXSystemController_copyAttributeForKey_withValueOut___block_invoke;
    v12[3] = &unk_1E7AE70D0;
    v12[4] = self;
    v12[5] = key;
    v12[6] = &v13;
    v12[7] = out;
    MXDispatchAsyncAndWait("[MXSystemController copyAttributeForKey:withValueOut:]", "MXSystemController_Embedded.m", 1341, 0, 0, v9, v12);
  }

  [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"[MXSystemController copyAttributeForKey:withValueOut:]" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, key];
  v10 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v10;
}

uint64_t __55__MXSystemController_copyAttributeForKey_withValueOut___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) copyAttributeForKeyInternal:*(a1 + 40) withValueOut:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (int)setAttributeForKey:(id)key andValue:(const void *)value
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  +[MXInitialization waitUntilMXIsFullyInitialized];
  if ([MXSystemController isNonSerializedSetProperty:key])
  {
    v8 = [(MXSystemController *)self setAttributeForKeyInternal:key andValue:value];
    *(v14 + 6) = v8;
  }

  else
  {
    v9 = MXGetSerialQueue();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__MXSystemController_setAttributeForKey_andValue___block_invoke;
    v12[3] = &unk_1E7AE70D0;
    v12[4] = self;
    v12[5] = key;
    v12[6] = &v13;
    v12[7] = value;
    MXDispatchAsyncAndWait("[MXSystemController setAttributeForKey:andValue:]", "MXSystemController_Embedded.m", 1371, 0, 0, v9, v12);
  }

  [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"[MXSystemController setAttributeForKey:andValue:]" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, key];
  v10 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v10;
}

uint64_t __50__MXSystemController_setAttributeForKey_andValue___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) setAttributeForKeyInternal:*(a1 + 40) andValue:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (int)copyAttributeForKeyInternal:(id)internal withValueOut:(void *)out
{
  v52 = *MEMORY[0x1E69E9840];
  if ([internal isEqualToString:@"ActiveNeroVisualStreamInfo"])
  {
    active = FigRoutingManagerCopyActiveNeroVisualStreamInfo([+[MXSessionManager systemMirroringRoutingContextUUID] sharedInstance];
LABEL_18:
    v20 = active;
    result = 0;
    *out = v20;
    goto LABEL_19;
  }

  if (![internal isEqualToString:@"ActivePhoneCallInfo"])
  {
    if ([internal isEqualToString:@"AirPlayScreenSuspended"])
    {
      v15 = objc_alloc(MEMORY[0x1E696AD98]);
      IsSuspended = CMScreenIsSuspended();
LABEL_10:
      v17 = IsSuspended != 0;
LABEL_16:
      v19 = v15;
LABEL_17:
      active = [v19 initWithBool:{v17, v49, v50}];
      goto LABEL_18;
    }

    if ([internal isEqualToString:@"AppWantsVolumeChanges"])
    {
      v15 = objc_alloc(MEMORY[0x1E696AD98]);
      appWantsVolumeChanges = [(MXSystemController *)self appWantsVolumeChanges];
LABEL_15:
      v17 = appWantsVolumeChanges;
      goto LABEL_16;
    }

    if ([internal isEqualToString:@"CanBeNowPlayingApp"])
    {
      v15 = objc_alloc(MEMORY[0x1E696AD98]);
      appWantsVolumeChanges = [(MXSystemController *)self canBeNowPlayingApp];
      goto LABEL_15;
    }

    if ([internal isEqualToString:@"CarPlayAuxStreamSupport"])
    {
      v15 = objc_alloc(MEMORY[0x1E696AD98]);
      IsSuspended = FigRoutingManager_iOSIsCarPlayAuxStreamSupported();
      goto LABEL_10;
    }

    if ([internal isEqualToString:@"CarPlayIsConnected"])
    {
      v15 = objc_alloc(MEMORY[0x1E696AD98]);
      appWantsVolumeChanges = [+[MXSessionManager sharedInstance](MXSessionManager carPlayIsConnected];
      goto LABEL_15;
    }

    if ([internal isEqualToString:@"CarPlayIsPlayingLongerDurationSession"])
    {
      v15 = objc_alloc(MEMORY[0x1E696AD98]);
      IsSuspended = CMSMUtility_CarPlayIsPlayingLongerDurationSession();
      goto LABEL_10;
    }

    if ([internal isEqualToString:@"CarPlaySupportsMixableSiri"])
    {
      v15 = objc_alloc(MEMORY[0x1E696AD98]);
      IsSuspended = CMSMUtility_DoesCarPlaySupportMixableSiri();
      goto LABEL_10;
    }

    if ([internal isEqualToString:@"ExternalScreenType"])
    {
      ScreenType = CMScreenGetScreenType();
LABEL_30:
      active = ScreenType;
      goto LABEL_18;
    }

    if ([internal isEqualToString:@"CurrentlyActiveCategory"])
    {
      active = CMSMUtility_CopyCurrentlyActiveCategory();
      goto LABEL_18;
    }

    if ([internal isEqualToString:@"CurrentlyActiveMode"])
    {
      active = CMSMUtility_CopyCurrentlyActiveMode();
      goto LABEL_18;
    }

    if ([internal isEqualToString:@"CurrentVideoStreams"])
    {
      CurrentlyAirPlayingVideoStreamsDictionary = CMSMUtility_CreateCurrentlyAirPlayingVideoStreamsDictionary(@"CurrentVideoStreams_BundleID", @"CurrentVideoStreams_VideoRoutes");
      firstObject = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{CurrentlyAirPlayingVideoStreamsDictionary, 0}];
      goto LABEL_6;
    }

    if ([internal isEqualToString:@"DeviceSupportsPiP"])
    {
      v15 = objc_alloc(MEMORY[0x1E696AD98]);
      IsSuspended = CMSMDeviceState_SupportsPiP();
      goto LABEL_10;
    }

    if ([internal isEqualToString:@"HeadphoneJackHasInput"])
    {
      v15 = objc_alloc(MEMORY[0x1E696AD98]);
      IsSuspended = vaemHeadphoneJackHasInput(1);
      goto LABEL_10;
    }

    if ([internal isEqualToString:@"HeadphoneJackIsConnected"])
    {
      v15 = objc_alloc(MEMORY[0x1E696AD98]);
      IsSuspended = vaemHeadphoneJackIsConnected(1);
      goto LABEL_10;
    }

    if ([internal isEqualToString:@"HighestArbitrationPriorityForTipi"])
    {
      if (MX_FeatureFlags_IsSmartRoutingOnActivationEnabled())
      {
        v23 = [+[MXSessionManager sharedInstance](MXSessionManager copyHighestPriorityActiveSession:"copyHighestPriorityActiveSession:deviceIdentifier:" deviceIdentifier:0x1F2893B50, 0];
      }

      else
      {
        v23 = CMSM_CopyHighestPriorityLocalPlayingSession(1);
      }

      CurrentlyAirPlayingVideoStreamsDictionary = v23;
      LocalSessionPriority = CMSM_GetLocalSessionPriority(v23, 1);
      v26 = objc_alloc(MEMORY[0x1E695DF20]);
      v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:LocalSessionPriority];
      if ([CurrentlyAirPlayingVideoStreamsDictionary displayID])
      {
        displayID = [CurrentlyAirPlayingVideoStreamsDictionary displayID];
      }

      else
      {
        displayID = @"Unknown";
      }

      firstObject = [v26 initWithObjectsAndKeys:{v27, @"HighestArbitrationPriorityForTipi_AudioScore", displayID, @"HighestArbitrationPriorityForTipi_BundleID", 0}];
      goto LABEL_6;
    }

    if ([internal isEqualToString:@"iOSWillRequestToBorrowStarkMainAudio"])
    {
      v15 = objc_alloc(MEMORY[0x1E696AD98]);
      v24 = 1;
LABEL_50:
      IsSuspended = CMSMUtility_iOSWillRequestCarMainAudio(v24);
      goto LABEL_10;
    }

    if ([internal isEqualToString:@"iOSWillRequestToTakeStarkMainAudio"])
    {
      v15 = objc_alloc(MEMORY[0x1E696AD98]);
      v24 = 0;
      goto LABEL_50;
    }

    if ([internal isEqualToString:@"IsSomeoneRecording"])
    {
      IsSomeClientRecording = CMSMUtility_IsSomeClientRecording();
      v30 = objc_alloc(MEMORY[0x1E696AD98]);
      pidToInheritAppStateFrom = IsSomeClientRecording;
LABEL_58:
      active = [v30 initWithUnsignedInt:pidToInheritAppStateFrom];
      goto LABEL_18;
    }

    if ([internal isEqualToString:@"LongFormVideoApps"])
    {
      ScreenType = [+[MXSessionManager sharedInstance](MXSessionManager longFormVideoApps];
      goto LABEL_30;
    }

    if ([internal isEqualToString:@"NowPlayingAppDisplayID"])
    {
      ScreenType = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppDisplayID];
      goto LABEL_30;
    }

    if ([internal isEqualToString:@"NowPlayingAppIsInterrupted"])
    {
      v15 = objc_alloc(MEMORY[0x1E696AD98]);
      IsSuspended = CMSMNP_GetNowPlayingAppIsInterrupted();
      goto LABEL_10;
    }

    if ([internal isEqualToString:@"NowPlayingAppIsPlaying"])
    {
      IsPlaying = CMSMNP_GetNowPlayingAppIsPlaying();
LABEL_67:
      ShouldResumeForCarPlay = IsPlaying;
LABEL_68:
      v19 = objc_alloc(MEMORY[0x1E696AD98]);
      v17 = ShouldResumeForCarPlay != 0;
      goto LABEL_17;
    }

    if ([internal isEqualToString:@"NowPlayingAppPID"])
    {
      active = [objc_alloc(MEMORY[0x1E696AD98]) initWithLong:{-[MXNowPlayingAppManager nowPlayingAppPID](+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager, "sharedInstance"), "nowPlayingAppPID")}];
      goto LABEL_18;
    }

    if ([internal isEqualToString:@"NowPlayingAppShouldResumeForCarPlay"])
    {
      ShouldResumeForCarPlay = CMSMNP_GetNowPlayingAppShouldResumeForCarPlay();
      if (unk_1EB75DE80)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_68;
    }

    if ([internal isEqualToString:@"IsMaximumSpeakerVolumeLimitEnabled"])
    {
      if (MX_FeatureFlags_IsMaxSpeakerVolumeLimitEnabled())
      {
        IsPlaying = PVMIsMaxVolumeLimitForBuiltInSpeakerEnabled();
        goto LABEL_67;
      }

LABEL_86:
      result = -15687;
      goto LABEL_19;
    }

    if ([internal isEqualToString:@"MaximumSpeakerVolumeLimit"])
    {
      if (MX_FeatureFlags_IsMaxSpeakerVolumeLimitEnabled())
      {
        v35 = PVMGetCurrentMaxVolumeLimitForBuiltInSpeaker();
LABEL_80:
        v36 = v35;
LABEL_95:
        v40 = objc_alloc(MEMORY[0x1E696AD98]);
        *&v41 = v36;
LABEL_96:
        active = [v40 initWithFloat:{v41, v49, v50}];
        goto LABEL_18;
      }
    }

    else
    {
      if (![internal isEqualToString:@"DefaultMaximumSpeakerVolumeLimit"])
      {
        if ([internal isEqualToString:@"PreferHeadphonesOverCarsAndSpeakersEnabled"])
        {
          if (MX_FeatureFlags_IsAirPodsInEarRoutingWithCarsAndSpeakersEnabled())
          {
            v15 = objc_alloc(MEMORY[0x1E696AD98]);
            appWantsVolumeChanges = +[MXSystemController preferHeadphonesOverCarsAndSpeakersEnabled];
            goto LABEL_15;
          }

          [MXSystemController(InternalUse) copyAttributeForKeyInternal:v51 withValueOut:?];
        }

        else
        {
          if (![internal isEqualToString:@"AllowBluetoothAccessoryToRequestAudioRoute"])
          {
            if ([internal isEqualToString:@"PhoneCallExists"])
            {
              v15 = objc_alloc(MEMORY[0x1E696AD98]);
              IsSuspended = CMSMUtility_IsPhoneCallActive();
              goto LABEL_10;
            }

            if ([internal isEqualToString:@"PIDToInheritApplicationStateFrom"])
            {
              v42 = objc_alloc(MEMORY[0x1E696AD98]);
              pidToInheritAppStateFrom = [(MXSystemController *)self pidToInheritAppStateFrom];
              v30 = v42;
              goto LABEL_58;
            }

            if ([internal isEqualToString:@"PlayingSessionsDescription"])
            {
              active = CMSMNotificationUtility_CreatePlayingSessionsDescription();
              goto LABEL_18;
            }

            if ([internal isEqualToString:@"DuckScalarForVoiceOver"])
            {
              if (!MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled())
              {
                result = -12981;
                goto LABEL_19;
              }

              if ([(MXSystemController *)self hasEntitlementToSetRelativeVoiceOverVolume])
              {
                v43 = objc_alloc(MEMORY[0x1E696AD98]);
                [+[MXSessionManager sharedInstance](MXSessionManager duckScalarForVoiceOver];
                v40 = v43;
                goto LABEL_96;
              }
            }

            else
            {
              if ([internal isEqualToString:@"RecordingClientPIDs"])
              {
                ScreenType = [+[MXSessionManager sharedInstance](MXSessionManager recordingClientPIDs];
                goto LABEL_30;
              }

              if ([internal isEqualToString:@"RecordingSessionsDescription"])
              {
                active = CMSMNotificationUtility_CreateRecordingSessionsDescription();
                goto LABEL_18;
              }

              if ([internal isEqualToString:@"ShouldIgnorePlayCommandsFromAccessory"])
              {
                v15 = objc_alloc(MEMORY[0x1E696AD98]);
                IsSuspended = CMSMUtility_ShouldIgnorePlayCommandsFromAccessory();
                goto LABEL_10;
              }

              if (![internal isEqualToString:@"SilentModeEnabled"])
              {
                if ([internal isEqualToString:@"SomeClientIsPlaying"])
                {
                  v15 = objc_alloc(MEMORY[0x1E696AD98]);
                  IsSuspended = CMSMUtility_SomeClientIsPlaying();
                  goto LABEL_10;
                }

                if ([internal isEqualToString:@"SomeClientIsPlayingLongFormAudio"])
                {
                  v15 = objc_alloc(MEMORY[0x1E696AD98]);
                  IsSuspended = CMSMUtility_SomeClientIsPlayingLongFormAudio();
                  goto LABEL_10;
                }

                if ([internal isEqualToString:@"SomeLongFormVideoClientIsActiveOverAirPlayVideo"])
                {
                  v15 = objc_alloc(MEMORY[0x1E696AD98]);
                  IsSuspended = CMSMUtility_IsAnyLongFormVideoSessionActiveOverAirPlayVideo();
                  goto LABEL_10;
                }

                if ([internal isEqualToString:@"SomeLongFormVideoClientIsPlaying"])
                {
                  v15 = objc_alloc(MEMORY[0x1E696AD98]);
                  IsSuspended = CMSMUtility_IsAnyLongFormVideoSessionPlaying();
                  goto LABEL_10;
                }

                if ([internal isEqualToString:@"SomeLongFormVideoClientIsPlayingOverAirPlayVideo"])
                {
                  v15 = objc_alloc(MEMORY[0x1E696AD98]);
                  IsSuspended = CMSMUtility_IsAnyLongFormVideoSessionPlayingOverAirPlayVideo();
                  goto LABEL_10;
                }

                if ([internal isEqualToString:@"SomeRecordingSessionPresentThatDisallowsSystemSounds"])
                {
                  v15 = objc_alloc(MEMORY[0x1E696AD98]);
                  IsSuspended = CMSMUtility_IsSomeRecordingSessionPresentThatDisallowsSystemSounds();
                  goto LABEL_10;
                }

                if ([internal isEqualToString:@"SomeSessionIsActiveThatPrefersNoInterruptionsByRingtonesAndAlerts"])
                {
                  v15 = objc_alloc(MEMORY[0x1E696AD98]);
                  IsSuspended = CMSMUtility_SomeSessionIsActiveThatPrefersNoInterruptionsByRingtonesAndAlerts();
                  goto LABEL_10;
                }

                if ([internal isEqualToString:@"StarkMainAudioIsOwnedByiOSButBorrowedByCar"])
                {
                  v15 = objc_alloc(MEMORY[0x1E696AD98]);
                  appWantsVolumeChanges = [+[MXSessionManager sharedInstance](MXSessionManager starkMainAudioIsOwnedByiOSButBorrowedByCar];
                  goto LABEL_15;
                }

                if ([internal isEqualToString:@"SystemHasAudioInputDevice"])
                {
                  v15 = objc_alloc(MEMORY[0x1E696AD98]);
                  IsSuspended = vaemSystemHasAudioInputDevice();
                  goto LABEL_10;
                }

                if ([internal isEqualToString:@"SystemHasAudioInputDeviceExcludingBluetooth"])
                {
                  v15 = objc_alloc(MEMORY[0x1E696AD98]);
                  IsSuspended = vaemSystemHasAudioInputDeviceExcludingBluetooth();
                  goto LABEL_10;
                }

                if ([internal isEqualToString:@"SystemIsAnAppleTV"])
                {
                  v15 = objc_alloc(MEMORY[0x1E696AD98]);
                  IsSuspended = CMSMDeviceState_ItsAnAppleTV();
                  goto LABEL_10;
                }

                if ([internal isEqualToString:@"UplinkMute"])
                {
                  if (!MX_FeatureFlags_IsSessionBasedMutingEnabled())
                  {
                    v46 = MX_FeatureFlags_IsCallManagementMuteControlEnabled();
                    v15 = objc_alloc(MEMORY[0x1E696AD98]);
                    v47 = +[MXSessionManager sharedInstance];
                    if (v46)
                    {
                      appWantsVolumeChanges = [(MXSessionManager *)v47 uplinkMuteSetByClient];
                    }

                    else
                    {
                      appWantsVolumeChanges = [(MXSessionManager *)v47 uplinkMute];
                    }

                    goto LABEL_15;
                  }

                  v45 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  MXSimulateCrash("This is unexpected. Please file a radar to MediaExperience (New Bugs) | All.");
                }

                else
                {
                  if ([internal isEqualToString:@"VibeIntensity"])
                  {
                    v35 = PVMGetVibeIntensityPreference();
                    goto LABEL_80;
                  }

                  if ([internal isEqualToString:@"VoicePromptStyle"])
                  {
                    ScreenType = CMSMUtility_GetVoicePromptStyle();
                    goto LABEL_30;
                  }

                  if ([internal isEqualToString:@"RemoteDeviceIDs"])
                  {
                    ScreenType = [(NSSet *)[(MXSystemController *)self remoteDeviceIDs] allObjects];
                    goto LABEL_30;
                  }

                  if ([internal isEqualToString:@"WombatEnabled"])
                  {
                    v15 = objc_alloc(MEMORY[0x1E696AD98]);
                    appWantsVolumeChanges = [+[MXSessionManager sharedInstance](MXSessionManager wombatEnabled];
                    goto LABEL_15;
                  }

                  if (([internal isEqualToString:@"ActiveAudioRoute"] & 1) != 0 || objc_msgSend(internal, "isEqualToString:", @"CurrentlyActiveRoute"))
                  {
                    cmsmUpdateCurrentActiveRoutesInfo();
                    ScreenType = CMSMUtility_GetCurrentRouteTypeAtIndex(0);
                    goto LABEL_30;
                  }

                  if ([internal isEqualToString:@"ActiveClientPIDsThatHideTheSpeechDetectionDevice"])
                  {
                    active = CMSMUtility_CopyActiveClientPIDsThatHideTheSpeechDetectionDevice();
                    goto LABEL_18;
                  }

                  if ([internal isEqualToString:@"ActiveInputRouteForPlayAndRecordNoBluetooth"])
                  {
                    CurrentlyAirPlayingVideoStreamsDictionary = vaemCopyActiveInputRouteNamesForRouteConfiguration(@"PlayAndRecord", @"Default", 0, 0);
                    firstObject = [CurrentlyAirPlayingVideoStreamsDictionary firstObject];
                    goto LABEL_6;
                  }

                  if ([internal isEqualToString:@"AvailableVirtualAudioDevices"])
                  {
                    active = vaemCopyAvailableVADUIDs();
                    goto LABEL_18;
                  }

                  if ([internal isEqualToString:@"CallScreeningStatus"])
                  {
                    v15 = objc_alloc(MEMORY[0x1E696AD98]);
                    IsSuspended = vaemGetCallScreeningStatus();
                    goto LABEL_10;
                  }

                  if ([internal isEqualToString:@"ContinuityScreenOutputPortAvailable"])
                  {
                    if (MX_FeatureFlags_IsOnenessEnabled())
                    {
                      IsContinuityScreenOutputPortPresentInConnectedOutputPorts = vaemIsContinuityScreenOutputPortPresentInConnectedOutputPorts();
                    }

                    else
                    {
                      IsContinuityScreenOutputPortPresentInConnectedOutputPorts = 0;
                    }

                    v19 = objc_alloc(MEMORY[0x1E696AD98]);
                    v17 = IsContinuityScreenOutputPortPresentInConnectedOutputPorts;
                    goto LABEL_17;
                  }

                  if ([internal isEqualToString:@"CurrentPhoneCallIsRoutedViaCarBT"])
                  {
                    active = CMSMUtility_CopyCurrentPhoneCallIsRoutedViaCarBT();
                    goto LABEL_18;
                  }

                  if ([internal isEqualToString:@"CurrentPlayingSessionIsRoutedViaCarBT"])
                  {
                    active = CMSMUtility_CopyCurrentPlayingSessionIsRoutedViaCarBT();
                    goto LABEL_18;
                  }

                  if ([internal isEqualToString:@"CurrentPrimaryAppDisplayID"])
                  {
                    active = [+[MXFrontBoardServices sharedInstance](MXFrontBoardServices copyPrimaryAppDisplayID];
                    goto LABEL_18;
                  }

                  if ([internal isEqualToString:@"CurrentRouteHasVolumeControl"])
                  {
                    active = CMSMUtility_CopyCurrentRouteHasVolumeControl();
                    goto LABEL_18;
                  }

                  if ([internal isEqualToString:@"DownlinkMute"])
                  {
                    v15 = objc_alloc(MEMORY[0x1E696AD98]);
                    IsSuspended = vaemGetDownlinkMute();
                    goto LABEL_10;
                  }

                  if ([internal isEqualToString:@"FullMute"])
                  {
                    v15 = objc_alloc(MEMORY[0x1E696AD98]);
                    IsSuspended = vaemGetFullMute();
                    goto LABEL_10;
                  }

                  if ([internal isEqualToString:@"HeadphoneVolumeLimit"])
                  {
                    v35 = PVMGetVolumeLimit();
                    goto LABEL_80;
                  }

                  if ([internal isEqualToString:@"PickableRoutes"])
                  {
                    CurrentlyAirPlayingVideoStreamsDictionary = CMSMUtility_CopyPickableRoutes();
                    firstObject = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:CurrentlyAirPlayingVideoStreamsDictionary copyItems:1];
                    goto LABEL_6;
                  }

                  if ([internal isEqualToString:@"PickedRoute"])
                  {
                    active = cmsmDeepCopyPickedRoute();
                    goto LABEL_18;
                  }

                  if ([internal isEqualToString:@"SpeechDetectionDevicePresent"])
                  {
                    v15 = objc_alloc(MEMORY[0x1E696AD98]);
                    IsSuspended = vaemSpeechDetectionVADExists();
                    goto LABEL_10;
                  }

                  if ([internal isEqualToString:@"ThermalControlInfo"])
                  {
                    active = vaemCopyThermalControlInfo();
                    goto LABEL_18;
                  }

                  if ([internal isEqualToString:@"ThermalGainAdjustment_Haptics"])
                  {
                    active = vaemCopyThermalGainAdjustment_Haptics();
                    goto LABEL_18;
                  }

                  if ([internal isEqualToString:@"ThermalGainAdjustment_Speaker"])
                  {
                    active = vaemCopyThermalGainAdjustment_Speaker();
                    goto LABEL_18;
                  }

                  if ([internal isEqualToString:@"TopOfNowPlayingAppStackDisplayID"])
                  {
                    active = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager copyTopOfNowPlayingAppStack];
                    goto LABEL_18;
                  }
                }

                result = -12984;
                goto LABEL_19;
              }

              if ([(MXSystemController *)self hasEntitlementForSilentModeNotifications]|| [(MXSystemController *)self hasEntitlementToSetSilentMode])
              {
                v15 = objc_alloc(MEMORY[0x1E696AD98]);
                appWantsVolumeChanges = [+[MXSessionManager sharedInstance](MXSessionManager silentModeEnabled];
                goto LABEL_15;
              }

              v44 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            result = -12988;
            goto LABEL_19;
          }

          if (MX_FeatureFlags_IsAirPodsInEarRoutingWithCarsAndSpeakersEnabled())
          {
            v15 = objc_alloc(MEMORY[0x1E696AD98]);
            appWantsVolumeChanges = +[MXSystemController allowBluetoothAccessoryToRequestAudioRoute];
            goto LABEL_15;
          }

          [MXSystemController(InternalUse) copyAttributeForKeyInternal:v51 withValueOut:?];
        }

        result = v51[0];
        goto LABEL_19;
      }

      if (MX_FeatureFlags_IsMaxSpeakerVolumeLimitEnabled())
      {
        v36 = PVMGetDefaultMaxVolumeLimitForBuiltInSpeaker();
        if (unk_1EB75DE80)
        {
          v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_95;
      }
    }

    v38 = objc_alloc(MEMORY[0x1E696AD98]);
    LODWORD(v39) = -1.0;
    *out = [v38 initWithFloat:v39];
    goto LABEL_86;
  }

  v8 = CMSMUtility_CopyActivePhoneCallInfo();
  CurrentlyAirPlayingVideoStreamsDictionary = v8;
  if (v8)
  {
    v10 = [objc_msgSend(v8 objectForKey:{@"ClientPriority", "intValue"}] == 10;
    v11 = [CurrentlyAirPlayingVideoStreamsDictionary objectForKey:@"AudioSessionID"];
    v12 = objc_alloc(MEMORY[0x1E695DF20]);
    firstObject = [v12 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v10), @"CallIsHighPriority", v11, @"AudioSessionID", 0}];
LABEL_6:
    *out = firstObject;
  }

  result = 0;
LABEL_19:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

- (int)setAttributeForKeyInternal:(id)internal andValue:(const void *)value
{
  v127 = *MEMORY[0x1E69E9840];
  if ([internal isEqualToString:@"AirPlayScreenSuspended"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      refreshed = [value BOOLValue];
      systemMirroringRoutingContextUUID = [+[MXSessionManager sharedInstance](MXSessionManager systemMirroringRoutingContextUUID];
      if (refreshed)
      {
        FigRoutingManagerSuspendCurrentEndpointScreen(systemMirroringRoutingContextUUID);
        goto LABEL_26;
      }

      FigRoutingManagerResumeCurrentEndpointScreen(systemMirroringRoutingContextUUID);
      goto LABEL_27;
    }

    v9 = *MEMORY[0x1E69E9840];
    goto LABEL_21;
  }

  if ([internal isEqualToString:@"AllowAppToFadeInTemporarily"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (MX_FeatureFlags_IsHandoffEnabled())
      {
        [+[MXSessionManager sharedInstance](MXSessionManager setAppAllowedToFadeInTemporarily:"setAppAllowedToFadeInTemporarily:", value];
        cmsmStartAllowedToFadeInTemporarilyTimer();
      }

      goto LABEL_26;
    }

    v10 = *MEMORY[0x1E69E9840];
LABEL_21:

    return FigSignalErrorAtGM();
  }

  if ([internal isEqualToString:@"AllowAppToInitiatePlaybackTemporarily"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [+[MXSessionManager sharedInstance](MXSessionManager setAppAllowedToInitiatePlaybackTemporarily:"setAppAllowedToInitiatePlaybackTemporarily:", value];
      cmsmStartAllowedToInitiatePlaybackTemporarilyTimer();
      goto LABEL_26;
    }

    v11 = *MEMORY[0x1E69E9840];
    goto LABEL_21;
  }

  if ([internal isEqualToString:@"AllowAppToInitiateRecordingTemporarily"])
  {
    if ([(MXSystemController *)self hasEntitlementToInitiateRecordingTemporarily])
    {
      if (!value || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [+[MXSessionManager sharedInstance](MXSessionManager setAppAllowedToInitiateRecordingTemporarily:"setAppAllowedToInitiateRecordingTemporarily:", value];
        goto LABEL_26;
      }

      [MXSystemController(InternalUse) setAttributeForKeyInternal:? andValue:?];
    }

    else
    {
      [MXSystemController(InternalUse) setAttributeForKeyInternal:? andValue:?];
    }

    goto LABEL_131;
  }

  if ([internal isEqualToString:@"AppWantsVolumeChanges"])
  {
    -[MXSystemController setAppWantsVolumeChanges:](self, "setAppWantsVolumeChanges:", [value BOOLValue]);
    goto LABEL_26;
  }

  if ([internal isEqualToString:@"CarSpeechStateChanged"])
  {
    if (!value || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if ([value BOOLValue])
      {
        CMSMNotificationUtility_PostVoicePromptStyleDidChange();
      }

      goto LABEL_26;
    }

    v28 = *MEMORY[0x1E69E9840];
    goto LABEL_21;
  }

  if ([internal isEqualToString:@"ClientAuditToken"])
  {
    if (value)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MXSystemController *)self setAuditToken:value];
        *&v14 = -1;
        *(&v14 + 1) = -1;
        *valuePtr[0].val = v14;
        *&valuePtr[0].val[4] = v14;
        [value getBytes:valuePtr length:32];
        v15 = *MEMORY[0x1E695E480];
        token = valuePtr[0];
        v16 = SecTaskCreateWithAuditToken(v15, &token);
        v17 = SecTaskCopySigningIdentifier(v16, 0);
        [(MXSystemController *)self setBundleID:v17];
        [(MXSystemController *)self setHasEntitlementForPIDInheritance:0];
        v18 = SecTaskCopyValueForEntitlement(v16, @"com.apple.UIKit.vends-view-services", 0);
        if (([v18 BOOLValue] & 1) != 0 || (v18, v18 = SecTaskCopyValueForEntitlement(v16, @"com.apple.private.coremedia.pidinheritance.allow", 0), objc_msgSend(v18, "BOOLValue")))
        {
          [(MXSystemController *)self setHasEntitlementForPIDInheritance:1];
        }

        clientPID = [(MXSystemController *)self clientPID];
        if (clientPID != getpid())
        {
          v20 = SecTaskCopyValueForEntitlement(v16, @"com.apple.private.mediaexperience.allowwombatenabled", 0);
          -[MXSystemController setHasEntitlementToEnableWombat:](self, "setHasEntitlementToEnableWombat:", [v20 BOOLValue]);

          v21 = SecTaskCopyValueForEntitlement(v16, @"com.apple.private.mediaexperience.setsilentmode.allow", 0);
          -[MXSystemController setHasEntitlementToSetSilentMode:](self, "setHasEntitlementToSetSilentMode:", [v21 BOOLValue]);

          v22 = SecTaskCopyValueForEntitlement(v16, @"com.apple.private.mediaexperience.silentmodenotifications.allow", 0);
          -[MXSystemController setHasEntitlementForSilentModeNotifications:](self, "setHasEntitlementForSilentModeNotifications:", [v22 BOOLValue]);

          v23 = SecTaskCopyValueForEntitlement(v16, @"com.apple.private.mediaexperience.allowvoiprecording", 0);
          -[MXSystemController setHasEntitlementToInitiateRecordingTemporarily:](self, "setHasEntitlementToInitiateRecordingTemporarily:", [v23 BOOLValue]);

          if (![(MXSystemController *)self hasEntitlementToInitiateRecordingTemporarily])
          {
            v24 = SecTaskCopyValueForEntitlement(v16, @"com.apple.private.mediaexperience.allowrecordingtemporarily", 0);
            -[MXSystemController setHasEntitlementToInitiateRecordingTemporarily:](self, "setHasEntitlementToInitiateRecordingTemporarily:", [v24 BOOLValue]);
          }

          v25 = SecTaskCopyValueForEntitlement(v16, @"com.apple.private.mediaexperience.clearmutestatecache.allow", 0);
          -[MXSystemController setHasEntitlementToClearCacheForFirstPartyPhoneCalls:](self, "setHasEntitlementToClearCacheForFirstPartyPhoneCalls:", [v25 BOOLValue]);

          if (MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled())
          {
            v26 = SecTaskCopyValueForEntitlement(v16, @"com.apple.private.mediaexperience.relativevoiceovervolume.allow", 0);
            [(MXSystemController *)self setHasEntitlementToSetRelativeVoiceOverVolume:v26 != 0];
          }

          v27 = SecTaskCopyValueForEntitlement(v16, @"com.apple.private.mediaexperience.systemcontroller.allowappstoinitiateplayback", 0);
          -[MXSystemController setHasEntitlementToAllowAppsToInitiatePlayback:](self, "setHasEntitlementToAllowAppsToInitiatePlayback:", [v27 BOOLValue]);
        }

        if (v16)
        {
          CFRelease(v16);
        }

        if (v17)
        {
          CFRelease(v17);
        }

        goto LABEL_26;
      }
    }

    [MXSystemController(InternalUse) setAttributeForKeyInternal:? andValue:?];
LABEL_131:
    refreshed = valuePtr[0].val[0];
    goto LABEL_27;
  }

  if ([internal isEqualToString:@"NowPlayingAppShouldResumeForCarPlay"])
  {
    if (!value || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      -[MXSessionManager updateNowPlayingAppShouldResumeForCarPlay:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "updateNowPlayingAppShouldResumeForCarPlay:", [value BOOLValue]);
      goto LABEL_26;
    }

    v32 = *MEMORY[0x1E69E9840];
    goto LABEL_21;
  }

  if ([internal isEqualToString:@"PostInterruptionEndedNotification"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v33 = *MEMORY[0x1E69E9840];
      goto LABEL_21;
    }

    v29 = [objc_msgSend(value objectForKey:{@"AudioSessionID", "unsignedIntValue"}];
    v30 = [objc_msgSend(value objectForKey:{@"IsResumable", "BOOLValue"}];
    if (unk_1EB75DE80)
    {
      v123 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v50 = CMSMUtility_PostInterruptionEndedNotificationForAudioSessionID(v29, v30);
LABEL_101:
    refreshed = v50;
    goto LABEL_27;
  }

  if ([internal isEqualToString:@"StarkMainAudioIsOwnedByiOSButBorrowedByCar"])
  {
    if (!value || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      -[MXSessionManager setStarkMainAudioIsOwnedByiOSButBorrowedByCar:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "setStarkMainAudioIsOwnedByiOSButBorrowedByCar:", [value BOOLValue]);
      goto LABEL_26;
    }

    v47 = *MEMORY[0x1E69E9840];
    goto LABEL_21;
  }

  if ([internal isEqualToString:@"SubscribeToNotifications"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:{-[MXSystemController notificationsSubscribedTo](self, "notificationsSubscribedTo")}];
      v118 = 0u;
      v119 = 0u;
      v120 = 0u;
      v121 = 0u;
      v35 = [value countByEnumeratingWithState:&v118 objects:v125 count:16];
      if (!v35)
      {
        goto LABEL_85;
      }

      v36 = v35;
      v37 = *v119;
      v116 = *v119;
      while (1)
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v119 != v37)
          {
            objc_enumerationMutation(value);
          }

          v39 = *(*(&v118 + 1) + 8 * i);
          if (![v39 isEqualToString:{@"SilentModeEnabledDidChange", p_token, v115}])
          {
            goto LABEL_75;
          }

          if ([(MXSystemController *)self hasEntitlementForSilentModeNotifications]|| [(MXSystemController *)self hasEntitlementToSetSilentMode])
          {
            [v34 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), v39}];
LABEL_75:
            [v34 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), v39}];
            if ([v39 isEqualToString:@"EffectiveVolumeDidChange"])
            {
              [v34 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), @"SystemVolumeDidChange"}];
              [v34 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), @"UserFullMuteDidChange"}];
            }

            continue;
          }

          v123 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v41 = v123;
          if (os_log_type_enabled(v40, type))
          {
            v42 = v41;
          }

          else
          {
            v42 = v41 & 0xFFFFFFFE;
          }

          if (v42)
          {
            displayID = [(MXSystemController *)self displayID];
            token.val[0] = 136315394;
            *&token.val[1] = "[MXSystemController(InternalUse) setAttributeForKeyInternal:andValue:]";
            LOWORD(token.val[3]) = 2114;
            *(&token.val[3] + 2) = displayID;
            LODWORD(v115) = 22;
            p_token = &token;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v37 = v116;
        }

        v36 = [value countByEnumeratingWithState:&v118 objects:v125 count:16];
        if (!v36)
        {
LABEL_85:
          [(MXSystemController *)self setNotificationsSubscribedTo:v34, p_token, v115];

          goto LABEL_26;
        }
      }
    }

    refreshed = FigSignalErrorAtGM();
    if (!unk_1EB75DE80)
    {
      goto LABEL_27;
    }

LABEL_93:
    v123 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_27;
  }

  if ([internal isEqualToString:@"VibeIntensity"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [value floatValue];
      v45 = v44;
      if (v44 != PVMGetVibeIntensityPreference())
      {
        if (unk_1EB75DE80)
        {
          v123 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v46 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v60 = PVMSetVibeIntensityPreference(v45);
        refreshed = v60;
        if (!v60)
        {
          FigRoutingContextUtilities_LogCurrentState(v60, v61);
        }

        goto LABEL_27;
      }

      goto LABEL_26;
    }

    v51 = *MEMORY[0x1E69E9840];
    goto LABEL_21;
  }

  if ([internal isEqualToString:@"RemoteDeviceIDs"])
  {
    if (MX_FeatureFlags_IsAirPlayDaemonEnabled())
    {
      if (!value || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if (unk_1EB75DE80)
        {
          v123 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v49 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v63 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:value];
        [(MXSystemController *)self setRemoteDeviceIDs:v63];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __71__MXSystemController_InternalUse__setAttributeForKeyInternal_andValue___block_invoke;
        block[3] = &unk_1E7AE7CE0;
        block[4] = self;
        if (setAttributeForKeyInternal_andValue__onceToken == -1)
        {
          refreshed = 0;
          goto LABEL_27;
        }

        dispatch_once(&setAttributeForKeyInternal_andValue__onceToken, block);
        goto LABEL_26;
      }

      v58 = *MEMORY[0x1E69E9840];
    }

    else
    {
      v55 = *MEMORY[0x1E69E9840];
    }

    goto LABEL_21;
  }

  if ([internal isEqualToString:@"AppToInterruptCurrentNowPlayingSession"])
  {
    if (!value || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if (unk_1EB75DE80)
      {
        v123 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [+[MXSessionManager appToInterruptCurrentNowPlayingSession:p_token], "appToInterruptCurrentNowPlayingSession:", value];
      goto LABEL_26;
    }

    v59 = *MEMORY[0x1E69E9840];
    goto LABEL_21;
  }

  if ([internal isEqualToString:@"AvailableForVoicePrompts"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      Value = CFDictionaryGetValue(value, @"PortNumber");
      if (Value)
      {
        valuePtr[0].val[0] = 0;
        CFNumberGetValue(Value, kCFNumberSInt32Type, valuePtr);
        v54 = CFDictionaryGetValue(value, @"BTDetails_IsAvailableForVoicePrompts") == *MEMORY[0x1E695E4D0];
        refreshed = vaeSetPortAvailableForVoicePrompts(valuePtr[0].val[0], v54);
        cmsmUpdatePickableRouteDescriptionLists(1);
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    v62 = *MEMORY[0x1E69E9840];
    goto LABEL_21;
  }

  if ([internal isEqualToString:@"CallScreeningStatus"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v64 = *MEMORY[0x1E69E9840];
      goto LABEL_21;
    }

    bOOLValue = [value BOOLValue];
    v57 = *MEMORY[0x1E69E9840];

    return vaemSetCallScreeningStatus(bOOLValue);
  }

  if ([internal isEqualToString:@"CanBeNowPlayingApp"])
  {
    [(MXSystemController *)self applyCanBeNowPlayingApp:value];
    goto LABEL_26;
  }

  if ([internal isEqualToString:@"DownlinkMute"])
  {
    if (value)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v72 = *MEMORY[0x1E69E9840];
        goto LABEL_21;
      }
    }

    if (MX_FeatureFlags_IsCallManagementMuteControlEnabled())
    {
      v65 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v65 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", 1), @"MuteCmd"}];
      [v65 setObject:value forKey:@"MuteValue"];
      refreshed = CMSMUtility_AudioToolboxServerRefreshMuteState();

      goto LABEL_27;
    }

    bOOLValue2 = [value BOOLValue];
    v74 = *MEMORY[0x1E69E9840];

    return vaemSetDownlinkMute(bOOLValue2);
  }

  if ([internal isEqualToString:@"DuckScalarForVoiceOver"])
  {
    if (!MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled())
    {
      v78 = *MEMORY[0x1E69E9840];
      goto LABEL_21;
    }

    if (![(MXSystemController *)self hasEntitlementToSetRelativeVoiceOverVolume])
    {
      v79 = *MEMORY[0x1E69E9840];
      goto LABEL_21;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v82 = *MEMORY[0x1E69E9840];
      goto LABEL_21;
    }

    [value floatValue];
    v67 = v66;
    v68 = +[MXSessionManager sharedInstance];
    LODWORD(v69) = v67;
    [(MXSessionManager *)v68 setDuckScalarForVoiceOver:v69];
    goto LABEL_26;
  }

  if ([internal isEqualToString:@"FullMute"])
  {
    if (value)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v83 = *MEMORY[0x1E69E9840];
        goto LABEL_21;
      }
    }

    bOOLValue3 = [value BOOLValue];
    if (vaemGetFullMute() != bOOLValue3)
    {
      if (unk_1EB75DE80)
      {
        v123 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v71 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v50 = vaemSetFullMute();
      goto LABEL_101;
    }

LABEL_26:
    refreshed = 0;
LABEL_27:
    v13 = *MEMORY[0x1E69E9840];
    return refreshed;
  }

  if ([internal isEqualToString:@"HeadphoneVolumeLimit"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v84 = *MEMORY[0x1E69E9840];
      goto LABEL_21;
    }

    [value floatValue];
    v76 = v75;
    VolumeSequenceNumber = CMSMUtility_GetVolumeSequenceNumber();
    PVMSetVolumeLimit(VolumeSequenceNumber, v76);
    goto LABEL_26;
  }

  if ([internal isEqualToString:@"InterruptAudioSessionIDForHandoff"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v85 = *MEMORY[0x1E69E9840];
      goto LABEL_21;
    }

    unsignedIntValue = [value unsignedIntValue];
    v81 = *MEMORY[0x1E69E9840];

    return CMSMUtility_InterruptAudioSessionIDForHandoff(unsignedIntValue);
  }

  if ([internal isEqualToString:@"MakeStarkPortRoutableForPhoneCall"])
  {
    if (value)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v87 = *MEMORY[0x1E69E9840];
        goto LABEL_21;
      }
    }

    -[MXSessionManager makeStarkPortRoutableForPhoneCall:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "makeStarkPortRoutableForPhoneCall:", [value BOOLValue]);
    goto LABEL_26;
  }

  if ([internal isEqualToString:@"MakeStarkPortRoutableForPlayingSession"])
  {
    if (value)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v90 = *MEMORY[0x1E69E9840];
        goto LABEL_21;
      }
    }

    -[MXSessionManager makeStarkPortRoutableForPlayingSession:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "makeStarkPortRoutableForPlayingSession:", [value BOOLValue]);
    goto LABEL_26;
  }

  if ([internal isEqualToString:@"IsMaximumSpeakerVolumeLimitEnabled"])
  {
    if (!MX_FeatureFlags_IsMaxSpeakerVolumeLimitEnabled())
    {
      [MXSystemController(InternalUse) setAttributeForKeyInternal:? andValue:?];
      goto LABEL_131;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MXSystemController(InternalUse) setAttributeForKeyInternal:? andValue:?];
      goto LABEL_131;
    }

    bOOLValue4 = [value BOOLValue];
    if (PVMIsMaxVolumeLimitForBuiltInSpeakerEnabled() == bOOLValue4)
    {
      goto LABEL_26;
    }

    refreshed = PVMToggleMaxVolumeLimitForBuiltInSpeaker(bOOLValue4);
    if (refreshed)
    {
      goto LABEL_93;
    }

    v93 = PVMGetCurrentMaxVolumeLimitForBuiltInSpeaker();
    v94 = bOOLValue4;
LABEL_199:
    CMSMNotificationUtility_PostMaximumVolumeLimitForBuiltInSpeakerDidChangeIfNeeded(v94, v93);
    goto LABEL_27;
  }

  if ([internal isEqualToString:@"MaximumSpeakerVolumeLimit"])
  {
    if (!MX_FeatureFlags_IsMaxSpeakerVolumeLimitEnabled())
    {
      [MXSystemController(InternalUse) setAttributeForKeyInternal:? andValue:?];
      goto LABEL_131;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MXSystemController(InternalUse) setAttributeForKeyInternal:? andValue:?];
      goto LABEL_131;
    }

    [value floatValue];
    v89 = v88;
    refreshed = PVMSetMaxVolumeLimitForBuiltInSpeaker(v88);
    if (refreshed)
    {
      goto LABEL_93;
    }

    v94 = PVMIsMaxVolumeLimitForBuiltInSpeakerEnabled() != 0;
    v93 = v89;
    goto LABEL_199;
  }

  if ([internal isEqualToString:@"PreferHeadphonesOverCarsAndSpeakersEnabled"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue5 = [value BOOLValue];
      if (bOOLValue5 != +[MXSystemController preferHeadphonesOverCarsAndSpeakersEnabled])
      {
        [MXSystemController setPreferHeadphonesOverCarsAndSpeakersEnabled:bOOLValue5];
        MXCFPreferencesSetAndSynchronizeUserPreference(@"PreferHeadphonesOverCarsAndSpeakersEnabled", value);
        CMSMNotificationUtility_PostPreferHeadphonesOverCarsAndSpeakersDidChange(bOOLValue5);
      }

      goto LABEL_26;
    }

    [MXSystemController(InternalUse) setAttributeForKeyInternal:? andValue:?];
    goto LABEL_131;
  }

  if ([internal isEqualToString:@"OverrideToPartnerRoute"])
  {
    if (unk_1EB75DE80)
    {
      v123 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v92 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v50 = CMSMVAUtility_OverrideToPartnerPort();
    goto LABEL_101;
  }

  if ([internal isEqualToString:@"PickedRoute"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v97 = *MEMORY[0x1E69E9840];
      goto LABEL_21;
    }

    [(MXSystemController *)self displayID];
    v95 = *MEMORY[0x1E69E9840];

    return cmsmActivateEndpointFromRouteDescription(value);
  }

  if ([internal isEqualToString:@"PickedRouteWithPassword"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v98 = *MEMORY[0x1E69E9840];
      goto LABEL_21;
    }

    [value valueForKey:@"RouteName"];
    if (unk_1EB75DE80)
    {
      v123 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v96 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [objc_msgSend(value valueForKey:{@"AVAudioRouteName", p_token, v115), "isEqualToString:", @"AirTunes"}];
    [(MXSystemController *)self displayID];
    v50 = cmsmActivateEndpointFromRouteDescription(value);
    goto LABEL_101;
  }

  if ([internal isEqualToString:@"PIDToInheritApplicationStateFrom"])
  {
    [(MXSystemController *)self applyPIDToInheritAppStateFrom:value];
    goto LABEL_26;
  }

  if ([internal isEqualToString:@"PopNowPlayingAppStack"])
  {
    if (!MX_FeatureFlags_IsNowPlayingAppStackEnabled())
    {
      [MXSystemController(InternalUse) setAttributeForKeyInternal:? andValue:?];
      goto LABEL_131;
    }

    +[MXNowPlayingAppManager processNowPlayingAppPIDChangeIfNeeded:](MXNowPlayingAppManager, "processNowPlayingAppPIDChangeIfNeeded:", [+[MXNowPlayingAppManager resetNowPlayingAppIfNeeded:"resetNowPlayingAppIfNeeded:allowedToBeNowPlaying:canBeNowPlayingApp:"];
    goto LABEL_26;
  }

  if ([internal isEqualToString:@"RouteAwayFromAirPlay"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (unk_1EB75DE80)
      {
        v123 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v99 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMSMAP_DisconnectAllAirPlaySessions(1);
      goto LABEL_26;
    }

    v101 = *MEMORY[0x1E69E9840];
    goto LABEL_21;
  }

  if ([internal isEqualToString:@"ThermalControlInfo"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v103 = *MEMORY[0x1E69E9840];
      goto LABEL_21;
    }

    v100 = *MEMORY[0x1E69E9840];

    return vaemSetThermalControlInfo(value);
  }

  if ([internal isEqualToString:@"ThermalGainAdjustment_Haptics"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v105 = *MEMORY[0x1E69E9840];
      goto LABEL_21;
    }

    [internal floatValue];
    vaemUpdateHapticsThermalGainAdjustment(v102);
    goto LABEL_26;
  }

  if ([internal isEqualToString:@"ThermalGainAdjustment_Speaker"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v107 = *MEMORY[0x1E69E9840];
      goto LABEL_21;
    }

    [internal floatValue];
    vaemUpdateSpeakerThermalGainAdjustment(v104);
    goto LABEL_26;
  }

  if (![internal isEqualToString:@"UplinkMute"])
  {
    if ([internal isEqualToString:@"WombatEnabled"])
    {
      if (![(MXSystemController *)self hasEntitlementToEnableWombat])
      {
        v109 = *MEMORY[0x1E69E9840];
        goto LABEL_21;
      }

      -[MXSessionManager setWombatEnabled:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "setWombatEnabled:", [value BOOLValue]);
    }

    goto LABEL_26;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v108 = *MEMORY[0x1E69E9840];
    goto LABEL_21;
  }

  if (MX_FeatureFlags_IsSessionBasedMutingEnabled())
  {
    v123 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v106 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    MXSimulateCrash("This is unexpected. Please file a radar to MediaExperience (New Bugs) | All.");
    refreshed = -12984;
    goto LABEL_27;
  }

  if (MX_FeatureFlags_IsCallManagementMuteControlEnabled())
  {
    v110 = +[MXSessionManager sharedInstance];
    *&v111 = -1;
    *(&v111 + 1) = -1;
    *valuePtr[0].val = v111;
    *&valuePtr[0].val[4] = v111;
    v50 = [(MXSessionManager *)v110 updateMuteState:valuePtr muteValue:value];
    goto LABEL_101;
  }

  bOOLValue6 = [value BOOLValue];
  v113 = *MEMORY[0x1E69E9840];

  return vaemSetUplinkMute(bOOLValue6);
}

void __71__MXSystemController_InternalUse__setAttributeForKeyInternal_andValue___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  [MXSystemController mxSystemControllerListAddInstance:objc_loadWeak(&location) isSidekick:1];
  objc_destroyWeak(&location);
}

+ (void)notifyAll:(id)all payload:(id)payload dontPostIfSuspended:(BOOL)suspended remoteDeviceID:(id)d
{
  allCopy = all;
  payloadCopy = payload;
  v12 = MXGetNotificationSenderQueue();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88__MXSystemController_InternalUse__notifyAll_payload_dontPostIfSuspended_remoteDeviceID___block_invoke;
  v13[3] = &unk_1E7AEAA70;
  v13[4] = d;
  v13[5] = all;
  suspendedCopy = suspended;
  v13[6] = payload;
  MXDispatchAsync("+[MXSystemController(InternalUse) notifyAll:payload:dontPostIfSuspended:remoteDeviceID:]", "MXSystemController_Embedded.m", 3312, 0, 0, v12, v13);
}

void __88__MXSystemController_InternalUse__notifyAll_payload_dontPostIfSuspended_remoteDeviceID___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [MXSystemController copyMXSystemControllerList:*(a1 + 32) != 0];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v30;
    v21 = v3;
    do
    {
      v7 = 0;
      do
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v29 + 1) + 8 * v7);
        if (v8)
        {
          if ([*(a1 + 40) isEqualToString:@"ActiveAudioRouteDidChange"])
          {
            cf = 0;
            FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(&cf);
            if (!FigRoutingContextUtilities_IsFollowingAnotherContext(cf) && (([objc_msgSend(v8 "displayID")] & 1) != 0 || objc_msgSend(objc_msgSend(v8, "displayID"), "isEqualToString:", @"com.apple.TVMusic")))
            {
              if (unk_1EB75DE80)
              {
                v27 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                v3 = v21;
                v9 = 1;
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              else
              {
                v9 = 1;
              }
            }

            else
            {
              v9 = 0;
            }

            if (cf)
            {
              CFRelease(cf);
            }
          }

          else
          {
            v9 = 0;
          }

          v10 = [objc_msgSend(v8 notificationsSubscribedTo];
          v11 = *(a1 + 56) == 1 && MX_RunningBoardServices_GetApplicationStateForPID([v8 clientPID], 0) - 1 < 2;
          if (!((v9 | v11) & 1 | (v10 == 0)) && (!*(a1 + 32) || [v8 remoteDeviceID] && (objc_msgSend(*(a1 + 32), "isEqualToString:", objc_msgSend(v8, "remoteDeviceID")) & 1) != 0 || MX_FeatureFlags_IsAirPlayDaemonEnabled() && *(a1 + 32) && objc_msgSend(v8, "remoteDeviceIDs") && objc_msgSend(objc_msgSend(v8, "remoteDeviceIDs"), "containsObject:", *(a1 + 32))))
          {
            [v2 addObject:v8];
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v13 = [v3 countByEnumeratingWithState:&v29 objects:v34 count:16];
      v5 = v13;
    }

    while (v13);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = [v2 countByEnumeratingWithState:&v22 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v2);
        }

        [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      }

      v15 = [v2 countByEnumeratingWithState:&v22 objects:v33 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)isAppAllowedToInitiatePlayback:(id)playback
{
  v13 = *MEMORY[0x1E69E9840];
  if (playback)
  {
    appsAllowedToInitiatePlaybackTimestamp = [(MXSystemController *)self appsAllowedToInitiatePlaybackTimestamp];
    if (appsAllowedToInitiatePlaybackTimestamp)
    {
      [objc_msgSend(MEMORY[0x1E695DF00] "date")];
      if (v6 > 10.0)
      {
        if (unk_1EB75DE80)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [(MXSystemController *)self setAppsAllowedToInitiatePlayback:0, v11, v12];
        [(MXSystemController *)self setAppsAllowedToInitiatePlaybackClientType:0];
        [(MXSystemController *)self setAppsAllowedToInitiatePlaybackTimestamp:0];
      }
    }

    result = [(NSSet *)[(MXSystemController *)self appsAllowedToInitiatePlayback] containsObject:playback];
  }

  else
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    result = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

+ (BOOL)isAppAllowedToInitiatePlayback:(id)playback
{
  v20 = *MEMORY[0x1E69E9840];
  if (playback)
  {
    v4 = [MXSystemController copyMXSystemControllerList:0];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if ([*(*(&v13 + 1) + 8 * i) isAppAllowedToInitiatePlayback:playback])
          {
            v9 = 1;
            goto LABEL_12;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_12:
  }

  else
  {
    v18 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v9 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (void)dumpInfoOfMXSystemControllers
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = &qword_1EB75D000;
  if (unk_1EB75DE80)
  {
    v43 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = [MXSystemController copyMXSystemControllerList:0, v30, v32];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v38 objects:v49 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v39;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v38 + 1) + 8 * i);
        if (v9)
        {
          v10 = unk_1EB75DE80 == 0;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
          v43 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v12 = v43;
          if (os_log_type_enabled(v11, type))
          {
            v13 = v12;
          }

          else
          {
            v13 = v12 & 0xFFFFFFFE;
          }

          if (v13)
          {
            info = [v9 info];
            v45 = 136315394;
            v46 = "+[MXSystemController(InternalUse) dumpInfoOfMXSystemControllers]";
            v47 = 2114;
            v48 = info;
            LODWORD(v33) = 22;
            v31 = &v45;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v2 = &qword_1EB75D000;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v38 objects:v49 count:16];
    }

    while (v6);
  }

  v15 = [MXSystemController copyMXSystemControllerList:1];
  if (unk_1EB75DE80)
  {
    v43 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v17 = v43;
    if (os_log_type_enabled(v16, type))
    {
      v18 = v17;
    }

    else
    {
      v18 = v17 & 0xFFFFFFFE;
    }

    if (v18)
    {
      v45 = 136315138;
      v46 = "+[MXSystemController(InternalUse) dumpInfoOfMXSystemControllers]";
      LODWORD(v33) = 12;
      v31 = &v45;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v19 = [v15 countByEnumeratingWithState:&v34 objects:v44 count:{16, v31, v33}];
  if (v19)
  {
    v20 = v19;
    v21 = *v35;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(v15);
        }

        v23 = *(*(&v34 + 1) + 8 * j);
        if (v23)
        {
          v24 = *(v2 + 928) == 0;
        }

        else
        {
          v24 = 1;
        }

        if (!v24)
        {
          v43 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v26 = v43;
          if (os_log_type_enabled(v25, type))
          {
            v27 = v26;
          }

          else
          {
            v27 = v26 & 0xFFFFFFFE;
          }

          if (v27)
          {
            info2 = [v23 info];
            v45 = 136315394;
            v46 = "+[MXSystemController(InternalUse) dumpInfoOfMXSystemControllers]";
            v47 = 2114;
            v48 = info2;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v2 = &qword_1EB75D000;
        }
      }

      v20 = [v15 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v20);
  }

  v29 = *MEMORY[0x1E69E9840];
}

+ (int)getPIDToInheritAppStateFromForPID:(int)d
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [MXSystemController copyMXSystemControllerList:0];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (v9 && [*(*(&v13 + 1) + 8 * i) clientPID] == d && objc_msgSend(v9, "pidToInheritAppStateFrom"))
        {
          pidToInheritAppStateFrom = [v9 pidToInheritAppStateFrom];
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  pidToInheritAppStateFrom = 0;
LABEL_13:

  v11 = *MEMORY[0x1E69E9840];
  return pidToInheritAppStateFrom;
}

+ (BOOL)getCanBeNowPlayingAppForPID:(int)d
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [MXSystemController copyMXSystemControllerList:0];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (v9 && [*(*(&v13 + 1) + 8 * i) clientPID] == d)
        {
          canBeNowPlayingApp = [v9 canBeNowPlayingApp];
          goto LABEL_12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  canBeNowPlayingApp = 0;
LABEL_12:

  v11 = *MEMORY[0x1E69E9840];
  return canBeNowPlayingApp;
}

+ (void)mxSystemControllerListAddInstance:(id)instance isSidekick:(BOOL)sidekick
{
  sidekickCopy = sidekick;
  objc_initWeak(&location, instance);
  [gMXSystemControllerListLock lock];
  if (sidekickCopy)
  {
    v5 = &gSidekickMXSystemControllerList;
    [gSidekickMXSystemControllerList addPointer:objc_loadWeak(&location)];
  }

  else
  {
    v5 = &gMXSystemControllerList;
    [gMXSystemControllerList addPointer:objc_loadWeak(&location)];
  }

  [*v5 compact];
  [gMXSystemControllerListLock unlock];
  objc_destroyWeak(&location);
}

+ (void)updateMXSystemControllerList
{
  [gMXSystemControllerListLock lock];
  [gMXSystemControllerList addPointer:0];
  [gMXSystemControllerList compact];
  [gMXSystemControllerList addPointer:0];
  [gMXSystemControllerList compact];
  v2 = gMXSystemControllerListLock;

  [v2 unlock];
}

+ (id)copyMXSystemControllerList:(BOOL)list
{
  listCopy = list;
  v4 = objc_autoreleasePoolPush();
  [gMXSystemControllerListLock lock];
  v5 = &gSidekickMXSystemControllerList;
  if (!listCopy)
  {
    v5 = &gMXSystemControllerList;
  }

  allObjects = [*v5 allObjects];
  [gMXSystemControllerListLock unlock];
  objc_autoreleasePoolPop(v4);
  return allObjects;
}

- (uint64_t)applyPIDToInheritAppStateFrom:(_DWORD *)a1 .cold.1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)applyPIDToInheritAppStateFrom:(_DWORD *)a1 .cold.2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end