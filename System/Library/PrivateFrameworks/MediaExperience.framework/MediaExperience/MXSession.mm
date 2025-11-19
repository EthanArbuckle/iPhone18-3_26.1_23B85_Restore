@interface MXSession
+ (BOOL)isCoreSessionFormatValidForMaxOutputChannels:(id)a3;
+ (BOOL)isSessionMuted:(unint64_t)a3;
+ (id)copyMXSessionForID:(unint64_t)a3;
+ (int)updateAudioTrackStatus:(id)a3;
+ (int)updateDoesntActuallyPlayAudio:(id)a3;
+ (int)updateIsPlaying:(id)a3;
+ (int)updateIsPlayingOutput:(id)a3;
+ (int)updateIsRecording:(id)a3;
+ (int)updatePreferredAudioHardwareFormat:(id)a3 withMaxOutputChannels:(unsigned int)a4 andCalledFromDealloc:(BOOL)a5;
+ (int)updatePreferredNumberOfOutputChannels:(id)a3;
+ (int)updatePreferredOutputSampleRate:(id)a3;
+ (unsigned)getResolvedPreferredNumberOfOutputChannels:(id)a3;
+ (void)initialize;
+ (void)updateIsAnyPlayingContentIneligibleForEnhancedDialogue:(id)a3;
- (MXSession)initWithSession:(opaqueCMSession *)a3;
- (id)copyCurrentlyPlayingBufferedAudioSourceFormatInfo;
- (id)copyProperties:(id)a3 outPropertyErrors:(id *)a4;
- (id)copyPropertiesInternal:(id)a3 outPropertyErrors:(id *)a4;
- (id)getBestAvailableContentType;
- (id)getClientTypeAsString;
- (id)getCurrentlyPlayingSourceFormatInfo;
- (id)getMutePriority;
- (id)getPreferredAudioHardwareFormat;
- (id)getSourceFormatInfo;
- (id)info;
- (int)copyPropertyForKey:(id)a3 valueOut:(id *)a4;
- (int)copyPropertyForKeyInternal:(id)a3 valueOut:(id *)a4;
- (int)resetIsPlayingStates;
- (int)setAudioTrackStatus:(unsigned __int8)a3;
- (int)setBestAvailableContentType:(id)a3;
- (int)setClientType:(int)a3;
- (int)setContentIsEligibleForEnhancedDialogue:(BOOL)a3;
- (int)setCurrentlyPlayingBufferedAudioFormatInfo:(id)a3;
- (int)setCurrentlyPlayingContentIsEligibleForSpatialization:(BOOL)a3;
- (int)setCurrentlyPlayingSourceFormatInfo:(id)a3;
- (int)setDoesntActuallyPlayAudio:(BOOL)a3;
- (int)setIAmPiP:(BOOL)a3;
- (int)setIsMuted:(BOOL)a3;
- (int)setIsPlayerMuted:(BOOL)a3;
- (int)setIsPlaying:(BOOL)a3;
- (int)setIsPlayingOutput:(BOOL)a3;
- (int)setIsPlayingVideoOutput:(BOOL)a3;
- (int)setIsRecording:(BOOL)a3;
- (int)setMutePriority:(id)a3;
- (int)setOrderedPropertiesInternal:(id)a3 usingErrorHandlingStrategy:(unsigned __int8)a4 outPropertiesErrors:(id *)a5;
- (int)setPreferredAudioHardwareFormat:(id)a3;
- (int)setPreferredOutputSampleRate:(double)a3;
- (int)setPropertiesInternal:(id)a3 usingErrorHandlingStrategy:(unsigned __int8)a4 outPropertiesErrors:(id *)a5;
- (int)setPropertyForKey:(id)a3 value:(id)a4;
- (int)setPropertyForKeyInternal:(id)a3 value:(id)a4 fromPropertiesBatch:(id)a5;
- (int)setSourceFormatInfo:(id)a3;
- (void)_dealloc;
- (void)dealloc;
- (void)dumpInfo;
- (void)mute;
- (void)postIsMutedDidChange;
- (void)unmute;
- (void)updateBadgeType;
@end

@implementation MXSession

- (id)getClientTypeAsString
{
  v2 = self->mClientType - 1;
  if (v2 > 3)
  {
    return @"Invalid";
  }

  else
  {
    return off_1E7AEC728[v2];
  }
}

- (id)info
{
  mID = self->mID;
  mCoreSessionID = self->mCoreSessionID;
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(MXCoreSessionBase *)self->mCoreSession clientName];
  if (self->mIsMuted)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (self->mClientIsPlaying)
  {
    v8 = @"PLAYING";
  }

  else
  {
    v8 = @"STOPPED";
  }

  if (self->mAudioToolboxIsPlaying)
  {
    v9 = @"PLAYING";
  }

  else
  {
    v9 = @"STOPPED";
  }

  v10 = [(MXSession *)self getMutePriority];
  if (self->mIAmPiP)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (self->mDoesntActuallyPlayAudio)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  if (self->mIsPlayingOutput)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if (self->mIsPlayingVideoOutput)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  return [v5 stringWithFormat:@"<ID: %llx, CoreSessionID = %lld Name = %@, Muted = %@, ClientIsPlaying = %@, AudioToolboxIsPlaying = %@, MutePriority = %@, PiP = %@, DoesntActuallyPlayAudio = %@, clientType = %x, IsPlayingOutput = %@, IsPlayingVideoOutput = %@", mID, mCoreSessionID, v6, v7, v8, v9, v10, v11, v12, self->mClientType, v13, v14];
}

- (id)getMutePriority
{
  [(NSRecursiveLock *)self->mRecursiveLock lock];
  v3 = self->mMutePriority;
  [(NSRecursiveLock *)self->mRecursiveLock unlock];
  return v3;
}

