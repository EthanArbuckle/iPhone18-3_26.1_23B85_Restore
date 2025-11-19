@interface MXSessionManager
+ (BOOL)getSilentModeStateFromDisk;
+ (id)copyDefaultMusicAppFromPlist;
+ (id)sharedInstance;
- (BOOL)areBothBudsInEarForA2DPPort;
- (BOOL)areDuckerAndDuckeePlayingOnDifferentVADs:(id)a3 duckerSession:(id)a4;
- (BOOL)areSessionsWithAudioModesActive:(id)a3;
- (BOOL)canSessionsCoexistDueToIndependentRecording:(id)a3 victim:(id)a4;
- (BOOL)canSessionsCoexistDueToMediaMultitasking:(id)a3 victim:(id)a4;
- (BOOL)canSessionsCoexistDueToOutputMuting:(id)a3 victim:(id)a4;
- (BOOL)doesActiveSessionHaveInput;
- (BOOL)doesAnyActiveSessionExistWhichPrefersToBeInterruptedByNextRecordingClient:(id)a3;
- (BOOL)doesSessionPreferInterruptionOnRouteDisconnect:(id)a3;
- (BOOL)duckSessionForVoiceOverIfNeeded:(id)a3 voiceOverSession:(id)a4;
- (BOOL)isAirPlaySession:(id)a3;
- (BOOL)isAnExistingDuckingSource:(id)a3;
- (BOOL)isAnyOtherUnduckedPlayingSessionMatchingVolumeRampCategory:(id)a3;
- (BOOL)isAnySessionWithMappedVolumeCategoryPlaying:(id)a3;
- (BOOL)isAtleastOneBudNotInEarForA2DPPort;
- (BOOL)isAudioCategoryMuteable:(id)a3;
- (BOOL)isAuditTokenEqual:(id *)a3 compareTo:(id *)a4;
- (BOOL)isAuditTokenValid:(id *)a3;
- (BOOL)isBTRouteSameDeviceWithDifferentProfile:(unsigned int)a3 newNumRoutes:(unsigned int)a4 oldRouteTypes:(id)a5 newRouteTypes:(id)a6 oldRouteIdentifiers:(id)a7 newRouteIdentifiers:(id)a8;
- (BOOL)isCurrentPortTypeMuteable:(unsigned int)a3;
- (BOOL)isCurrentRouteHeadphoneAndInEar:(unsigned int *)a3;
- (BOOL)isLongFormVideoApp:(id)a3;
- (BOOL)isMixableSessionBeingInterruptedByNextRecordingClient:(id)a3 victim:(id)a4;
- (BOOL)isPIDAllowedToBeNowPlayingApp:(int)a3;
- (BOOL)isPotentialSharePlayMediaSessionActive;
- (BOOL)isSessionAllowedToStartRecordingTemporarily:(id)a3;
- (BOOL)isSessionConfigurationEligibleForOutputMuting:(id)a3 audioMode:(id)a4;
- (BOOL)isSessionDucked:(id)a3 duckingSource:(id)a4;
- (BOOL)isSessionWithAudioCategoryActive:(id)a3;
- (BOOL)isSessionWithAudioModeActive:(id)a3;
- (BOOL)isSessionWithAudioModePlaying:(id)a3;
- (BOOL)isSessionWithAudioModeRecording:(id)a3;
- (BOOL)isSiriSessionActive:(BOOL *)a3 andMixable:(BOOL *)a4;
- (BOOL)isSiriSessionActiveAndRoutedToSiriOutputVAD;
- (BOOL)isSmartRoutingEligibleSessionAvailable;
- (BOOL)isSpeechDetectCategory:(id)a3;
- (BOOL)isVoiceOverDuckingActive:(id)a3 outDuckScalar:(float *)a4 outDuckFadeDuration:(float *)a5;
- (BOOL)sessionCanBecomeSharePlayMedia:(id)a3;
- (BOOL)sessionUtilizesIndependentRecordingOnly:(id)a3;
- (BOOL)shouldAllowBluetoothAccessoryToRequestAudioRoute;
- (BOOL)shouldDuckSessionForSpeakerVolumeLimit:(id)a3;
- (BOOL)shouldDuckSessionForVoiceOver:(id)a3;
- (BOOL)shouldSetDeviceFormatAndSampleRate:(id)a3;
- (BOOL)shouldSkipDuckingForVoiceOver:(id)a3 inActiveVoiceOverSession:(id)a4;
- (BOOL)updateDuckVolumeForDucker:(id)a3 duckVolume:(float)a4 duckFadeDuration:(float)a5;
- (BOOL)updateUnduckVolume:(id)a3 duckerSession:(id)a4 unduckVolume:(float)a5 unduckFadeDuration:(float)a6;
- (BOOL)updateUnduckVolumeForDucker:(id)a3 unduckVolume:(float)a4 unduckFadeDuration:(float)a5;
- (BOOL)voiceOverSessionWantsRelativeDucking:(id)a3;
- (BOOL)wombatEnabled;
- (MXSessionManager)init;
- (NSArray)longFormVideoApps;
- (NSArray)recordingClientPIDs;
- (NSDictionary)devicesSampleRates;
- (NSString)appAllowedToInitiateRecordingTemporarily;
- (NSString)systemMirroringRoutingContextUUID;
- (float)duckScalarForVoiceOver;
- (float)getDuckVolumeForBlurEffect:(id)a3 duckeeSession:(id)a4;
- (float)getSleepDurationForDuckFadeDuration:(float)a3;
- (id)copyActiveCoreSessionControllingRouting;
- (id)copyActiveSessionWithAudioCategory:(id)a3 andAudioMode:(id)a4;
- (id)copyActiveSessionsInfoForAdditiveRouting;
- (id)copyActiveVoiceOverSession;
- (id)copyAudioBehaviorForCategory:(id)a3 mode:(id)a4;
- (id)copyDisplayIDForActiveCarPlayVideoSession;
- (id)copyEvaluatedBadgeType:(id)a3;
- (id)copyHighestPriorityActiveSession:(id)a3 deviceIdentifier:(id)a4;
- (id)copyInterruptedSessions:(id)a3;
- (id)copyMXCoreSessionList;
- (id)copyPhoneCallBehaviorRecordingSession;
- (id)copyPotentialActiveSharePlayMediaSession;
- (id)copySessionEligibleForNowPlayingAppConsideration:(int)a3;
- (id)copySessionToBeMuted:(id *)a3;
- (id)copySessionWithAudioSessionID:(unsigned int)a3;
- (id)copySessionWithDisplayID:(id)a3;
- (id)copySessionWithPID:(int)a3;
- (id)copySessionsThatUserIntendsToUnmute:(unsigned int)a3;
- (id)copySessionsWithAuditToken:(id *)a3;
- (id)copySpeechDetectSession;
- (id)copyVoiceOverSession;
- (id)getAvailableAudioDestination:(id)a3;
- (id)getBluetoothCustomizedAlternateCategory:(id)a3 enableBluetooth:(BOOL)a4;
- (id)getCleanupSessionAssertionReasonString:(int64_t)a3;
- (id)getDefaultBuiltInCustomizedAlternateCategory:(id)a3 defaultBuiltInRoute:(id)a4;
- (id)getDisallowedRecordingReasonString:(unint64_t)a3;
- (id)getDuckingSource:(id)a3 duckerSession:(id)a4;
- (id)getProjectedAudioDestinationForCategory:(id)a3 mode:(id)a4;
- (id)getShadowingAudioSessionOptionsAsString:(unsigned int)a3;
- (id)getUncustomizedCategory:(id)a3;
- (int)clearUplinkMutedCache;
- (int)getMuteState:(id *)a3 outMuteValue:(BOOL *)a4;
- (int)getSessionPriority:(MXSessionPlayingInfo *)a3 forTipi:(BOOL)a4;
- (int)getVolumeButtonDelta:(id)a3 outVolumeDelta:(float *)a4;
- (int)prepareSessionActivationBeforeACQDispatch:(id)a3;
- (int)updateMuteState:(id *)a3 muteValue:(id)a4;
- (unint64_t)addSessionThatWantsToSuspendNeroScreenMirroring:(id)a3;
- (unint64_t)mxCoreSessionListAddSession:(id)a3;
- (unint64_t)mxCoreSessionListRemoveSession:(id)a3;
- (unint64_t)removeSessionThatWantsToSuspendNeroScreenMirroring:(id)a3;
- (unsigned)actuatorVADID;
- (unsigned)currentSpeechDetectStyle:(id)a3;
- (unsigned)decoupledInputVADID;
- (unsigned)defaultVADID;
- (unsigned)getCurrentOutputPort;
- (unsigned)getSpeechDetectStyleForSessionConfiguration:(id)a3;
- (unsigned)lowLatencyVADID;
- (unsigned)musicVADID;
- (unsigned)perAppAirPlayVADID;
- (unsigned)siriOutputVADID;
- (unsigned)speakerAlertVADID;
- (unsigned)speechDetectionVADID;
- (unsigned)systemSoundLocalVADID;
- (unsigned)systemSoundRemoteVADID;
- (void)addDuckerToSession:(id)a3 duckerSession:(id)a4 duckingSource:(id)a5;
- (void)appToInterruptCurrentNowPlayingSession:(id)a3;
- (void)applyUplinkMute:(id)a3;
- (void)cancelAnyInProgressRampIfNeeded:(id)a3 reason:(unsigned __int16)a4;
- (void)cleanupSessionAssertionsIfNeeded:(id)a3 cleanupReason:(int64_t)a4;
- (void)dealloc;
- (void)duckSessionIfDuckerIsActive:(id)a3;
- (void)duckSessionsForDucker:(id)a3 sessionsToDuck:(id)a4;
- (void)duckVolume:(id)a3 duckerSession:(id)a4 duckingSource:(id)a5;
- (void)dumpDebugInfo;
- (void)endAsyncDuckingOperation;
- (void)endAsyncDuckingOperationForSession:(id)a3;
- (void)getAndResetAsyncDuckingParameters:(BOOL *)a3 mostRecentDuckFadeDuration:(float *)a4;
- (void)getUpdatedDuckVolume:(id)a3 outDuckVolume:(float *)a4;
- (void)handleSilentModeTimerDidFire;
- (void)interruptActiveSessionsNotOptedIntoWombat;
- (void)interruptAllIndependentInputAudioResourceSessionsIfNeeded:(id)a3;
- (void)interruptAllSessionsAndSystemSounds:(id)a3;
- (void)interruptEligibleSessionsOnContinuityScreenOutputPortAvailableDidChange;
- (void)interruptRecordingSessionsOnContinuityScreenOutputPortAvailableDidChange;
- (void)interruptSessionsForCategoryNoLongerRoutable;
- (void)interruptSessionsOnRouteDisconnect:(id)a3;
- (void)makeStarkPortRoutableForPhoneCall:(BOOL)a3;
- (void)makeStarkPortRoutableForPlayingSession:(BOOL)a3;
- (void)muteOutputForSession:(id)a3;
- (void)postDisallowedActivationDueToContinuityCaptureNotification:(BOOL)a3 videoPlaybackWasIntended:(BOOL)a4;
- (void)postDisallowedRecordingNotification:(unint64_t)a3;
- (void)postStopCommandToSessionsWithAudioMode:(id)a3;
- (void)pvmStateDidChangeCallback:(id)a3;
- (void)refreshDeviceSampleRateCache;
- (void)remoteDeviceControlIsAllowed:(unsigned int *)a3;
- (void)removeDuckerForSession:(id)a3 sessionCausingUnduck:(id)a4 duckingSource:(id)a5 outLastDuckingSourceWasRemoved:(BOOL *)a6;
- (void)removeSilentModeTimer;
- (void)replaceMutedBundleIDwithHostID;
- (void)resetDefaultMusicApp;
- (void)resetWaitingToResume:(id)a3;
- (void)resumeInterruptedIndependentInputAudioResourceSessionsIfNeeded:(id)a3;
- (void)resumeNowPlayingAppForCarPlay;
- (void)ringerIsOnChanged:(BOOL)a3;
- (void)setAppAllowedToInitiateRecordingTemporarily:(id)a3;
- (void)setDevicesSampleRates:(id)a3;
- (void)setDuckScalarForVoiceOver:(float)a3;
- (void)setLongFormVideoApps:(id)a3;
- (void)setRecordingClientPIDs:(id)a3;
- (void)setSystemMirroringRoutingContextUUID:(id)a3;
- (void)setUpStringConversionDictionaries;
- (void)sleepForAsyncDucking:(BOOL)a3 duration:(float)a4;
- (void)synchronizeSessionVolumeWithMediaVolumeIfNeeded:(id)a3;
- (void)unduckSessionsForDucker:(id)a3;
- (void)unduckSessionsForDuckingSource:(id)a3;
- (void)unduckSessionsForVoiceOverDuckingSource;
- (void)unduckVolume:(id)a3 sessionCausingUnduck:(id)a4 duckingSource:(id)a5;
- (void)unmuteOutputForSession:(id)a3;
- (void)updateActiveSessionsOnDeviceRelinquished;
- (void)updateBadgeType:(id)a3 matchingPID:(int)a4;
- (void)updateBluetoothFrameworkToPlayMuteChime:(id)a3 playRejectTone:(BOOL)a4;
- (void)updateCachedContinuityScreenOutputPortID;
- (void)updateDuckVolume:(id)a3 duckerSession:(id)a4 duckVolume:(float)a5 duckFadeDuration:(float)a6;
- (void)updateDuckedSessionsForVoiceOver:(id)a3;
- (void)updateDuckedSessionsForVoiceOverIfNeededOnRouteChange;
- (void)updateDuckingSourceInfoForSession:(id)a3 duckerSession:(id)a4 duckVolume:(float)a5 duckFadeDuration:(float)a6;
- (void)updateExclaveSensorStatusIfNeeded;
- (void)updateForRecordingStateDidChange;
- (void)updateMutedBundleIDs:(id)a3 muteValue:(BOOL)a4;
- (void)updateNeroScreenState:(id)a3 suspendScreen:(BOOL)a4;
- (void)updateSilentModeTimer:(BOOL)a3 untilTime:(id)a4 clientType:(unsigned int)a5;
- (void)updateSomeAirPlayCapableVideoClientIsActive;
- (void)updateSupportedOutputChannelLayouts;
- (void)updateSupportedOutputChannelLayouts:(id)a3 matchingPID:(int)a4;
- (void)volumePreferenceDidChangeCallback:(id)a3;
@end

@implementation MXSessionManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[MXSessionManager sharedInstance];
  }

  return sharedInstance_sSharedInstance_4;
}

- (id)copyMXCoreSessionList
{
  v3 = objc_autoreleasePoolPush();
  [(NSLock *)[(MXSessionManager *)self mxCoreSessionListLock] lock];
  v4 = [(NSPointerArray *)[(MXSessionManager *)self mxCoreSessionList] allObjects];
  [(NSLock *)[(MXSessionManager *)self mxCoreSessionListLock] unlock];
  objc_autoreleasePoolPop(v3);
  return v4;
}

- (id)copyActiveCoreSessionControllingRouting
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(MXSessionManager *)self copyMXCoreSessionList];
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
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 isActive] && (objc_msgSend(v6, "currentlyControllingFlags") & 2) != 0)
        {
          v3 = v6;
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

- (unsigned)defaultVADID
{
  v2 = [(NSDictionary *)[(MXSessionManager *)self audioDeviceInfo] objectForKey:0x1F2893B50];

  return [v2 unsignedIntValue];
}

- (unsigned)systemSoundLocalVADID
{
  v2 = [(NSDictionary *)[(MXSessionManager *)self audioDeviceInfo] objectForKey:0x1F2893B70];

  return [v2 unsignedIntValue];
}

- (unsigned)decoupledInputVADID
{
  v2 = [(NSDictionary *)[(MXSessionManager *)self audioDeviceInfo] objectForKey:0x1F28978F0];

  return [v2 unsignedIntValue];
}

- (id)copySpeechDetectSession
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [(MXSessionManager *)self copyMXCoreSessionList];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 hasAudioCategory:@"SpeechDetect"])
        {
          v8 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)wombatEnabled
{
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];
  wombatEnabled = self->_wombatEnabled;
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] unlock];
  return wombatEnabled;
}

- (void)updateSupportedOutputChannelLayouts
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        if ([v7 isActive] && CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(v7))
        {
          cf = 0;
          FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(&cf);
          v8 = FigRoutingManagerContextUtilities_CopySupportedOutputChannelLayouts(cf);
          [v7 supportedOutputChannelLayouts];
          if (FigCFEqual())
          {
            if (dword_1EB75DE40)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }

          else
          {
            if (dword_1EB75DE40)
            {
              v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            [v7 setSupportedOutputChannelLayouts:{v8, v12, v13}];
            CMSMNotificationUtility_PostSupportedBufferedAudioCapabilitiesDidChange(v7);
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (v8)
          {
            CFRelease(v8);
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (unsigned)systemSoundRemoteVADID
{
  v2 = [(NSDictionary *)[(MXSessionManager *)self audioDeviceInfo] objectForKey:0x1F2893B90];

  return [v2 unsignedIntValue];
}

- (BOOL)areBothBudsInEarForA2DPPort
{
  CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
  v3 = CurrentOutputPortAtIndex;
  if (vaeGetPortTypeFromPortID(CurrentOutputPortAtIndex) != 1885892674)
  {
    goto LABEL_5;
  }

  DoesBTPortSupportInEarDetection = vaeDoesBTPortSupportInEarDetection(v3);
  if (DoesBTPortSupportInEarDetection)
  {
    if (vaeGetBTPortPrimaryBudInEarStatus(v3) == 1)
    {
      LOBYTE(DoesBTPortSupportInEarDetection) = vaeGetBTPortSecondaryBudInEarStatus(v3) == 1;
      return DoesBTPortSupportInEarDetection;
    }

LABEL_5:
    LOBYTE(DoesBTPortSupportInEarDetection) = 0;
  }

  return DoesBTPortSupportInEarDetection;
}

- (unsigned)siriOutputVADID
{
  v2 = [(NSDictionary *)[(MXSessionManager *)self audioDeviceInfo] objectForKey:0x1F2897930];

  return [v2 unsignedIntValue];
}

- (unsigned)musicVADID
{
  v2 = [(NSDictionary *)[(MXSessionManager *)self audioDeviceInfo] objectForKey:0x1F2897950];

  return [v2 unsignedIntValue];
}

- (unsigned)speechDetectionVADID
{
  v2 = [(NSDictionary *)[(MXSessionManager *)self audioDeviceInfo] objectForKey:0x1F28978D0];

  return [v2 unsignedIntValue];
}

- (NSDictionary)devicesSampleRates
{
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];
  v3 = self->_devicesSampleRates;
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] unlock];
  return v3;
}

- (id)copyActiveVoiceOverSession
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [(MXSessionManager *)self copyMXCoreSessionList];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 isActive] && objc_msgSend(v7, "hasAudioCategory:", @"VoiceOver"))
        {
          v8 = v7;
          goto LABEL_12;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_12:

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

- (float)duckScalarForVoiceOver
{
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];
  duckScalarForVoiceOver = self->_duckScalarForVoiceOver;
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] unlock];
  return duckScalarForVoiceOver;
}

- (void)endAsyncDuckingOperation
{
  v3 = [(MXSessionManager *)self mostRecentDuckOperation];
  [(MXSessionManager *)self mostRecentDuckFadeDuration];
  [(MXSessionManager *)self sleepForAsyncDucking:v3 duration:?];
  [(MXSessionManager *)self setMostRecentDuckFadeDuration:0.0];

  [(MXSessionManager *)self setMostRecentDuckOperation:0];
}

- (BOOL)isSmartRoutingEligibleSessionAvailable
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v11 + 1) + 8 * v6);
      if ([v7 isPlaying])
      {
        if (CMSUtility_GetIsEligibleForBTSmartRoutingConsideration(v7))
        {
          v8 = 1;
          if (CMSM_GetLocalSessionPriority(v7, 1) > 0x64)
          {
            break;
          }
        }
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (unsigned)perAppAirPlayVADID
{
  v2 = [(NSDictionary *)[(MXSessionManager *)self audioDeviceInfo] objectForKey:0x1F2897970];

  return [v2 unsignedIntValue];
}

- (unsigned)actuatorVADID
{
  v2 = [(NSDictionary *)[(MXSessionManager *)self audioDeviceInfo] objectForKey:0x1F2897910];

  return [v2 unsignedIntValue];
}

- (unsigned)speakerAlertVADID
{
  v2 = [(NSDictionary *)[(MXSessionManager *)self audioDeviceInfo] objectForKey:0x1F2893BB0];

  return [v2 unsignedIntValue];
}

- (unsigned)lowLatencyVADID
{
  v2 = [(NSDictionary *)[(MXSessionManager *)self audioDeviceInfo] objectForKey:0x1F2897990];

  return [v2 unsignedIntValue];
}

- (void)updateCachedContinuityScreenOutputPortID
{
  if (MX_FeatureFlags_IsOnenessEnabled())
  {
    CachedContinuityScreenOutputPortID = vaemGetCachedContinuityScreenOutputPortID();
    v4 = vaemContinuityScreenOutputIsConnected() ? vaemGetVADPortIDFromVADPortType(1885565807) : 0;
    if (CachedContinuityScreenOutputPortID != v4)
    {
      vaemSetCachedContinuityScreenOutputPortID(v4);

      [(MXSessionManager *)self processContinuityScreenOutputPortAvailableDidChange:v4 != 0];
    }
  }
}

- (id)copyVoiceOverSession
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [(MXSessionManager *)self copyMXCoreSessionList];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 hasAudioCategory:@"VoiceOver"])
        {
          v8 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

- (NSString)systemMirroringRoutingContextUUID
{
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];
  v3 = self->_systemMirroringRoutingContextUUID;
  v5 = v3;
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] unlock];
  if (!v3)
  {
    FigRoutingManagerContextUtilities_CopySystemMirroringContextUUID(&v5);
    [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];

    self->_systemMirroringRoutingContextUUID = v5;
    [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] unlock];
    v3 = v5;
  }

  return v3;
}

- (NSArray)recordingClientPIDs
{
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];
  if ([(NSArray *)self->_recordingClientPIDs count])
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_recordingClientPIDs copyItems:1];
  }

  else
  {
    v3 = 0;
  }

  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] unlock];
  return v3;
}

- (void)refreshDeviceSampleRateCache
{
  v36 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];
  if (dword_1EB75DE40)
  {
    v31 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  -[MXSessionManager setDevicesSampleRates:](self, "setDevicesSampleRates:", [MEMORY[0x1E695DF20] dictionary]);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [(MXSessionManager *)self audioDeviceInfo];
  v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v26 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v4);
        }

        -[MXSessionManager updateDeviceSampleRate:](self, "updateDeviceSampleRate:", [-[NSDictionary objectForKey:](-[MXSessionManager audioDeviceInfo](self "audioDeviceInfo")]);
      }

      v6 = [(NSDictionary *)v4 countByEnumeratingWithState:&v26 objects:v33 count:16];
    }

    while (v6);
  }

  if (CMSMVAUtility_IsAdditiveRoutingEnabled())
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager vadNameToID];
    v10 = [(NSDictionary *)v9 countByEnumeratingWithState:&v22 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          -[MXSessionManager updateDeviceSampleRate:](self, "updateDeviceSampleRate:", [-[NSDictionary objectForKey:](-[MXAdditiveRoutingManager vadNameToID](+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager "sharedInstance")]);
        }

        v11 = [(NSDictionary *)v9 countByEnumeratingWithState:&v22 objects:v32 count:16];
      }

      while (v11);
    }
  }

  if (dword_1EB75DE40)
  {
    v31 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v15 = v31;
    if (os_log_type_enabled(v14, type))
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 & 0xFFFFFFFE;
    }

    if (v16)
    {
      v34 = 136315138;
      v35 = "[MXSessionManager refreshDeviceSampleRateCache]";
      LODWORD(v21) = 12;
      v19 = &v34;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock:v19] unlock];
  v17 = *MEMORY[0x1E69E9840];
}

