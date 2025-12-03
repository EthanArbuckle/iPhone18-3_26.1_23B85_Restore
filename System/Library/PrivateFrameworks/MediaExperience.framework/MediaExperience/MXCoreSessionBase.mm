@interface MXCoreSessionBase
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)didExtractEntitlementsFromAuditToken;
- (BOOL)hasAudioCategory:(id)category;
- (BOOL)hasAudioMode:(id)mode;
- (BOOL)hasEchoCancelledInput;
- (BOOL)isActiveDeviceWithValidSessionID:(id)d;
- (BOOL)isRecordingWithBTManagedDevice;
- (BOOL)isRoutedToOnDemandVAD;
- (BOOL)isSidekick;
- (BOOL)isUsingBuiltInMic;
- (BOOL)processActiveDevice:(id)device;
- (BOOL)shouldEnableBluetoothRecording;
- (BOOL)shouldSendSessionConfigurationInfoToVA;
- (BOOL)supportsEchoCancelledInput;
- (BOOL)updateAudioBehaviorFromVARouteConfig:(id)config;
- (BOOL)updateSessionRoutingInformation:(id)information;
- (BOOL)wasRecentlyActivated;
- (BOOL)willRouteToOnDemandVADOnActivation:(id)activation;
- (MXCoreSessionBase)init;
- (NSArray)detailedInputRouteDescriptions;
- (NSDictionary)additiveRoutingInfo;
- (id)copyAvailableRouteControlFeatures:(id)features;
- (id)copySessionRoutingInfoFromVA;
- (id)defaultBuiltInRouteToUse;
- (id)info;
- (int)addSessionAudioObject;
- (int)sendSessionConfigurationInfoToVA:(id)a;
- (int)updateAudioSessionIDAndAudioObject:(unsigned int)object;
- (int)updateShadowingAudioSessionOptions:(id)options shouldUpdateVAConfig:(BOOL *)config;
- (unsigned)getSessionIDFromAudioObject;
- (void)dealloc;
- (void)dumpDebugConfigInfo;
- (void)dumpDebugStateInfo;
- (void)extractAndSetAuditToken:(id)token;
- (void)populateAdditiveRoutingInfoWithBTRecordingCustomizations:(id)customizations;
- (void)populateAdditiveRoutingInfoWithDefaultBuiltInRouteCustomization:(id)customization;
- (void)populateAdditiveRoutingInfoWithEchoCancelledInput:(id)input;
- (void)populateAdditiveRoutingInfoWithFollowingVADInformation:(id)information inputOnly:(BOOL)only;
- (void)populateAdditiveRoutingInfoWithRouteControlFeatures:(id)features;
- (void)postSessionNotification:(id)notification payload:(id)payload;
- (void)processOnDemandVADLossIfNeeded:(BOOL)needed isPreviousInputVADOnDemand:(BOOL)demand;
- (void)processSessionRoutingInfo:(id)info;
- (void)processSessionRoutingInfoDidChange;
- (void)removeSessionAudioObject;
- (void)setAuditToken:(id *)token;
- (void)setIsActive:(BOOL)active;
- (void)unregisterSessionAudioObject;
- (void)updateClientName:(id)name;
- (void)updateDefaultInterruptionFadeDuration:(id)duration;
@end

@implementation MXCoreSessionBase

- (MXCoreSessionBase)init
{
  v4.receiver = self;
  v4.super_class = MXCoreSessionBase;
  v2 = [(MXCoreSessionBase *)&v4 init];
  if (v2)
  {
    *(v2 + 16) = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:FigAtomicIncrement64()];
    v2[9] = 0;
    *(v2 + 29) = 0;
    *(v2 + 10) = @"SoloAmbientSound";
    *(v2 + 11) = @"Default";
    v2[18] = 0;
    v2[15] = 0;
    v2[8] = 0;
    *(v2 + 30) = 0;
    *(v2 + 17) = 0;
    *(v2 + 18) = 0;
    v2[27] = 1;
  }

  return v2;
}

- (BOOL)isRecordingWithBTManagedDevice
{
  v14 = *MEMORY[0x1E69E9840];
  detailedInputRouteDescriptions = [(MXCoreSessionBase *)self detailedInputRouteDescriptions];
  if (detailedInputRouteDescriptions)
  {
    v3 = detailedInputRouteDescriptions;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    detailedInputRouteDescriptions = [(NSArray *)detailedInputRouteDescriptions countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (detailedInputRouteDescriptions)
    {
      v4 = detailedInputRouteDescriptions;
      v5 = *v10;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v3);
          }

          if (-[MXAudioAccessoryServices isPortManaged:](+[MXAudioAccessoryServices sharedInstance](MXAudioAccessoryServices, "sharedInstance"), "isPortManaged:", [objc_msgSend(*(*(&v9 + 1) + 8 * i) objectForKey:{@"RouteDetailedDescription_ID", "unsignedIntValue"}]))
          {
            LOBYTE(detailedInputRouteDescriptions) = 1;
            goto LABEL_12;
          }
        }

        v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        LOBYTE(detailedInputRouteDescriptions) = 0;
        if (v4)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_12:
  v7 = *MEMORY[0x1E69E9840];
  return detailedInputRouteDescriptions;
}

- (BOOL)isRoutedToOnDemandVAD
{
  v3 = [CMSUtility_GetCurrentInputVADUID(self) containsString:0x1F2893BD0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && !CMSMUtility_IsCategoryInputOnly([(MXCoreSessionBase *)self audioCategory]))
  {
    v3 |= [CMSUtility_GetCurrentAudioDestination(self) containsString:0x1F2893BD0];
  }

  return v3 & 1;
}

- (BOOL)shouldEnableBluetoothRecording
{
  if ([(MXCoreSessionBase *)self enableBluetoothRecordingPreferenceSetByClient])
  {

    return [(MXCoreSessionBase *)self enableBluetoothRecordingPreference];
  }

  else
  {
    DefaultEnableBluetoothRecordingSettingForMode = CMSMUtility_GetDefaultEnableBluetoothRecordingSettingForMode([(MXCoreSessionBase *)self mode]);

    return [DefaultEnableBluetoothRecordingSettingForMode BOOLValue];
  }
}

- (id)defaultBuiltInRouteToUse
{
  if ([(MXCoreSessionBase *)self defaultBuiltInRoutePreferenceSetByClient])
  {

    return [(MXCoreSessionBase *)self defaultBuiltInRoutePreference];
  }

  else
  {
    mode = [(MXCoreSessionBase *)self mode];

    return CMSMUtility_GetDefaultBuiltInRouteSettingForMode(mode);
  }
}

- (int)addSessionAudioObject
{
  v22 = *MEMORY[0x1E69E9840];
  inObjectID = 0;
  audioSessionID = [(MXCoreSessionBase *)self audioSessionID];
  v13 = *"nsscbolg";
  v14 = 0;
  v17 = &audioSessionID;
  v18 = 4;
  p_inObjectID = &inObjectID;
  v20 = 4;
  v3 = CMSMVAUtility_AudioObjectSetPropertyData();
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = inObjectID == 0;
  }

  if (v4)
  {
    inAddress.mSelector = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    *&inAddress.mSelector = 0x676C6F627365726FLL;
    inAddress.mElement = 0;
    v6 = AudioObjectAddPropertyListener(inObjectID, &inAddress, vaemSessionRoutingInfoChangeListener, 0);
    *type = v6;
    if (v6)
    {
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(MXCoreSessionBase *)self setAudioObjectID:inObjectID, v10, v11];
    v3 = *type;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

- (id)info
{
  v13 = MEMORY[0x1E696AEC0];
  v12 = [(MXCoreSessionBase *)self ID];
  clientPID = [(MXCoreSessionBase *)self clientPID];
  clientName = [(MXCoreSessionBase *)self clientName];
  displayID = [(MXCoreSessionBase *)self displayID];
  audioCategory = [(MXCoreSessionBase *)self audioCategory];
  audioMode = [(MXCoreSessionBase *)self audioMode];
  if ([(MXCoreSessionBase *)self isActive])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(MXCoreSessionBase *)self isPlaying])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if ([(MXCoreSessionBase *)self isRecording])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  return [v13 stringWithFormat:@"<ID: %@, PID = %@, Name = %@, BundleID = %@, Category = %@, Mode = %@, Active = %@, Playing = %@, Recording = %@>", v12, clientPID, clientName, displayID, audioCategory, audioMode, v8, v9, v10];
}

