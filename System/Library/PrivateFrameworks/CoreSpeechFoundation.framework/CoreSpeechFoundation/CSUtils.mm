@interface CSUtils
+ ($115C4C562B26FF47E01F9F4EA65B5887)getTokenFromDictionary:(SEL)dictionary withTokenKey:(id)key;
+ (BOOL)_createLoggingDirectoryIfNeeded:(id)needed;
+ (BOOL)checkCurrentProcessHasEntitlement:(id)entitlement;
+ (BOOL)checkEntitlementForToken:(id *)token withEntitlement:(id)entitlement;
+ (BOOL)faultPagesWithVaddr:(void *)vaddr mmapedSize:(unint64_t)size filePath:(id)path;
+ (BOOL)isASRViaSpeechAPIEnabled;
+ (BOOL)isBluetoothAudioDeviceConnected;
+ (BOOL)isBluetoothVehicleOutput;
+ (BOOL)isBuiltInRecordRoute:(id)route;
+ (BOOL)isBuiltInRouteWithRecordRoute:(id)route playbackRoute:(id)playbackRoute;
+ (BOOL)isCarplayWithFlexibleFollowupEnabled;
+ (BOOL)isContinuousConversationSupported;
+ (BOOL)isExclaveHardware;
+ (BOOL)isFirstPassSourceTypeRingtoneWithVTEI:(id)i;
+ (BOOL)isFlexibleEndpointingEnabled;
+ (BOOL)isHeadphoneDeviceWithRecordRoute:(id)route playbackRoute:(id)playbackRoute;
+ (BOOL)isHypotheticalAudioRouteBluetoothAndNotBTSpeakerFromAudioSessinoId:(unsigned int)id;
+ (BOOL)isIOSDeviceSupportingBargeIn;
+ (BOOL)isLocalVoiceTriggerAvailable;
+ (BOOL)isM9Device;
+ (BOOL)isMagusDisabledForLanguageCode:(id)code;
+ (BOOL)isMagusRestrictedWithSAEForLanguageCode:(id)code;
+ (BOOL)isMedocFeatureEnabled;
+ (BOOL)isMultiUserMedocFeatureEnabled;
+ (BOOL)isNonHSCapableBTHeadsetRouteFromHypotheticalRoute:(id)route;
+ (BOOL)isOutOfBandAudioRouteWithRecordRoute:(id)route;
+ (BOOL)isOutputDevice:(unsigned int)device relatedToInputDevice:(unsigned int)inputDevice;
+ (BOOL)isRecordContextAutoPrompt:(id)prompt;
+ (BOOL)isRecordContextBuiltInVoiceTrigger:(id)trigger;
+ (BOOL)isRecordContextDarwinVoiceTrigger:(id)trigger;
+ (BOOL)isRecordContextHearstDoubleTap:(id)tap;
+ (BOOL)isRecordContextHearstVoiceTrigger:(id)trigger;
+ (BOOL)isRecordContextHomeButtonPress:(id)press;
+ (BOOL)isRecordContextJarvisButtonPress:(id)press;
+ (BOOL)isRecordContextJarvisVoiceTrigger:(id)trigger;
+ (BOOL)isRecordContextRaiseToSpeak:(id)speak;
+ (BOOL)isRecordContextRemoraVoiceTrigger:(id)trigger;
+ (BOOL)isRecordContextSpeakerIdTrainingTrigger:(id)trigger;
+ (BOOL)isRecordContextVoiceTrigger:(id)trigger;
+ (BOOL)isRemoteDarwinWithDeviceId:(id)id;
+ (BOOL)isVoiceTriggerFromExclaveWithVTEI:(id)i;
+ (BOOL)machXPCConnection:(id)connection hasEntitlement:(id)entitlement;
+ (BOOL)readOptimizationMadviseWithVaddr:(void *)vaddr mmapedSize:(unint64_t)size preLoadChunkSize:(unint64_t)chunkSize;
+ (BOOL)shouldDeinterleaveAudioOnCS;
+ (BOOL)shouldDelayTwoShotFeedbackForMyriadDecision;
+ (BOOL)shouldDownloadVTAssetsOnDaemon;
+ (BOOL)shouldUseHorsemanSpeechEndpointAssets;
+ (BOOL)supportAcousticProgressiveChecker;
+ (BOOL)supportAdBlocker;
+ (BOOL)supportAudioTappingSelfTrigger;
+ (BOOL)supportBeepCanceller:(unint64_t)canceller recordType:(int64_t)type;
+ (BOOL)supportBluetoothDeviceVoiceTrigger;
+ (BOOL)supportCSTwoShotDecision;
+ (BOOL)supportCircularBuffer;
+ (BOOL)supportCompactPlus;
+ (BOOL)supportHandsFree;
+ (BOOL)supportHearstVoiceTrigger;
+ (BOOL)supportHomeKitAccessory;
+ (BOOL)supportHybridEndpointer;
+ (BOOL)supportJarvisVoiceTrigger;
+ (BOOL)supportLanguageDetector;
+ (BOOL)supportMph;
+ (BOOL)supportMphAssets;
+ (BOOL)supportOpportunisticZLL;
+ (BOOL)supportPhatic;
+ (BOOL)supportPremiumAssets;
+ (BOOL)supportPremiumModel;
+ (BOOL)supportRaiseToSpeak;
+ (BOOL)supportRelayCall;
+ (BOOL)supportRemoraVoiceTrigger;
+ (BOOL)supportRemoteDarwinVoiceTrigger;
+ (BOOL)supportSAT;
+ (BOOL)supportSelfTriggerSuppression:(unint64_t)suppression refChannelIdx:(unint64_t)idx;
+ (BOOL)supportSessionActivateDelay;
+ (BOOL)supportSmartVolume;
+ (BOOL)supportTTS;
+ (BOOL)supportVoiceID;
+ (BOOL)supportVoiceTriggerChannelSelection;
+ (BOOL)supportZeroFilter:(unint64_t)filter;
+ (BOOL)supportsDictationOnDevice;
+ (BOOL)supportsDispatchWorkloop;
+ (BOOL)supportsHearstSmartRoutingImprovements;
+ (BOOL)supportsHybridUnderstandingOnDevice;
+ (BOOL)supportsLogger;
+ (BOOL)supportsMagusForLanguageCode:(id)code;
+ (BOOL)supportsMphForLanguageCode:(id)code;
+ (BOOL)supportsMphForLanguageCode:(id)code forDeviceType:(unint64_t)type;
+ (BOOL)supportsSiriLiminal;
+ (BOOL)supportsSpeakerRecognitionAssets;
+ (BOOL)supportsSpeechRecognitionOnDevice;
+ (BOOL)supportsUnderstandingOnDevice;
+ (BOOL)supportsUnifiedAssetFramework;
+ (BOOL)xpcConnection:(id)connection hasEntitlement:(id)entitlement;
+ (BOOL)xpcConnection:(id)connection hasEntitlement:(id)entitlement withStringValue:(id)value;
+ (double)systemUpTime;
+ (id)FourCCToString:(unsigned int)string;
+ (id)_contentsOfDirectoryAtURL:(id)l matchingPattern:(id)pattern includingPropertiesForKeys:(id)keys error:(id *)error;
+ (id)_readValuesInNestedDictionary:(id)dictionary keyword:(id)keyword depth:(int64_t)depth limitedDepth:(int64_t)limitedDepth;
+ (id)_sharedDisposeLoggingQueue;
+ (id)_timeStampString;
+ (id)audioPortSubtypeAsString:(unsigned int)string;
+ (id)auditTokenToString:(id *)string;
+ (id)dateWithSaltGrain;
+ (id)defaultDateFormatter;
+ (id)deviceBuildVersion;
+ (id)deviceHwRevision;
+ (id)deviceIdentifier;
+ (id)deviceProductType;
+ (id)deviceProductVersion;
+ (id)deviceUserAssignedName;
+ (id)dispatchWorkloopWithWithQOS:(unsigned int)s name:(id)name fixedPriority:(int)priority;
+ (id)fetchHypotheticalBluetoothRouteProductIdFromAudioSessionId:(unsigned int)id;
+ (id)getAudioSessionFromAudioSessionId:(unsigned int)id;
+ (id)getBestSupportedSiriLanguageWithFallback:(id)fallback;
+ (id)getSerialQueue:(id)queue qualityOfService:(unsigned int)service;
+ (id)getSerialQueue:(id)queue withQualityOfService:(unsigned int)service andTargetQueue:(id)targetQueue;
+ (id)getSiriLanguageWithEndpointId:(id)id fallbackLanguage:(id)language;
+ (id)getSiriLanguageWithFallback:(id)fallback;
+ (id)loggingFilePathWithDirectory:(id)directory requestId:(id)id token:(id)token postfix:(id)postfix;
+ (id)loggingFilePathWithDirectory:(id)directory token:(id)token postfix:(id)postfix;
+ (id)readValuesFromJsonFile:(id)file keyword:(id)keyword;
+ (id)recordContextString:(id)string;
+ (id)rootQueueWithFixedPriority:(int)priority;
+ (id)timeStampWithSaltGrain;
+ (int)getFileDescriptor:(id)descriptor;
+ (int64_t)processIdentifier;
+ (unint64_t)fetchHypotheticalRouteTypeFromAudioSessionId:(unsigned int)id;
+ (unint64_t)getFileSizeWithFd:(int)fd;
+ (unsigned)getAudioDeviceForHalUID:(id)d;
+ (unsigned)getDefaultOutputAudioDevice;
+ (unsigned)getNumElementInBitset:(unint64_t)bitset;
+ (void)URLsInDirectory:(id)directory matchingPattern:(id)pattern completion:(id)completion;
+ (void)_sortedURLsInDirectory:(id)directory matchingPattern:(id)pattern completion:(id)completion;
+ (void)clearLogFilesInDirectory:(id)directory matchingPattern:(id)pattern exceedNumber:(unint64_t)number;
+ (void)iterateBitset:(unint64_t)bitset block:(id)block;
+ (void)mmapWithFile:(id)file mappedSizeOut:(id *)out;
+ (void)purgeFilesWithExtensionInDirectory:(id)directory extension:(id)extension withFileToKep:(id)kep;
+ (void)removeDirectory:(id)directory;
+ (void)removeLogFilesInDirectory:(id)directory matchingPattern:(id)pattern beforeDays:(float)days;
+ (void)withElapsedTimeLogging:(id)logging execute:(id)execute;
@end

@implementation CSUtils

+ (BOOL)isIOSDeviceSupportingBargeIn
{
  if (isIOSDeviceSupportingBargeIn_onceToken != -1)
  {
    dispatch_once(&isIOSDeviceSupportingBargeIn_onceToken, &__block_literal_global_89);
  }

  return isIOSDeviceSupportingBargeIn_supportBargeIn;
}

+ (BOOL)supportHandsFree
{
  if (supportHandsFree_onceToken != -1)
  {
    dispatch_once(&supportHandsFree_onceToken, &__block_literal_global_155);
  }

  return supportHandsFree_result;
}

+ (BOOL)isLocalVoiceTriggerAvailable
{
  if (isLocalVoiceTriggerAvailable_onceToken != -1)
  {
    dispatch_once(&isLocalVoiceTriggerAvailable_onceToken, &__block_literal_global_69);
  }

  return isLocalVoiceTriggerAvailable_defaultValue;
}

+ (BOOL)supportRelayCall
{
  if (CSIsIPad_onceToken != -1)
  {
    dispatch_once(&CSIsIPad_onceToken, &__block_literal_global_22);
  }

  return CSIsIPad_isIPad;
}

+ (BOOL)supportsHearstSmartRoutingImprovements
{
  if (supportsHearstSmartRoutingImprovements_onceToken != -1)
  {
    dispatch_once(&supportsHearstSmartRoutingImprovements_onceToken, &__block_literal_global_275);
  }

  return supportsHearstSmartRoutingImprovements_isEnabled;
}

+ (BOOL)isExclaveHardware
{
  if (isExclaveHardware_onceToken != -1)
  {
    dispatch_once(&isExclaveHardware_onceToken, &__block_literal_global_254);
  }

  return isExclaveHardware_isExclaveHardware;
}

+ (BOOL)supportRemoraVoiceTrigger
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  return !+[CSUtils isDarwinOS];
}

+ (BOOL)isContinuousConversationSupported
{
  if (+[CSUtils isDarwinOS])
  {
    return 0;
  }

  if (isContinuousConversationSupported_onceToken != -1)
  {
    dispatch_once(&isContinuousConversationSupported_onceToken, &__block_literal_global_171);
  }

  return isContinuousConversationSupported_result;
}

+ (BOOL)supportRemoteDarwinVoiceTrigger
{
  if (supportRemoteDarwinVoiceTrigger_onceToken != -1)
  {
    dispatch_once(&supportRemoteDarwinVoiceTrigger_onceToken, &__block_literal_global_96);
  }

  return supportRemoteDarwinVoiceTrigger_supportDarwinVT;
}

