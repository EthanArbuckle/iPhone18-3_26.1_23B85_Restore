void sub_10003B83C(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[CSCoreSpeechServices _voiceTriggerRTModelForVersion:minorVersion:accessoryRTModelType:accessoryInfo:endpointId:downloadedModels:preinstalledModels:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s CoreSpeechXPCConnection Invalidated", &v5, 0xCu);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [NSError errorWithDomain:CSErrorDomain code:402 userInfo:&off_10025EE18];
    (*(v3 + 16))(v3, 0, 0, v4);
  }
}

void sub_10003B93C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setInvalidationHandler:0];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 invalidate];
}

uint64_t sub_10003BDA8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 BOOLValue];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

void sub_10003BDF0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315394;
    v4 = "+[CSCoreSpeechServices supportsMultiPhraseVoiceTriggerForEngineVersion:engineMinorVersion:accessoryRTModelType:completion:]_block_invoke_2";
    v5 = 2048;
    v6 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Invalidating Connection %p", &v3, 0x16u);
  }

  if (v1)
  {
    [v1 setInvalidationHandler:0];
    [v1 invalidate];
  }
}

void sub_10003BECC(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "+[CSCoreSpeechServices supportsMultiPhraseVoiceTriggerForEngineVersion:engineMinorVersion:accessoryRTModelType:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Connection invalidated", &v4, 0xCu);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
  }
}

void sub_10003BF88(uint64_t a1, uint64_t a2)
{
  (*(*(a1 + 40) + 16))();
  v4 = *(a1 + 32);
  v5 = [NSNumber numberWithBool:a2];
  [v4 invokeWithValue:v5];
}

void sub_10003C2B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_10003C2D8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10003C2F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "+[CSCoreSpeechServices getCSVoiceTriggerRTModelRequestOptions:completion:]_block_invoke";
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Current VoiceTrigger request options = %{public}@", &v7, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setInvalidationHandler:0];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 invalidate];
}

void sub_10003C4A4(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v6 = [a2 siriLocale];
    (*(v3 + 16))(v3, v6, v5);
  }
}

void sub_10003C6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003C6D8(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[CSCoreSpeechServices fetchRemoteVoiceTriggerAssetForLanguageCode:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s CoreSpeechXPCConnection Invalidated", &v5, 0xCu);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [NSError errorWithDomain:CSErrorDomain code:402 userInfo:&off_10025EDF0];
    (*(v3 + 16))(v3, 0, 0, v4);
  }
}

void sub_10003C7D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setInvalidationHandler:0];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 invalidate];
}

void sub_10003C9CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003C9F0(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[CSCoreSpeechServices installedVoiceTriggerAssetForLanguageCode:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s CoreSpeechXPCConnection Invalidated", &v5, 0xCu);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [NSError errorWithDomain:CSErrorDomain code:402 userInfo:&off_10025EDC8];
    (*(v3 + 16))(v3, 0, 0, v4);
  }
}

void sub_10003CAF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setInvalidationHandler:0];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 invalidate];
}

void sub_10003D110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003D12C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 assetChangeMonitorDidDetectAssetChange:v3];
}

void sub_10003D264(id a1)
{
  v1 = objc_alloc_init(CSVoiceTriggerAssetChangeMonitor);
  v2 = qword_10029E050;
  qword_10029E050 = v1;
}

id sub_10003D8B8(uint64_t a1)
{
  v2 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 136315394;
    v6 = "[CSIntuitiveConvRequestHandler testDismissAttendingWithXPDisconnection:]_block_invoke";
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s xpcDisconnection:%u", &v5, 0x12u);
  }

  return [*(a1 + 32) _attendingExitAndDismissalWithXpcDisconnect:*(a1 + 40)];
}

uint64_t sub_10003DA70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10003DFF8(uint64_t a1)
{
  v2 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSIntuitiveConvRequestHandler attSiriAudioSrcNodeDidStopUnexpectedly:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  return [*(a1 + 32) _handleStopProcessingForRequestId:*(*(a1 + 32) + 304)];
}

void sub_10003E6F4(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!a2)
  {
    v7 = CSLogCategoryRequest;
    if (v5)
    {
      if (!os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      v8 = a1[4];
      v9 = v7;
      v10 = [v8 type];
      v11 = [v5 localizedDescription];
      v16 = 136315650;
      v17 = "[CSIntuitiveConvRequestHandler _handleStartProcessingWithRecordContext:withAudioStartStreamOptions:completion:]_block_invoke";
      v18 = 2048;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s AFTM did not start for recordType:%llu, with error: %{public}@", &v16, 0x20u);
    }

    else
    {
      if (!os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      v12 = a1[4];
      v9 = v7;
      v16 = 136315394;
      v17 = "[CSIntuitiveConvRequestHandler _handleStartProcessingWithRecordContext:withAudioStartStreamOptions:completion:]_block_invoke";
      v18 = 2048;
      v19 = [v12 type];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s AFTM not enabled for recordType:%llu", &v16, 0x16u);
    }

    goto LABEL_10;
  }

  v6 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[CSIntuitiveConvRequestHandler _handleStartProcessingWithRecordContext:withAudioStartStreamOptions:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s AFTM started for siri request status!", &v16, 0xCu);
  }

LABEL_10:
  v13 = a1[6];
  v14 = *(a1[5] + 208);
  v15 = [v13 siriSessionUUID];
  [v14 updateAFTMOperationalStatus:a2 forRequestId:v15];
}

void sub_10003EA00(id a1, BOOL a2, NSError *a3)
{
  v4 = a2;
  v5 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(NSError *)a3 localizedDescription];
    v8 = 136315650;
    v9 = "[CSIntuitiveConvRequestHandler _setupAudioSrcNodeWithSiriClientStream:]_block_invoke";
    v10 = 1024;
    v11 = v4;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Attached to siri client stream with result: %d error:%@", &v8, 0x1Cu);
  }
}

id sub_10003EBDC(uint64_t a1)
{
  v2 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[CSIntuitiveConvRequestHandler mxSessionMonitorSomeClientWentActive:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s sessionInfo:%@", &v5, 0x16u);
  }

  return [*(*(a1 + 40) + 280) setAudioSessionState:*(a1 + 32)];
}

void sub_10003EDFC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *(v10 + 96);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003EEE4;
  v15[3] = &unk_100252F38;
  v16 = v7;
  v17 = v8;
  v18 = v10;
  v19 = v9;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v11, v15);
}

void sub_10003EEE4(void *a1)
{
  v2 = a1[4];
  if (!v2)
  {
    v3 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[5];
      v6 = 136315394;
      v7 = "[CSIntuitiveConvRequestHandler audioSessionInfoProvider:didReceiveAudioSessionRouteChangeNotificationWithUserInfo:]_block_invoke_2";
      v8 = 2114;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s recordRoute is nil, playback route: %{public}@", &v6, 0x16u);
    }

    goto LABEL_6;
  }

  if (([*(a1[6] + 320) isMagusSupportedWithAudioRecordContext:*(a1[6] + 112) recordRoute:v2 playbackRoute:a1[5] audioSessionId:0 recordDeviceInfo:a1[7]] & 1) == 0)
  {
LABEL_6:
    v5 = [[CSAttendingStopHintInfo alloc] initWithOrigin:1 reason:6];
    [*(a1[6] + 24) postAttendingStopHintWithInfo:v5];
  }
}

void sub_10003F070(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[CSIntuitiveConvRequestHandler siriPromptWillStart]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v3, 0xCu);
  }

  *(*(a1 + 32) + 11) = 1;
}

void sub_10003F19C(uint64_t a1)
{
  *(*(a1 + 32) + 11) = 0;
  v2 = [[CSAttendingStopHintInfo alloc] initWithOrigin:1 reason:5];
  [*(*(a1 + 32) + 24) postAttendingStopHintWithInfo:v2];
}

id sub_10003F52C(uint64_t a1)
{
  v2 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSIntuitiveConvRequestHandler attSiriNode:didDetectHardEndpointAtTime:withMetrics:usesAutomaticEndpointing:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  return [*(*(a1 + 32) + 56) stop];
}

id *sub_10003F700(id *result)
{
  if ((result[5] & 1) == 0)
  {
    return [result[4] _handleStopProcessingForRequestId:*(result[4] + 38)];
  }

  return result;
}

void sub_10003FE38(uint64_t a1, char a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 96);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003FED8;
  block[3] = &unk_1002520F0;
  v8 = a2;
  block[4] = v4;
  v7 = v3;
  v9 = *(a1 + 48);
  dispatch_async(v5, block);
}

id sub_10003FED8(uint64_t a1)
{
  v2 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v8 = 136315394;
    v9 = "[CSIntuitiveConvRequestHandler _handleClientDidStopWithOption:]_block_invoke_2";
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s isBargeInAllowed :%u", &v8, 0x12u);
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 49);
  if (*(a1 + 48) == 1)
  {
    return [v4 _generateStartAttendingHint:v5 attendingDecision:v6];
  }

  else
  {
    return [v4 _cacheStartAttendingInfo:v5 attendingDecision:v6];
  }
}

void sub_1000401DC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *(v10 + 96);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000402C4;
  v15[3] = &unk_100252F38;
  v15[4] = v10;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v11, v15);
}

void sub_1000402C4(void *a1)
{
  if ([*(a1[4] + 320) isMagusSupportedWithAudioRecordContext:*(a1[4] + 112) recordRoute:a1[5] playbackRoute:a1[6] audioSessionId:0 recordDeviceInfo:a1[7]])
  {
    if (([*(a1[4] + 112) isVoiceTriggered] & 1) != 0 || (objc_msgSend(*(a1[4] + 112), "isiOSButtonPress") & 1) != 0 || objc_msgSend(*(a1[4] + 112), "isTriggerlessAnnounce"))
    {
      [*(a1[4] + 88) setUpSpeakerProfileForFlexibleFollowup];
    }

    v2 = [[CSAttendingWillStartHintInfo alloc] initWithOrigin:1 rootRequestId:*(a1[4] + 304)];
    [*(a1[4] + 24) postAttendingWillStartHintWithInfo:v2];
  }
}

id sub_100040758(void *a1)
{
  result = [*(a1[4] + 312) isEqualToString:a1[5]];
  if ((result & 1) == 0)
  {
    v3 = a1[4];
    v4 = a1[6];

    return [v3 _handleClientDidStopWithOption:v4];
  }

  return result;
}

id sub_100040880(void *a1)
{
  result = [*(a1[4] + 312) isEqualToString:a1[5]];
  if ((result & 1) == 0)
  {
    v3 = a1[4];
    v5 = a1[6];
    v4 = a1[7];

    return [v3 _handleClientWillStopStreamWithReason:v4 stopStreamOption:v5];
  }

  return result;
}

id sub_1000409B0(uint64_t a1)
{
  result = [*(*(a1 + 32) + 312) isEqualToString:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    return [v3 _handleClientDidStartStreamWithOption:v4 successfully:v5];
  }

  return result;
}

void sub_100040AF8(id *a1)
{
  v2 = [a1[4] siriSessionUUID];
  v3 = v2;
  if (*(a1[5] + 38))
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || ![v2 isEqualToString:?])
  {
    if ([a1[7] isServerInvoked])
    {
      *(a1[5] + 11) = 0;
    }

    [a1[5] _handleClientWillStartStreamWithContext:a1[7] option:a1[4]];
    [a1[5] _startMonitoringAudioSession];
  }

  else
  {
    v5 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[6];
      v7 = 136315394;
      v8 = "[CSIntuitiveConvRequestHandler siriClientBehaviorMonitor:willStartStreamWithContext:option:withEventUUID:]_block_invoke";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Ignore handling for event (%@) as it is already in process / processed", &v7, 0x16u);
    }

    objc_storeStrong(a1[5] + 39, a1[6]);
  }
}

id sub_100040EB4(uint64_t a1)
{
  v2 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[CSIntuitiveConvRequestHandler intuitiveConvAudioCaptureMonitor:didStartAudioCaptureSuccessfully:option:eventUUID:]_block_invoke";
    v8 = 1024;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s flag:%u option:%@", &v6, 0x1Cu);
  }

  return [*(a1 + 40) _handleClientDidStartStreamWithOption:*(a1 + 32) successfully:*(a1 + 48)];
}

void sub_1000410F8(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  v2 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 16);
    v4 = 136315394;
    v5 = "[CSIntuitiveConvRequestHandler setRequestHandlerDelegate:]_block_invoke";
    v6 = 2112;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s requestHandlerDelegate = %@", &v4, 0x16u);
  }
}

id sub_10004168C(uint64_t a1)
{
  [*(a1 + 32) _configureAllNodes];
  [*(*(a1 + 32) + 64) preheatWithLanguage:0 source:0 shouldDownloadMissingAsset:1];
  v2 = *(a1 + 32);

  return [v2 _fetchRequiredAssetsForRecordContext:0];
}

uint64_t sub_1000440E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000440FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && (v3 = *(*(a1 + 40) + 48)) != 0)
  {
    v4 = xpc_connection_send_message_with_reply_sync(v3, v2);
    v11 = v4;
    if (v4)
    {
      *(*(*(a1 + 48) + 8) + 24) = xpc_dictionary_get_BOOL(v4, "result");
      [*(a1 + 40) _decodeError:v11];
    }

    else
    {
      [NSError errorWithDomain:CSErrorDomain code:1251 userInfo:0];
    }
    v5 = ;
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v5;

    v8 = v11;
  }

  else
  {
    v6 = [NSError errorWithDomain:CSErrorDomain code:1252 userInfo:0];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

void sub_1000443DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v8 = v3;
    v4 = xpc_dictionary_get_BOOL(v3, "result");
    v5 = [*(a1 + 32) _decodeError:v8];
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, v4, v5);
    }
  }

  else
  {
    v7 = *(a1 + 40);
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = 0;
    v5 = [NSError errorWithDomain:CSErrorDomain code:1251 userInfo:0];
    (*(v7 + 16))(v7, 0, v5);
  }

  v3 = v8;
LABEL_7:
}

void sub_100044964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100044994(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (v2)
  {
    v3 = xpc_connection_send_message_with_reply_sync(v2, *(a1 + 40));
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v6 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 56);
        v12 = 136315394;
        v13 = "[CSXPCClient sampleCountFromHostTime:]_block_invoke";
        v14 = 2050;
        v15 = v7;
        v8 = "%s No reply for sampleCountFromHostTime request with hostTime %{public}llu";
        v9 = v6;
        v10 = 22;
LABEL_8:
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, &v12, v10);
      }
    }
  }

  else
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[CSXPCClient sampleCountFromHostTime:]_block_invoke";
      v8 = "%s xpcConnection not existing";
      v9 = v11;
      v10 = 12;
      goto LABEL_8;
    }
  }
}

void sub_100044D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100044D9C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (v2)
  {
    v3 = xpc_connection_send_message_with_reply_sync(v2, *(a1 + 40));
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v6 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 56);
        v12 = 136315394;
        v13 = "[CSXPCClient hostTimeFromSampleCount:]_block_invoke";
        v14 = 2050;
        v15 = v7;
        v8 = "%s No reply for hostTimeFromSampleCount request with sampleCount %{public}llu";
        v9 = v6;
        v10 = 22;
LABEL_8:
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, &v12, v10);
      }
    }
  }

  else
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[CSXPCClient hostTimeFromSampleCount:]_block_invoke";
      v8 = "%s xpcConnection not existing";
      v9 = v11;
      v10 = 12;
      goto LABEL_8;
    }
  }
}

void sub_1000451D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000451F0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (v2)
  {
    v3 = xpc_connection_send_message_with_reply_sync(v2, *(a1 + 40));
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

void sub_100045CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100045CE4(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v3 = *(a1[5] + 48);
    if (v3)
    {
      v4 = xpc_connection_send_message_with_reply_sync(v3, v1);
      v5 = *(a1[6] + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;
    }
  }
}

void sub_100045F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100045F40(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v3 = *(a1[5] + 48);
    if (v3)
    {
      v4 = xpc_connection_send_message_with_reply_sync(v3, v1);
      v5 = *(a1[6] + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;
    }
  }
}

void sub_1000461E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100046204(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v3 = *(a1[5] + 48);
    if (v3)
    {
      v4 = xpc_connection_send_message_with_reply_sync(v3, v1);
      v5 = *(a1[6] + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;
    }
  }
}

void sub_100046440(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v3 = *(a1[5] + 48);
    if (v3)
    {
      v4 = xpc_connection_send_message_with_reply_sync(v3, v1);
      if (v4)
      {
        xdict = v4;
        v5 = xpc_dictionary_get_value(v4, "audioDeviceInfo");

        v4 = xdict;
        if (v5)
        {
          v6 = xpc_dictionary_get_value(xdict, "audioDeviceInfo");
          if (v6)
          {
            v7 = [[CSFAudioDeviceInfo alloc] initWithXPCObject:v6];
            v8 = *(a1[6] + 8);
            v9 = *(v8 + 40);
            *(v8 + 40) = v7;
          }

          v4 = xdict;
        }
      }
    }
  }
}

void sub_100046740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100046764(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v3 = *(a1[5] + 48);
    if (v3)
    {
      v4 = xpc_connection_send_message_with_reply_sync(v3, v1);
      v5 = *(a1[6] + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;
    }
  }
}

void sub_1000469EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100046A10(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v3 = *(a1[5] + 48);
    if (v3)
    {
      v4 = xpc_connection_send_message_with_reply_sync(v3, v1);
      v5 = *(a1[6] + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;
    }
  }
}

uint64_t sub_1000470B0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000470C8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (v2)
  {
    v3 = xpc_connection_send_message_with_reply_sync(v2, *(a1 + 40));
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

uint64_t sub_100047440(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100047458(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (v2)
  {
    v3 = *(a1 + 40);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000475B8;
    v5[3] = &unk_10024F1F8;
    v7 = *(a1 + 56);
    v6 = *(a1 + 48);
    xpc_connection_send_message_with_reply(v2, v3, 0, v5);
  }

  else
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v9 = "[CSXPCClient acousticSLResultForContext:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s xpcConnection not exist", buf, 0xCu);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_1000475B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (xpc_dictionary_get_BOOL(v3, "result"))
    {
      v5 = xpc_dictionary_get_dictionary(v4, "acousticSLResult");
      if (v5)
      {
        v6 = [NSDictionary alloc];
        v7 = [v6 _cs_initWithXPCObject:v5];

        v8 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315394;
          v12 = "[CSXPCClient acousticSLResultForContext:completion:]_block_invoke";
          v13 = 2114;
          v14 = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Received AcousticSLResult %{public}@", &v11, 0x16u);
        }
      }

      else
      {
        if ([*(a1 + 32) isVoiceTriggered])
        {
          v10 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
          {
            v11 = 136315138;
            v12 = "[CSXPCClient acousticSLResultForContext:completion:]_block_invoke";
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Failed to parse AcousticSLResult from raw data", &v11, 0xCu);
          }
        }

        v7 = 0;
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v9 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v11 = 136315138;
        v12 = "[CSXPCClient acousticSLResultForContext:completion:]_block_invoke_2";
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Failed to get AcousticSLResult reply", &v11, 0xCu);
      }

      (*(*(a1 + 40) + 16))();
    }
  }
}

uint64_t sub_100047914(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100047A60(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100047DD0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000481F8(void *a1)
{
  v2 = a1[4];
  if (v2 && (v3 = *(a1[5] + 48)) != 0)
  {
    v4 = xpc_connection_send_message_with_reply_sync(v3, v2);
    v5 = *(a1[6] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if (*(*(a1[6] + 8) + 40))
    {
      return;
    }

    v7 = 1251;
  }

  else
  {
    v7 = 1252;
  }

  v8 = [NSError errorWithDomain:CSErrorDomain code:v7 userInfo:0];
  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

uint64_t sub_10004855C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100048574(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  if (v3)
  {
    v4 = *(v2 + 56);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100048720;
    v9[3] = &unk_10024F110;
    v9[4] = v2;
    v5 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    xpc_connection_send_message_with_reply(v3, v5, v4, v9);
  }

  else
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v14 = "[CSXPCClient audioStreamWithRequest:streamName:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s xpcConnection not exist", buf, 0xCu);
    }

    v7 = *(a1 + 64);
    v8 = [NSError errorWithDomain:CSErrorDomain code:1252 userInfo:0];
    (*(v7 + 16))(v7, 0, v8);
  }
}

void sub_100048720(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = v3;
  if (v3)
  {
    v4 = xpc_dictionary_get_BOOL(v3, "result");
    v5 = [*(a1 + 32) _decodeError:v12];
    if (v4)
    {
      v6 = [[CSAudioStream alloc] initWithAudioStreamProvider:*(a1 + 32) streamName:*(a1 + 40) streamRequest:*(a1 + 48)];
      v7 = *(a1 + 32);
      v8 = *(v7 + 72);
      *(v7 + 72) = v6;

      v9 = *(*(a1 + 32) + 72);
    }

    v10 = *(*(a1 + 56) + 16);
  }

  else
  {
    v11 = *(a1 + 56);
    v5 = [NSError errorWithDomain:CSErrorDomain code:1251 userInfo:0];
    v10 = *(v11 + 16);
  }

  v10();
}

void sub_100048C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100048C78(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (v2)
  {
    v3 = xpc_connection_send_message_with_reply_sync(v2, *(a1 + 40));
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      return;
    }

    v6 = 1251;
  }

  else
  {
    v6 = 1252;
  }

  v7 = [NSError errorWithDomain:CSErrorDomain code:v6 userInfo:0];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_100049050(void *a1)
{
  v2 = a1[4];
  if (v2 && (v3 = *(a1[5] + 48)) != 0)
  {
    v4 = xpc_connection_send_message_with_reply_sync(v3, v2);
    v5 = *(a1[6] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if (*(*(a1[6] + 8) + 40))
    {
      return;
    }

    v7 = 1251;
  }

  else
  {
    v7 = 1252;
  }

  v8 = [NSError errorWithDomain:CSErrorDomain code:v7 userInfo:0];
  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_1000492DC(void *a1)
{
  v2 = a1[4];
  if (v2 && (v3 = *(a1[5] + 48)) != 0)
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315138;
      v19 = "[CSXPCClient audioMetric]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Sending audioMetric request", &v18, 0xCu);
      v2 = a1[4];
      v3 = *(a1[5] + 48);
    }

    v5 = xpc_connection_send_message_with_reply_sync(v3, v2);
    v6 = v5;
    if (v5 && xpc_dictionary_get_BOOL(v5, "result"))
    {
      v7 = xpc_dictionary_get_dictionary(v6, "audioMetric");
      if (v7)
      {
        v8 = [NSDictionary alloc];
        v9 = [v8 _cs_initWithXPCObject:v7];

        v10 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136315394;
          v19 = "[CSXPCClient audioMetric]_block_invoke";
          v20 = 2114;
          v21 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s audioMetric : %{public}@", &v18, 0x16u);
        }
      }

      else
      {
        v15 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          v18 = 136315138;
          v19 = "[CSXPCClient audioMetric]_block_invoke";
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Received invalid audioMetric", &v18, 0xCu);
        }

        v9 = 0;
      }

      v16 = *(a1[6] + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v9;
    }

    else
    {
      v13 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v18 = 136315138;
        v19 = "[CSXPCClient audioMetric]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Failed to get audioMetric reply", &v18, 0xCu);
      }

      v14 = *(a1[6] + 8);
      v7 = *(v14 + 40);
      *(v14 + 40) = 0;
    }
  }

  else
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315138;
      v19 = "[CSXPCClient audioMetric]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Error creating message", &v18, 0xCu);
    }

    v12 = *(a1[6] + 8);
    v6 = *(v12 + 40);
    *(v12 + 40) = 0;
  }
}