- (BOOL)isSidekick
{
  v3 = objc_opt_class();

  return [(MXCoreSessionBase *)self isMemberOfClass:v3];
}

- (NSDictionary)additiveRoutingInfo
{
  if (![(MXCoreSessionBase *)self audioSessionID])
  {
    return 0;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(MXCoreSessionBase *)self displayID]&& !MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled())
  {
    [(NSDictionary *)dictionary setObject:[(MXCoreSessionBase *)self displayID] forKey:0x1F28974F0];
  }

  -[NSDictionary setObject:forKey:](dictionary, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MXCoreSessionBase audioSessionID](self, "audioSessionID")}], 0x1F2897510);
  -[NSDictionary setObject:forKey:](dictionary, "setObject:forKey:", [+[MXSessionManager sharedInstance](MXSessionManager getUncustomizedCategory:"getUncustomizedCategory:", [(MXCoreSessionBase *)self audioCategory]], 0x1F2897170);
  [(NSDictionary *)dictionary setObject:[(MXCoreSessionBase *)self audioMode] forKey:0x1F2897150];
  if ([(MXCoreSessionBase *)self isTheAssistant])
  {
    -[NSDictionary setObject:forKey:](dictionary, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithBool:{-[MXCoreSessionBase isTheAssistant](self, "isTheAssistant")}], 0x1F28911D0);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        MXSimulateCrash("This is an abstract method and should be overriden! Please file a radar against 'MediaExperience Session | All'");
      }
    }
  }

  return dictionary;
}

