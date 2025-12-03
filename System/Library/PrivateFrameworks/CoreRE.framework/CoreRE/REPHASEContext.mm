@interface REPHASEContext
- (BOOL)addEventIfStillPreparing:(id)preparing forToken:(unint64_t)token;
- (BOOL)doCleanUpSoundEventForToken:(unint64_t)token ifNotInScene:(unint64_t)scene;
- (BOOL)engineShouldBeRunning;
- (BOOL)engineShouldBeRunningWithListenerAndSoundEvents;
- (BOOL)eventBeingPrepared:(unint64_t)prepared;
- (BOOL)getConfigurationForAudioAssetID:(unint64_t)d configuration:(void *)configuration;
- (BOOL)isListenerCreatedInScene;
- (DynamicArray<re::audio::PHASEOccluderData>)createPHASEOccluders:(SEL)occluders;
- (DynamicArray<re::audio::PHASEOccluderUpdateData>)updatePHASEOccluders:(SEL)occluders;
- (PHASEEngine)engine;
- (PHASEEngine)maybeEngine;
- (PHASEOccluderData)createPHASEOccluderData:(SEL)data;
- (PHASEOccluderUpdateData)createPHASEOccluderUpdateData:(SEL)data;
- (PhaseRoomAcousticDefaults)roomAcousticDefaults;
- (REPHASEContext)initWithSampleRate:(double)rate phaseQueue:(id)queue audioEngineRunnableManager:(shared_ptr<re:(int64_t)manager :(BOOL)a7 AudioEngineRunnableManager>)a5 phaseEngineUpdateMode:shouldConfigureAudioEngine:;
- (double)doubleFromPlistValue:(id)value defaultValue:(double)defaultValue;
- (id).cxx_construct;
- (id)baseMixerDefinitionWith:(const void *)with;
- (id)createAcousticMaterialsArrayWithAbsorption:(DynamicArray<re:(DynamicArray<re:(DynamicArray<re::AcousticSoundReductionMaterial> *)absorption :AcousticScatteringMaterial> *)a4 :AcousticAbsorptionMaterial> *)a3 scattering:soundReduction:;
- (id)createPHASEShape:(const void *)shape;
- (id)createPHASEShapeAndOccluder:(const void *)occluder;
- (id)createPhaseShapeWithMeshID:(unint64_t)d materials:(id)materials mdlMesh:(id)mesh arkitMesh:(BOOL)arkitMesh meshType:(unsigned __int8)type;
- (id)createSamplerDefinitionForToken:(unint64_t)token;
- (id)directParamForToken:(unint64_t)token isGroupPlaybackSound:(BOOL)sound;
- (id)eventFor:(unint64_t)for;
- (id)fillOutMeshBoundingBoxInformation:;
- (id)gainParamForToken:(unint64_t)token isGroupPlaybackSound:(BOOL)sound;
- (id)getListener;
- (id)getOrCreateSpatialMixerDefinitionUsing:(const void *)using;
- (id)getPhaseShapeFromCacheWithMeshID:(unint64_t)d;
- (id)getSessionRoot:(unint64_t)root;
- (id)mixerParametersForPrepareState:(const void *)state source:(id)source listener:(id)listener mixerIdentifiers:(id)identifiers;
- (id)reverbParamForToken:(unint64_t)token isGroupPlaybackSound:(BOOL)sound;
- (id)samplerDefForFileAsset:(unint64_t)asset mixerDefinition:(id)definition prepareState:(const void *)state;
- (id)samplerDefForFileAsset:(unint64_t)asset with:(const void *)with;
- (id)sourceObjectForEntityID:(unint64_t)d;
- (shared_ptr<re::audio::REPHASEAudioScene>)sceneForID:(unint64_t)d;
- (shared_ptr<re::audio::REPHASEEntity>)_getEntityUnderLock:(unint64_t)lock;
- (shared_ptr<re::audio::REPHASEEntity>)getEntity:(unint64_t)entity;
- (unint64_t)phaseShapeCount;
- (unint64_t)uniqueEventCount;
- (unordered_map<unsigned)copyPhaseShapeCache;
- (unordered_set<unsigned)playbackClientsWithPreparedOrPreparingSounds;
- (unsigned)getPlayingSoundEventsCount;
- (unsigned)getPreparingSoundEventsCount;
- (void)addAudioAssetID:(unint64_t)d configuration:(const void *)configuration;
- (void)addOccluder:(id)occluder toScene:(unint64_t)scene entity:(unint64_t)entity;
- (void)addPhaseShapeToCache:(id)cache meshID:(unint64_t)d mesh:(id)mesh;
- (void)applyCustomHRIR;
- (void)applyMeshEvents:(const void *)events;
- (void)applyMeshRemoval:(const void *)removal shouldRemoveEntity:(BOOL)entity;
- (void)applyMeshRemovals:(const void *)removals shouldRemoveEntity:(BOOL)entity;
- (void)applyOccluderAdditions:(const void *)additions;
- (void)applyOccluderUpdates:(const void *)updates;
- (void)applyReverbPreset;
- (void)applySpaceBlendLevel;
- (void)clearPhaseShapeCache;
- (void)clearPreparingStateForToken:(unint64_t)token;
- (void)clearSoundEventEnginePointers;
- (void)createListenerIfPending;
- (void)decrementOrDestroyEntityWithZeroCount:(unint64_t)count;
- (void)fillOutDebugInformation:(id)information;
- (void)fillOutMeshBoundingBoxInformation:(id)information;
- (void)getSourceCount:(unsigned int *)count occluderCount:(unsigned int *)occluderCount;
- (void)prepare:(shared_ptr<re::audio::REPHASESoundPrepareState>)prepare;
- (void)prepareExternalType:(shared_ptr<re:(shared_ptr<re:(id)type :audio::REPHASEEntity>)a4 :audio::REPHASESoundPrepareState>)a3 phaseEntity:completion:;
- (void)prepareFileGroupType:(shared_ptr<re:(shared_ptr<re:(id)type :audio::REPHASEEntity>)a4 :audio::REPHASESoundPrepareState>)a3 phaseEntity:completion:;
- (void)prepareFileType:(shared_ptr<re:(shared_ptr<re:(id)type :audio::REPHASEEntity>)a4 :audio::REPHASESoundPrepareState>)a3 phaseEntity:completion:;
- (void)prepareGeneratorType:(shared_ptr<re:(shared_ptr<re:(id)type :audio::REPHASEEntity>)a4 :audio::REPHASESoundPrepareState>)a3 phaseEntity:completion:;
- (void)prepareSyncGroup:(unordered_map<unsigned long)long forGroupID:()std:(std:(std:(std:(std:(unint64_t)std :(unint64_t)a5 shared_ptr<re::audio::REPHASESoundPrepareState>>>> *)a3 :allocator<std::pair<const unsigned long)long :equal_to<unsigned long)long> :hash<unsigned long)long> :shared_ptr<re::audio::REPHASESoundPrepareState> withTransportControlToken:;
- (void)removeAudioAssetID:(unint64_t)d;
- (void)removeAudioFileGroupAssetData:(unint64_t)data;
- (void)removeListener;
- (void)removeOccluderFromScene:(unint64_t)scene entity:(unint64_t)entity shouldRemoveEntity:(BOOL)removeEntity;
- (void)removePhaseShapeFromCacheWithMeshID:(unint64_t)d;
- (void)removeSessionRoot:(unint64_t)root;
- (void)setCustomHRIRURL:(id)l;
- (void)setPreparingWithData:(RESoundEventPreparingData)data forToken:(unint64_t)token;
- (void)setReverbPreset:(int64_t)preset allowingSpaceBlend:(BOOL)blend;
- (void)setRoomSensedReverbStabilizationIsEnabled:(BOOL)enabled;
- (void)setSpaceBlendLevel:(float)level;
- (void)setSpaceBlendTargetPresetOrientation:(uint64_t)orientation;
- (void)stopAllAndReset;
- (void)update;
- (void)updateOccluder:(const void *)occluder;
@end

@implementation REPHASEContext

- (REPHASEContext)initWithSampleRate:(double)rate phaseQueue:(id)queue audioEngineRunnableManager:(shared_ptr<re:(int64_t)manager :(BOOL)a7 AudioEngineRunnableManager>)a5 phaseEngineUpdateMode:shouldConfigureAudioEngine:
{
  managerCopy = manager;
  cntrl = a5.__cntrl_;
  ptr = a5.__ptr_;
  queueCopy = queue;
  v27.receiver = self;
  v27.super_class = REPHASEContext;
  v14 = [(REPHASEContext *)&v27 init];
  v15 = v14;
  if (v14)
  {
    atomic_store(0, &v14->_stoppedAndDestroyed);
    v14->_phaseUpdateMode = cntrl;
    v14->_shouldConfigureAudioEngine = managerCopy;
    v14->_reverbPreset = -1;
    v14->_allowSpaceBlend = 1;
    v14->_spaceBlendLevel = 0.0;
    v14->_sampleRate = rate;
    v16 = [objc_alloc(MEMORY[0x1E69781E0]) initWithValue:@"gain" minimum:1.0 maximum:0.0 identifier:4.0];
    gainLinearParamDefinition = v15->_gainLinearParamDefinition;
    v15->_gainLinearParamDefinition = v16;

    v18 = [objc_alloc(MEMORY[0x1E69781E0]) initWithValue:@"rate" minimum:1.0 maximum:0.25 identifier:4.0];
    rateParamDefinition = v15->_rateParamDefinition;
    v15->_rateParamDefinition = v18;

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v15->_directpathEnabled = [standardUserDefaults BOOLForKey:@"com.apple.re.audio.directpathenabled"];
    objc_storeStrong(&v15->_phaseQueue, queue);
    v22 = *ptr;
    v21 = *(ptr + 1);
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    }

    v23 = v15->_audioEngineRunnableManager.__cntrl_;
    v15->_audioEngineRunnableManager.__ptr_ = v22;
    v15->_audioEngineRunnableManager.__cntrl_ = v21;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v23);
    }

    v24 = objc_opt_new();
    soundEventAssetStore = v15->_soundEventAssetStore;
    v15->_soundEventAssetStore = v24;
  }

  return v15;
}

- (void)fillOutMeshBoundingBoxInformation:(id)information
{
  informationCopy = information;
  [(REPHASEContext *)self copyPhaseShapeCache];
  v42 = 0uLL;
  v41 = 0uLL;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6 = v44;
  if (v44)
  {
    v31 = 0u;
    v32 = 0u;
    do
    {
      v7 = v6[2];
      v8 = v6[4];
      [v8 boundingBox];
      v29 = v10;
      v30 = v9;
      [v8 boundingBox];
      v38 = v11;
      v40 = v12;
      v37 = v13;
      v39 = v14;
      [v8 boundingBox];
      v34 = v15;
      v36 = v16;
      v33 = v17;
      v35 = v18;
      v19 = [REPHASEContext fillOutMeshBoundingBoxInformation:]::$_5::operator()(v7, &v39, &v33);
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PHASEMesh-%llu", v7];
      [dictionary setObject:v19 forKey:v20];

      if (v6 == v44)
      {
        [v8 boundingBox];
        v32 = v25;
        v42 = v25;
        [v8 boundingBox];
        v31 = v26;
        v41 = v26;
      }

      else
      {
        v21 = v32.f32[2];
        v22 = vbslq_s8(vcgtq_f32(v32, v29), v29, v32);
        v23 = vbslq_s8(vcgtq_f32(v30, v31), v30, v31);
        if (v32.f32[2] > v29.f32[2])
        {
          v21 = v29.f32[2];
        }

        v42.i64[0] = v22.i64[0];
        *&v22.i32[2] = v21;
        v32 = v22;
        v42.f32[2] = v21;
        v24 = v30.f32[2];
        if (v31.f32[2] >= v30.f32[2])
        {
          v24 = v31.f32[2];
        }

        v41.i64[0] = v23.i64[0];
        *&v23.i32[2] = v24;
        v31 = v23;
        v41.f32[2] = v24;
      }

      v6 = *v6;
    }

    while (v6);
  }

  v27 = [REPHASEContext fillOutMeshBoundingBoxInformation:]::$_5::operator()(0, &v42, &v41);
  [dictionary setObject:v27 forKey:@"Overall-PHASEMesh"];

  [informationCopy setObject:dictionary forKey:@"PHASEMeshBoundingBoxInfo"];
  std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::__deallocate_node(v44);
  v28 = v43;
  v43 = 0;
  if (v28)
  {
    operator delete(v28);
  }
}

- (id)fillOutMeshBoundingBoxInformation:
{
  v27[3] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v26[0] = @"minBounds";
  LODWORD(v6) = *a2;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v25[0] = v7;
  LODWORD(v8) = a2[1];
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  v25[1] = v9;
  LODWORD(v10) = a2[2];
  v11 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  v25[2] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];
  v27[0] = v12;
  v26[1] = @"maxBounds";
  LODWORD(v13) = *a3;
  v14 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
  v24[0] = v14;
  LODWORD(v15) = a3[1];
  v16 = [MEMORY[0x1E696AD98] numberWithFloat:v15];
  v24[1] = v16;
  LODWORD(v17) = a3[2];
  v18 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
  v24[2] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
  v27[1] = v19;
  v26[2] = @"meshID";
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self];
  v27[2] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
  [array addObject:v21];

  return array;
}

- (void)fillOutDebugInformation:(id)information
{
  informationCopy = information;
  os_unfair_lock_lock(&self->_scenesMutex.m_lock);
  for (i = &self->_scenes.__table_.__first_node_; ; re::audio::REPHASEAudioScene::fillOutDebugInformation(i[3].__next_, informationCopy))
  {
    i = i->__next_;
    if (!i)
    {
      break;
    }
  }

  os_unfair_lock_lock(&self->_audioEngineMutex.m_lock);
  v6 = self->_unsafeEngine;
  os_unfair_lock_unlock(&self->_audioEngineMutex.m_lock);
  if (v6)
  {
    v8 = *re::audioLogObjects(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Filling out PHASE Mesh Info", v9, 2u);
    }

    [(REPHASEContext *)self fillOutMeshBoundingBoxInformation:informationCopy];
  }

  os_unfair_lock_unlock(&self->_scenesMutex.m_lock);
}

- (PHASEEngine)maybeEngine
{
  os_unfair_lock_lock(&self->_audioEngineMutex.m_lock);
  v3 = self->_unsafeEngine;
  os_unfair_lock_unlock(&self->_audioEngineMutex.m_lock);

  return v3;
}

- (PHASEEngine)engine
{
  v13 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_audioEngineMutex.m_lock);
  v3 = self->_unsafeEngine;
  os_unfair_lock_unlock(&self->_audioEngineMutex.m_lock);
  if (!v3)
  {
    os_unfair_lock_lock(&self->_audioEngineCreationMutex.m_lock);
    os_unfair_lock_lock(&self->_audioEngineMutex.m_lock);
    v3 = self->_unsafeEngine;
    os_unfair_lock_unlock(&self->_audioEngineMutex.m_lock);
    v5 = *re::audioLogObjects(v4);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (!v3)
    {
      if (v6)
      {
        if (self->_phaseUpdateMode == 1)
        {
          v7 = "manual";
        }

        else
        {
          v7 = "automatic";
        }

        v11 = 136446210;
        v12 = v7;
        _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "[REPhaseContext engine] Initializing Phase audio engine... update mode = %{public}s", &v11, 0xCu);
      }

      v8 = pthread_self();
      re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(&v11, 2522, v8);
      v9 = REAudioCreatePHASEEngine(self->_phaseUpdateMode);
      os_unfair_lock_lock(&self->_audioEngineMutex.m_lock);
      objc_storeStrong(&self->_unsafeEngine, v9);
      os_unfair_lock_unlock(&self->_audioEngineMutex.m_lock);
      operator new();
    }

    if (v6)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "[REPhaseContext engine] Initializing Phase audio engine: using existing engine.", &v11, 2u);
    }

    os_unfair_lock_unlock(&self->_audioEngineCreationMutex.m_lock);
  }

  return v3;
}

- (void)update
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_soundEventsMutex.m_lock);
  for (i = self->_soundEvents.__table_.__first_node_.__next_; i; i = *i)
  {
    v4 = i[3];
    [v4 updateCommandQueue];
  }

  os_unfair_lock_unlock(&self->_soundEventsMutex.m_lock);
  os_unfair_lock_lock(&self->_audioEngineMutex.m_lock);
  v5 = self->_unsafeEngine;
  os_unfair_lock_unlock(&self->_audioEngineMutex.m_lock);
  rootObject = [(PHASEEngine *)v5 rootObject];
  v7 = re::audioLogObjects(rootObject);
  v8 = re::AudioLogObjects::loggingEnabled(v7);
  if (v8)
  {
    v9 = *re::audioLogObjects(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      children = [(re *)rootObject children];
      v11 = 138412546;
      v12 = rootObject;
      v13 = 2048;
      v14 = [children count];
      _os_log_debug_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEBUG, "REPHASEContext update: %@ has %lu children right before PHASEEngine update", &v11, 0x16u);
    }
  }

  if (self->_phaseUpdateMode == 1)
  {
    [(PHASEEngine *)v5 update];
  }
}

- (void)clearPhaseShapeCache
{
  os_unfair_lock_lock(&self->_shapesMutex.m_lock);
  if (self->_shapes.__table_.__size_)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::__deallocate_node(self->_shapes.__table_.__first_node_.__next_);
    self->_shapes.__table_.__first_node_.__next_ = 0;
    size = self->_shapes.__table_.__bucket_list_.__deleter_.__size_;
    if (size)
    {
      for (i = 0; i != size; ++i)
      {
        self->_shapes.__table_.__bucket_list_.__ptr_[i] = 0;
      }
    }

    self->_shapes.__table_.__size_ = 0;
  }

  os_unfair_lock_unlock(&self->_shapesMutex.m_lock);
}

- (void)addPhaseShapeToCache:(id)cache meshID:(unint64_t)d mesh:(id)mesh
{
  v27 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  meshCopy = mesh;
  v10 = re::audioLogObjects(meshCopy);
  v11 = re::AudioLogObjects::loggingEnabled(v10);
  if (v11)
  {
    v22 = *re::audioLogObjects(v11);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = 138412546;
      v24 = cacheCopy;
      v25 = 2048;
      dCopy = d;
      _os_log_debug_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEBUG, "REPHASEContext:addPhaseShapeToCache: adding PHASEShape(%@) with meshID(%llu) to cache", &v23, 0x16u);
    }
  }

  os_unfair_lock_lock(&self->_shapesMutex.m_lock);
  v12 = cacheCopy;
  v13 = meshCopy;
  size = self->_shapes.__table_.__bucket_list_.__deleter_.__size_;
  if (!size)
  {
    goto LABEL_19;
  }

  v15 = vcnt_s8(size);
  v15.i16[0] = vaddlv_u8(v15);
  if (v15.u32[0] > 1uLL)
  {
    dCopy2 = d;
    if (size <= d)
    {
      dCopy2 = d % size;
    }
  }

  else
  {
    dCopy2 = (size - 1) & d;
  }

  v17 = self->_shapes.__table_.__bucket_list_.__ptr_[dCopy2];
  if (!v17 || (v18 = *v17) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v19 = v18[1];
    if (v19 == d)
    {
      break;
    }

    if (v15.u32[0] > 1uLL)
    {
      if (v19 >= size)
      {
        v19 %= size;
      }
    }

    else
    {
      v19 &= size - 1;
    }

    if (v19 != dCopy2)
    {
      goto LABEL_19;
    }

LABEL_18:
    v18 = *v18;
    if (!v18)
    {
      goto LABEL_19;
    }
  }

  if (v18[2] != d)
  {
    goto LABEL_18;
  }

  v20 = v18[3];
  v18[3] = v12;

  v21 = v18[4];
  v18[4] = v13;

  os_unfair_lock_unlock(&self->_shapesMutex.m_lock);
}