double sub_10004979C(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = *(a1[5] + 48);
    if (v3)
    {
      v4 = xpc_connection_send_message_with_reply_sync(v3, v2);
      v5 = v4;
      if (v4 && xpc_dictionary_get_BOOL(v4, "result"))
      {
        v6 = xpc_dictionary_get_double(v5, "power");
        *(*(a1[6] + 8) + 24) = v6;
      }

      else
      {
        v7 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          v11 = 136315138;
          v12 = "[CSXPCClient averagePowerForChannel:]_block_invoke";
          _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Failed to get reply result correctly", &v11, 0xCu);
        }
      }
    }
  }

  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(*(a1[6] + 8) + 24);
    v11 = 136315394;
    v12 = "[CSXPCClient averagePowerForChannel:]_block_invoke";
    v13 = 2050;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Received averagePower = %{public}f", &v11, 0x16u);
  }

  return result;
}

double sub_100049AF0(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = *(a1[5] + 48);
    if (v3)
    {
      v4 = xpc_connection_send_message_with_reply_sync(v3, v2);
      v5 = v4;
      if (v4 && xpc_dictionary_get_BOOL(v4, "result"))
      {
        v6 = xpc_dictionary_get_double(v5, "power");
        *(*(a1[6] + 8) + 24) = v6;
      }

      else
      {
        v7 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          v11 = 136315138;
          v12 = "[CSXPCClient peakPowerForChannel:]_block_invoke";
          _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Failed to get reply result correctly", &v11, 0xCu);
        }
      }
    }
  }

  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(*(a1[6] + 8) + 24);
    v11 = 136315394;
    v12 = "[CSXPCClient peakPowerForChannel:]_block_invoke";
    v13 = 2050;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Received peakPower = %{public}f", &v11, 0x16u);
  }

  return result;
}

void sub_10004A194(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = *(a1[5] + 48);
    if (v3)
    {
      v4 = xpc_connection_send_message_with_reply_sync(v3, v2);
      v5 = v4;
      if (v4 && xpc_dictionary_get_BOOL(v4, "result"))
      {
        *(*(a1[6] + 8) + 24) = xpc_dictionary_get_uint64(v5, "alertStartTime");
      }

      else
      {
        v6 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          v9 = 136315138;
          v10 = "[CSXPCClient alertStartTime]_block_invoke";
          _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Failed to get reply result correctly", &v9, 0xCu);
        }
      }
    }
  }

  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(a1[6] + 8) + 24);
    v9 = 136315394;
    v10 = "[CSXPCClient alertStartTime]_block_invoke";
    v11 = 2050;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Received alertStartTime = %{public}llu", &v9, 0x16u);
  }
}

void sub_10004A760(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_10004AE44(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10004B098(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10004B280(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_10004B63C(uint64_t a1)
{
  if (!*(*(a1 + 32) + 48))
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[CSXPCClient connect]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Initializing new xpcConnection", buf, 0xCu);
    }

    mach_service = xpc_connection_create_mach_service("com.apple.corespeech.corespeechd.xpc", 0, 0);
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = mach_service;

    objc_initWeak(buf, *(a1 + 32));
    v6 = *(*(a1 + 32) + 48);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10004B7E0;
    handler[3] = &unk_100252EC8;
    objc_copyWeak(&v8, buf);
    xpc_connection_set_event_handler(v6, handler);
    xpc_connection_activate(*(*(a1 + 32) + 48));
    [*(a1 + 32) _sendXPCClientType];
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

void sub_10004B7B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004B7E0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleListenerEvent:v3];
}

void sub_10004C214(id a1, BOOL a2, NSError *a3)
{
  v4 = a2;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(NSError *)a3 localizedDescription];
    v8 = 136315650;
    v9 = "[CSOpportuneSpeakListnerTestService receiveOpportuneSpeakListenerStop]_block_invoke";
    v10 = 1026;
    v11 = v4;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s stopListenWithCompletion : %{public}d, %{public}@", &v8, 0x1Cu);
  }
}

void sub_10004C394(id a1, BOOL a2, NSError *a3)
{
  v4 = a2;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(NSError *)a3 localizedDescription];
    v8 = 136315650;
    v9 = "[CSOpportuneSpeakListnerTestService receiveOpportuneSpeakListenerStart]_block_invoke";
    v10 = 1026;
    v11 = v4;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s startListenWithOption : %{public}d, %{public}@", &v8, 0x1Cu);
  }
}

void sub_10004C964(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315138;
      v4 = "[CSAttSiriAudioCoordinator attSiriNode:didDetectHardEndpointAtTime:withMetrics:usesAutomaticEndpointing:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Detected endpoint, we will skip delivering audio to all nodes", &v3, 0xCu);
    }

    *(*(a1 + 32) + 8) = 1;
  }
}

void sub_10004CAEC(void *a1)
{
  v1 = a1[4];
  if ((*(v1 + 8) & 1) == 0)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = *(v1 + 24);
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v7) attSiriAudioSrcNodeLPCMRecordBufferAvailable:a1[5] audioChunk:{a1[6], v8}];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    v1 = a1[4];
  }

  if ((*(v1 + 9) & 1) == 0)
  {
    *(v1 + 9) = 1;
  }
}

void sub_10004CC98(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[CSAttSiriAudioCoordinator attSiriAudioSrcNodeDidStop:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  *(*(a1 + 32) + 8) = 0;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = *(*(a1 + 32) + 24);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) attSiriAudioSrcNodeDidStop:{*(a1 + 40), v8}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void sub_10004CEBC(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[CSAttSiriAudioCoordinator attSiriAudioSrcNodeDidStartRecording:successfully:error:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = *(*(a1 + 32) + 24);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) attSiriAudioSrcNodeDidStartRecording:*(a1 + 40) successfully:*(a1 + 56) error:{*(a1 + 48), v8}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  *(*(a1 + 32) + 9) = 1;
}

void sub_10004D090(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[CSAttSiriAudioCoordinator reset]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v3, 0xCu);
  }

  *(*(a1 + 32) + 8) = 0;
  *(*(a1 + 32) + 9) = 0;
}

void sub_10004D288(uint64_t a1)
{
  if (([*(*(a1 + 32) + 24) containsObject:*(a1 + 40)] & 1) == 0)
  {
    if ([*(a1 + 40) conformsToProtocol:&OBJC_PROTOCOL___CSAttSiriAudioDataReceiver])
    {
      v2 = *(a1 + 40);
      v3 = *(*(a1 + 32) + 24);

      [v3 addObject:v2];
    }

    else
    {
      v4 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 40);
        v6 = 136315394;
        v7 = "[CSAttSiriAudioCoordinator addReceiver:]_block_invoke";
        v8 = 2112;
        v9 = v5;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Unsupported receiver: %@", &v6, 0x16u);
      }
    }
  }
}

void sub_10004DBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_10004DC10(uint64_t a1)
{
  v2 = sub_10004DC60();
  result = dlsym(v2, "MTTimerManagerTimersKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10029E090 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10004DC60()
{
  v3[0] = 0;
  if (!qword_10029E070)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_10004DD70;
    v3[4] = &unk_1002535B8;
    v3[5] = v3;
    v4 = off_10024F298;
    v5 = 0;
    qword_10029E070 = _sl_dlopen();
    v1 = v3[0];
    v0 = qword_10029E070;
    if (qword_10029E070)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    return v0;
  }

  return qword_10029E070;
}

uint64_t sub_10004DD70(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10029E070 = result;
  return result;
}

id sub_10004DF6C()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = qword_10029E078;
  v8 = qword_10029E078;
  if (!qword_10029E078)
  {
    v1 = sub_10004DC60();
    v6[3] = dlsym(v1, "MTTimerManagerTimerFired");
    qword_10029E078 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id sub_10004E080()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = qword_10029E080;
  v8 = qword_10029E080;
  if (!qword_10029E080)
  {
    v1 = sub_10004DC60();
    v6[3] = dlsym(v1, "MTTimerManagerFiringTimerDismissed");
    qword_10029E080 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id sub_10004E194()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = qword_10029E088;
  v8 = qword_10029E088;
  if (!qword_10029E088)
  {
    v1 = sub_10004DC60();
    v6[3] = dlsym(v1, "MTTimerManagerStateReset");
    qword_10029E088 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void *sub_10004E2A8(uint64_t a1)
{
  v2 = sub_10004DC60();
  result = dlsym(v2, "MTTimerManagerStateReset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10029E088 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10004E2F8(uint64_t a1)
{
  v2 = sub_10004DC60();
  result = dlsym(v2, "MTTimerManagerFiringTimerDismissed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10029E080 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10004E348(uint64_t a1)
{
  v2 = sub_10004DC60();
  result = dlsym(v2, "MTTimerManagerTimerFired");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10029E078 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10004E60C(uint64_t a1)
{
  sub_10004DC60();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MTTimerManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10029E068 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np();
    [(CSTimerMonitor *)v2 initializeTimerState];
  }
}

void sub_10004E730(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v24 = "[CSTimerMonitor initializeTimerState]_block_invoke";
    v25 = 2112;
    v26 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Fetched timer result = %@", buf, 0x16u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 firedDate];
        if (v10)
        {
          v11 = v10;
          v12 = [v9 dismissedDate];
          if (!v12)
          {

LABEL_17:
            LOBYTE(v6) = 1;
            goto LABEL_18;
          }

          v13 = v12;
          v14 = [v11 compare:v12];

          if (v14 == 1)
          {
            goto LABEL_17;
          }
        }

        else
        {
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  v15 = *(a1 + 32);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10004EA20;
  v16[3] = &unk_1002537E8;
  v16[4] = v15;
  v17 = v6;
  [v15 enumerateObserversInQueue:v16];
}

void sub_10004E95C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[CSTimerMonitor initializeTimerState]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Fetching timer error = %@", &v4, 0x16u);
  }
}

id sub_10004EA20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  return [*(a1 + 32) _notifyObserver:a2 timerIsFiringState:v3];
}

void sub_10004EB10(id a1)
{
  v1 = objc_alloc_init(CSTimerMonitor);
  v2 = qword_10029E058;
  qword_10029E058 = v1;
}

void *sub_10004ECD4(void *result)
{
  v3 = result[4];
  if (*(v3 + 8) == 1)
  {
    v5[5] = v1;
    v5[6] = v2;
    *(v3 + 8) = 0;
    v4 = result[4];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10004ED64;
    v5[3] = &unk_100253B48;
    v5[4] = v4;
    return [v4 enumerateObserversInQueue:v5];
  }

  return result;
}

void sub_10004ED64(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) notifyObserver:v3];
  if (objc_opt_respondsToSelector())
  {
    [v3 opportuneSpeakEventMonitor:*(a1 + 32) didStreamStateChanged:1];
  }
}

id sub_10004EEC0(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    *(*(a1 + 32) + 8) = 1;
    v2 = [*(a1 + 40) copy];
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    *(v3 + 24) = v2;

    objc_storeStrong((*(a1 + 32) + 32), *(a1 + 48));
    v5 = +[NSUUID UUID];
    v6 = *(a1 + 32);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  v8 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004EFBC;
  v10[3] = &unk_100253B48;
  v10[4] = v8;
  return [v8 enumerateObserversInQueue:v10];
}

void sub_10004EFBC(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) notifyObserver:v3];
  if (objc_opt_respondsToSelector())
  {
    [v3 opportuneSpeakEventMonitor:*(a1 + 32) didStreamStateChanged:1];
  }
}

uint64_t sub_10004F12C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004F144(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10004F290(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10004F68C(id a1)
{
  v1 = objc_alloc_init(CSOpportuneSpeakEventMonitor);
  v2 = qword_10029E098;
  qword_10029E098 = v1;
}

void sub_10004F8B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 80);
    v7 = 0;
    [v3 compileAndUpdateDeviceCachesWithAsset:v2 assetType:6 endpointId:0 errOut:&v7];
    v4 = v7;
    v5 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v9 = "[CSAttSiriMitigationAssetHandler CSVoiceTriggerEnabledMonitor:didReceiveEnabled:]_block_invoke";
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger is enabled, recompile the mitigation asset with error: %@", buf, 0x16u);
    }
  }

  else
  {
    v6 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[CSAttSiriMitigationAssetHandler CSVoiceTriggerEnabledMonitor:didReceiveEnabled:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s mitigation cached assets are not set, skip recompilation", buf, 0xCu);
    }
  }
}

uint64_t sub_10004FDBC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10004FE80(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[CSAttSiriMitigationAssetHandler CSLanguageCodeUpdateMonitor:didReceiveLanguageCodeChanged:]_block_invoke";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Received asset with err: %@", &v8, 0x16u);
  }

  [*(a1 + 32) _receivedNewAssetUpdate:v5];
}

void sub_100050098(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[4];
  v4 = [v2 _siriLanguageCode];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100050140;
  v5[3] = &unk_100252F10;
  v5[4] = *(a1 + 32);
  [v3 getInstalledAssetofType:6 forLocale:v4 completion:v5];
}

void sub_100050140(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[CSAttSiriMitigationAssetHandler assetDownloadMonitorDelegate:assetType:]_block_invoke_2";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Received asset with err: %@", &v8, 0x16u);
  }

  [*(a1 + 32) _receivedNewAssetUpdate:v5];
}

uint64_t sub_10005037C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100050538(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100050550(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = v5;
  if (!v5 || a3)
  {
    v6 = [NSError alloc];
    v7 = [v6 initWithDomain:CSErrorDomain code:1601 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(a1 + 32) setCachedAssetWithOverride:v5];
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000509AC(void *a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1[4] + 72);
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

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 mitigationAssetHandler:a1[4] endpointId:a1[5] didChangeCachedAsset:{a1[6], v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_10005106C(id a1)
{
  v1 = [[CSAttSiriMitigationAssetHandler alloc] initWithDisableOnDeviceCompilation];
  v2 = qword_10029E0B8;
  qword_10029E0B8 = v1;
}

void sub_1000510AC(id a1)
{
  v1 = objc_alloc_init(CSAttSiriMitigationAssetHandler);
  v2 = qword_10029E0A8;
  qword_10029E0A8 = v1;
}

void sub_100051604(uint64_t a1)
{
  v2 = [*(a1 + 32) observerAndOptions];
  v6 = [v2 keyEnumerator];

  v3 = [v6 nextObject];
  if (v3)
  {
    v4 = v3;
    do
    {
      if (objc_opt_respondsToSelector())
      {
        [v4 attSiriSignalProvider:*(a1 + 32) silenceFramesCountMs:*(a1 + 80) silenceProbability:*(a1 + 72) silenceDurationMs:*(a1 + 40) processedAudioMs:*(a1 + 48) deviceHasBoronEnabled:*(a1 + 56) latestBoronActiveSampleCount:*(a1 + 64)];
      }

      v5 = [v6 nextObject];

      v4 = v5;
    }

    while (v5);
  }
}

void sub_1000516DC(id a1)
{
  v1 = CSLogCategoryAttending;
  if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[CSAttSiriSignalProvider audioStreamProvider:audioChunkForTVAvailable:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s ", &v2, 0xCu);
  }
}

void sub_10005181C(uint64_t a1)
{
  v2 = qword_10029E0D0;
  if (!(v2 % +[CSUtils loggingHeartbeatRate]))
  {
    v3 = CSLogCategoryAttending;
    if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      v11 = 136315650;
      v12 = "[CSAttSiriSignalProvider audioStreamProvider:audioBufferAvailable:]_block_invoke";
      v13 = 2050;
      v14 = [v4 startSampleCount];
      v15 = 2050;
      v16 = qword_10029E0D0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Received audio buffer with startSampleCount %{public}llu, heartbeat = %{public}llu", &v11, 0x20u);
    }
  }

  ++qword_10029E0D0;
  [*(*(a1 + 40) + 24) addAudio:*(a1 + 32)];
  v6 = [*(a1 + 40) observerAndOptions];
  v7 = [v6 keyEnumerator];

  v8 = [v7 nextObject];
  if (v8)
  {
    v9 = v8;
    do
    {
      if (objc_opt_respondsToSelector())
      {
        [v9 attSiriSignalProvider:*(a1 + 40) audioBufferAvailable:*(a1 + 32)];
      }

      v10 = [v7 nextObject];

      v9 = v10;
    }

    while (v10);
  }
}

id sub_100051AEC(uint64_t a1)
{
  v2 = CSLogCategoryAttending;
  if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSAttSiriSignalProvider audioStreamProvider:didStopStreamUnexpectedly:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  [*(a1 + 32) _deliverSignalProviderDidStopUnexpectedly];
  [*(a1 + 32) _stopAllAnalyzers];
  return [*(a1 + 32) _resetAudioStreamObserverContext];
}

void sub_100051CF0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  v3 = *(a1 + 48);
  if (*(a1 + 72) == 1)
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100051E28;
    v9[3] = &unk_10024F368;
    v9[4] = v1;
    v6 = &v10;
    v10 = *(a1 + 40);
    [v2 getStartSpeechInfoForProcessedAudio:v5 prependedAudio:v9 speechDetectionSamples:v3 completion:v4];
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100051EC0;
    v7[3] = &unk_10024F390;
    v7[4] = v1;
    v6 = &v8;
    v8 = *(a1 + 40);
    [v2 getSampleCountByProcessedAudioInMs:v7 completion:v3];
  }
}

void sub_100051E28(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 16);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005200C;
  v6[3] = &unk_10024F340;
  v9 = a3;
  v6[4] = v4;
  v8 = a2;
  v7 = v3;
  dispatch_async(v5, v6);
}

void sub_100051EC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051F54;
  block[3] = &unk_100251038;
  block[4] = v3;
  v7 = a2;
  v6 = v2;
  dispatch_async(v4, block);
}

void sub_100051F54(void *a1)
{
  v2 = [*(a1[4] + 32) streamProvider];
  v3 = [v2 audioStreamId];

  v4 = +[CSAudioTimeConverterPool sharedInstance];
  v7 = [v4 converterForAudioStreamId:v3];

  v5 = [v7 hostTimeFromSampleCount:a1[6]];
  v6 = a1[5];
  if (v6)
  {
    (*(v6 + 16))(v6, v5, a1[6], 0);
  }
}

void sub_10005200C(uint64_t a1)
{
  v2 = CSLogCategoryAttending;
  if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    v10 = 136315394;
    v11 = "[CSAttSiriSignalProvider fetchStartSpeechWithOwnVoiceVadByProcessedAudioInMs:fetchOwnVoiceVADSignal:prependAudioDuration:speechDetectSampleCountThreshold:completion:]_block_invoke_3";
    v12 = 1024;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ownVVADHasSpeech:%u", &v10, 0x12u);
  }

  v4 = [*(*(a1 + 32) + 32) streamProvider];
  v5 = [v4 audioStreamId];

  v6 = +[CSAudioTimeConverterPool sharedInstance];
  v7 = [v6 converterForAudioStreamId:v5];

  v8 = [v7 hostTimeFromSampleCount:*(a1 + 48)];
  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v8, *(a1 + 48), *(a1 + 56));
  }
}

void sub_1000521F0(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v17 = CSLogCategoryAttending;
    if (!os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v26 = 136315138;
    v27 = "[CSAttSiriSignalProvider stopWithObserver:holdAudioStream:]_block_invoke";
    v18 = "%s Observer is nil";
    v19 = v17;
    v20 = 12;
    goto LABEL_22;
  }

  if ([*(a1 + 40) _observersCount])
  {
    v2 = [*(a1 + 40) observerAndOptions];
    v3 = [v2 objectForKey:*(a1 + 32)];

    if (v3)
    {
      v4 = [*(a1 + 40) observerAndOptions];
      v5 = [v4 objectForKey:*(a1 + 32)];

      v6 = [*(a1 + 40) observerAndOptions];
      [v6 removeObjectForKey:*(a1 + 32)];

      if (v5)
      {
        v7 = [*(a1 + 40) _observersCount];
        v8 = CSLogCategoryAttending;
        if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(a1 + 32);
          v10 = *(a1 + 48);
          v26 = 136315906;
          v27 = "[CSAttSiriSignalProvider stopWithObserver:holdAudioStream:]_block_invoke";
          v28 = 2112;
          v29 = v9;
          v30 = 2048;
          v31 = v7;
          v32 = 1024;
          v33 = v10;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Stop providing signal to %@, total observers: %ld, holdAudioStream: %d", &v26, 0x26u);
        }

        v11 = [v5 attendingOptions];
        v12 = [v11 useVAD];

        if (v12)
        {
          [*(*(a1 + 40) + 24) stop];
        }

        if (v7)
        {
          goto LABEL_24;
        }

        *(*(a1 + 40) + 8) = 0;
        v13 = CSLogCategoryAttending;
        if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
        {
          v26 = 136315138;
          v27 = "[CSAttSiriSignalProvider stopWithObserver:holdAudioStream:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s Stop streaming", &v26, 0xCu);
        }

        if (*(a1 + 48) == 1)
        {
          v14 = *(a1 + 40);
          v15 = [v5 attendingOptions];
          [v15 audioStreamHoldingDurationInSec];
          [v14 _holdAudioStreamWithTimeout:?];
        }

        v16 = *(*(a1 + 40) + 32);
        if (v16)
        {
          [v16 stopAudioStreamWithOption:0 completion:0];
LABEL_24:

          return;
        }

        v24 = CSLogCategoryAttending;
        if (!os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

        v26 = 136315138;
        v27 = "[CSAttSiriSignalProvider stopWithObserver:holdAudioStream:]_block_invoke";
        v25 = "%s Audio stream not existing!";
      }

      else
      {
        v24 = CSLogCategoryAttending;
        if (!os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

        v26 = 136315138;
        v27 = "[CSAttSiriSignalProvider stopWithObserver:holdAudioStream:]_block_invoke";
        v25 = "%s options is nil";
      }

      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v25, &v26, 0xCu);
      goto LABEL_24;
    }

    v22 = CSLogCategoryAttending;
    if (!os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v23 = *(a1 + 32);
    v26 = 136315394;
    v27 = "[CSAttSiriSignalProvider stopWithObserver:holdAudioStream:]_block_invoke";
    v28 = 2112;
    v29 = v23;
    v18 = "%s Unknown observer: %@";
    v19 = v22;
    v20 = 22;
LABEL_22:
    _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v18, &v26, v20);
    return;
  }

  v21 = CSLogCategoryAttending;
  if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_INFO))
  {
    v26 = 136315138;
    v27 = "[CSAttSiriSignalProvider stopWithObserver:holdAudioStream:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s No observers in the table!", &v26, 0xCu);
  }
}

