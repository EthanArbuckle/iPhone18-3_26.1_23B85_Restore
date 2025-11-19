@interface ESSelfHelper
+ (id)createANEModelInitializationEndedEventWithTimeStamp:(id)a3 fileName:(id)a4;
+ (id)createANEModelInitializationStartedEventWithTimeStamp:(id)a3 fileName:(id)a4;
+ (id)createPreheatEndedEventWithPreheatAlreadyDone:(BOOL)a3;
+ (id)createPreheatFailedEvent;
+ (id)createPreheatStartedOrChangedEvent;
+ (void)_logRequestLinkWithRequestId:(id)a3 asrId:(id)a4;
+ (void)initializeSharedPowerLoggerIfNeeded;
+ (void)logPowerSnapshotForProcessEnded;
+ (void)logPowerSnapshotForProcessStarted;
- (BOOL)_isLoggingAllowedForCurrentRequestWithTask:(id)a3 isSpeechAPIRequest:(BOOL)a4;
- (BOOL)_isNonTier1Message:(id)a3;
- (BOOL)_isTier1LoggingAllowedForCurrentRequestWithTask:(id)a3;
- (void)logActiveConfigUpdateEnded;
- (void)logActiveConfigUpdateStartedOrChangedWithTimeInTicks:(id)a3;
- (void)logAppleNeuralEngineModelInitializationEnded;
- (void)logAppleNeuralEngineModelInitializationStartedOrChangedWithTimeInTicks:(id)a3;
- (void)logAudioPacketArrivalEndedWithTimeInTicks:(id)a3;
- (void)logAudioPacketArrivalStartedOrChangedWithTimeInTicks:(id)a3;
- (void)logAudioPacketContainingEndOfFirstWordReadyUpstreamWithTimeInTicks:(id)a3;
- (void)logESStartWithTimeInTicks:(id)a3;
- (void)logFinalAudioPacketContainingSpeechReadyUpstreamWithTimeInTicks:(id)a3 loggableSharedUserId:(id)a4 earPackage:(id)a5;
- (void)logFinalAudioPacketContainingSpeechReceivedWithTimeInTicks:(id)a3 loggableSharedUserId:(id)a4 earPackage:(id)a5;
- (void)logFinalResultGeneratedWithEARPackage:(id)a3 correctAlignedPartialResultIndexList:(id)a4;
- (void)logFirstAudioPacketContainingSpeechReceivedWithTimeInTicks:(id)a3 loggableSharedUserId:(id)a4;
- (void)logFirstAudioPacketProcessed;
- (void)logFirstAudioPacketReadyUpstreamWithTimeInTicks:(id)a3;
- (void)logFirstAudioPacketRecordedWithTimeInTicks:(id)a3;
- (void)logFrameProcessingReady;
- (void)logInitializationStartedOrChangedWithTimeInTicks:(id)a3;
- (void)logIntermediateUtteranceInfoTier1WithPmInput:(id)a3 pmOutput:(id)a4 unrepairedPostItn:(id)a5 loggableSharedUserId:(id)a6;
- (void)logJitLmeEndedAndEndedTier1WithDialogContext:(id)a3;
- (void)logJitLmeStartedOrChangedWithTimeInTicks:(id)a3;
- (void)logLeadingSilenceProcessedWithTimestampInTicks:(id)a3;
- (void)logPackageGeneratedAndRecognitionResultTier1WithEARPackage:(id)a3 loggableSharedUserId:(id)a4;
- (void)logPartialResultGenerated;
- (void)logPendingANEModelInitializationContextEvents:(id)a3;
- (void)logPendingPreheatContextEvents:(id)a3;
- (void)logPersonalizationExperimentTriggersForExperimentIds:(id)a3;
- (void)logPostSpeechStartOneSecondAudioProcessedWithTimestampInTicks:(id)a3;
- (void)logPostSpeechStartOneSecondLaterAudioPacketReceivedWithTimeInTicks:(id)a3 loggableSharedUserId:(id)a4;
- (void)logRequestEndedOrFailedOrCancelledWithError:(id)a3 recognizerComponents:(id)a4 averageActiveTokensPerFrame:(id)a5 languageModelInterpolationWeights:(id)a6 signalToNoiseRatioInDecibels:(id)a7 recognitionDurationInSec:(id)a8 audioDurationMs:(id)a9 eagerUsed:(id)a10 utteranceDetectionEnabled:(BOOL)a11 utteranceConcatenationEnabled:(BOOL)a12 cpuRealTimeFactor:(id)a13 numLmeDataStreams:(id)a14 phoneticMatchDecoderName:(id)a15 pauseDurations:(id)a16 itnDurationInNs:(id)a17 isEmojiPersonalizationUsed:(BOOL)a18 isEmojiDisambiguationUsed:(BOOL)a19 isEmojiExpectedButNotRecognized:(BOOL)a20 recognizedEmojis:(id)a21 totalITNDurationInNs:(id)a22 totalITNRuns:(id)a23 totalSecondaryPassDurationInNs:(id)a24 totalSecondaryPasses:(id)a25 cpuInstructionsInMillionsPerSecond:(id)a26 aneUsed:(id)a27;
- (void)logRequestStartedOrChangedWithTask:(id)a3 modelLocale:(id)a4 modelVersion:(id)a5 isHighQualityAsset:(id)a6 hammerVersion:(id)a7 geoLanguageModelRegion:(id)a8 geoLanguageModelLoaded:(BOOL)a9 speechProfileAgeInSec:(id)a10 dictationUIInteractionId:(id)a11 portraitExperimentVariantName:(id)a12;
- (void)logSampledAudioFileStoredSuccessfully;
- (void)logSampledAudioFileStoredWithError:(id)a3 customFailureReason:(int64_t)a4;
- (void)wrapAndEmitTopLevelEvent:(id)a3 timestampInTicks:(id)a4;
@end

