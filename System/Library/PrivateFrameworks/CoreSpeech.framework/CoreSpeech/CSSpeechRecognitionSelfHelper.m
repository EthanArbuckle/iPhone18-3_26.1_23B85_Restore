@interface CSSpeechRecognitionSelfHelper
- (BOOL)_isNonTier1Message:(id)a3;
- (BOOL)_isTier1LoggingAllowedForCurrentRequestWithTask:(id)a3;
- (CSSpeechRecognitionSelfHelper)initWithAsrId:(id)a3 taskName:(id)a4 isSamplingForDictation:(BOOL)a5;
- (void)logAssistantSamplingEventStatus:(unint64_t)a3 requestId:(id)a4 error:(id)a5;
- (void)logDictationSamplingEventStatus:(unint64_t)a3 requestId:(id)a4 error:(id)a5;
- (void)logSampledAudioFileStoredSuccessfully;
- (void)logSampledAudioFileStoredWithError:(id)a3;
- (void)logSamplingEventStatus:(unint64_t)a3 requestId:(id)a4 error:(id)a5;
- (void)wrapAndEmitTopLevelEvent:(id)a3 timestampInTicks:(id)a4;
@end

@implementation CSSpeechRecognitionSelfHelper

- (void)logDictationSamplingEventStatus:(unint64_t)a3 requestId:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (v7)
  {
    v9 = [NSMutableDictionary alloc];
    v34[0] = v7;
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

    if (a3 == 1)
    {
      if (v8)
      {
        v19 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 code]);
        [v16 setObject:v19 forKeyedSubscript:@"errorCode"];

        v20 = [v8 domain];
        v21 = v20;
        if (v20)
        {
          v22 = v20;
        }

        else
        {
          v22 = &stru_1002546C0;
        }

        [v16 setObject:v22 forKeyedSubscript:@"errorDomain"];

        v23 = [v8 localizedDescription];
        v24 = v23;
        if (v23)
        {
          v25 = v23;
        }

        else
        {
          v25 = @"UNDEFINED";
        }

        [v16 setObject:v25 forKeyedSubscript:@"description"];

        v26 = [v8 userInfo];
        v27 = [v26 objectForKey:NSUnderlyingErrorKey];

        if (v27)
        {
          v28 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v27 code]);
          [v16 setObject:v28 forKeyedSubscript:@"underlyingErrorCode"];

          v29 = [v27 domain];
          v30 = v29;
          if (v29)
          {
            v31 = v29;
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

    else if (a3)
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

- (BOOL)_isNonTier1Message:(id)a3
{
  v3 = a3;
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

  LOBYTE(v3) = [v13 containsObject:v14];
  return v3;
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

- (void)wrapAndEmitTopLevelEvent:(id)a3 timestampInTicks:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSSpeechRecognitionSelfHelper *)self _isNonTier1Message:v6];
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

                                                        [v13 setAudioPacketContainingEndOfFirstWordReadyUpstream:v6];
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
    if (v7)
    {
      [v15 emitMessage:v13 timestamp:{objc_msgSend(v7, "unsignedLongLongValue")}];
    }

    else
    {
      [v15 emitMessage:v13];
    }

LABEL_66:
  }
}

- (void)logSampledAudioFileStoredWithError:(id)a3
{
  v13 = a3;
  v4 = objc_alloc_init(ASRSchemaASRSampledAudioFileStorageFailed);
  if (v13)
  {
    v5 = [v13 domain];
    if ([v5 isEqualToString:CSErrorDomain] && objc_msgSend(v13, "code") >= 0x92F)
    {
      v6 = [v13 code];

      if (v6 <= 0x932)
      {
        v7 = [v13 code] - 2351;
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

    [v4 setErrorCode:{objc_msgSend(v13, "code")}];
    v9 = [v13 domain];
    [v4 setErrorDomain:v9];

    v10 = [v13 userInfo];
    v11 = [v10 objectForKey:NSUnderlyingErrorKey];

    if (v11)
    {
      [v4 setUnderlyingErrorCode:{objc_msgSend(v11, "code")}];
      v12 = [v11 domain];
      [v4 setUnderlyingErrorDomain:v12];
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

- (void)logAssistantSamplingEventStatus:(unint64_t)a3 requestId:(id)a4 error:(id)a5
{
  if (a3)
  {
    [(CSSpeechRecognitionSelfHelper *)self logSampledAudioFileStoredWithError:?];
  }

  else
  {
    [(CSSpeechRecognitionSelfHelper *)self logSampledAudioFileStoredSuccessfully];
  }
}

- (void)logSamplingEventStatus:(unint64_t)a3 requestId:(id)a4 error:(id)a5
{
  if (self->_isSamplingForDictation)
  {
    [(CSSpeechRecognitionSelfHelper *)self logDictationSamplingEventStatus:a3 requestId:a4 error:a5];
  }

  else
  {
    [(CSSpeechRecognitionSelfHelper *)self logAssistantSamplingEventStatus:a3 requestId:a4 error:a5];
  }
}

- (CSSpeechRecognitionSelfHelper)initWithAsrId:(id)a3 taskName:(id)a4 isSamplingForDictation:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = CSSpeechRecognitionSelfHelper;
  v11 = [(CSSpeechRecognitionSelfHelper *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_asrId, a3);
    objc_storeStrong(&v12->_taskName, a4);
    v12->_isSamplingForDictation = a5;
    v12->_isTier1LoggingAllowedForCurrentRequest = [(CSSpeechRecognitionSelfHelper *)v12 _isTier1LoggingAllowedForCurrentRequestWithTask:v10];
  }

  return v12;
}

@end