- (void)updateBadgeType
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(self->mCoreSession);
  mCoreSession = self->mCoreSession;
  if (v3)
  {
    v5 = [(MXCoreSession *)mCoreSession copyMXSessionList];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v33 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v21 + 1) + 8 * i) getIsPlaying])
          {
            if (![(MXSession *)self getIsMuted])
            {
              [(NSRecursiveLock *)self->mRecursiveLock lock];
              v11 = [(NSDictionary *)self->mCurrentlyPlayingBufferedAudioFormatInfo objectForKey:@"ContentType"];
              [(NSRecursiveLock *)self->mRecursiveLock unlock];
              if (v11)
              {
                v8 = v11;
              }
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v21 objects:v33 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    v13 = [+[MXSessionManager sharedInstance](MXSessionManager copyEvaluatedBadgeType:"copyEvaluatedBadgeType:", v8];
    if (dword_1EB75DE40)
    {
      v26 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v15 = v26;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        v17 = [(MXCoreSessionBase *)self->mCoreSession info];
        v27 = 136315650;
        v28 = "[MXSession(InternalUse) updateBadgeType]";
        v29 = 2114;
        v30 = v13;
        v31 = 2114;
        v32 = v17;
        LODWORD(v20) = 32;
        v19 = &v27;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(MXCoreSession *)self->mCoreSession setBadgeType:v13, v19, v20];
  }

  else
  {
    [(MXCoreSession *)mCoreSession setBadgeType:@"NotApplicable"];
    if (dword_1EB75DE40)
    {
      v26 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)getPreferredAudioHardwareFormat
{
  [(NSRecursiveLock *)self->mRecursiveLock lock];
  v3 = self->mPreferredAudioHardwareFormat;
  [(NSRecursiveLock *)self->mRecursiveLock unlock];
  return v3;
}

- (id)getBestAvailableContentType
{
  [(NSRecursiveLock *)self->mRecursiveLock lock];
  v3 = self->mBestAvailableContentType;
  [(NSRecursiveLock *)self->mRecursiveLock unlock];
  return v3;
}

- (id)getCurrentlyPlayingSourceFormatInfo
{
  [(NSRecursiveLock *)self->mRecursiveLock lock];
  v3 = self->mCurrentlyPlayingSourceFormatInfo;
  [(NSRecursiveLock *)self->mRecursiveLock unlock];
  return v3;
}

+ (void)initialize
{
  if (objc_opt_self() == a1)
  {
    sNonSerializedCopyProperties_0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"ActivationContext", @"AirPlayVideoIsActive", @"AllowedRouteTypes", @"AllowedToUseHardwareAudioCodec", @"AllowEnhancedDialogue", @"AllowMixableAudioWhileRecording", @"AllowsAirPlayBuffered", @"AllowsAirPlayVideo", @"AllowSystemSoundsWhileRecording", @"AudioBehaviour", @"AudioCategory", @"AudioHardwareControlFlags", @"AudioMode", @"AudioOnlyAirPlayVideoIsActive", @"AudioToolboxIsPlaying", @"AudioTrackStatus", @"BestAvailableContentType", @"BadgeType", @"DoesGameAudioNeedToBeSpatialized", @"CanBeginInterruption", @"DefaultBuiltInRoute", @"EnableBluetoothRecording", @"ClientName", @"ClientPID", @"ClientPriority", @"ConstantOutputVolumeLeveldB", @"ControlsRoute", @"ContentIsEligibleForEnhancedDialogue", @"AudioSessionID", @"CurrentAudioHardwareSampleRate", @"CurrentInputSampleRate", @"CurrentlyPlayingContentIsEligibleForSpatialization", @"CurrentlyPlayingSourceFormatInfo", @"CurrentlyPlayingBufferedAudioFormatInfo", @"CurrentOutputSampleRate", @"CurrentSpeechDetectionDeviceSampleRate", @"DefaultVPChatMode", @"DetailedActiveAudioRoute", @"DoesntActuallyPlayAudio", @"DoNotNotifyOtherSessionsOnNextInactive", @"DoNotResetAudioCategoryOnNextInactive", @"DuckFadeDuration", @"DuckToLevelDB", @"DuckToLevelScalar", @"ForceSoundCheck", @"HapticEngineIsPlaying", @"HandsOverInterruptionsToInterruptor", @"HasExternalMuteNotificationContext", @"HostApplicationDisplayID", @"HostProcessAttribution", @"IAmTheAssistant", @"MXSessionID", @"InterruptionFadeDuration", @"InterruptionStyle", @"IsActive", @"IsAirPlayReceiverSession", @"BypassSystemSpatialAudioForGame", @"IsAudioSession", @"IsEligibleForBTSmartRoutingConsideration", @"IsEligibleForNowPlayingAppConsideration", @"IsEligibleForBTTriangleConsideration"}];
    sNonSerializedSetProperties_0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"AirPlayVideoIsActive", @"AllowMixableAudioWhileRecording", @"AudioOnlyAirPlayVideoIsActive", @"AuditToken", @"AllowEnhancedDialogue", @"AllowSystemSoundsWhileRecording", @"BestAvailableContentType", @"ClientName", @"ClientPID", @"ClientSecTask", @"ClientType", @"ContentIsEligibleForEnhancedDialogue", @"AudioSessionID", @"CurrentlyPlayingContentIsEligibleForSpatialization", @"CurrentlyPlayingSourceFormatInfo", @"DisallowAudioFormatChanges", @"DoesInterAppAudio", @"DoNotNotifyOtherSessionsOnNextInactive", @"DoNotResetAudioCategoryOnNextInactive", @"DuckFadeDuration", @"DuckToLevelDB", @"ForceSoundCheck", @"HandsOverInterruptionsToInterruptor", @"HasExternalMuteNotificationContext", @"HostProcessAttribution", @"IAmIDSMXCoreSession", @"IAmHardwareSafetySession", @"IAmPiP", @"IAmCar", @"IAmWiredCar", @"InterruptionFadeDuration", @"IsAirPlayReceiverSession", @"IsAudioSession", @"IsEligibleForNowPlayingAppConsideration", @"IsFigInstantiatedAudioSession", @"IsLongFormAudio", @"IsSharedAVAudioSessionInstance", @"IsSharePlayCapableCallSession", @"IsUsingBuiltInMicForRecording", @"IsRecordingMutedForRemoteDevice", @"IsUsingCamera", @"NeroSuspended", @"OptOutOfMutePriority", @"PrefersBeingInterruptedByNextActiveRecordingClient", @"PrefersBluetoothAccessoryMuting", @"PrefersConcurrentAirPlayAudio", @"PrefersEnhancedDialogue", @"PrefersNoDucking", @"PrefersNoInterruptions", @"PrefersNoInterruptionsByMixableSessions", @"PrefersNoInterruptionsDuringRemoteDeviceControl", @"PrefersSpeechDetectEnabled", @"PrefersToOptOutOfHardwareSafetyInterruptions", @"PrefersToPlayDuringWombat", @"PrefersToTakeHWControlFlagsFromAnotherSession", @"PrefersToVibeWhenVibrationsAreDisabled", @"ProcessAssertionAuditTokens", @"ReporterIDs", @"SourceFormatInfo", @"SubscribeToNotifications", @"TemporaryAssertionEnabled"}];
    sNonSerializedSetPropertiesWhenSessionIsInactive_0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"AllowedRouteTypes", @"AudioClockDevice", @"AudioCategory", @"AudioMode", @"AudioHardwareControlFlags", @"CameraParameters", @"CaptureOrientationOverride", @"DefaultBuiltInRoute", @"EnableBluetoothRecording", @"ClientPriority", @"ConstantOutputVolumeLeveldB", @"CreateSpeakerDevice", @"DefaultVPChatMode", @"DeselectedInputs", @"DuckToLevelScalar", @"ExcludedRoutes", @"IAmTheAssistant", @"IgnoreRingerSwitch", @"InputGainScalar", @"InterruptionStyle", @"IsEligibleForBTSmartRoutingConsideration", @"IsEligibleForBTTriangleConsideration", @"MutesAudioBasedOnRingerSwitchState", @"OrientationOverride", @"PreferredAudioHardwareFormat", @"PreferredAudioHardwareIOBufferFrameDuration", @"PreferredAudioHardwareIOBufferFrames", @"PreferredDecoupledInputOutput", @"PreferredInputs", @"PreferredInputSampleRate", @"PreferredPersistentRoute", @"PreferredStereoInputOrientation", @"PrefersBluetoothFarFieldCapture", @"PrefersBluetoothHighQualityContentCapture", @"PrefersEchoCancelledInput", @"PrefersInterruptionOnRouteDisconnect", @"PrefersNoInterruptionsByRingtonesAndAlerts", @"PreferredRouteControlFeatures", @"RequiresAggregatedInputOutput", @"SelectedInputs", @"SelectedOutputs", @"UnduckToLevelScalar", @"VPBlockConfiguration", 0}];
    sOrderedMXSessionProperties = [objc_alloc(MEMORY[0x1E695DFB8]) initWithObjects:{@"ClientType", @"ClientName", @"IsAudioSession", @"AudioSessionID", @"ClientPID", @"ClientSecTask", @"AuditToken", @"IAmTheAssistant", @"IAmCar", @"IAmIDSMXCoreSession", @"IAmHardwareSafetySession", @"AudioCategory", @"AudioMode", @"EnableBluetoothRecording", @"DefaultBuiltInRoute", @"ClientPriority", @"InterruptionStyle", @"RouteSharingPolicy", @"ActivationContext", @"DoesntActuallyPlayAudio", @"IsSharePlayCapableCallSession", @"IsExpanseCallSession", @"IsExpanseMediaSession", @"IsEligibleForBTTriangleConsideration", @"IsEligibleForBTSmartRoutingConsideration", @"VibrationData", @"VibratorOn", 0}];
  }
}

+ (unsigned)getResolvedPreferredNumberOfOutputChannels:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [a3 copyMXSessionList];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) getPreferredNumberOfOutputChannels];
        if (v9 > v6)
        {
          v6 = v9;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)getSourceFormatInfo
{
  [(NSRecursiveLock *)self->mRecursiveLock lock];
  v3 = self->mSourceFormatInfo;
  [(NSRecursiveLock *)self->mRecursiveLock unlock];
  return v3;
}

- (id)copyCurrentlyPlayingBufferedAudioSourceFormatInfo
{
  [(NSRecursiveLock *)self->mRecursiveLock lock];
  v3 = self->mCurrentlyPlayingBufferedAudioFormatInfo;
  [(NSRecursiveLock *)self->mRecursiveLock unlock];
  return v3;
}