@implementation ESSelfHelper

- (void)logPersonalizationExperimentTriggersForExperimentIds:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_alloc_init(AIMLExperimentationAnalyticsManager);
    if (([v4 containsObject:@"PeopleSuggesterTop20"] & 1) != 0 || objc_msgSend(v4, "containsObject:", @"NoBoosting"))
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

    if (([v4 containsObject:@"RandomSongTitleSelection"] & 1) != 0 || objc_msgSend(v4, "containsObject:", @"PlayCountSongTitleSelection"))
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

- (void)wrapAndEmitTopLevelEvent:(id)a3 timestampInTicks:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ESSelfHelper *)self _isNonTier1Message:v6];
  isTier1LoggingAllowedForCurrentRequest = self->_isTier1LoggingAllowedForCurrentRequest;
  v10 = objc_opt_respondsToSelector();
  if ((v8 & 1) != 0 || isTier1LoggingAllowedForCurrentRequest)
  {
    if (!isTier1LoggingAllowedForCurrentRequest && ((v10 ^ 1) & 1) == 0)
    {
      ([v6 methodForSelector:"deleteLinkId"])(v6, "deleteLinkId");
    }

    v11 = objc_alloc_init(ASRSchemaASRClientEventMetadata);
    v12 = [[SISchemaUUID alloc] initWithNSUUID:self->_asrId];
    [v11 setAsrId:v12];
    v13 = objc_alloc_init(ASRSchemaASRClientEvent);
    [v13 setEventMetadata:v11];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v13 setPreheatContext:v6];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v13 setRequestContext:v6];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v13 setPartialResultGenerated:v6];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v13 setPackageGenerated:v6];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v13 setRecognitionResultTier1:v6];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v13 setFinalResultGenerated:v6];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v13 setIntermediateUtteranceInfoTier1:v6];
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v13 setInitializationContext:v6];
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      [v13 setAssetLoadContext:v6];
                    }

                    else
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        [v13 setLanguageModelEnrollmentContext:v6];
                      }

                      else
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          [v13 setJitLanguageModelEnrollmentEndedTier1:v6];
                        }

                        else
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            [v13 setAudioPacketArrivalContext:v6];
                          }

                          else
                          {
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              [v13 setFirstAudioPacketProcessed:v6];
                            }

                            else
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                [v13 setFinalAudioPacketContainingSpeechReceived:v6];
                              }

                              else
                              {
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  [v13 setSampledAudioFileStored:v6];
                                }

                                else
                                {
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    [v13 setSampledAudioFileStorageFailed:v6];
                                  }

                                  else
                                  {
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      [v13 setAppleNeuralEngineCompilationContext:v6];
                                    }

                                    else
                                    {
                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        [v13 setEmbeddedSpeechProcessContext:v6];
                                      }

                                      else
                                      {
                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          [v13 setActiveConfigUpdateContext:v6];
                                        }

                                        else
                                        {
                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            [v13 setAppleNeuralEngineModelInitializationContext:v6];
                                          }

                                          else
                                          {
                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              [v13 setAudioSpeechPacketArrivalContext:v6];
                                            }

                                            else
                                            {
                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                [v13 setAudioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived:v6];
                                              }

                                              else
                                              {
                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  [v13 setFrameProcessingReady:v6];
                                                }

                                                else
                                                {
                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    [v13 setLeadingSilenceProcessed:v6];
                                                  }

                                                  else
                                                  {
                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      [v13 setFirstSecondAfterLeadingSilenceProcessed:v6];
                                                    }

                                                    else
                                                    {
                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        [v13 setFirstAudioPacketRecorded:v6];
                                                      }

                                                      else
                                                      {
                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          [v13 setAudioPacketContainingEndOfFirstWordReadyUpstream:v6];
                                                        }

                                                        else
                                                        {
                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            [v13 setFirstAudioPacketReadyUpstream:v6];
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

                                                            [v13 setFinalAudioPacketContainingSpeechReadyUpstream:v6];
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
    if (v7)
    {
      [v15 emitMessage:v13 timestamp:{objc_msgSend(v7, "unsignedLongLongValue")}];
    }

    else
    {
      [v15 emitMessage:v13];
    }

LABEL_70:
  }
}