+ (BOOL)supportHomeKitAccessory
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  return CSIsHorseman_isHorseman;
}

+ (int64_t)processIdentifier
{
  if (processIdentifier_onceToken != -1)
  {
    dispatch_once(&processIdentifier_onceToken, &__block_literal_global_183);
  }

  return processIdentifier_pid;
}

void __39__CSUtils_isIOSDeviceSupportingBargeIn__block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  if (CSIsHorseman_isHorseman)
  {
    v0 = 0;
  }

  else
  {
    v0 = MGGetBoolAnswer();
  }

  isIOSDeviceSupportingBargeIn_supportBargeIn = v0;
  v1 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v2 = @"NO";
    if (v0)
    {
      v2 = @"YES";
    }

    v4 = 136315394;
    v5 = "+[CSUtils isIOSDeviceSupportingBargeIn]_block_invoke";
    v6 = 2114;
    v7 = v2;
    _os_log_impl(&dword_1DDA4B000, v1, OS_LOG_TYPE_DEFAULT, "%s Device supporting barge-in ? %{public}@", &v4, 0x16u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

+ (BOOL)supportsUnifiedAssetFramework
{
  if (+[CSUtils isDarwinOS])
  {
    return 0;
  }

  if (+[CSUtils supportsUnderstandingOnDevice])
  {
    return 1;
  }

  return +[CSUtils supportsHybridUnderstandingOnDevice];
}

uint64_t __40__CSUtils_supportsUnderstandingOnDevice__block_invoke()
{
  result = AFDeviceSupportsSiriUOD();
  supportsUnderstandingOnDevice_result = result;
  return result;
}

+ (BOOL)supportsUnderstandingOnDevice
{
  if (+[CSUtils isDarwinOS])
  {
    v2 = 0;
  }

  else
  {
    if (supportsUnderstandingOnDevice_onceToken != -1)
    {
      dispatch_once(&supportsUnderstandingOnDevice_onceToken, &__block_literal_global_159);
    }

    v2 = supportsUnderstandingOnDevice_result;
  }

  return v2 & 1;
}

+ (BOOL)supportMphAssets
{
  if (+[CSUtils isDarwinOS])
  {
    return 1;
  }

  return AFDeviceSupportsSiriUOD();
}

+ (BOOL)shouldDeinterleaveAudioOnCS
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  if (CSIsHorseman_isHorseman)
  {
    return 1;
  }

  return +[CSUtils isLocalVoiceTriggerAvailable];
}

+ (BOOL)supportsSpeechRecognitionOnDevice
{
  if (+[CSUtils supportsUnderstandingOnDevice])
  {
    return 1;
  }

  return +[CSUtils supportsDictationOnDevice];
}

+ (BOOL)isMedocFeatureEnabled
{
  if (+[CSUtils isDarwinOS])
  {
    v2 = 0;
  }

  else
  {
    if (isMedocFeatureEnabled_onceToken != -1)
    {
      dispatch_once(&isMedocFeatureEnabled_onceToken, &__block_literal_global_178);
    }

    v2 = isMedocFeatureEnabled_result;
  }

  return v2 & 1;
}

+ (id)auditTokenToString:(id *)string
{
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%i", string->var0[0]];
  [v4 appendString:v5];
  for (i = 1; i != 8; ++i)
  {
    [v4 appendString:@"|"];

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%i", string->var0[i]];
    [v4 appendString:v5];
  }

  return v4;
}

+ ($115C4C562B26FF47E01F9F4EA65B5887)getTokenFromDictionary:(SEL)dictionary withTokenKey:(id)key
{
  v20 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v8 = a5;
  v9 = v8;
  *retstr->var0 = 0u;
  *&retstr->var0[4] = 0u;
  if (keyCopy && v8)
  {
    Value = CFDictionaryGetValue(keyCopy, v8);
    v21.location = 0;
    v21.length = 32;
    CFDataGetBytes(Value, v21, retstr);
  }

  else
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315650;
      v15 = "+[CSUtils(Security) getTokenFromDictionary:withTokenKey:]";
      v16 = 2112;
      v17 = keyCopy;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s Token dict: %@ and tokenString: %@ both must be non nil", &v14, 0x20u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

+ (BOOL)checkCurrentProcessHasEntitlement:(id)entitlement
{
  v20 = *MEMORY[0x1E69E9840];
  entitlementCopy = entitlement;
  if (!entitlementCopy)
  {
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "+[CSUtils(Security) checkCurrentProcessHasEntitlement:]";
      _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Entitlement was nil. We will assume process is not entitled.", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v4 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (!v4)
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "+[CSUtils(Security) checkCurrentProcessHasEntitlement:]";
      _os_log_error_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_ERROR, "%s Failed to create SecTask for current process", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v5 = v4;
  error = 0;
  v6 = SecTaskCopyValueForEntitlement(v4, entitlementCopy, &error);
  CFRelease(v5);
  v7 = error;
  if (error)
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "+[CSUtils(Security) checkCurrentProcessHasEntitlement:]";
      v18 = 2112;
      v19 = v7;
      _os_log_error_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_ERROR, "%s SecTaskCopyValueForEntitlement failed for getting entitlement with error: %@", buf, 0x16u);
      v7 = error;
    }

    CFRelease(v7);
    goto LABEL_11;
  }

  if (!v6)
  {
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  v14 = CFGetTypeID(v6);
  v11 = v14 == CFBooleanGetTypeID() && CFBooleanGetValue(v6) != 0;
  CFRelease(v6);
LABEL_12:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)checkEntitlementForToken:(id *)token withEntitlement:(id)entitlement
{
  v27 = *MEMORY[0x1E69E9840];
  entitlementCopy = entitlement;
  if (entitlementCopy)
  {
    v7 = *MEMORY[0x1E695E480];
    v8 = *&token->var0[4];
    *token.val = *token->var0;
    *&token.val[4] = v8;
    v9 = SecTaskCreateWithAuditToken(v7, &token);
    error = 0;
    v10 = *&token->var0[4];
    *token.val = *token->var0;
    *&token.val[4] = v10;
    v11 = [self auditTokenToString:&token];
    v12 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      token.val[0] = 136315650;
      *&token.val[1] = "+[CSUtils(Security) checkEntitlementForToken:withEntitlement:]";
      LOWORD(token.val[3]) = 2112;
      *(&token.val[3] + 2) = v11;
      HIWORD(token.val[5]) = 2112;
      *&token.val[6] = entitlementCopy;
      _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s Attempting to check %@ for entitlement: %@", &token, 0x20u);
    }

    if (!v9)
    {
      v19 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        token.val[0] = 136315394;
        *&token.val[1] = "+[CSUtils(Security) checkEntitlementForToken:withEntitlement:]";
        LOWORD(token.val[3]) = 2112;
        *(&token.val[3] + 2) = v11;
        _os_log_error_impl(&dword_1DDA4B000, v19, OS_LOG_TYPE_ERROR, "%s Error creating audit token for: %@", &token, 0x16u);
      }

      v17 = 0;
      goto LABEL_20;
    }

    v13 = SecTaskCopyValueForEntitlement(v9, entitlementCopy, &error);
    v14 = error;
    if (error && (v15 = CSLogContextFacilityCoreSpeech, os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR)))
    {
      v20 = v15;
      Code = CFErrorGetCode(v14);
      token.val[0] = 136315650;
      *&token.val[1] = "+[CSUtils(Security) checkEntitlementForToken:withEntitlement:]";
      LOWORD(token.val[3]) = 2112;
      *(&token.val[3] + 2) = v11;
      HIWORD(token.val[5]) = 2048;
      *&token.val[6] = Code;
      _os_log_error_impl(&dword_1DDA4B000, v20, OS_LOG_TYPE_ERROR, "%s Warning SecTaskCopyValueForEntitlement failed for token %@ with error (%ld)", &token, 0x20u);

      if (v13)
      {
        goto LABEL_8;
      }
    }

    else if (v13)
    {
LABEL_8:
      v16 = CFGetTypeID(v13);
      v17 = v16 == CFBooleanGetTypeID() && CFBooleanGetValue(v13) != 0;
      CFRelease(v13);
LABEL_19:
      CFRelease(v9);
      if (!v14)
      {
LABEL_22:

        goto LABEL_23;
      }

LABEL_20:
      v22 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        token.val[0] = 136315138;
        *&token.val[1] = "+[CSUtils(Security) checkEntitlementForToken:withEntitlement:]";
        _os_log_impl(&dword_1DDA4B000, v22, OS_LOG_TYPE_DEFAULT, "%s Error Issue retrieving entitlement", &token, 0xCu);
      }

      goto LABEL_22;
    }

    v17 = 0;
    goto LABEL_19;
  }

  v18 = CSLogContextFacilityCoreSpeech;
  v17 = 0;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    token.val[0] = 136315138;
    *&token.val[1] = "+[CSUtils(Security) checkEntitlementForToken:withEntitlement:]";
    _os_log_impl(&dword_1DDA4B000, v18, OS_LOG_TYPE_DEFAULT, "%s Entitlement was nil. We will assume process is not entitled.", &token, 0xCu);
    v17 = 0;
  }

LABEL_23:

  v23 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (id)FourCCToString:(unsigned int)string
{
  v5[0] = HIBYTE(string);
  v5[1] = BYTE2(string);
  v5[2] = BYTE1(string);
  v5[3] = string;
  v5[4] = 0;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];

  return v3;
}

+ (BOOL)shouldUseHorsemanSpeechEndpointAssets
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  return CSIsHorseman_isHorseman;
}