- (id)getPhaseShapeFromCacheWithMeshID:(unint64_t)d
{
  os_unfair_lock_lock(&self->_shapesMutex.m_lock);
  v5 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&self->_shapes.__table_.__bucket_list_.__ptr_, d);
  if (v5)
  {
    v6 = v5[3];
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(&self->_shapesMutex.m_lock);

  return v6;
}

- (void)removePhaseShapeFromCacheWithMeshID:(unint64_t)d
{
  v26 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_shapesMutex.m_lock);
  v5 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&self->_shapes.__table_.__bucket_list_.__ptr_, d);
  v6 = re::audioLogObjects(v5);
  if (v5)
  {
    v7 = re::AudioLogObjects::loggingEnabled(v6);
    if (v7)
    {
      v20 = *re::audioLogObjects(v7);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = *(v5 + 3);
        v22 = 138412546;
        dCopy2 = v21;
        v24 = 2048;
        dCopy = d;
        _os_log_debug_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEBUG, "REPHASEContext:removePhaseShapeFromCache: removing PHASEShape(%@) with meshID(%llu) from cache", &v22, 0x16u);
      }
    }

    size = self->_shapes.__table_.__bucket_list_.__deleter_.__size_;
    v9 = *v5;
    v10 = *(v5 + 1);
    v11 = vcnt_s8(size);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      if (v10 >= size)
      {
        v10 %= size;
      }
    }

    else
    {
      v10 &= size - 1;
    }

    ptr = self->_shapes.__table_.__bucket_list_.__ptr_;
    isa = ptr[v10];
    do
    {
      v16 = isa;
      isa = isa->super.isa;
    }

    while (isa != v5);
    if (v16 == &self->_shapes.__table_.__first_node_)
    {
      goto LABEL_23;
    }

    unsafeEngine = v16->_unsafeEngine;
    if (v11.u32[0] > 1uLL)
    {
      if (unsafeEngine >= size)
      {
        unsafeEngine %= size;
      }
    }

    else
    {
      unsafeEngine &= size - 1;
    }

    if (unsafeEngine != v10)
    {
LABEL_23:
      if (v9)
      {
        v18 = *(v9 + 1);
        if (v11.u32[0] > 1uLL)
        {
          v19 = *(v9 + 1);
          if (v18 >= size)
          {
            v19 = v18 % size;
          }
        }

        else
        {
          v19 = v18 & (size - 1);
        }

        if (v19 == v10)
        {
          goto LABEL_27;
        }
      }

      ptr[v10] = 0;
      v9 = *v5;
    }

    if (!v9)
    {
LABEL_33:
      v16->super.isa = v9;
      *v5 = 0;
      --self->_shapes.__table_.__size_;
      std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,void *>>>::operator()[abi:ne200100](1, v5);
      goto LABEL_34;
    }

    v18 = *(v9 + 1);
LABEL_27:
    if (v11.u32[0] > 1uLL)
    {
      if (v18 >= size)
      {
        v18 %= size;
      }
    }

    else
    {
      v18 &= size - 1;
    }

    if (v18 != v10)
    {
      self->_shapes.__table_.__bucket_list_.__ptr_[v18] = v16;
      v9 = *v5;
    }

    goto LABEL_33;
  }

  v12 = re::AudioLogObjects::loggingEnabled(v6);
  if (v12)
  {
    v13 = *re::audioLogObjects(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v22 = 134217984;
      dCopy2 = d;
      _os_log_debug_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEBUG, "REPHASEContext:removePhaseShapeFromCache: warning: meshID(%llu) not found in cache", &v22, 0xCu);
    }
  }

LABEL_34:
  os_unfair_lock_unlock(&self->_shapesMutex.m_lock);
}

- (unint64_t)phaseShapeCount
{
  os_unfair_lock_lock(&self->_shapesMutex.m_lock);
  size = self->_shapes.__table_.__size_;
  os_unfair_lock_unlock(&self->_shapesMutex.m_lock);
  return size;
}

- (unordered_map<unsigned)copyPhaseShapeCache
{
  os_unfair_lock_lock(&self->_shapesMutex.m_lock);
  retstr->__table_.__bucket_list_ = 0u;
  *&retstr->__table_.__first_node_.__next_ = 0u;
  retstr->__table_.__max_load_factor_ = self->_shapes.__table_.__max_load_factor_;
  std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::__rehash<true>(retstr, self->_shapes.__table_.__bucket_list_.__deleter_.__size_);
  for (i = self->_shapes.__table_.__first_node_.__next_; i; i = *i)
  {
    v6 = i[2];
    size = retstr->__table_.__bucket_list_.__deleter_.__size_;
    if (!size)
    {
      goto LABEL_18;
    }

    v8 = vcnt_s8(size);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v9 = i[2];
      if (size <= v6)
      {
        v9 = v6 % size;
      }
    }

    else
    {
      v9 = (size - 1) & v6;
    }

    v10 = retstr->__table_.__bucket_list_.__ptr_[v9];
    if (!v10 || (v11 = *v10) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        break;
      }

      if (v8.u32[0] > 1uLL)
      {
        if (v12 >= size)
        {
          v12 %= size;
        }
      }

      else
      {
        v12 &= size - 1;
      }

      if (v12 != v9)
      {
        goto LABEL_18;
      }

LABEL_17:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_18;
      }
    }

    if (v11[2] != v6)
    {
      goto LABEL_17;
    }
  }

  os_unfair_lock_unlock(&self->_shapesMutex.m_lock);
  return result;
}

- (void)removeOccluderFromScene:(unint64_t)scene entity:(unint64_t)entity shouldRemoveEntity:(BOOL)removeEntity
{
  removeEntityCopy = removeEntity;
  v34 = *MEMORY[0x1E69E9840];
  [(REPHASEContext *)self sceneForID:?];
  if (v26)
  {
    re::audio::REPHASEAudioScene::getEntity(v26, entity, &v24);
    v9 = v24;
    if (v24)
    {
      v10 = *(v24 + 24);
      v11 = re::audioLogObjects(v8);
      if (v10)
      {
        v12 = re::AudioLogObjects::loggingEnabled(v11);
        if (v12)
        {
          v21 = *re::audioLogObjects(v12);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v22 = *(v9 + 32);
            *buf = 134218498;
            sceneCopy4 = scene;
            v30 = 2048;
            entityCopy5 = entity;
            v32 = 2112;
            v33 = v22;
            _os_log_debug_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEBUG, "removeOccluderFromScene: sceneID=%llu entityID=%llu entityName='%@'", buf, 0x20u);
          }
        }

        parent = [*(v9 + 24) parent];
        [parent removeChild:*(v9 + 24)];
        v14 = *(v9 + 24);
        *(v9 + 24) = 0;

        if (removeEntityCopy && !*(v9 + 16))
        {
          v16 = re::audioLogObjects(v15);
          v17 = re::AudioLogObjects::loggingEnabled(v16);
          if (v17)
          {
            v23 = *re::audioLogObjects(v17);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134217984;
              sceneCopy4 = entity;
              _os_log_debug_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_DEBUG, "removeOccluderFromScene: removing entity(%llu) from REAudioScene", buf, 0xCu);
            }
          }

          re::audio::REPHASEAudioScene::removeEntity(v26, entity);
        }

        goto LABEL_10;
      }

      v19 = *v11;
      if (!os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
LABEL_10:
        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v25);
        }

        goto LABEL_12;
      }

      *buf = 134218240;
      sceneCopy4 = scene;
      v30 = 2048;
      entityCopy5 = entity;
      v20 = "removeOccluderFromScene: occluder not found for sceneID=%llu entityID=%llu";
    }

    else
    {
      v19 = *re::audioLogObjects(v8);
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *buf = 134218240;
      sceneCopy4 = scene;
      v30 = 2048;
      entityCopy5 = entity;
      v20 = "removeOccluderFromScene: entity not found for sceneID=%llu entityID=%llu";
    }

    _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0x16u);
    goto LABEL_10;
  }

  v18 = *re::audioLogObjects(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218240;
    sceneCopy4 = scene;
    v30 = 2048;
    entityCopy5 = entity;
    _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "removeOccluderFromScene: scene not found for sceneID=%llu entityID=%llu", buf, 0x16u);
  }

LABEL_12:
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  }
}

- (void)applyMeshRemoval:(const void *)removal shouldRemoveEntity:(BOOL)entity
{
  entityCopy = entity;
  [(REPHASEContext *)self removePhaseShapeFromCacheWithMeshID:*(removal + 2)];
  v7 = *removal;
  v8 = *(removal + 1);

  [(REPHASEContext *)self removeOccluderFromScene:v7 entity:v8 shouldRemoveEntity:entityCopy];
}

- (void)applyMeshRemovals:(const void *)removals shouldRemoveEntity:(BOOL)entity
{
  v4 = *(removals + 2);
  if (v4)
  {
    entityCopy = entity;
    v7 = *(removals + 4);
    v8 = 40 * v4;
    do
    {
      [(REPHASEContext *)self applyMeshRemoval:v7 shouldRemoveEntity:entityCopy];
      v7 += 40;
      v8 -= 40;
    }

    while (v8);
  }
}

- (void)addOccluder:(id)occluder toScene:(unint64_t)scene entity:(unint64_t)entity
{
  v31 = *MEMORY[0x1E69E9840];
  occluderCopy = occluder;
  v10 = occluderCopy;
  if (scene == -1 || !entity)
  {
    v18 = *re::audioLogObjects(occluderCopy);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      sceneCopy3 = entity;
      v29 = 2048;
      entityCopy3 = scene;
      _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "REPhaseContext:addOccluder Can't add occluder to invalid entity(%llu)/scene(%llu)", buf, 0x16u);
    }
  }

  else
  {
    [(REPHASEContext *)self sceneForID:scene];
    if (v25)
    {
      re::audio::REPHASEAudioScene::getOrCreateEntity(v25, entity, &v23);
      v12 = v23;
      if (v23)
      {
        os_unfair_lock_lock(&self->_audioEngineMutex.m_lock);
        v13 = self->_unsafeEngine;
        os_unfair_lock_unlock(&self->_audioEngineMutex.m_lock);
        rootObject = [(PHASEEngine *)v13 rootObject];

        objc_storeStrong((v12 + 24), occluder);
        v15 = v10;
        [*(v12 + 24) setTransform:{*(v12 + 48), *(v12 + 64), *(v12 + 80), *(v12 + 96)}];

        v22 = 0;
        [rootObject addChild:v15 error:&v22];
        v16 = v22;
        v17 = v16;
        if (v16)
        {
          v21 = *re::audioLogObjects(v16);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218242;
            sceneCopy3 = entity;
            v29 = 2112;
            entityCopy3 = v17;
            _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "REPhaseContext:addOccluder Could not add PHASEOccluder for entity %llu. Error %@", buf, 0x16u);
          }
        }
      }

      else
      {
        v20 = *re::audioLogObjects(v11);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          sceneCopy3 = scene;
          v29 = 2048;
          entityCopy3 = entity;
          _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "REPhaseContext:addOccluder failed to find or create REPHASEEntity for sceneID(%llu) entityID(%llu)", buf, 0x16u);
        }
      }

      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v24);
      }
    }

    else
    {
      v19 = *re::audioLogObjects(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        sceneCopy3 = scene;
        _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "REPhaseContext:addOccluder failed to find REPHASEAudioScene for sceneID(%llu)", buf, 0xCu);
      }
    }

    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v26);
    }
  }
}

- (void)applyOccluderAdditions:(const void *)additions
{
  v3 = *(additions + 2);
  if (v3)
  {
    v5 = *(additions + 4);
    v6 = 48 * v3;
    do
    {
      [(REPHASEContext *)self addOccluder:v5];
      v5 += 48;
      v6 -= 48;
    }

    while (v6);
  }
}

- (void)updateOccluder:(const void *)occluder
{
  v14 = *occluder;
  v5 = *(occluder + 5);
  v15 = *(occluder + 2);
  v16 = v5;
  v17 = *(occluder + 48);
  [(REPHASEContext *)self applyMeshRemoval:&v14 shouldRemoveEntity:0];
  v9 = *occluder;
  v6 = *(occluder + 4);
  v10 = *(occluder + 3);
  v7 = v6;
  v8 = *(occluder + 5);
  v11 = v7;
  v12 = v8;
  v13 = *(occluder + 48);
  [(REPHASEContext *)self addOccluder:&v9];
}

- (void)applyOccluderUpdates:(const void *)updates
{
  v3 = *(updates + 2);
  if (v3)
  {
    v5 = *(updates + 4);
    v6 = 56 * v3;
    do
    {
      [(REPHASEContext *)self updateOccluder:v5];
      v5 += 56;
      v6 -= 56;
    }

    while (v6);
  }
}

- (void)applyMeshEvents:(const void *)events
{
  selfCopy = self;
  v3 = *(events + 2);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v6 = (*(events + 5) + 48 * ((*(events + 3) + i) % *(events + 1)));
      v7 = v6[2];
      if (v7)
      {
        for (j = 0; j != v7; ++j)
        {
          v9 = v6[5] + 48 * ((j + v6[3]) % v6[1]);
          v12[0] = &selfCopy;
          v12[1] = &selfCopy;
          v12[2] = &selfCopy;
          v10 = *(v9 + 40);
          if (v10 == -1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v13 = v12;
          (off_1F5CCAA38[v10])(&v13);
        }
      }
    }
  }
}

- (id)createAcousticMaterialsArrayWithAbsorption:(DynamicArray<re:(DynamicArray<re:(DynamicArray<re::AcousticSoundReductionMaterial> *)absorption :AcousticScatteringMaterial> *)a4 :AcousticAbsorptionMaterial> *)a3 scattering:soundReduction:
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v12, 2532, self);
  engine = [(REPHASEContext *)self engine];
  v10 = re::REPHASEMaterialCache::getMaterials(&self->_phaseMaterialCache, engine, a3, a4, absorption);

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v12);

  return v10;
}

- (id)createPhaseShapeWithMeshID:(unint64_t)d materials:(id)materials mdlMesh:(id)mesh arkitMesh:(BOOL)arkitMesh meshType:(unsigned __int8)type
{
  typeCopy = type;
  arkitMeshCopy = arkitMesh;
  v57[2] = *MEMORY[0x1E69E9840];
  materialsCopy = materials;
  meshCopy = mesh;
  v14 = re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v41, 2530, self);
  if (typeCopy || !arkitMeshCopy)
  {
    v17 = 0;
    v18 = 7;
    if (typeCopy == 1 && arkitMeshCopy)
    {
      v19 = re::audioLogObjects(v14);
      v20 = re::AudioLogObjects::loggingEnabled(v19);
      if (v20)
      {
        v37 = *re::audioLogObjects(v20);
        v20 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
        if (v20)
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_DEFAULT, "[AudioManager_PHASE_Async::CreatePhaseShape] PRRMesh being used", buf, 2u);
        }
      }

      if (self->_directpathEnabled)
      {
        v17 = 1;
        v18 = 7;
      }

      else
      {
        v21 = re::audioLogObjects(v20);
        v22 = re::AudioLogObjects::loggingEnabled(v21);
        if (v22)
        {
          v38 = *re::audioLogObjects(v22);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_DEFAULT, "[AudioManager_PHASE_Async::CreatePhaseShape] Removing PHASESpatialPipelineFlagDirectPathTransmission", buf, 2u);
          }
        }

        v17 = 1;
        v18 = 6;
      }
    }
  }

  else
  {
    v15 = re::audioLogObjects(v14);
    v16 = re::AudioLogObjects::loggingEnabled(v15);
    if (v16)
    {
      v36 = *re::audioLogObjects(v16);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_DEFAULT, "[AudioManager_PHASE_Async::CreatePhaseShape] MeshChunks being used", buf, 2u);
      }

      v18 = 1;
      v17 = 1;
    }

    else
    {
      v17 = 1;
      v18 = 1;
    }
  }

  v56[0] = @"PHASEShapeCategoriesKey";
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v18];
  v56[1] = @"PHASEShapeIsRealKey";
  v57[0] = v23;
  v24 = [MEMORY[0x1E696AD98] numberWithBool:v17];
  v57[1] = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:2];

  v26 = objc_alloc(MEMORY[0x1E6978208]);
  engine = [(REPHASEContext *)self engine];
  v28 = [v26 initWithEngine:engine mesh:meshCopy materials:materialsCopy options:v25];

  boundingBox = [meshCopy boundingBox];
  v39 = v31;
  v40 = v30;
  v32 = re::audioLogObjects(boundingBox);
  v33 = re::AudioLogObjects::loggingEnabled(v32);
  if (v33)
  {
    v35 = *re::audioLogObjects(v33);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134219520;
      dCopy = d;
      v44 = 2048;
      v45 = *&v39;
      v46 = 2048;
      v47 = *(&v39 + 1);
      v48 = 2048;
      v49 = *(&v39 + 2);
      v50 = 2048;
      v51 = *&v40;
      v52 = 2048;
      v53 = *(&v40 + 1);
      v54 = 2048;
      v55 = *(&v40 + 2);
      _os_log_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_DEFAULT, "REPHASEContext:createPhaseShapeWithMeshID: created shape with id %llu, bounding box = [% 4.3f,% 4.3f,% 4.3f|% 4.3f,% 4.3f,% 4.3f]", buf, 0x48u);
    }
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v41);

  return v28;
}

