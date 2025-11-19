void sub_1001359E8(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

void sub_100135AD4(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

void sub_100135C00(id a1)
{
  v1 = objc_alloc_init(CSOpportuneSpeakBehaviorMonitor);
  v2 = qword_10029E4A0;
  qword_10029E4A0 = v1;
}

void sub_100135E18(uint64_t a1)
{
  v2 = [*(a1 + 32) eventMask];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v24 = "[CSAttSiriAttentionNode handleFaceAttentionEvent:]_block_invoke";
    v25 = 2048;
    v26 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s %llu", buf, 0x16u);
  }

  if (v2)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = [*(a1 + 40) receivers];
    v9 = [v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v17 + 1) + 8 * i) attSiriNode:*(a1 + 40) didUpdateAttentionState:0];
        }

        v10 = [v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }
  }

  else
  {
    if ((v2 & 0x80) == 0)
    {
      return;
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [*(a1 + 40) receivers];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (j = 0; j != v6; j = j + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v13 + 1) + 8 * j) attSiriNode:*(a1 + 40) didUpdateAttentionState:1];
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v21 count:16];
      }

      while (v6);
    }
  }
}

void sub_10013609C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  v10 = 0;
  v3 = [v2 invalidateWithError:&v10];
  v4 = v10;
  v5 = CSLogContextFacilityCoreSpeech;
  v6 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      *buf = 136315394;
      v12 = "[CSAttSiriAttentionNode stop]_block_invoke";
      v13 = 2112;
      v14 = v4;
      v7 = "%s FaceAttention: stopped monitoring with error %@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v7, buf, 0x16u);
    }
  }

  else if (v6)
  {
    *buf = 136315394;
    v12 = "[CSAttSiriAttentionNode stop]_block_invoke";
    v13 = 2112;
    v14 = v4;
    v7 = "%s FaceAttention: failed stopping monitoring with error %@";
    goto LABEL_6;
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 64);
  *(v8 + 64) = 0;
}

void sub_10013624C(uint64_t a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v2 = qword_10029E4C0;
  v23 = qword_10029E4C0;
  if (!qword_10029E4C0)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100136520;
    v25 = &unk_100253580;
    v26[0] = &v20;
    sub_100136520(buf);
    v2 = v21[3];
  }

  v3 = v2;
  _Block_object_dispose(&v20, 8);
  v4 = objc_alloc_init(v2);
  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  v7 = *(v6 + 64);
  *(v6 + 64) = v4;

  v8 = objc_alloc_init(sub_100136590());
  [v8 setIdentifier:@"com.apple.corespeech.attsiri.attention"];
  [v8 setEventMask:129];
  [v8 setSamplingInterval:0.75];
  [v8 setSamplingDelay:0.75];
  v9 = [NSSet setWithObjects:&off_10025F580, 0];
  [v8 setAttentionLostTimeouts:v9];

  [v8 setSampleWhileAbsent:1];
  [*(*v5 + 8) setConfiguration:v8 shouldReset:0];
  v10 = *v5;
  v11 = *(*v5 + 8);
  v12 = *(*v5 + 9);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100136670;
  v19[3] = &unk_1002524E0;
  v19[4] = v10;
  [v11 setEventHandlerWithQueue:v12 block:v19];
  v13 = *(*v5 + 8);
  v18 = 0;
  v14 = [v13 resumeWithError:&v18];
  v15 = v18;
  v16 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v17 = @"Failed to start";
    *buf = 136315906;
    *&buf[4] = "[CSAttSiriAttentionNode start]_block_invoke_2";
    *&buf[12] = 2112;
    if (v14)
    {
      v17 = @"Started";
    }

    *&buf[14] = v17;
    *&buf[22] = 2112;
    v25 = v8;
    LOWORD(v26[0]) = 2112;
    *(v26 + 2) = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s %@ FaceAttention with config %@ - error: %@", buf, 0x2Au);
  }
}

void sub_100136500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100136520(uint64_t a1)
{
  sub_1001366EC();
  result = objc_getClass("AWAttentionAwarenessClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10029E4C0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return sub_100136590(v3);
  }

  return result;
}

id sub_100136590()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10029E4B0;
  v7 = qword_10029E4B0;
  if (!qword_10029E4B0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10013667C;
    v3[3] = &unk_100253580;
    v3[4] = &v4;
    sub_10013667C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100136658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10013667C(uint64_t a1)
{
  sub_1001366EC();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AWAttentionAwarenessConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10029E4B0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    sub_1001366EC();
  }
}

void sub_1001366EC()
{
  v1[0] = 0;
  if (!qword_10029E4B8)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_1001367F8;
    v1[4] = &unk_1002535B8;
    v1[5] = v1;
    v2 = off_100252500;
    v3 = 0;
    qword_10029E4B8 = _sl_dlopen();
    v0 = v1[0];
    if (qword_10029E4B8)
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

uint64_t sub_1001367F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10029E4B8 = result;
  return result;
}

void sub_100136904(uint64_t a1)
{
  v2 = [*(a1 + 32) receivers];
  [v2 removeObject:*(a1 + 40)];
}

void sub_1001369F0(uint64_t a1)
{
  v2 = [*(a1 + 32) receivers];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    if ([*(a1 + 40) conformsToProtocol:&OBJC_PROTOCOL___CSAttSiriAttentionNodeDelegate])
    {
      v6 = [*(a1 + 32) receivers];
      [v6 addObject:*(a1 + 40)];
    }

    else
    {
      v4 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 40);
        *buf = 136315394;
        v8 = "[CSAttSiriAttentionNode addReceiver:]_block_invoke";
        v9 = 2112;
        v10 = v5;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Unsupported receiver: %@", buf, 0x16u);
      }
    }
  }
}

id *sub_100137500(id *result)
{
  if (result[6] == 5)
  {
    if (result[4])
    {
      return [result[5] _cancelAudioStreamHoldingForAccessoryWithId:?];
    }
  }

  return result;
}

void sub_100137594(uint64_t a1)
{
  v2 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[CSVoiceTriggerFirstPassRemora cancelSecondPassRunning]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Trying to cancel all 2nd pass in Remora", buf, 0xCu);
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [*(*(a1 + 32) + 32) objectEnumerator];
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

        [*(*(&v8 + 1) + 8 * v7) cancelRequest];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

uint64_t sub_100137A48(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100137F4C(uint64_t a1)
{
  [*(a1 + 32) _setIsSecondPassing:0 forDeviceId:*(a1 + 40)];
  [*(a1 + 48) reset];
  if (*(a1 + 56) == 1 && *(a1 + 64) != 1)
  {
    v7 = [*(a1 + 48) audioStreamHolding];
    v3 = [*(a1 + 48) audioProvider];
    v4 = [*(a1 + 48) firstPassDeviceID];
    if (v4 && v7 && v3)
    {
      v5 = objc_alloc_init(CSRemoraSecondPassAudioStreamHoldingContext);
      [(CSRemoraSecondPassAudioStreamHoldingContext *)v5 setAudioProvider:v3];
      [(CSRemoraSecondPassAudioStreamHoldingContext *)v5 setAudioStreamHolding:v7];
      v6 = [*(a1 + 32) triggeredAudioStreamHoldingByAccessoryId];
      [v6 setObject:v5 forKey:v4];
    }
  }

  else
  {
    v2 = *(a1 + 48);

    [v2 cancelAudioStreamHold];
  }
}

void sub_100138430(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_100138460(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = CSLogCategoryVT;
  if (a2)
  {
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[CSVoiceTriggerFirstPassRemora _handleRemoraTriggerEvent:secondPassRequest:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Audio provider available", &v9, 0xCu);
    }

    [*(a1 + 32) holdAudioStreamWithTimeout:5.0];
  }

  else if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
  {
    v7 = v6;
    v8 = [v5 localizedDescription];
    v9 = 136315394;
    v10 = "[CSVoiceTriggerFirstPassRemora _handleRemoraTriggerEvent:secondPassRequest:completion:]_block_invoke";
    v11 = 2114;
    v12 = v8;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Failed to fetch audio audio provider with error : %{public}@", &v9, 0x16u);
  }
}

void sub_1001385B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) deviceId];
  [WeakRetained _handleSecondPassResult:v6 secondPassRequest:v8 deviceId:v9 error:v5 completion:*(a1 + 56)];

  v10 = +[CSVoiceTriggerStatAggregator sharedAggregator];
  v11 = [v6 result];
  v12 = [v6 voiceTriggerEventInfo];

  [v10 logSecondPassResult:v11 eventInfo:v12 triggerAPWakeUp:0];
  v13 = *(*(a1 + 48) + 24);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100138700;
  v16[3] = &unk_100253C48;
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v17 = v14;
  v18 = v15;
  dispatch_async(v13, v16);
}

void sub_100138700(uint64_t a1)
{
  v2 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 deviceId];
    v9 = 136315394;
    v10 = "[CSVoiceTriggerFirstPassRemora _handleRemoraTriggerEvent:secondPassRequest:completion:]_block_invoke_2";
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Teardown remora second pass request for device id : %{public}@", &v9, 0x16u);
  }

  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 32);
  v8 = [v6 deviceId];
  [v7 removeObjectForKey:v8];
}

void *sub_1001388A8(void *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = result;
    v3 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315395;
      v5 = "[CSVoiceTriggerFirstPassRemora accessorySiriClientBehaviorMonitor:didStartStreamWithContext:successfully:option:withEventUUID:forAccessory:]_block_invoke";
      v6 = 2113;
      v7 = v1;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Siri Client (Remora: accessoryId: %{private}@) start listening now, CSVoiceTriggerFirstPassRemora can stop listening now", &v4, 0x16u);
      v1 = v2[4];
    }

    return [v2[5] _cancelAudioStreamHoldingForAccessoryWithId:v1];
  }

  return result;
}

CSRemoraSecondPassRequest *sub_100138EC4(uint64_t a1)
{
  v2 = [CSRemoraSecondPassRequest alloc];
  v3 = [*(a1 + 32) deviceId];
  v4 = [(CSRemoraSecondPassRequest *)v2 initWithDeviceID:v3];

  -[CSRemoraSecondPassRequest setTimestamp:](v4, "setTimestamp:", [*(a1 + 32) hosttime]);
  v5 = [*(a1 + 32) activationInfo];
  if (v5)
  {
    v6 = v5;
    v7 = [*(a1 + 32) activationInfo];
    v8 = [v7 objectForKey:@"firstPassGoodness"];

    if (v8)
    {
      v9 = *(a1 + 40);
      *&v9 = v9;
      [(CSRemoraSecondPassRequest *)v4 setGoodnessScore:v9];
    }
  }

  v10 = [*(a1 + 32) activationInfo];
  if (v10)
  {
    v11 = v10;
    v12 = [*(a1 + 32) activationInfo];
    v13 = [v12 objectForKey:@"vtEndTime"];

    if (v13)
    {
      v14 = [*(a1 + 32) activationInfo];
      v15 = [v14 objectForKey:@"vtEndTime"];
      [v15 doubleValue];
      [(CSRemoraSecondPassRequest *)v4 setFirstPassTriggerEndTime:?];
    }
  }

  return v4;
}

void sub_1001390EC(id *a1)
{
  if ([a1[4] type] == 8)
  {
    v2 = [NSUUID alloc];
    v3 = [a1[4] deviceId];
    v4 = [v2 initWithUUIDString:v3];

    v5 = +[VTPreferences sharedPreferences];
    v6 = [v5 voiceTriggerEnabledForEndpointId:v4];

    if (v6)
    {
      v7 = *(a1[5] + 4);
      v8 = [a1[4] deviceId];
      v9 = [v7 objectForKey:v8];

      if (v9)
      {
        v10 = CSLogCategoryVT;
        if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
        {
          v11 = a1[4];
          v12 = v10;
          v13 = [v11 deviceId];
          *buf = 136315394;
          *&buf[4] = "[CSVoiceTriggerFirstPassRemora activationEventNotificationHandler:event:completion:]_block_invoke";
          *&buf[12] = 2114;
          *&buf[14] = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s We already have matched Remora second pass request : %{public}@", buf, 0x16u);
        }

        v14 = *(a1[5] + 4);
        v15 = [a1[4] deviceId];
        v16 = [v14 objectForKey:v15];

        [a1[5] _handleRemoraTriggerEvent:a1[4] secondPassRequest:v16 completion:a1[6]];
      }

      else
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v30 = sub_100139500;
        v31 = sub_100139510;
        v32 = 0;
        v21 = a1[4];
        v22 = a1[5];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100139518;
        v24[3] = &unk_100252598;
        v25 = v21;
        v27 = a1[6];
        v28 = buf;
        v26 = a1[5];
        [v22 _createSecondPassRequestIfNecessaryForActivationEvent:v25 completion:v24];

        _Block_object_dispose(buf, 8);
      }
    }

    else
    {
      v18 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "[CSVoiceTriggerFirstPassRemora activationEventNotificationHandler:event:completion:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Cannot handle remora VoiceTrigger request since VoiceTrigger is disabled", buf, 0xCu);
      }

      v19 = a1[6];
      if (v19)
      {
        v20 = [NSError errorWithDomain:CSErrorDomain code:604 userInfo:0];
        v19[2](v19, 0, v20);
      }
    }
  }

  else
  {
    v17 = a1[6];
    if (v17)
    {
      v23 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
      v17[2](v17, 0);
    }
  }
}

void sub_1001394E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100139500(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100139518(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v8 deviceId];
      *buf = 136315650;
      v26 = "[CSVoiceTriggerFirstPassRemora activationEventNotificationHandler:event:completion:]_block_invoke";
      v27 = 2114;
      v28 = v10;
      v29 = 2114;
      v30 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Remora second pass request is prune out from PreMyriad : %{public}@, error: %{public}@", buf, 0x20u);
    }

    v11 = *(a1 + 48);
    if (v11)
    {
      (*(v11 + 16))(v11, 0, v5);
    }
  }

  else
  {
    v12 = [*(a1 + 32) deviceId];
    v13 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v26 = "[CSVoiceTriggerFirstPassRemora activationEventNotificationHandler:event:completion:]_block_invoke";
      v27 = 2114;
      v28 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s There is no matched remora second pass request, creating new one : %{public}@", buf, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    if (v12 && *(*(*(a1 + 56) + 8) + 40))
    {
      v14 = [*(a1 + 40) accessoryFirstPassGoodnessScores];
      [v14 removeObjectForKey:v12];

      v15 = [*(a1 + 40) accessoryFirstPassGoodnessScores];
      [*(*(*(a1 + 56) + 8) + 40) goodnessScore];
      v16 = [NSNumber numberWithFloat:?];
      [v15 setObject:v16 forKey:v12];
    }

    v17 = +[CSVoiceTriggerAssetHandler sharedHandler];
    v18 = [*(a1 + 32) deviceId];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100139818;
    v21[3] = &unk_100252570;
    v24 = *(a1 + 56);
    v20 = *(a1 + 32);
    v19 = v20.i64[0];
    v22 = vextq_s8(v20, v20, 8uLL);
    v23 = *(a1 + 48);
    [v17 getVoiceTriggerAssetWithEndpointId:v18 completion:v21];
  }
}

void sub_100139818(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(*(a1 + 32) + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001399E8;
    block[3] = &unk_100252548;
    v8 = *(a1 + 56);
    v17 = v5;
    v15 = *(a1 + 32);
    v9 = *(&v15 + 1);
    *&v10 = *(a1 + 48);
    *(&v10 + 1) = v8;
    v18 = v15;
    v19 = v10;
    dispatch_async(v7, block);
  }

  else
  {
    v11 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      v13 = v11;
      v14 = [v6 localizedDescription];
      *buf = 136315394;
      v21 = "[CSVoiceTriggerFirstPassRemora activationEventNotificationHandler:event:completion:]_block_invoke";
      v22 = 2112;
      v23 = v14;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Failed to create voiceTriggerSecondPass remora since asset is nil : %@", buf, 0x16u);
    }

    v12 = *(a1 + 48);
    if (v12)
    {
      (*(v12 + 16))(v12, 0, v6);
    }
  }
}

void sub_1001399E8(void *a1)
{
  if ([*(*(a1[8] + 8) + 40) isCancelled])
  {
    v2 = a1[7];
    if (v2)
    {
      v7 = [NSError errorWithDomain:CSErrorDomain code:605 userInfo:0];
      (*(v2 + 16))(v2, 0, v7);
    }
  }

  else
  {
    [*(*(a1[8] + 8) + 40) setAsset:a1[4]];
    [*(*(a1[8] + 8) + 40) start];
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];
    v6 = *(*(a1[8] + 8) + 40);

    [v3 _handleRemoraTriggerEvent:v4 secondPassRequest:v6 completion:v5];
  }
}

void sub_100139E2C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    v3 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
    v4 = v3;
    if (v3)
    {
      [v3 setAsset:v5];
      [v4 reset];
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_10013A130(uint64_t a1)
{
  v2 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSVoiceTriggerFirstPassRemora start]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  v3 = +[CSAccessorySiriClientBehaviorMonitor sharedInstance];
  [v3 registerObserver:*(a1 + 32)];
}

void sub_10013A4FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_10013A51C(uint64_t a1)
{
  v2 = +[CSAudioStreamActivityMonitor sharedInstance];
  v3 = [v2 hasNonVoiceTriggerStreamsOrStreamHoldersActive];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isPlaybackAudioSessionActive])
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 clientRecordRoute];
    v7 = [CSUtils isJarvisAudioRouteWithRecordRoute:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = v3 | v7;
  if (((v3 | v7) & 1) == 0)
  {
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = "[CSVoiceTriggerJarvisAPEnabledPolicy _addVoiceTriggerHearstAPEnabledPolicy]_block_invoke";
      v13 = 1024;
      v14 = 0;
      v15 = 1024;
      v16 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger JarvisAP cannot be turned on since there is no other stream active (%d) and playback session not active (%d)", &v11, 0x18u);
    }
  }

  return v8 & 1;
}

BOOL sub_10013A670(id a1)
{
  v1 = +[CSAudioRouteChangeMonitor sharedInstance];
  v2 = [v1 jarvisConnected];

  if ((v2 & 1) == 0)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSVoiceTriggerJarvisAPEnabledPolicy _addVoiceTriggerHearstAPEnabledPolicy]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger JarvisAP cannot be turned on since Jarvis is not connected", &v5, 0xCu);
    }
  }

  return v2;
}

BOOL sub_10013A740(id a1)
{
  v1 = +[CSOtherAppRecordingStateMonitorFactory otherAppRecordingStateMonitor];
  v2 = [v1 isOtherNonEligibleAppRecording];

  if (v2)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSVoiceTriggerJarvisAPEnabledPolicy _addVoiceTriggerHearstAPEnabledPolicy]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger JarvisAP cannot be turned on since other non-eligible App is recording", &v5, 0xCu);
    }
  }

  return v2 ^ 1;
}

BOOL sub_10013A810(id a1)
{
  v1 = +[CSVoiceTriggerEnabledMonitor sharedInstance];
  v2 = [v1 isEnabled];

  if ((v2 & 1) == 0)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSVoiceTriggerJarvisAPEnabledPolicy _addVoiceTriggerHearstAPEnabledPolicy]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger JarvisAP cannot be turned on since VoiceTrigger is disabled", &v5, 0xCu);
    }
  }

  return v2;
}