void sub_100052904(uint64_t a1)
{
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100052CC0;
  v28[3] = &unk_100253498;
  v29 = *(a1 + 56);
  v2 = objc_retainBlock(v28);
  v3 = v2;
  if (*(a1 + 32))
  {
    if (*(a1 + 40))
    {
      v4 = [*(a1 + 48) observerAndOptions];
      v5 = [v4 objectForKey:*(a1 + 40)];

      if (v5)
      {
        v3[2](v3, 2103);
      }

      else
      {
        v6 = [*(a1 + 48) observerAndOptions];
        [v6 setObject:*(a1 + 32) forKey:*(a1 + 40)];

        v7 = CSLogCategoryAttending;
        if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(a1 + 32);
          v8 = *(a1 + 40);
          v10 = *(a1 + 48);
          v11 = v7;
          v12 = [v10 _observersCount];
          *buf = 136315906;
          v31 = "[CSAttSiriSignalProvider startWithSignalOptions:observer:completion:]_block_invoke";
          v32 = 2112;
          v33 = v8;
          v34 = 2112;
          v35 = v9;
          v36 = 2048;
          v37 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Start providing signal to %@ with option %@, total observers: %ld", buf, 0x2Au);
        }

        v13 = [*(a1 + 32) attendingOptions];
        v14 = [v13 useVAD];

        if (v14)
        {
          v15 = *(*(a1 + 48) + 24);
          v16 = [*(a1 + 32) attendingOptions];
          v17 = [v16 useBoron];
          v18 = [*(a1 + 32) attendingOptions];
          v19 = [v18 useOwnVoiceVAD];
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_100052DD4;
          v27[3] = &unk_100253300;
          v27[4] = *(a1 + 48);
          [v15 start:v17 useOwnVoiceVAD:v19 completion:v27];
        }

        v20 = *(a1 + 48);
        if (*(v20 + 8))
        {
          v21 = *(a1 + 56);
          if (v21)
          {
            (*(v21 + 16))(v21, 1, 0);
          }
        }

        else
        {
          v22 = CSLogCategoryAttending;
          if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v31 = "[CSAttSiriSignalProvider startWithSignalOptions:observer:completion:]_block_invoke_3";
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s Start streaming", buf, 0xCu);
            v20 = *(a1 + 48);
          }

          *(v20 + 8) = 1;
          v23 = *(a1 + 48);
          v24 = *(a1 + 32);
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_100052E4C;
          v25[3] = &unk_100253270;
          v25[4] = v23;
          v26 = *(a1 + 56);
          [v23 _startAudioStreamingWithSignalOptions:v24 completion:v25];
        }
      }
    }

    else
    {
      (v2[2])(v2, 2102);
    }
  }

  else
  {
    (v2[2])(v2, 2105);
  }
}

void sub_100052CC0(uint64_t a1, uint64_t a2)
{
  v4 = CSLogCategoryAttending;
  if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[CSAttSiriSignalProvider startWithSignalOptions:observer:completion:]_block_invoke_2";
    v9 = 2048;
    v10 = a2;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s start failed due to error: %lu", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [NSError errorWithDomain:CSErrorDomain code:a2 userInfo:0];
    (*(v5 + 16))(v5, 0, v6);
  }
}

void sub_100052DD4(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100052FFC;
  v4[3] = &unk_100253BF8;
  v5 = a2;
  v4[4] = v2;
  dispatch_async(v3, v4);
}

void sub_100052E4C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = CSLogCategoryAttending;
    if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_ERROR))
    {
      v10 = v6;
      v11 = [v5 localizedDescription];
      *buf = 136315394;
      v14 = "[CSAttSiriSignalProvider startWithSignalOptions:observer:completion:]_block_invoke";
      v15 = 2114;
      v16 = v11;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Failed to start audio stream in CSAttSiriSignalProvider, error : %{public}@", buf, 0x16u);
    }

    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100052FC0;
    block[3] = &unk_100253C20;
    block[4] = v7;
    dispatch_async(v8, block);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }
}

id sub_100052FC0(uint64_t a1)
{
  [*(a1 + 32) _stopAllAnalyzers];
  v2 = *(a1 + 32);

  return [v2 _resetAudioStreamObserverContext];
}

id *sub_100052FFC(id *result)
{
  if ((result[5] & 1) == 0)
  {
    v2 = result;
    [result[4] _deliverSignalProviderDidStopUnexpectedly];
    v3 = v2[4];

    return [v3 _stopAllAnalyzers];
  }

  return result;
}

void sub_100053598(id a1)
{
  v1 = objc_alloc_init(CSPhraseSpotterEnabledMonitor);
  v2 = qword_10029E0D8;
  qword_10029E0D8 = v1;
}

void sub_100053720(uint64_t a1)
{
  v2 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[CSVoiceTriggerAssetHandler retryMappingAssetToExclaveKit:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v10, 0xCu);
  }

  if ((+[CSUtils isExclaveHardware]& 1) != 0)
  {
    if (![*(a1 + 32) assetType])
    {
      v9 = [*(a1 + 40) uafAssetManager];
      [v9 retryMappingAssetToExclaveKit:*(a1 + 32) completion:*(a1 + 48)];
      goto LABEL_15;
    }

    v3 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[CSVoiceTriggerAssetHandler retryMappingAssetToExclaveKit:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s UAFAssetManager is nil. This is an error", &v10, 0xCu);
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = CSErrorDomain;
      v6 = &off_10025EEB8;
      v7 = 2152;
LABEL_13:
      v9 = [NSError errorWithDomain:v5 code:v7 userInfo:v6];
      (*(v4 + 16))(v4, v9);
LABEL_15:
    }
  }

  else
  {
    v8 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[CSVoiceTriggerAssetHandler retryMappingAssetToExclaveKit:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Mapping is not supported hardware with no exclaves. Aborting retries.", &v10, 0xCu);
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = CSErrorDomain;
      v7 = 2161;
      v6 = 0;
      goto LABEL_13;
    }
  }
}

void sub_1000539F0(uint64_t a1)
{
  v2 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[CSVoiceTriggerAssetHandler mapAssetToExclaveKit:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v10, 0xCu);
  }

  if ((+[CSUtils isExclaveHardware]& 1) != 0)
  {
    if (![*(a1 + 32) assetType])
    {
      v9 = [*(a1 + 40) uafAssetManager];
      [v9 mapAssetToExclaveKit:*(a1 + 32) completion:*(a1 + 48)];
      goto LABEL_15;
    }

    v3 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[CSVoiceTriggerAssetHandler mapAssetToExclaveKit:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s UAFAssetManager is nil. This is an error", &v10, 0xCu);
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = CSErrorDomain;
      v6 = &off_10025EE90;
      v7 = 2152;
LABEL_13:
      v9 = [NSError errorWithDomain:v5 code:v7 userInfo:v6];
      (*(v4 + 16))(v4, v9, 0);
LABEL_15:
    }
  }

  else
  {
    v8 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[CSVoiceTriggerAssetHandler mapAssetToExclaveKit:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Mapping is not supported hardware with no exclaves", &v10, 0xCu);
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = CSErrorDomain;
      v7 = 2161;
      v6 = 0;
      goto LABEL_13;
    }
  }
}

void sub_100053CC4(void *a1)
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1[4] + 24);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        v8 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v14 = "[CSVoiceTriggerAssetHandler notifyObservers:endpointId:]_block_invoke";
          v15 = 2112;
          v16 = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s VoiceTriggerAssetHandlerDelegate: %@", buf, 0x16u);
        }

        if (objc_opt_respondsToSelector())
        {
          [v7 voiceTriggerAssetHandler:a1[4] endpointId:a1[5] didChangeCachedAsset:a1[6]];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v17 count:16];
    }

    while (v4);
  }
}

void sub_100054258(id a1)
{
  v1 = [CSVoiceTriggerAssetHandler assetHandlerFactoryWithDisableOnDeviceCompilation:1];
  v2 = qword_10029E0F8;
  qword_10029E0F8 = v1;
}

void sub_10005429C(id a1)
{
  v1 = [CSVoiceTriggerAssetHandler assetHandlerFactoryWithDisableOnDeviceCompilation:0];
  v2 = qword_10029E0E8;
  qword_10029E0E8 = v1;
}

uint64_t sub_10005561C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100055634(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:kVTEItriggerEndSampleCount];
  v3 = [v2 unsignedIntegerValue];

  if (v3 >= 0x1000)
  {
    v4 = v3 - 4096;
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 32) objectForKeyedSubscript:kVTEItriggerStartSampleCount];
  v6 = [v5 unsignedIntegerValue];

  v7 = [*(a1 + 32) objectForKeyedSubscript:kVTEIextraSamplesAtStart];
  v8 = [v7 unsignedIntegerValue];

  v9 = [*(a1 + 32) objectForKeyedSubscript:kVTEIactiveChannel];
  v10 = [v9 unsignedIntegerValue];

  v11 = [*(a1 + 32) objectForKeyedSubscript:kVTEItriggerEndMachTime];
  v12 = [v11 unsignedLongLongValue];

  v13 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v60 = "[CSMyriadPHash generatePHashFromVoiceTriggerInfo:writeFile:]_block_invoke";
    v61 = 2048;
    v62 = v12;
    v63 = 2048;
    v64 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s trigger end machAbsoluteTime: %llu hex: %llx", buf, 0x20u);
  }

  v58 = v12;
  if (v10 >= +[CSConfig inputRecordingNumberOfChannels])
  {
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v54 = v14;
      v55 = +[CSConfig channelForProcessedInput];
      *buf = 136315650;
      v60 = "[CSMyriadPHash generatePHashFromVoiceTriggerInfo:writeFile:]_block_invoke";
      v61 = 2050;
      v62 = v10;
      v63 = 2050;
      v64 = v55;
      _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%s Invalid active channel in VTEI: %{public}tu, defaulting to master channel: %{public}tu", buf, 0x20u);
    }

    v10 = +[CSConfig channelForProcessedInput];
  }

  v15 = v4;
  v57 = &v8[v6];
  v16 = +[CSFPreferences sharedPreferences];
  v17 = [v16 myriadFileLoggingEnabled];

  if (v17)
  {
    v56 = v3;
    v18 = objc_alloc_init(NSDate);
    v19 = objc_alloc_init(NSDateFormatter);
    v20 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
    [v19 setLocale:v20];

    [v19 setDateFormat:@"yyyy_MM_dd-HHmmss.SSS"];
    v21 = [*(a1 + 40) _audioLogDirectory];
    v22 = [v19 stringFromDate:v18];
    v23 = [NSString stringWithFormat:@"%@/%@%@.wav", v21, @"Myriad-", v22];

    v24 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v60 = "[CSMyriadPHash generatePHashFromVoiceTriggerInfo:writeFile:]_block_invoke";
      v61 = 2114;
      v62 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s Logging audio file into : %{public}@", buf, 0x16u);
    }

    v25 = +[CSSpeechManager sharedManager];
    v26 = kVTEIAudioProviderUUID;
    v27 = [*(a1 + 32) objectForKeyedSubscript:kVTEIAudioProviderUUID];
    v28 = [v25 audioProviderWithUUID:v27];

    v29 = [NSURL URLWithString:v23];
    [v28 saveRecordingBufferToEndFrom:v15 toURL:v29];

    v3 = v56;
  }

  else
  {
    v26 = kVTEIAudioProviderUUID;
  }

  v30 = *(a1 + 56);
  v31 = *(a1 + 40);
  v32 = [*(a1 + 32) objectForKeyedSubscript:kVTEItriggerScore];
  [v32 floatValue];
  v34 = v33;
  v35 = kVTEIfirstPassTriggerSource;
  v36 = [*(a1 + 32) objectForKeyedSubscript:kVTEIfirstPassTriggerSource];
  v37 = [*(a1 + 32) objectForKeyedSubscript:v26];
  LODWORD(v38) = v34;
  v39 = [v31 _generateMyriadInfo:v15 hsStart:v57 + 1600 triggerEnd:v3 writeFile:v30 score:v36 triggerSource:v10 channel:v38 audioProviderUUID:v37 absoluteTime:v58];
  v40 = *(*(a1 + 48) + 8);
  v41 = *(v40 + 40);
  *(v40 + 40) = v39;

  v42 = *(a1 + 32);
  if (v42)
  {
    v43 = [v42 objectForKeyedSubscript:v35];
    if (v43)
    {
      v44 = v43;
      v45 = [*(a1 + 32) objectForKeyedSubscript:v35];
      v46 = [v45 isEqualToString:kVTEIFirstPassTriggeredFromRemora];

      if (v46)
      {
        v47 = [*(a1 + 32) objectForKeyedSubscript:kVTEIFirstPassRemoraTriggerEndTime];
        [v47 doubleValue];
        v49 = v48;

        v50 = [CSMyriadPHash createRemoraHashResultFromPHash:*(*(*(a1 + 48) + 8) + 40) firstPassTriggerEndTime:v49];
        v51 = *(*(a1 + 48) + 8);
        v52 = *(v51 + 40);
        *(v51 + 40) = v50;
      }
    }
  }

  return [CSMyriadPHash setLastHash:*(*(*(a1 + 48) + 8) + 40)];
}

void sub_100056790(uint64_t a1)
{
  v2 = +[CSFPreferences sharedPreferences];
  v6 = [v2 myriadHashFilePath];

  v3 = [NSData dataWithContentsOfFile:v6];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void *sub_100056D90(int a1, void *a2)
{
  v3 = a2;
  v4 = (4 * a1);
  v5 = malloc_type_malloc(v4, 0xB13B108FuLL);
  v6 = v5;
  if (v5)
  {
    bzero(v5, v4);
  }

  else
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = "createFloatArray";
      v11 = 1026;
      v12 = v4;
      v13 = 2114;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s could not allocate %{public}d bytes for %{public}@", &v9, 0x1Cu);
    }
  }

  return v6;
}

void sub_100057E44(void *a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = 136315394;
    v5 = "[CSVoiceTriggerXPCListener CSClientXPCConnectionReceivedClientError:clientError:client:]_block_invoke";
    v6 = 2050;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Client connection disconnected, removing %{public}p from client connection pool", &v4, 0x16u);
  }

  if (a1[5])
  {
    [*(a1[6] + 24) removeObject:?];
  }
}

void sub_100058404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000589CC(uint64_t a1)
{
  obj = [NSMutableArray arrayWithCapacity:2];
  [obj addObject:&__kCFBooleanFalse];
  [obj addObject:&__kCFBooleanFalse];
  v2 = *(a1 + 40);
  if (v2 == 1)
  {
    v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(*(a1 + 32) + 8) isEnabled]);
    [obj setObject:v5 atIndexedSubscript:0];

    v4 = *(a1 + 48);
  }

  else
  {
    if (v2)
    {
      goto LABEL_6;
    }

    v3 = [NSNumber numberWithBool:*(a1 + 48)];
    [obj setObject:v3 atIndexedSubscript:0];

    v4 = [*(*(a1 + 32) + 16) isEnabled];
  }

  v6 = [NSNumber numberWithBool:v4];
  [obj setObject:v6 atIndexedSubscript:1];

LABEL_6:
  if (([*(*(a1 + 32) + 40) isEqualToArray:obj] & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 40), obj);
    [*(a1 + 32) _handleEnabledStatesUpdate:*(*(a1 + 32) + 40)];
  }
}

void sub_100058CEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100058D1C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleEnabledPolicyEventForAudioSourceType:1 enabled:a2];
}

id sub_100058D70(uint64_t a1)
{
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(*(a1 + 32) + 8) isEnabled]);
  [*(*(a1 + 32) + 40) setObject:v2 atIndexedSubscript:0];

  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(*(a1 + 32) + 16) isEnabled]);
  [*(*(a1 + 32) + 40) setObject:v3 atIndexedSubscript:1];

  v4 = *(a1 + 32);
  v5 = v4[5];

  return [v4 _handleEnabledStatesUpdate:v5];
}

void sub_1000595A4(uint64_t a1)
{
  v2 = [CSUtils getSiriLanguageWithEndpointId:*(a1 + 32) fallbackLanguage:@"en-US"];
  if (*(a1 + 32))
  {
    v3 = [[NSUUID alloc] initWithUUIDString:*(a1 + 32)];
  }

  else
  {
    v3 = 0;
  }

  v4 = [CSVoiceTriggerRTModelRequestOptions alloc];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000596CC;
  v9[3] = &unk_100251818;
  v5 = v3;
  v10 = v5;
  v6 = v2;
  v11 = v6;
  v7 = [(CSVoiceTriggerRTModelRequestOptions *)v4 initWithMutableBuilder:v9];
  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v7);
  }
}

void sub_1000596CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[CSVoiceTriggerUserSelectedPhrase alloc] initWithEndpointId:*(a1 + 32)];
  v5 = +[CSUtils supportMph];
  v6 = +[VTPreferences sharedPreferences];
  v7 = [v6 isCompactVoiceTriggerAvailableForLanguageCode:*(a1 + 40)];

  v8 = [(CSVoiceTriggerUserSelectedPhrase *)v4 multiPhraseSelected];
  v9 = v8;
  v10 = v5 & v7 & v8;
  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136316162;
    v14 = "[CSCoreSpeechServicesListener getVoiceTriggerRTModelRequestOptionsWithEndpointId:completion:]_block_invoke_2";
    v15 = 1024;
    v16 = v10;
    v17 = 1024;
    v18 = v5;
    v19 = 1024;
    v20 = v7 & 1;
    v21 = 1024;
    v22 = v9 & 1;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s allowMph:%d (deviceSupportsMph:%d, localeSupportsMph:%d, userPreferMph:%d", &v13, 0x24u);
  }

  [v3 setAllowMph:v10];
  v12 = [NSNumber numberWithUnsignedInteger:[(CSVoiceTriggerUserSelectedPhrase *)v4 userSelectedPhraseType]];
  [v3 setUserSelectedPhraseType:v12];

  [v3 setSiriLocale:*(a1 + 40)];
  if (*(a1 + 32))
  {
    [v3 setEndpointId:?];
  }
}

void sub_10005994C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [CSUtils getSiriLanguageWithEndpointId:*(a1 + 32) fallbackLanguage:@"en-US"];
    (*(v1 + 16))(v1, v2);
  }
}

void sub_10005BA84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_10005BAA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained voiceTriggerEnabledPolicy];
  v4 = [v3 isEnabled];

  if (v4 & 1) != 0 || ([*(a1 + 32) _shouldEnableMyriadFriendlySelfTrigger])
  {
    return 1;
  }

  v6 = CSLogContextFacilityCoreSpeech;
  v7 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v7)
  {
    v8 = 136315138;
    v9 = "[CSSelfTriggerDetectorEnabledPolicyDarwin _addSelfTriggerDetectorEnabledConditions]_block_invoke";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s SelfTriggerDetector cannot be turned on since VoiceTrigger is disabled and doesn't meet myriad-friendly self-trigger condition", &v8, 0xCu);
    return 0;
  }

  return result;
}

BOOL sub_10005BBA4(id a1)
{
  v1 = +[CSHostPowerStateMonitor sharedInstance];
  v2 = [v1 currentDarwinHostState];

  if (v2 != 3)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSSelfTriggerDetectorEnabledPolicyDarwin _addSelfTriggerDetectorEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s SelfTriggerDetector cannot be turned on since Darwin host state is inactive", &v5, 0xCu);
    }
  }

  return v2 == 3;
}

void sub_10005BE00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10005BE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained notifyCallbackWithOption:a3];
}

void sub_100060504(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "+[CSSiriDebugConnection launchSiriDebugAppWithMessage:]_block_invoke";
    v6 = 2112;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s %@ task delivered.", &v4, 0x16u);
  }
}

void sub_1000605C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 136315906;
    v10 = "+[CSSiriDebugConnection launchSiriDebugAppWithMessage:]_block_invoke";
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s %@ completed with response %@ and error %@.", &v9, 0x2Au);
  }
}

id sub_100060984(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = AFLibraryDirectoryWithSubPath();
  v6 = [v5 stringByAppendingPathComponent:@"SpeechModels"];
  v7 = [v3 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  v8 = [v6 stringByAppendingPathComponent:v7];
  v9 = [v8 stringByAppendingPathComponent:v4];

  return v9;
}

id sub_100060B30(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = AFLibraryDirectoryWithSubPath();
  v6 = [v5 stringByAppendingPathComponent:@"UaaP"];
  v7 = [v3 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  v8 = [v6 stringByAppendingPathComponent:v7];
  v9 = [v8 stringByAppendingPathComponent:v4];

  return v9;
}

void sub_100060F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100060F68(uint64_t a1, uint64_t a2)
{
  obj = [*(a1 + 32) stringByAppendingPathComponent:a2];
  if ([_EARArtifact isValid:?])
  {
    objc_storeStrong((*(a1 + 40) + 16), obj);
  }
}

void sub_100060FDC(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 hasPrefix:@"LM"];
  v4 = v13;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) stringByAppendingPathComponent:v13];
    [v5 addObject:v6];

    v7 = [v13 pathExtension];
    v8 = v7;
    if (v7)
    {
      v7 = [v7 integerValue];
    }

    v9 = *(*(a1 + 56) + 8);
    if (v7 >= *(v9 + 24))
    {
      *(v9 + 24) = v7;
      v10 = [*(a1 + 40) stringByAppendingPathComponent:v13];
      v11 = *(a1 + 48);
      v12 = *(v11 + 32);
      *(v11 + 32) = v10;
    }

    v4 = v13;
  }
}

void sub_100061288(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([*(a1 + 32) numberOfMatchesInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}])
  {
    v3 = [*(a1 + 40) stringByAppendingPathComponent:v4];
    (*(*(a1 + 48) + 16))();
  }
}

id sub_100061320()
{
  if (qword_10029E120 != -1)
  {
    dispatch_once(&qword_10029E120, &stru_10024F668);
  }

  v1 = qword_10029E118;

  return v1;
}

