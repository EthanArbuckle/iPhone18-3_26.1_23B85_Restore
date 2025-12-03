@interface CSSpeechRecognitionSelfHelper
- (BOOL)_isNonTier1Message:(id)message;
- (BOOL)_isTier1LoggingAllowedForCurrentRequestWithTask:(id)task;
- (CSSpeechRecognitionSelfHelper)initWithAsrId:(id)id taskName:(id)name isSamplingForDictation:(BOOL)dictation;
- (void)logAssistantSamplingEventStatus:(unint64_t)status requestId:(id)id error:(id)error;
- (void)logDictationSamplingEventStatus:(unint64_t)status requestId:(id)id error:(id)error;
- (void)logSampledAudioFileStoredSuccessfully;
- (void)logSampledAudioFileStoredWithError:(id)error;
- (void)logSamplingEventStatus:(unint64_t)status requestId:(id)id error:(id)error;
- (void)wrapAndEmitTopLevelEvent:(id)event timestampInTicks:(id)ticks;
@end

@implementation CSSpeechRecognitionSelfHelper

- (void)logDictationSamplingEventStatus:(unint64_t)status requestId:(id)id error:(id)error
{
  idCopy = id;
  errorCopy = error;
  if (idCopy)
  {
    v9 = [NSMutableDictionary alloc];
    v34[0] = idCopy;
    v10 = [NSDate date:@"dictationUIInteractionIdentifier"];
    [v10 timeIntervalSince1970];
    v11 = [NSNumber numberWithDouble:?];
    v34[1] = v11;
    v33[2] = @"samplingDate";
    v12 = +[AFDictationSamplingUtilities samplingDateAsString];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &stru_1002546C0;
    }

    v34[2] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:3];
    v16 = [v9 initWithDictionary:v15];

    if (status == 1)
    {
      if (errorCopy)
      {
        v19 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
        [v16 setObject:v19 forKeyedSubscript:@"errorCode"];

        domain = [errorCopy domain];
        v21 = domain;
        if (domain)
        {
          v22 = domain;
        }

        else
        {
          v22 = &stru_1002546C0;
        }

        [v16 setObject:v22 forKeyedSubscript:@"errorDomain"];

        localizedDescription = [errorCopy localizedDescription];
        v24 = localizedDescription;
        if (localizedDescription)
        {
          v25 = localizedDescription;
        }

        else
        {
          v25 = @"UNDEFINED";
        }

        [v16 setObject:v25 forKeyedSubscript:@"description"];

        userInfo = [errorCopy userInfo];
        v27 = [userInfo objectForKey:NSUnderlyingErrorKey];

        if (v27)
        {
          v28 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v27 code]);
          [v16 setObject:v28 forKeyedSubscript:@"underlyingErrorCode"];

          domain2 = [v27 domain];
          v30 = domain2;
          if (domain2)
          {
            v31 = domain2;
          }

          else
          {
            v31 = &stru_1002546C0;
          }

          [v16 setObject:v31 forKeyedSubscript:@"underlyingErrorDomain"];
        }
      }

      v17 = @"failed";
    }

    else if (status)
    {
      v17 = &stru_1002546C0;
    }

    else
    {
      v17 = @"success";
    }

    [v16 setObject:v17 forKeyedSubscript:@"status"];
    v32 = +[AFAnalytics sharedAnalytics];
    [v32 logEventWithType:2224 context:v16];
  }

  else
  {
    v18 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v36 = "[CSSpeechRecognitionSelfHelper logDictationSamplingEventStatus:requestId:error:]";
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Unable to log sampling event since requestId is nil", buf, 0xCu);
    }
  }
}

