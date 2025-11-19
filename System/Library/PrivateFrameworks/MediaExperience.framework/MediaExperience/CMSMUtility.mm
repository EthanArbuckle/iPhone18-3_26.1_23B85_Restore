@interface CMSMUtility
@end

@implementation CMSMUtility

uint64_t __CMSMUtility_CopyPrioritizedListBasedOnPlayingAndActiveState_block_invoke(uint64_t a1, void *a2, void *a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if (![a2 isPlaying] || objc_msgSend(a3, "isPlaying"))
    {
      if ([a2 isPlaying] & 1) == 0 && (objc_msgSend(a3, "isPlaying"))
      {
        return 1;
      }

      if (![a2 isActive] || objc_msgSend(a3, "isActive"))
      {
        return ([a2 isActive] & 1) == 0 && objc_msgSend(a3, "isActive");
      }
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    if (![a2 getIsPlaying] || objc_msgSend(a3, "getIsPlaying"))
    {
      return ([a2 getIsPlaying] & 1) == 0 && objc_msgSend(a3, "getIsPlaying");
    }
  }

  return -1;
}

uint64_t __CMSMUtility_UpdateSharePlayVolumeBehaviours_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  SharePlayCapableActiveMediaSession = CMSMUtility_GetSharePlayCapableActiveMediaSession();
  result = CMSMUtility_GetSharePlayCapableActiveCallSession();
  if (result)
  {
    v2 = result;
    result = [result currentlyControllingFlags];
    if (SharePlayCapableActiveMediaSession)
    {
      if ((result & 0x10) != 0)
      {
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMSMUtility_SetMediaPlaybackVolumeToCurrentPhoneCallVolume();
        result = CMSMUtility_TransferVolumeControlFlagToSharePlayCapableMediaSession();
      }
    }

    else if ((result & 0x10) == 0)
    {
      if (dword_1EB75DE40)
      {
        v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMSMUtility_SetPhoneCallVolumeToCurrentMediaPlaybackVolume();
      CMSMUtility_TransferVolumeControlFlagToSharePlayCapableCallSession();
      result = cmsTryToTakeControl(v2);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CMSMUtility_CopyMappedMXSessionAudioCategory_block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"AmbientSound", @"AVAudioSessionCategoryAmbient", @"SoloAmbientSound", @"AVAudioSessionCategorySoloAmbient", @"MediaPlayback", @"AVAudioSessionCategoryPlayback", @"MediaPlaybackNoSpeaker", @"AVAudioSessionCategoryPlaybackNoSpeaker", @"VoiceOver", @"AVAudioSessionCategoryVoiceOver", @"AudioProcessing", @"AVAudioSessionCategoryAudioProcessing", @"Multi", @"AVAudioSessionCategoryMultiRoute", @"Ringtone", @"AVAudioSessionCategoryRingtone", @"RingtonePreview", @"AVAudioSessionCategoryRingtonePreview", @"PhoneCall", @"AVAudioSessionCategoryPhoneCall", @"TTYCall", @"AVAudioSessionCategoryTTYCall", @"Voicemail", @"AVAudioSessionCategoryVoiceMail", @"Alarm", @"AVAudioSessionCategoryAlarm", @"Record", @"AVAudioSessionCategoryRecord", @"PlayAndRecord", @"AVAudioSessionCategoryPlayAndRecord", @"FindMyPhone", @"AVAudioSessionCategoryFindMyPhone", @"EmergencyAlert", @"AVAudioSessionCategoryEmergencyAlert", @"EmergencyAlert_Muteable", @"AVAudioSessionCategoryEmergencyAlert_CanBeMuted", @"WaterEjection", @"AVAudioSessionCategoryWaterEjection", @"FindMyAudioDevice", @"AVAudioSessionCategoryFindMyDevice", @"SystemSoundsAndHaptics", @"AVAudioSessionCategorySystemSoundsAndHaptics", @"VoiceCommand", @"AVAudioSessionCategoryVoiceCommand", @"eARC", @"AVAudioSessionCategoryEARC", @"SpeechDetect", @"AVAudioSessionCategorySpeechDetection", 0}];
  CMSMUtility_CopyMappedMXSessionAudioCategory_sAudioSessionToMXCategoryMap = result;
  return result;
}

uint64_t __CMSMUtility_CopyMappedMXSessionAudioMode_block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"Default", @"AVAudioSessionModeDefault", @"VoiceChat", @"AVAudioSessionModeVoiceChat", @"VideoChat", @"AVAudioSessionModeVideoChat", @"VideoRecording", @"AVAudioSessionModeVideoRecording", @"SpeechRecognition", @"AVAudioSessionModeSpeechRecognition", @"Measurement", @"AVAudioSessionModeMeasurement", @"Raw", @"AVAudioSessionModeRaw", @"GameChat", @"AVAudioSessionModeGameChat", @"MoviePlayback", @"AVAudioSessionModeMoviePlayback", @"SpokenAudio", @"AVAudioSessionModeSpokenAudio", @"VoicePrompt", @"AVAudioSessionModeVoicePrompt", @"VoiceMessages", @"AVAudioSessionModeVoiceMessages", @"FindMyPhone", @"AVAudioSessionModeLocatePhone", @"LivePhoto", @"AVAudioSessionModeLivePhoto", @"HearingAccessibility", @"AVAudioSessionModeHearingAccessibility", @"SpatialRecording", @"AVAudioSessionModeSpatialRecording", @"SOSNotification", @"AVAudioSessionModeSOS", @"VideoChatForMedia", @"AVAudioSessionModeVideoChatForMedia", @"CustomVolume", @"AVAudioSessionModeHapticsConstantVolume", @"LowLatency", @"AVAudioSessionModeLowLatency", @"Beacon", @"AVAudioSessionModeBeacon", @"WebCam_MultiMic", @"AVAudioSessionModeTelephonyWebcam", 0}];
  CMSMUtility_CopyMappedMXSessionAudioMode_sAudioSessionToMXModeMap = result;
  return result;
}

void __CMSMUtility_ApplyPIDToInheritAppStateFrom_block_invoke(uint64_t a1)
{
  CMSMUtility_ApplyForEachMatchingSessionGuts(0, CMSUtilityPredicate_IsSameClient, *(a1 + 32), CMSUtilityApplier_InheritApplicationStateAndPostApplicationStateDidChangeNotification, 0, *(a1 + 40), 0);
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

@end