- (int)setIAmPiP:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  if (self->mIAmPiP != a3)
  {
    self->mIAmPiP = a3;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int)setIsRecording:(BOOL)a3
{
  v12 = *MEMORY[0x1E69E9840];
  mIsRecording = self->mIsRecording;
  if (mIsRecording == a3)
  {
    result = 0;
  }

  else if ([+[MXSessionManager isSpeechDetectCategory:"isSpeechDetectCategory:"]
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    result = -15685;
  }

  else
  {
    self->mIsRecording = a3;
    if (dword_1EB75DE40)
    {
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    result = [MXSession updateIsRecording:self->mCoreSession, v10, v11];
    if (result)
    {
      self->mIsRecording = mIsRecording;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (int)resetIsPlayingStates
{
  self->mIsPlaying = 0;
  self->mClientIsPlaying = 0;
  self->mAudioToolboxIsPlaying = 0;
  self->mIsPlayingOutput = 0;
  return 0;
}

- (int)setPreferredAudioHardwareFormat:(id)a3
{
  if ([a3 isEqualToString:{-[MXSession getPreferredAudioHardwareFormat](self, "getPreferredAudioHardwareFormat")}])
  {
    return 0;
  }

  [(NSRecursiveLock *)self->mRecursiveLock lock];

  self->mPreferredAudioHardwareFormat = a3;
  [(NSRecursiveLock *)self->mRecursiveLock unlock];
  mCoreSession = self->mCoreSession;

  return [MXSession updatePreferredAudioHardwareFormat:mCoreSession withMaxOutputChannels:0 andCalledFromDealloc:0];
}

- (int)setPreferredOutputSampleRate:(double)a3
{
  if (self->mPreferredOutputSampleRate == a3)
  {
    return 0;
  }

  self->mPreferredOutputSampleRate = a3;
  return [MXSession updatePreferredOutputSampleRate:self->mCoreSession];
}

- (int)setIsMuted:(BOOL)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->mIsMuted != a3)
  {
    self->mIsMuted = a3;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (CMSUtility_IsAudioCategoryPrimary(self->mCoreSession))
    {
      CMSMNotificationUtility_PostSomePrimaryAudioCategoryIsPlayingDidChange(self->mCoreSession);
      CMSMNotificationUtility_PostSomeOtherPrimaryAudioCategoryIsPlayingDidChange(self->mCoreSession);
    }

    [(MXSession *)self updateBadgeType:v7];
  }

  v5 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int)setIsPlayerMuted:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  if (self->mIsPlayerMuted != a3)
  {
    self->mIsPlayerMuted = a3;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int)setAudioTrackStatus:(unsigned __int8)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->mAudioTrackStatus != a3)
  {
    self->mAudioTrackStatus = a3;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [MXSession updateAudioTrackStatus:self->mCoreSession, v7, v8];
  }

  v5 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int)setIsPlayingOutput:(BOOL)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->mIsPlayingOutput == a3)
  {
    result = 0;
  }

  else
  {
    self->mIsPlayingOutput = a3;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    result = [MXSession updateIsPlayingOutput:self->mCoreSession, v7, v8];
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (int)setIsPlayingVideoOutput:(BOOL)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->mIsPlayingVideoOutput != a3)
  {
    self->mIsPlayingVideoOutput = a3;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [+[MXSessionManager sharedInstance](MXSessionManager updateSomeAirPlayCapableVideoClientIsActive:v6];
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int)setSourceFormatInfo:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)self->mRecursiveLock lock];

  self->mSourceFormatInfo = a3;
  [(NSRecursiveLock *)self->mRecursiveLock unlock];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([(MXSession *)self getIsPlaying:v8])
  {
    CMSMNotificationUtility_PostSourceFormatInfoDidChange();
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int)setBestAvailableContentType:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (([a3 isEqualToString:{-[MXSession getBestAvailableContentType](self, "getBestAvailableContentType")}] & 1) == 0)
  {
    [(NSRecursiveLock *)self->mRecursiveLock lock];

    self->mBestAvailableContentType = a3;
    [(NSRecursiveLock *)self->mRecursiveLock unlock];
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if ([(MXSession *)self getIsPlaying:v8]|| [(MXSession *)self getClientType]== 2)
    {
      CMSMNotificationUtility_PostSourceFormatInfoDidChange();
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int)setCurrentlyPlayingSourceFormatInfo:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)self->mRecursiveLock lock];

  self->mCurrentlyPlayingSourceFormatInfo = a3;
  [(NSRecursiveLock *)self->mRecursiveLock unlock];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([(MXSession *)self getIsPlaying:v8])
  {
    CMSMNotificationUtility_PostSourceFormatInfoDidChange();
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int)setCurrentlyPlayingBufferedAudioFormatInfo:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)self->mRecursiveLock lock];

  self->mCurrentlyPlayingBufferedAudioFormatInfo = a3;
  [(NSRecursiveLock *)self->mRecursiveLock unlock];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(MXSession *)self updateBadgeType:v8];
  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int)setCurrentlyPlayingContentIsEligibleForSpatialization:(BOOL)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->mCurrentlyPlayingContentIsEligibleForSpatialization != a3)
  {
    self->mCurrentlyPlayingContentIsEligibleForSpatialization = a3;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if ([(MXSession *)self getIsPlaying:v7])
    {
      CMSMNotificationUtility_PostSourceFormatInfoDidChange();
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int)setContentIsEligibleForEnhancedDialogue:(BOOL)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->mContentIsEligibleForEnhancedDialogue != a3)
  {
    self->mContentIsEligibleForEnhancedDialogue = a3;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [MXSession updateIsAnyPlayingContentIneligibleForEnhancedDialogue:self->mCoreSession, v7, v8];
  }

  v5 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int)setClientType:(int)a3
{
  v6 = *MEMORY[0x1E69E9840];
  self->mClientType = a3;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

+ (int)updateIsRecording:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v3 = [a3 copyMXSessionList];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        if ([v9 getIsRecording])
        {
          v9[10];
          v6 = 1;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v11 = MEMORY[0x1E695E4C0];
  if (v6)
  {
    v11 = MEMORY[0x1E695E4D0];
  }

  v12 = *v11;
  v13 = MXCoreSessionSetProperty(v16, @"IsRecording");

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (int)updatePreferredNumberOfOutputChannels:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  result = +[MXSession isCoreSessionFormatValidForMaxOutputChannels:](MXSession, "isCoreSessionFormatValidForMaxOutputChannels:", [a3 preferredHardwareFormat]);
  if (result)
  {
    v5 = [MXSession getResolvedPreferredNumberOfOutputChannels:a3];
    if ([a3 preferredNumberOfOutputChannels] == v5)
    {
      result = 0;
    }

    else
    {
      [MEMORY[0x1E696AD98] numberWithInt:v5];
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      result = MXCoreSessionSetProperty(a3, @"PreferredNumberOfOutputChannels");
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

+ (int)updatePreferredAudioHardwareFormat:(id)a3 withMaxOutputChannels:(unsigned int)a4 andCalledFromDealloc:(BOOL)a5
{
  v5 = a5;
  v25 = *MEMORY[0x1E69E9840];
  v6 = [a3 copyMXSessionList];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v7)
  {
    v10 = @"LPCM";
    if (!v5)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v8 = v7;
  v9 = *v21;
  v10 = @"LPCM";
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v21 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v12 = [*(*(&v20 + 1) + 8 * i) getPreferredAudioHardwareFormat];
      if ([v12 isEqualToString:@"MATAtmos"])
      {
        v10 = @"MATAtmos";
        goto LABEL_14;
      }

      if ([v12 isEqualToString:@"AC-3"] && -[__CFString isEqualToString:](v10, "isEqualToString:", @"LPCM"))
      {
        v10 = @"AC-3";
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_14:
  if (v5)
  {
LABEL_15:
    UpdatedHardwareFormatBasedOnPreferredNumberOfOutputChannelsAndPreferredHardwareFormat = CMSessionMgrGetUpdatedHardwareFormatBasedOnPreferredNumberOfOutputChannelsAndPreferredHardwareFormat(a4, v10);
    if (!FigCFEqual())
    {
      v10 = UpdatedHardwareFormatBasedOnPreferredNumberOfOutputChannelsAndPreferredHardwareFormat;
    }
  }

LABEL_17:
  if ([objc_msgSend(a3 "preferredHardwareFormat")])
  {
    v14 = 0;
  }

  else
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v14 = MXCoreSessionSetProperty(a3, @"PreferredAudioHardwareFormat");
  }

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (int)updatePreferredOutputSampleRate:(id)a3
{
  v3 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v4 = [a3 copyMXSessionList];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v16 + 1) + 8 * i) getPreferredOutputSampleRate];
        if (v10 > v8)
        {
          v8 = v10;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
    *&v11 = v8;
  }

  else
  {
    v11 = 0.0;
  }

  [MEMORY[0x1E696AD98] numberWithFloat:v11];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v13 = MXCoreSessionSetProperty(v3, @"PreferredOutputSampleRate");

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (int)updateDoesntActuallyPlayAudio:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = [a3 copyMXSessionList];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v20;
    v9 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        if ([v11 getIsPlaying])
        {
          v9 &= [v11 getDoesntActuallyPlayAudio];
          v7 = 1;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
    v12 = v7 & v9;
    if ((v12 & 1) != [a3 doesntActuallyPlayAudio])
    {
      goto LABEL_11;
    }

LABEL_14:
    v14 = 0;
    goto LABEL_18;
  }

  v12 = 0;
  if (([a3 doesntActuallyPlayAudio] & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v15 = MEMORY[0x1E695E4C0];
  if (v12)
  {
    v15 = MEMORY[0x1E695E4D0];
  }

  v16 = *v15;
  v14 = MXCoreSessionSetProperty(a3, @"DoesntActuallyPlayAudio");
LABEL_18:

  v17 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (int)updateIsPlayingOutput:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [a3 copyMXSessionList];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v18 != v7)
      {
        objc_enumerationMutation(v4);
      }

      if ([*(*(&v17 + 1) + 8 * v8) getIsPlayingOutput])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if ([a3 isPlayingOutput])
    {
      goto LABEL_12;
    }

    v9 = 1;
  }

  else
  {
LABEL_9:
    v9 = 0;
    if (([a3 isPlayingOutput] & 1) == 0)
    {
LABEL_12:
      v10 = 0;
      goto LABEL_20;
    }
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v12 = MEMORY[0x1E695E4C0];
  if (v9)
  {
    v12 = MEMORY[0x1E695E4D0];
  }

  v13 = *v12;
  v10 = MXCoreSessionSetProperty(a3, @"IsPlayingOutput");
  if (v10)
  {
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_20:

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (int)updateAudioTrackStatus:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  result = CMSMDeviceState_SupportsMediaMultitasking();
  if (result)
  {
    v5 = [a3 hasAudioTrack];
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v5)
    {
      result = cmsBeginInterruptionGuts(a3, 0, 2);
    }

    else
    {
      result = 0;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

+ (void)updateIsAnyPlayingContentIneligibleForEnhancedDialogue:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [a3 copyMXSessionList];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 getIsPlaying] && (objc_msgSend(v8, "getDoesntActuallyPlayAudio") & 1) == 0 && !objc_msgSend(v8, "getContentIsEligibleForEnhancedDialogue"))
        {
          v5 = 1;
          goto LABEL_13;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  if (v5 != [a3 isAnyPlayingContentIneligibleForEnhancedDialogue])
  {
    [a3 setIsAnyPlayingContentIneligibleForEnhancedDialogue:v5];
    [a3 updateAllowEnhancedDialogue];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)mute
{
  if (!self->mIsMuted)
  {
    CMSMUtility_AudioToolboxHandleInterruptionCommandWithMXSessionID(self->mCoreSession, self->mID, 8);
    [(MXSession *)self setIsMuted:1];

    [(MXSession *)self postIsMutedDidChange];
  }
}

- (void)unmute
{
  if (self->mIsMuted)
  {
    CMSMUtility_AudioToolboxHandleInterruptionCommandWithMXSessionID(self->mCoreSession, self->mID, 9);
    [(MXSession *)self setIsMuted:0];

    [(MXSession *)self postIsMutedDidChange];
  }
}

- (void)postIsMutedDidChange
{
  if (self)
  {
    v3 = self;
    v4 = MXGetNotificationSenderQueue();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __46__MXSession_InternalUse__postIsMutedDidChange__block_invoke;
    v5[3] = &unk_1E7AE7CE0;
    v5[4] = self;
    MXDispatchAsync("[MXSession(InternalUse) postIsMutedDidChange]", "MXSession_Impl_Embedded.m", 1579, 0, 0, v4, v5);
  }
}

void __46__MXSession_InternalUse__postIsMutedDidChange__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695DF20]);
  v3 = [v2 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", objc_msgSend(*(a1 + 32), "getIsMuted")), @"Muted", 0}];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  v4 = *(a1 + 32);
}

+ (id)copyMXSessionForID:(unint64_t)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  v5 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v19 = v4;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v24 + 1) + 8 * i) copyMXSessionList];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
LABEL_8:
          v14 = 0;
          while (1)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v20 + 1) + 8 * v14);
            if ([v15 getID] == a3)
            {
              break;
            }

            if (v12 == ++v14)
            {
              v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
              if (v12)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }

          v16 = v15;

          if (v16)
          {
            goto LABEL_19;
          }
        }

        else
        {
LABEL_14:
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
    v16 = 0;
LABEL_19:
    v4 = v19;
  }

  else
  {
    v16 = 0;
  }

  objc_autoreleasePoolPop(v4);
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (BOOL)isCoreSessionFormatValidForMaxOutputChannels:(id)a3
{
  if ([a3 isEqualToString:@"AC-3"])
  {
    return 0;
  }

  else
  {
    return [a3 isEqualToString:@"MATAtmos"] ^ 1;
  }
}