- (id)createPHASEShape:(const void *)shape
{
  v6 = 0;
  selfCopy = self;
  v8[0] = &selfCopy;
  v8[1] = &v6;
  v8[2] = &v6;
  v8[3] = &selfCopy;
  v3 = *(shape + 38);
  if (v3 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v9 = v8;
  (off_1F5CCAA50[v3])(&v9, shape);
  v4 = v6;

  return v4;
}

- (id)createPHASEShapeAndOccluder:(const void *)occluder
{
  v26[1] = *MEMORY[0x1E69E9840];
  v5 = [(REPHASEContext *)self createPHASEShape:?];
  if (v5)
  {
    v6 = re::audio::meshID<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>(occluder);
    v7 = *(occluder + 38);
    if (v7 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v8 = v6;
    *buf = &v22;
    v9 = (off_1F5CCAA70[v7])(buf, occluder);
    [(REPHASEContext *)self addPhaseShapeToCache:v5 meshID:v8 mesh:v9];

    re::audio::meshID<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>(occluder);
    re::audio::meshType<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>(occluder);
    re::audio::meshType<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>(occluder);
    re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(buf, 2543, self);
    v10 = objc_alloc(MEMORY[0x1E69781E8]);
    os_unfair_lock_lock(&self->_audioEngineMutex.m_lock);
    v11 = self->_unsafeEngine;
    os_unfair_lock_unlock(&self->_audioEngineMutex.m_lock);
    v26[0] = v5;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    v13 = [v10 initWithEngine:v11 shapes:v12];

    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(buf);
    v15 = re::audioLogObjects(v14);
    v16 = re::AudioLogObjects::loggingEnabled(v15);
    if (v16)
    {
      v17 = *re::audioLogObjects(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(occluder + 38);
        if (v18 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v22 = &v21;
        v19 = (off_1F5CCAA80[v18])(&v22, occluder);
        *buf = 134218242;
        *&buf[4] = v19;
        v24 = 2112;
        v25 = v13;
        _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "REPHASEContext:createPHASEShapeAndOccluder entityId=%llu created PHASEOccluder: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (PHASEOccluderData)createPHASEOccluderData:(SEL)data
{
  retstr->var3 = 0;
  retstr->var4.var0.__null_state_ = 0;
  retstr->var4.__engaged_ = 0;
  v5 = *(a4 + 38);
  if (v5 == -1 || (v14[0] = &v12, retstr->var0 = (off_1F5CCAA90[v5])(v14, a4), v8 = *(a4 + 38), v8 == -1) || (v14[0] = &v12, retstr->var1 = (off_1F5CCAA80[v8])(v14, a4), retstr->var2 = re::audio::meshID<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>(a4), LOBYTE(v12) = 0, LOBYTE(v13) = 0, v14[0] = &v12, v14[1] = &v12, v9 = *(a4 + 38), v9 == -1))
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v15 = v14;
  (off_1F5CCAAA0[v9])(&v15, a4);
  v10 = v13;
  retstr->var4.var0.__val_ = v12;
  retstr->var4.__engaged_ = v10;
  result = [(REPHASEContext *)self createPHASEShapeAndOccluder:a4];
  retstr->var3 = result;
  return result;
}

- (DynamicArray<re::audio::PHASEOccluderData>)createPHASEOccluders:(SEL)occluders
{
  retstr->var4 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  retstr->var3 = 0;
  v5 = *(a4 + 2);
  if (v5)
  {
    selfCopy = self;
    v7 = *(a4 + 4);
    v8 = 160 * v5;
    do
    {
      v9 = unk_1F5D5DAB8(selfCopy, "createPHASEOccluderData:", v7);
      var1 = retstr->var1;
      var2 = retstr->var2;
      if (var2 >= var1)
      {
        v12 = var2 + 1;
        if (var1 < var2 + 1)
        {
          if (retstr->var0)
          {
            if (var1)
            {
              v13 = 2 * var1;
            }

            else
            {
              v13 = 8;
            }

            if (v13 <= v12)
            {
              v14 = var2 + 1;
            }

            else
            {
              v14 = v13;
            }

            re::DynamicArray<re::audio::PHASEOccluderData>::setCapacity(retstr, v14);
          }

          else
          {
            re::DynamicArray<re::audio::PHASEOccluderData>::setCapacity(retstr, v12);
            ++retstr->var3;
          }
        }

        var2 = retstr->var2;
      }

      v15 = &retstr->var4[var2];
      v16 = v18;
      v15->var2 = v19;
      *&v15->var0 = v16;
      v17 = v20;
      v20 = 0;
      v15->var3 = v17;
      v15->var4 = v21;
      ++retstr->var2;
      ++retstr->var3;

      v7 += 160;
      v8 -= 160;
    }

    while (v8);
  }

  return self;
}

- (PHASEOccluderUpdateData)createPHASEOccluderUpdateData:(SEL)data
{
  retstr->var4 = 0;
  retstr->var5.var0.__null_state_ = 0;
  retstr->var5.__engaged_ = 0;
  v5 = *(a4 + 40);
  if (v5 == -1 || (*&v14[0] = &v15, retstr->var0 = (off_1F5CCAAB0[v5])(v14, a4), v8 = *(a4 + 40), v8 == -1) || (*&v14[0] = &v15, retstr->var1 = (off_1F5CCAAC0[v8])(v14, a4), v9 = *(a4 + 40), v9 == -1) || (*&v14[0] = &v15, retstr->var2 = (off_1F5CCAAD0[v9])(v14, a4), v10 = *(a4 + 40), v10 == -1) || (*&v14[0] = &v15, retstr->var3 = (off_1F5CCAAE0[v10])(v14, a4), LOBYTE(v15) = 0, LOBYTE(v16) = 0, *&v14[0] = &v15, *(&v14[0] + 1) = &v15, v11 = *(a4 + 40), v11 == -1))
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v17 = v14;
  (off_1F5CCAAF0[v11])(&v17, a4);
  v12 = v16;
  retstr->var5.var0.__val_ = v15;
  retstr->var5.__engaged_ = v12;
  re::audio::convertToAcousticMeshAddition(a4, v14);
  retstr->var4 = [(REPHASEContext *)self createPHASEShapeAndOccluder:v14];
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v14);
}

- (DynamicArray<re::audio::PHASEOccluderUpdateData>)updatePHASEOccluders:(SEL)occluders
{
  retstr->var4 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  retstr->var3 = 0;
  v5 = *(a4 + 2);
  if (v5)
  {
    selfCopy = self;
    v7 = *(a4 + 4);
    v8 = 168 * v5;
    do
    {
      v9 = unk_1F5D5DAE8(selfCopy, "createPHASEOccluderUpdateData:", v7);
      var1 = retstr->var1;
      var2 = retstr->var2;
      if (var2 >= var1)
      {
        v12 = var2 + 1;
        if (var1 < var2 + 1)
        {
          if (retstr->var0)
          {
            if (var1)
            {
              v13 = 2 * var1;
            }

            else
            {
              v13 = 8;
            }

            if (v13 <= v12)
            {
              v14 = var2 + 1;
            }

            else
            {
              v14 = v13;
            }

            re::DynamicArray<re::audio::PHASEOccluderUpdateData>::setCapacity(retstr, v14);
          }

          else
          {
            re::DynamicArray<re::audio::PHASEOccluderUpdateData>::setCapacity(retstr, v12);
            ++retstr->var3;
          }
        }

        var2 = retstr->var2;
      }

      v15 = &retstr->var4[var2];
      v16 = v19;
      *&v15->var0 = v18;
      *&v15->var2 = v16;
      v17 = v20;
      v20 = 0;
      v15->var4 = v17;
      v15->var5 = v21;
      ++retstr->var2;
      ++retstr->var3;

      v7 += 168;
      v8 -= 168;
    }

    while (v8);
  }

  return self;
}

- (void)stopAllAndReset
{
  atomic_store(1u, &self->_stoppedAndDestroyed);
  os_unfair_lock_lock(&self->_soundEventsMutex.m_lock);
  for (i = self->_soundEvents.__table_.__first_node_.__next_; i; i = *i)
  {
    v4 = i[3];
    [v4 stopAndDestroy];
    if ([v4 isGroupPlaybackEvent])
    {
      if (v4)
      {
        [v4 prepareStates];
        for (j = v21; j; j = *j)
        {
          [(REPHASEContext *)self decrementOrDestroyEntityWithZeroCount:*(j[3] + 40), v20];
        }
      }

      else
      {
        v22 = 0;
        v20 = 0u;
        v21 = 0u;
      }

      std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::~__hash_table(&v20);
    }

    else
    {
      [v4 prepareState];
      [(REPHASEContext *)self decrementOrDestroyEntityWithZeroCount:*(v20 + 40)];
      if (*(&v20 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v20 + 1));
      }
    }
  }

  if (self->_soundEvents.__table_.__size_)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,REPHASESoundEvent * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,REPHASESoundEvent * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,REPHASESoundEvent * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,REPHASESoundEvent * {__strong}>>>::__deallocate_node(self->_soundEvents.__table_.__first_node_.__next_);
    self->_soundEvents.__table_.__first_node_.__next_ = 0;
    size = self->_soundEvents.__table_.__bucket_list_.__deleter_.__size_;
    if (size)
    {
      for (k = 0; k != size; ++k)
      {
        self->_soundEvents.__table_.__bucket_list_.__ptr_[k] = 0;
      }
    }

    self->_soundEvents.__table_.__size_ = 0;
  }

  os_unfair_lock_unlock(&self->_soundEventsMutex.m_lock);
  os_unfair_lock_lock(&self->_soundEventsPreparingMutex.m_lock);
  if (self->_soundEventsPreparing.__table_.__size_)
  {
    next = self->_soundEventsPreparing.__table_.__first_node_.__next_;
    if (next)
    {
      do
      {
        v9 = *next;
        operator delete(next);
        next = v9;
      }

      while (v9);
    }

    self->_soundEventsPreparing.__table_.__first_node_.__next_ = 0;
    v10 = self->_soundEventsPreparing.__table_.__bucket_list_.__deleter_.__size_;
    if (v10)
    {
      for (m = 0; m != v10; ++m)
      {
        self->_soundEventsPreparing.__table_.__bucket_list_.__ptr_[m] = 0;
      }
    }

    self->_soundEventsPreparing.__table_.__size_ = 0;
  }

  os_unfair_lock_unlock(&self->_soundEventsPreparingMutex.m_lock);
  [(REPHASEContext *)self clearPhaseShapeCache];
  os_unfair_lock_lock(&self->_audioAssetsMutex.m_lock);
  if (self->_audioAssets.__table_.__size_)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,REPHASESoundAsset>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,REPHASESoundAsset>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,REPHASESoundAsset>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,REPHASESoundAsset>>>::__deallocate_node(self->_audioAssets.__table_.__first_node_.__next_);
    self->_audioAssets.__table_.__first_node_.__next_ = 0;
    v12 = self->_audioAssets.__table_.__bucket_list_.__deleter_.__size_;
    if (v12)
    {
      for (n = 0; n != v12; ++n)
      {
        self->_audioAssets.__table_.__bucket_list_.__ptr_[n] = 0;
      }
    }

    self->_audioAssets.__table_.__size_ = 0;
  }

  os_unfair_lock_unlock(&self->_audioAssetsMutex.m_lock);
  os_unfair_lock_lock(&self->_scenesMutex.m_lock);
  for (ii = self->_scenes.__table_.__first_node_.__next_; ii; ii = *ii)
  {
    v15 = ii[3];
    v16 = ii[4];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      re::audio::REPHASEAudioScene::destroy(v15);
      std::__shared_weak_count::__release_shared[abi:nn200100](v16);
    }

    else
    {
      re::audio::REPHASEAudioScene::destroy(v15);
    }
  }

  if (self->_scenes.__table_.__size_)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEAudioScene>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEAudioScene>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEAudioScene>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEAudioScene>>>>::__deallocate_node(self->_scenes.__table_.__first_node_.__next_);
    self->_scenes.__table_.__first_node_.__next_ = 0;
    v17 = self->_scenes.__table_.__bucket_list_.__deleter_.__size_;
    if (v17)
    {
      for (jj = 0; jj != v17; ++jj)
      {
        self->_scenes.__table_.__bucket_list_.__ptr_[jj] = 0;
      }
    }

    self->_scenes.__table_.__size_ = 0;
  }

  os_unfair_lock_unlock(&self->_scenesMutex.m_lock);
  os_unfair_lock_lock(&self->_audioEngineMutex.m_lock);
  v19 = self->_unsafeEngine;
  os_unfair_lock_unlock(&self->_audioEngineMutex.m_lock);
  [(PHASEEngine *)v19 stop];
}

- (shared_ptr<re::audio::REPHASEAudioScene>)sceneForID:(unint64_t)d
{
  v4 = v3;
  if (d == -1)
  {
    *v3 = 0;
    v3[1] = 0;
    goto LABEL_25;
  }

  os_unfair_lock_lock(&self->_scenesMutex.m_lock);
  size = self->_scenes.__table_.__bucket_list_.__deleter_.__size_;
  if (!size)
  {
    goto LABEL_19;
  }

  v9 = vcnt_s8(size);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    dCopy = d;
    if (size <= d)
    {
      dCopy = d % size;
    }
  }

  else
  {
    dCopy = (size - 1) & d;
  }

  v11 = self->_scenes.__table_.__bucket_list_.__ptr_[dCopy];
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_19:
    re::audio::REPHASEAudioScene::create(self, v7);
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == d)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= size)
      {
        v13 %= size;
      }
    }

    else
    {
      v13 &= size - 1;
    }

    if (v13 != dCopy)
    {
      goto LABEL_19;
    }

LABEL_18:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_19;
    }
  }

  if (v12[2] != d)
  {
    goto LABEL_18;
  }

  v14 = v12[4];
  *v4 = v12[3];
  v4[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(&self->_scenesMutex.m_lock);
LABEL_25:
  result.var1 = a2;
  result.var0 = self;
  return result;
}

- (void)addAudioAssetID:(unint64_t)d configuration:(const void *)configuration
{
  if (*(configuration + 2))
  {
    v7 = *(configuration + 2);
  }

  else
  {
    v7 = 1.0;
  }

  os_unfair_lock_lock(&self->_audioAssetsMutex.m_lock);
  v14 = *configuration;
  v15 = *(configuration + 1);
  v16[0] = *(configuration + 32);
  if (v16[0] == 1)
  {
    re::DynamicString::DynamicString(&v17, (configuration + 40));
  }

  v19 = *(configuration + 72);
  if (v19 == 1)
  {
    v20 = *(configuration + 19);
  }

  v21 = *(configuration + 80);
  v22 = v7;
  size = self->_audioAssets.__table_.__bucket_list_.__deleter_.__size_;
  if (!size)
  {
    goto LABEL_25;
  }

  v9 = vcnt_s8(size);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    dCopy = d;
    if (size <= d)
    {
      dCopy = d % size;
    }
  }

  else
  {
    dCopy = (size - 1) & d;
  }

  v11 = self->_audioAssets.__table_.__bucket_list_.__ptr_[dCopy];
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_25:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == d)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= size)
      {
        v13 %= size;
      }
    }

    else
    {
      v13 &= size - 1;
    }

    if (v13 != dCopy)
    {
      goto LABEL_25;
    }

LABEL_24:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_25;
    }
  }

  if (v12[2] != d)
  {
    goto LABEL_24;
  }

  *(v12 + 3) = v14;
  *(v12 + 5) = v15;
  re::Optional<re::DynamicString>::operator=((v12 + 7), v16);
  if ((v12[12] & 1) == 0)
  {
    if ((v19 & 1) == 0)
    {
      goto LABEL_32;
    }

    *(v12 + 96) = 1;
LABEL_31:
    *(v12 + 25) = v20;
    goto LABEL_32;
  }

  if (v19)
  {
    goto LABEL_31;
  }

  *(v12 + 96) = 0;
LABEL_32:
  *(v12 + 104) = v21;
  *(v12 + 14) = v22;
  if (v16[0] == 1 && v17 && (v18 & 1) != 0)
  {
    (*(*v17 + 40))();
  }

  os_unfair_lock_unlock(&self->_audioAssetsMutex.m_lock);
}

- (BOOL)getConfigurationForAudioAssetID:(unint64_t)d configuration:(void *)configuration
{
  os_unfair_lock_lock(&self->_audioAssetsMutex.m_lock);
  v7 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&self->_audioAssets.__table_.__bucket_list_.__ptr_, d);
  v8 = v7;
  if (v7)
  {
    v9 = *(v7 + 5);
    *configuration = *(v7 + 3);
    *(configuration + 1) = v9;
    re::Optional<re::DynamicString>::operator=(configuration + 32, v7 + 56);
    if (*(configuration + 72))
    {
      if ((v8[12] & 1) == 0)
      {
        *(configuration + 72) = 0;
LABEL_8:
        *(configuration + 80) = *(v8 + 104);
        goto LABEL_9;
      }
    }

    else
    {
      if ((v8[12] & 1) == 0)
      {
        goto LABEL_8;
      }

      *(configuration + 72) = 1;
    }

    *(configuration + 19) = *(v8 + 25);
    goto LABEL_8;
  }

LABEL_9:
  os_unfair_lock_unlock(&self->_audioAssetsMutex.m_lock);
  return v8 != 0;
}

- (void)removeAudioAssetID:(unint64_t)d
{
  os_unfair_lock_lock(&self->_audioAssetsMutex.m_lock);
  v5 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&self->_audioAssets.__table_.__bucket_list_.__ptr_, d);
  if (!v5)
  {
    goto LABEL_32;
  }

  v6 = v5;
  size = self->_audioAssets.__table_.__bucket_list_.__deleter_.__size_;
  isa = v5->super.isa;
  unsafeEngine = v5->_unsafeEngine;
  v10 = vcnt_s8(size);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    if (unsafeEngine >= size)
    {
      unsafeEngine %= size;
    }
  }

  else
  {
    unsafeEngine &= size - 1;
  }

  ptr = self->_audioAssets.__table_.__bucket_list_.__ptr_;
  v12 = ptr[unsafeEngine];
  do
  {
    v13 = v12;
    v12 = v12->super.isa;
  }

  while (v12 != v5);
  if (v13 == &self->_audioAssets.__table_.__first_node_)
  {
    goto LABEL_19;
  }

  v14 = v13->_unsafeEngine;
  if (v10.u32[0] > 1uLL)
  {
    if (v14 >= size)
    {
      v14 %= size;
    }
  }

  else
  {
    v14 &= size - 1;
  }

  if (v14 != unsafeEngine)
  {
LABEL_19:
    if (isa)
    {
      v15 = *(isa + 1);
      if (v10.u32[0] > 1uLL)
      {
        v16 = *(isa + 1);
        if (v15 >= size)
        {
          v16 = v15 % size;
        }
      }

      else
      {
        v16 = v15 & (size - 1);
      }

      if (v16 == unsafeEngine)
      {
        goto LABEL_23;
      }
    }

    ptr[unsafeEngine] = 0;
    isa = v5->super.isa;
  }

  if (isa)
  {
    v15 = *(isa + 1);
LABEL_23:
    if (v10.u32[0] > 1uLL)
    {
      if (v15 >= size)
      {
        v15 %= size;
      }
    }

    else
    {
      v15 &= size - 1;
    }

    if (v15 != unsafeEngine)
    {
      self->_audioAssets.__table_.__bucket_list_.__ptr_[v15] = v13;
      isa = v5->super.isa;
    }
  }

  v13->super.isa = isa;
  v5->super.isa = 0;
  --self->_audioAssets.__table_.__size_;
  if (LOBYTE(v5->_scenes.__table_.__size_) == 1)
  {
    re::DynamicString::deinit(&v5->_scenes.__table_.__max_load_factor_);
  }

  operator delete(v6);
LABEL_32:

  os_unfair_lock_unlock(&self->_audioAssetsMutex.m_lock);
}

- (void)setReverbPreset:(int64_t)preset allowingSpaceBlend:(BOOL)blend
{
  blendCopy = blend;
  v11 = *MEMORY[0x1E69E9840];
  if (self->_reverbPreset != preset || self->_allowSpaceBlend != blend)
  {
    v7 = *re::audioLogObjects(self);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109376;
      v8[1] = preset;
      v9 = 1024;
      v10 = blendCopy;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "[REPhaseContext setReverbPreset:] Setting preset to %d, allowing space blend %d.", v8, 0xEu);
    }

    self->_reverbPreset = preset;
    self->_allowSpaceBlend = blendCopy;
    [(REPHASEContext *)self applyReverbPreset];
    [(REPHASEContext *)self applySpaceBlendLevel];
  }
}

- (void)setSpaceBlendLevel:(float)level
{
  if (self->_spaceBlendLevel != level)
  {
    self->_spaceBlendLevel = level;
    [(REPHASEContext *)self applySpaceBlendLevel];
  }
}

- (void)setSpaceBlendTargetPresetOrientation:(uint64_t)orientation
{
  os_unfair_lock_lock((orientation + 260));
  v3 = *(orientation + 8);
  os_unfair_lock_unlock((orientation + 260));
  if (v3)
  {
    [v3 setSpaceBlendTargetPresetOrientation:a2];
  }

  else
  {
    v5 = *re::audioLogObjects(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_INFO, "[REPhaseContext setSpaceBlendTargetPresetOrientation] => not setting space blend target preset orientation since engine is not yet created.", buf, 2u);
    }
  }
}