- (unsigned)getCurrentOutputPort
{
  v10 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  v2 = CMSMUtility_CopyCurrentOutputPorts();
  v3 = v2;
  if (v2 && CFArrayGetCount(v2))
  {
    ValueAtIndex = FigCFArrayGetValueAtIndex();
    CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
    if (!valuePtr && dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CFRelease(v3);
    result = valuePtr;
  }

  else
  {
    if (dword_1EB75DE40)
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v3)
    {
      CFRelease(v3);
    }

    result = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)updateDuckedSessionsForVoiceOverIfNeededOnRouteChange
{
  v7 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled())
  {
    if (CMSMDeviceState_IsVoiceOverOn())
    {
      [+[MXSessionManager sharedInstance](MXSessionManager duckScalarForVoiceOver];
      if (v2 < 1.0)
      {
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [+[MXSessionManager sharedInstance](MXSessionManager startAsyncDuckingOperation:v5];
        [+[MXSessionManager sharedInstance](MXSessionManager updateDuckedSessionsForVoiceOver:"updateDuckedSessionsForVoiceOver:", 0];
        [+[MXSessionManager sharedInstance](MXSessionManager endAsyncDuckingOperation];
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)updateExclaveSensorStatusIfNeeded
{
  v19 = *MEMORY[0x1E69E9840];
  if (CMSMDeviceState_DeviceHasExclaveCapability())
  {
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    obj = [(MXSessionManager *)self copyMXCoreSessionList];
    v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v15;
      v12 = *v15;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v15 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v14 + 1) + 8 * i);
          if ((([v7 isRecording] & 1) != 0 || objc_msgSend(v7, "isUsingBuiltInMicForRecording")) && -[MXExclaves updateSensorStatus:reason:](+[MXExclaves sharedInstance](MXExclaves, "sharedInstance"), "updateSensorStatus:reason:", v7, @"route has changed"))
          {
            if (dword_1EB75DE40)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v5 = v12;
            }

            CMSUtilityApplier_PostNotification_StopCommand(v7, 0);
          }
        }

        v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v4);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)doesActiveSessionHaveInput
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(MXSessionManager *)self copyMXCoreSessionList];
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
        if ([v6 isActive] && objc_msgSend(v6, "hasInput") && (objc_msgSend(v6, "currentlyControllingFlags") & 2) != 0)
        {
          LOBYTE(v3) = 1;
          goto LABEL_13;
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

LABEL_13:

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)updateForRecordingStateDidChange
{
  CMSMUtility_PostRecordingStateDidChangeNotificationIfNeeded();

  CMSMNotificationUtility_PostHighestArbitrationPriorityForTipiDidChangeIfNeeded();
}

- (int)getSessionPriority:(MXSessionPlayingInfo *)a3 forTipi:(BOOL)a4
{
  v4 = a4;
  v35 = *MEMORY[0x1E69E9840];
  if (mxsmInteruptionActionMapper_setUpInterruptionPriorityDictionaries_onceToken != -1)
  {
    [MXSessionManager(InterruptionActionMapper) getSessionPriority:forTipi:];
  }

  if (!a3->var8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v31 = 100;
    goto LABEL_48;
  }

  if (v4)
  {
    v6 = [sCategoryToCategoryMapForTipi objectForKey:?];
    if (v6)
    {
      v7 = v6;
      v8 = &sCategoryToPriorityMapForTipi;
      goto LABEL_10;
    }

LABEL_30:
    v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_31;
  }

  v10 = [sCategoryToCategoryMapForTriangle objectForKey:?];
  if (!v10)
  {
    goto LABEL_30;
  }

  v7 = v10;
  v8 = &sCategoryToPriorityMapForTriangle;
LABEL_10:
  v11 = [*v8 objectForKey:v7];
  if (!v11)
  {
    goto LABEL_30;
  }

  v12 = v11;
  v13 = [v11 count];
  if (v13 < 1)
  {
LABEL_31:
    v31 = 100;
    goto LABEL_32;
  }

  v14 = v13;
  v15 = 0;
  while (1)
  {
    v16 = [v12 objectAtIndex:v15];
    v17 = [v16 objectForKey:@"AudioMode"];
    v18 = [v16 objectForKey:@"Priority"];
    v19 = [v16 objectForKey:@"InterruptionStyle"];
    if (v19)
    {
      v20 = v19;
      var2 = a3->var2;
      if ([v19 isEqualToString:@"NonMixable"])
      {
        v22 = 15;
      }

      else if ([v20 isEqualToString:@"Mixable"])
      {
        v22 = 48;
      }

      else
      {
        v22 = 0;
      }

      v23 = (v22 & var2) == 0;
      if (!v17)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v23 = 0;
      if (!v17)
      {
        goto LABEL_27;
      }
    }

    var9 = a3->var9;
    v25 = [v17 count];
    if (v25 >= 1)
    {
      v26 = v25;
      v27 = 0;
      while (![objc_msgSend(v17 objectAtIndex:{v27), "isEqualToString:", var9}])
      {
        if (v26 == ++v27)
        {
          goto LABEL_28;
        }
      }
    }

LABEL_27:
    if (!v23)
    {
      break;
    }

LABEL_28:
    if (++v15 == v14)
    {
      goto LABEL_31;
    }
  }

  v32 = [v18 unsignedIntValue];
  v31 = v32;
  if (a3->var3 == 10 && v32 != 100 && ([a3->var8 isEqualToString:@"Ringtone"] & 1) == 0)
  {
    if (dword_1EB75DE40)
    {
LABEL_36:
      v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_47:
    v31 = 501;
    goto LABEL_48;
  }

LABEL_32:
  if (a3->var6 && a3->var5 && a3->var4)
  {
    if (dword_1EB75DE40)
    {
      goto LABEL_36;
    }

    goto LABEL_47;
  }

  if (a3->var7 && v31 <= 0xC7)
  {
    if (dword_1EB75DE40)
    {
      v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v31 = 200;
  }

LABEL_48:
  v33 = *MEMORY[0x1E69E9840];
  return v31;
}

uint64_t __34__MXSessionManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(MXSessionManager);
  sharedInstance_sSharedInstance_4 = v0;

  return [(MXSessionManager *)v0 setUpStringConversionDictionaries];
}

+ (id)copyDefaultMusicAppFromPlist
{
  CelestialGetModelSpecificName();
  v2 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
  if (v2)
  {
    v3 = v2;
    Value = CFDictionaryGetValue(v2, @"DefaultMusicApp");
    if (Value)
    {
      v5 = Value;
    }

    else
    {
      v5 = @"com.apple.Music";
    }

    v6 = v5;
    CFRelease(v3);
  }

  else
  {
    v5 = @"com.apple.Music";
    v7 = @"com.apple.Music";
  }

  return v5;
}

+ (BOOL)getSilentModeStateFromDisk
{
  v2 = CFPreferencesCopyValue(@"silentModeEnabled", @"com.apple.mediaexperience", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v3 = [v2 BOOLValue];

  return v3;
}

- (MXSessionManager)init
{
  v16 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = MXSessionManager;
  v2 = [(MXSessionManager *)&v15 init];
  if (v2)
  {
    v2->_audioCategoriesWithInput = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"Multi", @"Record", 0x1F2891810, @"PlayAndRecord", 0x1F2891830, 0x1F2891850, 0x1F2891870, @"VoiceCommand", @"VoiceCommand_WithBluetooth", @"VoiceCommandThatMixes", @"VoiceCommandThatMixes_WithBluetooth", @"PhoneCall", @"TTYCall", 0}];
    v2->_audioModesWithShortVoicePromptStyle = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"SpeechRecognition", @"VoiceMessages", 0}];
    v2->_currentAllowedPortTypes = 0;
    v2->_currentAudioCategory = 0;
    v2->_currentAudioMode = 0;
    v2->_defaultMusicApp = +[MXSessionManager copyDefaultMusicAppFromPlist];
    v2->_devicesSampleRates = objc_alloc_init(MEMORY[0x1E695DF20]);
    [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    if (v3 <= 45.0)
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      MXCFPreferencesSetAndSynchronizeUserPreference(@"mutedSessionBundleIDs", 0);
    }

    v5 = MXCFPreferencesCopyPreference(@"mutedSessionBundleIDs");
    v2->_mutedSessionBundleIDs = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v5];

    v2->_propertiesLock = objc_alloc_init(MEMORY[0x1E696AE68]);
    v2->_mxCoreSessionList = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
    v2->_mxCoreSessionListLock = objc_alloc_init(MEMORY[0x1E696AD10]);
    v2->_sessionsThatWantToSuspendNeroScreenMirroring = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
    v2->_pickableRoutesDescriptions = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled())
    {
      v6 = MXCFPreferencesCopyPreference(@"quiesceableWiredPortsAutoRouteOnConnectPreference");
      v2->_quiesceableWiredPortsAutoRouteOnConnectPreference = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v6];
    }

    else
    {
      v2->_quiesceableWiredPortsAutoRouteOnConnectPreference = 0;
    }

    v2->_silentModeEnabled = [MXSessionManager getSilentModeStateFromDisk:v13];
    v2->_silentModeEnabledUntilTime = +[MXSessionManager copySilentModeUntilTimeFromDisk];
    v7 = MXCFPreferencesCopyPreference(@"silentModeClientType");
    v2->_silentModeClient = [v7 unsignedIntValue];
    v2->_silentModeReason = MXCFPreferencesCopyPreference(@"silentModeReason");

    if (MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled())
    {
      v8 = MXCFPreferencesCopyPreference(@"duckScalarForVoiceOver");
      v9 = v8;
      if (v8)
      {
        [v8 floatValue];
      }

      else
      {
        v10 = 1.0;
      }

      v2->_duckScalarForVoiceOver = v10;
    }

    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    dword_1EB75E0E4 = 0;
    v2->_isVoiceAssistantPlayingToPersonalAudioDeviceOverMedia = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)dealloc
{
  self->_audioCategoriesWithInput = 0;

  self->_audioDeviceInfo = 0;
  self->_audioModesWithShortVoicePromptStyle = 0;

  self->_appAllowedToFadeInTemporarily = 0;
  self->_appAllowedToInitiatePlaybackTemporarily = 0;

  self->_appAllowedToInitiateRecordingTemporarily = 0;
  self->_appAllowedToInitiateRecordingTemporarilyTimestamp = 0;

  self->_applyUplinkMuteToPhoneCallBehaviorSession = 0;
  self->_currentAllowedPortTypes = 0;

  self->_currentAudioCategory = 0;
  self->_currentAudioMode = 0;

  self->_defaultMusicApp = 0;
  self->_devicesSampleRates = 0;

  self->_propertiesLock = 0;
  self->_longFormVideoApps = 0;

  self->_mxCoreSessionList = 0;
  self->_mxCoreSessionListLock = 0;

  self->_pickableRoutesDescriptions = 0;
  self->_recordingClientPIDs = 0;

  self->_quiesceableWiredPortsAutoRouteOnConnectPreference = 0;
  self->_mutedSessionBundleIDs = 0;

  self->_silentModeEnabledUntilTime = 0;
  self->_silentModeReason = 0;

  self->_systemMirroringRoutingContextUUID = 0;
  self->_figUncustomizedCategory_Dict = 0;

  self->_figCustomizedCategoryWithBluetooth_Dict = 0;
  self->_figCustomizedCategoryWithoutBluetooth_Dict = 0;

  self->_figCustomizedCategoryWithDefaultBuiltIn_Speaker_Dict = 0;
  self->_figCustomizedCategoryWithDefaultBuiltIn_Receiver_Dict = 0;

  self->_figCustomizedCategoryWithDefaultBuiltIn_Default_Dict = 0;
  self->_figCategoryToMuteabilityDict = 0;

  self->_figCategoryToOutputOverridabilityDict = 0;
  self->_figCategoryToVADCategoryDict = 0;

  self->_figRouteToVADOutputPortTypeDict = 0;
  self->_figRouteToVADInputPortTypeDict = 0;

  self->_vadOutputPortTypeToFigOutputDeviceNameDict = 0;
  self->_vadOutputPortTypeToMuteabilityDict = 0;

  self->_vadInputPortTypeToFigInputDeviceNameDict = 0;
  self->_figModeTypeToVADModeType = 0;

  self->_uplinkMutedBundleID = 0;
  self->_sessionsThatWantToSuspendNeroScreenMirroring = 0;
  v3.receiver = self;
  v3.super_class = MXSessionManager;
  [(MXSessionManager *)&v3 dealloc];
}

- (NSArray)longFormVideoApps
{
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];
  if ([+[MXNowPlayingAppManager nowPlayingAppDisplayID] sharedInstance]
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_longFormVideoApps copyItems:1];
  }

  else
  {
    v3 = 0;
  }

  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] unlock];
  return v3;
}

- (void)setLongFormVideoApps:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock:v7] lock];

  self->_longFormVideoApps = a3;
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] unlock];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setRecordingClientPIDs:(id)a3
{
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];

  self->_recordingClientPIDs = a3;
  v5 = [(MXSessionManager *)self propertiesLock];

  [(NSRecursiveLock *)v5 unlock];
}

- (void)setSystemMirroringRoutingContextUUID:(id)a3
{
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];

  self->_systemMirroringRoutingContextUUID = a3;
  v5 = [(MXSessionManager *)self propertiesLock];

  [(NSRecursiveLock *)v5 unlock];
}

- (void)setDuckScalarForVoiceOver:(float)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled())
  {
    v5 = fminf(a3, 1.0);
    if (v5 >= 0.0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0.0;
    }

    [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];
    duckScalarForVoiceOver = self->_duckScalarForVoiceOver;
    self->_duckScalarForVoiceOver = v6;
    [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] unlock];
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (vabds_f32(duckScalarForVoiceOver, v6) > 0.01)
    {
      if (CMSMDeviceState_IsVoiceOverOn())
      {
        [+[MXSessionManager sharedInstance](MXSessionManager startAsyncDuckingOperation];
        [+[MXSessionManager sharedInstance](MXSessionManager updateDuckedSessionsForVoiceOver:"updateDuckedSessionsForVoiceOver:", 0];
        [+[MXSessionManager sharedInstance](MXSessionManager endAsyncDuckingOperation];
      }

      v10 = objc_alloc(MEMORY[0x1E696AD98]);
      *&v11 = v6;
      v12 = [v10 initWithFloat:v11];
      MXCFPreferencesSetAndSynchronizeUserPreference(@"duckScalarForVoiceOver", v12);
    }
  }

  else if (dword_1EB75DE40)
  {
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (NSString)appAllowedToInitiateRecordingTemporarily
{
  v11 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];
  if (!self->_appAllowedToInitiateRecordingTemporarilyTimestamp)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_9;
  }

  [objc_msgSend(MEMORY[0x1E695DF00] "date")];
  if (v3 > 5.0)
  {

    self->_appAllowedToInitiateRecordingTemporarily = 0;
    self->_appAllowedToInitiateRecordingTemporarilyTimestamp = 0;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_7;
  }

  if (dword_1EB75DE40)
  {
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = self->_appAllowedToInitiateRecordingTemporarily;
LABEL_9:
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock:v9] unlock];
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)setAppAllowedToInitiateRecordingTemporarily:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];

  self->_appAllowedToInitiateRecordingTemporarily = 0;
  self->_appAllowedToInitiateRecordingTemporarilyTimestamp = 0;
  if ([a3 length])
  {
    self->_appAllowedToInitiateRecordingTemporarily = a3;
    self->_appAllowedToInitiateRecordingTemporarilyTimestamp = objc_alloc_init(MEMORY[0x1E695DF00]);
    if (dword_1EB75DE40)
    {
      goto LABEL_5;
    }
  }

  else if (dword_1EB75DE40)
  {
LABEL_5:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock:v7] unlock];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)appToInterruptCurrentNowPlayingSession:(id)a3
{
  v3 = a3 == 0;
  if (a3)
  {
    v6 = CMSMUtility_CopyActiveMXCoreSessionEligibleForNowPlayingAppConsideration(a3);
  }

  else
  {
    v6 = 0;
  }

  v4 = CMSMNP_CopyNowPlayingAppSession();
  v5 = v4;
  if (v4)
  {
    if ([v4 audioSessionID])
    {
      CMSMUtility_PostStopCommandToShadowingSessionsForSession(v5, v3);
    }

    CMSMNotificationUtility_PostStopCommandToActiveClientWithDisplayID([v5 displayID], 0);
  }

  if (v6)
  {
    CMSUtility_UpdateRoutingContextForSession(v6);
    -[MXNowPlayingAppManager updateNowPlayingApp:session:reasonForUpdate:](+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager, "sharedInstance"), "updateNowPlayingApp:session:reasonForUpdate:", [objc_msgSend(v6 "clientPID")], 0, 4);
  }
}

- (void)interruptActiveSessionsNotOptedIntoWombat
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(MXSessionManager *)self copyMXCoreSessionList];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        if ([v7 isActive] && (objc_msgSend(v7, "prefersToPlayDuringWombat") & 1) == 0)
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          CMSUtilityApplier_PostNotification_StopCommand(v7, 0);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)isLongFormVideoApp:(id)a3
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"DisableLongFormVideoApp", @"com.apple.coremedia", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v6 = AppBooleanValue == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  if (!CMSMDeviceState_ItsAHomePod())
  {
    FigMobileAsset_UpdateCatalogIfTimeIntervalElapsed();
  }

  if (a3)
  {
    if (![a3 length])
    {
LABEL_12:
      LOBYTE(a3) = 0;
      return a3;
    }

    [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];
    longFormVideoApps = self->_longFormVideoApps;
    if (longFormVideoApps)
    {
      LOBYTE(a3) = [(NSArray *)longFormVideoApps containsObject:a3];
    }

    else
    {
      LOBYTE(a3) = 0;
    }

    [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] unlock];
  }

  return a3;
}

- (void)makeStarkPortRoutableForPhoneCall:(BOOL)a3
{
  v3 = a3;
  v4 = CMSMUtility_CopyCurrentRouteTypes();
  if (!v3 || FigCFArrayContainsValue())
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_4;
  }

  v5 = CMSMUtility_CopyMostImportantPlayingSession();
  v6 = v5;
  if (v5 && (([(__CFArray *)v5 hasPhoneCallBehavior]& 1) != 0 || CMSUtility_IsAudioCategoryRingtone(v6)))
  {
    PortOfTypeInConnectedPortsList = CMSMVAUtility_GetPortOfTypeInConnectedPortsList(1886614639);
    if (cmsmRequestCarMainAudioForSession(v6))
    {
      if (PortOfTypeInConnectedPortsList)
      {
        CMSMVAUtility_MakeConnectedPortRoutable(PortOfTypeInConnectedPortsList, 1);
      }
    }
  }

  if (v4)
  {
LABEL_4:

    CFRelease(v4);
  }
}

- (void)makeStarkPortRoutableForPlayingSession:(BOOL)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    PortOfTypeInConnectedPortsList = CMSMVAUtility_GetPortOfTypeInConnectedPortsList(1886614639);
    v4 = CMSMUtility_CopyMostImportantPlayingSession();
    v5 = cmsmRequestCarMainAudioForSession(v4);

    if (v5 && PortOfTypeInConnectedPortsList)
    {
      CMSMVAUtility_MakeConnectedPortRoutable(PortOfTypeInConnectedPortsList, 1);
    }

    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (unint64_t)mxCoreSessionListAddSession:(id)a3
{
  objc_initWeak(&location, a3);
  [(NSLock *)[(MXSessionManager *)self mxCoreSessionListLock] lock];
  [(NSPointerArray *)[(MXSessionManager *)self mxCoreSessionList] addPointer:objc_loadWeak(&location)];
  [(NSPointerArray *)[(MXSessionManager *)self mxCoreSessionList] compact];
  v4 = [(NSPointerArray *)[(MXSessionManager *)self mxCoreSessionList] count];
  [(NSLock *)[(MXSessionManager *)self mxCoreSessionListLock] unlock];
  objc_destroyWeak(&location);
  return v4;
}

- (unint64_t)mxCoreSessionListRemoveSession:(id)a3
{
  objc_initWeak(&location, a3);
  [(NSLock *)[(MXSessionManager *)self mxCoreSessionListLock] lock];
  for (i = 0; i < [(NSPointerArray *)[(MXSessionManager *)self mxCoreSessionList] count]; ++i)
  {
    if ([-[NSPointerArray pointerAtIndex:](-[MXSessionManager mxCoreSessionList](self "mxCoreSessionList")])
    {
      [(NSPointerArray *)[(MXSessionManager *)self mxCoreSessionList] removePointerAtIndex:i];
      [(NSPointerArray *)[(MXSessionManager *)self mxCoreSessionList] compact];
      break;
    }
  }

  v5 = [(NSPointerArray *)[(MXSessionManager *)self mxCoreSessionList] count];
  [(NSLock *)[(MXSessionManager *)self mxCoreSessionListLock] unlock];
  objc_destroyWeak(&location);
  return v5;
}

- (unint64_t)addSessionThatWantsToSuspendNeroScreenMirroring:(id)a3
{
  objc_initWeak(&location, a3);
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];
  [(NSPointerArray *)[(MXSessionManager *)self sessionsThatWantToSuspendNeroScreenMirroring] addPointer:objc_loadWeak(&location)];
  [(NSPointerArray *)[(MXSessionManager *)self sessionsThatWantToSuspendNeroScreenMirroring] compact];
  v4 = objc_autoreleasePoolPush();
  v5 = [(NSArray *)[(NSPointerArray *)[(MXSessionManager *)self sessionsThatWantToSuspendNeroScreenMirroring] allObjects] count];
  objc_autoreleasePoolPop(v4);
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] unlock];
  objc_destroyWeak(&location);
  return v5;
}

- (unint64_t)removeSessionThatWantsToSuspendNeroScreenMirroring:(id)a3
{
  objc_initWeak(&location, a3);
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];
  for (i = 0; i < [(NSPointerArray *)[(MXSessionManager *)self sessionsThatWantToSuspendNeroScreenMirroring] count]; ++i)
  {
    if ([-[NSPointerArray pointerAtIndex:](-[MXSessionManager sessionsThatWantToSuspendNeroScreenMirroring](self "sessionsThatWantToSuspendNeroScreenMirroring")])
    {
      [(NSPointerArray *)[(MXSessionManager *)self sessionsThatWantToSuspendNeroScreenMirroring] removePointerAtIndex:i];
      [(NSPointerArray *)[(MXSessionManager *)self sessionsThatWantToSuspendNeroScreenMirroring] compact];
      break;
    }
  }

  v5 = objc_autoreleasePoolPush();
  v6 = [(NSArray *)[(NSPointerArray *)[(MXSessionManager *)self sessionsThatWantToSuspendNeroScreenMirroring] allObjects] count];
  objc_autoreleasePoolPop(v5);
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] unlock];
  objc_destroyWeak(&location);
  return v6;
}