void sub_100061374(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
LABEL_7:
    v7 = *(a1 + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100061584;
    v11[3] = &unk_10024F5D8;
    v12 = v3;
    v13 = *(a1 + 56);
    v8 = *(a1 + 48);
    v9 = v3;
    sub_100061614(v7, v9, 0, v11, v8);

    return;
  }

  v4 = [CSUtils getSiriLanguageWithFallback:0];
  v5 = CSLogContextFacilityCoreSpeech;
  v6 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 136315394;
      v15 = "CSSpeechUaapProcessInstall_block_invoke";
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s UaaP: using language: %@", buf, 0x16u);
    }

    v3 = [v4 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

    goto LABEL_7;
  }

  if (v6)
  {
    *buf = 136315138;
    v15 = "CSSpeechUaapProcessInstall_block_invoke";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s UaaP: Unable to determine the language while building app-specific LM, skip building.", buf, 0xCu);
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

uint64_t sub_100061584(uint64_t a1)
{
  if ((_os_feature_enabled_impl() & 1) == 0 && MKBDeviceUnlockedSinceBoot())
  {
    v2 = objc_alloc_init(SpeechModelTrainingClient);
    [(SpeechModelTrainingClient *)v2 buildSpeechProfileForLanguage:*(a1 + 32)];
    [(SpeechModelTrainingClient *)v2 invalidate];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_100061614(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006173C;
  block[3] = &unk_10024F6F8;
  v20 = a3;
  v21 = a4;
  v17 = v9;
  v18 = v10;
  v19 = a5;
  v11 = v19;
  v12 = v10;
  v13 = v9;
  v14 = v21;
  v15 = v20;
  dispatch_async(v11, block);
}

void sub_10006173C(id *a1)
{
  v2 = a1[7];
  if (v2 && v2[2]())
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v26 = "_CSTrainSpeechAppLMOnQueue_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Building UaaP-LM deferred", buf, 0xCu);
    }

    v4 = a1[8];
    if (v4)
    {
      v4[2](v4, 1);
    }
  }

  else if ([a1[4] count])
  {
    v5 = [[NSMutableArray alloc] initWithArray:a1[4]];
    v6 = [v5 firstObject];
    [v5 removeObjectAtIndex:0];
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v26 = "_CSTrainSpeechAppLMOnQueue_block_invoke";
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Building UaaP-LM for %@", buf, 0x16u);
    }

    v8 = [[CSAppUaapFiles alloc] initWithBundleId:v6 forLanguage:a1[5]];
    v9 = v8;
    if (v8)
    {
      v10 = [(CSAppUaapFiles *)v8 oldAppLmPaths];
      [v10 enumerateObjectsUsingBlock:&stru_10024F6A8];

      v11 = objc_alloc_init(SpeechModelTrainingClient);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100061ACC;
      v16[3] = &unk_10024F6D0;
      v17 = v9;
      v18 = v11;
      v19 = a1[5];
      v20 = v6;
      v21 = v5;
      v23 = a1[7];
      v24 = a1[8];
      v22 = a1[6];
      v12 = v11;
      [(SpeechModelTrainingClient *)v12 wakeUpWithCompletion:v16];
    }

    else
    {
      v15 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v26 = "_CSTrainSpeechAppLMOnQueue_block_invoke";
        v27 = 2112;
        v28 = v6;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s App is not UaaP-enabled, bundle ID = %@", buf, 0x16u);
      }

      sub_100061614(v5, a1[5], a1[7], a1[8], a1[6]);
    }
  }

  else
  {
    v13 = a1[8];
    if (v13)
    {
      v14 = *(v13 + 2);

      v14();
    }
  }
}

void sub_100061ACC(uint64_t a1)
{
  v20 = 0u;
  v21 = 0u;
  v2 = +[NSXPCConnection currentConnection];
  v3 = v2;
  if (v2)
  {
    [v2 auditToken];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v4 = [*(a1 + 32) appIntentsPath];
  v5 = [v4 UTF8String];
  *buf = v20;
  *&buf[16] = v21;
  v6 = sandbox_extension_issue_file_to_process();
  if (v6)
  {
    v7 = [[NSString alloc] initWithBytesNoCopy:v6 length:strlen(v6) encoding:4 freeWhenDone:1];

    if (!v7)
    {
      return;
    }

    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) appIntentsPath];
    v12 = [*(a1 + 32) generateNextLmPath];
    [v10 trainAppLMWithLanguage:v8 configuration:0 appBundleId:v9 appLmDataFile:v11 appLmModelFile:v12 appLmDataFileSandboxExtension:v7];

    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 48);
      v14 = *(a1 + 56);
      *buf = 136315650;
      *&buf[4] = "_CSTrainSpeechAppLMOnQueue_block_invoke_2";
      *&buf[12] = 2112;
      *&buf[14] = v14;
      *&buf[22] = 2112;
      *&buf[24] = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s UaaP: Started training LM for app %@, locale %@", buf, 0x20u);
    }

    [*(a1 + 40) invalidate];
    sub_100061614(*(a1 + 64), *(a1 + 48), *(a1 + 80), *(a1 + 88), *(a1 + 72));
  }

  else
  {
    v16 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v17 = v16;
      v18 = __error();
      v19 = strerror(*v18);
      *buf = 136315650;
      *&buf[4] = "issueSandboxExtension";
      *&buf[12] = 2080;
      *&buf[14] = v5;
      *&buf[22] = 2080;
      *&buf[24] = v19;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Failed to issue sandbox extenion for %s: %s\n", buf, 0x20u);
    }

    v7 = v4;
  }
}

void sub_100061D68(id a1, NSString *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = +[NSFileManager defaultManager];
  [v5 removeItemAtPath:v4 error:0];
}

void sub_100061DD0(id a1)
{
  v1 = dispatch_queue_create("com.apple.siri.speech-uaap-lm", 0);
  v2 = qword_10029E118;
  qword_10029E118 = v1;
}

void sub_100061E10(void *a1, char a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "CSSpeechUaapMaintenanceTasks";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s UaaP: Processing maintenance tasks", buf, 0xCu);
  }

  v8 = sub_100061320();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100061F68;
  block[3] = &unk_10024FCC0;
  v12 = v5;
  v13 = v6;
  v14 = a2;
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, block);
}

void sub_100061F68(uint64_t a1)
{
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000622A0;
  v19[3] = &unk_10024F600;
  v20 = *(a1 + 32);
  v2 = objc_retainBlock(v19);
  v3 = [CSUtils getSiriLanguageWithFallback:0];
  v4 = CSLogContextFacilityCoreSpeech;
  v5 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 136315394;
      *&buf[4] = "CSSpeechUaapMaintenanceTasks_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s UaaP: using language: %@", buf, 0x16u);
    }

    v6 = [v3 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000622B0;
    v13[3] = &unk_10024F7E0;
    v18 = *(a1 + 48);
    v16 = v2;
    v14 = *(a1 + 32);
    v17 = *(a1 + 40);
    v15 = v6;
    v7 = v15;
    v8 = v13;
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "_CSPurgeInactiveLocales";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Purging UaaP models for inactive locales", buf, 0xCu);
    }

    v10 = sub_100061320();
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100062378;
    v22 = &unk_100253718;
    v23 = v7;
    v24 = v8;
    v11 = v7;
    dispatch_async(v10, buf);
  }

  else
  {
    if (v5)
    {
      *buf = 136315138;
      *&buf[4] = "CSSpeechUaapMaintenanceTasks_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s UaaP: Unable to determine the language while rebuild all-app LM, skip building.", buf, 0xCu);
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))();
    }
  }
}

_xpc_activity_s *sub_1000622A0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return xpc_activity_should_defer(result);
  }

  return result;
}

void sub_1000622B0(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 48);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000627DC;
  v4[3] = &unk_10024F7B8;
  v5 = *(a1 + 32);
  v7 = *(a1 + 56);
  v6 = *(a1 + 40);
  sub_100062918(v2, v3, v4);
}

void sub_100062378(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 || ([CSUtils getSiriLanguageWithFallback:0], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v21 = "_CSPurgeInactiveLocales_block_invoke";
      v22 = 2112;
      v23 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s UaaP: using language: %@", buf, 0x16u);
    }

    v5 = [v3 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

    v6 = +[NSFileManager defaultManager];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100062654;
    v17[3] = &unk_10024F720;
    v7 = v5;
    v18 = v7;
    v8 = v6;
    v19 = v8;
    v16 = 0;
    v9 = [CSAppUaapFiles enumerateUaapLocales:v17 error:&v16];
    v10 = v16;
    if (v9)
    {

      v11 = *(a1 + 40);
      if (v11)
      {
        (*(v11 + 16))();
      }
    }

    else
    {
      v12 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v21 = "_CSPurgeInactiveLocales_block_invoke";
        v22 = 2112;
        v23 = v10;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s UaaP: failed to enumerate locale-specific model directories while purging: %@", buf, 0x16u);
      }

      v13 = *(a1 + 40);
      if (v13)
      {
        (*(v13 + 16))();
      }
    }
  }

  else
  {
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "_CSPurgeInactiveLocales_block_invoke";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s UaaP: Unable to determine the language, will skip purging inactive languages.", buf, 0xCu);
    }

    v15 = *(a1 + 40);
    if (v15)
    {
      (*(v15 + 16))();
    }
  }
}

void sub_100062654(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([v5 isEqualToString:*(a1 + 32)] & 1) == 0)
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v14 = "_CSPurgeInactiveLocales_block_invoke";
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s UaaP: Purging models for inactive locale %@", buf, 0x16u);
    }

    v8 = *(a1 + 40);
    v12 = 0;
    v9 = [v8 removeItemAtPath:v6 error:&v12];
    v10 = v12;
    if ((v9 & 1) == 0)
    {
      v11 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v14 = "_CSPurgeInactiveLocales_block_invoke";
        v15 = 2112;
        v16 = v5;
        v17 = 2112;
        v18 = v10;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s UaaP: failed to remove purgeable UaaP data for locale %@, %@", buf, 0x20u);
      }
    }
  }
}

uint64_t sub_1000627DC(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = xpc_activity_set_state(v3, 3);
      v5 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = "CSSpeechUaapMaintenanceTasks_block_invoke_2";
        v10 = 1024;
        v11 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s UaaP All-App LM: Deferred:%d", &v8, 0x12u);
      }
    }

    result = *(a1 + 48);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  else
  {
    result = *(a1 + 48);
    if (result)
    {
      v7 = *(result + 16);

      return v7();
    }
  }

  return result;
}

void sub_100062918(char a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  sub_100061320();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100062A04;
  block[3] = &unk_10024F7E0;
  v15 = a1;
  v13 = v6;
  v14 = v5;
  v12 = v11 = 0;
  v7 = v12;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

void sub_100062A04(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "_CSSweepForMissedUaapApps_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s UaaP: Processing UaaP maintenance tasks.", buf, 0xCu);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v3;
    goto LABEL_6;
  }

  v4 = [CSUtils getSiriLanguageWithFallback:0];
  if (v4)
  {
LABEL_6:
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "_CSSweepForMissedUaapApps_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s UaaP: user language: %@", buf, 0x16u);
    }

    v6 = [v4 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
    if (*(a1 + 64) == 1 && ((v7 = CSLogContextFacilityCoreSpeech, !os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT)) || (*buf = 136315138, *&buf[4] = "_CSSweepForMissedUaapApps_block_invoke", _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Will force UaaP model updates.", buf, 0xCu), (*(a1 + 64) & 1) != 0)))
    {
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v10 = [[SFEntitledAssetConfig alloc] initWithLanguage:v6 assetType:3];
      v11 = +[SFEntitledAssetManager sharedInstance];
      v12 = [v11 installedAssetWithConfig:v10];

      if (!v12 || ![v12 length])
      {
        v17 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "_CSSweepForMissedUaapApps_block_invoke";
          *&buf[12] = 2112;
          *&buf[14] = v6;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s UaaP: user language %@ is not supported", buf, 0x16u);
        }

        v18 = *(a1 + 48);
        if (v18)
        {
          (*(v18 + 16))(v18, 0);
        }

        goto LABEL_30;
      }

      v13 = [_EARSpeechModelInfo alloc];
      v14 = [v12 stringByAppendingPathComponent:@"mini.json"];
      v15 = [v13 initWithConfig:v14];

      if (v15)
      {
        v9 = [v15 version];
        v8 = [v15 language];
        v16 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "_CSSweepForMissedUaapApps_block_invoke";
          *&buf[12] = 2112;
          *&buf[14] = v9;
          *&buf[22] = 2112;
          v39 = v8;
          _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s Datapack = %@/%@", buf, 0x20u);
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
      }
    }

    v21 = objc_alloc_init(NSMutableArray);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100063014;
    v33[3] = &unk_10024F790;
    v37 = *(a1 + 64);
    v22 = v21;
    v34 = v22;
    v10 = v9;
    v35 = v10;
    v12 = v8;
    v36 = v12;
    v23 = v6;
    v24 = v33;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100063474;
    v39 = &unk_10024F808;
    v40 = v23;
    v41 = v24;
    AFApplicationWorkspaceEnumerateInstalledUserVisibleApplications();

    v25 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "_CSSweepForMissedUaapApps_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v22;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s UaaP: Missing UaaP Speech LM for bundleIds:%@", buf, 0x16u);
    }

    v26 = *(a1 + 56);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10006351C;
    v29[3] = &unk_10024F7B8;
    v30 = v22;
    v31 = v23;
    v32 = *(a1 + 48);
    v27 = *(a1 + 40);
    v28 = v22;
    sub_100061614(v28, v31, v26, v29, v27);

LABEL_30:
    return;
  }

  v19 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = "_CSSweepForMissedUaapApps_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s UaaP: Could not determine language while doing maintenance tasks, aborting", buf, 0xCu);
  }

  v20 = *(a1 + 48);
  if (v20)
  {
    (*(v20 + 16))(v20, 0);
  }
}

void sub_100063014(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 oldAppLmPaths];
  [v4 enumerateObjectsUsingBlock:&stru_10024F740];

  if (*(a1 + 56) == 1)
  {
LABEL_2:
    v5 = *(a1 + 32);
    v6 = [v3 bundleId];
    [v5 addObject:v6];
    goto LABEL_3;
  }

  v7 = +[NSFileManager defaultManager];
  v8 = [v3 appLmPath];
  v9 = [v7 fileExistsAtPath:v8];

  if ((v9 & 1) == 0)
  {
    v18 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      v20 = [v3 bundleId];
      *buf = 136315394;
      v37 = "_CSSweepForMissedUaapApps_block_invoke";
      v38 = 2112;
      v39 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s Missed initial install notification for %@", buf, 0x16u);
    }

    goto LABEL_2;
  }

  if (*(a1 + 40) && *(a1 + 48))
  {
    v10 = [_EARAppLmArtifact alloc];
    v11 = [v3 appLmPath];
    v6 = [v10 initWithPath:v11];

    if (v6)
    {
      if ([v6 isAdaptableToSpeechModelVersion:*(a1 + 40) locale:*(a1 + 48)])
      {

        goto LABEL_10;
      }

      v23 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
        v25 = [v3 bundleId];
        *buf = 136315394;
        v37 = "_CSSweepForMissedUaapApps_block_invoke";
        v38 = 2112;
        v39 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s %@ has fallen out of sync with the datapack, rebuilding", buf, 0x16u);
      }
    }

    v26 = *(a1 + 32);
    v27 = [v3 bundleId];
    [v26 addObject:v27];

    goto LABEL_3;
  }

LABEL_10:
  v6 = +[NSFileManager defaultManager];
  v12 = [v3 appLmPath];
  v35 = 0;
  v13 = [v6 attributesOfItemAtPath:v12 error:&v35];
  v14 = v35;

  if (v13)
  {
    v15 = [v13 fileModificationDate];
    v16 = [v3 filesAsDictionary];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000635D0;
    v30[3] = &unk_10024F768;
    v31 = v6;
    v32 = *(a1 + 32);
    v33 = v3;
    v34 = v15;
    v17 = v15;
    [v16 enumerateKeysAndObjectsUsingBlock:v30];
  }

  else
  {
    v21 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v28 = v21;
      v29 = [v3 appLmPath];
      *buf = 136315650;
      v37 = "_CSSweepForMissedUaapApps_block_invoke";
      v38 = 2112;
      v39 = v29;
      v40 = 2112;
      v41 = v14;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s Failed to read attributes of UaaP LM at %@: %@", buf, 0x20u);
    }

    v22 = *(a1 + 32);
    v17 = [v3 bundleId];
    [v22 addObject:v17];
  }

LABEL_3:
}

void sub_100063474(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CSAppUaapFiles alloc];
  v5 = [v3 bundleIdentifier];

  v7 = [(CSAppUaapFiles *)v4 initWithBundleId:v5 forLanguage:*(a1 + 32)];
  v6 = v7;
  if (v7)
  {
    (*(*(a1 + 40) + 16))();
    v6 = v7;
  }
}

uint64_t sub_10006351C(uint64_t a1, char a2)
{
  if ((_os_feature_enabled_impl() & 1) == 0 && (a2 & 1) == 0 && [*(a1 + 32) count] && MKBDeviceUnlockedSinceBoot())
  {
    v4 = objc_alloc_init(SpeechModelTrainingClient);
    [(SpeechModelTrainingClient *)v4 buildSpeechProfileForLanguage:*(a1 + 40)];
    [(SpeechModelTrainingClient *)v4 invalidate];
  }

  result = *(a1 + 48);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void sub_1000635D0(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = *(a1 + 32);
  v20 = 0;
  v8 = [v7 attributesOfItemAtPath:v6 error:&v20];
  v9 = v20;
  if (v8)
  {
    v10 = [v8 fileModificationDate];
    if ([v10 compare:*(a1 + 56)] == 1)
    {
      v11 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 48);
        v13 = v11;
        v14 = [v12 bundleId];
        *buf = 136315394;
        v22 = "_CSSweepForMissedUaapApps_block_invoke";
        v23 = 2112;
        v24 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s Missed update notification for %@", buf, 0x16u);
      }

      v15 = *(a1 + 40);
      v16 = [*(a1 + 48) bundleId];
      [v15 addObject:v16];

      *a4 = 1;
    }
  }

  else
  {
    v17 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v22 = "_CSSweepForMissedUaapApps_block_invoke";
      v23 = 2112;
      v24 = v6;
      v25 = 2112;
      v26 = v9;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Failed to read attributes for incoming UaaP data file at %@: %@", buf, 0x20u);
    }

    v18 = *(a1 + 40);
    v19 = [*(a1 + 48) bundleId];
    [v18 addObject:v19];

    *a4 = 1;
  }
}

void sub_1000637F0(id a1, NSString *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = +[NSFileManager defaultManager];
  [v5 removeItemAtPath:v4 error:0];
}

void sub_100063858(uint64_t a1)
{
  v2 = [CSUtils getSiriLanguageWithFallback:0];
  v3 = CSLogContextFacilityCoreSpeech;
  v4 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 136315394;
      v28 = "CSRemoveSpeechAppLMAndData_block_invoke";
      v29 = 2112;
      v30 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s UaaP: using language: %@", buf, 0x16u);
    }

    v20 = v2;
    v5 = [v2 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v19 = a1;
    obj = *(a1 + 32);
    v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v22 + 1) + 8 * i);
          v11 = v5;
          v12 = +[NSFileManager defaultManager];
          [CESRUaapData removeUaapOovsForLanguage:v11 bundleId:v10];
          v13 = sub_100060984(v10, v11);
          [v12 removeItemAtPath:v13 error:0];
          v14 = sub_100060B30(v10, v11);

          [v12 removeItemAtPath:v14 error:0];
        }

        v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v7);
    }

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      if (MKBDeviceUnlockedSinceBoot())
      {
        v15 = objc_alloc_init(SpeechModelTrainingClient);
        [(SpeechModelTrainingClient *)v15 buildSpeechProfileForLanguage:v5];
        [(SpeechModelTrainingClient *)v15 invalidate];
      }

      else
      {
        v17 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v28 = "CSRemoveSpeechAppLMAndData_block_invoke";
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s UaaP: Deferring speech profile rebuild until first unlock", buf, 0xCu);
        }
      }
    }

    v18 = *(v19 + 40);
    if (v18)
    {
      (*(v18 + 16))();
    }

    v2 = v20;
  }

  else
  {
    if (v4)
    {
      *buf = 136315138;
      v28 = "CSRemoveSpeechAppLMAndData_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s UaaP: Could not get user language. Skipping removal of app LM and data...", buf, 0xCu);
    }

    v16 = *(a1 + 40);
    if (v16)
    {
      (*(v16 + 16))();
    }
  }
}

void sub_100063BBC(uint64_t a1)
{
  v2 = [CSUtils getSiriLanguageWithFallback:0];
  v3 = CSLogContextFacilityCoreSpeech;
  v4 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 136315394;
      v9 = "CSSpeechUaapFirstUnlock_block_invoke";
      v10 = 2112;
      v11 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s UaaP: using language: %@", buf, 0x16u);
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100063D60;
    v6[3] = &unk_10024F648;
    v7 = *(a1 + 32);
    sub_100062918(0, &stru_10024F620, v6);
  }

  else
  {
    if (v4)
    {
      *buf = 136315138;
      v9 = "CSSpeechUaapFirstUnlock_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s UaaP: Unable to determine the language while rebuilding speech profile.", buf, 0xCu);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }
}

uint64_t sub_100063D60(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100063F38(uint64_t a1)
{
  v1 = [*(a1 + 32) _signalProvider];
  [v1 cancelAudioStreamHoldingIfNeeded];
}

void sub_100063FF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v4 = objc_loadWeakRetained((*(a1 + 32) + 16));
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained((*(a1 + 32) + 16));
      [v6 attendingStoppedWithReason:2];
    }
  }

  v7 = [*(a1 + 32) _signalProvider];
  [v7 stopWithObserver:*(a1 + 32) holdAudioStream:0];
}

void sub_1000644B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000644D4(uint64_t a1)
{
  v2 = CSLogCategoryAttending;
  if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSAttendingSpeechDetectionController _setupSpeechDetectionTimerForDuration:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s speech detection timer fired", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleSpeechDetectionTimeout];
}

void sub_10006486C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) attendingOptions];
  v3 = v2;
  v4 = *(a1 + 32);
  if (*(a1 + 40) <= 0.0)
  {
    v9 = *(v4 + 32);
    v10 = *(a1 + 48);
    if (v9 < 0.0)
    {
      *(v4 + 32) = v10;
      v9 = *(*(a1 + 32) + 32);
    }

    v11 = v10 - v9;
    [v2 startOfSpeechThresholdInMs];
    if (v12 <= v11)
    {
      *(*(a1 + 32) + 9) = 0;
      [v3 prependAudioDuration];
      v15 = v14;
      v16 = *(*(a1 + 32) + 32) - v14;
      if (v16 >= 0.0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0.0;
      }

      if ([v3 useOwnVoiceVAD])
      {
        [v3 startOfSpeechThresholdInMs];
        v19 = v18 / 1000.0;
        +[CSConfig inputRecordingSampleRate];
        v21 = (v19 * v20);
        v22 = [*(a1 + 32) _signalProvider];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_100064B9C;
        v30[3] = &unk_10024F8A8;
        v30[4] = *(a1 + 32);
        v31 = v11;
        *&v30[5] = v15;
        v30[6] = v21;
        [v22 fetchStartSpeechWithOwnVoiceVadByProcessedAudioInMs:1 fetchOwnVoiceVADSignal:v21 prependAudioDuration:v30 speechDetectSampleCountThreshold:v17 completion:v15];
      }

      else
      {
        v23 = [*(a1 + 32) _signalProvider];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100064C34;
        v24[3] = &unk_10024F8F8;
        v24[4] = *(a1 + 32);
        v25 = v3;
        v29 = *(a1 + 64);
        v28 = v11;
        v26 = v15;
        v27 = *(a1 + 56);
        [v23 fetchStartSpeechWithOwnVoiceVadByProcessedAudioInMs:0 fetchOwnVoiceVADSignal:0 prependAudioDuration:v24 speechDetectSampleCountThreshold:v17 completion:0.0];
      }
    }

    else
    {
      [v3 startOfSpeechNearMissThresholdInMs];
      if (v13 <= v11 && ([v3 useOwnVoiceVAD] & 1) == 0)
      {
        *(*(a1 + 32) + 9) = 1;
      }
    }
  }

  else
  {
    *(v4 + 32) = 0xBFF0000000000000;
    v5 = *(a1 + 32);
    if (*(v5 + 9) == 1)
    {
      v6 = CSLogCategoryAttending;
      if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
        [v3 startOfSpeechNearMissThresholdInMs];
        *buf = 136315394;
        v33 = "[CSAttendingSpeechDetectionController attSiriSignalProvider:silenceFramesCountMs:silenceProbability:silenceDurationMs:processedAudioMs:deviceHasBoronEnabled:latestBoronActiveSampleCount:]_block_invoke";
        v34 = 2048;
        v35 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s NearMiss: amountOfSpeech detected greater than startOfSpeechNearMissThresholdInMs:%f", buf, 0x16u);

        v5 = *(a1 + 32);
      }

      *(v5 + 9) = 0;
    }
  }
}

