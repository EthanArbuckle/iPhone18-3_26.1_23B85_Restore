@interface CSVoiceTriggerFirstPassHearst
- (BOOL)_shouldHandleHearstActivation;
- (CSVoiceTriggerDelegate)delegate;
- (CSVoiceTriggerFirstPassHearst)initWithSpeechManager:(id)a3 voiceTriggerEnabledMonitor:(id)a4 siriClientBehaviorMonitor:(id)a5 phoneCallStateMonitor:(id)a6 otherAppRecordingStateMonitor:(id)a7 audioRouteChangeMonitor:(id)a8;
- (void)CSPhoneCallStateMonitor:(id)a3 didRecievePhoneCallStateChange:(unint64_t)a4;
- (void)_cancelAllAudioStreamHoldings;
- (void)_handleRemoteMicVADEventWithSecondPassRequest:(id)a3;
- (void)_handleRemoteMicVoiceTriggerEvent:(id)a3 secondPassRequest:(id)a4 completion:(id)a5;
- (void)_handleSecondPassResult:(id)a3 secondPassRequest:(id)a4 deviceId:(id)a5 requestOption:(id)a6 error:(id)a7 completion:(id)a8;
- (void)_requestStartAudioStreamWitContext:(id)a3 secondPassRequest:(id)a4 startStreamOption:(id)a5 completion:(id)a6;
- (void)_reset;
- (void)_setAsset:(id)a3;
- (void)activationEventNotificationHandler:(id)a3 event:(id)a4 completion:(id)a5;
- (void)reset;
- (void)setAsset:(id)a3;
- (void)siriClientBehaviorMonitor:(id)a3 didStartStreamWithContext:(id)a4 successfully:(BOOL)a5 option:(id)a6 withEventUUID:(id)a7;
- (void)start;
@end

@implementation CSVoiceTriggerFirstPassHearst

- (CSVoiceTriggerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_shouldHandleHearstActivation
{
  v3 = [(CSAudioRouteChangeMonitor *)self->_audioRouteChangeMonitor hearstRouteStatus];
  v4 = [(CSAudioRouteChangeMonitor *)self->_audioRouteChangeMonitor isHearstHijackable];
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    v8 = 136315906;
    v9 = "[CSVoiceTriggerFirstPassHearst _shouldHandleHearstActivation]";
    v10 = 1024;
    v11 = v3;
    if (v4)
    {
      v6 = @"YES";
    }

    v12 = 2112;
    v13 = v6;
    v14 = 1024;
    v15 = ((v3 - 1) < 2) | v4 & 1;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s HearstRouteStatus: %d, isHearstHijackable? %@, shouldHandle: %d", &v8, 0x22u);
  }

  return ((v3 - 1) < 2) | v4 & 1;
}

- (void)_cancelAllAudioStreamHoldings
{
  if (self->_triggeredAudioStreamHolding)
  {
    v3 = [(CSVoiceTriggerFirstPassHearst *)self triggeredAudioProvider];
    [v3 cancelAudioStreamHold:self->_triggeredAudioStreamHolding];

    triggeredAudioStreamHolding = self->_triggeredAudioStreamHolding;
    self->_triggeredAudioStreamHolding = 0;

    triggeredAudioProvider = self->_triggeredAudioProvider;
    self->_triggeredAudioProvider = 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(NSMutableDictionary *)self->_hearstSecondPassRequests objectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) cancelAudioStreamHold];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_requestStartAudioStreamWitContext:(id)a3 secondPassRequest:(id)a4 startStreamOption:(id)a5 completion:(id)a6
{
  v9 = a4;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000FC184;
  v29[3] = &unk_100253220;
  v10 = a6;
  v30 = v10;
  v11 = a3;
  v12 = objc_retainBlock(v29);
  speechManager = self->_speechManager;
  v28 = 0;
  v14 = [(CSSpeechManager *)speechManager audioProviderWithContext:v11 error:&v28];

  v15 = v28;
  if (v14)
  {
    [v9 setAudioProvider:v14];
    v16 = objc_alloc_init(CSAudioStreamRequest);
    [v16 setRequiresHistoricalBuffer:1];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v27 = 0;
    v19 = [v14 audioStreamWithRequest:v16 streamName:v18 error:&v27];
    v20 = v27;

    if (!v19)
    {
      v21 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
      {
        v25 = v21;
        v26 = [v20 localizedDescription];
        *buf = 136315394;
        v32 = "[CSVoiceTriggerFirstPassHearst _requestStartAudioStreamWitContext:secondPassRequest:startStreamOption:completion:]";
        v33 = 2114;
        v34 = v26;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s Failed to get audio stream : %{public}@", buf, 0x16u);
      }
    }

    (v12[2])(v12, v19 != 0, v20);
  }

  else
  {
    v22 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      v23 = v22;
      v24 = [v15 localizedDescription];
      *buf = 136315394;
      v32 = "[CSVoiceTriggerFirstPassHearst _requestStartAudioStreamWitContext:secondPassRequest:startStreamOption:completion:]";
      v33 = 2114;
      v34 = v24;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s Getting audio stream provider has failed : %{public}@", buf, 0x16u);
    }

    (v12[2])(v12, 0, v15);
  }
}

