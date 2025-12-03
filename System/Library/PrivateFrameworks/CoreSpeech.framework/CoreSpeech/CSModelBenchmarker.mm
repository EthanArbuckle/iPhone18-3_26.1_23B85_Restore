@interface CSModelBenchmarker
- (BOOL)_setupAudioInjectionEngineWithAudioURL:(id)l;
- (CSModelBenchmarker)init;
- (void)_onDeviceCompilationWithConfigFile:(id)file locale:(id)locale modelType:(int64_t)type;
- (void)audioEngineBufferAvailable:(id)available audioStreamHandleId:(unint64_t)id buffer:(id)buffer remoteVAD:(id)d atTime:(unint64_t)time isFileLoadedBuffer:(BOOL)loadedBuffer;
- (void)audioEngineDidStopRecord:(id)record audioStreamHandleId:(unint64_t)id reason:(unint64_t)reason;
- (void)benchmarkOnDeviceCompilationCleanup:(id)cleanup;
- (void)pingpong:(id)pingpong completion:(id)completion;
- (void)reset;
- (void)runAudioInjectionOnly:(id)only completion:(id)completion;
- (void)runLstmPhsModelWithConfig:(id)config withUrl:(id)url withConfigRoot:(id)root completion:(id)completion;
- (void)runNCModelWithConfig:(id)config completion:(id)completion;
- (void)runNovDetectorWithConfig:(id)config configRoot:(id)root withUrl:(id)url completion:(id)completion;
- (void)runODLDModelWithConfig:(id)config locale:(id)locale inputText:(id)text completion:(id)completion;
- (void)runOSDAnalyzerWithConfig:(id)config withUrl:(id)url completion:(id)completion;
- (void)runVTSecondPassModelWithConfig:(id)config locale:(id)locale withUrl:(id)url completion:(id)completion;
- (void)setAllProcessorsAsNil;
@end

@implementation CSModelBenchmarker

- (BOOL)_setupAudioInjectionEngineWithAudioURL:(id)l
{
  audioInjectionEngine = self->_audioInjectionEngine;
  lCopy = l;
  +[CSFAudioStreamBasicDescriptionFactory lpcmMonoInterleavedASBD];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008298C;
  v8[3] = &unk_10024FDE8;
  v8[4] = self;
  v6 = [(CSFileAudioInjectionEngine *)audioInjectionEngine injectAudio:lCopy withScaleFactor:v9 outASBD:&stru_10024FDC0 playbackStarted:v8 completion:COERCE_DOUBLE(COERCE_UNSIGNED_INT(1.0))];

  if (v6)
  {
    [(CSFileAudioInjectionEngine *)self->_audioInjectionEngine setDelegate:self];
    [(CSFileAudioInjectionEngine *)self->_audioInjectionEngine start];
    [(CSFileAudioInjectionEngine *)self->_audioInjectionEngine startAudioStreamWithOption:0 withOutError:0];
  }

  return v6;
}

- (void)_onDeviceCompilationWithConfigFile:(id)file locale:(id)locale modelType:(int64_t)type
{
  fileCopy = file;
  localeCopy = locale;
  v10 = [CSOnDeviceCompilationUtils readMilFilePathFromConfig:fileCopy modelType:type];
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
      v22 = fileCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s No Valid backend for compilation is found for model file: %@ from config: %@", buf, 0x20u);
    }

    goto LABEL_6;
  }

  v12 = +[CSOnDeviceCompilationHandler sharedHandler];
  tempCacheDirectoryForMil2Bnns = self->_tempCacheDirectoryForMil2Bnns;
  v16 = 0;
  [v12 compileUsingConfig:fileCopy locale:localeCopy compileDirectory:tempCacheDirectoryForMil2Bnns modelType:type errOut:&v16];
  v14 = v16;

LABEL_7:
}

