@interface REPHASESoundEvent
+ (void)controllerWithEngine:(id)engine streamUUID:(id)d mixerDefinition:(id)definition source:(id)source listener:(id)listener normalizationMode:(int)mode targetLUFS:(double)s calibrationMode:(int)self0 calibrationLevel:(double)self1 callback:(id)self2;
+ (void)eventWithEngine:(id)engine streamUUID:(id)d maximumFramesToRender:(unsigned int)render audioFormat:(id)format audioUnit:(id)unit renderBlock:(id)block mixerDefinition:(id)definition source:(id)self0 listener:(id)self1 group:(id)self2 normalizationMode:(int)self3 calibrationMode:(int)self4 calibrationLevel:(double)self5 audioSession:(id)self6 phaseQueue:(id)self7 callback:(id)self8;
+ (void)eventWithEngine:(id)engine streamUUID:(id)d mixerDefinition:(id)definition source:(id)source listener:(id)listener normalizationMode:(int)mode targetLUFS:(double)s calibrationMode:(int)self0 calibrationLevel:(double)self1 audioSession:(id)self2 phaseQueue:(id)self3 callback:(id)self4;
- (BOOL)_pause;
- (BOOL)_resume;
- (BOOL)_seekToTime:(double)time;
- (BOOL)_start;
- (BOOL)_stopAndDestroy;
- (BOOL)_stopAndRePrepare;
- (BOOL)changeFromExpectedState:(unint64_t)state toState:(unint64_t)toState;
- (BOOL)seekToTime:(double)time;
- (REPHASESoundEvent)initWithEngine:(id)engine soundEventAsset:(id)asset source:(id)source listener:(id)listener mixerParameters:(id)parameters audioSession:(id)session phaseQueue:(id)queue outError:(id *)self0;
- (REPHASESoundEvent)initWithEngine:(id)engine source:(id)source listener:(id)listener audioSession:(id)session phaseQueue:(id)queue;
- (REPHASESoundEvent)initWithEngine:(id)engine sources:(vector<PHASESource *) listener:(std:(id)listener :(id)a6 allocator<PHASESource *>> *)a4 audioSession:(id)session phaseQueue:;
- (REPHASESoundEvent)initWithSoundEventFactory:(id)factory phaseQueue:(id)queue;
- (REPHASESoundEventObserver)observer;
- (double)sourcePose;
- (id).cxx_construct;
- (id)description;
- (id)initSyncGroupWithEngine:(id)engine rootNode:(id)node assetIdentifier:(id)identifier listener:(id)listener mixerParameters:(id)parameters audioSession:(id)session phaseQueue:(id)queue sources:(vector<PHASESource *) outError:(std:(id *)self1 :allocator<PHASESource *>> *)self0;
- (id)mixer;
- (id)paramForKey:(id)key;
- (shared_ptr<re::audio::REPHASESoundPrepareState>)prepareState;
- (unint64_t)changeToState:(unint64_t)state;
- (vector<simd_float4x4,)sourcePoses;
- (void)_updateCommandQueue;
- (void)clearSoundEventEngine;
- (void)dealloc;
- (void)pause;
- (void)prepareWithCompletion:;
- (void)prepareWithCompletion:(id)completion;
- (void)resume;
- (void)setPrepareState:(shared_ptr<re::audio::REPHASESoundPrepareState>)state;
- (void)setPrepareStates:(unordered_map<unsigned long)long;
- (void)stopAndDestroy;
- (void)stopAndRePrepare;
- (void)stream:(id)stream didInvalidateWithError:(id)error;
- (void)updateCommandQueue;
@end

@implementation REPHASESoundEvent

- (REPHASESoundEvent)initWithSoundEventFactory:(id)factory phaseQueue:(id)queue
{
  factoryCopy = factory;
  queueCopy = queue;
  v8 = [(REPHASESoundEvent *)self initWithEngine:0 source:0 listener:0 audioSession:0 phaseQueue:queueCopy];
  if (v8)
  {
    v9 = factoryCopy[2](factoryCopy);
    soundEvent = v8->_soundEvent;
    v8->_soundEvent = v9;

    v11 = _Block_copy(factoryCopy);
    soundEventFactory = v8->_soundEventFactory;
    v8->_soundEventFactory = v11;
  }

  return v8;
}

- (REPHASESoundEvent)initWithEngine:(id)engine source:(id)source listener:(id)listener audioSession:(id)session phaseQueue:(id)queue
{
  engineCopy = engine;
  sourceCopy = source;
  listenerCopy = listener;
  sessionCopy = session;
  queueCopy = queue;
  v24.receiver = self;
  v24.super_class = REPHASESoundEvent;
  v17 = [(REPHASESoundEvent *)&v24 init];
  v18 = v17;
  if (v17)
  {
    atomic_store(0, &v17->_isStopping);
    soundEvent = v17->_soundEvent;
    v17->_soundEvent = 0;

    externalStreamController = v18->_externalStreamController;
    v18->_externalStreamController = 0;

    atomic_store(9uLL, &v18->_state.__a_.__a_value);
    objc_storeStrong(&v18->_engine, engine);
    objc_storeStrong(&v18->_source, source);
    objc_storeStrong(&v18->_listener, listener);
    objc_storeStrong(&v18->_audioSession, session);
    *&v18->_cachedPlaybackSpeed = vneg_f32(0x3F0000003FLL);
    v18->_cachedDirectSendLevel = NAN;
    v18->_soundEventPlayed = 0;
    re::audio::REPHASESoundPrepareState::create(v21);
  }

  return 0;
}

- (REPHASESoundEvent)initWithEngine:(id)engine sources:(vector<PHASESource *) listener:(std:(id)listener :(id)a6 allocator<PHASESource *>> *)a4 audioSession:(id)session phaseQueue:
{
  engineCopy = engine;
  listenerCopy = listener;
  v42 = a6;
  sessionCopy = session;
  v43.receiver = self;
  v43.super_class = REPHASESoundEvent;
  v15 = [(REPHASESoundEvent *)&v43 init];
  v16 = v15;
  if (v15)
  {
    atomic_store(0, &v15->_isStopping);
    soundEvent = v15->_soundEvent;
    v15->_soundEvent = 0;

    externalStreamController = v16->_externalStreamController;
    v16->_externalStreamController = 0;

    atomic_store(9uLL, &v16->_state.__a_.__a_value);
    objc_storeStrong(&v16->_engine, engine);
    p_begin = &v16->_sources.__begin_;
    if (&v16->_sources != a4)
    {
      begin = a4->__begin_;
      var0 = a4->var0;
      v22 = var0 - begin;
      var1 = v16->_sources.var1;
      v24 = v16->_sources.__begin_;
      if (var1 - v24 < (var0 - begin))
      {
        v25 = v22 >> 3;
        if (v24)
        {
          v26 = v16->_sources.var0;
          v27 = v16->_sources.__begin_;
          if (v26 != v24)
          {
            do
            {
              v28 = *--v26;
            }

            while (v26 != v24);
            v27 = *p_begin;
          }

          v16->_sources.var0 = v24;
          operator delete(v27);
          var1 = 0;
          *p_begin = 0;
          v16->_sources.var0 = 0;
          v16->_sources.var1 = 0;
        }

        if (!(v25 >> 61))
        {
          v29 = var1 >> 2;
          if (var1 >> 2 <= v25)
          {
            v29 = v25;
          }

          if (var1 >= 0x7FFFFFFFFFFFFFF8)
          {
            v30 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v30 = v29;
          }

          std::vector<PHASESource * {__strong}>::__vallocate[abi:ne200100](&v16->_sources, v30);
        }

        std::vector<PHASESource * {__strong}>::__throw_length_error[abi:ne200100]();
      }

      v31 = v16->_sources.var0 - v24;
      if (v31 >= v22)
      {
        v36 = std::__copy_impl::operator()[abi:ne200100]<PHASESource * {__strong}*,PHASESource * {__strong}*,PHASESource * {__strong}*>(begin, var0, v16->_sources.__begin_);
        for (i = v16->_sources.var0; i != v36; --i)
        {
          v38 = *(i - 1);
        }

        v16->_sources.var0 = v36;
      }

      else
      {
        v32 = (begin + v31);
        std::__copy_impl::operator()[abi:ne200100]<PHASESource * {__strong}*,PHASESource * {__strong}*,PHASESource * {__strong}*>(begin, (begin + v31), v24);
        v33 = v16->_sources.var0;
        if (v32 != var0)
        {
          v34 = v16->_sources.var0;
          do
          {
            v35 = *v32++;
            *v34++ = v35;
            ++v33;
          }

          while (v32 != var0);
        }

        v16->_sources.var0 = v33;
      }
    }

    objc_storeStrong(&v16->_listener, listener);
    objc_storeStrong(&v16->_audioSession, a6);
    *&v16->_cachedPlaybackSpeed = vneg_f32(0x3F0000003FLL);
    v16->_cachedDirectSendLevel = NAN;
    v16->_soundEventPlayed = 0;
    re::audio::REPHASESoundPrepareState::create(v39);
  }

  return 0;
}