- (void)applyReverbPreset
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = re::audio::phasePrivateReverbPresetFor(self->_reverbPreset);
  os_unfair_lock_lock(&self->_audioEngineMutex.m_lock);
  v4 = self->_unsafeEngine;
  os_unfair_lock_unlock(&self->_audioEngineMutex.m_lock);
  if (!v4)
  {
    v7 = *re::audioLogObjects(v5);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    v11 = 136315394;
    v12 = re::audio::phasePrivateReverbPresetName(v3);
    v13 = 1024;
    v14 = v3;
    v8 = "[REPhaseContext applyReverbPreset] => not applying reverb preset(%s, %d) since engine is not yet created.";
LABEL_9:
    v9 = v7;
    v10 = OS_LOG_TYPE_INFO;
    goto LABEL_10;
  }

  v6 = objc_opt_respondsToSelector();
  if ((v6 & 1) == 0)
  {
    v7 = *re::audioLogObjects(v6);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    v11 = 136315394;
    v12 = re::audio::phasePrivateReverbPresetName(v3);
    v13 = 1024;
    v14 = v3;
    v8 = "[REPhaseContext applyReverbPreset] => not applying reverb preset(%s, %d) since engine doesn't respond to selector.";
    goto LABEL_9;
  }

  v7 = *re::audioLogObjects([(PHASEEngine *)v4 setSpaceBlendTargetPreset:v3]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = re::audio::phasePrivateReverbPresetName(v3);
    v13 = 1024;
    v14 = v3;
    v8 = "[REPhaseContext applyReverbPreset] => [engine setSpaceBlendTargetPreset:%s] (%d)";
    v9 = v7;
    v10 = OS_LOG_TYPE_DEFAULT;
LABEL_10:
    _os_log_impl(&dword_1E1C61000, v9, v10, v8, &v11, 0x12u);
  }

LABEL_11:
}

- (void)applySpaceBlendLevel
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_audioEngineMutex.m_lock);
  v3 = self->_unsafeEngine;
  os_unfair_lock_unlock(&self->_audioEngineMutex.m_lock);
  if (v3)
  {
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      if (self->_allowSpaceBlend)
      {
        spaceBlendLevel = self->_spaceBlendLevel;
      }

      else
      {
        v10 = *re::audioLogObjects(v5);
        v5 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
        spaceBlendLevel = 1.0;
        if (v5)
        {
          v12 = 134217984;
          v13 = 1.0;
          _os_log_debug_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEBUG, "[REPhaseContext applySpaceBlendLevel] will force spaceBlendLevel to %.9g.", &v12, 0xCu);
        }
      }

      v11 = *re::audioLogObjects(v5);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = 134217984;
        v13 = spaceBlendLevel;
        _os_log_debug_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEBUG, "[REPhaseContext applySpaceBlendLevel] => [engine setSpaceBlendLevel:%.9g]", &v12, 0xCu);
      }

      [(PHASEEngine *)v3 setSpaceBlendLevel:spaceBlendLevel];
    }

    else
    {
      v9 = *re::audioLogObjects(v5);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v12) = 0;
        _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "[REPHASEContext applySpaceBlendLevel] - not applying space blend level because Phase runtime is too old.", &v12, 2u);
      }
    }
  }

  else
  {
    v7 = *re::audioLogObjects(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = self->_spaceBlendLevel;
      v12 = 134217984;
      v13 = v8;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_INFO, "[REPhaseContext applySpaceBlendLevel] => not applying space blend level(%.9g) since engine is not yet created.", &v12, 0xCu);
    }
  }
}

- (id)baseMixerDefinitionWith:(const void *)with
{
  selfCopy = self;
  v82 = *MEMORY[0x1E69E9840];
  v5 = *with;
  v6 = *(*with + 100);
  if (!*(*with + 100))
  {
    goto LABEL_9;
  }

  if (*(v5 + 304))
  {
    v7 = *re::audioLogObjects(self);
    self = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (self)
    {
      v43 = *(*with + 100);
      v44 = *(*with + 304);
      *buf = 67109376;
      *v74 = v43;
      *&v74[4] = 1024;
      *&v74[6] = v44;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Only point sources can have a directivity. Switching to omnidirectional. inputMode: %d, directivityMode: %d", buf, 0xEu);
    }

    v5 = *with;
    *(v5 + 304) = 0;
    v6 = *(v5 + 100);
  }

  if (v6 == 2)
  {
    [(REPHASEContext *)selfCopy sceneForID:*(v5 + 32)];
    re::audio::REPHASEAudioScene::getOrCreateEntity(v71, *(*with + 40), &v69);
    v16 = objc_alloc(MEMORY[0x1E6978170]);
    v17 = re::audio::REPHASESoundPrepareState::getChannelLayout(*with);
    v18 = v69;
    v20 = *(v69 + 48);
    v19 = *(v69 + 64);
    v21 = *(v69 + 80);
    LODWORD(v22) = HIDWORD(*(v69 + 64));
    v23 = COERCE_FLOAT(*(v69 + 88));
    v24 = v23 + (*&v20 + v22);
    if (v24 >= 0.0)
    {
      v32 = sqrtf(v24 + 1.0);
      v33 = vrecpe_f32(COERCE_UNSIGNED_INT(v32 + v32));
      v34 = vmul_f32(v33, vrecps_f32(COERCE_UNSIGNED_INT(v32 + v32), v33));
      v35 = vmul_f32(v34, vrecps_f32(COERCE_UNSIGNED_INT(v32 + v32), v34)).f32[0];
      *&v41 = (*(&v19 + 2) - *(&v21 + 1)) * v35;
      v42 = (*&v21 - *(&v20 + 2)) * v35;
    }

    else if (*&v20 < v22 || *&v20 < v23)
    {
      v26 = 1.0 - *&v20;
      if (v22 >= v23)
      {
        v45 = sqrtf(v22 + (v26 - v23));
        v46 = v45 + v45;
        v47 = vrecpe_f32(COERCE_UNSIGNED_INT(v45 + v45));
        v48 = vmul_f32(v47, vrecps_f32(COERCE_UNSIGNED_INT(v45 + v45), v47));
        *&v41 = (*(&v20 + 1) + *&v19) * vmul_f32(v48, vrecps_f32(COERCE_UNSIGNED_INT(v45 + v45), v48)).f32[0];
        v42 = v46 * 0.25;
      }

      else
      {
        v27 = sqrtf(v23 + (v26 - v22));
        v28 = vrecpe_f32(COERCE_UNSIGNED_INT(v27 + v27));
        v29 = vmul_f32(v28, vrecps_f32(COERCE_UNSIGNED_INT(v27 + v27), v28));
        v30 = vmul_f32(v29, vrecps_f32(COERCE_UNSIGNED_INT(v27 + v27), v29)).f32[0];
        *&v41 = (*(&v20 + 2) + *&v21) * v30;
        v42 = (*(&v19 + 2) + *(&v21 + 1)) * v30;
      }
    }

    else
    {
      v36 = sqrtf(*&v20 + ((1.0 - v22) - v23));
      *&v37 = v36 + v36;
      v38 = vrecpe_f32(v37);
      v39 = vmul_f32(v38, vrecps_f32(v37, v38));
      v40 = vmul_f32(v39, vrecps_f32(v37, v39)).f32[0];
      *&v41 = *&v37 * 0.25;
      v42 = (*(&v20 + 1) + *&v19) * v40;
    }

    *(&v41 + 1) = v42;
    v49 = [v16 initWithChannelLayout:v17 orientation:v41];

    v8 = v49;
    v50 = *re::audioLogObjects(v8);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = *(v18 + 16);
      [(re *)v8 orientation];
      v68 = v52;
      [(re *)v8 orientation];
      v67 = v53;
      [(re *)v8 orientation];
      v66 = v54;
      [(re *)v8 orientation];
      *buf = 138413314;
      *v74 = v51;
      *&v74[8] = 2048;
      v75 = v68;
      v76 = 2048;
      v77 = v67;
      v78 = 2048;
      v79 = v66;
      v80 = 2048;
      v81 = v55;
      _os_log_impl(&dword_1E1C61000, v50, OS_LOG_TYPE_DEFAULT, "[REPHASEContext baseMixerDefinitionWith] created ambient mixer definition for source %@, orientation = [%+4.3f,%+4.3f,%+4.3f,%+4.3f]", buf, 0x34u);
    }

    if (!v8)
    {
      v57 = *re::audioLogObjects(v56);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        v64 = *(*with + 24);
        re::audio::REPHASESoundPrepareState::getChannelLayout(*with);
        v65 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 134218242;
        *v74 = v64;
        *&v74[8] = 2112;
        v75 = v65;
        _os_log_error_impl(&dword_1E1C61000, v57, OS_LOG_TYPE_ERROR, "[REPHASEContext baseMixerDefinitionWith] Failed to create ambient mixer definition for token: %llu with channel layout %@", buf, 0x16u);
      }
    }

    if (v70)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v70);
    }

    if (v72)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v72);
    }
  }

  else
  {
    if (v6 != 1)
    {
      if (v6)
      {
        v31 = *re::audioLogObjects(self);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v61 = *(*with + 100);
          *buf = 67109120;
          *v74 = v61;
          _os_log_error_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_ERROR, "Unrecognized input mode for AudioFileAsset %d", buf, 8u);
        }

LABEL_28:
        v8 = 0;
        goto LABEL_41;
      }

LABEL_9:
      v8 = [(REPHASEContext *)selfCopy getOrCreateSpatialMixerDefinitionUsing:with];
      if (v8)
      {
        goto LABEL_41;
      }

      v9 = *re::audioLogObjects(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v59 = *(*with + 24);
        re::audio::REPHASESoundPrepareState::getChannelLayout(*with);
        v60 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 134218242;
        *v74 = v59;
        *&v74[8] = 2112;
        v75 = v60;
        _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "[REPHASEContext baseMixerDefinitionWith] Failed to create spatial mixer definition for token: %llu with channel layout %@", buf, 0x16u);
      }

      goto LABEL_28;
    }

    v10 = (selfCopy->_mixerDefNameCounter + 1);
    selfCopy->_mixerDefNameCounter = v10;
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"channelMixer-%d", v10];
    v12 = objc_alloc(MEMORY[0x1E6978188]);
    v13 = re::audio::REPHASESoundPrepareState::getChannelLayout(*with);
    v8 = [v12 initWithChannelLayout:v13 identifier:v11];

    if (!v8)
    {
      v15 = *re::audioLogObjects(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v62 = *(*with + 24);
        re::audio::REPHASESoundPrepareState::getChannelLayout(*with);
        v63 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 134218242;
        *v74 = v62;
        *&v74[8] = 2112;
        v75 = v63;
        _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "[REPHASEContext baseMixerDefinitionWith] Failed to create channel mixer definition for token: %llu with channel layout %@", buf, 0x16u);
      }
    }
  }

LABEL_41:

  return v8;
}

- (id)createSamplerDefinitionForToken:(unint64_t)token
{
  v15 = *MEMORY[0x1E69E9840];
  soundEvent = [(REPHASEContext *)self eventFor:?];
  v6 = soundEvent;
  if (!soundEvent)
  {
    goto LABEL_10;
  }

  soundEvent = [soundEvent soundEvent];
  v7 = soundEvent;
  if (!soundEvent)
  {
    goto LABEL_10;
  }

  [v6 prepareState];
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
  }

  if (*buf)
  {
    [v6 prepareState];
    v8 = *(*buf + 64);
    [v6 prepareState];
    v9 = [(REPHASEContext *)self samplerDefForFileAsset:v8 with:&v12];
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
    }
  }

  else
  {
LABEL_10:
    v10 = *re::audioLogObjects(soundEvent);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      *&buf[4] = token;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "cannot create sampler definition for token %llu with invalid event %@", buf, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)samplerDefForFileAsset:(unint64_t)asset with:(const void *)with
{
  v7 = [(REPHASEContext *)self baseMixerDefinitionWith:with];
  v8 = [(REPHASEContext *)self samplerDefForFileAsset:asset mixerDefinition:v7 prepareState:with];

  return v8;
}

- (id)samplerDefForFileAsset:(unint64_t)asset mixerDefinition:(id)definition prepareState:(const void *)state
{
  v32 = *MEMORY[0x1E69E9840];
  definitionCopy = definition;
  if (!definitionCopy)
  {
    v15 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
      *(buf.__r_.__value_.__r.__words + 4) = asset;
      _os_log_fault_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_FAULT, "[REPHASEContext samplerDefForFileAsset:mixerDefinition:prepareState] Failed to initialize PHASESamplerNodeDefinition for assetID: %llu.PHASEChannelMixerDefinition returned a null mixerDef", &buf, 0xCu);
    }

    goto LABEL_12;
  }

  os_unfair_lock_lock(&self->_audioAssetsMutex.m_lock);
  if (!std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&self->_audioAssets.__table_.__bucket_list_.__ptr_, asset))
  {
    v16 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v27 = *(*state + 24);
      LODWORD(buf.__r_.__value_.__l.__data_) = 134218240;
      *(buf.__r_.__value_.__r.__words + 4) = v27;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = asset;
      _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "[REPhaseContext] [samplerDefForFileAsset] Preparing sampler definition for token %llu, unknown asset %llu", &buf, 0x16u);
    }

    os_unfair_lock_unlock(&self->_audioAssetsMutex.m_lock);
LABEL_12:
    v17 = 0;
    goto LABEL_26;
  }

  os_unfair_lock_unlock(&self->_audioAssetsMutex.m_lock);
  v9 = [(REPHASEContext *)self phaseIDForAssetID:asset];
  v10 = [objc_alloc(MEMORY[0x1E69781F8]) initWithSoundAssetIdentifier:v9 mixerDefinition:definitionCopy];
  os_unfair_lock_lock(&self->_audioAssetsMutex.m_lock);
  v11 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&self->_audioAssets.__table_.__bucket_list_.__ptr_, asset);
  if (v11)
  {
    v12 = v11;
    [v10 setCalibrationMode:*(v11 + 8) level:v11[14]];
    if (*(v12 + 56) == 1)
    {
      v13 = *state;
      if (v12[9])
      {
        v14 = *(v12 + 10);
      }

      else
      {
        v14 = v12 + 73;
      }

      v19 = *(v13 + 32);
      v20 = *(v13 + 48);
      std::string::basic_string[abi:ne200100]<0>(__p, v14);
      REAudioComputePHASEMixGroupID(v19, v20, __p, &buf);
      if (v30 < 0)
      {
        operator delete(__p[0]);
      }

      engine = [(REPHASEContext *)self engine];
      groups = [engine groups];
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:p_buf];
      v25 = [groups objectForKey:v24];
      [v10 setGroup:v25];

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    os_unfair_lock_unlock(&self->_audioAssetsMutex.m_lock);
    [v10 setGainMetaParameterDefinition:self->_gainLinearParamDefinition];
    [v10 setRateMetaParameterDefinition:self->_rateParamDefinition];
    [v10 setRate:1.0];
    [v10 setPlaybackMode:*(*state + 96) != 0];
    v17 = v10;
  }

  else
  {
    v18 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v28 = *(*state + 24);
      LODWORD(buf.__r_.__value_.__l.__data_) = 134218240;
      *(buf.__r_.__value_.__r.__words + 4) = v28;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = asset;
      _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "[REPhaseContext] [samplerDefForFileAsset] Preparing sampler definition for token %llu, unknown asset %llu", &buf, 0x16u);
    }

    os_unfair_lock_unlock(&self->_audioAssetsMutex.m_lock);
    v17 = 0;
  }

LABEL_26:

  return v17;
}

- (id)mixerParametersForPrepareState:(const void *)state source:(id)source listener:(id)listener mixerIdentifiers:(id)identifiers
{
  v32 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  listenerCopy = listener;
  identifiersCopy = identifiers;
  v12 = objc_alloc_init(MEMORY[0x1E69781D8]);
  if (*(*state + 100))
  {
    if (*(*state + 100) != 2)
    {
      goto LABEL_19;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = identifiersCopy;
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v14)
    {
      v15 = *v23;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v13);
          }

          [v12 addAmbientMixerParametersWithIdentifier:*(*(&v22 + 1) + 8 * i) listener:{listenerCopy, v22}];
        }

        v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = identifiersCopy;
    v18 = [v17 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v18)
    {
      v19 = *v27;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v17);
          }

          [v12 addSpatialMixerParametersWithIdentifier:*(*(&v26 + 1) + 8 * j) source:sourceCopy listener:listenerCopy];
        }

        v18 = [v17 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v18);
    }
  }

LABEL_19:

  return v12;
}

- (void)prepareSyncGroup:(unordered_map<unsigned long)long forGroupID:()std:(std:(std:(std:(std:(unint64_t)std :(unint64_t)a5 shared_ptr<re::audio::REPHASESoundPrepareState>>>> *)a3 :allocator<std::pair<const unsigned long)long :equal_to<unsigned long)long> :hash<unsigned long)long> :shared_ptr<re::audio::REPHASESoundPrepareState> withTransportControlToken:
{
  selfCopy = self;
  v127 = *MEMORY[0x1E69E9840];
  v114 = a5;
  objc_initWeak(&location, self);
  os_unfair_lock_lock(&selfCopy->_audioEngineMutex.m_lock);
  v7 = selfCopy->_unsafeEngine;
  os_unfair_lock_unlock(&selfCopy->_audioEngineMutex.m_lock);
  v92 = v7;
  if (!v7)
  {
    v68 = *re::audioLogObjects(v8);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v68, OS_LOG_TYPE_ERROR, "[REPHASEContext] Cannot prepare sync group without an engine.", buf, 2u);
    }

    goto LABEL_79;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3321888768;
  aBlock[2] = __72__REPHASEContext_prepareSyncGroup_forGroupID_withTransportControlToken___block_invoke;
  aBlock[3] = &unk_1F5CCA960;
  objc_copyWeak(&v111, &location);
  std::unordered_map<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>::unordered_map(v112, a3);
  v112[5] = std;
  v86 = _Block_copy(aBlock);
  v9 = *re::audioLogObjects(v86);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEBUG, "REPhaseContext: prepareSyncGroup", buf, 2u);
  }

  v10 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(a3, &v114);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v12 = *(v10 + 3);
  v11 = *(v10 + 4);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v12)
  {
    v13 = *re::audioLogObjects(v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v114;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "[REPhaseContext prepareSyncGroup:] Cannot find prepareState for transport token: %llu", buf, 0xCu);
    }
  }

  v84 = v11;
  [(REPHASEContext *)selfCopy sceneForID:*(v12 + 32)];
  v89 = re::audio::REPHASEAudioScene::getListener(v108);
  v90 = objc_alloc_init(MEMORY[0x1E69781D8]);
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", std];
  v85 = v83 = v12;
  v91 = [objc_alloc(MEMORY[0x1E6978190]) initWithIdentifier:v85];
  __p = 0;
  v106 = 0;
  v107 = 0;
  p_first_node = &a3->__table_.__first_node_;
  v88 = selfCopy;
  while (1)
  {
    p_first_node = p_first_node->__next_;
    if (!p_first_node)
    {
      break;
    }

    v15 = &p_first_node[3];
    v16 = [(REPHASEContext *)selfCopy gainParamForToken:*(p_first_node[3].__next_ + 3) isGroupPlaybackSound:1];
    v17 = *(p_first_node[3].__next_ + 44);
    (*v15)[22].i64[0] = v16;

    v18 = [(REPHASEContext *)selfCopy reverbParamForToken:*(p_first_node[3].__next_ + 3) isGroupPlaybackSound:1];
    v19 = *(p_first_node[3].__next_ + 42);
    (*v15)[21].i64[0] = v18;

    v20 = [(REPHASEContext *)selfCopy directParamForToken:*(p_first_node[3].__next_ + 3) isGroupPlaybackSound:1];
    v21 = *(p_first_node[3].__next_ + 43);
    (*v15)[21].i64[1] = v20;

    re::audio::REPHASEAudioScene::getOrCreateEntityWithIncrementedCount(v108, *(p_first_node[3].__next_ + 5), &v103);
    if (*(p_first_node[3].__next_ + 34) && ((*v15)[18].i8[0] & 1) == 0)
    {
      v37 = 1;
      v22 = v103;
      goto LABEL_29;
    }

    v22 = v103;
    v23 = (v103 + 16);
    v27 = *(v103 + 16);
    if (!v27)
    {
      v27 = [objc_alloc(MEMORY[0x1E6978220]) initWithEngine:v92];
      objc_storeStrong(v23, v27);
      v28 = (*v15)[12].u8[8];
      v30 = *re::audioLogObjects(v29);
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      if (v28 == 1)
      {
        if (v31)
        {
          v32 = (*v15)[2].i64[1];
          v33 = (*v15)[1].i64[1];
          re::audio::stringFromPose(&(*v15)[7], &v115);
          v34 = &v115;
          if (v116.i8[7] < 0)
          {
            v34 = v115.i64[0];
          }

          *buf = 134218499;
          *&buf[4] = v32;
          v122 = 2048;
          *v123 = v33;
          *&v123[8] = 2085;
          v124 = v34;
          v35 = v30;
          v36 = "[REPhaseContext prepareSyncGroup:] creating PHASESource. EntityID(%llu) Token(%llu) Transform: %{sensitive}s";
          goto LABEL_25;
        }
      }

      else if (v31)
      {
        v38 = (*v15)[2].i64[1];
        v39 = (*v15)[1].i64[1];
        re::audio::stringFromPose(&(*v15)[7], &v115);
        v40 = &v115;
        if (v116.i8[7] < 0)
        {
          v40 = v115.i64[0];
        }

        *buf = 134218498;
        *&buf[4] = v38;
        v122 = 2048;
        *v123 = v39;
        *&v123[8] = 2080;
        v124 = v40;
        v35 = v30;
        v36 = "[REPhaseContext prepareSyncGroup:] creating PHASESource. EntityID(%llu) Token(%llu) Transform: %s";
LABEL_25:
        _os_log_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_DEFAULT, v36, buf, 0x20u);
        if (v116.i8[7] < 0)
        {
          operator delete(v115.i64[0]);
        }
      }

      rootObject = [(PHASEEngine *)v92 rootObject];
      v102 = 0;
      [rootObject addChild:v27 error:&v102];
      v42 = v102;

      if (v42)
      {
        v82 = *re::audioLogObjects(v43);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v42;
          _os_log_error_impl(&dword_1E1C61000, v82, OS_LOG_TYPE_ERROR, "[REPhaseContext] [prepareSyncGroup] Could not add entity to PHASE %@", buf, 0xCu);
        }

        (*(v86 + 2))(v86, 0, v42);

        goto LABEL_72;
      }
    }

    v44 = (*v15)[8];
    v45 = (*v15)[9];
    v46 = (*v15)[10];
    v115 = (*v15)[7];
    v116 = v44;
    v117 = v45;
    v118 = v46;
    re::audio::cleanUpTransformForPHASE(&v115, v24, v25, v26, buf);
    [v27 setWorldTransform:{*buf, *&v123[2], v125, v126}];

    v37 = 0;