- (BOOL)shouldSendSessionConfigurationInfoToVA
{
  v7 = *MEMORY[0x1E69E9840];
  IsAdditiveRoutingEnabled = CMSMVAUtility_IsAdditiveRoutingEnabled();
  if (IsAdditiveRoutingEnabled)
  {
    if ([(MXCoreSessionBase *)self audioSessionID]&& [(MXCoreSessionBase *)self audioObjectID])
    {
      LOBYTE(IsAdditiveRoutingEnabled) = 1;
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      LOBYTE(IsAdditiveRoutingEnabled) = 0;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return IsAdditiveRoutingEnabled;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[9].var0[4];
  *retstr->var0 = *self[9].var0;
  *&retstr->var0[4] = v3;
  return self;
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  originalReporterIDs = self->_originalReporterIDs;
  v5 = [(NSArray *)originalReporterIDs countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(originalReporterIDs);
        }

        longLongValue = [*(*(&v17 + 1) + 8 * i) longLongValue];
        off_1EB75E030(longLongValue);
      }

      v6 = [(NSArray *)originalReporterIDs countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  self->_preferredRouteControlFeatures = 0;
  self->_audioDestinationPriority = 0;

  self->_audioBehaviour = 0;
  self->_defaultBuiltInRoutePreference = 0;
  playbackAssertionRef = self->_playbackAssertionRef;
  if (playbackAssertionRef)
  {
    MX_RunningBoardServices_InvalidateAssertion(playbackAssertionRef);

    self->_playbackAssertionRef = 0;
  }

  resumeAssertionRef = self->_resumeAssertionRef;
  if (resumeAssertionRef)
  {
    MX_RunningBoardServices_InvalidateAssertion(resumeAssertionRef);

    self->_resumeAssertionRef = 0;
  }

  resumeBackgroundAppUpdaterTimer = self->_resumeBackgroundAppUpdaterTimer;
  if (resumeBackgroundAppUpdaterTimer)
  {
    dispatch_source_cancel(resumeBackgroundAppUpdaterTimer);

    self->_resumeBackgroundAppUpdaterTimer = 0;
  }

  self->_isPlayingStartTime = 0;
  self->_isPlayingStopTime = 0;

  self->_idleSleepPreventorName = 0;
  self->_idleSleepPreventorCreationTime = 0;
  idleSleepPreventorUpdaterTimer = self->_idleSleepPreventorUpdaterTimer;
  if (idleSleepPreventorUpdaterTimer)
  {
    dispatch_source_cancel(idleSleepPreventorUpdaterTimer);

    self->_idleSleepPreventorUpdaterTimer = 0;
  }

  self->_bundleIdToPAAccessIntervalMap = 0;
  self->_ID = 0;

  self->_clientPID = 0;
  self->_clientName = 0;

  self->_displayID = 0;
  self->_routingContextUUID = 0;

  self->_audioCategory = 0;
  self->_audioMode = 0;

  self->_reporterIDs = 0;
  self->_originalReporterIDs = 0;
  activeOSTransaction = self->_activeOSTransaction;
  if (activeOSTransaction)
  {

    self->_activeOSTransaction = 0;
  }

  self->_timestampWhenMostRecentlyActivated = 0;
  self->_mostRecentSessionInfoSetOnVA = 0;
  v16.receiver = self;
  v16.super_class = MXCoreSessionBase;
  [(MXCoreSessionBase *)&v16 dealloc];
  objc_autoreleasePoolPop(v3);
  v15 = *MEMORY[0x1E69E9840];
}

- (void)updateClientName:(id)name
{
  selfCopy = self;
  if (name)
  {
    nameCopy = name;
    audioSessionID = [(MXCoreSessionBase *)self audioSessionID];
    if ([nameCopy rangeOfString:@"sid:" options:1] == 0x7FFFFFFFFFFFFFFFLL && audioSessionID != 0)
    {
      nameCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"'sid:0x%x', %@", audioSessionID, nameCopy];
      [(MXCoreSessionBase *)selfCopy setClientName:nameCopy];

      return;
    }

    self = selfCopy;
    name = nameCopy;
  }

  [(MXCoreSessionBase *)self setClientName:name];
}

- (BOOL)hasAudioMode:(id)mode
{
  audioMode = [(MXCoreSessionBase *)self audioMode];

  return [(NSString *)audioMode isEqualToString:mode];
}

- (BOOL)hasAudioCategory:(id)category
{
  audioCategory = [(MXCoreSessionBase *)self audioCategory];

  return [(NSString *)audioCategory isEqualToString:category];
}

- (void)extractAndSetAuditToken:(id)token
{
  v10 = *MEMORY[0x1E69E9840];
  if (token)
  {
    *&v4 = -1;
    *(&v4 + 1) = -1;
    v8 = v4;
    v9 = v4;
    [token getBytes:&v8 length:32];
    v7[0] = v8;
    v7[1] = v9;
    [(MXCoreSessionBase *)self setAuditToken:v7];
  }

  else if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setAuditToken:(id *)token
{
  v4 = *&token->var0[4];
  *self->_auditToken.val = *token->var0;
  *&self->_auditToken.val[4] = v4;
  v5 = xpc_copy_entitlement_for_token();
  if (v5)
  {
    v6 = v5;
    [(MXCoreSessionBase *)self setHasEntitlementToSetIsUsingBuiltInMicForRecording:1];
    xpc_release(v6);
  }

  else
  {
    [(MXCoreSessionBase *)self setHasEntitlementToSetIsUsingBuiltInMicForRecording:0];
  }

  v7 = xpc_copy_entitlement_for_token();
  if (v7)
  {
    v8 = v7;
    [(MXCoreSessionBase *)self setHasEntitlementToSuppressRecordingStateToSystemStatus:1];

    xpc_release(v8);
  }

  else
  {

    [(MXCoreSessionBase *)self setHasEntitlementToSuppressRecordingStateToSystemStatus:0];
  }
}

- (void)updateDefaultInterruptionFadeDuration:(id)duration
{
  if ([(MXCoreSessionBase *)self isSidekick])
  {
    v5 = 5.0;
  }

  else
  {
    v5 = 2.0;
  }

  if (![(MXCoreSessionBase *)self hasAudioMode:@"Sleep"]|| ([(MXCoreSessionBase *)self interruptionFadeDuration], *&v6 != 0.7))
  {
    if (![duration isEqualToString:@"Sleep"])
    {
      return;
    }

    [(MXCoreSessionBase *)self interruptionFadeDuration];
    if (*&v6 != v5)
    {
      return;
    }

    v5 = *"333?nsscbolg";
  }

  *&v6 = v5;

  [(MXCoreSessionBase *)self setInterruptionFadeDuration:v6];
}

- (void)setIsActive:(BOOL)active
{
  if (active)
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  else
  {
    date = 0;
  }

  [(MXCoreSessionBase *)self setTimestampWhenMostRecentlyActivated:date];
  self->_isActive = active;
}

- (BOOL)wasRecentlyActivated
{
  timestampWhenMostRecentlyActivated = [(MXCoreSessionBase *)self timestampWhenMostRecentlyActivated];
  if (timestampWhenMostRecentlyActivated)
  {
    [objc_msgSend(MEMORY[0x1E695DF00] "date")];
    LOBYTE(timestampWhenMostRecentlyActivated) = v3 <= 2.0;
  }

  return timestampWhenMostRecentlyActivated;
}

- (BOOL)didExtractEntitlementsFromAuditToken
{
  v8 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [(MXCoreSessionBase *)self auditToken];
  }

  v3 = xpc_copy_entitlement_for_token();
  v4 = v3;
  if (v3)
  {
    if (xpc_dictionary_get_BOOL(v3, "com.apple.private.mediaexperience.suppressrecordingstatetosystemstatus"))
    {
      [(MXCoreSessionBase *)self setHasEntitlementToSuppressRecordingStateToSystemStatus:1];
    }

    xpc_release(v4);
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = v4 != 0;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)populateAdditiveRoutingInfoWithRouteControlFeatures:(id)features
{
  if ([(MXCoreSessionBase *)self preferredRouteControlFeatures])
  {
    v5 = [-[NSDictionary objectForKey:](-[MXCoreSessionBase preferredRouteControlFeatures](self "preferredRouteControlFeatures")];
    if (v5 == 1)
    {
      v6 = MEMORY[0x1E695E118];
      v7 = kVirtualAudioPlugInSessionDescriptionPreferIndependentRoute_CFString;
    }

    else
    {
      if (v5 != 2)
      {
        return;
      }

      [features setObject:MEMORY[0x1E695E118] forKey:@"prefer independent route"];
      v6 = MEMORY[0x1E695E110];
      v7 = kVirtualAudioPlugInSessionDescriptionSharingKey_CFString;
    }

    v8 = *v7;

    [features setObject:v6 forKey:v8];
  }
}

- (void)populateAdditiveRoutingInfoWithEchoCancelledInput:(id)input
{
  if ([(MXCoreSessionBase *)self prefersEchoCancelledInput])
  {
    [input setObject:0x1F28975F0 forKey:0x1F2897150];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MXCoreSessionBase prefersEchoCancelledInput](self, "prefersEchoCancelledInput")}];

    [input setObject:v5 forKey:0x1F2897430];
  }
}

- (void)populateAdditiveRoutingInfoWithBTRecordingCustomizations:(id)customizations
{
  if ([(MXCoreSessionBase *)self allowsBluetoothRecordingCustomization])
  {
    if ([(MXCoreSessionBase *)self shouldEnableBluetoothRecording])
    {
      v5 = MEMORY[0x1E695E110];
    }

    else
    {
      v5 = MEMORY[0x1E695E118];
    }

    [customizations setObject:v5 forKey:0x1F2897330];
  }
}

- (void)populateAdditiveRoutingInfoWithDefaultBuiltInRouteCustomization:(id)customization
{
  if ([(MXCoreSessionBase *)self allowsDefaultBuiltInRouteCustomization])
  {
    if ([-[MXCoreSessionBase defaultBuiltInRouteToUse](self "defaultBuiltInRouteToUse")])
    {
      v5 = MEMORY[0x1E695E118];
    }

    else
    {
      v5 = MEMORY[0x1E695E110];
    }

    [customization setObject:v5 forKey:0x1F2897310];
  }
}