- (REPHASESoundEvent)initWithEngine:(id)engine soundEventAsset:(id)asset source:(id)source listener:(id)listener mixerParameters:(id)parameters audioSession:(id)session phaseQueue:(id)queue outError:(id *)self0
{
  engineCopy = engine;
  assetCopy = asset;
  sourceCopy = source;
  listenerCopy = listener;
  parametersCopy = parameters;
  sessionCopy = session;
  queueCopy = queue;
  v22 = [(REPHASESoundEvent *)self initWithEngine:engineCopy source:sourceCopy listener:listenerCopy audioSession:sessionCopy phaseQueue:queueCopy];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_mixerParameters, parameters);
    objc_storeStrong(&v23->_soundEventAsset, asset);
    v24 = objc_alloc(MEMORY[0x1E6978210]);
    identifier = [assetCopy identifier];
    v26 = [v24 initWithEngine:engineCopy assetIdentifier:identifier mixerParameters:parametersCopy error:error];
    soundEvent = v23->_soundEvent;
    v23->_soundEvent = v26;

    identifier2 = [assetCopy identifier];
    assetIdentifier = v23->_assetIdentifier;
    v23->_assetIdentifier = identifier2;

    soundEvent = [(REPHASESoundEvent *)v23 soundEvent];

    if (!soundEvent)
    {

      v23 = 0;
    }
  }

  return v23;
}

- (id)initSyncGroupWithEngine:(id)engine rootNode:(id)node assetIdentifier:(id)identifier listener:(id)listener mixerParameters:(id)parameters audioSession:(id)session phaseQueue:(id)queue sources:(vector<PHASESource *) outError:(std:(id *)self1 :allocator<PHASESource *>> *)self0
{
  engineCopy = engine;
  identifierCopy = identifier;
  listenerCopy = listener;
  parametersCopy = parameters;
  sessionCopy = session;
  queueCopy = queue;
  memset(v27, 0, sizeof(v27));
  std::vector<PHASESource * {__strong}>::__init_with_size[abi:ne200100]<PHASESource * {__strong}*,PHASESource * {__strong}*>(v27, a10->__begin_, a10->var0, a10->var0 - a10->__begin_);
  v22 = [(REPHASESoundEvent *)self initWithEngine:engineCopy sources:v27 listener:listenerCopy audioSession:sessionCopy phaseQueue:queueCopy];
  v28 = v27;
  std::vector<PHASESource * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v28);
  if (v22)
  {
    objc_storeStrong(&v22->_mixerParameters, parameters);
    v23 = [objc_alloc(MEMORY[0x1E6978210]) initWithEngine:v22->_engine assetIdentifier:identifierCopy mixerParameters:parametersCopy error:error];
    soundEvent = v22->_soundEvent;
    v22->_soundEvent = v23;

    objc_storeStrong(&v22->_assetIdentifier, identifier);
    v22->_isGroupPlaybackEvent = 1;
    soundEvent = [(REPHASESoundEvent *)v22 soundEvent];

    if (!soundEvent)
    {

      v22 = 0;
    }
  }

  return v22;
}

+ (void)controllerWithEngine:(id)engine streamUUID:(id)d mixerDefinition:(id)definition source:(id)source listener:(id)listener normalizationMode:(int)mode targetLUFS:(double)s calibrationMode:(int)self0 calibrationLevel:(double)self1 callback:(id)self2
{
  engineCopy = engine;
  dCopy = d;
  definitionCopy = definition;
  sourceCopy = source;
  listenerCopy = listener;
  callbackCopy = callback;
  v24 = [objc_alloc(MEMORY[0x1E69781E0]) initWithValue:@"gain" minimum:1.0 maximum:0.0 identifier:4.0];
  v25 = objc_opt_respondsToSelector();
  if (v25)
  {
    v26 = MEMORY[0x1E69781A8];
    v27 = [MEMORY[0x1E696AD98] numberWithDouble:s];
    LOBYTE(v30) = mode == 1;
    [v26 controllerWithEngine:engineCopy streamUUID:dCopy gainMetaParameterDefinition:v24 mixerDefinition:definitionCopy source:sourceCopy listener:listenerCopy group:level normalize:0 targetLKFS:v30 calibrationMode:v27 level:calibrationMode callback:callbackCopy];
  }

  else
  {
    v28 = *re::audioLogObjects(v25);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_ERROR, "[RE/PHASE] [Prepare] PHASEExternalOutputStreamController does not support target LKFS", buf, 2u);
    }

    LOBYTE(v29) = mode == 1;
    [MEMORY[0x1E69781A8] controllerWithEngine:engineCopy streamUUID:dCopy gainMetaParameterDefinition:v24 mixerDefinition:definitionCopy source:sourceCopy listener:listenerCopy normalize:level calibrationMode:v29 level:calibrationMode callback:callbackCopy];
  }
}

+ (void)eventWithEngine:(id)engine streamUUID:(id)d mixerDefinition:(id)definition source:(id)source listener:(id)listener normalizationMode:(int)mode targetLUFS:(double)s calibrationMode:(int)self0 calibrationLevel:(double)self1 audioSession:(id)self2 phaseQueue:(id)self3 callback:(id)self4
{
  engineCopy = engine;
  dCopy = d;
  definitionCopy = definition;
  sourceCopy = source;
  listenerCopy = listener;
  sessionCopy = session;
  queueCopy = queue;
  callbackCopy = callback;
  v32 = sessionCopy;
  v26 = [[REPHASESoundEvent alloc] initWithEngine:engineCopy source:sourceCopy listener:listenerCopy audioSession:sessionCopy phaseQueue:queueCopy];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __175__REPHASESoundEvent_eventWithEngine_streamUUID_mixerDefinition_source_listener_normalizationMode_targetLUFS_calibrationMode_calibrationLevel_audioSession_phaseQueue_callback___block_invoke;
  aBlock[3] = &unk_1E871B698;
  v27 = v26;
  v36 = v27;
  v28 = callbackCopy;
  v37 = v28;
  v29 = _Block_copy(aBlock);
  LODWORD(v30) = calibrationMode;
  [REPHASESoundEvent controllerWithEngine:engineCopy streamUUID:dCopy mixerDefinition:definitionCopy source:sourceCopy listener:listenerCopy normalizationMode:mode targetLUFS:s calibrationMode:level calibrationLevel:v30 callback:v29];
}

void __175__REPHASESoundEvent_eventWithEngine_streamUUID_mixerDefinition_source_listener_normalizationMode_targetLUFS_calibrationMode_calibrationLevel_audioSession_phaseQueue_callback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = *re::audioLogObjects(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_debug_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEBUG, "PHASEExternalOutputStreamController created", v9, 2u);
  }

  [*(a1 + 32) setExternalStream:0];
  objc_storeStrong((*(a1 + 32) + 272), a2);
  (*(*(a1 + 40) + 16))();
}

+ (void)eventWithEngine:(id)engine streamUUID:(id)d maximumFramesToRender:(unsigned int)render audioFormat:(id)format audioUnit:(id)unit renderBlock:(id)block mixerDefinition:(id)definition source:(id)self0 listener:(id)self1 group:(id)self2 normalizationMode:(int)self3 calibrationMode:(int)self4 calibrationLevel:(double)self5 audioSession:(id)self6 phaseQueue:(id)self7 callback:(id)self8
{
  engineCopy = engine;
  d;
  format;
  unit;
  blockCopy = block;
  definition;
  sourceCopy = source;
  listenerCopy = listener;
  group;
  sessionCopy = session;
  queueCopy = queue;
  callback;
  [[REPHASESoundEvent alloc] initWithEngine:engineCopy source:sourceCopy listener:listenerCopy audioSession:sessionCopy phaseQueue:queueCopy];
  operator new();
}

uint64_t __226__REPHASESoundEvent_eventWithEngine_streamUUID_maximumFramesToRender_audioFormat_audioUnit_renderBlock_mixerDefinition_source_listener_group_normalizationMode_calibrationMode_calibrationLevel_audioSession_phaseQueue_callback___block_invoke(uint64_t a1, BOOL *a2)
{
  v4 = 0;
  result = (*(*(a1 + 32) + 16))();
  *a2 = (v4 & 0x10) != 0;
  return result;
}

void __226__REPHASESoundEvent_eventWithEngine_streamUUID_maximumFramesToRender_audioFormat_audioUnit_renderBlock_mixerDefinition_source_listener_group_normalizationMode_calibrationMode_calibrationLevel_audioSession_phaseQueue_callback___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
LABEL_6:
    if (v7)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v8 = *(a1 + 32);
  if (!v8)
  {
    v7 = 0;
    goto LABEL_11;
  }

  [v8 setMaximumFramesToRender:*(a1 + 72)];
  v9 = *(a1 + 32);
  v16 = 0;
  v10 = [v9 allocateRenderResourcesAndReturnError:&v16];
  v11 = v16;
  v7 = v11;
  if (v10)
  {
LABEL_11:
    [*(a1 + 40) setExternalStream:v5];
    [*(a1 + 40) setAudioUnit:*(a1 + 32)];
    [*(a1 + 40) setRenderBlock:*(a1 + 48)];
    goto LABEL_12;
  }

  v12 = *re::audioLogObjects(v11);
  v6 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
  if (!v6)
  {
    goto LABEL_6;
  }

  *buf = 138412290;
  v20 = v7;
  _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "[RE/PHASE] [Prepare] PHASEExternalOutputStream unable to allocate AU: %@", buf, 0xCu);
  if (!v7)
  {
LABEL_7:
    v13 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A578];
    v18 = @"unknown error";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v7 = [v13 errorWithDomain:@"com.apple.re.internal" code:-210 userInfo:v14];
  }

LABEL_8:
  v15 = *re::audioLogObjects(v6);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v20 = v7;
    _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "[RE/PHASE] [Prepare] PHASEExternalOutputStream failed creation %@", buf, 0xCu);
  }