LABEL_29:
    v47 = v106;
    if (v106 >= v107)
    {
      v49 = (v106 - __p) >> 3;
      if ((v49 + 1) >> 61)
      {
        std::vector<PHASESource * {__strong}>::__throw_length_error[abi:ne200100]();
      }

      v50 = (v107 - __p) >> 2;
      if (v50 <= v49 + 1)
      {
        v50 = v49 + 1;
      }

      if (v107 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v51 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v51 = v50;
      }

      if (v51)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<PHASESource * {__strong}>>(&__p, v51);
      }

      v52 = (8 * v49);
      *v52 = *(v22 + 16);
      v48 = (8 * v49 + 8);
      v53 = __p;
      v54 = v106;
      v55 = v52 + __p - v106;
      if (v106 == __p)
      {
        selfCopy = v88;
      }

      else
      {
        v56 = __p;
        v57 = (v52 + __p - v106);
        selfCopy = v88;
        do
        {
          v58 = *v56;
          *v56++ = 0;
          *v57++ = v58;
        }

        while (v56 != v54);
        do
        {
        }

        while (v53 != v54);
        v53 = __p;
      }

      __p = v55;
      v106 = v48;
      v107 = 0;
      if (v53)
      {
        operator delete(v53);
      }
    }

    else
    {
      *v47 = *(v22 + 16);
      v48 = v47 + 1;
    }

    v106 = v48;
    if (selfCopy->_listener)
    {
      v59 = 1;
    }

    else
    {
      v59 = v37;
    }

    if ((v59 & 1) == 0)
    {
      v78 = MEMORY[0x1E696ABC0];
      v119 = *MEMORY[0x1E696A578];
      v120 = @"In order for audio to be rendered, the app must have a listener component attached to an active entity in the scene.";
      v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
      v27 = [v78 errorWithDomain:@"com.apple.re.internal" code:-105 userInfo:v79];

      v81 = *re::audioLogObjects(v80);
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v27;
        _os_log_error_impl(&dword_1E1C61000, v81, OS_LOG_TYPE_ERROR, "[REPhaseContext] [prepareSyncGroup] Could not prepare audio due to lack of listener entity %@", buf, 0xCu);
      }

      (*(v86 + 2))(v86, 0, v27);
LABEL_72:

      if (v104)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v104);
      }

      goto LABEL_74;
    }

    v60 = [(REPHASEContext *)selfCopy samplerDefForFileAsset:(*v15)[4].i64[0] with:&p_first_node[3]];
    if (v60)
    {
      v61 = [(REPHASEContext *)selfCopy gainParamForToken:(*v15)[1].i64[1] isGroupPlaybackSound:1];
      v62 = [objc_alloc(MEMORY[0x1E69781E0]) initWithValue:v61 minimum:1.0 maximum:0.0 identifier:4.0];
      [v60 setGainMetaParameterDefinition:v62];

      [v60 setRateMetaParameterDefinition:selfCopy->_rateParamDefinition];
      [v60 setRate:1.0];
      [v60 setPlaybackMode:(*v15)[6].i32[0] != 0];
      mixerDefinition = [v60 mixerDefinition];
      identifier = [mixerDefinition identifier];
      [v90 addSpatialMixerParametersWithIdentifier:identifier source:*(v103 + 16) listener:v89];

      [v91 addSubtree:v60];
    }

    else
    {
      v65 = *re::audioLogObjects(0);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        v66 = (*v15)[4].i64[0];
        v67 = (*v15)[1].i64[1];
        *buf = 134218240;
        *&buf[4] = v66;
        v122 = 2048;
        *v123 = v67;
        _os_log_error_impl(&dword_1E1C61000, v65, OS_LOG_TYPE_ERROR, "[REPhaseContext] [prepareSyncGroup] Error creating sampler definition for asset: %llu and token: %llu. Sound event will not be prepared.", buf, 0x16u);
      }
    }

    if (v104)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v104);
    }

    if (!v60)
    {
      goto LABEL_74;
    }
  }

  assetRegistry = [(PHASEEngine *)v92 assetRegistry];
  v101 = 0;
  v70 = [assetRegistry registerSoundEventAssetWithRootNode:v91 identifier:v85 error:&v101];
  v71 = v101;

  v72 = [REPHASESoundEvent alloc];
  v73 = *(v83 + 16);
  phaseQueue = selfCopy->_phaseQueue;
  memset(v100, 0, sizeof(v100));
  std::vector<PHASESource * {__strong}>::__init_with_size[abi:ne200100]<PHASESource * {__strong}*,PHASESource * {__strong}*>(v100, __p, v106, (v106 - __p) >> 3);
  v99 = v71;
  v75 = [(REPHASESoundEvent *)v72 initSyncGroupWithEngine:v92 rootNode:v91 assetIdentifier:v85 listener:v89 mixerParameters:v90 audioSession:v73 phaseQueue:phaseQueue sources:v100 outError:&v99];
  v76 = v99;

  *buf = v100;
  std::vector<PHASESource * {__strong}>::__destroy_vector::operator()[abi:ne200100](buf);
  std::unordered_map<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>::unordered_map(v98, a3);
  [v75 setPrepareStates:v98];
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::~__hash_table(v98);
  v96 = v83;
  v97 = v84;
  if (v84)
  {
    atomic_fetch_add_explicit(&v84->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v75 setPrepareState:&v96];
  if (v97)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v97);
  }

  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = __72__REPHASEContext_prepareSyncGroup_forGroupID_withTransportControlToken___block_invoke_64;
  v93[3] = &unk_1E871B458;
  v95 = v86;
  v77 = v75;
  v94 = v77;
  [v77 prepareWithCompletion:v93];

LABEL_74:
  *buf = &__p;
  std::vector<PHASESource * {__strong}>::__destroy_vector::operator()[abi:ne200100](buf);

  if (v109)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v109);
  }

  if (v84)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v84);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::~__hash_table(v112);
  objc_destroyWeak(&v111);
LABEL_79:

  objc_destroyWeak(&location);
}

void __72__REPHASEContext_prepareSyncGroup_forGroupID_withTransportControlToken___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = atomic_load(WeakRetained + 20);
    if (v9)
    {
      v10 = *re::audioLogObjects(WeakRetained);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v8;
        _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "[REPHASEContext %@] stopped and destroyed before sound event prepared", buf, 0xCu);
      }

      [v5 stopAndDestroy];
      for (i = (a1 + 56); ; [v8 decrementOrDestroyEntityWithZeroCount:*(i[3] + 40)])
      {
        i = *i;
        if (!i)
        {
          break;
        }
      }
    }

    else if (v6)
    {
      [v5 stopAndDestroy];
      for (j = (a1 + 56); ; [v8 decrementOrDestroyEntityWithZeroCount:*(j[3] + 40)])
      {
        j = *j;
        if (!j)
        {
          break;
        }
      }

      [v8 clearPreparingStateForToken:*(a1 + 80)];
    }

    else if ([WeakRetained addEventIfStillPreparing:v5 forToken:*(a1 + 80)])
    {
      v6 = 0;
    }

    else
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sound event was cleaned up before preparation completed for token=%llu", *(a1 + 80)];
      v15 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A578];
      v19 = v14;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v6 = [v15 errorWithDomain:@"com.apple.re.internal" code:-200 userInfo:v16];

      [v5 stopAndDestroy];
      [v8 clearPreparingStateForToken:*(a1 + 80)];
      for (k = (a1 + 56); ; [v8 decrementOrDestroyEntityWithZeroCount:*(k[3] + 40)])
      {
        k = *k;
        if (!k)
        {
          break;
        }
      }
    }
  }

  else
  {
    v12 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "[REPHASEContext] dealloc'd before sound event preparation", buf, 2u);
    }

    [v5 stopAndDestroy];
  }
}

- (void)prepare:(shared_ptr<re::audio::REPHASESoundPrepareState>)prepare
{
  ptr = prepare.__ptr_;
  v86 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_audioEngineMutex.m_lock);
  v5 = self->_unsafeEngine;
  os_unfair_lock_unlock(&self->_audioEngineMutex.m_lock);
  if (v5)
  {
    objc_initWeak(&location, self);
    v7 = *(*ptr + 24);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3321888768;
    aBlock[2] = __26__REPHASEContext_prepare___block_invoke;
    aBlock[3] = &unk_1F5CCA998;
    objc_copyWeak(v73, &location);
    v9 = *ptr;
    v8 = *(ptr + 1);
    v73[1] = v7;
    v73[2] = v9;
    v74 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = _Block_copy(aBlock);
    v11 = *re::audioLogObjects(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v81 = v7;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "[REPhaseContext] [Prepare] token: %llu", buf, 0xCu);
    }

    [(REPHASEContext *)self sceneForID:*(*ptr + 32)];
    re::audio::REPHASEAudioScene::getOrCreateEntityWithIncrementedCount(v70, *(*ptr + 40), &v68);
    v12 = *ptr;
    if ((*(*ptr + 272) || *(v12 + 280)) && *(v12 + 288) != 1)
    {
      v15 = 1;
LABEL_14:
      v17 = re::audio::REPHASEAudioScene::getListener(v70);
      listener = self->_listener;
      self->_listener = v17;

      if (self->_listener)
      {
        v19 = 1;
      }

      else
      {
        v19 = v15;
      }

      if ((v19 & 1) == 0)
      {
        v23 = MEMORY[0x1E696ABC0];
        v78 = *MEMORY[0x1E696A578];
        v79 = @"In order for audio to be rendered, the app must have a listener component attached to an active entity in the scene.";
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
        v25 = [v23 errorWithDomain:@"com.apple.re.internal" code:-105 userInfo:v24];

        v27 = *re::audioLogObjects(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v81 = v25;
          _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, "[REPhaseContext] [Prepare] Could not prepare audio due to lack of listener entity %@", buf, 0xCu);
        }

        (*(v10 + 2))(v10, 0, v25);

        goto LABEL_71;
      }

      v20 = *(*ptr + 56);
      if (v20 > 1)
      {
        if (v20 == 2)
        {
          v48 = *(ptr + 1);
          v55 = *ptr;
          v56 = v48;
          if (v48)
          {
            atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v53 = v68;
          v54 = v69;
          if (v69)
          {
            atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          [(REPHASEContext *)self prepareGeneratorType:&v55 phaseEntity:&v53 completion:v10];
          if (v54)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v54);
          }

          v22 = v56;
          if (!v56)
          {
            goto LABEL_71;
          }
        }

        else
        {
          if (v20 != 100)
          {
            goto LABEL_59;
          }

          v28 = *(ptr + 1);
          v51 = *ptr;
          v52 = v28;
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v49 = v68;
          v50 = v69;
          if (v69)
          {
            atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          [(REPHASEContext *)self prepareExternalType:&v51 phaseEntity:&v49 completion:v10];
          if (v50)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v50);
          }

          v22 = v52;
          if (!v52)
          {
            goto LABEL_71;
          }
        }
      }

      else
      {
        if (v20)
        {
          if (v20 == 1)
          {
            v21 = *(ptr + 1);
            v59 = *ptr;
            v60 = v21;
            if (v21)
            {
              atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v57 = v68;
            v58 = v69;
            if (v69)
            {
              atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            [(REPHASEContext *)self prepareFileGroupType:&v59 phaseEntity:&v57 completion:v10];
            if (v58)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v58);
            }

            v22 = v60;
            if (!v60)
            {
              goto LABEL_71;
            }

            goto LABEL_70;
          }

LABEL_59:
          v42 = MEMORY[0x1E696ABC0];
          v76 = *MEMORY[0x1E696A578];
          v77 = @"Unsupported asset type";
          v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
          v44 = [v42 errorWithDomain:@"com.apple.re.internal" code:-110 userInfo:v43];

          v46 = *re::audioLogObjects(v45);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218242;
            v81 = v7;
            v82 = 2112;
            v83 = v44;
            _os_log_error_impl(&dword_1E1C61000, v46, OS_LOG_TYPE_ERROR, "[REPhaseContext] [Prepare] token %llu, error %@", buf, 0x16u);
            if (!v10)
            {
              goto LABEL_62;
            }
          }

          else if (!v10)
          {
LABEL_62:

LABEL_71:
            if (v69)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v69);
            }

            if (v71)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v71);
            }

            if (v74)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v74);
            }

            objc_destroyWeak(v73);
            objc_destroyWeak(&location);
            goto LABEL_78;
          }

          (*(v10 + 2))(v10, 0, v44);
          goto LABEL_62;
        }

        v47 = *(ptr + 1);
        v63 = *ptr;
        v64 = v47;
        if (v47)
        {
          atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v61 = v68;
        v62 = v69;
        if (v69)
        {
          atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        [(REPHASEContext *)self prepareFileType:&v63 phaseEntity:&v61 completion:v10];
        if (v62)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v62);
        }

        v22 = v64;
        if (!v64)
        {
          goto LABEL_71;
        }
      }

LABEL_70:
      std::__shared_weak_count::__release_shared[abi:nn200100](v22);
      goto LABEL_71;
    }

    v13 = (v68 + 16);
    v14 = *(v68 + 16);
    if (v14)
    {
LABEL_10:
      [v14 setWorldTransform:{*(*ptr + 112), *(*ptr + 128), *(*ptr + 144), *(*ptr + 160)}];

      v15 = 0;
      goto LABEL_14;
    }

    v14 = [objc_alloc(MEMORY[0x1E6978220]) initWithEngine:v5];
    objc_storeStrong(v13, v14);
    v29 = *(*ptr + 200);
    v31 = *re::audioLogObjects(v30);
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
    if (v29 == 1)
    {
      if (!v32)
      {
        goto LABEL_55;
      }

      v33 = *(*ptr + 40);
      re::audio::stringFromPose((*ptr + 112), __p);
      if (v67 >= 0)
      {
        v34 = __p;
      }

      else
      {
        v34 = __p[0];
      }

      *buf = 134218499;
      v81 = v33;
      v82 = 2048;
      v83 = v7;
      v84 = 2085;
      v85 = v34;
      v35 = "[REPhaseContext] [Prepare] creating PHASESource. EntityID(%llu) Token(%llu) Transform: %{sensitive}s";
    }

    else
    {
      if (!v32)
      {
        goto LABEL_55;
      }

      v36 = *(*ptr + 40);
      re::audio::stringFromPose((*ptr + 112), __p);
      if (v67 >= 0)
      {
        v37 = __p;
      }

      else
      {
        v37 = __p[0];
      }

      *buf = 134218498;
      v81 = v36;
      v82 = 2048;
      v83 = v7;
      v84 = 2080;
      v85 = v37;
      v35 = "[REPhaseContext] [Prepare] creating PHASESource. EntityID(%llu) Token(%llu) Transform: %s";
    }

    _os_log_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_DEFAULT, v35, buf, 0x20u);
    if (v67 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_55:

    rootObject = [(PHASEEngine *)v5 rootObject];
    v65 = 0;
    [rootObject addChild:v14 error:&v65];
    v39 = v65;

    if (v39)
    {
      v41 = *re::audioLogObjects(v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v81 = v39;
        v82 = 2048;
        v83 = v7;
        _os_log_error_impl(&dword_1E1C61000, v41, OS_LOG_TYPE_ERROR, "[REPhaseContext] [Prepare] Could not add entity to PHASE %@, token %llu", buf, 0x16u);
      }

      (*(v10 + 2))(v10, 0, v39);

      goto LABEL_71;
    }

    goto LABEL_10;
  }

  v16 = *re::audioLogObjects(v6);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "[REPHASEContext] [Prepare] cannot prepare with no engine", buf, 2u);
  }

LABEL_78:
}

void __26__REPHASEContext_prepare___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = atomic_load(WeakRetained + 20);
    if (v9)
    {
      v10 = *re::audioLogObjects(WeakRetained);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        *buf = 134218242;
        v29 = v11;
        v30 = 2112;
        v31 = v8;
        _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "[REPHASEContext] [Prepare] token %llu, %@ stopped and destroyed before sound event prepared", buf, 0x16u);
      }

      [v5 stopAndDestroy];
      [v8 decrementOrDestroyEntityWithZeroCount:*(*(a1 + 48) + 40)];
      goto LABEL_18;
    }

    v14 = _Block_copy(*(*(a1 + 48) + 392));
    v15 = v14;
    if (v14)
    {
      if (!v6)
      {
        if ([v8 addEventIfStillPreparing:v5 forToken:*(a1 + 40)])
        {
          (*(v15 + 2))(v15, 0);
          v6 = 0;
        }

        else
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sound event was cleaned up before preparation completed for token=%llu", *(a1 + 40)];
          v21 = MEMORY[0x1E696ABC0];
          v26 = *MEMORY[0x1E696A578];
          v27 = v20;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
          v6 = [v21 errorWithDomain:@"com.apple.re.internal" code:-200 userInfo:v22];

          v24 = *re::audioLogObjects(v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = *(a1 + 40);
            *buf = 134218242;
            v29 = v25;
            v30 = 2112;
            v31 = v6;
            _os_log_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEFAULT, "[REPHASEContext] [Prepare] token %llu couldn't add event: %@", buf, 0x16u);
          }

          (*(v15 + 2))(v15, v6);
          [v5 stopAndDestroy];
          [v8 clearPreparingStateForToken:*(a1 + 40)];
          [v8 decrementOrDestroyEntityWithZeroCount:*(*(a1 + 48) + 40)];
        }

        goto LABEL_17;
      }

      v16 = *re::audioLogObjects(v14);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 40);
        *buf = 134217984;
        v29 = v17;
        _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "[REPHASEContext] [Prepare] token %llu calling completion with error", buf, 0xCu);
      }

      (*(v15 + 2))(v15, v6);
    }

    else
    {
      v18 = *re::audioLogObjects(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 40);
        *buf = 134217984;
        v29 = v19;
        _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "[REPHASEContext] [Prepare] prepare state for token %llu does not have completion handler", buf, 0xCu);
      }
    }

    [v5 stopAndDestroy];
    [v8 decrementOrDestroyEntityWithZeroCount:*(*(a1 + 48) + 40)];
    [v8 clearPreparingStateForToken:*(a1 + 40)];