void sub_10013AA84(id a1)
{
  v1 = objc_alloc_init(CSVoiceTriggerJarvisAPEnabledPolicy);
  v2 = qword_10029E4C8;
  qword_10029E4C8 = v1;
}

int64_t sub_10013AEEC(id a1, id a2, id a3)
{
  v4 = a3;
  [a2 doubleValue];
  v6 = v5;
  [v4 doubleValue];
  v8 = v7;

  if (v6 < v8)
  {
    return -1;
  }

  else
  {
    return v6 > v8;
  }
}

void sub_10013BF88(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];

  if (v2)
  {
    v4 = [*(a1 + 32) connection];
    xpc_connection_send_message(v4, *(a1 + 40));
  }

  else
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v6 = "[CSClientXPCConnection sendMessageToClient:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Unable to send message to client since there is no connection", buf, 0xCu);
    }
  }
}

void sub_10013C158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10013D424(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  string = xpc_dictionary_get_string(v2, _xpc_event_key_name);
  if (string)
  {
    v4 = string;
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[CSHostDaemon _setupDistnoteHandlers]_block_invoke";
      *&buf[12] = 2080;
      *&buf[14] = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Got xpc event for notification %s", buf, 0x16u);
    }

    v6 = [NSString stringWithUTF8String:v4];
    if ([v6 isEqualToString:@"com.apple.LaunchServices.applicationUnregistered"])
    {
      v7 = os_transaction_create();
      v8 = xpc_dictionary_get_dictionary(v2, "UserInfo");
      if (v8)
      {
        v9 = _CFXPCCreateCFObjectFromXPCObject();
        v10 = [v9 objectForKeyedSubscript:@"bundleIDs"];
        v11 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "[CSHostDaemon _setupDistnoteHandlers]_block_invoke";
          *&buf[12] = 2112;
          *&buf[14] = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s UaaP: Processing app uninstall notification for app bundles: %@", buf, 0x16u);
        }

        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = nullsub_8;
        v18[3] = &unk_100253C20;
        v19 = v7;
        v12 = v10;
        v13 = v18;
        v14 = sub_100061320();
        v15 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "CSRemoveSpeechAppLMAndData";
          *&buf[12] = 2112;
          *&buf[14] = v12;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s UaaP: Removing app LMs and uaap data (if present) for app bundles: %@", buf, 0x16u);
        }

        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100063858;
        v21 = &unk_100253718;
        v22 = v12;
        v23 = v13;
        v16 = v12;
        v17 = v13;
        dispatch_async(v14, buf);
      }
    }
  }
}

void sub_10013DD88(id a1)
{
  v1 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[CSHostDaemon init]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s Received SIGTERM. Exiting", &v2, 0xCu);
  }

  exit(0);
}

void sub_10013DE60(id a1)
{
  v1 = objc_alloc_init(CSHostDaemon);
  v2 = qword_10029E4D8;
  qword_10029E4D8 = v1;
}

void sub_10013F184(uint64_t a1)
{
  v2 = [*(a1 + 32) enablePolicy];
  v3 = [v2 isEnabled];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 _startListenPolling];
  }
}

void sub_10013F318(uint64_t a1)
{
  [*(a1 + 32) _reset];
  if (*(a1 + 40) != -11785)
  {
    v2 = [*(a1 + 32) enablePolicy];
    v3 = [v2 isEnabled];

    if (v3)
    {
      v4 = *(a1 + 32);

      [v4 _startListenPolling];
    }
  }
}

id sub_10013F4B8(uint64_t a1)
{
  if (*(a1 + 40) == 1 && [*(*(a1 + 32) + 56) count])
  {
    v2 = *(a1 + 32);

    return [v2 _startListenPolling];
  }

  else
  {
    v4 = *(a1 + 32);

    return [v4 _stopListening];
  }
}

void sub_10013F6B4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = [v5 description];
      v9 = 136315394;
      v10 = "[CSContinuousAudioFingerprintProvider _stopListening]_block_invoke";
      v11 = 2114;
      v12 = v8;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Failed to stop audio stream : %{public}@", &v9, 0x16u);
    }
  }

  [*(a1 + 32) _reset];
}

uint64_t sub_10013FC8C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10013FCA4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10013FD64;
  v10[3] = &unk_100253248;
  v14 = a2;
  v11 = v5;
  v12 = v7;
  v13 = v6;
  v9 = v5;
  dispatch_async(v8, v10);
}

uint64_t sub_10013FD64(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 56))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v4 description];
    v13 = 136315650;
    v14 = "[CSContinuousAudioFingerprintProvider _startListenWithCompletion:]_block_invoke_3";
    v15 = 2114;
    v16 = v3;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Start audio stream successfully ? %{public}@, error : %{public}@", &v13, 0x20u);
  }

  v7 = [*(a1 + 40) enablePolicy];
  v8 = [v7 isEnabled];

  if ((v8 & 1) == 0)
  {
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = "[CSContinuousAudioFingerprintProvider _startListenWithCompletion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Received didStartRecording when Siri is off", &v13, 0xCu);
    }

    [*(a1 + 40) _stopListening];
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  return (*(*(a1 + 48) + 16))();
}

void sub_1001400F8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, 1, 0);
    }
  }

  else
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v10 = v7;
      v11 = [v5 localizedDescription];
      *location = 136315394;
      *&location[4] = "[CSContinuousAudioFingerprintProvider _startListenPollingWithInterval:completion:]_block_invoke";
      v16 = 2114;
      v17 = v11;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s listen polling has failed : %{public}@", location, 0x16u);
    }

    objc_initWeak(location, *(a1 + 32));
    v8 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
    v9 = [*(a1 + 32) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100140304;
    block[3] = &unk_1002531D0;
    objc_copyWeak(v14, location);
    v14[1] = *(a1 + 48);
    v13 = *(a1 + 40);
    dispatch_after(v8, v9, block);

    objc_destroyWeak(v14);
    objc_destroyWeak(location);
  }
}

void sub_100140304(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _startListenPollingWithInterval:*(a1 + 32) completion:*(a1 + 48)];
}

void sub_100140480(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) observers];
    [v4 removeObject:*(a1 + 40)];
  }

  v5 = [*(a1 + 32) observers];
  v6 = [v5 count];

  if (!v6)
  {
    [*(*(a1 + 32) + 48) endAudio];
    v7 = *(a1 + 32);
    v8 = *(v7 + 48);
    *(v7 + 48) = 0;
  }
}

void sub_1001405E8(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) observers];
    [v4 addObject:*(a1 + 40)];

    v5 = [*(a1 + 32) observers];
    v6 = [v5 count];

    if (v6 == 1)
    {
      +[CSFAudioStreamBasicDescriptionFactory utteranceFileASBD];
      +[CSFAudioStreamBasicDescriptionFactory utteranceFileASBD];
      v7 = [CSAudioFileManager createAudioFileWriterForAdBlockerWithInputFormat:v15 outputFormat:&v14 withAccessoryID:0];
      v8 = *(a1 + 32);
      v9 = *(v8 + 48);
      *(v8 + 48) = v7;

      v15[0] = 0;
      v10 = [*(*(a1 + 32) + 40) copyBufferWithNumSamplesCopiedIn:v15];
      v11 = v10;
      if (v10)
      {
        v12 = *(*(a1 + 32) + 48);
        v13 = [v10 bytes];
        [v12 addSamples:v13 numSamples:v15[0]];
      }
    }
  }
}

void sub_10014083C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 56);
  if (v1)
  {
    v3 = [*(a1 + 40) UUIDString];
    v4 = [v1 objectForKey:v3];

    if (v4)
    {
      v5 = *(*(a1 + 32) + 56);
      v6 = [*(a1 + 40) UUIDString];
      [v5 removeObjectForKey:v6];

      v7 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(*(a1 + 32) + 56);
        v9 = v7;
        v12 = 136315394;
        v13 = "[CSContinuousAudioFingerprintProvider stopWithUUID:]_block_invoke";
        v14 = 2048;
        v15 = [v8 count];
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Updated in use services for fingerprintProvider. %lu services remaining", &v12, 0x16u);
      }

      if ([*(*(a1 + 32) + 56) count])
      {
        [*(a1 + 32) _setMaximumBufferSizeFromInUseServices];
        [*(a1 + 32) _reset];
      }

      else
      {
        v10 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315138;
          v13 = "[CSContinuousAudioFingerprintProvider stopWithUUID:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Stopping continuousFingerprintProvider", &v12, 0xCu);
        }

        v11 = +[CSAudioServerCrashMonitor sharedInstance];
        [v11 removeObserver:*(a1 + 32)];

        [*(a1 + 32) _stopListening];
        [*(a1 + 32) setEnablePolicy:0];
      }
    }
  }
}

void sub_100140B60(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  v3 = [*(a1 + 40) UUIDString];
  v4 = [v2 objectForKey:v3];

  if (!v4)
  {
    v6 = *(*(a1 + 32) + 56);
    LODWORD(v5) = *(a1 + 48);
    v7 = [NSNumber numberWithFloat:v5];
    v8 = [*(a1 + 40) UUIDString];
    [v6 setValue:v7 forKey:v8];

    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(a1 + 32) + 56);
      v11 = v9;
      *buf = 136315394;
      v25 = "[CSContinuousAudioFingerprintProvider startWithUUID:withMaximumBufferSize:]_block_invoke";
      v26 = 2048;
      v27 = [v10 count];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Updated in use services for fingerprintProvider. %lu services in use", buf, 0x16u);
    }

    [*(a1 + 32) _setMaximumBufferSizeFromInUseServices];
    [*(a1 + 32) _reset];
    if ([*(*(a1 + 32) + 56) count] <= 1)
    {
      v12 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v25 = "[CSContinuousAudioFingerprintProvider startWithUUID:withMaximumBufferSize:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s Starting continuousFingerprintProvider", buf, 0xCu);
      }

      v13 = +[CSFPreferences sharedPreferences];
      [*(a1 + 32) setFrameSkipRate:{objc_msgSend(v13, "overridingFrameSkipRate")}];

      if (![*(a1 + 32) frameSkipRate])
      {
        [*(a1 + 32) setFrameSkipRate:0];
      }

      [*(a1 + 32) setFrameSkipCounter:0];
      v14 = +[CSAdBlockerEnabledPolicyFactory adBlockerEnabledPolicy];
      [*(a1 + 32) setEnablePolicy:v14];

      objc_initWeak(buf, *(a1 + 32));
      v15 = [*(a1 + 32) enablePolicy];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100140F08;
      v22[3] = &unk_100253000;
      objc_copyWeak(&v23, buf);
      [v15 setCallback:v22];

      v16 = [*(a1 + 32) enablePolicy];
      v17 = [v16 isEnabled];

      if (v17)
      {
        v18 = *(a1 + 32);
        v19 = *(v18 + 32);
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100140F58;
        v21[3] = &unk_100253C20;
        v21[4] = v18;
        dispatch_async(v19, v21);
      }

      v20 = +[CSAudioServerCrashMonitor sharedInstance];
      [v20 addObserver:*(a1 + 32)];

      objc_destroyWeak(&v23);
      objc_destroyWeak(buf);
    }
  }
}

void sub_100140ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100140F08(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleEnablePolicyEvent:a2];
}

void sub_1001422AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10014293C(uint64_t a1)
{
  v2 = [[CSOSTransaction alloc] initWithDescription:@"CSVoiceTriggerRejectReporter"];
  v4 = [*(a1 + 32) _readEventFromBiome];
  if ([v4 count])
  {
    v3 = [*(a1 + 32) constructSELFEventFromEvents:v4 withMhid:*(a1 + 40)];
    if (v3)
    {
      [*(a1 + 32) _emitEvent:v3];
    }
  }

  else
  {
    v3 = v2;
  }
}

void sub_100142AF0(id a1)
{
  v1 = objc_alloc_init(CSVoiceTriggerRejectReporter);
  v2 = qword_10029E4E8;
  qword_10029E4E8 = v1;
}

void sub_100142CEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = [WeakRetained mphSelected];
}

void sub_100142F0C(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  [v2 setUSelectedPhraseType:{objc_msgSend(v2, "_fetchUserSelectedPhraseType")}];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained mphSelected];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 _isMultiPhrase:{objc_msgSend(v5, "uSelectedPhraseType")}];

  if (v4 != v6)
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315650;
      v15 = "[CSVoiceTriggerUserSelectedPhrase vtPhraseTypeDidChangeNotificationReceived]_block_invoke";
      v16 = 1024;
      v17 = v4;
      v18 = 1024;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s User multi-phrase selection change from %d -> %d", &v14, 0x18u);
    }

    v8 = objc_loadWeakRetained((a1 + 32));
    [v8 setMphSelected:v6];

    v9 = objc_loadWeakRetained((a1 + 32));
    v10 = [v9 delegate];

    if (v10)
    {
      v11 = objc_loadWeakRetained((a1 + 32));
      v12 = [v11 delegate];
      v13 = objc_loadWeakRetained((a1 + 32));
      [v12 CSVoiceTriggerUserSelectedPhraseDidChange:{objc_msgSend(v13, "mphSelected")}];
    }
  }
}

void sub_1001439C0(id a1)
{
  v1 = objc_alloc_init(CSCoreSpeechDaemonStateMonitor);
  v2 = qword_10029E4F8;
  qword_10029E4F8 = v1;
}

void sub_100143CA0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = CSLogCategoryAsset;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
    {
      v18 = v8;
      v19 = [v7 localizedDescription];
      v20 = 136315394;
      v21 = "[CSVoiceTriggerAssetHandlerDarwin _checkNewAssetAvailability]_block_invoke";
      v22 = 2114;
      v23 = v19;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Asset Query failed : %{public}@", &v20, 0x16u);

      if (!v5)
      {
        goto LABEL_14;
      }
    }

    else if (!v5)
    {
      goto LABEL_14;
    }

    v8 = CSLogCategoryAsset;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = v8;
    v11 = [v9 cachedAsset];
    v12 = [v11 path];
    v13 = [v5 path];
    v20 = 136315650;
    v21 = "[CSVoiceTriggerAssetHandlerDarwin _checkNewAssetAvailability]_block_invoke";
    v22 = 2114;
    v23 = v12;
    v24 = 2114;
    v25 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s cached asset:%{public}@, new asset:%{public}@", &v20, 0x20u);
  }

  v14 = [*(a1 + 32) cachedAsset];
  v15 = [v14 isEqualAsset:v5];

  if (v15)
  {
    v16 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315138;
      v21 = "[CSVoiceTriggerAssetHandlerDarwin _checkNewAssetAvailability]_block_invoke";
      v17 = "%s New asset is same as cached asset, ignore notification";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v17, &v20, 0xCu);
    }
  }

  else
  {
    [*(a1 + 32) setCachedAsset:v5];
    [*(a1 + 32) notifyObservers:v5 endpointId:0];
    v16 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315138;
      v21 = "[CSVoiceTriggerAssetHandlerDarwin _checkNewAssetAvailability]_block_invoke";
      v17 = "%s New asset is different from cached one. Updating cached asset";
      goto LABEL_13;
    }
  }

LABEL_14:
}

void sub_1001441E4(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [*(a1 + 32) defaultFallbackModelIfNil:a2];
  if (v5)
  {
    [*(a1 + 32) setCachedAsset:v5];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v5, v7);
  }
}

void *sub_10014463C(void *a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100145424;
  v4[3] = &unk_100252900;
  v5 = a1;
  v1 = v5;
  v2 = objc_retainBlock(v4);

  return v2;
}

void sub_1001446E0(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[BGSystemTaskScheduler sharedScheduler];
  [v5 registerForTaskWithIdentifier:v4 usingQueue:0 launchHandler:v3];
}

void sub_100144764(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[BGSystemTaskScheduler sharedScheduler];
  v6 = [v5 taskRequestForIdentifier:v3];

  v7 = AFSiriLogContextSpeech;
  v8 = os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      *buf = 136315394;
      v15 = "_submitBGSTRequest";
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Skipping submission of existing task %@.", buf, 0x16u);
    }
  }

  else
  {
    if (v8)
    {
      *buf = 136315394;
      v15 = "_submitBGSTRequest";
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Starting submission of task %@.", buf, 0x16u);
    }

    v6 = v4[2](v4, v3);
    v9 = +[BGSystemTaskScheduler sharedScheduler];
    v13 = 0;
    v10 = [v9 submitTaskRequest:v6 error:&v13];
    v11 = v13;

    v12 = AFSiriLogContextSpeech;
    if (v10)
    {
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v15 = "_submitBGSTRequest";
        v16 = 2112;
        v17 = v3;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Successfully submitted task %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v15 = "_submitBGSTRequest";
      v16 = 2112;
      v17 = v3;
      v18 = 2112;
      v19 = v11;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s On-Device ASR: BGST: Failed to submit task %@. Error: %@", buf, 0x20u);
    }
  }
}

BGSystemTaskRequest *__cdecl sub_1001449E4(id a1, NSString *a2)
{
  v2 = a2;
  v3 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:v2];

  [v3 setInterval:900.0];
  [v3 setPriority:2];

  return v3;
}

void sub_100144A58(id a1)
{
  v1 = BiomeLibrary();
  v2 = [v1 Siri];
  v3 = [v2 ASR];
  v4 = [v3 ContextualReplayRecord];

  v5 = [v4 pruner];
  [v5 deleteWithPolicy:@"replay-record-pruning" eventsPassingTest:&stru_100252B00];

  v6 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "_runReplayRecordPruning";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Done triggering replay record pruning", &v7, 0xCu);
  }
}

BOOL sub_100144B70(id a1, BMStoreEvent *a2, BOOL *a3)
{
  v3 = a2;
  Current = CFAbsoluteTimeGetCurrent();
  [(BMStoreEvent *)v3 timestamp];
  v6 = Current - v5;
  v7 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    [(BMStoreEvent *)v3 timestamp];
    v16 = 136315650;
    v17 = "_runReplayRecordPruning_block_invoke";
    v18 = 2048;
    v19 = v6;
    v20 = 2048;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Triggering replay record pruning for event of age %f with timestamp %f", &v16, 0x20u);
  }

  if (v6 >= 900.0)
  {
    v10 = objc_opt_class();
    v11 = [(BMStoreEvent *)v3 eventBody];
    v12 = [v11 metadata];
    v13 = [v12 ids];
    v14 = [v13 asrId];
    [v10 logContextualReplayBiomeRecordDeleted:v14];
  }

  return v6 >= 900.0;
}

BGSystemTaskRequest *__cdecl sub_100144D04(id a1, NSString *a2)
{
  v2 = sub_100144D4C(a2);
  [v2 setRequiresExternalPower:0];

  return v2;
}

id sub_100144D4C(void *a1)
{
  v1 = a1;
  v2 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:v1];

  [v2 setInterval:86400.0];
  [v2 setPriority:1];
  [v2 setRequiresUserInactivity:1];

  return v2;
}

