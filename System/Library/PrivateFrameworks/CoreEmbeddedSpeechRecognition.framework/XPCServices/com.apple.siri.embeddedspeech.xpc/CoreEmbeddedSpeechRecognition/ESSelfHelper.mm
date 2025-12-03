@interface ESSelfHelper
+ (id)createANEModelInitializationEndedEventWithTimeStamp:(id)stamp fileName:(id)name;
+ (id)createANEModelInitializationStartedEventWithTimeStamp:(id)stamp fileName:(id)name;
+ (id)createPreheatEndedEventWithPreheatAlreadyDone:(BOOL)done;
+ (id)createPreheatFailedEvent;
+ (id)createPreheatStartedOrChangedEvent;
+ (void)_logRequestLinkWithRequestId:(id)id asrId:(id)asrId;
+ (void)initializeSharedPowerLoggerIfNeeded;
+ (void)logPowerSnapshotForProcessEnded;
+ (void)logPowerSnapshotForProcessStarted;
- (BOOL)_isLoggingAllowedForCurrentRequestWithTask:(id)task isSpeechAPIRequest:(BOOL)request;
- (BOOL)_isNonTier1Message:(id)message;
- (BOOL)_isTier1LoggingAllowedForCurrentRequestWithTask:(id)task;
- (void)logActiveConfigUpdateEnded;
- (void)logActiveConfigUpdateStartedOrChangedWithTimeInTicks:(id)ticks;
- (void)logAppleNeuralEngineModelInitializationEnded;
- (void)logAppleNeuralEngineModelInitializationStartedOrChangedWithTimeInTicks:(id)ticks;
- (void)logAudioPacketArrivalEndedWithTimeInTicks:(id)ticks;
- (void)logAudioPacketArrivalStartedOrChangedWithTimeInTicks:(id)ticks;
- (void)logAudioPacketContainingEndOfFirstWordReadyUpstreamWithTimeInTicks:(id)ticks;
- (void)logESStartWithTimeInTicks:(id)ticks;
- (void)logFinalAudioPacketContainingSpeechReadyUpstreamWithTimeInTicks:(id)ticks loggableSharedUserId:(id)id earPackage:(id)package;
- (void)logFinalAudioPacketContainingSpeechReceivedWithTimeInTicks:(id)ticks loggableSharedUserId:(id)id earPackage:(id)package;
- (void)logFinalResultGeneratedWithEARPackage:(id)package correctAlignedPartialResultIndexList:(id)list;
- (void)logFirstAudioPacketContainingSpeechReceivedWithTimeInTicks:(id)ticks loggableSharedUserId:(id)id;
- (void)logFirstAudioPacketProcessed;
- (void)logFirstAudioPacketReadyUpstreamWithTimeInTicks:(id)ticks;
- (void)logFirstAudioPacketRecordedWithTimeInTicks:(id)ticks;
- (void)logFrameProcessingReady;
- (void)logInitializationStartedOrChangedWithTimeInTicks:(id)ticks;
- (void)logIntermediateUtteranceInfoTier1WithPmInput:(id)input pmOutput:(id)output unrepairedPostItn:(id)itn loggableSharedUserId:(id)id;
- (void)logJitLmeEndedAndEndedTier1WithDialogContext:(id)context;
- (void)logJitLmeStartedOrChangedWithTimeInTicks:(id)ticks;
- (void)logLeadingSilenceProcessedWithTimestampInTicks:(id)ticks;
- (void)logPackageGeneratedAndRecognitionResultTier1WithEARPackage:(id)package loggableSharedUserId:(id)id;
- (void)logPartialResultGenerated;
- (void)logPendingANEModelInitializationContextEvents:(id)events;
- (void)logPendingPreheatContextEvents:(id)events;
- (void)logPersonalizationExperimentTriggersForExperimentIds:(id)ids;
- (void)logPostSpeechStartOneSecondAudioProcessedWithTimestampInTicks:(id)ticks;
- (void)logPostSpeechStartOneSecondLaterAudioPacketReceivedWithTimeInTicks:(id)ticks loggableSharedUserId:(id)id;
- (void)logRequestEndedOrFailedOrCancelledWithError:(id)error recognizerComponents:(id)components averageActiveTokensPerFrame:(id)frame languageModelInterpolationWeights:(id)weights signalToNoiseRatioInDecibels:(id)decibels recognitionDurationInSec:(id)sec audioDurationMs:(id)ms eagerUsed:(id)self0 utteranceDetectionEnabled:(BOOL)self1 utteranceConcatenationEnabled:(BOOL)self2 cpuRealTimeFactor:(id)self3 numLmeDataStreams:(id)self4 phoneticMatchDecoderName:(id)self5 pauseDurations:(id)self6 itnDurationInNs:(id)self7 isEmojiPersonalizationUsed:(BOOL)self8 isEmojiDisambiguationUsed:(BOOL)self9 isEmojiExpectedButNotRecognized:(BOOL)recognized recognizedEmojis:(id)emojis totalITNDurationInNs:(id)inNs totalITNRuns:(id)runs totalSecondaryPassDurationInNs:(id)durationInNs totalSecondaryPasses:(id)passes cpuInstructionsInMillionsPerSecond:(id)second aneUsed:(id)aneUsed;
- (void)logRequestStartedOrChangedWithTask:(id)task modelLocale:(id)locale modelVersion:(id)version isHighQualityAsset:(id)asset hammerVersion:(id)hammerVersion geoLanguageModelRegion:(id)region geoLanguageModelLoaded:(BOOL)loaded speechProfileAgeInSec:(id)self0 dictationUIInteractionId:(id)self1 portraitExperimentVariantName:(id)self2;
- (void)logSampledAudioFileStoredSuccessfully;
- (void)logSampledAudioFileStoredWithError:(id)error customFailureReason:(int64_t)reason;
- (void)wrapAndEmitTopLevelEvent:(id)event timestampInTicks:(id)ticks;
@end

@implementation ESSelfHelper

- (void)logPersonalizationExperimentTriggersForExperimentIds:(id)ids
{
  idsCopy = ids;
  if ([idsCopy count])
  {
    v5 = objc_alloc_init(AIMLExperimentationAnalyticsManager);
    if (([idsCopy containsObject:@"PeopleSuggesterTop20"] & 1) != 0 || objc_msgSend(idsCopy, "containsObject:", @"NoBoosting"))
    {
      v6 = [[NSUUID alloc] initWithUUIDString:@"043fda7b-2fc0-489e-8cce-319c22dcf3ba"];
      [v5 emitTriggerForCodePathID:v6 requestID:self->_requestId completionHandler:&stru_100054BA8];

      v7 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
      {
        v10 = 136315394;
        v11 = "[ESSelfHelper logPersonalizationExperimentTriggersForExperimentIds:]";
        v12 = 2112;
        v13 = @"043fda7b-2fc0-489e-8cce-319c22dcf3ba";
        _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s SELF: Emitting trigger log for Contact Boosting (codePathId=%@)", &v10, 0x16u);
      }
    }

    if (([idsCopy containsObject:@"RandomSongTitleSelection"] & 1) != 0 || objc_msgSend(idsCopy, "containsObject:", @"PlayCountSongTitleSelection"))
    {
      v8 = [[NSUUID alloc] initWithUUIDString:@"eb18055e-87c4-44c2-ab94-9275bec61c52"];
      [v5 emitTriggerForCodePathID:v8 requestID:self->_requestId completionHandler:&stru_100054BA8];

      v9 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
      {
        v10 = 136315394;
        v11 = "[ESSelfHelper logPersonalizationExperimentTriggersForExperimentIds:]";
        v12 = 2112;
        v13 = @"eb18055e-87c4-44c2-ab94-9275bec61c52";
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s SELF: Emitting trigger log for Music Ranking Strategy (codePathId=%@)", &v10, 0x16u);
      }
    }
  }
}