LABEL_17:

    goto LABEL_18;
  }

  v12 = *re::audioLogObjects(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 40);
    *buf = 134217984;
    v29 = v13;
    _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "[REPHASEContext] [Prepare] token %llu, dealloc'd before sound event preparation", buf, 0xCu);
  }

  [v5 stopAndDestroy];
LABEL_18:
}

- (void)prepareExternalType:(shared_ptr<re:(shared_ptr<re:(id)type :audio::REPHASEEntity>)a4 :audio::REPHASESoundPrepareState>)a3 phaseEntity:completion:
{
  cntrl = a3.__cntrl_;
  ptr = a3.__ptr_;
  v73[1] = *MEMORY[0x1E69E9840];
  v8 = a4.var0;
  os_unfair_lock_lock(&self->_audioEngineMutex.m_lock);
  v9 = self->_unsafeEngine;
  os_unfair_lock_unlock(&self->_audioEngineMutex.m_lock);
  if (*(*ptr + 296))
  {
    *v65 = 0;
    v65[2] = 0;
    *&v65[4] = 0;
    *&v65[8] = 0;
    *&v65[16] = xmmword_1E3061530;
    v66[0] = 0;
    v69 = 0;
    v71 = 0;
    os_unfair_lock_lock(&self->_audioAssetsMutex.m_lock);
    v10 = *ptr;
    v11 = *(*ptr + 24);
    v12 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&self->_audioAssets.__table_.__bucket_list_.__ptr_, v11);
    if (!v12)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot prepare external stream UUID %@ (token=%llu) without configuration", *(v10 + 296), v11];
      v21 = MEMORY[0x1E696ABC0];
      v63 = *MEMORY[0x1E696A578];
      v64 = v20;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
      v23 = [v21 errorWithDomain:@"com.apple.re.internal" code:-210 userInfo:v22];

      os_unfair_lock_unlock(&self->_audioAssetsMutex.m_lock);
      if (v23)
      {
        v25 = *re::audioLogObjects(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v40 = *(*ptr + 24);
          *buf = 134218242;
          v52 = v40;
          v53 = 2112;
          v54 = v23;
          _os_log_error_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_ERROR, "[REPhaseContext] [Prepare] token %llu, error %@", buf, 0x16u);
        }

        (*(v8 + 2))(v8, 0, v23);
        goto LABEL_24;
      }

LABEL_17:
      v26 = *ptr;
      *(v26 + 204) = *&v65[8];
      *(v26 + 208) = *&v65[16];
      v44 = v9;
      v45 = v8;
      v43 = [(REPHASEContext *)self baseMixerDefinitionWith:ptr];
      v27 = *(*ptr + 296);
      v28 = *re::audioLogObjects(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = *(*ptr + 24);
        *buf = 138413570;
        v52 = v27;
        v53 = 2048;
        v54 = v29;
        v55 = 1024;
        v56 = *&v65[4];
        v57 = 2048;
        v58 = *&v65[24];
        v59 = 1024;
        v60 = *&v65[8];
        v61 = 2048;
        v62 = *&v65[16];
        _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEFAULT, "[REPhaseContext] [Prepare] creating controller for external stream %@ (token=%llu) with normalizationMode=%d, targetLUFS=%0.2f, calibrationMode=%d, calibrationLevel=%0.2f", buf, 0x36u);
      }

      v42 = *(*cntrl + 16);
      listener = self->_listener;
      v32 = *&v65[4];
      v31 = *&v65[8];
      v33 = *&v65[16];
      v34 = *ptr;
      v35 = *(*ptr + 16);
      phaseQueue = self->_phaseQueue;
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3321888768;
      v46[2] = __61__REPHASEContext_prepareExternalType_phaseEntity_completion___block_invoke;
      v46[3] = &unk_1F5CCA9D0;
      v37 = *(ptr + 1);
      v49 = v34;
      v50 = v37;
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v48 = v45;
      v38 = v27;
      v47 = v38;
      LODWORD(v41) = v31;
      [REPHASESoundEvent eventWithEngine:v44 streamUUID:v38 mixerDefinition:v43 source:v42 listener:listener normalizationMode:v32 targetLUFS:*(&v33 + 1) calibrationMode:*&v33 calibrationLevel:v41 audioSession:v35 phaseQueue:phaseQueue callback:v46];

      v9 = v44;
      v8 = v45;

      if (v50)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v50);
      }

      v23 = 0;
LABEL_24:

      if (v66[0] == 1 && v67 && (v68 & 1) != 0)
      {
        (*(*v67 + 40))();
      }

      goto LABEL_28;
    }

    v13 = v12;
    v14 = *(v12 + 5);
    *v65 = *(v12 + 3);
    *&v65[16] = v14;
    re::Optional<re::DynamicString>::operator=(v66, v12 + 56);
    if (v69)
    {
      if ((v13[12] & 1) == 0)
      {
        v69 = 0;
LABEL_16:
        v71 = *(v13 + 104);
        os_unfair_lock_unlock(&self->_audioAssetsMutex.m_lock);
        goto LABEL_17;
      }
    }

    else
    {
      if ((v13[12] & 1) == 0)
      {
        goto LABEL_16;
      }

      v69 = 1;
    }

    v70 = *(v13 + 25);
    goto LABEL_16;
  }

  v15 = MEMORY[0x1E696ABC0];
  v72 = *MEMORY[0x1E696A578];
  v73[0] = @"Could not prepare PHASESoundEvent for external stream. Invalid UUID";
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:&v72 count:1];
  v17 = [v15 errorWithDomain:@"com.apple.re.internal" code:-210 userInfo:v16];

  v19 = *re::audioLogObjects(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v39 = *(*ptr + 24);
    *v65 = 134218242;
    *&v65[4] = v39;
    *&v65[12] = 2112;
    *&v65[14] = v17;
    _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "[REPhaseContext] [Prepare] token %llu, error %@", v65, 0x16u);
  }

  (*(v8 + 2))(v8, 0, v17);

LABEL_28:
}

void __61__REPHASEContext_prepareExternalType_phaseEntity_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *re::audioLogObjects(v6);
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = *(*(a1 + 48) + 24);
      *buf = 134218242;
      v18 = v11;
      v19 = 2112;
      v20 = v6;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "[REPhaseContext] [Prepare] token %llu, error %@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(*(a1 + 48) + 24);
      *buf = 138412546;
      v18 = v8;
      v19 = 2048;
      v20 = v9;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "[REPhaseContext] [Prepare] Successfully created controller for external stream %@ (token=%llu). Preparing.", buf, 0x16u);
    }

    v10 = *(a1 + 56);
    v15 = *(a1 + 48);
    v16 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [v5 setPrepareState:&v15];
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v16);
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__REPHASEContext_prepareExternalType_phaseEntity_completion___block_invoke_75;
    v12[3] = &unk_1E871B458;
    v13 = v5;
    v14 = *(a1 + 40);
    [v13 prepareWithCompletion:v12];
  }
}

void __61__REPHASEContext_prepareExternalType_phaseEntity_completion___block_invoke_75(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    [*(a1 + 32) resume];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)prepareFileGroupType:(shared_ptr<re:(shared_ptr<re:(id)type :audio::REPHASEEntity>)a4 :audio::REPHASESoundPrepareState>)a3 phaseEntity:completion:
{
  cntrl = a3.__cntrl_;
  ptr = a3.__ptr_;
  v93[1] = *MEMORY[0x1E69E9840];
  v71 = a4.var0;
  os_unfair_lock_lock(&self->_audioEngineMutex.m_lock);
  v72 = self->_unsafeEngine;
  os_unfair_lock_unlock(&self->_audioEngineMutex.m_lock);
  v70 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu%llu%hhu", *(*ptr + 40), *(*ptr + 64), *(*ptr + 100)];
  v8 = [(REPhaseSoundEventAssetStore *)self->_soundEventAssetStore getAssetWithIdentifier:v70 fromAssetID:*(*ptr + 64)];
  v69 = v8;
  asset = [v8 asset];
  if (asset)
  {
    mixerIdentifiers = [v8 mixerIdentifiers];
    v10 = 0;
    [(REPHASEContext *)self mixerParametersForPrepareState:ptr source:*(*cntrl + 16) listener:self->_listener mixerIdentifiers:mixerIdentifiers];
  }

  else
  {
    asset = objc_alloc_init(MEMORY[0x1E69781F0]);
    [asset setUniqueSelectionQueueLength:*(*ptr + 80) - *(*ptr + 72) > 8uLL];
    mixerIdentifiers = [(REPHASEContext *)self baseMixerDefinitionWith:ptr];
    v73 = [MEMORY[0x1E695DF70] arrayWithCapacity:(*(*ptr + 80) - *(*ptr + 72)) >> 3];
    v11 = *(*ptr + 72);
    v12 = *(*ptr + 80);
    if (v11 != v12)
    {
      while (1)
      {
        v13 = [(REPHASEContext *)self samplerDefForFileAsset:*v11 mixerDefinition:mixerIdentifiers prepareState:ptr];
        if (!v13)
        {
          break;
        }

        [asset addSubtree:v13 weight:&unk_1F5D42960];
        mixerDefinition = [v13 mixerDefinition];
        identifier = [mixerDefinition identifier];

        [v73 addObject:identifier];
        if (++v11 == v12)
        {
          goto LABEL_6;
        }
      }

      v63 = *re::audioLogObjects(0);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v67 = *(*ptr + 64);
        v68 = *(*ptr + 24);
        *buf = 134218240;
        *&buf[4] = v67;
        *&buf[12] = 2048;
        *&buf[14] = v68;
        _os_log_error_impl(&dword_1E1C61000, v63, OS_LOG_TYPE_ERROR, "[REPhaseContext] [prepareFileGroup] Error creating sampler definition for asset: %llu and token: %llu. Sound event will not be prepared.", buf, 0x16u);
      }

      v24 = _Block_copy(*(*ptr + 392));
      v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error creating sampler definition for asset: %llu. Sound event will not be prepared.", *(*ptr + 64)];
      v65 = MEMORY[0x1E696ABC0];
      v92 = *MEMORY[0x1E696A578];
      v93[0] = v64;
      v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v93 forKeys:&v92 count:1];
      v25 = [v65 errorWithDomain:@"com.apple.re.internal" code:-110 userInfo:v66];

      v24[2](v24, v25);
      goto LABEL_47;
    }

LABEL_6:
    assetRegistry = [(PHASEEngine *)v72 assetRegistry];
    v85 = 0;
    v17 = [assetRegistry registerSoundEventAssetWithRootNode:asset identifier:v70 error:&v85];
    v10 = v85;

    v18 = v73;
    [(REPhaseSoundEventAssetStore *)self->_soundEventAssetStore addAsset:v17 andMixerIdentifiers:v18 forIdentifier:v70 withAssetID:*(*ptr + 64)];

    mixerIdentifiers = v18;
    asset = v17;
    [(REPHASEContext *)self mixerParametersForPrepareState:ptr source:*(*cntrl + 16) listener:self->_listener mixerIdentifiers:v18];
  }
  v73 = ;
  v19 = [REPHASESoundEvent alloc];
  v20 = *(*cntrl + 16);
  listener = self->_listener;
  v22 = *(*ptr + 16);
  phaseQueue = self->_phaseQueue;
  v84 = v10;
  v24 = [(REPHASESoundEvent *)v19 initWithEngine:v72 soundEventAsset:asset source:v20 listener:listener mixerParameters:v73 audioSession:v22 phaseQueue:phaseQueue outError:&v84];
  v25 = v84;

  if (v24)
  {
    [(PHASEListener *)self->_listener worldTransform];
    *buf = v26;
    *&buf[16] = v27;
    v87 = v28;
    v88 = v29;
    re::audio::stringFromPose(buf, v82);
    [*(*cntrl + 16) worldTransform];
    *buf = v30;
    *&buf[16] = v31;
    v87 = v32;
    v88 = v33;
    v34 = re::audio::stringFromPose(buf, __p);
    v35 = *(*ptr + 200);
    v36 = *re::audioLogObjects(v34);
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
    if (v35 == 1)
    {
      if (v37)
      {
        v38 = *(*ptr + 24);
        *buf = 134218243;
        *&buf[4] = v38;
        *&buf[12] = 2117;
        *&buf[14] = v24;
        _os_log_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_DEFAULT, "[REPhaseContext] [prepareFileGroup] Created sound event for token %llu (file): %{sensitive}@", buf, 0x16u);
      }

      v39 = *re::audioLogObjects(v37);
      v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
      if (v40)
      {
        v41 = *(*ptr + 24);
        v42 = v82;
        if (v83 < 0)
        {
          v42 = v82[0];
        }

        *buf = 134218243;
        *&buf[4] = v41;
        *&buf[12] = 2085;
        *&buf[14] = v42;
        _os_log_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_DEFAULT, "[REPhaseContext] [prepareFileGroup] Created sound event for token %llu (file): Listener = %{sensitive}s", buf, 0x16u);
      }

      v43 = *re::audioLogObjects(v40);
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      v44 = *(*ptr + 24);
      v45 = __p;
      if (v81 < 0)
      {
        v45 = __p[0];
      }

      *buf = 134218243;
      *&buf[4] = v44;
      *&buf[12] = 2085;
      *&buf[14] = v45;
      v46 = "[REPhaseContext] [prepareFileGroup] Created sound event for token %llu (file): Position = %{sensitive}s";
    }

    else
    {
      if (v37)
      {
        v52 = *(*ptr + 24);
        *buf = 134218242;
        *&buf[4] = v52;
        *&buf[12] = 2112;
        *&buf[14] = v24;
        _os_log_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_DEFAULT, "[REPhaseContext] [prepareFileGroup] Created sound event for token %llu (file): %@", buf, 0x16u);
      }

      v53 = *re::audioLogObjects(v37);
      v54 = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);
      if (v54)
      {
        v55 = *(*ptr + 24);
        v56 = v82;
        if (v83 < 0)
        {
          v56 = v82[0];
        }

        *buf = 134218242;
        *&buf[4] = v55;
        *&buf[12] = 2080;
        *&buf[14] = v56;
        _os_log_impl(&dword_1E1C61000, v53, OS_LOG_TYPE_DEFAULT, "[REPhaseContext] [prepareFileGroup] Created sound event for token %llu (file): Listener = %s", buf, 0x16u);
      }

      v43 = *re::audioLogObjects(v54);
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      v57 = *(*ptr + 24);
      v58 = __p;
      if (v81 < 0)
      {
        v58 = __p[0];
      }

      *buf = 134218242;
      *&buf[4] = v57;
      *&buf[12] = 2080;
      *&buf[14] = v58;
      v46 = "[REPhaseContext] [prepareFileGroup] Created sound event for token %llu (file): Position = %s";
    }

    _os_log_impl(&dword_1E1C61000, v43, OS_LOG_TYPE_DEFAULT, v46, buf, 0x16u);
LABEL_32:
    v59 = *(ptr + 1);
    v78 = *ptr;
    v79 = v59;
    if (v59)
    {
      atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [v24 setPrepareState:&v78];
    if (v79)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v79);
    }

    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __62__REPHASEContext_prepareFileGroupType_phaseEntity_completion___block_invoke;
    v75[3] = &unk_1E871B458;
    v77 = v71;
    v76 = v24;
    [v76 prepareWithCompletion:v75];

    if (v81 < 0)
    {
      operator delete(__p[0]);
    }

    if (v83 < 0)
    {
      operator delete(v82[0]);
    }

    goto LABEL_47;
  }

  if (v25)
  {
    v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v25];
    v48 = MEMORY[0x1E696ABC0];
    v49 = *MEMORY[0x1E696A578];
    v91[0] = v47;
    v50 = *MEMORY[0x1E696AA08];
    v89 = v49;
    v90 = v50;
    null = v25;
  }

  else
  {
    v48 = MEMORY[0x1E696ABC0];
    v47 = @"Could not create PHASESoundEvent for file group.";
    v60 = *MEMORY[0x1E696AA08];
    v89 = *MEMORY[0x1E696A578];
    v90 = v60;
    v91[0] = @"Could not create PHASESoundEvent for file group.";
    null = [MEMORY[0x1E695DFB0] null];
  }

  v91[1] = null;
  v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v91 forKeys:&v89 count:2];
  v62 = [v48 errorWithDomain:@"com.apple.re.internal" code:-200 userInfo:v61];

  if (!v25)
  {
  }

  (*(v71 + 2))(v71, 0, v62);

LABEL_47:
}

- (void)prepareGeneratorType:(shared_ptr<re:(shared_ptr<re:(id)type :audio::REPHASEEntity>)a4 :audio::REPHASESoundPrepareState>)a3 phaseEntity:completion:
{
  cntrl = a3.__cntrl_;
  ptr = a3.__ptr_;
  v47 = *MEMORY[0x1E69E9840];
  v38 = a4.var0;
  os_unfair_lock_lock(&self->_audioEngineMutex.m_lock);
  v39 = self->_unsafeEngine;
  os_unfair_lock_unlock(&self->_audioEngineMutex.m_lock);
  v37 = [objc_alloc(MEMORY[0x1E69583D0]) initWithLayoutTag:*(*ptr + 176)];
  v8 = [objc_alloc(MEMORY[0x1E6958418]) initStandardFormatWithSampleRate:v37 channelLayout:self->_sampleRate];
  v9 = *(*ptr + 104);
  *(*ptr + 104) = v8;

  v10 = *ptr;
  *(v10 + 204) = 0;
  *(v10 + 208) = 0x3FF0000000000000;
  v12 = *re::audioLogObjects(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(*ptr + 296);
    v14 = *(*ptr + 24);
    LODWORD(buf.__r_.__value_.__l.__data_) = 138412546;
    *(buf.__r_.__value_.__r.__words + 4) = v13;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v14;
    _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "[REPhaseContext] [Prepare] Creating external stream %@ (token=%llu)", &buf, 0x16u);
  }

  v15 = *ptr;
  if (*(*ptr + 288) == 1)
  {
    v16 = [(REPHASEContext *)self baseMixerDefinitionWith:ptr];
    v15 = *ptr;
  }

  else
  {
    v16 = 0;
  }

  v36 = v16;
  if (*(v15 + 264) == 1)
  {
    v17 = (v15 + 240);
    if (*(v15 + 263) < 0)
    {
      v17 = *v17;
    }

    v18 = *(v15 + 32);
    v19 = *(v15 + 48);
    std::string::basic_string[abi:ne200100]<0>(v44, v17);
    REAudioComputePHASEMixGroupID(v18, v19, v44, &buf);
    if (v45 < 0)
    {
      operator delete(v44[0]);
    }

    engine = [(REPHASEContext *)self engine];
    groups = [engine groups];
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:p_buf];
    v24 = [groups objectForKey:v23];

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v15 = *ptr;
  }

  else
  {
    v24 = 0;
  }

  v25 = *(v15 + 104);
  v34 = *(v15 + 280);
  v35 = *(v15 + 272);
  v33 = *(v15 + 296);
  if (*(v15 + 288) == 1)
  {
    v26 = *(*cntrl + 16);
    listener = self->_listener;
  }

  else
  {
    v26 = 0;
    listener = 0;
  }

  v28 = *(v15 + 16);
  phaseQueue = self->_phaseQueue;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3321888768;
  v40[2] = __62__REPHASEContext_prepareGeneratorType_phaseEntity_completion___block_invoke;
  v40[3] = &unk_1F5CCAA08;
  v30 = v38;
  v32 = *ptr;
  v31 = *(ptr + 1);
  v41 = v30;
  v42 = v32;
  v43 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [REPHASESoundEvent eventWithEngine:v39 streamUUID:v33 maximumFramesToRender:4096 audioFormat:v25 audioUnit:v35 renderBlock:v34 mixerDefinition:1.0 source:v36 listener:v26 group:listener normalizationMode:v24 calibrationMode:0 calibrationLevel:v28 audioSession:phaseQueue phaseQueue:v40 callback:?];
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v43);
  }
}

