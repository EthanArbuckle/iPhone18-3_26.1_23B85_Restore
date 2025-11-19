id sub_100082AA8(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSModelBenchmarker _setupAudioInjectionEngineWithAudioURL:]_block_invoke_2";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Audio file read end", &v4, 0xCu);
  }

  [*(*(a1 + 32) + 64) stopAudioStreamWithOutError:0];
  return [*(*(a1 + 32) + 64) stop];
}

void sub_100082D60(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 136315138;
    v28 = "[CSModelBenchmarker audioEngineDidStopRecord:audioStreamHandleId:reason:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s stopRecording", &v27, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = v3[11];
  if (v3[2])
  {
    v5 = mach_absolute_time();
    v6 = [*(*(a1 + 32) + 16) getResultsFromFlushedAudio];
    *(*(a1 + 32) + 80) += mach_absolute_time() - v5;
    v7 = v6 != 0;

    v3 = *(a1 + 32);
  }

  else
  {
    v7 = 1;
  }

  v8 = v3[3];
  if (v8)
  {
    [v8 endAudio];
    v9 = [*(*(a1 + 32) + 24) getLatestSuperVector];
    *(*(a1 + 32) + 80) = [*(*(a1 + 32) + 24) getAccmulatedProcessingTime];
    if (!v9)
    {
      v7 = 0;
    }

    v10 = [*(*(a1 + 32) + 24) getProcessedAudioDurationMs];

    v3 = *(a1 + 32);
  }

  else
  {
    v10 = v4 * 1000.0 / 16000.0;
  }

  v11 = v3[4];
  if (v11)
  {
    [v11 endAudio];
    v12 = [*(*(a1 + 32) + 32) getCurrentOSDFeatures];
    *(*(a1 + 32) + 80) = [v12 inferenceTime];

    v13 = [*(*(a1 + 32) + 32) getCurrentOSDFeatures];
    [v13 processedAudioMs];
    v10 = v14;

    v3 = *(a1 + 32);
  }

  if (v3[6] && !nd_getresults())
  {
    v7 = 0;
  }

  v15 = mach_absolute_time();
  v16 = os_signpost_id_generate(CSLogContextFacilityCoreSpeech);
  v17 = CSLogContextFacilityCoreSpeech;
  v18 = v17;
  if (v16 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {

    v19 = CSLogContextFacilityCoreSpeech;
  }

  else
  {
    if (os_signpost_enabled(v17))
    {
      v27 = 134349570;
      v28 = v15;
      v29 = 2080;
      v30 = "SiriX";
      v31 = 2080;
      v32 = "enableTelemetry=YES";
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "allFramesProcessingLatency", "%{public, signpost.description:begin_time}llu, %s %s", &v27, 0x20u);
    }

    v19 = CSLogContextFacilityCoreSpeech;
    if (os_signpost_enabled(v19))
    {
      v20 = (*(*(a1 + 32) + 80) + v15);
      v27 = 134349570;
      v28 = v20;
      v29 = 2080;
      v30 = "SiriX";
      v31 = 2080;
      v32 = "enableTelemetry=YES";
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, v16, "allFramesProcessingLatency", "%{public, signpost.description:end_time}llu, %s %s", &v27, 0x20u);
    }
  }

  [*(a1 + 32) setAllProcessorsAsNil];
  *(*(a1 + 32) + 80) = 0;
  *(*(a1 + 32) + 88) = 0;
  v21 = *(a1 + 32);
  v22 = *(v21 + 56);
  if (v22)
  {
    v23 = vcvtpd_s64_f64(v10 / *(v21 + 96));
    if (v7)
    {
      (*(v22 + 16))(v22, 0, v23, v10);
    }

    else
    {
      v24 = [NSError errorWithDomain:CSErrorDomain code:2002 userInfo:0];
      (*(v22 + 16))(v22, v24, v23, v10);
    }

    v25 = *(a1 + 32);
    v26 = *(v25 + 56);
    *(v25 + 56) = 0;
  }
}

void sub_1000831D8(uint64_t a1)
{
  v2 = [*(a1 + 32) length];
  v3 = v2 / +[CSConfig inputRecordingSampleByteDepth];
  v4 = v3 * 1000.0 / 16000.0;
  NSLog(@"each batch duration: %d", v4);
  *(*(a1 + 40) + 88) += v3;
  v5 = [CSAudioChunk alloc];
  v6 = *(a1 + 32);
  v7 = +[CSConfig inputRecordingSampleByteDepth];
  LOBYTE(v18) = +[CSConfig inputRecordingIsFloat];
  v19 = [v5 initWithData:v6 numChannels:1 numSamples:v3 sampleByteDepth:v7 startSampleCount:0 hostTime:0 remoteVAD:0 isFloat:v18];
  v8 = *(a1 + 40);
  if ((*(v8 + 96) & 0x8000000000000000) != 0)
  {
    *(v8 + 96) = v4;
    v8 = *(a1 + 40);
  }

  if (*(v8 + 16))
  {
    v9 = mach_absolute_time();
    v10 = [*(*(a1 + 40) + 16) getAnalyzedResultsFromAudioChunk:v19];
    *(*(a1 + 40) + 80) += mach_absolute_time() - v9;
  }

  v11 = *(a1 + 32);
  if (+[CSConfig inputRecordingIsFloat])
  {
    v12 = [CSFLPCMTypeConverter convertToShortLPCMBufFromFloatLPCMBuf:*(a1 + 32)];

    v11 = v12;
  }

  v13 = *(a1 + 40);
  v14 = v13[3];
  if (v14)
  {
    [v14 addAudioSync:v11];
    v13 = *(a1 + 40);
  }

  v15 = v13[4];
  if (v15)
  {
    [v15 addAudio:v11 numSamples:v3];
    v13 = *(a1 + 40);
  }

  if (v13[6])
  {
    v16 = mach_absolute_time();
    v17 = *(*(a1 + 40) + 48);
    [v11 bytes];
    nd_wavedata();
    *(*(a1 + 40) + 80) += mach_absolute_time() - v16;
  }
}

void sub_100083400(id a1)
{
  v1 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[CSModelBenchmarker audioEngineDidStartRecord:audioStreamHandleId:successfully:error:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s startRecording", &v2, 0xCu);
  }
}

void sub_10008373C(uint64_t a1)
{
  v2 = [[CSFileAudioInjectionEngine alloc] initWithStreamHandleId:1 withInputRecordingNumberOfChannels:1];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  *(*(a1 + 32) + 96) = 1;
  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = 0;

  v7 = *(a1 + 32);
  v8 = *(v7 + 24);
  *(v7 + 24) = 0;

  v9 = *(a1 + 32);
  v10 = *(v9 + 16);
  *(v9 + 16) = 0;

  v11 = *(a1 + 32);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;

  v13 = objc_retainBlock(*(a1 + 48));
  v14 = *(a1 + 32);
  v15 = *(v14 + 56);
  *(v14 + 56) = v13;

  *(*(a1 + 32) + 88) = 0;
  *(*(a1 + 32) + 96) = 0;
  if (([*(a1 + 32) _setupAudioInjectionEngineWithAudioURL:*(a1 + 40)] & 1) == 0)
  {
    v16 = *(a1 + 48);
    v17 = [NSError errorWithDomain:CSErrorDomain code:2005 userInfo:0];
    (*(v16 + 16))(v16, v17, -1, 0.0);
  }
}

void sub_10008398C(uint64_t a1)
{
  [*(a1 + 32) setAllProcessorsAsNil];
  *(*(a1 + 32) + 96) = 10;
  v2 = [[CSFileAudioInjectionEngine alloc] initWithStreamHandleId:1 withInputRecordingNumberOfChannels:1];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  *(*(a1 + 32) + 48) = nd_create();
  v5 = *(a1 + 32);
  if (v5[6])
  {
    [*(a1 + 40) UTF8String];
    [*(a1 + 48) UTF8String];
    v6 = nd_initialize();
    if (v6)
    {
      v7 = v6;
      v8 = CSLogCategorySpkrId;
      if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(*(a1 + 32) + 48);
        v10 = v8;
        *buf = 136315650;
        v21 = "[CSModelBenchmarker runNovDetectorWithConfig:configRoot:withUrl:completion:]_block_invoke";
        v22 = 1026;
        v23 = v7;
        v24 = 2082;
        v25 = nd_error();
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s ERR: Failed to initialize _novDetect: err=[%{public}d]:%{public}s", buf, 0x1Cu);
      }

      [*(a1 + 32) reset];
      v11 = *(a1 + 64);
      v12 = [NSError errorWithDomain:CSErrorDomain code:2001 userInfo:0];
      (*(v11 + 16))(v11, v12, -1, 0.0);

      return;
    }

    v16 = objc_retainBlock(*(a1 + 64));
    v17 = *(a1 + 32);
    v18 = *(v17 + 56);
    *(v17 + 56) = v16;

    if ([*(a1 + 32) _setupAudioInjectionEngineWithAudioURL:*(a1 + 56)])
    {
      return;
    }

    [*(a1 + 32) reset];
    v13 = *(a1 + 64);
    v14 = CSErrorDomain;
    v15 = 2005;
  }

  else
  {
    [v5 reset];
    v13 = *(a1 + 64);
    v14 = CSErrorDomain;
    v15 = 2001;
  }

  v19 = [NSError errorWithDomain:v14 code:v15 userInfo:0];
  (*(v13 + 16))(v13, 0.0);
}

void sub_1000841BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000841E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000842FC(uint64_t a1)
{
  [*(a1 + 32) setAllProcessorsAsNil];
  [*(a1 + 32) _onDeviceCompilationWithConfigFile:*(a1 + 40) locale:@"agnosticLocale" modelType:2];
  v2 = [SLODLDProcessor alloc];
  v3 = *(a1 + 40);
  v22 = 0;
  v4 = [v2 initWithConfigFile:v3 error:&v22];
  v5 = v22;
  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  v8 = *(a1 + 32);
  if (v8[5])
  {
    v9 = [[SLODLDInputContext alloc] initWithInputOrigin:&off_10025E138 inputAnchor:&off_10025E150 prevTokens:0 prevEmb:0];
    [v9 updateWithInputUtt:*(a1 + 48)];
    v10 = mach_absolute_time();
    v11 = [*(*(a1 + 32) + 40) processInputContext:v9];
    v12 = mach_absolute_time();
    v13 = os_signpost_id_generate(CSLogContextFacilityCoreSpeech);
    v14 = CSLogContextFacilityCoreSpeech;
    v15 = v14;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 134349570;
      v24 = v10;
      v25 = 2080;
      v26 = "SiriX";
      v27 = 2080;
      v28 = "enableTelemetry=YES";
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "allFramesProcessingLatency", "%{public, signpost.description:begin_time}llu, %s %s", buf, 0x20u);
    }

    *(*(a1 + 32) + 80) += v12 - v10;
    v16 = CSLogContextFacilityCoreSpeech;
    v17 = v16;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      v18 = *(*(a1 + 32) + 80) + v10;
      *buf = 134349570;
      v24 = v18;
      v25 = 2080;
      v26 = "SiriX";
      v27 = 2080;
      v28 = "enableTelemetry=YES";
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, v13, "allFramesProcessingLatency", "%{public, signpost.description:end_time}llu, %s %s", buf, 0x20u);
    }

    [*(a1 + 32) reset];
    v19 = *(a1 + 56);
    if (v11)
    {
      (*(v19 + 16))(v19, 0);
    }

    else
    {
      v21 = [NSError errorWithDomain:CSErrorDomain code:2002 userInfo:0];
      (*(v19 + 16))(v19, v21);
    }
  }

  else
  {
    [v8 reset];
    v20 = *(a1 + 56);
    v9 = [NSError errorWithDomain:CSErrorDomain code:2001 userInfo:0];
    (*(v20 + 16))(v20, v9);
  }
}

void sub_100084720(uint64_t a1)
{
  [*(a1 + 32) setAllProcessorsAsNil];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = sub_1001687CC(v2);
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"spg"];
      v6 = [v5 objectForKeyedSubscript:@"nnet-forward-skip"];
      v7 = [v6 objectForKeyedSubscript:@"skip-frames"];
      v8 = [v7 intValue];

      if (v8 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }

      v10 = (v9 * 10.0);
    }

    else
    {
      v10 = -10;
    }
  }

  else
  {
    v10 = -10;
  }

  *(*(a1 + 32) + 96) = v10;
  v11 = [[CSFileAudioInjectionEngine alloc] initWithStreamHandleId:1 withInputRecordingNumberOfChannels:1];
  v12 = *(a1 + 32);
  v13 = *(v12 + 64);
  *(v12 + 64) = v11;

  v14 = [OSDAnalyzer alloc];
  v15 = *(a1 + 40);
  +[CSConfig inputRecordingSampleRate];
  v17 = [v14 initWithConfigFile:v15 sampleRate:v16 context:0 queue:*(*(a1 + 32) + 72) delegate:0];
  v18 = *(a1 + 32);
  v19 = *(v18 + 32);
  *(v18 + 32) = v17;

  v20 = objc_retainBlock(*(a1 + 56));
  v21 = *(a1 + 32);
  v22 = *(v21 + 56);
  *(v21 + 56) = v20;

  v23 = *(a1 + 32);
  if (v23[4])
  {
    if ([v23 _setupAudioInjectionEngineWithAudioURL:*(a1 + 48)])
    {
      return;
    }

    [*(a1 + 32) reset];
    v24 = 2005;
  }

  else
  {
    [v23 reset];
    v24 = 2001;
  }

  v25 = *(a1 + 56);
  v26 = [NSError errorWithDomain:CSErrorDomain code:v24 userInfo:0];
  (*(v25 + 16))(v25, v26, -1, 0.0);
}

void sub_100084A44(uint64_t a1)
{
  [*(a1 + 32) setAllProcessorsAsNil];
  [*(a1 + 32) _onDeviceCompilationWithConfigFile:*(a1 + 40) locale:*(a1 + 48) modelType:1];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = sub_1001687CC(v2);
    v4 = v3;
    if (!v3)
    {
      goto LABEL_8;
    }

    v5 = [v3 objectForKeyedSubscript:@"frontends"];
    v6 = [v5 objectForKeyedSubscript:@"dnn"];
    v7 = [v6 objectForKeyedSubscript:@"nnet-forward"];
    v8 = [v7 objectForKeyedSubscript:@"strict-batch-size"];
    v9 = [v8 intValue];

    if (v9)
    {
      v10 = [v4 objectForKeyedSubscript:@"frontends"];
      v11 = [v10 objectForKeyedSubscript:@"dnn"];
      v12 = [v11 objectForKeyedSubscript:@"subsample"];
      v13 = [v12 objectForKeyedSubscript:@"stride"];
      v14 = [v13 intValue];

      if (v14 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      v16 = ((v15 * v9) * 10.0);
    }

    else
    {
LABEL_8:
      v16 = -10;
    }
  }

  else
  {
    v16 = -10;
  }

  *(*(a1 + 32) + 96) = v16;
  v17 = [[CSFileAudioInjectionEngine alloc] initWithStreamHandleId:1 withInputRecordingNumberOfChannels:1];
  v18 = *(a1 + 32);
  v19 = *(v18 + 64);
  *(v18 + 64) = v17;

  v20 = [[CSSyncKeywordAnalyzerQuasar alloc] initWithConfigPath:*(a1 + 40) triggerTokensArray:&off_10025ECF0 preventDuplicatedReset:CSIsHorseman() memoryLock:0];
  v21 = *(a1 + 32);
  v22 = *(v21 + 16);
  *(v21 + 16) = v20;

  [*(*(a1 + 32) + 16) setActiveChannel:0];
  [*(*(a1 + 32) + 16) reset];
  v23 = objc_retainBlock(*(a1 + 64));
  v24 = *(a1 + 32);
  v25 = *(v24 + 56);
  *(v24 + 56) = v23;

  v26 = *(a1 + 32);
  if (v26[2])
  {
    if ([v26 _setupAudioInjectionEngineWithAudioURL:*(a1 + 56)])
    {
      return;
    }

    [*(a1 + 32) reset];
    v27 = 2005;
  }

  else
  {
    [v26 reset];
    v27 = 2001;
  }

  v28 = *(a1 + 64);
  v29 = [NSError errorWithDomain:CSErrorDomain code:v27 userInfo:0];
  (*(v28 + 16))(v28, v29, -1, 0.0);
}

void sub_100084E20(uint64_t a1)
{
  [*(a1 + 32) setAllProcessorsAsNil];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = sub_1001687CC(v2);
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKey:@"sr"];

      if (v5)
      {
        v6 = @"sr";
      }

      else
      {
        v6 = @"spid";
      }

      v7 = [v4 objectForKeyedSubscript:v6];
      v8 = [v7 objectForKeyedSubscript:@"subsample"];
      v9 = [v8 objectForKeyedSubscript:@"stride"];
      v10 = [v9 intValue];

      if (v10 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      v12 = (v11 * 10.0);
    }

    else
    {
      v12 = -10;
    }
  }

  else
  {
    v12 = -10;
  }

  *(*(a1 + 32) + 96) = v12;
  v13 = [[CSFileAudioInjectionEngine alloc] initWithStreamHandleId:1 withInputRecordingNumberOfChannels:1];
  v14 = *(a1 + 32);
  v15 = *(v14 + 64);
  *(v14 + 64) = v13;

  v16 = dispatch_queue_create("Model benchmark Queue", 0);
  v17 = *(a1 + 32);
  v18 = *(v17 + 72);
  *(v17 + 72) = v16;

  v19 = [EARSyncPSRAudioProcessor alloc];
  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  +[CSConfig inputRecordingSampleRate];
  v23 = [v19 initWithConfigFile:v20 configRoot:v21 sampleRate:v22 delegate:0 queue:*(*(a1 + 32) + 72)];
  v24 = *(a1 + 32);
  v25 = *(v24 + 24);
  *(v24 + 24) = v23;

  [*(*(a1 + 32) + 24) resetForNewRequestSync];
  v26 = objc_retainBlock(*(a1 + 64));
  v27 = *(a1 + 32);
  v28 = *(v27 + 56);
  *(v27 + 56) = v26;

  v29 = *(a1 + 32);
  if (v29[3])
  {
    if ([v29 _setupAudioInjectionEngineWithAudioURL:*(a1 + 56)])
    {
      return;
    }

    [*(a1 + 32) reset];
    v30 = 2005;
  }

  else
  {
    [v29 reset];
    v30 = 2001;
  }

  v31 = *(a1 + 64);
  v32 = [NSError errorWithDomain:CSErrorDomain code:v30 userInfo:0];
  (*(v31 + 16))(v31, v32, -1, 0.0);
}

void sub_100085B14(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    v2 = [*(a1 + 40) _cs_xpcObject];
    xpc_remote_connection_send_message();

    v3 = *(a1 + 48);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }

  else
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[CSRemoteControlClient setSelfTriggerEnable:withCompletion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Attempt to send message while connection does not exist", &v8, 0xCu);
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = [NSError errorWithDomain:CSErrorDomain code:302 userInfo:&off_10025F0C0];
      (*(v6 + 16))(v6, 0, v7);
    }
  }
}

void sub_100085E10(void *a1)
{
  if (*(a1[4] + 16))
  {
    v2 = a1[5];
    xpc_remote_connection_send_message();
    v3 = a1[6];
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }

  else
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[CSRemoteControlClient _transferAudioData:numSamples:remoteWavFilePath:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Attempt to send message while connection does not exist", &v8, 0xCu);
    }

    v6 = a1[6];
    if (v6)
    {
      v7 = [NSError errorWithDomain:CSErrorDomain code:302 userInfo:0];
      (*(v6 + 16))(v6, v7);
    }
  }
}

void sub_100086210(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = 136315394;
      v14 = "[CSRemoteControlClient _fetchDataFromAudioFileUrl:aesKey:encryptedAudioSampleBypeDepth:completion:]_block_invoke";
      v15 = 2114;
      v16 = v12;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s ERR: Failed to fetch audio data from %{public}@", &v13, 0x16u);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = *(v9 + 16);
LABEL_8:
      v10();
    }
  }

  else
  {
    v11 = *(a1 + 40);
    if (v11)
    {
      v10 = *(v11 + 16);
      goto LABEL_8;
    }
  }
}

uint64_t sub_10008633C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100086354(void *a1, uint64_t a2, char a3, void *a4)
{
  v7 = a4;
  if (v7)
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v13 = a1[4];
      *buf = 136315394;
      v16 = "[CSRemoteControlClient _fetchDataFromAudioFileUrl:aesKey:encryptedAudioSampleBypeDepth:completion:]_block_invoke";
      v17 = 2112;
      v18 = v13;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Failed to read file: %@", buf, 0x16u);
    }

    v9 = *(a1[5] + 8);
    v10 = v7;
    v11 = *(v9 + 40);
    *(v9 + 40) = v10;
LABEL_9:

    goto LABEL_10;
  }

  if ((a3 & 1) == 0)
  {
    v11 = [NSData dataWithBytes:*(a2 + 16) length:*(a2 + 12)];
    if (v11)
    {
      [*(*(a1[6] + 8) + 40) appendData:v11];
    }

    v12 = [v11 length];
    +[CSFAudioStreamBasicDescriptionFactory lpcmInt16ASBD];
    *(*(a1[7] + 8) + 24) += v12 / v14;
    goto LABEL_9;
  }

LABEL_10:
}

uint64_t sub_100086640(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(a1 + 40);
    return xpc_remote_connection_send_message();
  }

  return result;
}

void sub_1000867CC(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    v2 = [*(a1 + 40) _cs_xpcObject];
    v5 = *(a1 + 48);
    xpc_remote_connection_send_message_with_reply();
  }

  else
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v7 = "[CSRemoteControlClient fetchAndClearCachedVoiceTriggerEventsWithCompletion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Attempt to send message while connection does not exist", buf, 0xCu);
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      (*(v4 + 16))(v4, 0, 0, 0);
    }
  }
}

void sub_100086934(uint64_t a1, void *a2)
{
  xdict = a2;
  if (xpc_get_type(xdict) == &_xpc_type_dictionary)
  {
    v6 = xpc_dictionary_get_array(xdict, "voiceTriggerFirstPassEvents");
    if (v6)
    {
      v7 = [NSArray alloc];
      v5 = [v7 _cs_initWithXPCObject:v6];
    }

    else
    {
      v5 = 0;
    }

    v8 = xpc_dictionary_get_array(xdict, "secondPassRejectedEvents");
    if (v8)
    {
      v9 = [NSArray alloc];
      v4 = [v9 _cs_initWithXPCObject:v8];
    }

    else
    {
      v4 = 0;
    }

    v10 = xpc_dictionary_get_array(xdict, "secondPassCancelledEvents");
    if (v10)
    {
      v11 = [NSArray alloc];
      v3 = [v11 _cs_initWithXPCObject:v10];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    (*(v12 + 16))(v12, v5, v4, v3);
  }
}

void sub_100086C64(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    v1 = *(a1 + 40);

    xpc_remote_connection_send_message();
  }

  else
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315138;
      v4 = "[CSRemoteControlClient notifyBluetoothWirelessSplitterStateChanged:shouldDisableSpeakerVerificationInSplitterMode:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Attempt to send message while connection does not exist", &v3, 0xCu);
    }
  }
}

void sub_1000873A0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = v8;
  if (!v7 || v8)
  {
    dispatch_group_leave(*(a1 + 56));
  }

  else
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 136315394;
      v19 = "[CSRemoteControlClient createRemoteVoiceProfileWithAudioFiles:aesKey:encryptedAudioSampleBypeDepth:languageCode:completion:]_block_invoke";
      v20 = 2114;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Sending training data from %{public}@ to remote", buf, 0x16u);
    }

    v13 = *(a1 + 40);
    v12 = *(a1 + 48);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000877D0;
    v14[3] = &unk_10024FE88;
    v17 = *(a1 + 64);
    v15 = v12;
    v16 = *(a1 + 56);
    [v13 _transferAudioData:v7 numSamples:a3 remoteWavFilePath:v15 completion:v14];
  }
}

void sub_100087530(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    v2 = *(a1 + 40);
    v6 = *(a1 + 48);
    xpc_remote_connection_send_message_with_reply();
    v3 = v6;
LABEL_7:

    return;
  }

  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v8 = "[CSRemoteControlClient createRemoteVoiceProfileWithAudioFiles:aesKey:encryptedAudioSampleBypeDepth:languageCode:completion:]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Attempt to send message while connection does not exist", buf, 0xCu);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v3 = [NSError errorWithDomain:CSErrorDomain code:302 userInfo:0];
    (*(v5 + 16))(v5, v3);
    goto LABEL_7;
  }
}

void sub_1000876A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && xpc_dictionary_get_BOOL(v3, "replyResult"))
  {
    v5 = 0;
  }

  else
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[CSRemoteControlClient createRemoteVoiceProfileWithAudioFiles:aesKey:encryptedAudioSampleBypeDepth:languageCode:completion:]_block_invoke_2";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Failed to create remote voice profile", &v8, 0xCu);
    }

    v5 = [NSError errorWithDomain:CSErrorDomain code:306 userInfo:0];
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5);
  }
}

void sub_1000877D0(void *a1)
{
  [*(*(a1[6] + 8) + 40) addObject:a1[4]];
  v2 = a1[5];

  dispatch_group_leave(v2);
}

void sub_100087A24(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    v1 = *(a1 + 40);
    v3 = *(a1 + 32);
    xpc_remote_connection_send_message_with_reply();
  }

  else
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v5 = "[CSRemoteControlClient exchangeRemoteDeviceProtocolInfo:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Attempt to send message while connection does not exist", buf, 0xCu);
    }
  }
}

void sub_100087B3C(uint64_t a1, void *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  if (!v3 || !xpc_dictionary_get_BOOL(v3, "replyResult"))
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v14 = "[CSRemoteControlClient exchangeRemoteDeviceProtocolInfo:]_block_invoke_2";
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Failed to fetch accessory protocol info, fallback to default info", buf, 0xCu);
    }
  }

  if (type == &_xpc_type_dictionary)
  {
    v7 = xpc_dictionary_get_dictionary(v3, "accessoryProtocolInfo");
    v8 = v7;
    if (v7)
    {
      v9 = *(a1 + 32);
      v10 = *(v9 + 8);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100087D18;
      v11[3] = &unk_100253C48;
      v11[4] = v9;
      v12 = v7;
      dispatch_async(v10, v11);
    }
  }

  else
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v14 = "[CSRemoteControlClient exchangeRemoteDeviceProtocolInfo:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Wrong reply type received", buf, 0xCu);
    }
  }
}