void sub_100064B9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100064F90;
  v6[3] = &unk_10024F880;
  v7 = *(a1 + 56);
  v6[5] = a3;
  v6[6] = a2;
  v8 = a4;
  v6[4] = v4;
  v6[7] = *(a1 + 40);
  v6[8] = *(a1 + 48);
  dispatch_async(v5, v6);
}

void sub_100064C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100064CF0;
  block[3] = &unk_10024F8D0;
  v10 = a3;
  v11 = a2;
  v5 = *(a1 + 40);
  v15 = *(a1 + 68);
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  v14 = *(a1 + 64);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  dispatch_async(v4, block);
}

void sub_100064CF0(uint64_t a1)
{
  v2 = CSLogCategoryAttending;
  if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v23 = 136315650;
    v24 = "[CSAttendingSpeechDetectionController attSiriSignalProvider:silenceFramesCountMs:silenceProbability:silenceDurationMs:processedAudioMs:deviceHasBoronEnabled:latestBoronActiveSampleCount:]_block_invoke_2";
    v25 = 2048;
    v26 = v3;
    v27 = 2048;
    v28 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s startSampleCount: %llu, startHostTime: %llu", &v23, 0x20u);
  }

  if (![*(a1 + 32) useBoron] || (*(a1 + 84) & 1) == 0)
  {
    goto LABEL_11;
  }

  v6 = *(a1 + 64) / 1000.0;
  +[CSConfig inputRecordingSampleRate];
  v8 = (v6 * v7);
  *&v6 = *(a1 + 80) / 1000.0;
  +[CSConfig inputRecordingSampleRate];
  v10 = ((*(a1 + 48) + v8) + (*&v6 * v9));
  v11 = *(a1 + 72) - v10;
  [*(a1 + 32) startOfSpeechThresholdInMs];
  v13 = v12 / 1000.0;
  +[CSConfig inputRecordingSampleRate];
  v15 = (v13 * v14);
  if (v11 >= 0)
  {
    v16 = v11;
  }

  else
  {
    v16 = -v11;
  }

  v17 = CSLogCategoryAttending;
  v18 = os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT);
  if (v16 < v15)
  {
    if (v18)
    {
      v19 = *(a1 + 48);
      v20 = *(a1 + 72);
      v23 = 136316674;
      v24 = "[CSAttendingSpeechDetectionController attSiriSignalProvider:silenceFramesCountMs:silenceProbability:silenceDurationMs:processedAudioMs:deviceHasBoronEnabled:latestBoronActiveSampleCount:]_block_invoke";
      v25 = 2048;
      v26 = v19;
      v27 = 2048;
      v28 = v8;
      v29 = 2048;
      v30 = v20;
      v31 = 2048;
      v32 = v10;
      v33 = 2048;
      v34 = v11;
      v35 = 2048;
      v36 = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s #Boron check SUCCESS. StartSampleCount: %llu. PrependSamples: %llu. LatestBoronSampleCount: %lld. LastAudioSampleCount: %lld. Diff: %lld Thresh: %lld", &v23, 0x48u);
    }

LABEL_11:
    LODWORD(v5) = *(a1 + 80);
    [*(a1 + 40) _startActivationAtHostTime:*(a1 + 56) sampleCount:*(a1 + 48) amountOfSpeechInMs:v5];
    return;
  }

  if (v18)
  {
    v21 = *(a1 + 48);
    v22 = *(a1 + 72);
    v23 = 136316674;
    v24 = "[CSAttendingSpeechDetectionController attSiriSignalProvider:silenceFramesCountMs:silenceProbability:silenceDurationMs:processedAudioMs:deviceHasBoronEnabled:latestBoronActiveSampleCount:]_block_invoke";
    v25 = 2048;
    v26 = v21;
    v27 = 2048;
    v28 = v8;
    v29 = 2048;
    v30 = v22;
    v31 = 2048;
    v32 = v10;
    v33 = 2048;
    v34 = v11;
    v35 = 2048;
    v36 = v15;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s #Boron check FAIL. StartSampleCount: %llu. PrependSamples: %llu. LatestBoronSampleCount: %lld. LastAudioSampleCount: %lld. Diff: %lld Thresh: %lld", &v23, 0x48u);
  }
}

void sub_100064F90(uint64_t a1)
{
  v2 = CSLogCategoryAttending;
  if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 72);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 76);
    v12 = 136316162;
    v13 = "[CSAttendingSpeechDetectionController attSiriSignalProvider:silenceFramesCountMs:silenceProbability:silenceDurationMs:processedAudioMs:deviceHasBoronEnabled:latestBoronActiveSampleCount:]_block_invoke_2";
    v14 = 2048;
    v15 = v4;
    v16 = 2048;
    v17 = v5;
    v18 = 2048;
    v19 = v6;
    v20 = 1024;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s amountOfSpeechInMs:%f startSampleCount: %llu, startHostTime: %llu ownVoiceVADSignalPresent: %u", &v12, 0x30u);
  }

  if (*(a1 + 76) == 1)
  {
    LODWORD(v3) = *(a1 + 72);
    [*(a1 + 32) _startActivationAtHostTime:*(a1 + 48) sampleCount:*(a1 + 40) amountOfSpeechInMs:v3];
  }

  else
  {
    v8 = CSLogCategoryAttending;
    if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = *(a1 + 56);
      v11 = *(a1 + 64);
      v12 = 136315906;
      v13 = "[CSAttendingSpeechDetectionController attSiriSignalProvider:silenceFramesCountMs:silenceProbability:silenceDurationMs:processedAudioMs:deviceHasBoronEnabled:latestBoronActiveSampleCount:]_block_invoke";
      v14 = 2048;
      v15 = v9;
      v16 = 2048;
      v17 = v10;
      v18 = 2048;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s #OwnVoiceVAD check FAIL. StartSampleCount: %llu. prependAudioDuration: %f. speechDetectionSampleCountTotalThreshold: %llu. ", &v12, 0x2Au);
    }
  }
}

void sub_100065184(uint64_t a1)
{
  v2 = CSLogCategoryAttending;
  if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[CSAttendingSpeechDetectionController attSiriSignalProviderDidStopUnexpectedly]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained((*(a1 + 32) + 16));
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained((*(a1 + 32) + 16));
      [v7 attendingStoppedWithReason:3];
    }
  }

  [*(a1 + 32) _cancelSpeechDetectionTimer];
  v8 = [*(a1 + 32) _signalProvider];
  [v8 stopWithObserver:*(a1 + 32) holdAudioStream:0];

  *(*(a1 + 32) + 10) = 0;
}

void sub_100065338(uint64_t a1)
{
  v2 = CSLogCategoryAttending;
  if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = v2;
    if ((v3 - 1) > 8)
    {
      v5 = @"Default";
    }

    else
    {
      v5 = *(&off_100250440 + v3 - 1);
    }

    v6 = v5;
    v21 = 136315394;
    v22 = "[CSAttendingSpeechDetectionController stopAttendingWithReason:]_block_invoke";
    v23 = 2114;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Stop attending for reason %{public}@", &v21, 0x16u);
  }

  [*(a1 + 32) _cancelSpeechDetectionTimer];
  v7 = *(a1 + 40) == 9;
  v8 = [*(a1 + 32) _signalProvider];
  [v8 stopWithObserver:*(a1 + 32) holdAudioStream:v7];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v11 = objc_loadWeakRetained((*(a1 + 32) + 16));
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained((*(a1 + 32) + 16));
      [v13 attendingStoppedWithReason:*(a1 + 40)];
    }
  }

  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  if (v15 == 1)
  {
    goto LABEL_16;
  }

  if (*(v14 + 9) == 1)
  {
    v16 = CSLogCategoryAttending;
    if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(v14 + 40);
      v18 = v16;
      v19 = [v17 attendingOptions];
      [v19 startOfSpeechNearMissThresholdInMs];
      v21 = 136315394;
      v22 = "[CSAttendingSpeechDetectionController stopAttendingWithReason:]_block_invoke";
      v23 = 2048;
      v24 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s NearMiss: amountOfSpeech detected greater than startOfSpeechNearMissThresholdInMs:%f", &v21, 0x16u);

      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
    }

    *(v14 + 9) = 0;
  }

  if (v15)
  {
    v14 = *(a1 + 32);
LABEL_16:
    *(v14 + 10) = 0;
  }
}

void sub_100065640(uint64_t a1)
{
  v2 = [*(a1 + 32) _updateAttendingOptionsForAnnounce:*(a1 + 40)];
  v3 = CSLogCategoryAttending;
  if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[CSAttendingSpeechDetectionController startAttendingWithOptions:completion:]_block_invoke";
    v16 = 2112;
    v17 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  *(*(a1 + 32) + 32) = 0;
  *(*(a1 + 32) + 8) = 0;
  *(*(a1 + 32) + 9) = 0;
  v4 = [[CSAttSiriSignalOptions alloc] initWithAttendingOptions:v2 audioStreamRequest:0];
  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*(a1 + 32) _signalProvider];
  v8 = *(a1 + 32);
  v9 = *(v8 + 40);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000657FC;
  v11[3] = &unk_10024F858;
  v11[4] = v8;
  v12 = v2;
  v13 = *(a1 + 48);
  v10 = v2;
  [v7 startWithSignalOptions:v9 observer:v8 completion:v11];
}

void sub_1000657FC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000658D4;
  block[3] = &unk_10024F830;
  v7 = *(a1 + 40);
  v16 = a2;
  v8 = *(a1 + 32);
  v12 = v7;
  v13 = v8;
  v9 = *(a1 + 48);
  v14 = v5;
  v15 = v9;
  v10 = v5;
  dispatch_async(v6, block);
}

uint64_t sub_1000658D4(uint64_t a1)
{
  [*(a1 + 32) timeoutThresholdInSec];
  if (*(a1 + 64) == 1 && v2 > 0.0)
  {
    [*(a1 + 40) _setupSpeechDetectionTimerForDuration:?];
  }

  result = *(a1 + 56);
  if (result)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 48);
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void sub_100065EDC(uint64_t a1)
{
  v2 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[CSVoiceTriggerFirstPassHearstAP siriClientBehaviorMonitor:willStopStream:reason:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Siri Client will stop listening, resume FirstPassHearstAP listen", &v3, 0xCu);
  }

  *(*(a1 + 32) + 9) = 0;
}

id sub_100066008(uint64_t a1)
{
  v2 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSVoiceTriggerFirstPassHearstAP siriClientBehaviorMonitor:didStopStream:withEventUUID:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Siri Client stops listening now, FirstPassHearstAP can listen now", &v4, 0xCu);
  }

  *(*(a1 + 32) + 9) = 0;
  return [*(a1 + 32) _reset];
}

void sub_100066220(uint64_t a1)
{
  v2 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[CSVoiceTriggerFirstPassHearstAP siriClientBehaviorMonitor:didStartStreamWithContext:successfully:option:withEventUUID:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Siri Client starts listening now, FirstPassHearstAP shouldn't listen now", &v3, 0xCu);
  }

  *(*(a1 + 32) + 9) = 1;
}

void *sub_1000663FC(void *result)
{
  v1 = result[4];
  v2 = *(result + 40);
  if (*(v1 + 8) != v2)
  {
    *(v1 + 8) = v2;
    v3 = result[4];
    if (*(v3 + 8) == 1)
    {
      return [v3 _startListenWithAudioProviderUUID:*(v3 + 96) completion:0];
    }

    else
    {
      return [v3 _stopListening];
    }
  }

  return result;
}

void sub_100066ED4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_100066F08(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 multiPhraseSelectedStatus];
  [v4 setAllowMph:{objc_msgSend(v5, "multiPhraseSelected")}];

  v6 = [*(a1 + 32) multiPhraseSelectedStatus];
  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 userSelectedPhraseType]);
  [v4 setUserSelectedPhraseType:v7];

  v8 = [NSUUID alloc];
  v9 = [*(a1 + 32) deviceId];
  v10 = [v8 initWithUUIDString:v9];
  [v4 setEndpointId:v10];

  [v4 setAccessoryModelType:&off_10025E060];
  v11 = +[CSBluetoothManager sharedInstance];
  v12 = [*(a1 + 32) deviceId];
  v13 = [v11 getBluetoothDeviceInfoForDeviceWithId:v12];
  v14 = [v13 supportMph];

  v15 = objc_alloc_init(CSCoreSpeechServicesAccessoryInfo);
  [(CSCoreSpeechServicesAccessoryInfo *)v15 setSupportsJustSiri:v14];
  [v4 setCSCoreSpeechServicesAccessoryInfo:v15];
}

void sub_100067090(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[3];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100067180;
    block[3] = &unk_1002522C8;
    objc_copyWeak(&v13, (a1 + 32));
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);

    objc_destroyWeak(&v13);
  }
}

void sub_100067180(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  v4 = WeakRetained;
  v5 = [v4 deviceId];
  [v4 _handleSecondPassResult:v3 deviceId:v5 error:*(a1 + 40)];

  v6 = objc_loadWeakRetained((a1 + 48));
  [v6 _teardownSecondPass];
}

uint64_t sub_1000672B0(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = [*(result + 32) _shouldProcessAudio];
    v3 = *(v1 + 16);

    return v3(v1, v2);
  }

  return result;
}

void sub_1000673C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[4])
  {
    if ([v2 _shouldProcessAudio])
    {
      v11 = [*(*(a1 + 32) + 40) getBestAnalyzedResultsFromAudioChunk:*(a1 + 40)];
      [*(a1 + 32) _keywordAnalyzerNDAPI:*(*(a1 + 32) + 40) hasResultAvailable:v11 forChannel:{objc_msgSend(*(*(a1 + 32) + 40), "activeChannel")}];
      v3 = *(*(a1 + 32) + 168);
      if (v3)
      {
        v4 = [*(a1 + 40) remoteVAD];
        [v3 feedRemoteVAD:v4 startSampleCount:{objc_msgSend(*(a1 + 40), "startSampleCount")}];
      }
    }

    else
    {
      v6 = qword_10029E128;
      if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * qword_10029E128, 1) <= 0x1999999999999999uLL)
      {
        v7 = CSLogCategoryVT;
        if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 32);
          v9 = v8[9];
          v10 = v8[10];
          LODWORD(v8) = v8[8];
          *buf = 136315906;
          v13 = "[CSVoiceTriggerFirstPassHearstAP audioStreamProvider:audioBufferAvailable:]_block_invoke";
          v14 = 1024;
          v15 = v9;
          v16 = 1024;
          v17 = v10;
          v18 = 1024;
          v19 = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Bypass audio here because isSecondPassRunning = %d, isSiriClientListening = %d, _isAPHearstFirstPassEnabled = %d", buf, 0x1Eu);
          v6 = qword_10029E128;
        }
      }

      qword_10029E128 = v6 + 1;
    }
  }

  else
  {
    v5 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[CSVoiceTriggerFirstPassHearstAP audioStreamProvider:audioBufferAvailable:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Could not find Assets. Cannot process Audio", buf, 0xCu);
    }
  }
}

id sub_10006766C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  objc_autoreleasePoolPop(v2);
  v5 = *(a1 + 32);

  return [v5 _cancelLastAudioStreamHold];
}

void sub_100067804(uint64_t a1)
{
  v2 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSVoiceTriggerFirstPassHearstAP _stopListening]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Scheduled stopAudioStream after waiting for recordingWillStartGroup", &v4, 0xCu);
  }

  v3 = [*(a1 + 32) audioStream];
  [v3 stopAudioStreamWithOption:0 completion:&stru_10024F918];
}

void sub_1000678D4(id a1, BOOL a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [(NSError *)v3 localizedDescription];
      v7 = 136315394;
      v8 = "[CSVoiceTriggerFirstPassHearstAP _stopListening]_block_invoke";
      v9 = 2114;
      v10 = v6;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Cannot stop listening : %{public}@", &v7, 0x16u);
    }
  }
}

uint64_t sub_100068098(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = *(v6 + 168);
    *(v6 + 168) = 0;

    objc_autoreleasePoolPop(v5);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v10);
  }

  return _objc_release_x2();
}

void sub_100068130(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 24);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000681F0;
  v10[3] = &unk_100253248;
  v10[4] = v7;
  v13 = a2;
  v11 = v5;
  v12 = v6;
  v9 = v5;
  dispatch_async(v8, v10);
}

uint64_t sub_1000681F0(uint64_t a1)
{
  v2 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[CSVoiceTriggerFirstPassHearstAP _startListenWithAudioProviderUUID:completion:]_block_invoke_2";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Leaving recordWillStartGroup", &v8, 0xCu);
  }

  dispatch_group_leave(*(*(a1 + 32) + 56));
  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 32);
    if ((v3[8] & 1) == 0)
    {
      v4 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315138;
        v9 = "[CSVoiceTriggerFirstPassHearstAP _startListenWithAudioProviderUUID:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s didStartRecording received when CSVoiceTriggerFirstPassHearstAP is turned off", &v8, 0xCu);
        v3 = *(a1 + 32);
      }

      [v3 _stopListening];
      v5 = *(a1 + 56);
    }
  }

  v6 = *(a1 + 40);
  return (*(*(a1 + 48) + 16))();
}

void sub_100068620(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 0;
  v2 = *(a1 + 32);
  if (!*(v2 + 144))
  {
    v3 = +[CSVoiceTriggerHearstAPEnabledPolicy sharedInstance];
    v4 = *(a1 + 32);
    v5 = *(v4 + 144);
    *(v4 + 144) = v3;

    v2 = *(a1 + 32);
  }

  v6 = *(v2 + 112);
  if (!v6)
  {
    v7 = +[CSSiriClientBehaviorMonitor sharedInstance];
    v8 = *(a1 + 32);
    v9 = *(v8 + 112);
    *(v8 + 112) = v7;

    v6 = *(*(a1 + 32) + 112);
  }

  [v6 registerObserver:?];
  v10 = *(a1 + 32);
  if (!v10[16])
  {
    v11 = +[CSOpportuneSpeakEventMonitor sharedInstance];
    v12 = *(a1 + 32);
    v13 = *(v12 + 128);
    *(v12 + 128) = v11;

    v10 = *(a1 + 32);
  }

  v14 = [v10 multiPhraseSelectedStatus];

  if (!v14)
  {
    v15 = *(a1 + 32);
    v16 = [[CSVoiceTriggerUserSelectedPhrase alloc] initWithEndpointId:0];
    [v15 setMultiPhraseSelectedStatus:v16];
  }

  if ([*(*(a1 + 32) + 144) isEnabled])
  {
    [*(a1 + 32) _transitHearstAPEnable:1];
  }

  objc_initWeak(&location, *(a1 + 32));
  v17 = *(*(a1 + 32) + 144);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000687E4;
  v18[3] = &unk_100253000;
  objc_copyWeak(&v19, &location);
  [v17 setCallback:v18];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void sub_1000687C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000687E4(uint64_t a1, uint64_t a2)
{
  v4 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"STOPPED";
    if (a2)
    {
      v5 = @"RUNNING";
    }

    v7 = 136315394;
    v8 = "[CSVoiceTriggerFirstPassHearstAP start]_block_invoke_2";
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger HearstAP start policy changed : %{public}@", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _transitHearstAPEnable:a2];
}

void sub_100068B88(id a1)
{
  v1 = objc_alloc_init(CSHomePodSettingsMonitor);
  v2 = qword_10029E138;
  qword_10029E138 = v1;
}

BOOL sub_100068CA8(id a1)
{
  v1 = +[CSSoftwareUpdateCheckingMonitor sharedInstance];
  v2 = [v1 isSoftwareUpdateCheckingRunning];

  if (v2)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSVoiceTriggerEnabledPolicyNonAOP _addVoiceTriggerEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger cannot be turned on since Software Update Checking is running", &v5, 0xCu);
    }
  }

  return v2 ^ 1;
}

BOOL sub_100068D78(id a1)
{
  v1 = +[CSScreenLockMonitor sharedInstance];
  v2 = [v1 isScreenLocked];

  v3 = +[CSSiriRestrictionOnLockScreenMonitor sharedInstance];
  v4 = [v3 isRestricted];

  if (!v2)
  {
    return 1;
  }

  if (v4)
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[CSVoiceTriggerEnabledPolicyNonAOP _addVoiceTriggerEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger cannot be turned on since Siri is restricted on lock screen", &v7, 0xCu);
    }
  }

  return v4 ^ 1;
}

BOOL sub_100068E7C(id a1)
{
  v1 = +[CSSiriAssertionMonitor sharedInstance];
  v2 = [v1 isEnabled];

  if (v2)
  {
    return 1;
  }

  v3 = +[CSBatteryMonitor sharedInstance];
  v4 = [v3 batteryState];

  if (v4 != 2)
  {
    return 1;
  }

  v5 = CSLogContextFacilityCoreSpeech;
  v6 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v6)
  {
    v8 = 136315138;
    v9 = "[CSVoiceTriggerEnabledPolicyNonAOP _addVoiceTriggerEnabledConditions]_block_invoke";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger cannot be turned on since device is on battery", &v8, 0xCu);
    return 0;
  }

  return result;
}

BOOL sub_100068F84(id a1)
{
  v1 = +[CSFirstUnlockMonitor sharedInstance];
  v2 = [v1 isFirstUnlocked];

  if ((v2 & 1) == 0)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSVoiceTriggerEnabledPolicyNonAOP _addVoiceTriggerEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger cannot be turned on since device is not unlocked after restart", &v5, 0xCu);
    }
  }

  return v2;
}

BOOL sub_100069054(id a1)
{
  v1 = +[CSSystemShellStartMonitorFactory defaultShellStartMonitor];
  v2 = [v1 isSystemShellStarted];

  if ((v2 & 1) == 0)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSVoiceTriggerEnabledPolicyNonAOP _addVoiceTriggerEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger cannot be turned on since system shell is not started yet", &v5, 0xCu);
    }
  }

  return v2;
}

BOOL sub_100069124(id a1)
{
  v1 = +[CSSiriEnabledMonitor sharedInstance];
  v2 = [v1 isEnabled];

  if ((v2 & 1) == 0)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSVoiceTriggerEnabledPolicyNonAOP _addVoiceTriggerEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger cannot be turned on since Siri is disabled", &v5, 0xCu);
    }
  }

  return v2;
}