- (void)_handleSecondPassResult:(id)a3 secondPassRequest:(id)a4 deviceId:(id)a5 requestOption:(id)a6 error:(id)a7 completion:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [v13 result];
  v20 = [v13 voiceTriggerEventInfo];
  if (v19 == 4)
  {
    v21 = v14;
    if (v18)
    {
      v18[2](v18, 0, v17);
    }

    goto LABEL_53;
  }

  v85 = v18;
  v22 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v22;
    v24 = [v17 localizedDescription];
    *buf = 136316162;
    v103 = "[CSVoiceTriggerFirstPassHearst _handleSecondPassResult:secondPassRequest:deviceId:requestOption:error:completion:]";
    v104 = 1026;
    *v105 = v19;
    *&v105[4] = 2114;
    *&v105[6] = v20;
    *&v105[14] = 2114;
    *&v105[16] = v15;
    *&v105[24] = 2114;
    *&v105[26] = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s Second Pass Result, %{public}d, %{public}@, %{public}@, %{public}@", buf, 0x30u);
  }

  v21 = v14;
  v86 = v13;
  v87 = v17;
  v88 = v16;
  if (v20)
  {
    v25 = kVTEITriggeredPh;
    v26 = [v20 objectForKeyedSubscript:kVTEITriggeredPh];

    if (v26)
    {
      v84 = v15;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v27 = self->_phrasesToSkipBoronDecisionMaking;
      v28 = [(NSArray *)v27 countByEnumeratingWithState:&v98 objects:v110 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v99;
        while (2)
        {
          for (i = 0; i != v29; i = i + 1)
          {
            if (*v99 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v98 + 1) + 8 * i);
            v33 = [v20 objectForKeyedSubscript:{v25, v84}];
            LODWORD(v32) = [v32 isEqualToString:v33];

            if (v32)
            {
              v62 = CSLogCategoryVT;
              if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
              {
                v63 = v62;
                v64 = [v20 objectForKeyedSubscript:v25];
                *buf = 136315394;
                v103 = "[CSVoiceTriggerFirstPassHearst _handleSecondPassResult:secondPassRequest:deviceId:requestOption:error:completion:]";
                v104 = 2112;
                *v105 = v64;
                _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%s Ignoring boron based decision making as triggered phrase %@", buf, 0x16u);
              }

              v21 = v14;
              v15 = v84;
              v18 = v85;
              v44 = self;
              goto LABEL_31;
            }
          }

          v29 = [(NSArray *)v27 countByEnumeratingWithState:&v98 objects:v110 count:16];
          if (v29)
          {
            continue;
          }

          break;
        }
      }

      v21 = v14;
      v15 = v84;
    }
  }

  v34 = [v20 objectForKeyedSubscript:{kVTEItriggerEndSeconds, v84}];
  [v34 floatValue];
  v36 = v35;

  v37 = [v20 objectForKeyedSubscript:kVTEIShadowMicScoreThresholdForVAD];
  [v37 doubleValue];
  v39 = v38;

  v40 = [v20 objectForKeyedSubscript:kVTEIShadowMicScore];
  [v40 doubleValue];
  v42 = v41;

  v43 = CSLogCategoryVT;
  v44 = self;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v45 = v43;
    [v21 remoteMicVADScore];
    remoteMicVADThreshold = self->_remoteMicVADThreshold;
    minimumPhraseLengthForVADGating = self->_minimumPhraseLengthForVADGating;
    *buf = 136316674;
    v103 = "[CSVoiceTriggerFirstPassHearst _handleSecondPassResult:secondPassRequest:deviceId:requestOption:error:completion:]";
    v104 = 2050;
    *v105 = v48;
    *&v105[8] = 2050;
    *&v105[10] = remoteMicVADThreshold;
    *&v105[18] = 2050;
    *&v105[20] = v36;
    *&v105[28] = 2050;
    *&v105[30] = minimumPhraseLengthForVADGating;
    v106 = 2050;
    v107 = v42;
    v108 = 2050;
    v109 = v39;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%s remoteMicVADScore : %{public}f, remoteMicVADThreshold : %{public}f, triggerEndSeconds : %{public}f, minPhraseLength : %{public}f shadowMicScore: %{public}f shadowMicScoreThreshold: %{public}f", buf, 0x48u);
  }

  v94[0] = _NSConcreteStackBlock;
  v94[1] = 3221225472;
  v94[2] = sub_1000FCAF8;
  v94[3] = &unk_1002518A8;
  v96 = v39;
  v97 = v42;
  v95 = &stru_100251880;
  v49 = objc_retainBlock(v94);
  v50 = [v88 rtModelRequestOptions];
  v51 = [v50 accessoryInfo];
  v52 = [v51 supportsAlwaysOnAccelerometer];

  v53 = [v21 remoteMicVADScore];
  if (v52)
  {
    v55 = sub_1000FCC20(v53, v54, self->_remoteMicVADThreshold);
  }

  else
  {
    v56 = self->_minimumPhraseLengthForVADGating;
    v55 = (v49[2])(v49);
  }

  v18 = v85;
  if (v55 && v19 == 1)
  {
    v57 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v58 = v57;
      [v21 remoteMicVADScore];
      v59 = self->_remoteMicVADThreshold;
      v60 = self->_minimumPhraseLengthForVADGating;
      *buf = 136316162;
      v103 = "[CSVoiceTriggerFirstPassHearst _handleSecondPassResult:secondPassRequest:deviceId:requestOption:error:completion:]";
      v104 = 2050;
      *v105 = v61;
      *&v105[8] = 2050;
      *&v105[10] = v59;
      *&v105[18] = 2050;
      *&v105[20] = v36;
      *&v105[28] = 2050;
      *&v105[30] = v60;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%s Trigger is rejected since remoteMicVADScore is %{public}f, remoteMicVADThreshold is %{public}f, triggerEndSeconds is %{public}f, minPhraseLength is %{public}f", buf, 0x34u);
    }

    v19 = 9;
  }

  v27 = v95;