void sub_100087D18(uint64_t a1)
{
  v2 = [[CSRemoteDeviceProtocolInfo alloc] initWithXPCObject:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1 + 32) + 64);
    v7 = v5;
    v8 = [v6 description];
    v9 = 136315394;
    v10 = "[CSRemoteControlClient exchangeRemoteDeviceProtocolInfo:]_block_invoke";
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Fetched accessory device info : %{public}@", &v9, 0x16u);
  }
}

void sub_100087F90(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    v2 = [*(a1 + 40) _cs_xpcObject];
    xpc_remote_connection_send_message();
  }

  else
  {
    v1 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v4 = "[CSRemoteControlClient notifyVoiceTriggerAssetChangeWithSiriLanguageCode:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%s Attempt to send message while connection does not exist", buf, 0xCu);
    }
  }
}

uint64_t sub_1000881E4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 && v5)
  {
    v7 = [NSString stringWithUTF8String:a2];
    [*(a1 + 32) setObject:v6 forKey:v7];
  }

  else
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[CSRemoteControlClient _dictionaryWithContentsOfXPCObject:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s xpcObject key or value is NULL", &v10, 0xCu);
    }
  }

  return 1;
}

void sub_10008845C(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    v2 = [*(a1 + 40) _cs_xpcObject];
    v5 = *(a1 + 48);
    xpc_remote_connection_send_message_with_reply();
  }

  else
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v7 = "[CSRemoteControlClient getFirstPassRunningMode:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Attempt to send message while connection does not exist", buf, 0xCu);
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      (*(v4 + 16))(v4, 0);
    }
  }
}

void sub_1000885BC(uint64_t a1, void *a2)
{
  v9 = a2;
  if (xpc_get_type(v9) == &_xpc_type_dictionary)
  {
    v4 = [NSDictionary alloc];
    v5 = [v4 _cs_initWithXPCObject:v9];

    if (v5 && ([v5 objectForKeyedSubscript:@"replyGetFirstPassRunningMode"], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      v7 = [v5 objectForKeyedSubscript:@"replyGetFirstPassRunningMode"];
      v3 = [v7 unsignedIntegerValue];
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }
}

void sub_100088828(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    v2 = [*(a1 + 40) _cs_xpcObject];
    v5 = *(a1 + 48);
    xpc_remote_connection_send_message_with_reply();
  }

  else
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v7 = "[CSRemoteControlClient clearTriggerCount:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Attempt to send message while connection does not exist", buf, 0xCu);
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      (*(v4 + 16))();
    }
  }
}

void sub_100088984(uint64_t a1, void *a2)
{
  v6 = a2;
  if (xpc_get_type(v6) == &_xpc_type_dictionary)
  {
    v3 = [NSDictionary alloc];
    v4 = [v3 _cs_initWithXPCObject:v6];

    if (v4)
    {
      [v4 objectForKeyedSubscript:@"replyClearTriggerCount"];
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

void sub_100088BB0(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    v2 = [*(a1 + 40) _cs_xpcObject];
    v5 = *(a1 + 48);
    xpc_remote_connection_send_message_with_reply();
  }

  else
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v7 = "[CSRemoteControlClient getTriggerCount:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Attempt to send message while connection does not exist", buf, 0xCu);
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      (*(v4 + 16))(v4, 0);
    }
  }
}

void sub_100088D10(uint64_t a1, void *a2)
{
  v8 = a2;
  if (xpc_get_type(v8) == &_xpc_type_dictionary)
  {
    v4 = [NSDictionary alloc];
    v5 = [v4 _cs_initWithXPCObject:v8];

    if (v5)
    {
      v3 = [v5 objectForKeyedSubscript:@"replyGetTriggerCount"];

      if (v3)
      {
        v6 = [v5 objectForKeyedSubscript:@"replyGetTriggerCount"];
        v3 = [v6 unsignedLongLongValue];
      }
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

void sub_1000894D4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10008953C(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    v5 = [*(a1 + 40) _cs_xpcObject];
    xpc_remote_connection_send_message();
  }

  else
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v7 = "[CSRemoteControlClient transferInterstitialAudioFiles:interstitialLevel:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Attempt to send message while connection does not exist", buf, 0xCu);
    }

    v3 = *(a1 + 48);
    if (v3)
    {
      v4 = [NSError errorWithDomain:CSErrorDomain code:302 userInfo:&off_10025F048];
      (*(v3 + 16))(v3, v4);
    }
  }
}

void sub_100089820(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    v2 = [*(a1 + 40) _cs_xpcObject];
    xpc_remote_connection_send_message();
  }

  else
  {
    v1 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v4 = "[CSRemoteControlClient invalidateInterstitialWithLevel:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%s Attempt to send message while connection does not exist", buf, 0xCu);
    }
  }
}

void sub_100089AA4(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    v2 = [*(a1 + 40) _cs_xpcObject];
    v5 = *(a1 + 48);
    xpc_remote_connection_send_message_with_reply();
  }

  else
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v7 = "[CSRemoteControlClient voiceTriggerEnabledWithCompletion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Attempt to send message while connection does not exist", buf, 0xCu);
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      (*(v4 + 16))(v4, 0, 0);
    }
  }
}

void sub_100089C08(uint64_t a1, void *a2)
{
  v9 = a2;
  if (xpc_get_type(v9) == &_xpc_type_dictionary)
  {
    v4 = [NSDictionary alloc];
    v5 = [v4 _cs_initWithXPCObject:v9];

    if (v5)
    {
      v6 = [v5 objectForKeyedSubscript:@"replyVoiceTriggerEnabled"];

      if (v6)
      {
        v7 = [v5 objectForKeyedSubscript:@"replyVoiceTriggerEnabled"];
        v6 = [v7 BOOLValue];
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))(v8, 1, v6);
    }
  }

  else
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      (*(v3 + 16))(v3, 0, 0);
    }
  }
}

void sub_100089ECC(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    v2 = [*(a1 + 40) _cs_xpcObject];
    v5 = *(a1 + 48);
    xpc_remote_connection_send_message_with_reply();
  }

  else
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v7 = "[CSRemoteControlClient setVoiceTriggerEnable:withCompletion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Attempt to send message while connection does not exist", buf, 0xCu);
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      (*(v4 + 16))(v4, 0);
    }
  }
}

uint64_t sub_10008A02C(uint64_t a1, xpc_object_t object)
{
  xpc_get_type(object);
  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_10008A748(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10008A7B0(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    v2 = [*(a1 + 40) _cs_xpcObject];
    xpc_remote_connection_send_message();

    v3 = *(a1 + 48);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }

  else
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[CSRemoteControlClient transferVoiceTriggerAsset:forLanguageCode:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Attempt to send message while connection does not exist", &v8, 0xCu);
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = [NSError errorWithDomain:CSErrorDomain code:304 userInfo:&off_10025EFA8];
      (*(v6 + 16))(v6, 0, v7);
    }
  }
}

void sub_10008AD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10008AD4C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10008B1E4(uint64_t a1, uint64_t a2)
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (a2)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      *buf = 136315650;
      v16 = "[CSRemoteControlClient _transferFile:at:completion:]_block_invoke";
      v17 = 2114;
      v18 = v12;
      v19 = 1026;
      v20 = a2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Transfer of file %{public}@ failed : %{public}d", buf, 0x1Cu);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = CSErrorDomain;
      v7 = [NSNumber numberWithInt:a2, @"reason"];
      v14 = v7;
      v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      v9 = [NSError errorWithDomain:v6 code:304 userInfo:v8];
      (*(v5 + 16))(v5, v9);
    }
  }

  else
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 136315394;
      v16 = "[CSRemoteControlClient _transferFile:at:completion:]_block_invoke";
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Transfer of file %{public}@ succeed", buf, 0x16u);
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      (*(v11 + 16))(v11, 0);
    }
  }
}

void sub_10008B3DC(void *a1)
{
  if (*(a1[4] + 16))
  {
    v2 = a1[5];

    xpc_remote_connection_send_message();
  }

  else
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v9 = "[CSRemoteControlClient _transferFile:at:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s attempt to send message while connection does not exsit", buf, 0xCu);
    }

    v4 = a1[6];
    if (v4)
    {
      v5 = *(a1[4] + 8);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10008B544;
      block[3] = &unk_100252CA8;
      v7 = v4;
      dispatch_async(v5, block);
    }
  }
}

void sub_10008B544(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:CSErrorDomain code:302 userInfo:&off_10025EF58];
  (*(v1 + 16))(v1, v2);
}

void sub_10008B734(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    v2 = [*(a1 + 40) _cs_xpcObject];
    v5 = *(a1 + 48);
    xpc_remote_connection_send_message_with_reply();
  }

  else
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v7 = "[CSRemoteControlClient readAndClearVoiceTriggeredTokenWithCompletion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Attempt to send message while connection does not exist", buf, 0xCu);
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      (*(v4 + 16))(v4, 0, 0, 0, 0);
    }
  }
}

void sub_10008B8A0(uint64_t a1, void *a2)
{
  v12 = a2;
  if (xpc_get_type(v12) == &_xpc_type_dictionary)
  {
    v7 = [NSDictionary alloc];
    v8 = [v7 _cs_initWithXPCObject:v12];

    if (v8)
    {
      v6 = [v8 objectForKeyedSubscript:@"replyReadAndClearVoiceTriggeredToken"];

      if (v6)
      {
        v9 = [v8 objectForKeyedSubscript:@"replyReadAndClearVoiceTriggeredToken"];
        v6 = [v9 BOOLValue];
      }

      v5 = [v8 objectForKeyedSubscript:@"myriadHash"];

      if (v5)
      {
        v5 = [v8 objectForKeyedSubscript:@"myriadHash"];
      }

      v3 = [v8 objectForKeyedSubscript:@"voiceTriggerEventInfo"];

      if (v3)
      {
        v3 = [v8 objectForKeyedSubscript:@"voiceTriggerEventInfo"];
      }

      v4 = [v8 objectForKeyedSubscript:@"tokenFetchMachTime"];

      if (v4)
      {
        v10 = [v8 objectForKeyedSubscript:@"tokenFetchMachTime"];
        v4 = [v10 unsignedLongLongValue];
      }
    }

    else
    {
      v3 = 0;
      v6 = 0;
      v5 = 0;
      v4 = 0;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, v6, v5, v3, v4);
  }
}

void sub_10008BBFC(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    v2 = [*(a1 + 40) _cs_xpcObject];
    v5 = *(a1 + 48);
    xpc_remote_connection_send_message_with_reply();
  }

  else
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v7 = "[CSRemoteControlClient readVoiceTriggeredTokenWithCompletion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Attempt to send message while connection does not exist", buf, 0xCu);
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      (*(v4 + 16))(v4, 0);
    }
  }
}

void sub_10008BD5C(uint64_t a1, void *a2)
{
  v8 = a2;
  if (xpc_get_type(v8) == &_xpc_type_dictionary)
  {
    v4 = [NSDictionary alloc];
    v5 = [v4 _cs_initWithXPCObject:v8];

    if (v5)
    {
      v3 = [v5 objectForKeyedSubscript:@"replyReadVoiceTriggeredToken"];

      if (v3)
      {
        v6 = [v5 objectForKeyedSubscript:@"replyReadVoiceTriggeredToken"];
        v3 = [v6 BOOLValue];
      }
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

uint64_t sub_10008C8B0(uint64_t result)
{
  if (*(*(result + 32) + 16))
  {
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

void sub_10008CC6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(*(a1 + 32) + 32);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          v10 = *(a1 + 32);
          v11 = *(v10 + 8);
          v12[0] = _NSConcreteStackBlock;
          v12[1] = 3221225472;
          v12[2] = sub_10008CDF4;
          v12[3] = &unk_100253C48;
          v12[4] = v9;
          v12[5] = v10;
          dispatch_async(v11, v12);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

void sub_10008CF28(uint64_t a1)
{
  v2 = *(a1 + 32);
  type = remote_device_get_type();
  v4 = *(*(a1 + 40) + 40);
  if (v4 == type)
  {
    v17[0] = 0;
    v17[1] = 0;
    v5 = *(a1 + 32);
    remote_device_copy_uuid();
    v6 = [[NSUUID alloc] initWithUUIDBytes:v17];
    v7 = [v6 UUIDString];
    v8 = *(a1 + 40);
    v9 = *(v8 + 56);
    *(v8 + 56) = v7;

    v10 = *(a1 + 32);
    v11 = remote_device_copy_service();
    if (v11)
    {
      v12 = *(*(a1 + 40) + 8);
      v13 = xpc_remote_connection_create_with_remote_service();
      objc_initWeak(location, *(a1 + 40));
      objc_copyWeak(&v16, location);
      xpc_remote_connection_set_event_handler();
      xpc_remote_connection_activate();
      objc_storeStrong((*(a1 + 40) + 16), v13);
      [*(*(a1 + 40) + 24) leave];
      objc_destroyWeak(&v16);
      objc_destroyWeak(location);
    }

    else
    {
      v15 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *location = 136315394;
        *&location[4] = "[CSRemoteControlClient didDeviceConnect:]_block_invoke";
        v19 = 2082;
        v20 = "com.apple.corespeech.xpc.remote.control";
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Service: %{public}s not found", location, 0x16u);
      }

      [*(*(a1 + 40) + 24) leave];
    }
  }

  else
  {
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *location = 136315650;
      *&location[4] = "[CSRemoteControlClient didDeviceConnect:]_block_invoke";
      v19 = 2048;
      v20 = type;
      v21 = 2048;
      v22 = v4;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Connected to unexpected device type : %lu (expected type: %lu)", location, 0x20u);
    }
  }
}

void sub_10008D1BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008D1E4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleServerEvent:v3];
}

void *sub_10008D580(void *result)
{
  if (*(result[4] + 32))
  {
    return [*(result[4] + 32) removeObject:result[5]];
  }

  return result;
}

id sub_10008D6F0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    v3 = +[NSHashTable weakObjectsHashTable];
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v2 = *(*(a1 + 32) + 32);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

void sub_10008DA28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008DA6C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didDeviceConnect:v3];
}

void sub_10008DAC8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didDeviceDisconnect:v3];
}

void sub_10008E434(uint64_t a1)
{
  v7[0] = @"timestamp";
  v2 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
  v8[0] = v2;
  v7[1] = @"timeWindowStart";
  v3 = [NSNumber numberWithUnsignedLongLong:*(a1 + 40)];
  v8[1] = v3;
  v7[2] = @"timeWindowEnd";
  v4 = [NSNumber numberWithUnsignedLongLong:*(a1 + 48)];
  v8[2] = v4;
  v7[3] = @"visual-speech";
  v5 = [NSNumber numberWithBool:*(a1 + 56)];
  v8[3] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];

  [*(*(a1 + 32) + 136) addObject:v6];
}

void sub_10008E6B8(uint64_t a1)
{
  v7[0] = @"timestamp";
  v2 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
  v8[0] = v2;
  v7[1] = @"timeWindowStart";
  v3 = [NSNumber numberWithUnsignedLongLong:*(a1 + 40)];
  v8[1] = v3;
  v7[2] = @"timeWindowEnd";
  v4 = [NSNumber numberWithUnsignedLongLong:*(a1 + 48)];
  v8[2] = v4;
  v7[3] = @"visual-speech-probability";
  v5 = [NSNumber numberWithDouble:*(a1 + 56)];
  v8[3] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];

  [*(*(a1 + 32) + 128) addObject:v6];
}

void sub_10008E9FC(uint64_t a1)
{
  v5[0] = @"timestamp";
  v2 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
  v5[1] = @"attentionState";
  v6[0] = v2;
  v3 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  v6[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];

  [*(*(a1 + 32) + 120) addObject:v4];
}

void sub_10008FF24(void *a1)
{
  v4[0] = @"timestamp";
  v2 = [NSNumber numberWithUnsignedLongLong:a1[6]];
  v4[1] = @"visualSpeechSignal";
  v5[0] = v2;
  v5[1] = a1[4];
  v3 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  [*(a1[5] + 144) addObject:v3];
}

void sub_10009006C(uint64_t a1)
{
  v10[0] = @"timestamp";
  v2 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
  v11[0] = v2;
  v10[1] = @"hadGazeAttention";
  v3 = [NSNumber numberWithBool:*(a1 + 56)];
  v11[1] = v3;
  v10[2] = @"attentionInterval";
  v8[0] = @"startTime";
  v4 = [NSNumber numberWithUnsignedLongLong:*(a1 + 40)];
  v8[1] = @"endTs";
  v9[0] = v4;
  v5 = [NSNumber numberWithUnsignedLongLong:*(a1 + 48)];
  v9[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
  v11[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];

  [*(*(a1 + 32) + 112) addObject:v7];
}

void sub_100090268(uint64_t a1)
{
  v23[0] = @"timestamp";
  v14 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
  v24[0] = v14;
  v23[1] = @"gazeInAoI";
  v13 = [NSNumber numberWithBool:*(a1 + 88)];
  v24[1] = v13;
  v23[2] = @"gazePoint";
  v21[0] = @"x";
  v12 = [NSNumber numberWithDouble:*(a1 + 40)];
  v21[1] = @"y";
  v22[0] = v12;
  v11 = [NSNumber numberWithDouble:*(a1 + 48)];
  v22[1] = v11;
  v2 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
  v24[2] = v2;
  v23[3] = @"AoI";
  v19[0] = @"origin";
  v17[0] = @"x";
  v3 = [NSNumber numberWithDouble:*(a1 + 56)];
  v17[1] = @"y";
  v18[0] = v3;
  v4 = [NSNumber numberWithDouble:*(a1 + 64)];
  v18[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
  v19[1] = @"size";
  v20[0] = v5;
  v15[0] = @"height";
  v6 = [NSNumber numberWithDouble:*(a1 + 80)];
  v15[1] = @"width";
  v16[0] = v6;
  v7 = [NSNumber numberWithDouble:*(a1 + 72)];
  v16[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  v20[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  v24[3] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];

  [*(*(a1 + 32) + 104) addObject:v10];
}

void sub_10009064C(uint64_t a1)
{
  v2 = [*(a1 + 32) startSampleCount];
  if (v2 >= [*(a1 + 40) previousLoggedSampleCount])
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);

    [v8 _writeAudioChunk:v9];
  }

  else
  {
    v3 = [*(a1 + 32) startSampleCount];
    if (v3 >= [*(a1 + 40) previousLoggedSampleCount] || (v4 = objc_msgSend(*(a1 + 32), "startSampleCount"), &v4[objc_msgSend(*(a1 + 32), "numSamples")] <= *(*(a1 + 40) + 80)))
    {
      v10 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 32);
        v12 = v10;
        v13 = [v11 numSamples];
        v14 = [*(a1 + 32) startSampleCount];
        v15 = [*(a1 + 40) previousLoggedSampleCount];
        *buf = 136315906;
        v18 = "[CSAttSiriMagusLoggingNode attSiriAudioSrcNodeLPCMRecordBufferAvailable:audioChunk:]_block_invoke";
        v19 = 2048;
        v20 = v13;
        v21 = 2048;
        v22 = v14;
        v23 = 2048;
        v24 = v15;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Skip duplicated audio chunk: chunk.numSamples = %lu, chunk.startSampleCount = %llu, previousLoggedSampleCount = %llu", buf, 0x2Au);
      }
    }

    else
    {
      v5 = *(a1 + 32);
      v6 = [v5 startSampleCount];
      v7 = [*(a1 + 40) previousLoggedSampleCount];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100090868;
      v16[3] = &unk_10024FF28;
      v16[4] = *(a1 + 40);
      [v5 skipSamplesAtStartSuchThatNumSamplesReceivedSoFar:v6 reachesACountOf:v7 completionHandler:v16];
    }
  }
}

void sub_1000909B4(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
}

void sub_100090A6C(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSAttSiriMagusLoggingNode stop]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  v3 = *(a1 + 32);
  if ((*(v3 + 9) & 1) == 0)
  {
    *(v3 + 9) = 1;
    [*(a1 + 32) _handleMagusStopLogging];
  }
}

void sub_100090BAC(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 136315138;
    v33 = "[CSAttSiriMagusLoggingNode start]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v32, 0xCu);
  }

  v3 = *(a1 + 32);
  if ((v3[9] & 1) == 0)
  {
    v3[9] = 1;
    [*(a1 + 32) _handleMagusStopLogging];
    v3 = *(a1 + 32);
  }

  v4 = [v3 _timeStampString];
  v5 = *(a1 + 32);
  v6 = *(v5 + 152);
  *(v5 + 152) = v4;

  *(*(a1 + 32) + 192) = mach_absolute_time();
  v7 = *(a1 + 32);
  v8 = *(v7 + 48);
  *(v7 + 48) = 0;

  v9 = +[NSMutableArray array];
  v10 = *(a1 + 32);
  v11 = *(v10 + 96);
  *(v10 + 96) = v9;

  *(*(a1 + 32) + 168) = 0;
  *(*(a1 + 32) + 176) = 0;
  *(*(a1 + 32) + 184) = 0;
  v12 = *(a1 + 32);
  v13 = *(v12 + 56);
  *(v12 + 56) = 0;

  *(*(a1 + 32) + 9) = 0;
  [*(a1 + 32) _startAudioLogging];
  v14 = +[NSMutableArray array];
  v15 = *(a1 + 32);
  v16 = *(v15 + 104);
  *(v15 + 104) = v14;

  v17 = +[NSMutableArray array];
  v18 = *(a1 + 32);
  v19 = *(v18 + 112);
  *(v18 + 112) = v17;

  v20 = +[NSMutableArray array];
  v21 = *(a1 + 32);
  v22 = *(v21 + 120);
  *(v21 + 120) = v20;

  v23 = +[NSMutableArray array];
  v24 = *(a1 + 32);
  v25 = *(v24 + 128);
  *(v24 + 128) = v23;

  v26 = +[NSMutableArray array];
  v27 = *(a1 + 32);
  v28 = *(v27 + 136);
  *(v27 + 136) = v26;

  v29 = +[NSMutableArray array];
  v30 = *(a1 + 32);
  v31 = *(v30 + 144);
  *(v30 + 144) = v29;
}

id *sub_10009199C(id *result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (!a3)
    {
      return [result[4] _updateWithAsset:a2];
    }
  }

  return result;
}

void sub_1000926C8(id a1)
{
  v1 = objc_alloc_init(CSAttSiriMagusSupportedPolicy);
  v2 = qword_10029E1A0;
  qword_10029E1A0 = v1;

  v3 = qword_10029E1A0;

  [v3 start];
}

void sub_100092818(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CSSmartSiriVolumeService];
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CSSmartSiriVolumeServiceDelegate];
  v3 = objc_alloc_init(CSSmartSiriVolumeServiceProxy);
  v4 = [[CSConnectionListener alloc] initWithMachService:@"com.apple.corespeech.corespeechd.ssv.service" withServiceInterface:v1 withServiceObject:v3 withDelegateInterface:v2];
  v5 = qword_10029E1B0;
  qword_10029E1B0 = v4;

  [(CSSmartSiriVolumeServiceProxy *)v3 setListenerDelegate:qword_10029E1B0];
  [qword_10029E1B0 resumeConnection];
  v6 = CSLogCategoryASV;
  if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "+[CSConnectionListener(SmartSiriVolume) createSmartSiriVolumeListener]_block_invoke";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolume connection started listening", &v7, 0xCu);
  }
}

void sub_100092AB8(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v7 = [*(a1 + 32) observers];
    v5 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
    v6 = [v7 objectForKeyedSubscript:v5];
    [v6 removeObject:*(a1 + 40)];
  }
}

void sub_100092C58(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (!v4)
  {
    v5 = +[NSHashTable weakObjectsHashTable];
    v6 = [*(a1 + 32) observers];
    v7 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
    [v6 setObject:v5 forKeyedSubscript:v7];
  }

  v10 = [*(a1 + 32) observers];
  v8 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
  v9 = [v10 objectForKeyedSubscript:v8];
  [v9 addObject:*(a1 + 40)];
}

void sub_1000930B8(uint64_t a1, void *a2)
{
  v6 = a2;
  [v6 expectedTimeRemaining];
  if (v3 <= 0.0)
  {
    [*(a1 + 32) attachProgressCallBack:0];
  }

  else
  {
    v4 = [v6 totalWritten];
    if (v4 / [v6 totalExpected] > 0.0)
    {
      v5 = *(a1 + 40);
      if (v5)
      {
        (*(v5 + 16))();
      }
    }
  }
}

void sub_10009315C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    if (v2)
    {
      v5 = [NSError errorWithDomain:CSErrorDomain code:804 userInfo:0];
      (*(v2 + 16))(v2, v5);
    }
  }

  else if (v2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 0);
  }
}

void sub_100093378(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CSLogCategoryAsset;
  if (v3)
  {
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v7 = [v5 assetServerUrl];
      v8 = [v3 localizedDescription];
      v13 = 136315650;
      v14 = "[CSAssetController _downloadAsset:withComplete:]_block_invoke";
      v15 = 2114;
      v16 = v7;
      v17 = 2114;
      v18 = v8;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s ::: Error downloading from %{public}@ with error %{public}@", &v13, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = v4;
      v11 = [v9 assetServerUrl];
      v13 = 136315394;
      v14 = "[CSAssetController _downloadAsset:withComplete:]_block_invoke";
      v15 = 2114;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s ::: download completed successfully from %{public}@.", &v13, 0x16u);
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))();
    }
  }
}

void sub_10009351C(id a1, double a2)
{
  v3 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[CSAssetController _downloadAsset:withComplete:]_block_invoke";
    v6 = 2050;
    v7 = a2 * 100.0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ::: download progress: %{public}3.0f%%", &v4, 0x16u);
  }
}