- (void)wrapAndEmitTopLevelEvent:(id)event timestampInTicks:(id)ticks
{
  eventCopy = event;
  ticksCopy = ticks;
  v8 = [(ESSelfHelper *)self _isNonTier1Message:eventCopy];
  isTier1LoggingAllowedForCurrentRequest = self->_isTier1LoggingAllowedForCurrentRequest;
  v10 = objc_opt_respondsToSelector();
  if ((v8 & 1) != 0 || isTier1LoggingAllowedForCurrentRequest)
  {
    if (!isTier1LoggingAllowedForCurrentRequest && ((v10 ^ 1) & 1) == 0)
    {
      ([eventCopy methodForSelector:"deleteLinkId"])(eventCopy, "deleteLinkId");
    }

    v11 = objc_alloc_init(ASRSchemaASRClientEventMetadata);
    v12 = [[SISchemaUUID alloc] initWithNSUUID:self->_asrId];
    [v11 setAsrId:v12];
    v13 = objc_alloc_init(ASRSchemaASRClientEvent);
    [v13 setEventMetadata:v11];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v13 setPreheatContext:eventCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v13 setRequestContext:eventCopy];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v13 setPartialResultGenerated:eventCopy];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v13 setPackageGenerated:eventCopy];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v13 setRecognitionResultTier1:eventCopy];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v13 setFinalResultGenerated:eventCopy];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v13 setIntermediateUtteranceInfoTier1:eventCopy];
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v13 setInitializationContext:eventCopy];
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      [v13 setAssetLoadContext:eventCopy];
                    }

                    else
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        [v13 setLanguageModelEnrollmentContext:eventCopy];
                      }

                      else
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          [v13 setJitLanguageModelEnrollmentEndedTier1:eventCopy];
                        }

                        else
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            [v13 setAudioPacketArrivalContext:eventCopy];
                          }

                          else
                          {
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              [v13 setFirstAudioPacketProcessed:eventCopy];
                            }

                            else
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                [v13 setFinalAudioPacketContainingSpeechReceived:eventCopy];
                              }

                              else
                              {
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  [v13 setSampledAudioFileStored:eventCopy];
                                }

                                else
                                {
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    [v13 setSampledAudioFileStorageFailed:eventCopy];
                                  }

                                  else
                                  {
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      [v13 setAppleNeuralEngineCompilationContext:eventCopy];
                                    }

                                    else
                                    {
                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        [v13 setEmbeddedSpeechProcessContext:eventCopy];
                                      }

                                      else
                                      {
                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          [v13 setActiveConfigUpdateContext:eventCopy];
                                        }

                                        else
                                        {
                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            [v13 setAppleNeuralEngineModelInitializationContext:eventCopy];
                                          }

                                          else
                                          {
                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              [v13 setAudioSpeechPacketArrivalContext:eventCopy];
                                            }

                                            else
                                            {
                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                [v13 setAudioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived:eventCopy];
                                              }

                                              else
                                              {
                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  [v13 setFrameProcessingReady:eventCopy];
                                                }

                                                else
                                                {
                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    [v13 setLeadingSilenceProcessed:eventCopy];
                                                  }

                                                  else
                                                  {
                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      [v13 setFirstSecondAfterLeadingSilenceProcessed:eventCopy];
                                                    }

                                                    else
                                                    {
                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        [v13 setFirstAudioPacketRecorded:eventCopy];
                                                      }

                                                      else
                                                      {
                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          [v13 setAudioPacketContainingEndOfFirstWordReadyUpstream:eventCopy];
                                                        }

                                                        else
                                                        {
                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            [v13 setFirstAudioPacketReadyUpstream:eventCopy];
                                                          }

                                                          else
                                                          {
                                                            objc_opt_class();
                                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                                            {
                                                              v20 = AFSiriLogContextSpeech;
                                                              if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
                                                              {
                                                                v21 = 136315138;
                                                                v22 = "[ESSelfHelper wrapAndEmitTopLevelEvent:timestampInTicks:]";
                                                                _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s SELF: Failed trying to wrap and emit top-level ASR event because event type was not mapped to loggable message type in the ASR SELF schema.", &v21, 0xCu);
                                                              }

                                                              goto LABEL_70;
                                                            }

                                                            [v13 setFinalAudioPacketContainingSpeechReadyUpstream:eventCopy];
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

    v14 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
    {
      v17 = v14;
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v21 = 136315394;
      v22 = "[ESSelfHelper wrapAndEmitTopLevelEvent:timestampInTicks:]";
      v23 = 2112;
      v24 = v19;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s SELF: Wrapping and logging an event of type %@", &v21, 0x16u);
    }

    v15 = +[AssistantSiriAnalytics sharedStream];
    v16 = v15;
    if (ticksCopy)
    {
      [v15 emitMessage:v13 timestamp:{objc_msgSend(ticksCopy, "unsignedLongLongValue")}];
    }

    else
    {
      [v15 emitMessage:v13];
    }

LABEL_70:
  }
}

- (void)logSampledAudioFileStoredWithError:(id)error customFailureReason:(int64_t)reason
{
  errorCopy = error;
  v6 = objc_alloc_init(ASRSchemaASRSampledAudioFileStorageFailed);
  if (errorCopy)
  {
    [v6 setErrorCode:{objc_msgSend(errorCopy, "code")}];
    domain = [errorCopy domain];
    [v6 setErrorDomain:domain];

    userInfo = [errorCopy userInfo];
    v9 = [userInfo objectForKey:NSUnderlyingErrorKey];

    if (v9)
    {
      [v6 setUnderlyingErrorCode:{objc_msgSend(v9, "code")}];
      domain2 = [v9 domain];
      [v6 setUnderlyingErrorDomain:domain2];
    }
  }

  else
  {
    if ((reason - 1) < 4)
    {
      reasonCopy = reason;
    }

    else
    {
      reasonCopy = 0;
    }

    [v6 setSampledAudioStorageFailureReason:reasonCopy];
  }

  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v6 timestampInTicks:0];
}

- (void)logSampledAudioFileStoredSuccessfully
{
  v3 = objc_alloc_init(ASRSchemaASRSampledAudioFileStored);
  [v3 setExists:1];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v3 timestampInTicks:0];
}