BOOL sub_1000691F4(id a1)
{
  v1 = +[CSVoiceTriggerEnabledMonitor sharedInstance];
  v2 = [v1 isEnabled];

  if ((v2 & 1) == 0)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSVoiceTriggerEnabledPolicyNonAOP _addVoiceTriggerEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger cannot be turned on since VoiceTrigger is disabled", &v5, 0xCu);
    }
  }

  return v2;
}

BOOL sub_1000692C4(id a1)
{
  v1 = +[CSUtils isLocalVoiceTriggerAvailable];
  if ((v1 & 1) == 0)
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[CSVoiceTriggerEnabledPolicyNonAOP _addVoiceTriggerEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger cannot be turned on since voiceTriggerInCoreSpeech is NO", &v4, 0xCu);
    }
  }

  return v1;
}

BOOL sub_100069384(id a1)
{
  if (+[CSUtils supportHangUp])
  {
    v1 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
    if ([v1 phoneCallState] == 3)
    {
      v2 = 1;
    }

    else
    {
      v3 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
      v2 = [v3 phoneCallState] == 4;
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = +[CSOtherAppRecordingStateMonitorFactory otherAppRecordingStateMonitor];
  v5 = [v4 isOtherNonEligibleAppRecording];

  v6 = v5 ^ 1 | v2;
  if ((v6 & 1) == 0)
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[CSVoiceTriggerEnabledPolicyNonAOP _addVoiceTriggerEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger cannot be turned on since there is other app recording that is not eligible and we are not in a connected or outgoing call", &v9, 0xCu);
    }
  }

  return v6 & 1;
}

BOOL sub_1000694C8(id a1)
{
  v1 = +[CSSpeechDetectionDevicePresentMonitor sharedInstance];
  v2 = [v1 isPresent];

  if ((v2 & 1) == 0)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSVoiceTriggerEnabledPolicyNonAOP _addVoiceTriggerEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger cannot be turned on since SpeechDetectionVAD is not present", &v5, 0xCu);
    }
  }

  return v2;
}

void sub_10006A110(id a1, NSError *a2)
{
  v2 = a2;
  v3 = CSLogContextFacilityCoreSpeech;
  if (v2)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [(NSError *)v2 localizedDescription];
      v6 = 136315394;
      v7 = "[CSAttSiriContConvController notifySiriSessionStateTTSOngoing:]_block_invoke";
      v8 = 2114;
      v9 = v5;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Failed to set Aggressive EC mode : %{public}@", &v6, 0x16u);
    }
  }

  else if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSAttSiriContConvController notifySiriSessionStateTTSOngoing:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Aggressive EC mode set successfully", &v6, 0xCu);
  }
}

id sub_10006A2C4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) attSiriSvcListener];
  [v2 notifyClientsWithBlock:&stru_10024FB30];

  v3 = *(a1 + 32);
  v4 = v3[8];

  return [v3 _stopAttendingForRequestId:v4 isReqCC:0 forceStop:1];
}

void sub_10006A530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10006A558(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSAttSiriContConvController _setupAttendingTimer]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s attending timer fired", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleAttendingTimeout];
}

void sub_10006A774(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v6 localizedDescription];
      *buf = 136315394;
      v15 = "[CSAttSiriContConvController _configureAttendingTimeout]_block_invoke";
      v16 = 2114;
      v17 = v9;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s getMitigationAsset error : %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 48);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10006A8E4;
    v12[3] = &unk_100253C48;
    v12[4] = v10;
    v13 = v5;
    dispatch_async(v11, v12);
  }
}

double sub_10006A8E4(uint64_t a1)
{
  [*(a1 + 40) attendingTimeoutValueInSecs];
  *(*(a1 + 32) + 12) = v2;
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 12);
    v6 = 136315394;
    v7 = "[CSAttSiriContConvController _configureAttendingTimeout]_block_invoke";
    v8 = 2048;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Setting attending timeout[asset] to %f secs", &v6, 0x16u);
  }

  return result;
}

void sub_10006AA98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10006AABC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v6 localizedDescription];
      v16 = 136315394;
      v17 = "[CSAttSiriContConvController _applyGazeSignalMandate]_block_invoke";
      v18 = 2114;
      v19 = v9;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s getMitigationAsset error : %{public}@", &v16, 0x16u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if ([v5 useGazeSignal])
    {
      v11 = 1;
    }

    else
    {
      v12 = +[CSFPreferences sharedPreferences];
      v11 = [v12 isGazeSignalEnabled];
    }

    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v14 = @"NO";
      if (v11)
      {
        v14 = @"YES";
      }

      v16 = 136315394;
      v17 = "[CSAttSiriContConvController _applyGazeSignalMandate]_block_invoke";
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s Setting _useGazeSignal to %@", &v16, 0x16u);
    }

    [WeakRetained setUseGazeSignal:v11];
    v15 = *(a1 + 32);
    if (*(v15 + 9) == 1)
    {
      [WeakRetained _setupGazeNodeWithAttSiriController:*(v15 + 56)];
    }
  }
}

void sub_10006AF98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10006AFBC(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSAttSiriContConvController _setupClientPendingTimer]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s _clientPendingTimer fired", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleAttendingTimeout];
}

void sub_10006B7E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = 136315394;
    v7 = "[CSAttSiriContConvController _startAttendingWithAudioRecordContext:withRequestId:shouldStartTimer:]_block_invoke";
    v8 = 1024;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s --useLegacyGazeModel--:%u", &v6, 0x12u);
  }

  [v3 attSiriDidStartAttending:*(*(a1 + 32) + 9) useLegacyModel:*(a1 + 40)];
}

id sub_10006B9E0(double *a1)
{
  v2 = *(*(a1 + 4) + 16);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[CSAttSiriContConvController updateSiriOrbLocation:]_block_invoke", "CSAttSiriContConvController.m", 298, "NO");
  }

  v3 = *(*(a1 + 4) + 16);
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];

  return [v3 addAreaOfInterestForSiriOrb:{v4, v5, v6, v7}];
}

id sub_10006BBAC(double *a1)
{
  v2 = *(*(a1 + 4) + 16);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[CSAttSiriContConvController relayGazeEstimates:landmarks:]_block_invoke", "CSAttSiriContConvController.m", 287, "NO");
  }

  v3 = *(a1 + 5);
  v4 = *(*(a1 + 4) + 16);
  v5 = a1[6];
  v6 = a1[7];

  return [v4 gazeEstimate:v3 landmarks:{v5, v6}];
}

id sub_10006BD64(void *a1)
{
  v2 = *(a1[4] + 16);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[CSAttSiriContConvController gazeTrackerFaceTrackingMetaDataUpdate:atMachAbsTime:]_block_invoke", "CSAttSiriContConvController.m", 276, "NO");
  }

  v3 = a1[5];
  v4 = *(a1[4] + 16);
  v5 = a1[6];

  return [v4 gazeTrackerFaceTrackingMetaDataUpdate:v3 atMachAbsTime:v5];
}

id sub_10006BF94(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v5 = *(a1 + 49);
    v7 = 136315906;
    v8 = "[CSAttSiriContConvController stopAttendingForRequestId:isReqCC:forceStop:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    v11 = 1024;
    v12 = v4;
    v13 = 1024;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Request stop attending with request Id:%@ CCReq: %d forceStop: %d", &v7, 0x22u);
  }

  return [*(a1 + 40) _stopAttendingForRequestId:*(a1 + 32) isReqCC:*(a1 + 48) forceStop:*(a1 + 49)];
}

id sub_10006C154(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = 136315906;
    v8 = "[CSAttSiriContConvController startAttendingWithAudioRecordContext:attendingSiriRequestContext:withRequestId:shouldStartTimer:]_block_invoke";
    v9 = 2112;
    v10 = v4;
    v11 = 1024;
    v12 = v3;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Request start attending with requestId:%@ startTimer: %d recordContext:%@", &v7, 0x26u);
  }

  return [*(a1 + 48) _startAttendingWithAudioRecordContext:*(a1 + 40) withRequestId:*(a1 + 32) shouldStartTimer:*(a1 + 56)];
}

void sub_10006D208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_10006D22C(uint64_t a1)
{
  sub_10006D30C();
  result = objc_getClass("BKDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10029E158 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return sub_10006D29C(v3);
  }

  return result;
}

void sub_10006D29C(uint64_t a1)
{
  sub_10006D30C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BKDeviceManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10029E168 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    sub_10006D30C();
  }
}

void sub_10006D30C()
{
  v1[0] = 0;
  if (!qword_10029E160)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_10006D418;
    v1[4] = &unk_1002535B8;
    v1[5] = v1;
    v2 = off_10024FB90;
    v3 = 0;
    qword_10029E160 = _sl_dlopen();
    v0 = v1[0];
    if (qword_10029E160)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }
}

uint64_t sub_10006D418(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10029E160 = result;
  return result;
}

void sub_10006D504(id a1)
{
  v1 = objc_alloc_init(CSBiometricMatchMonitor);
  v2 = qword_10029E148;
  qword_10029E148 = v1;
}

void sub_10006D900(uint64_t a1)
{
  v2 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[CSVoiceTriggerFirstPassJarvis siriClientBehaviorMonitor:willStopStream:reason:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Siri Client will stop listening, resume FirstPassJarvis listen", &v3, 0xCu);
  }

  *(*(a1 + 32) + 11) = 0;
}

id sub_10006DA2C(uint64_t a1)
{
  v2 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSVoiceTriggerFirstPassJarvis siriClientBehaviorMonitor:didStopStream:withEventUUID:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Siri Client stops listening now, FirstPassJarvis can listen now", &v4, 0xCu);
  }

  *(*(a1 + 32) + 11) = 0;
  return [*(a1 + 32) _reset];
}

void sub_10006DC4C(uint64_t a1)
{
  v2 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[CSVoiceTriggerFirstPassJarvis siriClientBehaviorMonitor:didStartStreamWithContext:successfully:option:withEventUUID:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Siri Client starts listening now, FirstPassJarvis shouldn't listen now", &v3, 0xCu);
  }

  *(*(a1 + 32) + 11) = 1;
}

void sub_10006E234(uint64_t a1)
{
  *(*(a1 + 32) + 10) = 0;
  [*(a1 + 32) _reset];
  v2 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[CSVoiceTriggerFirstPassJarvis _handleSecondPassResult:deviceId:error:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Stopping firstpass Jarvis audio as second-pass made decision", buf, 0xCu);
  }

  v3 = [*(a1 + 32) audioStream];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006E370;
  v4[3] = &unk_100253300;
  v4[4] = *(a1 + 32);
  [v3 stopAudioStreamWithOption:0 completion:v4];

  if (*(a1 + 40) != 1)
  {
    [*(a1 + 32) _cancelAudioStreamHold];
  }
}

void sub_10006E370(uint64_t a1, int a2, void *a3)
{
  v6 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v8 = v6;
    v9 = [a3 localizedDescription];
    *buf = 136315650;
    v14 = "[CSVoiceTriggerFirstPassJarvis _handleSecondPassResult:deviceId:error:]_block_invoke";
    v15 = 2114;
    v16 = v7;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s FirstPassJarvis stopped audio stream successfully? %{public}@, error : %{public}@", buf, 0x20u);
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006E4D8;
  block[3] = &unk_100253C20;
  block[4] = v10;
  dispatch_async(v11, block);
}

void sub_10006E8CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 48));
  _Block_object_dispose(&a19, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_10006E910(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10006E928(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 voiceTriggerEventInfo];
  v8 = [v7 mutableCopy];

  [v8 setValue:*(*(*(a1 + 40) + 8) + 40) forKey:kVTEIFirstPassJarvisTriggerMode];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleSecondPassResult:v6 deviceId:*(*(a1 + 32) + 128) error:v5];

  v10 = +[CSVoiceTriggerStatAggregator sharedAggregator];
  v11 = [v6 result];

  [v10 logSecondPassResult:v11 eventInfo:v8 triggerAPWakeUp:0];
  v12 = *(a1 + 32);
  v13 = *(v12 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006EA6C;
  block[3] = &unk_100253C20;
  block[4] = v12;
  dispatch_async(v13, block);
}

void sub_10006EBB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006EC24;
  block[3] = &unk_100253C20;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_10006ED20(uint64_t a1)
{
  if (*(*(a1 + 32) + 9))
  {
    v2 = [NSError errorWithDomain:CSErrorDomain code:505 userInfo:0];
    v3 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = "[CSVoiceTriggerFirstPassJarvis _didDetectKeywordFromDeviceId:activationInfo:triggerHostTime:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Ignoring external Jarvis trigger since we are already handling a trigger candidate", &v13, 0xCu);
    }

    v4 = *(a1 + 56);
    if (v4)
    {
      (*(v4 + 16))(v4, 0, v2);
    }
  }

  else
  {
    v5 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[CSVoiceTriggerFirstPassJarvis _didDetectKeywordFromDeviceId:activationInfo:triggerHostTime:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Sending early detect notification upon first pass trigger", &v13, 0xCu);
    }

    *(*(a1 + 32) + 104) = mach_absolute_time();
    kdebug_trace();
    v6 = [CSVoiceTriggerFirstPassMetrics CSVoiceTriggerFirstPassMetricsWithFirstPassInfoGeneratedTime:*(a1 + 64) firstPassInfoProcessedTime:*(*(a1 + 32) + 104)];
    v7 = *(a1 + 32);
    v8 = *(v7 + 176);
    *(v7 + 176) = v6;

    v9 = +[CSSiriLauncher sharedLauncher];
    [v9 notifyCarPlayVoiceTriggerPrewarm:*(a1 + 40) deviceId:*(a1 + 48) completion:0];

    v10 = objc_autoreleasePoolPush();
    [*(*(a1 + 32) + 120) setDelegate:0];
    v11 = *(a1 + 32);
    v12 = *(v11 + 120);
    *(v11 + 120) = 0;

    objc_autoreleasePoolPop(v10);
    *(*(a1 + 32) + 9) = 1;
    *(*(a1 + 32) + 72) = 0;
    objc_storeStrong((*(a1 + 32) + 128), *(a1 + 48));
    [*(a1 + 32) _handleJarvisVoiceTriggerFromDeviceId:*(a1 + 48) activationInfo:*(a1 + 40) triggerHostTime:*(a1 + 64) completion:*(a1 + 56)];
  }
}

uint64_t sub_10006F1A0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10006F1B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006F26C;
  block[3] = &unk_100253C20;
  block[4] = v4;
  v6 = a3;
  dispatch_async(v5, block);
  (*(*(a1 + 40) + 16))();
}

void sub_10006F668(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v8 = v6;
    v9 = [v5 localizedDescription];
    v11 = 136315650;
    v12 = "[CSVoiceTriggerFirstPassJarvis _handleJarvisVoiceTriggerFromDeviceId:activationInfo:triggerHostTime:completion:]_block_invoke";
    v13 = 2112;
    v14 = v7;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s result = %@, error = %{public}@", &v11, 0x20u);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, a2, v5);
  }
}

void sub_10006F7A0(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 24);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006F860;
  v10[3] = &unk_100253248;
  v13 = a2;
  v10[4] = v7;
  v11 = v5;
  v12 = v6;
  v9 = v5;
  dispatch_async(v8, v10);
}

uint64_t sub_10006F860(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) _holdAudioStreamWithTimeout:5.0];
    v2 = *(a1 + 56);
  }

  v3 = *(a1 + 40);
  v4 = *(*(a1 + 48) + 16);

  return v4();
}

void sub_10006F938(uint64_t a1)
{
  v2 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[CSVoiceTriggerFirstPassJarvis spgEndpointAnalyzerDidDetectEndpoint:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s FirstPass Jarvis received endpoint detected notification.", &v3, 0xCu);
  }

  *(*(a1 + 32) + 80) = *(*(a1 + 32) + 72);
}

void sub_10006FCC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_10006FCEC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v9 = v5;
  if ((a2 & 1) == 0 && [v5 code] != 505)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _clearTriggerCandidate];
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v9);
  }

  return _objc_release_x2();
}

id sub_1000701FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 168);
  if (*(v2 + 12))
  {
    if ([v3 count])
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v4 = *(*(a1 + 32) + 168);
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

            [*(a1 + 32) _handleAudioChunk:{*(*(&v11 + 1) + 8 * v8), v11}];
            v8 = v8 + 1;
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v6);
      }

      [*(*(a1 + 32) + 168) removeAllObjects];
    }

    return [*(a1 + 32) _handleAudioChunk:{*(a1 + 40), v11}];
  }

  else
  {
    v10 = *(a1 + 40);

    return [v3 addObject:v10];
  }
}

id sub_1000703D8(uint64_t a1)
{
  v2 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 136315394;
    v6 = "[CSVoiceTriggerFirstPassJarvis audioStreamProvider:didStopStreamUnexpectedly:]_block_invoke";
    v7 = 2048;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s record stop unexpectedly with reason : %ld", &v5, 0x16u);
  }

  return [*(a1 + 32) _didStopAudioStream];
}

void sub_100070B5C(uint64_t a1)
{
  v2 = [*(a1 + 32) voiceTriggerSecondPass];
  [v2 start];

  v3 = +[CSSiriClientBehaviorMonitor sharedInstance];
  [v3 registerObserver:*(a1 + 32)];

  v4 = *(a1 + 32);
  v5 = [[CSVoiceTriggerUserSelectedPhrase alloc] initWithEndpointId:0];
  [v4 setMultiPhraseSelectedStatus:v5];
}

void sub_1000712F0(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) idleUsecases];
    [v2 addObject:*(a1 + 32)];

    v3 = [*(a1 + 40) activeUsecases];
    [v3 removeObject:*(a1 + 32)];
  }

  v4 = *(a1 + 40);
  v5 = [v4 idleUsecases];
  [v4 _cleanupUsecases:v5];

  v6 = *(a1 + 40);
  v7 = [v6 activeUsecases];
  [v6 _cleanupUsecases:v7];
}

uint64_t sub_100071518(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100071530(uint64_t a1)
{
  v2 = [*(a1 + 32) idleUsecases];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v6 = *(*(a1 + 48) + 16);
    goto LABEL_5;
  }

  v4 = [*(a1 + 32) activeUsecases];
  v5 = [v4 containsObject:*(a1 + 40)];

  if (v5)
  {
    v6 = *(*(a1 + 48) + 16);
LABEL_5:

    v6();
    return;
  }

  v7 = [*(a1 + 32) idleUsecases];
  [v7 removeObject:*(a1 + 40)];

  v8 = [*(a1 + 32) activeUsecases];
  [v8 addObject:*(a1 + 40)];

  v9 = *(a1 + 32);
  v10 = [v9 idleUsecases];
  [v9 _cleanupUsecases:v10];

  v11 = *(a1 + 32);
  v12 = [v11 activeUsecases];
  [v11 _cleanupUsecases:v12];
}

void sub_100071758(uint64_t a1)
{
  v2 = [*(a1 + 32) idleUsecases];
  [v2 addObject:*(a1 + 40)];
}

int64_t sub_100072064(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(NSDictionary *)v4 objectForKeyedSubscript:@"majorVersion"];
  v7 = [v6 unsignedIntValue];
  v8 = [(NSDictionary *)v5 objectForKeyedSubscript:@"majorVersion"];
  v9 = [v8 unsignedIntValue];

  if (v7 > v9)
  {
    goto LABEL_2;
  }

  v11 = [(NSDictionary *)v4 objectForKeyedSubscript:@"majorVersion"];
  v12 = [v11 unsignedIntValue];
  v13 = [(NSDictionary *)v5 objectForKeyedSubscript:@"majorVersion"];
  v14 = [v13 unsignedIntValue];

  if (v12 < v14)
  {
    v10 = 1;
    goto LABEL_9;
  }

  v15 = [(NSDictionary *)v4 objectForKeyedSubscript:@"minorVersion"];
  v16 = [v15 unsignedIntValue];
  v17 = [(NSDictionary *)v5 objectForKeyedSubscript:@"minorVersion"];
  v18 = [v17 unsignedIntValue];

  if (v16 > v18)
  {
LABEL_2:
    v10 = -1;
  }

  else
  {
    v19 = [(NSDictionary *)v4 objectForKeyedSubscript:@"minorVersion"];
    v20 = [v19 unsignedIntValue];
    v21 = [(NSDictionary *)v5 objectForKeyedSubscript:@"minorVersion"];
    v22 = [v21 unsignedIntValue];

    if (v20 < v22)
    {
      v10 = 1;
    }

    else
    {
      v10 = -1;
    }
  }

LABEL_9:

  return v10;
}

void sub_100072DDC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [NSNumber numberWithUnsignedInteger:v3];
  [v4 setEngineMajorVersion:v5];

  v6 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  [v4 setEngineMinorVersion:v6];
}

_BYTE *sub_100073AA0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[9] == 1)
  {
    result = [result _setupAdamMetricsManagerIfNeeded];
    v3 = *(*(a1 + 32) + 72);
    if (v3)
    {
      v4 = [*(a1 + 40) data];
      [v3 addSamples:objc_msgSend(v4 numSamples:"bytes") atHostTime:{objc_msgSend(*(a1 + 40), "numSamples"), objc_msgSend(*(a1 + 40), "hostTime")}];

      v5 = *(a1 + 32);
      v6 = *(v5 + 80) + *(v5 + 12);
      result = [*(v5 + 72) sampleCount];
      if (v6 <= result)
      {
        while (1)
        {
          v7 = [*(*(a1 + 32) + 72) copySamplesFrom:*(*(a1 + 32) + 80) to:*(*(a1 + 32) + 80) + *(*(a1 + 32) + 12)];
          v8 = [v7 numSamples];
          v9 = *(a1 + 32);
          if (!v9)
          {
            break;
          }

          [v9 _defaultASBD];
          v10 = *(a1 + 32);
          v11 = HIDWORD(v31);
          if (!v10)
          {
            v13 = 0uLL;
            goto LABEL_9;
          }

          [v10 _defaultASBD];
          v12 = DWORD2(v28);
LABEL_10:
          v14 = [v7 data];
          v15 = [v14 bytes];

          v16 = *(a1 + 32);
          v17 = *(v16 + 64);
          if (v17)
          {
            v18 = v12 * v8;
            v19 = *(v16 + 12);
            v20 = [v7 hostTime];
            v23 = v11;
            v24 = &_mh_execute_header;
            v25 = v18;
            v26 = v15;
            [v17 audioIssueDetectorAnalyzeBuffer:&v23 numFrames:v19 hostTime:v20];
            v16 = *(a1 + 32);
          }

          *(v16 + 80) += *(v16 + 12);

          v21 = *(a1 + 32);
          v22 = *(v21 + 80) + *(v21 + 12);
          result = [*(v21 + 72) sampleCount];
          if (v22 > result)
          {
            return result;
          }
        }

        v11 = 0;
        v32 = 0;
        v13 = 0uLL;
        v30 = 0u;
        v31 = 0u;
LABEL_9:
        v12 = 0;
        v29 = 0;
        v27 = v13;
        v28 = v13;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void sub_100073E08(uint64_t a1)
{
  v2 = [*(a1 + 32) audioStreamId];
  v3 = *(a1 + 40);
  if (v2 == AVVCStreamHandle_HACBuiltInStream)
  {
    *(v3 + 9) = 1;
    v4 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v6 = 136315138;
    v7 = "[CSAttSiriAudioMetricsNode setupWithStreamProviding:]_block_invoke";
    v5 = "%s Setup ADAM...";
  }

  else
  {
    *(v3 + 9) = 0;
    v4 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v6 = 136315138;
    v7 = "[CSAttSiriAudioMetricsNode setupWithStreamProviding:]_block_invoke";
    v5 = "%s Skip setting-up ADAM as it's not secure built-in stream";
  }

  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v5, &v6, 0xCu);
}

void sub_1000741F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10007421C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    type = xpc_get_type(v3);
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = WeakRetained;
    if (type == &_xpc_type_error)
    {
      [WeakRetained _handleError:v4];
    }

    else
    {
      [WeakRetained _handleNewConnection:v4];
    }
  }

  else
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[CSSpeechUaapXPCListener listen]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Recieved nil event in CSSpeechUaaPXPCListener", &v9, 0xCu);
    }
  }
}