void sub_100144DCC(id a1)
{
  if (+[CESRUtilities isAutomaticCompilationEnabled])
  {
    [CoreEmbeddedSpeechRecognizer compileAllAssetsWithType:3 completion:&stru_100252A80];
  }

  v1 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "_runDailyANECompilation";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Done triggering ANE compilation", &v2, 0xCu);
  }
}

void sub_100144E9C(id a1, BOOL a2, NSError *a3)
{
  [CoreEmbeddedSpeechRecognizer compileAllAssetsWithType:7 completion:0];

  +[CoreEmbeddedSpeechAnalyzer resetCache];
}

id sub_100144EE4(void *a1)
{
  v1 = a1;
  v2 = [[BGNonRepeatingSystemTaskRequest alloc] initWithIdentifier:v1];

  [v2 setPostInstall:1];
  [v2 setPriority:2];

  return v2;
}

void sub_100144F54(id a1)
{
  if (+[CESRUtilities isAutomaticCompilationEnabled])
  {
    [CoreEmbeddedSpeechRecognizer compileAllAssetsWithType:3 completion:&stru_100252A20];
  }

  v1 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "_runPostInstallANECompilation";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Done triggering ANE compilation", &v2, 0xCu);
  }
}

void sub_100145024(id a1, BOOL a2, NSError *a3)
{
  [CoreEmbeddedSpeechRecognizer compileAllAssetsWithType:7 completion:0];

  +[CoreEmbeddedSpeechAnalyzer resetCache];
}

void sub_10014506C(id a1)
{
  +[CoreEmbeddedSpeechRecognizer cleanupUnusedSubscriptions];
  v1 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "_runSubscriptionCleanup";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Done triggering daily subscription cleanup.", &v2, 0xCu);
  }
}

void sub_100145128(id a1)
{
  +[CoreEmbeddedSpeechRecognizer handlePostInstallSubscriptions];
  v1 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "_runPostInstallAssetSubscription";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Done triggering post-install subscription.", &v2, 0xCu);
  }
}

BGSystemTaskRequest *__cdecl sub_1001451DC(id a1, NSString *a2)
{
  v2 = a2;
  v3 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:v2];

  [v3 setPriority:1];
  [v3 setInterval:86400.0];
  [v3 setRequiresNetworkConnectivity:0];
  [v3 setRequiresExternalPower:1];

  return v3;
}

void sub_100145268(id a1)
{
  v1 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "_runDailySpeechProfileMaintenance";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Triggering daily speech profile maintenance.", &v4, 0xCu);
  }

  v2 = +[CESRSpeechProfileDispatcher sharedDispatcher];
  [v2 runMaintenanceWithShouldDefer:0 completion:0];

  v3 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "_runDailySpeechProfileMaintenance";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Done triggering daily speech profile maintenance.", &v4, 0xCu);
  }
}

BGSystemTaskRequest *__cdecl sub_100145380(id a1, NSString *a2)
{
  v2 = a2;
  v3 = [[BGNonRepeatingSystemTaskRequest alloc] initWithIdentifier:v2];

  [v3 setPostInstall:1];
  [v3 setPriority:2];
  [v3 setTrySchedulingBefore:300.0];
  [v3 setRequiresNetworkConnectivity:0];
  [v3 setRequiresExternalPower:0];
  [v3 setRequiresProtectionClass:4];

  return v3;
}

void sub_100145424(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100145694;
  v12[3] = &unk_100253580;
  v12[4] = &v13;
  [v3 setExpirationHandler:v12];
  (*(*(a1 + 32) + 16))();
  v4 = *(v14 + 24);
  v5 = AFSiriLogContextSpeech;
  v6 = os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG);
  if (v4 == 1)
  {
    if (v6)
    {
      *buf = 136315138;
      v18 = "_buildLaunchHandlerWithFunction_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s On-Device ASR: BGST: ExpirationHandler called.", buf, 0xCu);
    }

    v11 = 0;
    v7 = [v3 setTaskExpiredWithRetryAfter:&v11 error:0.0];
    v8 = v11;
    if ((v7 & 1) == 0)
    {
      v9 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        v10 = @"Unknown";
        if (v8)
        {
          v10 = v8;
        }

        *buf = 136315394;
        v18 = "_buildLaunchHandlerWithFunction_block_invoke";
        v19 = 2112;
        v20 = v10;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s On-Device ASR: BGST: Failed to expire task with error: %@", buf, 0x16u);
      }

      [v3 setTaskCompleted];
    }
  }

  else
  {
    if (v6)
    {
      *buf = 136315138;
      v18 = "_buildLaunchHandlerWithFunction_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s On-Device ASR: BGST: Task completed before expiration.", buf, 0xCu);
    }

    [v3 setTaskCompleted];
  }

  _Block_object_dispose(&v13, 8);
}

void sub_100145670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001456A8(id a1)
{
  v1 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "_runPostInstallSpeechProfileMigration";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Triggering post-install speech profile migration.", &v4, 0xCu);
  }

  v2 = +[CESRSpeechProfileDispatcher sharedDispatcher];
  [v2 runMigration:0];

  v3 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "_runPostInstallSpeechProfileMigration";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Done triggering post-install speech profile migration.", &v4, 0xCu);
  }
}

void sub_100145BA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = WeakRetained[7];
    v5 = v3;
    v6 = [WeakRetained clientConnections];
    *buf = 136315650;
    v31 = "[CSConnectionListener notifyClientsWithBlock:]_block_invoke";
    v32 = 2112;
    v33 = v4;
    v34 = 2048;
    v35 = [v6 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s machServiceName(%@) with clientConnCount:%lu ", buf, 0x20u);
  }

  v7 = [WeakRetained clientConnections];
  v8 = [v7 count];

  if (v8)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = WeakRetained;
    v9 = [WeakRetained clientConnections];
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          v15 = [v14 remoteObjectProxy];

          if (v15)
          {
            v16 = *(a1 + 32);
            if (v16)
            {
              v17 = CSLogContextFacilityCoreSpeech;
              if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
              {
                v18 = v17;
                v19 = [v14 remoteObjectProxy];
                *buf = 136315394;
                v31 = "[CSConnectionListener notifyClientsWithBlock:]_block_invoke";
                v32 = 2112;
                v33 = v19;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s Sending message to remote object: %@", buf, 0x16u);

                v16 = *(a1 + 32);
              }

              v20 = [v14 remoteObjectProxy];
              (*(v16 + 16))(v16, v20);
            }
          }

          else
          {
            v21 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
            {
              v22 = v21;
              v23 = [v14 processIdentifier];
              *buf = 136315394;
              v31 = "[CSConnectionListener notifyClientsWithBlock:]_block_invoke";
              v32 = 1026;
              LODWORD(v33) = v23;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s RemoteObjectProxy is nil for client PID (%{public}d)", buf, 0x12u);
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v11);
    }

    WeakRetained = v24;
  }
}

void sub_100146204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, id a23)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a23);
  _Unwind_Resume(a1);
}

void sub_100146254(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = WeakRetained[7];
    v5 = v3;
    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = v6;
    *buf = 136315906;
    v15 = "[CSConnectionListener listener:shouldAcceptNewConnection:]_block_invoke";
    v16 = 2114;
    v17 = v4;
    v18 = 2114;
    v19 = v6;
    v20 = 1026;
    v21 = [v7 processIdentifier];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s [Service:%{public}@] Listener Interruption Handler: %{public}@, client PID: %{public}d)", buf, 0x26u);
  }

  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = v8;
  if (WeakRetained && v8)
  {
    v10 = [WeakRetained queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001465FC;
    v11[3] = &unk_100253C48;
    v12 = v9;
    v13 = WeakRetained;
    dispatch_async(v10, v11);
  }
}

void sub_1001463FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = WeakRetained[7];
    v5 = v3;
    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = v6;
    *buf = 136315906;
    v14 = "[CSConnectionListener listener:shouldAcceptNewConnection:]_block_invoke_2";
    v15 = 2114;
    v16 = v4;
    v17 = 2114;
    v18 = v6;
    v19 = 1026;
    v20 = [v7 processIdentifier];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s [Service:%{public}@] Listener Invalidation Handler: %{public}@, client PID: %{public}d exited", buf, 0x26u);
  }

  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = v8;
  if (WeakRetained && v8)
  {
    v10 = [WeakRetained queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001465A8;
    v11[3] = &unk_100253C48;
    v11[4] = WeakRetained;
    v12 = v9;
    dispatch_async(v10, v11);
  }
}

void sub_1001465A8(uint64_t a1)
{
  v2 = [*(a1 + 32) clientConnections];
  [v2 removeObject:*(a1 + 40)];
}

void sub_1001465FC(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = [*(a1 + 40) clientConnections];
  [v2 removeObject:*(a1 + 32)];
}

void sub_100147204(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 CSSiriAssertionMonitor:*(a1 + 32) didReceiveBacklightOnEnabled:*(a1 + 48) atHostTime:*(a1 + 40)];
  }
}

void sub_1001472D8(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) notifyObserver:v3];
  if (objc_opt_respondsToSelector())
  {
    [v3 CSSiriAssertionMonitor:*(a1 + 32) didReceiveEnabled:*(a1 + 40)];
  }
}

void sub_1001473CC(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSSiriAssertionMonitor disableAssertionReceived]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s did receive disable assertion", &v4, 0xCu);
  }

  v3 = *(a1 + 32);
  if (*(v3 + 8) != 1)
  {
    *(v3 + 8) = 1;
    [*(a1 + 32) _notifyObserver:{objc_msgSend(*(a1 + 32), "isEnabled")}];
  }
}

void sub_10014752C(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSSiriAssertionMonitor enableAssertionReceived]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s did receive enable assertion", &v4, 0xCu);
  }

  v3 = *(a1 + 32);
  if (*(v3 + 8) != 2)
  {
    *(v3 + 8) = 2;
    [*(a1 + 32) _notifyObserver:{objc_msgSend(*(a1 + 32), "isEnabled")}];
  }
}

void sub_100147858(id a1)
{
  v1 = objc_alloc_init(CSSiriAssertionMonitor);
  v2 = qword_10029E508;
  qword_10029E508 = v1;
}

void sub_1001495DC(id a1)
{
  v1 = objc_alloc_init(CSBluetoothWirelessSplitterMonitorImpIOS);
  v2 = qword_10029E520;
  qword_10029E520 = v1;

  if (+[CSUtils isDarwinOS])
  {
    v3 = objc_alloc_init(CSBluetoothWirelessSplitterMonitorImplDarwin);
    v4 = qword_10029E520;
    qword_10029E520 = v3;
  }
}

void sub_100149914(id a1)
{
  v1 = objc_alloc_init(CSAudioPowerProvider);
  v2 = qword_10029E528;
  qword_10029E528 = v1;
}

id sub_100149C40(uint64_t a1)
{
  v2 = [*(a1 + 32) length];
  v3 = v2 / +[CSConfig inputRecordingNumberOfChannels];
  v4 = v3 / +[CSConfig inputRecordingSampleByteDepth];
  [*(*(a1 + 40) + 200) addSamples:objc_msgSend(*(a1 + 32) numSamples:{"bytes"), v4}];
  v5 = *(a1 + 40);
  if (*(v5 + 168) == 1 && (*(v5 + 169) & 1) == 0)
  {
    v6 = [CSAudioChunk alloc];
    v7 = *(a1 + 32);
    v8 = +[CSConfig inputRecordingNumberOfChannels];
    v9 = +[CSConfig inputRecordingSampleByteDepth];
    LOBYTE(v40) = +[CSConfig inputRecordingIsFloat];
    v10 = [v6 initWithData:v7 numChannels:v8 numSamples:v4 sampleByteDepth:v9 startSampleCount:0 hostTime:0 remoteVAD:0 isFloat:v40];
    v11 = [*(*(a1 + 40) + 192) getBestAnalyzedResultsFromAudioChunk:v10];
    [v11 bestScore];
    v13 = v12;
    [*(*(a1 + 40) + 192) getThreshold];
    if (v13 >= v14)
    {
      *(*(a1 + 40) + 208) = [v11 bestStart];
      [*(*(a1 + 40) + 192) reset];
      v15 = +[CSSpeechManager sharedManager];
      v16 = +[CSDeviceActivationEventNotificationHandler sharedInstance];
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 224));
      v18 = [WeakRetained deviceID];
      v19 = [CSDeviceActivationEvent remoraVoiceTriggerEvent:v18 activationInfo:0 hostTime:mach_absolute_time()];
      [v16 notifyActivationEvent:v19 completion:&stru_100252C18];
    }
  }

  while (1)
  {
    v20 = *(*(a1 + 40) + 216);
    +[CSConfig inputRecordingBufferDuration];
    v22 = v21;
    +[CSConfig inputRecordingSampleRate];
    v24 = v20 + v22 * v23;
    result = [*(*(a1 + 40) + 200) sampleCount];
    if (v24 >= result)
    {
      break;
    }

    v26 = *(a1 + 40);
    v27 = *(v26 + 200);
    v28 = *(v26 + 216);
    +[CSConfig inputRecordingBufferDuration];
    v30 = v29;
    +[CSConfig inputRecordingSampleRate];
    v32 = [v27 copybufferFrom:v28 to:(v28 + v30 * v31)];
    +[CSConfig inputRecordingBufferDuration];
    v34 = v33;
    +[CSConfig inputRecordingSampleRate];
    *(*(a1 + 40) + 216) = (*(*(a1 + 40) + 216) + v34 * v35);
    v36 = *(a1 + 40);
    if (*(v36 + 169) == 1)
    {
      v37 = objc_loadWeakRetained((v36 + 184));
      v38 = objc_opt_respondsToSelector();

      if (v38)
      {
        v39 = objc_loadWeakRetained((*(a1 + 40) + 184));
        [v39 audioEngineBufferAvailable:*(a1 + 40) audioStreamHandleId:*(a1 + 48) buffer:v32 remoteVAD:0 atTime:*(a1 + 56) isFileLoadedBuffer:*(a1 + 64)];
      }
    }
  }

  return result;
}

void sub_10014A034(uint64_t a1)
{
  *(*(a1 + 32) + 169) = 0;
  *(*(a1 + 32) + 208) = 0;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 184));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 184));
    [v4 audioEngineDidStopRecord:*(a1 + 32) audioStreamHandleId:objc_msgSend(*(a1 + 32) reason:{"audioStreamHandleId"), 0}];
  }
}

void sub_10014A18C(uint64_t a1)
{
  *(*(a1 + 32) + 169) = 1;
  *(*(a1 + 32) + 216) = [*(*(a1 + 32) + 200) sampleCount];
  v2 = *(a1 + 32);
  v3 = *(v2 + 208);
  if (v3)
  {
    if (v3 >> 6 <= 0x7C)
    {
      v4 = 0;
    }

    else
    {
      v4 = v3 - 8000;
    }

    *(v2 + 216) = v4;
    v2 = *(a1 + 32);
  }

  [*(v2 + 192) reset];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 184));
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained((*(a1 + 32) + 184));
    [v7 audioEngineDidStartRecord:*(a1 + 32) audioStreamHandleId:objc_msgSend(*(a1 + 32) successfully:"audioStreamHandleId") error:{1, 0}];
  }
}

id sub_10014A47C(uint64_t a1)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = CSFileAudioInjectionRemoraEngine;
  objc_msgSendSuper2(&v4, "stopAudioStreamWithOutError:", 0);
  v3.receiver = *(a1 + 32);
  v3.super_class = CSFileAudioInjectionRemoraEngine;
  objc_msgSendSuper2(&v3, "stop");
  return [*(*(a1 + 32) + 200) reset];
}

void sub_10014A574(uint64_t a1)
{
  v15.receiver = *(a1 + 32);
  v15.super_class = CSFileAudioInjectionRemoraEngine;
  objc_msgSendSuper2(&v15, "start");
  v2 = +[CSAsset defaultFallBackAssetForVoiceTrigger];
  v3 = [CSVoiceTriggerFirstPassConfigDecoder decodeConfigFrom:v2];
  v4 = [CSKeywordAnalyzerNDAPI alloc];
  v5 = [v3 configPathNDAPI];
  v6 = [v2 resourcePath];
  v7 = [v4 initWithConfigPath:v5 resourcePath:v6];
  v8 = *(a1 + 32);
  v9 = *(v8 + 192);
  *(v8 + 192) = v7;

  v10 = *(*(a1 + 32) + 192);
  if (!v10)
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v17 = "[CSFileAudioInjectionRemoraEngine start]_block_invoke";
      _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "%s Failed to create NDAPI", buf, 0xCu);
      v10 = *(*(a1 + 32) + 192);
    }

    else
    {
      v10 = 0;
    }
  }

  [v10 setActiveChannel:0];
  v12 = *(a1 + 32);
  v13 = +[CSAudioStartStreamOption noAlertOption];
  v14.receiver = v12;
  v14.super_class = CSFileAudioInjectionRemoraEngine;
  objc_msgSendSuper2(&v14, "startAudioStreamWithOption:withOutError:", v13, 0);
}

void sub_10014ADC4(id a1)
{
  v1 = objc_alloc_init(CSCommandControlStreamEventMonitor);
  v2 = qword_10029E538;
  qword_10029E538 = v1;
}

void sub_10014B254(uint64_t a1)
{
  v2 = kVTEIAudioProviderType;
  v3 = [*(a1 + 32) objectForKeyedSubscript:kVTEIAudioProviderType];
  if (v3 && (v4 = v3, [*(a1 + 32) objectForKeyedSubscript:v2], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "unsignedIntegerValue"), v5, v4, v6 == 1))
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:kVTEIAudioTapProviderType];
    v8 = [v7 unsignedIntegerValue];

    v9 = [*(a1 + 40) speechManager];
    v10 = [v9 audioTapProviderWithType:v8];
  }

  else
  {
    v9 = [*(a1 + 40) speechManager];
    v10 = [v9 audioProviderWithUUID:*(a1 + 48)];
  }

  v14 = v10;

  v11 = [*(a1 + 32) objectForKeyedSubscript:kVTEItriggerStartSampleCount];
  v12 = [v11 unsignedIntegerValue];
  v13 = [NSURL URLWithString:*(a1 + 56)];
  [v14 saveRecordingBufferToEndFrom:v12 toURL:v13];

  [*(a1 + 40) _writeDictionary:*(a1 + 32) toPath:*(a1 + 64)];
}

void sub_10014B5F4(id a1)
{
  if ((CSIsIOS() & 1) != 0 || CSIsHorseman())
  {
    v1 = +[CSP2PService sharedInstance];
    [v1 sendVTNearMissGradingDataToCompanion];
  }
}

void sub_10014B81C(id a1)
{
  if ((CSIsIOS() & 1) != 0 || CSIsHorseman())
  {
    v1 = +[CSP2PService sharedInstance];
    [v1 sendGeckoSpeechLogsToCompanion];
  }
}

void sub_10014B9F8(id a1)
{
  if ((CSIsIOS() & 1) != 0 || CSIsHorseman())
  {
    v1 = +[CSP2PService sharedInstance];
    [v1 sendVTNearMissGradingDataToCompanion];
  }
}