- (void)logRequestEndedOrFailedOrCancelledWithError:(id)error recognizerComponents:(id)components averageActiveTokensPerFrame:(id)frame languageModelInterpolationWeights:(id)weights signalToNoiseRatioInDecibels:(id)decibels recognitionDurationInSec:(id)sec audioDurationMs:(id)ms eagerUsed:(id)self0 utteranceDetectionEnabled:(BOOL)self1 utteranceConcatenationEnabled:(BOOL)self2 cpuRealTimeFactor:(id)self3 numLmeDataStreams:(id)self4 phoneticMatchDecoderName:(id)self5 pauseDurations:(id)self6 itnDurationInNs:(id)self7 isEmojiPersonalizationUsed:(BOOL)self8 isEmojiDisambiguationUsed:(BOOL)self9 isEmojiExpectedButNotRecognized:(BOOL)recognized recognizedEmojis:(id)emojis totalITNDurationInNs:(id)inNs totalITNRuns:(id)runs totalSecondaryPassDurationInNs:(id)durationInNs totalSecondaryPasses:(id)passes cpuInstructionsInMillionsPerSecond:(id)second aneUsed:(id)aneUsed
{
  errorCopy = error;
  componentsCopy = components;
  frameCopy = frame;
  weightsCopy = weights;
  decibelsCopy = decibels;
  secCopy = sec;
  msCopy = ms;
  usedCopy = used;
  factorCopy = factor;
  streamsCopy = streams;
  nameCopy = name;
  durationsCopy = durations;
  nsCopy = ns;
  emojisCopy = emojis;
  inNsCopy = inNs;
  runsCopy = runs;
  durationInNsCopy = durationInNs;
  passesCopy = passes;
  secondCopy = second;
  aneUsedCopy = aneUsed;
  v32 = objc_alloc_init(ASRSchemaASRRecognitionMetrics);
  personalizedLmAgeInSec = self->_personalizedLmAgeInSec;
  v103 = v32;
  if (personalizedLmAgeInSec)
  {
    [(NSNumber *)personalizedLmAgeInSec doubleValue:durationInNsCopy];
    v35 = [NSNumber numberWithDouble:v34 * 1000000000.0];
    [v32 setPersonalizedLanguageModelAgeInNs:{objc_msgSend(v35, "unsignedLongLongValue")}];
  }

  personalizedLmWeight = self->_personalizedLmWeight;
  if (personalizedLmWeight)
  {
    [(NSNumber *)personalizedLmWeight floatValue];
    [v32 setPersonalizedLanguageModelWeight:?];
  }

  if (frameCopy)
  {
    [frameCopy floatValue];
    [v32 setAverageActiveTokensPerFrame:?];
  }

  if (decibelsCopy)
  {
    [decibelsCopy floatValue];
    [v32 setSignalToNoiseRatioInDecibels:?];
  }

  if (secCopy)
  {
    [secCopy doubleValue];
    v38 = [NSNumber numberWithDouble:v37 * 1000000000.0];
    [v32 setRecognitionDurationInNs:{objc_msgSend(v38, "unsignedLongLongValue")}];
  }

  if (msCopy)
  {
    [msCopy doubleValue];
    v40 = [NSNumber numberWithDouble:v39 * 1000000.0];
    [v32 setAudioDurationInNs:{objc_msgSend(v40, "unsignedLongLongValue")}];
  }

  if (usedCopy)
  {
    [v32 setEagerEnabled:{objc_msgSend(usedCopy, "BOOLValue")}];
  }

  if (factorCopy)
  {
    [factorCopy floatValue];
    [v32 setCpuRealTimeFactor:?];
  }

  if (streamsCopy)
  {
    [streamsCopy floatValue];
    [v32 setNumLanguageModelEnrollmentDataStreams:v41];
  }

  if (aneUsedCopy)
  {
    if ([aneUsedCopy BOOLValue])
    {
      v42 = 2;
    }

    else
    {
      v42 = 1;
    }
  }

  else
  {
    v42 = 0;
  }

  [v32 setRecognitionHardware:{v42, durationInNsCopy}];
  [v32 setUtteranceDetectionEnabled:enabled];
  [v32 setUtteranceConcatenationEnabled:concatenationEnabled];
  [v32 setContinuousListeningEnabled:self->_continuousListeningEnabled];
  [v32 setPhoneticMatchDecoderName:nameCopy];
  [v32 setInverseTextNormalizationDurationForFinalResultInNs:{objc_msgSend(nsCopy, "unsignedLongLongValue")}];
  [v32 setInverseTextNormalizationDurationInNs:{objc_msgSend(inNsCopy, "unsignedLongLongValue")}];
  [v32 setNumberOfInverseTextNormalizationRuns:{objc_msgSend(runsCopy, "unsignedIntValue")}];
  [secondCopy doubleValue];
  [v32 setCpuInstructionsInMillionsPerSecond:v43];
  v44 = objc_alloc_init(ASRSchemaASREmojiMetrics);
  [v44 setIsEmojiPersonalizationUsed:personalizationUsed];
  [v44 setIsEmojiDisambiguationUsed:disambiguationUsed];
  [v44 setIsEmojiExpectedButNotRecognized:recognized];
  [v44 setRecognizedEmojis:emojisCopy];
  v84 = v44;
  [v32 setEmojiMetrics:v44];
  if (componentsCopy)
  {
    v45 = [componentsCopy componentsSeparatedByString:@"::"];
    v46 = objc_alloc_init(ASRSchemaASRRecognizerComponents);
    v47 = [v45 objectAtIndexedSubscript:0];
    [v46 setFrontend:v47];

    v48 = [v45 objectAtIndexedSubscript:1];
    [v46 setDecoder:v48];

    v49 = [v45 objectAtIndexedSubscript:2];
    [v46 setDecodable:v49];

    [v32 setRecognizerComponents:v46];
  }

  if (weightsCopy)
  {
    v50 = objc_alloc_init(NSMutableArray);
    [weightsCopy componentsSeparatedByString:@";"];
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    obj = v111 = 0u;
    v51 = [obj countByEnumeratingWithState:&v110 objects:v115 count:16];
    if (v51)
    {
      v52 = *v111;
      do
      {
        for (i = 0; i != v51; i = i + 1)
        {
          if (*v111 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v54 = *(*(&v110 + 1) + 8 * i);
          v55 = objc_alloc_init(ASRSchemaASRInterpolationWeightBundle);
          v56 = [v54 componentsSeparatedByString:@":"];
          v57 = [v56 objectAtIndexedSubscript:1];
          [v57 doubleValue];
          v58 = [NSNumber numberWithDouble:?];

          v59 = [v56 objectAtIndexedSubscript:2];
          [v59 doubleValue];
          v60 = [NSNumber numberWithDouble:?];

          [v58 doubleValue];
          v62 = [NSNumber numberWithDouble:v61 * 1000000.0];
          [v55 setStartTimeInNs:{objc_msgSend(v62, "unsignedLongLongValue")}];

          [v60 doubleValue];
          v64 = [NSNumber numberWithDouble:v63 * 1000000.0];
          [v55 setEndTimeInNs:{objc_msgSend(v64, "unsignedLongLongValue")}];

          v65 = [v56 objectAtIndexedSubscript:0];
          v66 = [v65 componentsSeparatedByString:{@", "}];

          v67 = [v66 valueForKey:@"floatValue"];
          [v55 setWeights:v67];

          [v50 addObject:v55];
        }

        v51 = [obj countByEnumeratingWithState:&v110 objects:v115 count:16];
      }

      while (v51);
    }

    [v103 setLanguageModelInterpolationWeights:v50];
  }

  if (durationsCopy)
  {
    v68 = +[NSMutableArray array];
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v69 = durationsCopy;
    v70 = [v69 countByEnumeratingWithState:&v106 objects:v114 count:16];
    if (v70)
    {
      v71 = *v107;
      do
      {
        for (j = 0; j != v70; j = j + 1)
        {
          if (*v107 != v71)
          {
            objc_enumerationMutation(v69);
          }

          [*(*(&v106 + 1) + 8 * j) doubleValue];
          v74 = [NSNumber numberWithDouble:v73 * 1000000000.0];
          [v68 addObject:v74];
        }

        v70 = [v69 countByEnumeratingWithState:&v106 objects:v114 count:16];
      }

      while (v70);
    }

    [v103 setPausedAudioDurationsInNs:v68];
  }

  v75 = objc_alloc_init(ASRSchemaASRRequestContext);
  if (!errorCopy)
  {
    if (self->_packageLogged)
    {
      v76 = objc_alloc_init(ASRSchemaASREnded);
      [v76 setMetrics:v103];
      [v75 setEnded:v76];
      v77 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v117 = "[ESSelfHelper logRequestEndedOrFailedOrCancelledWithError:recognizerComponents:averageActiveTokensPerFrame:languageModelInterpolationWeights:signalToNoiseRatioInDecibels:recognitionDurationInSec:audioDurationMs:eagerUsed:utteranceDetectionEnabled:utteranceConcatenationEnabled:cpuRealTimeFactor:numLmeDataStreams:phoneticMatchDecoderName:pauseDurations:itnDurationInNs:isEmojiPersonalizationUsed:isEmojiDisambiguationUsed:isEmojiExpectedButNotRecognized:recognizedEmojis:totalITNDurationInNs:totalITNRuns:totalSecondaryPassDurationInNs:totalSecondaryPasses:cpuInstructionsInMillionsPerSecond:aneUsed:]";
        v78 = "%s SELF: Logging ASRRequestContext->ended in SELF based on success status from recognizer.";
        goto LABEL_59;
      }
    }

    else
    {
      v76 = objc_alloc_init(ASRSchemaASRCancelled);
      [v76 setReason:3];
      [v76 setMetrics:v103];
      [v75 setCancelled:v76];
      v77 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v117 = "[ESSelfHelper logRequestEndedOrFailedOrCancelledWithError:recognizerComponents:averageActiveTokensPerFrame:languageModelInterpolationWeights:signalToNoiseRatioInDecibels:recognitionDurationInSec:audioDurationMs:eagerUsed:utteranceDetectionEnabled:utteranceConcatenationEnabled:cpuRealTimeFactor:numLmeDataStreams:phoneticMatchDecoderName:pauseDurations:itnDurationInNs:isEmojiPersonalizationUsed:isEmojiDisambiguationUsed:isEmojiExpectedButNotRecognized:recognizedEmojis:totalITNDurationInNs:totalITNRuns:totalSecondaryPassDurationInNs:totalSecondaryPasses:cpuInstructionsInMillionsPerSecond:aneUsed:]";
        v78 = "%s SELF: Logging ASRRequestContext->cancelled with reason RECOGNITION_REJECTED in SELF because nothing was recognized (SpeechNoMatch).";
        goto LABEL_59;
      }
    }

LABEL_60:

    goto LABEL_61;
  }

  if (![errorCopy code])
  {
    v76 = objc_alloc_init(ASRSchemaASRFailed);
    [v76 setMetrics:v103];
    [v75 setFailed:v76];
    v77 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v117 = "[ESSelfHelper logRequestEndedOrFailedOrCancelledWithError:recognizerComponents:averageActiveTokensPerFrame:languageModelInterpolationWeights:signalToNoiseRatioInDecibels:recognitionDurationInSec:audioDurationMs:eagerUsed:utteranceDetectionEnabled:utteranceConcatenationEnabled:cpuRealTimeFactor:numLmeDataStreams:phoneticMatchDecoderName:pauseDurations:itnDurationInNs:isEmojiPersonalizationUsed:isEmojiDisambiguationUsed:isEmojiExpectedButNotRecognized:recognizedEmojis:totalITNDurationInNs:totalITNRuns:totalSecondaryPassDurationInNs:totalSecondaryPasses:cpuInstructionsInMillionsPerSecond:aneUsed:]";
      v78 = "%s SELF: Logging ASRRequestContext->failed in SELF based on error result from recognizer.";
      goto LABEL_59;
    }

    goto LABEL_60;
  }

  if ([errorCopy code] == 2)
  {
    v76 = objc_alloc_init(ASRSchemaASRCancelled);
    [v76 setReason:2];
    [v76 setMetrics:v103];
    [v75 setCancelled:v76];
    v77 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v117 = "[ESSelfHelper logRequestEndedOrFailedOrCancelledWithError:recognizerComponents:averageActiveTokensPerFrame:languageModelInterpolationWeights:signalToNoiseRatioInDecibels:recognitionDurationInSec:audioDurationMs:eagerUsed:utteranceDetectionEnabled:utteranceConcatenationEnabled:cpuRealTimeFactor:numLmeDataStreams:phoneticMatchDecoderName:pauseDurations:itnDurationInNs:isEmojiPersonalizationUsed:isEmojiDisambiguationUsed:isEmojiExpectedButNotRecognized:recognizedEmojis:totalITNDurationInNs:totalITNRuns:totalSecondaryPassDurationInNs:totalSecondaryPasses:cpuInstructionsInMillionsPerSecond:aneUsed:]";
      v78 = "%s SELF: Logging ASRRequestContext->cancelled with reason RECOGNITION_CANCELLED in SELF based on error result from recognizer.";
LABEL_59:
      _os_log_debug_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEBUG, v78, buf, 0xCu);
      goto LABEL_60;
    }

    goto LABEL_60;
  }

  if ([errorCopy code] == 3)
  {
    v76 = objc_alloc_init(ASRSchemaASRCancelled);
    [v76 setReason:3];
    [v76 setMetrics:v103];
    [v75 setCancelled:v76];
    v77 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v117 = "[ESSelfHelper logRequestEndedOrFailedOrCancelledWithError:recognizerComponents:averageActiveTokensPerFrame:languageModelInterpolationWeights:signalToNoiseRatioInDecibels:recognitionDurationInSec:audioDurationMs:eagerUsed:utteranceDetectionEnabled:utteranceConcatenationEnabled:cpuRealTimeFactor:numLmeDataStreams:phoneticMatchDecoderName:pauseDurations:itnDurationInNs:isEmojiPersonalizationUsed:isEmojiDisambiguationUsed:isEmojiExpectedButNotRecognized:recognizedEmojis:totalITNDurationInNs:totalITNRuns:totalSecondaryPassDurationInNs:totalSecondaryPasses:cpuInstructionsInMillionsPerSecond:aneUsed:]";
      v78 = "%s SELF: Logging ASRRequestContext->cancelled with reason RECOGNITION_REJECTED in SELF based on error result from recognizer.";
      goto LABEL_59;
    }

    goto LABEL_60;
  }