LABEL_12:
  re::MultipleCallbackManager<REPHASESoundEvent>::complete(*(a1 + 56), v7);
}

void __226__REPHASESoundEvent_eventWithEngine_streamUUID_maximumFramesToRender_audioFormat_audioUnit_renderBlock_mixerDefinition_source_listener_group_normalizationMode_calibrationMode_calibrationLevel_audioSession_phaseQueue_callback___block_invoke_31(uint64_t a1, void *a2, void *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v6 || v7)
  {
    if (!v7)
    {
      v9 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A578];
      v15[0] = @"unknown error";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v8 = [v9 errorWithDomain:@"com.apple.re.internal" code:-210 userInfo:v10];
    }

    v11 = *re::audioLogObjects(v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "[RE/PHASE] [Prepare] PHASEExternalOutputStreamController failed creation %@", &v12, 0xCu);
    }
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 272), a2);
    v8 = 0;
  }

  re::MultipleCallbackManager<REPHASESoundEvent>::complete(*(a1 + 40), v8);
}

- (void)dealloc
{
  [(REPHASESoundEvent *)self stopAndDestroy];
  v3.receiver = self;
  v3.super_class = REPHASESoundEvent;
  [(REPHASESoundEvent *)&v3 dealloc];
}

- (void)stream:(id)stream didInvalidateWithError:(id)error
{
  v8 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = *re::audioLogObjects(errorCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = errorCopy;
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Could not create PHASEExternalOutputStream: %@", &v6, 0xCu);
  }
}

- (unint64_t)changeToState:(unint64_t)state
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = atomic_load(&self->_state.__a_.__a_value);
  v6 = v5;
  atomic_compare_exchange_strong(&self->_state, &v6, state);
  while (v6 != v5)
  {
    v5 = v6;
    atomic_compare_exchange_strong(&self->_state, &v6, state);
  }

  v7 = *re::audioLogObjects(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    re::audio::nameForPlaybackState(v5, v25);
    v19 = v26;
    v20 = v25[0];
    re::audio::nameForPlaybackState(state, __p);
    v21 = v25;
    if (v19 < 0)
    {
      v21 = v20;
    }

    if (v24 >= 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    *block = 138412802;
    *&block[4] = self;
    *&block[12] = 2080;
    *&block[14] = v21;
    *&block[22] = 2080;
    v28 = v22;
    _os_log_debug_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEBUG, "%@ changed state from %s to %s", block, 0x20u);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    if (v26 < 0)
    {
      operator delete(v25[0]);
    }
  }

  playbackStateChangeHandler = [(REPHASESoundEvent *)self playbackStateChangeHandler];
  if (playbackStateChangeHandler)
  {
    v9 = v5 == state;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;

  if (v10)
  {
    playbackStateChangeHandler2 = [(REPHASESoundEvent *)self playbackStateChangeHandler];
    playbackStateChangeHandler2[2](playbackStateChangeHandler2, v5, state);
  }

  if (state == 1 && ![(REPHASESoundEvent *)self soundEventPlayed])
  {
    Instance = re::AudioManagerTelemetryReporter::getInstance([(REPHASESoundEvent *)self setSoundEventPlayed:1]);
    *block = MEMORY[0x1E69E9820];
    *&block[8] = 3221225472;
    *&block[16] = ___ZN2re29AudioManagerTelemetryReporter22reportSoundEventPlayedEv_block_invoke;
    v28 = &__block_descriptor_40_e5_v8__0l;
    v29 = Instance;
    dispatch_async(re::AudioManagerTelemetryReporter::m_audioManagerTelemetryQueue, block);
    v14 = re::AudioManagerTelemetryReporter::getInstance(v13);
    ptr = self->_prepareState.__ptr_;
    v16 = *(ptr + 51);
    v17 = *(ptr + 26);
    *block = MEMORY[0x1E69E9820];
    *&block[8] = 3221225472;
    *&block[16] = ___ZN2re29AudioManagerTelemetryReporter31updateCalibrationModeStatisticsE22REAudioCalibrationModed_block_invoke;
    v28 = &__block_descriptor_52_e5_v8__0l;
    v29 = v14;
    v31 = v16;
    v30 = v17;
    dispatch_async(re::AudioManagerTelemetryReporter::m_audioManagerTelemetryQueue, block);
  }

  return v5;
}

- (BOOL)changeFromExpectedState:(unint64_t)state toState:(unint64_t)toState
{
  v33 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  atomic_compare_exchange_strong(&self->_state, &stateCopy, toState);
  v8 = stateCopy == state;
  playbackStateChangeHandler2 = *re::audioLogObjects(self);
  v10 = os_log_type_enabled(playbackStateChangeHandler2, OS_LOG_TYPE_DEBUG);
  if (!v8)
  {
    if (v10)
    {
      re::audio::nameForPlaybackState(stateCopy, v25);
      v19 = v26;
      v20 = v25[0];
      re::audio::nameForPlaybackState(toState, __p);
      v21 = v25;
      if (v19 < 0)
      {
        v21 = v20;
      }

      if (v24 >= 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = __p[0];
      }

      *buf = 138412802;
      selfCopy2 = self;
      v29 = 2080;
      v30 = v21;
      v31 = 2080;
      v32 = v22;
      _os_log_debug_impl(&dword_1E1C61000, playbackStateChangeHandler2, OS_LOG_TYPE_DEBUG, "%@ state was not changed from expected state %s to %s", buf, 0x20u);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      if (v26 < 0)
      {
        operator delete(v25[0]);
      }
    }

    goto LABEL_12;
  }

  if (v10)
  {
    re::audio::nameForPlaybackState(state, v25);
    v15 = v26;
    v16 = v25[0];
    re::audio::nameForPlaybackState(toState, __p);
    v17 = v25;
    if (v15 < 0)
    {
      v17 = v16;
    }

    if (v24 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    *buf = 138412802;
    selfCopy2 = self;
    v29 = 2080;
    v30 = v17;
    v31 = 2080;
    v32 = v18;
    _os_log_debug_impl(&dword_1E1C61000, playbackStateChangeHandler2, OS_LOG_TYPE_DEBUG, "%@ changed state from %s to %s", buf, 0x20u);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    if (v26 < 0)
    {
      operator delete(v25[0]);
    }
  }

  playbackStateChangeHandler = [(REPHASESoundEvent *)self playbackStateChangeHandler];
  v13 = state != toState && playbackStateChangeHandler != 0;

  if (v13)
  {
    playbackStateChangeHandler2 = [(REPHASESoundEvent *)self playbackStateChangeHandler];
    (playbackStateChangeHandler2[2].isa)(playbackStateChangeHandler2, state, toState);
LABEL_12:
  }

  return v8;
}

- (BOOL)_start
{
  v59 = *MEMORY[0x1E69E9840];
  if (*(self->_prepareState.__ptr_ + 200) == 1)
  {
    if (self->_isGroupPlaybackEvent)
    {
      sourcePoses = [(REPHASESoundEvent *)self sourcePoses];
      v5 = *location;
      v6 = *&location[8];
      if (*location == *&location[8])
      {
        goto LABEL_24;
      }

      *&v4 = 134218243;
      v47 = v4;
      do
      {
        v7 = *re::audioLogObjects(sourcePoses);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(self->_prepareState.__ptr_ + 3);
          re::audio::stringFromPose(v5, &__p);
          v9 = v53 >= 0 ? &__p : __p;
          buf = v47;
          *buf_4 = v8;
          *&buf_4[8] = 2085;
          *&buf_4[10] = v9;
          _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "[REPHASESoundEvent _start] starting event for token %llu, pose=%{sensitive}s", &buf, 0x16u);
          if (v53 < 0)
          {
            operator delete(__p);
          }
        }

        v5 = (v5 + 64);
      }

      while (v5 != v6);
      goto LABEL_23;
    }

    v16 = *re::audioLogObjects(self);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(self->_prepareState.__ptr_ + 3);
      [(REPHASESoundEvent *)self sourcePose];
      *location = v18;
      *&location[16] = v19;
      v55 = v20;
      v56 = v21;
      re::audio::stringFromPose(location, &__p);
      v22 = v53 >= 0 ? &__p : __p;
      buf = 134218243;
      *buf_4 = v17;
      *&buf_4[8] = 2085;
      *&buf_4[10] = v22;
      _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "[REPHASESoundEvent _start] starting event for token %llu, pose=%{sensitive}s", &buf, 0x16u);
      if (v53 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  if (!self->_isGroupPlaybackEvent)
  {
    v16 = *re::audioLogObjects(self);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(self->_prepareState.__ptr_ + 3);
      [(REPHASESoundEvent *)self sourcePose];
      *location = v24;
      *&location[16] = v25;
      v55 = v26;
      v56 = v27;
      re::audio::stringFromPose(location, &__p);
      v28 = v53 >= 0 ? &__p : __p;
      buf = 134218242;
      *buf_4 = v23;
      *&buf_4[8] = 2080;
      *&buf_4[10] = v28;
      _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "[REPHASESoundEvent _start] starting event for token %llu, pose=%s", &buf, 0x16u);
      if (v53 < 0)
      {
        operator delete(__p);
      }
    }

    goto LABEL_39;
  }

  sourcePoses2 = [(REPHASESoundEvent *)self sourcePoses];
  v5 = *location;
  v12 = *&location[8];
  if (*location == *&location[8])
  {
    goto LABEL_24;
  }

  *&v11 = 134218242;
  v47 = v11;
  do
  {
    v13 = *re::audioLogObjects(sourcePoses2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(self->_prepareState.__ptr_ + 3);
      re::audio::stringFromPose(v5, &__p);
      v15 = v53 >= 0 ? &__p : __p;
      buf = v47;
      *buf_4 = v14;
      *&buf_4[8] = 2080;
      *&buf_4[10] = v15;
      _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "[REPHASESoundEvent _start] starting event for token %llu, pose=%s", &buf, 0x16u);
      if (v53 < 0)
      {
        operator delete(__p);
      }
    }

    v5 = (v5 + 64);
  }

  while (v5 != v12);