- (void)logSampledAudioFileStoredWithError:(id)a3 customFailureReason:(int64_t)a4
{
  v12 = a3;
  v6 = objc_alloc_init(ASRSchemaASRSampledAudioFileStorageFailed);
  if (v12)
  {
    [v6 setErrorCode:{objc_msgSend(v12, "code")}];
    v7 = [v12 domain];
    [v6 setErrorDomain:v7];

    v8 = [v12 userInfo];
    v9 = [v8 objectForKey:NSUnderlyingErrorKey];

    if (v9)
    {
      [v6 setUnderlyingErrorCode:{objc_msgSend(v9, "code")}];
      v10 = [v9 domain];
      [v6 setUnderlyingErrorDomain:v10];
    }
  }

  else
  {
    if ((a4 - 1) < 4)
    {
      v11 = a4;
    }

    else
    {
      v11 = 0;
    }

    [v6 setSampledAudioStorageFailureReason:v11];
  }

  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v6 timestampInTicks:0];
}

- (void)logSampledAudioFileStoredSuccessfully
{
  v3 = objc_alloc_init(ASRSchemaASRSampledAudioFileStored);
  [v3 setExists:1];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v3 timestampInTicks:0];
}

- (void)logRequestEndedOrFailedOrCancelledWithError:(id)a3 recognizerComponents:(id)a4 averageActiveTokensPerFrame:(id)a5 languageModelInterpolationWeights:(id)a6 signalToNoiseRatioInDecibels:(id)a7 recognitionDurationInSec:(id)a8 audioDurationMs:(id)a9 eagerUsed:(id)a10 utteranceDetectionEnabled:(BOOL)a11 utteranceConcatenationEnabled:(BOOL)a12 cpuRealTimeFactor:(id)a13 numLmeDataStreams:(id)a14 phoneticMatchDecoderName:(id)a15 pauseDurations:(id)a16 itnDurationInNs:(id)a17 isEmojiPersonalizationUsed:(BOOL)a18 isEmojiDisambiguationUsed:(BOOL)a19 isEmojiExpectedButNotRecognized:(BOOL)a20 recognizedEmojis:(id)a21 totalITNDurationInNs:(id)a22 totalITNRuns:(id)a23 totalSecondaryPassDurationInNs:(id)a24 totalSecondaryPasses:(id)a25 cpuInstructionsInMillionsPerSecond:(id)a26 aneUsed:(id)a27
{
  v97 = a3;
  v99 = a4;
  v85 = a5;
  v102 = a6;
  v86 = a7;
  v101 = a8;
  v100 = a9;
  v87 = a10;
  v88 = a13;
  v89 = a14;
  v90 = a15;
  v98 = a16;
  v91 = a17;
  v92 = a21;
  v93 = a22;
  v94 = a23;
  v81 = a24;
  v83 = a25;
  v95 = a26;
  v96 = a27;
  v32 = objc_alloc_init(ASRSchemaASRRecognitionMetrics);
  personalizedLmAgeInSec = self->_personalizedLmAgeInSec;
  v103 = v32;
  if (personalizedLmAgeInSec)
  {
    [(NSNumber *)personalizedLmAgeInSec doubleValue:v81];
    v35 = [NSNumber numberWithDouble:v34 * 1000000000.0];
    [v32 setPersonalizedLanguageModelAgeInNs:{objc_msgSend(v35, "unsignedLongLongValue")}];
  }

  personalizedLmWeight = self->_personalizedLmWeight;
  if (personalizedLmWeight)
  {
    [(NSNumber *)personalizedLmWeight floatValue];
    [v32 setPersonalizedLanguageModelWeight:?];
  }

  if (v85)
  {
    [v85 floatValue];
    [v32 setAverageActiveTokensPerFrame:?];
  }

  if (v86)
  {
    [v86 floatValue];
    [v32 setSignalToNoiseRatioInDecibels:?];
  }

  if (v101)
  {
    [v101 doubleValue];
    v38 = [NSNumber numberWithDouble:v37 * 1000000000.0];
    [v32 setRecognitionDurationInNs:{objc_msgSend(v38, "unsignedLongLongValue")}];
  }

  if (v100)
  {
    [v100 doubleValue];
    v40 = [NSNumber numberWithDouble:v39 * 1000000.0];
    [v32 setAudioDurationInNs:{objc_msgSend(v40, "unsignedLongLongValue")}];
  }

  if (v87)
  {
    [v32 setEagerEnabled:{objc_msgSend(v87, "BOOLValue")}];
  }

  if (v88)
  {
    [v88 floatValue];
    [v32 setCpuRealTimeFactor:?];
  }

  if (v89)
  {
    [v89 floatValue];
    [v32 setNumLanguageModelEnrollmentDataStreams:v41];
  }

  if (v96)
  {
    if ([v96 BOOLValue])
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

  [v32 setRecognitionHardware:{v42, v81}];
  [v32 setUtteranceDetectionEnabled:a11];
  [v32 setUtteranceConcatenationEnabled:a12];
  [v32 setContinuousListeningEnabled:self->_continuousListeningEnabled];
  [v32 setPhoneticMatchDecoderName:v90];
  [v32 setInverseTextNormalizationDurationForFinalResultInNs:{objc_msgSend(v91, "unsignedLongLongValue")}];
  [v32 setInverseTextNormalizationDurationInNs:{objc_msgSend(v93, "unsignedLongLongValue")}];
  [v32 setNumberOfInverseTextNormalizationRuns:{objc_msgSend(v94, "unsignedIntValue")}];
  [v95 doubleValue];
  [v32 setCpuInstructionsInMillionsPerSecond:v43];
  v44 = objc_alloc_init(ASRSchemaASREmojiMetrics);
  [v44 setIsEmojiPersonalizationUsed:a18];
  [v44 setIsEmojiDisambiguationUsed:a19];
  [v44 setIsEmojiExpectedButNotRecognized:a20];
  [v44 setRecognizedEmojis:v92];
  v84 = v44;
  [v32 setEmojiMetrics:v44];
  if (v99)
  {
    v45 = [v99 componentsSeparatedByString:@"::"];
    v46 = objc_alloc_init(ASRSchemaASRRecognizerComponents);
    v47 = [v45 objectAtIndexedSubscript:0];
    [v46 setFrontend:v47];

    v48 = [v45 objectAtIndexedSubscript:1];
    [v46 setDecoder:v48];

    v49 = [v45 objectAtIndexedSubscript:2];
    [v46 setDecodable:v49];

    [v32 setRecognizerComponents:v46];
  }

  if (v102)
  {
    v50 = objc_alloc_init(NSMutableArray);
    [v102 componentsSeparatedByString:@";"];
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

  if (v98)
  {
    v68 = +[NSMutableArray array];
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v69 = v98;
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
  if (!v97)
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

  if (![v97 code])
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

  if ([v97 code] == 2)
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

  if ([v97 code] == 3)
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
  v79 = [qword_1000615E0 captureSnapshot];
  v80 = +[SPIAsrRequestEndedOrFailedOrCancelledEventContext context];
  [v79 logWithEventContext:v80 asrIdentifier:self->_asrId];
}

- (void)logFinalResultGeneratedWithEARPackage:(id)a3 correctAlignedPartialResultIndexList:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(ASRSchemaASRFinalResultGenerated);
  v8 = [v5 correctPartialResultIndexList];
  [v7 setCorrectPartialResultIndexLists:v8];

  v40 = v7;
  v41 = v6;
  [v7 setCorrectAlignedPartialResultIndexLists:v6];
  v9 = objc_alloc_init(NSMutableArray);
  v10 = objc_alloc_init(NSMutableArray);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v11 = [v5 preITNRecognition];
  v12 = [v11 oneBest];

  v13 = [v12 countByEnumeratingWithState:&v42 objects:v54 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v42 + 1) + 8 * i);
        [v17 silenceStart];
        v19 = v18;
        [v5 utteranceStart];
        v21 = [NSNumber numberWithDouble:v19 + v20];
        [v9 addObject:v21];

        [v17 silenceStart];
        v23 = v22;
        [v5 utteranceStart];
        v25 = [NSNumber numberWithDouble:v23 + v24];
        [v25 doubleValue];
        v27 = [NSNumber numberWithDouble:v26 * 1000000000.0];
        [v10 addObject:v27];
      }

      v14 = [v12 countByEnumeratingWithState:&v42 objects:v54 count:16];
    }

    while (v14);
  }

  [v40 setTokenSilenceStartTimeInNsLists:v10];
  [v40 setIsAfterResume:{objc_msgSend(v5, "firstResultAfterResume")}];
  v28 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
  {
    log = v28;
    v31 = [v5 correctPartialResultIndexList];
    v32 = [v31 componentsJoinedByString:{@", "}];
    v37 = [v32 UTF8String];
    v33 = [v41 componentsJoinedByString:{@", "}];
    v34 = [v33 UTF8String];
    v35 = [v9 componentsJoinedByString:{@", "}];
    v36 = [v35 UTF8String];
    *buf = 136315906;
    v47 = "[ESSelfHelper logFinalResultGeneratedWithEARPackage:correctAlignedPartialResultIndexList:]";
    v48 = 2080;
    v49 = v37;
    v50 = 2080;
    v51 = v34;
    v52 = 2080;
    v53 = v36;
    _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s SELF: Correct Partial Result Index List is %s, Correct Aligned Partial Result Index List is %s, Silence Start Time List is %s", buf, 0x2Au);
  }

  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v40 timestampInTicks:0];
  v29 = [qword_1000615E0 captureSnapshot];
  v30 = +[SPIAsrFinalResultGeneratedEventContext context];
  [v29 logWithEventContext:v30 asrIdentifier:self->_asrId];
}