LABEL_61:
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v75 timestampInTicks:0];
  captureSnapshot = [qword_1000615E0 captureSnapshot];
  v80 = +[SPIAsrRequestEndedOrFailedOrCancelledEventContext context];
  [captureSnapshot logWithEventContext:v80 asrIdentifier:self->_asrId];
}

- (void)logFinalResultGeneratedWithEARPackage:(id)package correctAlignedPartialResultIndexList:(id)list
{
  packageCopy = package;
  listCopy = list;
  v7 = objc_alloc_init(ASRSchemaASRFinalResultGenerated);
  correctPartialResultIndexList = [packageCopy correctPartialResultIndexList];
  [v7 setCorrectPartialResultIndexLists:correctPartialResultIndexList];

  v40 = v7;
  v41 = listCopy;
  [v7 setCorrectAlignedPartialResultIndexLists:listCopy];
  v9 = objc_alloc_init(NSMutableArray);
  v10 = objc_alloc_init(NSMutableArray);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  preITNRecognition = [packageCopy preITNRecognition];
  oneBest = [preITNRecognition oneBest];

  v13 = [oneBest countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v43;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v43 != v15)
        {
          objc_enumerationMutation(oneBest);
        }

        v17 = *(*(&v42 + 1) + 8 * i);
        [v17 silenceStart];
        v19 = v18;
        [packageCopy utteranceStart];
        v21 = [NSNumber numberWithDouble:v19 + v20];
        [v9 addObject:v21];

        [v17 silenceStart];
        v23 = v22;
        [packageCopy utteranceStart];
        v25 = [NSNumber numberWithDouble:v23 + v24];
        [v25 doubleValue];
        v27 = [NSNumber numberWithDouble:v26 * 1000000000.0];
        [v10 addObject:v27];
      }

      v14 = [oneBest countByEnumeratingWithState:&v42 objects:v54 count:16];
    }

    while (v14);
  }

  [v40 setTokenSilenceStartTimeInNsLists:v10];
  [v40 setIsAfterResume:{objc_msgSend(packageCopy, "firstResultAfterResume")}];
  v28 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
  {
    log = v28;
    correctPartialResultIndexList2 = [packageCopy correctPartialResultIndexList];
    v32 = [correctPartialResultIndexList2 componentsJoinedByString:{@", "}];
    uTF8String = [v32 UTF8String];
    v33 = [v41 componentsJoinedByString:{@", "}];
    uTF8String2 = [v33 UTF8String];
    v35 = [v9 componentsJoinedByString:{@", "}];
    uTF8String3 = [v35 UTF8String];
    *buf = 136315906;
    v47 = "[ESSelfHelper logFinalResultGeneratedWithEARPackage:correctAlignedPartialResultIndexList:]";
    v48 = 2080;
    v49 = uTF8String;
    v50 = 2080;
    v51 = uTF8String2;
    v52 = 2080;
    v53 = uTF8String3;
    _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s SELF: Correct Partial Result Index List is %s, Correct Aligned Partial Result Index List is %s, Silence Start Time List is %s", buf, 0x2Au);
  }

  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v40 timestampInTicks:0];
  captureSnapshot = [qword_1000615E0 captureSnapshot];
  v30 = +[SPIAsrFinalResultGeneratedEventContext context];
  [captureSnapshot logWithEventContext:v30 asrIdentifier:self->_asrId];
}