void sub_100093B78(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100093C24;
  block[3] = &unk_100251038;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
}

void sub_100093C24(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
  }

  v3 = [*(a1 + 32) observers];
  v4 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [*(a1 + 32) observers];
    v7 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
    v8 = [v6 objectForKeyedSubscript:v7];

    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v14 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            [v13 CSAssetController:*(a1 + 32) didDownloadNewAssetForType:*(a1 + 48)];
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

void sub_100093F3C(uint64_t a1, uint64_t a2)
{
  v4 = CSLogCategoryAsset;
  if (a2)
  {
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 48);
      v9 = 136315650;
      v10 = "[CSAssetController _downloadAssetCatalogForAssetType:complete:]_block_invoke";
      v11 = 2050;
      v12 = v8;
      v13 = 2050;
      v14 = a2;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Failed to download meta data for assetType %{public}lu with error %{public}lu", &v9, 0x20u);
    }

    v5 = [NSError errorWithDomain:CSErrorDomain code:804 userInfo:0];
  }

  else
  {
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v9 = 136315394;
      v10 = "[CSAssetController _downloadAssetCatalogForAssetType:complete:]_block_invoke";
      v11 = 2050;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Meta data downloaded successfully for assetType %{public}lu", &v9, 0x16u);
    }

    v5 = 0;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, [*(a1 + 32) _isRetryRecommendedWithResult:a2]);
  }
}

void sub_1000941C4(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000942BC;
  block[3] = &unk_100250158;
  v14 = a2;
  v5 = *(a1 + 40);
  v15 = *(a1 + 64);
  v6 = *(a1 + 48);
  v10 = *(a1 + 32);
  v7 = *(a1 + 56);
  *&v8 = v10;
  *(&v8 + 1) = v7;
  *&v9 = v5;
  *(&v9 + 1) = v6;
  v12 = v9;
  v13 = v8;
  dispatch_async(v4, block);
}

void sub_1000942BC(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    v6 = [*(a1 + 32) results];
    v5 = [CSAssetController filteredAssetsForAssets:v6 assetType:*(a1 + 72) language:*(a1 + 40)];

    v7 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [v5 count];
      v10 = *(a1 + 72);
      v12 = 136315650;
      v13 = "[CSAssetController _fetchRemoteAssetOfType:withLanguage:query:completion:]_block_invoke_2";
      v14 = 2050;
      v15 = v9;
      v16 = 2050;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s ::: found %{public}lu assets for assetType %{public}lu", &v12, 0x20u);
    }

    [*(a1 + 48) _updateFromRemoteToLocalAssets:v5 forAssetType:*(a1 + 72) completion:*(a1 + 56)];
    goto LABEL_9;
  }

  v3 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 72);
    v12 = 136315650;
    v13 = "[CSAssetController _fetchRemoteAssetOfType:withLanguage:query:completion:]_block_invoke";
    v14 = 2050;
    v15 = v11;
    v16 = 2050;
    v17 = v2;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Failed to finish query for assetType %{public}lu with error %{public}lu", &v12, 0x20u);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = [NSError errorWithDomain:CSErrorDomain code:802 userInfo:0];
    (*(v4 + 16))(v4, v5);
LABEL_9:
  }
}

void sub_1000946E8(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (v5)
  {
    if (*(a1 + 48) == 1 && a3 != 0)
    {
      v7 = CSLogCategoryAsset;
      if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v14 = "[CSAssetController fetchRemoteMetaOfType:allowRetry:]_block_invoke";
        v15 = 2050;
        v16 = 0x4072C00000000000;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Fetching remote meta data failed, scheduled retry after %{public}f seconds", buf, 0x16u);
      }

      objc_initWeak(buf, *(a1 + 32));
      v8 = dispatch_time(0, 0x45D9648000);
      v9 = *(*(a1 + 32) + 8);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000948A8;
      v11[3] = &unk_100251DF0;
      objc_copyWeak(v12, buf);
      v12[1] = *(a1 + 40);
      dispatch_after(v8, v9, v11);
      objc_destroyWeak(v12);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v10 = [*(a1 + 32) _assetQueryForAssetType:*(a1 + 40)];
    [*(a1 + 32) _runAssetQuery:v10 completion:0];
  }
}

void sub_1000948A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained fetchRemoteMetaOfType:*(a1 + 40) allowRetry:0];
}

void sub_100094B6C(uint64_t a1, void *a2)
{
  if (a2 || ([*(a1 + 32) results], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, !v8))
  {
    v4 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[CSAssetController _runAssetQuery:completion:]_block_invoke";
      v16 = 2050;
      v17 = a2;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Error running asset query: error %{public}lu, or result is empty", &v14, 0x16u);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = [NSError errorWithDomain:CSErrorDomain code:802 userInfo:0];
      (*(v5 + 16))(v5, 0, v6);
LABEL_11:
    }
  }

  else
  {
    v9 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = [v10 results];
      v14 = 136315394;
      v15 = "[CSAssetController _runAssetQuery:completion:]_block_invoke";
      v16 = 2050;
      v17 = [v12 count];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Found %{public}lu assets", &v14, 0x16u);
    }

    v13 = *(a1 + 40);
    if (v13)
    {
      v6 = [*(a1 + 32) results];
      (*(v13 + 16))(v13, v6, 0);
      goto LABEL_11;
    }
  }
}

void sub_10009534C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    v7 = [*(a1 + 32) results];
    v6 = [CSAssetController filteredAssetsForAssets:v7 assetType:*(a1 + 64) language:*(a1 + 40)];

    v8 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v6 count];
      v11 = *(a1 + 64);
      v12 = [*(a1 + 32) queryParams];
      v18 = 136315906;
      v19 = "[CSAssetController _installedAssetOfType:query:withLanguage:completion:]_block_invoke";
      v20 = 2050;
      v21 = v10;
      v22 = 2050;
      v23 = v11;
      v24 = 2114;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s ::: found %{public}lu assets for assetType=%{public}lu, matching query: %{public}@", &v18, 0x2Au);
    }

    v13 = [*(a1 + 48) _findLatestInstalledAsset:v6 assetType:*(a1 + 64)];
    v14 = *(a1 + 56);
    if (v13)
    {
      if (v14)
      {
        (*(v14 + 16))(v14, v13, 0);
      }
    }

    else if (v14)
    {
      v15 = [NSError errorWithDomain:CSErrorDomain code:802 userInfo:0];
      (*(v14 + 16))(v14, 0, v15);
    }

    goto LABEL_14;
  }

  v4 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
  {
    v16 = *(a1 + 64);
    v17 = *(a1 + 32);
    v18 = 136315906;
    v19 = "[CSAssetController _installedAssetOfType:query:withLanguage:completion:]_block_invoke";
    v20 = 2050;
    v21 = v16;
    v22 = 2114;
    v23 = v17;
    v24 = 2050;
    v25 = a2;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Error running asset-query for assetType:%{public}lu, query: %{public}@, error: %{public}lu", &v18, 0x2Au);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = [NSError errorWithDomain:CSErrorDomain code:803 userInfo:0];
    (*(v5 + 16))(v5, 0, v6);
LABEL_14:
  }
}

void sub_100095984(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100095A28;
  v7[3] = &unk_100250090;
  v4 = *(a1 + 56);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = v5;
  v9 = v6;
  [v2 _installedAssetOfType:v4 withLanguage:v3 completion:v7];
}

void sub_100095A28(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = *(a1 + 40);
    v6 = a3;
    v7 = [a2 getCSAssetOfType:v5];
    (*(v3 + 16))(v3, v7, v6);
  }
}

void sub_100095BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100095C04(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100095C1C(uint64_t a1)
{
  v2 = [*(a1 + 32) _installedAssetOfType:*(a1 + 56) withLanguage:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100096064(uint64_t a1)
{
  v2 = [MAAssetQuery alloc];
  v3 = *(*(a1 + 32) + 24);
  v4 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [v2 initWithType:v5];

  if (*(a1 + 56) == 5)
  {
    v7 = ASAttributeCompatibilityVersion;
    v8 = [NSString stringWithFormat:@"%lu", *(a1 + 64)];
    [v6 addKeyValuePair:v7 with:v8];
  }

  else
  {
    v18 = v6;
    [CSAssetController addKeyValuePairForQuery:&v18 assetType:?];
    v9 = v18;

    v6 = v9;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100096204;
  v15[3] = &unk_100250090;
  v12 = *(a1 + 56);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v16 = v13;
  v17 = v14;
  [v10 _installedAssetOfType:v12 query:v6 withLanguage:v11 completion:v15];
  [*(a1 + 32) _fetchRemoteAssetOfType:*(a1 + 56) withLanguage:*(a1 + 40) query:v6 completion:0];
}

void sub_100096204(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = *(a1 + 40);
    v6 = a3;
    v7 = [a2 getCSAssetOfType:v5];
    (*(v3 + 16))(v3, v7, v6);
  }
}

void sub_100096798(uint64_t a1, void *a2)
{
  v6 = a2;
  if (([*(a1 + 32) _notInstalledAssetState:objc_msgSend(v6 assetType:{"state"), *(a1 + 48)}] & 1) == 0)
  {
    v3 = [v6 getCSAssetOfType:*(a1 + 48)];
    if (v3)
    {
      v4 = *(a1 + 40);
      v5 = [v6 getCSAssetOfType:*(a1 + 48)];
      [v4 addObject:v5];
    }
  }
}

int64_t sub_100096840(id a1, MAAsset *a2, MAAsset *a3)
{
  if ([(MAAsset *)a2 isLatestCompareTo:a3])
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void sub_100096EE0(id a1)
{
  v1 = objc_alloc_init(CSAssetController);
  v2 = qword_10029E1C0;
  qword_10029E1C0 = v1;
}

double sub_1000976D0(uint64_t a1, double a2)
{
  LODWORD(a2) = *(a1 + 40);
  [*(*(a1 + 32) + 56) updateEndpointerThresholdWithValue:a2];
  v3 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = 136315394;
    v7 = "[CSRemoraEndpointAnalyzer updateEndpointerThreshold:]_block_invoke";
    v8 = 2050;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Updated endpointer threshold: %{public}f", &v6, 0x16u);
  }

  return result;
}

void sub_1000978A4(uint64_t a1)
{
  v2 = +[CSAssetManager sharedManager];
  v3 = [v2 assetOfType:1 language:*(a1 + 32)];

  v4 = *(a1 + 40);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;

  objc_storeStrong((*(a1 + 40) + 8), v3);
  v6 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(a1 + 40) + 8);
    v8 = 136315394;
    v9 = "[CSRemoraEndpointAnalyzer _updateAssetWithLanguage:]_block_invoke";
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s _currentAsset changed to : %{public}@", &v8, 0x16u);
  }

  [*(a1 + 40) _readParametersFromHEPAsset:*(*(a1 + 40) + 8)];
}

void sub_100097BEC(uint64_t a1)
{
  v2 = [*(a1 + 32) getHybridEndpointerConfigForAsset:*(a1 + 40)];
  v3 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[CSRemoraEndpointAnalyzer _readParametersFromHEPAsset:]_block_invoke";
    v15 = 2114;
    v16 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s csHepConfig: %{public}@", &v13, 0x16u);
  }

  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"ClientLagThresholdMsKey"];
    [v4 floatValue];
    *(*(a1 + 32) + 136) = v5;

    v6 = [v2 objectForKeyedSubscript:@"ClampedSFLatencyMsForClientLag"];
    [v6 floatValue];
    *(*(a1 + 32) + 144) = v7;

    v8 = [v2 objectForKeyedSubscript:@"UseDefaultServerFeaturesOnClientLag"];
    *(*(a1 + 32) + 152) = [v8 BOOLValue];
  }

  else
  {
    *(*(a1 + 32) + 136) = 0xC0F5F90000000000;
    *(*(a1 + 32) + 144) = 0;
    *(*(a1 + 32) + 152) = 1;
  }

  v9 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 136);
    v12 = *(v10 + 144);
    LODWORD(v10) = *(v10 + 152);
    v13 = 136315906;
    v14 = "[CSRemoraEndpointAnalyzer _readParametersFromHEPAsset:]_block_invoke";
    v15 = 2050;
    v16 = v11;
    v17 = 2050;
    v18 = v12;
    v19 = 1026;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s _clientHepConfig: %{public}f, _clampedASRFeatureLatencyMsForClientLag: %{public}f, _useDefaultASRFeaturesOnClientLag: %{public}d", &v13, 0x26u);
  }
}

uint64_t sub_100098298(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000982B0(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 256);
  *(v3 + 256) = v2;

  v5 = *(*(a1 + 32) + 8);
  v6 = (*(*(a1 + 48) + 8) + 40);

  objc_storeStrong(v6, v5);
}

void sub_10009830C(uint64_t a1)
{
  *(*(a1 + 32) + 392) = 0;
  *(*(a1 + 32) + 32) = 0;
  *(*(a1 + 32) + 40) = 0;
  *(*(a1 + 32) + 48) = 0;
  *(*(a1 + 32) + 344) = 0;
  *(*(a1 + 32) + 248) = 0;
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    kdebug_trace();
    v2 = [OSDAnalyzer alloc];
    v3 = [*(*(*(a1 + 40) + 8) + 40) path];
    +[CSConfig inputRecordingSampleRate];
    v5 = [v2 initWithConfigFile:v3 sampleRate:v4 context:0 queue:*(*(a1 + 32) + 408) delegate:?];
    v6 = *(a1 + 32);
    v7 = *(v6 + 400);
    *(v6 + 400) = v5;

    kdebug_trace();
    v8 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(a1 + 32) + 400);
      v12 = 136315394;
      v13 = "[CSRemoraEndpointAnalyzer resetForNewRequestWithSampleRate:recordContext:recordOption:voiceTriggerInfo:]_block_invoke";
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Created OSDAnalyzer: %{public}@", &v12, 0x16u);
    }
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 400);
    *(v10 + 400) = 0;
  }
}

void sub_100098530(void *a1)
{
  *(a1[4] + 176) = 0;
  *(a1[4] + 168) = 0;
  *(a1[4] + 184) = 0;
  *(a1[4] + 49) = 0;
  v2 = [[OSDFeatures alloc] initWithSilenceFramesCountMs:0.0 silenceProbability:0.0 silenceDurationMs:0.0 processedAudioMs:0.0];
  v3 = a1[4];
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  objc_storeStrong((a1[4] + 80), *(a1[4] + 16));
  *(a1[4] + 292) = 0;
  if (*(*(a1[5] + 8) + 40))
  {
    kdebug_trace();
    v5 = [_EAREndpointer alloc];
    v6 = [*(*(a1[5] + 8) + 40) path];
    v32 = 0;
    v7 = [v5 initWithConfiguration:v6 modelVersion:&v32];
    v8 = v32;
    v9 = a1[4];
    v10 = *(v9 + 56);
    *(v9 + 56) = v7;

    kdebug_trace();
    v11 = a1[4];
    v12 = *(v11 + 376);
    *(v11 + 376) = v8;
    v13 = v8;

    v14 = [*(a1[4] + 56) defaultServerEndpointFeatures];
    v15 = *(a1[6] + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  else
  {
    v17 = a1[4];
    v18 = *(v17 + 56);
    *(v17 + 56) = 0;

    v19 = a1[4];
    v20 = *(v19 + 376);
    *(v19 + 376) = 0;
  }

  v21 = +[CSUtils supportHybridEndpointer];
  if (v21)
  {
    if (*(*(a1[5] + 8) + 40))
    {
      LOBYTE(v21) = [*(a1[4] + 56) requestSupportedWithSamplingRate:a1[7]];
    }

    else
    {
      LOBYTE(v21) = 0;
    }
  }

  *(a1[4] + 24) = v21;
  v22 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v23 = a1[4];
    v24 = *(v23 + 56);
    v25 = *(v23 + 24);
    v26 = a1[7];
    v27 = v22;
    v28 = +[CSAssetManager sharedManager];
    v29 = [v28 currentLanguageCode];
    v30 = *(a1[4] + 376);
    *buf = 136316418;
    v34 = "[CSRemoraEndpointAnalyzer resetForNewRequestWithSampleRate:recordContext:recordOption:voiceTriggerInfo:]_block_invoke";
    v35 = 2114;
    v36 = v24;
    v37 = 1026;
    v38 = v25;
    v39 = 2050;
    v40 = v26;
    v41 = 2114;
    v42 = v29;
    v43 = 2114;
    v44 = v30;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%s Created HybridClassifier(%{public}@); canProcessCurrentRequest after reset: %{public}d,for sampleRate: %{public}lu, lang=%{public}@, version=%{public}@", buf, 0x3Au);
  }

  if (*(a1[4] + 24) == 1)
  {
    v31 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v34 = "[CSRemoraEndpointAnalyzer resetForNewRequestWithSampleRate:recordContext:recordOption:voiceTriggerInfo:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%s HEP.logs.hdr: [ServerASR_trailingSilenceDuration,ClientSPG_SilenceFramesCountMs,ServerASR_endOfSentenceLikelihood,ServerASR_wordCount,ServerFeaturesLatency,ClientSPG_SilenceProbabilityHMMFiltered] & [ServerASR_pauseCounts,ServerASR_silencePosterior,ClientSPG_silenceProbailitySPGRaw] @ effectiveClientProcessedAudioMs : [HEPPosteriorOut,HEPDecision]", buf, 0xCu);
    }
  }
}

void sub_1000988A8(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [CSASRFeatures alloc];
    v3 = [*(*(*(a1 + 40) + 8) + 40) wordCount];
    v4 = [*(*(*(a1 + 40) + 8) + 40) trailingSilenceDuration];
    [*(*(*(a1 + 40) + 8) + 40) endOfSentenceLikelihood];
    v6 = v5;
    [*(*(*(a1 + 40) + 8) + 40) silencePosterior];
    v8 = v7;
    [*(*(*(a1 + 40) + 8) + 40) acousticEndpointerScore];
    v10 = [(CSASRFeatures *)v2 initWithWordCount:v3 trailingSilenceDuration:v4 eosLikelihood:&__NSArray0__struct pauseCounts:@"SearchOrMessaging" silencePosterior:0 taskName:v6 processedAudioDurationInMilliseconds:v8 acousticEndpointerScore:v9];
  }

  else
  {
    v10 = +[CSASRFeatures initialASRFeatures];
  }

  v11 = *(a1 + 32);
  v12 = *(v11 + 72);
  *(v11 + 72) = v10;

  v13 = +[NSDate date];
  v14 = *(a1 + 32);
  v15 = *(v14 + 120);
  *(v14 + 120) = v13;

  v16 = +[NSMutableArray array];
  v17 = *(a1 + 32);
  v18 = *(v17 + 88);
  *(v17 + 88) = v16;

  *(*(a1 + 32) + 112) = 0xFFF0000000000000;
  *(*(a1 + 32) + 96) = 0xBF847AE147AE147BLL;
  *(*(a1 + 32) + 104) = 0;
  *(*(a1 + 32) + 128) = 0;
}

void sub_100098A18(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(*(a1 + 32) + 200) = 0;
  *(*(a1 + 32) + 264) = 0;
  *(*(a1 + 32) + 208) = v2;
  *(*(a1 + 32) + 224) = 0;
  *(*(a1 + 32) + 216) = 0;
  *(*(a1 + 32) + 232) = 0;
  v3 = *(a1 + 32);
  v4 = *(v3 + 272);
  *(v3 + 272) = 0;

  *(*(a1 + 32) + 280) = 0;
  *(*(a1 + 32) + 288) = 0;
  *(*(a1 + 32) + 291) = 0;
  *(*(a1 + 32) + 296) = 0;
}

void sub_100098B3C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 400);
  *(v1 + 400) = 0;
}

void sub_100099188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 208), 8);
  _Unwind_Resume(a1);
}

double sub_1000991EC(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 8));
  *(*(a1[6] + 8) + 24) = *(a1[4] + 280);
  *(*(a1[7] + 8) + 24) = *(a1[4] + 232);
  result = *(a1[4] + 216);
  *(*(a1[8] + 8) + 24) = result;
  return result;
}

void sub_10009979C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 224), 8);
  _Block_object_dispose((v38 - 192), 8);
  _Block_object_dispose((v38 - 128), 8);
  _Unwind_Resume(a1);
}

double sub_1000997E4(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 200);
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 264);
  result = *(*(a1 + 32) + 232) + *(a1 + 64);
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

id sub_10009982C(uint64_t a1)
{
  result = [*(a1 + 32) shouldProvideTwoShotFeedbackWithRecordContext];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void sub_100099868(uint64_t a1)
{
  v2 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 40) + 8) + 24);
    v4 = 136315394;
    v5 = "[CSRemoraEndpointAnalyzer osdAnalyzer:didUpdateOSDFeatures:]_block_invoke_3";
    v6 = 2050;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Detected speech start at %{public}f of effectiveClientProcessedAudioMs", &v4, 0x16u);
  }

  *(*(a1 + 32) + 291) = 1;
  *(*(a1 + 32) + 296) = 0;
}

void sub_100099940(uint64_t a1)
{
  *(*(a1 + 32) + 296) = *(a1 + 40);
  v1 = *(a1 + 32);
  if ((*(v1 + 248) & 1) == 0)
  {
    v2 = *(v1 + 296);
    v3 = *(v1 + 240);
    if (v2 > v3)
    {
      v5 = CSLogCategoryEP;
      if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315650;
        v8 = "[CSRemoraEndpointAnalyzer osdAnalyzer:didUpdateOSDFeatures:]_block_invoke";
        v9 = 2050;
        v10 = v2;
        v11 = 2048;
        v12 = v3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Detected sufficient silence to fire two shot with %{public}fms silence, %f threshold", &v7, 0x20u);
        v1 = *(a1 + 32);
      }

      *(v1 + 248) = 1;
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 352));
      [WeakRetained endpointer:*(*(a1 + 32) + 296) / 1000.0 detectedTwoShotAtTime:?];
    }
  }
}