+ (BOOL)isVoiceTriggerFromExclaveWithVTEI:(id)i
{
  iCopy = i;
  v4 = iCopy;
  if (iCopy)
  {
    v5 = [iCopy objectForKeyedSubscript:@"firstPassTriggerSource"];
    if (v5)
    {
      v6 = [v4 objectForKeyedSubscript:@"firstPassTriggerSource"];
      if ([v6 isEqualToString:@"ApplicationProcessorExclave"])
      {
        v7 = 1;
      }

      else
      {
        v8 = [v4 objectForKeyedSubscript:@"firstPassTriggerSource"];
        if ([v8 isEqualToString:@"BuiltInAlwaysOnProcessorExclave"])
        {
          v7 = 1;
        }

        else
        {
          v9 = [v4 objectForKeyedSubscript:@"firstPassTriggerSource"];
          if ([v9 isEqualToString:@"ApplicationProcessorExclaveWithRingtone"])
          {
            v7 = 1;
          }

          else
          {
            v10 = [v4 objectForKeyedSubscript:@"firstPassTriggerSource"];
            v7 = [v10 isEqualToString:@"ApplicationProcessorExclaveWithConnectedCall"];
          }
        }
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isFirstPassSourceTypeRingtoneWithVTEI:(id)i
{
  iCopy = i;
  v4 = iCopy;
  if (iCopy)
  {
    v5 = [iCopy objectForKeyedSubscript:@"firstPassTriggerSource"];
    if (v5)
    {
      v6 = [v4 objectForKeyedSubscript:@"firstPassTriggerSource"];
      if ([v6 isEqualToString:@"ApplicationProcessorWithRingtone"])
      {
        v7 = 1;
      }

      else
      {
        v8 = [v4 objectForKeyedSubscript:@"firstPassTriggerSource"];
        v7 = [v8 isEqualToString:@"ApplicationProcessorWithRingtone"];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (unint64_t)getFileSizeWithFd:(int)fd
{
  v9 = *MEMORY[0x1E69E9840];
  memset(&v6, 0, sizeof(v6));
  if (fstat(fd, &v6))
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v8 = "+[CSUtils getFileSizeWithFd:]";
      _os_log_error_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_ERROR, "%s failed to get file stats", buf, 0xCu);
    }

    result = 0;
  }

  else
  {
    result = v6.st_size;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

+ (BOOL)supportsLogger
{
  v2 = +[CSFPreferences sharedPreferences];
  isAttentiveSiriAudioLoggingEnabled = [v2 isAttentiveSiriAudioLoggingEnabled];

  return isAttentiveSiriAudioLoggingEnabled;
}

void __49__CSUtils_supportsHearstSmartRoutingImprovements__block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = _os_feature_enabled_impl();
  supportsHearstSmartRoutingImprovements_isEnabled = v0;
  v1 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315394;
    v4 = "+[CSUtils supportsHearstSmartRoutingImprovements]_block_invoke";
    v5 = 1024;
    v6 = v0;
    _os_log_impl(&dword_1DDA4B000, v1, OS_LOG_TYPE_DEFAULT, "%s Hearst smart routing improvements - supported: 1, enabled: %d", &v3, 0x12u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void __28__CSUtils_isExclaveHardware__block_invoke()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = MGGetBoolAnswer();
  v1 = MGCopyAnswer();
  v2 = MGCopyAnswer();
  if (!v1)
  {
    goto LABEL_10;
  }

  if ([v1 isEqualToString:@"t8132"] && !_os_feature_enabled_impl() || objc_msgSend(v1, "isEqualToString:", @"t8140") && !_os_feature_enabled_impl() || objc_msgSend(v1, "isEqualToString:", @"t8142") && !_os_feature_enabled_impl())
  {
    v3 = 1;
  }

  else
  {
    if (![v1 isEqualToString:@"t8150"] || +[CSUtils isDarwinOS](CSUtils, "isDarwinOS"))
    {
LABEL_10:
      v3 = 0;
      goto LABEL_12;
    }

    v3 = _os_feature_enabled_impl() ^ 1;
  }

LABEL_12:
  isExclaveHardware_isExclaveHardware = v0 & (v3 ^ 1);
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    v9 = "+[CSUtils isExclaveHardware]_block_invoke";
    if (v0)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v8 = 136315650;
    v10 = 2114;
    v11 = v6;
    if (v3)
    {
      v5 = @"YES";
    }

    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s isExclaveCapable: %{public}@, isExclaveFeatureDisabledForPlatform: %{public}@", &v8, 0x20u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

+ (BOOL)faultPagesWithVaddr:(void *)vaddr mmapedSize:(unint64_t)size filePath:(id)path
{
  *&v26[13] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v8 = pathCopy;
  v9 = 0;
  if (vaddr && size && pathCopy)
  {
    v10 = [CSUtils getFileDescriptor:pathCopy];
    if (v10 < 0)
    {
      v15 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v24 = "+[CSUtils faultPagesWithVaddr:mmapedSize:filePath:]";
        v25 = 2112;
        *v26 = v8;
        _os_log_error_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_ERROR, "%s failed to open file of: %@", buf, 0x16u);
      }

      v9 = 0;
    }

    else
    {
      v11 = v10;
      v22[0] = 0;
      v22[1] = size;
      v12 = fcntl(v10, 44, v22);
      v9 = v12 != -1;
      if (v12 == -1)
      {
        v16 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          v19 = v16;
          v20 = __error();
          v21 = strerror(*v20);
          *buf = 136315650;
          v24 = "+[CSUtils faultPagesWithVaddr:mmapedSize:filePath:]";
          v25 = 1024;
          *v26 = v11;
          v26[2] = 2080;
          *&v26[3] = v21;
          _os_log_error_impl(&dword_1DDA4B000, v19, OS_LOG_TYPE_ERROR, "%s failed to fcntl fd: %d with error: %s", buf, 0x1Cu);
        }
      }

      else
      {
        buf[0] = 0;
        v13 = sysconf(29);
        v14 = 0;
        do
        {
          buf[0] = *(vaddr + v14);
          v14 += v13;
        }

        while (v14 < size);
      }

      close(v11);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (int)getFileDescriptor:(id)descriptor
{
  uTF8String = [descriptor UTF8String];

  return open(uTF8String, 0);
}

+ (BOOL)readOptimizationMadviseWithVaddr:(void *)vaddr mmapedSize:(unint64_t)size preLoadChunkSize:(unint64_t)chunkSize
{
  result = 0;
  v22 = *MEMORY[0x1E69E9840];
  if (vaddr)
  {
    sizeCopy = size;
    if (size)
    {
      if (chunkSize)
      {
        v9 = 0;
        while (1)
        {
          v10 = sizeCopy >= chunkSize ? chunkSize : sizeCopy;
          if (madvise(&v9[vaddr], v10, 3) < 0)
          {
            break;
          }

          v9 += v10;
          sizeCopy -= v10;
          if (!sizeCopy)
          {
            v11 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
            {
              v18 = 136315394;
              v19 = "+[CSUtils readOptimizationMadviseWithVaddr:mmapedSize:preLoadChunkSize:]";
              v20 = 2048;
              v21 = v9;
              _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s read optimization processed size: %lu", &v18, 0x16u);
            }

            result = 1;
            goto LABEL_15;
          }
        }

        v12 = CSLogContextFacilityCoreSpeech;
        v13 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
        result = 0;
        if (v13)
        {
          v14 = v12;
          v15 = __error();
          v16 = strerror(*v15);
          v18 = 136315394;
          v19 = "+[CSUtils readOptimizationMadviseWithVaddr:mmapedSize:preLoadChunkSize:]";
          v20 = 2080;
          v21 = v16;
          _os_log_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_DEFAULT, "%s Failed to madvise() because error: %s", &v18, 0x16u);

          result = 0;
        }
      }
    }
  }

LABEL_15:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

+ (void)mmapWithFile:(id)file mappedSizeOut:(id *)out
{
  v23 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  v6 = [CSUtils getFileDescriptor:fileCopy];
  if ((v6 & 0x80000000) != 0)
  {
    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "+[CSUtils mmapWithFile:mappedSizeOut:]";
      v19 = 2112;
      v20 = fileCopy;
      _os_log_error_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_ERROR, "%s failed to open file of: %@", &v17, 0x16u);
    }

    goto LABEL_15;
  }

  v7 = v6;
  v8 = [CSUtils getFileSizeWithFd:v6];
  if (!v8)
  {
    close(v7);
LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  v9 = v8;
  v10 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315650;
    v18 = "+[CSUtils mmapWithFile:mappedSizeOut:]";
    v19 = 2112;
    v20 = fileCopy;
    v21 = 2048;
    v22 = v9;
    _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s readed file: %@ with mmaped size: %lu", &v17, 0x20u);
  }

  v11 = mmap(0, v9, 1, 1, v7, 0);
  close(v7);
  if (!v11)
  {
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315394;
      v18 = "+[CSUtils mmapWithFile:mappedSizeOut:]";
      v19 = 2112;
      v20 = fileCopy;
      _os_log_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_DEFAULT, "%s Cannot mmap the graph: %@", &v17, 0x16u);
    }

    goto LABEL_15;
  }

  if (out)
  {
    *out = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v9];
  }

  v12 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315650;
    v18 = "+[CSUtils mmapWithFile:mappedSizeOut:]";
    v19 = 2112;
    v20 = fileCopy;
    v21 = 2048;
    v22 = v9;
    _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s mmaped file: %@ with mapped size: %lu is successful", &v17, 0x20u);
  }

LABEL_16:

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)isASRViaSpeechAPIEnabled
{
  if (isASRViaSpeechAPIEnabled_onceToken != -1)
  {
    dispatch_once(&isASRViaSpeechAPIEnabled_onceToken, &__block_literal_global_251);
  }

  return isASRViaSpeechAPIEnabled_isAvailable;
}

uint64_t __35__CSUtils_isASRViaSpeechAPIEnabled__block_invoke()
{
  result = [MEMORY[0x1E698D150] isASRViaSpeechAPIEnabled];
  isASRViaSpeechAPIEnabled_isAvailable = result;
  return result;
}

+ (void)withElapsedTimeLogging:(id)logging execute:(id)execute
{
  v20 = *MEMORY[0x1E69E9840];
  loggingCopy = logging;
  v6 = MEMORY[0x1E695DF00];
  executeCopy = execute;
  date = [v6 date];
  executeCopy[2](executeCopy);

  date2 = [MEMORY[0x1E695DF00] date];
  v10 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    [date2 timeIntervalSinceDate:date];
    v14 = 136315650;
    v15 = "+[CSUtils withElapsedTimeLogging:execute:]";
    v16 = 2114;
    v17 = loggingCopy;
    v18 = 2050;
    v19 = v12;
    _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s %{public}@ elapsed time = %{public}lf", &v14, 0x20u);
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (BOOL)supportVoiceID
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  return CSIsHorseman_isHorseman;
}

+ (BOOL)supportAudioTappingSelfTrigger
{
  if (+[CSUtils isExclaveHardware])
  {
    return 1;
  }

  if (+[CSUtils isDarwinOS])
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

+ (BOOL)supportsMagusForLanguageCode:(id)code
{
  v3 = supportsMagusForLanguageCode__onceToken;
  codeCopy = code;
  if (v3 != -1)
  {
    dispatch_once(&supportsMagusForLanguageCode__onceToken, &__block_literal_global_244);
  }

  v5 = [supportsMagusForLanguageCode__magusSupportedLocales containsObject:codeCopy];

  return v5;
}

uint64_t __40__CSUtils_supportsMagusForLanguageCode___block_invoke()
{
  supportsMagusForLanguageCode__magusSupportedLocales = [MEMORY[0x1E695DFD8] setWithObjects:{@"en-US", @"en-GB", @"en-CA", @"en-AU", @"de-DE", @"fr-FR", 0}];

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)supportsMphForLanguageCode:(id)code forDeviceType:(unint64_t)type
{
  v19 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  v6 = 0;
  if (type <= 9)
  {
    if (((1 << type) & 0x1F7) != 0)
    {
      v7 = &unk_1F5916B08;
    }

    else
    {
      if (type == 3)
      {
        v12 = 1;
        goto LABEL_20;
      }

      v7 = &unk_1F5916B20;
    }

    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v7];
  }

  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal == 1)
  {
    v8 = +[CSFPreferences sharedPreferences];
    whiteListedMultiPhraseLocales = [v8 whiteListedMultiPhraseLocales];

    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315394;
      v16 = "+[CSUtils supportsMphForLanguageCode:forDeviceType:]";
      v17 = 2112;
      v18 = whiteListedMultiPhraseLocales;
      _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s whiteListLocales: %@", &v15, 0x16u);
    }

    if (whiteListedMultiPhraseLocales && [whiteListedMultiPhraseLocales count])
    {
      [v6 addObjectsFromArray:whiteListedMultiPhraseLocales];
    }
  }

  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "+[CSUtils supportsMphForLanguageCode:forDeviceType:]";
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s supportsMph language list: %@", &v15, 0x16u);
  }

  if (codeCopy && +[CSUtils supportMph])
  {
    v12 = [v6 containsObject:codeCopy];
  }

  else
  {
    v12 = 0;
  }

LABEL_20:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (BOOL)supportsMphForLanguageCode:(id)code
{
  codeCopy = code;
  if (+[CSUtils isDarwinOS])
  {
    v4 = codeCopy;
    v5 = 3;
  }

  else
  {
    if (CSIsIPad_onceToken != -1)
    {
      dispatch_once(&CSIsIPad_onceToken, &__block_literal_global_22);
    }

    if (CSIsIPad_isIPad == 1)
    {
      v4 = codeCopy;
      v5 = 2;
    }

    else if (CSIsIPad_isIPad)
    {
      if (+[CSUtils hasRemoteCoreSpeech](CSUtils, "hasRemoteCoreSpeech") && +[CSUtils hasRemoteBuiltInMic])
      {
        v4 = codeCopy;
        v5 = 5;
      }

      else
      {
        if (CSIsHorseman_onceToken != -1)
        {
          dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
        }

        v4 = codeCopy;
        if (CSIsHorseman_isHorseman == 1)
        {
          v5 = 8;
        }

        else
        {
          v5 = 0;
        }
      }
    }

    else
    {
      v4 = codeCopy;
      v5 = 1;
    }
  }

  v6 = [CSUtils supportsMphForLanguageCode:v4 forDeviceType:v5];

  return v6;
}

+ (BOOL)isM9Device
{
  if (isM9Device_onceToken != -1)
  {
    dispatch_once(&isM9Device_onceToken, &__block_literal_global_198);
  }

  return isM9Device_isM9Device;
}

uint64_t __21__CSUtils_isM9Device__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    LOBYTE(v0) = [v0 isEqualToString:@"t8006"];
  }

  isM9Device_isM9Device = v0;

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)supportMph
{
  v2 = +[CSUtils supportMphAssets];
  result = +[CSUtils isDarwinOS];
  if (!result && v2)
  {

    return _os_feature_enabled_impl();
  }

  return result;
}

void __28__CSUtils_processIdentifier__block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  processIdentifier_pid = [v0 processIdentifier];
}

+ (BOOL)isFlexibleEndpointingEnabled
{
  if (+[CSUtils isDarwinOS])
  {
    v2 = 0;
  }

  else
  {
    if (isFlexibleEndpointingEnabled_onceToken != -1)
    {
      dispatch_once(&isFlexibleEndpointingEnabled_onceToken, &__block_literal_global_180);
    }

    v2 = isFlexibleEndpointingEnabled_result;
  }

  return v2 & 1;
}

uint64_t __39__CSUtils_isFlexibleEndpointingEnabled__block_invoke()
{
  result = AFDeviceSupportsSiriUOD();
  if (result)
  {
    result = _os_feature_enabled_impl();
  }

  isFlexibleEndpointingEnabled_result = result;
  return result;
}

uint64_t __32__CSUtils_isMedocFeatureEnabled__block_invoke()
{
  result = AFDeviceSupportsMedoc();
  isMedocFeatureEnabled_result = result;
  return result;
}

+ (BOOL)isMultiUserMedocFeatureEnabled
{
  if (+[CSUtils isDarwinOS])
  {
    v2 = 0;
  }

  else
  {
    if (isMultiUserMedocFeatureEnabled_onceToken != -1)
    {
      dispatch_once(&isMultiUserMedocFeatureEnabled_onceToken, &__block_literal_global_176);
    }

    v2 = isMultiUserMedocFeatureEnabled_result;
  }

  return v2 & 1;
}