- (void)dumpInfo
{
  v5 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE40)
    {
      v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (MXSession)initWithSession:(opaqueCMSession *)a3
{
  location[16] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = MXSession;
  v4 = [(MXSession *)&v11 init];
  if (v4)
  {
    if (a3)
    {
      v4->mRecursiveLock = objc_alloc_init(MEMORY[0x1E696AE68]);
      v4->mCoreSession = a3->var1;
      v4->mPreferredOutputSampleRate = 0.0;
      v4->mPreferredAudioHardwareFormat = @"LPCM";
      v4->mIsPlaying = 0;
      v4->mClientIsPlaying = 0;
      v4->mAudioToolboxIsPlaying = 0;
      v4->mPreferredNumberOfOutputChannels = 0;
      v4->mMutePriority = @"MutePriority_Two";
      v4->mIAmPiP = 0;
      v4->mIsMuted = 0;
      v4->mDoesntActuallyPlayAudio = 0;
      v4->mIsPlayingOutput = 0;
      v4->mClientType = 1;
      v4->mCoreSessionID = [(NSNumber *)[(MXCoreSessionBase *)v4->mCoreSession ID] unsignedLongLongValue];
      v4->mID = FigAtomicIncrement64();
      v4->mSourceFormatInfo = 0;
      v4->mBestAvailableContentType = 0;
      v4->mCurrentlyPlayingSourceFormatInfo = 0;
      v4->mCurrentlyPlayingBufferedAudioFormatInfo = 0;
      v4->mCurrentlyPlayingContentIsEligibleForSpatialization = 0;
      v4->mContentIsEligibleForEnhancedDialogue = 1;
      v4->mIsPlayerMuted = 0;
      v4->mAudioTrackStatus = 1;
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v7 = objc_alloc(MEMORY[0x1E696AEC0]);
      mID = v4->mID;
      v4->mDescription = [v7 initWithFormat:@"<MXSessionID = %llx, CoreSessionID = %lld>", mID, v4->mCoreSessionID];
      objc_initWeak(location, v4);
      [(MXCoreSession *)v4->mCoreSession mxSessionListAddSession:objc_loadWeak(location)];
      objc_destroyWeak(location);
    }

    else
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();

      v4 = 0;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)_dealloc
{
  v27[16] = *MEMORY[0x1E69E9840];
  v3 = [(MXCoreSession *)self->mCoreSession mxSessionListAddSession:0];
  mID = self->mID;
  v5 = MEMORY[0x1E696AEC0];
  mCoreSessionID = self->mCoreSessionID;
  v7 = [(MXCoreSessionBase *)self->mCoreSession clientName];
  v8 = @"NO";
  if (self->mIsMuted)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (self->mIsPlaying)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (self->mIAmPiP)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (self->mDoesntActuallyPlayAudio)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  if (self->mIsPlayingOutput)
  {
    v8 = @"YES";
  }

  [v5 stringWithFormat:@"<MXSessionID: %llx, CoreSessionID = %lld Name = %@, Muted = %@, Playing = %@, MutePriority = %@, PiP = %@, DoesntActuallyPlayAudio = %@, clientType = %x, IsPlayingOutput = %@", mID, mCoreSessionID, v7, v9, v10, self->mMutePriority, v11, v12, self->mClientType, v8];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v13 = [(NSString *)self->mMutePriority isEqualToString:@"MutePriority_One"];
  if (v3)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  if (v14)
  {
    if (dword_1EB75DE40)
    {
      v22 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(v24 + 24) = 1;
  }

  else if (dword_1EB75DE40)
  {
    v22 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3052000000;
  v27[3] = __Block_byref_object_copy__9;
  mCoreSession = self->mCoreSession;
  v27[4] = __Block_byref_object_dispose__9;
  v27[5] = mCoreSession;
  v18 = MXGetSerialQueue();
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __36__MXSession_InterfaceImpl___dealloc__block_invoke;
  v20[3] = &unk_1E7AEB4F8;
  v20[4] = v27;
  v20[5] = &v23;
  v20[6] = v3;
  MXDispatchAsync("[MXSession(InterfaceImpl) _dealloc]", "MXSession_Impl_Embedded.m", 1812, 0, 0, v18, v20);

  self->mDescription = 0;
  self->mPreferredAudioHardwareFormat = 0;

  self->mMutePriority = 0;
  self->mSourceFormatInfo = 0;

  self->mCurrentlyPlayingSourceFormatInfo = 0;
  self->mCurrentlyPlayingBufferedAudioFormatInfo = 0;

  self->mBestAvailableContentType = 0;
  self->mRecursiveLock = 0;
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v23, 8);
  v19 = *MEMORY[0x1E69E9840];
}

void __36__MXSession_InterfaceImpl___dealloc__block_invoke(void *a1)
{
  v2 = *(*(a1[4] + 8) + 40);
  if (a1[6])
  {
    [MXSession updateIsPlaying:v2];
    [MXSession updateIsRecording:v2];
    [MXSession updatePreferredAudioHardwareFormat:v2 withMaxOutputChannels:[MXSession getResolvedPreferredNumberOfOutputChannels:v2] andCalledFromDealloc:1];
    if (+[MXSession isCoreSessionFormatValidForMaxOutputChannels:](MXSession, "isCoreSessionFormatValidForMaxOutputChannels:", [v2 preferredHardwareFormat]))
    {
      [MXSession updatePreferredNumberOfOutputChannels:v2];
    }

    [MXSession updatePreferredOutputSampleRate:v2];
    [MXSession updateDoesntActuallyPlayAudio:v2];
    [MXSession updateAudioTrackStatus:v2];
    [MXSession updateIsAnyPlayingContentIneligibleForEnhancedDialogue:v2];
  }

  else
  {
    MXCoreSessionTeardown(*(*(a1[4] + 8) + 40));
  }

  if (*(*(a1[5] + 8) + 24) == 1)
  {

    MX_FeatureFlags_IsMandrakeEverywhereEnabled();
  }
}

- (int)setPropertyForKeyInternal:(id)a3 value:(id)a4 fromPropertiesBatch:(id)a5
{
  v47 = *MEMORY[0x1E69E9840];
  if ([a3 isEqualToString:@"BestAvailableContentType"])
  {
    if (!a4 || (v8 = CFGetTypeID(a4), v8 == CFStringGetTypeID()))
    {
      v9 = [(MXSession *)self setBestAvailableContentType:a4];
      goto LABEL_63;
    }

    [MXSession(InterfaceImpl) setPropertyForKeyInternal:v46 value:? fromPropertiesBatch:?];
LABEL_75:
    v20 = v46[0];
    if (!v46[0])
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  if ([a3 isEqualToString:@"ClientType"])
  {
    v10 = CFGetTypeID(a4);
    if (v10 != CFNumberGetTypeID())
    {
      [MXSession(InterfaceImpl) setPropertyForKeyInternal:v46 value:? fromPropertiesBatch:?];
      goto LABEL_75;
    }

    valuePtr = 1;
    CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
    if ((valuePtr - 5) <= 0xFFFFFFFB)
    {
      [MXSession(InterfaceImpl) setPropertyForKeyInternal:v46 value:? fromPropertiesBatch:?];
      goto LABEL_75;
    }

    v9 = [(MXSession *)self setClientType:?];
    goto LABEL_63;
  }

  if ([a3 isEqualToString:@"ContentIsEligibleForEnhancedDialogue"])
  {
    if (!a4 || (v11 = CFGetTypeID(a4), v11 != CFBooleanGetTypeID()))
    {
      [MXSession(InterfaceImpl) setPropertyForKeyInternal:v46 value:? fromPropertiesBatch:?];
      goto LABEL_75;
    }

    v12 = *MEMORY[0x1E695E4D0];
    v9 = [(MXSession *)self setContentIsEligibleForEnhancedDialogue:FigCFEqual() != 0];
    goto LABEL_63;
  }

  if ([a3 isEqualToString:@"CurrentlyPlayingContentIsEligibleForSpatialization"])
  {
    if (!a4 || (v13 = CFGetTypeID(a4), v13 != CFBooleanGetTypeID()))
    {
      [MXSession(InterfaceImpl) setPropertyForKeyInternal:v46 value:? fromPropertiesBatch:?];
      goto LABEL_75;
    }

    v9 = [(MXSession *)self setCurrentlyPlayingContentIsEligibleForSpatialization:*MEMORY[0x1E695E4D0] == a4];
    goto LABEL_63;
  }

  if ([a3 isEqualToString:@"CurrentlyPlayingSourceFormatInfo"])
  {
    if (a4)
    {
      v14 = CFGetTypeID(a4);
      if (v14 != CFDictionaryGetTypeID())
      {
        [MXSession(InterfaceImpl) setPropertyForKeyInternal:v46 value:? fromPropertiesBatch:?];
        goto LABEL_75;
      }
    }

    v9 = [(MXSession *)self setCurrentlyPlayingSourceFormatInfo:a4];
    goto LABEL_63;
  }

  if ([a3 isEqualToString:@"CurrentlyPlayingBufferedAudioFormatInfo"])
  {
    if (a4)
    {
      v15 = CFGetTypeID(a4);
      if (v15 != CFDictionaryGetTypeID())
      {
        [MXSession(InterfaceImpl) setPropertyForKeyInternal:v46 value:? fromPropertiesBatch:?];
        goto LABEL_75;
      }
    }

    v9 = [(MXSession *)self setCurrentlyPlayingBufferedAudioFormatInfo:a4];
    goto LABEL_63;
  }

  if ([a3 isEqualToString:@"IAmPiP"])
  {
    if (!a4 || (v16 = CFGetTypeID(a4), v16 != CFBooleanGetTypeID()))
    {
      [MXSession(InterfaceImpl) setPropertyForKeyInternal:v46 value:? fromPropertiesBatch:?];
      goto LABEL_75;
    }

    v9 = [(MXSession *)self setIAmPiP:*MEMORY[0x1E695E4D0] == a4];
    goto LABEL_63;
  }

  if ([a3 isEqualToString:@"SourceFormatInfo"])
  {
    if (a4)
    {
      v17 = CFGetTypeID(a4);
      if (v17 != CFDictionaryGetTypeID())
      {
        [MXSession(InterfaceImpl) setPropertyForKeyInternal:v46 value:? fromPropertiesBatch:?];
        goto LABEL_75;
      }
    }

    v9 = [(MXSession *)self setSourceFormatInfo:a4];
    goto LABEL_63;
  }

  if ([a3 isEqualToString:@"AudioToolboxIsPlaying"])
  {
    if (!a4 || (v18 = CFGetTypeID(a4), v18 != CFBooleanGetTypeID()))
    {
      [MXSession(InterfaceImpl) setPropertyForKeyInternal:v46 value:? fromPropertiesBatch:?];
      goto LABEL_75;
    }

    v19 = *MEMORY[0x1E695E4D0] == a4;
    if (self->mAudioToolboxIsPlaying == v19)
    {
      goto LABEL_37;
    }

    self->mAudioToolboxIsPlaying = v19;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v29 = self->mClientIsPlaying || self->mAudioToolboxIsPlaying;
    v30 = v29;
LABEL_62:
    v9 = [(MXSession *)self setIsPlaying:v30, v43, v44];
    goto LABEL_63;
  }

  if ([a3 isEqualToString:@"DoesntActuallyPlayAudio"])
  {
    if (!a4 || (v21 = CFGetTypeID(a4), v21 != CFBooleanGetTypeID()))
    {
      [MXSession(InterfaceImpl) setPropertyForKeyInternal:v46 value:? fromPropertiesBatch:?];
      goto LABEL_75;
    }

    v9 = [(MXSession *)self setDoesntActuallyPlayAudio:*MEMORY[0x1E695E4D0] == a4];
    goto LABEL_63;
  }

  if ([a3 isEqualToString:@"IsPlayerMuted"])
  {
    if (!a4 || (v22 = CFGetTypeID(a4), v22 != CFBooleanGetTypeID()))
    {
      [MXSession(InterfaceImpl) setPropertyForKeyInternal:v46 value:? fromPropertiesBatch:?];
      goto LABEL_75;
    }

    v9 = [(MXSession *)self setIsPlayerMuted:CFBooleanGetValue(a4) != 0];
    goto LABEL_63;
  }

  if ([a3 isEqualToString:@"AudioTrackStatus"])
  {
    if (!a4 || (v24 = CFGetTypeID(a4), v24 != CFNumberGetTypeID()))
    {
      [MXSession(InterfaceImpl) setPropertyForKeyInternal:v46 value:? fromPropertiesBatch:?];
      goto LABEL_75;
    }

    v9 = -[MXSession setAudioTrackStatus:](self, "setAudioTrackStatus:", [a4 unsignedIntValue]);
    goto LABEL_63;
  }

  if ([a3 isEqualToString:@"IsPlaying"])
  {
    if (!a4 || (v25 = CFGetTypeID(a4), v25 != CFBooleanGetTypeID()))
    {
      [MXSession(InterfaceImpl) setPropertyForKeyInternal:v46 value:? fromPropertiesBatch:?];
      goto LABEL_75;
    }

    v26 = *MEMORY[0x1E695E4D0];
    v27 = *MEMORY[0x1E695E4D0] == a4;
    if (self->mClientIsPlaying != v27)
    {
      self->mClientIsPlaying = v27;
      if (dword_1EB75DE40)
      {
        v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
        mAudioToolboxIsPlaying = 1;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        if (self->mClientIsPlaying)
        {
          goto LABEL_97;
        }
      }

      else if (v26 == a4)
      {
        mAudioToolboxIsPlaying = 1;
LABEL_97:
        v30 = mAudioToolboxIsPlaying;
        goto LABEL_62;
      }

      mAudioToolboxIsPlaying = self->mAudioToolboxIsPlaying;
      goto LABEL_97;
    }

LABEL_37:
    v20 = 0;
    goto LABEL_65;
  }

  if ([a3 isEqualToString:@"IsPlayingOutput"])
  {
    if (!a4 || (v34 = CFGetTypeID(a4), v34 != CFBooleanGetTypeID()))
    {
      [MXSession(InterfaceImpl) setPropertyForKeyInternal:v46 value:? fromPropertiesBatch:?];
      goto LABEL_75;
    }

    v9 = -[MXSession setIsPlayingOutput:](self, "setIsPlayingOutput:", [a4 BOOLValue]);
  }

  else if ([a3 isEqualToString:@"IsPlayingVideoOutput"])
  {
    if (!a4 || (v35 = CFGetTypeID(a4), v35 != CFBooleanGetTypeID()))
    {
      [MXSession(InterfaceImpl) setPropertyForKeyInternal:v46 value:? fromPropertiesBatch:?];
      goto LABEL_75;
    }

    v9 = -[MXSession setIsPlayingVideoOutput:](self, "setIsPlayingVideoOutput:", [a4 BOOLValue]);
  }

  else
  {
    if ([a3 isEqualToString:@"IsRecording"])
    {
      if (!a4 || (v36 = CFGetTypeID(a4), v36 != CFBooleanGetTypeID()))
      {
        [MXSession(InterfaceImpl) setPropertyForKeyInternal:v46 value:? fromPropertiesBatch:?];
        goto LABEL_75;
      }

      v37 = *MEMORY[0x1E695E4D0];
      v38 = *MEMORY[0x1E695E4D0] == a4;
      if (v38 != [(MXSession *)self getIsRecording])
      {
        v9 = [(MXSession *)self setIsRecording:v37 == a4];
        goto LABEL_63;
      }

      goto LABEL_37;
    }

    if ([a3 isEqualToString:@"MutePriority"])
    {
      if (!a4)
      {
        [MXSession(InterfaceImpl) setPropertyForKeyInternal:v46 value:? fromPropertiesBatch:?];
        goto LABEL_75;
      }

      if (!CFEqual(a4, @"MutePriority_One") && !CFEqual(a4, @"MutePriority_Two") && !CFEqual(a4, @"MutePriority_Three") && !CFEqual(a4, @"MutePriority_Four"))
      {
        [MXSession(InterfaceImpl) setPropertyForKeyInternal:v46 value:? fromPropertiesBatch:?];
        goto LABEL_75;
      }

      v9 = [(MXSession *)self setMutePriority:a4];
    }

    else if ([a3 isEqualToString:@"PreferredAudioHardwareFormat"])
    {
      if (!a4)
      {
        [MXSession(InterfaceImpl) setPropertyForKeyInternal:v46 value:? fromPropertiesBatch:?];
        goto LABEL_75;
      }

      if (!CFEqual(a4, @"LPCM") && !CFEqual(a4, @"AC-3") && !CFEqual(a4, @"MATAtmos"))
      {
        [MXSession(InterfaceImpl) setPropertyForKeyInternal:v46 value:? fromPropertiesBatch:?];
        goto LABEL_75;
      }

      v9 = [(MXSession *)self setPreferredAudioHardwareFormat:a4];
    }

    else if ([a3 isEqualToString:@"PreferredNumberOfOutputChannels"])
    {
      if (a4)
      {
        v40 = CFGetTypeID(a4);
        if (v40 != CFNumberGetTypeID())
        {
          [MXSession(InterfaceImpl) setPropertyForKeyInternal:v46 value:? fromPropertiesBatch:?];
          goto LABEL_75;
        }
      }

      v46[0] = 0;
      CFNumberGetValue(a4, kCFNumberSInt32Type, v46);
      v9 = [(MXSession *)self setPreferredNumberOfOutputChannels:v46[0]];
    }

    else if (([a3 isEqualToString:@"PreferredOutputSampleRate"] & 1) != 0 || objc_msgSend(a3, "isEqualToString:", @"PreferredAudioHardwareSampleRate"))
    {
      if (!a4 || (v41 = CFGetTypeID(a4), v41 != CFNumberGetTypeID()))
      {
        [MXSession(InterfaceImpl) setPropertyForKeyInternal:v46 value:? fromPropertiesBatch:?];
        goto LABEL_75;
      }

      [a4 floatValue];
      v9 = [(MXSession *)self setPreferredOutputSampleRate:v42];
    }

    else
    {
      v9 = MXCoreSessionSetProperty(self->mCoreSession, a3);
    }
  }

LABEL_63:
  v20 = v9;
  if (v9)
  {
LABEL_64:
    v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_65:
  v32 = *MEMORY[0x1E69E9840];
  return v20;
}

- (int)setPropertiesInternal:(id)a3 usingErrorHandlingStrategy:(unsigned __int8)a4 outPropertiesErrors:(id *)a5
{
  v6 = a4;
  v63 = *MEMORY[0x1E69E9840];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (a3)
  {
    if (dword_1EB75DE40)
    {
      v52 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSMDebugUtility_PrintDictionary(a3);
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v10 = sOrderedMXSessionProperties;
    v11 = [sOrderedMXSessionProperties countByEnumeratingWithState:&v47 objects:v61 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v48;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v48 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v47 + 1) + 8 * i);
          v16 = [a3 objectForKey:{v15, v34, v35}];
          if (v16)
          {
            v59 = v15;
            v60 = v16;
            [v8 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v60, &v59, 1)}];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v47 objects:v61 count:16];
      }

      while (v12);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v17 = [a3 countByEnumeratingWithState:&v43 objects:v58 count:{16, v34, v35}];
    if (v17)
    {
      v18 = v17;
      v19 = *v44;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v44 != v19)
          {
            objc_enumerationMutation(a3);
          }

          v21 = *(*(&v43 + 1) + 8 * j);
          if (([sOrderedMXSessionProperties containsObject:v21] & 1) == 0)
          {
            v56 = v21;
            v57 = [a3 objectForKey:v21];
            [v8 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v57, &v56, 1)}];
          }
        }

        v18 = [a3 countByEnumeratingWithState:&v43 objects:v58 count:16];
      }

      while (v18);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v22 = [v8 countByEnumeratingWithState:&v39 objects:v55 count:16];
    if (v22)
    {
      v23 = v22;
      v36 = 0;
      v24 = *v40;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v40 != v24)
          {
            objc_enumerationMutation(v8);
          }

          v26 = *(*(&v39 + 1) + 8 * k);
          v27 = objc_autoreleasePoolPush();
          v28 = [objc_msgSend(v26 "allKeys")];
          v29 = [v26 objectForKey:v28];
          if (v29 == [MEMORY[0x1E695DFB0] null])
          {
            v30 = 0;
          }

          else
          {
            v30 = v29;
          }

          v31 = [(MXSession *)self setPropertyForKeyInternal:v28 value:v30 fromPropertiesBatch:a3];
          v53 = v28;
          v54 = [MEMORY[0x1E696AD98] numberWithInt:v31];
          [v38 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v54, &v53, 1)}];
          if (v6 == 2)
          {
            if (v31)
            {
              v36 = FigSignalErrorAtGM();
            }
          }

          else if (v6 == 1 && v31)
          {
            [MXSession(InterfaceImpl) setPropertiesInternal:v27 usingErrorHandlingStrategy:v62 outPropertiesErrors:?];
            goto LABEL_44;
          }

          objc_autoreleasePoolPop(v27);
        }

        v23 = [v8 countByEnumeratingWithState:&v39 objects:v55 count:16];
      }

      while (v23);
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    [MXSession(InterfaceImpl) setPropertiesInternal:v62 usingErrorHandlingStrategy:? outPropertiesErrors:?];
LABEL_44:
    v36 = v62[0];
  }

  if (a5)
  {
    *a5 = v38;
  }

  else
  {
  }

  v32 = *MEMORY[0x1E69E9840];
  return v36;
}