void __62__REPHASEContext_prepareGeneratorType_phaseEntity_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v6];
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696AA08];
    v26[0] = *MEMORY[0x1E696A578];
    v26[1] = v9;
    v27[0] = v7;
    v27[1] = v6;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
    v11 = [v8 errorWithDomain:@"com.apple.re.internal" code:-200 userInfo:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v14 = *(v13 + 296);
      v15 = *(v13 + 24);
      *buf = 138412546;
      v23 = v14;
      v24 = 2048;
      v25 = v15;
      _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "[REPhaseContext] [Prepare] Successfully created external stream %@ (token=%llu). Preparing.", buf, 0x16u);
    }

    v16 = *(a1 + 48);
    v20 = *(a1 + 40);
    v21 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [v5 setPrepareState:&v20];
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v21);
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __62__REPHASEContext_prepareGeneratorType_phaseEntity_completion___block_invoke_99;
    v17[3] = &unk_1E871B458;
    v19 = *(a1 + 32);
    v18 = v5;
    [v18 prepareWithCompletion:v17];

    v11 = v19;
  }
}

- (void)prepareFileType:(shared_ptr<re:(shared_ptr<re:(id)type :audio::REPHASEEntity>)a4 :audio::REPHASESoundPrepareState>)a3 phaseEntity:completion:
{
  cntrl = a3.__cntrl_;
  ptr = a3.__ptr_;
  v89[1] = *MEMORY[0x1E69E9840];
  v68 = a4.var0;
  os_unfair_lock_lock(&self->_audioEngineMutex.m_lock);
  v69 = self->_unsafeEngine;
  os_unfair_lock_unlock(&self->_audioEngineMutex.m_lock);
  v8 = [(REPHASEContext *)self samplerDefForFileAsset:*(*ptr + 64) with:ptr];
  v9 = v8;
  if (v8)
  {
    v10 = *(*cntrl + 16);
    listener = self->_listener;
    mixerDefinition = [v8 mixerDefinition];
    identifier = [mixerDefinition identifier];
    v87 = identifier;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v87 count:1];
    v15 = [(REPHASEContext *)self mixerParametersForPrepareState:ptr source:v10 listener:listener mixerIdentifiers:v14];

    assetRegistry = [(PHASEEngine *)v69 assetRegistry];
    v80 = 0;
    v17 = [assetRegistry registerSoundEventAssetWithRootNode:v9 identifier:0 error:&v80];
    v18 = v80;

    v19 = [REPHASESoundEvent alloc];
    v20 = *(*cntrl + 16);
    v21 = self->_listener;
    v22 = *(*ptr + 16);
    phaseQueue = self->_phaseQueue;
    v79 = v18;
    v24 = [(REPHASESoundEvent *)v19 initWithEngine:v69 soundEventAsset:v17 source:v20 listener:v21 mixerParameters:v15 audioSession:v22 phaseQueue:phaseQueue outError:&v79];
    v25 = v79;

    if (!v24)
    {
      if (v25)
      {
        v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v25];
        v51 = MEMORY[0x1E696ABC0];
        v52 = *MEMORY[0x1E696A578];
        v86[0] = v50;
        v53 = *MEMORY[0x1E696AA08];
        v84 = v52;
        v85 = v53;
        null = v25;
      }

      else
      {
        v51 = MEMORY[0x1E696ABC0];
        v50 = @"Could not create PHASESoundEvent for file.";
        v63 = *MEMORY[0x1E696AA08];
        v84 = *MEMORY[0x1E696A578];
        v85 = v63;
        v86[0] = @"Could not create PHASESoundEvent for file.";
        null = [MEMORY[0x1E695DFB0] null];
      }

      v86[1] = null;
      v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:&v84 count:2];
      v65 = [v51 errorWithDomain:@"com.apple.re.internal" code:-200 userInfo:v64];

      if (!v25)
      {
      }

      (*(v68 + 2))(v68, 0, v65);

      goto LABEL_42;
    }

    [(PHASEListener *)self->_listener worldTransform];
    *buf = v26;
    *&buf[16] = v27;
    v82 = v28;
    v83 = v29;
    re::audio::stringFromPose(buf, v77);
    [*(*cntrl + 16) worldTransform];
    *buf = v30;
    *&buf[16] = v31;
    v82 = v32;
    v83 = v33;
    v34 = re::audio::stringFromPose(buf, __p);
    v35 = *(*ptr + 200);
    v36 = *re::audioLogObjects(v34);
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
    if (v35 == 1)
    {
      if (v37)
      {
        v38 = *(*ptr + 24);
        *buf = 134218243;
        *&buf[4] = v38;
        *&buf[12] = 2117;
        *&buf[14] = v24;
        _os_log_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_DEFAULT, "[REPhaseContext] [prepareFile] Created sound event for token %llu (file): %{sensitive}@", buf, 0x16u);
      }

      v39 = *re::audioLogObjects(v37);
      v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
      if (v40)
      {
        v41 = *(*ptr + 24);
        v42 = v77;
        if (v78 < 0)
        {
          v42 = v77[0];
        }

        *buf = 134218243;
        *&buf[4] = v41;
        *&buf[12] = 2085;
        *&buf[14] = v42;
        _os_log_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_DEFAULT, "[REPhaseContext] [prepareFile] Created sound event for token %llu (file): Listener = %{sensitive}s", buf, 0x16u);
      }

      v43 = *re::audioLogObjects(v40);
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      v44 = *(*ptr + 24);
      v45 = __p;
      if (v76 < 0)
      {
        v45 = __p[0];
      }

      *buf = 134218243;
      *&buf[4] = v44;
      *&buf[12] = 2085;
      *&buf[14] = v45;
      v46 = "[REPhaseContext] [prepareFile] Created sound event for token %llu (file): Position = %{sensitive}s";
    }

    else
    {
      if (v37)
      {
        v55 = *(*ptr + 24);
        *buf = 134218242;
        *&buf[4] = v55;
        *&buf[12] = 2112;
        *&buf[14] = v24;
        _os_log_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_DEFAULT, "[REPhaseContext] [prepareFile] Created sound event for token %llu (file): %@", buf, 0x16u);
      }

      v56 = *re::audioLogObjects(v37);
      v57 = os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
      if (v57)
      {
        v58 = *(*ptr + 24);
        v59 = v77;
        if (v78 < 0)
        {
          v59 = v77[0];
        }

        *buf = 134218242;
        *&buf[4] = v58;
        *&buf[12] = 2080;
        *&buf[14] = v59;
        _os_log_impl(&dword_1E1C61000, v56, OS_LOG_TYPE_DEFAULT, "[REPhaseContext] [prepareFile] Created sound event for token %llu (file): Listener = %s", buf, 0x16u);
      }

      v43 = *re::audioLogObjects(v57);
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      v60 = *(*ptr + 24);
      v61 = __p;
      if (v76 < 0)
      {
        v61 = __p[0];
      }

      *buf = 134218242;
      *&buf[4] = v60;
      *&buf[12] = 2080;
      *&buf[14] = v61;
      v46 = "[REPhaseContext] [prepareFile] Created sound event for token %llu (file): Position = %s";
    }

    _os_log_impl(&dword_1E1C61000, v43, OS_LOG_TYPE_DEFAULT, v46, buf, 0x16u);
LABEL_30:
    v62 = *(ptr + 1);
    v73 = *ptr;
    v74 = v62;
    if (v62)
    {
      atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [(REPHASESoundEvent *)v24 setPrepareState:&v73];
    if (v74)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v74);
    }

    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __57__REPHASEContext_prepareFileType_phaseEntity_completion___block_invoke;
    v70[3] = &unk_1E871B458;
    v72 = v68;
    v71 = v24;
    [(REPHASESoundEvent *)v71 prepareWithCompletion:v70];

    if (v76 < 0)
    {
      operator delete(__p[0]);
    }

    if (v78 < 0)
    {
      operator delete(v77[0]);
    }

LABEL_42:

    goto LABEL_43;
  }

  v47 = *re::audioLogObjects(0);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    v66 = *(*ptr + 64);
    v67 = *(*ptr + 24);
    *buf = 134218240;
    *&buf[4] = v66;
    *&buf[12] = 2048;
    *&buf[14] = v67;
    _os_log_error_impl(&dword_1E1C61000, v47, OS_LOG_TYPE_ERROR, "[REPhaseContext] [Prepare] Error creating sampler definition for asset: %llu and token: %llu. Sound event will not be prepared.", buf, 0x16u);
  }

  v15 = _Block_copy(*(*ptr + 392));
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error creating sampler definition for asset %llu. Sound event will not be prepared.", *(*ptr + 64)];
  v48 = MEMORY[0x1E696ABC0];
  v88 = *MEMORY[0x1E696A578];
  v89[0] = v17;
  v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:&v88 count:1];
  v25 = [v48 errorWithDomain:@"com.apple.re.internal" code:-110 userInfo:v49];

  (v15)[2](v15, v25);
LABEL_43:
}

- (id)eventFor:(unint64_t)for
{
  os_unfair_lock_lock(&self->_soundEventsMutex.m_lock);
  v5 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&self->_soundEvents.__table_.__bucket_list_.__ptr_, for);
  if (v5)
  {
    v6 = v5[3];
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(&self->_soundEventsMutex.m_lock);

  return v6;
}

- (BOOL)eventBeingPrepared:(unint64_t)prepared
{
  os_unfair_lock_lock(&self->_soundEventsPreparingMutex.m_lock);
  LOBYTE(prepared) = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&self->_soundEventsPreparing.__table_.__bucket_list_.__ptr_, prepared) != 0;
  os_unfair_lock_unlock(&self->_soundEventsPreparingMutex.m_lock);
  return prepared;
}

- (unint64_t)uniqueEventCount
{
  v9 = 0u;
  v10 = 0u;
  v11 = 1065353216;
  p_soundEventsMutex = &self->_soundEventsMutex;
  os_unfair_lock_lock(&self->_soundEventsMutex.m_lock);
  for (i = &self->_soundEvents.__table_.__first_node_; ; std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(&v9, &i[2]))
  {
    i = i->__next_;
    if (!i)
    {
      break;
    }
  }

  os_unfair_lock_unlock(&p_soundEventsMutex->m_lock);
  p_soundEventsPreparingMutex = &self->_soundEventsPreparingMutex;
  os_unfair_lock_lock(&self->_soundEventsPreparingMutex.m_lock);
  for (j = &self->_soundEventsPreparing.__table_.__first_node_; ; std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(&v9, &j[2]))
  {
    j = j->__next_;
    if (!j)
    {
      break;
    }
  }

  os_unfair_lock_unlock(&p_soundEventsPreparingMutex->m_lock);
  v7 = *(&v10 + 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(&v9);
  return v7;
}

- (unsigned)getPlayingSoundEventsCount
{
  os_unfair_lock_lock(&self->_soundEventsMutex.m_lock);
  next = self->_soundEvents.__table_.__first_node_.__next_;
  if (next)
  {
    v4 = 0;
    do
    {
      if ([next[3] state] == 1)
      {
        ++v4;
      }

      next = *next;
    }

    while (next);
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&self->_soundEventsMutex.m_lock);
  return v4;
}

- (unsigned)getPreparingSoundEventsCount
{
  os_unfair_lock_lock(&self->_soundEventsPreparingMutex.m_lock);
  size = self->_soundEventsPreparing.__table_.__size_;
  os_unfair_lock_unlock(&self->_soundEventsPreparingMutex.m_lock);
  return size;
}

- (unordered_set<unsigned)playbackClientsWithPreparedOrPreparingSounds
{
  retstr->var0.var0 = 0u;
  *&retstr->var0.var1.var0 = 0u;
  retstr->var0.var3 = 1.0;
  p_soundEventsMutex = &self->_soundEventsMutex;
  os_unfair_lock_lock(&self->_soundEventsMutex.m_lock);
  for (i = self->_soundEvents.__table_.__first_node_.__next_; i; i = *i)
  {
    [i[3] prepareState];
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(retstr, (v10 + 48));
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }
  }

  os_unfair_lock_unlock(&p_soundEventsMutex->m_lock);
  p_soundEventsPreparingMutex = &self->_soundEventsPreparingMutex;
  os_unfair_lock_lock(&self->_soundEventsPreparingMutex.m_lock);
  for (j = &self->_soundEventsPreparing.__table_.__first_node_; ; std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(retstr, &j[4]))
  {
    j = j->__next_;
    if (!j)
    {
      break;
    }
  }

  os_unfair_lock_unlock(&p_soundEventsPreparingMutex->m_lock);
  return result;
}

- (BOOL)doCleanUpSoundEventForToken:(unint64_t)token ifNotInScene:(unint64_t)scene
{
  std::lock[abi:ne200100]<re::UnfairLock,re::UnfairLock>(&self->_soundEventsMutex.m_lock, &self->_soundEventsPreparingMutex.m_lock);
  p_soundEvents = &self->_soundEvents;
  v8 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&self->_soundEvents.__table_.__bucket_list_.__ptr_, token);
  v9 = v8;
  if (v8)
  {
    v10 = v8[3];
    if (v10)
    {
      [v10 prepareState];
      ptr = v33->_scenes.__table_.__bucket_list_.__ptr_;
      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v34);
      }
    }

    else
    {
      v33 = 0;
      v34 = 0;
      ptr = MEMORY[0x20];
    }

    v12 = ptr != scene;
  }

  else
  {
    v12 = 0;
  }

  v13 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&self->_soundEventsPreparing.__table_.__bucket_list_.__ptr_, token) | v9;
  v15 = scene == -1 && v13 != 0;
  v16 = v15 || v12;
  if (v16)
  {
    if (v9)
    {
      v17 = *(v9 + 24);
    }

    else
    {
      v17 = 0;
    }

    v18 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&self->_soundEvents.__table_.__bucket_list_.__ptr_, token);
    if (v18)
    {
      size = self->_soundEvents.__table_.__bucket_list_.__deleter_.__size_;
      unsafeEngine = v18->_unsafeEngine;
      v21 = vcnt_s8(size);
      v21.i16[0] = vaddlv_u8(v21);
      if (v21.u32[0] > 1uLL)
      {
        if (unsafeEngine >= size)
        {
          unsafeEngine %= size;
        }
      }

      else
      {
        unsafeEngine &= size - 1;
      }

      isa = p_soundEvents->__table_.__bucket_list_.__ptr_[unsafeEngine];
      do
      {
        v23 = isa;
        isa = isa->super.isa;
      }

      while (isa != v18);
      if (v23 == &self->_soundEvents.__table_.__first_node_)
      {
        goto LABEL_37;
      }

      v24 = v23->_unsafeEngine;
      if (v21.u32[0] > 1uLL)
      {
        if (v24 >= size)
        {
          v24 %= size;
        }
      }

      else
      {
        v24 &= size - 1;
      }

      if (v24 != unsafeEngine)
      {
LABEL_37:
        if (!v18->super.isa)
        {
          goto LABEL_38;
        }

        v25 = *(v18->super.isa + 1);
        if (v21.u32[0] > 1uLL)
        {
          if (v25 >= size)
          {
            v25 %= size;
          }
        }

        else
        {
          v25 &= size - 1;
        }

        if (v25 != unsafeEngine)
        {
LABEL_38:
          p_soundEvents->__table_.__bucket_list_.__ptr_[unsafeEngine] = 0;
        }
      }

      v26 = v18->super.isa;
      if (v18->super.isa)
      {
        v27 = *(v26 + 1);
        if (v21.u32[0] > 1uLL)
        {
          if (v27 >= size)
          {
            v27 %= size;
          }
        }

        else
        {
          v27 &= size - 1;
        }

        if (v27 != unsafeEngine)
        {
          p_soundEvents->__table_.__bucket_list_.__ptr_[v27] = v23;
          v26 = v18->super.isa;
        }
      }

      v23->super.isa = v26;
      v18->super.isa = 0;
      --self->_soundEvents.__table_.__size_;
      v33 = v18;
      v34 = &self->_soundEvents;
      LOBYTE(v35) = 1;
      *(&v35 + 1) = 0;
      HIDWORD(v35) = 0;
      std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,REPHASESoundEvent * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,REPHASESoundEvent * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](&v33);
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,RESoundEventPreparingData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,RESoundEventPreparingData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,RESoundEventPreparingData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,RESoundEventPreparingData>>>::__erase_unique<unsigned long long>(&self->_soundEventsPreparing.__table_.__bucket_list_.__ptr_, token);
  }

  else
  {
    v17 = 0;
  }

  os_unfair_lock_unlock(&self->_soundEventsMutex.m_lock);
  os_unfair_lock_unlock(&self->_soundEventsPreparingMutex.m_lock);
  if (v16 && v17 != 0)
  {
    if ([v17 isGroupPlaybackEvent])
    {
      [v17 prepareStates];
      for (i = v35; i; i = *i)
      {
        [(REPHASEContext *)self decrementOrDestroyEntityWithZeroCount:*(i[3] + 40)];
      }

      std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::~__hash_table(&v33);
    }

    else
    {
      [v17 prepareState];
      [(REPHASEContext *)self decrementOrDestroyEntityWithZeroCount:v33->_scenes.__table_.__bucket_list_.__deleter_.__size_];
      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v34);
      }
    }

    phaseQueue = self->_phaseQueue;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __59__REPHASEContext_doCleanUpSoundEventForToken_ifNotInScene___block_invoke;
    v31[3] = &unk_1E871B240;
    v32 = v17;
    dispatch_async(phaseQueue, v31);
  }

  return v16;
}

- (BOOL)addEventIfStillPreparing:(id)preparing forToken:(unint64_t)token
{
  preparingCopy = preparing;
  std::lock[abi:ne200100]<re::UnfairLock,re::UnfairLock>(&self->_soundEventsMutex.m_lock, &self->_soundEventsPreparingMutex.m_lock);
  v8 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&self->_soundEventsPreparing.__table_.__bucket_list_.__ptr_, token);
  if (v8)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,RESoundEventPreparingData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,RESoundEventPreparingData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,RESoundEventPreparingData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,RESoundEventPreparingData>>>::__erase_unique<unsigned long long>(&self->_soundEventsPreparing.__table_.__bucket_list_.__ptr_, token);
    size = self->_soundEvents.__table_.__bucket_list_.__deleter_.__size_;
    if (!size)
    {
      goto LABEL_19;
    }

    v10 = vcnt_s8(size);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      tokenCopy = token;
      if (size <= token)
      {
        tokenCopy = token % size;
      }
    }

    else
    {
      tokenCopy = (size - 1) & token;
    }

    v12 = self->_soundEvents.__table_.__bucket_list_.__ptr_[tokenCopy];
    if (!v12 || (v13 = *v12) == 0)
    {
LABEL_19:
      operator new();
    }

    while (1)
    {
      v14 = v13[1];
      if (v14 == token)
      {
        if (v13[2] == token)
        {
          objc_storeStrong(v13 + 3, preparing);
          break;
        }
      }

      else
      {
        if (v10.u32[0] > 1uLL)
        {
          if (v14 >= size)
          {
            v14 %= size;
          }
        }

        else
        {
          v14 &= size - 1;
        }

        if (v14 != tokenCopy)
        {
          goto LABEL_19;
        }
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_19;
      }
    }
  }

  os_unfair_lock_unlock(&self->_soundEventsMutex.m_lock);
  os_unfair_lock_unlock(&self->_soundEventsPreparingMutex.m_lock);

  return v8 != 0;
}