uint64_t __41__CSUtils_isMultiUserMedocFeatureEnabled__block_invoke()
{
  result = AFDeviceSupportsMedoc();
  if (result)
  {
    result = AFDeviceSupportsSiriMUX();
  }

  isMultiUserMedocFeatureEnabled_result = result;
  return result;
}

+ (BOOL)isCarplayWithFlexibleFollowupEnabled
{
  if (+[CSUtils isDarwinOS])
  {
    v2 = 0;
  }

  else
  {
    if (isCarplayWithFlexibleFollowupEnabled_onceToken != -1)
    {
      dispatch_once(&isCarplayWithFlexibleFollowupEnabled_onceToken, &__block_literal_global_173);
    }

    v2 = isCarplayWithFlexibleFollowupEnabled_result;
  }

  return v2 & 1;
}

uint64_t __47__CSUtils_isCarplayWithFlexibleFollowupEnabled__block_invoke()
{
  result = _os_feature_enabled_impl();
  isCarplayWithFlexibleFollowupEnabled_result = result;
  return result;
}

void __44__CSUtils_isContinuousConversationSupported__block_invoke()
{
  v0 = MGGetBoolAnswer();
  if (AFDeviceSupportsSiriUOD() && [MEMORY[0x1E698D150] isContinuousConversationEnabled])
  {
    if (+[CSUtils supportsANE]& v0)
    {
      goto LABEL_4;
    }

    if (CSIsInternalBuild_onceToken != -1)
    {
      dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
    }

    if (CSIsInternalBuild_isInternal == 1)
    {
      if (CSIsVirtualMachine_onceToken != -1)
      {
        dispatch_once(&CSIsVirtualMachine_onceToken, &__block_literal_global_27);
      }

      if (CSIsVirtualMachine_isVM == 1)
      {
LABEL_4:
        isContinuousConversationSupported_result = 1;
      }
    }
  }
}

+ (BOOL)isMagusRestrictedWithSAEForLanguageCode:(id)code
{
  v3 = isMagusRestrictedWithSAEForLanguageCode__onceToken;
  codeCopy = code;
  if (v3 != -1)
  {
    dispatch_once(&isMagusRestrictedWithSAEForLanguageCode__onceToken, &__block_literal_global_168);
  }

  v5 = [isMagusRestrictedWithSAEForLanguageCode__magusRestrictedSupportedLocales containsObject:codeCopy];

  if (codeCopy)
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

uint64_t __51__CSUtils_isMagusRestrictedWithSAEForLanguageCode___block_invoke()
{
  isMagusRestrictedWithSAEForLanguageCode__magusRestrictedSupportedLocales = [MEMORY[0x1E695DFD8] set];

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)isMagusDisabledForLanguageCode:(id)code
{
  v3 = isMagusDisabledForLanguageCode__onceToken;
  codeCopy = code;
  if (v3 != -1)
  {
    dispatch_once(&isMagusDisabledForLanguageCode__onceToken, &__block_literal_global_166);
  }

  v5 = [0 containsObject:codeCopy];

  if (codeCopy)
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

+ (BOOL)supportsDictationOnDevice
{
  if (supportsDictationOnDevice_onceToken != -1)
  {
    dispatch_once(&supportsDictationOnDevice_onceToken, &__block_literal_global_163);
  }

  return supportsDictationOnDevice_result;
}

uint64_t __36__CSUtils_supportsDictationOnDevice__block_invoke()
{
  result = AFOfflineDictationCapable();
  if (result)
  {
    result = [MEMORY[0x1E698D150] isDictationOnSRDEnabled];
  }

  supportsDictationOnDevice_result = result;
  return result;
}

+ (BOOL)supportsHybridUnderstandingOnDevice
{
  if (+[CSUtils isDarwinOS])
  {
    v2 = 0;
  }

  else
  {
    if (supportsHybridUnderstandingOnDevice_onceToken != -1)
    {
      dispatch_once(&supportsHybridUnderstandingOnDevice_onceToken, &__block_literal_global_161);
    }

    v2 = supportsHybridUnderstandingOnDevice_result;
  }

  return v2 & 1;
}

uint64_t __46__CSUtils_supportsHybridUnderstandingOnDevice__block_invoke()
{
  result = AFDeviceSupportsHybridUOD();
  supportsHybridUnderstandingOnDevice_result = result;
  return result;
}

uint64_t __27__CSUtils_supportHandsFree__block_invoke()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    supportHandsFree_result = 1;
  }

  return result;
}

+ (BOOL)supportsSiriLiminal
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  return 1;
}

+ (BOOL)supportsSpeakerRecognitionAssets
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  if ((CSIsHorseman_isHorseman & 1) == 0)
  {
    return supportsSpeakerRecognitionAssets_result;
  }

  result = 1;
  supportsSpeakerRecognitionAssets_result = 1;
  return result;
}

+ (id)dateWithSaltGrain
{
  v2 = MEMORY[0x1E695DF00];
  v3 = arc4random_uniform(7u) * -86400.0;

  return [v2 dateWithTimeIntervalSinceNow:v3];
}

+ (id)defaultDateFormatter
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  [v2 setDateFormat:@"yyyyMMdd"];

  return v2;
}

+ (id)timeStampWithSaltGrain
{
  defaultDateFormatter = [self defaultDateFormatter];
  v3 = +[CSUtils dateWithSaltGrain];
  v4 = [defaultDateFormatter stringFromDate:v3];

  return v4;
}

+ (id)deviceHwRevision
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E696CD60];
  v3 = IOServiceMatching("IOPlatformExpertDevice");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  if (MatchingService)
  {
    v5 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"config-number", *MEMORY[0x1E695E480], 0);
    if (CFProperty)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:CFProperty encoding:4];
      v8 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"/"];
      v9 = [v7 componentsSeparatedByCharactersInSet:v8];

      if ([v9 count] < 2)
      {
        v12 = @"???";
      }

      else
      {
        v10 = MEMORY[0x1E696AEC0];
        v11 = [v9 objectAtIndexedSubscript:1];
        v12 = [v10 stringWithFormat:@"%@", v11];
      }

      v16 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v20 = "+[CSUtils deviceHwRevision]";
        v21 = 2114;
        v22 = v12;
        _os_log_impl(&dword_1DDA4B000, v16, OS_LOG_TYPE_INFO, "%s Fetched hardware revision : %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v15 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v20 = "+[CSUtils deviceHwRevision]";
        _os_log_error_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_ERROR, "%s Failed to find property config-number", buf, 0xCu);
      }

      v12 = @"???";
    }

    IOObjectRelease(v5);
    v14 = v12;
  }

  else
  {
    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v20 = "+[CSUtils deviceHwRevision]";
      _os_log_error_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_ERROR, "%s Failed to find matching service to IOPlatformExpertDevice", buf, 0xCu);
    }

    v14 = @"???";
  }

  v17 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)deviceBuildVersion
{
  v2 = MGCopyAnswer();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"???";
  }

  v5 = v4;

  return v4;
}

+ (id)deviceUserAssignedName
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (double)systemUpTime
{
  if (systemUpTime_onceToken != -1)
  {
    dispatch_once(&systemUpTime_onceToken, &__block_literal_global_123);
  }

  result = -1.0;
  if (systemUpTime_result != -1 && systemUpTime_bootTime != 0)
  {
    v4.tv_sec = 0;
    *&v4.tv_usec = 0;
    gettimeofday(&v4, 0);
    return (v4.tv_usec - dword_1ECDA44F8) / 1000000.0 + (v4.tv_sec - systemUpTime_bootTime);
  }

  return result;
}

uint64_t __23__CSUtils_systemUpTime__block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  *v3 = 0x1500000001;
  v2 = 16;
  result = sysctl(v3, 2u, &systemUpTime_bootTime, &v2, 0, 0);
  systemUpTime_result = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)deviceIdentifier
{
  if (deviceIdentifier_onceToken != -1)
  {
    dispatch_once(&deviceIdentifier_onceToken, &__block_literal_global_118);
  }

  v3 = deviceIdentifier_deviceId;

  return v3;
}

void __27__CSUtils_deviceIdentifier__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = deviceIdentifier_deviceId;
  deviceIdentifier_deviceId = v0;

  if (deviceIdentifier_deviceId)
  {
    v2 = deviceIdentifier_deviceId;
  }

  else
  {
    v2 = @"???";
  }

  objc_storeStrong(&deviceIdentifier_deviceId, v2);
}

+ (id)deviceProductVersion
{
  if (deviceProductVersion_onceToken != -1)
  {
    dispatch_once(&deviceProductVersion_onceToken, &__block_literal_global_113);
  }

  v3 = deviceProductVersion_currDeviceProductVersion[0];

  return v3;
}

void __31__CSUtils_deviceProductVersion__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = deviceProductVersion_currDeviceProductVersion[0];
  deviceProductVersion_currDeviceProductVersion[0] = v0;

  if (deviceProductVersion_currDeviceProductVersion[0])
  {
    v2 = deviceProductVersion_currDeviceProductVersion[0];
  }

  else
  {
    v2 = @"???";
  }

  objc_storeStrong(deviceProductVersion_currDeviceProductVersion, v2);
}

+ (id)deviceProductType
{
  if (deviceProductType_onceToken != -1)
  {
    dispatch_once(&deviceProductType_onceToken, &__block_literal_global_108);
  }

  v3 = deviceProductType_currDeviceProductType;

  return v3;
}

void __28__CSUtils_deviceProductType__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = deviceProductType_currDeviceProductType;
  deviceProductType_currDeviceProductType = v0;

  if (deviceProductType_currDeviceProductType)
  {
    v2 = deviceProductType_currDeviceProductType;
  }

  else
  {
    v2 = @"???";
  }

  objc_storeStrong(&deviceProductType_currDeviceProductType, v2);
}

+ (id)getSerialQueue:(id)queue withQualityOfService:(unsigned int)service andTargetQueue:(id)targetQueue
{
  v7 = dispatch_queue_attr_make_with_qos_class(0, service, 0);
  queueCopy = queue;
  targetQueueCopy = targetQueue;
  v10 = dispatch_queue_create_with_target_V2([queue UTF8String], v7, targetQueueCopy);

  return v10;
}

+ (id)getSerialQueue:(id)queue qualityOfService:(unsigned int)service
{
  v5 = dispatch_queue_attr_make_with_qos_class(0, service, 0);
  v6 = dispatch_queue_create([queue UTF8String], v5);

  return v6;
}

+ (id)dispatchWorkloopWithWithQOS:(unsigned int)s name:(id)name fixedPriority:(int)priority
{
  inactive = dispatch_workloop_create_inactive([name cStringUsingEncoding:4]);
  dispatch_workloop_set_autorelease_frequency(inactive, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  dispatch_workloop_set_scheduler_priority();
  dispatch_set_qos_class_fallback();
  dispatch_activate(inactive);

  return inactive;
}

+ (id)rootQueueWithFixedPriority:(int)priority
{
  v9 = *MEMORY[0x1E69E9840];
  memset(&v8, 0, sizeof(v8));
  pthread_attr_init(&v8);
  v7 = 0;
  pthread_attr_getschedparam(&v8, &v7);
  v7.sched_priority = priority;
  pthread_attr_setschedparam(&v8, &v7);
  pthread_attr_setschedpolicy(&v8, 2);
  pthread_attr_setinheritsched(&v8, 2);
  v4 = dispatch_pthread_root_queue_create();
  pthread_attr_destroy(&v8);
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (BOOL)supportsDispatchWorkloop
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  return CSIsHorseman_isHorseman;
}

+ (BOOL)supportZeroFilter:(unint64_t)filter
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  return (filter < 2) & (CSIsHorseman_isHorseman ^ 1);
}

+ (BOOL)supportBeepCanceller:(unint64_t)canceller recordType:(int64_t)type
{
  if (type == 21)
  {
    return 0;
  }

  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  return (canceller == 1) & (CSIsHorseman_isHorseman ^ 1);
}

+ (BOOL)supportCircularBuffer
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  if (CSIsHorseman_isHorseman)
  {
    return 1;
  }

  return +[CSUtils supportBluetoothDeviceVoiceTrigger];
}

uint64_t __42__CSUtils_supportRemoteDarwinVoiceTrigger__block_invoke()
{
  result = MGGetBoolAnswer();
  supportRemoteDarwinVoiceTrigger_supportDarwinVT = result;
  return result;
}

+ (BOOL)supportBluetoothDeviceVoiceTrigger
{
  if (+[CSUtils supportHearstVoiceTrigger](CSUtils, "supportHearstVoiceTrigger") || (v2 = +[CSUtils supportJarvisVoiceTrigger]))
  {
    LOBYTE(v2) = !+[CSUtils isDarwinOS];
  }

  return v2;
}

+ (BOOL)supportVoiceTriggerChannelSelection
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  return CSIsHorseman_isHorseman;
}