- (void)logPackageGeneratedAndRecognitionResultTier1WithEARPackage:(id)a3 loggableSharedUserId:(id)a4
{
  v23 = a3;
  v5 = [v23 recognition];
  v6 = [v5 interpretationIndices];
  v7 = [v6 count];

  if (v7)
  {
    v8 = objc_alloc_init(ASRSchemaASRPackageGenerated);
    [v8 setIsFinal:{objc_msgSend(v23, "isFinal")}];
    isTier1LoggingAllowedForCurrentRequest = self->_isTier1LoggingAllowedForCurrentRequest;
    emojiUtils = self->_emojiUtils;
    v24 = 0;
    v25 = 0;
    v11 = v23;
    v12 = emojiUtils;
    v13 = objc_alloc_init(ASRSchemaASRPackage);
    v14 = [v11 preITNRecognition];
    v15 = sub_100003AB4(isTier1LoggingAllowedForCurrentRequest, v14, v12, &v25);
    [v13 setRawRecognition:v15];

    v16 = [v11 recognition];

    v17 = sub_100003AB4(isTier1LoggingAllowedForCurrentRequest, v16, v12, &v24);

    [v13 setPostItn:v17];
    v18 = v25;
    v19 = v24;
    [v8 setPackage:v13];

    v20 = earPackageResultCandidateId();
    v21 = [v11 isFinal];
    v22 = @"-1";
    if ((v21 & 1) == 0 && v20)
    {
      v22 = [v20 stringValue];
    }

    [v8 setResultCandidateId:v22];
    [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v8 timestampInTicks:0];
    self->_packageLogged = 1;
    if (self->_isTier1LoggingAllowedForCurrentRequest)
    {
      [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v18 timestampInTicks:0];
      [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v19 timestampInTicks:0];
    }
  }
}