- (void)populateAdditiveRoutingInfoWithFollowingVADInformation:(id)information inputOnly:(BOOL)only
{
  onlyCopy = only;
  v13 = *MEMORY[0x1E69E9840];
  if (!MX_FeatureFlags_IsHighQualityLocalRecordingEnabled() && !MX_FeatureFlags_IsSystemInputPickerEnabled() || ([(MXCoreSessionBase *)self shadowingAudioSessionOptions]& 8) == 0)
  {
    goto LABEL_14;
  }

  v7 = [+[MXSessionManager sharedInstance](MXSessionManager copySessionWithAudioSessionID:"copySessionWithAudioSessionID:", [(MXCoreSessionBase *)self shadowingAudioSessionID]];
  if (!v7)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_14:
    v11 = *MEMORY[0x1E69E9840];
    return;
  }

  v12 = v7;
  if ([v7 isActive])
  {
    if (onlyCopy)
    {
      CurrentInputVADUID = CMSUtility_GetCurrentInputVADUID(v12);
    }

    else
    {
      CurrentInputVADUID = CMSUtility_GetCurrentAudioDestination(v12);
    }

    [information setObject:CurrentInputVADUID forKey:0x1F28975D0];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (NSArray)detailedInputRouteDescriptions
{
  if (![(MXCoreSessionBase *)self isRecording]|| ![(MXCoreSessionBase *)self hasInput])
  {
    return 0;
  }

  v3 = [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager copyDetailedRouteDescription:"copyDetailedRouteDescription:", CMSUtility_GetCurrentInputVADID(self)];
  v4 = [v3 objectForKey:@"RouteDetailedDescription_Inputs"];

  return v4;
}

- (BOOL)isUsingBuiltInMic
{
  v14 = *MEMORY[0x1E69E9840];
  detailedInputRouteDescriptions = [(MXCoreSessionBase *)self detailedInputRouteDescriptions];
  if (detailedInputRouteDescriptions)
  {
    v3 = detailedInputRouteDescriptions;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    detailedInputRouteDescriptions = [(NSArray *)detailedInputRouteDescriptions countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (detailedInputRouteDescriptions)
    {
      v4 = detailedInputRouteDescriptions;
      v5 = *v10;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v3);
          }

          if ([objc_msgSend(*(*(&v9 + 1) + 8 * i) objectForKey:{@"RouteDetailedDescription_PortType", "isEqualToString:", @"MicrophoneBuiltIn"}])
          {
            LOBYTE(detailedInputRouteDescriptions) = 1;
            goto LABEL_12;
          }
        }

        v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        LOBYTE(detailedInputRouteDescriptions) = 0;
        if (v4)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_12:
  v7 = *MEMORY[0x1E69E9840];
  return detailedInputRouteDescriptions;
}

- (BOOL)hasEchoCancelledInput
{
  if (CMSMUtility_IsCategoryInputOnly([(MXCoreSessionBase *)self audioCategory]))
  {
    CurrentInputVADID = CMSUtility_GetCurrentInputVADID(self);
  }

  else
  {
    CurrentInputVADID = CMSUtility_GetCurrentOutputVADID(self);
  }

  return CMSMVAUtility_DoesVADHaveEchoCancelledInput(CurrentInputVADID) != 0;
}

- (BOOL)supportsEchoCancelledInput
{
  VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName([(MXCoreSessionBase *)self audioCategory]);
  VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName([(MXCoreSessionBase *)self audioMode]);
  return CMSMVAUtility_DoesSessionConfigurationSupportEchoCancelledInput(VADCategoryFromFigCategoryName, VADModeFromFigModeName) != 0;
}

- (void)postSessionNotification:(id)notification payload:(id)payload
{
  objc_initWeak(&location, self);
  payloadCopy = payload;
  v7 = MXGetNotificationSenderQueue();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__MXCoreSessionBase_postSessionNotification_payload___block_invoke;
  v8[3] = &unk_1E7AEAD68;
  objc_copyWeak(&v9, &location);
  v8[4] = notification;
  v8[5] = payload;
  MXDispatchAsync("[MXCoreSessionBase postSessionNotification:payload:]", "MXCoreSessionBase.m", 710, 0, 0, v7, v8);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __53__MXCoreSessionBase_postSessionNotification_payload___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 48));
  if (Weak)
  {
    v3 = Weak;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = *(a1 + 40);
    CMSMUtility_PostNotificationToSession(v3, *(a1 + 32));
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)updateAudioBehaviorFromVARouteConfig:(id)config
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [config objectForKey:0x1F28979F0];
  v6 = [objc_msgSend(config objectForKey:{0x1F2897A50), "count"}];
  v7 = [objc_msgSend(config objectForKey:{0x1F2897A70), "count"}];
  v8 = [v5 containsString:0x1F2893BD0];
  if (v5)
  {
    v9 = v8;
    v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v5, 0}];
    v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:{-[MXCoreSessionBase audioBehaviour](self, "audioBehaviour")}];
    v12 = v11;
    if (v6)
    {
      [v11 setObject:v10 forKey:@"AudioBehaviour_Source"];
    }

    if (v7)
    {
      [(MXCoreSessionBase *)self setAudioDestinationPriority:v10];
      [v12 setObject:v10 forKey:@"AudioBehaviour_Destination"];
    }

    v13 = [(NSDictionary *)[(MXCoreSessionBase *)self audioBehaviour] isEqualToDictionary:v12];
    if (!v13)
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [(MXCoreSessionBase *)self setAudioBehaviour:v12, v19, v20];
      CMSMNotificationUtility_PostSessionAudioBehaviourDidChange(self);
      if (v9)
      {
        CMSMNotificationUtility_PostSessionRouteControlFeaturesDidChange(self, 1);
      }

      CMSMVAUtility_UpdateSessionInfoAndReporterIDsOnVA(self, 0);
    }

    v16 = !v13;
  }

  else
  {
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)isActiveDeviceWithValidSessionID:(id)d
{
  v9 = *MEMORY[0x1E69E9840];
  if (!d)
  {
    goto LABEL_6;
  }

  v4 = [d objectForKey:0x1F28979D0];
  if ([v4 count] >= 2 || (v5 = -[MXCoreSessionBase audioSessionID](self, "audioSessionID"), v5 != objc_msgSend(objc_msgSend(v4, "firstObject"), "unsignedIntValue")))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_6:
    result = 0;
    goto LABEL_7;
  }

  result = 1;
LABEL_7:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)processActiveDevice:(id)device
{
  v5 = [(MXCoreSessionBase *)self isActiveDeviceWithValidSessionID:?];
  if (v5)
  {

    LOBYTE(v5) = [(MXCoreSessionBase *)self updateAudioBehaviorFromVARouteConfig:device];
  }

  return v5;
}