- (int)setOrderedPropertiesInternal:(id)a3 usingErrorHandlingStrategy:(unsigned __int8)a4 outPropertiesErrors:(id *)a5
{
  v6 = a4;
  v38 = *MEMORY[0x1E69E9840];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  obj = a3;
  v25 = a5;
  if (a3)
  {
    if (dword_1EB75DE40)
    {
      v33 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSMDebugUtility_PrintCollection(a3);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = [a3 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v11)
    {
      v12 = v11;
      v26 = 0;
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          v17 = [objc_msgSend(v15 "allKeys")];
          v18 = [v15 objectForKey:v17];
          if (v18 == [MEMORY[0x1E695DFB0] null])
          {
            v19 = 0;
          }

          else
          {
            v19 = v18;
          }

          v20 = [(MXSession *)self setPropertyForKeyInternal:v17 value:v19 fromPropertiesBatch:0, v23, v24];
          v34 = v17;
          v35 = [MEMORY[0x1E696AD98] numberWithInt:v20];
          [v9 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v35, &v34, 1)}];
          if (v6 == 2)
          {
            if (v20)
            {
              v26 = FigSignalErrorAtGM();
            }
          }

          else if (v6 == 1 && v20)
          {
            [MXSession(InterfaceImpl) setOrderedPropertiesInternal:v16 usingErrorHandlingStrategy:v37 outPropertiesErrors:?];
            goto LABEL_26;
          }

          objc_autoreleasePoolPop(v16);
        }

        v12 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v12);
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    [MXSession(InterfaceImpl) setOrderedPropertiesInternal:v37 usingErrorHandlingStrategy:? outPropertiesErrors:?];
LABEL_26:
    v26 = v37[0];
  }

  if (v25)
  {
    *v25 = v9;
  }

  else
  {
  }

  v21 = *MEMORY[0x1E69E9840];
  return v26;
}