LABEL_31:

  v65 = [v20 mutableCopy];
  [v21 remoteMicVADScore];
  v66 = [NSNumber numberWithFloat:?];
  [v65 setObject:v66 forKey:kVTEIRemoteMicVADScore];

  *&v67 = v44->_remoteMicVADThreshold;
  v68 = [NSNumber numberWithFloat:v67];
  [v65 setObject:v68 forKey:kVTEIRemoteMicVADThreshold];

  *&v69 = v44->_remoteMicVADMyriadThreshold;
  v70 = [NSNumber numberWithFloat:v69];
  [v65 setObject:v70 forKey:kVTEIRemoteMicVADMyriadThreshold];

  if (v19 <= 2)
  {
    v13 = v86;
    if (v19 == 1)
    {
      WeakRetained = objc_loadWeakRetained(&v44->_delegate);
      v79 = objc_opt_respondsToSelector();

      if (v79)
      {
        v73 = objc_loadWeakRetained(&v44->_delegate);
        [v73 voiceTriggerDidDetectKeyword:v65 deviceId:v15];
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    if (v19 == 2)
    {
      v71 = objc_loadWeakRetained(&v44->_delegate);
      v72 = objc_opt_respondsToSelector();

      if (v72)
      {
        v73 = objc_loadWeakRetained(&v44->_delegate);
        [v73 voiceTriggerDidRejected:v65 deviceId:v15];
LABEL_46:

        goto LABEL_47;
      }

      goto LABEL_47;
    }

LABEL_40:
    v76 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      v73 = v76;
      v77 = [v87 localizedDescription];
      *buf = 136315394;
      v103 = "[CSVoiceTriggerFirstPassHearst _handleSecondPassResult:secondPassRequest:deviceId:requestOption:error:completion:]";
      v104 = 2114;
      *v105 = v77;
      _os_log_error_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "%s VoiceTrigger Second Pass has failed : %{public}@", buf, 0x16u);

      goto LABEL_46;
    }

    goto LABEL_47;
  }

  v13 = v86;
  if (v19 == 3)
  {
    v80 = objc_loadWeakRetained(&v44->_delegate);
    v81 = objc_opt_respondsToSelector();

    if (v81)
    {
      v73 = objc_loadWeakRetained(&v44->_delegate);
      [v73 voiceTriggerDidDetectNearMiss:v65 deviceId:v15];
      goto LABEL_46;
    }

    goto LABEL_47;
  }

  if (v19 != 9)
  {
    goto LABEL_40;
  }

  v74 = objc_loadWeakRetained(&v44->_delegate);
  v75 = objc_opt_respondsToSelector();

  if (v75)
  {
    v73 = objc_loadWeakRetained(&v44->_delegate);
    [v73 voiceTriggerDidDetectSpeakerReject:v20];
    goto LABEL_46;
  }