uint64_t sub_10014BC7C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10014BC94(uint64_t a1)
{
  v2 = [*(a1 + 32) speechManager];
  v9 = [v2 audioProviderWithUUID:*(a1 + 40)];

  v3 = [*(a1 + 48) objectForKeyedSubscript:kVTEIsecondPassAnalyzerStartSampleCount];
  v4 = [v3 unsignedIntegerValue];
  v5 = [*(a1 + 48) objectForKeyedSubscript:kVTEIsecondPassAnalyzerEndSampleCount];
  v6 = [v5 unsignedIntegerValue];
  v7 = [NSURL URLWithString:*(a1 + 56)];
  [v9 saveRecordingBufferFrom:v4 to:v6 toURL:v7];

  [*(a1 + 32) _writeDictionary:*(a1 + 48) toPath:*(a1 + 64)];
  v8 = *(a1 + 72);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

void sub_10014BF14(id a1)
{
  if ((CSIsIOS() & 1) != 0 || CSIsHorseman())
  {
    v1 = +[CSP2PService sharedInstance];
    [v1 sendVTNearMissGradingDataToCompanion];
  }
}

void sub_10014D07C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1[4] + 8) objectForKeyedSubscript:v4];
  [v5 refresh];
  v6 = [v5 levelForFactor:@"AssetData" withNamespaceName:v4];
  v7 = v6;
  if (v6 && ([v6 fileValue], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "path"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    v10 = [v7 fileValue];
    v11 = [v10 path];

    v12 = [v5 levelForFactor:@"isAssetArchived" withNamespaceName:v4];

    if (v12 && [v12 BOOLeanValue])
    {
      v13 = +[CSFPreferences sharedPreferences];
      v14 = [v13 trialBaseAssetDirectory];

      v15 = [CSAssetController getAssetTypeStringForType:a1[6]];
      v16 = [v14 stringByAppendingPathComponent:v15];

      v11 = [v16 stringByAppendingPathComponent:@"TrialAssetData"];
    }

    v7 = [v5 levelForFactor:@"AssetVersion" withNamespaceName:v4];

    v17 = a1[6];
    v18 = [v7 stringValue];
    v19 = [CSAsset assetForAssetType:v17 resourcePath:v11 configVersion:v18 assetProvider:1];

    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v26 = [NSString stringWithFormat:@"Unable to get Trial asset from path: %@", v11];
      v27 = CSLogCategoryAsset;
      if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v36 = "[CSTrialAssetManager getInstalledAssetofType:forLocale:completion:]_block_invoke";
        v37 = 2112;
        v38 = v26;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
      }

      v28 = CSErrorDomain;
      v31 = @"reason";
      v32 = v26;
      v29 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v20 = [NSError errorWithDomain:v28 code:1601 userInfo:v29];
    }

    v30 = a1[5];
    if (v30)
    {
      (*(v30 + 16))(v30, v19, v20);
    }
  }

  else
  {
    v21 = [v7 fileValue];
    v22 = [v21 path];
    v19 = [NSString stringWithFormat:@"Unable to get Trial asset from path: %@", v22];

    v23 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "[CSTrialAssetManager getInstalledAssetofType:forLocale:completion:]_block_invoke";
      v37 = 2112;
      v38 = v19;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
    }

    v24 = CSErrorDomain;
    v33 = @"reason";
    v34 = v19;
    v25 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v20 = [NSError errorWithDomain:v24 code:1601 userInfo:v25];

    (*(a1[5] + 16))();
  }
}

void sub_10014D71C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [TRIClient clientWithIdentifier:a2];
  if (v5)
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }
}

void sub_10014D7E8(id a1)
{
  v1 = objc_alloc_init(CSTrialAssetManager);
  v2 = qword_10029E548;
  qword_10029E548 = v1;
}

void sub_10014D8B4(uint64_t a1)
{
  v2 = +[AVSystemController sharedAVSystemController];
  v3 = [v2 attributeForKey:AVSystemController_CurrentlyActiveCategoryAttribute];

  v4 = +[AVSystemController sharedAVSystemController];
  v5 = [v4 attributeForKey:AVSystemController_CurrentlyActiveModeAttribute];

  if (v3)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v13 = "[CSMXSessionMonitor _querySomeClientIsActive]_block_invoke";
      v14 = 2112;
      v15 = v3;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s CurrentlyActiveCategory: %@. CurrentlyActiveMode: %@", buf, 0x20u);
    }

    v8 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10014DA60;
    v9[3] = &unk_100253AD0;
    v10 = v3;
    v11 = v5;
    [v8 enumerateObserversInQueue:v9];
  }
}

void sub_10014DA60(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v6[0] = kMXSessionProperty_AudioCategory;
    v6[1] = kMXSessionProperty_AudioMode;
    v4 = *(a1 + 40);
    v7[0] = *(a1 + 32);
    v7[1] = v4;
    v6[2] = kMXSession_RouteChangeDescriptionKey_AudioSessionID;
    v6[3] = kMXSessionProperty_IsActive;
    v7[2] = &off_10025E870;
    v7[3] = &__kCFBooleanTrue;
    v5 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:4];
    [v3 mxSessionMonitorSomeClientWentActive:v5];
  }
}

void sub_10014DBF4(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v8 = "[CSMXSessionMonitor _handleSomeClientIsActiveDidChangeNotification:]_block_invoke";
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s handleSomeClientIsActiveDidChangeNotification = %{public}@", buf, 0x16u);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10014DD14;
  v5[3] = &unk_100253B48;
  v4 = *(a1 + 40);
  v6 = *(a1 + 32);
  [v4 enumerateObserversInQueue:v5];
}

void sub_10014DD14(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = [v3 userInfo];
      [v5 mxSessionMonitorSomeClientWentActive:v4];
    }

    else
    {
      [v5 mxSessionMonitorSomeClientWentActive:0];
    }
  }
}

void sub_10014E38C(id a1)
{
  v1 = objc_alloc_init(CSMXSessionMonitor);
  v2 = qword_10029E558;
  qword_10029E558 = v1;
}

void sub_10014EB74(uint64_t a1, BOOL a2, uint64_t a3)
{
  xdict = xpc_dictionary_create_reply(*(a1 + 32));
  xpc_dictionary_set_BOOL(xdict, "result", a2);
  xpc_dictionary_set_uint64(xdict, "alertStartTime", a3);
  xpc_connection_send_message(*(a1 + 40), xdict);
}

void sub_10014FE34(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSSiriAudioMessageRequestHandler attSiriAudioSrcNodeDidStop:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Ending feeding audio to currentSiriAudioMessageFile", &v5, 0xCu);
  }

  [*(*(a1 + 32) + 32) endAudio];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  if (v4)
  {
    *(v3 + 32) = 0;

    dispatch_group_leave(*(*(a1 + 32) + 40));
  }
}

void sub_10014FF88(uint64_t a1)
{
  [*(*(a1 + 32) + 32) endAudio];
  v2 = [*(a1 + 32) audioMessageAudioFiles];
  v3 = [*(*(a1 + 32) + 32) requestUUID];
  [v2 removeObjectForKey:v3];

  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  if (v5)
  {
    *(v4 + 32) = 0;

    v6 = *(*(a1 + 32) + 40);

    dispatch_group_leave(v6);
  }
}

void sub_10015036C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 requestId];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

id sub_100150440(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeAllObjects];
  v2 = *(a1 + 32);

  return [v2 _releaseRetainIfNeeded];
}

id sub_100150518(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v23 = "[CSSiriAudioMessageRequestHandler releaseAudioMessageRetainLockFromRequestId:]_block_invoke";
    v24 = 2112;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Releasing audio message retain lock from requestId : %@", buf, 0x16u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [*(a1 + 40) audioMessageFileRetainLocks];
  v5 = [v4 allKeys];

  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = [*(a1 + 40) audioMessageFileRetainLocks];
        v12 = [v11 objectForKeyedSubscript:v10];
        v13 = [v12 requestId];
        v14 = [v13 isEqualToString:*(a1 + 32)];

        if (v14)
        {
          v15 = [*(a1 + 40) audioMessageFileRetainLocks];
          [v15 removeObjectForKey:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return [*(a1 + 40) _releaseRetainIfNeeded];
}

void sub_1001508B4(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  v5 = *(v3 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100150998;
  block[3] = &unk_100252E58;
  *&v6 = *(a1 + 40);
  *(&v6 + 1) = *v2;
  v10 = v6;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v12 = v10;
  v13 = v9;
  dispatch_group_notify(v4, v5, block);
}

void sub_100150998(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v16 = 136315394;
    v17 = "[CSSiriAudioMessageRequestHandler getAudioFileWithRequestId:completion:]_block_invoke_2";
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Scheduled fetching Audio File with RequestID : %@", &v16, 0x16u);
  }

  v4 = [*(a1 + 40) audioMessageAudioFiles];
  v5 = [v4 objectForKey:*(a1 + 32)];

  if (v5)
  {
    v6 = *(a1 + 48);
    v7 = *(*(a1 + 40) + 24);
    v8 = [v6 UUIDString];
    [v7 setObject:v6 forKey:v8];

    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [v5 recordedAudioFileURL];
      v16 = 136315394;
      v17 = "[CSSiriAudioMessageRequestHandler getAudioFileWithRequestId:completion:]_block_invoke";
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Returing _recordedAudioFileURL = %@", &v16, 0x16u);
    }

    v12 = *(a1 + 56);
    if (v12)
    {
      v13 = [v5 recordedAudioFileURL];
      (*(v12 + 16))(v12, 0, v13);
    }
  }

  else
  {
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315138;
      v17 = "[CSSiriAudioMessageRequestHandler getAudioFileWithRequestId:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Unable to find recordAudioFileURL, passing nil", &v16, 0xCu);
    }

    v15 = *(a1 + 56);
    if (v15)
    {
      (*(v15 + 16))(v15, 0, 0);
    }
  }
}

void sub_100150CA4(uint64_t a1)
{
  v2 = [*(a1 + 32) isContinuousConversation];
  v3 = ([*(a1 + 32) isRequestDuringActiveCall] ^ 1) & v2;
  if (CSIsOSX())
  {
    v4 = +[AFPreferences sharedPreferences];
    v5 = [v4 fileLoggingIsEnabled];

    if ((v5 & v3 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v3 & 1) == 0)
  {
LABEL_3:
    v6 = *(a1 + 48);
    v7 = *(v6 + 32);
    *(v6 + 32) = 0;

    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[CSSiriAudioMessageRequestHandler startLoggingWithRequestId:recordContext:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Not start audio message request logging, use audio logging in the legacy path", &v14, 0xCu);
    }

    return;
  }

  v9 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 40);
    v14 = 136315394;
    v15 = "[CSSiriAudioMessageRequestHandler startLoggingWithRequestId:recordContext:]_block_invoke";
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Start audio message handling logging, for the CC : %@", &v14, 0x16u);
  }

  v11 = [*(a1 + 48) _createAudioMessageFile:*(a1 + 40)];
  v12 = *(a1 + 48);
  v13 = *(v12 + 32);
  *(v12 + 32) = v11;

  [*(*(a1 + 48) + 32) prepareFile];
  dispatch_group_enter(*(*(a1 + 48) + 40));
}

void sub_100151374(id a1)
{
  v1 = objc_alloc_init(CSAVCallConnectedMonitor);
  v2 = qword_10029E568;
  qword_10029E568 = v1;
}

void sub_100152098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001520B8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleClientEvent:v3];
}

void sub_100152494(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 profileID];
    v8 = 136315650;
    v9 = "[CSVoiceProfileRetrainManager _retrainingVoiceProfile:voiceProfile:asset:secureAsset:]_block_invoke";
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Retraining done for profile %@ with error %@", &v8, 0x20u);
  }
}

uint64_t sub_100152BD0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100152BE8(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[CSVoiceProfileRetrainManager _runRetrainerWithAssets:withSecureAsset:languageCode:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Triggered migration if needed...", &buf, 0xCu);
  }

  v3 = objc_autoreleasePoolPush();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v8 = 0x3032000000;
  v9 = sub_100152BD0;
  v10 = sub_100152BE0;
  v11 = [[CSOSTransaction alloc] initWithDescription:@"VoiceProfile Migration"];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100152F40;
  v6[3] = &unk_100252F88;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  v6[5] = &buf;
  [v4 triggerVoiceProfileMigrationWithCompletion:v6];
  _Block_object_dispose(&buf, 8);

  objc_autoreleasePoolPop(v3);
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[CSVoiceProfileRetrainManager _runRetrainerWithAssets:withSecureAsset:languageCode:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Completed one-time migration...", &buf, 0xCu);
  }
}

void sub_100152DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100152DE0(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = CSLogContextFacilityCoreSpeech;
  v9 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
  if (!v6 || v7)
  {
    if (v9)
    {
      v10 = 136315138;
      v11 = "[CSVoiceProfileRetrainManager _runRetrainerWithAssets:withSecureAsset:languageCode:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Speaker recognition asset not found", &v10, 0xCu);
    }
  }

  else
  {
    if (v9)
    {
      v10 = 136315394;
      v11 = "[CSVoiceProfileRetrainManager _runRetrainerWithAssets:withSecureAsset:languageCode:]_block_invoke";
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Found speaker recognition asset:%@", &v10, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  [*(a1 + 32) _retrainingVoiceProfile:*(a1 + 40) voiceProfile:*(a1 + 48) asset:*(*(*(a1 + 56) + 8) + 40) secureAsset:0];
}

void sub_100152F40(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = *(*(*(a1 + 32) + 8) + 40);
  if (v5)
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[CSVoiceProfileRetrainManager _runRetrainerWithAssets:withSecureAsset:languageCode:]_block_invoke";
      v11 = 2114;
      v12 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s ERR: Failed voice profile migration with error %{public}@", &v9, 0x16u);
    }
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_100153340(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 8);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100153418;
  v12[3] = &unk_100252F38;
  v13 = v5;
  v14 = v8;
  v15 = v7;
  v16 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, v12);
}

void sub_100153418(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = CSLogContextFacilityCoreSpeech;
  if (v2)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[CSVoiceProfileRetrainManager _speakerRecognitionCleanupDuplicatedProfilesCallback]_block_invoke_2";
      v9 = 2112;
      v10 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Fetched latest VT asset %@ for retraining", &v7, 0x16u);
      v2 = *(a1 + 32);
    }

    [*(a1 + 40) _runVoiceProfileRetrainerWithAsset:v2 withSecureAsset:0 withLanguageCode:*(a1 + 48)];
  }

  else if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 56);
    v5 = v3;
    v6 = [v4 localizedDescription];
    v7 = 136315394;
    v8 = "[CSVoiceProfileRetrainManager _speakerRecognitionCleanupDuplicatedProfilesCallback]_block_invoke";
    v9 = 2112;
    v10 = v6;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Cannot retrain since we cannot look-up SSR asset with error %@", &v7, 0x16u);
  }
}

void sub_1001536C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 8);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10015379C;
  v12[3] = &unk_100252F38;
  v13 = v5;
  v14 = v8;
  v15 = v7;
  v16 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, v12);
}

void sub_10015379C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = CSLogContextFacilityCoreSpeech;
  if (v2)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[CSVoiceProfileRetrainManager _speakerRecognitionModelRetrainCallback]_block_invoke_2";
      v9 = 2112;
      v10 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Fetched latest SSR asset %@ for retraining", &v7, 0x16u);
      v2 = *(a1 + 32);
    }

    [*(a1 + 40) _runVoiceProfileRetrainerWithAsset:v2 withSecureAsset:0 withLanguageCode:*(a1 + 48)];
  }

  else if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 56);
    v5 = v3;
    v6 = [v4 localizedDescription];
    v7 = 136315394;
    v8 = "[CSVoiceProfileRetrainManager _speakerRecognitionModelRetrainCallback]_block_invoke";
    v9 = 2112;
    v10 = v6;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Cannot retrain since we cannot look-up SSR asset with error %@", &v7, 0x16u);
  }
}

void sub_100153B08(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 8);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100153BE0;
  v12[3] = &unk_100252F38;
  v13 = v5;
  v14 = v8;
  v15 = v7;
  v16 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, v12);
}

void sub_100153BE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = CSLogContextFacilityCoreSpeech;
  if (v2)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[CSVoiceProfileRetrainManager CSSpeakerRecognitionAssetDownloadMonitor:didInstallNewAsset:assetProviderType:]_block_invoke_2";
      v9 = 2112;
      v10 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Fetched latest SSR asset %@ for retraining", &v7, 0x16u);
      v2 = *(a1 + 32);
    }

    [*(a1 + 40) _runVoiceProfileRetrainerWithAsset:v2 withSecureAsset:0 withLanguageCode:*(a1 + 48)];
  }

  else if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 56);
    v5 = v3;
    v6 = [v4 localizedDescription];
    v7 = 136315394;
    v8 = "[CSVoiceProfileRetrainManager CSSpeakerRecognitionAssetDownloadMonitor:didInstallNewAsset:assetProviderType:]_block_invoke";
    v9 = 2112;
    v10 = v6;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Cannot retrain since we cannot look-up SSR asset with error %@", &v7, 0x16u);
  }
}

void sub_100153E88(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 8);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100153F60;
  v12[3] = &unk_100252F38;
  v13 = v5;
  v14 = v8;
  v15 = v7;
  v16 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, v12);
}

void sub_100153F60(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = CSLogContextFacilityCoreSpeech;
  if (v2)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[CSVoiceProfileRetrainManager CSLanguageCodeUpdateMonitor:didReceiveLanguageCodeChanged:]_block_invoke_2";
      v9 = 2112;
      v10 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Fetched latest assets %@ for retraining", &v7, 0x16u);
      v2 = *(a1 + 32);
    }

    [*(a1 + 40) _runVoiceProfileRetrainerWithAsset:v2 withSecureAsset:0 withLanguageCode:*(a1 + 48)];
  }

  else if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 56);
    v5 = v3;
    v6 = [v4 localizedDescription];
    v7 = 136315394;
    v8 = "[CSVoiceProfileRetrainManager CSLanguageCodeUpdateMonitor:didReceiveLanguageCodeChanged:]_block_invoke";
    v9 = 2114;
    v10 = v6;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Cannot retrain since we cannot look-up VoiceTrigger asset : %{public}@", &v7, 0x16u);
  }
}

void sub_100154134(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v6 = "[CSVoiceProfileRetrainManager CSVoiceTriggerEnabledMonitor:didReceiveEnabled:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger is enabled, trigger retraining if needed!", buf, 0xCu);
    }

    v3 = +[CSVoiceTriggerAssetHandler sharedHandler];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10015425C;
    v4[3] = &unk_100252F10;
    v4[4] = *(a1 + 32);
    [v3 getVoiceTriggerAssetWithEndpointId:0 completion:v4];
  }
}

void sub_10015425C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100154324;
  block[3] = &unk_100253680;
  v12 = v5;
  v13 = v7;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, block);
}