+ (BOOL)supportJarvisVoiceTrigger
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  if (CSIsHorseman_isHorseman)
  {
    return 0;
  }

  else
  {
    return !+[CSUtils isDarwinOS];
  }
}

+ (BOOL)supportHearstVoiceTrigger
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  if (CSIsHorseman_isHorseman)
  {
    return 0;
  }

  else
  {
    return !+[CSUtils isDarwinOS];
  }
}

+ (BOOL)supportAcousticProgressiveChecker
{
  if (+[CSUtils isDarwinOS])
  {
    if (CSIsHorseman_onceToken != -1)
    {
      dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
    }

    v2 = CSIsHorseman_isHorseman;
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

+ (BOOL)shouldDownloadVTAssetsOnDaemon
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  return CSIsHorseman_isHorseman;
}

+ (BOOL)supportLanguageDetector
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  return (CSIsHorseman_isHorseman & 1) == 0;
}

+ (BOOL)supportSessionActivateDelay
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  return 1;
}

+ (BOOL)shouldDelayTwoShotFeedbackForMyriadDecision
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  return CSIsHorseman_isHorseman;
}

+ (BOOL)supportPhatic
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  return 1;
}

+ (BOOL)supportPremiumModel
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  if (CSIsHorseman_isHorseman)
  {
    v2 = 1;
  }

  else
  {
    if (CSHasAOP_onceToken != -1)
    {
      dispatch_once(&CSHasAOP_onceToken, &__block_literal_global_38);
    }

    v2 = CSHasAOP_hasAOP;
  }

  return v2 & 1;
}

+ (BOOL)supportAdBlocker
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  return CSIsHorseman_isHorseman;
}

+ (BOOL)supportCompactPlus
{
  if (supportCompactPlus_onceToken != -1)
  {
    dispatch_once(&supportCompactPlus_onceToken, &__block_literal_global_85);
  }

  return 0;
}

+ (BOOL)supportRaiseToSpeak
{
  if (supportRaiseToSpeak_onceToken != -1)
  {
    dispatch_once(&supportRaiseToSpeak_onceToken, &__block_literal_global_83);
  }

  return 0;
}

+ (BOOL)supportTTS
{
  if (supportTTS_onceToken != -1)
  {
    dispatch_once(&supportTTS_onceToken, &__block_literal_global_78);
  }

  return supportTTS_supportTTS;
}

uint64_t __21__CSUtils_supportTTS__block_invoke()
{
  result = MGGetBoolAnswer();
  supportTTS_supportTTS = result;
  return result;
}

+ (BOOL)supportSAT
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  return (CSIsHorseman_isHorseman & 1) == 0;
}

+ (BOOL)supportSmartVolume
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  return CSIsHorseman_isHorseman;
}

+ (BOOL)supportHybridEndpointer
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  return 1;
}

+ (BOOL)supportCSTwoShotDecision
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  if (CSIsHorseman_isHorseman != 1)
  {
    return !+[CSUtils isDarwinOS];
  }

  return [self isLocalVoiceTriggerAvailable];
}

+ (BOOL)supportSelfTriggerSuppression:(unint64_t)suppression refChannelIdx:(unint64_t)idx
{
  if (!+[CSUtils supportSelfTriggerSuppressionWatch])
  {
    if (CSIsHorseman_onceToken != -1)
    {
      dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
    }

    if (CSIsHorseman_isHorseman)
    {
      return suppression > idx;
    }
  }

  v6 = +[CSUtils isLocalVoiceTriggerAvailable];
  result = 0;
  if (suppression >= 2 && v6)
  {
    return suppression > idx;
  }

  return result;
}

+ (BOOL)supportOpportunisticZLL
{
  if ([self isLocalVoiceTriggerAvailable])
  {
    if (CSIsHorseman_onceToken != -1)
    {
      dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
    }

    if (CSIsHorseman_isHorseman)
    {
      return 1;
    }
  }

  [self isLocalVoiceTriggerAvailable];
  return 0;
}

+ (BOOL)supportPremiumAssets
{
  if (CSHasAOP_onceToken != -1)
  {
    dispatch_once(&CSHasAOP_onceToken, &__block_literal_global_38);
  }

  if (CSHasAOP_hasAOP)
  {
    return !+[CSUtils isDarwinOS];
  }

  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  if (CSIsHorseman_isHorseman == 1)
  {
    return !+[CSUtils isDarwinOS];
  }

  else
  {
    return 0;
  }
}