- (void)setPreparingWithData:(RESoundEventPreparingData)data forToken:(unint64_t)token
{
  var1 = data.var1;
  var0 = data.var0;
  os_unfair_lock_lock(&self->_soundEventsPreparingMutex.m_lock);
  size = self->_soundEventsPreparing.__table_.__bucket_list_.__deleter_.__size_;
  if (!size)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(size);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    tokenCopy = token;
    if (size <= token)
    {
      tokenCopy = token % size;
    }
  }

  else
  {
    tokenCopy = (size - 1) & token;
  }

  v11 = self->_soundEventsPreparing.__table_.__bucket_list_.__ptr_[tokenCopy];
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == token)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= size)
      {
        v13 %= size;
      }
    }

    else
    {
      v13 &= size - 1;
    }

    if (v13 != tokenCopy)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (v12[2] != token)
  {
    goto LABEL_17;
  }

  v12[3] = var0;
  v12[4] = var1;

  os_unfair_lock_unlock(&self->_soundEventsPreparingMutex.m_lock);
}

- (void)clearPreparingStateForToken:(unint64_t)token
{
  os_unfair_lock_lock(&self->_soundEventsPreparingMutex.m_lock);
  std::__hash_table<std::__hash_value_type<unsigned long long,RESoundEventPreparingData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,RESoundEventPreparingData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,RESoundEventPreparingData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,RESoundEventPreparingData>>>::__erase_unique<unsigned long long>(&self->_soundEventsPreparing.__table_.__bucket_list_.__ptr_, token);

  os_unfair_lock_unlock(&self->_soundEventsPreparingMutex.m_lock);
}

- (id)getOrCreateSpatialMixerDefinitionUsing:(const void *)using
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *using;
  v5 = *(*using + 304);
  if (v5 == 3)
  {
    v10 = v4[78] * 0.5;
    v11 = v4[79];
    v12 = *(using + 1);
    v17[0] = *using;
    v17[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    re::REPHASESpatialMixerDefinitionCache::getSphericalSpatialMixerDefinition(v10, v11, &self->_spatialMixerDefinitionCache, v17);
  }

  if (v5 == 1)
  {
    v8 = v4[77];
    v9 = *(using + 1);
    v18 = *using;
    v19 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = re::REPHASESpatialMixerDefinitionCache::getBeamSpatialMixerDefinition(&self->_spatialMixerDefinitionCache, &v18, v8);
    self = v19;
    if (!v19)
    {
      goto LABEL_17;
    }

LABEL_15:
    std::__shared_weak_count::__release_shared[abi:nn200100](self);
    goto LABEL_17;
  }

  if (v5)
  {
    v7 = 0;
    goto LABEL_17;
  }

  v6 = *(using + 1);
  v20 = *using;
  v21 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = re::REPHASESpatialMixerDefinitionCache::getOmniSpatialMixerDefinition(&self->_spatialMixerDefinitionCache, &v20);
  self = v21;
  if (v21)
  {
    goto LABEL_15;
  }

LABEL_17:
  v13 = *re::audioLogObjects(self);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(*using + 196);
    *buf = 134218242;
    v23 = v14;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "[RE/PHASE] [Prepare] Rolloff factor=%.2f on PHASESpatialMixerDefinition=%@", buf, 0x16u);
  }

  v15 = objc_alloc_init(MEMORY[0x1E69781B8]);
  [v15 setRolloffFactor:*(*using + 196)];
  [v7 setDistanceModelParameters:v15];

  return v7;
}

- (void)setCustomHRIRURL:(id)l
{
  objc_storeStrong(&self->_customHRIRURL, l);

  [(REPHASEContext *)self applyCustomHRIR];
}

- (void)applyCustomHRIR
{
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_audioEngineMutex.m_lock);
  v3 = self->_unsafeEngine;
  os_unfair_lock_unlock(&self->_audioEngineMutex.m_lock);
  if (v3)
  {
    customHRIRURL = self->_customHRIRURL;
    if (customHRIRURL)
    {
      v9 = 0;
      v5 = [(PHASEEngine *)v3 setHeadphoneHRIRFile:customHRIRURL error:&v9];
      v6 = v9;
      v7 = v6;
      if ((v5 & 1) == 0)
      {
        v8 = *re::audioLogObjects(v6);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v11 = v7;
          _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Error setting custom HRIR: %@", buf, 0xCu);
        }
      }
    }
  }
}

- (double)doubleFromPlistValue:(id)value defaultValue:(double)defaultValue
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [valueCopy doubleValue];
    defaultValue = v6;
  }

  return defaultValue;
}

- (void)createListenerIfPending
{
  os_unfair_lock_lock(&self->_scenesMutex.m_lock);
  for (i = self->_scenes.__table_.__first_node_.__next_; i; i = *i)
  {
    v4 = i[3];
    v5 = i[4];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    re::audio::REPHASEAudioScene::createListenerIfPending(v4);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }
  }

  os_unfair_lock_unlock(&self->_scenesMutex.m_lock);
}

- (BOOL)isListenerCreatedInScene
{
  os_unfair_lock_lock(&self->_scenesMutex.m_lock);
  p_first_node = &self->_scenes.__table_.__first_node_;
  do
  {
    p_first_node = p_first_node->__next_;
    if (!p_first_node)
    {
      break;
    }

    next = p_first_node[3].__next_;
    os_unfair_lock_lock(next + 16);
    v5 = *&next[18]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(next + 16);
  }

  while (!v5);
  os_unfair_lock_unlock(&self->_scenesMutex.m_lock);
  return p_first_node != 0;
}

- (BOOL)engineShouldBeRunningWithListenerAndSoundEvents
{
  os_unfair_lock_lock(&self->_scenesMutex.m_lock);
  next = self->_scenes.__table_.__first_node_.__next_;
  if (next)
  {
    v4 = 0;
    while (1)
    {
      v5 = next[3];
      os_unfair_lock_lock((v5 + 80));
      v6 = *(v5 + 112);
      os_unfair_lock_unlock((v5 + 80));
      if (v6)
      {
        break;
      }

      v7 = next[3];
      os_unfair_lock_lock((v7 + 64));
      v8 = *(v7 + 72) != 0;
      os_unfair_lock_unlock((v7 + 64));
      v4 |= v8;
      next = *next;
      if (!next)
      {
        goto LABEL_7;
      }
    }

    os_unfair_lock_unlock(&self->_scenesMutex.m_lock);
    v15 = 1;
  }

  else
  {
    v4 = 0;
LABEL_7:
    os_unfair_lock_unlock(&self->_scenesMutex.m_lock);
    os_unfair_lock_lock(&self->_soundEventsMutex.m_lock);
    v9 = self->_soundEvents.__table_.__first_node_.__next_;
    v10 = v9 != 0;
    for (i = 0; v9; v9 = *v9)
    {
      v12 = v9[3];
      if (v12)
      {
        [v12 prepareState];
        v13 = *(v17 + 56);
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v18);
        }
      }

      else
      {
        v17 = 0;
        v18 = 0;
        v13 = MEMORY[0x38];
      }

      i |= v13 == 2;
    }

    os_unfair_lock_unlock(&self->_soundEventsMutex.m_lock);
    os_unfair_lock_lock(&self->_soundEventsPreparingMutex.m_lock);
    v14 = self->_soundEventsPreparing.__table_.__first_node_.__next_;
    if (v14)
    {
      do
      {
        i |= v14[3] == 2;
        v14 = *v14;
      }

      while (v14);
      v10 = 1;
    }

    os_unfair_lock_unlock(&self->_soundEventsPreparingMutex.m_lock);
    v15 = i | v4 & v10;
  }

  return v15 & 1;
}

- (BOOL)engineShouldBeRunning
{
  engineShouldBeRunningWithListenerAndSoundEvents = [(REPHASEContext *)self engineShouldBeRunningWithListenerAndSoundEvents];
  v4 = *(self->_audioEngineRunnableManager.__ptr_ + 3);
  v5 = v4 == 0;
  v6 = v4 != 0;
  v7 = v5;
  self->_startPendingForRunnable = v7 & engineShouldBeRunningWithListenerAndSoundEvents;
  return v6 && engineShouldBeRunningWithListenerAndSoundEvents;
}

- (id)getListener
{
  os_unfair_lock_lock(&self->_scenesMutex.m_lock);
  next = self->_scenes.__table_.__first_node_.__next_;
  if (next)
  {
    while (1)
    {
      v4 = re::audio::REPHASEAudioScene::getListener(*(next + 3));
      if (v4)
      {
        break;
      }

      next = *next;
      if (!next)
      {
        goto LABEL_4;
      }
    }

    v5 = v4;
  }

  else
  {
LABEL_4:
    v5 = 0;
  }

  os_unfair_lock_unlock(&self->_scenesMutex.m_lock);

  return v5;
}

- (void)removeListener
{
  os_unfair_lock_lock(&self->_scenesMutex.m_lock);
  for (i = self->_scenes.__table_.__first_node_.__next_; i; i = *&i->_os_unfair_lock_opaque)
  {
    re::audio::REPHASEAudioScene::removeListener(*&i[6]._os_unfair_lock_opaque);
  }

  os_unfair_lock_unlock(&self->_scenesMutex.m_lock);
}

- (id)getSessionRoot:(unint64_t)root
{
  os_unfair_lock_lock(&self->_scenesMutex.m_lock);
  next = self->_scenes.__table_.__first_node_.__next_;
  if (next)
  {
    while (1)
    {
      v6 = re::audio::REPHASEAudioScene::getSessionRoot(*&next[6]._os_unfair_lock_opaque, root);
      if (v6)
      {
        break;
      }

      next = *&next->_os_unfair_lock_opaque;
      if (!next)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v6 = 0;
  }

  os_unfair_lock_unlock(&self->_scenesMutex.m_lock);

  return v6;
}

- (void)removeSessionRoot:(unint64_t)root
{
  os_unfair_lock_lock(&self->_scenesMutex.m_lock);
  for (i = &self->_scenes.__table_.__first_node_; ; re::audio::REPHASEAudioScene::removeSessionRoot(i[3].__next_, root))
  {
    i = i->__next_;
    if (!i)
    {
      break;
    }
  }

  os_unfair_lock_unlock(&self->_scenesMutex.m_lock);
}

- (void)getSourceCount:(unsigned int *)count occluderCount:(unsigned int *)occluderCount
{
  os_unfair_lock_lock(&self->_scenesMutex.m_lock);
  next = self->_scenes.__table_.__first_node_.__next_;
  if (next)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      *v10 = 0;
      re::audio::REPHASEAudioScene::getSourceCount(*&next[6]._os_unfair_lock_opaque, &v10[1], v10);
      v8 += v10[1];
      v9 += v10[0];
      next = *&next->_os_unfair_lock_opaque;
    }

    while (next);
    if (count)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
    if (count)
    {
LABEL_5:
      *count = v8;
    }
  }

  if (occluderCount)
  {
    *occluderCount = v9;
  }

  os_unfair_lock_unlock(&self->_scenesMutex.m_lock);
}

- (id)sourceObjectForEntityID:(unint64_t)d
{
  [(REPHASEContext *)self getEntity:d];
  if (v5)
  {
    v3 = *(v5 + 16);
  }

  else
  {
    v3 = 0;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  return v3;
}

- (shared_ptr<re::audio::REPHASEEntity>)getEntity:(unint64_t)entity
{
  os_unfair_lock_lock(&self->_scenesMutex.m_lock);
  [(REPHASEContext *)self _getEntityUnderLock:entity];

  os_unfair_lock_unlock(&self->_scenesMutex.m_lock);
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- (shared_ptr<re::audio::REPHASEEntity>)_getEntityUnderLock:(unint64_t)lock
{
  v4 = v3;
  next = self->_scenes.__table_.__first_node_.__next_;
  if (next)
  {
    while (1)
    {
      re::audio::REPHASEAudioScene::getEntity(*&next[6]._os_unfair_lock_opaque, lock, v4);
      if (*v4)
      {
        break;
      }

      self = *(v4 + 8);
      if (self)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](self);
      }

      next = *&next->_os_unfair_lock_opaque;
      if (!next)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *v4 = 0;
    *(v4 + 8) = 0;
  }

  result.var1 = a2;
  result.var0 = self;
  return result;
}

- (void)decrementOrDestroyEntityWithZeroCount:(unint64_t)count
{
  os_unfair_lock_lock(&self->_scenesMutex.m_lock);
  for (i = &self->_scenes.__table_.__first_node_; ; re::audio::REPHASEAudioScene::decrementOrDestroyEntityWithZeroCount(i[3].__next_, count))
  {
    i = i->__next_;
    if (!i)
    {
      break;
    }
  }

  os_unfair_lock_unlock(&self->_scenesMutex.m_lock);
}

- (id)gainParamForToken:(unint64_t)token isGroupPlaybackSound:(BOOL)sound
{
  v10[0] = token;
  v4 = @"gain";
  if (sound)
  {
    v7 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&self->_gainStringParamCache.__table_.__bucket_list_.__ptr_, token);
    if (v7)
    {
      v4 = v7[3];
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %llu", @"gain", token, v10[0]];
      v10[1] = v10;
      v8 = std::__hash_table<std::__hash_value_type<unsigned long long,NSString * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSString * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSString * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSString * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_gainStringParamCache.__table_.__bucket_list_.__ptr_, token);
      objc_storeStrong(v8 + 3, v4);
    }
  }

  return v4;
}

- (id)reverbParamForToken:(unint64_t)token isGroupPlaybackSound:(BOOL)sound
{
  v10[0] = token;
  v4 = @"reverbSend";
  if (sound)
  {
    v7 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&self->_reverbStringParamCache.__table_.__bucket_list_.__ptr_, token);
    if (v7)
    {
      v4 = v7[3];
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %llu", @"reverbSend", token, v10[0]];
      v10[1] = v10;
      v8 = std::__hash_table<std::__hash_value_type<unsigned long long,NSString * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSString * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSString * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSString * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_reverbStringParamCache.__table_.__bucket_list_.__ptr_, token);
      objc_storeStrong(v8 + 3, v4);
    }
  }

  return v4;
}

- (id)directParamForToken:(unint64_t)token isGroupPlaybackSound:(BOOL)sound
{
  v10[0] = token;
  v4 = @"directSend";
  if (sound)
  {
    v7 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&self->_directStringParamCache.__table_.__bucket_list_.__ptr_, token);
    if (v7)
    {
      v4 = v7[3];
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %llu", @"directSend", token, v10[0]];
      v10[1] = v10;
      v8 = std::__hash_table<std::__hash_value_type<unsigned long long,NSString * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSString * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSString * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSString * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_directStringParamCache.__table_.__bucket_list_.__ptr_, token);
      objc_storeStrong(v8 + 3, v4);
    }
  }

  return v4;
}

- (void)clearSoundEventEnginePointers
{
  for (i = self->_soundEvents.__table_.__first_node_.__next_; i; i = *i)
  {
    [i[3] clearSoundEventEngine];
  }
}

- (void)removeAudioFileGroupAssetData:(unint64_t)data
{
  os_unfair_lock_lock(&self->_audioEngineMutex.m_lock);
  v5 = self->_unsafeEngine;
  os_unfair_lock_unlock(&self->_audioEngineMutex.m_lock);
  if (v5)
  {
    [(REPhaseSoundEventAssetStore *)self->_soundEventAssetStore removeEntriesForAssetID:data fromEngine:v5];
  }
}

- (void)setRoomSensedReverbStabilizationIsEnabled:(BOOL)enabled
{
  os_unfair_lock_lock(&self->_audioEngineMutex.m_lock);
  v4 = self->_unsafeEngine;
  os_unfair_lock_unlock(&self->_audioEngineMutex.m_lock);
  if (v4)
  {
    if (!self->_roomSensedReverbStabilizer.__ptr_)
    {
      v6 = *re::audioLogObjects(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "[REPhaseContext] [ReverbStabilization] attempted to set reverb stablization status before init of the roomSensedReverbStabilizer.", v7, 2u);
      }
    }
  }
}

- (PhaseRoomAcousticDefaults)roomAcousticDefaults
{
  smoothing = self->_roomAcousticDefaults.smoothing;
  maximumReverbTime = self->_roomAcousticDefaults.maximumReverbTime;
  result.maximumReverbTime = maximumReverbTime;
  result.smoothing = smoothing;
  return result;
}

- (id).cxx_construct
{
  self->_scenesMutex.m_lock._os_unfair_lock_opaque = 0;
  self->_scenes.__table_.__bucket_list_ = 0u;
  *&self->_scenes.__table_.__first_node_.__next_ = 0u;
  self->_scenes.__table_.__max_load_factor_ = 1.0;
  self->_shapesMutex.m_lock._os_unfair_lock_opaque = 0;
  self->_shapes.__table_.__bucket_list_ = 0u;
  *&self->_shapes.__table_.__first_node_.__next_ = 0u;
  self->_shapes.__table_.__max_load_factor_ = 1.0;
  self->_soundEvents.__table_.__bucket_list_ = 0u;
  *&self->_soundEvents.__table_.__first_node_.__next_ = 0u;
  self->_soundEvents.__table_.__max_load_factor_ = 1.0;
  self->_soundEventsMutex.m_lock._os_unfair_lock_opaque = 0;
  self->_soundEventsPreparing.__table_.__bucket_list_ = 0u;
  *&self->_soundEventsPreparing.__table_.__first_node_.__next_ = 0u;
  self->_soundEventsPreparing.__table_.__max_load_factor_ = 1.0;
  self->_soundEventsPreparingMutex.m_lock._os_unfair_lock_opaque = 0;
  *&self->_audioAssets.__table_.__first_node_.__next_ = 0u;
  self->_audioAssets.__table_.__bucket_list_ = 0u;
  self->_audioAssets.__table_.__max_load_factor_ = 1.0;
  *&self->_audioAssetsMutex.m_lock._os_unfair_lock_opaque = 0;
  self->_audioEngineCreationMutex.m_lock._os_unfair_lock_opaque = 0;
  re::REPHASEMaterialCache::REPHASEMaterialCache(&self->_phaseMaterialCache);
  re::REPHASESpatialMixerDefinitionCache::REPHASESpatialMixerDefinitionCache(&self->_spatialMixerDefinitionCache);
  self->_reverbStringParamCache.__table_.__bucket_list_ = 0u;
  *&self->_reverbStringParamCache.__table_.__first_node_.__next_ = 0u;
  self->_audioEngineRunnableManager = 0u;
  self->_reverbStringParamCache.__table_.__max_load_factor_ = 1.0;
  self->_directStringParamCache.__table_.__bucket_list_ = 0u;
  *&self->_directStringParamCache.__table_.__first_node_.__next_ = 0u;
  self->_directStringParamCache.__table_.__max_load_factor_ = 1.0;
  self->_gainStringParamCache.__table_.__bucket_list_ = 0u;
  *&self->_gainStringParamCache.__table_.__first_node_.__next_ = 0u;
  self->_gainStringParamCache.__table_.__max_load_factor_ = 1.0;
  self->_roomSensedReverbStabilizer.__ptr_ = 0;
  return self;
}

@end