- (void)logIntermediateUtteranceInfoTier1WithPmInput:(id)a3 pmOutput:(id)a4 unrepairedPostItn:(id)a5 loggableSharedUserId:(id)a6
{
  if (self->_isTier1LoggingAllowedForCurrentRequest)
  {
    v10 = a5;
    v11 = a4;
    v12 = a3;
    v13 = objc_alloc_init(ASRSchemaASRIntermediateUtteranceInfoTier1);
    [v13 setPhoneticMatchInput:v12];

    [v13 setPhoneticMatchOutput:v11];
    [v13 setUnrepairedPostItn:v10];

    [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v13 timestampInTicks:0];
  }
}

- (void)logPartialResultGenerated
{
  v5 = objc_alloc_init(ASRSchemaASRPartialResultGenerated);
  [v5 setExists:1];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v5 timestampInTicks:0];
  v3 = [qword_1000615E0 captureSnapshot];
  v4 = +[SPIAsrPartialResultGeneratedEventContext context];
  [v3 logWithEventContext:v4 asrIdentifier:self->_asrId];
}

- (void)logPostSpeechStartOneSecondAudioProcessedWithTimestampInTicks:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ASRSchemaASRFirstSecondAfterLeadingSilenceProcessed);
  [v5 setExists:1];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v5 timestampInTicks:v4];
}

- (void)logLeadingSilenceProcessedWithTimestampInTicks:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ASRSchemaASRLeadingSilenceProcessed);
  [v5 setExists:1];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v5 timestampInTicks:v4];
}

- (void)logRequestStartedOrChangedWithTask:(id)a3 modelLocale:(id)a4 modelVersion:(id)a5 isHighQualityAsset:(id)a6 hammerVersion:(id)a7 geoLanguageModelRegion:(id)a8 geoLanguageModelLoaded:(BOOL)a9 speechProfileAgeInSec:(id)a10 dictationUIInteractionId:(id)a11 portraitExperimentVariantName:(id)a12
{
  v37 = a3;
  v36 = a4;
  v35 = a6;
  v17 = a10;
  v18 = a11;
  v19 = a12;
  v20 = a8;
  v21 = a7;
  v22 = a5;
  v23 = objc_alloc_init(ASRSchemaASRStarted);
  if (v37)
  {
    v24 = v37;
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

  if (v36)
  {
    v26 = [v36 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
    [v23 setModelLocale:{+[SIUtilities convertLanguageCodeToSchemaLocale:](SIUtilities, "convertLanguageCodeToSchemaLocale:", v26)}];
  }

  if (v35)
  {
    [v23 setIsHighQualityAsset:{objc_msgSend(v35, "BOOLValue")}];
  }

  if (v18)
  {
    v27 = [[NSUUID alloc] initWithUUIDString:v18];
    if (v27)
    {
      v28 = [[SISchemaUUID alloc] initWithNSUUID:v27];
      [v23 setDictationUiInteractionId:v28];
    }
  }

  if (v17)
  {
    [v17 doubleValue];
    v30 = [NSNumber numberWithDouble:v29 * 1000000000.0];
    [v23 setSpeechProfileAgeInNs:{objc_msgSend(v30, "unsignedLongLongValue")}];
  }

  else
  {
    [v23 setSpeechProfileAgeInNs:0x7FFFFFFFFFFFFFFFLL];
  }

  [v23 setDatapackVersion:v22];

  [v23 setHammerVersion:v21];
  [v23 setGeoLanguageModelRegion:v20];

  [v23 setGeoLanguageModelLoaded:a9];
  [v23 setPortraitExperimentVariantName:v19];

  v31 = objc_alloc_init(ASRSchemaASRRequestContext);
  [v31 setStartedOrChanged:v23];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v31 timestampInTicks:0];
  v32 = [qword_1000615E0 captureSnapshot];
  v33 = +[SPIAsrRequestStartedOrChangedEventContext context];
  [v32 logWithEventContext:v33 asrIdentifier:self->_asrId];
}

- (void)logFrameProcessingReady
{
  v3 = objc_alloc_init(ASRSchemaASRFrameProcessingReady);
  [v3 setExists:1];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v3 timestampInTicks:0];
}