+ (unsigned)getAudioDeviceForHalUID:(id)d
{
  v31 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v4 = dCopy;
  v20 = dCopy;
  if (dCopy && [dCopy length])
  {
    v18 = 0;
    ioPropertyDataSize = 32;
    outPropertyData[0] = &v20;
    outPropertyData[1] = 8;
    outPropertyData[2] = &v18;
    outPropertyData[3] = 4;
    Property = AudioHardwareGetProperty(0x64756964u, &ioPropertyDataSize, outPropertyData);
    v16 = Property;
    if (Property)
    {
      v6 = Property;
      v7 = CSLogCategoryAudio;
      if (!os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }

      *buf = 136316162;
      v22 = "+[CSUtils(AudioDevice) getAudioDeviceForHalUID:]";
      v23 = 2112;
      v24 = v20;
      v25 = 1024;
      v26 = v6;
      v27 = 1040;
      v28 = 4;
      v29 = 2080;
      v30 = &v16;
      v13 = "%s Error getting device from UID '%@': %d (%.4s).";
      v14 = v7;
      v15 = 44;
    }

    else
    {
      v8 = v18;
      if (v18)
      {
        goto LABEL_10;
      }

      v12 = CSLogCategoryAudio;
      if (!os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
LABEL_5:
        v8 = 0;
LABEL_10:
        v4 = v20;
        goto LABEL_11;
      }

      *buf = 136315138;
      v22 = "+[CSUtils(AudioDevice) getAudioDeviceForHalUID:]";
      v13 = "%s Retrieved AudioDeviceID is unknown.";
      v14 = v12;
      v15 = 12;
    }

    _os_log_error_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
    goto LABEL_5;
  }

  v9 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v22 = "+[CSUtils(AudioDevice) getAudioDeviceForHalUID:]";
    _os_log_error_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_ERROR, "%s UID is nil or empty. Returning AudioDeviceID as unknown", buf, 0xCu);
  }

  v8 = 0;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (BOOL)isOutputDevice:(unsigned int)device relatedToInputDevice:(unsigned int)inputDevice
{
  v30 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = *"nikabolg";
  inAddress.mElement = 0;
  outDataSize = 0;
  PropertyDataSize = AudioObjectGetPropertyDataSize(inputDevice, &inAddress, 0, 0, &outDataSize);
  if (PropertyDataSize)
  {
    v7 = PropertyDataSize;
    v8 = CSLogCategoryAudio;
    if (!os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
LABEL_3:
      v9 = 0;
      goto LABEL_4;
    }

    *buf = 136315394;
    v27 = "+[CSUtils(AudioDevice) isOutputDevice:relatedToInputDevice:]";
    v28 = 1024;
    v29 = v7;
    v19 = "%s Error getting related devices data size: %d";
    v20 = v8;
    v21 = 18;
LABEL_17:
    _os_log_error_impl(&dword_1DDA4B000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
    goto LABEL_3;
  }

  v12 = outDataSize;
  v13 = malloc_type_malloc(outDataSize, 0x100004052888210uLL);
  if (!v13)
  {
    v18 = CSLogCategoryAudio;
    if (!os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    *buf = 136315138;
    v27 = "+[CSUtils(AudioDevice) isOutputDevice:relatedToInputDevice:]";
    v19 = "%s Error allocating memory";
    v20 = v18;
    v21 = 12;
    goto LABEL_17;
  }

  v14 = v13;
  PropertyData = AudioObjectGetPropertyData(inputDevice, &inAddress, 0, 0, &outDataSize, v13);
  if (PropertyData)
  {
    v16 = PropertyData;
    v17 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "+[CSUtils(AudioDevice) isOutputDevice:relatedToInputDevice:]";
      v28 = 1024;
      v29 = v16;
      _os_log_error_impl(&dword_1DDA4B000, v17, OS_LOG_TYPE_ERROR, "%s Error getting related devices: %d", buf, 0x12u);
    }

    free(v14);
    goto LABEL_3;
  }

  if (v12 < 4)
  {
    v9 = 0;
  }

  else if (*v14 == device)
  {
    v9 = 1;
  }

  else
  {
    v22 = 0;
    while ((v12 >> 2) - 1 != v22)
    {
      v23 = v14[++v22];
      if (v23 == device)
      {
        goto LABEL_23;
      }
    }

    v22 = v12 >> 2;
LABEL_23:
    v9 = v22 < v12 >> 2;
  }

  free(v14);
LABEL_4:
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (unsigned)getDefaultOutputAudioDevice
{
  v14 = *MEMORY[0x1E69E9840];
  inAddress = *"tuOdbolg";
  inAddress_8 = 0;
  ioDataSize = 4;
  PropertyData = AudioObjectGetPropertyData(1u, &inAddress, 0, 0, &ioDataSize, &inAddress_8 + 4);
  if (PropertyData)
  {
    v3 = PropertyData;
    v4 = CSLogCategoryAudio;
    result = os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136315394;
      v11 = "+[CSUtils(AudioDevice) getDefaultOutputAudioDevice]";
      v12 = 1024;
      v13 = v3;
      _os_log_error_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_ERROR, "%s Error getting default output device ID: %d", buf, 0x12u);
      result = 0;
    }
  }

  else
  {
    result = HIDWORD(inAddress_8);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

+ (BOOL)isHypotheticalAudioRouteBluetoothAndNotBTSpeakerFromAudioSessinoId:(unsigned int)id
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [self getAudioSessionFromAudioSessionId:?];
  v6 = [self fetchHypotheticalRouteFromAudioSession:v5];
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    v16 = 136315650;
    v17 = "+[CSUtils(AudioDevice) isHypotheticalAudioRouteBluetoothAndNotBTSpeakerFromAudioSessinoId:]";
    v18 = 2114;
    v19 = v6;
    v20 = 2048;
    idCopy = id;
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_INFO, "%s hypothetical route = %{public}@ from audioSessionId %lu", &v16, 0x20u);
  }

  if (v6)
  {
    v8 = MEMORY[0x1E69AEC20];
    v9 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69AEC20]];

    if (v9)
    {
      v10 = [v6 objectForKey:*MEMORY[0x1E69AEBA0]];
      v11 = [v10 isEqualToString:*MEMORY[0x1E69AEBB8]];
      v12 = [v6 objectForKeyedSubscript:*v8];
      bOOLValue = [v12 BOOLValue];

      LOBYTE(v9) = bOOLValue & (v11 ^ 1);
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (id)fetchHypotheticalBluetoothRouteProductIdFromAudioSessionId:(unsigned int)id
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [self getAudioSessionFromAudioSessionId:?];
  v6 = [self fetchHypotheticalRouteFromAudioSession:v5];
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    v16 = 136315650;
    v17 = "+[CSUtils(AudioDevice) fetchHypotheticalBluetoothRouteProductIdFromAudioSessionId:]";
    v18 = 2114;
    v19 = v6;
    v20 = 2048;
    idCopy = id;
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_INFO, "%s hypothetical route = %{public}@ from audioSessionId %lu", &v16, 0x20u);
  }

  if (v6 && ([v6 objectForKey:*MEMORY[0x1E69AEC30]], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "BOOLValue"), v8, v9))
  {
    v10 = MEMORY[0x1E69AEC00];
    v11 = [v6 objectForKey:*MEMORY[0x1E69AEC00]];

    if (v11 && (([v6 objectForKeyedSubscript:*v10], v11 = objc_claimAutoreleasedReturnValue(), v12 = @"BTHeadphones", (objc_msgSend(v11, "hasPrefix:", @"BTHeadphones") & 1) != 0) || (v12 = @"BTHeadset", objc_msgSend(v11, "hasPrefix:", @"BTHeadset"))))
    {
      v13 = [v11 substringFromIndex:{-[__CFString length](v12, "length")}];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
    v11 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (BOOL)isNonHSCapableBTHeadsetRouteFromHypotheticalRoute:(id)route
{
  routeCopy = route;
  v4 = routeCopy;
  if (routeCopy && ([routeCopy objectForKey:*MEMORY[0x1E69AEC10]], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "BOOLValue"), v5, (v6 & 1) == 0))
  {
    v8 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69AEC20]];
    bOOLValue = [v8 BOOLValue];

    v10 = [v4 objectForKey:*MEMORY[0x1E69AEBA0]];
    v11 = [v10 isEqualToString:*MEMORY[0x1E69AEBB0]];
    v12 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69AEB98]];
    if ([v12 isEqualToString:@"HeadphonesBT"])
    {
      v13 = 1;
    }

    else
    {
      v13 = [v12 isEqualToString:@"HeadsetBT"];
    }

    if (bOOLValue)
    {
      v7 = v11 & v13;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (unint64_t)fetchHypotheticalRouteTypeFromAudioSessionId:(unsigned int)id
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [self getAudioSessionFromAudioSessionId:?];
  v6 = [self fetchHypotheticalRouteFromAudioSession:v5];
  v7 = v6;
  if (v6)
  {
    v8 = MEMORY[0x1E69AEB98];
    v9 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69AEB98]];

    if (v9)
    {
      v10 = [v7 objectForKeyedSubscript:*v8];
      if ([v10 isEqualToString:*MEMORY[0x1E69581E8]])
      {
        v9 = 1;
      }

      else if ([CSUtils isNonHSCapableBTHeadsetRouteFromHypotheticalRoute:v7])
      {
        v9 = 3;
      }

      else
      {
        v11 = [v7 objectForKey:*MEMORY[0x1E69AEC30]];
        bOOLValue = [v11 BOOLValue];

        if (bOOLValue)
        {
          v13 = [v7 objectForKey:*MEMORY[0x1E69AEC10]];
          bOOLValue2 = [v13 BOOLValue];

          if (bOOLValue2)
          {
            v9 = 2;
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = 0;
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v15 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    v18 = 136315906;
    v19 = "+[CSUtils(AudioDevice) fetchHypotheticalRouteTypeFromAudioSessionId:]";
    v20 = 2114;
    v21 = v7;
    v22 = 2048;
    idCopy = id;
    v24 = 2048;
    v25 = v9;
    _os_log_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_INFO, "%s hypothetical route = %{public}@ from audioSessionId %lu, routeType = %lu", &v18, 0x2Au);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (id)getAudioSessionFromAudioSessionId:(unsigned int)id
{
  if (id)
  {
    [MEMORY[0x1E6958468] retrieveSessionWithID:?];
  }

  else
  {
    [MEMORY[0x1E6958468] sharedInstance];
  }
  v3 = ;

  return v3;
}

+ (BOOL)isOutOfBandAudioRouteWithRecordRoute:(id)route
{
  routeCopy = route;
  if ([self isDoAPAudioRouteWithRecordRoute:routeCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [self isJarvisAudioRouteWithRecordRoute:routeCopy];
  }

  return v5;
}

+ (id)audioPortSubtypeAsString:(unsigned int)string
{
  if (string)
  {
    cStr[0] = HIBYTE(string);
    cStr[1] = BYTE2(string);
    cStr[2] = BYTE1(string);
    cStr[3] = string;
    cStr[4] = 0;
    v4 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isBuiltInRecordRoute:(id)route
{
  routeCopy = route;
  v4 = +[CSFPreferences sharedPreferences];
  programmableAudioInjectionEnabled = [v4 programmableAudioInjectionEnabled];

  if (programmableAudioInjectionEnabled)
  {
    v6 = [routeCopy containsString:@"BuiltInMic"];
  }

  else
  {
    v6 = [routeCopy isEqualToString:*MEMORY[0x1E69581C8]];
  }

  v7 = v6;

  return v7;
}

+ (BOOL)isBuiltInRouteWithRecordRoute:(id)route playbackRoute:(id)playbackRoute
{
  routeCopy = route;
  playbackRouteCopy = playbackRoute;
  v7 = +[CSFPreferences sharedPreferences];
  programmableAudioInjectionEnabled = [v7 programmableAudioInjectionEnabled];

  if (programmableAudioInjectionEnabled)
  {
    if ([routeCopy containsString:@"BuiltInMic"])
    {
      v9 = @"BuiltInSpeaker";
LABEL_10:
      v10 = [playbackRouteCopy isEqualToString:v9];
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (![routeCopy isEqualToString:*MEMORY[0x1E69581C8]] || (objc_msgSend(playbackRouteCopy, "isEqualToString:", *MEMORY[0x1E69581E8]) & 1) == 0)
  {
    if (+[CSUtils isExclaveHardware](CSUtils, "isExclaveHardware") && [routeCopy isEqualToString:@"HACBuiltIn"])
    {
      v9 = *MEMORY[0x1E69581E8];
      goto LABEL_10;
    }

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v10 = 1;
LABEL_12:

  return v10;
}

+ (BOOL)isBluetoothVehicleOutput
{
  v29 = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  mEMORY[0x1E6958468] = [MEMORY[0x1E6958468] sharedInstance];
  currentRoute = [mEMORY[0x1E6958468] currentRoute];
  outputs = [currentRoute outputs];

  date2 = [MEMORY[0x1E695DF00] date];
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    [date2 timeIntervalSinceDate:date];
    *buf = 136315394;
    v26 = "+[CSUtils(AudioDevice) isBluetoothVehicleOutput]";
    v27 = 2050;
    v28 = v9;
    _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s fetch output port descriptions elapsed time = %{public}lf", buf, 0x16u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = outputs;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v18 = date2;
    v19 = date;
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v10);
        }

        endpointType = [*(*(&v20 + 1) + 8 * i) endpointType];
        v15 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v26 = "+[CSUtils(AudioDevice) isBluetoothVehicleOutput]";
          v27 = 2050;
          v28 = endpointType;
          _os_log_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_DEFAULT, "%s Device endpointType = %{public}lu", buf, 0x16u);
        }

        if (endpointType == 1986552684)
        {
          LOBYTE(v11) = 1;
          goto LABEL_15;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

LABEL_15:
    date2 = v18;
    date = v19;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)isBluetoothAudioDeviceConnected
{
  v16 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E6958468] = [MEMORY[0x1E6958468] sharedInstance];
  v4 = [self fetchHypotheticalRouteFromAudioSession:mEMORY[0x1E6958468]];

  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "+[CSUtils(AudioDevice) isBluetoothAudioDeviceConnected]";
    v14 = 2114;
    v15 = v4;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s hypotheticalRoute = %{public}@", &v12, 0x16u);
  }

  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = [v4 objectForKeyedSubscript:@"BTDetails_IsHFPRoute"];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = [v4 objectForKeyedSubscript:@"BTDetails_IsHFPRoute"];
  bOOLValue = [v7 BOOLValue];

  if (!bOOLValue)
  {
LABEL_9:
    LOBYTE(v6) = 0;
    goto LABEL_10;
  }

  v9 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "+[CSUtils(AudioDevice) isBluetoothAudioDeviceConnected]";
    _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Audio route changing to HFP is expected", &v12, 0xCu);
  }

  LOBYTE(v6) = 1;
LABEL_10:

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (BOOL)isHeadphoneDeviceWithRecordRoute:(id)route playbackRoute:(id)playbackRoute
{
  v34 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  playbackRouteCopy = playbackRoute;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v29 = "+[CSUtils(AudioDevice) isHeadphoneDeviceWithRecordRoute:playbackRoute:]";
    v30 = 2114;
    v31 = routeCopy;
    v32 = 2114;
    v33 = playbackRouteCopy;
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_INFO, "%s Record route = %{public}@, playback route = %{public}@", buf, 0x20u);
  }

  if ([routeCopy isEqualToString:*MEMORY[0x1E6958218]] && (objc_msgSend(playbackRouteCopy, "isEqualToString:", *MEMORY[0x1E6958208]) & 1) != 0)
  {
    v8 = 1;
  }

  else if (([playbackRouteCopy isEqualToString:*MEMORY[0x1E69581B0]] & 1) != 0 || objc_msgSend(playbackRouteCopy, "isEqualToString:", *MEMORY[0x1E69581C0]))
  {
    mEMORY[0x1E6958468] = [MEMORY[0x1E6958468] sharedInstance];
    currentRoute = [mEMORY[0x1E6958468] currentRoute];
    outputs = [currentRoute outputs];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = outputs;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v21 = playbackRouteCopy;
      v22 = routeCopy;
      v15 = *v24;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          endpointType = [*(*(&v23 + 1) + 8 * i) endpointType];
          v18 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v29 = "+[CSUtils(AudioDevice) isHeadphoneDeviceWithRecordRoute:playbackRoute:]";
            v30 = 2050;
            v31 = endpointType;
            _os_log_impl(&dword_1DDA4B000, v18, OS_LOG_TYPE_DEFAULT, "%s Device endpointType = %{public}lu", buf, 0x16u);
          }

          if (endpointType != 1751412846)
          {
            v8 = 0;
            goto LABEL_20;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

      v8 = 1;
LABEL_20:
      playbackRouteCopy = v21;
      routeCopy = v22;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (id)_readValuesInNestedDictionary:(id)dictionary keyword:(id)keyword depth:(int64_t)depth limitedDepth:(int64_t)limitedDepth
{
  v30 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  keywordCopy = keyword;
  v11 = 0;
  if (dictionaryCopy && depth < limitedDepth)
  {
    [MEMORY[0x1E695DF70] array];
    v23 = v22 = dictionaryCopy;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = dictionaryCopy;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          v18 = [v12 objectForKeyedSubscript:{v17, v22}];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v17 isEqualToString:keywordCopy])
          {
            if (v18)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v23 addObject:v18];
              }
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [self _readValuesInNestedDictionary:v18 keyword:keywordCopy depth:depth + 1 limitedDepth:limitedDepth];
              if (v19)
              {
                [v23 addObjectsFromArray:v19];
              }
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v14);
    }

    v11 = [v23 copy];
    dictionaryCopy = v22;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)readValuesFromJsonFile:(id)file keyword:(id)keyword
{
  v22 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  keywordCopy = keyword;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (![defaultManager fileExistsAtPath:fileCopy])
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:fileCopy];
  if (!v9)
  {
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v19 = "+[CSUtils(Json) readValuesFromJsonFile:keyword:]";
      v20 = 2112;
      v21 = fileCopy;
      _os_log_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_DEFAULT, "%s Invalid json file is being read: %@", buf, 0x16u);
    }

    goto LABEL_7;
  }

  v10 = v9;
  v17 = 0;
  v11 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v9 options:0 error:&v17];
  v12 = v17;

  if (!v12)
  {
    v13 = [self _readValuesInNestedDictionary:v11 keyword:keywordCopy depth:0 limitedDepth:10];
    goto LABEL_9;
  }

LABEL_8:
  v13 = 0;
LABEL_9:

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (BOOL)machXPCConnection:(id)connection hasEntitlement:(id)entitlement
{
  v18 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  entitlementCopy = entitlement;
  v7 = [machXPCEntitlementPrefix stringByAppendingString:entitlementCopy];

  [v7 UTF8String];
  v8 = xpc_connection_copy_entitlement_value();
  v9 = v8;
  if (v8 && xpc_BOOL_get_value(v8))
  {
    v10 = 1;
  }

  else
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "+[CSUtils(machXPC) machXPCConnection:hasEntitlement:]";
      v16 = 2050;
      v17 = connectionCopy;
      _os_log_error_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_ERROR, "%s Connection %{public}p rejected due to missing entitlement", &v14, 0x16u);
    }

    xpc_connection_cancel(connectionCopy);
    v10 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (id)recordContextString:(id)string
{
  stringCopy = string;
  if ([self isRecordContextBuiltInVoiceTrigger:stringCopy])
  {
    v5 = @"voic";
  }

  else if ([self isRecordContextJarvisVoiceTrigger:stringCopy])
  {
    v5 = @"carplay";
  }

  else if ([self isRecordContextHearstDoubleTap:stringCopy])
  {
    v5 = @"hearst";
  }

  else if ([self isRecordContextRaiseToSpeak:stringCopy])
  {
    v5 = @"raisetospeak";
  }

  else if ([self isRecordContextAutoPrompt:stringCopy])
  {
    v5 = @"auto";
  }

  else
  {
    v5 = @"unknown";
  }

  return v5;
}

+ (BOOL)isRecordContextJarvisButtonPress:(id)press
{
  if (!press)
  {
    return 0;
  }

  v3 = [press objectForKeyedSubscript:*MEMORY[0x1E69583A8]];
  v4 = [v3 integerValue] == 1986357346;

  return v4;
}

+ (BOOL)isRecordContextJarvisVoiceTrigger:(id)trigger
{
  if (!trigger)
  {
    return 0;
  }

  v3 = [trigger objectForKeyedSubscript:*MEMORY[0x1E69583A8]];
  v4 = [v3 integerValue] == 1668314723;

  return v4;
}

+ (BOOL)isRecordContextRaiseToSpeak:(id)speak
{
  if (!speak)
  {
    return 0;
  }

  v3 = [speak objectForKeyedSubscript:*MEMORY[0x1E69583A8]];
  v4 = [v3 integerValue] == 1918986611;

  return v4;
}

+ (BOOL)isRecordContextHearstDoubleTap:(id)tap
{
  if (!tap)
  {
    return 0;
  }

  v3 = [tap objectForKeyedSubscript:*MEMORY[0x1E69583A8]];
  v4 = [v3 integerValue] == 1651795060;

  return v4;
}

