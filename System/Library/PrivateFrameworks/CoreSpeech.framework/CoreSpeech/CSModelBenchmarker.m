@interface CSModelBenchmarker
- (BOOL)_setupAudioInjectionEngineWithAudioURL:(id)a3;
- (CSModelBenchmarker)init;
- (void)_onDeviceCompilationWithConfigFile:(id)a3 locale:(id)a4 modelType:(int64_t)a5;
- (void)audioEngineBufferAvailable:(id)a3 audioStreamHandleId:(unint64_t)a4 buffer:(id)a5 remoteVAD:(id)a6 atTime:(unint64_t)a7 isFileLoadedBuffer:(BOOL)a8;
- (void)audioEngineDidStopRecord:(id)a3 audioStreamHandleId:(unint64_t)a4 reason:(unint64_t)a5;
- (void)benchmarkOnDeviceCompilationCleanup:(id)a3;
- (void)pingpong:(id)a3 completion:(id)a4;
- (void)reset;
- (void)runAudioInjectionOnly:(id)a3 completion:(id)a4;
- (void)runLstmPhsModelWithConfig:(id)a3 withUrl:(id)a4 withConfigRoot:(id)a5 completion:(id)a6;
- (void)runNCModelWithConfig:(id)a3 completion:(id)a4;
- (void)runNovDetectorWithConfig:(id)a3 configRoot:(id)a4 withUrl:(id)a5 completion:(id)a6;
- (void)runODLDModelWithConfig:(id)a3 locale:(id)a4 inputText:(id)a5 completion:(id)a6;
- (void)runOSDAnalyzerWithConfig:(id)a3 withUrl:(id)a4 completion:(id)a5;
- (void)runVTSecondPassModelWithConfig:(id)a3 locale:(id)a4 withUrl:(id)a5 completion:(id)a6;
- (void)setAllProcessorsAsNil;
@end

@implementation CSModelBenchmarker

- (BOOL)_setupAudioInjectionEngineWithAudioURL:(id)a3
{
  audioInjectionEngine = self->_audioInjectionEngine;
  v5 = a3;
  +[CSFAudioStreamBasicDescriptionFactory lpcmMonoInterleavedASBD];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008298C;
  v8[3] = &unk_10024FDE8;
  v8[4] = self;
  v6 = [(CSFileAudioInjectionEngine *)audioInjectionEngine injectAudio:v5 withScaleFactor:v9 outASBD:&stru_10024FDC0 playbackStarted:v8 completion:COERCE_DOUBLE(COERCE_UNSIGNED_INT(1.0))];

  if (v6)
  {
    [(CSFileAudioInjectionEngine *)self->_audioInjectionEngine setDelegate:self];
    [(CSFileAudioInjectionEngine *)self->_audioInjectionEngine start];
    [(CSFileAudioInjectionEngine *)self->_audioInjectionEngine startAudioStreamWithOption:0 withOutError:0];
  }

  return v6;
}

- (void)_onDeviceCompilationWithConfigFile:(id)a3 locale:(id)a4 modelType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [CSOnDeviceCompilationUtils readMilFilePathFromConfig:v8 modelType:a5];
  v11 = [CSOnDeviceCompilationUtils getBackendTypeFromModelFile:v10];
  if (v11 == 2)
  {
LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  if (v11 != 1)
  {
    v15 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v18 = "[CSModelBenchmarker _onDeviceCompilationWithConfigFile:locale:modelType:]";
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s No Valid backend for compilation is found for model file: %@ from config: %@", buf, 0x20u);
    }

    goto LABEL_6;
  }

  v12 = +[CSOnDeviceCompilationHandler sharedHandler];
  tempCacheDirectoryForMil2Bnns = self->_tempCacheDirectoryForMil2Bnns;
  v16 = 0;
  [v12 compileUsingConfig:v8 locale:v9 compileDirectory:tempCacheDirectoryForMil2Bnns modelType:a5 errOut:&v16];
  v14 = v16;

LABEL_7:
}