LABEL_23:
  v5 = *location;
LABEL_24:
  if (v5)
  {
    *&location[8] = v5;
    operator delete(v5);
  }

LABEL_40:
  soundEvent = [(REPHASESoundEvent *)self soundEvent];
  v30 = soundEvent != 0;

  if (v30)
  {
    if (re::internal::enableSignposts(0, 0))
    {
      [(REPHASESoundEvent *)self prepareState];
      [(REPHASESoundEvent *)self prepareState];
      [(REPHASESoundEvent *)self prepareState];
      kdebug_trace();
      if (*&buf_4[4])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*&buf_4[4]);
      }

      if (v52)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v52);
      }

      if (*&location[8])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*&location[8]);
      }
    }

    objc_initWeak(location, self);
    soundEvent2 = [(REPHASESoundEvent *)self soundEvent];
    v32 = [soundEvent2 hash];

    soundEvent3 = [(REPHASESoundEvent *)self soundEvent];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __27__REPHASESoundEvent__start__block_invoke;
    v49[3] = &unk_1E871B738;
    objc_copyWeak(v50, location);
    v50[1] = v32;
    v49[4] = self;
    [soundEvent3 startWithCompletion:v49];

    objc_destroyWeak(v50);
    objc_destroyWeak(location);
  }

  externalStreamController = [(REPHASESoundEvent *)self externalStreamController];
  v35 = v30;
  if (externalStreamController)
  {

    externalStreamController2 = [(REPHASESoundEvent *)self externalStreamController];
    v48 = 0;
    v30 = [externalStreamController2 startAndReturnError:&v48];
    v37 = v48;

    if ((v30 & 1) == 0)
    {
      v39 = *re::audioLogObjects(v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *location = 138412546;
        *&location[4] = self;
        *&location[12] = 2112;
        *&location[14] = v37;
        _os_log_error_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_ERROR, "%@ start failed with %@", location, 0x16u);
      }
    }

    v35 = 1;
  }

  externalStream = [(REPHASESoundEvent *)self externalStream];
  if (externalStream)
  {

    if ((v35 ^ 1 | v30))
    {
      externalStream2 = [(REPHASESoundEvent *)self externalStream];
      [externalStream2 resume];

LABEL_58:
      if (self->_stationaryTime.__engaged_)
      {
        self->_stationaryTime.__engaged_ = 0;
      }

      [(REPHASESoundEvent *)self changeToState:1];
      observer = [(REPHASESoundEvent *)self observer];
      [(REPHASESoundEvent *)self prepareState];
      LODWORD(v43) = *(*location + 192);
      [observer soundDidStartOrResume:self withGain:v43];
      if (*&location[8])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*&location[8]);
      }

      LOBYTE(v44) = 1;
      return v44;
    }
  }

  else if ((v35 & v30) == 1)
  {
    goto LABEL_58;
  }

  v45 = *re::audioLogObjects(externalStream);
  v44 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
  if (v44)
  {
    *location = 138412290;
    *&location[4] = self;
    _os_log_error_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_ERROR, "Failed to start %@", location, 0xCu);
    LOBYTE(v44) = 0;
  }

  return v44;
}

void __27__REPHASESoundEvent__start__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *re::audioLogObjects(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v11 = v5;
      v12 = 2048;
      v13 = a2;
      _os_log_debug_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEBUG, "%@ received sound event completion callback with reason %ld", buf, 0x16u);
    }

    v7 = *(v5 + 29);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __27__REPHASESoundEvent__start__block_invoke_34;
    v8[3] = &unk_1E871B710;
    objc_copyWeak(v9, (a1 + 40));
    v9[1] = *(a1 + 48);
    v9[2] = a2;
    v8[4] = *(a1 + 32);
    dispatch_async(v7, v8);
    objc_destroyWeak(v9);
  }
}

void __27__REPHASESoundEvent__start__block_invoke_34(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_42;
  }

  v4 = [WeakRetained soundEvent];
  v5 = v4;
  if (v4)
  {
    v6 = [v3 soundEvent];
    v7 = [v6 hash];
    v8 = *(a1 + 48);

    if (v7 != v8)
    {
      goto LABEL_42;
    }
  }

  atomic_store(0, v3 + 65);
  v9 = *(a1 + 56);
  if (v9 == 2)
  {
    v16 = *re::audioLogObjects(v4);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      buf = 138412290;
      *buf_4 = v3;
      _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "%@ killed.", &buf, 0xCu);
    }

    goto LABEL_15;
  }

  if (v9 == 1)
  {
    v13 = atomic_load(v3 + 64);
    v14 = *re::audioLogObjects(v4);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
    if ((v13 & 1) == 0)
    {
      if (v15)
      {
        buf = 138412290;
        *buf_4 = v3;
        v12 = 2;
        _os_log_debug_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEBUG, "%@ finished playing.", &buf, 0xCu);
        v11 = 1;
        goto LABEL_18;
      }

LABEL_17:
      v11 = 1;
      v12 = 2;
      goto LABEL_18;
    }

    if (v15)
    {
      buf = 138412290;
      *buf_4 = v3;
      _os_log_debug_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEBUG, "%@ stopped.", &buf, 0xCu);
    }

LABEL_15:
    v11 = 0;
    v12 = 0;
    goto LABEL_18;
  }

  if (v9)
  {
    goto LABEL_17;
  }

  v10 = *re::audioLogObjects(v4);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    buf = 138412290;
    *buf_4 = v3;
    _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "%@ finished with error.", &buf, 0xCu);
  }

  v11 = 0;
  v12 = 5;
LABEL_18:
  if (re::internal::enableSignposts(0, 0))
  {
    [*(a1 + 32) prepareState];
    v17 = [*(a1 + 32) soundEvent];
    [v17 ioStartHostTime];
    v18 = [*(a1 + 32) soundEvent];
    [v18 preparedHostTime];
    [*(a1 + 32) prepareState];
    kdebug_trace();
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v34);
    }

    if (*&buf_4[4])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&buf_4[4]);
    }
  }

  if (re::internal::enableSignposts(0, 0))
  {
    [*(a1 + 32) prepareState];
    [*(a1 + 32) prepareState];
    kdebug_trace();
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v34);
    }

    if (*&buf_4[4])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&buf_4[4]);
    }
  }

  [v3 changeToState:v12];
  if (!v11)
  {
    goto LABEL_41;
  }

  if ((*(*(v3 + 41) + 103) & 1) == 0)
  {
    v19 = *(v3 + 28);
    if (v19)
    {
      v20 = 0;
      v21 = (*(v19 + 16))();
    }

    else
    {
      if (!*(v3 + 9))
      {
        v20 = 0;
        goto LABEL_35;
      }

      v22 = objc_alloc(MEMORY[0x1E6978210]);
      v23 = *(v3 + 9);
      v24 = *(v3 + 36);
      v25 = *(v3 + 15);
      v33 = 0;
      v21 = [v22 initWithEngine:v23 assetIdentifier:v24 mixerParameters:v25 error:&v33];
      v20 = v33;
    }

    v26 = *(v3 + 33);
    *(v3 + 33) = v21;

LABEL_35:
    v27 = [v3 soundEvent];
    v28 = v27 == 0;

    if (v28)
    {
      v30 = *re::audioLogObjects(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        buf = 138412546;
        *buf_4 = v3;
        *&buf_4[8] = 2112;
        *&buf_4[10] = v20;
        _os_log_error_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_ERROR, "%@ failed to re-create after completion, error: %@", &buf, 0x16u);
      }

      [v3 changeToState:5];
    }

    else
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __27__REPHASESoundEvent__start__block_invoke_35;
      v31[3] = &unk_1E871B6E8;
      v32 = v3;
      [v32 prepareWithCompletion:v31];
    }

LABEL_41:
    atomic_store(1u, v3 + 65);
  }

LABEL_42:
}

void __27__REPHASESoundEvent__start__block_invoke_35(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *re::audioLogObjects(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v4;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "%@ failed to re-prepare after completion: %@", &v7, 0x16u);
    }
  }
}

- (BOOL)_resume
{
  selfCopy = self;
  v23 = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&self->_state.__a_.__a_value);
  if (v3 <= 2)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        goto LABEL_22;
      }

      if (v3 != 2)
      {
        return self & 1;
      }
    }

