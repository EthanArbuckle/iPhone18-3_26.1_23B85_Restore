@interface CSConfig
+ (float)defaultSpeakerOutDuckToLevelInDB;
+ (float)inputRecordingDurationInSecs;
+ (float)inputRecordingDurationInSecsExtended;
+ (unint64_t)channelForOutputReference;
+ (unint64_t)serverLoggingChannelBitset;
+ (unsigned)inputRecordingNumberOfChannels;
@end

@implementation CSConfig

+ (unsigned)inputRecordingNumberOfChannels
{
  if (+[CSUtils isDarwinOS])
  {
    return 2;
  }

  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  if (CSIsHorseman_isHorseman == 1)
  {
    if (inputRecordingNumberOfChannels_onceToken != -1)
    {
      dispatch_once(&inputRecordingNumberOfChannels_onceToken, &__block_literal_global_6696);
    }
  }

  else if (+[CSUtils isLocalVoiceTriggerAvailable](CSUtils, "isLocalVoiceTriggerAvailable") && +[CSUtils isIOSDeviceSupportingBargeIn])
  {
    inputRecordingNumberOfChannels_numberOfChannels = 2;
  }

  return inputRecordingNumberOfChannels_numberOfChannels;
}

+ (float)inputRecordingDurationInSecs
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  result = 4.0;
  if (CSIsHorseman_isHorseman)
  {
    return 5.0;
  }

  return result;
}

+ (float)inputRecordingDurationInSecsExtended
{
  if (+[CSUtils allowExtendedRingBufferSize])
  {
    return 6.0;
  }

  [self inputRecordingDurationInSecs];
  return result;
}

+ (float)defaultSpeakerOutDuckToLevelInDB
{
  v2 = +[CSUtils isExclaveHardware];
  result = -46.15;
  if (v2)
  {
    return -68.18;
  }

  return result;
}

+ (unint64_t)serverLoggingChannelBitset
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  v2 = 67092735;
  if (CSIsHorseman_isHorseman == 1)
  {
    v3 = +[CSUtils horsemanDeviceType];
    v4 = 2093311;
    if (v3 != 3)
    {
      v4 = 67092735;
    }

    if (v3 == 2)
    {
      return 261183;
    }

    else
    {
      return v4;
    }
  }

  return v2;
}

+ (unint64_t)channelForOutputReference
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  if (CSIsHorseman_isHorseman != 1)
  {
    return 1;
  }

  if (+[CSUtils horsemanDeviceType]== 3)
  {
    return 20;
  }

  return 4;
}

unint64_t __42__CSConfig_inputRecordingNumberOfChannels__block_invoke()
{
  v0 = +[CSFPreferences sharedPreferences];
  v1 = [v0 fileLoggingIsEnabled];

  result = +[CSUtils horsemanDeviceType];
  if (v1)
  {
    v3 = 29;
  }

  else
  {
    v3 = 21;
  }

  if (v1)
  {
    v4 = 34;
  }

  else
  {
    v4 = 14;
  }

  if (v1)
  {
    v5 = 23;
  }

  else
  {
    v5 = 10;
  }

  if (result == 2)
  {
    v4 = v5;
  }

  if (result != 3)
  {
    v3 = v4;
  }

  inputRecordingNumberOfChannels_numberOfChannels = v3;
  return result;
}

@end