- (void)audioEngineDidStopRecord:(id)a3 audioStreamHandleId:(unint64_t)a4 reason:(unint64_t)a5
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100082D60;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)audioEngineBufferAvailable:(id)a3 audioStreamHandleId:(unint64_t)a4 buffer:(id)a5 remoteVAD:(id)a6 atTime:(unint64_t)a7 isFileLoadedBuffer:(BOOL)a8
{
  v9 = a5;
  queue = self->_queue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000831D8;
  v12[3] = &unk_100253C48;
  v13 = v9;
  v14 = self;
  v11 = v9;
  dispatch_async(queue, v12);
}

- (void)setAllProcessorsAsNil
{
  psrAudioProcessor = self->_psrAudioProcessor;
  self->_psrAudioProcessor = 0;

  vtSecondPassAnalyzer = self->_vtSecondPassAnalyzer;
  self->_vtSecondPassAnalyzer = 0;

  osdAnalyzer = self->_osdAnalyzer;
  self->_osdAnalyzer = 0;

  odldModelAnalyzer = self->_odldModelAnalyzer;
  self->_odldModelAnalyzer = 0;

  audioInjectionEngine = self->_audioInjectionEngine;
  self->_audioInjectionEngine = 0;

  if (self->_novDetectAnalyzer)
  {
    nd_close();
    self->_novDetectAnalyzer = 0;
  }
}

- (void)reset
{
  [(CSModelBenchmarker *)self setAllProcessorsAsNil];
  completion = self->_completion;
  self->_completion = 0;

  self->_allFramesInferenceLatency = 0;
  self->_inferenceTimeSpan = 0;
}

- (void)benchmarkOnDeviceCompilationCleanup:(id)a3
{
  v4 = a3;
  v5 = +[NSFileManager defaultManager];
  tempCacheDirectoryForMil2Bnns = self->_tempCacheDirectoryForMil2Bnns;
  v10 = 0;
  [v5 removeItemAtPath:tempCacheDirectoryForMil2Bnns error:&v10];
  v7 = v10;

  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_tempCacheDirectoryForMil2Bnns;
    *buf = 136315650;
    v12 = "[CSModelBenchmarker benchmarkOnDeviceCompilationCleanup:]";
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s clean up benchmark cached bnnsir directory: %@ with error: %@", buf, 0x20u);
  }

  v4[2](v4, v7);
}

- (void)runAudioInjectionOnly:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008373C;
  block[3] = &unk_1002533A0;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

- (void)runNovDetectorWithConfig:(id)a3 configRoot:(id)a4 withUrl:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008398C;
  block[3] = &unk_10024FD80;
  v22 = v12;
  v23 = v13;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = v13;
  dispatch_async(queue, block);
}