void sub_100154324(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = CSLogContextFacilityCoreSpeech;
  if (v2)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CSVoiceProfileRetrainManager CSVoiceTriggerEnabledMonitor:didReceiveEnabled:]_block_invoke_2";
      v10 = 2112;
      v11 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Fetched latest assets %@ for retraining", &v8, 0x16u);
    }

    v4 = [CSUtils getSiriLanguageWithFallback:0];
    if (v4)
    {
      [*(a1 + 40) _runVoiceProfileRetrainerWithAsset:*(a1 + 32) withSecureAsset:0 withLanguageCode:v4];
    }

    else
    {
      v7 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315138;
        v9 = "[CSVoiceProfileRetrainManager CSVoiceTriggerEnabledMonitor:didReceiveEnabled:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s LanguageCode is nil - Bailing out", &v8, 0xCu);
      }
    }
  }

  else
  {
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v5 = *(a1 + 48);
    v4 = v3;
    v6 = [v5 localizedDescription];
    v8 = 136315394;
    v9 = "[CSVoiceProfileRetrainManager CSVoiceTriggerEnabledMonitor:didReceiveEnabled:]_block_invoke";
    v10 = 2114;
    v11 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Cannot retrain since we cannot look-up VoiceTrigger asset : %{public}@", &v8, 0x16u);
  }
}

void sub_100154580(uint64_t a1)
{
  v2 = [CSUtils getSiriLanguageWithFallback:0];
  v3 = CSLogContextFacilityCoreSpeech;
  v4 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = 136315650;
      v7 = "[CSVoiceProfileRetrainManager triggerVoiceProfileRetrainingWithAsset:withSecureAsset:]_block_invoke";
      v8 = 2114;
      v9 = v2;
      v10 = 2114;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Retraining on %{public}@ with asset %{public}@", &v6, 0x20u);
    }

    [*(a1 + 40) _runVoiceProfileRetrainerWithAsset:*(a1 + 32) withSecureAsset:0 withLanguageCode:v2];
  }

  else if (v4)
  {
    v6 = 136315138;
    v7 = "[CSVoiceProfileRetrainManager triggerVoiceProfileRetrainingWithAsset:withSecureAsset:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s LanguageCode is nil - Bailing out", &v6, 0xCu);
  }
}

void sub_100154828(uint64_t a1)
{
  v2 = +[CSVoiceTriggerEnabledMonitor sharedInstance];
  [v2 addObserver:*(a1 + 32)];

  v3 = +[CSLanguageCodeUpdateMonitor sharedInstance];
  [v3 addObserver:*(a1 + 32)];

  if (+[CSUtils supportsSpeakerRecognitionAssets])
  {
    v4 = +[CSFPreferences sharedPreferences];
    v5 = [v4 isSpeakerRecognitionAvailable];

    if (v5)
    {
      v6 = objc_alloc_init(CSAssetDownloadingOption);
      [(CSAssetDownloadingOption *)v6 setAllowSpeakerRecognitionAssetDownloading:1];
      v7 = +[CSAssetManager sharedManager];
      [v7 setAssetDownloadingOption:v6];

      v8 = +[CSSpeakerRecognitionAssetDownloadMonitor sharedInstance];
      [v8 addObserver:*(a1 + 32)];

      v9 = +[SSRAssetManager sharedManager];
      v10 = +[NSDistributedNotificationCenter defaultCenter];
      [v10 addObserver:*(a1 + 32) selector:"_speakerRecognitionModelRetrainCallback" name:kSSRSpeakerModelRetrainRequired object:0];
    }
  }

  if (CSIsIOS())
  {
    v11 = +[NSDistributedNotificationCenter defaultCenter];
    [v11 addObserver:*(a1 + 32) selector:"_speakerRecognitionCleanupDuplicatedProfilesCallback" name:kSSRSpeakerVoiceProfileSync object:0];

    v12 = +[NSDistributedNotificationCenter defaultCenter];
    [v12 addObserver:*(a1 + 32) selector:"_migrateTDVoiceProfileCallback" name:kSSRVoiceProfileMigrateTDProfileKey object:0];
  }
}

void sub_100154A64(id a1)
{
  if (((CSIsIOS() & 1) != 0 || (+[CSUtils supportsSpeakerRecognitionAssets](CSUtils, "supportsSpeakerRecognitionAssets") & 1) != 0 || CSIsASMacWithAOP()) && (+[CSUtils isDarwinOS]& 1) == 0)
  {
    v1 = objc_alloc_init(CSVoiceProfileRetrainManager);
  }

  else
  {
    v1 = 0;
  }

  v2 = qword_10029E578;
  qword_10029E578 = v1;
}

id sub_10015527C(uint64_t a1, uint64_t a2)
{
  v4 = [*(*(a1 + 32) + 104) bestEnd];
  v5 = *(a1 + 32);
  v6 = *(v5 + 112);
  v7 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_INFO))
  {
    v11 = 136315651;
    v12 = "[CSBuiltInVoiceTrigger _firstPassVoiceTriggerSignalEstimate]_block_invoke";
    v13 = 1025;
    *v14 = v4;
    *&v14[4] = 1025;
    *&v14[6] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s bestEnd = %{private}d, bestChannel = %{private}d", &v11, 0x18u);
    v5 = *(a1 + 32);
  }

  v8 = [*(v5 + 168) audioChunkFrom:&v4[-a2] to:v4 channelIdx:v6];
  v9 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_INFO))
  {
    v11 = 136315395;
    v12 = "[CSBuiltInVoiceTrigger _firstPassVoiceTriggerSignalEstimate]_block_invoke";
    v13 = 2113;
    *v14 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s audio chunk: %{private}@", &v11, 0x16u);
  }

  return v8;
}

void sub_100155BB0(uint64_t a1)
{
  [*(a1 + 32) setAttSiriState:*(a1 + 40)];
  v2 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = 136315394;
    v5 = "[CSBuiltInVoiceTrigger attSiriStateMonitor:didRecieveAttSiriStateChange:]_block_invoke";
    v6 = 2048;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Updated attSiri state to: %lu", &v4, 0x16u);
  }
}

id sub_100155CE8(uint64_t a1)
{
  [*(a1 + 32) setPhoneCallState:*(a1 + 40)];
  result = [*(*(a1 + 32) + 200) isEnabled];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    if (*(v3 + 8) == 1)
    {
      v4 = (*(a1 + 40) - 2) < 3;
      v5 = *(v3 + 168);

      return [v5 setAnnounceCallsEnabled:v4 withStreamHandleID:1];
    }
  }

  return result;
}

void sub_10015641C(uint64_t a1)
{
  v2 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v9 = 136315394;
    v10 = "[CSBuiltInVoiceTrigger CSAudioRouteChangeMonitor:didReceiveAudioRouteChangeEvent:]_block_invoke";
    v11 = 1026;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Received audio route change monitor event : %{public}d", &v9, 0x12u);
  }

  v4 = *(a1 + 40);
  if (v4 > 3)
  {
    if (v4 > 5)
    {
      if (v4 == 6)
      {
        v7 = *(a1 + 32);
        v8 = 5;
      }

      else
      {
        if (v4 != 7)
        {
          return;
        }

        v7 = *(a1 + 32);
        v8 = 6;
      }
    }

    else
    {
      v7 = *(a1 + 32);
      if (v4 == 4)
      {
        v8 = 3;
      }

      else
      {
        v8 = 4;
      }
    }

    goto LABEL_21;
  }

  if (v4 > 1)
  {
    v7 = *(a1 + 32);
    if (v4 == 2)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

LABEL_21:
    [v7 _receivedHearstRoutedEvent:v8];
    return;
  }

  if (v4)
  {
    if (v4 != 1)
    {
      return;
    }

    v5 = *(a1 + 32);
    v6 = 0;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = 1;
  }

  [v5 _receivedJarvisConnectionEvent:v6];
}

id *sub_1001567B4(id *result)
{
  if (result[6] == 1 && !result[4])
  {
    return [result[5] _cancelLastAudioStreamHold];
  }

  return result;
}

void sub_100156858(uint64_t a1)
{
  v2 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSBuiltInVoiceTrigger cancelSecondPassRunning]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Requested cancelling 2nd pass trigger", &v4, 0xCu);
  }

  v3 = [*(a1 + 32) voiceTriggerSecondPass];
  [v3 forceCancelSecondPassTrigger];
}

void sub_100157088(id *a1)
{
  v2 = [a1[4] _isBuiltInAOPVoiceTriggerEvent:a1[5]];
  v3 = a1[4];
  if (v2)
  {
    if ([v3 _shouldHandleAOPVoiceTrigger])
    {
      if (+[CSUtils isExclaveHardware])
      {
        v4 = 12;
      }

      else
      {
        v4 = 2;
      }

      [a1[4] _createSecondPassIfNeededWithFirstPassSource:v4];
      v5 = a1[4];
      v6 = +[CSAudioRecordContext contextForBuiltInVoiceTrigger];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10015732C;
      v27[3] = &unk_100253300;
      v27[4] = a1[4];
      [v5 _requestStartAudioStreamWithSource:v4 context:v6 completion:v27];

      v7 = +[CSUtils isExclaveHardware];
      v8 = a1[4];
      if (v7)
      {
        v9 = [a1[4] exclaveClient];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_100157480;
        v22[3] = &unk_100253378;
        v25 = a1[6];
        v10 = a1[5];
        v11 = a1[4];
        v23 = v10;
        v24 = v11;
        v26 = v4;
        [v9 fetchAOPVoiceTriggerResult:v22];

        v12 = v25;
      }

      else
      {
        v19 = a1[5];
        v12 = [a1[4] audioProvider];
        v20 = [v12 UUID];
        v21 = [a1[5] activationInfo];
        [v8 _handleVoiceTriggerSecondPassWithSource:v4 deviceId:0 event:v19 audioProviderUUID:v20 firstPassInfo:v21];
      }

      return;
    }

    v18 = a1[6];
    if (!v18)
    {
      return;
    }

    v17 = *(v18 + 2);
  }

  else
  {
    if (![v3 _isVoiceTriggerStateTransitionEvent:a1[5]])
    {
      return;
    }

    v13 = [a1[5] activationInfo];
    v14 = [v13 objectForKeyedSubscript:@"VoiceTriggerEnabledKey"];
    v15 = [v14 BOOLValue];

    [a1[4] _transitVoiceTriggerStatus:v15 force:0];
    v16 = a1[6];
    if (!v16)
    {
      return;
    }

    v17 = *(v16 + 2);
  }

  v17();
}

void sub_10015732C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 56);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100157690;
    block[3] = &unk_100253C20;
    block[4] = v6;
    dispatch_async(v7, block);
  }

  else
  {
    v8 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      v10 = [v5 localizedDescription];
      *buf = 136315394;
      v13 = "[CSBuiltInVoiceTrigger activationEventNotificationHandler:event:completion:]_block_invoke_2";
      v14 = 2114;
      v15 = v10;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Failed to start audio stream error : %{public}@", buf, 0x16u);
    }
  }
}

void sub_100157480(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    v8 = [*(a1 + 32) activationInfo];
    v6 = [v8 mutableCopy];

    if (a2)
    {
      v9 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315394;
        v18 = "[CSBuiltInVoiceTrigger activationEventNotificationHandler:event:completion:]_block_invoke";
        v19 = 2050;
        v20 = a2;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s trigger-length : %{public}llu", &v17, 0x16u);
      }

      v10 = [NSNumber numberWithUnsignedLongLong:a2];
      [v6 setObject:v10 forKey:@"trigger-length"];
    }

    v11 = *(a1 + 56);
    v14 = a1 + 32;
    v12 = *(a1 + 32);
    v13 = *(v14 + 8);
    v15 = [v13 audioProvider];
    v16 = [v15 UUID];
    [v13 _handleVoiceTriggerSecondPassWithSource:v11 deviceId:0 event:v12 audioProviderUUID:v16 firstPassInfo:v6];

    goto LABEL_11;
  }

  v4 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "[CSBuiltInVoiceTrigger activationEventNotificationHandler:event:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s AOP trigger timestamp was 4 seconds the current time. Ignoring AOP trigger due to trigger time CONSTRAINT check", &v17, 0xCu);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = [NSError errorWithDomain:CSErrorDomain code:511 userInfo:0];
    (*(v5 + 16))(v5, 0, v6);
LABEL_11:
  }
}

id sub_10015782C(uint64_t a1)
{
  if ([*(a1 + 32) _shouldEnableAOPVoiceTrigger])
  {
    [*(a1 + 32) _startAOPVoiceTrigger];
  }

  result = [*(a1 + 32) _shouldEnableAPVoiceTrigger];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _startAPVoiceTriggerWithCompletion:0];
  }

  return result;
}

void sub_100157990(uint64_t a1)
{
  [*(a1 + 32) _reset];
  if ([*(a1 + 32) isSecondPassRunning])
  {
    v2 = [*(a1 + 32) voiceTriggerSecondPass];
    [v2 cancelCurrentRequest];
  }
}

void sub_100157A9C(uint64_t a1)
{
  [*(a1 + 32) _reset];
  if ([*(a1 + 32) isSecondPassRunning])
  {
    v2 = [*(a1 + 32) voiceTriggerSecondPass];
    [v2 cancelCurrentRequest];
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = kVTEItriggerStartMachTime;
    v5 = [v3 objectForKeyedSubscript:kVTEItriggerStartMachTime];

    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = [*(a1 + 40) objectForKeyedSubscript:v4];
      [v6 setLastSelfTriggerDetectedStartMachTime:{objc_msgSend(v7, "unsignedLongLongValue")}];
    }
  }
}

void sub_100157BE4(uint64_t a1)
{
  v2 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[CSBuiltInVoiceTrigger siriClientBehaviorMonitor:willStopStream:reason:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Siri Client will stop listening, resume VoiceTrigger listen", &v3, 0xCu);
  }

  *(*(a1 + 32) + 11) = 0;
}

id sub_100157D10(uint64_t a1)
{
  v2 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSBuiltInVoiceTrigger siriClientBehaviorMonitor:didStopStream:withEventUUID:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Siri Client stops listening now, VoiceTrigger can listen now", &v4, 0xCu);
  }

  *(*(a1 + 32) + 11) = 0;
  return [*(a1 + 32) _reset];
}

id sub_100157E48(uint64_t a1)
{
  v2 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSBuiltInVoiceTrigger siriClientBehaviorMonitor:didStartStreamWithContext:successfully:option:withEventUUID:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Siri Client starts listening now, VoiceTrigger shouldn't listen now", &v4, 0xCu);
  }

  *(*(a1 + 32) + 11) = 1;
  return [*(a1 + 32) _cancelAllAudioStreamHold];
}

id sub_100158670(uint64_t a1)
{
  [*(a1 + 32) _setIsSecondPassRunning:0];
  result = [*(a1 + 32) _reset];
  if (*(a1 + 40) != 1)
  {
    v3 = *(a1 + 32);

    return [v3 _cancelLastAudioStreamHold];
  }

  return result;
}

void sub_100158A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100158A70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 64);
  v8 = v7 == 12 || v7 == 2;
  if (v8 && (v9 = *(a1 + 32)) != 0)
  {
    v10 = [v9 objectForKeyedSubscript:@"trigger-woke-ap"];

    if (v10)
    {
      v11 = [*(a1 + 32) objectForKeyedSubscript:@"trigger-woke-ap"];
      v10 = [v11 BOOLValue];

      if ([(CSVoiceTriggerSecondPassResultHolder *)v5 result]!= 1)
      {
        v12 = [(CSVoiceTriggerSecondPassResultHolder *)v5 voiceTriggerEventInfo];
        v13 = v12;
        if (v12 && (v14 = kVTEITriggeredPh, [v12 objectForKeyedSubscript:kVTEITriggeredPh], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
        {
          v16 = [v13 objectForKeyedSubscript:v14];
        }

        else
        {
          v16 = @"unknown";
        }

        v31 = +[CSVoiceTriggerStatAggregator sharedAggregator];
        [v31 logFalseWakeUp:v10 withPhrase:v16];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v17 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    v19 = [(CSVoiceTriggerSecondPassResultHolder *)v5 description];
    *buf = 136315394;
    v34 = "[CSBuiltInVoiceTrigger _handleVoiceTriggerSecondPassWithSource:deviceId:event:audioProviderUUID:firstPassInfo:]_block_invoke";
    v35 = 2112;
    v36 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  if (CSIsInternalBuild())
  {
    v20 = [*(a1 + 32) objectForKeyedSubscript:@"bypassVoiceTrigger"];
    v21 = [v20 BOOLValue];

    if (v21)
    {
      v22 = [CSVoiceTriggerSecondPassResultHolder alloc];
      v23 = [(CSVoiceTriggerSecondPassResultHolder *)v5 voiceTriggerEventInfo];
      v24 = [(CSVoiceTriggerSecondPassResultHolder *)v22 initWithResult:1 voiceTriggerEventInfo:v23 isSecondChanceCandidate:0];

      v5 = v24;
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleSecondPassResult:v5 deviceId:*(a1 + 40) error:v6];

  v26 = +[CSVoiceTriggerStatAggregator sharedAggregator];
  v27 = [(CSVoiceTriggerSecondPassResultHolder *)v5 result];
  v28 = [(CSVoiceTriggerSecondPassResultHolder *)v5 voiceTriggerEventInfo];
  [v26 logSecondPassResult:v27 eventInfo:v28 triggerAPWakeUp:v10];

  v29 = *(a1 + 48);
  v30 = *(v29 + 56);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100158DA8;
  block[3] = &unk_100253C20;
  block[4] = v29;
  dispatch_async(v30, block);
}

uint64_t sub_10015A00C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 15))
  {
    if ([*(v2 + 248) count])
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v3 = *(*(a1 + 32) + 248);
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

            [*(a1 + 32) _handleAudioChunk:{*(*(&v11 + 1) + 8 * v7), v11}];
            v7 = v7 + 1;
          }

          while (v5 != v7);
          v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v5);
      }

      [*(*(a1 + 32) + 248) removeAllObjects];
    }

    return [*(a1 + 32) _handleAudioChunk:{*(a1 + 40), v11}];
  }

  else
  {
    result = CSIsHorseman();
    if ((result & 1) == 0)
    {
      v9 = *(a1 + 40);
      v10 = *(*(a1 + 32) + 248);

      return [v10 addObject:v9];
    }
  }

  return result;
}

void sub_10015A1F8(uint64_t a1)
{
  v2 = [*(a1 + 32) _shouldSkipAudioChunkHandling];
  v3 = *(a1 + 32);
  if (v2)
  {

    [v3 _resetFirstExclaveAudioBufferMarkerIfNeeded];
  }

  else
  {
    if (*(v3 + 18) == 1)
    {
      [v3 setIsFirstExclaveAudioBuffer:0];
      v3 = *(a1 + 32);
      v4 = *(v3 + 352);
      if (v4)
      {
        v5 = CSLogCategoryVT;
        if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v10 = "[CSBuiltInVoiceTrigger audioStreamProvider:numSamplesAvailableInExclave:hostTime:arrivalHostTimeToAudioRecorder:exclaveSampleCount:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Reset first-pass VoiceTrigger in Exclave", buf, 0xCu);
          v4 = *(*(a1 + 32) + 352);
        }

        [v4 resetFirstPassVoiceTrigger];
        v3 = *(a1 + 32);
      }
    }

    v6 = [v3 exclaveClient];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10015A394;
    v8[3] = &unk_100253328;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v8[5] = v7;
    [v6 processBargeInVoiceTriggerWithResult:v8];
  }
}