void sub_100099A80(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 290) == 1)
  {
    v2 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[CSRemoraEndpointAnalyzer osdAnalyzer:didUpdateOSDFeatures:]_block_invoke";
      *&buf[12] = 2080;
      *&buf[14] = "Ignoring silenceScoreEstimateAvailable";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Recording stopped: %s", buf, 0x16u);
    }
  }

  else
  {
    v4 = qword_10029E1E8;
    if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * qword_10029E1E8, 1) <= 0x888888888888888uLL)
    {
      kdebug_trace();
      v4 = qword_10029E1E8;
      v1 = *(a1 + 32);
    }

    qword_10029E1E8 = v4 + 1;
    v5 = *(v1 + 192);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009A970;
    block[3] = &unk_100253BD0;
    block[5] = *(a1 + 48);
    block[4] = v1;
    dispatch_async_and_wait(v5, block);
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v6 = CSLogCategoryEP;
      if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 72);
        *buf = 136315394;
        *&buf[4] = "[CSRemoraEndpointAnalyzer osdAnalyzer:didUpdateOSDFeatures:]_block_invoke_2";
        *&buf[12] = 2050;
        *&buf[14] = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Already communicated end-pt: Not Invoking hybridClassifier for silposnf=%{public}f", buf, 0x16u);
      }

      kdebug_trace();
    }

    else
    {
      objc_storeStrong((*(a1 + 32) + 80), *(a1 + 40));
      v128 = 0;
      v129 = &v128;
      v130 = 0x3032000000;
      v131 = sub_100098298;
      v132 = sub_1000982A8;
      v133 = 0;
      v126[0] = 0;
      v126[1] = v126;
      v126[2] = 0x3032000000;
      v126[3] = sub_100098298;
      v126[4] = sub_1000982A8;
      v127 = @"SearchOrMessaging";
      v8 = *(a1 + 32);
      v9 = *(v8 + 64);
      v121[0] = _NSConcreteStackBlock;
      v121[1] = 3221225472;
      v121[2] = sub_10009A984;
      v121[3] = &unk_1002513B0;
      v123 = *(a1 + 56);
      v121[4] = v8;
      v124 = &v128;
      v122 = *(a1 + 40);
      v125 = v126;
      dispatch_async_and_wait(v9, v121);
      v10 = v129[5];
      if (v10)
      {
        v120 = 0;
        v11 = *(*(a1 + 32) + 56);
        v12 = *(*(*(a1 + 56) + 8) + 24);
        v119 = 0;
        v13 = [v11 didEndpointWithFeatures:v10 audioTimestamp:&v119 featuresToLog:&v120 + 4 endpointPosterior:&v120 extraDelayMs:v12];
        v80 = v119;
        v14 = CSLogCategoryEP;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v129[5] trailingSilenceDuration];
          [v129[5] clientSilenceFramesCountMs];
          v17 = v16;
          [v129[5] endOfSentenceLikelihood];
          v19 = v18;
          v20 = [v129[5] wordCount];
          [v129[5] serverFeaturesLatency];
          v22 = v21;
          [v129[5] clientSilenceProbability];
          v24 = v23;
          v25 = [v129[5] pauseCounts];
          v26 = [v25 componentsJoinedByString:{@", "}];
          [v129[5] silencePosterior];
          v27 = *(*(*(a1 + 56) + 8) + 24);
          *buf = 136317954;
          *&buf[4] = "[CSRemoraEndpointAnalyzer osdAnalyzer:didUpdateOSDFeatures:]_block_invoke";
          *&buf[12] = 2050;
          *&buf[14] = v15;
          *&buf[22] = 2050;
          v148 = v17;
          *v149 = 2050;
          *&v149[2] = v19;
          *&v149[10] = 2050;
          *&v149[12] = v20;
          v150 = 2050;
          v151 = v22;
          v152 = 2050;
          v153 = v24;
          v154 = 2114;
          v155 = v26;
          v156 = 2050;
          v157 = v28;
          v158 = 2050;
          v159 = v27;
          v160 = 2050;
          v161 = *(&v120 + 1);
          v162 = 1026;
          v163 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s HEP.feats: [%{public}ld,%{public}f,%{public}f,%{public}ld,%{public}f,%{public}f] & [(%{public}@),%{public}f] @ %{public}lu [%{public}f, %{public}d]", buf, 0x76u);
        }

        v29 = &qword_1001AA000;
        if (v13 && (*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
        {
          *(*(a1 + 32) + 104) = 1;
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v148 = sub_100098298;
          *v149 = sub_1000982A8;
          *&v149[8] = 0;
          v115 = 0;
          v116 = &v115;
          v117 = 0x2020000000;
          v118 = 0;
          v109 = 0;
          v110 = &v109;
          v111 = 0x3032000000;
          v112 = sub_100098298;
          v113 = sub_1000982A8;
          v114 = 0;
          v105 = 0;
          v106 = &v105;
          v107 = 0x2020000000;
          v108 = 0;
          v101 = 0;
          v102 = &v101;
          v103 = 0x2020000000;
          v104 = 0;
          v30 = *(a1 + 32);
          v31 = *(v30 + 192);
          v99[0] = _NSConcreteStackBlock;
          v99[1] = 3221225472;
          v99[2] = sub_10009AF64;
          v99[3] = &unk_100250260;
          v100 = *(a1 + 76);
          v99[4] = v30;
          v99[5] = buf;
          v99[6] = &v115;
          v99[7] = &v109;
          v99[8] = &v105;
          v99[9] = &v101;
          dispatch_async_and_wait(v31, v99);
          v95 = 0;
          v96 = &v95;
          v97 = 0x2020000000;
          v98 = 0;
          v91 = 0;
          v92 = &v91;
          v93 = 0x2020000000;
          v94 = 0;
          v87 = 0;
          v88 = &v87;
          v89 = 0x2020000000;
          v90 = 0;
          v83 = 0;
          v84 = &v83;
          v85 = 0x2020000000;
          v86 = 0;
          v32 = *(a1 + 32);
          v33 = *(v32 + 384);
          v82[0] = _NSConcreteStackBlock;
          v82[1] = 3221225472;
          v82[2] = sub_10009B010;
          v82[3] = &unk_100251338;
          v82[4] = v32;
          v82[5] = &v95;
          v82[6] = &v91;
          v82[7] = &v87;
          v82[8] = &v83;
          dispatch_async_and_wait(v33, v82);
          v34 = *(*(*(a1 + 56) + 8) + 24);
          v35 = v102[3];
          +[CSConfig inputRecordingSampleRate];
          v37 = v36;
          v38 = v88[3];
          v39 = v92[3];
          +[CSConfig inputRecordingSampleRate];
          v79 = [CSFTimeUtils hostTimeFromSampleCount:((v34 + v35) / 1000.0 * v37) anchorHostTime:v38 anchorSampleCount:v39 sampleRate:?];
          v40 = CSLogCategoryEP;
          if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
          {
            v42 = *(v96 + 24);
            *v143 = 136315906;
            *&v143[4] = "[CSRemoraEndpointAnalyzer osdAnalyzer:didUpdateOSDFeatures:]_block_invoke_3";
            *&v143[12] = 2050;
            *&v143[14] = *(&v120 + 1);
            *&v143[22] = 2050;
            v144 = v79;
            LOWORD(v145) = 1026;
            *(&v145 + 2) = v42;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%s HEP.posterior=%{public}f, result=1, endpointedBuffer.hostTime=%{public}llu, isAnchorTimeBuffered=%{public}d", v143, 0x26u);
          }

          LODWORD(v41) = HIDWORD(v120);
          if (*(&v120 + 1) == 0.0 && [v80 count] == 2)
          {
            v43 = CSLogCategoryEP;
            if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
            {
              *v143 = 136315394;
              *&v143[4] = "[CSRemoraEndpointAnalyzer osdAnalyzer:didUpdateOSDFeatures:]_block_invoke";
              *&v143[12] = 2114;
              *&v143[14] = v80;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%s request timeout with features %{public}@", v143, 0x16u);
            }

            *(*(a1 + 32) + 49) = 1;
          }

          *(*(a1 + 32) + 168) = *(*(*(a1 + 56) + 8) + 24);
          objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
          v78 = +[NSDate date];
          [v78 timeIntervalSinceDate:*(*&buf[8] + 40)];
          v45 = v44;
          v46 = *(*(*(a1 + 56) + 8) + 24);
          v47 = v84[3];
          *v143 = 0;
          *&v143[8] = v143;
          *&v143[16] = 0x3032000000;
          v144 = sub_100098298;
          v145 = sub_1000982A8;
          v146 = 0;
          v48 = *(a1 + 32);
          v49 = *(v48 + 64);
          v81[0] = _NSConcreteStackBlock;
          v81[1] = 3221225472;
          v81[2] = sub_10009B088;
          v81[3] = &unk_100253BD0;
          v81[4] = v48;
          v81[5] = v143;
          dispatch_async_and_wait(v49, v81);
          v141[0] = @"ExtraDelayMs";
          v50 = [NSNumber numberWithInt:v120];
          v51 = v45 / (v46 / 1000.0) * (v47 / 0x3E8) * 1000.0;
          v142[0] = v50;
          v141[1] = @"EndpointerDecisionLagMs";
          v52 = [NSNumber numberWithDouble:v51];
          v142[1] = v52;
          v53 = [NSDictionary dictionaryWithObjects:v142 forKeys:v141 count:2];

          v54 = CSLogCategoryEP;
          if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
          {
            v55 = *(*&v143[8] + 40);
            *v135 = 136315650;
            v136 = "[CSRemoraEndpointAnalyzer osdAnalyzer:didUpdateOSDFeatures:]_block_invoke_2";
            v137 = 2114;
            v138 = v55;
            v139 = 2114;
            v140 = v53;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%s ASRFeaturesLatencyDistribution: %{public}@ additionalMetrics: %{public}@", v135, 0x20u);
          }

          [*(a1 + 40) silenceFramesCountMs];
          v57 = v56;
          v58 = [CSEndpointerMetrics alloc];
          v59 = *(*(*(a1 + 56) + 8) + 24);
          v60 = *(*&v143[8] + 40);
          v61 = *(a1 + 40);
          v62 = *(*(a1 + 32) + 49);
          v63 = [v110[5] configVersion];
          v64 = v106[3];
          v65 = v102[3];
          v66 = v116[3];
          v67 = *(v96 + 24);
          v68 = mach_absolute_time();
          LODWORD(v69) = HIDWORD(v120);
          LOBYTE(v77) = v67;
          LOBYTE(v76) = v62;
          v70 = [(CSEndpointerMetrics *)v58 initWithTotalAudioRecorded:v79 endpointBufferHostTime:v80 featuresAtEndpoint:0 endpointerType:v60 asrFeatureLatencyDistribution:v53 additionalMetrics:0 trailingSilenceDurationAtEndpoint:v59 requestId:v57 / 1000.0 osdFeatures:v64 asrFeatures:v65 isRequestTimeOut:0.0 assetConfigVersion:v69 blkHepAudioOrigin:v61 vtExtraAudioAtStartInMs:0 firstAudioSampleSensorTimestamp:v76 isAnchorTimeBuffered:v63 endpointHostTime:v66 audioDeliveryHostTimeDelta:v77 endpointerThreshold:v68 endpointerScore:0];

          if (*(a1 + 76))
          {
            v71 = CSLogCategoryEP;
            if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEBUG))
            {
              v72 = *(*(a1 + 32) + 168) / 1000.0;
              *v135 = 136315394;
              v136 = "[CSRemoraEndpointAnalyzer osdAnalyzer:didUpdateOSDFeatures:]_block_invoke";
              v137 = 2050;
              v138 = v72;
              _os_log_debug_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEBUG, "%s MMEP:: HEP detected at %{public}f but will continue running for MMEP.", v135, 0x16u);
            }
          }

          else
          {
            WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 352));
            [WeakRetained endpointer:*(a1 + 32) didDetectHardEndpointAtTime:v70 withMetrics:0 eventType:*(*(*(a1 + 56) + 8) + 24) / 1000.0];

            [*(a1 + 32) _emitEndpointDetectedEventWithEndpointTimeMs:v79 endpointBufferHostTime:v129[5] endpointerFeatures:v120 endpointerDecisionLagInNs:*(*&v143[8] + 40) extraDelayMs:*(*(*(a1 + 56) + 8) + 24) endpointScore:v51 asrFeaturesLatencies:*(&v120 + 1)];
          }

          _Block_object_dispose(v143, 8);
          _Block_object_dispose(&v83, 8);
          _Block_object_dispose(&v87, 8);
          _Block_object_dispose(&v91, 8);
          _Block_object_dispose(&v95, 8);
          _Block_object_dispose(&v101, 8);
          _Block_object_dispose(&v105, 8);
          _Block_object_dispose(&v109, 8);

          _Block_object_dispose(&v115, 8);
          _Block_object_dispose(buf, 8);

          v29 = &qword_1001AA000;
        }

        *(*(a1 + 32) + 184) = HIDWORD(v120);
        *(*(a1 + 32) + 176) = *(*(*(a1 + 56) + 8) + 24) / *(v29 + 5);
        v75 = qword_10029E1F0;
        if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * qword_10029E1F0, 1) <= 0x888888888888888uLL)
        {
          kdebug_trace();
          v75 = qword_10029E1F0;
        }

        qword_10029E1F0 = v75 + 1;
      }

      else
      {
        v73 = CSLogCategoryEP;
        if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "[CSRemoraEndpointAnalyzer osdAnalyzer:didUpdateOSDFeatures:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "%s ClientLag: Not Invoking HybridClassifier as serverProcessedAudioMs > effectiveClientProcessedAudioMs", buf, 0xCu);
        }

        kdebug_trace();
      }

      _Block_object_dispose(v126, 8);
      _Block_object_dispose(&v128, 8);
    }
  }
}

void sub_10009A8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  _Block_object_dispose(&STACK[0x360], 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&a70, 8);
  _Block_object_dispose(&STACK[0x218], 8);
  _Block_object_dispose(&STACK[0x390], 8);
  _Block_object_dispose(&STACK[0x290], 8);
  _Block_object_dispose(&STACK[0x2C0], 8);
  _Unwind_Resume(a1);
}

void sub_10009A984(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 24);
  if (v2 >= [*(*(a1 + 32) + 72) processedAudioDurationInMilliseconds])
  {
    [*(a1 + 40) processedAudioMs];
    v14 = *(a1 + 32);
    if (*(v14 + 128) == 1)
    {
      v15 = *(*(*(a1 + 48) + 8) + 24);
      v16 = v15 - [*(v14 + 72) processedAudioDurationInMilliseconds];
    }

    else
    {
      v16 = v13;
    }

    v43 = [_EAREndpointFeatures alloc];
    v44 = [*(*(a1 + 32) + 72) wordCount];
    v45 = [*(*(a1 + 32) + 72) trailingSilenceDuration];
    [*(*(a1 + 32) + 72) eosLikelihood];
    v47 = v46;
    [*(*(a1 + 32) + 72) acousticEndpointerScore];
    v49 = v48;
    v50 = [*(*(a1 + 32) + 72) pauseCounts];
    [*(*(a1 + 32) + 72) silencePosterior];
    v52 = v51;
    [*(a1 + 40) silenceFramesCountMs];
    v54 = v53;
    [*(a1 + 40) silenceProbability];
    v56 = v55;
    [*(a1 + 40) silenceDurationMs];
    *&v58 = v57;
    *&v59 = v16;
    v60 = [v43 initWithWordCount:v44 trailingSilenceDuration:v45 endOfSentenceLikelihood:v50 acousticEndpointerScore:0 pauseCounts:v47 silencePosterior:v49 clientSilenceFramesCountMs:v52 clientSilenceProbability:v54 silencePosteriorNF:v56 serverFeaturesLatency:v58 eagerResultEndTime:v59];
    v61 = *(*(a1 + 56) + 8);
    v62 = *(v61 + 40);
    *(v61 + 40) = v60;

    v63 = [*(*(a1 + 32) + 72) taskName];
    v64 = *(*(a1 + 64) + 8);
    v65 = *(v64 + 40);
    *(v64 + 40) = v63;
  }

  else
  {
    v3 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 32) + 72);
      v5 = v3;
      v6 = COERCE_DOUBLE([v4 processedAudioDurationInMilliseconds]);
      v7 = *(*(*(a1 + 48) + 8) + 24);
      v87 = 136315650;
      v88 = "[CSRemoraEndpointAnalyzer osdAnalyzer:didUpdateOSDFeatures:]_block_invoke";
      v89 = 2050;
      v90 = v6;
      v91 = 2050;
      v92 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ClientLag: asrProcessedAudioMs(%{public}ld) > effectiveClientProcessedAudioMs(%{public}f)", &v87, 0x20u);
    }

    v8 = *(*(*(a1 + 48) + 8) + 24);
    v9 = v8 - [*(*(a1 + 32) + 72) processedAudioDurationInMilliseconds];
    v10 = *(a1 + 32);
    v11 = *(v10 + 136);
    if (v9 <= v11)
    {
      v17 = *(v10 + 152);
      v18 = CSLogCategoryEP;
      v19 = os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT);
      if (v17 == 1)
      {
        if (v19)
        {
          v20 = *(*(*(a1 + 48) + 8) + 24);
          v87 = 136315394;
          v88 = "[CSRemoraEndpointAnalyzer osdAnalyzer:didUpdateOSDFeatures:]_block_invoke";
          v89 = 2050;
          v90 = v20;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s ClientLag: Using DefaultASRFeatures with disconnected-state asrFeatureLatency: %{public}f", &v87, 0x16u);
          v10 = *(a1 + 32);
        }

        v21 = [*(v10 + 56) defaultServerEndpointFeatures];
        v22 = [_EAREndpointFeatures alloc];
        v23 = [v21 wordCount];
        v24 = [v21 trailingSilenceDuration];
        [v21 endOfSentenceLikelihood];
        v26 = v25;
        [v21 acousticEndpointerScore];
        v28 = v27;
        [v21 silencePosterior];
        v30 = v29;
        [*(a1 + 40) silenceFramesCountMs];
        v32 = v31;
        [*(a1 + 40) silenceProbability];
        v34 = v33;
        [*(a1 + 40) silenceDurationMs];
        v36 = v35;
        [*(a1 + 40) processedAudioMs];
        *&v38 = v37;
        *&v39 = v36;
        v40 = [v22 initWithWordCount:v23 trailingSilenceDuration:v24 endOfSentenceLikelihood:&__NSArray0__struct acousticEndpointerScore:0 pauseCounts:v26 silencePosterior:v28 clientSilenceFramesCountMs:v30 clientSilenceProbability:v32 silencePosteriorNF:v34 serverFeaturesLatency:v39 eagerResultEndTime:v38];
        v41 = *(*(a1 + 56) + 8);
        v42 = *(v41 + 40);
        *(v41 + 40) = v40;
      }

      else
      {
        if (v19)
        {
          v66 = *(v10 + 144);
          v87 = 136315394;
          v88 = "[CSRemoraEndpointAnalyzer osdAnalyzer:didUpdateOSDFeatures:]_block_invoke";
          v89 = 2050;
          v90 = v66;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s ClientLag: Using ASRFeatures with ClampedASRFeatureLatency: %{public}f", &v87, 0x16u);
        }

        v67 = [_EAREndpointFeatures alloc];
        v68 = [*(*(a1 + 32) + 72) wordCount];
        v69 = [*(*(a1 + 32) + 72) trailingSilenceDuration];
        [*(*(a1 + 32) + 72) eosLikelihood];
        v71 = v70;
        [*(*(a1 + 32) + 72) acousticEndpointerScore];
        v73 = v72;
        v74 = [*(*(a1 + 32) + 72) pauseCounts];
        [*(*(a1 + 32) + 72) silencePosterior];
        v76 = v75;
        [*(a1 + 40) silenceFramesCountMs];
        v78 = v77;
        [*(a1 + 40) silenceProbability];
        v80 = v79;
        [*(a1 + 40) silenceDurationMs];
        *&v82 = v81;
        *&v83 = *(*(a1 + 32) + 144);
        v84 = [v67 initWithWordCount:v68 trailingSilenceDuration:v69 endOfSentenceLikelihood:v74 acousticEndpointerScore:0 pauseCounts:v71 silencePosterior:v73 clientSilenceFramesCountMs:v76 clientSilenceProbability:v78 silencePosteriorNF:v80 serverFeaturesLatency:v82 eagerResultEndTime:v83];
        v85 = *(*(a1 + 56) + 8);
        v86 = *(v85 + 40);
        *(v85 + 40) = v84;
      }
    }

    else
    {
      v12 = CSLogCategoryEP;
      if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
      {
        v87 = 136315650;
        v88 = "[CSRemoraEndpointAnalyzer osdAnalyzer:didUpdateOSDFeatures:]_block_invoke";
        v89 = 2050;
        v90 = v9;
        v91 = 2050;
        v92 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s ClientLag: Not invoking HybridClassifier: asrFeatureLatency > clientLagThreshold: %{public}f > %{public}f", &v87, 0x20u);
      }
    }
  }
}

double sub_10009AF64(uint64_t a1)
{
  if ((*(a1 + 80) & 1) == 0)
  {
    *(*(a1 + 32) + 200) = 1;
  }

  *(*(a1 + 32) + 264) = 1;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 272));
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 280);
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(*(a1 + 32) + 8));
  *(*(*(a1 + 64) + 8) + 24) = *(*(a1 + 32) + 232);
  result = *(*(a1 + 32) + 216);
  *(*(*(a1 + 72) + 8) + 24) = result;
  return result;
}

id sub_10009B010(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(a1[4] + 48);
  *(*(a1[6] + 8) + 24) = *(a1[4] + 32);
  *(*(a1[7] + 8) + 24) = *(a1[4] + 40);
  result = [*(a1[4] + 400) getFrameDurationMs];
  *(*(a1[8] + 8) + 24) = result;
  return result;
}

void sub_10009B088(uint64_t a1)
{
  v2 = [CSUtils distributionDictionary:*(*(a1 + 32) + 88)];
  v3 = [v2 mutableCopy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [NSNumber numberWithDouble:*(*(a1 + 32) + 112)];
  [*(*(*(a1 + 40) + 8) + 40) setObject:v6 forKeyedSubscript:@"Warmup"];
}

void sub_10009B36C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 288) & 1) == 0)
  {
    *(v1 + 288) = 1;
    v3 = +[NSDate date];
    v4 = *(a1 + 32);
    v5 = *(v4 + 272);
    *(v4 + 272) = v3;

    *(*(a1 + 32) + 280) = [*(a1 + 40) hostTime];
    v6 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = v6;
      v9 = 136315394;
      v10 = "[CSRemoraEndpointAnalyzer processAudioSamplesAsynchronously:]_block_invoke";
      v11 = 2050;
      v12 = [v7 hostTime];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s first audio buffer host time: %{public}llu", &v9, 0x16u);
    }
  }
}

void sub_10009B498(uint64_t a1)
{
  if (*(*(a1 + 32) + 290) == 1)
  {
    v1 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v23 = "[CSRemoraEndpointAnalyzer processAudioSamplesAsynchronously:]_block_invoke_2";
      v24 = 2080;
      v25 = "Ignoring processAudioSamplesAsynchronously";
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s Recording stopped: %s", buf, 0x16u);
    }
  }

  else
  {
    v3 = qword_10029E1D0;
    if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * qword_10029E1D0, 1) <= 0x888888888888888uLL)
    {
      kdebug_trace();
      v3 = qword_10029E1D0;
    }

    qword_10029E1D0 = v3 + 1;
    v4 = [*(a1 + 40) numSamples];
    *(*(a1 + 32) + 32) = *(*(a1 + 32) + 392);
    *(*(a1 + 32) + 40) = [*(a1 + 40) hostTime];
    *(*(a1 + 32) + 48) = [*(a1 + 40) wasBuffered];
    if (v4 >= 1)
    {
      v6 = 0;
      v7 = &OBJC_IVAR___CSVTSecondPassLatencyMetrics__secondPassAudioStreamStartTime;
      *&v5 = 136315394;
      v21 = v5;
      do
      {
        if (v4 >= 0x280)
        {
          v8 = 640;
        }

        else
        {
          v8 = v4;
        }

        v9 = *(a1 + 32);
        v10 = *(v9 + 392);
        if (v10 >= *(*(*(a1 + 48) + 8) + 24))
        {
          v11 = v7[154];
          if ((*(v9 + v11) & 1) == 0)
          {
            *(v9 + v11) = 1;
            v12 = CSLogCategoryEP;
            if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
            {
              v13 = *(*(a1 + 32) + 392);
              *buf = v21;
              v23 = "[CSRemoraEndpointAnalyzer processAudioSamplesAsynchronously:]_block_invoke";
              v24 = 2050;
              v25 = v13;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s addAudio first sample offset: %{public}lu", buf, 0x16u);
            }

            v9 = *(a1 + 32);
          }

          v14 = [*(a1 + 40) subChunkFrom:v6 numSamples:v8 forChannel:{*(v9 + 360), v21}];
          v15 = [v14 data];
          if (+[CSConfig inputRecordingIsFloat])
          {
            [v14 data];
            v17 = v16 = v7;
            v18 = [CSFLPCMTypeConverter convertToShortLPCMBufFromFloatLPCMBuf:v17];

            v7 = v16;
            v15 = v18;
          }

          [*(*(a1 + 32) + 400) addAudio:v15 numSamples:{objc_msgSend(v14, "numSamples")}];

          v9 = *(a1 + 32);
          v10 = *(v9 + 392);
        }

        v6 += v8;
        *(v9 + 392) = v10 + v8;
        v19 = v4 <= v8;
        v4 -= v8;
      }

      while (!v19);
    }

    v20 = qword_10029E1D8;
    if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * qword_10029E1D8, 1) <= 0x888888888888888uLL)
    {
      kdebug_trace();
      v20 = qword_10029E1D8;
    }

    qword_10029E1D8 = v20 + 1;
  }
}

void sub_10009BF64(void *a1)
{
  v2 = *(a1[4] + 8);
  if (v2 && ([v2 objectForKey:a1[5]], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v9 = [*(a1[4] + 8) objectForKey:a1[5]];
    v4 = +[CSAudioInjectionProvider defaultInjectionProvider];
    [v4 selectBuiltInDevice:v9 withCompletion:a1[6]];
  }

  else
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[5];
      *buf = 136315394;
      v11 = "[CSAudioInjectionXPC selectBuiltInInjectionDeivceWithUUID:completion:]_block_invoke";
      v12 = 2112;
      v13 = v8;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Can't find device with uuid %@", buf, 0x16u);
    }

    v6 = a1[6];
    if (v6)
    {
      v7 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
      (*(v6 + 16))(v6, 0, v7);
    }
  }
}

void sub_10009C4C8(void *a1)
{
  v2 = *(a1[4] + 8);
  if (v2 && ([v2 objectForKey:a1[5]], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v9 = [*(a1[4] + 8) objectForKey:a1[5]];
    v4 = +[CSAudioInjectionProvider defaultInjectionProvider];
    [v4 disconnectDevice:v9];

    v5 = a1[6];
    if (v5)
    {
      (*(v5 + 16))(v5, 1, 0);
    }
  }

  else
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[5];
      *buf = 136315394;
      v11 = "[CSAudioInjectionXPC disconnectDeviceWithUUID:completion:]_block_invoke";
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s deviceUUID %@ not existing in deviceDictionary, already disconnected", buf, 0x16u);
    }

    v8 = a1[6];
    if (v8)
    {
      (*(v8 + 16))(v8, 1, 0);
    }
  }
}

void sub_10009C854(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKey:a1[5]];
  v3 = +[CSAudioInjectionProvider defaultInjectionProvider];
  v7 = 0;
  v4 = [v3 connectDevice:v2 withOutError:&v7];
  v5 = v7;

  v6 = a1[6];
  if (v6)
  {
    (*(v6 + 16))(v6, v4, v5);
  }
}

void sub_10009CBD4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    v3 = [v2 objectForKey:*(a1 + 40)];

    if (v3)
    {
      v4 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
      v17[0] = 0;
      v17[1] = v17;
      v17[2] = 0x2020000000;
      v17[3] = 0;
      v5 = *(a1 + 48);
      v6 = *(a1 + 72);
      v7 = *(a1 + 32);
      if (v7)
      {
        [v7 _outASBDWithNumChannels:*(a1 + 76)];
      }

      else
      {
        v19 = 0;
        memset(buf, 0, sizeof(buf));
      }

      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10009CE78;
      v16[3] = &unk_1002502D8;
      v16[4] = v17;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10009CE88;
      v13[3] = &unk_100250300;
      v15 = v17;
      v10 = *(a1 + 56);
      v14 = *(a1 + 64);
      LODWORD(v11) = v6;
      [v4 speakAudio:v5 withScaleFactor:buf outASBD:v16 playbackStarted:v10 userIntentOptions:v13 completion:v11];

      _Block_object_dispose(v17, 8);
      goto LABEL_11;
    }
  }

  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 40);
    buf[0] = 136315394;
    *&buf[1] = "[CSAudioInjectionXPC injectAudio:toDeviceWithUUID:withScaleFactor:withNumChannels:withUserIntentOptions:completion:]_block_invoke";
    LOWORD(buf[3]) = 2112;
    *(&buf[3] + 2) = v12;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Can't find device with uuid %@", buf, 0x16u);
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    v4 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
    (*(v9 + 16))(v9, 0, v4, 0, 0);
LABEL_11:
  }
}

void sub_10009CE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10009CE88(uint64_t a1, uint64_t a2)
{
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(*(a1 + 40) + 8) + 24);
    v7 = 136315650;
    v8 = "[CSAudioInjectionXPC injectAudio:toDeviceWithUUID:withScaleFactor:withNumChannels:withUserIntentOptions:completion:]_block_invoke_2";
    v9 = 2048;
    v10 = v5;
    v11 = 2048;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Device speak audio with startTime = %llu, stopTime = %llu", &v7, 0x20u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0, *(*(*(a1 + 40) + 8) + 24), a2);
  }

  return result;
}