+ (BOOL)isRecordContextHearstVoiceTrigger:(id)trigger
{
  if (!trigger)
  {
    return 0;
  }

  v3 = [trigger objectForKeyedSubscript:*MEMORY[0x1E69583A8]];
  v4 = [v3 integerValue] == 1751414371;

  return v4;
}

+ (BOOL)isRecordContextSpeakerIdTrainingTrigger:(id)trigger
{
  if (!trigger)
  {
    return 0;
  }

  v3 = [trigger objectForKeyedSubscript:*MEMORY[0x1E69583A8]];
  v4 = [v3 integerValue] == 1936746852;

  return v4;
}

+ (BOOL)isRecordContextAutoPrompt:(id)prompt
{
  if (!prompt)
  {
    return 0;
  }

  v3 = [prompt objectForKeyedSubscript:*MEMORY[0x1E69583A8]];
  v4 = [v3 integerValue] == 1635087471;

  return v4;
}

+ (BOOL)isRecordContextHomeButtonPress:(id)press
{
  if (!press)
  {
    return 0;
  }

  v3 = [press objectForKeyedSubscript:*MEMORY[0x1E69583A8]];
  v4 = [v3 integerValue] == 1752132965;

  return v4;
}

+ (BOOL)isRecordContextRemoraVoiceTrigger:(id)trigger
{
  if (!trigger)
  {
    return 0;
  }

  v3 = [trigger objectForKeyedSubscript:*MEMORY[0x1E69583A8]];
  v4 = [v3 integerValue] == 1919776372;

  return v4;
}

+ (BOOL)isRecordContextDarwinVoiceTrigger:(id)trigger
{
  if (!trigger)
  {
    return 0;
  }

  v3 = [trigger objectForKeyedSubscript:*MEMORY[0x1E69583A8]];
  v4 = [v3 integerValue] == 1684108899;

  return v4;
}

+ (BOOL)isRecordContextBuiltInVoiceTrigger:(id)trigger
{
  if (!trigger)
  {
    return 0;
  }

  v3 = [trigger objectForKeyedSubscript:*MEMORY[0x1E69583A8]];
  v4 = [v3 integerValue] == 1987012963;

  return v4;
}

+ (BOOL)isRecordContextVoiceTrigger:(id)trigger
{
  triggerCopy = trigger;
  v4 = [CSUtils isRecordContextBuiltInVoiceTrigger:triggerCopy]|| [CSUtils isRecordContextHearstVoiceTrigger:triggerCopy]|| [CSUtils isRecordContextJarvisVoiceTrigger:triggerCopy];
  if ([CSUtils isRecordContextDarwinVoiceTrigger:triggerCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [CSUtils isRecordContextRemoraVoiceTrigger:triggerCopy]|| v4;
  }

  return v5 & 1;
}

+ (id)getSiriLanguageWithEndpointId:(id)id fallbackLanguage:(id)language
{
  v15 = *MEMORY[0x1E69E9840];
  idCopy = id;
  languageCopy = language;
  v7 = CSLogContextFacilityCoreSpeech;
  if (idCopy)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "+[CSUtils(LanguageCode) getSiriLanguageWithEndpointId:fallbackLanguage:]";
      v13 = 2112;
      v14 = idCopy;
      _os_log_error_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_ERROR, "%s Failed to query language code with endpointId %@, trying legacy query", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "+[CSUtils(LanguageCode) getSiriLanguageWithEndpointId:fallbackLanguage:]";
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_INFO, "%s endpointUUID not provided, fallback to legacy query", &v11, 0xCu);
  }

  v8 = [CSUtils getSiriLanguageWithFallback:languageCopy];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)getBestSupportedSiriLanguageWithFallback:(id)fallback
{
  v16 = *MEMORY[0x1E69E9840];
  fallbackCopy = fallback;
  if (+[CSUtils isDarwinOS])
  {
    mEMORY[0x1E698D1B8] = +[CSFPreferences sharedPreferences];
    [mEMORY[0x1E698D1B8] languageCodeDarwin];
  }

  else
  {
    mEMORY[0x1E698D1B8] = [MEMORY[0x1E698D1B8] sharedPreferences];
    [mEMORY[0x1E698D1B8] languageCode];
  }
  v5 = ;

  v6 = v5;
  if (!v5)
  {
    v7 = CSLogContextFacilityCoreSpeech;
    v8 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR);
    v6 = fallbackCopy;
    if (v8)
    {
      v12 = 136315394;
      v13 = "+[CSUtils(LanguageCode) getBestSupportedSiriLanguageWithFallback:]";
      v14 = 2112;
      v15 = fallbackCopy;
      _os_log_error_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_ERROR, "%s Siri language is nil, falling back to %@", &v12, 0x16u);
      v6 = fallbackCopy;
    }
  }

  v9 = v6;

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)getSiriLanguageWithFallback:(id)fallback
{
  v16 = *MEMORY[0x1E69E9840];
  fallbackCopy = fallback;
  if (+[CSUtils isDarwinOS])
  {
    v4 = +[CSFPreferences sharedPreferences];
    languageCodeDarwin = [v4 languageCodeDarwin];
  }

  else
  {
    languageCodeDarwin = AFPreferencesMobileUserSessionLanguage();
  }

  v6 = languageCodeDarwin;
  if (!languageCodeDarwin)
  {
    v7 = CSLogContextFacilityCoreSpeech;
    v8 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR);
    v6 = fallbackCopy;
    if (v8)
    {
      v12 = 136315394;
      v13 = "+[CSUtils(LanguageCode) getSiriLanguageWithFallback:]";
      v14 = 2112;
      v15 = fallbackCopy;
      _os_log_error_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_ERROR, "%s Siri language is nil, falling back to %@", &v12, 0x16u);
      v6 = fallbackCopy;
    }
  }

  v9 = v6;

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (BOOL)isRemoteDarwinWithDeviceId:(id)id
{
  v14[2] = *MEMORY[0x1E69E9840];
  idCopy = id;
  if (idCopy)
  {
    v14[0] = 0;
    v14[1] = 0;
    v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:idCopy];
    [v4 getUUIDBytes:v14];
    v5 = remote_device_copy_device_with_uuid();
    if (v5)
    {
      v6 = remote_device_get_type() == 11;
    }

    else
    {
      v7 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v10 = 136315394;
        v11 = "+[CSUtils(AudioHardware) isRemoteDarwinWithDeviceId:]";
        v12 = 2114;
        v13 = idCopy;
        _os_log_error_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_ERROR, "%s Invalid device with deviceId %{public}@", &v10, 0x16u);
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (void)purgeFilesWithExtensionInDirectory:(id)directory extension:(id)extension withFileToKep:(id)kep
{
  v48 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  extensionCopy = extension;
  kepCopy = kep;
  [MEMORY[0x1E696AC08] defaultManager];
  v33 = v42 = 0;
  v36 = directoryCopy;
  v9 = [v33 contentsOfDirectoryAtPath:directoryCopy error:&v42];
  v10 = v42;
  if (v10)
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v45 = "+[CSUtils(Directory) purgeFilesWithExtensionInDirectory:extension:withFileToKep:]";
      v46 = 2112;
      v47 = v10;
      _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s Error reading contents of directory: %@", buf, 0x16u);
    }
  }

  else
  {
    v31 = 0;
    v32 = v9;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v9;
    v12 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v39;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v39 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v38 + 1) + 8 * i);
          v18 = [v36 stringByAppendingPathComponent:{v17, v31, v32}];
          v19 = v18;
          if (!kepCopy || ([v18 stringByStandardizingPath], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(kepCopy, "stringByStandardizingPath"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "isEqualToString:", v21), v21, v20, (v22 & 1) == 0))
          {
            pathExtension = [v17 pathExtension];
            v24 = [pathExtension isEqualToString:extensionCopy];

            if (v24)
            {
              v37 = v14;
              [v33 removeItemAtPath:v19 error:&v37];
              v25 = v37;

              v26 = CSLogContextFacilityCoreSpeech;
              v27 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
              if (v25)
              {
                if (v27)
                {
                  *buf = 136315394;
                  v45 = "+[CSUtils(Directory) purgeFilesWithExtensionInDirectory:extension:withFileToKep:]";
                  v46 = 2112;
                  v47 = v25;
                  _os_log_impl(&dword_1DDA4B000, v26, OS_LOG_TYPE_DEFAULT, "%s Error purging file: %@", buf, 0x16u);
                }

                v14 = v25;
              }

              else
              {
                if (v27)
                {
                  v28 = v26;
                  v29 = [v36 stringByAppendingPathComponent:v19];
                  *buf = 136315394;
                  v45 = "+[CSUtils(Directory) purgeFilesWithExtensionInDirectory:extension:withFileToKep:]";
                  v46 = 2112;
                  v47 = v29;
                  _os_log_impl(&dword_1DDA4B000, v28, OS_LOG_TYPE_DEFAULT, "%s file is purged: %@", buf, 0x16u);
                }

                v14 = 0;
              }
            }
          }
        }

        v13 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v13);
    }

    else
    {
      v14 = 0;
    }

    v10 = v31;
    v9 = v32;
  }

  v30 = *MEMORY[0x1E69E9840];
}

+ (id)_contentsOfDirectoryAtURL:(id)l matchingPattern:(id)pattern includingPropertiesForKeys:(id)keys error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  lCopy = l;
  keysCopy = keys;
  v11 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:pattern options:17 error:error];
  v12 = v11;
  if (lCopy && v11)
  {
    v13 = objc_alloc_init(MEMORY[0x1E696AC08]);
    v14 = [v13 contentsOfDirectoryAtURL:lCopy includingPropertiesForKeys:keysCopy options:0 error:error];
    if (v14)
    {
      v15 = MEMORY[0x1E696AE18];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __97__CSUtils_Directory___contentsOfDirectoryAtURL_matchingPattern_includingPropertiesForKeys_error___block_invoke;
      v22[3] = &unk_1E865B620;
      v23 = v12;
      v16 = [v15 predicateWithBlock:v22];
      v17 = [v14 filteredArrayUsingPredicate:v16];
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_13;
  }

  if (!v11)
  {
    if (!lCopy)
    {
      goto LABEL_10;
    }

    v18 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 136315138;
    v25 = "+[CSUtils(Directory) _contentsOfDirectoryAtURL:matchingPattern:includingPropertiesForKeys:error:]";
    v19 = "%s Directory URL is nil!";
    goto LABEL_17;
  }

  v18 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v25 = "+[CSUtils(Directory) _contentsOfDirectoryAtURL:matchingPattern:includingPropertiesForKeys:error:]";
    v19 = "%s Regular expression is nil!";
LABEL_17:
    _os_log_error_impl(&dword_1DDA4B000, v18, OS_LOG_TYPE_ERROR, v19, buf, 0xCu);
  }

LABEL_10:
  v17 = 0;
LABEL_13:

  v20 = *MEMORY[0x1E69E9840];

  return v17;
}

BOOL __97__CSUtils_Directory___contentsOfDirectoryAtURL_matchingPattern_includingPropertiesForKeys_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 lastPathComponent];
  v4 = [*(a1 + 32) numberOfMatchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}] != 0;

  return v4;
}

+ (void)_sortedURLsInDirectory:(id)directory matchingPattern:(id)pattern completion:(id)completion
{
  v30[1] = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  patternCopy = pattern;
  completionCopy = completion;
  if (completionCopy)
  {
    v11 = *MEMORY[0x1E695DAA8];
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__9405;
    v28 = __Block_byref_object_dispose__9406;
    v29 = 0;
    v30[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    v13 = v25 + 5;
    obj = v25[5];
    v14 = [self _contentsOfDirectoryAtURL:directoryCopy matchingPattern:patternCopy includingPropertiesForKeys:v12 error:&obj];
    objc_storeStrong(v13, obj);

    if (v14)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __72__CSUtils_Directory___sortedURLsInDirectory_matchingPattern_completion___block_invoke;
      v20[3] = &unk_1E865B5F8;
      v21 = v11;
      v22 = &v24;
      v15 = [v14 sortedArrayUsingComparator:v20];
    }

    else
    {
      v15 = 0;
    }

    v16 = v25;
    v17 = v25[5];
    if (v17)
    {

      v15 = 0;
      v16 = v25;
      v17 = v25[5];
    }

    v19 = v17;
    completionCopy[2](completionCopy, v15, &v19);
    objc_storeStrong(v16 + 5, v19);

    _Block_object_dispose(&v24, 8);
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __72__CSUtils_Directory___sortedURLsInDirectory_matchingPattern_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  obj = 0;
  v18 = 0;
  v7 = *(*(a1 + 40) + 8);
  v8 = [v5 getResourceValue:&v18 forKey:*(a1 + 32) error:&obj];
  v9 = v18;
  objc_storeStrong((v7 + 40), obj);
  if ((v8 & 1) == 0)
  {
    NSLog(&cfstr_UnableToGetFor.isa, *(a1 + 32), v5, *(*(*(a1 + 40) + 8) + 40));
  }

  v15 = 0;
  v16 = 0;
  v10 = *(*(a1 + 40) + 8);
  v11 = [v6 getResourceValue:&v16 forKey:*(a1 + 32) error:&v15];
  v12 = v16;
  objc_storeStrong((v10 + 40), v15);
  if ((v11 & 1) == 0)
  {
    NSLog(&cfstr_UnableToGetFor.isa, *(a1 + 32), v6, *(*(*(a1 + 40) + 8) + 40));
  }

  v13 = [v12 compare:v9];

  return v13;
}

+ (void)URLsInDirectory:(id)directory matchingPattern:(id)pattern completion:(id)completion
{
  if (completion)
  {
    v13 = 0;
    completionCopy = completion;
    v9 = [self _contentsOfDirectoryAtURL:directory matchingPattern:pattern includingPropertiesForKeys:0 error:&v13];
    v10 = v13;
    v12 = v10;
    completionCopy[2](completionCopy, v9, &v12);

    v11 = v12;
  }
}

+ (id)_timeStampString
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  [v2 setDateFormat:@"yyyyMMdd-HHmmss"];
  date = [MEMORY[0x1E695DF00] date];
  v5 = [v2 stringFromDate:date];

  return v5;
}