- (void)processOnDemandVADLossIfNeeded:(BOOL)needed isPreviousInputVADOnDemand:(BOOL)demand
{
  demandCopy = demand;
  if ([(MXCoreSessionBase *)self isActive])
  {
    v7 = [CMSUtility_GetCurrentInputVADUID(self) containsString:0x1F2893BD0];
    if (!([CMSUtility_GetCurrentAudioDestination(self) containsString:0x1F2893BD0] & 1 | !needed) || ((!demandCopy | v7) & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_initWeak(&location, self);
        v8 = MXGetSerialQueue();
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __79__MXCoreSessionBase_processOnDemandVADLossIfNeeded_isPreviousInputVADOnDemand___block_invoke;
        v10[3] = &unk_1E7AEA958;
        objc_copyWeak(&v11, &location);
        MXDispatchAsync("[MXCoreSessionBase processOnDemandVADLossIfNeeded:isPreviousInputVADOnDemand:]", "MXCoreSessionBase.m", 828, 0, 0, v8, v10);
        objc_destroyWeak(&v11);
        objc_destroyWeak(&location);
        return;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = "Active MXCoreSessionIndependentAudioResource has lost an on-demand VAD! Please file a radar against 'MediaExperience Session | All'";
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return;
        }

        v9 = "Active MXCoreSessionSecure has lost an on-demand VAD! Please file a radar against 'MediaExperience Session | All'";
      }

      MXSimulateCrash(v9);
    }
  }
}