void sub_1000744E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100074504(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained clients];
  [v2 removeObject:*(a1 + 32)];
}

void sub_10007498C(id a1)
{
  v1 = objc_alloc_init(CSGestureMonitorPhone);
  v2 = qword_10029E180;
  qword_10029E180 = v1;
}

void sub_100074F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id sub_100074F6C(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _shouldReportBoron];
  result = [*(a1 + 32) _popRemoteVADSignal];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_1000756DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v5 localizedDescription];
    v10 = 136315650;
    v11 = "[CSOpportuneSpeakListener stopListenWithStateReset:completion:]_block_invoke";
    v12 = 1026;
    v13 = a2;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s CSOpportuneSpeakListener received didStop : %{public}d, %{public}@", &v10, 0x1Cu);
  }

  [*(*(a1 + 32) + 88) endAudio];
  *(*(a1 + 32) + 96) = 0;
  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }
}

void sub_100075810(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 32) + 32);
  v5 = a3;
  [v4 stop];
  (*(*(a1 + 40) + 16))();
}

void sub_100075C60(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v5 localizedDescription];
    v10 = 136315650;
    v11 = "[CSOpportuneSpeakListener _startRequestWithCompletion:]_block_invoke";
    v12 = 1026;
    v13 = a2;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s CSOpportuneSpeakListener received didStart : %{public}d, %{public}@", &v10, 0x1Cu);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }
}

void sub_100075D80(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  if (a2)
  {
    if (+[CSUtils supportsUnderstandingOnDevice])
    {
      v5 = [[LBLocalSpeechRecognizerClient alloc] initWithDelegate:0];
      v6 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
      [v5 preheatLocalSpeechRecognitionWithLanguage:v6 source:3];
    }
  }

  else
  {
    [*(*(a1 + 32) + 32) stop];
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_10007626C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

BOOL sub_1000763D0(id a1)
{
  v1 = +[CSHomePodSettingsMonitor sharedInstance];
  v2 = [v1 shouldAudioMonitoringRecording];

  if ((v2 & 1) == 0)
  {
    v3 = CSLogCategoryASV;
    if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSSmartSiriVolumeEnablePolicyHomePod _addSmartSiriVolumeEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolume cannot be resumed since we should not monitor audio", &v5, 0xCu);
    }
  }

  return v2;
}

void sub_100076AF4(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v1 = *(*(a1 + 32) + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        if (objc_opt_respondsToSelector())
        {
          [v6 siriUIDismissed];
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

void sub_100076C7C(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[CSAttendingStatesProvidingProxy dismissAttending]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Sending Siri UI dismissal updates to listeners", buf, 0xCu);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = *(*(a1 + 32) + 32);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 dismissAttendingRequested];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

void sub_100076F80(uint64_t a1)
{
  v3 = [[CSAttendingJarvisHintInfo alloc] initWithOrigin:2 deviceId:*(a1 + 32)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
  [WeakRetained postAttendingJarvisHintWithInfo:v3];
}

void sub_100077128(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[CSAttendingStatesProvidingProxy siriDidPromptWithRootRequestId:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Sending Siri TTS Prompt Done updates to listeners", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(*(a1 + 32) + 40);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 siriPromptDone];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [[CSAttendingTriggerForSiriPromptHintInfo alloc] initWithOrigin:2 reason:1 rootRequestId:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained postAttendingTriggerForSiriPromptHintWithInfo:v9];
}

void sub_100077400(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[CSAttendingStatesProvidingProxy siriPromptWillStartWithRootRequestId:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Sending Siri TTS Prompt Start updates to listeners", buf, 0xCu);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = *(*(a1 + 32) + 40);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 siriPromptWillStart];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

void sub_100077E98(uint64_t a1)
{
  v2 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"_timerCallback" selector:0 userInfo:0 repeats:30.0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;
}

id sub_100077F98(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSMXRingtoneMonitor _timerCallback]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s _timerCallback: Safety timeout. Reset isRingtone", &v4, 0xCu);
  }

  [*(a1 + 32) setIsAnyRingtoneCurrentlyPlaying:0];
  return [*(a1 + 32) _notifyObserversOfRingtoneChange];
}

void sub_100078288(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 objectForKeyedSubscript:kMXSessionProperty_AudioCategory];
    v4 = [*(a1 + 32) objectForKeyedSubscript:kMXSessionProperty_IsActive];
    v5 = [v4 BOOLValue];

    if ([v3 isEqualToString:kMXSessionAudioCategory_Ringtone])
    {
      v6 = CSLogContextFacilityCoreSpeech;
      v7 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
      if (v5)
      {
        if (v7)
        {
          v9 = 136315138;
          v10 = "[CSMXRingtoneMonitor mxSessionMonitorSomeClientWentActive:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Some audio session with Ringtone category went Active.", &v9, 0xCu);
        }

        [*(a1 + 40) _handleStartRingtone];
      }

      else
      {
        if (v7)
        {
          v9 = 136315138;
          v10 = "[CSMXRingtoneMonitor mxSessionMonitorSomeClientWentActive:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Some audio session with Ringtone category went Inactive.", &v9, 0xCu);
        }

        [*(a1 + 40) _handleEndRingtone];
      }
    }
  }

  else
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[CSMXRingtoneMonitor mxSessionMonitorSomeClientWentActive:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Received nil notification. Resetting ringtone activity.", &v9, 0xCu);
    }

    [*(a1 + 40) _handleEndRingtone];
  }
}

void sub_100078678(id a1)
{
  v1 = objc_alloc_init(CSMXRingtoneMonitor);
  v2 = qword_10029E190;
  qword_10029E190 = v1;
}

void sub_1000788A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v4 = objc_loadWeakRetained((*(a1 + 32) + 16));
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v14 = objc_loadWeakRetained((*(a1 + 32) + 16));
      v6 = *(a1 + 32);
      [*(a1 + 40) silenceFramesCountMs];
      v8 = v7;
      [*(a1 + 40) silenceProbability];
      v10 = v9;
      [*(a1 + 40) silenceDurationMs];
      v12 = v11;
      [*(a1 + 40) processedAudioMs];
      [v14 osdProvider:v6 silenceFramesCountMs:*(*(a1 + 32) + 10) silenceProbability:*(*(a1 + 32) + 80) silenceDurationMs:v8 processedAudioMs:v10 deviceHasBoronEnabled:v12 latestBoronActiveSampleCount:v13];
    }
  }
}

void sub_100078B64(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 72))
  {
    if ((*(v1 + 8) & 1) == 0)
    {
      *(v1 + 8) = 1;
      *(*(a1 + 32) + 64) = [*(a1 + 40) startSampleCount];
      v3 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(*(a1 + 32) + 64);
        v17 = 136315394;
        v18 = "[CSAttSiriOSDProvider addAudio:]_block_invoke";
        v19 = 2048;
        v20 = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s firstAudioStartSampleCount: %llu", &v17, 0x16u);
      }

      v1 = *(a1 + 32);
    }

    ++*(v1 + 56);
    v5 = [*(a1 + 32) osdAnalyzer];

    if (v5)
    {
      v6 = [*(a1 + 40) numSamples];
      if (v6 >= 1)
      {
        v7 = v6;
        v8 = 0;
        do
        {
          if (v7 >= 0x280)
          {
            v9 = 640;
          }

          else
          {
            v9 = v7;
          }

          v10 = [*(a1 + 40) subChunkFrom:v8 numSamples:v9 forChannel:0];
          v11 = [v10 data];
          if (+[CSConfig inputRecordingIsFloat])
          {
            v12 = [v10 data];
            v13 = [CSFLPCMTypeConverter convertToShortLPCMBufFromFloatLPCMBuf:v12];

            v11 = v13;
          }

          v14 = [*(a1 + 32) osdAnalyzer];
          [v14 addAudio:v11 numSamples:{objc_msgSend(v10, "numSamples")}];

          v7 -= v9;
          v8 += v9;
          [*(a1 + 32) setNumSamplesProcessed:{objc_msgSend(*(a1 + 32), "numSamplesProcessed") + v9}];
        }

        while (v7 > 0);
      }

      *(*(a1 + 32) + 10) = [*(a1 + 40) remoteVADAvailable];
      v15 = *(a1 + 32);
      if (v15[9] == 1 && v15[10] == 1)
      {
        [v15 _processBoron:*(a1 + 40)];
      }
    }

    else if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * *(*(a1 + 32) + 56), 2) <= 0xCCCCCCCCCCCCCCCuLL)
    {
      v16 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v17 = 136315138;
        v18 = "[CSAttSiriOSDProvider addAudio:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s skip audio since osdAnalyzer is nil", &v17, 0xCu);
      }
    }
  }
}

uint64_t sub_100078F50(uint64_t a1)
{
  [*(a1 + 32) _getSampleCountByProcessedAudioInMs:*(a1 + 48)];
  v2 = [*(a1 + 32) _getSampleCountByProcessedAudioInMs:*(a1 + 48) + *(a1 + 56)];
  [*(a1 + 32) _ownVADHasSpeechDetectedFromStartSampleCount:v2 toEndSampleCount:&v2[*(a1 + 64)]];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t sub_100079080(uint64_t a1)
{
  [*(a1 + 32) _getSampleCountByProcessedAudioInMs:*(a1 + 48)];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

id sub_100079150(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSAttSiriOSDProvider stopAnalysisAndReset]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  *(*(a1 + 32) + 72) = 0;
  v3 = [*(a1 + 32) osdAnalyzer];
  [v3 endAudio];

  return [*(a1 + 32) setOsdAnalyzer:0];
}

void sub_10007929C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 72);
  if (v2)
  {
    *(v1 + 72) = v2 - 1;
    v4 = *(a1 + 32);
    v5 = v4[9];
    v6 = CSLogContextFacilityCoreSpeech;
    v7 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v9 = 136315394;
        v10 = "[CSAttSiriOSDProvider stop]_block_invoke";
        v11 = 2048;
        v12 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s OSD cannot stop, total streaming count now: %lu", &v9, 0x16u);
      }
    }

    else
    {
      if (v7)
      {
        v9 = 136315138;
        v10 = "[CSAttSiriOSDProvider stop]_block_invoke";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s stop streaming", &v9, 0xCu);
        v4 = *(a1 + 32);
      }

      v8 = [v4 osdAnalyzer];
      [v8 endAudio];

      [*(a1 + 32) setOsdAnalyzer:0];
      *(*(a1 + 32) + 12) = 0;
      *(*(a1 + 32) + 80) = -1;
    }
  }
}

void sub_10007951C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v8 = v6;
      v9 = [v5 localizedDescription];
      v10 = 136315394;
      v11 = "[CSAttSiriOSDProvider start:useOwnVoiceVAD:completion:]_block_invoke";
      v12 = 2114;
      v13 = v9;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s OSD provider failed to start with error : %{public}@", &v10, 0x16u);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

void sub_100079638(uint64_t a1)
{
  *(*(a1 + 32) + 9) = *(a1 + 48);
  [*(a1 + 32) _resetBoron];
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  if (v3)
  {
    *(v2 + 72) = v3 + 1;
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 72);
      v16 = 136315394;
      v17 = "[CSAttSiriOSDProvider start:useOwnVoiceVAD:completion:]_block_invoke";
      v18 = 2048;
      v19 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s OSD is already streaming, total streaming count now: %lu", &v16, 0x16u);
    }
  }

  else
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315138;
      v17 = "[CSAttSiriOSDProvider start:useOwnVoiceVAD:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s start streaming", &v16, 0xCu);
      v2 = *(a1 + 32);
    }

    *(v2 + 72) = 1;
    *(*(a1 + 32) + 48) = 0;
    *(*(a1 + 32) + 56) = 0;
    *(*(a1 + 32) + 64) = 0;
    *(*(a1 + 32) + 8) = 0;
    v7 = [OSDAnalyzer alloc];
    v8 = +[CSEndpointerAssetManager sharedManager];
    v9 = [v8 getCurrentOSDAsset];
    v10 = [v9 path];
    +[CSConfig inputRecordingSampleRate];
    v12 = [v7 initWithConfigFile:v10 sampleRate:v11 context:0 queue:*(*(a1 + 32) + 32) delegate:?];
    [*(a1 + 32) setOsdAnalyzer:v12];
  }

  v13 = [*(a1 + 32) osdAnalyzer];

  v14 = *(a1 + 40);
  if (v13)
  {
    (*(v14 + 16))(v14, 1, 0);
  }

  else
  {
    v15 = [NSError errorWithDomain:CSErrorDomain code:2109 userInfo:0];
    (*(v14 + 16))(v14, 0, v15);
  }
}

double sub_10007A74C(uint64_t a1)
{
  result = *(*(a1 + 32) + 160);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10007ABA0(double *a1)
{
  v1 = *(a1 + 4);
  if ((v1[10] & 1) == 0)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 7);
      v5 = *(a1 + 8);
      v7 = *(a1 + 5);
      v6 = *(a1 + 6);
      v8 = *(a1 + 9);
      v9 = *(a1 + 10);
      v10 = *(a1 + 11);
      *buf = 136316930;
      v29 = "[CSAttSiriSpeechRecognitionNode localSpeechRecognizer:didProduceEndpointFeaturesWithWordCount:trailingSilenceDuration:eosLikelihood:pauseCounts:silencePosterior:processedAudioDurationInMilliseconds:acousticEndpointerScore:]_block_invoke";
      v30 = 2048;
      v31 = v6;
      v32 = 2048;
      v33 = v4;
      v34 = 2048;
      v35 = v5;
      v36 = 2112;
      v37 = v7;
      v38 = 2048;
      v39 = v8;
      v40 = 2048;
      v41 = v9;
      v42 = 2048;
      v43 = v10;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s wordCount = %ld, trailingSilenceDuration = %ld, eosLikelihood = %f, pauseCounts = %@, silencePosterior = %f, processedAudioDurationInMilliseconds = %ld, acousticEndpointerScore = %f", buf, 0x52u);
      v1 = *(a1 + 4);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = [v1 endpointFeatureReceivers];
    v11 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          v16 = *(a1 + 6);
          v17 = *(a1 + 7);
          v18 = a1[8];
          v19 = a1[9];
          v20 = *(a1 + 5);
          v21 = [LBLocalSpeechRecognitionSettings getTaskStringFromSpeechRecognitionSettings:*(*(a1 + 4) + 192)];
          [v15 didReceiveAsrFeaturesWithWordCount:v16 trailingSilenceDuration:v17 eosLikelihood:v20 pauseCounts:v21 silencePosterior:*(a1 + 10) taskName:0 processedAudioDurationInMilliseconds:v18 fromServer:v19 acousticEndpointerScore:a1[11]];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
    }
  }
}

void sub_10007AEAC(uint64_t a1)
{
  if (*(*(a1 + 32) + 120) == *(a1 + 40))
  {
    v3 = *(a1 + 48);
    v4 = CSLogContextFacilityCoreSpeech;
    if (v3 != 0.0 && os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v45 = "[CSAttSiriSpeechRecognitionNode localSpeechRecognizer:didCompletionRecognitionWithStatistics:error:]_block_invoke";
      v46 = 2114;
      v47 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Speech recognition encountered error: %{public}@", buf, 0x16u);
      v4 = CSLogContextFacilityCoreSpeech;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v45 = "[CSAttSiriSpeechRecognitionNode localSpeechRecognizer:didCompletionRecognitionWithStatistics:error:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Invalidating local speech recognizer for finish", buf, 0xCu);
    }

    v5 = *(*(a1 + 32) + 176);
    v6 = *(a1 + 32);
    v7 = v6[26];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v8 = [v6 recognitionTaskCompletionReceivers];
    v9 = [v8 countByEnumeratingWithState:&v40 objects:v52 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v41;
      do
      {
        v12 = 0;
        do
        {
          if (*v41 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v40 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            [v13 didCompleteRecognitionTaskWithStatistics:*(a1 + 56) requestId:v5 endpointMode:v7 error:*(a1 + 48)];
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v40 objects:v52 count:16];
      }

      while (v10);
    }

    [*(a1 + 32) _invalidateLocalSpeechRecognizer];
    v14 = *(*(a1 + 32) + 352);
    v15 = *(*(a1 + 32) + 344);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10007B41C;
    v36[3] = &unk_100250F40;
    v16 = v14;
    v37 = v16;
    v17 = v5;
    v18 = *(a1 + 32);
    v38 = v17;
    v39 = v18;
    [v15 endAudioWithCancellation:0 completion:v36];
    v19 = *(a1 + 32);
    if (*(v19 + 12) == 1)
    {
      v20 = +[CESRDictationOnDeviceSampling sharedManager];
      [v20 incrementSampledRequestCount];

      v19 = *(a1 + 32);
    }

    v21 = [*(v19 + 304) estimatedUserSpeakingEndedHostTime];
    v22 = *(a1 + 32);
    if ((*(v22 + 11) & 1) == 0)
    {
      v23 = *(v22 + 296);
      if (v23)
      {
        v24 = v21;
        if (v21)
        {
          v25 = mach_continuous_time();
          [CSFTimeUtils hostTimeToTimeInterval:v23 - v25 - v24 + mach_absolute_time()];
          v27 = v26;
          v28 = [CSFTimeUtils absoluteHostTimeToContinuousHostTime:v24];
          v29 = os_signpost_id_generate(CSLogContextFacilityCoreSpeech);
          v30 = CSLogContextFacilityCoreSpeech;
          v31 = v30;
          if (v29 - 1 > 0xFFFFFFFFFFFFFFFDLL)
          {

            v32 = CSLogContextFacilityCoreSpeech;
          }

          else
          {
            if (os_signpost_enabled(v30))
            {
              *buf = 134349570;
              v45 = v28;
              v46 = 2080;
              v47 = COERCE_DOUBLE("SiriX");
              v48 = 2080;
              v49 = "enableTelemetry=YES";
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, OS_SIGNPOST_INTERVAL_BEGIN, v29, "ondevice_EagerCPL", "%{public, signpost.description:begin_time}llu, %s %s", buf, 0x20u);
            }

            v32 = CSLogContextFacilityCoreSpeech;
            if (os_signpost_enabled(v32))
            {
              v33 = *(*(a1 + 32) + 296);
              *buf = 134349570;
              v45 = v33;
              v46 = 2080;
              v47 = COERCE_DOUBLE("SiriX");
              v48 = 2080;
              v49 = "enableTelemetry=YES";
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_INTERVAL_END, v29, "ondevice_EagerCPL", "%{public, signpost.description:end_time}llu, %s %s", buf, 0x20u);
            }
          }

          v34 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
          {
            v35 = *(*(a1 + 32) + 296);
            *buf = 136315906;
            v45 = "[CSAttSiriSpeechRecognitionNode localSpeechRecognizer:didCompletionRecognitionWithStatistics:error:]_block_invoke";
            v46 = 2050;
            v47 = v27 * 1000.0;
            v48 = 2050;
            v49 = v28;
            v50 = 2050;
            v51 = v35;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%s eagerCPL time interval: %{public}f, userSpeakingEndedHostTime: %{public}llu, lastEndpointEagerResultTime: %{public}llu", buf, 0x2Au);
          }
        }
      }
    }
  }

  else
  {
    v1 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v45 = "[CSAttSiriSpeechRecognitionNode localSpeechRecognizer:didCompletionRecognitionWithStatistics:error:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s Ignoring completion from previous recognizer!", buf, 0xCu);
    }
  }
}

void sub_10007B41C(uint64_t a1, int a2, void *a3, void *a4)
{
  v13 = a3;
  v7 = a4;
  if (a2)
  {
    if (v13)
    {
      v8 = [NSLocale localeWithLocaleIdentifier:*(*(a1 + 48) + 168)];
      v9 = [v13 stringByDeletingPathExtension];
      v10 = [v9 stringByAppendingPathExtension:@"book"];

      v11 = +[CESRSpeechProfileDispatcher sharedDispatcher];
      [v11 snapshotBookmarksForLocale:v8 toPath:v10];
    }

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  [*(a1 + 32) logSamplingEventStatus:v12 requestId:*(a1 + 40) error:v7];
}

void sub_10007BB74(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 120) != *(a1 + 40))
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v11 = 136315138;
    v12 = "[CSAttSiriSpeechRecognitionNode localSpeechRecognizer:didRecognizePackage:withMetadata:]_block_invoke";
    v3 = "%s Ignoring completion from previous recognizer!";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, v3, &v11, 0xCu);
    return;
  }

  if (([*(v1 + 192) enableVoiceCommands] & 1) == 0)
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v11 = 136315138;
    v12 = "[CSAttSiriSpeechRecognitionNode localSpeechRecognizer:didRecognizePackage:withMetadata:]_block_invoke";
    v3 = "%s Ignoring completion with metadatapackage as enable condition not satisfied!";
    goto LABEL_13;
  }

  v5 = [*(a1 + 48) isFinal];
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v5)
    {
      v7 = @"YES";
    }

    v11 = 136315394;
    v12 = "[CSAttSiriSpeechRecognitionNode localSpeechRecognizer:didRecognizePackage:withMetadata:]_block_invoke";
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s isFinal package : %{public}@", &v11, 0x16u);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = v8[22];
  if (v5)
  {
    [v8 _handleDidRecognizedFinalSpeechPackage:v9 requestId:v10 metadata:*(a1 + 56)];
  }

  else
  {
    [v8 _handleDidRecognizedSpeechPackageForEagerRecognitionCandidate:v9 requestId:v10 rcId:v8[23] metadata:*(a1 + 56)];
    ++*(*(a1 + 32) + 184);
  }
}