void sub_10015A394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v7 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      *buf = 136315650;
      v22 = "[CSBuiltInVoiceTrigger audioStreamProvider:numSamplesAvailableInExclave:hostTime:arrivalHostTimeToAudioRecorder:exclaveSampleCount:]_block_invoke";
      v23 = 2048;
      v24 = v8;
      v25 = 1024;
      v26 = a4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s FirstPass detected VoiceTrigger at exclaveSampleCount = %llu for channel %d", buf, 0x1Cu);
    }

    v19[0] = kVTEIfirstPassDetectedChannel;
    v18 = [NSNumber numberWithUnsignedInt:a4];
    v20[0] = v18;
    v20[1] = &off_10025F590;
    v19[1] = kVTEIfirstPassScore;
    v19[2] = kVTEIfirstPassStartSampleCount;
    v9 = [NSNumber numberWithUnsignedLongLong:a3];
    v20[2] = v9;
    v19[3] = kVTEIfirstPassEndSampleCount;
    v10 = [NSNumber numberWithUnsignedLongLong:*(a1 + 40)];
    v20[3] = v10;
    v19[4] = kVTEIfirstPassFireSampleCount;
    v11 = [NSNumber numberWithUnsignedLongLong:*(a1 + 40)];
    v20[4] = v11;
    v19[5] = kVTEIfirstPassChannelSelectionScores;
    v12 = [*(a1 + 32) channelSelectionScores];
    v20[5] = v12;
    v19[6] = kVTEIfirstPassChannelSelectionDelaySeconds;
    v13 = [*(a1 + 32) firstPassConfig];
    [v13 delaySecondsForChannelSelection];
    v14 = [NSNumber numberWithFloat:?];
    v20[6] = v14;
    v19[7] = kVTEIfirstPassMasterChannelScoreBoost;
    v15 = [*(a1 + 32) firstPassConfig];
    [v15 masterChannelScoreBoost];
    v16 = [NSNumber numberWithFloat:?];
    v20[7] = v16;
    v20[8] = &off_10025E888;
    v19[8] = kVTEIfirstPassOnsetChannel;
    v19[9] = kVTEIfirstPassOnsetScore;
    v20[9] = &off_10025F590;
    v17 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    [*(a1 + 32) _reportVoiceTriggerFirstPassFireFromAPWithSource:11 voiceTriggerFirstPassInfo:v17];
  }
}

id sub_10015A77C(uint64_t a1)
{
  result = [*(a1 + 32) _reset];
  if (*(a1 + 40) != -11785)
  {
    result = [*(a1 + 32) _shouldEnableAPVoiceTrigger];
    if (result)
    {
      v3 = *(a1 + 32);

      return [v3 _startAPVoiceTriggerWithCompletion:0];
    }
  }

  return result;
}

void sub_10015A7E4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 56);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006A58;
  block[3] = &unk_100253C20;
  block[4] = v6;
  dispatch_async(v7, block);
  if ((a2 & 1) == 0)
  {
    v8 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      v10 = [v5 localizedDescription];
      *buf = 136315394;
      v13 = "[CSBuiltInVoiceTrigger _stopAPVoiceTrigger]_block_invoke";
      v14 = 2114;
      v15 = v10;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Failed to stop audio stream : %{public}@", buf, 0x16u);
    }
  }
}

void sub_10015AF7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015B024;
  block[3] = &unk_100253C20;
  v5 = WeakRetained;
  v3 = WeakRetained;
  dispatch_async(v2, block);
}

void sub_10015B024(uint64_t a1)
{
  v5 = [[CSPreventSystemSleepPowerAssertion alloc] initWithTimeOut:5.0];
  v2 = [*(a1 + 32) exclaveClient];
  [v2 configAOPVoiceTrigger];

  [(CSPreventSystemSleepPowerAssertion *)v5 invalidate];
  v3 = [*(a1 + 32) alwaysOnProcessorController];
  v4 = [*(a1 + 32) currentAsset];
  [v3 enableVoiceTriggerOnAlwaysOnProcessorWithAsset:v4 completion:0];
}

void sub_10015B174(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained voiceTriggerAPModeSuspendPolicy];
  v3 = [v2 isEnabled];

  v4 = [WeakRetained voiceTriggerStartPolicy];
  v5 = [v4 isEnabled];

  v6 = [WeakRetained _currentState];
  v7 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315906;
    v11 = "[CSBuiltInVoiceTrigger _APModeValidationTimerFired]_block_invoke";
    v12 = 1024;
    v13 = v5;
    v14 = 1024;
    v15 = v3;
    v16 = 1024;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s APModeValidationTimer fired : VoiceTriggerEnabled(%d), shouldBeAOPMode(%d), currentState(%d)", &v10, 0x1Eu);
  }

  if (v5)
  {
    if (v3)
    {
      if (v6)
      {
        [WeakRetained _notifyEvent:1];
        v8 = &kCSDiagnosticReporterVoiceTriggerAPLeak;
LABEL_9:
        v9 = +[CSDiagnosticReporter sharedInstance];
        [v9 submitVoiceTriggerIssueReport:*v8];
      }
    }

    else if (v6 == 2)
    {
      v8 = &kCSDiagnosticReporterVoiceTriggerAPStuckInTransition;
      goto LABEL_9;
    }
  }
}

void sub_10015B514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10015B538(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _APModeValidationTimerFired];
}

void sub_10015B71C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      v8 = v6;
      v9 = [v5 localizedDescription];
      v10 = 136315394;
      v11 = "[CSBuiltInVoiceTrigger _startVoiceTriggerWithCompletion:]_block_invoke";
      v12 = 2114;
      v13 = v9;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Cannot startListenPolling : %{public}@", &v10, 0x16u);
    }
  }

  *(*(a1 + 32) + 12) = 0;
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, a2);
  }
}

void sub_10015B954(uint64_t a1)
{
  v2 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSBuiltInVoiceTrigger _stopListening]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Scheduled stopAudioStream after waiting for recordingWillStartGroup", &v4, 0xCu);
  }

  v3 = [*(a1 + 32) audioStream];
  [v3 stopAudioStreamWithOption:0 completion:&stru_1002532B0];
}

void sub_10015BA24(id a1, BOOL a2, NSError *a3)
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
      v8 = "[CSBuiltInVoiceTrigger _stopListening]_block_invoke";
      v9 = 2114;
      v10 = v6;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Cannot stop listening : %{public}@", &v7, 0x16u);
    }
  }
}

uint64_t sub_10015BF50(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10015C184(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10015C19C(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = +[CSAudioStartStreamOption noAlertOption];
    [*(a1 + 32) _reset];
    v4 = [*(a1 + 32) audioStream];

    if (v4)
    {
      v5 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v15 = "[CSBuiltInVoiceTrigger _startListenWithCompletion:]_block_invoke_2";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Entering recordWillStartGroup", buf, 0xCu);
      }

      dispatch_group_enter(*(*(a1 + 32) + 224));
      v6 = [*(a1 + 32) audioStream];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10015C3B0;
      v12[3] = &unk_100253270;
      v7 = *(a1 + 40);
      v12[4] = *(a1 + 32);
      v13 = v7;
      [v6 startAudioStreamWithOption:v3 completion:v12];
    }

    else
    {
      v10 = *(a1 + 40);
      v11 = [NSError errorWithDomain:CSErrorDomain code:960 userInfo:0];
      (*(v10 + 16))(v10, 0, v11);
    }
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 40) + 16);

    v9();
  }
}

void sub_10015C3B0(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 56);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10015C470;
  v10[3] = &unk_100253248;
  v10[4] = v7;
  v13 = a2;
  v11 = v5;
  v12 = v6;
  v9 = v5;
  dispatch_async(v8, v10);
}

uint64_t sub_10015C470(uint64_t a1)
{
  v2 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[CSBuiltInVoiceTrigger _startListenWithCompletion:]_block_invoke_2";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Leaving recordWillStartGroup", &v9, 0xCu);
  }

  dispatch_group_leave(*(*(a1 + 32) + 224));
  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 32);
    if (v3[8])
    {
      v4 = +[CSVoiceTriggerInfo sharedInstance];
      [v4 setFirstPassRunningMode:1];

      [*(a1 + 32) _notifyEvent:3];
    }

    else
    {
      v5 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315138;
        v10 = "[CSBuiltInVoiceTrigger _startListenWithCompletion:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s didStartRecording received when VoiceTrigger is turned-off", &v9, 0xCu);
        v3 = *(a1 + 32);
      }

      [v3 _stopAPVoiceTrigger];
    }
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 40);
  return (*(*(a1 + 48) + 16))();
}

void sub_10015C834(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, 1, 0);
    }
  }

  else
  {
    v7 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      v10 = v7;
      v11 = [v5 localizedDescription];
      *location = 136315394;
      *&location[4] = "[CSBuiltInVoiceTrigger _startListenPollingWithInterval:completion:]_block_invoke";
      v16 = 2114;
      v17 = v11;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s listen polling has failed : %{public}@", location, 0x16u);
    }

    objc_initWeak(location, *(a1 + 32));
    v8 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
    v9 = *(*(a1 + 32) + 56);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10015CA14;
    block[3] = &unk_1002531D0;
    objc_copyWeak(v14, location);
    v14[1] = *(a1 + 48);
    v13 = *(a1 + 40);
    dispatch_after(v8, v9, block);

    objc_destroyWeak(v14);
    objc_destroyWeak(location);
  }
}

void sub_10015CA14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _startListenPollingWithInterval:*(a1 + 32) completion:*(a1 + 48)];
}

void sub_10015CCEC(uint64_t a1)
{
  v2 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 40))
    {
      v3 = @"en";
    }

    else
    {
      v3 = @"dis";
    }

    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v4 _stateName:{objc_msgSend(v4, "_currentState")}];
    v17 = 136315650;
    v18 = "[CSBuiltInVoiceTrigger _transitVoiceTriggerStatus:force:]_block_invoke";
    v19 = 2114;
    v20 = v3;
    v21 = 2114;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Received VoiceTrigger %{public}@abled at state %{public}@", &v17, 0x20u);
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (*(v7 + 8) != v8 || *(a1 + 41) == 1)
  {
    *(v7 + 8) = v8;
    v9 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(a1 + 32) + 8))
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v17 = 136315394;
      v18 = "[CSBuiltInVoiceTrigger _transitVoiceTriggerStatus:force:]_block_invoke";
      v19 = 2114;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s _voiceTriggerEnabled = %{public}@", &v17, 0x16u);
    }

    v11 = *(*(a1 + 32) + 8);
    v12 = +[CSPowerLogger sharedPowerLogger];
    v13 = v12;
    if (v11 == 1)
    {
      [v12 powerLogVoiceTriggerStart];
    }

    else
    {
      [v12 powerLogVoiceTriggerStop];
    }

    v14 = *(a1 + 32);
    if (*(a1 + 40) == 1)
    {
      v15 = [v14[25] isEnabled];
      v14 = *(a1 + 32);
      v16 = v15 != 0;
    }

    else
    {
      v16 = 4;
    }

    [v14 _notifyEvent:v16];
  }
}

id sub_10015D03C(uint64_t a1, uint64_t a2)
{
  v4 = [*(*(a1 + 32) + 104) bestEnd];
  v5 = *(*(a1 + 32) + 112);
  v6 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_INFO))
  {
    v10 = 136315651;
    v11 = "[CSBuiltInVoiceTrigger _setIsSecondPassRunning:]_block_invoke";
    v12 = 1025;
    *v13 = v4;
    *&v13[4] = 1025;
    *&v13[6] = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s bestEnd = %{private}d, bestChannel = %{private}d", &v10, 0x18u);
  }

  if (&v4[-a2] < 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [*(*(a1 + 32) + 168) audioChunkFrom:&v4[-a2] to:v4 channelIdx:v5];
  }

  v8 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_INFO))
  {
    v10 = 136315395;
    v11 = "[CSBuiltInVoiceTrigger _setIsSecondPassRunning:]_block_invoke";
    v12 = 2113;
    *v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s audio chunk: %{private}@", &v10, 0x16u);
  }

  return v7;
}

void sub_10015D568(void *a1, unint64_t a2)
{
  v4 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v16 = 136315650;
    v17 = "[CSBuiltInVoiceTrigger _setAsset:]_block_invoke";
    v18 = 2050;
    v19 = a2;
    v20 = 2114;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Initializing first pass Corealis for channel : %{public}tu, with configPath : %{public}@", &v16, 0x20u);
  }

  if (+[CSConfig inputRecordingNumberOfChannels]<= a2)
  {
    v6 = CSLogCategoryVT;
    if (!os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v9 = a1[4];
    v16 = 136315650;
    v17 = "[CSBuiltInVoiceTrigger _setAsset:]_block_invoke";
    v18 = 2048;
    v19 = a2;
    v20 = 2114;
    v21 = v9;
    v8 = "%s Trying to access out-of-bound channel (index = %tu), asset configPath: %{public}@";
    goto LABEL_10;
  }

  if ((+[CSUtils supportVoiceTriggerChannelSelection](CSUtils, "supportVoiceTriggerChannelSelection") & 1) == 0 && [*(a1[5] + 72) count])
  {
    v6 = CSLogCategoryVT;
    if (!os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v7 = a1[4];
    v16 = 136315650;
    v17 = "[CSBuiltInVoiceTrigger _setAsset:]_block_invoke";
    v18 = 2048;
    v19 = a2;
    v20 = 2114;
    v21 = v7;
    v8 = "%s Trying to have multiple NDAPIs on platform not supporting channel selection, for channel: %tu, asset configPath: %{public}@";
LABEL_10:
    _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, v8, &v16, 0x20u);
    return;
  }

  v10 = [[CSKeywordAnalyzerNDAPI alloc] initWithConfigPath:a1[4] resourcePath:a1[6]];
  [v10 setActiveChannel:a2];
  if (v10)
  {
    [*(a1[5] + 72) addObject:v10];
  }

  else
  {
    v11 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315138;
      v17 = "[CSBuiltInVoiceTrigger _setAsset:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Failed to create keyword analyzer", &v16, 0xCu);
    }
  }

  v12 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1[5] + 72);
    v14 = v12;
    v15 = [v13 count];
    v16 = 136315394;
    v17 = "[CSBuiltInVoiceTrigger _setAsset:]_block_invoke";
    v18 = 2048;
    v19 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s %tu first pass Corealis were created", &v16, 0x16u);
  }
}

void sub_10015D84C(id a1, unint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "[CSBuiltInVoiceTrigger _setAsset:]_block_invoke";
      v6 = 1024;
      v7 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Setting asset on exclave hardware failed with error %u", &v4, 0x12u);
    }
  }
}

void sub_10015DA7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeWeak(WeakRetained + 4, *(a1 + 32));
    WeakRetained = v3;
  }
}

void sub_10015E08C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 112));
  _Unwind_Resume(a1);
}

void sub_10015E104(uint64_t a1)
{
  v2 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
  *(*(a1 + 32) + 272) = [v2 phoneCallState];

  v3 = +[CSAttSiriStateMonitor sharedInstance];
  *(*(a1 + 32) + 280) = [v3 getAttendingState];
}

void sub_10015E184(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015E630;
  block[3] = &unk_100253028;
  block[4] = v3;
  block[5] = a2;
  v6 = a3;
  dispatch_async(v4, block);
}

void sub_10015E1FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10015E624;
  v4[3] = &unk_100253C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_10015E270(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10015E618;
  v4[3] = &unk_100253C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_10015E2E4(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10015E604;
  v4[3] = &unk_100253BF8;
  v4[4] = v2;
  v5 = a2;
  dispatch_async(v3, v4);
}

id sub_10015E35C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 3;
  v2 = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015E4C8;
  block[3] = &unk_100253BD0;
  v9 = v10;
  v3 = WeakRetained;
  v8 = v3;
  dispatch_sync(v2, block);

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10015E4FC;
  v6[3] = &unk_1002530C8;
  v6[4] = v10;
  v4 = [[CSStateCaptureOptions alloc] initWithMutableBuilder:v6];

  _Block_object_dispose(v10, 8);

  return v4;
}

id sub_10015E4C8(uint64_t a1)
{
  result = [*(a1 + 32) _currentState];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10015E4FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithUnsignedInteger:*(*(*(a1 + 32) + 8) + 24)];
  [v7 setValue:v4 forKey:@"FirstPassState"];

  v5 = +[CSBuiltinSpeakerStateMonitor sharedInstance];
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 currentBuiltinSpeakerState]);
  [v7 setValue:v6 forKey:@"BuiltInSpeakerState"];

  [v3 setStateData:v7];
  [v3 setStateDataTitle:@"CoreSpeech-FirstPassStateCapture"];
}

void sub_10015EFA4(id a1)
{
  v1 = objc_alloc_init(CSSpeakerRecognitionAssetDownloadMonitor);
  v2 = qword_10029E5A8;
  qword_10029E5A8 = v1;
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = *__error();
      v8 = 136315394;
      v9 = "main";
      v10 = 1024;
      v11 = v7;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s _set_user_dir_suffix failed: %{darwin.errno}d", &v8, 0x12u);
    }

    exit(1);
  }

  v1 = NSTemporaryDirectory();
  v2 = +[CSHostDaemon sharedDaemon];
  [v2 didLaunch];
  v3 = +[NSRunLoop mainRunLoop];
  [v3 run];

  objc_autoreleasePoolPop(v0);
  return 0;
}

void sub_10015F604(id a1)
{
  v1 = objc_alloc_init(CSAdBlockerAssetMetaUpdateMonitor);
  v2 = qword_10029E5B8;
  qword_10029E5B8 = v1;
}

void sub_10015FA58(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 allowMph] && +[CSUtils supportsMphForLanguageCode:](CSUtils, "supportsMphForLanguageCode:", a1[5]) && a1[6] > 1uLL;
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[5];
    v8 = a1[6];
    v9 = 136315907;
    v10 = "[CSPhraseNDEAPIScorer _rtModelFromAsset:requestOptions:forSiriLanguage:withPhraseCount:]_block_invoke";
    v11 = 2113;
    v12 = v7;
    v13 = 1024;
    v14 = v5;
    v15 = 2048;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Device and locale:%{private}@ supports multiphrase detection:%d with unique phrase count:%lu)", &v9, 0x26u);
  }

  [v4 setAllowMph:v5];
  [v4 setSiriLocale:a1[5]];
}

void sub_100160748(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSFileAudioInjectionEngine stopAudioStreamWithOutError:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Calling stopAudioStream", &v6, 0xCu);
  }

  *(*(a1 + 32) + 8) = 0;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained((*(a1 + 32) + 32));
    [v5 audioEngineDidStopRecord:*(a1 + 32) audioStreamHandleId:objc_msgSend(*(a1 + 32) reason:{"audioStreamHandleId"), 0}];
  }
}

void sub_1001608D8(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 1;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 32));
    [v4 audioEngineDidStartRecord:*(a1 + 32) audioStreamHandleId:objc_msgSend(*(a1 + 32) successfully:"audioStreamHandleId") error:{1, 0}];
  }
}

uint64_t sub_100160DB8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100160DD0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100160DE8(uint64_t a1)
{
  [*(*(a1 + 32) + 72) addObject:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 80);
  v3 = objc_retainBlock(*(a1 + 48));
  [v2 addObject:v3];

  v4 = *(*(a1 + 32) + 88);
  v5 = objc_retainBlock(*(a1 + 56));
  [v4 addObject:v5];
}