LABEL_20:
    v13 = *re::audioLogObjects(self);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(REPHASESoundEvent *)selfCopy prepareState];
      v16 = *(v20 + 24);
      *buf = 134218240;
      *&buf[4] = v16;
      *&buf[12] = 2048;
      *&buf[14] = v3;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "[RE/PHASE] [Resume] REPHASESoundEvent: playbackToken %llu, can't resume from this state %llu: ", buf, 0x16u);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v21);
      }
    }

    LOBYTE(self) = 0;
    return self & 1;
  }

  if (v3 <= 0xD)
  {
    if (((1 << v3) & 0x3620) == 0)
    {
      if (v3 == 4)
      {
        v14 = *re::audioLogObjects(self);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [(REPHASESoundEvent *)selfCopy prepareState];
          v18 = *(v20 + 24);
          *buf = 134218240;
          *&buf[4] = v18;
          *&buf[12] = 2048;
          *&buf[14] = 4;
          _os_log_debug_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEBUG, "[RE/PHASE] [Resume] REPHASESoundEvent: playbackToken %llu, start the sound event. state %llu: ", buf, 0x16u);
          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v21);
          }
        }

        LOBYTE(self) = [(REPHASESoundEvent *)selfCopy _start];
        return self & 1;
      }

      if (v3 != 11)
      {
        goto LABEL_6;
      }

LABEL_22:
      observer = *re::audioLogObjects(self);
      if (os_log_type_enabled(observer, OS_LOG_TYPE_DEBUG))
      {
        [(REPHASESoundEvent *)selfCopy prepareState];
        v17 = *(v20 + 24);
        *buf = 134218240;
        *&buf[4] = v17;
        *&buf[12] = 2048;
        *&buf[14] = v3;
        _os_log_debug_impl(&dword_1E1C61000, observer, OS_LOG_TYPE_DEBUG, "[RE/PHASE] [Resume] REPHASESoundEvent: playbackToken %llu, do nothing for redundant calls to resume, just report success. state %llu: ", buf, 0x16u);
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v21);
        }
      }

      goto LABEL_23;
    }

    goto LABEL_20;
  }

LABEL_6:
  if (v3 == 3)
  {
    v4 = *re::audioLogObjects(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(REPHASESoundEvent *)selfCopy prepareState];
      v19 = *(v20 + 24);
      *buf = 134218240;
      *&buf[4] = v19;
      *&buf[12] = 2048;
      *&buf[14] = 3;
      _os_log_debug_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEBUG, "[RE/PHASE] [Resume] REPHASESoundEvent: playbackToken %llu, resume the sound event. state %llu: ", buf, 0x16u);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v21);
      }
    }

    soundEvent = [(REPHASESoundEvent *)selfCopy soundEvent];
    v6 = soundEvent == 0;

    if (!v6)
    {
      soundEvent2 = [(REPHASESoundEvent *)selfCopy soundEvent];
      [soundEvent2 resume];
    }

    externalStream = [(REPHASESoundEvent *)selfCopy externalStream];
    v9 = externalStream == 0;

    if (!v9)
    {
      externalStream2 = [(REPHASESoundEvent *)selfCopy externalStream];
      [externalStream2 resume];
    }

    if (selfCopy->_stationaryTime.__engaged_)
    {
      selfCopy->_stationaryTime.__engaged_ = 0;
    }

    [(REPHASESoundEvent *)selfCopy changeToState:1];
    observer = [(REPHASESoundEvent *)selfCopy observer];
    [(REPHASESoundEvent *)selfCopy prepareState];
    LODWORD(v12) = *(*buf + 192);
    [observer soundDidStartOrResume:selfCopy withGain:v12];
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
    }

LABEL_23:

    LOBYTE(self) = 1;
  }

  return self & 1;
}

- (BOOL)_pause
{
  v2 = atomic_load(&self->_state.__a_.__a_value);
  if (v2 - 3 < 2)
  {
    return 1;
  }

  if (v2 == 1)
  {
    soundEvent = [(REPHASESoundEvent *)self soundEvent];

    if (soundEvent)
    {
      soundEvent2 = [(REPHASESoundEvent *)self soundEvent];
      [soundEvent2 pause];
    }

    externalStream = [(REPHASESoundEvent *)self externalStream];

    if (externalStream)
    {
      externalStream2 = [(REPHASESoundEvent *)self externalStream];
      [externalStream2 pause];
    }

    [(REPHASESoundEvent *)self changeToState:3];
    observer = [(REPHASESoundEvent *)self observer];
    [observer soundDidPause:self];

    return 1;
  }

  return 0;
}

- (BOOL)_stopAndRePrepare
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(&self->_state.__a_.__a_value);
  if (v2 != 1 && v2 != 3)
  {
    LOBYTE(v13) = v2 == 4;
    return v13;
  }

  soundEvent = [(REPHASESoundEvent *)self soundEvent];

  if (soundEvent)
  {
    soundEvent2 = [(REPHASESoundEvent *)self soundEvent];
    [soundEvent2 stopAndInvalidate];

    [(REPHASESoundEvent *)self changeToState:0];
    soundEvent = self->_soundEvent;
    self->_soundEvent = 0;

    [(REPHASESoundEvent *)self changeToState:2];
    soundEventFactory = self->_soundEventFactory;
    if (soundEventFactory)
    {
      v10 = soundEventFactory[2]();
      v11 = self->_soundEvent;
      self->_soundEvent = v10;
    }

    else if (self->_engine)
    {
      v15 = objc_alloc(MEMORY[0x1E6978210]);
      engine = self->_engine;
      assetIdentifier = self->_assetIdentifier;
      mixerParameters = self->_mixerParameters;
      v27 = 0;
      v19 = [v15 initWithEngine:engine assetIdentifier:assetIdentifier mixerParameters:mixerParameters error:&v27];
      v12 = v27;
      v20 = self->_soundEvent;
      self->_soundEvent = v19;

      goto LABEL_14;
    }

    v12 = 0;
LABEL_14:
    soundEvent3 = [(REPHASESoundEvent *)self soundEvent];
    v22 = soundEvent3 == 0;

    if (v22)
    {
      v24 = *re::audioLogObjects(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        selfCopy = self;
        v30 = 2112;
        v31 = v12;
        _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, "[RE/PHASE] [stopAndRePrepare] %@ failed to re-create after completion, error: %@", buf, 0x16u);
      }

      [(REPHASESoundEvent *)self changeToState:5];
    }

    else
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __38__REPHASESoundEvent__stopAndRePrepare__block_invoke;
      v26[3] = &unk_1E871B6E8;
      v26[4] = self;
      [(REPHASESoundEvent *)self prepareWithCompletion:v26];
    }

    LOBYTE(v13) = 1;
    return v13;
  }

  v14 = *re::audioLogObjects(v6);
  v13 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  if (v13)
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "[RE/PHASE] [stopAndRePrepare] Failed to stop and re-prepare sound event.", buf, 2u);
    LOBYTE(v13) = 0;
  }

  return v13;
}

void __38__REPHASESoundEvent__stopAndRePrepare__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *re::audioLogObjects(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v4;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "[RE/PHASE] [stopAndRePrepare] %@ failed to re-prepare after completion: %@", &v7, 0x16u);
    }
  }
}

- (BOOL)_stopAndDestroy
{
  atomic_store(1u, &self->_isStopping);
  soundEvent = [(REPHASESoundEvent *)self soundEvent];

  if (soundEvent)
  {
    soundEvent2 = [(REPHASESoundEvent *)self soundEvent];
    [soundEvent2 stopAndInvalidate];

    soundEvent = self->_soundEvent;
    self->_soundEvent = 0;
  }

  if (self->_soundEventAsset && *(self->_prepareState.__ptr_ + 7) != 1)
  {
    assetRegistry = [(PHASEEngine *)self->_engine assetRegistry];
    identifier = [(PHASESoundEventNodeAsset *)self->_soundEventAsset identifier];
    [assetRegistry unregisterAssetWithIdentifier:identifier completion:0];
  }

  externalStreamController = [(REPHASESoundEvent *)self externalStreamController];

  if (externalStreamController)
  {
    externalStreamController2 = [(REPHASESoundEvent *)self externalStreamController];
    [externalStreamController2 stopAndInvalidate];

    externalStreamController = self->_externalStreamController;
    self->_externalStreamController = 0;
  }

  externalStream = [(REPHASESoundEvent *)self externalStream];

  if (externalStream)
  {
    externalStream2 = [(REPHASESoundEvent *)self externalStream];
    v13 = objc_opt_respondsToSelector();

    externalStream3 = [(REPHASESoundEvent *)self externalStream];
    v15 = externalStream3;
    if (v13)
    {
      [externalStream3 stopAndInvalidate];
    }

    else
    {
      [externalStream3 pause];
    }

    externalStream = self->_externalStream;
    self->_externalStream = 0;
  }

  [(REPHASESoundEvent *)self changeToState:0];
  return 1;
}

- (BOOL)_seekToTime:(double)time
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = atomic_load(&self->_state.__a_.__a_value);
  if (v5 > 0xD)
  {
    goto LABEL_7;
  }

  if (((1 << v5) & 0x3E25) != 0)
  {
    return 0;
  }

  if (((1 << v5) & 0x18) == 0 || !self->_stationaryTime.__engaged_ || vabdd_f64(self->_stationaryTime.var0.__val_, time) >= 0.0000208333333)
  {
LABEL_7:
    soundEvent = [(REPHASESoundEvent *)self soundEvent];

    if (soundEvent)
    {
      v9 = atomic_load(&self->_state.__a_.__a_value);
      if (v9 == 4 && (v8 = [(REPHASESoundEvent *)self isGroupPlaybackEvent], v8))
      {
        [(REPHASESoundEvent *)self _start];
        soundEvent2 = [(REPHASESoundEvent *)self soundEvent];
        [soundEvent2 pause];

        [(REPHASESoundEvent *)self changeToState:3];
      }

      else
      {
        v11 = *re::audioLogObjects(v8);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          selfCopy = self;
          v18 = 2048;
          timeCopy = time;
          _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_INFO, "%@ seeking to %5.3f", buf, 0x16u);
        }

        v12 = [(REPHASESoundEvent *)self changeToState:12];
        atomic_store(*&time, &self->_latestSeekTarget);
        objc_initWeak(buf, self);
        soundEvent3 = [(REPHASESoundEvent *)self soundEvent];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __33__REPHASESoundEvent__seekToTime___block_invoke;
        v14[3] = &unk_1E871B760;
        objc_copyWeak(v15, buf);
        v15[1] = *&time;
        v15[2] = v12;
        [soundEvent3 seekToTime:v14 completion:time];

        objc_destroyWeak(v15);
        objc_destroyWeak(buf);
      }

      return 0;
    }
  }

  return 1;
}