void sub_10007BE14(uint64_t a1)
{
  if (*(*(a1 + 32) + 120) == *(a1 + 40))
  {
    v3 = [*(a1 + 48) isFinal];
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = @"NO";
      if (v3)
      {
        v5 = @"YES";
      }

      v10 = 136315394;
      v11 = "[CSAttSiriSpeechRecognitionNode localSpeechRecognizer:didRecognizePackage:]_block_invoke";
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s isFinal package : %{public}@", &v10, 0x16u);
    }

    if (!*(*(a1 + 32) + 320))
    {
      *(*(a1 + 32) + 320) = mach_continuous_time();
    }

    [CSAttSiriSpeechPackageHelper getFirstTokenSilenceStartFromSpeechPackage:*(a1 + 48)];
    *(*(a1 + 32) + 328) = v6;
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v9 = v7[22];
    if (v3)
    {
      [v7 _handleDidRecognizedFinalSpeechPackage:v8 requestId:v9 metadata:0];
    }

    else
    {
      [v7 _handleDidRecognizedSpeechPackageForEagerRecognitionCandidate:v8 requestId:v9 rcId:v7[23] metadata:0];
      ++*(*(a1 + 32) + 184);
    }
  }

  else
  {
    v1 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[CSAttSiriSpeechRecognitionNode localSpeechRecognizer:didRecognizePackage:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s Ignoring completion from previous recognizer!", &v10, 0xCu);
    }
  }
}

void sub_10007C090(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 120) == *(a1 + 40))
  {
    if (*(v1 + 144) == 2)
    {
      v4 = *(v1 + 176);
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = [*(a1 + 32) resultCandidateReceivers];
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
        do
        {
          v9 = 0;
          do
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v11 + 1) + 8 * v9);
            if (objc_opt_respondsToSelector())
            {
              [v10 didReceiveFinalResultCandidateWithRequestId:v4 speechPackage:*(a1 + 48)];
            }

            v9 = v9 + 1;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v7);
      }
    }
  }

  else
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v17 = "[CSAttSiriSpeechRecognitionNode localSpeechRecognizer:didRecognizeFinalResultCandidatePackage:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Ignoring completion from previous recognizer!", buf, 0xCu);
    }
  }
}

void sub_10007C324(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 120) == *(a1 + 40))
  {
    if (*(v1 + 144) == 2)
    {
      v4 = *(v1 + 176);
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = [*(a1 + 32) resultCandidateReceivers];
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
        do
        {
          v9 = 0;
          do
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v11 + 1) + 8 * v9);
            if (objc_opt_respondsToSelector())
            {
              [v10 didReceiveVoiceCommandCandidateWithRequestId:v4 speechPackage:*(a1 + 48) metadata:*(a1 + 56)];
            }

            v9 = v9 + 1;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v7);
      }
    }
  }

  else
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v17 = "[CSAttSiriSpeechRecognitionNode localSpeechRecognizer:didRecognizeVoiceCommandCandidatePackage:withMetadata:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Ignoring completion from previous recognizer!", buf, 0xCu);
    }
  }
}

void sub_10007C580(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 120) == *(a1 + 40))
  {
    [*(v1 + 192) maximumRecognitionDuration];
    if (v4 > 0.0)
    {
      v5 = v4;
      v6 = *(a1 + 48);
      if (v6 >= v4)
      {
        v7 = *(a1 + 32);
        if (v7[9] == 1)
        {
          v8 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
          {
            v9 = 136315650;
            v10 = "[CSAttSiriSpeechRecognitionNode localSpeechRecognizer:didProcessAudioDuration:]_block_invoke";
            v11 = 2050;
            v12 = v5;
            v13 = 2050;
            v14 = v6;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Exceeding max local speech recognition duration (%{public}f) : %{public}f, force endbooking the ASR task", &v9, 0x20u);
            v7 = *(a1 + 32);
          }

          [v7 _handleStopSpeechRecognitionTaskIfNeeded:0];
        }
      }
    }
  }

  else
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[CSAttSiriSpeechRecognitionNode localSpeechRecognizer:didProcessAudioDuration:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Ignoring completion from previous recognizer!", &v9, 0xCu);
    }
  }
}

void sub_10007C7E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 120) != *(a1 + 40))
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 136315138;
    v20 = "[CSAttSiriSpeechRecognitionNode localSpeechRecognizer:didRecognizePartialPackage:withMetadata:]_block_invoke";
    v3 = "%s Ignoring completion from previous recognizer!";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, v3, buf, 0xCu);
    return;
  }

  if (([*(v1 + 192) enableVoiceCommands] & 1) == 0)
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 136315138;
    v20 = "[CSAttSiriSpeechRecognitionNode localSpeechRecognizer:didRecognizePartialPackage:withMetadata:]_block_invoke";
    v3 = "%s Ignoring completion with metadatapackage as enable condition not satisfied!";
    goto LABEL_18;
  }

  v5 = *(a1 + 32);
  if (*(v5 + 144) == 2)
  {
    v6 = *(v5 + 176);
    v7 = *(*(a1 + 32) + 168);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [*(a1 + 32) speechRecognitionReceivers];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v14 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v13 didReceivePartialResultPackageWithRequestId:v6 language:v7 package:*(a1 + 48) metadata:*(a1 + 56)];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

void sub_10007CAE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 120) != *(a1 + 40))
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 136315138;
    v20 = "[CSAttSiriSpeechRecognitionNode localSpeechRecognizer:didRecognizeTokens:withMetadata:]_block_invoke";
    v3 = "%s Ignoring completion from previous recognizer!";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, v3, buf, 0xCu);
    return;
  }

  if (([*(v1 + 192) enableVoiceCommands] & 1) == 0)
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 136315138;
    v20 = "[CSAttSiriSpeechRecognitionNode localSpeechRecognizer:didRecognizeTokens:withMetadata:]_block_invoke";
    v3 = "%s Ignoring completion with metadatapackage as enable condition not satisfied!";
    goto LABEL_18;
  }

  v5 = *(a1 + 32);
  if (*(v5 + 144) == 2)
  {
    v6 = *(v5 + 176);
    v7 = *(*(a1 + 32) + 168);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [*(a1 + 32) speechRecognitionReceivers];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v14 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v13 didReceivePartialResultWithRequestId:v6 language:v7 tokens:*(a1 + 48) metadata:*(a1 + 56)];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

void sub_10007CDD0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 120) == *(a1 + 40))
  {
    if (!*(v1 + 320))
    {
      *(*(a1 + 32) + 320) = mach_continuous_time();
      v1 = *(a1 + 32);
    }

    if (*(v1 + 144) == 2)
    {
      v4 = *(v1 + 176);
      v5 = *(*(a1 + 32) + 168);
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v6 = [*(a1 + 32) speechRecognitionReceivers];
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v13;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v12 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v11 didReceivePartialResultWithRequestId:v4 language:v5 tokens:*(a1 + 48)];
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v8);
      }
    }
  }

  else
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v18 = "[CSAttSiriSpeechRecognitionNode localSpeechRecognizer:didRecognizeTokens:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Ignoring completion from previous recognizer!", buf, 0xCu);
    }
  }
}

void sub_10007D388(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _releaseRecordingTransactionIfNeededWithToken:*(a1 + 32)];
}

id *sub_10007E940(id *result, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    return [result[4] logSamplingEventStatus:1 requestId:result[5] error:a3];
  }

  return result;
}

void sub_10007E95C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 localizedDescription];
    v10 = [v5 description];
    *buf = 136315650;
    v21 = "[CSAttSiriSpeechRecognitionNode _startLocalSpeechRecognizerIfNeeded]_block_invoke";
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s didStart local speech recognition with error :%@, model properties : %@", buf, 0x20u);
  }

  if (v6)
  {
    v11 = *(a1 + 32);
    v12 = *(v11 + 80);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007EB50;
    block[3] = &unk_100253C20;
    block[4] = v11;
    dispatch_async(v12, block);
  }

  v13 = [*(a1 + 32) localSpeechRecognizerQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10007EC34;
  v16[3] = &unk_100253C48;
  v14 = *(a1 + 32);
  v17 = v6;
  v18 = v14;
  v15 = v6;
  dispatch_async(v13, v16);
}

id sub_10007EB50(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[CSAttSiriSpeechRecognitionNode _startLocalSpeechRecognizerIfNeeded]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Setting local speech recognizer state to [Idle] as not able to start local ASR", &v4, 0xCu);
  }

  [*(a1 + 32) _setLocalSpeechRecognizerState:0];
  [*(a1 + 32) _clearAudioProcessWaitingBufferIfNeeded];
  [*(*(a1 + 32) + 256) endAudio];
  return [*(*(a1 + 32) + 344) endAudioWithCancellation:1 completion:0];
}

void sub_10007EC34(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) speechRecognitionReceivers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 didStartRecognitionRequest:*(*(a1 + 40) + 176) successfully:v2 == 0 isRecognitionModeClassic:objc_msgSend(*(a1 + 40) error:{"speechRecognitionMode") == 1, *(a1 + 32)}];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

void sub_10007F364(uint64_t a1)
{
  [*(*(a1 + 32) + 120) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  *(v2 + 120) = 0;

  *(*(a1 + 32) + 160) = 0;
  v4 = [*(a1 + 40) siriSessionUUID];
  v5 = *(a1 + 32);
  v6 = *(v5 + 232);
  *(v5 + 232) = v4;

  [*(a1 + 32) _stopPreviousRecognitionTaskIfNeededWithNewRequestId:*(*(a1 + 32) + 232)];
  *(*(a1 + 32) + 11) = [*(a1 + 40) disableEndpointer];
  objc_storeStrong((*(a1 + 32) + 200), *(a1 + 48));
  [*(a1 + 32) _setRecordingStartTimeWithStartStreamOption:*(a1 + 40) audioRecordContext:*(a1 + 48) voiceTriggerInfo:*(a1 + 56)];
  if ([*(a1 + 48) isVoiceTriggered])
  {
    [*(a1 + 32) _adjustEndpointStartTimeWithVoiceTriggerEvent:*(a1 + 56)];
  }

  v7 = [*(a1 + 32) _shouldDisableLocalSpeechRecognizerWithOption:*(a1 + 40) audioRecordContext:*(a1 + 48)];
  v8 = *(a1 + 32);
  if (v7)
  {
    [v8 _setLocalSpeechRecognizerState:3];
  }

  else if (v8[18] == 3)
  {
    v19 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "[CSAttSiriSpeechRecognitionNode prepareToStartSpeechRequestWithStartStreamOption:audioRecordContext:voiceTriggerInfo:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Local speech recognizer disabled, ignore prepare", buf, 0xCu);
    }
  }

  else if (([*(a1 + 40) disablePrewarmLocalAsrAtStartRecording] & 1) == 0)
  {
    [*(a1 + 32) _preheatWithLanguage:0 preheatSource:0];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [*(a1 + 32) speechRecognitionReceivers];
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          v15 = *(a1 + 32);
          v16 = *(v15 + 200);
          v17 = *(v15 + 232);
          v18 = [*(a1 + 40) requestMHUUID];
          [v14 didPrepareRecognitionWithAudioContext:v16 requestId:v17 mhId:v18 voiceTriggerInfo:*(a1 + 56)];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }
}

id sub_10007F88C(uint64_t a1)
{
  *(*(a1 + 32) + 160) = 0;
  *(*(a1 + 32) + 9) = 1;
  *(*(a1 + 32) + 208) = 0;
  v2 = +[NSUUID UUID];
  v3 = *(a1 + 32);
  v4 = *(v3 + 240);
  *(v3 + 240) = v2;

  v5 = [[CSOSTransaction alloc] initWithDescription:@"ASRNode Recording Transaction"];
  v6 = *(a1 + 32);
  v7 = *(v6 + 224);
  *(v6 + 224) = v5;

  if (([*(*(a1 + 32) + 200) isVoiceTriggered] & 1) == 0)
  {
    *(*(a1 + 32) + 272) = 0;
    *(*(a1 + 32) + 280) = 0;
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      v9 = *(*(a1 + 32) + 200);
      v10 = v8;
      v11 = [v9 description];
      v20 = 136315394;
      v21 = "[CSAttSiriSpeechRecognitionNode start]_block_invoke";
      v22 = 2114;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Reset endpointStart and audioSampleCountToSkip since recordContext is %{public}@", &v20, 0x16u);
    }
  }

  [*(a1 + 32) _clearAudioProcessWaitingBufferIfNeeded];
  v12 = *(*(a1 + 32) + 144);
  v13 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315394;
    v21 = "[CSAttSiriSpeechRecognitionNode start]_block_invoke";
    v22 = 1024;
    LODWORD(v23) = (v12 & 0xFFFFFFFFFFFFFFFBLL) == 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s shouldResetWaitingBuffer:%u", &v20, 0x12u);
  }

  if ((v12 | 4) != 4)
  {
    return [*(a1 + 32) _startLocalSpeechRecognizerIfNeeded];
  }

  v14 = [CSAudioProcessWaitingBuffer alloc];
  LODWORD(v15) = 1114636288;
  v16 = [v14 initWithUUID:*(*(a1 + 32) + 232) waitingBufferMaxLengthInSec:v15];
  v17 = *(a1 + 32);
  v18 = *(v17 + 152);
  *(v17 + 152) = v16;

  return [*(a1 + 32) _setLocalSpeechRecognizerState:1];
}

void sub_10007FC24(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == 2)
  {
    *(*(a1 + 32) + 10) = 1;
  }

  else if (v2 == 1)
  {
    v3 = *(*(a1 + 32) + 288);
    v4 = [NSNumber numberWithDouble:*(a1 + 48)];
    [v3 addObject:v4];

    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v7 = *(*(a1 + 32) + 288);
      v9 = 136315650;
      v10 = "[CSAttSiriSpeechRecognitionNode attSiriNode:didDetectEndpointEventAtTime:eventType:withMetrics:usesAutomaticEndpointing:]_block_invoke";
      v11 = 2048;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Got def EP fire at time %f, adding to list: %@", &v9, 0x20u);
    }
  }

  else
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315138;
      v10 = "[CSAttSiriSpeechRecognitionNode attSiriNode:didDetectEndpointEventAtTime:eventType:withMetrics:usesAutomaticEndpointing:]_block_invoke";
      _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "%s didDetectEndpointEventAtTime should only be called from Default or Relaxed endpoint type", &v9, 0xCu);
    }
  }
}

id sub_10007FE58(uint64_t a1)
{
  *(*(a1 + 32) + 10) = 1;
  v2 = *(*(a1 + 32) + 304);
  [*(a1 + 40) totalAudioRecorded];
  [v2 setEndpointTimeInMs:?];
  result = [*(*(a1 + 32) + 304) setEndpointBufferHostTime:{objc_msgSend(*(a1 + 40), "endpointBufferHostTime")}];
  if (*(a1 + 48) == 1)
  {
    *(*(a1 + 32) + 208) = 1;
  }

  return result;
}

id sub_10007FF3C(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSAttSiriSpeechRecognitionNode attSiriAudioSrcNodeDidStop:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  return [*(a1 + 32) _handleStopSpeechRecognitionTaskIfNeeded:0];
}

void sub_10008008C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 9) == 1)
  {
    v3 = *(v1 + 144);
    if (v3 == 2)
    {
      v8 = *(a1 + 40);
      v9 = [NSNumber numberWithUnsignedLongLong:mach_continuous_time()];
      [v1 _processAudioChunk:v8 withReadyTimestamp:?];
    }

    else if (v3 == 1)
    {
      v4 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v11 = "[CSAttSiriSpeechRecognitionNode attSiriAudioSrcNodeLPCMRecordBufferAvailable:audioChunk:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Request Dispatcher hasn't asked to start local ASR yet, cache the audio", buf, 0xCu);
        v1 = *(a1 + 32);
      }

      v5 = *(v1 + 152);
      v6 = *(a1 + 40);
      v7 = [NSNumber numberWithUnsignedLongLong:mach_continuous_time()];
      [v5 addAudioChunk:v6 withBufferedTimestamp:v7];
    }
  }
}

void *sub_100080290(void *result)
{
  v1 = result;
  if (!*(result[4] + 312))
  {
    result = mach_continuous_time();
    *(v1[4] + 312) = result;
  }

  if ((v1[5] & 1) == 0)
  {
    v2 = v1[4];

    return [v2 _handleStopSpeechRecognitionTaskIfNeeded:0];
  }

  return result;
}

void *sub_1000803B4(void *result)
{
  if (result[4])
  {
    if (result[5])
    {
      return [CoreEmbeddedSpeechAnalyzer sendVisualContextAndCorrectionsInfo:"sendVisualContextAndCorrectionsInfo:interactionIdentifier:" interactionIdentifier:?];
    }
  }

  return result;
}

void sub_100080498(void *a1)
{
  if (+[CSUtils isASRViaSpeechAPIEnabled])
  {
    if (a1[4] && a1[5])
    {

      [CoreEmbeddedSpeechAnalyzer sendSpeechCorrectionInfo:"sendSpeechCorrectionInfo:interactionIdentifier:" interactionIdentifier:?];
    }
  }

  else
  {
    v2 = [[CoreEmbeddedSpeechRecognizer alloc] initWithDelegate:a1[6] instanceUUID:&CoreEmbeddedSpeechRecognizerInstanceUUIDInteractive];
    [v2 sendSpeechCorrectionInfo:a1[4] interactionIdentifier:a1[5]];
    [v2 invalidate];
  }
}

void sub_1000807AC(uint64_t a1)
{
  v2 = [*(a1 + 32) _interactiveLocalSpeechRecognizer];
  [v2 updateVoiceCommandContextWithPrefixText:*(a1 + 40) postfixText:*(a1 + 48) selectedText:*(a1 + 56) disambiguationActive:*(a1 + 64) cursorInVisibleText:*(a1 + 72) favorCommandSuppression:*(a1 + 80) abortCommandSuppression:*(a1 + 88) undoEvent:*(a1 + 96)];
}

void sub_1000809A0(uint64_t a1)
{
  v2 = [*(a1 + 32) _interactiveLocalSpeechRecognizer];
  [v2 resumeRecognitionWithPrefixText:*(a1 + 40) postfixText:*(a1 + 48) selectedText:*(a1 + 56)];
}

void sub_100080B18(uint64_t a1)
{
  v1 = [*(a1 + 32) _interactiveLocalSpeechRecognizer];
  [v1 pauseRecognition];
}

void sub_1000813E0(uint64_t a1)
{
  v2 = [[CSOSTransaction alloc] initWithDescription:@"SRD ASR Result Delivery Transaction"];
  v3 = *(a1 + 32);
  v4 = *(v3 + 216);
  *(v3 + 216) = v2;

  v5 = [*(a1 + 40) requestId];
  [*(a1 + 32) _stopPreviousRecognitionTaskIfNeededWithNewRequestId:v5];
  v6 = [*(a1 + 40) requestId];
  v7 = *(a1 + 32);
  v8 = *(v7 + 176);
  *(v7 + 176) = v6;

  if (!*(*(a1 + 32) + 176))
  {
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v39 = "[CSAttSiriSpeechRecognitionNode startSpeechRecognitionResultsWithSettings:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Received nill requestId, generate requestId under corespeechd", buf, 0xCu);
    }

    v10 = +[NSUUID UUID];
    v11 = [v10 UUIDString];
    v12 = *(a1 + 32);
    v13 = *(v12 + 176);
    *(v12 + 176) = v11;

    v14 = +[CSDiagnosticReporter sharedInstance];
    [v14 submitASRIssueReport:kCSDiagnosticReporterReceivedInvalidRequestId];
  }

  v15 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 40);
    v17 = v15;
    v18 = [v16 description];
    *buf = 136315394;
    v39 = "[CSAttSiriSpeechRecognitionNode startSpeechRecognitionResultsWithSettings:]_block_invoke";
    v40 = 2114;
    v41 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "KeyLog - %s Settings : %{public}@", buf, 0x16u);
  }

  objc_storeStrong((*(a1 + 32) + 192), *(a1 + 40));
  v19 = [*(*(a1 + 32) + 192) speechRecognitionTask];
  v20 = v19;
  if (v19 >= 0xB)
  {
    v22 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v39 = "[CSAttSiriSpeechRecognitionNode startSpeechRecognitionResultsWithSettings:]_block_invoke";
      v40 = 2050;
      v41 = v20;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s Unsupported speech recognizer task : %{public}lu", buf, 0x16u);
    }

    v21 = &CoreEmbeddedSpeechRecognizerTaskSearchOrMessaging;
  }

  else
  {
    v21 = *(&off_100250FB0 + v19);
  }

  objc_storeStrong((*(a1 + 32) + 136), *v21);
  v23 = *(a1 + 48);
  if ((v23 - 1) <= 1)
  {
    v24 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v39 = "[CSAttSiriSpeechRecognitionNode startSpeechRecognitionResultsWithSettings:]_block_invoke";
      v40 = 2048;
      v41 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s speechRecognitionMode = %lu; Force disabling local speech recognition", buf, 0x16u);
    }

    v25 = *(a1 + 32);
    v26 = [*(a1 + 40) requestId];
    [v25 _disableLocalSpeechRecognitionForRequestId:v26 force:1];

    v23 = *(a1 + 48);
  }

  if ((v23 - 1) >= 2)
  {
    if (!v23)
    {
      [*(a1 + 32) _startDeliverLocalSpeechRecognitionResultsWithRequestId:*(*(a1 + 32) + 176)];
    }
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v27 = [*(a1 + 32) speechRecognitionReceivers];
    v28 = [v27 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v34;
      do
      {
        v31 = 0;
        do
        {
          if (*v34 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v33 + 1) + 8 * v31);
          if (objc_opt_respondsToSelector())
          {
            [v32 didStartRecognitionRequest:*(*(a1 + 32) + 176) successfully:1 isRecognitionModeClassic:objc_msgSend(*(a1 + 32) error:{"speechRecognitionMode") == 1, 0}];
          }

          v31 = v31 + 1;
        }

        while (v29 != v31);
        v29 = [v27 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v29);
    }
  }
}

id sub_100082354(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 == 1)
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[CSAttSiriSpeechRecognitionNode stopWithReason:stopStreamOption:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Received xpc disconnection", &v7, 0xCu);
    }

    [*(a1 + 32) _handleStopDeliverLocalSpeechRecognitionWithRequestId:*(*(a1 + 32) + 176) reason:2];
  }

  else if (!v2)
  {
    v3 = *(a1 + 32);
    if (!*(v3 + 208))
    {
      *(v3 + 208) = 2;
    }
  }

  result = [*(a1 + 40) stopRecordingReason];
  if (result == 3)
  {
    result = [*(a1 + 32) localSpeechRecognizerState];
    if (result == 1)
    {
      v6 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315138;
        v8 = "[CSAttSiriSpeechRecognitionNode stopWithReason:stopStreamOption:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Received request cancelled during CSLocalSRStateWaitForStartDeliverMessage state, stop ASR", &v7, 0xCu);
      }

      [*(a1 + 32) _handleStopSpeechRecognitionTaskIfNeeded:0];
      return [*(a1 + 32) _stopSpeechRecognitionWithReason:1 requestId:*(*(a1 + 32) + 176)];
    }
  }

  return result;
}

BOOL sub_1000826D8(id a1)
{
  v1 = +[CSFPreferences sharedPreferences];
  v2 = [v1 fileLoggingIsEnabled];

  return v2;
}

void sub_10008298C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100082AA8;
  block[3] = &unk_100253C20;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_100082A00(id a1, unint64_t a2)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[CSModelBenchmarker _setupAudioInjectionEngineWithAudioURL:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Audio file read start", &v3, 0xCu);
  }
}