- (void)logFinalAudioPacketContainingSpeechReceivedWithTimeInTicks:(id)a3 loggableSharedUserId:(id)a4 earPackage:(id)a5
{
  v7 = a5;
  v8 = a3;
  v12 = objc_alloc_init(ASRSchemaASRFinalAudioPacketContainingSpeechReceived);
  [v12 setExists:1];
  v9 = earPackageResultCandidateId();
  v10 = [v7 isFinal];

  v11 = @"-1";
  if ((v10 & 1) == 0 && v9)
  {
    v11 = [v9 stringValue];
  }

  [v12 setResultCandidateId:v11];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v12 timestampInTicks:v8];
}

- (void)logFinalAudioPacketContainingSpeechReadyUpstreamWithTimeInTicks:(id)a3 loggableSharedUserId:(id)a4 earPackage:(id)a5
{
  v12 = a5;
  v7 = a3;
  v8 = objc_alloc_init(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream);
  if ([v12 isFinal])
  {
    v9 = @"-1";
  }

  else
  {
    v10 = earPackageResultCandidateId();
    if (v10)
    {
      v11 = earPackageResultCandidateId();
      v9 = [v11 stringValue];
    }

    else
    {
      v9 = @"-1";
    }
  }

  [v8 setResultCandidateId:v9];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v8 timestampInTicks:v7];
}

- (void)logPostSpeechStartOneSecondLaterAudioPacketReceivedWithTimeInTicks:(id)a3 loggableSharedUserId:(id)a4
{
  v5 = a3;
  v6 = objc_alloc_init(ASRSchemaASRAudioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived);
  [v6 setExists:1];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v6 timestampInTicks:v5];
}

- (void)logFirstAudioPacketContainingSpeechReceivedWithTimeInTicks:(id)a3 loggableSharedUserId:(id)a4
{
  v5 = a3;
  v7 = objc_alloc_init(ASRSchemaASRAudioSpeechPacketArrivalStarted);
  [v7 setExists:1];
  v6 = objc_alloc_init(ASRSchemaASRAudioSpeechPacketArrivalContext);
  [v6 setStartedOrChanged:v7];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v6 timestampInTicks:v5];
}

- (void)logAudioPacketContainingEndOfFirstWordReadyUpstreamWithTimeInTicks:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ASRSchemaASRAudioPacketContainingEndOfFirstWordReadyUpstream);
  [v5 setExists:1];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v5 timestampInTicks:v4];
}

- (void)logFirstAudioPacketProcessed
{
  v5 = objc_alloc_init(ASRSchemaASRFirstAudioPacketProcessed);
  [v5 setExists:1];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v5 timestampInTicks:0];
  v3 = [qword_1000615E0 captureSnapshot];
  v4 = +[SPIAsrFirstAudioPacketProcessedEventContext context];
  [v3 logWithEventContext:v4 asrIdentifier:self->_asrId];
}

- (void)logFirstAudioPacketReadyUpstreamWithTimeInTicks:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ASRSchemaASRFirstAudioPacketReadyUpstream);
  [v5 setExists:1];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v5 timestampInTicks:v4];
}

- (void)logFirstAudioPacketRecordedWithTimeInTicks:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ASRSchemaASRFirstAudioPacketRecorded);
  [v5 setExists:1];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v5 timestampInTicks:v4];
}

- (void)logAudioPacketArrivalEndedWithTimeInTicks:(id)a3
{
  v4 = a3;
  v8 = objc_alloc_init(ASRSchemaASRAudioPacketArrivalEnded);
  [v8 setExists:1];
  v5 = objc_alloc_init(ASRSchemaASRAudioPacketArrivalContext);
  [v5 setEnded:v8];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v5 timestampInTicks:v4];

  v6 = [qword_1000615E0 captureSnapshot];
  v7 = +[SPIAsrAudioPacketArrivalEndedEventContext context];
  [v6 logWithEventContext:v7 asrIdentifier:self->_asrId];
}

- (void)logAudioPacketArrivalStartedOrChangedWithTimeInTicks:(id)a3
{
  v4 = a3;
  v8 = objc_alloc_init(ASRSchemaASRAudioPacketArrivalStarted);
  [v8 setExists:1];
  v5 = objc_alloc_init(ASRSchemaASRAudioPacketArrivalContext);
  [v5 setStartedOrChanged:v8];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v5 timestampInTicks:v4];

  v6 = [qword_1000615E0 captureSnapshot];
  v7 = +[SPIAsrAudioPacketArrivalStartedOrChangedEventContext context];
  [v6 logWithEventContext:v7 asrIdentifier:self->_asrId];
}

- (void)logJitLmeEndedAndEndedTier1WithDialogContext:(id)a3
{
  v4 = a3;
  v10 = objc_alloc_init(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1);
  v5 = [SISchemaUUID alloc];
  v6 = +[NSUUID UUID];
  v7 = [v5 initWithNSUUID:v6];

  [v10 setLinkId:v7];
  [v10 setDialogContexts:v4];

  v8 = objc_alloc_init(ASRSchemaASRJitLanguageModelEnrollmentEnded);
  [v8 setLinkId:v7];
  v9 = objc_alloc_init(ASRSchemaASRJitLanguageModelEnrollmentContext);
  [v9 setEnded:v8];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v10 timestampInTicks:0];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v9 timestampInTicks:0];
}