void sub_10009D260(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    v3 = [v2 objectForKey:*(a1 + 40)];

    if (v3)
    {
      v4 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
      v17[0] = 0;
      v17[1] = v17;
      v17[2] = 0x2020000000;
      v17[3] = 0;
      v5 = *(a1 + 48);
      v6 = *(a1 + 72);
      v7 = *(a1 + 32);
      if (v7)
      {
        [v7 _outASBDWithNumChannels:*(a1 + 76)];
      }

      else
      {
        v19 = 0;
        memset(buf, 0, sizeof(buf));
      }

      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10009D500;
      v14[3] = &unk_100250300;
      v16 = v17;
      v15 = *(a1 + 64);
      v10 = *(a1 + 56);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10009D53C;
      v13[3] = &unk_1002502D8;
      v13[4] = v17;
      LODWORD(v11) = v6;
      [v4 speakAudio:v5 withScaleFactor:buf outASBD:v14 playbackStarted:v10 userIntentOptions:v13 completion:v11];

      _Block_object_dispose(v17, 8);
      goto LABEL_11;
    }
  }

  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 40);
    buf[0] = 136315394;
    *&buf[1] = "[CSAudioInjectionXPC injectAudio:toDeviceWithUUID:withScaleFactor:withNumChannels:withUserIntentOptions:started:]_block_invoke";
    LOWORD(buf[3]) = 2112;
    *(&buf[3] + 2) = v12;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Can't find device with uuid %@", buf, 0x16u);
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    v4 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
    (*(v9 + 16))(v9, 0, v4, 0);
LABEL_11:
  }
}

void sub_10009D4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10009D500(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0, *(*(*(a1 + 40) + 8) + 24));
  }

  return result;
}

void sub_10009D53C(uint64_t a1, uint64_t a2)
{
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(*(a1 + 32) + 8) + 24);
    v6 = 136315650;
    v7 = "[CSAudioInjectionXPC injectAudio:toDeviceWithUUID:withScaleFactor:withNumChannels:withUserIntentOptions:started:]_block_invoke_2";
    v8 = 2048;
    v9 = v5;
    v10 = 2048;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Device speak audio with startTime = %llu, stopTime = %llu", &v6, 0x20u);
  }
}

void sub_10009D8C8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    v3 = [v2 objectForKey:*(a1 + 40)];

    if (v3)
    {
      v4 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v16 = 0;
      v5 = *(a1 + 48);
      v6 = *(a1 + 64);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10009DB28;
      v14[3] = &unk_1002502D8;
      v14[4] = buf;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10009DB38;
      v11[3] = &unk_100250300;
      v13 = buf;
      v12 = *(a1 + 56);
      LODWORD(v7) = v6;
      [v4 speakAudio:v5 withScaleFactor:v14 playbackStarted:v11 completion:v7];

      _Block_object_dispose(buf, 8);
LABEL_8:

      return;
    }
  }

  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 40);
    *buf = 136315394;
    *&buf[4] = "[CSAudioInjectionXPC injectAudio:toDeviceWithUUID:withScaleFactor:completion:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Can't find device with uuid %@", buf, 0x16u);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    v4 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
    (*(v9 + 16))(v9, 0, v4, 0, 0);
    goto LABEL_8;
  }
}

void sub_10009DB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10009DB38(uint64_t a1, uint64_t a2)
{
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(*(a1 + 40) + 8) + 24);
    v7 = 136315650;
    v8 = "[CSAudioInjectionXPC injectAudio:toDeviceWithUUID:withScaleFactor:completion:]_block_invoke_2";
    v9 = 2048;
    v10 = v5;
    v11 = 2048;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Device speak audio with startTime = %llu, stopTime = %llu", &v7, 0x20u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0, *(*(*(a1 + 40) + 8) + 24), a2);
  }

  return result;
}

void sub_10009DE40(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v3 = [v1 deviceUID];
  [v2 setObject:v1 forKey:v3];
}

void sub_10009E094(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v3 = [v1 deviceUID];
  [v2 setObject:v1 forKey:v3];
}

uint64_t *sub_10009E33C(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 152);
    if (v3)
    {
      vDSP_biquadm_DestroySetup(v3);
    }

    v4 = *(v2 + 160);
    if (v4)
    {
      *(v2 + 168) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 72);
    if (v5)
    {
      *(v2 + 80) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 48);
    if (v6)
    {
      *(v2 + 56) = v6;
      operator delete(v6);
    }

    v7 = *(v2 + 24);
    if (v7)
    {
      *(v2 + 32) = v7;
      operator delete(v7);
    }

    v8 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v8;
      operator delete(v8);
    }

    operator delete();
  }

  return result;
}

void sub_10009E978(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 100) == 1)
  {
    *(v1 + 100) = 0;
    v3 = CSLogCategoryASV;
    if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSSmartSiriVolume siriClientBehaviorMonitor:didStartStreamWithContext:successfully:option:withEventUUID:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolume dismiss alarm firing as Siri client is recording.", &v5, 0xCu);
    }

    v1 = *(a1 + 32);
  }

  if (*(v1 + 101) == 1)
  {
    *(v1 + 101) = 0;
    v4 = CSLogCategoryASV;
    if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSSmartSiriVolume siriClientBehaviorMonitor:didStartStreamWithContext:successfully:option:withEventUUID:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolume dismiss timer firing as Siri client is recording.", &v5, 0xCu);
    }
  }
}

void sub_10009EBA8(uint64_t a1)
{
  v2 = [*(a1 + 32) enablePolicy];
  v3 = [v2 isEnabled];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 _startListenPolling];
  }
}

float sub_10009EC9C(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 116) = result;
  return result;
}

id sub_10009ED24(uint64_t a1, double a2)
{
  LODWORD(a2) = *(a1 + 40);
  result = [*(a1 + 32) _getDevicedBFSForInputLinearVolume:a2];
  *(*(a1 + 32) + 112) = v4;
  return result;
}

void sub_10009EDCC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    v4 = v1 == 1;
    if (*(v3 + 101) != v4)
    {
      *(v3 + 101) = v4;
      v5 = CSLogCategoryASV;
      if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
      {
        if (*(*(a1 + 32) + 101))
        {
          v6 = @"YES";
        }

        else
        {
          v6 = @"NO";
        }

        v9 = 136315394;
        v10 = "[CSSmartSiriVolume didReceiveTimerChanged:]_block_invoke";
        v11 = 2112;
        v12 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolume: timer firing status = %@ according to MobileTimer notification.", &v9, 0x16u);
      }
    }
  }

  else
  {
    v7 = CSLogCategoryASV;
    if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[CSSmartSiriVolume didReceiveTimerChanged:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s SmartSiriVolume received unknown timer state, let's reset timer state.", &v9, 0xCu);
    }

    v8 = +[CSTimerMonitor sharedInstance];
    [v8 initializeTimerState];
  }
}

void sub_10009EFD0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    v4 = v1 == 1;
    if (*(v3 + 100) != v4)
    {
      *(v3 + 100) = v4;
      v5 = CSLogCategoryASV;
      if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
      {
        if (*(*(a1 + 32) + 100))
        {
          v6 = @"YES";
        }

        else
        {
          v6 = @"NO";
        }

        v9 = 136315394;
        v10 = "[CSSmartSiriVolume didReceiveAlarmChanged:]_block_invoke";
        v11 = 2112;
        v12 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolume: alarm firing status = %@ according to MobileTimer notification.", &v9, 0x16u);
      }
    }
  }

  else
  {
    v7 = CSLogCategoryASV;
    if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[CSSmartSiriVolume didReceiveAlarmChanged:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s SmartSiriVolume received unknown alarm state, let's reset alarm state.", &v9, 0xCu);
    }

    v8 = +[CSAlarmMonitor sharedInstance];
    [v8 initializeAlarmState];
  }
}

void sub_10009F1D4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ((v2 - 1) > 1)
  {
    v7 = CSLogCategoryASV;
    if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[CSSmartSiriVolume CSMediaPlayingMonitor:didReceiveMediaPlayingChanged:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s SmartSiriVolume received unknown media playing state, let's assume media is playing.", &v8, 0xCu);
    }

    *(*(a1 + 32) + 99) = 0;
    *(*(a1 + 32) + 102) = 1;
  }

  else
  {
    *(*(a1 + 32) + 99) = v2 == 2;
    *(*(a1 + 32) + 102) = v2 == 1;
    v3 = *(*(a1 + 32) + 99);
    v4 = CSLogCategoryASV;
    v5 = os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT);
    if (v3 == 1)
    {
      if (!v5)
      {
        return;
      }

      v8 = 136315138;
      v9 = "[CSSmartSiriVolume CSMediaPlayingMonitor:didReceiveMediaPlayingChanged:]_block_invoke";
      v6 = "%s SmartSiriVolume: pause LKFS calculation according to MediaRemote notification.";
    }

    else
    {
      if (!v5)
      {
        return;
      }

      v8 = 136315138;
      v9 = "[CSSmartSiriVolume CSMediaPlayingMonitor:didReceiveMediaPlayingChanged:]_block_invoke";
      v6 = "%s SmartSiriVolume: resume LKFS calculation according to MediaRemote notification.";
    }

    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, &v8, 0xCu);
  }
}

void sub_10009F7BC(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v9 = *(a1 + 32);
  LODWORD(a2) = *(a1 + 64);
  LODWORD(a5) = v9[44];
  LODWORD(a6) = v9[45];
  LODWORD(a7) = v9[46];
  LODWORD(a8) = v9[47];
  LODWORD(a4) = 1119092736;
  LODWORD(a3) = 20.0;
  [v9 _estimatedTTSVolume:a2 lowerLimit:a3 upperLimit:a4 TTSmappingInputRangeLow:a5 TTSmappingInputRangeHigh:a6 TTSmappingOutputRangeLow:a7 TTSmappingOutputRangeHigh:a8];
  v17 = LODWORD(v10);
  v18 = *(a1 + 32);
  v19 = *(v18 + 200);
  if ((*(v18 + 99) & 1) == 0)
  {
    LODWORD(v10) = *(a1 + 68);
    LODWORD(v13) = *(v18 + 192);
    LODWORD(v14) = *(v18 + 196);
    LODWORD(v16) = *(v18 + 204);
    LODWORD(v11) = -1037434880;
    LODWORD(v12) = 1104936960;
    LODWORD(v15) = *(v18 + 200);
    [v18 _estimatedTTSVolume:v10 lowerLimit:v11 upperLimit:v12 TTSmappingInputRangeLow:v13 TTSmappingInputRangeHigh:v14 TTSmappingOutputRangeLow:v15 TTSmappingOutputRangeHigh:v16];
    v19 = v20;
  }

  v21 = +[CSAsset getSSVDeviceType];
  v27 = *(a1 + 32);
  LODWORD(v28) = v27[28];
  if (v21 == 2)
  {
    [v27 _getUserOffsetFromMusicVolumeDB:v28];
  }

  *(*(*(a1 + 40) + 8) + 24) = LODWORD(v28);
  v29 = *(a1 + 32);
  LODWORD(v28) = *(*(*(a1 + 40) + 8) + 24);
  LODWORD(v23) = v29[52];
  LODWORD(v24) = v29[53];
  LODWORD(v25) = v29[54];
  LODWORD(v26) = v29[55];
  LODWORD(v22) = -1032847360;
  [v29 _estimatedTTSVolume:v28 lowerLimit:v22 upperLimit:0.0 TTSmappingInputRangeLow:v23 TTSmappingInputRangeHigh:v24 TTSmappingOutputRangeLow:v25 TTSmappingOutputRangeHigh:v26];
  *(*(*(a1 + 48) + 8) + 24) = v30;
  LODWORD(v31) = *(*(*(a1 + 48) + 8) + 24);
  LODWORD(v32) = v17;
  LODWORD(v33) = v19;
  [*(a1 + 32) _combineResultsWithOptimalFromNoise:v32 andOptimalFromLkfs:v33 withUserOffset:v31];
  v35 = *(a1 + 32);
  if (v34 < *(v35 + 224))
  {
    v34 = *(v35 + 224);
  }

  if (v34 >= *(v35 + 228))
  {
    v36 = *(v35 + 228);
  }

  else
  {
    v36 = v34;
  }

  v37 = CSLogCategoryASV;
  if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v67 = "[CSSmartSiriVolume estimatedTTSVolumeForNoiseLevelAndLKFS:LKFS:]_block_invoke";
    v68 = 2050;
    v69 = v36;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolume: final estimated TTS volume in dB %{public}f", buf, 0x16u);
  }

  if (+[CSAsset getSSVDeviceType]== 2)
  {
    *&v38 = v36;
    [*(a1 + 32) _getDeviceSimpleOutputLinearVolumeFordBFSValue:v38];
  }

  else
  {
    v44 = *(a1 + 32);
    if (v36 <= -30.0)
    {
      LODWORD(v39) = -1032847360;
      LODWORD(v42) = 1045220557;
      LODWORD(v40) = -30.0;
      *&v38 = v36;
      [v44 _scaleInputWithInRangeOutRange:v38 minIn:v39 maxIn:v40 minOut:0.0 maxOut:v42];
    }

    else
    {
      LODWORD(v41) = 1045220557;
      LODWORD(v39) = -30.0;
      LODWORD(v42) = 1.0;
      *&v38 = v36;
      [v44 _scaleInputWithInRangeOutRange:v38 minIn:v39 maxIn:0.0 minOut:v41 maxOut:v42];
    }
  }

  *(*(*(a1 + 56) + 8) + 24) = LODWORD(v43);
  v45 = *(a1 + 32);
  if ((*(v45 + 100) & 1) != 0 || *(v45 + 101) == 1)
  {
    v46 = CSLogCategoryASV;
    if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v67 = "[CSSmartSiriVolume estimatedTTSVolumeForNoiseLevelAndLKFS:LKFS:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolume: adjust TTS volume since alarm/timer is firing.", buf, 0xCu);
      v45 = *(a1 + 32);
    }

    v47 = *(v45 + 116);
    v48 = *(*(a1 + 56) + 8);
    if (v47 < *(v48 + 24))
    {
      v47 = *(v48 + 24);
    }

    *(v48 + 24) = v47;
  }

  v64[0] = @"noiseLevelDB";
  LODWORD(v43) = *(a1 + 64);
  v49 = [NSNumber numberWithFloat:v43];
  v65[0] = v49;
  v64[1] = @"musicLevelDB";
  LODWORD(v50) = *(a1 + 68);
  v51 = [NSNumber numberWithFloat:v50];
  v65[1] = v51;
  v64[2] = @"musicPlaybackVolumeDB";
  LODWORD(v52) = *(*(a1 + 32) + 112);
  v53 = [NSNumber numberWithFloat:v52];
  v65[2] = v53;
  v64[3] = @"alarmVolume";
  LODWORD(v54) = *(*(a1 + 32) + 116);
  v55 = [NSNumber numberWithFloat:v54];
  v65[3] = v55;
  v64[4] = @"finalTTSVolume";
  LODWORD(v56) = *(*(*(a1 + 56) + 8) + 24);
  v57 = [NSNumber numberWithFloat:v56];
  v65[4] = v57;
  v64[5] = @"isMediaPlaying";
  v58 = [NSNumber numberWithBool:*(*(a1 + 32) + 102)];
  v65[5] = v58;
  v64[6] = @"isAlarmPlaying";
  v59 = [NSNumber numberWithBool:*(*(a1 + 32) + 100)];
  v65[6] = v59;
  v64[7] = @"isTimerPlaying";
  v60 = [NSNumber numberWithBool:*(*(a1 + 32) + 101)];
  v65[7] = v60;
  v64[8] = @"isLKFSProcessPaused";
  v61 = [NSNumber numberWithBool:*(*(a1 + 32) + 99)];
  v65[8] = v61;
  v62 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:9];

  v63 = +[AFAnalytics sharedAnalytics];
  [v63 logEventWithType:4702 context:v62];
}

void sub_10009FE20(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(v3 + 72);
    v5 = *(v3 + 80);
    v6 = kVTEItriggerStartSampleCount;
    v7 = [v2 objectForKeyedSubscript:kVTEItriggerStartSampleCount];
    v8 = v5 + v4 - [v7 unsignedIntegerValue];

    if (v8 >= *(*(a1 + 40) + 88))
    {
      v8 = *(*(a1 + 40) + 88);
    }

    v9 = CSLogCategoryASV;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v12 = *(v10 + 72);
      v11 = *(v10 + 80);
      v13 = [*(a1 + 32) objectForKeyedSubscript:v6];
      v19 = 136316162;
      v20 = "[CSSmartSiriVolume didDetectKeywordWithResult:]_block_invoke";
      v21 = 2050;
      v22 = v8;
      v23 = 2050;
      v24 = v12;
      v25 = 2050;
      v26 = v11;
      v27 = 2050;
      v28 = [v13 unsignedIntegerValue];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolume remove samples from VT utterances by %{public}llu, with startAnalyzeSampleCount = %{public}llu, samplesFed = %{public}llu, triggerStartSampleCount = %{public}llu", &v19, 0x34u);
    }

    if (v8 > 0x17700)
    {
      v14 = CSLogCategoryASV;
      if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_ERROR))
      {
        v19 = 136315394;
        v20 = "[CSSmartSiriVolume didDetectKeywordWithResult:]_block_invoke";
        v21 = 2050;
        v22 = 96000;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s SmartSiriVolume trying to delete too many VT samples, set triggerDurationToDelete to be limited max: %{public}llu", &v19, 0x16u);
      }

      v8 = 96000;
    }

    sub_1000A0150(*(*(a1 + 40) + 16), 0, v8);
  }

  else
  {
    v15 = CSLogCategoryASV;
    if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315138;
      v20 = "[CSSmartSiriVolume didDetectKeywordWithResult:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s SmartSiriVolume got empty VT event!", &v19, 0xCu);
    }
  }

  v16 = *(a1 + 40);
  if (*(v16 + 100) == 1)
  {
    *(v16 + 100) = 0;
    v17 = CSLogCategoryASV;
    if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315138;
      v20 = "[CSSmartSiriVolume didDetectKeywordWithResult:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolume dismiss alarm firing as VoiceTrigger detected.", &v19, 0xCu);
    }

    v16 = *(a1 + 40);
  }

  if (*(v16 + 101) == 1)
  {
    *(v16 + 101) = 0;
    v18 = CSLogCategoryASV;
    if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315138;
      v20 = "[CSSmartSiriVolume didDetectKeywordWithResult:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolume dismiss timer firing as VoiceTrigger detected.", &v19, 0xCu);
    }
  }
}

void sub_1000A0150(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = *(a1 + 100);
  v5 = (a3 / v4);
  if (!v5)
  {
    v8 = (*(a1 + 168) - *(a1 + 160)) >> 3;
LABEL_24:
    if (v8 < v5)
    {
      v20 = CSLogCategoryASV;
      if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_ERROR))
      {
        v22 = 136315138;
        v23 = "removeVoiceTriggerSamples";
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s SmartSiriVolume: number of elements to delete exceeds energy buffer size, ignore.", &v22, 0xCu);
      }

      v5 = 0;
    }

    goto LABEL_31;
  }

  v6 = *(a1 + 160);
  v7 = *(a1 + 168);
  v8 = (v7 - v6) >> 3;
  if (v8 < v5)
  {
    goto LABEL_24;
  }

  if (v7 != v6)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = *(a1 + 108);
    v13 = ((*(a1 + 112) - (a2 / v4)) + v12) % v12;
    v14 = v13 + v12 - v5;
    while (1)
    {
      v15 = &v6[8 * v9];
      v16 = *(v15 + 1);
      if (v13 >= v5)
      {
        if (v13 >= v16 && v13 - v5 < v16)
        {
LABEL_10:
          v18 = v15 + 8;
          if (v15 + 8 == v7)
          {
            v7 = v15;
          }

          else
          {
            do
            {
              *(v18 - 2) = *v18;
              *(v18 - 1) = *(v18 + 1);
              v18 += 8;
            }

            while (v18 != v7);
            v7 = v18 - 8;
          }

          *(a1 + 168) = v7;
          ++v10;
          goto LABEL_21;
        }
      }

      else if (v13 >= v16 || v14 < v16)
      {
        goto LABEL_10;
      }

      ++v11;
LABEL_21:
      v9 = v11;
      if (v11 >= ((v7 - v6) >> 3))
      {
        goto LABEL_29;
      }
    }
  }

  v10 = 0;
LABEL_29:
  v21 = CSLogCategoryASV;
  if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315394;
    v23 = "removeVoiceTriggerSamples";
    v24 = 1026;
    v25 = v10;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolume: deleted %{public}u elements in energy buffer.", &v22, 0x12u);
  }

LABEL_31:
  *(a1 + 112) = (*(a1 + 108) - v5 + *(a1 + 112) + 1) % *(a1 + 108);
}

void sub_1000A04D4(uint64_t a1)
{
  v2 = [*(a1 + 32) enablePolicy];
  v3 = [v2 isEnabled];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 _startListenPolling];
  }
}

void sub_1000A05E8(uint64_t a1)
{
  v2 = [*(a1 + 32) enablePolicy];
  v3 = [v2 isEnabled];

  if (v3)
  {
    [*(a1 + 32) _setStartAnalyzeTime:{objc_msgSend(*(a1 + 40), "startSampleCount")}];
    *(*(a1 + 32) + 80) += [*(a1 + 40) numSamples];
    if ((*(*(a1 + 32) + 98) & 1) == 0)
    {
      v4 = [*(a1 + 40) numSamples];
      *(*(a1 + 32) + 88) += [*(a1 + 40) numSamples];
      if (v4)
      {
        v5 = 0;
        do
        {
          v6 = objc_autoreleasePoolPush();
          if (v4 >= 0x400)
          {
            v7 = 1024;
          }

          else
          {
            v7 = v4;
          }

          v8 = [*(a1 + 40) subChunkFrom:v5 numSamples:v7];
          v9 = [v8 numSamples];
          v10 = [v8 numSamples];
          [*(a1 + 32) _processAudioChunk:v8 soundType:0];
          v11 = *(a1 + 32);
          if ((v11[99] & 1) == 0)
          {
            [v11 _processAudioChunk:v8 soundType:1];
          }

          v4 -= v9;
          v5 += v10;

          objc_autoreleasePoolPop(v6);
        }

        while (v4);
      }
    }
  }

  else
  {
    v12 = qword_10029E200;
    if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * qword_10029E200, 1) <= 0x1999999999999999uLL)
    {
      v13 = CSLogCategoryASV;
      if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315394;
        v15 = "[CSSmartSiriVolume audioStreamProvider:audioBufferAvailable:]_block_invoke";
        v16 = 2050;
        v17 = v12;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Siri is disabled, we shouldn't receive audio here, heartbeat = %{public}lld", &v14, 0x16u);
        v12 = qword_10029E200;
      }
    }

    qword_10029E200 = v12 + 1;
  }
}

id sub_1000A0884(uint64_t a1)
{
  *(*(a1 + 32) + 98) = 0;
  sub_1000A08D8(*(*(a1 + 32) + 16));
  sub_1000A08D8(*(*(a1 + 32) + 24));
  v2 = *(a1 + 32);

  return [v2 _resetStartAnalyzeTime];
}

void sub_1000A08D8(uint64_t a1)
{
  *(a1 + 112) = 0;
  *(a1 + 144) = 0;
  v2 = *(a1 + 48);
  v3 = *(a1 + 56) - v2;
  if (v3 >= 1)
  {
    bzero(v2, v3);
  }

  v4 = *(a1 + 152);
  if (v4)
  {
    vDSP_biquadm_ResetState(v4);
  }

  v5 = *(a1 + 160);
  v6 = *(a1 + 168) - v5;
  if ((v6 & 0x7FFFFFFF8) != 0)
  {
    v7 = 0;
    v8 = (v6 >> 3);
    v9 = *(a1 + 124);
    v10 = (v5 + 4);
    do
    {
      *(v10 - 1) = v9;
      *v10 = v7;
      v10 += 2;
      ++v7;
    }

    while (v8 != v7);
  }
}

void *sub_1000A09CC(void *result)
{
  v1 = result[4];
  if (*(v1 + 98))
  {
    v2 = result;
    v3 = CSLogCategoryASV;
    if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[CSSmartSiriVolume _resumeSSVProcessing]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolume: resume SSV calculation.", &v4, 0xCu);
      v1 = v2[4];
    }

    *(v1 + 98) = 0;
    return [v2[4] _resetStartAnalyzeTime];
  }

  return result;
}

void sub_1000A0B10(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 98) & 1) == 0)
  {
    v3 = CSLogCategoryASV;
    if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[CSSmartSiriVolume _pauseSSVProcessing]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolume: pause SSV calculation.", &v4, 0xCu);
      v1 = *(a1 + 32);
    }

    *(v1 + 98) = 1;
    *(*(a1 + 32) + 88) = 0;
  }
}

void sub_1000A0C98(void *a1)
{
  v2 = a1[6];
  if (!v2)
  {
    v6 = *(a1[4] + 16);
    if (!v6)
    {
      return;
    }

    *(*(a1[5] + 8) + 24) = sub_1000A0E28(v6);
    v7 = CSLogCategoryASV;
    if (!os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v8 = *(*(a1[5] + 8) + 24);
    v9 = 136315394;
    v10 = "[CSSmartSiriVolume estimateSoundLevelbySoundType:]_block_invoke";
    v11 = 2050;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolume: estimated noise level %{public}f", &v9, 0x16u);
    v2 = a1[6];
  }

  if (v2 == 1)
  {
    v3 = *(a1[4] + 24);
    if (v3)
    {
      *(*(a1[5] + 8) + 24) = sub_1000A0E28(v3);
      v4 = CSLogCategoryASV;
      if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(*(a1[5] + 8) + 24);
        v9 = 136315394;
        v10 = "[CSSmartSiriVolume estimateSoundLevelbySoundType:]_block_invoke";
        v11 = 2050;
        v12 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolume: estimated LKFS %{public}f", &v9, 0x16u);
      }
    }
  }
}