- (void)logPackageGeneratedAndRecognitionResultTier1WithEARPackage:(id)package loggableSharedUserId:(id)id
{
  packageCopy = package;
  recognition = [packageCopy recognition];
  interpretationIndices = [recognition interpretationIndices];
  v7 = [interpretationIndices count];

  if (v7)
  {
    v8 = objc_alloc_init(ASRSchemaASRPackageGenerated);
    [v8 setIsFinal:{objc_msgSend(packageCopy, "isFinal")}];
    isTier1LoggingAllowedForCurrentRequest = self->_isTier1LoggingAllowedForCurrentRequest;
    emojiUtils = self->_emojiUtils;
    v24 = 0;
    v25 = 0;
    v11 = packageCopy;
    v12 = emojiUtils;
    v13 = objc_alloc_init(ASRSchemaASRPackage);
    preITNRecognition = [v11 preITNRecognition];
    v15 = sub_100003AB4(isTier1LoggingAllowedForCurrentRequest, preITNRecognition, v12, &v25);
    [v13 setRawRecognition:v15];

    recognition2 = [v11 recognition];

    v17 = sub_100003AB4(isTier1LoggingAllowedForCurrentRequest, recognition2, v12, &v24);

    [v13 setPostItn:v17];
    v18 = v25;
    v19 = v24;
    [v8 setPackage:v13];

    v20 = earPackageResultCandidateId();
    isFinal = [v11 isFinal];
    stringValue = @"-1";
    if ((isFinal & 1) == 0 && v20)
    {
      stringValue = [v20 stringValue];
    }

    [v8 setResultCandidateId:stringValue];
    [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v8 timestampInTicks:0];
    self->_packageLogged = 1;
    if (self->_isTier1LoggingAllowedForCurrentRequest)
    {
      [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v18 timestampInTicks:0];
      [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v19 timestampInTicks:0];
    }
  }
}

- (void)logIntermediateUtteranceInfoTier1WithPmInput:(id)input pmOutput:(id)output unrepairedPostItn:(id)itn loggableSharedUserId:(id)id
{
  if (self->_isTier1LoggingAllowedForCurrentRequest)
  {
    itnCopy = itn;
    outputCopy = output;
    inputCopy = input;
    v13 = objc_alloc_init(ASRSchemaASRIntermediateUtteranceInfoTier1);
    [v13 setPhoneticMatchInput:inputCopy];

    [v13 setPhoneticMatchOutput:outputCopy];
    [v13 setUnrepairedPostItn:itnCopy];

    [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v13 timestampInTicks:0];
  }
}

- (void)logPartialResultGenerated
{
  v5 = objc_alloc_init(ASRSchemaASRPartialResultGenerated);
  [v5 setExists:1];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v5 timestampInTicks:0];
  captureSnapshot = [qword_1000615E0 captureSnapshot];
  v4 = +[SPIAsrPartialResultGeneratedEventContext context];
  [captureSnapshot logWithEventContext:v4 asrIdentifier:self->_asrId];
}

- (void)logPostSpeechStartOneSecondAudioProcessedWithTimestampInTicks:(id)ticks
{
  ticksCopy = ticks;
  v5 = objc_alloc_init(ASRSchemaASRFirstSecondAfterLeadingSilenceProcessed);
  [v5 setExists:1];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v5 timestampInTicks:ticksCopy];
}

- (void)logLeadingSilenceProcessedWithTimestampInTicks:(id)ticks
{
  ticksCopy = ticks;
  v5 = objc_alloc_init(ASRSchemaASRLeadingSilenceProcessed);
  [v5 setExists:1];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v5 timestampInTicks:ticksCopy];
}