- (id)copyPropertiesInternal:(id)a3 outPropertyErrors:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v19 = 0;
        v13 = [(MXSession *)self copyPropertyForKeyInternal:v11 valueOut:&v19];
        if (v13)
        {
          v14 = 1;
        }

        else
        {
          v14 = v19 == 0;
        }

        if (!v14)
        {
          [v18 setObject:? forKey:?];
        }

        [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v13), v11}];

        objc_autoreleasePoolPop(v12);
      }

      v8 = [a3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  if (a4)
  {
    *a4 = v6;
  }

  else
  {
  }

  v15 = *MEMORY[0x1E69E9840];
  return v18;
}

- (int)copyPropertyForKeyInternal:(id)a3 valueOut:(id *)a4
{
  if (a3)
  {
    if ([a3 isEqualToString:@"AudioToolboxIsPlaying"])
    {
      v7 = &OBJC_IVAR___MXSession_mAudioToolboxIsPlaying;
      goto LABEL_4;
    }

    if ([a3 isEqualToString:@"BestAvailableContentType"])
    {
      v9 = [(MXSession *)self getBestAvailableContentType];
      goto LABEL_10;
    }

    if ([a3 isEqualToString:@"ContentIsEligibleForEnhancedDialogue"])
    {
      v10 = [(MXSession *)self getContentIsEligibleForEnhancedDialogue];
      goto LABEL_16;
    }

    if ([a3 isEqualToString:@"CurrentlyPlayingContentIsEligibleForSpatialization"])
    {
      v10 = [(MXSession *)self getCurrentlyPlayingContentIsEligibleForSpatialization];
      goto LABEL_16;
    }

    if ([a3 isEqualToString:@"CurrentlyPlayingSourceFormatInfo"])
    {
      v9 = [(MXSession *)self getCurrentlyPlayingSourceFormatInfo];
      goto LABEL_10;
    }

    if ([a3 isEqualToString:@"CurrentlyPlayingBufferedAudioFormatInfo"])
    {
      v9 = [(MXSession *)self copyCurrentlyPlayingBufferedAudioSourceFormatInfo];
LABEL_25:
      v11 = v9;
      LODWORD(v9) = 0;
LABEL_26:
      *a4 = v11;
      return v9;
    }

    if ([a3 isEqualToString:@"DoesntActuallyPlayAudio"])
    {
      v10 = [(MXSession *)self getDoesntActuallyPlayAudio];
      goto LABEL_16;
    }

    if ([a3 isEqualToString:@"IsPlayerMuted"])
    {
      v10 = [(MXSession *)self getIsPlayerMuted];
      goto LABEL_16;
    }

    if ([a3 isEqualToString:@"AudioTrackStatus"])
    {
      v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:{-[MXSession getAudioTrackStatus](self, "getAudioTrackStatus")}];
      goto LABEL_25;
    }

    if ([a3 isEqualToString:@"MXSessionID"])
    {
      valuePtr = [(MXSession *)self getID];
      v12 = *MEMORY[0x1E695E480];
      v13 = kCFNumberSInt64Type;
LABEL_35:
      v9 = CFNumberCreate(v12, v13, &valuePtr);
      goto LABEL_25;
    }

    if ([a3 isEqualToString:@"IsMuted"])
    {
      v10 = [(MXSession *)self getIsMuted];
LABEL_16:
      v8 = MEMORY[0x1E695E4D0];
      if (!v10)
      {
        v8 = MEMORY[0x1E695E4C0];
      }

      goto LABEL_18;
    }

    if ([a3 isEqualToString:@"IsPlaying"])
    {
      v7 = &OBJC_IVAR___MXSession_mClientIsPlaying;
      goto LABEL_4;
    }

    if ([a3 isEqualToString:@"IsPlayingOutput"])
    {
      v7 = &OBJC_IVAR___MXSession_mIsPlayingOutput;
      goto LABEL_4;
    }

    if ([a3 isEqualToString:@"IsPlayingVideoOutput"])
    {
      v7 = &OBJC_IVAR___MXSession_mIsPlayingVideoOutput;
      goto LABEL_4;
    }

    if ([a3 isEqualToString:@"IsRecording"])
    {
      v7 = &OBJC_IVAR___MXSession_mIsRecording;
LABEL_4:
      if (*(&self->super.isa + *v7))
      {
        v8 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v8 = MEMORY[0x1E695E4C0];
      }

LABEL_18:
      v9 = *v8;
LABEL_19:
      *a4 = v9;
LABEL_20:
      CFRetain(v9);
      LODWORD(v9) = 0;
      return v9;
    }

    if ([a3 isEqualToString:@"PreferredAudioHardwareFormat"])
    {
      v9 = [(MXSession *)self getPreferredAudioHardwareFormat];
      goto LABEL_19;
    }

    if ([a3 isEqualToString:@"PreferredNumberOfOutputChannels"])
    {
      v14 = [(MXSession *)self getPreferredNumberOfOutputChannels];
LABEL_50:
      LODWORD(valuePtr) = v14;
      v12 = *MEMORY[0x1E695E480];
      v13 = kCFNumberSInt32Type;
      goto LABEL_35;
    }

    if (([a3 isEqualToString:@"PreferredOutputSampleRate"] & 1) != 0 || objc_msgSend(a3, "isEqualToString:", @"PreferredAudioHardwareSampleRate"))
    {
      [(MXSession *)self getPreferredOutputSampleRate];
      valuePtr = v15;
      v12 = *MEMORY[0x1E695E480];
      v13 = kCFNumberFloat64Type;
      goto LABEL_35;
    }

    if ([a3 isEqualToString:@"SourceFormatInfo"])
    {
      v9 = [(MXSession *)self getSourceFormatInfo];
LABEL_10:
      *a4 = v9;
      if (!v9)
      {
        return v9;
      }

      goto LABEL_20;
    }

    if ([a3 isEqualToString:@"AudioQueueOptions"])
    {
      valuePtr = 0;
      LODWORD(v9) = MXCoreSessionCopyProperty(self->mCoreSession, a3, *MEMORY[0x1E695E480], &valuePtr);
      v11 = valuePtr;
      goto LABEL_26;
    }

    if ([a3 isEqualToString:@"ConsolidatedSourceFormatInfo"])
    {
      v9 = CMSUtility_CopyConsolidatedSourceFormatInfo(self->mCoreSession);
      goto LABEL_25;
    }

    if ([a3 isEqualToString:@"TestOnly_ClientType"])
    {
      v14 = [(MXSession *)self getClientType];
      goto LABEL_50;
    }

    mCoreSession = self->mCoreSession;
    v17 = *MEMORY[0x1E695E480];

    LODWORD(v9) = MXCoreSessionCopyProperty(mCoreSession, a3, v17, a4);
  }

  else
  {
    LODWORD(v9) = -15682;
  }

  return v9;
}