float sub_1000A0E28(uint64_t a1)
{
  v1 = *(a1 + 160);
  v2 = *(a1 + 168);
  if (v1 == v2)
  {
    return -1000.0;
  }

  v3 = v2 - v1;
  v4 = v3 >> 3;
  v5 = *(a1 + 132) * (v3 >> 3) / 0x64;
  v6 = (v3 >> 3) - 1;
  if (v5 >= v6)
  {
    v5 = (v3 >> 3) - 1;
  }

  v7 = *(a1 + 136) * v4 / 0x64u;
  if (v7 >= v6)
  {
    v7 = (v3 >> 3) - 1;
  }

  if (v4)
  {
    v8 = *(v1 + 8 * v5);
    v9 = *(v1 + 8 * v7);
    v10 = (v1 + 4);
    v11 = 0.0;
    v12 = 0.0;
    v13 = (v3 >> 3);
    do
    {
      v14 = *(v10 - 1);
      if (v14 >= v8 && v14 <= v9)
      {
        v16 = *(*(a1 + 48) + 4 * ((*v10 - *(a1 + 112) + *(a1 + 108)) % *(a1 + 108)));
        v12 = v12 + (v14 * v16);
        v11 = v11 + v16;
      }

      v10 += 2;
      --v13;
    }

    while (v13);
  }

  else
  {
    v12 = 0.0;
    v11 = 0.0;
  }

  if (v11 <= 1.17549e-38)
  {
    return -1000.0;
  }

  else
  {
    return *(a1 + 140) + log10(fmax((v12 / v11), 1.17549e-38)) * 20.0;
  }
}

void sub_1000A1128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A1158(uint64_t a1, uint64_t a2)
{
  v7 = [*(a1 + 32) dataForChannel:a2];
  v3 = [v7 length];
  v4 = +[CSConfig inputRecordingSampleByteDepth];
  v5 = [*(a1 + 40) _getFloatBufferData:v7];
  v6 = v3 / v4;
  if (v6)
  {
    memmove((*(*(a1 + 40) + 32) + 4 * *(*(*(a1 + 48) + 8) + 24)), v5, 4 * v6);
  }

  *(*(*(a1 + 48) + 8) + 24) += v6;
}

void sub_1000A12F4(uint64_t a1)
{
  v2 = [*(a1 + 32) length];
  v3 = v2 / +[CSConfig inputRecordingSampleByteDepth];
  v4 = [*(a1 + 40) _getFloatBufferData:*(a1 + 32)];
  if (v3)
  {
    memmove(*(*(a1 + 40) + 32), v4, 4 * v3);
  }

  v6 = *(a1 + 40);
  if (*(a1 + 48))
  {
    LODWORD(v5) = *(v6 + 112);
    [v6 _convertDB2Mag:v5];
    sub_1000A142C(*(*(a1 + 40) + 24), *(*(a1 + 40) + 32), v3);
    v7 = *(*(a1 + 40) + 24);
    sub_1000A1540(v7);

    sub_1000A16F4(v7, v8);
  }

  else
  {
    sub_1000A142C(*(v6 + 16), *(v6 + 32), v3);
    v9 = *(*(a1 + 40) + 16);
    sub_1000A1540(v9);
    sub_1000A16F4(v9, v10);
    if (*(a1 + 72) == 1)
    {
      v11 = *(*(a1 + 40) + 16);
      v12 = *(a1 + 56);
      v13 = v12 - *(a1 + 64);

      sub_1000A0150(v11, v12, v13);
    }
  }
}

void sub_1000A142C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a2)
  {
    v4 = *(a1 + 96);
    *(a1 + 100) = a3 / v4;
    if (a3 / v4 <= *(a1 + 104))
    {
      v6 = 0;
      do
      {
        v7 = *(a1 + 100);
        v8 = v7 * v6++;
        v9 = 4 * v7 * v6;
        if (v9 != 4 * v8)
        {
          memmove((*a1 + 4 * v8), (a2 + 4 * v8), v9 - 4 * v8);
          v4 = *(a1 + 96);
        }
      }

      while (v6 < v4);
      if ((*(a1 + 144) & 1) == 0)
      {
        v10 = *(a1 + 100) / *(a1 + 116);
        v11 = vcvtas_u32_f32(20.0 / v10);
        v12 = *(a1 + 108);
        v13 = (v12 - v11) & ~((v12 - v11) >> 31);
        if (v13 < v12)
        {
          v14 = v12 - v13;
          v15 = (*(a1 + 48) + 4 * v13);
          v16 = ~v13 + v12;
          do
          {
            *v15++ = expf(-(v16-- * v10) / *(a1 + 128));
            --v14;
          }

          while (v14);
        }

        *(a1 + 144) = 1;
      }
    }
  }
}

void sub_1000A1540(uint64_t *a1)
{
  __C = 0.0;
  if (a1[19])
  {
    v2 = 8 * *(a1 + 24);
    __chkstk_darwin();
    v4 = &v18[-((v3 + 15) & 0xFFFFFFFF0)];
    if (v3 >= 0x200)
    {
      v5 = 512;
    }

    else
    {
      v5 = v3;
    }

    bzero(&v18[-((v3 + 15) & 0xFFFFFFFF0)], v5);
    v6 = *(a1 + 24);
    __chkstk_darwin();
    v8 = &v18[-((v7 + 15) & 0xFFFFFFFF0)];
    if (v7 >= 0x200)
    {
      v9 = 512;
    }

    else
    {
      v9 = v7;
    }

    bzero(&v18[-((v7 + 15) & 0xFFFFFFFF0)], v9);
    v10 = *(a1 + 25);
    if (v6)
    {
      v11 = 0;
      v12 = *a1;
      v13 = a1[3];
      v14 = v4;
      v15 = v8;
      do
      {
        *v14++ = (v12 + 4 * v11);
        *v15++ = (v13 + 4 * v11);
        v11 += v10;
        --v6;
      }

      while (v6);
    }

    vDSP_biquadm(a1[19], v4, 1, v8, 1, v10);
    if (*(a1 + 24))
    {
      v16 = 0;
      v17 = 0.0;
      do
      {
        vDSP_rmsqv(v8[v16], 1, &__C, *(a1 + 25));
        v17 = v17 + __C;
        ++v16;
      }

      while (v16 < *(a1 + 24));
    }
  }
}

void sub_1000A16F4(uint64_t a1, float a2)
{
  v4 = *(a1 + 160);
  v5 = *(a1 + 168);
  v6 = v5 - v4;
  if (((v5 - v4) & 0x7FFFFFFF8) != 0)
  {
    v7 = 0;
    v8 = 4;
    while (*(v4 + v8) != *(a1 + 112))
    {
      ++v7;
      v8 += 8;
      if ((v6 >> 3) == v7)
      {
        goto LABEL_11;
      }
    }

    v9 = v4 + 8 * v7;
    v10 = (v9 + 8);
    if (v9 + 8 == v5)
    {
      v5 = v9;
    }

    else
    {
      do
      {
        *(v10 - 2) = *v10;
        *(v10 - 1) = v10[1];
        v10 += 2;
      }

      while (v10 != v5);
      v5 = (v10 - 2);
    }

    *(a1 + 168) = v5;
  }

LABEL_11:
  if (v4 == v5 || *(v4 + 8 * ((v6 >> 3) - 1)) < a2)
  {
    v11 = LODWORD(a2) | (*(a1 + 112) << 32);
    v12 = *(a1 + 176);
    if (v5 < v12)
    {
      *v5 = v11;
      v13 = v5 + 8;
LABEL_37:
      *(a1 + 168) = v13;
      goto LABEL_38;
    }

    v14 = (v5 - v4) >> 3;
    if (!((v14 + 1) >> 61))
    {
      v15 = v12 - v4;
      v16 = v15 >> 2;
      if (v15 >> 2 <= (v14 + 1))
      {
        v16 = v14 + 1;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        sub_1000A1A88(v17);
      }

      v28 = (8 * v14);
      *v28 = v11;
      v13 = 8 * v14 + 8;
      v29 = *(a1 + 160);
      v30 = *(a1 + 168) - v29;
      v31 = v28 - v30;
      memcpy(v28 - v30, v29, v30);
      v32 = *(a1 + 160);
      *(a1 + 160) = v31;
      *(a1 + 168) = v13;
      *(a1 + 176) = 0;
      if (v32)
      {
        operator delete(v32);
      }

      goto LABEL_37;
    }

LABEL_52:
    sub_1000A1DD8();
  }

  v18 = 0;
  v19 = 0;
  v20 = (v5 - v4) >> 3;
  while (*(v4 + 8 * v18) < a2)
  {
    v18 = ++v19;
    if (v20 <= v19)
    {
      goto LABEL_38;
    }
  }

  v21 = (v4 + 8 * v18);
  v22 = *(a1 + 112);
  v23 = *(a1 + 176);
  if (v5 >= v23)
  {
    v33 = v20 + 1;
    if ((v20 + 1) >> 61)
    {
      goto LABEL_52;
    }

    v34 = v23 - v4;
    if (v34 >> 2 > v33)
    {
      v33 = v34 >> 2;
    }

    if (v34 >= 0x7FFFFFFFFFFFFFF8)
    {
      v35 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v35 = v33;
    }

    if (v35)
    {
      sub_1000A1A88(v35);
    }

    v36 = (8 * v18);
    v37 = 8 * v18;
    if (!v18)
    {
      sub_1000A1A88(1uLL);
    }

    *v36 = a2;
    *(8 * v18 + 4) = v22;
    v38 = v37 + 8;
    memcpy((v37 + 8), v21, *(a1 + 168) - v21);
    v39 = *(a1 + 160);
    v43 = (v38 + *(a1 + 168) - v21);
    *(a1 + 168) = v21;
    v40 = v21 - v39;
    v41 = v36 - (v21 - v39);
    memcpy(v41, v39, v40);
    v42 = *(a1 + 160);
    *(a1 + 160) = v41;
    *(a1 + 168) = v43;
    if (v42)
    {
      operator delete(v42);
    }
  }

  else if (v21 == v5)
  {
    *v5 = a2;
    *(v5 + 4) = v22;
    *(a1 + 168) = v5 + 8;
  }

  else
  {
    v24 = v5;
    if (v5 >= 8)
    {
      *v5 = *(v5 - 8);
      v24 = v5 + 8;
    }

    *(a1 + 168) = v24;
    if (v5 != v21 + 2)
    {
      v25 = 0;
      v26 = v4 - v5 + 8 * v19 + 8;
      do
      {
        v27 = v5 + v25;
        *(v27 - 8) = *(v5 + v25 - 16);
        *(v27 - 4) = *(v5 + v25 - 12);
        v25 -= 8;
      }

      while (v26 != v25);
    }

    *v21 = a2;
    *(v21 + 1) = v22;
  }

LABEL_38:
  *(a1 + 112) = (*(a1 + 112) + 1) % *(a1 + 108);
}

void sub_1000A1A70(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000A1A88(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_1000A1AD0();
}

void sub_1000A1AD0()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_1000A1B04()
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1000A1B58(exception);
}

std::logic_error *sub_1000A1B58(std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "vector");
  return result;
}

void sub_1000A1CA4(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 2;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 4 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = v7 - v3;
        v9 = v8 >> 1;
        if (v8 >> 1 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (!(v10 >> 62))
        {
          operator new();
        }

        sub_1000A1AD0();
      }

      sub_1000A1DD8();
    }

    bzero(a1[1], 4 * v6);
    v11 = v4 + 4 * v6;
  }

  a1[1] = v11;
}

id sub_1000A21F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) musicVolume];
  [v2 _getDevicedBFSForInputLinearVolume:?];
  *(*(a1 + 32) + 112) = v3;
  result = [*(a1 + 40) alarmVolume];
  *(*(a1 + 32) + 116) = v5;
  return result;
}

void sub_1000A2300(uint64_t a1)
{
  *(*(a1 + 32) + 101) = *(a1 + 40) == 1;
  v2 = CSLogCategoryASV;
  if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(a1 + 32) + 101))
    {
      v3 = @"firing";
    }

    else
    {
      v3 = @"NOT firing";
    }

    v4 = 136315394;
    v5 = "[CSSmartSiriVolume initializeTimerState]_block_invoke";
    v6 = 2114;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolume received timer initial state as %{public}@", &v4, 0x16u);
  }
}

void sub_1000A24AC(uint64_t a1)
{
  *(*(a1 + 32) + 100) = *(a1 + 40) == 1;
  v2 = CSLogCategoryASV;
  if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(a1 + 32) + 100))
    {
      v3 = @"firing";
    }

    else
    {
      v3 = @"NOT firing";
    }

    v4 = 136315394;
    v5 = "[CSSmartSiriVolume initializeAlarmState]_block_invoke";
    v6 = 2114;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolume received alarm initial state as %{public}@", &v4, 0x16u);
  }
}

void sub_1000A26F4(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(*(a1 + 32) + 99) = v2 == 2;
  *(*(a1 + 32) + 102) = v2 == 1;
  v3 = CSLogCategoryASV;
  if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(a1 + 32) + 102))
    {
      v4 = @"playing";
    }

    else
    {
      v4 = @"NOT playing";
    }

    v5 = 136315394;
    v6 = "[CSSmartSiriVolume initializeMediaPlayingState]_block_invoke";
    v7 = 2114;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolume received MediaRemote initial state as %{public}@", &v5, 0x16u);
  }
}

void sub_1000A2950(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (!a2)
  {
    v5 = CSLogCategoryASV;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(NSError *)v4 description];
      v7 = 136315394;
      v8 = "[CSSmartSiriVolume _stopListening]_block_invoke";
      v9 = 2114;
      v10 = v6;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Failed to stop audio stream : %{public}@", &v7, 0x16u);
    }
  }
}

void sub_1000A2E04(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

void sub_1000A2E7C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 8);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A2F3C;
  v10[3] = &unk_100253248;
  v14 = a2;
  v11 = v5;
  v12 = v7;
  v13 = v6;
  v9 = v5;
  dispatch_async(v8, v10);
}

uint64_t sub_1000A2F3C(uint64_t a1)
{
  v2 = CSLogCategoryASV;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    v4 = [*(a1 + 32) description];
    v5 = v4;
    v6 = @"NO";
    *v13 = 136315650;
    *&v13[4] = "[CSSmartSiriVolume _startListenWithCompletion:]_block_invoke_3";
    *&v13[12] = 2114;
    if (v3)
    {
      v6 = @"YES";
    }

    *&v13[14] = v6;
    v14 = 2114;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Start audio stream successfully ? %{public}@, error : %{public}@", v13, 0x20u);
  }

  v7 = [*(a1 + 40) enablePolicy];
  v8 = [v7 isEnabled];

  if ((v8 & 1) == 0)
  {
    v9 = CSLogCategoryASV;
    if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_ERROR))
    {
      *v13 = 136315138;
      *&v13[4] = "[CSSmartSiriVolume _startListenWithCompletion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Received didStartRecording when Siri is off", v13, 0xCu);
    }

    [*(a1 + 40) _stopListening];
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  return (*(*(a1 + 48) + 16))();
}

void sub_1000A332C(uint64_t a1, char a2, void *a3)
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
    v7 = CSLogCategoryASV;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = [v5 localizedDescription];
      *location = 136315394;
      *&location[4] = "[CSSmartSiriVolume _startListenPollingWithInterval:completion:]_block_invoke";
      v15 = 2114;
      v16 = v10;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s listen polling has failed : %{public}@", location, 0x16u);
    }

    objc_initWeak(location, *(a1 + 32));
    v8 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
    v9 = *(*(a1 + 32) + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A3534;
    block[3] = &unk_1002531D0;
    objc_copyWeak(v13, location);
    v13[1] = *(a1 + 48);
    v12 = *(a1 + 40);
    dispatch_after(v8, v9, block);

    objc_destroyWeak(v13);
    objc_destroyWeak(location);
  }
}

void sub_1000A3534(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _startListenPollingWithInterval:*(a1 + 32) completion:*(a1 + 48)];
}

void sub_1000A3918(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v5 - 72));

  _Unwind_Resume(a1);
}

void sub_1000A398C(uint64_t a1, int a2)
{
  v4 = CSLogCategoryASV;
  if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"PAUSED";
    if (a2)
    {
      v5 = @"RUNNING";
    }

    v8 = 136315394;
    v9 = "[CSSmartSiriVolume startSmartSiriVolumeWithAudioProviderSelector:]_block_invoke";
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolume enable policy changed : %{public}@", &v8, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (a2)
  {
    [WeakRetained _resumeSSVProcessing];
  }

  else
  {
    [WeakRetained _pauseSSVProcessing];
  }
}

void sub_1000A3AAC(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2)
  {
    [WeakRetained _startListenPolling];
  }

  else
  {
    [WeakRetained _stopListening];
  }
}

vDSP_biquadm_Setup sub_1000A3EA8(uint64_t a1, int a2, int a3, int a4, int a5, int a6, float a7, float a8, float a9)
{
  *(a1 + 96) = a3;
  *(a1 + 104) = 1024;
  *(a1 + 108) = a4;
  *(a1 + 132) = a5;
  *(a1 + 136) = a6;
  *(a1 + 140) = a9;
  *(a1 + 124) = a7;
  *(a1 + 128) = a8;
  *(a1 + 116) = a2;
  *(a1 + 120) = a3 << 10;
  sub_1000A1CA4(a1, (a3 << 10));
  sub_1000A1CA4((a1 + 24), *(a1 + 120));
  sub_1000A1CA4((a1 + 48), *(a1 + 108));
  v10 = *(a1 + 108);
  v11 = *(a1 + 160);
  v12 = *(a1 + 168);
  v13 = (v12 - v11) >> 3;
  if (v10 <= v13)
  {
    if (v10 >= v13)
    {
      goto LABEL_13;
    }

    v18 = v11 + 8 * v10;
  }

  else
  {
    v14 = v10 - v13;
    v15 = *(a1 + 176);
    if (v14 > (v15 - v12) >> 3)
    {
      v16 = v15 - v11;
      if (v16 >> 2 > v10)
      {
        v10 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v10;
      }

      sub_1000A1A88(v17);
    }

    bzero(*(a1 + 168), 8 * v14);
    v18 = v12 + 8 * v14;
  }

  *(a1 + 168) = v18;
LABEL_13:
  v19 = (5 * *(a1 + 96));
  v20 = *(a1 + 72);
  v21 = *(a1 + 80);
  v22 = (v21 - v20) >> 3;
  if (v19 <= v22)
  {
    if (v19 >= v22)
    {
      goto LABEL_26;
    }

    v27 = v20 + 8 * v19;
  }

  else
  {
    v23 = v19 - v22;
    v24 = *(a1 + 88);
    if (v23 > (v24 - v21) >> 3)
    {
      v25 = v24 - v20;
      if (v25 >> 2 > v19)
      {
        v19 = v25 >> 2;
      }

      if (v25 >= 0x7FFFFFFFFFFFFFF8)
      {
        v26 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v19;
      }

      if (!(v26 >> 61))
      {
        operator new();
      }

      sub_1000A1AD0();
    }

    bzero(*(a1 + 80), 8 * v23);
    v27 = v21 + 8 * v23;
  }

  *(a1 + 80) = v27;
LABEL_26:
  if (*(a1 + 96))
  {
    v28 = 0;
    v29 = 0;
    do
    {
      v30 = *(a1 + 72) + 8 * v28;
      *v30 = xmmword_1001AA230;
      *(v30 + 16) = unk_1001AA240;
      *(v30 + 32) = 0;
      ++v29;
      v31 = *(a1 + 96);
      v28 += 5;
    }

    while (v29 < v31);
  }

  else
  {
    v31 = 0;
  }

  result = vDSP_biquadm_CreateSetup(*(a1 + 72), 1uLL, v31);
  *(a1 + 152) = result;
  v33 = *(a1 + 160);
  v34 = *(a1 + 168) - v33;
  if ((v34 & 0x7FFFFFFF8) != 0)
  {
    v35 = 0;
    v36 = (v34 >> 3);
    v37 = *(a1 + 124);
    v38 = (v33 + 4);
    do
    {
      *(v38 - 1) = v37;
      *v38 = v35;
      v38 += 2;
      ++v35;
    }

    while (v36 != v35);
  }

  return result;
}

void sub_1000A453C(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 16);
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
          [v7 audioRecorderBufferAvailable:*(a1 + 32) audioStreamHandleId:objc_msgSend(*(a1 + 40) buffer:{"streamHandleID", v8), *(a1 + 40)}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1000A46F8(void *a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1[4] + 16);
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
          [v7 audioRecorderDidStopRecord:a1[4] audioStreamHandleId:a1[5] reason:{a1[6], v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1000A4910(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 8) & 1) == 0)
  {
    if (*(a1 + 72) != 1)
    {
      return;
    }

    *(v2 + 8) = 1;
    v2 = *(a1 + 32);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(v2 + 16);
  v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v8 = v4;
          v9 = v5;
          v10 = *(a1 + 32);
          v11 = *(a1 + 40);
          v13 = *(a1 + 48);
          v12 = *(a1 + 56);
          v14 = *(a1 + 64);
          LODWORD(v16) = +[CSConfig inputRecordingNumberOfChannels];
          v15 = v10;
          v5 = v9;
          v4 = v8;
          [v7 audioRecorderBufferAvailable:v15 audioStreamHandleId:v12 buffer:v11 remoteVAD:v13 atTime:v14 arrivalTimestampToAudioRecorder:0 numberOfChannels:v16];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }
}

void sub_1000A4B64(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    *buf = 136315394;
    v16 = "[CSAudioInjectionProvider audioEngineDidStartRecord:audioStreamHandleId:successfully:error:]_block_invoke";
    v17 = 2048;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s audioEngineDidStartRecord with streamId: %ld", buf, 0x16u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = *(*(a1 + 32) + 16);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 audioRecorderDidStartRecord:*(a1 + 32) audioStreamHandleId:*(a1 + 48) successfully:*(a1 + 56) error:{*(a1 + 40), v10}];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

uint64_t sub_1000A5594(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000A55AC(void *a1)
{
  v2 = *(a1[4] + 64);
  v3 = [NSNumber numberWithUnsignedInteger:a1[6]];
  v4 = [v2 objectForKeyedSubscript:v3];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = *(a1[4] + 40);
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 injectionEngine];

        if (v11 == v4)
        {
          v12 = [CSFAudioRecordDeviceInfo alloc];
          v13 = [v10 deviceName];
          v14 = [v10 isPluginDevice];
          v15 = [v10 deviceUID];
          v16 = [v10 productIdentifier];
          v17 = [v12 initWithRoute:v13 isRemoteDevice:v14 remoteDeviceUID:v15 remoteDeviceProductIdentifier:v16];
          v18 = *(a1[5] + 8);
          v19 = *(v18 + 40);
          *(v18 + 40) = v17;

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_1000A58B4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  v3 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 40) streamHandleId]);
  v4 = [v2 objectForKeyedSubscript:v3];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = *(*(a1 + 32) + 40);
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 injectionEngine];

        if (v11 == v4)
        {
          v12 = [v10 deviceName];
          v13 = *(*(a1 + 48) + 8);
          v14 = *(v13 + 40);
          *(v13 + 40) = v12;

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_1000A5B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A5B78(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 40) streamHandleId]);
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000A5DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A5DF8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 40) streamHandleId]);
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000A6128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A6148(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(v3 + 32);
    v5 = *(v3 + 120);
    v6 = *(a1 + 32);
    v17 = 136315906;
    v18 = "[CSAudioInjectionProvider startAudioStreamWithOption:recordDeviceIndicator:error:]_block_invoke";
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v4;
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Calling start audio stream : %@ %@, context: %@", &v17, 0x2Au);
  }

  if (CSIsIOS() && (v7 = a1 + 40, (v8 = *(*(a1 + 40) + 120)) != 0) && ![v8 isVoiceTriggered])
  {
    v9 = 0;
  }

  else
  {
    v7 = a1 + 40;
    v9 = 1;
  }

  *(*v7 + 8) = v9;
  v10 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(a1 + 40) + 8))
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v17 = 136315394;
    v18 = "[CSAudioInjectionProvider startAudioStreamWithOption:recordDeviceIndicator:error:]_block_invoke";
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s allowZeroInjection : %@", &v17, 0x16u);
  }

  v12 = *(*(a1 + 40) + 64);
  v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 48) streamHandleId]);
  v14 = [v12 objectForKeyedSubscript:v13];
  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;
}

void sub_1000A640C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) recordContext];
  v2 = [v3 copy];
  [v1 setAudioRecordContext:v2];
}

void sub_1000A65D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A65F0(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(*(a1 + 32) + 40);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        if ([v7 isPluginDevice])
        {
          v8 = [v7 deviceID];
          v9 = [*(a1 + 40) deviceId];
          v10 = [v8 isEqualToString:v9];

          if (v10)
          {
            v11 = [v7 injectionEngine];
            *(*(*(a1 + 48) + 8) + 24) = [v11 audioStreamHandleId];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

void sub_1000A69B4(uint64_t a1)
{
  if ([*(a1 + 32) isBundleDevice])
  {
    v2 = [*(a1 + 32) deviceUID];
    v3 = [v2 UUIDString];
    v4 = [*(*(a1 + 40) + 128) UUIDString];
    v5 = [v3 isEqualToString:v4];

    if (v5)
    {
      v6 = *(a1 + 40);
      v7 = *(v6 + 128);
      *(v6 + 128) = 0;
    }
  }

  v8 = [*(a1 + 32) injectionEngine];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 audioStreamHandleId];
    [v9 stop];
    [v9 setDelegate:0];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = *(*(a1 + 40) + 16);
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        v15 = 0;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v19 + 1) + 8 * v15);
          if (objc_opt_respondsToSelector())
          {
            [v16 audioRecorderStreamHandleIdInvalidated:{v10, v19}];
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    v17 = *(*(a1 + 40) + 64);
    v18 = [NSNumber numberWithUnsignedInteger:v10];
    [v17 removeObjectForKey:v18];
  }

  [*(*(a1 + 40) + 40) removeObject:{*(a1 + 32), v19}];
  if ([*(a1 + 32) deviceType] == 6)
  {
    [*(a1 + 40) _createSpeechDetectionVADIfNeeded];
  }
}

id sub_1000A6CE8(uint64_t a1)
{
  [*(*(a1 + 32) + 40) addObject:*(a1 + 40)];
  v2 = [*(a1 + 40) isPluginDevice];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  if (v2)
  {
    v6 = [v3 _connectPluginDevice:v4 withError:v5];
  }

  else
  {
    v6 = [v3 _connectBuiltInDevice:v4 withError:v5];
  }

  *(*(*(a1 + 48) + 8) + 24) = v6;
  result = [*(a1 + 40) deviceType];
  if (result == 6)
  {
    v8 = *(a1 + 32);

    return [v8 _tearDownSpeechDetectionVADIfNeeded];
  }

  return result;
}