- (void)logRequestStartedOrChangedWithTask:(id)task modelLocale:(id)locale modelVersion:(id)version isHighQualityAsset:(id)asset hammerVersion:(id)hammerVersion geoLanguageModelRegion:(id)region geoLanguageModelLoaded:(BOOL)loaded speechProfileAgeInSec:(id)self0 dictationUIInteractionId:(id)self1 portraitExperimentVariantName:(id)self2
{
  taskCopy = task;
  localeCopy = locale;
  assetCopy = asset;
  secCopy = sec;
  idCopy = id;
  nameCopy = name;
  regionCopy = region;
  hammerVersionCopy = hammerVersion;
  versionCopy = version;
  v23 = objc_alloc_init(ASRSchemaASRStarted);
  if (taskCopy)
  {
    v24 = taskCopy;
    if ([v24 isEqualToString:CoreEmbeddedSpeechRecognizerTaskSearchOrMessaging])
    {
      v25 = 1;
    }

    else if ([v24 isEqualToString:CoreEmbeddedSpeechRecognizerTaskDictation])
    {
      v25 = 2;
    }

    else if ([v24 isEqualToString:CoreEmbeddedSpeechRecognizerTaskWebSearch])
    {
      v25 = 3;
    }

    else if ([v24 isEqualToString:CoreEmbeddedSpeechRecognizerTaskTshot])
    {
      v25 = 4;
    }

    else if ([v24 isEqualToString:CoreEmbeddedSpeechRecognizerTaskSiriDictation])
    {
      v25 = 5;
    }

    else
    {
      v25 = 0;
    }

    [v23 setTask:v25];
  }

  if (localeCopy)
  {
    v26 = [localeCopy stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
    [v23 setModelLocale:{+[SIUtilities convertLanguageCodeToSchemaLocale:](SIUtilities, "convertLanguageCodeToSchemaLocale:", v26)}];
  }

  if (assetCopy)
  {
    [v23 setIsHighQualityAsset:{objc_msgSend(assetCopy, "BOOLValue")}];
  }

  if (idCopy)
  {
    v27 = [[NSUUID alloc] initWithUUIDString:idCopy];
    if (v27)
    {
      v28 = [[SISchemaUUID alloc] initWithNSUUID:v27];
      [v23 setDictationUiInteractionId:v28];
    }
  }

  if (secCopy)
  {
    [secCopy doubleValue];
    v30 = [NSNumber numberWithDouble:v29 * 1000000000.0];
    [v23 setSpeechProfileAgeInNs:{objc_msgSend(v30, "unsignedLongLongValue")}];
  }

  else
  {
    [v23 setSpeechProfileAgeInNs:0x7FFFFFFFFFFFFFFFLL];
  }

  [v23 setDatapackVersion:versionCopy];

  [v23 setHammerVersion:hammerVersionCopy];
  [v23 setGeoLanguageModelRegion:regionCopy];

  [v23 setGeoLanguageModelLoaded:loaded];
  [v23 setPortraitExperimentVariantName:nameCopy];

  v31 = objc_alloc_init(ASRSchemaASRRequestContext);
  [v31 setStartedOrChanged:v23];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v31 timestampInTicks:0];
  captureSnapshot = [qword_1000615E0 captureSnapshot];
  v33 = +[SPIAsrRequestStartedOrChangedEventContext context];
  [captureSnapshot logWithEventContext:v33 asrIdentifier:self->_asrId];
}

- (void)logFrameProcessingReady
{
  v3 = objc_alloc_init(ASRSchemaASRFrameProcessingReady);
  [v3 setExists:1];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v3 timestampInTicks:0];
}

- (void)logFinalAudioPacketContainingSpeechReceivedWithTimeInTicks:(id)ticks loggableSharedUserId:(id)id earPackage:(id)package
{
  packageCopy = package;
  ticksCopy = ticks;
  v12 = objc_alloc_init(ASRSchemaASRFinalAudioPacketContainingSpeechReceived);
  [v12 setExists:1];
  v9 = earPackageResultCandidateId();
  isFinal = [packageCopy isFinal];

  stringValue = @"-1";
  if ((isFinal & 1) == 0 && v9)
  {
    stringValue = [v9 stringValue];
  }

  [v12 setResultCandidateId:stringValue];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v12 timestampInTicks:ticksCopy];
}

- (void)logFinalAudioPacketContainingSpeechReadyUpstreamWithTimeInTicks:(id)ticks loggableSharedUserId:(id)id earPackage:(id)package
{
  packageCopy = package;
  ticksCopy = ticks;
  v8 = objc_alloc_init(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream);
  if ([packageCopy isFinal])
  {
    stringValue = @"-1";
  }

  else
  {
    v10 = earPackageResultCandidateId();
    if (v10)
    {
      v11 = earPackageResultCandidateId();
      stringValue = [v11 stringValue];
    }

    else
    {
      stringValue = @"-1";
    }
  }

  [v8 setResultCandidateId:stringValue];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v8 timestampInTicks:ticksCopy];
}

- (void)logPostSpeechStartOneSecondLaterAudioPacketReceivedWithTimeInTicks:(id)ticks loggableSharedUserId:(id)id
{
  ticksCopy = ticks;
  v6 = objc_alloc_init(ASRSchemaASRAudioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived);
  [v6 setExists:1];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v6 timestampInTicks:ticksCopy];
}

- (void)logFirstAudioPacketContainingSpeechReceivedWithTimeInTicks:(id)ticks loggableSharedUserId:(id)id
{
  ticksCopy = ticks;
  v7 = objc_alloc_init(ASRSchemaASRAudioSpeechPacketArrivalStarted);
  [v7 setExists:1];
  v6 = objc_alloc_init(ASRSchemaASRAudioSpeechPacketArrivalContext);
  [v6 setStartedOrChanged:v7];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v6 timestampInTicks:ticksCopy];
}

- (void)logAudioPacketContainingEndOfFirstWordReadyUpstreamWithTimeInTicks:(id)ticks
{
  ticksCopy = ticks;
  v5 = objc_alloc_init(ASRSchemaASRAudioPacketContainingEndOfFirstWordReadyUpstream);
  [v5 setExists:1];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v5 timestampInTicks:ticksCopy];
}

- (void)logFirstAudioPacketProcessed
{
  v5 = objc_alloc_init(ASRSchemaASRFirstAudioPacketProcessed);
  [v5 setExists:1];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v5 timestampInTicks:0];
  captureSnapshot = [qword_1000615E0 captureSnapshot];
  v4 = +[SPIAsrFirstAudioPacketProcessedEventContext context];
  [captureSnapshot logWithEventContext:v4 asrIdentifier:self->_asrId];
}

- (void)logFirstAudioPacketReadyUpstreamWithTimeInTicks:(id)ticks
{
  ticksCopy = ticks;
  v5 = objc_alloc_init(ASRSchemaASRFirstAudioPacketReadyUpstream);
  [v5 setExists:1];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v5 timestampInTicks:ticksCopy];
}

- (void)logFirstAudioPacketRecordedWithTimeInTicks:(id)ticks
{
  ticksCopy = ticks;
  v5 = objc_alloc_init(ASRSchemaASRFirstAudioPacketRecorded);
  [v5 setExists:1];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v5 timestampInTicks:ticksCopy];
}

- (void)logAudioPacketArrivalEndedWithTimeInTicks:(id)ticks
{
  ticksCopy = ticks;
  v8 = objc_alloc_init(ASRSchemaASRAudioPacketArrivalEnded);
  [v8 setExists:1];
  v5 = objc_alloc_init(ASRSchemaASRAudioPacketArrivalContext);
  [v5 setEnded:v8];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v5 timestampInTicks:ticksCopy];

  captureSnapshot = [qword_1000615E0 captureSnapshot];
  v7 = +[SPIAsrAudioPacketArrivalEndedEventContext context];
  [captureSnapshot logWithEventContext:v7 asrIdentifier:self->_asrId];
}