- (void)updateNeroScreenState:(id)a3 suspendScreen:(BOOL)a4
{
  v4 = a4;
  v6 = +[MXSessionManager sharedInstance];
  if (v4)
  {
    v7 = [(MXSessionManager *)v6 addSessionThatWantsToSuspendNeroScreenMirroring:a3];
  }

  else
  {
    v7 = [(MXSessionManager *)v6 removeSessionThatWantsToSuspendNeroScreenMirroring:a3];
  }

  v8 = v7;
  if (v7)
  {
    v9 = updateNeroScreenState_suspendScreen__sCurrentCount == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    FigRoutingManagerSuspendCurrentEndpointScreen([+[MXSessionManager systemMirroringRoutingContextUUID] sharedInstance];
  }

  else
  {
    if (v7)
    {
      v10 = 1;
    }

    else
    {
      v10 = updateNeroScreenState_suspendScreen__sCurrentCount == 0;
    }

    if (!v10)
    {
      FigRoutingManagerResumeCurrentEndpointScreen([+[MXSessionManager systemMirroringRoutingContextUUID] sharedInstance];
    }
  }

  updateNeroScreenState_suspendScreen__sCurrentCount = v8;
}

- (void)resumeNowPlayingAppForCarPlay
{
  v7 = *MEMORY[0x1E69E9840];
  if ([+[MXNowPlayingAppManager nowPlayingAppStopTime] sharedInstance]
  {
    [objc_msgSend(MEMORY[0x1E695DF00] "now")];
    if (v2 >= 480.0)
    {
      v3 = CMSMNP_CopyNowPlayingAppDisplayIDUponCarPlayDisconnectFromDisk();
      if (!dword_1EB75DE40)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v3 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppDisplayID];
      if (!dword_1EB75DE40)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v3 = CMSMNP_CopyNowPlayingAppDisplayIDUponCarPlayDisconnectFromDisk();
    if (!dword_1EB75DE40)
    {
      goto LABEL_10;
    }
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (dword_1EB75DE40)
  {
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_10:
  CMSMNP_ResumeNowPlayingAppOverCarPlay(v3);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)resetDefaultMusicApp
{
  v3 = +[MXSessionManager copyDefaultMusicAppFromPlist];
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];

  self->_defaultMusicApp = v3;
  v4 = [(MXSessionManager *)self propertiesLock];

  [(NSRecursiveLock *)v4 unlock];
}

- (void)handleSilentModeTimerDidFire
{
  v3 = MXGetSerialQueue();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__MXSessionManager_handleSilentModeTimerDidFire__block_invoke;
  v4[3] = &unk_1E7AE7CE0;
  v4[4] = self;
  MXDispatchAsync("[MXSessionManager handleSilentModeTimerDidFire]", "MXSessionManager.m", 1239, 0, 0, v3, v4);
}

uint64_t __48__MXSessionManager_handleSilentModeTimerDidFire__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [*(a1 + 32) setSilentModeEnabled:{objc_msgSend(*(a1 + 32), "silentModeEnabled", v5, v6) ^ 1}];
  [*(a1 + 32) setSilentModeEnabledUntilTime:0];
  [+[MXAlarmEvents sharedInstance](MXAlarmEvents resetAlarmEvent:"resetAlarmEvent:", @"com.apple.mediaexperience.silentmode.timer"];
  MXCFPreferencesSetAndSynchronizeUserPreference(@"silentModeEnabled", [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "silentModeEnabled")}]);
  MXCFPreferencesSetAndSynchronizeUserPreference(@"silentModeEnabledUntilTime", 0);
  CMSMDeviceState_UpdateRingerStateForSilentMode([*(a1 + 32) silentModeEnabled]);
  CMSMNotificationUtility_PostSilentModeEnabledDidChange([*(a1 + 32) silentModeEnabled]);
  result = -[MXBiomeStreams updateBiomeSilentMode:clientType:untilTime:reason:](+[MXBiomeStreams sharedInstance](MXBiomeStreams, "sharedInstance"), "updateBiomeSilentMode:clientType:untilTime:reason:", [*(a1 + 32) silentModeEnabled], objc_msgSend(*(a1 + 32), "silentModeClient"), 0, objc_msgSend(*(a1 + 32), "silentModeReason"));
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)updateSilentModeTimer:(BOOL)a3 untilTime:(id)a4 clientType:(unsigned int)a5
{
  v7 = a3;
  v17 = *MEMORY[0x1E69E9840];
  [a4 timeIntervalSinceNow];
  if (v9 <= 0.0)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(MXSessionManager *)self removeSilentModeTimer:v15];
    goto LABEL_11;
  }

  v10 = v9;
  if (a5 == 5 && [(MXSessionManager *)self silentModeEnabled]== v7 && ![(MXSessionManager *)self silentModeEnabledUntilTime])
  {
    if (dword_1EB75DE40)
    {
      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_11:
    v13 = *MEMORY[0x1E69E9840];
    return;
  }

  [+[MXAlarmEvents sharedInstance](MXAlarmEvents setAlarmEvent:"setAlarmEvent:eventName:" eventName:@"com.apple.mediaexperience.silentmode.timer", v10];
  [(MXSessionManager *)self setSilentModeEnabledUntilTime:a4];
  v11 = *MEMORY[0x1E69E9840];

  MXCFPreferencesSetAndSynchronizeUserPreference(@"silentModeEnabledUntilTime", a4);
}

- (void)removeSilentModeTimer
{
  [+[MXAlarmEvents sharedInstance](MXAlarmEvents resetAlarmEvent:"resetAlarmEvent:", @"com.apple.mediaexperience.silentmode.timer"];
  [(MXSessionManager *)self setSilentModeEnabledUntilTime:0];

  MXCFPreferencesSetAndSynchronizeUserPreference(@"silentModeEnabledUntilTime", 0);
}

- (void)ringerIsOnChanged:(BOOL)a3
{
  v3 = a3;
  cmsmUpdateEnableSharedAudioRouteSyntheticMute(1, 0, 0, 0, 0, 0);
  cmsUpdateMuteStatus(0);
  if (v3)
  {

    vaemUnmuteFullMuteIfMuted();
  }
}

- (void)setDevicesSampleRates:(id)a3
{
  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock] lock];

  self->_devicesSampleRates = a3;
  v5 = [(MXSessionManager *)self propertiesLock];

  [(NSRecursiveLock *)v5 unlock];
}

- (void)volumePreferenceDidChangeCallback:(id)a3
{
  v72 = *MEMORY[0x1E69E9840];
  v4 = [a3 userInfo];
  v54 = [v4 objectForKey:0x1F2891210];
  v52 = [v4 objectForKey:0x1F2891270];
  v5 = [v4 objectForKey:0x1F28939B0];
  [v4 objectForKey:0x1F2892D30];
  v6 = [v4 objectForKey:0x1F2899190];
  v7 = [v4 objectForKey:0x1F288EC70];
  v55 = [v4 objectForKey:0x1F289F730];
  [objc_msgSend(v4 objectForKey:{0x1F28A37B0), "floatValue"}];
  v9 = v8;
  [objc_msgSend(v4 objectForKey:{0x1F28A37D0), "floatValue"}];
  v11 = v10;
  v56 = [v5 isEqualToString:@"ImplicitVolumeChange"];
  if (v6)
  {
    [v6 floatValue];
    v13 = v12;
  }

  else
  {
    v13 = PVMGetCurrentPreferredVolume();
    [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:"), @"Volume"}];
  }

  [v4 removeObjectForKey:0x1F28A37B0];
  [v4 removeObjectForKey:0x1F28A37D0];
  FigSimpleMutexLock();
  v57 = v4;
  if (CMSMVAUtility_IsAdditiveRoutingEnabled() && [(MXSessionManager *)self voiceOverVADVolumeNeedsUpdate])
  {
    v14 = [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager copyActiveVoiceOverSessionPlayingToOnDemandVAD];
    v53 = v14 == 0;
    if (v14)
    {
      if (dword_1EB75DE40)
      {
        v64 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMSUtility_UpdatePlaybackVolume(v14, 0.0, 0.0);
    }

    [(MXSessionManager *)self setVoiceOverVADVolumeNeedsUpdate:0];
  }

  else
  {
    v14 = 0;
    v53 = 1;
  }

  v16 = [(MXSessionManager *)self copyMXCoreSessionList:v47];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v59 objects:v71 count:16];
  if (!v17)
  {

    v18 = 0;
    v26 = v4;
LABEL_34:
    if (vaemSystemSoundLocalVADExists())
    {
      if ([v18 isActive] && (CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(v18), CurrentOutputVADID == -[MXSessionManager systemSoundLocalVADID](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "systemSoundLocalVADID")))
      {
        CMSUtility_UpdatePlaybackVolume(v18, 0.0, 0.0);
      }

      else
      {
        CurrentRouteTypeForSystemSoundAtIndex = CMSMUtility_GetCurrentRouteTypeForSystemSoundAtIndex(0);
        if (dword_1EB75DE40)
        {
          v64 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v30 = v64;
          if (os_log_type_enabled(v29, type))
          {
            v31 = v30;
          }

          else
          {
            v31 = v30 & 0xFFFFFFFE;
          }

          if (v31)
          {
            VADNameForVADID = CMSMUtility_GetVADNameForVADID([+[MXSessionManager systemSoundLocalVADID] sharedInstance];
            v65 = 136315650;
            v66 = "[MXSessionManager volumePreferenceDidChangeCallback:]";
            v67 = 2114;
            v68 = VADNameForVADID;
            v69 = 2114;
            v70 = CurrentRouteTypeForSystemSoundAtIndex;
            LODWORD(v50) = 32;
            v48 = &v65;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        vaemSetDeviceVolumeIfNotSet([[MXSessionManager systemSoundLocalVADID:v48] sharedInstance:CurrentRouteTypeForSystemSoundAtIndex];
      }
    }

    goto LABEL_46;
  }

  v51 = v7;
  v58 = 0;
  v18 = 0;
  v19 = *v60;
  do
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v60 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v59 + 1) + 8 * i);
      if ([v21 isActive])
      {
        if ([v21 hasAudioCategory:@"VoiceOver"])
        {
          v18 = v21;
        }

        if ((!CMSMVAUtility_IsAdditiveRoutingEnabled() || ([v21 isEqual:v14] & 1) == 0) && (objc_msgSend(v21, "currentlyControllingFlags") & 0x10) != 0)
        {
          CurrentAudioDestination = CMSUtility_GetCurrentAudioDestination(v21);
          if ([CurrentAudioDestination isEqualToString:0x1F2893B50])
          {
            if ([objc_msgSend(v21 "audioCategory")])
            {
              v23 = 0.0;
              v24 = 0.0;
              v25 = v21;
            }

            else
            {
              v25 = v21;
              v23 = v9;
              v24 = v11;
            }

            CMSUtility_UpdatePlaybackVolume(v25, v23, v24);
            LOBYTE(v58) = 1;
          }

          else
          {
            CMSUtility_UpdatePlaybackVolume(v21, v9, v11);
            HIDWORD(v58) |= [CurrentAudioDestination isEqualToString:0x1F2893B70];
          }
        }
      }
    }

    v17 = [v16 countByEnumeratingWithState:&v59 objects:v71 count:16];
  }

  while (v17);

  v26 = v57;
  v7 = v51;
  LOBYTE(v17) = v58;
  if ((v58 & 0x100000000) == 0)
  {
    goto LABEL_34;
  }

LABEL_46:
  v33 = [v7 isEqualToString:@"AirTunes"];
  v34 = [v55 isEqualToString:@"Audio/Video"];
  if ((v17 & 1) == 0 && v33 && v34)
  {
    CurrentRouteTypeAtIndex = CMSMUtility_GetCurrentRouteTypeAtIndex(0);
    if (dword_1EB75DE40)
    {
      v64 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v37 = v64;
      if (os_log_type_enabled(v36, type))
      {
        v38 = v37;
      }

      else
      {
        v38 = v37 & 0xFFFFFFFE;
      }

      if (v38)
      {
        v39 = CMSMUtility_GetVADNameForVADID([+[MXSessionManager defaultVADID] sharedInstance];
        v65 = 136315650;
        v66 = "[MXSessionManager volumePreferenceDidChangeCallback:]";
        v67 = 2114;
        v68 = v39;
        v69 = 2114;
        v70 = CurrentRouteTypeAtIndex;
        LODWORD(v50) = 32;
        v48 = &v65;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    vaemSetDeviceVolumeIfNotSet([[MXSessionManager defaultVADID:v48] sharedInstance:CurrentRouteTypeAtIndex];
  }

  if ((v17 & 1) == 0 && CMSMDeviceState_IsVoiceOverOn() && (CMSMVAUtility_IsAdditiveRoutingEnabled() & ~v53) == 0)
  {
    v40 = CMSMUtility_GetCurrentRouteTypeAtIndex(0);
    if (dword_1EB75DE40)
    {
      v64 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v42 = v64;
      if (os_log_type_enabled(v41, type))
      {
        v43 = v42;
      }

      else
      {
        v43 = v42 & 0xFFFFFFFE;
      }

      if (v43)
      {
        v44 = CMSMUtility_GetVADNameForVADID([+[MXSessionManager defaultVADID] sharedInstance];
        v65 = 136315650;
        v66 = "[MXSessionManager volumePreferenceDidChangeCallback:]";
        v67 = 2114;
        v68 = v44;
        v69 = 2114;
        v70 = v40;
        LODWORD(v50) = 32;
        v48 = &v65;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    vaemSetDeviceVolumeIfNotSet([[MXSessionManager defaultVADID:v48] sharedInstance:v40];
  }

  FigSimpleMutexUnlock();
  if ((v56 & 1) == 0 && (![v54 isEqualToString:@"EmergencyAlert"] || (objc_msgSend(v52, "isEqualToString:", @"CustomVolume") & 1) == 0))
  {
    FigSimpleMutexLock();
    v45 = *&dword_1EB75E0E4;
    FigSimpleMutexUnlock();
    if (v45 != v13)
    {
      FigSimpleMutexLock();
      dword_1EB75E0E4 = LODWORD(v13);
      FigSimpleMutexUnlock();
      CMSMNotificationUtility_PostVolumeDidChangeToVolumeButtonClientsWithPayload(v26);
    }

    CMSMNotificationUtility_PostVolumeDidChangeToAVSystemControllersWithPayload(v26);
  }

  v46 = *MEMORY[0x1E69E9840];
}

- (void)pvmStateDidChangeCallback:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = [(MXSessionManager *)self copyMXCoreSessionList];
  [+[MXSessionManager sharedInstance](MXSessionManager duckVolumeForSpeakerVolumeLimit];
  v6 = v5;
  v7 = [MXDuckingSource alloc];
  LODWORD(v8) = 0.5;
  LODWORD(v9) = v6;
  v10 = [(MXDuckingSource *)v7 initWithType:7 ID:0 duckVolume:v9 duckFadeDuration:v8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v4;
  v11 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      v14 = 0;
      do
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v23 + 1) + 8 * v14);
        if ([(MXSessionManager *)self isSessionDucked:v15 duckingSource:v10])
        {
          [(MXSessionManager *)self startAsyncDuckingOperation];
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          [(MXSessionManager *)self unduckVolume:v15 sessionCausingUnduck:0 duckingSource:v10, v20, v21];
LABEL_14:
          [(MXSessionManager *)self endAsyncDuckingOperationForSession:v15];
          goto LABEL_15;
        }

        if ([v15 isActive] && -[MXSessionManager shouldDuckSessionForSpeakerVolumeLimit:](self, "shouldDuckSessionForSpeakerVolumeLimit:", v15))
        {
          [(MXSessionManager *)self startAsyncDuckingOperation];
          if (dword_1EB75DE40)
          {
            v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          [(MXSessionManager *)self duckVolume:v15 duckerSession:0 duckingSource:v10, v20, v21];
          goto LABEL_14;
        }

LABEL_15:
        ++v14;
      }

      while (v12 != v14);
      v18 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      v12 = v18;
    }

    while (v18);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)copySessionWithAudioSessionID:(unsigned int)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [(MXSessionManager *)self copyMXCoreSessionList];
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
        if ([v9 audioSessionID] == a3)
        {
          v10 = v9;
          goto LABEL_11;
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

  v9 = 0;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)copyActiveSessionsInfoForAdditiveRouting
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [(MXSessionManager *)self copyMXCoreSessionList];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        if ([v8 isActive] && !-[MXSessionManager isSpeechDetectCategory:](self, "isSpeechDetectCategory:", objc_msgSend(v8, "audioCategory")) && (objc_msgSend(v8, "isIDSMXCoreSession") & 1) == 0 && (objc_msgSend(v8, "isHardwareSafetySession") & 1) == 0)
        {
          v9 = [v8 additiveRoutingInfo];
          if (v9)
          {
            [v15 addObject:v9];
          }

          else
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)copySessionsThatUserIntendsToUnmute:(unsigned int)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  VolumeButtonClient = CMSessionMgrFindVolumeButtonClient(a3);
  if (VolumeButtonClient && (v6 = VolumeButtonClient, [VolumeButtonClient isActive]))
  {
    v7 = [v6 isOutputMuted];
    if (dword_1EB75DE40)
    {
      v29 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v7)
    {
      [v23 addObject:v6];
    }
  }

  else
  {
    v9 = [(MXSessionManager *)self copyMXCoreSessionList];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          if ([v14 isOutputMuted])
          {
            if (dword_1EB75DE40)
            {
              v29 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v16 = v29;
              if (os_log_type_enabled(v15, type))
              {
                v17 = v16;
              }

              else
              {
                v17 = v16 & 0xFFFFFFFE;
              }

              if (v17)
              {
                v18 = [v14 clientName];
                v31 = 136315394;
                v32 = "[MXSessionManager copySessionsThatUserIntendsToUnmute:]";
                v33 = 2114;
                v34 = v18;
                LODWORD(v22) = 22;
                v21 = &v31;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            [v23 addObject:{v14, v21, v22}];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v11);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v23;
}

- (void)dumpDebugInfo
{
  v49 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    v41 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock:v25] lock];
  if (dword_1EB75DE40)
  {
    v41 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([(NSMutableDictionary *)[(MXSessionManager *)self pickableRoutesDescriptions:v26] count])
  {
    CFDictionaryApplyFunction([(MXSessionManager *)self pickableRoutesDescriptions], CMSMUtility_PrintRouteDescriptions, 0);
  }

  if (dword_1EB75DE40)
  {
    v41 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(NSRecursiveLock *)[(MXSessionManager *)self propertiesLock:v27] unlock];
  if (dword_1EB75DE40)
  {
    v41 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = [(MXSessionManager *)self devicesSampleRates:v28];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = [(NSDictionary *)v7 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v8)
  {
    v9 = v8;
    v35 = *v37;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v37 != v35)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v36 + 1) + 8 * i);
        v12 = [(NSDictionary *)v7 objectForKey:v11, v29, v34];
        if (dword_1EB75DE40)
        {
          v13 = v12;
          v41 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v15 = v41;
          if (os_log_type_enabled(v14, type))
          {
            v16 = v15;
          }

          else
          {
            v16 = v15 & 0xFFFFFFFE;
          }

          if (v16)
          {
            VADNameForVADID = CMSMUtility_GetVADNameForVADID([v11 unsignedIntValue]);
            v42 = 136315650;
            v43 = "[MXSessionManager dumpDebugInfo]";
            v44 = 2114;
            v45 = VADNameForVADID;
            v46 = 2114;
            v47 = v13;
            LODWORD(v34) = 32;
            v29 = &v42;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      v9 = [(NSDictionary *)v7 countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v9);
  }

  if (dword_1EB75DE40)
  {
    v41 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v19 = v41;
    if (os_log_type_enabled(v18, type))
    {
      v20 = v19;
    }

    else
    {
      v20 = v19 & 0xFFFFFFFE;
    }

    if (v20)
    {
      v42 = 136315138;
      v43 = "[MXSessionManager dumpDebugInfo]";
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE40)
    {
      v41 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v22 = v41;
      if (os_log_type_enabled(v21, type))
      {
        v23 = v22;
      }

      else
      {
        v23 = v22 & 0xFFFFFFFE;
      }

      if (v23)
      {
        v42 = 136315138;
        v43 = "[MXSessionManager dumpDebugInfo]";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)getUpdatedDuckVolume:(id)a3 outDuckVolume:(float *)a4
{
  if (a3)
  {
    [a3 duckToLevelDB];
    v7 = v6;
    if (v6 == -40.0)
    {
      if ([a3 duckToLevelScalarSetByClient])
      {
        v8 = 0;
        v7 = -40.0;
      }

      else
      {
        CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
        DoesPortSupportDoAP = vaeDoesPortSupportDoAP(CurrentOutputPortAtIndex);
        v8 = DoesPortSupportDoAP != 0;
        if (DoesPortSupportDoAP)
        {
          v7 = -68.0;
        }

        else
        {
          v7 = -40.0;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v11 = [a3 duckToLevelDBSetByClient];
    v12 = CMSMUtility_GetCurrentOutputPortAtIndex(0);
    if (vaeDoesPortSupportSoftwareVolume(v12))
    {
      if (v8 | v11)
      {
        *a4 = vaeGetDestinationVolumeScalarFactor(v7, *a4);
      }
    }
  }
}

- (void)addDuckerToSession:(id)a3 duckerSession:(id)a4 duckingSource:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = [a5 type];
  [a5 ID];
  v9 = [a5 isSingleton];
  if (a4 || v8 != 2)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [a3 duckingSourceList];
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
LABEL_5:
      v14 = 0;
      while (1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * v14);
        if (v9)
        {
          v16 = [a5 type];
          if (v16 == [v15 type])
          {
            break;
          }
        }

        v17 = [a5 type];
        if (v17 == [v15 type])
        {
          v18 = [a5 ID];
          if (v18 == [v15 ID] && objc_msgSend(a5, "type") == 2)
          {
            break;
          }
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v12)
          {
            goto LABEL_5;
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      [objc_msgSend(a3 "duckingSourceList")];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)removeDuckerForSession:(id)a3 sessionCausingUnduck:(id)a4 duckingSource:(id)a5 outLastDuckingSourceWasRemoved:(BOOL *)a6
{
  v32 = *MEMORY[0x1E69E9840];
  if ([a5 type] == 3)
  {
    [objc_msgSend(a3 "duckingSourceList")];
LABEL_32:
    *a6 = 1;
    goto LABEL_33;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = [a3 duckingSourceList];
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        if (([a5 type] != 1 || objc_msgSend(v14, "type") != 1) && (!MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled() || objc_msgSend(a5, "type") != 6 || objc_msgSend(v14, "type") != 6) && (objc_msgSend(a5, "type") != 7 || objc_msgSend(v14, "type") != 7) && (objc_msgSend(a5, "type") != 8 || objc_msgSend(v14, "type") != 8))
        {
          v15 = [a5 type];
          if (v15 != [v14 type])
          {
            continue;
          }

          v16 = [a5 ID];
          if (v16 != [v14 ID])
          {
            continue;
          }
        }

        if (v14)
        {
          [objc_msgSend(a3 "duckingSourceList")];
        }

        goto LABEL_24;
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_24:
  if (![objc_msgSend(a3 "duckingSourceList")])
  {
    goto LABEL_32;
  }

  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v17 = [a3 duckingSourceList];
  v18 = [v17 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v23;
    while (1)
    {
      if (*v23 != v20)
      {
        objc_enumerationMutation(v17);
      }

      if (!--v19)
      {
        v19 = [v17 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (!v19)
        {
          break;
        }
      }
    }
  }

LABEL_33:
  v21 = *MEMORY[0x1E69E9840];
}

- (float)getDuckVolumeForBlurEffect:(id)a3 duckeeSession:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v26 = 0;
  *cf = 0u;
  *v25 = 0u;
  CurrentAudioDestination = CMSUtility_GetCurrentAudioDestination(a4);
  cmsmCopyCurrentActiveRouteInfoAtIndexForVADUID(CurrentAudioDestination, 0, &cf[1], &v25[1], v25);
  v8 = -[MXSessionManager getUncustomizedCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "getUncustomizedCategory:", [a4 audioCategory]);
  v9 = [a4 audioMode];
  v27[0] = *cf;
  v27[1] = *v25;
  v28 = v26;
  v10 = PVMGetVolumePreference(v8, v9, v27);
  if (cf[1])
  {
    CFRelease(cf[1]);
  }

  if (v25[1])
  {
    CFRelease(v25[1]);
  }

  if (cf[1])
  {
    CFRelease(cf[1]);
  }

  outData = v10;
  CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(a4);
  if (vaemConvertToDecibelInVAD(CurrentOutputVADID, &outData))
  {
    outData = 0.0;
  }

  if (a3)
  {
    [a3 duckToLevelDB];
    v13 = *&v12;
  }

  else
  {
    v13 = -40.0;
  }

  v14 = 1.0;
  if (outData > v13)
  {
    *&v12 = v13;
    [(MXSessionManager *)self getScalarVolume:v12];
    v16 = v15;
    *&v17 = outData;
    [(MXSessionManager *)self getScalarVolume:v17];
    v14 = v16 / v18;
  }

  if (v14 <= 1.0)
  {
    v19 = v14;
  }

  else
  {
    v19 = 1.0;
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)areDuckerAndDuckeePlayingOnDifferentVADs:(id)a3 duckerSession:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(a3);
  if (a4)
  {
    VADIDForVADName = CMSUtility_GetCurrentOutputVADID(a4);
  }

  else
  {
    VADIDForVADName = CMSMUtility_GetVADIDForVADName(0x1F2893B70);
  }

  v7 = VADIDForVADName;
  if (CurrentOutputVADID != VADIDForVADName && dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = CurrentOutputVADID != v7;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)duckVolume:(id)a3 duckerSession:(id)a4 duckingSource:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a4 || !CMSUtility_SessionDucksOthers(a3))
  {
    v10 = [a5 type];
    v11 = [a5 ID];
    [a5 duckVolume];
    v31 = v12;
    [a5 duckFadeDuration];
    v14 = v13;
    if (v10)
    {
      v15 = 0;
    }

    else
    {
      v15 = CMSystemSoundMgr_SystemSoundMustBeHeard(v11) != 0;
    }

    if (CMSUtility_GetPrefersNoDucking(a3) && v10 != 1 && !v15 && (!MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled() || v10 != 6))
    {
      if (!dword_1EB75DE40)
      {
        goto LABEL_28;
      }

      goto LABEL_22;
    }

    [(MXSessionManager *)self addDuckerToSession:a3 duckerSession:a4 duckingSource:a5];
    if ([a3 isDucked])
    {
      goto LABEL_28;
    }

    if (CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy() && [a3 isOutputMuted])
    {
      if (!dword_1EB75DE40)
      {
        goto LABEL_28;
      }

LABEL_22:
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      goto LABEL_23;
    }

    [+[MXSessionManager sharedInstance](MXSessionManager cancelAnyInProgressRampIfNeeded:"cancelAnyInProgressRampIfNeeded:reason:" reason:a3, 1];
    [(MXSessionManager *)self getUpdatedDuckVolume:a4 outDuckVolume:&v31];
    if (a4)
    {
      if (dword_1EB75DE40)
      {
        v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
LABEL_26:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else if (dword_1EB75DE40)
    {
      v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      goto LABEL_26;
    }

    LODWORD(v16) = v31;
    v20 = [MEMORY[0x1E696AD98] numberWithFloat:{v16, v29, v30}];
    LODWORD(v21) = v14;
    v22 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
    CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(a3);
    vaemSetToolboxDuckingEnabled(CurrentOutputVADID);
    CMSUtility_PostInterruptionCommandNotification(a3, 2u, [a3 clientName], 0, v20, v22, 0, 0);
    LODWORD(v24) = v14;
    [(MXSessionManager *)self updateMostRecentDuckFadeDuration:1 duckOperation:a4 duckerSession:a3 sessionToDuck:v24];
    [a3 setIsDucked:1];
    LODWORD(v25) = v14;
    [a3 setAudioQueueFadeDuration:v25];
    LODWORD(v26) = v31;
    [a3 setAudioQueueDuckVolume:v26];
    LODWORD(v27) = v31;
    [a4 setLastDuckVolumeApplied:v27];
    goto LABEL_28;
  }

  if (dword_1EB75DE40)
  {
    v31 = 0;
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
LABEL_23:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_28:
  v28 = *MEMORY[0x1E69E9840];
}

- (void)unduckVolume:(id)a3 sessionCausingUnduck:(id)a4 duckingSource:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  if ([a3 isDucked])
  {
    v9 = a4 ? a4 : a3;
    [v9 unduckFadeDuration];
    v11 = v10 <= 0.0 ? 0.5 : v10;
    v22 = 0;
    [(MXSessionManager *)self removeDuckerForSession:a3 sessionCausingUnduck:a4 duckingSource:a5 outLastDuckingSourceWasRemoved:&v22];
    if (v22 == 1)
    {
      [a3 setIsDucked:0];
      if (![a3 interruptingSession])
      {
        *&v12 = v11;
        v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
        LODWORD(v14) = 1.0;
        v15 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMSUtility_PostInterruptionCommandNotification(a3, 3u, [a3 clientName], 0, v15, v13, 0, 0);
        CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(a3);
        vaemSetToolboxDuckingEnabled(CurrentOutputVADID);
        *&v18 = v11;
        [(MXSessionManager *)self updateMostRecentDuckFadeDuration:0 duckOperation:a4 duckerSession:a3 sessionToDuck:v18];
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)isSessionDucked:(id)a3 duckingSource:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  LODWORD(v6) = [a3 isDucked];
  if (v6)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [a3 duckingSourceList];
    v6 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [v11 type];
          if (v12 == [a4 type])
          {
            v13 = [v11 ID];
            if (v13 == [a4 ID])
            {
              LOBYTE(v6) = 1;
              goto LABEL_13;
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        LOBYTE(v6) = 0;
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)getDuckingSource:(id)a3 duckerSession:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [a3 duckingSourceList];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v14 + 1) + 8 * v9);
      if ([v10 type] == 2)
      {
        v11 = [v10 ID];
        if (v11 == [objc_msgSend(a4 "ID")])
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v10 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)duckSessionIfDuckerIsActive:(id)a3
{
  v5 = CMSMUtility_CopyCurrentRouteTypes();
  v6 = CMSUtility_CopyActiveDuckerForSession(a3);
  [(MXSessionManager *)self startAsyncDuckingOperation];
  if (MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled())
  {
    if (v6)
    {
      v7 = [v6 hasAudioCategory:@"VoiceOver"];
      v8 = +[MXSessionManager sharedInstance];
      if (v7)
      {
        v9 = v6;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v8 = +[MXSessionManager sharedInstance];
      v7 = 0;
      v9 = 0;
    }

    v10 = v7 & [(MXSessionManager *)v8 duckSessionForVoiceOverIfNeeded:a3 voiceOverSession:v9];
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  v19 = 0;
  if (v6 && (v10 & 1) == 0)
  {
    v11 = [MXDuckingSource alloc];
    v12 = [objc_msgSend(v6 "ID")];
    [v6 duckToLevelScalar];
    v19 = [MXDuckingSource initWithType:v11 ID:"initWithType:ID:duckVolume:duckFadeDuration:" duckVolume:2 duckFadeDuration:v12];
    [(MXSessionManager *)self duckVolume:a3 duckerSession:v6 duckingSource:?];
    [v6 setNeedToEndInterruption:1];
  }

  if ([(MXSessionManager *)self shouldDuckSessionForSpeakerVolumeLimit:a3])
  {
    [+[MXSessionManager sharedInstance](MXSessionManager duckVolumeForSpeakerVolumeLimit];
    v14 = v13;
    v15 = [MXDuckingSource alloc];
    LODWORD(v16) = 0.5;
    LODWORD(v17) = v14;
    v18 = [(MXDuckingSource *)v15 initWithType:7 ID:0 duckVolume:v17 duckFadeDuration:v16];
    [(MXSessionManager *)self duckVolume:a3 duckerSession:0 duckingSource:v18];
  }

  [(MXSessionManager *)self endAsyncDuckingOperationForSession:a3];
}

- (void)duckSessionsForDucker:(id)a3 sessionsToDuck:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    [(MXSessionManager *)self startAsyncDuckingOperation];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = [a4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        v9 = 0;
        do
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(a4);
          }

          v10 = *(*(&v21 + 1) + 8 * v9);
          v11 = [MXDuckingSource alloc];
          v12 = [objc_msgSend(a3 "ID")];
          [a3 duckToLevelScalar];
          v14 = v13;
          [a3 duckFadeDuration];
          LODWORD(v16) = v15;
          LODWORD(v17) = v14;
          v18 = [(MXDuckingSource *)v11 initWithType:2 ID:v12 duckVolume:v17 duckFadeDuration:v16];
          [+[MXSessionManager sharedInstance](MXSessionManager duckVolume:"duckVolume:duckerSession:duckingSource:" duckerSession:v10 duckingSource:a3, v18];

          if ([v10 isCarSession])
          {
            [a3 setDuckCommandSentToCarSession:1];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [a4 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }

    [(MXSessionManager *)self endAsyncDuckingOperationForSession:a3];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)unduckSessionsForDucker:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = -[MXDuckingSource initWithType:ID:duckVolume:duckFadeDuration:]([MXDuckingSource alloc], "initWithType:ID:duckVolume:duckFadeDuration:", 2, [objc_msgSend(a3 "ID")], 0.0, 0.0);
  v7 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        if ([v12 isDucked] && -[MXSessionManager isSessionDucked:duckingSource:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSessionDucked:duckingSource:", v12, v6))
        {
          [v5 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v9);
  }

  [(MXSessionManager *)self startAsyncDuckingOperation];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v5);
        }

        v17 = *(*(&v19 + 1) + 8 * j);
        [+[MXSessionManager sharedInstance](MXSessionManager unduckVolume:"unduckVolume:sessionCausingUnduck:duckingSource:" sessionCausingUnduck:v17 duckingSource:a3, v6];
        if ([v17 duckCommandSentToCarSession])
        {
          [v17 setDuckCommandSentToCarSession:0];
        }
      }

      v14 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  [(MXSessionManager *)self endAsyncDuckingOperationForSession:a3];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)unduckSessionsForDuckingSource:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  [(MXSessionManager *)self startAsyncDuckingOperation];
  v5 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if ([+[MXSessionManager isSessionDucked:"isSessionDucked:duckingSource:"]
        {
          [+[MXSessionManager sharedInstance](MXSessionManager unduckVolume:"unduckVolume:sessionCausingUnduck:duckingSource:" sessionCausingUnduck:v10 duckingSource:0, a3];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(MXSessionManager *)self endAsyncDuckingOperation];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)updateDuckingSourceInfoForSession:(id)a3 duckerSession:(id)a4 duckVolume:(float)a5 duckFadeDuration:(float)a6
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = [MXSessionManager getDuckingSource:"getDuckingSource:duckerSession:" duckerSession:?];
  if (v8)
  {
    v10 = v8;
    *&v9 = a5;
    [v8 setDuckVolume:v9];
    v11 = *MEMORY[0x1E69E9840];
    *&v12 = a6;

    [v10 setDuckFadeDuration:v12];
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v14 = *MEMORY[0x1E69E9840];
  }
}

- (BOOL)isAnExistingDuckingSource:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = CMSUtility_CopySessionsToDuck(1, 0, a3);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(__CFArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([(MXSessionManager *)self getDuckingSource:*(*(&v13 + 1) + 8 * i) duckerSession:a3])
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v7 = [(__CFArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)updateDuckVolume:(id)a3 duckerSession:(id)a4 duckVolume:(float)a5 duckFadeDuration:(float)a6
{
  v23 = *MEMORY[0x1E69E9840];
  v22 = a5;
  if (!CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy() || ([a3 isOutputMuted] & 1) == 0)
  {
    [+[MXSessionManager sharedInstance](MXSessionManager cancelAnyInProgressRampIfNeeded:"cancelAnyInProgressRampIfNeeded:reason:" reason:a3, 1];
    [(MXSessionManager *)self getUpdatedDuckVolume:a4 outDuckVolume:&v22];
    *&v10 = v22;
    v11 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
    *&v12 = a6;
    v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSUtility_PostInterruptionCommandNotification(a3, 2u, [a3 clientName], 0, v11, v13, 0, 0);
    *&v15 = a6;
    [(MXSessionManager *)self updateMostRecentDuckFadeDuration:1 duckOperation:a4 duckerSession:a3 sessionToDuck:v15];
    *&v16 = a6;
    [a3 setAudioQueueFadeDuration:v16];
    *&v17 = v22;
    [a3 setAudioQueueDuckVolume:v17];
    *&v18 = v22;
    [a4 setLastDuckVolumeApplied:v18];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)updateUnduckVolume:(id)a3 duckerSession:(id)a4 unduckVolume:(float)a5 unduckFadeDuration:(float)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v23 = a5;
  [+[MXSessionManager sharedInstance](MXSessionManager cancelAnyInProgressRampIfNeeded:"cancelAnyInProgressRampIfNeeded:reason:" reason:a3, 1];
  [(MXSessionManager *)self getUpdatedDuckVolume:a4 outDuckVolume:&v23];
  *&v10 = v23;
  v11 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  *&v12 = a6;
  v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v15 = v23;
  if (v23 == 1.0)
  {
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    CMSUtility_PostInterruptionCommandNotification(a3, 3u, [a3 clientName], 0, v11, v13, 0, 0);
    *&v16 = a6;
    [(MXSessionManager *)self updateMostRecentDuckFadeDuration:0 duckOperation:a4 duckerSession:a3 sessionToDuck:v16];
    *&v17 = a6;
    [a3 setAudioQueueFadeDuration:v17];
    *&v18 = v23;
    [a3 setAudioQueueDuckVolume:v18];
    *&v19 = v23;
    [a4 setLastDuckVolumeApplied:v19];
  }

  result = v15 != 1.0;
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)updateDuckVolumeForDucker:(id)a3 duckVolume:(float)a4 duckFadeDuration:(float)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = 1;
  v10 = CMSUtility_CopySessionsToDuck(1, 0, a3);
  [(MXSessionManager *)self startAsyncDuckingOperation];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = [(__CFArray *)v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        if (([v15 isDucked] & 1) == 0)
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v9 = 0;
          goto LABEL_13;
        }

        *&v16 = a4;
        *&v17 = a5;
        [(MXSessionManager *)self updateDuckingSourceInfoForSession:v15 duckerSession:a3 duckVolume:v16 duckFadeDuration:v17];
        *&v18 = a4;
        *&v19 = a5;
        [(MXSessionManager *)self updateDuckVolume:v15 duckerSession:a3 duckVolume:v18 duckFadeDuration:v19];
      }

      v12 = [(__CFArray *)v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    v9 = 1;
  }

LABEL_13:
  [(MXSessionManager *)self endAsyncDuckingOperation:v23];

  v21 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)updateUnduckVolumeForDucker:(id)a3 unduckVolume:(float)a4 unduckFadeDuration:(float)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = CMSUtility_CopySessionsToDuck(1, 0, a3);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = [(__CFArray *)v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v34;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if (([*(*(&v33 + 1) + 8 * i) isDucked] & 1) == 0)
        {
          if (dword_1EB75DE40)
          {
            v32 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v23 = 0;
          goto LABEL_20;
        }
      }

      v11 = [(__CFArray *)v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  [(MXSessionManager *)self startAsyncDuckingOperation];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = [(__CFArray *)v9 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v14)
  {
    v17 = v14;
    v18 = *v28;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v9);
        }

        v20 = *(*(&v27 + 1) + 8 * j);
        *&v15 = a4;
        *&v16 = a5;
        [(MXSessionManager *)self updateDuckingSourceInfoForSession:v20 duckerSession:a3 duckVolume:v15 duckFadeDuration:v16];
        *&v21 = a4;
        *&v22 = a5;
        [(MXSessionManager *)self updateUnduckVolume:v20 duckerSession:a3 unduckVolume:v21 unduckFadeDuration:v22];
      }

      v17 = [(__CFArray *)v9 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v17);
  }

  [(MXSessionManager *)self endAsyncDuckingOperation];
  v23 = 1;
LABEL_20:

  v25 = *MEMORY[0x1E69E9840];
  return v23;
}

- (BOOL)shouldDuckSessionForVoiceOver:(id)a3
{
  v8[16] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_12;
  }

  if ([a3 hasAudioCategory:@"VoiceOver"])
  {
LABEL_12:
    v4 = 0;
    goto LABEL_13;
  }

  v8[0] = 0;
  PVMCopyVolumeCategoryAndMode(-[MXSessionManager getUncustomizedCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "getUncustomizedCategory:", [a3 audioCategory]), objc_msgSend(a3, "audioMode"), v8, 0);
  v4 = [a3 clientPriority] <= 0xA && ((objc_msgSend(v8[0], "isEqualToString:", @"Alert") & 1) == 0 && (objc_msgSend(v8[0], "isEqualToString:", @"Alarm") & 1) == 0 && !objc_msgSend(a3, "isTheAssistant") || MX_FeatureFlags_IsAlertsRelativeVoiceOverVolumeEnabled() != 0);

LABEL_13:
  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)shouldSkipDuckingForVoiceOver:(id)a3 inActiveVoiceOverSession:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0;
  }

  [+[MXSessionManager sharedInstance](MXSessionManager duckScalarForVoiceOver];
  if (v7 >= 1.0)
  {
    if (v6 && CMSUtility_SessionDucksOthers(v6) && !CMSUtility_AreSessionsRoutedToTheSamePhysicalDevice(a3, v6))
    {
      if (dword_1EB75DE40)
      {
        goto LABEL_9;
      }

LABEL_14:
      v13 = 1;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v6 || (v6 = [(MXSessionManager *)self copyVoiceOverSession]) != 0)
  {
    if (!CMSUtility_AreSessionsRoutedToTheSamePhysicalDevice(a3, v6))
    {
      goto LABEL_8;
    }

LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  v9 = [+[MXSessionManager sharedInstance](MXSessionManager getProjectedAudioDestinationForCategory:"getProjectedAudioDestinationForCategory:mode:" mode:@"VoiceOver", @"Default"];
  CurrentAudioDestination = CMSUtility_GetCurrentAudioDestination(a3);
  if (CMSMUtility_AreVADsRoutedToTheSamePhysicalDevice(v9, CurrentAudioDestination))
  {
    goto LABEL_16;
  }

LABEL_8:
  if (!dword_1EB75DE40)
  {
    goto LABEL_14;
  }

LABEL_9:
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  v13 = 1;
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_17:

  v11 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)isVoiceOverDuckingActive:(id)a3 outDuckScalar:(float *)a4 outDuckFadeDuration:(float *)a5
{
  v8 = a3;
  if ((a3 || (v8 = -[MXSessionManager copyActiveVoiceOverSession](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "copyActiveVoiceOverSession")) != 0) && [v8 isActive] && CMSUtility_SessionDucksOthers(v8))
  {
    [v8 duckToLevelScalar];
    v10 = v9;
    [v8 duckFadeDuration];
    v12 = v11;
    v13 = 1;
    if (a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [+[MXSessionManager sharedInstance](MXSessionManager duckScalarForVoiceOver];
    v10 = v14;
    v13 = CMSMDeviceState_IsVoiceOverOn() != 0;
    v12 = 1050253722;
    if (a3)
    {
      goto LABEL_9;
    }
  }

LABEL_9:
  *a4 = v10;
  *a5 = v12;
  return v10 < 1.0 && v13;
}

- (BOOL)duckSessionForVoiceOverIfNeeded:(id)a3 voiceOverSession:(id)a4
{
  v19[24] = *MEMORY[0x1E69E9840];
  v7 = [+[MXSessionManager sharedInstance](MXSessionManager shouldDuckSessionForVoiceOver:"shouldDuckSessionForVoiceOver:", a3];
  if (v7)
  {
    v19[0] = 0;
    v7 = [+[MXSessionManager sharedInstance](MXSessionManager isVoiceOverDuckingActive:"isVoiceOverDuckingActive:outDuckScalar:outDuckFadeDuration:" outDuckScalar:a4 outDuckFadeDuration:v19 + 4, v19];
    if (v7)
    {
      v8 = [+[MXSessionManager sharedInstance](MXSessionManager copyActiveVoiceOverSession];
      v9 = [(MXSessionManager *)self shouldSkipDuckingForVoiceOver:a3 inActiveVoiceOverSession:v8];

      if (v9)
      {
        LOBYTE(v7) = 0;
      }

      else
      {
        v10 = [MXDuckingSource alloc];
        LODWORD(v11) = HIDWORD(v19[0]);
        LODWORD(v12) = v19[0];
        v13 = [(MXDuckingSource *)v10 initWithType:6 ID:0 duckVolume:v11 duckFadeDuration:v12];
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [+[MXSessionManager duckVolume:v17]duckingSource:"duckVolume:duckerSession:duckingSource:", a3, 0, v13];

        LOBYTE(v7) = 1;
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)unduckSessionsForVoiceOverDuckingSource
{
  v2 = [MXDuckingSource alloc];
  LODWORD(v3) = 1050253722;
  v4 = [(MXDuckingSource *)v2 initWithType:6 ID:0 duckVolume:0.0 duckFadeDuration:v3];
  [+[MXSessionManager sharedInstance](MXSessionManager unduckSessionsForDuckingSource:"unduckSessionsForDuckingSource:", v4];
}

- (BOOL)voiceOverSessionWantsRelativeDucking:(id)a3
{
  IsRelativeVoiceOverVolumeEnabled = MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled();
  LOBYTE(v5) = 0;
  if (a3)
  {
    if (IsRelativeVoiceOverVolumeEnabled)
    {
      v5 = [a3 hasAudioCategory:@"VoiceOver"];
      if (v5)
      {
        LOBYTE(v5) = CMSUtility_SessionDucksOthers(a3);
      }
    }
  }

  return v5;
}

- (void)updateDuckedSessionsForVoiceOver:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled())
  {
    v37 = 0;
    v5 = [+[MXSessionManager sharedInstance](MXSessionManager isVoiceOverDuckingActive:"isVoiceOverDuckingActive:outDuckScalar:outDuckFadeDuration:" outDuckScalar:a3 outDuckFadeDuration:&v37 + 4, &v37];
    if (dword_1EB75DE40)
    {
      v36 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v5)
    {
      v7 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
      v8 = [+[MXSessionManager sharedInstance](MXSessionManager copyActiveVoiceOverSession];
      v9 = [MXDuckingSource alloc];
      LODWORD(v10) = HIDWORD(v37);
      LODWORD(v11) = v37;
      v12 = [(MXDuckingSource *)v9 initWithType:6 ID:0 duckVolume:v10 duckFadeDuration:v11];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v13 = [v7 countByEnumeratingWithState:&v31 objects:v38 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v32;
        v29 = v8;
        v30 = self;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v32 != v15)
            {
              objc_enumerationMutation(v7);
            }

            v17 = *(*(&v31 + 1) + 8 * i);
            if ([v17 isActive])
            {
              v18 = [(MXSessionManager *)self shouldSkipDuckingForVoiceOver:v17 inActiveVoiceOverSession:v8];
              if ([+[MXSessionManager isSessionDucked:"isSessionDucked:duckingSource:"]
              {
                if (v18)
                {
                  if (dword_1EB75DE40)
                  {
                    v36 = 0;
                    type = OS_LOG_TYPE_DEFAULT;
                    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v20 = v36;
                    if (os_log_type_enabled(v19, type))
                    {
                      v21 = v20;
                    }

                    else
                    {
                      v21 = v20 & 0xFFFFFFFE;
                    }

                    if (v21)
                    {
                      v22 = [v17 clientName];
                      v39 = 136315394;
                      v40 = "[MXSessionManager(DuckingUtilities) updateDuckedSessionsForVoiceOver:]";
                      v41 = 2114;
                      v42 = v22;
                      LODWORD(v28) = 22;
                      v27 = &v39;
                      _os_log_send_and_compose_impl();
                    }

                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                    v8 = v29;
                    self = v30;
                  }

                  [+[MXSessionManager unduckVolume:v27]duckingSource:"unduckVolume:sessionCausingUnduck:duckingSource:", v17, 0, v12];
                }

                else
                {
                  v23 = +[MXSessionManager sharedInstance];
                  LODWORD(v24) = HIDWORD(v37);
                  LODWORD(v25) = v37;
                  [(MXSessionManager *)v23 updateDuckVolume:v17 duckerSession:0 duckVolume:v24 duckFadeDuration:v25];
                }
              }

              else if (!v18 && [+[MXSessionManager shouldDuckSessionForVoiceOver:"shouldDuckSessionForVoiceOver:"]
              {
                [+[MXSessionManager sharedInstance](MXSessionManager duckVolume:"duckVolume:duckerSession:duckingSource:" duckerSession:v17 duckingSource:0, v12];
              }
            }
          }

          v14 = [v7 countByEnumeratingWithState:&v31 objects:v38 count:16];
        }

        while (v14);
      }
    }

    else
    {
      [(MXSessionManager *)self unduckSessionsForVoiceOverDuckingSource];
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)muteOutputForSession:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy() && !CMSMUtility_IsCategoryInputOnly([a3 audioCategory]))
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v6 = objc_alloc(MEMORY[0x1E696AD98]);
    LODWORD(v7) = 1036831949;
    v8 = [v6 initWithFloat:v7];
    v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithFloat:0.0];
    v10 = [MXDuckingSource alloc];
    [v9 floatValue];
    v12 = v11;
    [v8 floatValue];
    LODWORD(v14) = v13;
    LODWORD(v15) = v12;
    v16 = [(MXDuckingSource *)v10 initWithType:8 ID:0 duckVolume:v15 duckFadeDuration:v14];
    [(MXSessionManager *)self addDuckerToSession:a3 duckerSession:0 duckingSource:v16];
    [+[MXSessionManager sharedInstance](MXSessionManager cancelAnyInProgressRampIfNeeded:"cancelAnyInProgressRampIfNeeded:reason:" reason:a3, 1];
    CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(a3);
    vaemSetToolboxDuckingEnabled(CurrentOutputVADID);
    CMSUtility_PostInterruptionCommandNotification(a3, 2u, [a3 clientName], 0, v9, v8, 0, 0);
    [a3 setIsDucked:1];
    [a3 setNeedToEndInterruption:1];
    [v8 floatValue];
    [a3 setAudioQueueFadeDuration:?];
    [v9 floatValue];
    [a3 setAudioQueueDuckVolume:?];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)unmuteOutputForSession:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy() && !CMSMUtility_IsCategoryInputOnly([a3 audioCategory]))
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v6 = objc_alloc(MEMORY[0x1E696AD98]);
    LODWORD(v7) = 1036831949;
    v8 = [v6 initWithFloat:v7];
    v9 = objc_alloc(MEMORY[0x1E696AD98]);
    LODWORD(v10) = 1.0;
    v11 = [v9 initWithFloat:v10];
    v12 = [MXDuckingSource alloc];
    [v11 floatValue];
    v14 = v13;
    [v8 floatValue];
    LODWORD(v16) = v15;
    LODWORD(v17) = v14;
    v18 = [(MXDuckingSource *)v12 initWithType:8 ID:0 duckVolume:v17 duckFadeDuration:v16];
    v21[0] = 0;
    [(MXSessionManager *)self removeDuckerForSession:a3 sessionCausingUnduck:0 duckingSource:v18 outLastDuckingSourceWasRemoved:v21];
    if (v21[0] == 1)
    {
      CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(a3);
      vaemSetToolboxDuckingEnabled(CurrentOutputVADID);
      CMSUtility_PostInterruptionCommandNotification(a3, 3u, [a3 clientName], 0, v11, v8, 0, 0);
      [a3 setIsDucked:0];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (float)getSleepDurationForDuckFadeDuration:(float)a3
{
  if (a3 >= 0.5)
  {
    a3 = a3 * 0.6;
  }

  else if (a3 >= 0.3 && a3 < 0.5)
  {
    a3 = 0.3;
  }

  return fminf(a3, 5.0);
}

- (void)endAsyncDuckingOperationForSession:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  IsOffloadActivationOffACQEnabled = MX_FeatureFlags_IsOffloadActivationOffACQEnabled();
  if (a3 && IsOffloadActivationOffACQEnabled && ([a3 isInterruptionCalledOffAudioControlQueue] & 1) != 0)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v7 = *MEMORY[0x1E69E9840];

    [(MXSessionManager *)self endAsyncDuckingOperation];
  }
}

- (void)getAndResetAsyncDuckingParameters:(BOOL *)a3 mostRecentDuckFadeDuration:(float *)a4
{
  if (MX_FeatureFlags_IsOffloadActivationOffACQEnabled())
  {
    *a3 = [(MXSessionManager *)self mostRecentDuckOperation];
    [(MXSessionManager *)self mostRecentDuckFadeDuration];
    *a4 = v7;
    [(MXSessionManager *)self setMostRecentDuckFadeDuration:0.0];

    [(MXSessionManager *)self setMostRecentDuckOperation:0];
  }
}

- (void)sleepForAsyncDucking:(BOOL)a3 duration:(float)a4
{
  v13 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsAsyncDuckingEnabled())
  {
    *&v6 = a4;
    [(MXSessionManager *)self getSleepDurationForDuckFadeDuration:v6];
    if (v7 > 0.0)
    {
      v8 = v7;
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [MEMORY[0x1E696AF00] sleepForTimeInterval:{v8, v11, v12}];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)shouldDuckSessionForSpeakerVolumeLimit:(id)a3
{
  v15[22] = *MEMORY[0x1E69E9840];
  if (([a3 isSharePlayCallSession] & 1) != 0 || (objc_msgSend(a3, "isSharePlayMediaSession") & 1) != 0 || !PVMIsMaxVolumeLimitForBuiltInSpeakerEnabled())
  {
    v5 = 0;
  }

  else
  {
    v14 = 0;
    v15[0] = 0;
    v12 = 0;
    v13 = 0;
    v10 = 0;
    v11 = 0;
    v9 = 0;
    PVMCopyCurrentState(0, v15, &v14, &v13, &v12, &v11);
    if ([v13 isEqualToString:@"Speaker"] && objc_msgSend(v12, "isEqualToString:", @"Speaker") && (v4 = objc_msgSend(v15[0], "isEqualToString:", @"Audio/Video"), PVMCopyVolumeCategoryAndMode(objc_msgSend(a3, "audioCategory"), objc_msgSend(a3, "audioMode"), &v10, &v9), objc_msgSend(v10, "isEqualToString:", @"Audio/Video")))
    {
      v5 = v4 ^ 1;
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      v5 = 0;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)interruptEligibleSessionsOnContinuityScreenOutputPortAvailableDidChange
{
  v18 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsInterruptingPlayingSessionsInOnenessEnabled())
  {
    v3 = [(MXSessionManager *)self copyMXCoreSessionList];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          if ([v8 isActive] && (objc_msgSend(v8, "isTheAssistant") & 1) == 0 && (objc_msgSend(v8, "prefersNoInterruptionsDuringRemoteDeviceControl") & 1) == 0 && (objc_msgSend(v8, "hasPhoneCallBehavior") & 1) == 0 && !CMSMUtility_IsEmergencyAlertCategory(objc_msgSend(v8, "audioCategory")))
          {
            if (dword_1EB75DE40)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            CMSUtilityApplier_PostNotification_StopCommand(v8, 0);
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)interruptRecordingSessionsOnContinuityScreenOutputPortAvailableDidChange
{
  v18 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsOnenessEnabled())
  {
    v3 = [(MXSessionManager *)self copyMXCoreSessionList];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          if ([v8 isActive] && objc_msgSend(v8, "isRecordingMutedForRemoteDevice") && (objc_msgSend(v8, "prefersNoInterruptionsDuringRemoteDeviceControl") & 1) == 0)
          {
            if (dword_1EB75DE40)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            CMSUtilityApplier_PostNotification_StopCommand(v8, 0);
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)getBluetoothCustomizedAlternateCategory:(id)a3 enableBluetooth:(BOOL)a4
{
  if (a4)
  {
    v5 = [(MXSessionManager *)self figCustomizedCategoryWithBluetooth_Dict];
  }

  else
  {
    v5 = [(MXSessionManager *)self figCustomizedCategoryWithoutBluetooth_Dict];
  }

  result = [(NSDictionary *)v5 objectForKey:a3];
  if (!result)
  {
    return a3;
  }

  return result;
}

- (BOOL)isSessionWithAudioCategoryActive:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [(MXSessionManager *)self copyMXCoreSessionList];
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
        if ([v9 isActive] && (objc_msgSend(v9, "hasAudioCategory:", a3) & 1) != 0)
        {
          v10 = 1;
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

  v10 = 0;
LABEL_12:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)isSessionWithAudioModeActive:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [(MXSessionManager *)self copyMXCoreSessionList];
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
        if ([v9 isActive] && (objc_msgSend(v9, "hasAudioMode:", a3) & 1) != 0)
        {
          v10 = 1;
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

  v10 = 0;
LABEL_12:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)isSessionWithAudioModePlaying:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [(MXSessionManager *)self copyMXCoreSessionList];
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
        if ([v9 isActive] && objc_msgSend(v9, "isPlaying") && (objc_msgSend(v9, "hasAudioMode:", a3) & 1) != 0)
        {
          v10 = 1;
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

  v10 = 0;
LABEL_13:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)areSessionsWithAudioModesActive:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [(MXSessionManager *)self copyMXCoreSessionList];
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
        if ([v9 isActive] && (objc_msgSend(a3, "containsObject:", objc_msgSend(v9, "audioMode")) & 1) != 0)
        {
          v10 = 1;
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

  v10 = 0;
LABEL_12:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)isSessionWithAudioModeRecording:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [(MXSessionManager *)self copyMXCoreSessionList];
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
        if ([v9 isActive] && objc_msgSend(v9, "isRecording") && (objc_msgSend(v9, "hasAudioMode:", a3) & 1) != 0)
        {
          v10 = 1;
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

  v10 = 0;
LABEL_13:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)copyInterruptedSessions:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
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
        if ([v10 waitingToResume] && objc_msgSend(v10, "interruptingSession") == a3)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)copyDisplayIDForActiveCarPlayVideoSession
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
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
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 isActiveOverAirPlayVideo] && CMSMUtility_IsCarPlayVideoActive())
        {
          v3 = [v6 displayID];
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

- (void)updateSomeAirPlayCapableVideoClientIsActive
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(MXSessionManager *)self someAirPlayCapableVideoClientIsActive];
  v4 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isAirPlayCapableVideo] && ((objc_msgSend(v8, "isActive") & 1) != 0 || (objc_msgSend(v8, "isPlaying") & 1) != 0))
        {
          v5 = 1;
          goto LABEL_13;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  [(MXSessionManager *)self setSomeAirPlayCapableVideoClientIsActive:v5];
  if (v3 != v5)
  {
    FigRoutingManagerUtilities_PostEndpointNotification();
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)copyHighestPriorityActiveSession:(id)a3 deviceIdentifier:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  if (a3 && a4)
  {
    v26 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList:v19];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v22;
    v12 = 100;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        LocalSessionPriority = CMSM_GetLocalSessionPriority(v14, 1);
        if ([v14 isActive])
        {
          v16 = LocalSessionPriority > v12;
        }

        else
        {
          v16 = 0;
        }

        if (v16 && CMSUtility_IsSessionPlayStateEligibleForTipi(v14))
        {
          if (a4)
          {
            if (CMSUtility_DoPickedEndpointsForSessionContainDeviceIdentifier(v14, a4))
            {
              goto LABEL_20;
            }
          }

          else if (a3 && [CMSUtility_GetCurrentAudioDestination(v14) isEqualToString:a3])
          {
LABEL_20:

            v10 = v14;
            v12 = LocalSessionPriority;
            continue;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (!v9)
      {
        goto LABEL_25;
      }
    }
  }

  v10 = 0;
LABEL_25:

  v17 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)resetWaitingToResume:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 interruptingSession] == a3 && objc_msgSend(v9, "waitingToResume"))
        {
          [v9 setWaitingToResume:0];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)copySessionWithPID:(int)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [(MXSessionManager *)self copyMXCoreSessionList];
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
        if ([objc_msgSend(v9 "clientPID")] == a3)
        {
          v10 = v9;
          goto LABEL_11;
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

  v9 = 0;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)copySessionToBeMuted:(id *)a3
{
  v87 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = *&a3->var0[4];
  v85 = *a3->var0;
  v86 = v6;
  if (![(MXSessionManager *)self isAuditTokenValid:&v85])
  {
    v79 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_28:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v14 = 0;
    goto LABEL_29;
  }

  v7 = [(MXSessionManager *)self copyMXCoreSessionList];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v74 objects:v84 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v75;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v75 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v74 + 1) + 8 * i);
        if (v12)
        {
          [*(*(&v74 + 1) + 8 * i) auditToken];
        }

        else
        {
          v85 = 0u;
          v86 = 0u;
        }

        v13 = *&a3->var0[4];
        v83[0] = *a3->var0;
        v83[1] = v13;
        if ([(MXSessionManager *)self isAuditTokenEqual:&v85 compareTo:v83])
        {
          [v5 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v74 objects:v84 count:16];
    }

    while (v9);
  }

  if (![v5 count])
  {
    v79 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v20 = v79;
    if (os_log_type_enabled(v19, type))
    {
      v21 = v20;
    }

    else
    {
      v21 = v20 & 0xFFFFFFFE;
    }

    if (v21)
    {
      LODWORD(v83[0]) = 136315138;
      *(v83 + 4) = "[MXSessionManager(Utilities) copySessionToBeMuted:]";
      _os_log_send_and_compose_impl();
    }

    goto LABEL_28;
  }

  if ([v5 count] == 1)
  {
    v14 = [v5 firstObject];
    if (dword_1EB75DE40)
    {
      v79 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v16 = v79;
      if (os_log_type_enabled(v15, type))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (!v17)
      {
        goto LABEL_97;
      }

      LODWORD(v83[0]) = 136315138;
      *(v83 + 4) = "[MXSessionManager(Utilities) copySessionToBeMuted:]";
LABEL_96:
      _os_log_send_and_compose_impl();
LABEL_97:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    if (dword_1EB75DE40)
    {
      v79 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v25 = v79;
      if (os_log_type_enabled(v24, type))
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 & 0xFFFFFFFE;
      }

      if (v26)
      {
        LODWORD(v83[0]) = 136315138;
        *(v83 + 4) = "[MXSessionManager(Utilities) copySessionToBeMuted:]";
        LODWORD(v58) = 12;
        v54 = v83;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v27 = [v5 countByEnumeratingWithState:&v70 objects:v82 count:{16, v54, v58}];
    if (v27)
    {
      v28 = v27;
      v29 = *v71;
LABEL_39:
      v30 = 0;
      while (1)
      {
        if (*v71 != v29)
        {
          objc_enumerationMutation(v5);
        }

        v31 = *(*(&v70 + 1) + 8 * v30);
        if ([v31 isActive])
        {
          if ([v31 isRecording] && objc_msgSend(v31, "hasPhoneCallBehavior"))
          {
            break;
          }
        }

        if (v28 == ++v30)
        {
          v28 = [v5 countByEnumeratingWithState:&v70 objects:v82 count:16];
          if (v28)
          {
            goto LABEL_39;
          }

          goto LABEL_56;
        }
      }

      v14 = v31;
      if (dword_1EB75DE40)
      {
        v79 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v33 = v79;
        if (os_log_type_enabled(v32, type))
        {
          v34 = v33;
        }

        else
        {
          v34 = v33 & 0xFFFFFFFE;
        }

        if (v34)
        {
          LODWORD(v83[0]) = 136315138;
          *(v83 + 4) = "[MXSessionManager(Utilities) copySessionToBeMuted:]";
          LODWORD(v59) = 12;
          v55 = v83;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (v14)
      {
        goto LABEL_29;
      }
    }

LABEL_56:
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v35 = [v5 countByEnumeratingWithState:&v66 objects:v81 count:{16, v55, v59}];
    if (v35)
    {
      v36 = v35;
      v37 = *v67;
LABEL_58:
      v38 = 0;
      while (1)
      {
        if (*v67 != v37)
        {
          objc_enumerationMutation(v5);
        }

        v39 = *(*(&v66 + 1) + 8 * v38);
        if ([v39 hasPhoneCallBehavior])
        {
          break;
        }

        if (v36 == ++v38)
        {
          v36 = [v5 countByEnumeratingWithState:&v66 objects:v81 count:16];
          if (v36)
          {
            goto LABEL_58;
          }

          goto LABEL_73;
        }
      }

      v14 = v39;
      if (dword_1EB75DE40)
      {
        v79 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v41 = v79;
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
          LODWORD(v83[0]) = 136315138;
          *(v83 + 4) = "[MXSessionManager(Utilities) copySessionToBeMuted:]";
          LODWORD(v60) = 12;
          v56 = v83;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (v14)
      {
        goto LABEL_29;
      }
    }

LABEL_73:
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v43 = [v5 countByEnumeratingWithState:&v62 objects:v80 count:{16, v56, v60}];
    if (v43)
    {
      v44 = v43;
      v45 = *v63;
LABEL_75:
      v46 = 0;
      while (1)
      {
        if (*v63 != v45)
        {
          objc_enumerationMutation(v5);
        }

        v47 = *(*(&v62 + 1) + 8 * v46);
        if ([v47 hostProcessAttribution])
        {
          break;
        }

        if (v44 == ++v46)
        {
          v44 = [v5 countByEnumeratingWithState:&v62 objects:v80 count:16];
          if (v44)
          {
            goto LABEL_75;
          }

          goto LABEL_90;
        }
      }

      v14 = v47;
      if (dword_1EB75DE40)
      {
        v79 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v49 = v79;
        if (os_log_type_enabled(v48, type))
        {
          v50 = v49;
        }

        else
        {
          v50 = v49 & 0xFFFFFFFE;
        }

        if (v50)
        {
          LODWORD(v83[0]) = 136315138;
          *(v83 + 4) = "[MXSessionManager(Utilities) copySessionToBeMuted:]";
          LODWORD(v61) = 12;
          v57 = v83;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (v14)
      {
        goto LABEL_29;
      }
    }

LABEL_90:
    v14 = [v5 firstObject];
    if (dword_1EB75DE40)
    {
      v79 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v51 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v52 = v79;
      if (os_log_type_enabled(v51, type))
      {
        v53 = v52;
      }

      else
      {
        v53 = v52 & 0xFFFFFFFE;
      }

      if (!v53)
      {
        goto LABEL_97;
      }

      LODWORD(v83[0]) = 136315138;
      *(v83 + 4) = "[MXSessionManager(Utilities) copySessionToBeMuted:]";
      goto LABEL_96;
    }
  }

LABEL_29:

  v22 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)isAuditTokenValid:(id *)a3
{
  if (a3->var0[0] != -1)
  {
    return 1;
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v4 == 7)
    {
      break;
    }

    v6 = a3->var0[++v4];
  }

  while (v6 == -1);
  return v5 < 7;
}

- (BOOL)isAuditTokenEqual:(id *)a3 compareTo:(id *)a4
{
  v6 = *&a3->var0[4];
  *v16.val = *a3->var0;
  *&v16.val[4] = v6;
  v7 = audit_token_to_pid(&v16);
  v8 = *&a4->var0[4];
  *v16.val = *a4->var0;
  *&v16.val[4] = v8;
  v9 = audit_token_to_pid(&v16);
  v10 = *&a3->var0[4];
  *v16.val = *a3->var0;
  *&v16.val[4] = v10;
  v11 = audit_token_to_pidversion(&v16);
  v12 = *&a4->var0[4];
  *v16.val = *a4->var0;
  *&v16.val[4] = v12;
  v13 = audit_token_to_pidversion(&v16);
  return v7 == v9 && v11 == v13;
}

- (void)applyUplinkMute:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsSessionBasedMutingEnabled())
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v6 = CMSUtility_CopyBundleID(a3);
    if ([a3 hasPhoneCallBehavior] && -[NSNumber BOOLValue](-[MXSessionManager applyUplinkMuteToPhoneCallBehaviorSession](self, "applyUplinkMuteToPhoneCallBehaviorSession"), "BOOLValue"))
    {
      [(MXSessionManager *)self updateMutedBundleIDs:v6 muteValue:1];
      if (dword_1EB75DE40)
      {
        v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [(MXSessionManager *)self setApplyUplinkMuteToPhoneCallBehaviorSession:0, v13, v14];
    }

    if ([a3 isActive] && objc_msgSend(a3, "isRecording") && (objc_msgSend(a3, "isRecordingMuted") & 1) == 0 && -[NSSet containsObject:](-[MXSessionManager mutedSessionBundleIDs](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "mutedSessionBundleIDs"), "containsObject:", v6))
    {
      if (dword_1EB75DE40)
      {
        v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v9 = [MXSessionManager sharedInstance:v13];
      v10 = [MEMORY[0x1E696AD98] numberWithBool:1];
      *&v11 = -1;
      *(&v11 + 1) = -1;
      v15[0] = v11;
      v15[1] = v11;
      [(MXSessionManager *)v9 updateMuteState:v15 muteValue:v10];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)replaceMutedBundleIDwithHostID
{
  v58 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsSessionBasedMutingEnabled())
  {
    v48 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v4 = [MEMORY[0x1E695DFA8] setWithSet:{-[MXSessionManager mutedSessionBundleIDs](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "mutedSessionBundleIDs")}];
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v4;
    v6 = [v4 countByEnumeratingWithState:&v43 objects:v57 count:16];
    if (v6)
    {
      v7 = v6;
      v33 = *v44;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v44 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v43 + 1) + 8 * i);
          v10 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v11 = [v10 countByEnumeratingWithState:&v39 objects:v56 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v40;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v40 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v39 + 1) + 8 * j);
                if ([objc_msgSend(v15 "displayID")] && objc_msgSend(v15, "hasPhoneCallBehavior"))
                {
                  [v5 addObject:v15];
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v39 objects:v56 count:16];
            }

            while (v12);
          }
        }

        v7 = [obj countByEnumeratingWithState:&v43 objects:v57 count:16];
      }

      while (v7);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v16 = [v5 countByEnumeratingWithState:&v35 objects:v55 count:16];
    if (v16)
    {
      v17 = v16;
      v34 = *v36;
      do
      {
        for (k = 0; k != v17; ++k)
        {
          if (*v36 != v34)
          {
            objc_enumerationMutation(v5);
          }

          v19 = *(*(&v35 + 1) + 8 * k);
          -[MXSessionManager updateMutedBundleIDs:muteValue:](self, "updateMutedBundleIDs:muteValue:", [v19 displayID], 0);
          v20 = CMSUtility_CopyBundleID(v19);
          [(MXSessionManager *)self updateMutedBundleIDs:v20 muteValue:1];
          if ([objc_msgSend(v19 "displayID")])
          {
            if (dword_1EB75DE40)
            {
              v48 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v22 = v48;
              if (os_log_type_enabled(v21, type))
              {
                v23 = v22;
              }

              else
              {
                v23 = v22 & 0xFFFFFFFE;
              }

              if (v23)
              {
                v24 = [v19 displayID];
                v49 = 136315651;
                v50 = "[MXSessionManager(Utilities) replaceMutedBundleIDwithHostID]";
                v51 = 2113;
                v52 = v24;
                v53 = 2113;
                v54 = v20;
                LODWORD(v31) = 32;
                v30 = &v49;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            [(MXSessionManager *)self setUplinkMutedBundleID:v20, v30, v31];
          }

          if (dword_1EB75DE40)
          {
            v48 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v26 = v48;
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
              v28 = [v19 displayID];
              v49 = 136315651;
              v50 = "[MXSessionManager(Utilities) replaceMutedBundleIDwithHostID]";
              v51 = 2113;
              v52 = v28;
              v53 = 2113;
              v54 = v20;
              LODWORD(v31) = 32;
              v30 = &v49;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        v17 = [v5 countByEnumeratingWithState:&v35 objects:v55 count:16];
      }

      while (v17);
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)updateMutedBundleIDs:(id)a3 muteValue:(BOOL)a4
{
  v4 = a4;
  v13 = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E695DFA8] setWithSet:{-[MXSessionManager mutedSessionBundleIDs](self, "mutedSessionBundleIDs")}];
  if (MX_FeatureFlags_IsSessionBasedMutingEnabled())
  {
    goto LABEL_11;
  }

  v8 = [a3 isEqualToString:@"com.apple.mobilephone"];
  v9 = (v8 & 1) != 0 ? 0 : [a3 isEqualToString:@"com.apple.facetime"];
  v10 = v8 | v9;
  if (v4)
  {
    [v7 addObject:a3];
    if (v10)
    {
      [v7 addObject:@"com.apple.mobilephone"];
      [v7 addObject:@"com.apple.facetime"];
    }
  }

  else
  {
    [v7 removeObject:a3];
    if (v10)
    {
      [v7 removeObject:@"com.apple.mobilephone"];
      [v7 removeObject:@"com.apple.facetime"];
    }
  }

  [(MXSessionManager *)self setMutedSessionBundleIDs:v7];
  MXCFPreferencesSetAndSynchronizeUserPreference(@"mutedSessionBundleIDs", [(NSSet *)[(MXSessionManager *)self mutedSessionBundleIDs] allObjects]);
  if (dword_1EB75DE40)
  {
LABEL_11:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (int)clearUplinkMutedCache
{
  v28 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsSessionBasedMutingEnabled())
  {
    v22 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_19:
    result = -15685;
    goto LABEL_20;
  }

  if (CMSMUtility_PhoneCallOrRingtoneExists())
  {
    goto LABEL_19;
  }

  v4 = [MEMORY[0x1E695DFA8] setWithSet:{-[MXSessionManager mutedSessionBundleIDs](self, "mutedSessionBundleIDs")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(MXSessionManager *)self mutedSessionBundleIDs];
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 hasPrefix:@"com.apple"])
        {
          [v4 removeObject:v10];
        }
      }

      v7 = [(NSSet *)v5 countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v7);
  }

  [(MXSessionManager *)self setMutedSessionBundleIDs:v4];
  MXCFPreferencesSetAndSynchronizeUserPreference(@"mutedSessionBundleIDs", [(NSSet *)[(MXSessionManager *)self mutedSessionBundleIDs] allObjects]);
  if (dword_1EB75DE40)
  {
    v22 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v12 = v22;
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
      v14 = [(MXSessionManager *)self mutedSessionBundleIDs];
      v23 = 136315395;
      v24 = "[MXSessionManager(Utilities) clearUplinkMutedCache]";
      v25 = 2113;
      v26 = v14;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = 0;
LABEL_20:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

- (int)updateMuteState:(id *)a3 muteValue:(id)a4
{
  v108 = *MEMORY[0x1E69E9840];
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 3;
  v7 = *&a3->var0[4];
  *atoken.val = *a3->var0;
  *&atoken.val[4] = v7;
  v92 = audit_token_to_pid(&atoken);
  if (MX_FeatureFlags_IsSessionBasedMutingEnabled())
  {
    v102 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v9 = v102;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFE;
    }

    if (v10)
    {
      *v103 = 136315138;
      *&v103[4] = "[MXSessionManager(Utilities) updateMuteState:muteValue:]";
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v16 = 0;
LABEL_17:
    v17 = 0;
    refreshed = -15685;
    goto LABEL_18;
  }

  if (a4)
  {
    v11 = *&a3->var0[4];
    *atoken.val = *a3->var0;
    *&atoken.val[4] = v11;
    if ([(MXSessionManager *)self isAuditTokenValid:&atoken])
    {
      v12 = *&a3->var0[4];
      *atoken.val = *a3->var0;
      *&atoken.val[4] = v12;
      if ([(MXSessionManager *)self isAuditTokenValid:&atoken])
      {
        if (dword_1EB75DE40)
        {
          v102 = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v14 = v102;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v15 = v14;
          }

          else
          {
            v15 = v14 & 0xFFFFFFFE;
          }

          if (v15)
          {
            *v103 = 136315138;
            *&v103[4] = "[MXSessionManager(Utilities) updateMuteState:muteValue:]";
            LODWORD(v89) = 12;
            v86 = v103;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v44 = *&a3->var0[4];
        *atoken.val = *a3->var0;
        *&atoken.val[4] = v44;
        v16 = [(MXSessionManager *)self copySessionToBeMuted:&atoken, v86, v89];
        if (v16)
        {
LABEL_62:
          v22 = 0;
LABEL_82:
          refreshed = 0;
          goto LABEL_83;
        }

        if (dword_1EB75DE40)
        {
          v102 = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v45 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v46 = v102;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v47 = v46;
          }

          else
          {
            v47 = v46 & 0xFFFFFFFE;
          }

          if (v47)
          {
            *v103 = 136315138;
            *&v103[4] = "[MXSessionManager(Utilities) updateMuteState:muteValue:]";
            LODWORD(v89) = 12;
            v86 = v103;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v17 = MX_RunningBoardServices_CopyDisplayIDForPID(v92);
        if (v17)
        {
          -[MXSessionManager updateMutedBundleIDs:muteValue:](self, "updateMutedBundleIDs:muteValue:", v17, [a4 BOOLValue]);
          if (dword_1EB75DE40)
          {
            v102 = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            v49 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v50 = v102;
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              v51 = v50;
            }

            else
            {
              v51 = v50 & 0xFFFFFFFE;
            }

            if (v51)
            {
              v52 = [a4 BOOLValue];
              v53 = "UnMuted";
              *&v103[4] = "[MXSessionManager(Utilities) updateMuteState:muteValue:]";
              *v103 = 136315650;
              if (v52)
              {
                v53 = "Muted";
              }

              *&v103[12] = 2114;
              *&v103[14] = v17;
              *&v103[22] = 2082;
              v104 = v53;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v16 = 0;
          refreshed = 0;
          goto LABEL_18;
        }
      }

      v22 = 0;
      v16 = 0;
      goto LABEL_82;
    }

    if (dword_1EB75DE40)
    {
      v102 = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v24 = v102;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 & 0xFFFFFFFE;
      }

      if (v25)
      {
        *v103 = 136315138;
        *&v103[4] = "[MXSessionManager(Utilities) updateMuteState:muteValue:]";
        LODWORD(v89) = 12;
        v86 = v103;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    -[MXSessionManager setUplinkMuteSetByClient:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance", v86, v89), "setUplinkMuteSetByClient:", [a4 BOOLValue]);
    v16 = [+[MXSessionManager sharedInstance](MXSessionManager copyPhoneCallBehaviorRecordingSession];
    if (v16)
    {
      goto LABEL_62;
    }

    v102 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v30 = v102;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v30;
    }

    else
    {
      v31 = v30 & 0xFFFFFFFE;
    }

    if (v31)
    {
      v32 = [a4 BOOLValue];
      v33 = "UnMute";
      if (v32)
      {
        v33 = "Mute";
      }

      *v103 = 136315394;
      *&v103[4] = "[MXSessionManager(Utilities) updateMuteState:muteValue:]";
      *&v103[12] = 2082;
      *&v103[14] = v33;
      LODWORD(v89) = 22;
      v86 = v103;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if ([a4 BOOLValue])
    {
      v38 = [MEMORY[0x1E696AD98] numberWithBool:1];
    }

    else
    {
      v38 = 0;
    }

    [(MXSessionManager *)self setApplyUplinkMuteToPhoneCallBehaviorSession:v38, v86, v89];
    if (([a4 BOOLValue] & 1) == 0)
    {
      if (dword_1EB75DE40)
      {
        v102 = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v40 = v102;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v41 = v40;
        }

        else
        {
          v41 = v40 & 0xFFFFFFFE;
        }

        if (v41)
        {
          v42 = [(MXSessionManager *)self uplinkMutedBundleID];
          v43 = [a4 BOOLValue];
          *v103 = 136315651;
          *&v103[4] = "[MXSessionManager(Utilities) updateMuteState:muteValue:]";
          *&v103[12] = 2113;
          *&v103[14] = v42;
          *&v103[22] = 1024;
          LODWORD(v104) = v43;
          LODWORD(v89) = 28;
          v86 = v103;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [(MXSessionManager *)self removeEntryFromMutedBundleIDCache:0 bundleID:[(MXSessionManager *)self uplinkMutedBundleID:v86]];
      [(MXSessionManager *)self setUplinkMutedBundleID:0];
    }

    CMSMNotificationUtility_PostUplinkMuteDidChange([a4 BOOLValue]);
    v22 = 0;
    v16 = 0;
    refreshed = -15685;
  }

  else
  {
    v21 = *&a3->var0[4];
    *atoken.val = *a3->var0;
    *&atoken.val[4] = v21;
    if ([(MXSessionManager *)self isAuditTokenValid:&atoken])
    {
      v22 = 0;
      v16 = 0;
      refreshed = 0;
      a4 = 0;
    }

    else
    {
      if (dword_1EB75DE40)
      {
        v102 = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v27 = v102;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v28 = v27;
        }

        else
        {
          v28 = v27 & 0xFFFFFFFE;
        }

        if (v28)
        {
          *v103 = 136315138;
          *&v103[4] = "[MXSessionManager(Utilities) updateMuteState:muteValue:]";
          LODWORD(v89) = 12;
          v86 = v103;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v16 = [+[MXSessionManager sharedInstance](MXSessionManager copyPhoneCallBehaviorRecordingSession:v86];
      v34 = [v16 prefersBluetoothAccessoryMuting];
      if (v34)
      {
        refreshed = 0;
      }

      else
      {
        v102 = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v36 = v102;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v37 = v36;
        }

        else
        {
          v37 = v36 & 0xFFFFFFFE;
        }

        if (v37)
        {
          *v103 = 136315138;
          *&v103[4] = "[MXSessionManager(Utilities) updateMuteState:muteValue:]";
          LODWORD(v90) = 12;
          v87 = v103;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        refreshed = -15685;
      }

      v48 = [v16 isRecordingMuted];
      a4 = [MEMORY[0x1E696AD98] numberWithBool:v48 ^ 1u];
      v22 = v34 ^ 1;
    }
  }

LABEL_83:
  v17 = CMSUtility_CopyBundleID(v16);
  if (!v17)
  {
    if (dword_1EB75DE40)
    {
      v102 = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v54 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v55 = v102;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v56 = v55;
      }

      else
      {
        v56 = v55 & 0xFFFFFFFE;
      }

      if (v56)
      {
        *v103 = 136315394;
        *&v103[4] = "[MXSessionManager(Utilities) updateMuteState:muteValue:]";
        *&v103[12] = 1024;
        *&v103[14] = v92;
        LODWORD(v89) = 18;
        v86 = v103;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v17 = MX_RunningBoardServices_CopyDisplayIDForPID(v92);
    if (!v17)
    {
      v102 = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v66 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v67 = v102;
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v68 = v67;
      }

      else
      {
        v68 = v67 & 0xFFFFFFFE;
      }

      if (v68)
      {
        v69 = [a4 BOOLValue];
        v70 = "UnMute";
        if (v69)
        {
          v70 = "Mute";
        }

        *v103 = 136315394;
        *&v103[4] = "[MXSessionManager(Utilities) updateMuteState:muteValue:]";
        *&v103[12] = 2082;
        *&v103[14] = v70;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_17;
    }
  }

  v57 = [a4 BOOLValue];
  if (((v22 | v57 ^ [(NSSet *)[(MXSessionManager *)self mutedSessionBundleIDs] containsObject:v17]) & 1) == 0)
  {
    if (dword_1EB75DE40)
    {
      v102 = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v58 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v59 = v102;
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v60 = v59;
      }

      else
      {
        v60 = v59 & 0xFFFFFFFE;
      }

      if (v60)
      {
        v61 = [a4 BOOLValue];
        v62 = "UnMuted";
        *&v103[4] = "[MXSessionManager(Utilities) updateMuteState:muteValue:]";
        *v103 = 136315650;
        if (v61)
        {
          v62 = "Muted";
        }

        *&v103[12] = 2114;
        *&v103[14] = v17;
        *&v103[22] = 2082;
        v104 = v62;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_18;
  }

  if ([v16 hasPhoneCallBehavior])
  {
    if (((v22 | [v16 isRecording]) & 1) == 0)
    {
      v22 = 0;
      goto LABEL_122;
    }
  }

  else if (!v22)
  {
    goto LABEL_122;
  }

  if (dword_1EB75DE40)
  {
    v102 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v63 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v64 = v102;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      v65 = v64;
    }

    else
    {
      v65 = v64 & 0xFFFFFFFE;
    }

    if (v65)
    {
      *v103 = 136315394;
      *&v103[4] = "[MXSessionManager(Utilities) updateMuteState:muteValue:]";
      *&v103[12] = 1024;
      *&v103[14] = v22;
      LODWORD(v91) = 18;
      v88 = v103;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v22 = 1;
LABEL_122:
  if (v16)
  {
    [v16 auditToken];
    v71 = *&atoken.val[4];
    *a3->var0 = *atoken.val;
    *&a3->var0[4] = v71;
  }

  if (refreshed)
  {
    if (!v22)
    {
      goto LABEL_18;
    }

    goto LABEL_126;
  }

  -[MXSessionManager updateMutedBundleIDs:muteValue:](self, "updateMutedBundleIDs:muteValue:", v17, [a4 BOOLValue]);
  if ([a4 BOOLValue])
  {
    [(MXSessionManager *)self setUplinkMutedBundleID:v17];
  }

  else
  {
    [(MXSessionManager *)self setUplinkMutedBundleID:0];
  }

  if ([a4 BOOLValue])
  {
    v73 = 1;
  }

  else
  {
    v73 = 2;
  }

  *(v99 + 6) = v73;
  refreshed = CMSMUtility_AudioToolboxServerRefreshMuteState();
  if (refreshed)
  {
    v102 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v74 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v75 = v102;
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      v76 = v75;
    }

    else
    {
      v76 = v75 & 0xFFFFFFFE;
    }

    if (v76)
    {
      v77 = [a4 BOOLValue];
      v78 = "UnMuting";
      *&v103[4] = "[MXSessionManager(Utilities) updateMuteState:muteValue:]";
      *v103 = 136315650;
      if (v77)
      {
        v78 = "Muting";
      }

      *&v103[12] = 2082;
      *&v103[14] = v78;
      *&v103[22] = 2114;
      v104 = v17;
      LODWORD(v91) = 32;
      v88 = v103;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *(v99 + 6) = 3;
    if (v22)
    {
LABEL_126:
      *v103 = 0;
      *&v103[8] = v103;
      *&v103[16] = 0x3052000000;
      v104 = __Block_byref_object_copy__15;
      v105 = __Block_byref_object_dispose__15;
      v106 = objc_alloc_init(getAAAudioSessionControlClass());
      if (updateMuteState_muteValue__onceToken != -1)
      {
        [MXSessionManager(Utilities) updateMuteState:muteValue:];
      }

      [*(*&v103[8] + 40) setDispatchQueue:{updateMuteState_muteValue__sBluetoothMuteActionQueue, v88, v91}];
      if (dword_1EB75DE40)
      {
        *type = 0;
        v96 = OS_LOG_TYPE_DEFAULT;
        v72 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v93[0] = MEMORY[0x1E69E9820];
      v93[1] = 3221225472;
      v93[2] = __57__MXSessionManager_Utilities__updateMuteState_muteValue___block_invoke_27;
      v93[3] = &unk_1E7AECC28;
      v85 = *&a3->var0[4];
      v94 = *a3->var0;
      v95 = v85;
      v93[4] = v17;
      v93[5] = v103;
      v93[6] = &v98;
      v93[7] = UpTimeNanoseconds;
      MXDispatchAsync("[MXSessionManager(Utilities) updateMuteState:muteValue:]", "MXSessionManagerUtilities.m", 922, 0, 0, updateMuteState_muteValue__sBluetoothMuteActionQueue, v93);
      _Block_object_dispose(v103, 8);
    }
  }

  else
  {
    if (dword_1EB75DE40)
    {
      v102 = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v79 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v80 = v102;
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        v81 = v80;
      }

      else
      {
        v81 = v80 & 0xFFFFFFFE;
      }

      if (v81)
      {
        v82 = [a4 BOOLValue];
        v83 = "UnMuted";
        *&v103[4] = "[MXSessionManager(Utilities) updateMuteState:muteValue:]";
        *v103 = 136315650;
        if (v82)
        {
          v83 = "Muted";
        }

        *&v103[12] = 2114;
        *&v103[14] = v17;
        *&v103[22] = 2082;
        v104 = v83;
        LODWORD(v91) = 32;
        v88 = v103;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    -[MXSessionManager setUplinkMuteSetByClient:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance", v88, v91), "setUplinkMuteSetByClient:", [a4 BOOLValue]);
    CMSMNotificationUtility_PostUplinkMuteDidChange([a4 BOOLValue]);
    refreshed = 0;
    if (v22)
    {
      goto LABEL_126;
    }
  }

LABEL_18:

  _Block_object_dispose(&v98, 8);
  v19 = *MEMORY[0x1E69E9840];
  return refreshed;
}

dispatch_queue_t __57__MXSessionManager_Utilities__updateMuteState_muteValue___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("com.apple.mediaexperience.BluetoothMuteActionQueue", v0);
  updateMuteState_muteValue__sBluetoothMuteActionQueue = result;
  return result;
}

uint64_t __57__MXSessionManager_Utilities__updateMuteState_muteValue___block_invoke_27(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v1 = *(a1 + 40);
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v5[1] = 3221225472;
  v5[2] = __57__MXSessionManager_Utilities__updateMuteState_muteValue___block_invoke_2;
  v5[3] = &unk_1E7AECC00;
  v6 = v1;
  v3 = *(a1 + 80);
  v8 = *(a1 + 64);
  v9 = v3;
  v5[4] = *(a1 + 32);
  v7 = *(a1 + 56);
  return [v2 activateWithCompletion:v5];
}

void __57__MXSessionManager_Utilities__updateMuteState_muteValue___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(*(*(a1 + 40) + 8) + 40);
    v6 = *(*(*(a1 + 48) + 8) + 24);
    v7 = *(a1 + 80);
    v12[0] = *(a1 + 64);
    v12[1] = v7;
    [v5 setMuteAction:v6 auditToken:v12 bundleIdentifier:v4];
  }

  if (dword_1EB75DE40)
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [*(*(*(a1 + 40) + 8) + 40) invalidate];

  v9 = *MEMORY[0x1E69E9840];
}

- (int)getMuteState:(id *)a3 outMuteValue:(BOOL *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = *&a3->var0[4];
  *atoken.val = *a3->var0;
  *&atoken.val[4] = v7;
  v8 = audit_token_to_pid(&atoken);
  *a4 = 0;
  if (!MX_FeatureFlags_IsSessionBasedMutingEnabled())
  {
    v10 = *&a3->var0[4];
    *atoken.val = *a3->var0;
    *&atoken.val[4] = v10;
    if (![(MXSessionManager *)self isAuditTokenValid:&atoken])
    {
      goto LABEL_6;
    }

    v11 = [(MXSessionManager *)self copySessionWithPID:v8];
    v12 = CMSUtility_CopyBundleID(v11);
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = MX_RunningBoardServices_CopyDisplayIDForPID(v8);
      if (!v13)
      {
        v14 = -15685;
        goto LABEL_10;
      }
    }

    v17 = [(NSSet *)[(MXSessionManager *)self mutedSessionBundleIDs] containsObject:v13];
    v14 = 0;
    *a4 = v17;
LABEL_10:

    goto LABEL_7;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_6:
  v14 = -15685;
LABEL_7:
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)copyPhoneCallBehaviorRecordingSession
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [(MXSessionManager *)self copyMXCoreSessionList];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 isActive] && objc_msgSend(v7, "isRecording") && objc_msgSend(v7, "hasPhoneCallBehavior"))
        {
          v8 = v7;
          goto LABEL_13;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_13:

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)copyActiveSessionWithAudioCategory:(id)a3 andAudioMode:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  if (a3 | a4)
  {
    v6 = [(MXSessionManager *)self copyMXCoreSessionList];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v38 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      if (a3)
      {
        v10 = a4 == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = !v10;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          if ([v13 isActive])
          {
            if (v11)
            {
              if (([v13 hasAudioMode:a4] & 1) != 0 && objc_msgSend(v13, "hasAudioCategory:", a3))
              {
                goto LABEL_26;
              }
            }

            else if (a3)
            {
              if ([v13 hasAudioCategory:a3])
              {
                goto LABEL_26;
              }
            }

            else if (a4 && ([v13 hasAudioMode:a4] & 1) != 0)
            {
LABEL_26:
              if (dword_1EB75DE40)
              {
                v29 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v17 = v29;
                if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
                {
                  v18 = v17;
                }

                else
                {
                  v18 = v17 & 0xFFFFFFFE;
                }

                if (v18)
                {
                  v19 = [v13 clientName];
                  v20 = [v13 audioCategory];
                  v21 = [v13 audioMode];
                  v30 = 136315906;
                  v31 = "[MXSessionManager(Utilities) copyActiveSessionWithAudioCategory:andAudioMode:]";
                  v32 = 2114;
                  v33 = v19;
                  v34 = 2114;
                  v35 = v20;
                  v36 = 2114;
                  v37 = v21;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v14 = v13;
              goto LABEL_34;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v24 objects:v38 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_34:
  }

  else
  {
    v29 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v14 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)copySessionsWithAuditToken:(id *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(MXSessionManager *)self copyMXCoreSessionList];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        if (v11)
        {
          [*(*(&v17 + 1) + 8 * v10) auditToken];
        }

        else
        {
          memset(v16, 0, sizeof(v16));
        }

        v12 = *&a3->var0[4];
        v15[0] = *a3->var0;
        v15[1] = v12;
        if ([(MXSessionManager *)self isAuditTokenEqual:v16 compareTo:v15])
        {
          [v5 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)copySessionWithDisplayID:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = [(MXSessionManager *)self copyMXCoreSessionList];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          if ([v9 displayID] && objc_msgSend(objc_msgSend(v9, "displayID"), "isEqualToString:", a3))
          {
            v10 = v9;
            goto LABEL_14;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
LABEL_14:
  }

  else
  {
    v19 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v10 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)updateBluetoothFrameworkToPlayMuteChime:(id)a3 playRejectTone:(BOOL)a4
{
  v25 = *MEMORY[0x1E69E9840];
  if (([a3 isRecording] & 1) == 0 && !a4)
  {
    if (dword_1EB75DE40)
    {
      v22 = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_21;
  }

  v7 = objc_alloc_init(getAAAudioSessionControlClass());
  v8 = CMSUtility_CopyBundleID(a3);
  v23 = 0u;
  v24 = 0u;
  if (a3)
  {
    [a3 auditToken];
  }

  if (updateBluetoothFrameworkToPlayMuteChime_playRejectTone__onceToken == -1)
  {
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [MXSessionManager(Utilities) updateBluetoothFrameworkToPlayMuteChime:playRejectTone:];
    if (!v8)
    {
LABEL_9:
      v8 = MX_RunningBoardServices_CopyDisplayIDForPID([objc_msgSend(a3 "clientPID")]);
      if (!v8)
      {
        *type = 0;
        v20 = OS_LOG_TYPE_DEFAULT;
        v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v8 = 0;
      }
    }
  }

  [v7 setDispatchQueue:{updateBluetoothFrameworkToPlayMuteChime_playRejectTone__sBluetoothMuteActionQueue, v14, v15}];
  if (a4)
  {
    v10 = 3;
  }

  else if ([a3 isRecordingMuted])
  {
    v10 = 1;
  }

  else if ([a3 isRecordingMuted])
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  if (dword_1EB75DE40)
  {
    *type = 0;
    v20 = OS_LOG_TYPE_DEFAULT;
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v18 = v23;
  v16[2] = __86__MXSessionManager_Utilities__updateBluetoothFrameworkToPlayMuteChime_playRejectTone___block_invoke_46;
  v16[3] = &unk_1E7AECC78;
  v17 = v10;
  v19 = v24;
  v16[4] = v7;
  v16[5] = v8;
  v16[6] = UpTimeNanoseconds;
  MXDispatchAsync("[MXSessionManager(Utilities) updateBluetoothFrameworkToPlayMuteChime:playRejectTone:]", "MXSessionManagerUtilities.m", 1235, 0, 0, updateBluetoothFrameworkToPlayMuteChime_playRejectTone__sBluetoothMuteActionQueue, v16);

LABEL_21:
  v13 = *MEMORY[0x1E69E9840];
}

dispatch_queue_t __86__MXSessionManager_Utilities__updateBluetoothFrameworkToPlayMuteChime_playRejectTone___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("com.apple.mediaexperience.MuteActionQueue", v0);
  updateBluetoothFrameworkToPlayMuteChime_playRejectTone__sBluetoothMuteActionQueue = result;
  return result;
}

uint64_t __86__MXSessionManager_Utilities__updateBluetoothFrameworkToPlayMuteChime_playRejectTone___block_invoke_46(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __86__MXSessionManager_Utilities__updateBluetoothFrameworkToPlayMuteChime_playRejectTone___block_invoke_2;
  v2[3] = &unk_1E7AECC50;
  v5 = *(a1 + 56);
  v6 = *(a1 + 60);
  v7 = *(a1 + 76);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  return [v3 activateWithCompletion:v2];
}

void __86__MXSessionManager_Utilities__updateBluetoothFrameworkToPlayMuteChime_playRejectTone___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v15 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 76);
    v20[0] = *(a1 + 60);
    v20[1] = v7;
    [v5 setMuteAction:v4 auditToken:v20 bundleIdentifier:v6];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__MXSessionManager_Utilities__updateBluetoothFrameworkToPlayMuteChime_playRejectTone___block_invoke_2_47;
  v13[3] = &unk_1E7AE7CE0;
  v13[4] = *(a1 + 32);
  MXDispatchAsync("[MXSessionManager(Utilities) updateBluetoothFrameworkToPlayMuteChime:playRejectTone:]_block_invoke", "MXSessionManagerUtilities.m", 1247, 0, 0, updateBluetoothFrameworkToPlayMuteChime_playRejectTone__sBluetoothMuteActionQueue, v13);
  if (dword_1EB75DE40)
  {
    v15 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v9 = v15;
    if (os_log_type_enabled(v8, type))
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFE;
    }

    if (v10)
    {
      v11 = (FigGetUpTimeNanoseconds() - *(a1 + 48)) / 0xF4240uLL;
      v16 = 136315394;
      v17 = "[MXSessionManager(Utilities) updateBluetoothFrameworkToPlayMuteChime:playRejectTone:]_block_invoke";
      v18 = 2048;
      v19 = v11;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __86__MXSessionManager_Utilities__updateBluetoothFrameworkToPlayMuteChime_playRejectTone___block_invoke_2_47(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 32);
}

- (id)getUncustomizedCategory:(id)a3
{
  result = [(NSDictionary *)[(MXSessionManager *)self figUncustomizedCategory_Dict] objectForKey:a3];
  if (!result)
  {
    return a3;
  }

  return result;
}

- (id)getDefaultBuiltInCustomizedAlternateCategory:(id)a3 defaultBuiltInRoute:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  if ([a4 isEqualToString:@"Speaker"])
  {
    v7 = [(MXSessionManager *)self figCustomizedCategoryWithDefaultBuiltIn_Speaker_Dict];
  }

  else if ([a4 isEqualToString:@"Receiver"])
  {
    v7 = [(MXSessionManager *)self figCustomizedCategoryWithDefaultBuiltIn_Receiver_Dict];
  }

  else
  {
    if (a4)
    {
      result = 0;
      goto LABEL_11;
    }

    v7 = [(MXSessionManager *)self figCustomizedCategoryWithDefaultBuiltIn_Default_Dict];
  }

  result = [(NSDictionary *)v7 objectForKey:a3];
LABEL_11:
  if (!result)
  {
    return a3;
  }

  return result;
}

- (id)getShadowingAudioSessionOptionsAsString:(unsigned int)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = v4;
  if ((v3 & 8) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    [v5 addObject:@"SessionInterruption"];
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  [v4 addObject:@"HardwareRouteConfiguration"];
  if ((v3 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v3 & 4) != 0)
  {
LABEL_4:
    [v5 addObject:@"MirrorActivationLifeCycle"];
  }

LABEL_5:
  v6 = [v5 componentsJoinedByString:{@", "}];

  return v6;
}

- (BOOL)isAudioCategoryMuteable:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [(NSDictionary *)[(MXSessionManager *)self figCategoryToMuteabilityDict] objectForKey:a3];

  return [v3 isEqualToString:0x1F2891890];
}

- (BOOL)isCurrentPortTypeMuteable:(unsigned int)a3
{
  if (a3)
  {
    v4 = [(NSDictionary *)[(MXSessionManager *)self vadOutputPortTypeToMuteabilityDict] objectForKey:a3];
    v3 = vars8;
  }

  else
  {
    v4 = 0;
  }

  return [v4 isEqualToString:0x1F2891890];
}

- (BOOL)isAnyOtherUnduckedPlayingSessionMatchingVolumeRampCategory:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  LastVolumeRampCategory = vaemVolumeStateGetLastVolumeRampCategory();
  CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(a3);
  v6 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (v11 != a3 && [*(*(&v15 + 1) + 8 * i) isPlaying] && (objc_msgSend(v11, "isDucked") & 1) == 0 && CurrentOutputVADID == CMSUtility_GetCurrentOutputVADID(v11) && PVMCategoriesAreEquivalent(-[MXSessionManager getUncustomizedCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "getUncustomizedCategory:", objc_msgSend(a3, "audioCategory")), objc_msgSend(a3, "audioMode"), LastVolumeRampCategory, 0))
        {
          v12 = 1;
          goto LABEL_15;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_15:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)cancelAnyInProgressRampIfNeeded:(id)a3 reason:(unsigned __int16)a4
{
  v9 = *MEMORY[0x1E69E9840];
  CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(a3);
  if (vaemIsVolumeRampInProgress(CurrentOutputVADID) && ![+[MXSessionManager isAnyOtherUnduckedPlayingSessionMatchingVolumeRampCategory:"isAnyOtherUnduckedPlayingSessionMatchingVolumeRampCategory:"]
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    vaemDeviceCancelVolumeRamp(CurrentOutputVADID, a4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)doesSessionPreferInterruptionOnRouteDisconnect:(id)a3
{
  v4 = [a3 hasAudioCategory:@"MediaPlayback"];
  if ([a3 prefersInterruptionOnRouteDisconnectSetByClient])
  {

    return [a3 prefersInterruptionOnRouteDisconnect];
  }

  else if ((-[NSString isEqualToString:](-[MXNowPlayingAppManager nowPlayingAppDisplayID](+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager, "sharedInstance"), "nowPlayingAppDisplayID"), "isEqualToString:", [a3 displayID]) & v4) == 1)
  {
    return [a3 isAirPlayReceiverSession] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (void)interruptSessionsOnRouteDisconnect:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  IsInterruptOnRouteDisconnectEnabled = MX_FeatureFlags_IsInterruptOnRouteDisconnectEnabled();
  IsContextSystemAudio = FigRoutingManagerContextUtilities_IsContextSystemAudio(a3);
  v6 = CMSMUtility_IsSharePlayCallSessionActive();
  if (IsInterruptOnRouteDisconnectEnabled && IsContextSystemAudio && !v6)
  {
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v7 = [obj countByEnumeratingWithState:&v33 objects:v49 count:16];
    v8 = self;
    if (v7)
    {
      v9 = v7;
      v10 = *v34;
      v30 = *v34;
      do
      {
        v11 = 0;
        v31 = v9;
        do
        {
          if (*v34 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v33 + 1) + 8 * v11);
          if ([v12 isActive])
          {
            v13 = [(MXSessionManager *)v8 doesSessionPreferInterruptionOnRouteDisconnect:v12];
            v14 = CMSUtility_AreRoutingContextsEquivalent(a3, [v12 routingContextUUID]);
            if (dword_1EB75DE40)
            {
              v38 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v16 = v38;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
              {
                v17 = v16;
              }

              else
              {
                v17 = v16 & 0xFFFFFFFE;
              }

              if (v17)
              {
                v18 = [v12 clientName];
                v19 = [v12 audioCategory];
                v39 = 136316162;
                v40 = "[MXSessionManager(Utilities) interruptSessionsOnRouteDisconnect:]";
                v41 = 2114;
                v42 = v18;
                v43 = 2114;
                v44 = v19;
                v45 = 1024;
                v46 = v13;
                v47 = 1024;
                v48 = v14;
                v8 = self;
                LODWORD(v28) = 44;
                v27 = &v39;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v10 = v30;
              v9 = v31;
            }

            if (v14 && v13)
            {
              if (dword_1EB75DE40)
              {
                v38 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v22 = v38;
                if (os_log_type_enabled(v21, type))
                {
                  v23 = v22;
                }

                else
                {
                  v23 = v22 & 0xFFFFFFFE;
                }

                if (v23)
                {
                  v24 = [v12 clientName];
                  v39 = 136315394;
                  v40 = "[MXSessionManager(Utilities) interruptSessionsOnRouteDisconnect:]";
                  v41 = 2114;
                  v42 = v24;
                  LODWORD(v28) = 22;
                  v27 = &v39;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v10 = v30;
                v9 = v31;
              }

              CMSUtilityApplier_PostNotification_StopCommandWithReason(v12, 0, [MEMORY[0x1E696AD98] numberWithInt:{4, v27, v28}]);
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v33 objects:v49 count:16];
      }

      while (v9);
    }
  }

  else if (dword_1EB75DE40)
  {
    v38 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)interruptSessionsForCategoryNoLongerRoutable
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        if ([v7 isActive] && objc_msgSend(v7, "hasInput") && !CMSMVAUtility_IsInputDeviceAvailableForSession(v7))
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          CMSUtilityApplier_PostNotification_StopCommandWithReason(v7, 0, [MEMORY[0x1E696AD98] numberWithInt:{4, v10, v11}]);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)postStopCommandToSessionsWithAudioMode:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v31 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      v18 = v4;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          if ([v9 isActive] && objc_msgSend(v9, "hasAudioMode:", a3))
          {
            if (dword_1EB75DE40)
            {
              v24 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v11 = v24;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
              {
                v12 = v11;
              }

              else
              {
                v12 = v11 & 0xFFFFFFFE;
              }

              if (v12)
              {
                v13 = [v9 clientName];
                v25 = 136315650;
                v26 = "[MXSessionManager(Utilities) postStopCommandToSessionsWithAudioMode:]";
                v27 = 2114;
                v28 = v13;
                v29 = 2114;
                v30 = a3;
                LODWORD(v17) = 32;
                v16 = &v25;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v4 = v18;
            }

            CMSUtilityApplier_PostNotification_StopCommand(v9, 0);
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v19 objects:v31 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v24 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)isSpeechDetectCategory:(id)a3
{
  IsSpeechDetectEnabled = MX_FeatureFlags_IsSpeechDetectEnabled();
  if (IsSpeechDetectEnabled)
  {

    LOBYTE(IsSpeechDetectEnabled) = [a3 isEqualToString:@"SpeechDetect"];
  }

  return IsSpeechDetectEnabled;
}

- (BOOL)isAtleastOneBudNotInEarForA2DPPort
{
  CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
  v3 = CurrentOutputPortAtIndex;
  if (vaeGetPortTypeFromPortID(CurrentOutputPortAtIndex) == 1885892674)
  {
    DoesBTPortSupportInEarDetection = vaeDoesBTPortSupportInEarDetection(v3);
    if (DoesBTPortSupportInEarDetection)
    {
      LOBYTE(DoesBTPortSupportInEarDetection) = vaeGetBTPortPrimaryBudInEarStatus(v3) != 1 || vaeGetBTPortSecondaryBudInEarStatus(v3) != 1;
    }
  }

  else
  {
    LOBYTE(DoesBTPortSupportInEarDetection) = 0;
  }

  return DoesBTPortSupportInEarDetection;
}

- (void)interruptAllSessionsAndSystemSounds:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(MXSessionManager *)self copyMXCoreSessionList];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 isActive])
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          CMSUtilityApplier_PostNotification_StopCommand(v8, 0);
        }

        [objc_msgSend(v8 clientPID];
        CMSystemSoundMgr_StopSystemSoundsforPID();
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (unsigned)getSpeechDetectStyleForSessionConfiguration:(id)a3
{
  if ([a3 prefersBluetoothHighQualityContentCapture])
  {
    v4 = 1;
  }

  else
  {
    v4 = [a3 prefersBluetoothFarFieldCapture];
  }

  if (![a3 prefersSpeechDetectEnabled] || objc_msgSend(a3, "clientPriority") == 10 || (*&v4 & ((objc_msgSend(a3, "currentlyControllingFlags") & 2) >> 1) & 1) != 0)
  {
    return 4;
  }

  if ([a3 hasAudioMode:@"SpokenAudio"])
  {
    return 2;
  }

  if (([a3 hasAudioCategory:@"MediaPlayback"] & 1) != 0 || (objc_msgSend(a3, "hasAudioCategory:", @"MediaPlaybackNoSpeaker") & 1) != 0 || (objc_msgSend(a3, "hasAudioCategory:", @"Audio/Video") & 1) != 0 || (objc_msgSend(a3, "hasAudioCategory:", @"AmbientSound") & 1) != 0 || (objc_msgSend(a3, "hasAudioCategory:", @"SoloAmbientSound") & 1) != 0 || (objc_msgSend(a3, "hasAudioCategory:", @"UserInterfaceSoundEffects") & 1) != 0 || (objc_msgSend(a3, "hasAudioCategory:", @"AudioProcessing") & 1) != 0 || (objc_msgSend(a3, "hasAudioCategory:", @"LiveAudio") & 1) != 0 || (objc_msgSend(a3, "hasAudioCategory:", @"Notice") & 1) != 0 || objc_msgSend(a3, "isPlayingOutput") && CMSMUtility_IsPlayAndRecordCategory(objc_msgSend(a3, "audioCategory")) && objc_msgSend(a3, "hasAudioMode:", @"Default"))
  {
    if (!MX_FeatureFlags_IsInterruptLongFormVideoOnSpeechDetectEnabled() || ([a3 hasAudioMode:@"MoviePlayback"] & 1) == 0 && (objc_msgSend(a3, "isLongFormVideo") & 1) == 0)
    {
      return 3;
    }

    return 2;
  }

  if (-[MXSessionManager sessionUtilizesIndependentRecordingOnly:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "sessionUtilizesIndependentRecordingOnly:", a3) || ([a3 hasAudioMode:@"LivePhoto"] & 1) != 0)
  {
    return 1;
  }

  if ([a3 hasAudioCategory:@"SystemSoundsAndHaptics"])
  {
    return 1;
  }

  return 4;
}

- (unsigned)currentSpeechDetectStyle:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
  v5 = vaeDoesBluetoothSupportFeature(CurrentOutputPortAtIndex) == 0;
  v6 = [+[MXSessionManager sharedInstance](MXSessionManager wombatEnabled];
  v7 = v6;
  if (v6)
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  if (!v6 && !v5)
  {
    v8 = [a3 hasAudioCategory:@"SpeechDetect"];
  }

  v9 = [(MXSessionManager *)self copyMXCoreSessionList];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
LABEL_9:
    v13 = 0;
    while (1)
    {
      if (*v23 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = v8 ? v7 : 1;
      if ((v14 | v5))
      {
        break;
      }

      v15 = *(*(&v22 + 1) + 8 * v13);
      if (([v15 hasAudioCategory:@"SpeechDetect"] & 1) == 0 && objc_msgSend(v15, "isActive") && !CMSUtility_DoesSessionRemainActiveAfterStoppingPlaying(v15))
      {
        v16 = [(MXSessionManager *)self getSpeechDetectStyleForSessionConfiguration:v15];
        if (v16 == 2)
        {
          v8 = 2;
        }

        else
        {
          if (v16 == 4)
          {
            v8 = 4;
            break;
          }

          if (v16 == 3 && v8 - 4 < 0xFFFFFFFE)
          {
            v8 = 3;
          }
        }
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v11)
        {
          goto LABEL_9;
        }

        break;
      }
    }
  }

  if (v8 != currentSpeechDetectStyle__sPreviousSpeechDetectStyle && dword_1EB75DE40 != 0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  currentSpeechDetectStyle__sPreviousSpeechDetectStyle = v8;
  v19 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)shouldSetDeviceFormatAndSampleRate:(id)a3
{
  if (a3)
  {
    return ([a3 currentlyControllingFlags] >> 1) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)isAnySessionWithMappedVolumeCategoryPlaying:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [(MXSessionManager *)self copyMXCoreSessionList];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = PVMGetMappedCategory([v9 audioCategory]);
        if ([v9 isActive] && objc_msgSend(v9, "isPlaying") && (objc_msgSend(v9, "doesntActuallyPlayAudio") & 1) == 0 && objc_msgSend(v9, "isPlayingOutput") && (objc_msgSend(v10, "isEqualToString:", a3) & 1) != 0)
        {
          v11 = 1;
          goto LABEL_15;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_15:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)isPotentialSharePlayMediaSessionActive
{
  v2 = [(MXSessionManager *)self copyPotentialActiveSharePlayMediaSession];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)sessionCanBecomeSharePlayMedia:(id)a3
{
  if (!-[MXSessionManager isAudioCategoryAllowedForSharePlayMedia:](self, "isAudioCategoryAllowedForSharePlayMedia:", [a3 audioCategory]) || !objc_msgSend(a3, "isEligibleForNowPlayingAppConsideration"))
  {
    return 0;
  }

  return [a3 allowedToBeNowPlayingApp];
}

- (id)copyPotentialActiveSharePlayMediaSession
{
  v19 = *MEMORY[0x1E69E9840];
  if (!MX_FeatureFlags_IsSharePlayEnabled())
  {
    v5 = 0;
LABEL_19:
    v12 = *MEMORY[0x1E69E9840];
    return v5;
  }

  SharePlayMediaSession = CMSMUtility_GetSharePlayMediaSession();
  if (![SharePlayMediaSession isActive])
  {
    v6 = [(MXSessionManager *)self copyMXCoreSessionList];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if ([v11 isActive] && -[MXSessionManager sessionCanBecomeSharePlayMedia:](self, "sessionCanBecomeSharePlayMedia:", v11))
          {
            v5 = v11;
            goto LABEL_18;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v3 = *MEMORY[0x1E69E9840];

  return SharePlayMediaSession;
}

- (BOOL)isSessionAllowedToStartRecordingTemporarily:(id)a3
{
  v4 = [a3 displayID];
  v5 = [(MXSessionManager *)self appAllowedToInitiateRecordingTemporarily];
  if (!v4 || !v5)
  {
    return 0;
  }

  return [v4 isEqualToString:v5];
}

- (void)postDisallowedActivationDueToContinuityCaptureNotification:(BOOL)a3 videoPlaybackWasIntended:(BOOL)a4
{
  v14 = *MEMORY[0x1E69E9840];
  if (CMSMDeviceState_ItsAniPad())
  {
    v6 = MXGetNotificationSenderQueue();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __115__MXSessionManager_Utilities__postDisallowedActivationDueToContinuityCaptureNotification_videoPlaybackWasIntended___block_invoke;
    v9[3] = &__block_descriptor_34_e5_v8__0l;
    v10 = a3;
    v11 = a4;
    MXDispatchAsync("[MXSessionManager(Utilities) postDisallowedActivationDueToContinuityCaptureNotification:videoPlaybackWasIntended:]", "MXSessionManagerUtilities.m", 2149, 0, 0, v6, v9);
  }

  else
  {
    v13 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __115__MXSessionManager_Utilities__postDisallowedActivationDueToContinuityCaptureNotification_videoPlaybackWasIntended___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (_block_invoke_registrationStatus && (_block_invoke_registrationStatus = notify_register_check("com.apple.MediaExperience.DisallowedActivationDueToContinuityCapture", &_block_invoke_notificationToken)) != 0 || (!*(a1 + 33) ? (v2 = *(a1 + 32)) : (v2 = *(a1 + 32) | 2), notify_set_state(_block_invoke_notificationToken, v2) || (result = notify_post("com.apple.MediaExperience.DisallowedActivationDueToContinuityCapture"), result) || dword_1EB75DE40))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)postDisallowedRecordingNotification:(unint64_t)a3
{
  v5 = MXGetNotificationSenderQueue();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__MXSessionManager_Utilities__postDisallowedRecordingNotification___block_invoke;
  v6[3] = &unk_1E7AEBCA0;
  v6[4] = self;
  v6[5] = a3;
  MXDispatchAsync("[MXSessionManager(Utilities) postDisallowedRecordingNotification:]", "MXSessionManagerUtilities.m", 2198, 0, 0, v5, v6);
}

uint64_t __67__MXSessionManager_Utilities__postDisallowedRecordingNotification___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (_block_invoke_2_registrationStatus && (_block_invoke_2_registrationStatus = notify_register_check("com.apple.MediaExperience.DisallowedRecording", &_block_invoke_2_notificationToken)) != 0 || notify_set_state(_block_invoke_2_notificationToken, *(a1 + 40)) || (result = notify_post("com.apple.MediaExperience.DisallowedRecording"), result) || dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)getDisallowedRecordingReasonString:(unint64_t)a3
{
  if (a3 == 1)
  {
    return @"OnenessIsActive";
  }

  else
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN(%llu)", a3];
  }
}

- (void)updateActiveSessionsOnDeviceRelinquished
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [(MXSessionManager *)self copyMXCoreSessionList];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6) setWasActiveWhenDeviceOwnershipRelinquished:{objc_msgSend(*(*(&v8 + 1) + 8 * v6), "isActive")}];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)getCleanupSessionAssertionReasonString:(int64_t)a3
{
  if (a3 >= 3)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN reason = %d", a3];
  }

  else
  {
    return off_1E7AECD68[a3];
  }
}

- (void)cleanupSessionAssertionsIfNeeded:(id)a3 cleanupReason:(int64_t)a4
{
  if (a3 && [a3 audioSessionID])
  {
    objc_initWeak(&location, a3);
    v6 = [a3 audioSessionID];
    if ([a3 clientName])
    {
      v7 = [a3 clientName];
    }

    else
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN-client-%u", v6];
    }

    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v7];
    v9 = MXGetSerialQueue();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __78__MXSessionManager_Utilities__cleanupSessionAssertionsIfNeeded_cleanupReason___block_invoke;
    v10[3] = &unk_1E7AECCC0;
    objc_copyWeak(v11, &location);
    v12 = v6;
    v11[1] = a4;
    v10[4] = v8;
    MXDispatchAsync("[MXSessionManager(Utilities) cleanupSessionAssertionsIfNeeded:cleanupReason:]", "MXSessionManagerUtilities.m", 2302, 0, 0, v9, v10);
    objc_destroyWeak(v11);
    objc_destroyWeak(&location);
  }
}

void __78__MXSessionManager_Utilities__cleanupSessionAssertionsIfNeeded_cleanupReason___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 40));
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if ([Weak playbackAssertionRef])
  {
    [v3 addObject:{objc_msgSend(Weak, "playbackAssertionRef")}];
  }

  if ([Weak resumeAssertionRef])
  {
    [v3 addObject:{objc_msgSend(Weak, "resumeAssertionRef")}];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [Weak hostProcessPlaybackAssertions];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:{objc_msgSend(objc_msgSend(Weak, "hostProcessPlaybackAssertions"), "objectForKey:", *(*(&v11 + 1) + 8 * v8++))}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"0x%x", *(a1 + 56)];
  MX_RunningBoardServices_InvalidatePlaybackAssertionsContainingSessionID(v9, v3, *(a1 + 48));

  v10 = *MEMORY[0x1E69E9840];
}

- (id)copyEvaluatedBadgeType:(id)a3
{
  EvaluatedBadgeType = FigRoutingManagerUtilities_GetEvaluatedBadgeType();

  return EvaluatedBadgeType;
}

- (void)updateBadgeType:(id)a3 matchingPID:(int)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([objc_msgSend(v11 "clientPID")] == a4)
        {
          [v11 setBadgeType:a3];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)updateSupportedOutputChannelLayouts:(id)a3 matchingPID:(int)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([objc_msgSend(v11 "clientPID")] == a4)
        {
          [v11 setSupportedOutputChannelLayouts:a3];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)isPIDAllowedToBeNowPlayingApp:(int)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([objc_msgSend(v10 "clientPID")] == a3)
        {
          if (CMSUtility_GetIsEligibleForNowPlayingAppConsideration(v10))
          {
            ++v7;
            if (![v10 allowedToBeNowPlayingApp])
            {
              v11 = 0;
              goto LABEL_15;
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = 1;
LABEL_15:

  if (v7)
  {
    result = v11;
  }

  else
  {
    result = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)copySessionEligibleForNowPlayingAppConsideration:(int)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
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
        if ([objc_msgSend(v9 "clientPID")] == a3 && objc_msgSend(v9, "isEligibleForNowPlayingAppConsideration"))
        {
          v10 = v9;
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

  v10 = 0;
LABEL_12:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)isBTRouteSameDeviceWithDifferentProfile:(unsigned int)a3 newNumRoutes:(unsigned int)a4 oldRouteTypes:(id)a5 newRouteTypes:(id)a6 oldRouteIdentifiers:(id)a7 newRouteIdentifiers:(id)a8
{
  LOBYTE(v8) = 0;
  if (a3 == 1 && a4 == 1)
  {
    if ([a5 containsObject:@"HeadphonesBT"])
    {
      v13 = 0;
    }

    else
    {
      v13 = [a5 containsObject:@"HeadsetBT"] ^ 1;
    }

    if ([a6 containsObject:@"HeadphonesBT"])
    {
      v14 = 0;
    }

    else
    {
      v14 = [a6 containsObject:@"HeadsetBT"] ^ 1;
    }

    if ((v13 | v14))
    {
      LOBYTE(v8) = 0;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v16 = 0;
      v17 = 0;
      CMSMUtility_CreateTokensFromDeviceUID([a7 objectAtIndex:0], &v19, &v17);
      CMSMUtility_CreateTokensFromDeviceUID([a8 objectAtIndex:0], &v18, &v16);
      LOBYTE(v8) = 0;
      if (v19 && v18 && v17 && v16)
      {
        if ([(__CFString *)v19 isEqualToString:?])
        {
          v8 = [(__CFString *)v17 isEqualToString:v16]^ 1;
        }

        else
        {
          LOBYTE(v8) = 0;
        }
      }
    }
  }

  return v8;
}

- (BOOL)sessionUtilizesIndependentRecordingOnly:(id)a3
{
  IsAdditiveRoutingEnabled = CMSMVAUtility_IsAdditiveRoutingEnabled();
  if (IsAdditiveRoutingEnabled)
  {
    if (([a3 isRoutedToOnDemandVAD] & 1) != 0 || (IsAdditiveRoutingEnabled = objc_msgSend(a3, "willRouteToOnDemandVADOnActivation")) != 0)
    {
      if ([a3 hasAudioMode:@"SoundRecognition"])
      {
        LOBYTE(IsAdditiveRoutingEnabled) = 1;
      }

      else
      {
        IsAdditiveRoutingEnabled = [a3 mixesWithEveryone];
        if (IsAdditiveRoutingEnabled)
        {
          LOBYTE(IsAdditiveRoutingEnabled) = CMSMUtility_IsCategoryInputOnly([a3 audioCategory]);
        }
      }
    }
  }

  return IsAdditiveRoutingEnabled;
}

- (BOOL)canSessionsCoexistDueToIndependentRecording:(id)a3 victim:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  if (!CMSMVAUtility_IsAdditiveRoutingEnabled() || (v6 = a4, v7 = a3, ![+[MXSessionManager sharedInstance](MXSessionManager sessionUtilizesIndependentRecordingOnly:"sessionUtilizesIndependentRecordingOnly:", a3]) && (v6 = a3, v7 = a4, ![+[MXSessionManager sessionUtilizesIndependentRecordingOnly:"sessionUtilizesIndependentRecordingOnly:"])
  {
LABEL_16:
    LOBYTE(v7) = 0;
    goto LABEL_17;
  }

  if (v7)
  {
    if (([v7 prefersEchoCancelledInput] & 1) == 0 && objc_msgSend(v6, "isTheAssistant"))
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_16;
    }

    if ([v7 hasAudioMode:@"SoundRecognition"])
    {
      if (dword_1EB75DE40)
      {
        v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        LOBYTE(v7) = 1;
LABEL_18:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    if (![v6 hasPhoneCallBehavior])
    {
LABEL_15:
      LOBYTE(v7) = 1;
      goto LABEL_17;
    }

    LOBYTE(v7) = [v7 hasEntitlementToRecordDuringCall];
    if (dword_1EB75DE40)
    {
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      goto LABEL_18;
    }
  }

LABEL_17:
  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)canSessionsCoexistDueToMediaMultitasking:(id)a3 victim:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  if (!CMSMDeviceState_SupportsMediaMultitasking() || ![a3 isMediaSession] || !objc_msgSend(a4, "isMediaSession"))
  {
    goto LABEL_7;
  }

  v6 = CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(a3);
  if (v6 != CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(a4))
  {
    if (!dword_1EB75DE40)
    {
LABEL_12:
      v7 = 1;
      goto LABEL_8;
    }

LABEL_10:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    v7 = 1;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_8;
  }

  if (![a3 hasAudioTrack] || (objc_msgSend(a4, "hasAudioTrack") & 1) == 0)
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_7:
  v7 = 0;
LABEL_8:
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)canSessionsCoexistDueToOutputMuting:(id)a3 victim:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  if (CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy() && [a3 isEligibleForOutputMuting] && objc_msgSend(a4, "isEligibleForOutputMuting") && (objc_msgSend(a3, "isOutputMuted") && (objc_msgSend(a3, "hasAudioMode:", @"ShortFormVideo") & 1) != 0 || objc_msgSend(a4, "isOutputMuted") && objc_msgSend(a4, "hasAudioMode:", @"ShortFormVideo")))
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
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

  v7 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)isAirPlaySession:(id)a3
{
  if ([objc_msgSend(a3 "displayID")] & 1) != 0 || (objc_msgSend(objc_msgSend(a3, "displayID"), "containsString:", @"TVAirPlay"))
  {
    return 1;
  }

  return [a3 isAirPlayReceiverSession];
}

- (BOOL)isSiriSessionActiveAndRoutedToSiriOutputVAD
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [(MXSessionManager *)self copyMXCoreSessionList];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if ([v6 isActive])
        {
          if ([v6 isTheAssistant])
          {
            CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(v6);
            if (CurrentOutputVADID == [+[MXSessionManager siriOutputVADID] sharedInstance]
            {
              LOBYTE(v3) = 1;
              goto LABEL_13;
            }
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)isSiriSessionActive:(BOOL *)a3 andMixable:(BOOL *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = [(MXSessionManager *)self copyMXCoreSessionList];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 isTheAssistant])
        {
          if (a3)
          {
            *a3 = [v11 isRecording];
          }

          if (a4)
          {
            *a4 = [v11 mixesWithEveryone];
          }

          v12 = [v11 isActive];
          goto LABEL_15;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_15:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)isMixableSessionBeingInterruptedByNextRecordingClient:(id)a3 victim:(id)a4
{
  if ([a4 mixesWithEveryone])
  {
    v6 = [a4 clientPriority];
    v7 = v6 == [a3 clientPriority];
  }

  else
  {
    v7 = 0;
  }

  v8 = [a4 prefersBeingInterruptedByNextActiveRecordingClient] && CMSMUtility_IsRecordingCategory(objc_msgSend(a3, "audioCategory")) || objc_msgSend(a3, "prefersToInterruptActiveRecordingSessions") && (objc_msgSend(a4, "isTheAssistant") & 1) == 0 && CMSMUtility_IsRecordingCategory(objc_msgSend(a4, "audioCategory"));
  return v7 && v8;
}

- (BOOL)doesAnyActiveSessionExistWhichPrefersToBeInterruptedByNextRecordingClient:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [(MXSessionManager *)self copyMXCoreSessionList];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if (v9 != a3 && [*(*(&v14 + 1) + 8 * i) isActive] && objc_msgSend(v9, "prefersBeingInterruptedByNextActiveRecordingClient"))
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            v10 = 1;
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          else
          {
            v10 = 1;
          }

          goto LABEL_15;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_15:

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)remoteDeviceControlIsAllowed:(unsigned int *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsOnenessEnabled())
  {
    v5 = [(MXSessionManager *)self copyMXCoreSessionList];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          if ([v10 isActive] && objc_msgSend(v10, "hasPhoneCallBehavior") && objc_msgSend(v10, "isRecording"))
          {
            if (dword_1EB75DE40)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v11 = 3;
            goto LABEL_29;
          }

          if ([v10 isTheAssistant] && objc_msgSend(v10, "isRecording"))
          {
            if (dword_1EB75DE40)
            {
              v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v11 = 4;
            goto LABEL_29;
          }

          if ([v10 isActive] && objc_msgSend(v10, "isRecording") && (objc_msgSend(v10, "prefersNoInterruptionsDuringRemoteDeviceControl") & 1) == 0)
          {
            if (dword_1EB75DE40)
            {
              v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v11 = 2;
            goto LABEL_29;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_29:

    if (a3)
    {
      goto LABEL_30;
    }
  }

  else if (a3)
  {
    v11 = 1;
LABEL_30:
    *a3 = v11;
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)getAvailableAudioDestination:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = @"VirtualAudioDevice_Default";
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (vaemIsAudioDestinationAvailable(v9))
        {
          v4 = v9;
          goto LABEL_11;
        }
      }

      v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)copyAudioBehaviorForCategory:(id)a3 mode:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  if (!qword_1EB75E0E8)
  {
    goto LABEL_15;
  }

  if (!a3 || !a4)
  {
    if (!dword_1EB75DE40)
    {
LABEL_15:
      v9 = 0;
      goto LABEL_16;
    }

LABEL_14:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_15;
  }

  CategoryStringWithModeAppended = CMSMUtility_CreateCategoryStringWithModeAppended([+[MXSessionManager getUncustomizedCategory:"getUncustomizedCategory:"];
  if (!CategoryStringWithModeAppended)
  {
    goto LABEL_14;
  }

  v6 = CategoryStringWithModeAppended;
  v7 = CMSMUtility_CopyCurrentRouteTypes();
  if ([a3 isEqualToString:@"VoiceOver"] && -[__CFArray containsObject:](v7, "containsObject:", @"BluetoothLEOutput"))
  {
    v8 = CMSMUtility_CopyVoiceOverOverBTLEAudioDictionary();
  }

  else
  {
    v9 = [qword_1EB75E0E8 objectForKey:v6];
    if (v9)
    {
      goto LABEL_13;
    }

    v8 = [qword_1EB75E0E8 objectForKey:@"Default"];
  }

  v9 = v8;
LABEL_13:

  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_16:
  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)getProjectedAudioDestinationForCategory:(id)a3 mode:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = @"VirtualAudioDevice_Default";
  if (a3 && a4)
  {
    v5 = [+[MXSessionManager sharedInstance](MXSessionManager copyAudioBehaviorForCategory:"copyAudioBehaviorForCategory:mode:" mode:a3, a4];
    v6 = [v5 objectForKey:@"AudioBehaviour_Destination"];
    if (v6)
    {
      v4 = [+[MXSessionManager sharedInstance](MXSessionManager getAvailableAudioDestination:"getAvailableAudioDestination:", v6];
    }
  }

  else if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

- (int)getVolumeButtonDelta:(id)a3 outVolumeDelta:(float *)a4
{
  cf[16] = *MEMORY[0x1E69E9840];
  VolumeButtonClient = CMSessionMgrFindVolumeButtonClient(1u);
  v7 = VolumeButtonClient;
  if (VolumeButtonClient)
  {
    if (![VolumeButtonClient isActive])
    {
      VolumeDeltaIfRoutedToThirdPartyTV = 0.0625;
      goto LABEL_33;
    }

    VolumeDeltaIfRoutedToThirdPartyTV = CMSUtility_GetVolumeDeltaIfRoutedToThirdPartyTV(v7, 0.0625);
  }

  else
  {
    cf[0] = 0;
    v19 = 0;
    *v20 = 0;
    theArray = 0;
    PVMCopyCurrentDeviceRoute(cf, v20, &v19);
    v9 = CMSMUtility_CopySystemAudioRoutingContextUUID();
    FigRoutingManagerContextUtilities_CopyPickedEndpoints(v9, &theArray);
    if (theArray && CFArrayGetCount(theArray) && (CFArrayGetValueAtIndex(theArray, 0), FigEndpointUtility_IsEndpointThirdPartyTVFamily()) && FigCFEqual())
    {
      if (CMSMDeviceState_ButtonsCanChangeRingerVolume())
      {
        VolumeDeltaIfRoutedToThirdPartyTV = 0.0625;
      }

      else
      {
        VolumeDeltaIfRoutedToThirdPartyTV = 0.01;
      }
    }

    else
    {
      VolumeDeltaIfRoutedToThirdPartyTV = 0.0625;
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
      cf[0] = 0;
    }

    if (*v20)
    {
      CFRelease(*v20);
      *v20 = 0;
    }

    if (v19)
    {
      CFRelease(v19);
      v19 = 0;
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  if (VolumeDeltaIfRoutedToThirdPartyTV != 0.0625 && dword_1EB75DE40 != 0)
  {
    LODWORD(v19) = 0;
    LOBYTE(theArray) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v12 = v19;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, theArray))
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 & 0xFFFFFFFE;
    }

    if (v13)
    {
      v14 = [v7 clientName];
      v15 = [v7 isActive];
      *v20 = 136316162;
      *&v20[4] = "[MXSessionManager(Utilities) getVolumeButtonDelta:outVolumeDelta:]";
      v21 = 2114;
      v22 = v14;
      v23 = 2114;
      v24 = a3;
      v25 = 1024;
      v26 = v15;
      v27 = 2048;
      v28 = VolumeDeltaIfRoutedToThirdPartyTV;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_33:
  *a4 = VolumeDeltaIfRoutedToThirdPartyTV;
  v16 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)interruptAllIndependentInputAudioResourceSessionsIfNeeded:(id)a3
{
  if ([a3 isTheAssistant] && objc_msgSend(a3, "isHardwareSafetySession"))
  {
    v4 = +[MXSessionManagerIndependentAudioResource sharedInstance];
    v5 = [a3 displayID];
    v6 = [a3 clientName];

    [(MXSessionManagerIndependentAudioResource *)v4 interruptAllIndependentInputAudioResourceSessions:v5 interruptorName:v6];
  }
}

- (void)resumeInterruptedIndependentInputAudioResourceSessionsIfNeeded:(id)a3
{
  if ([a3 isTheAssistant] && objc_msgSend(a3, "isHardwareSafetySession"))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.%@", @"resumable", objc_msgSend(a3, "audioCategory")];
    -[MXSessionManagerIndependentAudioResource resumeAllIndependentInputAudioResourceSessions:interruptorBundleID:interruptorName:](+[MXSessionManagerIndependentAudioResource sharedInstance](MXSessionManagerIndependentAudioResource, "sharedInstance"), "resumeAllIndependentInputAudioResourceSessions:interruptorBundleID:interruptorName:", v4, [a3 displayID], objc_msgSend(a3, "clientName"));
  }
}

- (BOOL)isSessionConfigurationEligibleForOutputMuting:(id)a3 audioMode:(id)a4
{
  IsPlayAndRecordCategory = CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy();
  if (IsPlayAndRecordCategory)
  {
    if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || CMSMUtility_IsCategoryInputOnly(a3))
    {
      LOBYTE(IsPlayAndRecordCategory) = 1;
    }

    else
    {
      IsPlayAndRecordCategory = CMSMUtility_IsPlayAndRecordCategory(a3);
      if (IsPlayAndRecordCategory)
      {
        LOBYTE(IsPlayAndRecordCategory) = CMSMUtility_DoCategoryAndModeHavePhoneCallBehaviour(a3) == 0;
      }
    }
  }

  return IsPlayAndRecordCategory;
}

- (void)synchronizeSessionVolumeWithMediaVolumeIfNeeded:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsSynchronizeSiriAlarmVolumesToMediaVolumeEnabled())
  {
    if (([a3 isTheAssistant] & 1) != 0 || (objc_msgSend(a3, "audioCategory"), FigCFEqual()))
    {
      [+[MXSessionManager sharedInstance](MXSessionManager setIsVoiceAssistantPlayingToPersonalAudioDeviceOverMedia:"setIsVoiceAssistantPlayingToPersonalAudioDeviceOverMedia:", 0];
      if ([+[MXSessionManager isAnySessionWithMappedVolumeCategoryPlaying:"isAnySessionWithMappedVolumeCategoryPlaying:"]
      {
        v27 = 0;
        *cf = 0u;
        *v26 = 0u;
        PVMCopyCurrentDeviceRoute(&cf[1], &v26[1], v26);
        v28 = *cf;
        v29 = *v26;
        v30 = v27;
        cf[0] = PVMGetMappedEndpointType(&v28);
        v28 = *cf;
        v29 = *v26;
        v30 = v27;
        if (PVMIsRoutedToAPersonalAudioDevice(&v28))
        {
          if ([a3 isTheAssistant])
          {
            UpTimeNanoseconds = FigGetUpTimeNanoseconds();
            v28 = *cf;
            v29 = *v26;
            v30 = v27;
            v5 = ((UpTimeNanoseconds - PVMGetMostRecentSynchronizedVolumeActivityTimestamp(&v28)) / 0x3B9ACA00uLL);
            if (PVMGetSynchronizedVolumeResetTimerDuration() <= v5)
            {
              v28 = *cf;
              v29 = *v26;
              v30 = v27;
              v13 = PVMGetVolumePreference(@"Audio/Video", 0, &v28);
              v14 = PVMGetRawVolumeForCurrentRouteFromVolume(@"Audio/Video", 0, v13);
              v15 = PVMComputeSynchronizedVolume(v14);
              v28 = *cf;
              v29 = *v26;
              v30 = v27;
              *&v16 = PVMGetVolumePreference(@"VoiceCommand", 0, &v28);
              v17 = PVMGetVolumeToBeAppliedOnHardware(v16, v15);
              if (v17)
              {
                v18 = v17;
                if (dword_1EB75DE40)
                {
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                [v18 floatValue];
                v28 = *cf;
                v29 = *v26;
                v30 = v27;
                PVMSetVolumePreference(@"VoiceCommand", 0, 1, &v28, 0, 0, v21, 0.0, 0.0);
              }
            }

            else
            {
              v28 = *cf;
              v29 = *v26;
              v30 = v27;
              PVMSetMostRecentSynchronizedVolumeActivityTimestamp(&v28, UpTimeNanoseconds);
            }

            [+[MXSessionManager sharedInstance](MXSessionManager setIsVoiceAssistantPlayingToPersonalAudioDeviceOverMedia:"setIsVoiceAssistantPlayingToPersonalAudioDeviceOverMedia:", 1];
          }

          else
          {
            v28 = *cf;
            v29 = *v26;
            v30 = v27;
            v6 = PVMGetVolumePreference(@"Audio/Video", 0, &v28);
            v7 = PVMGetRawVolumeForCurrentRouteFromVolume(@"Audio/Video", 0, v6);
            v8 = PVMComputeSynchronizedVolume(v7);
            *&v28 = 0;
            *(&v28 + 1) = @"broadcast";
            v30 = 0;
            v29 = 0uLL;
            *&v9 = PVMGetVolumePreference(@"Alarm", 0, &v28);
            v10 = PVMGetVolumeToBeAppliedOnHardware(v9, v8);
            if (v10)
            {
              v11 = v10;
              if (dword_1EB75DE40)
              {
                v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              [v11 floatValue];
              *&v28 = 0;
              *(&v28 + 1) = @"broadcast";
              v30 = 0;
              v29 = 0uLL;
              PVMSetVolumePreference(@"Alarm", 0, 1, &v28, 0, 0, v20, 0.0, 0.0);
            }
          }
        }

        if (cf[1])
        {
          CFRelease(cf[1]);
          cf[1] = 0;
        }

        if (v26[1])
        {
          CFRelease(v26[1]);
          v26[1] = 0;
        }

        if (v26[0])
        {
          CFRelease(v26[0]);
        }
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (BOOL)isCurrentRouteHeadphoneAndInEar:(unsigned int *)a3
{
  v5 = [(MXSessionManager *)self getCurrentOutputPort];
  v6 = v5;
  if (a3)
  {
    *a3 = v5;
  }

  if (v5)
  {
    v7 = [(MXSessionManager *)self isPortHeadphoneWithInEarDetectionSupported:v5];
    if (v7)
    {
      LOBYTE(v7) = vaeIsInEarStatusTrueForBTPort(v6) != 0;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)shouldAllowBluetoothAccessoryToRequestAudioRoute
{
  v7 = *MEMORY[0x1E69E9840];
  if (!+[MXSystemController preferHeadphonesOverCarsAndSpeakersEnabled])
  {
    if (!dword_1EB75DE40)
    {
LABEL_8:
      v4 = 1;
      goto LABEL_10;
    }

LABEL_6:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    v4 = 1;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_10;
  }

  if (![+[MXSessionManager isCurrentRouteHeadphoneAndInEar:"isCurrentRouteHeadphoneAndInEar:"]
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (dword_1EB75DE40)
  {
    v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = 0;
LABEL_10:
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (int)prepareSessionActivationBeforeACQDispatch:(id)a3
{
  v4 = MXGetPerformanceLog();
  v5 = os_signpost_id_make_with_pointer(v4, a3);
  v6 = MXGetPerformanceLog();
  if (v5 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {
    MXGetPerformanceLog();
  }

  else
  {
    v7 = v6;
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B17A2000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Prepare session activation", &unk_1B19E5B76, buf, 2u);
    }

    v8 = MXGetPerformanceLog();
    if (os_signpost_enabled(v8))
    {
      *v10 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B17A2000, v8, OS_SIGNPOST_INTERVAL_END, v5, "Prepare session activation", &unk_1B19E5B76, v10, 2u);
    }
  }

  return 0;
}

- (void)setUpStringConversionDictionaries
{
  v51[10] = *MEMORY[0x1E69E9840];
  v3 = 1650811758;
  v51[0] = @"Record";
  v51[1] = @"Record_WithBluetooth";
  v51[2] = @"PlayAndRecord";
  v51[3] = @"PlayAndRecord_WithBluetooth";
  v51[4] = @"PlayAndRecord_NoBluetooth_DefaultToSpeaker";
  v51[5] = @"PlayAndRecord_WithBluetooth_DefaultToSpeaker";
  v51[6] = @"VoiceCommand";
  v51[7] = @"VoiceCommand_WithBluetooth";
  v51[8] = @"VoiceCommandThatMixes";
  v51[9] = @"VoiceCommandThatMixes_WithBluetooth";
  v50[0] = @"Record_WithBluetooth";
  v50[1] = @"Record_WithBluetooth";
  v50[2] = @"PlayAndRecord_WithBluetooth";
  v50[3] = @"PlayAndRecord_WithBluetooth";
  v50[4] = @"PlayAndRecord_WithBluetooth_DefaultToSpeaker";
  v50[5] = @"PlayAndRecord_WithBluetooth_DefaultToSpeaker";
  v50[6] = @"VoiceCommand_WithBluetooth";
  v50[7] = @"VoiceCommand_WithBluetooth";
  v50[8] = @"VoiceCommandThatMixes_WithBluetooth";
  v50[9] = @"VoiceCommandThatMixes_WithBluetooth";
  v49[0] = @"Record";
  v49[1] = @"Record";
  v49[2] = @"PlayAndRecord";
  v49[3] = @"PlayAndRecord";
  v49[4] = @"PlayAndRecord_NoBluetooth_DefaultToSpeaker";
  v49[5] = @"PlayAndRecord_NoBluetooth_DefaultToSpeaker";
  v49[6] = @"VoiceCommand";
  v49[7] = @"VoiceCommand";
  v49[8] = @"VoiceCommandThatMixes";
  v49[9] = @"VoiceCommandThatMixes";
  v48[0] = @"Record";
  v48[1] = @"Record";
  v48[2] = @"PlayAndRecord";
  v48[3] = @"PlayAndRecord";
  v48[4] = @"PlayAndRecord";
  v48[5] = @"PlayAndRecord";
  v48[6] = @"VoiceCommand";
  v48[7] = @"VoiceCommand";
  v48[8] = @"VoiceCommandThatMixes";
  v48[9] = @"VoiceCommandThatMixes";
  v47[0] = @"Record";
  v47[1] = @"Record_WithBluetooth";
  v47[2] = @"PlayAndRecord_NoBluetooth_DefaultToSpeaker";
  v47[3] = @"PlayAndRecord_WithBluetooth_DefaultToSpeaker";
  v47[4] = @"PlayAndRecord_NoBluetooth_DefaultToSpeaker";
  v47[5] = @"PlayAndRecord_WithBluetooth_DefaultToSpeaker";
  v47[6] = @"VoiceCommand";
  v47[7] = @"VoiceCommand_WithBluetooth";
  v47[8] = @"VoiceCommandThatMixes";
  v47[9] = @"VoiceCommandThatMixes_WithBluetooth";
  v46[0] = @"Record";
  v46[1] = @"Record_WithBluetooth";
  v46[2] = @"PlayAndRecord";
  v46[3] = @"PlayAndRecord_WithBluetooth";
  v46[4] = @"PlayAndRecord";
  v46[5] = @"PlayAndRecord_WithBluetooth";
  v46[6] = @"VoiceCommand";
  v46[7] = @"VoiceCommand_WithBluetooth";
  v46[8] = @"VoiceCommandThatMixes";
  v46[9] = @"VoiceCommandThatMixes_WithBluetooth";
  v45[0] = @"Record";
  v45[1] = @"Record_WithBluetooth";
  v45[2] = @"PlayAndRecord";
  v45[3] = @"PlayAndRecord_WithBluetooth";
  v45[4] = @"PlayAndRecord";
  v45[5] = @"PlayAndRecord_WithBluetooth";
  v45[6] = @"VoiceCommand";
  v45[7] = @"VoiceCommand_WithBluetooth";
  v45[8] = @"VoiceCommandThatMixes";
  v45[9] = @"VoiceCommandThatMixes_WithBluetooth";
  keys[0] = @"Audio/Video";
  keys[1] = @"Ringtone";
  keys[2] = @"Voicemail";
  keys[3] = @"VoicemailGreeting";
  keys[4] = @"PhoneCall";
  keys[5] = @"TTYCall";
  keys[6] = @"RingtonePreview";
  keys[7] = @"Alarm";
  keys[8] = @"Record";
  keys[9] = @"Record_WithBluetooth";
  keys[10] = @"PlayAndRecord";
  keys[11] = @"PlayAndRecord_WithBluetooth";
  keys[12] = @"PlayAndRecord_NoBluetooth_DefaultToSpeaker";
  keys[13] = @"PlayAndRecord_WithBluetooth_DefaultToSpeaker";
  keys[14] = @"UserInterfaceSoundEffects";
  keys[15] = @"AmbientSound";
  keys[16] = @"SoloAmbientSound";
  keys[17] = @"MediaPlayback";
  keys[18] = @"AudioProcessing";
  keys[19] = @"LiveAudio";
  keys[20] = @"Notice";
  keys[21] = @"VoiceCommand";
  keys[22] = @"VoiceCommand_WithBluetooth";
  keys[23] = @"VoiceCommandThatMixes";
  keys[24] = @"VoiceCommandThatMixes_WithBluetooth";
  keys[25] = @"VoiceOver";
  keys[26] = @"FindMyPhone";
  keys[27] = @"EmergencyAlert";
  keys[28] = @"EmergencyAlert_Muteable";
  keys[29] = @"Multi";
  keys[30] = @"MediaPlaybackNoSpeaker";
  keys[31] = @"WaterEjection";
  keys[32] = @"FindMyAudioDevice";
  keys[33] = @"SystemSoundsAndHaptics";
  keys[34] = @"eARC";
  keys[35] = @"SpeechDetect";
  keys[36] = @"HearingTest";
  values[0] = @"NonMuteable";
  values[1] = @"NonMuteable";
  values[2] = @"NonMuteable";
  values[3] = @"NonMuteable";
  values[4] = @"NonMuteable";
  values[5] = @"NonMuteable";
  values[6] = @"NonMuteable";
  values[7] = @"NonMuteable";
  values[8] = @"NonMuteable";
  values[9] = @"NonMuteable";
  values[10] = @"NonMuteable";
  values[11] = @"NonMuteable";
  values[12] = @"NonMuteable";
  values[13] = @"NonMuteable";
  values[14] = @"Muteable";
  values[15] = @"Muteable";
  values[16] = @"Muteable";
  values[17] = @"NonMuteable";
  values[18] = @"NonMuteable";
  values[19] = @"NonMuteable";
  values[20] = @"NonMuteable";
  values[21] = @"NonMuteable";
  values[22] = @"NonMuteable";
  values[23] = @"NonMuteable";
  values[24] = @"NonMuteable";
  values[25] = @"NonMuteable";
  values[26] = @"NonMuteable";
  values[27] = @"NonMuteable";
  values[28] = @"Muteable";
  values[29] = @"NonMuteable";
  values[30] = @"NonMuteable";
  values[31] = @"NonMuteable";
  values[32] = @"NonMuteable";
  values[33] = @"Muteable";
  values[34] = @"Muteable";
  values[35] = @"Muteable";
  values[36] = @"NonMuteable";
  v42[0] = @"CannotOverride";
  v42[1] = @"CannotOverride";
  v42[2] = @"CanOverride";
  v42[3] = @"CanOverride";
  v42[4] = @"CanOverride";
  v42[5] = @"CanOverride";
  v42[6] = @"CannotOverride";
  v42[7] = @"CannotOverride";
  v42[8] = @"CannotOverride";
  v42[9] = @"CannotOverride";
  v42[10] = @"CanOverride";
  v42[11] = @"CanOverride";
  v42[12] = @"CanOverride";
  v42[13] = @"CanOverride";
  v42[14] = @"CannotOverride";
  v42[15] = @"CannotOverride";
  v42[16] = @"CannotOverride";
  v42[17] = @"CannotOverride";
  v42[18] = @"CannotOverride";
  v42[19] = @"CannotOverride";
  v42[20] = @"CannotOverride";
  v42[21] = @"CanOverride";
  v42[22] = @"CanOverride";
  v42[23] = @"CanOverride";
  v42[24] = @"CanOverride";
  v42[25] = @"CannotOverride";
  v42[26] = @"CanOverride";
  v42[27] = @"CannotOverride";
  v42[28] = @"CannotOverride";
  v42[29] = @"CanOverride";
  v42[30] = @"CannotOverride";
  v42[31] = @"CannotOverride";
  v42[32] = @"CannotOverride";
  v42[33] = @"CannotOverride";
  v42[34] = @"CannotOverride";
  v42[35] = @"CannotOverride";
  v42[36] = @"CannotOverride";
  v41[0] = @"Muteable";
  v41[1] = @"NonMuteable";
  v41[2] = @"NonMuteable";
  v41[3] = @"NonMuteable";
  v41[4] = @"NonMuteable";
  v41[5] = @"Muteable";
  v41[6] = @"NonMuteable";
  v41[7] = @"Muteable";
  v41[8] = @"Muteable";
  v41[9] = @"Muteable";
  v41[10] = @"NonMuteable";
  v41[11] = @"NonMuteable";
  v41[12] = @"NonMuteable";
  v41[13] = @"Muteable";
  v41[14] = @"Muteable";
  v41[15] = @"Muteable";
  v41[16] = @"Muteable";
  v41[17] = @"Muteable";
  v41[18] = @"Muteable";
  v41[19] = @"Muteable";
  v41[20] = @"NonMuteable";
  v40[0] = @"Default";
  v40[1] = @"VoiceChat";
  v40[2] = @"VideoChat";
  v40[3] = @"VideoRecording";
  v40[4] = @"SpeechRecognition";
  v40[5] = @"Measurement";
  v40[6] = @"Raw";
  v40[7] = @"GameChat";
  v40[8] = @"MoviePlayback";
  v40[9] = @"SpokenAudio";
  v40[10] = @"VoicePrompt";
  v40[11] = @"RemoteVoiceChat";
  v40[12] = @"VoiceMessages";
  v40[13] = @"LivePhoto";
  v40[14] = @"HearingAccessibility";
  v40[15] = @"SOSNotification";
  v40[16] = @"SpatialRecording";
  v40[17] = @"Ibis";
  v40[18] = @"VideoChatForMedia";
  v40[19] = @"MultiCam";
  v40[20] = @"Skeuomorphic";
  v40[21] = @"LowLatency";
  v40[22] = @"CustomVolume";
  v40[23] = @"SpatialCapture";
  v40[24] = @"Beacon";
  v40[25] = @"WebCam";
  v40[26] = @"WebCam_MultiMic";
  v40[27] = @"Sleep";
  v40[28] = @"SoundRecognition";
  v40[29] = @"ShortFormVideo";
  IsMandrakeEverywhereEnabled = MX_FeatureFlags_IsMandrakeEverywhereEnabled();
  if (IsMandrakeEverywhereEnabled)
  {
    IsMandrakeEverywhereEnabled = CMSMDeviceState_SupportsBeacon();
    if (!IsMandrakeEverywhereEnabled)
    {
      v3 = 1768776806;
    }
  }

  v33[0] = xmmword_1B19D8C10;
  v33[1] = xmmword_1B19D8C20;
  v33[2] = xmmword_1B19D8C30;
  v33[3] = xmmword_1B19D8C40;
  v33[4] = xmmword_1B19D8C50;
  v33[5] = xmmword_1B19D8C60;
  v33[6] = xmmword_1B19D8C70;
  v33[7] = xmmword_1B19D8C80;
  v33[8] = xmmword_1B19D8C90;
  v33[9] = xmmword_1B19D8CA0;
  v34 = vdupq_n_s64(0x696D6466uLL);
  v35 = xmmword_1B19D8CB0;
  v37 = xmmword_1B19D8CC0;
  v38 = v34;
  v36 = v3;
  v39 = 1768776806;
  v6 = *MEMORY[0x1E695E480];
  v7 = OUTLINED_FUNCTION_1_12(IsMandrakeEverywhereEnabled, v51, v50, v5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  [OUTLINED_FUNCTION_7() setFigCustomizedCategoryWithBluetooth_Dict:{1768776806, 1768779619, 1768781411, 1768781426, 1987208039, 1836281204, 1918990112, 1735222132, 1836021360, 1936747374, 1987080813, 1919776355, 1986884455, 1768778864, 1751212899, 1936683886, 1936749157, 1768057203, 1768781411, 1835229549}];
  v8 = [(MXSessionManager *)self figCustomizedCategoryWithBluetooth_Dict];
  if (v8)
  {
    v10 = OUTLINED_FUNCTION_1_12(v8, v51, v49, v9, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    [OUTLINED_FUNCTION_7() setFigCustomizedCategoryWithoutBluetooth_Dict:?];
    v11 = [(MXSessionManager *)self figCustomizedCategoryWithoutBluetooth_Dict];
    if (v11)
    {
      v13 = OUTLINED_FUNCTION_1_12(v11, v51, v48, v12, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      [OUTLINED_FUNCTION_7() setFigUncustomizedCategory_Dict:?];
      v14 = [(MXSessionManager *)self figUncustomizedCategory_Dict];
      if (v14)
      {
        v16 = OUTLINED_FUNCTION_1_12(v14, v51, v47, v15, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        [OUTLINED_FUNCTION_7() setFigCustomizedCategoryWithDefaultBuiltIn_Speaker_Dict:?];
        v17 = [(MXSessionManager *)self figCustomizedCategoryWithDefaultBuiltIn_Speaker_Dict];
        if (v17)
        {
          v19 = OUTLINED_FUNCTION_1_12(v17, v51, v46, v18, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          [OUTLINED_FUNCTION_7() setFigCustomizedCategoryWithDefaultBuiltIn_Receiver_Dict:?];
          v20 = [(MXSessionManager *)self figCustomizedCategoryWithDefaultBuiltIn_Receiver_Dict];
          if (v20)
          {
            v22 = OUTLINED_FUNCTION_1_12(v20, v51, v45, v21, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            [OUTLINED_FUNCTION_7() setFigCustomizedCategoryWithDefaultBuiltIn_Default_Dict:?];
            if ([(MXSessionManager *)self figCustomizedCategoryWithDefaultBuiltIn_Default_Dict])
            {
              v23 = CFDictionaryCreate(v6, keys, values, 37, MEMORY[0x1E695E9D8], 0);
              [OUTLINED_FUNCTION_7() setFigCategoryToMuteabilityDict:?];
              if ([(MXSessionManager *)self figCategoryToMuteabilityDict])
              {
                v24 = CFDictionaryCreate(v6, keys, v42, 37, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                [OUTLINED_FUNCTION_7() setFigCategoryToOutputOverridabilityDict:?];
                if ([(MXSessionManager *)self figCategoryToOutputOverridabilityDict])
                {
                  v25 = CFDictionaryCreate(v6, keys, "vasc", 37, MEMORY[0x1E695E9D8], 0);
                  [OUTLINED_FUNCTION_7() setFigCategoryToVADCategoryDict:?];
                  if ([(MXSessionManager *)self figCategoryToVADCategoryDict])
                  {
                    v26 = CFDictionaryCreate(v6, setUpStringConversionDictionaries_figRouteNames, "wphp", 25, MEMORY[0x1E695E9D8], 0);
                    [OUTLINED_FUNCTION_7() setFigRouteToVADOutputPortTypeDict:?];
                    if ([(MXSessionManager *)self figRouteToVADOutputPortTypeDict])
                    {
                      v27 = CFDictionaryCreate(v6, setUpStringConversionDictionaries_figRouteNames, "iwmp", 25, MEMORY[0x1E695E9D8], 0);
                      [OUTLINED_FUNCTION_7() setFigRouteToVADInputPortTypeDict:?];
                      if ([(MXSessionManager *)self figRouteToVADInputPortTypeDict])
                      {
                        v28 = CFDictionaryCreate(v6, "uolp", setUpStringConversionDictionaries_figOutputDeviceNamesForVADOutputPortTypes, 21, 0, MEMORY[0x1E695E9E8]);
                        [OUTLINED_FUNCTION_7() setVadOutputPortTypeToFigOutputDeviceNameDict:?];
                        if ([(MXSessionManager *)self vadOutputPortTypeToFigOutputDeviceNameDict])
                        {
                          v29 = CFDictionaryCreate(v6, "uolp", v41, 21, 0, MEMORY[0x1E695E9E8]);
                          [OUTLINED_FUNCTION_7() setVadOutputPortTypeToMuteabilityDict:?];
                          if ([(MXSessionManager *)self vadOutputPortTypeToMuteabilityDict])
                          {
                            v30 = CFDictionaryCreate(v6, "nilp", setUpStringConversionDictionaries_figInputDeviceNamesForVADInputPortTypes, 9, 0, MEMORY[0x1E695E9E8]);
                            [OUTLINED_FUNCTION_7() setVadInputPortTypeToFigInputDeviceNameDict:?];
                            if ([(MXSessionManager *)self vadInputPortTypeToFigInputDeviceNameDict])
                            {
                              v31 = CFDictionaryCreate(v6, v40, v33, 30, MEMORY[0x1E695E9D8], 0);
                              [OUTLINED_FUNCTION_7() setFigModeTypeToVADModeType:?];
                              [(MXSessionManager *)self figModeTypeToVADModeType];
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

@end