+ (BOOL)isSessionMuted:(unint64_t)a3
{
  v9 = *MEMORY[0x1E69E9840];
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v4 = [MXSession copyMXSessionForID:a3];
  v5 = [v4 getIsMuted];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

id __74__MXSession_setProperties_usingErrorHandlingStrategy_outPropertiesErrors___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _setProperties:*(a1 + 40) usingErrorHandlingStrategy:*(a1 + 64) outPropertiesErrors:*(a1 + 56)];
  v3 = *(a1 + 56);
  *(*(*(a1 + 48) + 8) + 24) = result;
  if (v3)
  {
    v4 = *v3;

    return v4;
  }

  return result;
}

id __81__MXSession_setOrderedProperties_usingErrorHandlingStrategy_outPropertiesErrors___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _setOrderedProperties:*(a1 + 40) usingErrorHandlingStrategy:*(a1 + 64) outPropertiesErrors:*(a1 + 56)];
  v3 = *(a1 + 56);
  *(*(*(a1 + 48) + 8) + 24) = result;
  if (v3)
  {
    v4 = *v3;

    return v4;
  }

  return result;
}

- (id)copyProperties:(id)a3 outPropertyErrors:(id *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy__12;
  v25 = __Block_byref_object_dispose__12;
  v26 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v7)
  {
    v8 = *v18;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(a3);
        }

        if (![MXSession isNonSerializedCopyProperty:*(*(&v17 + 1) + 8 * v9)])
        {
          v11 = MXGetSerialQueue();
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __46__MXSession_copyProperties_outPropertyErrors___block_invoke;
          v16[3] = &unk_1E7AE70D0;
          v16[4] = self;
          v16[5] = a3;
          v16[6] = &v21;
          v16[7] = a4;
          MXDispatchAsyncAndWait("[MXSession copyProperties:outPropertyErrors:]", "MXSession_ObjCInterface.m", 160, 0, 0, v11, v16);
          if (a4)
          {
            v12 = *a4;
          }

          goto LABEL_12;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v17 objects:v27 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = [(MXSession *)self copyPropertiesInternal:a3 outPropertyErrors:a4];
  v22[5] = v10;
LABEL_12:
  v13 = v22[5];
  _Block_object_dispose(&v21, 8);
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

id __46__MXSession_copyProperties_outPropertyErrors___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _copyProperties:*(a1 + 40) outPropertyErrors:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 40) = result;
  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = *v3;

    return v4;
  }

  return result;
}

- (int)setPropertyForKey:(id)a3 value:(id)a4
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (+[MXSession isNonSerializedSetProperty:](MXSession, "isNonSerializedSetProperty:") || +[MXSession isNonSerializedSetPropertyWhenSessionIsInactive:](MXSession, "isNonSerializedSetPropertyWhenSessionIsInactive:", a3) && ([-[MXSession getCoreSession](self "getCoreSession")] & 1) == 0 || MX_FeatureFlags_IsSessionBasedMutingEnabled() && objc_msgSend(a3, "isEqualToString:", @"IsRecordingMuted"))
  {
    v7 = [(MXSession *)self setPropertyForKeyInternal:a3 value:a4 fromPropertiesBatch:0];
    *(v12 + 6) = v7;
  }

  else
  {
    v8 = MXGetSerialQueue();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __37__MXSession_setPropertyForKey_value___block_invoke;
    v10[3] = &unk_1E7AE70A8;
    v10[4] = self;
    v10[5] = a3;
    v10[6] = a4;
    v10[7] = &v11;
    MXDispatchAsyncAndWait("[MXSession setPropertyForKey:value:]", "MXSession_ObjCInterface.m", 268, 0, 0, v8, v10);
    v7 = *(v12 + 6);
  }

  _Block_object_dispose(&v11, 8);
  return v7;
}

uint64_t __37__MXSession_setPropertyForKey_value___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _setPropertyForKey:*(a1 + 40) value:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (int)copyPropertyForKey:(id)a3 valueOut:(id *)a4
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if ([MXSession isNonSerializedCopyProperty:?])
  {
    v7 = [(MXSession *)self copyPropertyForKeyInternal:a3 valueOut:a4];
    *(v12 + 6) = v7;
  }

  else
  {
    v8 = MXGetSerialQueue();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __41__MXSession_copyPropertyForKey_valueOut___block_invoke;
    v10[3] = &unk_1E7AE70D0;
    v10[4] = self;
    v10[5] = a3;
    v10[6] = &v11;
    v10[7] = a4;
    MXDispatchAsyncAndWait("[MXSession copyPropertyForKey:valueOut:]", "MXSession_ObjCInterface.m", 297, 0, 0, v8, v10);
    v7 = *(v12 + 6);
  }

  _Block_object_dispose(&v11, 8);
  return v7;
}

uint64_t __41__MXSession_copyPropertyForKey_valueOut___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _copyPropertyForKey:*(a1 + 40) valueOut:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)dealloc
{
  v3 = objc_autoreleasePoolPush();
  [(MXSession *)self _dealloc];
  v4.receiver = self;
  v4.super_class = MXSession;
  [(MXSession *)&v4 dealloc];
  objc_autoreleasePoolPop(v3);
}