- (void)logAudioPacketArrivalStartedOrChangedWithTimeInTicks:(id)ticks
{
  ticksCopy = ticks;
  v8 = objc_alloc_init(ASRSchemaASRAudioPacketArrivalStarted);
  [v8 setExists:1];
  v5 = objc_alloc_init(ASRSchemaASRAudioPacketArrivalContext);
  [v5 setStartedOrChanged:v8];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v5 timestampInTicks:ticksCopy];

  captureSnapshot = [qword_1000615E0 captureSnapshot];
  v7 = +[SPIAsrAudioPacketArrivalStartedOrChangedEventContext context];
  [captureSnapshot logWithEventContext:v7 asrIdentifier:self->_asrId];
}

- (void)logJitLmeEndedAndEndedTier1WithDialogContext:(id)context
{
  contextCopy = context;
  v10 = objc_alloc_init(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1);
  v5 = [SISchemaUUID alloc];
  v6 = +[NSUUID UUID];
  v7 = [v5 initWithNSUUID:v6];

  [v10 setLinkId:v7];
  [v10 setDialogContexts:contextCopy];

  v8 = objc_alloc_init(ASRSchemaASRJitLanguageModelEnrollmentEnded);
  [v8 setLinkId:v7];
  v9 = objc_alloc_init(ASRSchemaASRJitLanguageModelEnrollmentContext);
  [v9 setEnded:v8];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v10 timestampInTicks:0];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v9 timestampInTicks:0];
}

- (void)logJitLmeStartedOrChangedWithTimeInTicks:(id)ticks
{
  ticksCopy = ticks;
  v6 = objc_alloc_init(ASRSchemaASRJitLanguageModelEnrollmentStarted);
  [v6 setExists:1];
  v5 = objc_alloc_init(ASRSchemaASRJitLanguageModelEnrollmentContext);
  [v5 setStartedOrChanged:v6];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v5 timestampInTicks:ticksCopy];
}

- (void)logAppleNeuralEngineModelInitializationEnded
{
  v4 = objc_alloc_init(ASRSchemaASRAppleNeuralEngineModelInitializationEnded);
  [v4 setExists:1];
  v3 = objc_alloc_init(ASRSchemaASRAppleNeuralEngineModelInitializationContext);
  [v3 setEnded:v4];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v3 timestampInTicks:0];
}

- (void)logAppleNeuralEngineModelInitializationStartedOrChangedWithTimeInTicks:(id)ticks
{
  ticksCopy = ticks;
  v6 = objc_alloc_init(ASRSchemaASRAppleNeuralEngineModelInitializationStarted);
  [v6 setExists:1];
  v5 = objc_alloc_init(ASRSchemaASRAppleNeuralEngineModelInitializationContext);
  [v5 setStartedOrChanged:v6];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v5 timestampInTicks:ticksCopy];
}

- (void)logActiveConfigUpdateEnded
{
  v6 = objc_alloc_init(ASRSchemaASRActiveConfigUpdateEnded);
  [v6 setExists:1];
  v3 = objc_alloc_init(ASRSchemaASRActiveConfigUpdateContext);
  [v3 setEnded:v6];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v3 timestampInTicks:0];
  captureSnapshot = [qword_1000615E0 captureSnapshot];
  v5 = +[SPIAsrAssetLoadEndedEventContext context];
  [captureSnapshot logWithEventContext:v5 asrIdentifier:self->_asrId];
}

- (void)logActiveConfigUpdateStartedOrChangedWithTimeInTicks:(id)ticks
{
  ticksCopy = ticks;
  v8 = objc_alloc_init(ASRSchemaASRActiveConfigUpdateStarted);
  [v8 setExists:1];
  v5 = objc_alloc_init(ASRSchemaASRActiveConfigUpdateContext);
  [v5 setStartedOrChanged:v8];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v5 timestampInTicks:ticksCopy];

  captureSnapshot = [qword_1000615E0 captureSnapshot];
  v7 = +[SPIAsrAssetLoadStartedOrChangedEventContext context];
  [captureSnapshot logWithEventContext:v7 asrIdentifier:self->_asrId];
}

- (void)logInitializationStartedOrChangedWithTimeInTicks:(id)ticks
{
  ticksCopy = ticks;
  v8 = objc_alloc_init(ASRSchemaASRInitializationStarted);
  [v8 setExists:1];
  v5 = objc_alloc_init(ASRSchemaASRInitializationContext);
  [v5 setStartedOrChanged:v8];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v5 timestampInTicks:ticksCopy];

  captureSnapshot = [qword_1000615E0 captureSnapshot];
  v7 = +[SPIAsrInitializationStartedOrChangedEventContext context];
  [captureSnapshot logWithEventContext:v7 asrIdentifier:self->_asrId];
}

- (void)logESStartWithTimeInTicks:(id)ticks
{
  ticksCopy = ticks;
  v6 = objc_alloc_init(ASRSchemaASREmbeddedSpeechProcessStarted);
  [v6 setExists:1];
  v5 = objc_alloc_init(ASRSchemaASREmbeddedSpeechProcessContext);
  [v5 setStartedOrChanged:v6];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v5 timestampInTicks:ticksCopy];
}