void sub_1001618D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _readAudioBufferAndFeed];
}

void sub_100161984(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 104);
    v8 = 136315394;
    v9 = "[CSFileAudioInjectionEngine stop]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Stopping AudioInjectionEngine : %@", &v8, 0x16u);
  }

  dispatch_source_cancel(*(*(a1 + 32) + 56));
  v4 = *(a1 + 32);
  if (*(v4 + 8) == 1)
  {
    WeakRetained = objc_loadWeakRetained((v4 + 32));
    v6 = objc_opt_respondsToSelector();

    v4 = *(a1 + 32);
    if (v6)
    {
      v7 = objc_loadWeakRetained((v4 + 32));
      [v7 audioEngineDidStopRecord:*(a1 + 32) audioStreamHandleId:objc_msgSend(*(a1 + 32) reason:{"audioStreamHandleId"), 3}];

      v4 = *(a1 + 32);
    }
  }

  *(v4 + 8) = 0;
}

id sub_100161D14(uint64_t a1)
{
  [*(a1 + 32) _createDeInterleaverIfNeeded];
  v2 = *(a1 + 32);

  return [v2 _startAudioFeedingTimer];
}

void sub_100162390(void *a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = *(v3 + 10);
    LODWORD(v3) = *(v3 + 8);
    v13 = 136315906;
    v14 = "[CSAttSiriContinuityEndDetector didCompleteRecognitionTaskWithStatistics:requestId:endpointMode:error:]_block_invoke";
    v15 = 1024;
    *v16 = v5;
    *&v16[4] = 1024;
    *&v16[6] = v3;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ContinuityEndDelivered:%u continuityEndDeliveryNeeded:%u RecognitionError:%@", &v13, 0x22u);
  }

  v6 = a1[4];
  v7 = v6[8] == 1 && a1[5] == 0;
  if (v7 && v6[10] != 1)
  {
    v8 = [[CSAttSiriRecognitionCompletionCachedInfo alloc] initWithRequestId:a1[7] completionStatistics:a1[6] endpointMode:a1[8] completionError:a1[5]];
    v9 = a1[4];
    v10 = *(v9 + 64);
    *(v9 + 64) = v8;

    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1[4] + 64);
      v13 = 136315394;
      v14 = "[CSAttSiriContinuityEndDetector didCompleteRecognitionTaskWithStatistics:requestId:endpointMode:error:]_block_invoke";
      v15 = 2112;
      *v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s _cachedRecognitionCompletionInfo:%@", &v13, 0x16u);
    }
  }

  else
  {
    [v6 _deliverRecognitionCompletionWithStatistics:a1[6] requestId:a1[7] endpointMode:a1[8] error:?];
  }
}

void sub_100162540(id a1)
{
  v1 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[CSAttSiriContinuityEndDetector didReceiveTRPCandidateExecutionReady:withTrpId:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s ", &v2, 0xCu);
  }
}

void sub_100162690(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) lastTRPCandidateId];
  [v2 setCachedTRPId:v3];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) requestId];
  [v4 setRequestId:v5];
}

void sub_100162B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100162B54(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_10029E5D8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100162CA8;
    v4[4] = &unk_1002535B8;
    v4[5] = v4;
    v5 = off_1002535A0;
    v6 = 0;
    qword_10029E5D8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_10029E5D8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SMTContinuityEnd");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_10029E5D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100162CA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10029E5D8 = result;
  return result;
}

void sub_100162EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100162EF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[CSAttSiriContinuityEndDetector _setupContinuityDetectorTimer]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Continuity detector timer fired", &v3, 0xCu);
  }

  [WeakRetained _handleContinuityDetectorTimeout];
}

void sub_100163064(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) recognitionTaskCompletionReceivers];
    v3 = [v2 containsObject:*(a1 + 32)];

    if ((v3 & 1) == 0)
    {
      v4 = [*(a1 + 40) recognitionTaskCompletionReceivers];
      [v4 addObject:*(a1 + 32)];
    }
  }
}

void sub_1001631B4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) continuityDetectionReceivers];
    v3 = [v2 containsObject:*(a1 + 32)];

    if ((v3 & 1) == 0)
    {
      v4 = [*(a1 + 40) continuityDetectionReceivers];
      [v4 addObject:*(a1 + 32)];
    }
  }
}

void sub_1001632C8(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v13 = 136315394;
    v14 = "[CSAttSiriContinuityEndDetector setUpWithContinuityEndUsage:]_block_invoke";
    v15 = 1024;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s continuityEndMessageNeeded:%u", &v13, 0x12u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  if (v5)
  {
    [v5 cancelTimer];
    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    *(v6 + 24) = 0;

    v4 = *(a1 + 32);
  }

  v8 = *(v4 + 64);
  *(v4 + 64) = 0;

  *(*(a1 + 32) + 10) = 0;
  v9 = *(a1 + 32);
  v10 = *(v9 + 56);
  *(v9 + 56) = 0;

  v11 = *(a1 + 32);
  v12 = *(v11 + 48);
  *(v11 + 48) = 0;

  *(*(a1 + 32) + 8) = *(a1 + 40);
}

id sub_10016345C(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 9);
    v6 = 136315394;
    v7 = "[CSAttSiriContinuityEndDetector start]_block_invoke";
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s configureContinuityWindowTimeout :%u", &v6, 0x12u);
  }

  v4 = *(a1 + 32);
  if (v4[9] == 1)
  {
    return [v4 _setupContinuityDetectorTimer];
  }

  else
  {
    return [v4 _notifyContinuityEnd];
  }
}

void sub_1001635B0(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[CSAttSiriContinuityEndDetector configureTimeout:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v9, 0xCu);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0.0 && v3 <= 3.0)
  {
    *(*(a1 + 32) + 12) = v3;
    v6 = [[CSAttSiriTimer alloc] initWithQueue:0];
    v7 = *(a1 + 32);
    v8 = *(v7 + 24);
    *(v7 + 24) = v6;

    *(*(a1 + 32) + 9) = 1;
  }

  else
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[CSAttSiriContinuityEndDetector configureTimeout:]_block_invoke";
      v11 = 2048;
      v12 = v3;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Invalid timeout duration :%f", &v9, 0x16u);
    }
  }
}

BOOL sub_100163948(id a1)
{
  v1 = +[CSHomePodSettingsMonitor sharedInstance];
  v2 = [v1 shouldVoiceTriggerRun];

  if ((v2 & 1) == 0)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSVoiceTriggerEnabledPolicyHorseman _addVoiceTriggerEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s HomePodSettings have turned off VoiceTrigger", &v5, 0xCu);
    }
  }

  return v2;
}

BOOL sub_100163A18(id a1)
{
  v1 = +[CSVoiceTriggerEnabledMonitor sharedInstance];
  v2 = [v1 isEnabled];

  if ((v2 & 1) == 0)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSVoiceTriggerEnabledPolicyHorseman _addVoiceTriggerEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Non-AOP VoiceTrigger cannot be turned on since VoiceTrigger is disabled", &v5, 0xCu);
    }
  }

  return v2;
}

BOOL sub_100163AE8(id a1)
{
  v1 = +[CSUtils isLocalVoiceTriggerAvailable];
  if ((v1 & 1) == 0)
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[CSVoiceTriggerEnabledPolicyHorseman _addVoiceTriggerEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Non-AOP VoiceTrigger cannot be turned on since voiceTriggerInCoreSpeech is NO", &v4, 0xCu);
    }
  }

  return v1;
}

id sub_1001641BC(uint64_t a1)
{
  *(*(a1 + 32) + 12) = [*(a1 + 32) _checkSoftwareUpdateCheckingState];
  v2 = *(a1 + 32);
  v3 = v2[12];

  return [v2 _didReceiveSoftwareUpdateCheckingStateChanged:v3];
}

void sub_1001642B8(id a1)
{
  v1 = objc_alloc_init(CSSoftwareUpdateCheckingMonitor);
  v2 = qword_10029E5E0;
  qword_10029E5E0 = v1;
}

void sub_100164FA8(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[CSIntuitiveConversationLogger setMhId:]_block_invoke";
    v6 = 2112;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s setMhId:%@", &v4, 0x16u);
  }

  objc_storeStrong((*(a1 + 40) + 48), *(a1 + 32));
}

void sub_100165134(id *a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[CSIntuitiveConversationLogger startLoggingWithAudioRecordContext:requestId:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v9, 0xCu);
  }

  v3 = a1[4];
  if ((v3[9] & 1) == 0)
  {
    v3[9] = 1;
    [a1[4] _handleStopLogging];
    v3 = a1[4];
  }

  v4 = [v3 _timeStampString];
  v5 = a1[4];
  v6 = v5[13];
  v5[13] = v4;

  *(a1[4] + 17) = mach_absolute_time();
  v7 = a1[4];
  v8 = v7[6];
  v7[6] = 0;

  *(a1[4] + 15) = 0;
  *(a1[4] + 16) = 0;
  objc_storeStrong(a1[4] + 7, a1[5]);
  objc_storeStrong(a1[4] + 12, a1[6]);
  *(a1[4] + 9) = 0;
  *(a1[4] + 10) = 0;
}

void sub_1001652F0(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSIntuitiveConversationLogger stop]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  v3 = *(a1 + 32);
  if ((*(v3 + 9) & 1) == 0)
  {
    *(v3 + 9) = 1;
    [*(a1 + 32) _handleStopLogging];
  }
}

void sub_1001653C8(id a1)
{
  v1 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[CSIntuitiveConversationLogger start]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s ", &v2, 0xCu);
  }
}

void sub_100165844(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 8));
    v5 = [*(a1 + 40) triggerMachTime];
    v6 = [*(a1 + 40) audioRecordType];
    v7 = [*(a1 + 40) deviceId];
    [v4 speechStartDetectedWithHostTime:v5 audioRecordType:v6 audioRecordDeviceId:v7];
  }

  v8 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained((*(a1 + 32) + 8));
    [v10 speechStartDetectedWithShouldDuckTTS:{objc_msgSend(*(a1 + 32), "_shouldDuckTTSAtSpeechStartDetected:", objc_msgSend(*(a1 + 40), "audioRecordType"))}];
  }

  v11 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v16 = objc_loadWeakRetained((*(a1 + 32) + 8));
    v13 = [*(a1 + 40) triggerMachTime];
    v14 = [*(a1 + 40) audioRecordType];
    v15 = [*(a1 + 40) deviceId];
    [v16 speechRecognizerReadyForNewTurnWithSpeechStartDetectedAtHostTime:v13 audioRecordType:v14 audioRecordDeviceId:v15];
  }
}

void sub_100165A70(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
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
    v9 = 136315394;
    v10 = "[CSAttendingAnnounceHandler attendingStoppedWithReason:]_block_invoke";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s [reason = %@]", &v9, 0x16u);
  }

  if ((*(a1 + 40) - 3) <= 2)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v8 = [NSError errorWithDomain:CSErrorDomain code:2107 userInfo:0];
    [WeakRetained localAttendingStoppedUnexpectedlyWithError:v8];
  }
}

uint64_t sub_100166888(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v6 = [*(a1 + 32) length] - *(*(*(a1 + 40) + 8) + 24);
  v7 = v6 >> 1;
  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
  {
    v15 = *a2;
    v16 = 136315650;
    v17 = "[CSAudioConverter _convertBufferedLPCM:allowPartial:timestamp:arrivalTimestampToAudioRecorder:]_block_invoke";
    v18 = 1026;
    v19 = v15;
    v20 = 1026;
    v21 = v6 >> 1;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Got asked for %{public}u packets, have %{public}u", &v16, 0x18u);
  }

  *(a3 + 8) = 1;
  if (v6 >= 2 && ((v9 = *a2, (*(a1 + 48) & 1) != 0) || v7 >= v9))
  {
    if (v7 >= v9)
    {
      v14 = [*(a1 + 32) mutableBytes];
      result = 0;
      *(a3 + 16) = &v14[*(*(*(a1 + 40) + 8) + 24)];
      LODWORD(v14) = *a2;
      *(a3 + 12) = 2 * *a2;
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 24) + 2 * v14;
    }

    else
    {
      *a2 = v7;
      v11 = [*(a1 + 32) mutableBytes];
      result = 0;
      *(a3 + 16) = &v11[*(*(*(a1 + 40) + 8) + 24)];
      *(a3 + 12) = v6 & 0xFFFFFFFE;
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 24) + (v6 & 0xFFFFFFFE);
    }

    *(v12 + 24) = v13;
  }

  else
  {
    *a2 = 0;
    *(a3 + 16) = 0;
    result = 1836086393;
    *(a3 + 12) = 0;
  }

  return result;
}

uint64_t sub_100166A58(int a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5)
{
  v8 = objc_retainBlock(a5);
  v9 = v8[2](v8, a2, a3, a4);

  return v9;
}

id sub_1001672D0(uint64_t a1, uint64_t a2)
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

  return [*(a1 + 32) _notifyObserver:a2 mediaIsPlayingState:v3];
}

void sub_100167548(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(*(a1 + 32) + 16);
  objc_copyWeak(&v3, &location);
  MRMediaRemoteGetNowPlayingApplicationPlaybackState();
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void sub_1001675F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100167614(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  *(WeakRetained + 1) = v5;
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[CSMediaPlayingMonitor initializeMediaPlayingState]_block_invoke_2";
    v10 = 2050;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Get initial state from MediaRemote: media is on playing state %{public}ld.", buf, 0x16u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100167750;
  v7[3] = &unk_100253B48;
  v7[4] = v4;
  [v4 enumerateObserversInQueue:v7];
}

void sub_100167854(id a1)
{
  v1 = objc_alloc_init(CSMediaPlayingMonitor);
  v2 = qword_10029E5F0;
  qword_10029E5F0 = v1;
}

void sub_1001679C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = +[CSFPreferences sharedPreferences];
  v2 = [v3 getOnDeviceCompilationCacheDirectory];
  [CSFOnDeviceCachedIrPurgingUtils purgeCachedIrForTrialAssetExcludingCurrentAsset:v1 baseCachedIrDir:v2];
}

void sub_100167D10(id a1)
{
  v1 = +[CSFPreferences sharedPreferences];
  v4 = [v1 getOnDeviceCompilationCacheDirectory];

  v2 = +[CSFPreferences sharedPreferences];
  v3 = [v2 getLegacyOnDeviceCompilationCacheDirectory];

  [CSFOnDeviceCachedIrPurgingUtils cleanUpPreviousBuildBnnsIrInCachedIrDir:v4];
  [CSFOnDeviceCachedIrPurgingUtils cleanUpLegacyCachedIrDir:v3];
}

void sub_100168034(id a1)
{
  v1 = objc_alloc_init(CSOnDeviceCachedIrPurgingHandler);
  v2 = qword_10029E600;
  qword_10029E600 = v1;
}

id sub_10016853C(uint64_t a1)
{
  *(*(a1 + 32) + 12) = [*(a1 + 32) _checkBatteryState];
  v2 = *(a1 + 32);
  v3 = v2[12];

  return [v2 _didReceiveBatteryStatusChanged:v3];
}

void sub_100168654(id a1)
{
  v1 = objc_alloc_init(CSBatteryMonitor);
  v2 = qword_10029E610;
  qword_10029E610 = v1;
}

id sub_1001687CC(void *a1)
{
  v1 = a1;
  v2 = +[NSFileManager defaultManager];
  if (![v2 fileExistsAtPath:v1])
  {
    NSLog(@"Cannot find the file");
    goto LABEL_7;
  }

  v3 = [NSData dataWithContentsOfFile:v1];
  if (!v3)
  {
LABEL_5:

LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  v8 = 0;
  v4 = [NSJSONSerialization JSONObjectWithData:v3 options:0 error:&v8];
  v5 = v8;
  if (v5)
  {
    v6 = v5;
    NSLog(@"Cannot parse to JSON");

    goto LABEL_5;
  }

LABEL_8:

  return v4;
}

id *sub_100169400(id *result)
{
  if (*(result + 48) == 1)
  {
    return [result[4] _handleClientRecordStateDidChange:1 eventUUID:result[5]];
  }

  return result;
}

void sub_1001695E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained pendingRecordingStopUUID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    [v5 setIsAssistantClientConsideredAsRecord:0];

    v6 = objc_loadWeakRetained((a1 + 40));
    [v6 notifyCallbackWithOption:0];

    v7 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v8 = v7;
    v9 = objc_loadWeakRetained((a1 + 40));
    v10 = [v9 pendingRecordingStopUUID];
    v15 = 136315394;
    v16 = "[CSVoiceTriggerAPModeSuspendPolicyIOS _handleClientRecordStateDidChange:eventUUID:]_block_invoke";
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Notifying Siri Client record state change to STOPPED, eventUUID = %{public}@", &v15, 0x16u);
  }

  else
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v8 = v11;
    v12 = objc_loadWeakRetained((a1 + 40));
    v13 = [v12 pendingRecordingStopUUID];
    v14 = *(a1 + 32);
    v15 = 136315650;
    v16 = "[CSVoiceTriggerAPModeSuspendPolicyIOS _handleClientRecordStateDidChange:eventUUID:]_block_invoke";
    v17 = 2114;
    v18 = v13;
    v19 = 2114;
    v20 = v14;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s There is no pending event to timeout : pendingRecordingStopUUID = %{public}@, timeoutTargetUUID = %{public}@", &v15, 0x20u);
  }
}

void sub_10016999C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 88));
  _Unwind_Resume(a1);
}

uint64_t sub_1001699EC(uint64_t a1)
{
  v2 = +[CSSiriEnabledMonitor sharedInstance];
  v3 = [v2 isEnabled];

  if (!v3)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _isInPhoneCallStateWithHSPhoneCallCapableRoute];

  if (!v5)
  {
    return 1;
  }

  v6 = CSLogContextFacilityCoreSpeech;
  v7 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v7)
  {
    v9 = 136315138;
    v10 = "[CSVoiceTriggerAPModeSuspendPolicyIOS _addConditionsForIOSAOP]_block_invoke";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Turn on AP mode since device is hands free state with HS phone-call capable route connected", &v9, 0xCu);
    return 0;
  }

  return result;
}

uint64_t sub_100169AF4(uint64_t a1)
{
  v2 = +[CSAlwaysOnProcessorStateMonitor sharedInstance];
  v3 = [v2 isEnabled];

  if ((v3 & 1) == 0)
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[CSVoiceTriggerAPModeSuspendPolicyIOS _addConditionsForIOSAOP]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s AOP Listening is disabled", &v8, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained _isAudioRouteIneligibleForAP];

  return (v6 | v3) & 1;
}

uint64_t sub_100169BEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _isAudioRouteIneligibleForAP];

  if (v2)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[CSVoiceTriggerAPModeSuspendPolicyIOS _addConditionsForIOSAOP]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Audio route ineligible for AP, we should remain in AOP mode", &v9, 0xCu);
    }

    return 1;
  }

  v4 = +[CSAttSiriStateMonitor sharedInstance];
  v5 = [v4 isAttending];

  if (!v5)
  {
    return 1;
  }

  v6 = CSLogContextFacilityCoreSpeech;
  v7 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v7)
  {
    v9 = 136315138;
    v10 = "[CSVoiceTriggerAPModeSuspendPolicyIOS _addConditionsForIOSAOP]_block_invoke";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Turn on AP mode since siri is in attending state", &v9, 0xCu);
    return 0;
  }

  return result;
}