+ (BOOL)_createLoggingDirectoryIfNeeded:(id)needed
{
  v20 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  if (neededCopy)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    if ([defaultManager fileExistsAtPath:neededCopy])
    {
      v5 = 0;
    }

    else
    {
      v13 = 0;
      v7 = [defaultManager createDirectoryAtPath:neededCopy withIntermediateDirectories:1 attributes:0 error:&v13];
      v5 = v13;
      if ((v7 & 1) == 0)
      {
        v8 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          v11 = v8;
          localizedDescription = [v5 localizedDescription];
          *buf = 136315650;
          v15 = "+[CSUtils(Directory) _createLoggingDirectoryIfNeeded:]";
          v16 = 2114;
          v17 = neededCopy;
          v18 = 2114;
          v19 = localizedDescription;
          _os_log_error_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_ERROR, "%s Couldn't create logging directory at path %{public}@ %{public}@", buf, 0x20u);
        }
      }
    }
  }

  else
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "+[CSUtils(Directory) _createLoggingDirectoryIfNeeded:]";
      _os_log_error_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_ERROR, "%s Invalid log directory", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return neededCopy != 0;
}

+ (void)removeDirectory:(id)directory
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AC08];
  directoryCopy = directory;
  defaultManager = [v3 defaultManager];
  v10 = 0;
  v6 = [defaultManager removeItemAtPath:directoryCopy error:&v10];

  v7 = v10;
  if ((v6 & 1) == 0)
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "+[CSUtils(Directory) removeDirectory:]";
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s Error purging directory: %@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (id)loggingFilePathWithDirectory:(id)directory requestId:(id)id token:(id)token postfix:(id)postfix
{
  v21 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  idCopy = id;
  tokenCopy = token;
  postfixCopy = postfix;
  v13 = postfixCopy;
  if (tokenCopy && postfixCopy)
  {
    if ([CSUtils _createLoggingDirectoryIfNeeded:directoryCopy])
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@.%@", idCopy, tokenCopy, v13];
      v15 = [directoryCopy stringByAppendingPathComponent:v14];

      goto LABEL_8;
    }
  }

  else
  {
    v16 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v20 = "+[CSUtils(Directory) loggingFilePathWithDirectory:requestId:token:postfix:]";
      _os_log_error_impl(&dword_1DDA4B000, v16, OS_LOG_TYPE_ERROR, "%s Invalid token or postfix", buf, 0xCu);
    }
  }

  v15 = 0;
LABEL_8:

  v17 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)loggingFilePathWithDirectory:(id)directory token:(id)token postfix:(id)postfix
{
  v20 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  tokenCopy = token;
  postfixCopy = postfix;
  v10 = postfixCopy;
  if (tokenCopy && postfixCopy)
  {
    if ([CSUtils _createLoggingDirectoryIfNeeded:directoryCopy])
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = +[CSUtils _timeStampString];
      v13 = [v11 stringWithFormat:@"%@-%@.%@", v12, tokenCopy, v10];

      v14 = [directoryCopy stringByAppendingPathComponent:v13];

      goto LABEL_8;
    }
  }

  else
  {
    v15 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "+[CSUtils(Directory) loggingFilePathWithDirectory:token:postfix:]";
      _os_log_error_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_ERROR, "%s Invalid token or postfix", buf, 0xCu);
    }
  }

  v14 = 0;
LABEL_8:

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (void)clearLogFilesInDirectory:(id)directory matchingPattern:(id)pattern exceedNumber:(unint64_t)number
{
  directoryCopy = directory;
  patternCopy = pattern;
  v10 = +[CSUtils _sharedDisposeLoggingQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__CSUtils_Directory__clearLogFilesInDirectory_matchingPattern_exceedNumber___block_invoke;
  v13[3] = &unk_1E865C328;
  v14 = directoryCopy;
  v15 = patternCopy;
  selfCopy = self;
  numberCopy = number;
  v11 = patternCopy;
  v12 = directoryCopy;
  dispatch_async(v10, v13);
}

void __76__CSUtils_Directory__clearLogFilesInDirectory_matchingPattern_exceedNumber___block_invoke(uint64_t *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[4];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__CSUtils_Directory__clearLogFilesInDirectory_matchingPattern_exceedNumber___block_invoke_2;
  v5[3] = &unk_1E865B5D0;
  v8 = a1[7];
  v6 = v2;
  v7 = a1[4];
  [v3 _sortedURLsInDirectory:v4 matchingPattern:v6 completion:v5];
}

void __76__CSUtils_Directory__clearLogFilesInDirectory_matchingPattern_exceedNumber___block_invoke_2(void *a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 count];
  v5 = a1[6];
  if (v4 > v5)
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [v3 count];
      v9 = a1[4];
      v10 = a1[5];
      v11 = a1[6];
      *buf = 136316162;
      v25 = "+[CSUtils(Directory) clearLogFilesInDirectory:matchingPattern:exceedNumber:]_block_invoke_2";
      v26 = 2050;
      v27 = v8;
      v28 = 2114;
      v29 = v9;
      v30 = 2114;
      v31 = v10;
      v32 = 2050;
      v33 = v11;
      _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s CS logging files number %{public}lu with pattern %{public}@ under %{public}@ exceeding limit, only keep the latest %{public}lu ones", buf, 0x34u);

      v5 = a1[6];
    }

    if (v5 < [v3 count])
    {
      v13 = 0;
      *&v12 = 136315650;
      v22 = v12;
      do
      {
        v14 = v13;
        v15 = objc_alloc_init(MEMORY[0x1E696AC08]);
        v16 = [v3 objectAtIndex:v5];
        v23 = v13;
        [v15 removeItemAtURL:v16 error:&v23];
        v13 = v23;

        if (v13)
        {
          v17 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
          {
            v18 = v17;
            v19 = [v3 objectAtIndex:v5];
            v20 = [v13 localizedDescription];
            *buf = v22;
            v25 = "+[CSUtils(Directory) clearLogFilesInDirectory:matchingPattern:exceedNumber:]_block_invoke";
            v26 = 2114;
            v27 = v19;
            v28 = 2114;
            v29 = v20;
            _os_log_error_impl(&dword_1DDA4B000, v18, OS_LOG_TYPE_ERROR, "%s Could not remove %{public}@: %{public}@", buf, 0x20u);
          }
        }

        ++v5;
      }

      while (v5 < [v3 count]);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

+ (void)removeLogFilesInDirectory:(id)directory matchingPattern:(id)pattern beforeDays:(float)days
{
  directoryCopy = directory;
  patternCopy = pattern;
  v10 = +[CSUtils _sharedDisposeLoggingQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__CSUtils_Directory__removeLogFilesInDirectory_matchingPattern_beforeDays___block_invoke;
  v13[3] = &unk_1E865B5A8;
  daysCopy = days;
  v15 = patternCopy;
  selfCopy = self;
  v14 = directoryCopy;
  v11 = patternCopy;
  v12 = directoryCopy;
  dispatch_async(v10, v13);
}

void __75__CSUtils_Directory__removeLogFilesInDirectory_matchingPattern_beforeDays___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:*(a1 + 56) * -3600.0 * 24.0];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 136315650;
    v14 = "+[CSUtils(Directory) removeLogFilesInDirectory:matchingPattern:beforeDays:]_block_invoke";
    v15 = 2114;
    v16 = v4;
    v17 = 2114;
    v18 = v2;
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s CS logging files under %{public}@ created before %{public}@ will be removed.", buf, 0x20u);
  }

  v5 = *(a1 + 32);
  v8 = a1 + 40;
  v6 = *(a1 + 40);
  v7 = *(v8 + 8);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__CSUtils_Directory__removeLogFilesInDirectory_matchingPattern_beforeDays___block_invoke_3;
  v11[3] = &unk_1E865B580;
  v12 = v2;
  v9 = v2;
  [v7 URLsInDirectory:v5 matchingPattern:v6 completion:v11];

  v10 = *MEMORY[0x1E69E9840];
}

void __75__CSUtils_Directory__removeLogFilesInDirectory_matchingPattern_beforeDays___block_invoke_3(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = 0;
    v7 = *v28;
    v8 = *MEMORY[0x1E695DAA8];
    *&v4 = 136315650;
    v21 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [MEMORY[0x1E695DF00] distantFuture];
        v25 = 0;
        v26 = 0;
        [v10 getResourceValue:&v26 forKey:v8 error:&v25];
        v12 = v26;

        v13 = v25;
        if (v13)
        {
          v14 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
          {
            v17 = v14;
            v18 = [v13 localizedDescription];
            *buf = 136315394;
            v32 = "+[CSUtils(Directory) removeLogFilesInDirectory:matchingPattern:beforeDays:]_block_invoke";
            v33 = 2114;
            v34 = v18;
            _os_log_error_impl(&dword_1DDA4B000, v17, OS_LOG_TYPE_ERROR, "%s Couldn't get creation date: %{public}@", buf, 0x16u);
          }

          v6 = v13;
        }

        else if ([v12 compare:*(a1 + 32)] == -1)
        {
          v15 = objc_alloc_init(MEMORY[0x1E696AC08]);
          v24 = 0;
          [v15 removeItemAtURL:v10 error:&v24];
          v6 = v24;

          if (v6)
          {
            v16 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
            {
              log = v16;
              v19 = [v6 localizedDescription];
              *buf = v21;
              v32 = "+[CSUtils(Directory) removeLogFilesInDirectory:matchingPattern:beforeDays:]_block_invoke";
              v33 = 2114;
              v34 = v10;
              v35 = 2114;
              v36 = v19;
              _os_log_error_impl(&dword_1DDA4B000, log, OS_LOG_TYPE_ERROR, "%s Could not remove %{public}@: %{public}@", buf, 0x20u);
            }
          }
        }

        else
        {
          v6 = 0;
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v5);
  }

  v20 = *MEMORY[0x1E69E9840];
}

+ (id)_sharedDisposeLoggingQueue
{
  if (_sharedDisposeLoggingQueue_onceToken != -1)
  {
    dispatch_once(&_sharedDisposeLoggingQueue_onceToken, &__block_literal_global_9432);
  }

  v3 = _sharedDisposeLoggingQueue_disposeLogQueue;

  return v3;
}

void __48__CSUtils_Directory___sharedDisposeLoggingQueue__block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, -2);
  v1 = dispatch_queue_create("Dispose Log Queue", v0);
  v2 = _sharedDisposeLoggingQueue_disposeLogQueue;
  _sharedDisposeLoggingQueue_disposeLogQueue = v1;
}

+ (void)iterateBitset:(unint64_t)bitset block:(id)block
{
  for (i = 0; i != 64; ++i)
  {
    if ((bitset >> i))
    {
      (*(block + 2))(block, i);
    }
  }
}

+ (unsigned)getNumElementInBitset:(unint64_t)bitset
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__CSUtils_Bitset__getNumElementInBitset___block_invoke;
  v5[3] = &unk_1E865C998;
  v5[4] = &v6;
  [CSUtils iterateBitset:bitset block:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

+ (BOOL)xpcConnection:(id)connection hasEntitlement:(id)entitlement withStringValue:(id)value
{
  v20 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  entitlementCopy = entitlement;
  connectionCopy = connection;
  v10 = [entitlementPrefix stringByAppendingString:entitlementCopy];

  v11 = [connectionCopy valueForEntitlement:v10];

  v12 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "+[CSUtils(NSXPC) xpcConnection:hasEntitlement:withStringValue:]";
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s entitlement value: %@", &v16, 0x16u);
  }

  v13 = 0;
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v11 isEqualToString:valueCopy])
    {
      v13 = 1;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (BOOL)xpcConnection:(id)connection hasEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  connectionCopy = connection;
  v7 = [entitlementPrefix stringByAppendingString:entitlementCopy];

  v8 = [connectionCopy valueForEntitlement:v7];

  return v8 != 0;
}

@end