- (void)runNCModelWithConfig:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(CSModelBenchmarker *)self _onDeviceCompilationWithConfigFile:v6 locale:@"agnosticLocale" modelType:3];
  v25 = 0;
  v23 = v6;
  v8 = [[SLUresMitigator alloc] initWithConfig:v6 error:&v25];
  v9 = v25;
  if (v9)
  {
    [(CSModelBenchmarker *)self reset];
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[CSModelBenchmarker runNCModelWithConfig:completion:]";
      *&buf[12] = 2112;
      *&buf[14] = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s model init error: %@", buf, 0x16u);
    }

    v36 = @"reason";
    v11 = [v9 localizedDescription];
    v37 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v13 = [NSError errorWithDomain:CSErrorDomain code:2001 userInfo:v12];
    v7[2](v7, v13);
  }

  else
  {
    v11 = [[SLUresMitigatorIpFeats alloc] initWithDefaults];
    [v11 setSpeechPackage:0];
    [v11 setInputOrigin:&off_10025E150];
    [v11 setAcousticFTMScores:&off_10025E150];
    [v11 setBoronScore:&off_10025E150];
    [v11 setSpeakerIDScore:&off_10025E138];
    [v11 setDidDetectAttention:1];
    [v11 setDidDetectAttention:1];
    [v11 setDidDetectGazeAtOrb:1];
    [v11 setDidDetectVisualActivity:1];
    [v11 setIsAirpodsConnected:0];
    [v11 setTimeSinceLastQuery:1.0];
    [v11 setDecisionStage:1];
    [v11 setPrevStageOutput:0];
    [v11 setEosLikelihood:0];
    [v11 setNldaScore:&off_10025E998];
    [v11 setLrnnScore:&off_10025E998];
    [v11 setLrnnThreshold:&off_10025E9A8];
    [v11 setEmbeddingScore:&off_10025E9A8];
    [v11 setExternalLrnnScale:&off_10025E138];
    [v11 setExternalLrnnOffset:&off_10025E150];
    v22 = mach_absolute_time();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v33 = sub_1000841E4;
    v34 = sub_1000841F4;
    v35 = 0;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000841FC;
    v24[3] = &unk_10024FD58;
    v24[4] = buf;
    [v8 processInputFeats:v11 completion:v24];
    v14 = mach_absolute_time();
    v15 = os_signpost_id_generate(CSLogContextFacilityCoreSpeech);
    v16 = CSLogContextFacilityCoreSpeech;
    v17 = v16;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *v26 = 134349570;
      v27 = v22;
      v28 = 2080;
      v29 = "SiriX";
      v30 = 2080;
      v31 = "enableTelemetry=YES";
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "allFramesProcessingLatency", "%{public, signpost.description:begin_time}llu, %s %s", v26, 0x20u);
    }

    self->_allFramesInferenceLatency += v14 - v22;
    v18 = CSLogContextFacilityCoreSpeech;
    v19 = v18;
    if (v15 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v18))
    {
      v20 = self->_allFramesInferenceLatency + v22;
      *v26 = 134349570;
      v27 = v20;
      v28 = 2080;
      v29 = "SiriX";
      v30 = 2080;
      v31 = "enableTelemetry=YES";
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, v15, "allFramesProcessingLatency", "%{public, signpost.description:end_time}llu, %s %s", v26, 0x20u);
    }

    if (*(*&buf[8] + 40))
    {
      [(CSModelBenchmarker *)self reset];
      if (v7)
      {
        v7[2](v7, 0);
      }
    }

    else
    {
      [(CSModelBenchmarker *)self reset];
      v21 = [NSError errorWithDomain:CSErrorDomain code:2002 userInfo:0];
      v7[2](v7, v21);
    }

    _Block_object_dispose(buf, 8);
  }
}

- (void)runODLDModelWithConfig:(id)a3 locale:(id)a4 inputText:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  queue = self->_queue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000842FC;
  v16[3] = &unk_100252E58;
  v16[4] = self;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v13 = v10;
  v14 = v11;
  v15 = v9;
  dispatch_async(queue, v16);
}

- (void)runOSDAnalyzerWithConfig:(id)a3 withUrl:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100084720;
  v15[3] = &unk_100252E58;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)runVTSecondPassModelWithConfig:(id)a3 locale:(id)a4 withUrl:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100084A44;
  block[3] = &unk_10024FD80;
  block[4] = self;
  v20 = v10;
  v22 = v12;
  v23 = v13;
  v21 = v11;
  v15 = v12;
  v16 = v13;
  v17 = v11;
  v18 = v10;
  dispatch_async(queue, block);
}

- (void)runLstmPhsModelWithConfig:(id)a3 withUrl:(id)a4 withConfigRoot:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100084E20;
  block[3] = &unk_10024FD80;
  block[4] = self;
  v20 = v10;
  v22 = v11;
  v23 = v13;
  v21 = v12;
  v15 = v11;
  v16 = v13;
  v17 = v12;
  v18 = v10;
  dispatch_async(queue, block);
}

- (void)pingpong:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[CSModelBenchmarker pingpong:completion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s ", &v9, 0xCu);
  }

  if (v6)
  {
    v8 = [v5 copy];
    v6[2](v6, v8);
  }
}

- (CSModelBenchmarker)init
{
  v10.receiver = self;
  v10.super_class = CSModelBenchmarker;
  v2 = [(CSModelBenchmarker *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSBenchMarker Queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v2->_totalNumberSamples = 0;
    v2->_inferenceTimeSpan = 0;
    v5 = +[CSFPreferences sharedPreferences];
    v6 = [v5 getOnDeviceCompilationCacheDirectoryForBenchmark];
    tempCacheDirectoryForMil2Bnns = v2->_tempCacheDirectoryForMil2Bnns;
    v2->_tempCacheDirectoryForMil2Bnns = v6;

    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "[CSModelBenchmarker init]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s CSBenchmarker init", buf, 0xCu);
    }
  }

  return v2;
}

@end