uint64_t sub_100169D44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _isAudioRouteIneligibleForAP];

  if (v2)
  {
    return 1;
  }

  v4 = +[CSAudioRouteChangeMonitor sharedInstance];
  v5 = [v4 jarvisConnected];

  if (v5)
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[CSVoiceTriggerAPModeSuspendPolicyIOS _addConditionsForIOSAOP]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger AOP mode is turned on since jarvis is connected", &v10, 0xCu);
    }

    return 1;
  }

  v7 = +[CSAudioStreamActivityMonitor sharedInstance];
  v8 = [v7 hasNonVoiceTriggerStreamsOrStreamHoldersActive];

  if (v8)
  {
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[CSVoiceTriggerAPModeSuspendPolicyIOS _addConditionsForIOSAOP]_block_invoke";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger AOP mode cannot be turned on since other non-built-in VoiceTrigger clients are running", &v10, 0xCu);
    }
  }

  return v8 ^ 1;
}

BOOL sub_100169EB8(id a1)
{
  v1 = +[CSCommandControlStreamEventMonitor sharedInstance];
  v2 = [v1 isStreaming];

  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[CSVoiceTriggerAPModeSuspendPolicyIOS _addConditionsForIOSAOP]_block_invoke";
    v8 = 1026;
    v9 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s CommandControl Streaming = %{public}d", &v6, 0x12u);
  }

  if (v2)
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[CSVoiceTriggerAPModeSuspendPolicyIOS _addConditionsForIOSAOP]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Turn on AP mode since command control is streaming", &v6, 0xCu);
    }
  }

  return v2 ^ 1;
}

void sub_10016A268(_Unwind_Exception *a1)
{
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v7 - 104));
  _Unwind_Resume(a1);
}

uint64_t sub_10016A2D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _isAudioRouteIneligibleForAP];

  if (v2)
  {
    return 1;
  }

  v4 = +[CSAudioStreamActivityMonitor sharedInstance];
  v5 = [v4 hasNonVoiceTriggerStreamsOrStreamHoldersActive];

  if (v5)
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[CSVoiceTriggerAPModeSuspendPolicyIOS _addConditionsForIOSBargeIn]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger AOP mode cannot be turned on since other non-built-in VoiceTrigger clients are running", &v7, 0xCu);
    }
  }

  return v5 ^ 1;
}

BOOL sub_10016A3CC(id a1)
{
  v1 = +[CSCommandControlStreamEventMonitor sharedInstance];
  v2 = [v1 isStreaming];

  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[CSVoiceTriggerAPModeSuspendPolicyIOS _addConditionsForIOSBargeIn]_block_invoke";
    v8 = 1026;
    v9 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s CommandControl Streaming = %{public}d", &v6, 0x12u);
  }

  if (v2)
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[CSVoiceTriggerAPModeSuspendPolicyIOS _addConditionsForIOSBargeIn]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Turn on AP mode since command control is streaming", &v6, 0xCu);
    }
  }

  return v2 ^ 1;
}

void sub_10016AC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10016AC4C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = sub_10016AEDC;
  v14[4] = sub_10016AEEC;
  v15 = 0;
  v7 = *(a1 + 40);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10016AEF4;
  v13[3] = &unk_1002539E0;
  v13[4] = v14;
  [CSUtils getTrialIdsForAssetType:v7 withCompletion:v13];
  if (v6)
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      *buf = 136315394;
      v17 = "[CSTrialAssetDownloadMonitor _validateDownloadedAssetForAssetType:]_block_invoke_2";
      v18 = 2048;
      v19 = v11;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s ERR: failed to fetch asset for asset type %lu, posting to ABC ...", buf, 0x16u);
    }

    v9 = +[CSDiagnosticReporter sharedInstance];
    [v9 submitTrialIssueReport:kCSDiagnosticReporterTrialAssetFetchFailed];

    v10 = @"n/a";
  }

  else
  {
    v10 = [v5 configVersion];
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v12 = v10;
  AnalyticsSendEventLazy();

  _Block_object_dispose(v14, 8);
}

void sub_10016AEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10016AEDC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10016AF08(uint64_t a1)
{
  v8[0] = &__kCFBooleanTrue;
  v7[0] = @"updateReceived";
  v7[1] = @"updateSuccess";
  v2 = [NSNumber numberWithBool:*(a1 + 48)];
  v8[1] = v2;
  v7[2] = @"namespace";
  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v7[3] = @"assetVersion";
  v8[2] = v4;
  v8[3] = v3;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];

  return v5;
}

void sub_10016B064(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 trialAssetDownloadMonitorDelegate:*(a1 + 32) didInstallNewAsset:1 assetType:*(a1 + 40)];
  }
}

void sub_10016B160(uint64_t a1)
{
  v2 = [CSUtils getAssetTypeForNamespace:*(a1 + 32)];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [v3[1] objectForKeyedSubscript:*(a1 + 32)];
    [v4 refresh];
    v5 = [v4 levelForFactor:@"AssetData" withNamespaceName:*(a1 + 32)];
    v6 = [v5 fileValue];
    v7 = [v6 path];

    if (v7)
    {
      v8 = [v4 levelForFactor:@"isAssetArchived" withNamespaceName:*(a1 + 32)];

      if (v8 && [v8 BOOLeanValue])
      {
        v9 = *(a1 + 40);
        v10 = [CSAssetController getAssetTypeStringForType:v2];
        v11 = [v9 _trailStageDirectoryForAsset:v10];

        v12 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v28 = "[CSTrialAssetDownloadMonitor downloadAndNotifyTrialAssetsUpdateForNamespace:onQueue:]_block_invoke";
          v29 = 2114;
          v30 = v7;
          v31 = 2114;
          v32 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Downloaded asset, now extracting from %{public}@ to %{public}@", buf, 0x20u);
        }

        if (![CSUtils extractArchiveFromDirectory:v7 toDir:v11])
        {
          v19 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v28 = "[CSTrialAssetDownloadMonitor downloadAndNotifyTrialAssetsUpdateForNamespace:onQueue:]_block_invoke";
            v29 = 2114;
            v30 = v7;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s ERR: Unable to unzip asset file %{public}@", buf, 0x16u);
          }

          v20 = +[NSFileManager defaultManager];
          v26 = 0;
          [v20 removeItemAtPath:v11 error:&v26];
          v21 = v26;

          if (v21)
          {
            v22 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
            {
              v24 = v22;
              v25 = [v21 localizedDescription];
              *buf = 136315650;
              v28 = "[CSTrialAssetDownloadMonitor downloadAndNotifyTrialAssetsUpdateForNamespace:onQueue:]_block_invoke";
              v29 = 2112;
              v30 = v11;
              v31 = 2114;
              v32 = v25;
              _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s Failed to delete dir at %@ with err: %{public}@", buf, 0x20u);
            }
          }

          v23 = +[CSDiagnosticReporter sharedInstance];
          [v23 submitTrialIssueReport:kCSDiagnosticReporterTrialDownloadFailed];

          goto LABEL_20;
        }
      }

      v5 = [v4 levelForFactor:@"AssetVersion" withNamespaceName:*(a1 + 32)];

      v13 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        v15 = [v5 stringValue];
        *buf = 136315650;
        v28 = "[CSTrialAssetDownloadMonitor downloadAndNotifyTrialAssetsUpdateForNamespace:onQueue:]_block_invoke";
        v29 = 2050;
        v30 = v2;
        v31 = 2114;
        v32 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Downloaded trial asset type %{public}lu with version %{public}@", buf, 0x20u);
      }

      if ([*(a1 + 40) _validateDownloadedAssetForAssetType:v2])
      {
        [*(a1 + 40) _notifyTrialAssetDownloadForAssetType:v2];
      }
    }

    else
    {
      v17 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v28 = "[CSTrialAssetDownloadMonitor downloadAndNotifyTrialAssetsUpdateForNamespace:onQueue:]_block_invoke";
        v29 = 2114;
        v30 = @"AssetData";
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s ERR: null file download path for factor: %{public}@", buf, 0x16u);
      }

      v18 = +[CSDiagnosticReporter sharedInstance];
      [v18 submitTrialIssueReport:kCSDiagnosticReporterTrialDownloadFailed];
    }

    v8 = v5;
LABEL_20:

    return;
  }

  v16 = *(a1 + 32);

  [v3 _handleSiriAttAssetTrailDownloadForNamespace:v16];
}

void sub_10016BB90(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [TRIClient clientWithIdentifier:a2];
  if (v6)
  {
    [a1[4] setObject:v6 forKey:v5];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10016BD30;
    v9[3] = &unk_100253968;
    objc_copyWeak(&v11, a1 + 6);
    v10 = a1[5];
    v7 = [v6 addUpdateHandlerForNamespaceName:v5 usingBlock:v9];
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v13 = "[CSTrialAssetDownloadMonitor _startMonitoringWithQueue:]_block_invoke";
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Adding client with namespace: %@ to asset manager", buf, 0x16u);
    }

    objc_destroyWeak(&v11);
  }
}

void sub_10016BD30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSTrialAssetDownloadMonitor _startMonitoringWithQueue:]_block_invoke_2";
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s New trial asset for %{public}@ received, begin download", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [v3 namespaceName];
  [WeakRetained downloadAndNotifyTrialAssetsUpdateForNamespace:v6 onQueue:*(a1 + 32)];
}

void sub_10016BEF8(id a1)
{
  v1 = objc_alloc_init(CSTrialAssetDownloadMonitor);
  v2 = qword_10029E628;
  qword_10029E628 = v1;
}

void sub_10016EBF4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[9])
  {
    v3 = CSLogCategoryAttending;
    if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[CSLocalAttendingInitiator speechStartDetectedWithEventInfo:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s SiriUI dismissal in progress. Ignoring speechStartDetected", &v6, 0xCu);
    }
  }

  else
  {
    [v2 _handleSpeechStartDetectedWithEventInfo:*(a1 + 40)];
    [*(a1 + 32) _emitSpeechStartDetectedEventWithAttendingTriggerInfo:*(a1 + 40)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    *(v4 + 56) = 0;
  }
}

void sub_10016ED74(uint64_t a1)
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
    v16 = 136315394;
    v17 = "[CSLocalAttendingInitiator attendingStoppedWithReason:]_block_invoke";
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s [reason = %@]", &v16, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v9 = objc_loadWeakRetained((*(a1 + 32) + 16));
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained((*(a1 + 32) + 16));
      [v11 localAttendingStopped];
    }
  }

  v12 = *(a1 + 32);
  if (v12[10] != v12[12])
  {
    [CSAttendingSelfLogger emitAttendingContextEndedEventWithStopReason:*(a1 + 40) withMHUUID:?];
    objc_storeStrong((*(a1 + 32) + 96), *(*(a1 + 32) + 80));
    v12 = *(a1 + 32);
  }

  [v12 _reset];
  v13 = *(a1 + 40);
  if ((v13 - 3) < 3)
  {
    goto LABEL_14;
  }

  if (v13 == 6)
  {
    [*(a1 + 32) _resetIsStoppingForSiriUIDismissal];
    return;
  }

  if (v13 == 8)
  {
LABEL_14:
    v14 = objc_loadWeakRetained((*(a1 + 32) + 16));
    v15 = [NSError errorWithDomain:CSErrorDomain code:2107 userInfo:0];
    [v14 localAttendingStoppedUnexpectedlyWithError:v15];
  }
}

id sub_10016F034(uint64_t a1)
{
  v2 = CSLogCategoryAttending;
  if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[CSLocalAttendingInitiator receivedAttendingJarvisHintWithInfo:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s %@", &v5, 0x16u);
  }

  return [*(a1 + 40) _startAttendingForJarvisAnnounceMessageWithInfo:*(a1 + 32)];
}

void sub_10016F1AC(uint64_t a1)
{
  v2 = CSLogCategoryAttending;
  if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v10 = 136315394;
    v11 = "[CSLocalAttendingInitiator receivedAttendingMagusNotSupportedHintWithInfo:]_block_invoke";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s %@", &v10, 0x16u);
  }

  v4 = [*(a1 + 32) rootRequestId];
  v5 = *(a1 + 40);
  v6 = *(v5 + 48);
  *(v5 + 48) = v4;

  v7 = *(a1 + 40);
  if (*(v7 + 48))
  {
    if ([*(v7 + 64) isEqualToString:?])
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
      v9 = [NSError errorWithDomain:CSErrorDomain code:2108 userInfo:0];
      [WeakRetained localAttendingStoppedUnexpectedlyWithError:v9];
    }
  }
}

void sub_10016F39C(uint64_t a1)
{
  v2 = CSLogCategoryAttending;
  if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 40) + 8);
    v15 = 136315650;
    v16 = "[CSLocalAttendingInitiator receivedAttendingTriggerForSiriPromptHintWithInfo:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    v19 = 1024;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s %@ attending:%u", &v15, 0x1Cu);
  }

  v5 = *(a1 + 40);
  if (v5[8] == 1)
  {
    v6 = +[CSAttendingTriggerInfo triggerInfoForServerInvoke];
    [v5 _handleSpeechStartDetectedWithEventInfo:v6];

    [*(a1 + 40) _stopAttendingWithReason:3];
  }

  else
  {
    v7 = +[CSCarKitUtils sharedInstance];
    if ([v7 isBargeInDisabledForConnectedVehicle])
    {
      v8 = 1;
    }

    else
    {
      v9 = +[CSFPreferences sharedPreferences];
      v8 = [v9 isBargeInSupportEnabled] ^ 1;
    }

    v10 = *(*(a1 + 40) + 48);
    v11 = [*(a1 + 32) rootRequestId];
    LOBYTE(v10) = [v10 isEqualToString:v11];

    if ((v10 & 1) != 0 || v8)
    {
      v13 = *(a1 + 40);
      v14 = +[CSAttendingTriggerInfo triggerInfoForServerInvoke];
      [v13 _handleSpeechStartDetectedWithEventInfo:v14];
    }

    else
    {
      v12 = CSLogCategoryAttending;
      if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_INFO))
      {
        v15 = 136315138;
        v16 = "[CSLocalAttendingInitiator receivedAttendingTriggerForSiriPromptHintWithInfo:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Skip handling SiriPrompted since initiator already stopped attending", &v15, 0xCu);
      }
    }
  }
}

id sub_10016F714(uint64_t a1)
{
  v2 = CSLogCategoryAttending;
  if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[CSLocalAttendingInitiator receivedAttendingStopHintWithInfo:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s %@", &v5, 0x16u);
  }

  return [*(a1 + 40) _stopAttendingWithReason:{objc_msgSend(*(a1 + 32), "reason")}];
}

id sub_10016F898(uint64_t a1)
{
  v2 = CSLogCategoryAttending;
  if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[CSLocalAttendingInitiator receivedAttendingStartHintWithInfo:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s %@", &v5, 0x16u);
  }

  return [*(a1 + 40) _startAttendingWithInfo:*(a1 + 32)];
}

void sub_10016FA10(uint64_t a1)
{
  v2 = CSLogCategoryAttending;
  if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v10 = 136315394;
    v11 = "[CSLocalAttendingInitiator receivedAttendingWillStartHintWithInfo:]_block_invoke";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s %@", &v10, 0x16u);
  }

  v4 = [*(a1 + 32) rootRequestId];
  v5 = *(a1 + 40);
  v6 = *(v5 + 64);
  *(v5 + 64) = v4;

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained((*(a1 + 40) + 16));
    [v9 localAttendingWillStartWithRootRequestId:*(*(a1 + 40) + 64)];
  }
}

void sub_100170204(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = CSLogCategoryAttending;
    if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v29 = "[CSLocalAttendingInitiator _startAttendingWithOptions:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s start attending successfully", buf, 0xCu);
    }

    v8 = *(*(a1 + 32) + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10017068C;
    block[3] = &unk_100253C48;
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v23 = v9;
    v24 = v10;
    dispatch_async(v8, block);
    v11 = CSLogCategoryAttending;
    if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v29 = "[CSLocalAttendingInitiator _startAttendingWithOptions:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s AttendingSuccess: dispatch group leave attendingStartTransitionGroup", buf, 0xCu);
    }

    dispatch_group_leave(*(*(a1 + 32) + 88));
  }

  else
  {
    v12 = [v5 code];
    v13 = CSLogCategoryAttending;
    v14 = os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT);
    if (v12 == 2103)
    {
      if (v14)
      {
        *buf = 136315138;
        v29 = "[CSLocalAttendingInitiator _startAttendingWithOptions:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s Duplicate Attending Request", buf, 0xCu);
      }

      v15 = *(a1 + 32);
      v16 = *(v15 + 24);
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1001705A4;
      v27[3] = &unk_100253C20;
      v27[4] = v15;
      dispatch_async(v16, v27);
    }

    else
    {
      if (v14)
      {
        v17 = v13;
        v18 = [v6 description];
        *buf = 136315394;
        v29 = "[CSLocalAttendingInitiator _startAttendingWithOptions:]_block_invoke_2";
        v30 = 2112;
        v31 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s Failed to start attending : %@", buf, 0x16u);
      }

      v19 = *(a1 + 32);
      v20 = *(v19 + 24);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100170638;
      v25[3] = &unk_100253C48;
      v25[4] = v19;
      v26 = v6;
      dispatch_async(v20, v25);
    }

    v21 = CSLogCategoryAttending;
    if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v29 = "[CSLocalAttendingInitiator _startAttendingWithOptions:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s AttendingFailed: dispatch group leave attendingStartTransitionGroup", buf, 0xCu);
    }

    dispatch_group_leave(*(*(a1 + 32) + 88));
  }
}

void sub_1001705A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 16));
    [v4 localAttendingAlreadyStarted];
  }
}

void sub_100170638(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained localAttendingStoppedUnexpectedlyWithError:*(a1 + 40)];
}

id sub_10017068C(uint64_t a1)
{
  [CSAttendingSelfLogger emitAttendingContextStartedEventWithAttendingOptions:*(a1 + 32) withMHUUID:*(*(a1 + 40) + 80)];
  *(*(a1 + 40) + 8) = 1;
  result = [*(a1 + 32) startAttendingHostTime];
  *(*(a1 + 40) + 72) = result;
  return result;
}

void sub_100170754(uint64_t a1)
{
  v2 = CSLogCategoryAttending;
  if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = 136315394;
    v5 = "[CSLocalAttendingInitiator setAttendingState:]_block_invoke";
    v6 = 1024;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s [Test] set attending state to : %d", &v4, 0x12u);
  }

  *(*(a1 + 32) + 8) = *(a1 + 40);
}

void sub_10017136C(uint64_t a1, BOOL a2, float a3)
{
  xdict = xpc_dictionary_create_reply(*(a1 + 32));
  xpc_dictionary_set_BOOL(xdict, "result", a2);
  xpc_dictionary_set_double(xdict, "power", a3);
  xpc_connection_send_message(*(a1 + 40), xdict);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}