- (void)logJitLmeStartedOrChangedWithTimeInTicks:(id)a3
{
  v4 = a3;
  v6 = objc_alloc_init(ASRSchemaASRJitLanguageModelEnrollmentStarted);
  [v6 setExists:1];
  v5 = objc_alloc_init(ASRSchemaASRJitLanguageModelEnrollmentContext);
  [v5 setStartedOrChanged:v6];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v5 timestampInTicks:v4];
}

- (void)logAppleNeuralEngineModelInitializationEnded
{
  v4 = objc_alloc_init(ASRSchemaASRAppleNeuralEngineModelInitializationEnded);
  [v4 setExists:1];
  v3 = objc_alloc_init(ASRSchemaASRAppleNeuralEngineModelInitializationContext);
  [v3 setEnded:v4];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v3 timestampInTicks:0];
}

- (void)logAppleNeuralEngineModelInitializationStartedOrChangedWithTimeInTicks:(id)a3
{
  v4 = a3;
  v6 = objc_alloc_init(ASRSchemaASRAppleNeuralEngineModelInitializationStarted);
  [v6 setExists:1];
  v5 = objc_alloc_init(ASRSchemaASRAppleNeuralEngineModelInitializationContext);
  [v5 setStartedOrChanged:v6];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v5 timestampInTicks:v4];
}

- (void)logActiveConfigUpdateEnded
{
  v6 = objc_alloc_init(ASRSchemaASRActiveConfigUpdateEnded);
  [v6 setExists:1];
  v3 = objc_alloc_init(ASRSchemaASRActiveConfigUpdateContext);
  [v3 setEnded:v6];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v3 timestampInTicks:0];
  v4 = [qword_1000615E0 captureSnapshot];
  v5 = +[SPIAsrAssetLoadEndedEventContext context];
  [v4 logWithEventContext:v5 asrIdentifier:self->_asrId];
}

- (void)logActiveConfigUpdateStartedOrChangedWithTimeInTicks:(id)a3
{
  v4 = a3;
  v8 = objc_alloc_init(ASRSchemaASRActiveConfigUpdateStarted);
  [v8 setExists:1];
  v5 = objc_alloc_init(ASRSchemaASRActiveConfigUpdateContext);
  [v5 setStartedOrChanged:v8];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v5 timestampInTicks:v4];

  v6 = [qword_1000615E0 captureSnapshot];
  v7 = +[SPIAsrAssetLoadStartedOrChangedEventContext context];
  [v6 logWithEventContext:v7 asrIdentifier:self->_asrId];
}

- (void)logInitializationStartedOrChangedWithTimeInTicks:(id)a3
{
  v4 = a3;
  v8 = objc_alloc_init(ASRSchemaASRInitializationStarted);
  [v8 setExists:1];
  v5 = objc_alloc_init(ASRSchemaASRInitializationContext);
  [v5 setStartedOrChanged:v8];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v5 timestampInTicks:v4];

  v6 = [qword_1000615E0 captureSnapshot];
  v7 = +[SPIAsrInitializationStartedOrChangedEventContext context];
  [v6 logWithEventContext:v7 asrIdentifier:self->_asrId];
}

- (void)logESStartWithTimeInTicks:(id)a3
{
  v4 = a3;
  v6 = objc_alloc_init(ASRSchemaASREmbeddedSpeechProcessStarted);
  [v6 setExists:1];
  v5 = objc_alloc_init(ASRSchemaASREmbeddedSpeechProcessContext);
  [v5 setStartedOrChanged:v6];
  [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v5 timestampInTicks:v4];
}

- (void)logPendingANEModelInitializationContextEvents:(id)a3
{
  v4 = a3;
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
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [v9 timestampInTicks];
        [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v9 timestampInTicks:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)logPendingPreheatContextEvents:(id)a3
{
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 preheatContext];
        v11 = [v9 preheatContext];
        v12 = [v11 timestampInTicks];
        [(ESSelfHelper *)self wrapAndEmitTopLevelEvent:v10 timestampInTicks:v12];

        v13 = [v9 powerSnapshot];
        v14 = [v9 powerEventContext];
        [v13 logWithEventContext:v14 asrIdentifier:self->_asrId];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (BOOL)_isNonTier1Message:(id)a3
{
  v22 = a3;
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

- (BOOL)_isTier1LoggingAllowedForCurrentRequestWithTask:(id)a3
{
  v3 = CoreEmbeddedSpeechRecognizerTaskSearchOrMessaging;
  v4 = CoreEmbeddedSpeechRecognizerTaskSiriDictation;
  v5 = CoreEmbeddedSpeechRecognizerTaskBeto;
  v6 = CoreEmbeddedSpeechRecognizerTaskBetoDictation;
  v7 = a3;
  v8 = [NSSet setWithObjects:v3, v4, v5, v6, 0];
  v9 = [NSSet setWithObjects:CoreEmbeddedSpeechRecognizerTaskDictation, CoreEmbeddedSpeechRecognizerTaskWebSearch, 0];
  v10 = [v8 containsObject:v7];
  LODWORD(v4) = [v9 containsObject:v7];

  v11 = +[AFPreferences sharedPreferences];
  LOBYTE(v5) = [v11 isDictationHIPAACompliant];

  v12 = +[AFPreferences sharedPreferences];
  v13 = [v12 siriDataSharingOptInStatus];

  v14 = (v13 == 1) & ~v5;
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

- (BOOL)_isLoggingAllowedForCurrentRequestWithTask:(id)a3 isSpeechAPIRequest:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([v5 isEqualToString:CoreEmbeddedSpeechRecognizerTaskSearchOrMessaging] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", CoreEmbeddedSpeechRecognizerTaskSiriDictation) & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", CoreEmbeddedSpeechRecognizerTaskDictation) ? (v6 = !v4) : (v6 = 0), v6 || (objc_msgSend(v5, "isEqualToString:", CoreEmbeddedSpeechRecognizerTaskWebSearch) & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", CoreEmbeddedSpeechRecognizerTaskTshot) & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", CoreEmbeddedSpeechRecognizerTaskBeto)))
  {
    v7 = 1;
  }

  else
  {
    v7 = [v5 isEqualToString:CoreEmbeddedSpeechRecognizerTaskBetoDictation];
  }

  return v7;
}