- (void)logPendingANEModelInitializationContextEvents:(id)events
{
  eventsCopy = events;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [eventsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(eventsCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        timestampInTicks = [v9 timestampInTicks];
        [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v9 timestampInTicks:timestampInTicks];
      }

      v6 = [eventsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)logPendingPreheatContextEvents:(id)events
{
  eventsCopy = events;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [eventsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(eventsCopy);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        preheatContext = [v9 preheatContext];
        preheatContext2 = [v9 preheatContext];
        timestampInTicks = [preheatContext2 timestampInTicks];
        [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:preheatContext timestampInTicks:timestampInTicks];

        powerSnapshot = [v9 powerSnapshot];
        powerEventContext = [v9 powerEventContext];
        [powerSnapshot logWithEventContext:powerEventContext asrIdentifier:self->_asrId];
      }

      v6 = [eventsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (BOOL)_isNonTier1Message:(id)message
{
  messageCopy = message;
  v21 = objc_opt_class();
  v20 = objc_opt_class();
  v19 = objc_opt_class();
  v18 = objc_opt_class();
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [NSSet setWithObjects:v21, v20, v19, v18, v17, v16, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0];
  v14 = objc_opt_class();

  LOBYTE(v14) = [v13 containsObject:v14];
  return v14;
}

- (BOOL)_isTier1LoggingAllowedForCurrentRequestWithTask:(id)task
{
  v3 = CoreEmbeddedSpeechRecognizerTaskSearchOrMessaging;
  v4 = CoreEmbeddedSpeechRecognizerTaskSiriDictation;
  v5 = CoreEmbeddedSpeechRecognizerTaskBeto;
  v6 = CoreEmbeddedSpeechRecognizerTaskBetoDictation;
  taskCopy = task;
  v8 = [NSSet setWithObjects:v3, v4, v5, v6, 0];
  v9 = [NSSet setWithObjects:CoreEmbeddedSpeechRecognizerTaskDictation, CoreEmbeddedSpeechRecognizerTaskWebSearch, 0];
  v10 = [v8 containsObject:taskCopy];
  LODWORD(v4) = [v9 containsObject:taskCopy];

  v11 = +[AFPreferences sharedPreferences];
  LOBYTE(v5) = [v11 isDictationHIPAACompliant];

  v12 = +[AFPreferences sharedPreferences];
  siriDataSharingOptInStatus = [v12 siriDataSharingOptInStatus];

  v14 = (siriDataSharingOptInStatus == 1) & ~v5;
  if (!v4)
  {
    v14 = v10;
  }

  if (v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = v14;
  }

  return v15;
}

- (BOOL)_isLoggingAllowedForCurrentRequestWithTask:(id)task isSpeechAPIRequest:(BOOL)request
{
  requestCopy = request;
  taskCopy = task;
  if ([taskCopy isEqualToString:CoreEmbeddedSpeechRecognizerTaskSearchOrMessaging] & 1) != 0 || (objc_msgSend(taskCopy, "isEqualToString:", CoreEmbeddedSpeechRecognizerTaskSiriDictation) & 1) != 0 || (objc_msgSend(taskCopy, "isEqualToString:", CoreEmbeddedSpeechRecognizerTaskDictation) ? (v6 = !requestCopy) : (v6 = 0), v6 || (objc_msgSend(taskCopy, "isEqualToString:", CoreEmbeddedSpeechRecognizerTaskWebSearch) & 1) != 0 || (objc_msgSend(taskCopy, "isEqualToString:", CoreEmbeddedSpeechRecognizerTaskTshot) & 1) != 0 || (objc_msgSend(taskCopy, "isEqualToString:", CoreEmbeddedSpeechRecognizerTaskBeto)))
  {
    v7 = 1;
  }

  else
  {
    v7 = [taskCopy isEqualToString:CoreEmbeddedSpeechRecognizerTaskBetoDictation];
  }

  return v7;
}

+ (void)logPowerSnapshotForProcessEnded
{
  captureSnapshot = [qword_1000615E0 captureSnapshot];
  v2 = +[SPIProcessEndedEventContext context];
  [captureSnapshot logWithEventContext:v2];
}

+ (void)logPowerSnapshotForProcessStarted
{
  captureSnapshot = [qword_1000615E0 captureSnapshot];
  v2 = +[SPIProcessStartedEventContext context];
  [captureSnapshot logWithEventContext:v2];
}

+ (void)initializeSharedPowerLoggerIfNeeded
{
  if (!qword_1000615E0)
  {
    qword_1000615E0 = [[SPIPowerLogger alloc] initWithCurrentProcess];

    _objc_release_x1();
  }
}

+ (id)createANEModelInitializationEndedEventWithTimeStamp:(id)stamp fileName:(id)name
{
  nameCopy = name;
  stampCopy = stamp;
  v7 = objc_alloc_init(ASRSchemaASRAppleNeuralEngineModelInitializationEnded);
  [v7 setExists:1];
  v8 = objc_alloc_init(ASRSchemaASRAppleNeuralEngineModelInitializationContext);
  [v8 setTimestampInTicks:stampCopy];

  [v8 setFileName:nameCopy];
  [v8 setEnded:v7];

  return v8;
}

+ (id)createANEModelInitializationStartedEventWithTimeStamp:(id)stamp fileName:(id)name
{
  nameCopy = name;
  stampCopy = stamp;
  v7 = objc_alloc_init(ASRSchemaASRAppleNeuralEngineModelInitializationStarted);
  [v7 setExists:1];
  v8 = objc_alloc_init(ASRSchemaASRAppleNeuralEngineModelInitializationContext);
  [v8 setFileName:nameCopy];

  [v8 setTimestampInTicks:stampCopy];
  [v8 setStartedOrChanged:v7];

  return v8;
}

+ (id)createPreheatEndedEventWithPreheatAlreadyDone:(BOOL)done
{
  doneCopy = done;
  v4 = objc_alloc_init(ASRSchemaASRPreheatEnded);
  v5 = v4;
  if (doneCopy)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  if (doneCopy)
  {
    v7 = SPIAsrPreheatEndedAlreadyDoneEventContext_ptr;
  }

  else
  {
    v7 = SPIAsrPreheatEndedSuccessEventContext_ptr;
  }

  [v4 setStatus:v6];
  context = [*v7 context];
  v9 = objc_alloc_init(ASRSchemaASRPreheatContext);
  v10 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
  [v9 setTimestampInTicks:v10];
  [v9 setEnded:v5];
  captureSnapshot = [qword_1000615E0 captureSnapshot];
  v12 = [[ESSelfPreheatWithPowerContainer alloc] initWithPreheatContext:v9 powerSnapshot:captureSnapshot powerEventContext:context];

  return v12;
}

+ (id)createPreheatFailedEvent
{
  v2 = objc_alloc_init(ASRSchemaASRPreheatFailed);
  [v2 setExists:1];
  v3 = objc_alloc_init(ASRSchemaASRPreheatContext);
  v4 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
  [v3 setTimestampInTicks:v4];
  [v3 setFailed:v2];
  captureSnapshot = [qword_1000615E0 captureSnapshot];
  v6 = [ESSelfPreheatWithPowerContainer alloc];
  v7 = +[SPIAsrPreheatFailedEventContext context];
  v8 = [(ESSelfPreheatWithPowerContainer *)v6 initWithPreheatContext:v3 powerSnapshot:captureSnapshot powerEventContext:v7];

  return v8;
}

+ (id)createPreheatStartedOrChangedEvent
{
  v2 = objc_alloc_init(ASRSchemaASRPreheatStarted);
  [v2 setExists:1];
  v3 = objc_alloc_init(ASRSchemaASRPreheatContext);
  v4 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
  [v3 setTimestampInTicks:v4];
  [v3 setStartedOrChanged:v2];
  captureSnapshot = [qword_1000615E0 captureSnapshot];
  v6 = [ESSelfPreheatWithPowerContainer alloc];
  v7 = +[SPIAsrPreheatStartedOrChangedEventContext context];
  v8 = [(ESSelfPreheatWithPowerContainer *)v6 initWithPreheatContext:v3 powerSnapshot:captureSnapshot powerEventContext:v7];

  return v8;
}

+ (void)_logRequestLinkWithRequestId:(id)id asrId:(id)asrId
{
  idCopy = id;
  asrIdCopy = asrId;
  v7 = objc_alloc_init(SISchemaRequestLinkInfo);
  v8 = [[SISchemaUUID alloc] initWithNSUUID:asrIdCopy];
  [v7 setUuid:v8];

  [v7 setComponent:8];
  v9 = objc_alloc_init(SISchemaRequestLinkInfo);
  v10 = [[SISchemaUUID alloc] initWithNSUUID:idCopy];
  [v9 setUuid:v10];

  [v9 setComponent:1];
  v11 = objc_alloc_init(SISchemaRequestLink);
  [v11 setSource:v7];
  [v11 setTarget:v9];
  v12 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v14 = 136315650;
    v15 = "+[ESSelfHelper _logRequestLinkWithRequestId:asrId:]";
    v16 = 2112;
    v17 = asrIdCopy;
    v18 = 2112;
    v19 = idCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s SELF: Emitting request link message with asrId=%@ and requestID=%@", &v14, 0x20u);
  }

  v13 = +[AssistantSiriAnalytics sharedStream];
  [v13 emitMessage:v11];
}

@end