LABEL_47:
  if ([v13 isSecondChanceCandidate])
  {
    v82 = [[CSVoiceTriggerSecondChanceContext alloc] initWithWindowStartTime:mach_absolute_time()];
  }

  else
  {
    v82 = 0;
  }

  [v21 setSecondChanceContext:v82];
  queue = v44->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FCCE8;
  block[3] = &unk_1002533C8;
  v92 = v44;
  v93 = v19;
  v91 = v21;
  dispatch_async(queue, block);
  if (v18)
  {
    v18[2](v18, 1, 0);
  }

  v17 = v87;
  v16 = v88;
LABEL_53:
}

- (void)_handleRemoteMicVoiceTriggerEvent:(id)a3 secondPassRequest:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v34 = a5;
  v35 = +[CSVoiceTriggerFirstPassMetrics CSVoiceTriggerFirstPassMetricsWithFirstPassInfoGeneratedTime:firstPassInfoProcessedTime:](CSVoiceTriggerFirstPassMetrics, "CSVoiceTriggerFirstPassMetricsWithFirstPassInfoGeneratedTime:firstPassInfoProcessedTime:", [v7 hosttime], mach_absolute_time());
  v9 = [v7 deviceId];
  v36 = [CSAudioRecordContext contextForHearstVoiceTriggerWithDeviceId:v9];

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_1000FD24C;
  v47[3] = &unk_100253C70;
  v47[4] = self;
  v10 = v8;
  v48 = v10;
  [(CSVoiceTriggerFirstPassHearst *)self _requestStartAudioStreamWitContext:v36 secondPassRequest:v10 startStreamOption:0 completion:v47];
  v11 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v7 deviceId];
    *buf = 136315394;
    v50 = "[CSVoiceTriggerFirstPassHearst _handleRemoteMicVoiceTriggerEvent:secondPassRequest:completion:]";
    v51 = 2112;
    v52 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  [v10 setIsSecondPassRunning:1];
  objc_initWeak(buf, self);
  v14 = [CSVoiceTriggerRTModelRequestOptions alloc];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1000FD3B4;
  v45[3] = &unk_100251818;
  v45[4] = self;
  v15 = v7;
  v46 = v15;
  v16 = [(CSVoiceTriggerRTModelRequestOptions *)v14 initWithMutableBuilder:v45];
  v17 = [v10 secondChanceContext];
  v18 = [v17 shouldRunAsSecondChance];

  v19 = [CSVoiceTriggerSecondPassRequestOption alloc];
  v20 = [v15 deviceId];
  v21 = [v10 audioProvider];
  v22 = [v21 UUID];
  v23 = [v15 activationInfo];
  v24 = +[NSUUID UUID];
  v25 = [(CSVoiceTriggerSecondPassRequestOption *)v19 initWithFirstPassSource:3 deviceId:v20 audioProviderUUID:v22 firstPassInfo:v23 rejectionMHUUID:v24 isSecondChanceRun:v18 firstpassMetrics:v35 rtModelRequestOptions:v16];

  if ([(CSVoiceTriggerRTModelRequestOptions *)v16 allowMph])
  {
    v26 = [(CSVoiceTriggerRTModelRequestOptions *)v16 accessoryInfo];
    v27 = [v26 supportsJustSiri];
  }

  else
  {
    v27 = 0;
  }

  v28 = [v10 voiceTriggerSecondPass];
  [v28 setSupportsMultiPhraseDetection:v27];

  v29 = [v10 voiceTriggerSecondPass];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000FD548;
  v38[3] = &unk_100251840;
  objc_copyWeak(&v44, buf);
  v30 = v10;
  v39 = v30;
  v31 = v15;
  v40 = v31;
  v32 = v25;
  v41 = v32;
  v33 = v34;
  v42 = self;
  v43 = v33;
  [v29 handleVoiceTriggerSecondPassFrom:v32 completion:v38];

  objc_destroyWeak(&v44);
  objc_destroyWeak(buf);
}