void sub_1000A6ECC(uint64_t a1)
{
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v2 = *(*(a1 + 32) + 64);
  v3 = [v2 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v29;
    do
    {
      v6 = 0;
      do
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:*(*(&v28 + 1) + 8 * v6)];
        [v7 stop];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v4);
  }

  [*(*(a1 + 32) + 64) removeAllObjects];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = *(*(a1 + 32) + 16);
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      v12 = 0;
      do
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 audioRecorderStreamHandleIdInvalidated:1];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v10);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = *(*(a1 + 32) + 16);
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v20 + 1) + 8 * v18);
        if (objc_opt_respondsToSelector())
        {
          [v19 audioRecorderWillBeDestroyed:{*(a1 + 32), v20}];
        }

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v16);
  }
}

void sub_1000A7648(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceUID];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "[CSAudioInjectionProvider selectBuiltInDevice:withCompletion:]_block_invoke";
    v23 = 2112;
    v24 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s selecting bundleDevice with deviceUID: %@", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(*(a1 + 40) + 40);
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v16 + 1) + 8 * v8) deviceUID];
        v10 = [v9 UUIDString];
        v11 = [v2 UUIDString];
        v12 = [v10 isEqualToString:v11];

        if (v12)
        {
          v13 = [*(a1 + 32) injectionEngine];
          [*(*(a1 + 40) + 64) setObject:v13 forKeyedSubscript:&off_10025E2A0];

          v14 = *(a1 + 48);
          if (v14)
          {
            (*(v14 + 16))(v14, 1, 0);
            goto LABEL_15;
          }
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    v4 = [NSError errorWithDomain:CSErrorDomain code:1504 userInfo:0];
    (*(v15 + 16))(v15, 0, v4);
LABEL_15:
  }
}

void sub_1000A792C(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 40);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 deviceType] == 1)
        {
          [*(a1 + 32) _connectBuiltInDevice:v8 withError:0];
        }

        else if ([v8 isPluginDevice])
        {
          [*(a1 + 32) _connectPluginDevice:v8 withError:0];
          v5 = 1;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);

    if (v5)
    {
      [*(a1 + 32) _tearDownSpeechDetectionVADIfNeeded];
    }
  }

  else
  {
  }
}

void sub_1000A7DA8(id a1)
{
  v1 = objc_alloc_init(CSAudioInjectionProvider);
  v2 = qword_10029E210;
  qword_10029E210 = v1;
}

int64_t sub_1000A9110(id a1, id a2, id a3)
{
  v4 = a3;
  [CSAttSiriSpeechPackageHelper getLastTokenEndTimeFromSpeechPackage:a2];
  v5 = [NSNumber numberWithDouble:?];
  [CSAttSiriSpeechPackageHelper getLastTokenEndTimeFromSpeechPackage:v4];
  v7 = v6;

  v8 = [NSNumber numberWithDouble:v7];
  v9 = [v8 compare:v5];

  return v9;
}

id sub_1000A93F8(uint64_t a1)
{
  [*(a1 + 32) setAttendingState:*(a1 + 40)];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 136315394;
    v8 = "[CSAttSiriStateMonitor updateState:]_block_invoke";
    v9 = 2048;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Updating attSiri state to: %lu", buf, 0x16u);
  }

  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A9510;
  v6[3] = &unk_100253B48;
  v6[4] = v4;
  return [v4 enumerateObserversInQueue:v6];
}

void sub_1000A9510(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) notifyObserver:v3];
  if (objc_opt_respondsToSelector())
  {
    [v3 attSiriStateMonitor:*(a1 + 32) didRecieveAttSiriStateChange:{objc_msgSend(*(a1 + 32), "attendingState")}];
  }
}

void sub_1000A960C(id a1)
{
  v1 = objc_alloc_init(CSAttSiriStateMonitor);
  v2 = qword_10029E218;
  qword_10029E218 = v1;
}

BOOL sub_1000A9840(id a1)
{
  v1 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
  v2 = [v1 phoneCallState];

  v3 = (+[CSUtils supportRingtoneA2DP]| (v2 != 2)) & ((v2 - 5) < 0xFFFFFFFFFFFFFFFELL);
  if ((v3 & 1) == 0)
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[CSListeningEnabledPolicyWatch _addListeningEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Listening on watch cant be turned on because we are in a ringtone with A2DP, connected or outgoing call", &v6, 0xCu);
    }
  }

  return v3;
}

BOOL sub_1000A9938(id a1)
{
  v1 = +[CSFPreferences sharedPreferences];
  v2 = [v1 audioInjectionEnabled];

  if (v2)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSListeningEnabledPolicyWatch _addListeningEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Listening on watch cannot be turned on since audioInjection is enabled", &v5, 0xCu);
    }
  }

  return v2 ^ 1;
}

BOOL sub_1000A9A08(id a1)
{
  v1 = +[CSPhraseSpotterEnabledMonitor sharedInstance];
  v2 = [v1 isEnabled];

  if (!+[CSUtils supportHandsFree])
  {
LABEL_9:
    LOBYTE(v6) = 0;
    goto LABEL_12;
  }

  v3 = CSLogContextFacilityCoreSpeech;
  v4 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
  if (!v2)
  {
    if (v4)
    {
      v11 = 136315138;
      v12 = "[CSListeningEnabledPolicyWatch _addListeningEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Hey Siri is disabled. Not checking if we are in a call.", &v11, 0xCu);
    }

    goto LABEL_9;
  }

  if (v4)
  {
    v11 = 136315138;
    v12 = "[CSListeningEnabledPolicyWatch _addListeningEnabledConditions]_block_invoke";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Hey Siri is enabled. Checking if we are in a call.", &v11, 0xCu);
  }

  v5 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
  if ([v5 phoneCallState] == 2)
  {
    v6 = +[CSUtils supportRingtoneA2DP]^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

LABEL_12:
  v7 = +[CSSiriAssertionMonitor sharedInstance];
  v8 = [v7 isEnabled];

  if ((v8 & 1) == 0 && (v6 & 1) == 0)
  {
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[CSListeningEnabledPolicyWatch _addListeningEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Listening on watch cannot be turned on since Siri assertion is disabled and or its not in a ringtone hfp state", &v11, 0xCu);
    }
  }

  return (v8 | v2 & v6) & 1;
}

BOOL sub_1000A9BF8(id a1)
{
  v1 = +[CSFirstUnlockMonitor sharedInstance];
  v2 = [v1 isFirstUnlocked];

  if ((v2 & 1) == 0)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSListeningEnabledPolicyWatch _addListeningEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Listening on watch cannot be turned on since device is not unlocked after restart", &v5, 0xCu);
    }
  }

  return v2;
}

BOOL sub_1000A9CC8(id a1)
{
  v1 = +[CSSystemShellStartMonitorFactory defaultShellStartMonitor];
  v2 = [v1 isSystemShellStarted];

  if ((v2 & 1) == 0)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSListeningEnabledPolicyWatch _addListeningEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Listening on watch cannot be turned on since system shell is not started", &v5, 0xCu);
    }
  }

  return v2;
}

BOOL sub_1000A9D98(id a1)
{
  v1 = +[CSSiriEnabledMonitor sharedInstance];
  v2 = [v1 isEnabled];

  if ((v2 & 1) == 0)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSListeningEnabledPolicyWatch _addListeningEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Listening on watch cannot be turned on since Siri is disabled", &v5, 0xCu);
    }
  }

  return v2;
}

BOOL sub_1000A9E68(id a1)
{
  v1 = +[CSPhraseSpotterEnabledMonitor sharedInstance];
  v2 = [v1 isEnabled];

  if ((v2 & 1) == 0)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSListeningEnabledPolicyWatch _addListeningEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Listening on watch cannot be turned on since HS and RTS disabled", &v5, 0xCu);
    }
  }

  return v2;
}

BOOL sub_1000A9F38(id a1)
{
  v1 = +[CSSpeechDetectionDevicePresentMonitor sharedInstance];
  v2 = [v1 isPresent];

  if ((v2 & 1) == 0)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSListeningEnabledPolicyWatch _addListeningEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Listening on watch cannot be turned on since speech detection VAD is disabled", &v5, 0xCu);
    }
  }

  return v2;
}

void sub_1000AA298(uint64_t a1)
{
  v2 = [*(a1 + 32) _checkCanUseVoiceTriggerDuringCallEnabled];
  v3 = *(a1 + 32);
  v4 = *(v3 + 12);
  if (v4 == v2)
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v8 = @"OFF";
      if (v4)
      {
        v8 = @"ON";
      }

      v9 = 136315394;
      v10 = "[CSHangUpEnabledMonitor _voiceTriggerDuringCallEnabledDidChange]_block_invoke";
      v11 = 2114;
      v12 = v8;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Siri Hangup is already %{public}@, received duplicated notification!", &v9, 0x16u);
    }
  }

  else
  {
    *(v3 + 12) = v2;
    v6 = *(a1 + 32);
    v7 = v6[12];

    [v6 _didReceiveCanUseVoiceTriggerDuringCallSettingChangedInQueue:v7];
  }
}

void sub_1000AA7B0(id a1)
{
  v1 = objc_alloc_init(CSHangUpEnabledMonitor);
  v2 = qword_10029E228;
  qword_10029E228 = v1;
}

uint64_t sub_1000AB084(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000AB09C(uint64_t a1)
{
  v2 = [*(a1 + 32) _constructVTEIFromExclaveKeywordResult:*(a1 + 48) speakerDetectionResult:*(a1 + 56) phraseId:*(a1 + 88) triggerTimestamp:*(a1 + 64) triggerStartSampleCount:*(a1 + 72) triggerEndSampleCount:*(a1 + 80)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000AB1D4(uint64_t a1, void *a2, unsigned int a3, unsigned int a4, unsigned int a5, void *a6)
{
  v11 = a2;
  v12 = a6;
  v13 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315906;
    v16 = "[CSVoiceTriggerSecondPass _syncVoiceProfileEmbeddingsToExclave]_block_invoke";
    v17 = 1024;
    v18 = a3;
    v19 = 1024;
    v20 = a4;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s PSR Profile Embedding extract : %d * %d with error %@", &v15, 0x22u);
  }

  if (v11)
  {
    [*(*(a1 + 32) + 488) setSpeakerProfile:v11 numEmbeddings:a3 dimension:a4 speakerRecognizerType:a5];
  }

  else
  {
    v14 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = "[CSVoiceTriggerSecondPass _syncVoiceProfileEmbeddingsToExclave]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s PSR Profile embedding is nil, not sending embedding to Exclave", &v15, 0xCu);
    }
  }
}

void sub_1000AB358(uint64_t a1, void *a2, unsigned int a3, unsigned int a4, unsigned int a5, void *a6)
{
  v11 = a2;
  v12 = a6;
  v13 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315906;
    v16 = "[CSVoiceTriggerSecondPass _syncVoiceProfileEmbeddingsToExclave]_block_invoke";
    v17 = 1024;
    v18 = a3;
    v19 = 1024;
    v20 = a4;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s SAT Profile Embedding extract : %d * %d  with error %@", &v15, 0x22u);
  }

  if (v11)
  {
    [*(*(a1 + 32) + 488) setSpeakerProfile:v11 numEmbeddings:a3 dimension:a4 speakerRecognizerType:a5];
  }

  else
  {
    v14 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = "[CSVoiceTriggerSecondPass _syncVoiceProfileEmbeddingsToExclave]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s SAT Profile embedding is nil, not sending embedding to Exclave", &v15, 0xCu);
    }
  }
}

void sub_1000ABC2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _scheduleDidStartSecondPassCompletionWatchDogWithToken:*(a1 + 32)];
}

float sub_1000AC5F8(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 48) = result;
  return result;
}

void sub_1000AE4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AE518(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = a3;
  return result;
}

void sub_1000AE534(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v8 = v5;
      v7 = [[CSVoiceTriggerSecondPassResultHolder alloc] initWithResult:4 voiceTriggerEventInfo:0 isSecondChanceCandidate:0];
      (*(v6 + 16))(v6, v7, v8);

      v5 = v8;
    }
  }
}

id sub_1000AE63C(uint64_t a1)
{
  result = [*(a1 + 32) _logUptimeWithVTSwitchChanged:1 VTEnabled:*(a1 + 40)];
  if ((*(a1 + 40) & 1) == 0)
  {

    return [CSAudioFileManager pruneNumberOfLogFilesTo:0];
  }

  return result;
}

id sub_1000B1804(uint64_t a1)
{
  v2 = qword_10029E238;
  if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * qword_10029E238, 1) <= 0x888888888888888uLL)
  {
    kdebug_trace();
    v2 = qword_10029E238;
  }

  qword_10029E238 = v2 + 1;
  v3 = *(a1 + 32);
  if (*(v3 + 13))
  {
    v4 = *(v3 + 448);
    if ([*(v3 + 392) count])
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = *(*(a1 + 32) + 392);
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v14;
        do
        {
          v9 = 0;
          do
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [*(a1 + 32) _handleAudioChunk:*(*(&v13 + 1) + 8 * v9) shouldPreprocessedByZeroFilter:{v4 != 0, v13}];
            v9 = v9 + 1;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
      }

      [*(*(a1 + 32) + 392) removeAllObjects];
    }

    return [*(a1 + 32) _handleAudioChunk:*(a1 + 40) shouldPreprocessedByZeroFilter:v4 != 0];
  }

  else
  {
    v11 = *(v3 + 392);
    v12 = *(a1 + 40);

    return [v11 addObject:v12];
  }
}

void sub_1000B1B84(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    if (*(a1 + 56) != 1)
    {
      if (a2 == 3)
      {
        goto LABEL_21;
      }

      if (a2 == 1)
      {
        v23 = *(a1 + 32);
        v22 = *(a1 + 40);
        v24 = *(v23 + 88);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000B1F74;
        block[3] = &unk_100250740;
        block[4] = v23;
        v36 = v22;
        v37 = *(a1 + 48);
        dispatch_async(v24, block);
      }

      goto LABEL_23;
    }

    [*(*(a1 + 32) + 488) stopSecondPassVoiceTrigger];
    if (CSIsInternalBuild() && (+[CSFPreferences sharedPreferences](CSFPreferences, "sharedPreferences"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 isReducedPHSThresholdEnabled], v15, (a9 - 3) <= 0xFFFFFFFFFFFFFFFDLL) && a8 == 1 && v16)
    {
      v17 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEBUG))
      {
        v31 = *(a1 + 32);
        v32 = v17;
        v33 = [v31 UUID];
        *buf = 136315394;
        v39 = "[CSVoiceTriggerSecondPass _processSecondPassInExclave:rejectBlock:]_block_invoke";
        v40 = 2114;
        v41 = v33;
        _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "%s CSVoiceTriggerSecondPass[%{public}@]:secondpass SAT reject but overriding decision with PHS threshold reduced setted", buf, 0x16u);
      }

      v18 = *(a1 + 40);
      if (!v18)
      {
LABEL_20:
        *(*(a1 + 32) + 168) = 0;
        if (a2 == 3)
        {
LABEL_21:
          v25 = CSLogCategoryVT;
          if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
          {
            v26 = *(a1 + 32);
            v27 = v25;
            v28 = [v26 UUID];
            *buf = 136315394;
            v39 = "[CSVoiceTriggerSecondPass _processSecondPassInExclave:rejectBlock:]_block_invoke_3";
            v40 = 2114;
            v41 = v28;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:Skip increasing _numAnalyzedSamples since Exclave didn't process audio chunk", buf, 0x16u);
          }

          return;
        }

LABEL_23:
        v29 = *(a1 + 32);
        v30 = *(v29 + 88);
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_1000B1F84;
        v34[3] = &unk_100253C20;
        v34[4] = v29;
        dispatch_async(v30, v34);
        return;
      }
    }

    else
    {
      v18 = *(a1 + 48);
      if (!v18)
      {
        goto LABEL_20;
      }
    }

    v14.n128_f64[0] = a3;
    (*(v18 + 16))(v14);
    goto LABEL_20;
  }

  [*(*(a1 + 32) + 488) stopSecondPassVoiceTrigger];
  v20 = *(a1 + 40);
  if (v20)
  {
    v21 = *(v20 + 16);
    v19.n128_f64[0] = a3;

    v21(v19);
  }
}

id sub_1000B1F84(uint64_t a1)
{
  result = +[CSConfig exclaveRecordingNumSamples];
  *(*(a1 + 32) + 184) += result;
  return result;
}

void sub_1000B25A4(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v16 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    v18 = v16;
    v19 = [v17 convertSecureVoiceTriggerKeywordDetectionResultTypeToString:a6];
    v20 = [*(a1 + 32) convertSecureVoiceTriggerSpeakerDetectionResultTypeToString:a7];
    *buf = 136315906;
    v93 = "[CSVoiceTriggerSecondPass audioStreamProvider:numSamplesAvailableInExclave:hostTime:arrivalHostTimeToAudioRecorder:exclaveSampleCount:]_block_invoke";
    v94 = 2050;
    v95 = a2;
    v96 = 2112;
    v97 = v19;
    v98 = 2112;
    v99 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s Detected 2nd-pass trigger at %{public}llu, KeywordDetectionBucket : %@, SpeakerDetectionBucket : %@", buf, 0x2Au);
  }

  v86 = [*(*(a1 + 32) + 128) phraseDetectorInfoFromPhId:a3];
  v85 = [v86 phraseConfig];
  v89 = [*(a1 + 32) _getFirstPassTriggerSourceAsString:*(*(a1 + 32) + 336)];
  v21 = +[CSBatteryMonitor sharedInstance];
  v22 = [v21 batteryState];

  v88 = [*(a1 + 32) _fetchSiriLocale];
  v23 = *(a1 + 32);
  v72 = *(v23 + 288);
  v24 = *(v23 + 184);
  v25 = a5;
  +[CSUtils systemUpTime];
  v27 = v26;
  v28 = [*(a1 + 32) _getExclaveAudioTimeConverter];
  v80 = [v28 hostTimeFromSampleCount:a4];

  v29 = [*(a1 + 32) _getExclaveAudioTimeConverter];
  v78 = [v29 hostTimeFromSampleCount:a5];

  v84 = [NSNumber numberWithDouble:*(*(a1 + 32) + 304)];
  v83 = [NSNumber numberWithDouble:*(*(a1 + 32) + 312)];
  +[CSConfig inputRecordingSampleRate];
  v31 = ((a5 - a4) / v30);
  v33 = a7 == 5 || (a7 - 1) < 2;
  v76 = v33;
  v90[0] = kVTEIconfigVersion;
  v82 = [*(*(a1 + 32) + 96) configVersion];
  if (v82)
  {
    v34 = [*(*(a1 + 32) + 96) configVersion];
  }

  else
  {
    v34 = @"N/A";
  }

  v64 = v34;
  v91[0] = v34;
  v90[1] = kVTEIbuildVersion;
  v81 = +[CSUtils deviceBuildVersion];
  v91[1] = v81;
  v91[2] = @"N/A";
  v90[2] = kVTEIconfigPath;
  v90[3] = kVTEIConfigDataHash;
  v91[3] = @"N/A";
  v90[4] = kVTEIOnBatteryPower;
  v79 = [NSNumber numberWithBool:v22 == 2];
  v91[4] = v79;
  v91[5] = &__kCFBooleanFalse;
  v90[5] = kVTEISatBeingTrained;
  v90[6] = kVTEIisSecondChance;
  v91[6] = &__kCFBooleanFalse;
  v90[7] = kVTEIhardwareSamplerate;
  +[CSConfig inputRecordingSampleRate];
  v77 = [NSNumber numberWithFloat:?];
  v91[7] = v77;
  v90[8] = kVTEItriggerStartSampleCount;
  v75 = [NSNumber numberWithUnsignedLongLong:a4];
  v91[8] = v75;
  v90[9] = kVTEIclientStartSampleCount;
  v74 = [NSNumber numberWithUnsignedLongLong:a4];
  v91[9] = v74;
  v90[10] = kVTEIsecondPassAnalyzerEndSampleCount;
  v73 = [NSNumber numberWithUnsignedInteger:v24 + v72];
  v91[10] = v73;
  v90[11] = kVTEIsecondPassAnalyzerStartSampleCount;
  v71 = [NSNumber numberWithUnsignedLongLong:*(*(a1 + 32) + 288)];
  v91[11] = v71;
  v91[12] = &off_10025E9B8;
  v90[12] = kVTEItriggerStartSeconds;
  v90[13] = kVTEItriggerEndSeconds;
  v70 = [NSNumber numberWithDouble:v31];
  v91[13] = v70;
  v90[14] = kVTEItriggerStartTime;
  v69 = [NSNumber numberWithDouble:a4];
  v91[14] = v69;
  v90[15] = kVTEItriggerEndTime;
  v68 = [NSNumber numberWithDouble:v25];
  v91[15] = v68;
  v90[16] = kVTEItriggerDuration;
  v67 = [NSNumber numberWithDouble:v25 - a4];
  v91[16] = v67;
  v90[17] = kVTEItriggerFiredTime;
  v66 = [NSNumber numberWithDouble:v27];
  v91[17] = v66;
  v91[18] = &__kCFBooleanFalse;
  v90[18] = kVTEIisContinuous;
  v90[19] = kVTEItriggerEndSampleCount;
  v65 = [NSNumber numberWithUnsignedLongLong:a5];
  v91[19] = v65;
  v90[20] = kVTEItriggerFireSampleCount;
  v35 = [NSNumber numberWithUnsignedLongLong:*(a1 + 40)];
  v91[20] = v35;
  v90[21] = kVTEIactiveChannel;
  v36 = [NSNumber numberWithUnsignedInteger:*(*(a1 + 32) + 224)];
  v91[21] = v36;
  v90[22] = kVTEITriggeredPhId;
  v37 = [NSNumber numberWithUnsignedInt:a3];
  v91[22] = v37;
  v91[23] = v88;
  v90[23] = kVTEILanguageCode;
  v90[24] = kVTEIfirstPassTriggerSource;
  v91[24] = v89;
  v90[25] = kVTEIExclaveSignalIntensity;
  v38 = [NSNumber numberWithDouble:a8];
  v91[25] = v38;
  v90[26] = kVTEItotalSamplesAtEndOfCapture;
  v39 = [NSNumber numberWithUnsignedInteger:*(*(a1 + 32) + 184)];
  v91[26] = v39;
  v90[27] = kVTEIearlyDetectFiredMachTime;
  v40 = [NSNumber numberWithUnsignedLongLong:*(*(a1 + 32) + 216)];
  v91[27] = v40;
  v90[28] = kVTEItriggerStartMachTime;
  v41 = [NSNumber numberWithUnsignedLongLong:v80];
  v91[28] = v41;
  v90[29] = kVTEItriggerEndMachTime;
  v42 = [NSNumber numberWithUnsignedLongLong:v78];
  v91[29] = v42;
  v90[30] = kVTEIsatTriggered;
  v43 = [NSNumber numberWithBool:v76];
  v91[30] = v43;
  v87 = [NSDictionary dictionaryWithObjects:v91 forKeys:v90 count:31];

  if (v82)
  {
  }

  v44 = [v87 mutableCopy];
  v45 = [v85 name];

  if (v45)
  {
    v46 = [v85 name];
    [v44 setObject:v46 forKey:kVTEITriggeredPh];
  }

  [v84 doubleValue];
  v47 = [NSNumber numberWithDouble:?];
  [v44 setObject:v47 forKey:kVTEIuptime];

  [v83 doubleValue];
  v48 = [NSNumber numberWithDouble:?];
  [v44 setObject:v48 forKey:kVTEIdowntime];

  if ([*(a1 + 32) _shouldLogMediaplayState:*(*(a1 + 32) + 336)])
  {
    v49 = *(*(a1 + 32) + 376);
    v50 = [NSNumber numberWithBool:v49 == 1];
    [v44 setObject:v50 forKey:kVTEIisMediaPlaying];

    if (v49 == 1)
    {
      LODWORD(v51) = *(*(a1 + 32) + 48);
      v52 = [NSNumber numberWithFloat:v51];
      [v44 setObject:v52 forKey:kVTEImediaVolume];
    }
  }

  v53 = [*(a1 + 32) audioProviderUUID];

  if (v53)
  {
    v54 = [*(a1 + 32) audioProviderUUID];
    [v44 setObject:v54 forKey:kVTEIAudioProviderUUID];
  }

  v55 = +[NSUUID UUID];
  v56 = [v55 UUIDString];
  [v44 setObject:v56 forKey:kVTEISelfLoggingUUID];

  v57 = *(a1 + 32);
  if (v57[55])
  {
    v58 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", +[CSFTimeUtils hostTimeToNs:](CSFTimeUtils, "hostTimeToNs:", [v57[55] secondPassAudioStreamStartTime]));
    [v44 setObject:v58 forKey:kVTEISecondPassAudioStreamStartTime];

    v59 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", +[CSFTimeUtils hostTimeToNs:](CSFTimeUtils, "hostTimeToNs:", [*(*(a1 + 32) + 440) secondPassAudioStreamReadyTime]));
    [v44 setObject:v59 forKey:kVTEISecondPassAudioStreamReadyTime];

    v60 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", +[CSFTimeUtils hostTimeToNs:](CSFTimeUtils, "hostTimeToNs:", [*(*(a1 + 32) + 440) secondPassFirstAudioPacketReceptionTime]));
    [v44 setObject:v60 forKey:kVTEISecondPassFirstAudioPacketReceptionTime];

    v61 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", +[CSFTimeUtils hostTimeToNs:](CSFTimeUtils, "hostTimeToNs:", [*(*(a1 + 32) + 440) secondPassLastAudioPacketReceptionTime]));
    [v44 setObject:v61 forKey:kVTEISecondPassLastAudioPacketReceptionTime];

    v62 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", +[CSFTimeUtils hostTimeToNs:](CSFTimeUtils, "hostTimeToNs:", [*(*(a1 + 32) + 440) secondPassCheckerModelKeywordDetectionStartTime]));
    [v44 setObject:v62 forKey:kVTEISecondPassCheckerModelKeywordDetectionStartTime];

    v63 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", +[CSFTimeUtils hostTimeToNs:](CSFTimeUtils, "hostTimeToNs:", [*(*(a1 + 32) + 440) secondPassCheckerModelKeywordDetectionEndTime]));
    [v44 setObject:v63 forKey:kVTEISecondPassCheckerModelKeywordDetectionEndTime];

    v57 = *(a1 + 32);
  }

  [v57 _handleSecondPassSuccess:v44];
}