void __33__REPHASESoundEvent__seekToTime___block_invoke(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_21;
  }

  if (a2 != 2)
  {
    v12 = *re::audioLogObjects(WeakRetained);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v25 = 138412290;
      *&v25[4] = v5;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "%@ failed to seek.", v25, 0xCu);
    }

    goto LABEL_16;
  }

  std::recursive_mutex::lock((WeakRetained + 136));
  v7 = *(v5 + 6);
  if (v7)
  {
    v8 = *(v5 + 2);
    v9 = *(v5 + 5);
    v10 = *(v8 + ((v9 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v9;
    if (*v10 == 2 && *(v10 + 8) == *(a1 + 40))
    {
      v11 = v9 + 1;
      *(v5 + 5) = v11;
      *(v5 + 6) = v7 - 1;
      if (v11 >= 0x200)
      {
        operator delete(*v8);
        *(v5 + 2) += 8;
        *(v5 + 5) -= 256;
      }

      if (*(a1 + 48) != 1)
      {
        *(v5 + 25) = *(a1 + 40);
        v5[208] = 1;
      }

      goto LABEL_15;
    }

    v13 = *re::audioLogObjects(v6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *v10;
      v15 = *(v10 + 8);
      v16 = *(a1 + 40);
      *v25 = 138413058;
      *&v25[4] = v5;
      *&v25[12] = 1024;
      *&v25[14] = v14;
      *&v25[18] = 2048;
      *&v25[20] = v15;
      *&v25[28] = 2048;
      *&v25[30] = v16;
      v17 = "%@ unexpected command %d, %0.2f at front of queue after seek to %0.2f";
      v18 = v13;
      v19 = 38;
LABEL_23:
      _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, v17, v25, v19);
    }
  }

  else
  {
    v20 = *re::audioLogObjects(v6);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v25 = 138412290;
      *&v25[4] = v5;
      v17 = "%@ unexpectedly empty command queue after seek";
      v18 = v20;
      v19 = 12;
      goto LABEL_23;
    }
  }

LABEL_15:
  std::recursive_mutex::unlock((v5 + 136));
LABEL_16:
  v21 = [v5 changeToState:{*(a1 + 48), *v25, *&v25[16], *&v25[24], v26}];
  v22 = v21;
  if (v21 != 12)
  {
    v23 = *re::audioLogObjects(v21);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *v25 = 138412546;
      *&v25[4] = v5;
      *&v25[12] = 2048;
      *&v25[14] = v22;
      _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, "%@ finished seeking in unexpected state %llu", v25, 0x16u);
    }
  }

  if (a2 == 2)
  {
    v24 = [v5 observer];
    [v24 soundDidSeek:v5 toTime:*(a1 + 40)];

    [v5 updateCommandQueue];
  }

LABEL_21:
}

- (id)mixer
{
  mixers = [(PHASESoundEvent *)self->_soundEvent mixers];
  allValues = [mixers allValues];

  if ([allValues count])
  {
    v4 = [allValues objectAtIndex:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateCommandQueue
{
  std::recursive_mutex::lock(&self->_commandQueueMutex);
  [(REPHASESoundEvent *)self _updateCommandQueue];

  std::recursive_mutex::unlock(&self->_commandQueueMutex);
}

- (void)_updateCommandQueue
{
  v2 = atomic_load(&self->_shouldExecuteCommand);
  if ((v2 & 1) != 0 && self->_commandQueue.c.__size_)
  {
    start = self->_commandQueue.c.__start_;
    while (1)
    {
      v5 = (*(self->_commandQueue.c.__map_.__begin_ + ((start >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * start);
      v6 = *v5;
      if (*v5 > 1)
      {
        if (v6 == 2)
        {
          if (![(REPHASESoundEvent *)self _seekToTime:v5[1]])
          {
            return;
          }
        }

        else if (v6 != 3 || ![(REPHASESoundEvent *)self _stopAndRePrepare])
        {
          return;
        }
      }

      else if (v6)
      {
        if (v6 != 1 || ![(REPHASESoundEvent *)self _pause])
        {
          return;
        }
      }

      else if (![(REPHASESoundEvent *)self _resume])
      {
        return;
      }

      v7 = vaddq_s64(*&self->_commandQueue.c.__start_, xmmword_1E3063220);
      *&self->_commandQueue.c.__start_ = v7;
      start = v7.i64[0];
      if (v7.i64[0] < 0x200uLL)
      {
        if (!v7.i64[1])
        {
          return;
        }
      }

      else
      {
        operator delete(*self->_commandQueue.c.__map_.__begin_);
        ++self->_commandQueue.c.__map_.__begin_;
        size = self->_commandQueue.c.__size_;
        start = self->_commandQueue.c.__start_ - 256;
        self->_commandQueue.c.__start_ = start;
        if (!size)
        {
          return;
        }
      }
    }
  }
}

- (void)prepareWithCompletion:(id)completion
{
  selfCopy = self;
  v58 = *MEMORY[0x1E69E9840];
  selfCopy2 = self;
  completionCopy = completion;
  playbackStateChangeHandler = [(REPHASESoundEvent *)selfCopy playbackStateChangeHandler];

  if (!playbackStateChangeHandler)
  {
    [(REPHASESoundEvent *)selfCopy prepareState];
    [(REPHASESoundEvent *)selfCopy2 setPlaybackStateChangeHandler:*(buf.value + 320)];
    if (*&buf.timescale)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&buf.timescale);
    }

    selfCopy = selfCopy2;
  }

  objc_initWeak(&location, selfCopy);
  isGroupPlaybackEvent = [(REPHASESoundEvent *)selfCopy2 isGroupPlaybackEvent];
  v7 = re::internal::enableSignposts(0, 0);
  if (isGroupPlaybackEvent)
  {
    if (!v7)
    {
      goto LABEL_15;
    }

    [(REPHASESoundEvent *)selfCopy2 prepareState];
    [(REPHASESoundEvent *)selfCopy2 prepareState];
    [(NSString *)selfCopy2->_assetIdentifier longLongValue];
    kdebug_trace();
  }

  else
  {
    if (!v7)
    {
      goto LABEL_15;
    }

    [(REPHASESoundEvent *)selfCopy2 prepareState];
    [(REPHASESoundEvent *)selfCopy2 prepareState];
    [(REPHASESoundEvent *)selfCopy2 prepareState];
    kdebug_trace();
    if (v57)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v57);
    }
  }

  if (*&time2.timescale)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&time2.timescale);
  }

  if (*&buf.timescale)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&buf.timescale);
  }

LABEL_15:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__REPHASESoundEvent_prepareWithCompletion___block_invoke;
  aBlock[3] = &unk_1E871B788;
  objc_copyWeak(&v50, &location);
  aBlock[4] = selfCopy2;
  v8 = completionCopy;
  v49 = v8;
  v9 = _Block_copy(aBlock);
  v47 = &selfCopy2;
  if ([(REPHASESoundEvent *)selfCopy2 isGroupPlaybackEvent])
  {
    [(REPHASESoundEvent *)selfCopy2 prepareStates];
    epoch = buf.epoch;
    if (buf.epoch)
    {
      do
      {
        v11 = epoch[4];
        v44[0] = epoch[3];
        v44[1] = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        [REPHASESoundEvent prepareWithCompletion:]::$_0::operator()(&v47, v44);
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v11);
        }

        epoch = *epoch;
      }

      while (epoch);
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::~__hash_table(&buf);
  }

  else
  {
    [(REPHASESoundEvent *)selfCopy2 prepareState];
    [REPHASESoundEvent prepareWithCompletion:]::$_0::operator()(&v47, v45);
    if (v46)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v46);
    }
  }

  [(REPHASESoundEvent *)selfCopy2 prepareState];
  v12 = *(buf.value + 102);
  if (*&buf.timescale)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&buf.timescale);
  }

  soundEvent = [(REPHASESoundEvent *)selfCopy2 soundEvent];
  v14 = soundEvent == 0;

  if (!v14)
  {
    [(REPHASESoundEvent *)selfCopy2 changeToState:10];
    soundEvent2 = [(REPHASESoundEvent *)selfCopy2 soundEvent];
    [soundEvent2 prepareWithCompletion:v9];

    [(REPHASESoundEvent *)selfCopy2 prepareState];
    v56 = *(buf.value + 216);
    v16 = *(buf.value + 228);
    LODWORD(v57) = *(buf.value + 224);
    v17 = *(buf.value + 232);
    if (*&buf.timescale)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&buf.timescale);
    }

    if (v16)
    {
      buf.value = v56;
      buf.timescale = v57;
      buf.flags = v16;
      buf.epoch = v17;
      time2 = **&MEMORY[0x1E6960CC0];
      v18 = CMTimeCompare(&buf, &time2) != 0;
      if (v18)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v18 = 0;
    }

    if (!v12)
    {
LABEL_53:
      v22 = 0;
      goto LABEL_61;
    }