- (BOOL)_isNonTier1Message:(id)message
{
  messageCopy = message;
  v20 = objc_opt_class();
  v19 = objc_opt_class();
  v18 = objc_opt_class();
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [NSSet setWithObjects:v20, v19, v18, v17, v16, v4, v5, v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0];
  v14 = objc_opt_class();

  LOBYTE(messageCopy) = [v13 containsObject:v14];
  return messageCopy;
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

- (void)wrapAndEmitTopLevelEvent:(id)event timestampInTicks:(id)ticks
{
  eventCopy = event;
  ticksCopy = ticks;
  v8 = [(CSSpeechRecognitionSelfHelper *)self _isNonTier1Message:eventCopy];
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
                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                        {
                                                          v20 = CSLogContextFacilityCoreSpeech;
                                                          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
                                                          {
                                                            v21 = 136315138;
                                                            v22 = "[CSSpeechRecognitionSelfHelper wrapAndEmitTopLevelEvent:timestampInTicks:]";
                                                            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s SELF: Failed trying to wrap and emit top-level ASR event because event type was not mapped to loggable message type in the ASR SELF schema.", &v21, 0xCu);
                                                          }

                                                          goto LABEL_66;
                                                        }

                                                        [v13 setAudioPacketContainingEndOfFirstWordReadyUpstream:eventCopy];
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

    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
    {
      v17 = v14;
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v21 = 136315394;
      v22 = "[CSSpeechRecognitionSelfHelper wrapAndEmitTopLevelEvent:timestampInTicks:]";
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

LABEL_66:
  }
}

- (void)logSampledAudioFileStoredWithError:(id)error
{
  errorCopy = error;
  v4 = objc_alloc_init(ASRSchemaASRSampledAudioFileStorageFailed);
  if (errorCopy)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:CSErrorDomain] && objc_msgSend(errorCopy, "code") >= 0x92F)
    {
      code = [errorCopy code];

      if (code <= 0x932)
      {
        v7 = [errorCopy code] - 2351;
        if (v7 > 3)
        {
          v8 = 0;
        }

        else
        {
          v8 = dword_1001AA1D0[v7];
        }

        [v4 setSampledAudioStorageFailureReason:v8];
        goto LABEL_11;
      }
    }

    else
    {
    }

    [v4 setErrorCode:{objc_msgSend(errorCopy, "code")}];
    domain2 = [errorCopy domain];
    [v4 setErrorDomain:domain2];

    userInfo = [errorCopy userInfo];
    v11 = [userInfo objectForKey:NSUnderlyingErrorKey];

    if (v11)
    {
      [v4 setUnderlyingErrorCode:{objc_msgSend(v11, "code")}];
      domain3 = [v11 domain];
      [v4 setUnderlyingErrorDomain:domain3];
    }
  }

LABEL_11:
  [(CSSpeechRecognitionSelfHelper *)self wrapAndEmitTopLevelEvent:v4 timestampInTicks:0];
}

- (void)logSampledAudioFileStoredSuccessfully
{
  v3 = objc_alloc_init(ASRSchemaASRSampledAudioFileStored);
  [v3 setExists:1];
  [(CSSpeechRecognitionSelfHelper *)self wrapAndEmitTopLevelEvent:v3 timestampInTicks:0];
}

- (void)logAssistantSamplingEventStatus:(unint64_t)status requestId:(id)id error:(id)error
{
  if (status)
  {
    [(CSSpeechRecognitionSelfHelper *)self logSampledAudioFileStoredWithError:?];
  }

  else
  {
    [(CSSpeechRecognitionSelfHelper *)self logSampledAudioFileStoredSuccessfully];
  }
}

- (void)logSamplingEventStatus:(unint64_t)status requestId:(id)id error:(id)error
{
  if (self->_isSamplingForDictation)
  {
    [(CSSpeechRecognitionSelfHelper *)self logDictationSamplingEventStatus:status requestId:id error:error];
  }

  else
  {
    [(CSSpeechRecognitionSelfHelper *)self logAssistantSamplingEventStatus:status requestId:id error:error];
  }
}

- (CSSpeechRecognitionSelfHelper)initWithAsrId:(id)id taskName:(id)name isSamplingForDictation:(BOOL)dictation
{
  idCopy = id;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = CSSpeechRecognitionSelfHelper;
  v11 = [(CSSpeechRecognitionSelfHelper *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_asrId, id);
    objc_storeStrong(&v12->_taskName, name);
    v12->_isSamplingForDictation = dictation;
    v12->_isTier1LoggingAllowedForCurrentRequest = [(CSSpeechRecognitionSelfHelper *)v12 _isTier1LoggingAllowedForCurrentRequestWithTask:nameCopy];
  }

  return v12;
}

@end