- (void)_handleRemoteMicVADEventWithSecondPassRequest:(id)a3
{
  v4 = a3;
  v5 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    [v4 remoteMicVADScore];
    remoteMicVADThreshold = self->_remoteMicVADThreshold;
    remoteMicVADMyriadThreshold = self->_remoteMicVADMyriadThreshold;
    v17 = 136315906;
    v18 = "[CSVoiceTriggerFirstPassHearst _handleRemoteMicVADEventWithSecondPassRequest:]";
    v19 = 2050;
    v20 = v9;
    v21 = 2050;
    v22 = remoteMicVADThreshold;
    v23 = 2050;
    v24 = remoteMicVADMyriadThreshold;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Handle Remote Mic VAD Event : remoteMicVADScore is %{public}f, remoteMicVADThreshold is %{public}f, remoteMicVADMyriadThreshold is %{public}f", &v17, 0x2Au);
  }

  [v4 remoteMicVADScore];
  if (v10 >= self->_remoteMicVADMyriadThreshold)
  {
    +[CSMyriadNotifier notifyInEarMyriadTrigger];
  }

  v11 = +[CSFPreferences sharedPreferences];
  v12 = [v11 shouldOverwriteRemoteVADScore];

  if (v12)
  {
    v13 = +[CSFPreferences sharedPreferences];
    [v13 overwritingRemoteVADScore];
    [v4 setRemoteMicVADScore:?];

    v14 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      [v4 remoteMicVADScore];
      v17 = 136315394;
      v18 = "[CSVoiceTriggerFirstPassHearst _handleRemoteMicVADEventWithSecondPassRequest:]";
      v19 = 2050;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s Remote VAD Score overwritten to %{public}f", &v17, 0x16u);
    }
  }
}

- (void)siriClientBehaviorMonitor:(id)a3 didStartStreamWithContext:(id)a4 successfully:(BOOL)a5 option:(id)a6 withEventUUID:(id)a7
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FDABC;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)CSPhoneCallStateMonitor:(id)a3 didRecievePhoneCallStateChange:(unint64_t)a4
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000FDBE4;
  v5[3] = &unk_100253C98;
  v5[4] = self;
  v5[5] = a4;
  dispatch_async(queue, v5);
}

- (void)activationEventNotificationHandler:(id)a3 event:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FDCB0;
  block[3] = &unk_1002533A0;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(queue, block);
}

- (void)_setAsset:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    [v5 logAssetVersionForInsight];
    objc_storeStrong(&self->_currentAsset, a3);
    v7 = [CSVoiceTriggerSecondPassConfigDecoder decodeConfigFrom:self->_currentAsset forFirstPassSource:3];
    v8 = [v7 wearerDetectionConfig];
    [v8 threshold];
    self->_remoteMicVADThreshold = v9;

    v10 = [v7 wearerDetectionConfig];
    [v10 myriadThreshold];
    self->_remoteMicVADMyriadThreshold = v11;

    v12 = [v7 wearerDetectionConfig];
    [v12 minimumPhraseLength];
    self->_minimumPhraseLengthForVADGating = v13;

    v14 = [v7 wearerDetectionConfig];
    v15 = [v14 phrasesToSkipBoronDecisionMaking];
    phrasesToSkipBoronDecisionMaking = self->_phrasesToSkipBoronDecisionMaking;
    self->_phrasesToSkipBoronDecisionMaking = v15;

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v17 = [(NSMutableDictionary *)self->_hearstSecondPassRequests objectEnumerator];
    v18 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v24;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v24 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [*(*(&v23 + 1) + 8 * i) setAsset:v6];
        }

        v19 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v19);
    }

    [(CSVoiceTriggerFirstPassHearst *)self _reset];
  }

  else
  {
    v22 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v29 = "[CSVoiceTriggerFirstPassHearst _setAsset:]";
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s asset is nil, stop initialization", buf, 0xCu);
    }
  }
}