LABEL_42:
    v26 = selfCopy2;
    std::recursive_mutex::lock(&selfCopy2->_commandQueueMutex);
    if (v18)
    {
      buf.value = v56;
      buf.timescale = v57;
      buf.flags = v16;
      buf.epoch = v17;
      Seconds = CMTimeGetSeconds(&buf);
      v29 = *re::audioLogObjects(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.value) = 138412546;
        *(&buf.value + 4) = selfCopy2;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = Seconds;
        _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEFAULT, "%@ seeking to initial target %0.2f", &buf, 0x16u);
      }

      v30 = selfCopy2;
      atomic_store(*&Seconds, &selfCopy2->_latestSeekTarget);
      soundEvent3 = [(REPHASESoundEvent *)v30 soundEvent];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __43__REPHASESoundEvent_prepareWithCompletion___block_invoke_44;
      v41[3] = &unk_1E871B7B0;
      objc_copyWeak(v42, &location);
      v42[1] = *&Seconds;
      [soundEvent3 seekToTime:v41 completion:Seconds];

      objc_destroyWeak(v42);
    }

    if (v12)
    {
      [(REPHASESoundEvent *)selfCopy2 prepareState];
      v32 = *&buf.timescale;
      *(buf.value + 102) = 0;
      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v32);
      }

      v33 = *re::audioLogObjects(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.value) = 138412290;
        *(&buf.value + 4) = selfCopy2;
        _os_log_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_DEFAULT, "%@ force start", &buf, 0xCu);
      }

      [(REPHASESoundEvent *)selfCopy2 _start];
    }

    std::recursive_mutex::unlock(&v26->_commandQueueMutex);
    goto LABEL_53;
  }

  externalStreamController = [(REPHASESoundEvent *)selfCopy2 externalStreamController];

  if (externalStreamController)
  {
    externalStreamController2 = [(REPHASESoundEvent *)selfCopy2 externalStreamController];
    v40 = 0;
    v21 = [externalStreamController2 prepareAndReturnError:&v40];
    v22 = v40;

    if (!v21)
    {
      v36 = *re::audioLogObjects(v23);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [(REPHASESoundEvent *)selfCopy2 prepareState];
        v39 = *(time2.value + 24);
        LODWORD(buf.value) = 134218242;
        *(&buf.value + 4) = v39;
        LOWORD(buf.flags) = 2112;
        *(&buf.flags + 2) = v22;
        _os_log_error_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_ERROR, "external stream controller %llu failed with error: %@", &buf, 0x16u);
        if (*&time2.timescale)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*&time2.timescale);
        }
      }

      (*(v8 + 2))(v8, v22);
      goto LABEL_61;
    }

    if (v12)
    {
      [(REPHASESoundEvent *)selfCopy2 prepareState];
      v24 = *&buf.timescale;
      *(buf.value + 102) = 0;
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v24);
      }

      v25 = *re::audioLogObjects(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.value) = 138412290;
        *(&buf.value + 4) = selfCopy2;
        _os_log_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_DEFAULT, "%@ force start", &buf, 0xCu);
      }

      [(REPHASESoundEvent *)selfCopy2 _start];
    }
  }

  else
  {
    v22 = 0;
  }

  externalStream = [(REPHASESoundEvent *)selfCopy2 externalStream];
  v35 = externalStream == 0;

  if (!v35)
  {
    [(REPHASESoundEvent *)selfCopy2 changeToState:4];
    [(REPHASESoundEvent *)selfCopy2 updateCommandQueue];
LABEL_60:
    [(REPHASESoundEvent *)selfCopy2 changeToState:4];
    [(REPHASESoundEvent *)selfCopy2 updateCommandQueue];
    (*(v8 + 2))(v8, 0);
    goto LABEL_61;
  }

  if (externalStreamController)
  {
    goto LABEL_60;
  }

  if (!v22)
  {
    v37 = MEMORY[0x1E696ABC0];
    v53 = *MEMORY[0x1E696A578];
    v54 = @"unknown error preparing REPHASESoundEvent";
    v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v22 = [v37 errorWithDomain:@"com.apple.re.internal" code:-210 userInfo:v38];
  }

  (*(v8 + 2))(v8, v22);
LABEL_61:

  objc_destroyWeak(&v50);
  objc_destroyWeak(&location);
}

void __43__REPHASESoundEvent_prepareWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    goto LABEL_28;
  }

  v5 = [*(a1 + 32) isGroupPlaybackEvent];
  if (v5)
  {
    v5 = [WeakRetained[36] longLongValue];
    v6 = v5;
  }

  else
  {
    v6 = *(WeakRetained[41] + 3);
  }

  v7 = *re::audioLogObjects(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    buf = 134217984;
    *buf_4 = v6;
    _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "[RE/PHASE] [Prepare] REPHASESoundEvent prepareWithCompletion callback invoked for token=%llu", &buf, 0xCu);
  }

  if (a2 == 1)
  {
    v8 = [*(a1 + 32) isGroupPlaybackEvent];
    v9 = re::internal::enableSignposts(0, 0);
    if (v8)
    {
      if (v9)
      {
        [*(a1 + 32) prepareState];
        v10 = [WeakRetained soundEvent];
        [v10 preparedHostTime];
        [*(a1 + 32) prepareState];
        [WeakRetained[36] longLongValue];
        kdebug_trace();
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v17);
        }

LABEL_19:

        v9 = *&buf_4[4];
        if (*&buf_4[4])
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*&buf_4[4]);
        }
      }
    }

    else if (v9)
    {
      [*(a1 + 32) prepareState];
      v10 = [WeakRetained soundEvent];
      [v10 preparedHostTime];
      [*(a1 + 32) prepareState];
      [*(a1 + 32) prepareState];
      kdebug_trace();
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v16);
      }

      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v17);
      }

      goto LABEL_19;
    }

    v15 = *re::audioLogObjects(v9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      buf = 134217984;
      *buf_4 = v6;
      _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, "[RE/PHASE] [Prepare] REPHASESoundEvent prepareWithCompletion success for token=%llu", &buf, 0xCu);
    }

    v14 = 0;
    if ([WeakRetained changeFromExpectedState:10 toState:4])
    {
      WeakRetained[25] = 0;
      *(WeakRetained + 208) = 1;
    }

    goto LABEL_25;
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to prepare PHASESoundEvent with reason %ld", a2];
  v12 = MEMORY[0x1E696ABC0];
  v18 = *MEMORY[0x1E696A578];
  v19 = v11;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v14 = [v12 errorWithDomain:@"com.apple.re.internal" code:-210 userInfo:v13];

  [WeakRetained changeToState:5];
LABEL_25:
  (*(*(a1 + 40) + 16))();
  if (!v14)
  {
    [WeakRetained updateCommandQueue];
  }

LABEL_28:
}

- (void)prepareWithCompletion:
{
  v30 = *MEMORY[0x1E69E9840];
  [**self prepareState];
  v4 = __exp10f(*(*v21 + 180) / 20.0);
  if (*&v21[8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&v21[8]);
  }

  [**self prepareState];
  v5 = __exp10f(*(*v21 + 184) / 20.0);
  v6 = *&v21[8];
  if (*&v21[8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&v21[8]);
  }

  v7 = *re::audioLogObjects(v6);
  v8 = v4;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*a2 + 192);
    v10 = *(*a2 + 188);
    v11 = *(*a2 + 24);
    v12 = *(*a2 + 64);
    *v21 = 134219264;
    *&v21[4] = v9;
    *&v21[12] = 2048;
    *&v21[14] = v8;
    v22 = 2048;
    v23 = v5;
    v24 = 2048;
    v25 = v10;
    v26 = 2048;
    v27 = v11;
    v28 = 2048;
    v29 = v12;
    _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "[RE/PHASE] [Prepare] REPHASESoundEvent preparing with gain=%.2f, reverb=%.2f, direct=%.2f, rate=%.2f for token=%llu, assetID=%llu", v21, 0x3Eu);
  }

  v13 = [**self paramForKey:*(*a2 + 336)];
  if (v13)
  {
    LODWORD(v14) = *(*a2 + 180);
    [**self setCachedReverbSendLevel:v14];
    [v13 fadeToValue:v8 duration:0.0];
  }

  v15 = [**self paramForKey:*(*a2 + 344)];
  if (v15)
  {
    LODWORD(v16) = *(*a2 + 184);
    [**self setCachedDirectSendLevel:v16];
    [v15 fadeToValue:v5 duration:0.0];
  }

  v17 = [**self paramForKey:@"rate"];
  if (v17)
  {
    LODWORD(v18) = *(*a2 + 188);
    [**self setCachedPlaybackSpeed:v18];
    [v17 fadeToValue:*(*a2 + 188) duration:0.0];
  }

  v19 = [**self paramForKey:*(*a2 + 352)];
  v20 = v19;
  if (v19)
  {
    [v19 fadeToValue:*(*a2 + 192) duration:0.0];
  }
}