- (int)setMutePriority:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [(MXSession *)self getMutePriority];
  if ([a3 isEqualToString:v5])
  {
    result = 0;
  }

  else
  {
    IsAnyMXSessionPlayingWithEachMutePriority = CMSMUtility_IsAnyMXSessionPlayingWithEachMutePriority();
    if (IsAnyMXSessionPlayingWithEachMutePriority && [a3 isEqualToString:@"MutePriority_One"])
    {
      OUTLINED_FUNCTION_4_12();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v9 = v14;
      }

      else
      {
        v9 = v14 & 0xFFFFFFFE;
      }

      if (v9)
      {
        mID = self->mID;
        OUTLINED_FUNCTION_1_5();
        OUTLINED_FUNCTION_8_6();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(NSRecursiveLock *)self->mRecursiveLock lock];

    self->mMutePriority = a3;
    [(NSRecursiveLock *)self->mRecursiveLock unlock];
    if (dword_1EB75DE40)
    {
      OUTLINED_FUNCTION_4_12();
      v10 = OUTLINED_FUNCTION_2_15();
      if (os_log_type_enabled(v10, type))
      {
        v11 = v14;
      }

      else
      {
        v11 = v14 & 0xFFFFFFFE;
      }

      if (v11)
      {
        [(MXSession *)self info];
        OUTLINED_FUNCTION_1_5();
        OUTLINED_FUNCTION_8_6();
      }

      OUTLINED_FUNCTION_0_0();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (([v5 isEqualToString:@"MutePriority_One"] & 1) == 0 && !objc_msgSend(v5, "isEqualToString:", @"MutePriority_Three") || !objc_msgSend(a3, "isEqualToString:", @"MutePriority_Two") || (IsAnyMXSessionPlayingWithEachMutePriority & 0xFF00) == 0 || !self->mIsPlaying || (result = cmsBeginInterruptionGuts(self->mCoreSession, 0, 2)) == 0)
    {
      result = MX_FeatureFlags_IsMandrakeEverywhereEnabled();
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (int)setIsPlaying:(BOOL)a3
{
  v26 = *MEMORY[0x1E69E9840];
  if (self->mIsPlaying == a3)
  {
    goto LABEL_26;
  }

  v4 = a3;
  if (![+[MXSessionManager isSpeechDetectCategory:"isSpeechDetectCategory:"]
  {
    self->mIsPlaying = v4;
    if (dword_1EB75DE40)
    {
      OUTLINED_FUNCTION_4_12();
      v8 = &qword_1EB75D000;
      v9 = OUTLINED_FUNCTION_2_15();
      if (OUTLINED_FUNCTION_7_7(v9, v10, v11, v12, v13, v14, v15, v16, v21, v22, v23, type, SBYTE2(type), BYTE3(type), SHIDWORD(type)))
      {
        v17 = v3;
      }

      else
      {
        v17 = v3 & 0xFFFFFFFE;
      }

      if (v17)
      {
        self->mIsPlaying;
        mID = self->mID;
        v8 = &qword_1EB75D000;
        [(MXSession *)self getClientTypeAsString];
        [(MXCoreSessionBase *)self->mCoreSession clientName];
        OUTLINED_FUNCTION_1_5();
        OUTLINED_FUNCTION_12();
      }

      v19 = v8[455];
      OUTLINED_FUNCTION_0_0();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (self->mIsPlaying)
      {
        goto LABEL_22;
      }
    }

    else if (v4)
    {
LABEL_22:
      result = [OUTLINED_FUNCTION_5_9() updateDoesntActuallyPlayAudio:?];
      if (result)
      {
        goto LABEL_27;
      }

      result = [OUTLINED_FUNCTION_5_9() updateIsPlaying:?];
      if (result)
      {
        goto LABEL_27;
      }

      [(MXSession *)self updateBadgeType];
LABEL_25:
      [OUTLINED_FUNCTION_5_9() updateIsAnyPlayingContentIneligibleForEnhancedDialogue:?];
      CMSMNotificationUtility_PostSourceFormatInfoDidChange();
LABEL_26:
      result = 0;
      goto LABEL_27;
    }

    result = [OUTLINED_FUNCTION_5_9() updateIsPlaying:?];
    if (result)
    {
      goto LABEL_27;
    }

    result = [OUTLINED_FUNCTION_5_9() updateDoesntActuallyPlayAudio:?];
    if (result)
    {
      goto LABEL_27;
    }

    -[MXSession setCurrentlyPlayingBufferedAudioFormatInfo:](self, "setCurrentlyPlayingBufferedAudioFormatInfo:", [MEMORY[0x1E695DF20] dictionary]);
    goto LABEL_25;
  }

  if (dword_1EB75DE40)
  {
    OUTLINED_FUNCTION_4_12();
    v6 = OUTLINED_FUNCTION_2_15();
    if (os_log_type_enabled(v6, BYTE3(type)))
    {
      v7 = HIDWORD(type);
    }

    else
    {
      v7 = HIDWORD(type) & 0xFFFFFFFE;
    }

    if (v7)
    {
      [(MXCoreSessionBase *)self->mCoreSession clientName];
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_12();
    }

    OUTLINED_FUNCTION_0_0();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = -15685;
LABEL_27:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

- (int)setDoesntActuallyPlayAudio:(BOOL)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->mDoesntActuallyPlayAudio == a3)
  {
    IsMandrakeEverywhereEnabled = 0;
  }

  else
  {
    self->mDoesntActuallyPlayAudio = a3;
    if (dword_1EB75DE40)
    {
      OUTLINED_FUNCTION_4_12();
      v6 = OUTLINED_FUNCTION_2_15();
      if (OUTLINED_FUNCTION_7_7(v6, v7, v8, v9, v10, v11, v12, v13, v19, v20, v21, v22, SBYTE2(v22), BYTE3(v22), SHIDWORD(v22)))
      {
        v14 = v3;
      }

      else
      {
        v14 = v3 & 0xFFFFFFFE;
      }

      if (v14)
      {
        mID = self->mID;
        [(MXSession *)self getClientTypeAsString];
        [(MXCoreSessionBase *)self->mCoreSession clientName];
        self->mDoesntActuallyPlayAudio;
        OUTLINED_FUNCTION_1_5();
        OUTLINED_FUNCTION_12();
      }

      OUTLINED_FUNCTION_0_0();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v16 = [MXSession updateDoesntActuallyPlayAudio:self->mCoreSession];
    if (v16)
    {
      IsMandrakeEverywhereEnabled = v16;
    }

    else
    {
      if (self->mDoesntActuallyPlayAudio || !self->mIsPlaying)
      {
        IsMandrakeEverywhereEnabled = 0;
      }

      else
      {
        IsMandrakeEverywhereEnabled = MX_FeatureFlags_IsMandrakeEverywhereEnabled();
      }

      [MXSession updateIsAnyPlayingContentIneligibleForEnhancedDialogue:self->mCoreSession];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return IsMandrakeEverywhereEnabled;
}

+ (int)updateIsPlaying:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = [a3 copyMXSessionList];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v46 count:16];
  if (v8)
  {
    v9 = v8;
    OUTLINED_FUNCTION_6_10();
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        if ([v12 getIsPlaying])
        {
          v13 = v12[10];
          switch(v13)
          {
            case 2:
              v6 = 1;
              break;
            case 4:
              v4 = 1;
              break;
            case 3:
              v5 = 1;
              break;
          }

          v3 = 1;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v30 objects:v46 count:16];
    }

    while (v9);
  }

  else
  {
    OUTLINED_FUNCTION_6_10();
  }

  if (dword_1EB75DE40)
  {
    OUTLINED_FUNCTION_4_12();
    v14 = OUTLINED_FUNCTION_2_15();
    if (os_log_type_enabled(v14, type))
    {
      v15 = v29;
    }

    else
    {
      v15 = v29 & 0xFFFFFFFE;
    }

    if (v15)
    {
      v16 = [a3 clientName];
      v17 = @"NO";
      v34 = 136316418;
      v35 = "+[MXSession(InternalUse) updateIsPlaying:]";
      if (v3)
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      v37 = v16;
      v36 = 2114;
      if (v6)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      v38 = 2114;
      v39 = v18;
      if (v5)
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      v40 = 2114;
      if (v4)
      {
        v17 = @"YES";
      }

      v41 = v19;
      v42 = 2114;
      v43 = v20;
      v44 = 2114;
      v45 = v17;
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_0_0();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v21 = MEMORY[0x1E695E4C0];
  if (v3)
  {
    v21 = MEMORY[0x1E695E4D0];
  }

  v22 = *v21;
  IsMandrakeEverywhereEnabled = MXCoreSessionSetProperty(a3, @"SomeMXSessionIsPlaying");
  if (IsMandrakeEverywhereEnabled || (v3 & 1) != 0 && (IsMandrakeEverywhereEnabled = MX_FeatureFlags_IsMandrakeEverywhereEnabled()) != 0)
  {
    v24 = IsMandrakeEverywhereEnabled;
  }

  else
  {
    CMSMNotificationUtility_PostSomeSessionIsPlayingDidChange();
    if (CMSUtility_IsAudioCategoryPrimary(a3))
    {
      CMSMNotificationUtility_PostSomePrimaryAudioCategoryIsPlayingDidChange(a3);
      CMSMNotificationUtility_PostSomeOtherPrimaryAudioCategoryIsPlayingDidChange(a3);
    }

    v24 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

@end