void __79__MXCoreSessionBase_processOnDemandVADLossIfNeeded_isPreviousInputVADOnDemand___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v2 = Weak;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (cmsBeginInterruptionGuts(v2, 0, 2))
    {
      if (dword_1EB75DE40)
      {
        v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMSUtilityApplier_PostNotification_StopCommand(v2, 0);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)updateSessionRoutingInformation:(id)information
{
  v58 = *MEMORY[0x1E69E9840];
  v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v40 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v38 = [CMSUtility_GetCurrentInputVADUID(self) containsString:0x1F2893BD0];
  v37 = [CMSUtility_GetCurrentAudioDestination(self) containsString:0x1F2893BD0];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v5 = [information countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (!v5)
  {
    goto LABEL_37;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v49;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v49 != v8)
      {
        objc_enumerationMutation(information);
      }

      v7 += [(MXCoreSessionBase *)self isActiveDeviceWithValidSessionID:*(*(&v48 + 1) + 8 * i)];
    }

    v6 = [information countByEnumeratingWithState:&v48 objects:v57 count:16];
  }

  while (v6);
  if (v7)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v10 = [information countByEnumeratingWithState:&v42 objects:v52 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v43;
      v14 = 0x1F28979B0;
      v15 = 0x1F28979F0;
      v39 = *v43;
      do
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v43 != v13)
          {
            objc_enumerationMutation(information);
          }

          v17 = *(*(&v42 + 1) + 8 * j);
          if ([(MXCoreSessionBase *)self processActiveDevice:v17, v35, v36])
          {
            v18 = [v17 objectForKey:v14];
            v19 = [v17 objectForKey:v15];
            if (v18)
            {
              v20 = v19 == 0;
            }

            else
            {
              v20 = 1;
            }

            if (v20)
            {
              v47 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v22 = v47;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
              {
                v23 = v22;
              }

              else
              {
                v23 = v22 & 0xFFFFFFFE;
              }

              if (v23)
              {
                v53 = 136315138;
                v54 = "[MXCoreSessionBase updateSessionRoutingInformation:]";
                LODWORD(v36) = 12;
                v35 = &v53;
                _os_log_send_and_compose_impl();
              }

              v12 = 1;
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            else
            {
              v24 = v19;
              [v41 setObject:v19 forKey:v18];
              [v40 setObject:v18 forKey:v24];
              if (dword_1EB75DE40)
              {
                v25 = v15;
                v26 = v14;
                v47 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v28 = v47;
                if (os_log_type_enabled(v27, type))
                {
                  v29 = v28;
                }

                else
                {
                  v29 = v28 & 0xFFFFFFFE;
                }

                if (v29)
                {
                  v53 = 136315394;
                  v54 = "[MXCoreSessionBase updateSessionRoutingInformation:]";
                  v55 = 2114;
                  v56 = v18;
                  LODWORD(v36) = 22;
                  v35 = &v53;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v14 = v26;
                v15 = v25;
                v13 = v39;
              }

              -[MXAdditiveRoutingManager updateDetailedRouteDescription:](+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager, "sharedInstance", v35, v36), "updateDetailedRouteDescription:", [v18 unsignedIntValue]);
              v12 = 1;
            }
          }
        }

        v11 = [information countByEnumeratingWithState:&v42 objects:v52 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
LABEL_37:
    if (dword_1EB75DE40)
    {
      v47 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(MXCoreSessionBase *)self setAudioBehaviour:0, v35, v36];
    [(MXCoreSessionBase *)self setAudioDestinationPriority:0];
    cmsUpdateAudioBehavior(self);
    CMSMNotificationUtility_PostSessionRouteControlFeaturesDidChange(self, 0);
    if ([(MXCoreSessionBase *)self isActive])
    {
      if (dword_1EB75DE40)
      {
        v47 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      MXSimulateCrash("Active core session has lost an on-demand VAD! Please file a radar against 'MediaExperience Session | All'");
    }

    v12 = 1;
  }

  v32 = -[NSDictionary allKeys]([+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager vadIDToName:v35], "allKeys");
  [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager populateVirtualAudioDeviceInfoFromSessionAudioBehaviors:"populateVirtualAudioDeviceInfoFromSessionAudioBehaviors:newVADIDToNameMap:" newVADIDToNameMap:v40, v41];
  [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager discardUnavailableVADInfoFromDetailedRouteDescriptionIfNeeded:"discardUnavailableVADInfoFromDetailedRouteDescriptionIfNeeded:", v32];
  [+[MXSessionManager sharedInstance](MXSessionManager refreshDeviceSampleRateCache];
  [(MXCoreSessionBase *)self processOnDemandVADLossIfNeeded:v37 isPreviousInputVADOnDemand:v38];

  if (v12)
  {
    [+[MXExclaves sharedInstance](MXExclaves updateSensorStatus:"updateSensorStatus:reason:" reason:self, @"audio behavior has changed"];
  }

  v33 = *MEMORY[0x1E69E9840];
  return v12 & 1;
}

- (int)updateShadowingAudioSessionOptions:(id)options shouldUpdateVAConfig:(BOOL *)config
{
  v22 = *MEMORY[0x1E69E9840];
  shadowingAudioSessionOptions = [(MXCoreSessionBase *)self shadowingAudioSessionOptions];
  if (!MX_FeatureFlags_IsHighQualityLocalRecordingEnabled() && !MX_FeatureFlags_IsSystemInputPickerEnabled())
  {
    [MXCoreSessionBase updateShadowingAudioSessionOptions:v21 shouldUpdateVAConfig:?];
LABEL_27:
    LOBYTE(v17) = 0;
    result = v21[0];
    if (!config)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (!options)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v11 = 0;
    unsignedIntValue = 0;
    goto LABEL_14;
  }

  v8 = [options objectForKey:@"AudioSessionID"];
  v9 = [options objectForKey:@"ShadowingOptions"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MXCoreSessionBase updateShadowingAudioSessionOptions:v21 shouldUpdateVAConfig:?];
    goto LABEL_27;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MXCoreSessionBase updateShadowingAudioSessionOptions:v21 shouldUpdateVAConfig:?];
    goto LABEL_27;
  }

  intValue = [v8 intValue];
  if (!intValue)
  {
    [MXCoreSessionBase updateShadowingAudioSessionOptions:v21 shouldUpdateVAConfig:?];
    goto LABEL_27;
  }

  v11 = intValue;
  unsignedIntValue = [v9 unsignedIntValue];
  if (v11 != [(MXCoreSessionBase *)self shadowingAudioSessionID]|| unsignedIntValue != shadowingAudioSessionOptions)
  {
    if (dword_1EB75DE40)
    {
      HIDWORD(v20) = shadowingAudioSessionOptions;
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_14:
    [(MXCoreSessionBase *)self setShadowingAudioSessionID:v11, v19, v20];
    [(MXCoreSessionBase *)self setShadowingAudioSessionOptions:unsignedIntValue];
  }

  result = [(MXCoreSessionBase *)self isActive];
  if (result && (result = [(MXCoreSessionBase *)self isRoutedToOnDemandVAD]) != 0)
  {
    shadowingAudioSessionOptions2 = [(MXCoreSessionBase *)self shadowingAudioSessionOptions];
    result = 0;
    v17 = ((shadowingAudioSessionOptions2 ^ shadowingAudioSessionOptions) >> 3) & 1;
    if (!config)
    {
      goto LABEL_22;
    }
  }

  else
  {
    LOBYTE(v17) = 0;
    if (!config)
    {
      goto LABEL_22;
    }
  }

LABEL_20:
  if (!result)
  {
    *config = v17;
  }

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

- (int)updateAudioSessionIDAndAudioObject:(unsigned int)object
{
  v7 = *MEMORY[0x1E69E9840];
  if (object)
  {
    [(MXCoreSessionBase *)self setAudioSessionID:?];
    if (MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled())
    {
      [(MXCoreSessionBase *)self addSessionAudioObject];
    }

    if (dword_1EB75DE40)
    {
LABEL_9:
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    if (MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled())
    {
      [(MXCoreSessionBase *)self removeSessionAudioObject];
    }

    [(MXCoreSessionBase *)self setAudioSessionID:0];
    if (dword_1EB75DE40)
    {
      goto LABEL_9;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)processSessionRoutingInfo:(id)info
{
  v12[22] = *MEMORY[0x1E69E9840];
  if (info)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v6 = [info objectForKey:{0x1F2897690, v10, v11}];
    v7 = [info objectForKey:0x1F2897670];
    if (v7)
    {
      LODWORD(v7) = [v7 intValue];
    }

    if (CMSMVAUtility_MapVADReasonToCMSReason(v7) != 9 && [(MXCoreSessionBase *)self updateSessionRoutingInformation:v6])
    {
      routingContextUUID = [(MXCoreSessionBase *)self routingContextUUID];
      v12[0] = self;
      vaemAQMERouteChanged(info, routingContextUUID, [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1]);
      vaemAQMERestartIOFollowingRouteChange();
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)unregisterSessionAudioObject
{
  v7 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled() && [(MXCoreSessionBase *)self audioObjectID]&& [(MXCoreSessionBase *)self audioSessionID])
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(MXCoreSessionBase *)self updateAudioSessionIDAndAudioObject:0, v5, v6];
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)willRouteToOnDemandVADOnActivation:(id)activation
{
  v7 = *MEMORY[0x1E69E9840];
  if (activation)
  {
    v6 = 0;
    if (CMSMVAUtility_WillSessionWithDescriptionRouteToOnDemandVADOnActivation(activation, &v6) || dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    result = v6 != 0;
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)copyAvailableRouteControlFeatures:(id)features
{
  v12 = *MEMORY[0x1E69E9840];
  if (CMSMVAUtility_IsAdditiveRoutingEnabled())
  {
    if ([(MXCoreSessionBase *)self willRouteToOnDemandVADOnActivation:features])
    {
      if ([(MXCoreSessionBase *)self prefersEchoCancelledInput])
      {
        IsCategoryInputOnly = CMSMUtility_IsCategoryInputOnly([(MXCoreSessionBase *)self audioCategory]);
      }

      else
      {
        IsCategoryInputOnly = 0;
      }

      v6 = 1;
    }

    else
    {
      IsCategoryInputOnly = 0;
      v6 = 0;
    }

    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    IsCategoryInputOnly = 0;
    v6 = 0;
  }

  v8 = objc_alloc(MEMORY[0x1E695DF90]);
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
  result = [v8 initWithObjectsAndKeys:{v9, @"RouteControlFeatures", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", IsCategoryInputOnly), @"EchoCancelledInput", 0}];
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)removeSessionAudioObject
{
  audioSessionID = [(MXCoreSessionBase *)self audioSessionID];
  audioObjectID = [(MXCoreSessionBase *)self audioObjectID];
  [(MXCoreSessionBase *)self setAudioObjectID:0];
  v5 = MXGetSerialQueue();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__MXCoreSessionBase_removeSessionAudioObject__block_invoke;
  v6[3] = &__block_descriptor_40_e5_v8__0l;
  v7 = audioObjectID;
  v8 = audioSessionID;
  MXDispatchAsync("[MXCoreSessionBase removeSessionAudioObject]", "MXCoreSessionBase.m", 1250, 0, 0, v5, v6);
}

uint64_t __45__MXCoreSessionBase_removeSessionAudioObject__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = *"oresbolg";
  inAddress.mElement = 0;
  v6 = AudioObjectRemovePropertyListener(*(a1 + 32), &inAddress, vaemSessionRoutingInfoChangeListener, 0);
  if (v6)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = CMSMVAUtility_AudioObjectSetPropertyData();
  v6 = result;
  if (result)
  {
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)getSessionIDFromAudioObject
{
  v10 = *MEMORY[0x1E69E9840];
  ioDataSize = 4;
  outData = 0;
  *&inAddress.mSelector = *"diesbolg";
  inAddress.mElement = 0;
  if (![(MXCoreSessionBase *)self audioObjectID])
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    goto LABEL_5;
  }

  if (AudioObjectGetPropertyData([(MXCoreSessionBase *)self audioObjectID], &inAddress, 0, 0, &ioDataSize, &outData))
  {
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
LABEL_5:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = outData;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (int)sendSessionConfigurationInfoToVA:(id)a
{
  v20 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled())
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v16[0] = 0;
    if (![(MXCoreSessionBase *)self isActive])
    {
      a = 0;
    }

    v5 = 0;
    if (([a isEqual:{-[MXCoreSessionBase mostRecentSessionInfoSetOnVA](self, "mostRecentSessionInfoSetOnVA")}] & 1) == 0)
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v16[1] = a;
      LODWORD(v17) = 8;
      v18 = v16;
      LODWORD(v19) = 8;
      [(MXCoreSessionBase *)self audioObjectID:v12];
      if (CMSMVAUtility_AudioObjectSetPropertyData())
      {
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v5 = -12986;
      }

      else
      {
        [(MXCoreSessionBase *)self processSessionRoutingInfo:v16[0]];
        v5 = 0;
      }

      [(MXCoreSessionBase *)self setMostRecentSessionInfoSetOnVA:a, v13, v15];
    }

    v11 = *MEMORY[0x1E69E9840];
    return v5;
  }

  else
  {
    v7 = +[MXAdditiveRoutingManager sharedInstance];
    v8 = *MEMORY[0x1E69E9840];

    return [(MXAdditiveRoutingManager *)v7 sendActiveSessionsInfoToVA];
  }
}

- (id)copySessionRoutingInfoFromVA
{
  outData[22] = *MEMORY[0x1E69E9840];
  outData[0] = 0;
  inAddress.mElement = 0;
  ioDataSize = 8;
  *&inAddress.mSelector = *"oresbolg";
  if (AudioObjectGetPropertyData([(MXCoreSessionBase *)self audioObjectID], &inAddress, 0, 0, &ioDataSize, outData))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    result = 0;
  }

  else
  {
    result = outData[0];
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)processSessionRoutingInfoDidChange
{
  copySessionRoutingInfoFromVA = [(MXCoreSessionBase *)self copySessionRoutingInfoFromVA];
  [(MXCoreSessionBase *)self processSessionRoutingInfo:copySessionRoutingInfoFromVA];
}

- (void)dumpDebugConfigInfo
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:&stru_1F2890CF0];
  [v3 appendString:@"\nClient Configuration Info :\n"];
  CMSMDebugUtility_AppendFieldAndValue(v3, @"DisplayID =", [(MXCoreSessionBase *)self displayID]);
  CMSMDebugUtility_AppendFieldAndValue(v3, @"clientName =", [(MXCoreSessionBase *)self clientName]);
  CMSMDebugUtility_AppendFieldAndValue(v3, @"ptr =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", self]);
  CMSMDebugUtility_AppendFieldAndValue(v3, @"PID =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", -[NSNumber intValue](-[MXCoreSessionBase clientPID](self, "clientPID"), "intValue")]);
  CMSMDebugUtility_AppendFieldAndValue(v3, @"category =", [(MXCoreSessionBase *)self audioCategory]);
  CMSMDebugUtility_AppendFieldAndValue(v3, @"mode =", [(MXCoreSessionBase *)self audioMode]);
  CMSMDebugUtility_AppendFieldAndValue(v3, @"audioSessionID =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", -[MXCoreSessionBase audioSessionID](self, "audioSessionID")]);
  CMSMDebugUtility_AppendFieldAndValue(v3, @"CoreSessionID =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", -[NSNumber longLongValue](-[MXCoreSessionBase ID](self, "ID"), "longLongValue")]);
  CMSMDebugUtility_AppendFieldAndValue(v3, @"reporterIDs =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", -[MXCoreSessionBase reporterIDs](self, "reporterIDs")]);
  CMSMDebugUtility_AppendFieldAndValue(v3, @"originalReporterIDs =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", -[MXCoreSessionBase originalReporterIDs](self, "originalReporterIDs")]);
  CMSMDebugUtility_AppendFieldAndValue(v3, @"sessionAudioObjectID =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", -[MXCoreSessionBase audioObjectID](self, "audioObjectID"))]);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", CMSMUtility_GetStyleString(-[MXCoreSessionBase interruptionStyle](self, "interruptionStyle"))];
  CMSMDebugUtility_AppendFieldAndValue(v3, @"interruptionStyle =", v4);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", FigRoutingManagerContextUtilities_GetContextString(-[MXCoreSessionBase routingContextUUID](self, "routingContextUUID"))];
  CMSMDebugUtility_AppendFieldAndValue(v3, @"context =", v5);
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", CMSUtility_GetPrefersSuppressingRecordingState(self)];
  CMSMDebugUtility_AppendFieldAndValue(v3, @"prefersSuppressingRecordingState =", v6);
  CMSMDebugUtility_AppendFieldAndValue(v3, @"hasEntitlementToSuppressRecordingStateToSystemStatus =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", -[MXCoreSessionBase hasEntitlementToSuppressRecordingStateToSystemStatus](self, "hasEntitlementToSuppressRecordingStateToSystemStatus")]);
  v7 = MEMORY[0x1E696AEC0];
  [(MXCoreSessionBase *)self interruptionFadeDuration];
  CMSMDebugUtility_AppendFieldAndValue(v3, @"interruptionFadeDuration =", [v7 stringWithFormat:@"%f", v8]);
  v9 = MEMORY[0x1E696AEC0];
  if ([(MXCoreSessionBase *)self isTheAssistant])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v3, @"isTheAssistant =", [v9 stringWithFormat:@"%@", v10]);
  CMSMDebugUtility_AppendFieldAndValue(v3, @"preferredRouteControlFeatures =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", -[MXCoreSessionBase preferredRouteControlFeatures](self, "preferredRouteControlFeatures")]);
  v11 = MEMORY[0x1E696AEC0];
  if ([(MXCoreSessionBase *)self prefersEchoCancelledInput])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v3, @"prefersEchoCancelledInput =", [v11 stringWithFormat:@"%@", v12]);
  CMSMDebugUtility_AppendFieldAndValue(v3, @"activeOSTransaction =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", -[MXCoreSessionBase activeOSTransaction](self, "activeOSTransaction")]);
  CMSMDebugUtility_AppendFieldAndValue(v3, @"defaultBuiltInRoutePreference =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", -[MXCoreSessionBase defaultBuiltInRoutePreference](self, "defaultBuiltInRoutePreference")]);
  v13 = MEMORY[0x1E696AEC0];
  if ([(MXCoreSessionBase *)self defaultBuiltInRoutePreferenceSetByClient])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v3, @"defaultBuiltInRoutePreferenceSetByClient =", [v13 stringWithFormat:@"%@", v14]);
  v15 = MEMORY[0x1E696AEC0];
  if ([(MXCoreSessionBase *)self enableBluetoothRecordingPreferenceSetByClient])
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v3, @"enableBluetoothRecordingPreferenceSetByClient =", [v15 stringWithFormat:@"%@", v16]);

  CMSMDebugUtility_DumpOneLineAndResetString(v3);
}