- (void)setAsset:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000FE8B4;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_reset
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMutableDictionary *)self->_hearstSecondPassRequests objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) reset];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)reset
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FEA24;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)start
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FEAA0;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (CSVoiceTriggerFirstPassHearst)initWithSpeechManager:(id)a3 voiceTriggerEnabledMonitor:(id)a4 siriClientBehaviorMonitor:(id)a5 phoneCallStateMonitor:(id)a6 otherAppRecordingStateMonitor:(id)a7 audioRouteChangeMonitor:(id)a8
{
  v46 = a3;
  v45 = a4;
  v44 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v49.receiver = self;
  v49.super_class = CSVoiceTriggerFirstPassHearst;
  v18 = [(CSVoiceTriggerFirstPassHearst *)&v49 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_speechManager, a3);
    if (!v19->_speechManager)
    {
      v20 = [CSSpeechManager sharedManager:v44];
      speechManager = v19->_speechManager;
      v19->_speechManager = v20;
    }

    objc_storeStrong(&v19->_voiceTriggerEnabledMonitor, a4);
    if (!v19->_voiceTriggerEnabledMonitor)
    {
      v22 = +[CSVoiceTriggerEnabledMonitor sharedInstance];
      voiceTriggerEnabledMonitor = v19->_voiceTriggerEnabledMonitor;
      v19->_voiceTriggerEnabledMonitor = v22;
    }

    objc_storeStrong(&v19->_siriClientBehaviorMonitor, a5);
    if (!v19->_siriClientBehaviorMonitor)
    {
      v24 = +[CSSiriClientBehaviorMonitor sharedInstance];
      siriClientBehaviorMonitor = v19->_siriClientBehaviorMonitor;
      v19->_siriClientBehaviorMonitor = v24;
    }

    v26 = dispatch_queue_create("VoiceTriggerFirstPassHearst Queue", 0);
    queue = v19->_queue;
    v19->_queue = v26;

    v28 = v19->_queue;
    v29 = dispatch_get_global_queue(33, 0);
    dispatch_set_target_queue(v28, v29);

    v30 = +[NSMutableDictionary dictionary];
    hearstSecondPassRequests = v19->_hearstSecondPassRequests;
    v19->_hearstSecondPassRequests = v30;

    objc_storeStrong(&v19->_phoneCallStateMonitor, a6);
    phoneCallStateMonitor = v19->_phoneCallStateMonitor;
    if (!phoneCallStateMonitor)
    {
      v33 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
      v34 = v19->_phoneCallStateMonitor;
      v19->_phoneCallStateMonitor = v33;

      phoneCallStateMonitor = v19->_phoneCallStateMonitor;
    }

    [(CSPhoneCallStateMonitor *)phoneCallStateMonitor addObserver:v19, v44];
    v35 = v19->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000FEE64;
    block[3] = &unk_100253C20;
    v36 = v19;
    v48 = v36;
    dispatch_async(v35, block);
    objc_storeStrong(&v36->_otherAppRecordingStateMonitor, a7);
    if (!v36->_otherAppRecordingStateMonitor)
    {
      v37 = +[CSOtherAppRecordingStateMonitorFactory otherAppRecordingStateMonitor];
      otherAppRecordingStateMonitor = v36->_otherAppRecordingStateMonitor;
      v36->_otherAppRecordingStateMonitor = v37;
    }

    objc_storeStrong(&v36->_audioRouteChangeMonitor, a8);
    if (!v36->_audioRouteChangeMonitor)
    {
      v39 = +[CSAudioRouteChangeMonitor sharedInstance];
      audioRouteChangeMonitor = v36->_audioRouteChangeMonitor;
      v36->_audioRouteChangeMonitor = v39;
    }

    v41 = [[CSVoiceTriggerUserSelectedPhrase alloc] initWithEndpointId:0];
    multiPhraseEnabledStatus = v36->_multiPhraseEnabledStatus;
    v36->_multiPhraseEnabledStatus = v41;
  }

  return v19;
}

@end