void sub_1000B3184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    v16 = v14;
    v17 = [v15 convertSecureVoiceTriggerKeywordDetectionResultTypeToString:a6];
    v18 = [*(a1 + 32) convertSecureVoiceTriggerSpeakerDetectionResultTypeToString:a7];
    v20 = 136315650;
    v21 = "[CSVoiceTriggerSecondPass audioStreamProvider:numSamplesAvailableInExclave:hostTime:arrivalHostTimeToAudioRecorder:exclaveSampleCount:]_block_invoke";
    v22 = 2112;
    v23 = v17;
    v24 = 2112;
    v25 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s Rejected 2nd-pass KeywordDetectionBucket : %@, SpeakerDetectionBucket : %@", &v20, 0x20u);
  }

  v19 = [*(a1 + 32) _constructVTEIFromExclaveKeywordResult:a6 speakerDetectionResult:a7 phraseId:a3 triggerTimestamp:a2 triggerStartSampleCount:a4 triggerEndSampleCount:a5];
  [*(a1 + 32) _notifySecondPassReject:v19 result:objc_msgSend(*(a1 + 32) isSecondChanceCandidate:{"_getSecondPassRejectReasonFromExclaveKeywordResult:speakerDetectionResult:", a6, a7), 0}];
}

id sub_1000B3310(uint64_t a1)
{
  [*(a1 + 32) _setStartAnalyzeTime:*(a1 + 56)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 _processSecondPassInExclave:v3 rejectBlock:v4];
}

void sub_1000B3B1C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B3BC0;
  v6[3] = &unk_100250678;
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6[4] = v2;
  v8 = v4;
  v7 = v5;
  v9 = *(a1 + 56);
  dispatch_async(v3, v6);
}

id sub_1000B3BC0(uint64_t a1)
{
  [*(a1 + 32) _didStopAudioStream];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);

  return [v4 _handleResultCompletion:v2 voiceTriggerInfo:v3 isSecondChanceCandidate:v5 error:0];
}

void sub_1000B4318(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = CSLogCategoryVT;
  if ((a2 & 1) == 0)
  {
    if (!os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v10 = *(a1 + 32);
    v8 = v6;
    v9 = [v10 UUID];
    v11 = [v5 localizedDescription];
    v12 = 136315650;
    v13 = "[CSVoiceTriggerSecondPass _voiceTriggerFirstPassDidDetectKeywordFrom:completion:]_block_invoke";
    v14 = 2114;
    v15 = v9;
    v16 = 2114;
    v17 = v11;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s CSVoiceTriggerSecondPass[%{public}@]:AFSiriActivationBluetoothDeviceVoiceTriggerPrewarm failed : %{public}@", &v12, 0x20u);

    goto LABEL_4;
  }

  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 UUID];
    v12 = 136315394;
    v13 = "[CSVoiceTriggerSecondPass _voiceTriggerFirstPassDidDetectKeywordFrom:completion:]_block_invoke";
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:AFSiriActivationBluetoothDeviceVoiceTriggerPrewarm success", &v12, 0x16u);
LABEL_4:
  }

LABEL_6:
}

void sub_1000B44A4(uint64_t a1, int a2, void *a3)
{
  v6 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = a3;
    v10 = [v7 UUID];
    if (a2)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v12 = [v9 localizedDescription];

    v13 = 136315906;
    v14 = "[CSVoiceTriggerSecondPass _voiceTriggerFirstPassDidDetectKeywordFrom:completion:]_block_invoke";
    v15 = 2114;
    v16 = v10;
    v17 = 2114;
    v18 = v11;
    v19 = 2114;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:Finished prewarming Remora : %{public}@, error : %{public}@", &v13, 0x2Au);
  }
}

void sub_1000B45E0(uint64_t a1)
{
  v2 = [*(a1 + 40) mutableCopy];
  v4 = a1 + 32;
  v3 = *(a1 + 32);
  v5 = *(v3 + 416);
  *(v3 + 416) = v2;

  v6 = [*(a1 + 48) rejectionMHUUID];
  v7 = *(*(a1 + 32) + 424);
  *(*v4 + 424) = v6;

  *(*v4 + 14) = 0;
  v8 = [*(a1 + 48) firstpassMetrics];
  v9 = *(*(a1 + 32) + 432);
  *(*v4 + 432) = v8;

  objc_initWeak(&location, *(a1 + 32));
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000B4C3C;
  v29[3] = &unk_100250628;
  objc_copyWeak(&v31, &location);
  v30 = *(a1 + 72);
  v10 = objc_retainBlock(v29);
  if ((*(*(a1 + 32) + 10) & 1) == 0)
  {
    [*(a1 + 32) _scheduleSecondPassCompletionWatchDog];
    [*(a1 + 32) _reset];
    *(*(a1 + 32) + 10) = 1;
    *(*(a1 + 32) + 12) = 0;
    *(*(a1 + 32) + 480) = 0;
    *(*(a1 + 32) + 472) = 0;
    *(*(a1 + 32) + 176) = 0;
    *(*(a1 + 32) + 184) = 0;
    *(*(a1 + 32) + 336) = *(a1 + 80);
    objc_storeStrong((*(a1 + 32) + 344), *(a1 + 56));
    [*(a1 + 32) _getDidWakeAP:*(a1 + 40)];
    [*(a1 + 32) _resetStartAnalyzeTime];
    [*(*(a1 + 32) + 128) setRunAsSecondChance:*(a1 + 88)];
    [*(a1 + 32) setZeroFilter:0];
    v14 = *(a1 + 80);
    if (v14 > 5)
    {
      if ((v14 - 8) < 2)
      {
        goto LABEL_20;
      }

      if (v14 == 6)
      {
        v16 = *(a1 + 56);
        v15 = *(a1 + 64);
        v18 = *(a1 + 32);
        v17 = *(a1 + 40);
        v11 = [*(a1 + 48) rtModelRequestOptions];
        [v18 _handleVoiceTriggerFirstPassFromHearstAP:6 deviceId:v16 audioProviderUUID:v15 firstPassInfo:v17 rtModelRequestOptions:v11 completion:v10];
        goto LABEL_6;
      }

      if (v14 == 7)
      {
        [*(a1 + 32) _handleVoiceTriggerFirstPassFromRemora:7 deviceId:*(a1 + 56) audioProviderUUID:*(a1 + 64) firstPassInfo:*(a1 + 40) completion:v10];
        goto LABEL_21;
      }
    }

    else
    {
      if (v14 > 2)
      {
        if (v14 == 3)
        {
          v20 = *(a1 + 56);
          v19 = *(a1 + 64);
          v22 = *(a1 + 32);
          v21 = *(a1 + 40);
          v11 = [*(a1 + 48) rtModelRequestOptions];
          [v22 _handleVoiceTriggerFirstPassFromHearst:3 deviceId:v20 audioProviderUUID:v19 firstPassInfo:v21 rtModelRequestOptions:v11 completion:v10];
          goto LABEL_6;
        }

        if (v14 == 4)
        {
          [*(a1 + 32) _handleVoiceTriggerFirstPassFromJarvis:4 deviceId:*(a1 + 56) audioProviderUUID:*(a1 + 64) firstPassInfo:*(a1 + 40) completion:v10];
          goto LABEL_21;
        }

LABEL_20:
        [*(a1 + 32) _handleVoiceTriggerFirstPassFromAP:*(a1 + 40) audioProviderUUID:*(a1 + 64) completion:v10];
        goto LABEL_21;
      }

      if (v14 == 1)
      {
        goto LABEL_20;
      }

      if (v14 == 2)
      {
        if (CSHasAOP())
        {
          [*(a1 + 32) _handleVoiceTriggerFirstPassFromAOP:*(a1 + 40) audioProviderUUID:*(a1 + 64) completion:v10];
          goto LABEL_21;
        }

        v24 = CSLogCategoryVT;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v26 = [*(a1 + 32) UUID];
          *buf = 136315394;
          v34 = "[CSVoiceTriggerSecondPass _voiceTriggerFirstPassDidDetectKeywordFrom:completion:]_block_invoke";
          v35 = 2114;
          v36 = v26;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s CSVoiceTriggerSecondPass[%{public}@]:Unable to handle VoiceTrigger AOP first pass on this platform", buf, 0x16u);
        }

        v11 = [[CSVoiceTriggerSecondPassResultHolder alloc] initWithResult:4 voiceTriggerEventInfo:0 isSecondChanceCandidate:0];
        v13 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
        (v10[2])(v10, v11, v13);
        goto LABEL_5;
      }
    }

    if ([*(a1 + 32) _isFirstPassSourceExclave:?])
    {
      [*(a1 + 32) _handleVoiceTriggerFirstPassFromExclave:*(a1 + 40) audioProviderUUID:*(a1 + 64) completion:v10];
      goto LABEL_21;
    }

    v11 = [NSError errorWithDomain:CSErrorDomain code:501 userInfo:0];
    v25 = CSLogCategoryVT;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v27 = [*(a1 + 32) UUID];
      v28 = [(CSVoiceTriggerSecondPassResultHolder *)v11 localizedDescription];
      *buf = 136315650;
      v34 = "[CSVoiceTriggerSecondPass _voiceTriggerFirstPassDidDetectKeywordFrom:completion:]_block_invoke";
      v35 = 2114;
      v36 = v27;
      v37 = 2114;
      v38 = v28;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s CSVoiceTriggerSecondPass[%{public}@]:Unable to handle VoiceTrigger first pass : %{public}@", buf, 0x20u);
    }

    v13 = [[CSVoiceTriggerSecondPassResultHolder alloc] initWithResult:4 voiceTriggerEventInfo:0 isSecondChanceCandidate:0];
    (v10[2])(v10, v13, v11);
    goto LABEL_5;
  }

  v11 = [NSError errorWithDomain:CSErrorDomain code:502 userInfo:0];
  v12 = CSLogCategoryVT;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v23 = [*(a1 + 32) UUID];
    *buf = 136315394;
    v34 = "[CSVoiceTriggerSecondPass _voiceTriggerFirstPassDidDetectKeywordFrom:completion:]_block_invoke";
    v35 = 2114;
    v36 = v23;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s CSVoiceTriggerSecondPass[%{public}@]:Ignoring first pass trigger since we are already performing second pass on a trigger candidate", buf, 0x16u);
  }

  v13 = [[CSVoiceTriggerSecondPassResultHolder alloc] initWithResult:8 voiceTriggerEventInfo:0 isSecondChanceCandidate:0];
  (v10[2])(v10, v13, v11);
LABEL_5:

LABEL_6:
LABEL_21:

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

void sub_1000B4C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000B4C3C(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained[43];
    WeakRetained[42] = 0;
    WeakRetained[43] = 0;

    if ([v13 result] != 8)
    {
      [v7 _clearTriggerCandidate];
      [v7 _clearSecondPassCompletionWatchDog];
      v9 = v7[17];
      v7[17] = 0;
    }
  }

  if ((CSIsHorseman() & 1) != 0 || (CSIsIOS() & 1) != 0 || CSIsAppleSiliconMac())
  {
    v10 = +[CSVoiceTriggerStatistics sharedInstance];
    v11 = [v13 voiceTriggerEventInfo];
    [v10 updateVTEstimationStatistics:v11];
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    (*(v12 + 16))(v12, v13, v5);
  }
}

id sub_1000B4EB0(uint64_t a1)
{
  [*(*(a1 + 32) + 448) flush];
  v2 = [*(a1 + 32) audioStream];

  if (v2)
  {
    v3 = [*(a1 + 32) audioStream];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000B503C;
    v14[3] = &unk_100253300;
    v14[4] = *(a1 + 32);
    [v3 stopAudioStreamWithOption:0 completion:v14];
  }

  v4 = *(a1 + 32);
  if ((*(v4 + 14) & 1) == 0)
  {
    v5 = CSIsInternalBuild();
    v4 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v4 + 416);
      if (!v6)
      {
        v7 = objc_alloc_init(NSMutableDictionary);
        v8 = *(a1 + 32);
        v9 = *(v8 + 416);
        *(v8 + 416) = v7;

        v4 = *(a1 + 32);
        v6 = *(v4 + 416);
      }

      v10 = [v4 _getFirstPassTriggerSourceAsString:*(v4 + 336)];
      [v6 setObject:v10 forKey:kVTEIfirstPassTriggerSource];

      v11 = +[CSFVoiceTriggerEventInfoSelfLogger sharedLogger];
      [v11 logStartEventWithFirstPassStartedInfo:*(*(a1 + 32) + 416) withMHUUID:*(*(a1 + 32) + 424)];

      v12 = +[CSFVoiceTriggerEventInfoSelfLogger sharedLogger];
      [v12 logCancelledEventWithMHUUID:*(*(a1 + 32) + 424)];

      *(*(a1 + 32) + 14) = 1;
      v4 = *(a1 + 32);
    }
  }

  return [v4 _resetVoiceTriggerLatencyMetrics];
}

void sub_1000B503C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 88);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B50B0;
  block[3] = &unk_100253C20;
  block[4] = v1;
  dispatch_async(v2, block);
}

id sub_1000B50B0(uint64_t a1)
{
  [*(a1 + 32) _didStopAudioStream];
  v2 = *(a1 + 32);

  return [v2 _handleResultCompletion:6 voiceTriggerInfo:0 isSecondChanceCandidate:0 error:0];
}

void sub_1000B571C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v8 = v5;
      v7 = [[CSVoiceTriggerSecondPassResultHolder alloc] initWithResult:4 voiceTriggerEventInfo:0 isSecondChanceCandidate:0];
      (*(v6 + 16))(v6, v7, v8);

      v5 = v8;
    }
  }
}

void sub_1000B5C30(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v8 = v5;
    [*(a1 + 32) setResultCompletion:*(a1 + 40)];
  }

  else
  {
    v6 = *(a1 + 40);
    if (!v6)
    {
      goto LABEL_6;
    }

    v8 = v5;
    v7 = [[CSVoiceTriggerSecondPassResultHolder alloc] initWithResult:4 voiceTriggerEventInfo:0 isSecondChanceCandidate:0];
    (*(v6 + 16))(v6, v7, v8);
  }

  v5 = v8;
LABEL_6:
}

void sub_1000B6454(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v8 = v5;
      v7 = [[CSVoiceTriggerSecondPassResultHolder alloc] initWithResult:4 voiceTriggerEventInfo:0 isSecondChanceCandidate:0];
      (*(v6 + 16))(v6, v7, v8);

      v5 = v8;
    }
  }
}

void sub_1000B68A8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v8 = v5;
      v7 = [[CSVoiceTriggerSecondPassResultHolder alloc] initWithResult:4 voiceTriggerEventInfo:0 isSecondChanceCandidate:0];
      (*(v6 + 16))(v6, v7, v8);

      v5 = v8;
    }
  }
}

void sub_1000B6EAC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v8 = v5;
      v7 = [[CSVoiceTriggerSecondPassResultHolder alloc] initWithResult:4 voiceTriggerEventInfo:0 isSecondChanceCandidate:0];
      (*(v6 + 16))(v6, v7, v8);

      v5 = v8;
    }
  }
}

void sub_1000B759C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B75C8(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = a3;
  return result;
}

void sub_1000B75E4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v8 = v5;
      v7 = [[CSVoiceTriggerSecondPassResultHolder alloc] initWithResult:4 voiceTriggerEventInfo:0 isSecondChanceCandidate:0];
      (*(v6 + 16))(v6, v7, v8);

      v5 = v8;
    }
  }
}

void sub_1000B7D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000B7DA4(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained _voiceTriggerSecondPassLatencyMetrics];
  [v6 setSecondPassAudioStreamReadyTime:mach_absolute_time()];

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v8);
  }
}

void sub_1000B7E40(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 88);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B7F00;
  v10[3] = &unk_100253248;
  v10[4] = v7;
  v13 = a2;
  v11 = v5;
  v12 = v6;
  v9 = v5;
  dispatch_async(v8, v10);
}

uint64_t sub_1000B7F00(uint64_t a1)
{
  [*(a1 + 32) _didStartAudioStream:*(a1 + 56)];
  v2 = *(a1 + 56);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 48) + 16);

  return v4();
}

void sub_1000B8150(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000B824C;
  v4[3] = &unk_100253C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_1000B81C4(uint64_t a1, float a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000B823C;
  v4[3] = &unk_1002534E8;
  v4[4] = v2;
  v5 = a2;
  dispatch_async(v3, v4);
}

float sub_1000B823C(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 48) = result;
  return result;
}

void sub_1000B9188(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[44] = *(a1 + 40);
  }
}

void sub_1000B9428(uint64_t a1)
{
  if (CSIsHorseman())
  {
    v2 = *(a1 + 32);
    if (*(v2 + 464))
    {
      if (*(v2 + 456))
      {
        v3 = [*(v2 + 104) configPathRecognizer];
        v4 = [CSMil2BnnsUtils readBnnsIrFromModelConfig:v3 modelType:1];

        [CSUtils faultPagesWithVaddr:*(*(a1 + 32) + 464) mmapedSize:*(*(a1 + 32) + 456) filePath:v4];
      }
    }
  }
}

void sub_1000B95B8(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchSiriLocale];
  v3 = [CSUtils supportsMphForLanguageCode:v2];
  v4 = CSLogCategoryVT;
  v5 = os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 40);
      v8 = 136315650;
      v9 = "[CSVoiceTriggerSecondPass setSupportsMultiPhraseDetection:]_block_invoke";
      v10 = 2112;
      v11 = v2;
      v12 = 1024;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s User choose multiphrase detection for locale %@? : %d", &v8, 0x1Cu);
    }

    v7 = *(a1 + 40);
  }

  else
  {
    if (v5)
    {
      v8 = 136315395;
      v9 = "[CSVoiceTriggerSecondPass setSupportsMultiPhraseDetection:]_block_invoke";
      v10 = 2113;
      v11 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Device or locale(%{private}@) is not capable of supporting multiphrase", &v8, 0x16u);
    }

    v7 = 0;
  }

  *(*(a1 + 32) + 15) = v7;
}

id sub_1000B9FBC(uint64_t a1)
{
  v2 = +[CSFPreferences sharedPreferences];
  *(*(a1 + 32) + 8) = [v2 smartSiriVolumeContextAwareEnabled];

  v3 = [NSUserDefaults alloc];
  v4 = [v3 initWithSuiteName:kCSPreferencesDomain];
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = v4;

  v7 = *(*(a1 + 32) + 16);

  return [v7 addObserver:? forKeyPath:? options:? context:?];
}

void sub_1000BA20C(uint64_t a1)
{
  if ([*(a1 + 32) isEqual:@"Adaptive Siri Volume Disabled"])
  {
    v2 = +[CSFPreferences sharedPreferences];
    *(*(a1 + 40) + 8) = [v2 smartSiriVolumeContextAwareEnabled];

    [*(a1 + 40) _didReceiveAutomaticVolumeToggled:*(*(a1 + 40) + 8)];
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 40) + 8);
      v5 = 136315394;
      v6 = "[CSAutomaticVolumeEnabledMonitor observeValueForKeyPath:ofObject:change:context:]_block_invoke";
      v7 = 1026;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Automatic Volume Toggled. Automatic Volume Enabled: %{public}d", &v5, 0x12u);
    }
  }
}

void sub_1000BA3AC(id a1)
{
  v1 = objc_alloc_init(CSAutomaticVolumeEnabledMonitor);
  v2 = qword_10029E248;
  qword_10029E248 = v1;
}

void sub_1000BA610(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) observers];
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
          [v7 intuitiveConvAudioCaptureMonitorDidStopAudioCapture:*(a1 + 32) stopStreamOption:*(a1 + 40) eventUUID:*(a1 + 48)];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1000BA850(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) observers];
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
          [v7 intuitiveConvAudioCaptureMonitor:*(a1 + 32) willStopAudioCaptureReason:*(a1 + 40)];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1000BAAB0(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) observers];
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
          [v7 intuitiveConvAudioCaptureMonitor:*(a1 + 32) didStartAudioCaptureSuccessfully:*(a1 + 48) option:*(*(a1 + 32) + 24) eventUUID:*(a1 + 40)];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1000BAD78(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [*(a1 + 32) observers];
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
          [v10 intuitiveConvAudioCaptureMonitor:*(a1 + 32) willStartAudioCaptureWithContext:*(a1 + 48) option:*(a1 + 40)];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

void sub_1000BB01C(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) observers];
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
          [v7 intuitiveConvAudioCaptureMonitor:*(a1 + 32) fetchedAudioStream:*(a1 + 40) successfully:*(a1 + 48)];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1000BB1DC(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

void sub_1000BB2C8(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

void sub_1000BB3F4(id a1)
{
  v1 = objc_alloc_init(CSIntuitiveConvAudioCaptureMonitor);
  v2 = qword_10029E258;
  qword_10029E258 = v1;
}

void sub_1000BB740(uint64_t a1)
{
  v2 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[CSVoiceTriggerFirstPassJarvisAP siriClientBehaviorMonitor:willStopStream:reason:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Siri Client will stop listening, resume FirstPassJarvisAP listen", &v3, 0xCu);
  }

  *(*(a1 + 32) + 9) = 0;
}

id sub_1000BB86C(uint64_t a1)
{
  v2 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSVoiceTriggerFirstPassJarvisAP siriClientBehaviorMonitor:didStopStream:withEventUUID:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Siri Client stops listening now, FirstPassJarvisAP can listen now", &v4, 0xCu);
  }

  *(*(a1 + 32) + 9) = 0;
  return [*(a1 + 32) _reset];
}

void sub_1000BBA84(uint64_t a1)
{
  v2 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[CSVoiceTriggerFirstPassJarvisAP siriClientBehaviorMonitor:didStartStreamWithContext:successfully:option:withEventUUID:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Siri Client starts listening now, FirstPassJarvisAP shouldn't listen now", &v3, 0xCu);
  }

  *(*(a1 + 32) + 9) = 1;
}

void *sub_1000BBBB4(void *result)
{
  v1 = result[4];
  v2 = *(result + 40);
  if (*(v1 + 8) != v2)
  {
    *(v1 + 8) = v2;
    v3 = result[4];
    if (v3[8] == 1)
    {
      return [v3 _startListenWithCompletion:0];
    }

    else
    {
      return [v3 _stopListening];
    }
  }

  return result;
}

void sub_1000BC59C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000BC5C8(uint64_t a1, void *a2, void *a3)
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
    block[2] = sub_1000BC6B8;
    block[3] = &unk_1002522C8;
    objc_copyWeak(&v13, (a1 + 32));
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);

    objc_destroyWeak(&v13);
  }
}

void sub_1000BC6B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  v4 = WeakRetained;
  v5 = [v4 deviceId];
  [v4 _handleSecondPassResult:v3 deviceId:v5 error:*(a1 + 40)];

  v6 = objc_loadWeakRetained((a1 + 48));
  [v6 _teardownSecondPass];
}

uint64_t sub_1000BC7E8(uint64_t result)
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

void sub_1000BC8FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[4])
  {
    if ([v2 _shouldProcessAudio])
    {
      v9 = [*(*(a1 + 32) + 40) getBestAnalyzedResultsFromAudioChunk:*(a1 + 40)];
      [*(a1 + 32) _keywordAnalyzerNDAPI:*(*(a1 + 32) + 40) hasResultAvailable:v9 forChannel:{objc_msgSend(*(*(a1 + 32) + 40), "activeChannel")}];
    }

    else
    {
      v4 = qword_10029E268;
      if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * qword_10029E268, 1) <= 0x1999999999999999uLL)
      {
        v5 = CSLogCategoryVT;
        if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(a1 + 32);
          v7 = v6[9];
          v8 = v6[10];
          LODWORD(v6) = v6[8];
          *buf = 136315906;
          v11 = "[CSVoiceTriggerFirstPassJarvisAP audioStreamProvider:audioBufferAvailable:]_block_invoke";
          v12 = 1024;
          v13 = v7;
          v14 = 1024;
          v15 = v8;
          v16 = 1024;
          v17 = v6;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Bypass audio here because isSecondPassRunning = %d, isSiriClientListening = %d, _isAPJarvisFirstPassEnabled = %d", buf, 0x1Eu);
          v4 = qword_10029E268;
        }
      }

      qword_10029E268 = v4 + 1;
    }
  }

  else
  {
    v3 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[CSVoiceTriggerFirstPassJarvisAP audioStreamProvider:audioBufferAvailable:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Could not find Assets. Cannot process Audio", buf, 0xCu);
    }
  }
}

id sub_1000BCB6C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  objc_autoreleasePoolPop(v2);
  v5 = *(a1 + 32);

  return [v5 _cancelLastAudioStreamHold];
}

void sub_1000BCCF8(uint64_t a1)
{
  v2 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSVoiceTriggerFirstPassJarvisAP _stopListening]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Scheduled stopAudioStream after waiting for recordingWillStartGroup", &v4, 0xCu);
  }

  v3 = [*(a1 + 32) audioStream];
  [v3 stopAudioStreamWithOption:0 completion:&stru_100250958];
}

void sub_1000BCDC8(id a1, BOOL a2, NSError *a3)
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
      v8 = "[CSVoiceTriggerFirstPassJarvisAP _stopListening]_block_invoke";
      v9 = 2114;
      v10 = v6;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Cannot stop listening : %{public}@", &v7, 0x16u);
    }
  }
}

uint64_t sub_1000BD3EC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000BD404(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 24);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000BD4C4;
  v10[3] = &unk_100253248;
  v10[4] = v7;
  v13 = a2;
  v11 = v5;
  v12 = v6;
  v9 = v5;
  dispatch_async(v8, v10);
}