- (void)dumpDebugStateInfo
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithString:&stru_1F2890CF0];
  [v3 appendString:@"\nClient State Info :\n"];
  CMSMDebugUtility_AppendFieldAndValue(v3, @"DisplayID =", [(MXCoreSessionBase *)self displayID]);
  CMSMDebugUtility_AppendFieldAndValue(v3, @"clientName =", [(MXCoreSessionBase *)self clientName]);
  v4 = MEMORY[0x1E696AEC0];
  isActive = [(MXCoreSessionBase *)self isActive];
  v6 = "inactive";
  if (isActive)
  {
    v6 = "ACTIVE";
  }

  CMSMDebugUtility_AppendFieldAndValue(v3, @"active state =", [v4 stringWithFormat:@"%s", v6]);
  v7 = MEMORY[0x1E696AEC0];
  isPlaying = [(MXCoreSessionBase *)self isPlaying];
  v9 = "not playing";
  if (isPlaying)
  {
    v9 = "PLAYING";
  }

  CMSMDebugUtility_AppendFieldAndValue(v3, @"play state =", [v7 stringWithFormat:@"%s", v9]);
  v10 = MEMORY[0x1E696AEC0];
  isRecording = [(MXCoreSessionBase *)self isRecording];
  v12 = "not recording";
  if (isRecording)
  {
    v12 = "RECORDING";
  }

  CMSMDebugUtility_AppendFieldAndValue(v3, @"recording State =", [v10 stringWithFormat:@"%s", v12]);
  if ([(MXCoreSessionBase *)self isUsingBuiltInMicForRecording])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v3, @"isUsingBuiltInMicForRecording =", v13);
  if ([(MXCoreSessionBase *)self isUsingExclaveSensor])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v3, @"isUsingExclaveSensor =", v14);
  StringForApplicationState = CMSMUtility_GetStringForApplicationState([(MXCoreSessionBase *)self applicationState]);
  CMSMDebugUtility_AppendFieldAndValue(v3, @"appState =", StringForApplicationState);
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", CMSUtility_GetCurrentAudioDestination(self)];
  CMSMDebugUtility_AppendFieldAndValue(v3, @"Current Audio Destination =", v16);
  v17 = MEMORY[0x1E696AEC0];
  IsPAAccessLoggingEnabled = MX_PrivacyAccounting_IsPAAccessLoggingEnabled();
  v19 = "Enabled";
  if (!IsPAAccessLoggingEnabled)
  {
    v19 = "Disabled";
  }

  CMSMDebugUtility_AppendFieldAndValue(v3, @"PAAccessLoggingEnabled(lazy init) =", [v17 stringWithFormat:@"%s", v19]);
  CMSMDebugUtility_AppendFieldAndValue(v3, @"isPlayingStartTime =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", -[MXCoreSessionBase isPlayingStartTime](self, "isPlayingStartTime")]);
  CMSMDebugUtility_AppendFieldAndValue(v3, @"isPlayingStopTime =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", -[MXCoreSessionBase isPlayingStopTime](self, "isPlayingStopTime")]);
  v20 = MEMORY[0x1E696AEC0];
  if ([(MXCoreSessionBase *)self mixesWithEveryone])
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v3, @"mixesWithEveryone =", [v20 stringWithFormat:@"%@", v21]);
  v22 = MEMORY[0x1E696AEC0];
  if (CMSMUtility_IsInputAllowedForCategory([(MXCoreSessionBase *)self audioCategory]))
  {
    CurrentInputVADUID = CMSUtility_GetCurrentInputVADUID(self);
  }

  else
  {
    CurrentInputVADUID = 0;
  }

  CMSMDebugUtility_AppendFieldAndValue(v3, @"input VAD =", [v22 stringWithFormat:@"%@", CurrentInputVADUID]);
  v24 = MEMORY[0x1E696AEC0];
  if ([(MXCoreSessionBase *)self hasPhoneCallBehavior])
  {
    v25 = @"YES";
  }

  else
  {
    v25 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v3, @"hasPhoneCallBehavior =", [v24 stringWithFormat:@"%@", v25]);
  v26 = MEMORY[0x1E696AEC0];
  if ([(MXCoreSessionBase *)self enableBluetoothRecordingPreference])
  {
    v27 = @"YES";
  }

  else
  {
    v27 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v3, @"enableBluetoothRecordingPreference =", [v26 stringWithFormat:@"%@", v27]);
  v28 = MEMORY[0x1E696AEC0];
  prefersNoInterruptions = [(MXCoreSessionBase *)self prefersNoInterruptions];
  v30 = "No";
  if (prefersNoInterruptions)
  {
    v30 = "Yes";
  }

  CMSMDebugUtility_AppendFieldAndValue(v3, @"PrefersNoInterruptions =", [v28 stringWithFormat:@"%s", v30]);
  CMSMDebugUtility_AppendFieldAndValue(v3, @"timestampWhenMostRecentlyActivated =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", -[MXCoreSessionBase timestampWhenMostRecentlyActivated](self, "timestampWhenMostRecentlyActivated")]);
  CMSMDebugUtility_DumpOneLineAndResetString(v3);
  if ([(MXCoreSessionBase *)self playbackAssertionRef]|| [(MXCoreSessionBase *)self resumeAssertionRef])
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if ([(MXCoreSessionBase *)self playbackAssertionRef:v35]&& dword_1EB75DE40)
    {
      v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if ([(MXCoreSessionBase *)self resumeAssertionRef:v36]&& dword_1EB75DE40)
    {
      v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  CMSMDebugUtility_DumpOneLineAndResetString(v3);
  v34 = *MEMORY[0x1E69E9840];
}

- (uint64_t)updateShadowingAudioSessionOptions:(_DWORD *)a1 shouldUpdateVAConfig:.cold.1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)updateShadowingAudioSessionOptions:(_DWORD *)a1 shouldUpdateVAConfig:.cold.2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)updateShadowingAudioSessionOptions:(_DWORD *)a1 shouldUpdateVAConfig:.cold.3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)updateShadowingAudioSessionOptions:(_DWORD *)a1 shouldUpdateVAConfig:.cold.4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end