+ (void)logPowerSnapshotForProcessEnded
{
  v3 = [qword_1000615E0 captureSnapshot];
  v2 = +[SPIProcessEndedEventContext context];
  [v3 logWithEventContext:v2];
}

+ (void)logPowerSnapshotForProcessStarted
{
  v3 = [qword_1000615E0 captureSnapshot];
  v2 = +[SPIProcessStartedEventContext context];
  [v3 logWithEventContext:v2];
}

+ (void)initializeSharedPowerLoggerIfNeeded
{
  if (!qword_1000615E0)
  {
    qword_1000615E0 = [[SPIPowerLogger alloc] initWithCurrentProcess];

    _objc_release_x1();
  }
}

+ (id)createANEModelInitializationEndedEventWithTimeStamp:(id)a3 fileName:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(ASRSchemaASRAppleNeuralEngineModelInitializationEnded);
  [v7 setExists:1];
  v8 = objc_alloc_init(ASRSchemaASRAppleNeuralEngineModelInitializationContext);
  [v8 setTimestampInTicks:v6];

  [v8 setFileName:v5];
  [v8 setEnded:v7];

  return v8;
}

+ (id)createANEModelInitializationStartedEventWithTimeStamp:(id)a3 fileName:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(ASRSchemaASRAppleNeuralEngineModelInitializationStarted);
  [v7 setExists:1];
  v8 = objc_alloc_init(ASRSchemaASRAppleNeuralEngineModelInitializationContext);
  [v8 setFileName:v5];

  [v8 setTimestampInTicks:v6];
  [v8 setStartedOrChanged:v7];

  return v8;
}

+ (id)createPreheatEndedEventWithPreheatAlreadyDone:(BOOL)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ASRSchemaASRPreheatEnded);
  v5 = v4;
  if (v3)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  if (v3)
  {
    v7 = SPIAsrPreheatEndedAlreadyDoneEventContext_ptr;
  }

  else
  {
    v7 = SPIAsrPreheatEndedSuccessEventContext_ptr;
  }

  [v4 setStatus:v6];
  v8 = [*v7 context];
  v9 = objc_alloc_init(ASRSchemaASRPreheatContext);
  v10 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
  [v9 setTimestampInTicks:v10];
  [v9 setEnded:v5];
  v11 = [qword_1000615E0 captureSnapshot];
  v12 = [[ESSelfPreheatWithPowerContainer alloc] initWithPreheatContext:v9 powerSnapshot:v11 powerEventContext:v8];

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
  v5 = [qword_1000615E0 captureSnapshot];
  v6 = [ESSelfPreheatWithPowerContainer alloc];
  v7 = +[SPIAsrPreheatFailedEventContext context];
  v8 = [(ESSelfPreheatWithPowerContainer *)v6 initWithPreheatContext:v3 powerSnapshot:v5 powerEventContext:v7];

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
  v5 = [qword_1000615E0 captureSnapshot];
  v6 = [ESSelfPreheatWithPowerContainer alloc];
  v7 = +[SPIAsrPreheatStartedOrChangedEventContext context];
  v8 = [(ESSelfPreheatWithPowerContainer *)v6 initWithPreheatContext:v3 powerSnapshot:v5 powerEventContext:v7];

  return v8;
}

+ (void)_logRequestLinkWithRequestId:(id)a3 asrId:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(SISchemaRequestLinkInfo);
  v8 = [[SISchemaUUID alloc] initWithNSUUID:v6];
  [v7 setUuid:v8];

  [v7 setComponent:8];
  v9 = objc_alloc_init(SISchemaRequestLinkInfo);
  v10 = [[SISchemaUUID alloc] initWithNSUUID:v5];
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
    v17 = v6;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s SELF: Emitting request link message with asrId=%@ and requestID=%@", &v14, 0x20u);
  }

  v13 = +[AssistantSiriAnalytics sharedStream];
  [v13 emitMessage:v11];
}

@end