void __43__REPHASESoundEvent_prepareWithCompletion___block_invoke_44(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2 == 2)
    {
      v6 = [WeakRetained observer];
      [v6 soundDidSeek:v5 toTime:*(a1 + 40)];
    }

    else
    {
      v7 = *re::audioLogObjects(WeakRetained);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = 138412546;
        v9 = v5;
        v10 = 2048;
        v11 = a2;
        _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "%@ failed to seek from: %ld", &v8, 0x16u);
      }
    }
  }
}

- (void)pause
{
  std::recursive_mutex::lock(&self->_commandQueueMutex);
  v3 = 1;
  std::deque<REPHASESoundEventCommandState>::emplace_back<REPHASESoundEventCommand>(&self->_commandQueue.c.__map_.__first_, &v3);
  [(REPHASESoundEvent *)self _updateCommandQueue];

  std::recursive_mutex::unlock(&self->_commandQueueMutex);
}

- (void)resume
{
  std::recursive_mutex::lock(&self->_commandQueueMutex);
  v3 = 0;
  std::deque<REPHASESoundEventCommandState>::emplace_back<REPHASESoundEventCommand>(&self->_commandQueue.c.__map_.__first_, &v3);
  [(REPHASESoundEvent *)self _updateCommandQueue];

  std::recursive_mutex::unlock(&self->_commandQueueMutex);
}

- (void)stopAndRePrepare
{
  std::recursive_mutex::lock(&self->_commandQueueMutex);
  v3 = 3;
  std::deque<REPHASESoundEventCommandState>::emplace_back<REPHASESoundEventCommand>(&self->_commandQueue.c.__map_.__first_, &v3);
  [(REPHASESoundEvent *)self _updateCommandQueue];

  std::recursive_mutex::unlock(&self->_commandQueueMutex);
}

- (void)stopAndDestroy
{
  std::recursive_mutex::lock(&self->_commandQueueMutex);
  [(REPHASESoundEvent *)self _stopAndDestroy];

  std::recursive_mutex::unlock(&self->_commandQueueMutex);
}

- (BOOL)seekToTime:(double)time
{
  timeCopy = time;
  if (time < 0.0)
  {
    v5 = *re::audioLogObjects(self);
    timeCopy = 0.0;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "PHASE Seeking < 0, not supported. Capping to 0", buf, 2u);
    }
  }

  if ([(REPHASESoundEvent *)self isGroupPlaybackEvent])
  {
    v13 = 3;
    std::deque<REPHASESoundEventCommandState>::emplace_back<REPHASESoundEventCommand>(&self->_commandQueue.c.__map_.__first_, &v13);
  }

  std::recursive_mutex::lock(&self->_commandQueueMutex);
  end = self->_commandQueue.c.__map_.__end_;
  begin = self->_commandQueue.c.__map_.__begin_;
  if (end == begin)
  {
    v8 = 0;
  }

  else
  {
    v8 = 32 * (end - begin) - 1;
  }

  size = self->_commandQueue.c.__size_;
  v10 = size + self->_commandQueue.c.__start_;
  if (v8 == v10)
  {
    std::deque<REPHASESoundEventCommandState>::__add_back_capacity(&self->_commandQueue.c.__map_.__first_);
    size = self->_commandQueue.c.__size_;
    begin = self->_commandQueue.c.__map_.__begin_;
    v10 = self->_commandQueue.c.__start_ + size;
  }

  v11 = *(begin + ((v10 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v10;
  *v11 = 2;
  *(v11 + 8) = timeCopy;
  self->_commandQueue.c.__size_ = size + 1;
  [(REPHASESoundEvent *)self _updateCommandQueue];
  std::recursive_mutex::unlock(&self->_commandQueueMutex);
  return 1;
}

- (id)paramForKey:(id)key
{
  keyCopy = key;
  soundEvent = [(REPHASESoundEvent *)self soundEvent];

  if (soundEvent)
  {
    [(REPHASESoundEvent *)self soundEvent];
  }

  else
  {
    [(REPHASESoundEvent *)self externalStreamController];
  }
  v6 = ;
  metaParameters = [v6 metaParameters];
  v8 = [metaParameters objectForKey:keyCopy];

  return v8;
}

- (id)description
{
  externalStream = [(REPHASESoundEvent *)self externalStream];
  if (externalStream)
  {
    v4 = externalStream;
    externalStreamController = [(REPHASESoundEvent *)self externalStreamController];

    if (externalStreamController)
    {
      v6 = MEMORY[0x1E696AEC0];
      externalStream2 = [(REPHASESoundEvent *)self externalStream];
      externalStreamController2 = [(REPHASESoundEvent *)self externalStreamController];
      [(REPHASESoundEvent *)self prepareState];
      v9 = *(v19 + 24);
      [(REPHASESoundEvent *)self prepareState];
      v10 = [v6 stringWithFormat:@"<REPHASESoundEvent: %p, stream=%@, controller=%@, token=%llu, assetID=%llu>", self, externalStream2, externalStreamController2, v9, *(v17 + 64)];
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v18);
      }

      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v20);
      }

      goto LABEL_19;
    }
  }

  soundEvent = [(REPHASESoundEvent *)self soundEvent];

  if (soundEvent)
  {
    soundEvent2 = [(REPHASESoundEvent *)self soundEvent];
LABEL_14:
    externalStream2 = soundEvent2;
    goto LABEL_15;
  }

  externalStreamController3 = [(REPHASESoundEvent *)self externalStreamController];

  if (externalStreamController3)
  {
    soundEvent2 = [(REPHASESoundEvent *)self externalStreamController];
    goto LABEL_14;
  }

  externalStream2 = [(REPHASESoundEvent *)self externalStream];

  if (externalStream2)
  {
    soundEvent2 = [(REPHASESoundEvent *)self externalStream];
    goto LABEL_14;
  }

LABEL_15:
  v14 = MEMORY[0x1E696AEC0];
  [(REPHASESoundEvent *)self prepareState];
  v15 = *(v19 + 24);
  [(REPHASESoundEvent *)self prepareState];
  v10 = [v14 stringWithFormat:@"<REPHASESoundEvent: %p, object=%@, token=%llu, assetID=%llu>", self, externalStream2, v15, *(v17 + 64)];
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

LABEL_19:

  return v10;
}

- (double)sourcePose
{
  v1 = *(self + 80);
  if (!v1)
  {
    return 0.0;
  }

  [v1 worldTransform];
  return result;
}

- (vector<simd_float4x4,)sourcePoses
{
  cap = self[3].__cap_;
  if (self[4].__begin_ != cap)
  {
    [*cap worldTransform];
    operator new();
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return self;
}

- (void)clearSoundEventEngine
{
  engine = self->_engine;
  self->_engine = 0;
}

- (REPHASESoundEventObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (shared_ptr<re::audio::REPHASESoundPrepareState>)prepareState
{
  cntrl = self->_prepareState.__cntrl_;
  *v2 = self->_prepareState.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setPrepareState:(shared_ptr<re::audio::REPHASESoundPrepareState>)state
{
  v4 = *state.__ptr_;
  v3 = *(state.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_prepareState.__cntrl_;
  self->_prepareState.__ptr_ = v4;
  self->_prepareState.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
  }
}

- (void)setPrepareStates:(unordered_map<unsigned long)long
{
  p_prepareStates = &self->_prepareStates;
  if (&self->_prepareStates != a3)
  {
    self->_prepareStates.__table_.__max_load_factor_ = a3->__table_.__max_load_factor_;
    next = a3->__table_.__first_node_.__next_;
    size = self->_prepareStates.__table_.__bucket_list_.__deleter_.__size_;
    if (size)
    {
      for (i = 0; i != size; ++i)
      {
        p_prepareStates->__table_.__bucket_list_.__ptr_[i] = 0;
      }

      v7 = self->_prepareStates.__table_.__first_node_.__next_;
      self->_prepareStates.__table_.__first_node_.__next_ = 0;
      self->_prepareStates.__table_.__size_ = 0;
      if (v7)
      {
        v8 = next == 0;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        v9 = v7;
      }

      else
      {
        do
        {
          v10 = next[3];
          v7[2] = next[2];
          v11 = next[4];
          if (v11)
          {
            atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
          }

          v12 = v7[4];
          v7[3] = v10;
          v7[4] = v11;
          if (v12)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v12);
          }

          v9 = *v7;
          v13 = v7[2];
          v7[1] = v13;
          inserted = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::__node_insert_multi_prepare(p_prepareStates, v13, v7 + 2);
          std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>>>::__node_insert_multi_perform(p_prepareStates, v7, inserted);
          next = *next;
          if (!v9)
          {
            break;
          }

          v7 = v9;
        }

        while (next);
      }

      std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::__deallocate_node(p_prepareStates, v9);
    }

    if (next)
    {
      operator new();
    }
  }
}

- (id).cxx_construct
{
  *&self->_commandQueue.c.__start_ = 0u;
  *&self->_commandQueue.c.__map_.__end_ = 0u;
  *&self->_commandQueue.c.__map_.__first_ = 0u;
  self->_sources.var0 = 0;
  self->_sources.var1 = 0;
  self->_sources.__begin_ = 0;
  MEMORY[0x1E69061D0](&self->_commandQueueMutex, a2);
  self->_stationaryTime.var0.__null_state_ = 0;
  self->_stationaryTime.__engaged_ = 0;
  self->_prepareState = 0u;
  self->_prepareStates.__table_.__bucket_list_ = 0u;
  *&self->_prepareStates.__table_.__first_node_.__next_ = 0u;
  self->_prepareStates.__table_.__max_load_factor_ = 1.0;
  return self;
}

@end