- (void)audioEngineDidStopRecord:(id)record audioStreamHandleId:(unint64_t)id reason:(unint64_t)reason
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100082D60;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)audioEngineBufferAvailable:(id)available audioStreamHandleId:(unint64_t)id buffer:(id)buffer remoteVAD:(id)d atTime:(unint64_t)time isFileLoadedBuffer:(BOOL)loadedBuffer
{
  bufferCopy = buffer;
  queue = self->_queue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000831D8;
  v12[3] = &unk_100253C48;
  v13 = bufferCopy;
  selfCopy = self;
  v11 = bufferCopy;
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

- (void)benchmarkOnDeviceCompilationCleanup:(id)cleanup
{
  cleanupCopy = cleanup;
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

  cleanupCopy[2](cleanupCopy, v7);
}

- (void)runAudioInjectionOnly:(id)only completion:(id)completion
{
  onlyCopy = only;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008373C;
  block[3] = &unk_1002533A0;
  v12 = onlyCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = onlyCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

- (void)runNovDetectorWithConfig:(id)config configRoot:(id)root withUrl:(id)url completion:(id)completion
{
  configCopy = config;
  rootCopy = root;
  urlCopy = url;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008398C;
  block[3] = &unk_10024FD80;
  v22 = urlCopy;
  v23 = completionCopy;
  block[4] = self;
  v20 = configCopy;
  v21 = rootCopy;
  v15 = urlCopy;
  v16 = rootCopy;
  v17 = configCopy;
  v18 = completionCopy;
  dispatch_async(queue, block);
}

- (void)runNCModelWithConfig:(id)config completion:(id)completion
{
  configCopy = config;
  completionCopy = completion;
  [(CSModelBenchmarker *)self _onDeviceCompilationWithConfigFile:configCopy locale:@"agnosticLocale" modelType:3];
  v25 = 0;
  v23 = configCopy;
  v8 = [[SLUresMitigator alloc] initWithConfig:configCopy error:&v25];
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
    localizedDescription = [v9 localizedDescription];
    v37 = localizedDescription;
    v12 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v13 = [NSError errorWithDomain:CSErrorDomain code:2001 userInfo:v12];
    completionCopy[2](completionCopy, v13);
  }

  else
  {
    localizedDescription = [[SLUresMitigatorIpFeats alloc] initWithDefaults];
    [localizedDescription setSpeechPackage:0];
    [localizedDescription setInputOrigin:&off_10025E150];
    [localizedDescription setAcousticFTMScores:&off_10025E150];
    [localizedDescription setBoronScore:&off_10025E150];
    [localizedDescription setSpeakerIDScore:&off_10025E138];
    [localizedDescription setDidDetectAttention:1];
    [localizedDescription setDidDetectAttention:1];
    [localizedDescription setDidDetectGazeAtOrb:1];
    [localizedDescription setDidDetectVisualActivity:1];
    [localizedDescription setIsAirpodsConnected:0];
    [localizedDescription setTimeSinceLastQuery:1.0];
    [localizedDescription setDecisionStage:1];
    [localizedDescription setPrevStageOutput:0];
    [localizedDescription setEosLikelihood:0];
    [localizedDescription setNldaScore:&off_10025E998];
    [localizedDescription setLrnnScore:&off_10025E998];
    [localizedDescription setLrnnThreshold:&off_10025E9A8];
    [localizedDescription setEmbeddingScore:&off_10025E9A8];
    [localizedDescription setExternalLrnnScale:&off_10025E138];
    [localizedDescription setExternalLrnnOffset:&off_10025E150];
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
    [v8 processInputFeats:localizedDescription completion:v24];
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
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0);
      }
    }

    else
    {
      [(CSModelBenchmarker *)self reset];
      v21 = [NSError errorWithDomain:CSErrorDomain code:2002 userInfo:0];
      completionCopy[2](completionCopy, v21);
    }

    _Block_object_dispose(buf, 8);
  }
}

- (void)runODLDModelWithConfig:(id)config locale:(id)locale inputText:(id)text completion:(id)completion
{
  configCopy = config;
  textCopy = text;
  completionCopy = completion;
  queue = self->_queue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000842FC;
  v16[3] = &unk_100252E58;
  v16[4] = self;
  v17 = configCopy;
  v18 = textCopy;
  v19 = completionCopy;
  v13 = textCopy;
  v14 = completionCopy;
  v15 = configCopy;
  dispatch_async(queue, v16);
}

- (void)runOSDAnalyzerWithConfig:(id)config withUrl:(id)url completion:(id)completion
{
  configCopy = config;
  urlCopy = url;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100084720;
  v15[3] = &unk_100252E58;
  v15[4] = self;
  v16 = configCopy;
  v17 = urlCopy;
  v18 = completionCopy;
  v12 = urlCopy;
  v13 = completionCopy;
  v14 = configCopy;
  dispatch_async(queue, v15);
}

- (void)runVTSecondPassModelWithConfig:(id)config locale:(id)locale withUrl:(id)url completion:(id)completion
{
  configCopy = config;
  localeCopy = locale;
  urlCopy = url;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100084A44;
  block[3] = &unk_10024FD80;
  block[4] = self;
  v20 = configCopy;
  v22 = urlCopy;
  v23 = completionCopy;
  v21 = localeCopy;
  v15 = urlCopy;
  v16 = completionCopy;
  v17 = localeCopy;
  v18 = configCopy;
  dispatch_async(queue, block);
}

- (void)runLstmPhsModelWithConfig:(id)config withUrl:(id)url withConfigRoot:(id)root completion:(id)completion
{
  configCopy = config;
  urlCopy = url;
  rootCopy = root;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100084E20;
  block[3] = &unk_10024FD80;
  block[4] = self;
  v20 = configCopy;
  v22 = urlCopy;
  v23 = completionCopy;
  v21 = rootCopy;
  v15 = urlCopy;
  v16 = completionCopy;
  v17 = rootCopy;
  v18 = configCopy;
  dispatch_async(queue, block);
}

- (void)pingpong:(id)pingpong completion:(id)completion
{
  pingpongCopy = pingpong;
  completionCopy = completion;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[CSModelBenchmarker pingpong:completion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s ", &v9, 0xCu);
  }

  if (completionCopy)
  {
    v8 = [pingpongCopy copy];
    completionCopy[2](completionCopy, v8);
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
    getOnDeviceCompilationCacheDirectoryForBenchmark = [v5 getOnDeviceCompilationCacheDirectoryForBenchmark];
    tempCacheDirectoryForMil2Bnns = v2->_tempCacheDirectoryForMil2Bnns;
    v2->_tempCacheDirectoryForMil2Bnns = getOnDeviceCompilationCacheDirectoryForBenchmark;

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