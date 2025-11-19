void sub_1E214EA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  v19 = *(v14 + 544);
  if (v19)
  {
    *(v14 + 552) = v19;
    operator delete(v19);
  }

  re::InsertionOrderedMap<unsigned long long,__CFString const*,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::~InsertionOrderedMap(v14 + 480);
  re::AudioSessionCache::~AudioSessionCache((v14 + 408));
  std::__hash_table<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,true>,std::__unordered_map_equal<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,true>,std::allocator<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>>>::~__hash_table(v14 + 368);
  std::unique_ptr<re::AudioManager::PrivateData>::reset[abi:ne200100]((v14 + 360), 0);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(v14 + 272);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(v14 + 128);

  std::__hash_table<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>>>::~__hash_table(v15);
  re::AudioService::~AudioService(v14);
  _Unwind_Resume(a1);
}

void re::AudioManager::updateSharedAcousticPropertiesFromDefaults(re::AudioManager *this)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  *(this + 83) = 1065353216;
  v3 = [v2 objectForKey:@"com.apple.re.voiceGain_PHASE_dB"];
  v4 = v3;
  if (v3)
  {
    [v3 floatValue];
    v6 = fminf(v5, 10.0);
    *(this + 81) = v6;
    v7 = [v4 floatValue];
    if (v6 != v8)
    {
      v9 = *re::audioLogObjects(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [v4 floatValue];
        v27 = *(this + 81);
        v33 = 134218240;
        v34 = v28;
        v35 = 2048;
        v36 = v27;
        _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Clamping provided PHASE voice level correction %f dB to %f dB", &v33, 0x16u);
      }
    }
  }

  else
  {
    *(this + 81) = 0;
  }

  v10 = [v2 objectForKey:@"com.apple.re.sharedReverbSendLevel_PHASE_dB"];
  v11 = v10;
  if (v10)
  {
    [v10 floatValue];
    v13 = fminf(v12, 20.0);
    *(this + 82) = v13;
    v14 = [v11 floatValue];
    if (v13 != v15)
    {
      v16 = *re::audioLogObjects(v14);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [v11 floatValue];
        v29 = *(this + 82);
        v33 = 134218240;
        v34 = v30;
        v35 = 2048;
        v36 = v29;
        _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Clamping provided PHASE shared reverb send level %f dB to %f dB", &v33, 0x16u);
      }
    }
  }

  else if (_os_feature_enabled_impl())
  {
    *(this + 82) = 0;
  }

  else
  {
    *(this + 82) = -1046478848;
  }

  v17 = [v2 objectForKey:@"com.apple.re.sharedReferenceDistance"];
  v18 = v17;
  if (v17)
  {
    [v17 floatValue];
    v20 = fmaxf(fminf(v19, 1.5), 0.2);
    *(this + 83) = v20;
    v17 = [v18 floatValue];
    if (v20 != v21)
    {
      v22 = *re::audioLogObjects(v17);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [v18 floatValue];
        v31 = *(this + 83);
        v33 = 134218240;
        v34 = v32;
        v35 = 2048;
        v36 = v31;
        _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "Clamping provided reference distance %f m to %f m", &v33, 0x16u);
      }
    }
  }

  v23 = *re::audioLogObjects(v17);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(this + 82);
    v25 = *(this + 81);
    v26 = *(this + 83);
    v33 = 134218496;
    v34 = v24;
    v35 = 2048;
    v36 = v25;
    v37 = 2048;
    v38 = v26;
    _os_log_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_DEFAULT, "Applying %f dB reverb send for PHASE control path, %f dB voice gain for PHASE control path, and %f m reference distance", &v33, 0x20u);
  }
}

void ___ZN2re12AudioManagerC2Ev_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) isCancelled];
  if (v2)
  {
    v3 = *re::audioLogObjects(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEBUG, "Aborting callback since the engine was shut down.", v4, 2u);
    }
  }

  else
  {
    re::AudioManager::updateSharedAcousticPropertiesFromDefaults(v1);
    *(v1 + 340) = 1;
  }
}

void re::AudioService::~AudioService(id *this)
{
  *this = &unk_1F5CCC398;
  std::__hash_table<std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::audio::AudioGroup>>>::~__hash_table((this + 2));
}

void re::AudioManager::~AudioManager(re::AudioManager *this)
{
  *this = &unk_1F5CCBEF8;
  dispatch_sync(*(this + 71), &__block_literal_global_6);
  for (i = *(this + 10); i; i = *i)
  {
    v3 = i[12];
    if (v3)
    {
      CFRelease(v3);
    }
  }

  v4 = *(this + 65);
  v5 = *(this + 66);
  while (v4 != v5)
  {
    v6 = std::__hash_table<std::__hash_value_type<unsigned long long,__CFString const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,__CFString const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,__CFString const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,__CFString const*>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 60, *v4)[3];
    if (v6)
    {
      CFRelease(v6);
    }

    ++v4;
  }

  v7 = *(this + 14);
  if (v7)
  {
    CFRelease(v7);
  }

  for (j = (this + 144); ; CFRelease(j[3]))
  {
    j = *j;
    if (!j)
    {
      break;
    }
  }

  for (k = (this + 288); ; CFRelease(k[2]))
  {
    k = *k;
    if (!k)
    {
      break;
    }
  }

  notify_cancel(*(this + 84));

  v10 = *(this + 68);
  if (v10)
  {
    *(this + 69) = v10;
    operator delete(v10);
  }

  v11 = *(this + 65);
  if (v11)
  {
    *(this + 66) = v11;
    operator delete(v11);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(this + 480);
  re::HashTable<unsigned int,re::AudioSessionCache::CacheState,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(this + 52);

  std::__hash_table<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,true>,std::__unordered_map_equal<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,true>,std::allocator<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>>>::~__hash_table(this + 368);
  std::unique_ptr<re::AudioManager::PrivateData>::reset[abi:ne200100](this + 45, 0);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(this + 272);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(this + 128);

  std::__hash_table<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>>>::~__hash_table(this + 64);
  *this = &unk_1F5CCC398;
  std::__hash_table<std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::audio::AudioGroup>>>::~__hash_table(this + 16);
}

void re::AudioManager::addServiceNotificationCallback(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v5 = a4;
  REAudioServicesNotificationCallbackRegistry::registerCallback(a1 + 46, &v6, v5);
  if (v6 <= 5uLL && ((0x37u >> v6) & 1) != 0 && BYTE1(v6) == 3)
  {
    (*(*a1 + 96))(a1, dword_1E30645CC[v6], v7);
  }
}

uint64_t **re::AudioManager::removeServiceNotificationCallback(re::AudioManager *this, REAudioServicesNotificationCallbackConfiguration a2)
{
  v4 = a2;
  result = REAudioServicesNotificationCallbackRegistry::unregisterCallback((this + 368), &v4);
  if (v4.var0 <= 5uLL && ((0x37u >> v4.var0) & 1) != 0 && v4.var1 == 3)
  {
    return (*(*this + 104))(this, dword_1E30645CC[v4.var0], v4.var2);
  }

  return result;
}

void re::AudioManager::clearAllRenderingState(re::AudioManager *this)
{
  for (i = *(this + 10); i; i = *i)
  {
    v3 = i[12];
    if (v3)
    {
      CFRelease(v3);
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>>>::clear(this + 64);

  re::AudioSessionCache::clear(this + 51);
}

void re::AudioManager::triggerServiceReset(re::AudioManager *this)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *re::audioLogObjects(this);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = this;
    _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "AudioManager %p clearing state and triggering reset callbacks", &buf, 0xCu);
  }

  (*(*this + 952))(this);
  (*(*this + 992))(this);
  REAudioServicesNotificationCallbackRegistry::getCallbacksForType(this + 368, 3, &buf);
  v4 = *(&buf + 1);
  for (i = buf; i != v4; ++i)
  {
    v5 = _Block_copy(*i);
    v5[2]();
  }

  p_buf = &buf;
  std::vector<PHASESource * {__strong}>::__destroy_vector::operator()[abi:ne200100](&p_buf);
}

void sub_1E214F448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, char a11)
{
  a10 = &a11;
  std::vector<PHASESource * {__strong}>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void re::AudioManager::triggerServiceLost(re::AudioManager *this)
{
  REAudioServicesNotificationCallbackRegistry::getCallbacksForType(this + 368, 2, v4);
  v1 = v4[0];
  v2 = v4[1];
  while (v1 != v2)
  {
    v3 = _Block_copy(*v1);
    v3[2]();

    ++v1;
  }

  v5 = v4;
  std::vector<PHASESource * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void sub_1E214F4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<PHASESource * {__strong}>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void re::AudioManager::forceShutdown(id **this)
{
  [*this[45] cancel];

  std::__hash_table<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,true>,std::__unordered_map_equal<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,true>,std::allocator<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>>>::clear((this + 46));
}

void re::AudioManager::beforeFrameUpdate(re::AudioManager *this)
{
  for (i = *(this + 10); i; i = *i)
  {
    for (j = i[9]; j; j = *j)
    {
      std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::clear((j + 8));
    }
  }
}

void re::AudioManager::afterFrameUpdate(re::AudioManager *this, float a2)
{
  re::AudioManager::updateSTSStateAfterFrameUpdate(this);

  re::AudioSessionCache::update((this + 408));
}

void re::AudioManager::updateSTSStateAfterFrameUpdate(re::AudioManager *this)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!*(this + 14))
  {
    if ((*(this + 576) & 1) == 0)
    {
      *(this + 576) = 1;

      re::AudioManager::configureSTS(this);
    }

    return;
  }

  if (*(this + 256) == 1)
  {
    v30 = this + 176;
    v2 = *(this + 37);
  }

  else
  {
    v2 = *(this + 37);
    if (!v2)
    {
      goto LABEL_55;
    }

    v30 = 0;
  }

  v34 = 0u;
  v35 = 0u;
  v36 = 1065353216;
  std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::__rehash<true>(&v34, v2);
  v3 = *(this + 36);
  if (!v3)
  {
    goto LABEL_30;
  }

  v31 = &v35;
  do
  {
    v4 = v3[2];
    v5 = *(v3 + 3);
    *buf_8 = *(v3 + 2);
    v41 = v5;
    v6 = *(v3 + 5);
    v42 = *(v3 + 4);
    v43 = v6;
    v7 = 0x9DDFEA08EB382D69 * ((8 * (v4 & 0x1FFFFFFF) + 8) ^ HIDWORD(v4));
    v8 = 0x9DDFEA08EB382D69 * (HIDWORD(v4) ^ (v7 >> 47) ^ v7);
    v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
    if (!*(&v34 + 1))
    {
      goto LABEL_28;
    }

    v10 = vcnt_s8(*(&v34 + 8));
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
      if (v9 >= *(&v34 + 1))
      {
        v11 = v9 % *(&v34 + 1);
      }
    }

    else
    {
      v11 = v9 & (*(&v34 + 1) - 1);
    }

    v12 = *(v34 + 8 * v11);
    if (!v12 || (v13 = *v12) == 0)
    {
LABEL_28:
      operator new();
    }

    while (1)
    {
      v14 = v13[1];
      if (v14 == v9)
      {
        break;
      }

      if (v10.u32[0] > 1uLL)
      {
        if (v14 >= *(&v34 + 1))
        {
          v14 %= *(&v34 + 1);
        }
      }

      else
      {
        v14 &= *(&v34 + 1) - 1;
      }

      if (v14 != v11)
      {
        goto LABEL_28;
      }

LABEL_27:
      v13 = *v13;
      if (!v13)
      {
        goto LABEL_28;
      }
    }

    if (v13[2] != v4)
    {
      goto LABEL_27;
    }

    v3 = *v3;
  }

  while (v3);
LABEL_30:
  v15 = (this + 288);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v22 = *(this + 15);
    v32 = 0;
    [v22 updateGlobalState:v30 labelStates:&v34 error:&v32];
    v21 = v32;
    if (!v21)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = *v15;
  if (*v15)
  {
    do
    {
      if (*(v17 + 108))
      {
        v18 = &unk_1F5D429A8;
      }

      else
      {
        v18 = &unk_1F5D429C0;
      }

      v37 = @"STSAdditionalLabelInfoKey_DeferToSystemTuning";
      v38 = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:{1, v30, v31}];
      [v16 setObject:v19 forKeyedSubscript:v17[2]];

      v17 = *v17;
    }

    while (v17);
  }

  v20 = *(this + 15);
  v33 = 0;
  [v20 updateGlobalState:v30 labelStates:&v34 additionalLabelInfo:v16 error:{&v33, v30}];
  v21 = v33;

  if (v21)
  {
LABEL_39:
    v23 = (*(*this + 112))(this);
    if (v23)
    {
      v24 = *re::audioLogObjects(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, "[RE/STS] failed to update STS states", &buf, 2u);
      }
    }
  }

LABEL_42:
  if (*(this + 256) == 1)
  {
    *(this + 256) = 0;
  }

  for (i = (this + 288); ; CFRelease(i[2]))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  if (*(this + 37))
  {
    v26 = *v15;
    if (*v15)
    {
      do
      {
        v27 = *v26;
        operator delete(v26);
        v26 = v27;
      }

      while (v27);
    }

    *(this + 36) = 0;
    v28 = *(this + 35);
    if (v28)
    {
      for (j = 0; j != v28; ++j)
      {
        *(*(this + 34) + 8 * j) = 0;
      }
    }

    *(this + 37) = 0;
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(&v34);

LABEL_55:
  *(this + 340) = 0;
}

void sub_1E214FB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void re::AudioManager::configureSTS(re::AudioManager *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    CFRelease(v2);
    *(this + 14) = 0;
  }

  v3 = *(this + 15);
  *(this + 15) = 0;

  if (*(this + 104) == 1)
  {
    v5 = *re::audioLogObjects(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "[RE/STS] Configuring STS controller remotely.", v9, 2u);
    }

    v6 = (*(*this + 640))(this);
    v7 = *(this + 71);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3321888768;
    v9[2] = ___ZN2re12AudioManager18configureSTSRemoteEv_block_invoke;
    v9[3] = &__block_descriptor_40_ea8_32c51_ZTSKZN2re12AudioManager18configureSTSRemoteEvE3__0_e5_v8__0l;
    v8 = v6;
    v10 = v8;
    dispatch_async(v7, v9);
  }
}

BOOL re::AudioManager::setMixGroupEffectiveGain(uint64_t a1, unint64_t a2, unint64_t a3, const void **a4, uint64_t *a5)
{
  v21 = a3;
  v22 = a2;
  v23 = &v22;
  v8 = std::__hash_table<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 64), &v22);
  v23 = &v21;
  v9 = std::__hash_table<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v8 + 7, a3);
  v10 = std::__string_hash<char>::operator()[abi:ne200100]((v9 + 3), a4);
  v11 = v10;
  v12 = v9[4];
  if (!*&v12)
  {
    goto LABEL_18;
  }

  v13 = vcnt_s8(v12);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = v10;
    if (v10 >= *&v12)
    {
      v15 = v10 % *&v12;
    }
  }

  else
  {
    v15 = (*&v12 - 1) & v10;
  }

  v16 = *(v9[3] + 8 * v15);
  if (!v16 || (v17 = *v16) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v18 = v17[1];
    if (v18 == v11)
    {
      break;
    }

    if (v14 > 1)
    {
      if (v18 >= *&v12)
      {
        v18 %= *&v12;
      }
    }

    else
    {
      v18 &= *&v12 - 1;
    }

    if (v18 != v15)
    {
      goto LABEL_18;
    }

LABEL_17:
    v17 = *v17;
    if (!v17)
    {
      goto LABEL_18;
    }
  }

  result = std::equal_to<std::string>::operator()[abi:ne200100]((v9 + 3), v17 + 2, a4);
  if (!result)
  {
    goto LABEL_17;
  }

  v20 = *a5;
  *(v17 + 24) = *(a5 + 4);
  v17[5] = v20;
  return result;
}

void re::AudioManager::updateSourceState(int8x8_t *this, const re::AudioSourceState *a2)
{
  v98 = *MEMORY[0x1E69E9840];
  (*(*this + 1000))(this);
  if (*(a2 + 60) == -1)
  {
    *(a2 + 97) = 0;
    return;
  }

  if (!*(a2 + 9) && *(a2 + 264) != 0)
  {
    if (this[40].i8[0] == 1)
    {
      *(a2 + 97) = *(a2 + 33);
      v4 = *(*this + 1016);
      v5 = this;
      v6 = a2;

LABEL_7:
      v4(v5, v6);
      return;
    }

    return;
  }

  v7 = *(a2 + 36);
  if (v7)
  {
    v8 = v7 >> 1;
  }

  else
  {
    v8 = v7 >> 1;
  }

  if (!v8)
  {
    v4 = *(*this + 1008);
    v5 = this;
    v6 = a2;

    goto LABEL_7;
  }

  if (this[14])
  {
    v9 = (a2 + 480);
    v10 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(&this[8], a2 + 60);
    if (v10 && (v11 = *(v10 + 12)) != 0)
    {
      v12 = v11;
    }

    else
    {
      v13 = *re::audioLogObjects(v10);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *v9;
        *buf = 134217984;
        *&buf[4] = v14;
        _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "[RE/STS] Creating sts-label-count dictionary for scene %llu", buf, 0xCu);
      }

      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
      *buf = a2 + 480;
      std::__hash_table<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&this[8], a2 + 60)[12] = Mutable;
      v12 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(&this[8], a2 + 60)[12];
      if (!v12)
      {
        v39 = *re::audioLogObjects(0);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = *v9;
          *buf = 134217984;
          *&buf[4] = v40;
          _os_log_error_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_ERROR, "[RE/STS] Could not find sts-label-count dictionary for scene ID %llu", buf, 0xCu);
        }

        return;
      }
    }

    v16 = *(a2 + 102);
    if (!v16)
    {
      if (*(a2 + 36))
      {
        v17 = *(a2 + 37);
      }

      else
      {
        v17 = a2 + 289;
      }

      v18 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v17, 0x8000100u);
      *(a2 + 102) = v18;
      if (!v18)
      {
        snprintf(buf, 0x64uLL, "badlabel%llu", *(a2 + 89));
        std::string::basic_string[abi:ne200100]<0>(v90, buf);
        v41 = re::audio::throttledLog(OS_LOG_TYPE_ERROR, v90);
        v42 = v41;
        if (v93 < 0)
        {
          operator delete(*v90);
        }

        if (v42)
        {
          v43 = *re::audioLogObjects(v41);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v74 = *(a2 + 89);
            if (*(a2 + 36))
            {
              v75 = *(a2 + 37);
            }

            else
            {
              v75 = a2 + 289;
            }

            *v90 = 134218242;
            *&v90[4] = v74;
            v91 = 2080;
            v92 = v75;
            _os_log_error_impl(&dword_1E1C61000, v43, OS_LOG_TYPE_ERROR, "[RE/STS] AudioManager failed to create sts label for token %llu's introspected value %s", v90, 0x16u);
          }
        }

        goto LABEL_103;
      }

      v16 = v18;
      v19 = [v12 objectForKey:v16];
      v20 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v19, "intValue") + 1}];
      [v12 setValue:v20 forKey:v16];

      v22 = *re::audioLogObjects(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a2 + 89);
        *buf = 138412546;
        *&buf[4] = v16;
        *&buf[12] = 2048;
        *&buf[14] = v23;
        _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, "[RE/STS] AudioManager Tracking STS label %@ with token: %llu", buf, 0x16u);
      }
    }

    v24 = [v12 objectForKey:v16];
    if ([v24 intValue] != 1 && (*(a2 + 824) & 1) == 0)
    {
LABEL_102:

LABEL_103:
      return;
    }

    if ([v24 intValue] == 1)
    {
      *(a2 + 824) = 1;
    }

    v96 = 0u;
    v97 = 0u;
    v95 = 0u;
    memset(buf, 0, sizeof(buf));
    if (*(a2 + 312))
    {
      v25 = 2;
    }

    else
    {
      v25 = *(a2 + 508);
    }

    if (v25 <= 2u)
    {
      LODWORD(v97) = dword_1E30645E4[v25];
    }

    ShouldConfigureTuningForSTSLabels = REAudioShouldConfigureTuningForSTSLabels();
    v27 = ShouldConfigureTuningForSTSLabels;
    if (*(a2 + 825) == 1 && *(a2 + 826) == v25)
    {
LABEL_75:
      if (v25 == 2)
      {
        *buf = xmmword_1E3047670;
        *&buf[16] = xmmword_1E3047680;
        v95 = xmmword_1E30476A0;
        if (*(a2 + 508) == 2)
        {
          v76 = *(a2 + 22);
          v80 = *(a2 + 23);
          *allocatorb = *(a2 + 24);
          *cfb = *(a2 + 25);
          (*(*this + 424))(this);
          __asm { FMOV            V2.4S, #-1.0 }

          v59 = vaddq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v76, 0), 0, v80), _Q2, *allocatorb), 0, *cfb), v58);
        }

        else
        {
          v59 = *(a2 + 25);
        }

        v96 = v59;
      }

      else if (!v25)
      {
        v51 = *(a2 + 23);
        *buf = *(a2 + 22);
        *&buf[16] = v51;
        v52 = *(a2 + 25);
        v95 = *(a2 + 24);
        v96 = v52;
      }

      v60 = 1.0;
      v61 = 1.0;
      if (*(a2 + 168) == 1)
      {
        v62 = *(a2 + 60);
        v63 = re::AudioSourceState::playbackHostConnectionIdentifier(a2);
        if (*(a2 + 23))
        {
          v64 = *(a2 + 24);
        }

        else
        {
          v64 = a2 + 185;
        }

        std::string::basic_string[abi:ne200100]<0>(v90, v64);
        v65 = re::AudioManager::mixGroupState(this, v62, v63, v90);
        if (v93 < 0)
        {
          operator delete(*v90);
        }

        if (v65)
        {
          v61 = *(v65 + 1);
        }
      }

      v66 = v27 ^ 1;
      if (v25)
      {
        v66 = 1;
      }

      if ((v66 & 1) == 0)
      {
        v60 = *&this[41].i32[1];
      }

      *v87 = a2 + 480;
      v67 = std::__hash_table<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&this[8], a2 + 60);
      v68 = 1.0;
      v69 = 50.0;
      if (v25 != 1 && v67[4] != -1)
      {
        v70 = *(a2 + 28);
        v71 = v70 + (log10f(v60) * 20.0);
        if (v71 > 20.0)
        {
          v71 = 20.0;
        }

        v72 = __exp10f(v71 / 20.0);
        v73 = (v72 * v72) / ((v72 * v72) + 1.0);
        v68 = 1.0 / sqrtf(1.0 - v73);
        v69 = v73 * 100.0;
      }

      if (v25 != 1)
      {
        v68 = v68 / v60;
      }

      *(&v97 + 1) = log10f((v61 * *(a2 + 40)) * v68) * 20.0;
      *(&v97 + 2) = v69;
      BYTE12(v97) = *(a2 + 312);
      re::AudioManager::storePendingStateForSTSLabel(this, *(a2 + 102), buf);
      goto LABEL_102;
    }

    v28 = *re::audioLogObjects(ShouldConfigureTuningForSTSLabels);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a2 + 102);
      *v90 = 138412546;
      *&v90[4] = v29;
      v91 = 1024;
      LODWORD(v92) = v25;
      _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEFAULT, "[RE/STS] STSLabel %@ changed input mode to %d", v90, 0x12u);
    }

    if (!v27 || (v30 = *(a2 + 102)) == 0 || !*&this[14] || (v31 = REAudioShouldConfigureTuningForSTSLabels(), !v31))
    {
LABEL_72:
      if ((*(a2 + 825) & 1) == 0)
      {
        *(a2 + 825) = 1;
      }

      *(a2 + 826) = v25;
      goto LABEL_75;
    }

    v32 = *re::audioLogObjects(v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *v90 = 138412546;
      *&v90[4] = v30;
      v91 = 1024;
      LODWORD(v92) = v25;
      _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEFAULT, "[RE/STS] updating distance attenuation model for STS label %@ based on input mode %d", v90, 0x12u);
    }

    *v87 = 0x447A00003F800000;
    v88 = 1114636288;
    *bytes = 2;
    if (!v25)
    {
      v88 = 1114636288;
      *bytes = 1;
      v33 = *&this[41].i32[1] * 1000.0;
      *v87 = this[41].i32[1];
      *&v87[4] = v33;
    }

    HexCFStringForInt = re::AudioManager::getHexCFStringForInt(this, 3013);
    allocator = *MEMORY[0x1E695E480];
    cf = CFDataCreate(*MEMORY[0x1E695E480], bytes, 4);
    v34 = this[14];
    VTable = CMBaseObjectGetVTable();
    v37 = *(VTable + 16);
    v36 = (VTable + 16);
    v38 = *(v37 + 24);
    if (v38)
    {
      v36 = v38(*&v34, v30, HexCFStringForInt, cf);
      v78 = v36;
      if (!v36)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v78 = -12782;
    }

    v44 = *re::audioLogObjects(v36);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *v90 = 138412546;
      *&v90[4] = v30;
      v91 = 1024;
      LODWORD(v92) = v78;
      _os_log_error_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_ERROR, "[RE/STS] FigSTSSetPropertyByLabel for label %@ attenuation curve error=%d", v90, 0x12u);
    }

LABEL_65:
    CFRelease(cf);
    v79 = re::AudioManager::getHexCFStringForInt(this, 3010);
    cfa = CFDataCreate(allocator, v87, 12);
    v45 = this[14];
    v46 = CMBaseObjectGetVTable();
    v48 = *(v46 + 16);
    v47 = (v46 + 16);
    v49 = *(v48 + 24);
    if (v49)
    {
      v47 = v49(*&v45, v30, v79, cfa);
      allocatora = v47;
      if (!v47)
      {
LABEL_71:
        CFRelease(cfa);
        goto LABEL_72;
      }
    }

    else
    {
      allocatora = -12782;
    }

    v50 = *re::audioLogObjects(v47);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      *v90 = 138412546;
      *&v90[4] = v30;
      v91 = 1024;
      LODWORD(v92) = allocatora;
      _os_log_error_impl(&dword_1E1C61000, v50, OS_LOG_TYPE_ERROR, "[RE/STS] FigSTSSetPropertyByLabel for label %@ distance params error=%d", v90, 0x12u);
    }

    goto LABEL_71;
  }
}

uint64_t *re::AudioManager::mixGroupState(uint64_t a1, unint64_t a2, unint64_t a3, const void **a4)
{
  v18 = a3;
  v19 = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>((a1 + 64), &v19);
  if (result)
  {
    v7 = result;
    v20 = &v18;
    v8 = std::__hash_table<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(result + 7, a3);
    v9 = std::__string_hash<char>::operator()[abi:ne200100]((v8 + 3), a4);
    v10 = v8[4];
    if (!*&v10)
    {
      goto LABEL_19;
    }

    v11 = v9;
    v12 = vcnt_s8(v10);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v14 = v9;
      if (v9 >= *&v10)
      {
        v14 = v9 % *&v10;
      }
    }

    else
    {
      v14 = (*&v10 - 1) & v9;
    }

    v15 = *(v8[3] + 8 * v14);
    if (v15)
    {
      for (i = *v15; i; i = *i)
      {
        v17 = i[1];
        if (v17 == v11)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100]((v8 + 3), i + 2, a4))
          {
            break;
          }
        }

        else
        {
          if (v13 > 1)
          {
            if (v17 >= *&v10)
            {
              v17 %= *&v10;
            }
          }

          else
          {
            v17 &= *&v10 - 1;
          }

          if (v17 != v14)
          {
            goto LABEL_19;
          }
        }
      }
    }

    else
    {
LABEL_19:
      i = 0;
    }

    v20 = &v18;
    std::__hash_table<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v7 + 7, v18);
    if (i)
    {
      return (i + 5);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

float re::AudioManager::mixGroupSignalPresent(uint64_t a1, unint64_t a2, unint64_t a3, const void **a4)
{
  v20 = a3;
  v21 = a2;
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>((a1 + 64), &v21);
  v7 = 0.0;
  if (v6)
  {
    v8 = v6;
    v22 = &v20;
    v9 = std::__hash_table<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v6 + 7, a3);
    v10 = std::__string_hash<char>::operator()[abi:ne200100]((v9 + 8), a4);
    v11 = v9[9];
    if (!*&v11)
    {
      goto LABEL_19;
    }

    v12 = v10;
    v13 = vcnt_s8(v11);
    v13.i16[0] = vaddlv_u8(v13);
    v14 = v13.u32[0];
    if (v13.u32[0] > 1uLL)
    {
      v15 = v10;
      if (v10 >= *&v11)
      {
        v15 = v10 % *&v11;
      }
    }

    else
    {
      v15 = (*&v11 - 1) & v10;
    }

    v16 = *(v9[8] + 8 * v15);
    if (v16)
    {
      for (i = *v16; i; i = *i)
      {
        v18 = i[1];
        if (v18 == v12)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100]((v9 + 8), i + 2, a4))
          {
            break;
          }
        }

        else
        {
          if (v14 > 1)
          {
            if (v18 >= *&v11)
            {
              v18 %= *&v11;
            }
          }

          else
          {
            v18 &= *&v11 - 1;
          }

          if (v18 != v15)
          {
            goto LABEL_19;
          }
        }
      }
    }

    else
    {
LABEL_19:
      i = 0;
    }

    v22 = &v20;
    std::__hash_table<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v8 + 7, v20);
    if (i)
    {
      return *(i + 10);
    }
  }

  return v7;
}

unint64_t *re::AudioManager::createListenerInScene(uint64_t a1, unint64_t a2)
{
  v5 = a2;
  for (__buf = 0; __buf < 0x3E8; v3 = __buf)
  {
    arc4random_buf(&__buf, 8uLL);
  }

  __buf = &v5;
  std::__hash_table<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 64), &v5)[3] = v3;
  return v3;
}

uint64_t re::AudioManager::removeListenerFromScene(uint64_t this, uint64_t a2)
{
  for (i = *(this + 80); i; i = *i)
  {
    if (i[3] == a2)
    {
      i[3] = 0;
    }
  }

  return this;
}

simd_float4 *re::AudioManager::setListenerTransformAndLevel(simd_float4 *this, unint64_t a2, const simd_float4x4 *a3, float a4, uint64_t a5)
{
  if (this[6].i8[8] == 1)
  {
    v5 = a3->columns[0];
    v8 = a3->columns[1];
    v6 = a3->columns[2];
    v9 = a3->columns[3];
    v7 = this[16].i8[0];
    this[11].i64[0] = a5;
    this[11].i64[1] = 0;
    this[12] = v5;
    this[13] = v8;
    this[14] = v6;
    this[15] = v9;
    if ((v7 & 1) == 0)
    {
      this[16].i8[0] = 1;
    }
  }

  return this;
}

void *re::AudioManager::sceneContainsSystemListener(re::AudioManager *this, unint64_t a2)
{
  v6 = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(this + 8, &v6);
  if (result)
  {
    v4 = *(this + 39);
    return (result[3] == v4 && v4 != 0);
  }

  return result;
}

void re::AudioManager::applyReverbParametersToScene(re::AudioManager *this, unint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v27 = a2;
  if (!*(this + 14) || *(this + 104) != 1 || !(*(*this + 1032))(this) || !REAudioShouldConfigureTuningForSTSLabels())
  {
    return;
  }

  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(this + 8, &v27);
  v4 = v3;
  if (v3)
  {
    v5 = v3[4] != -1;
  }

  else
  {
    v5 = 0;
  }

  *bytes = v5;
  HexCFStringForInt = re::AudioManager::getHexCFStringForInt(this, 1005);
  v7 = *MEMORY[0x1E695E480];
  v8 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 4);
  v9 = *(this + 14);
  v10 = *MEMORY[0x1E69AF598];
  VTable = CMBaseObjectGetVTable();
  v13 = *(VTable + 16);
  v12 = (VTable + 16);
  v14 = *(v13 + 24);
  if (v14)
  {
    v12 = v14(v9, v10, HexCFStringForInt, v8);
    v15 = v12;
    if (!v12)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v15 = -12782;
  }

  v16 = *re::audioLogObjects(v12);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v29 = v15;
    _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "[RE/STS] FigSTSSetPropertyByLabel reverb enabled error=%d", buf, 8u);
  }

LABEL_14:
  CFRelease(v8);
  if (*bytes && v4[4] != -1)
  {
    v25 = v4[4];
    v17 = CFDataCreate(v7, &v25, 4);
    v18 = *(this + 14);
    v19 = CMBaseObjectGetVTable();
    v21 = *(v19 + 16);
    v20 = (v19 + 16);
    v22 = *(v21 + 24);
    if (v22)
    {
      v20 = v22(v18, v10, @"ReverbRoomType", v17);
      v23 = v20;
      if (!v20)
      {
LABEL_22:
        CFRelease(v17);
        return;
      }
    }

    else
    {
      v23 = -12782;
    }

    v24 = *re::audioLogObjects(v20);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v29 = v23;
      _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, "[RE/STS] FigSTSSetPropertyByLabel kSTSLabelProperty_ReverbRoomType error=%d", buf, 8u);
    }

    goto LABEL_22;
  }
}

uint64_t re::AudioManager::getHexCFStringForInt(re::AudioManager *this, uint64_t a2)
{
  v2 = a2;
  v12 = a2;
  v4 = *(this + 17);
  if (v4)
  {
    v5 = vcnt_s8(v4);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = a2;
      if (v4 <= a2)
      {
        v6 = a2 % v4;
      }
    }

    else
    {
      v6 = (v4 - 1) & a2;
    }

    v7 = *(*(this + 16) + 8 * v6);
    if (v7)
    {
      for (i = *v7; i; i = *i)
      {
        v9 = i[1];
        if (v9 == a2)
        {
          if (*(i + 4) == a2)
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (v5.u32[0] > 1uLL)
          {
            if (v9 >= v4)
            {
              v9 %= v4;
            }
          }

          else
          {
            v9 &= v4 - 1;
          }

          if (v9 != v6)
          {
            break;
          }
        }
      }
    }
  }

  v10 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%x", a2);
  v13 = &v12;
  std::__hash_table<std::__hash_value_type<unsigned int,__CFString const*>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CFString const*>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CFString const*>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CFString const*>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 16, v2)[3] = v10;
  v2 = v12;
LABEL_18:
  v13 = &v12;
  return std::__hash_table<std::__hash_value_type<unsigned int,__CFString const*>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CFString const*>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CFString const*>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CFString const*>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 16, v2)[3];
}

void *re::AudioManager::setSceneReverbPreset(void *a1, unint64_t a2, uint64_t a3, int a4)
{
  v10 = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(a1 + 8, &v10);
  if (!result || (result[4] == a3 ? (v8 = *(result + 40) == a4) : (v8 = 0), !v8))
  {
    v9 = v10;
    v11 = &v10;
    std::__hash_table<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 8, &v10)[6] = v9;
    v11 = &v10;
    std::__hash_table<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 8, &v10)[4] = a3;
    v11 = &v10;
    *(std::__hash_table<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 8, &v10) + 40) = a4;
    return (*(*a1 + 1024))(a1, v10);
  }

  return result;
}

uint64_t re::AudioManager::getSceneReverbPreset(int8x8_t *this, unint64_t a2)
{
  v2 = this[9];
  if (v2)
  {
    v3 = vcnt_s8(v2);
    v3.i16[0] = vaddlv_u8(v3);
    if (v3.u32[0] > 1uLL)
    {
      v4 = a2;
      if (*&v2 <= a2)
      {
        v4 = a2 % *&v2;
      }
    }

    else
    {
      v4 = (*&v2 - 1) & a2;
    }

    v5 = *(*&this[8] + 8 * v4);
    if (v5)
    {
      for (i = *v5; i; i = *i)
      {
        v7 = i[1];
        if (v7 == a2)
        {
          if (i[2] == a2)
          {
            return i[4];
          }
        }

        else
        {
          if (v3.u32[0] > 1uLL)
          {
            if (v7 >= *&v2)
            {
              v7 %= *&v2;
            }
          }

          else
          {
            v7 &= *&v2 - 1;
          }

          if (v7 != v4)
          {
            return -1;
          }
        }
      }
    }
  }

  return -1;
}

void re::AudioManager::removeSourceFromSceneIfIncorrectlyConnected(re::AudioManager *this, const re::AudioSourceState *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a2 + 60) == -1)
  {
    v4 = *(a2 + 102);
    if (v4)
    {
      v5 = *(this + 10);
      if (v5)
      {
        do
        {
          v6 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(this + 8, v5 + 2);
          if (v6)
          {
            v7 = v6[12];
            if (v7)
            {
              v8 = v7;
              v9 = *(a2 + 102);
              v10 = [v8 objectForKey:v9];
              if ([v10 intValue] < 2)
              {
                [v8 removeObjectForKey:v9];
                v12 = *re::audioLogObjects([*(this + 15) cleanupLabel:*(a2 + 102)]);
                if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
                {
                  v13 = *(a2 + 89);
                  *buf = 138412546;
                  v16 = v9;
                  v17 = 2048;
                  v18 = v13;
                  _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "[RE/STS] AudioManager is no longer tracking STSLabel %@ after removing last token %llu", buf, 0x16u);
                }

                for (i = *(this + 36); i; i = std::__hash_table<std::__hash_value_type<__CFString const*,re::AudioManager::RESTSPerLabelState>,std::__unordered_map_hasher<__CFString const*,std::__hash_value_type<__CFString const*,re::AudioManager::RESTSPerLabelState>,re::AudioManager::CFStringHash,re::AudioManager::CFStringEqual,true>,std::__unordered_map_equal<__CFString const*,std::__hash_value_type<__CFString const*,re::AudioManager::RESTSPerLabelState>,re::AudioManager::CFStringEqual,re::AudioManager::CFStringHash,true>,std::allocator<std::__hash_value_type<__CFString const*,re::AudioManager::RESTSPerLabelState>>>::erase(this + 34, i))
                {
                  while (CFStringCompare(*(i + 16), *(a2 + 102), 0))
                  {
                    i = *i;
                    if (!i)
                    {
                      goto LABEL_15;
                    }
                  }

                  CFRelease(*(i + 16));
                }
              }

              else
              {
                v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "intValue") - 1}];
                [v8 setValue:v11 forKey:v9];
              }

LABEL_15:
            }
          }

          v5 = *v5;
        }

        while (v5);
        v4 = *(a2 + 102);
      }

      CFRelease(v4);
      *(a2 + 102) = 0;
      *(a2 + 824) = 0;
    }
  }
}

void re::AudioManager::addTrackedCALayerEntityId(re::AudioManager *this, unint64_t a2, CFStringRef theString)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*(this + 104) != 1)
  {
    return;
  }

  if (!theString)
  {
    v9 = *re::audioLogObjects(this);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v29 = 134217984;
    v30 = a2;
    v10 = "[RE/STS] AudioManager has been requested to track an entity but no STS label has been provided - entityId=%llu will not be tracked.";
    goto LABEL_23;
  }

  Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], theString);
  if (!Copy)
  {
    v9 = *re::audioLogObjects(0);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v29 = 134217984;
    v30 = a2;
    v10 = "[RE/STS] failed to copy tracked CALayer's label, entityId=%llu will not be tracked";
LABEL_23:
    _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, v10, &v29, 0xCu);
    return;
  }

  v6 = Copy;
  v7 = *(this + 65);
  v8 = *(this + 66);
  if (v7 != v8)
  {
    while (*v7 != a2)
    {
      if (++v7 == v8)
      {
        goto LABEL_18;
      }
    }
  }

  if (v7 != v8)
  {
    v11 = *re::audioLogObjects(Copy);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v28 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(this + 60, *v7)[3];
      v29 = 134218498;
      v30 = a2;
      v31 = 2112;
      v32 = v28;
      v33 = 2112;
      v34 = v6;
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "[RE/STS] AudioManager is overriding STS label for entityId=%llu. Was previously %@, is now %@.", &v29, 0x20u);
    }

    v12 = *v7;
    if (std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(this + 60, *v7)[3])
    {
      [*(this + 15) cleanupLabel:?];
      v13 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(this + 60, *v7);
      CFRelease(v13[3]);
      v12 = *v7;
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,RESoundEventPreparingData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,RESoundEventPreparingData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,RESoundEventPreparingData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,RESoundEventPreparingData>>>::__erase_unique<unsigned long long>(this + 60, v12);
    v14 = *(this + 66);
    v15 = v14 - (v7 + 1);
    if (v14 != v7 + 1)
    {
      memmove(v7, v7 + 1, v14 - (v7 + 1));
    }

    v8 = (v7 + v15);
    *(this + 66) = v7 + v15;
  }

LABEL_18:
  v16 = (this + 520);
  v17 = *(this + 488);
  if (!*&v17)
  {
    goto LABEL_38;
  }

  v18 = vcnt_s8(v17);
  v18.i16[0] = vaddlv_u8(v18);
  if (v18.u32[0] > 1uLL)
  {
    v19 = a2;
    if (*&v17 <= a2)
    {
      v19 = a2 % *&v17;
    }
  }

  else
  {
    v19 = (*&v17 - 1) & a2;
  }

  v20 = *(*(this + 60) + 8 * v19);
  if (!v20 || (v21 = *v20) == 0)
  {
LABEL_38:
    operator new();
  }

  while (1)
  {
    v22 = v21[1];
    if (v22 == a2)
    {
      break;
    }

    if (v18.u32[0] > 1uLL)
    {
      if (v22 >= *&v17)
      {
        v22 %= *&v17;
      }
    }

    else
    {
      v22 &= *&v17 - 1;
    }

    if (v22 != v19)
    {
      goto LABEL_38;
    }

LABEL_37:
    v21 = *v21;
    if (!v21)
    {
      goto LABEL_38;
    }
  }

  if (v21[2] != a2)
  {
    goto LABEL_37;
  }

  v25 = *v16;
  if (*v16 != v8)
  {
    v26 = *v16;
    while (*v26 != a2)
    {
      ++v26;
      ++v25;
      if (v26 == v8)
      {
        v25 = v8;
        break;
      }
    }
  }

  v27 = v8 - (v25 + 1);
  if (v8 != v25 + 1)
  {
    memmove(v25, v25 + 1, v8 - (v25 + 1));
  }

  *(this + 66) = v25 + v27;
  std::vector<unsigned long long>::push_back[abi:ne200100](this + 65, v21 + 2);
  v24 = *re::audioLogObjects(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 134218242;
    v30 = a2;
    v31 = 2112;
    v32 = v6;
    _os_log_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEFAULT, "[RE/STS] AudioManager is now tracking CALayer entityId=%llu with STS label %@", &v29, 0x16u);
  }
}

void re::AudioManager::removeTrackedCALayerEntityId(re::AudioManager *this, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(this + 104) == 1)
  {
    v4 = *(this + 65);
    v5 = *(this + 66);
    if (v4 != v5)
    {
      while (*v4 != a2)
      {
        if (++v4 == v5)
        {
          goto LABEL_14;
        }
      }
    }

    if (v4 == v5)
    {
LABEL_14:
      v12 = *re::audioLogObjects(this);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = 134217984;
        v14 = a2;
        _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "[RE/STS] can't remove unknown tracked CALayer entityId %llu", &v13, 0xCu);
      }
    }

    else
    {
      v6 = *re::audioLogObjects(this);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(this + 60, *v4)[3];
        v13 = 134218242;
        v14 = a2;
        v15 = 2112;
        v16 = v7;
        _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "[RE/STS] no longer tracking CALayer entityId %llu with label %@", &v13, 0x16u);
      }

      v8 = *v4;
      if (std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(this + 60, *v4)[3])
      {
        [*(this + 15) cleanupLabel:?];
        v9 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(this + 60, *v4);
        CFRelease(v9[3]);
        v8 = *v4;
      }

      std::__hash_table<std::__hash_value_type<unsigned long long,RESoundEventPreparingData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,RESoundEventPreparingData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,RESoundEventPreparingData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,RESoundEventPreparingData>>>::__erase_unique<unsigned long long>(this + 60, v8);
      v10 = *(this + 66);
      v11 = v10 - (v4 + 1);
      if (v10 != v4 + 1)
      {
        memmove(v4, v4 + 1, v10 - (v4 + 1));
      }

      *(this + 66) = v4 + v11;
    }
  }
}

void re::AudioManager::updateTransformForTrackedCALayerEntities(int8x8_t *a1, uint64_t a2)
{
  if (a1[13].i8[0] == 1)
  {
    v19 = v2;
    v20 = v3;
    v5 = a1[65];
    v6 = a1[66];
    if (v5 != v6)
    {
      v8 = MEMORY[0x1E69E9B18];
      do
      {
        v17 = v5;
        v9 = std::__hash_table<std::__hash_value_type<unsigned long long,__CFString const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,__CFString const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,__CFString const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,__CFString const*>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&a1[60], *v5);
        *&v13[0] = *v5;
        (*(**(a2 + 32) + 16))(&v17);
        if (v17 == 1)
        {
          v15 = 0;
          v16 = 0x100000000;
          v10 = v8[1];
          v13[0] = *v8;
          v13[1] = v10;
          v11 = v8[3];
          v13[2] = v8[2];
          HIDWORD(v14) = HIDWORD(v11);
          v12 = v18;
          HIDWORD(v12) = HIDWORD(v14);
          v14 = v12;
          re::AudioManager::storePendingStateForSTSLabel(a1, v9[3], v13);
        }

        ++v5;
      }

      while (v5 != v6);
    }
  }
}

__n128 re::AudioManager::storePendingStateForSTSLabel(int8x8_t *a1, const __CFString *cf, uint64_t a3)
{
  if (cf)
  {
    CFRetain(cf);
    v6 = re::AudioManager::CFStringHash::operator()(cf);
    v7 = a1[35];
    if (v7)
    {
      v8 = v6;
      v9 = vcnt_s8(v7);
      v9.i16[0] = vaddlv_u8(v9);
      v10 = v9.u32[0];
      if (v9.u32[0] > 1uLL)
      {
        v11 = v6;
        if (v6 >= *&v7)
        {
          v11 = v6 % *&v7;
        }
      }

      else
      {
        v11 = (*&v7 - 1) & v6;
      }

      v15 = *(*&a1[34] + 8 * v11);
      if (v15)
      {
        for (i = *v15; i; i = *i)
        {
          v17 = *(i + 8);
          if (v17 == v8)
          {
            if (re::AudioManager::CFStringEqual::operator()(*(i + 16), cf))
            {
              CFRelease(*(i + 16));
              std::__hash_table<std::__hash_value_type<__CFString const*,re::AudioManager::RESTSPerLabelState>,std::__unordered_map_hasher<__CFString const*,std::__hash_value_type<__CFString const*,re::AudioManager::RESTSPerLabelState>,re::AudioManager::CFStringHash,re::AudioManager::CFStringEqual,true>,std::__unordered_map_equal<__CFString const*,std::__hash_value_type<__CFString const*,re::AudioManager::RESTSPerLabelState>,re::AudioManager::CFStringEqual,re::AudioManager::CFStringHash,true>,std::allocator<std::__hash_value_type<__CFString const*,re::AudioManager::RESTSPerLabelState>>>::erase(&a1[34], i);
              break;
            }
          }

          else
          {
            if (v10 > 1)
            {
              if (v17 >= *&v7)
              {
                v17 %= *&v7;
              }
            }

            else
            {
              v17 &= *&v7 - 1;
            }

            if (v17 != v11)
            {
              break;
            }
          }
        }
      }
    }

    v19 = re::AudioManager::CFStringHash::operator()(cf);
    v20 = v19;
    v21 = a1[35];
    if (!*&v21)
    {
      goto LABEL_42;
    }

    v22 = vcnt_s8(v21);
    v22.i16[0] = vaddlv_u8(v22);
    v23 = v22.u32[0];
    if (v22.u32[0] > 1uLL)
    {
      v24 = v19;
      if (v19 >= *&v21)
      {
        v24 = v19 % *&v21;
      }
    }

    else
    {
      v24 = (*&v21 - 1) & v19;
    }

    v25 = *(*&a1[34] + 8 * v24);
    if (!v25 || (v26 = *v25) == 0)
    {
LABEL_42:
      operator new();
    }

    while (1)
    {
      v27 = v26[1];
      if (v27 == v20)
      {
        if (re::AudioManager::CFStringEqual::operator()(v26[2], cf))
        {
          *(v26 + 2) = *a3;
          result = *(a3 + 16);
          v28 = *(a3 + 32);
          v29 = *(a3 + 64);
          *(v26 + 5) = *(a3 + 48);
          *(v26 + 6) = v29;
          *(v26 + 3) = result;
          *(v26 + 4) = v28;
          return result;
        }
      }

      else
      {
        if (v23 > 1)
        {
          if (v27 >= *&v21)
          {
            v27 %= *&v21;
          }
        }

        else
        {
          v27 &= *&v21 - 1;
        }

        if (v27 != v24)
        {
          goto LABEL_42;
        }
      }

      v26 = *v26;
      if (!v26)
      {
        goto LABEL_42;
      }
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "null_label");
  v12 = re::audio::throttledLog(OS_LOG_TYPE_ERROR, __p);
  v14 = v12;
  if (v31 < 0)
  {
    operator delete(__p[0]);
    if (!v14)
    {
      return result;
    }
  }

  else if (!v12)
  {
    return result;
  }

  v18 = *re::audioLogObjects(v12);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p[0]) = 0;
    _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "[RE/STS] AudioManager storePendingStateForSTSLabel given null label", __p, 2u);
  }

  return result;
}

void sub_1E21525B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t re::AudioManager::enumerateTrackedCALayerEntities(uint64_t result, uint64_t a2)
{
  if (*(result + 104) == 1)
  {
    v2 = result;
    v3 = *(result + 520);
    for (i = *(result + 528); v3 != i; ++v3)
    {
      v6 = v2[61];
      if (!*&v6)
      {
        goto LABEL_22;
      }

      v7 = *v3;
      v8 = vcnt_s8(v6);
      v8.i16[0] = vaddlv_u8(v8);
      if (v8.u32[0] > 1uLL)
      {
        v9 = *v3;
        if (*&v6 <= v7)
        {
          v9 = v7 % *&v6;
        }
      }

      else
      {
        v9 = (*&v6 - 1) & v7;
      }

      v10 = *(*&v2[60] + 8 * v9);
      if (!v10 || (v11 = *v10) == 0)
      {
LABEL_22:
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      while (1)
      {
        v12 = v11[1];
        if (v12 == v7)
        {
          break;
        }

        if (v8.u32[0] > 1uLL)
        {
          if (v12 >= *&v6)
          {
            v12 %= *&v6;
          }
        }

        else
        {
          v12 &= *&v6 - 1;
        }

        if (v12 != v9)
        {
          goto LABEL_22;
        }

LABEL_18:
        v11 = *v11;
        if (!v11)
        {
          goto LABEL_22;
        }
      }

      if (v11[2] != v7)
      {
        goto LABEL_18;
      }

      v13 = *v3;
      result = (*(**(a2 + 32) + 16))(*(a2 + 32), &v13);
    }
  }

  return result;
}

CFHashCode re::AudioManager::CFStringHash::operator()(const void *a1)
{
  if (!a1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "null_hash_key");
    v2 = re::audio::throttledLog(OS_LOG_TYPE_FAULT, __p);
    v3 = v2;
    if (v6 < 0)
    {
      operator delete(__p[0]);
      if (!v3)
      {
        return 0;
      }
    }

    else if (!v2)
    {
      return 0;
    }

    v4 = *re::audioLogObjects(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_fault_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_FAULT, "[RE/STS] hash key is null", __p, 2u);
    }

    return 0;
  }

  return CFHash(a1);
}

void sub_1E21527EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL re::AudioManager::CFStringEqual::operator()(const __CFString *a1, const __CFString *a2)
{
  if (!(a1 | a2))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "null_equal_keys");
    v2 = re::audio::throttledLog(OS_LOG_TYPE_FAULT, __p);
    v3 = v2;
    if (v10 < 0)
    {
      operator delete(__p[0]);
      if (!v3)
      {
        return 1;
      }
    }

    else if (!v2)
    {
      return 1;
    }

    v7 = *re::audioLogObjects(v2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_fault_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_FAULT, "[RE/STS] equal keys are null", __p, 2u);
    }

    return 1;
  }

  if (a1 && a2)
  {
    return CFStringCompare(a1, a2, 0) == kCFCompareEqualTo;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "null_equal_key");
  v5 = re::audio::throttledLog(OS_LOG_TYPE_FAULT, __p);
  v6 = v5;
  if (v10 < 0)
  {
    operator delete(__p[0]);
    if (!v6)
    {
      return 0;
    }
  }

  else if (!v5)
  {
    return 0;
  }

  v8 = *re::audioLogObjects(v5);
  result = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT);
  if (!result)
  {
    return result;
  }

  LOWORD(__p[0]) = 0;
  _os_log_fault_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_FAULT, "[RE/STS] one equal key is null", __p, 2u);
  return 0;
}

void sub_1E2152958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void re::AudioManager::setSTSControl(re::AudioManager *this, int a2)
{
  *(this + 104) = a2;
  if ((((*(this + 14) == 0) ^ a2) & 1) == 0)
  {
    re::AudioManager::configureSTS(this);
  }
}

void re::AudioManager::setSTSObjects(uint64_t a1, const void *a2, void *a3)
{
  v7 = a3;
  v6 = *(a1 + 112);
  if (v6)
  {
    CFRelease(v6);
  }

  *(a1 + 112) = CFRetain(a2);
  objc_storeStrong((a1 + 120), a3);
  (*(*a1 + 552))(a1, 1);
}

void re::AudioManager::setSystemListenerID(re::AudioManager *this, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(this + 39) != a2)
  {
    v4 = *re::audioLogObjects(this);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(this + 39);
      v7 = 134218240;
      v8 = v5;
      v9 = 2048;
      v10 = a2;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_INFO, "Changing RE's system listener ID from %llu to %llu", &v7, 0x16u);
    }

    *(this + 39) = a2;
    for (i = *(this + 10); i; i = *i)
    {
      if (i[3] == a2)
      {
        (*(*this + 1024))(this, i[2]);
      }
    }
  }
}

void ___ZN2re12AudioManager18configureSTSRemoteEv_block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) audioService];
  if (!v2 || (v3 = v2, v2 = [*(a1 + 32) isCancelled], v2))
  {
    v4 = *re::audioLogObjects(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Engine cancelled, failed to configure STS Controller.", &buf, 2u);
    }

    return;
  }

  v5 = *re::audioLogObjects(v2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "[RE/STS] Creating FigSTS object asynchronously in remote queue.", &buf, 2u);
  }

  v6 = *MEMORY[0x1E695E480];
  v7 = FigSTSCreateRemote();
  v8 = v7;
  if (v7)
  {
    v9 = *re::audioLogObjects(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v8;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "[RE/STS] Failed to create FigSTS object error=%d", &buf, 8u);
    }

    v19 = 0;
    goto LABEL_24;
  }

  v29 = 0;
  v19 = [objc_alloc(MEMORY[0x1E695A890]) initWithSTSObject:0 error:&v29];
  v10 = v29;
  v11 = v10;
  if (!v19)
  {
    v20 = *re::audioLogObjects(v10);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v11;
      _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "[RE/STS] Failed to create STSController object: %@", &buf, 0xCu);
    }

    goto LABEL_23;
  }

  if (REAudioShouldConfigureTuningForSTSLabels())
  {
    *bytes = 1;
    HexCFStringForInt = re::AudioManager::getHexCFStringForInt(v3, 3109);
    v13 = CFDataCreate(v6, bytes, 4);
    VTable = CMBaseObjectGetVTable();
    v16 = *(VTable + 16);
    v15 = (VTable + 16);
    v17 = *(v16 + 24);
    if (v17)
    {
      v15 = v17(0, *MEMORY[0x1E69AF598], HexCFStringForInt, v13);
      v18 = v15;
      if (!v15)
      {
LABEL_21:
        CFRelease(v13);
        goto LABEL_22;
      }
    }

    else
    {
      v18 = -12782;
    }

    v21 = *re::audioLogObjects(v15);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v18;
      _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "[RE/STS] FigSTSSetPropertyByLabel propagation delay enabled error=%d", &buf, 8u);
    }

    goto LABEL_21;
  }

LABEL_22:
  v22 = v19;
LABEL_23:

LABEL_24:
  v23 = *re::audioLogObjects(0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_DEFAULT, "[RE/STS] Succesfully configured STS Controller asynchronously in remote queue.", &buf, 2u);
  }

  v24 = *(v3 + 1);
  if (v24)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3321888768;
    v31 = ___ZZN2re12AudioManager18configureSTSRemoteEvENK3__0clEv_block_invoke;
    v32 = &__block_descriptor_56_ea8_32c64_ZTSKZZN2re12AudioManager18configureSTSRemoteEvENK3__0clEvEUlvE__e5_v8__0l;
    v25 = *(a1 + 32);
    v26 = v19;
    v33 = v25;
    v34 = 0;
    v35 = v26;
    v27 = v25;
    dispatch_async(v24, &buf);
  }
}

id __copy_helper_block_ea8_32c51_ZTSKZN2re12AudioManager18configureSTSRemoteEvE3__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void re::AudioManager::createAudioGroupIfNecessary(os_unfair_lock_s *this, unint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v26 = a2;
  os_unfair_lock_lock(this + 14);
  if (std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(&this[4]._os_unfair_lock_opaque, &v26))
  {
    goto LABEL_31;
  }

  v21 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 1065353216;
  v25 = a4;
  v7 = *&this[6]._os_unfair_lock_opaque;
  if (!*&v7)
  {
    goto LABEL_19;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v26;
    if (*&v7 <= v26)
    {
      v9 = v26 % *&v7;
    }
  }

  else
  {
    v9 = (*&v7 - 1) & v26;
  }

  v10 = *(*&this[4]._os_unfair_lock_opaque + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v26)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_19;
    }

LABEL_18:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  if (v11[2] != v26)
  {
    goto LABEL_18;
  }

  *(v11 + 12) = v21;
  if (v11 + 3 != &v21)
  {
    *(v11 + 16) = v24;
    v13 = v23;
    v14 = v11[5];
    if (!v14)
    {
      goto LABEL_27;
    }

    for (i = 0; i != v14; ++i)
    {
      *(v11[4] + 8 * i) = 0;
    }

    v16 = v11[6];
    v11[6] = 0;
    v11[7] = 0;
    if (v16)
    {
      while (v13)
      {
        v17 = v13[2];
        v16[2] = v17;
        v18 = *v16;
        v16[1] = v17;
        inserted = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::__node_insert_multi_prepare((v11 + 4), v17, v16 + 2);
        std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>>>::__node_insert_multi_perform(v11 + 4, v16, inserted);
        v13 = *v13;
        v16 = v18;
        if (!v18)
        {
          goto LABEL_27;
        }
      }

      do
      {
        v20 = *v16;
        operator delete(v16);
        v16 = v20;
      }

      while (v20);
    }

    else
    {
LABEL_27:
      if (v13)
      {
        operator new();
      }
    }
  }

  v11[9] = v25;
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(&v22);
LABEL_31:
  os_unfair_lock_unlock(this + 14);
}

void sub_1E2153648(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(v2 + 8);
  os_unfair_lock_unlock(v1 + 14);
  _Unwind_Resume(a1);
}

void re::AudioManager::addPlaybackTokenToAudioGroup(os_unfair_lock_s *this, unint64_t a2, unint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a2;
  os_unfair_lock_lock(this + 14);
  v5 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(&this[4]._os_unfair_lock_opaque, &v8);
  if (v5)
  {
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(v5 + 4, &v7);
  }

  else
  {
    v6 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v10 = a3;
      v11 = 2048;
      v12 = v8;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "[AudioService] [addPlaybackTokenToAudioGroup] Cannot add token: %llu to unknown group: %llu", buf, 0x16u);
    }
  }

  os_unfair_lock_unlock(this + 14);
}

void re::AudioManager::getAudioGroupsPendingRemoval(os_unfair_lock_s *this@<X0>, void *a2@<X8>)
{
  os_unfair_lock_lock(this + 14);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *&this[136]._os_unfair_lock_opaque;
  v5 = *&this[138]._os_unfair_lock_opaque;
  if (v5 != v4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](a2, (v5 - v4) >> 3);
  }

  *&this[138]._os_unfair_lock_opaque = v4;

  os_unfair_lock_unlock(this + 14);
}

void sub_1E2153828(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  os_unfair_lock_unlock(v1 + 14);
  _Unwind_Resume(a1);
}

void re::AudioManager::prepareCompletedAudioGroups(re::AudioManager *this)
{
  os_unfair_lock_lock(this + 14);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v2 = *(this + 4);
  if (v2)
  {
    do
    {
      if (v2[7] == *(v2 + 24) && (*(v2 + 25) & 1) == 0)
      {
        memset(v8, 0, sizeof(v8));
        v9 = *(v2 + 16);
        std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::__rehash<true>(v8, v2[5]);
        for (i = v2[6]; i; i = *i)
        {
          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(v8, i + 2);
        }

        v4 = (*(*this + 200))(this, v8, v2[2], v2[9]);
        std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(v8);
        if (v4 == 2)
        {
          std::vector<unsigned long long>::push_back[abi:ne200100](&v10, v2 + 2);
        }

        else if (!v4)
        {
          *(v2 + 25) = 1;
        }
      }

      v2 = *v2;
    }

    while (v2);
    v5 = v10;
    v6 = v11;
    if (v10 != v11)
    {
      do
      {
        v7 = *v5;
        std::__hash_table<std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::audio::AudioGroup>>>::__erase_unique<unsigned long long>(this + 2, &v7);
        std::vector<unsigned long long>::push_back[abi:ne200100](this + 68, &v7);
        ++v5;
      }

      while (v5 != v6);
      v5 = v10;
    }

    if (v5)
    {
      v11 = v5;
      operator delete(v5);
    }
  }

  os_unfair_lock_unlock(this + 14);
}

void sub_1E21539A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  os_unfair_lock_unlock(v17 + 14);
  _Unwind_Resume(a1);
}

void std::vector<unsigned long long>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<PHASESource * {__strong}>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void re::AudioManager::removeAudioGroup(re::AudioManager *this, unint64_t a2)
{
  v3 = a2;
  os_unfair_lock_lock(this + 14);
  if (std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(this + 2, &v3))
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::audio::AudioGroup>>>::__erase_unique<unsigned long long>(this + 2, &v3);
    std::vector<unsigned long long>::push_back[abi:ne200100](this + 68, &v3);
  }

  os_unfair_lock_unlock(this + 14);
}

void re::AudioManager::clearAudioGroups(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 14);
  if (*&this[10]._os_unfair_lock_opaque)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::audio::AudioGroup>>>::__deallocate_node(*&this[8]._os_unfair_lock_opaque);
    *&this[8]._os_unfair_lock_opaque = 0;
    v2 = *&this[6]._os_unfair_lock_opaque;
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*&this[4]._os_unfair_lock_opaque + 8 * i) = 0;
      }
    }

    *&this[10]._os_unfair_lock_opaque = 0;
  }

  os_unfair_lock_unlock(this + 14);
}

uint64_t re::InsertionOrderedMap<unsigned long long,__CFString const*,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::~InsertionOrderedMap(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  return std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,true>,std::__unordered_map_equal<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,true>,std::allocator<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,true>,std::__unordered_map_equal<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,true>,std::allocator<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,true>,std::__unordered_map_equal<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,true>,std::allocator<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::audio::AudioGroup>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::audio::AudioGroup>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::audio::AudioGroup>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table((v1 + 4));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void ___ZZN2re12AudioManager18configureSTSRemoteEvENK3__0clEv_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) audioService];
  if (v2 && (v3 = v2, v2 = [*(a1 + 32) isCancelled], !v2))
  {
    if (*(a1 + 40) && *(a1 + 48))
    {
      v6 = *re::audioLogObjects(v2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "[RE/STS] Successfully configured STS Controller.", v10, 2u);
      }

      v7 = *(a1 + 48);
      *(v3 + 14) = *(a1 + 40);
      objc_storeStrong(v3 + 15, v7);
      *(v3 + 576) = 0;
      for (i = *(v3 + 10); i; i = *i)
      {
        (*(*v3 + 1024))(v3, i[2]);
      }
    }

    else
    {
      v9 = *(v3 + 15);
      *(v3 + 14) = 0;
      *(v3 + 15) = 0;
    }
  }

  else
  {
    v4 = *re::audioLogObjects(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Engine cancelled, failed to configure STS Controller.", buf, 2u);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      CFRelease(v5);
    }
  }
}

id __copy_helper_block_ea8_32c64_ZTSKZZN2re12AudioManager18configureSTSRemoteEvENK3__0clEvEUlvE_(void *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  a1[4] = v4;
  a1[5] = v5;
  result = v6;
  a1[6] = result;
  return result;
}

void __destroy_helper_block_ea8_32c64_ZTSKZZN2re12AudioManager18configureSTSRemoteEvENK3__0clEvEUlvE_(uint64_t a1)
{
  v2 = *(a1 + 32);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>>>::~__hash_table((v2 + 7));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table((v2 + 8));
      std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

id **std::unique_ptr<re::AudioManager::PrivateData>::reset[abi:ne200100](id **result, id *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    JUMPOUT(0x1E6906520);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,__CFString const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,__CFString const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,__CFString const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,__CFString const*>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1E21548C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>>>::~__hash_table(v2 + 56);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,re::AudioManager::AudioScene::PerConnectionState>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(__p + 64);
    std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(__p + 24);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<__CFString const*,re::AudioManager::RESTSPerLabelState>,std::__unordered_map_hasher<__CFString const*,std::__hash_value_type<__CFString const*,re::AudioManager::RESTSPerLabelState>,re::AudioManager::CFStringHash,re::AudioManager::CFStringEqual,true>,std::__unordered_map_equal<__CFString const*,std::__hash_value_type<__CFString const*,re::AudioManager::RESTSPerLabelState>,re::AudioManager::CFStringEqual,re::AudioManager::CFStringHash,true>,std::allocator<std::__hash_value_type<__CFString const*,re::AudioManager::RESTSPerLabelState>>>::erase(void *a1, uint64_t *__p)
{
  v2 = a1[1];
  v4 = *__p;
  v3 = __p[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v3);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != __p);
  if (v7 != a1 + 2)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    v9 = *__p;
    if (v8 == v3)
    {
LABEL_20:
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v4)
  {
    goto LABEL_19;
  }

  v10 = *(v4 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v10 >= *&v2)
    {
      v10 %= *&v2;
    }
  }

  else
  {
    v10 &= *&v2 - 1;
  }

  v9 = *__p;
  if (v10 != v3)
  {
LABEL_19:
    *(*a1 + 8 * v3) = 0;
    v9 = *__p;
    goto LABEL_20;
  }

LABEL_21:
  v11 = *(v9 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v11 >= *&v2)
    {
      v11 %= *&v2;
    }
  }

  else
  {
    v11 &= *&v2 - 1;
  }

  if (v11 != v3)
  {
    *(*a1 + 8 * v11) = v7;
    v9 = *__p;
  }

LABEL_27:
  *v7 = v9;
  *__p = 0;
  --a1[3];
  operator delete(__p);
  return v4;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,__CFString const*>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CFString const*>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CFString const*>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CFString const*>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::audio::AudioGroup>>>::__erase_unique<unsigned long long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,void *>>>>::~unique_ptr[abi:ne200100](v4);
    return 1;
  }

  return result;
}

void ___ZN2re4ecs228AudioPlayerTelemetryReporterC2Ev_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!NSClassFromString(&cfstr_Xctest.isa))
  {
    v2 = *(v1 + 200) + 1;
    *(v1 + 200) = v2;
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
    *(v1 + 128) = 0u;
    *(v1 + 144) = 0;
    *(v1 + 152) = xmmword_1E30645F0;
    *(v1 + 168) = xmmword_1E3064600;
    *(v1 + 184) = xmmword_1E3064610;
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v26 = v2;
    v3 = re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter;
    os_unfair_lock_lock((re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter + 88));
    v4 = *(v1 + 72);
    if (v4)
    {
      v5 = 0;
      v6 = *(v1 + 56);
      while (1)
      {
        v7 = *v6;
        v6 += 8;
        if (v7 < 0)
        {
          break;
        }

        if (v4 == ++v5)
        {
          LODWORD(v5) = *(v1 + 72);
          break;
        }
      }
    }

    else
    {
      LODWORD(v5) = 0;
    }

    if (v5 != v4)
    {
      while (1)
      {
        v8 = *(v1 + 56) + 32 * v5;
        v23[0] = 0;
        v23[1] = v23;
        v23[2] = 0x2020000000;
        v9 = *(v8 + 8);
        v24 = v9;
        if (v9)
        {
          break;
        }

LABEL_25:
        _Block_object_dispose(v23, 8);
        v21 = *(v1 + 72);
        if (v21 <= v5 + 1)
        {
          v21 = v5 + 1;
        }

        while (v21 - 1 != v5)
        {
          LODWORD(v5) = v5 + 1;
          if ((*(*(v1 + 56) + 32 * v5) & 0x80000000) != 0)
          {
            goto LABEL_31;
          }
        }

        LODWORD(v5) = v21;
LABEL_31:
        if (v5 == v4)
        {
          goto LABEL_32;
        }
      }

      v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27));
      v11 = v10 ^ (v10 >> 31);
      v12 = *(v1 + 232);
      if (v12)
      {
        v13 = v11 % v12;
        v14 = *(*(v1 + 216) + 4 * (v11 % v12));
        if (v14 != 0x7FFFFFFF)
        {
          v15 = *(v1 + 224);
          while (*(v15 + 24 * v14 + 16) != v9)
          {
            LODWORD(v14) = *(v15 + 24 * v14 + 8) & 0x7FFFFFFF;
            if (v14 == 0x7FFFFFFF)
            {
              goto LABEL_18;
            }
          }

          goto LABEL_24;
        }
      }

      else
      {
        v13 = 0;
      }

LABEL_18:
      v16 = *(v1 + 244);
      if (v16 == 0x7FFFFFFF)
      {
        v16 = *(v1 + 240);
        v17 = v16;
        if (v16 == v12)
        {
          re::HashSetBase<re::ecs2::AudioPlayerSystem *,re::ecs2::AudioPlayerSystem *,re::internal::ValueAsKey<re::ecs2::AudioPlayerSystem *>,re::Hash<re::ecs2::AudioPlayerSystem *>,re::EqualTo<re::ecs2::AudioPlayerSystem *>,true,false>::setCapacity(v1 + 208, 2 * *(v1 + 236));
          v13 = v11 % *(v1 + 232);
          v17 = *(v1 + 240);
          v9 = v24;
        }

        *(v1 + 240) = v17 + 1;
        v18 = *(v1 + 224);
        v19 = *(v18 + 24 * v16 + 8);
      }

      else
      {
        v18 = *(v1 + 224);
        v19 = *(v18 + 24 * v16 + 8);
        *(v1 + 244) = v19 & 0x7FFFFFFF;
      }

      *(v18 + 24 * v16 + 8) = v19 | 0x80000000;
      *(*(v1 + 224) + 24 * v16 + 8) = *(*(v1 + 224) + 24 * v16 + 8) & 0x80000000 | *(*(v1 + 216) + 4 * v13);
      *(*(v1 + 224) + 24 * v16) = v11;
      *(*(v1 + 224) + 24 * v16 + 16) = v9;
      *(*(v1 + 216) + 4 * v13) = v16;
      ++*(v1 + 236);
      ++*(v1 + 248);
LABEL_24:
      v20 = *(v8 + 16);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZN2re4ecs228AudioPlayerTelemetryReporterC2Ev_block_invoke_2;
      block[3] = &unk_1E871BC18;
      block[4] = v23;
      block[5] = v25;
      block[6] = v1;
      dispatch_async(v20, block);
      goto LABEL_25;
    }

LABEL_32:
    os_unfair_lock_unlock(v3 + 22);
    _Block_object_dispose(v25, 8);
  }
}

void sub_1E21556E8(_Unwind_Exception *a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  os_unfair_lock_unlock(a2 + 22);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void ___ZN2re4ecs228AudioPlayerTelemetryReporterC2Ev_block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v2 = re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter;
  if (!re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter)
  {
    goto LABEL_14;
  }

  v3 = *(*(*(a1 + 32) + 8) + 24);
  os_unfair_lock_lock((re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter + 88));
  if (!re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter)
  {
    os_unfair_lock_unlock(v2 + 22);
LABEL_14:
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN2re4ecs228AudioPlayerTelemetryReporterC2Ev_block_invoke_2_3;
    block[3] = &unk_1E871BBF0;
    v40 = *(v1 + 32);
    dispatch_async(re::ecs2::AudioPlayerTelemetryReporter::m_audioPlayerTelemetryQueue, block);
    return;
  }

  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) >> 27));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(&v42, re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter + 40, v3, v4 ^ (v4 >> 31));
  v5 = HIDWORD(v43);
  os_unfair_lock_unlock(v2 + 22);
  if (v3)
  {
    v6 = v5 == 0x7FFFFFFF;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    goto LABEL_14;
  }

  if (!*(v3 + 280))
  {
    goto LABEL_14;
  }

  v7 = *(v3 + 392);
  if (!v7)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v8 = (*(**(v3 + 280) + 16))(*(v3 + 280), v7[2]);
    if (v8)
    {
      if (!(*(*v8 + 568))(v8))
      {
        break;
      }
    }

    v7 = *v7;
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x5812000000;
  v45 = __Block_byref_object_copy__7;
  v46 = __Block_byref_object_dispose__7;
  v47 = "";
  v9 = *(*(*(v1 + 32) + 8) + 24);
  v48 = 0u;
  v49 = 0u;
  v50 = 0;
  v10 = NSClassFromString(&cfstr_Xctest.isa);
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    *(&v48 + 4) = *(v9 + 328);
    *(v9 + 328) = 0;
    v12 = *(v9 + 392);
    if (v12)
    {
      v37 = v1;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      do
      {
        v38 = v19;
        v21 = v12[2];
        v22 = re::ecs2::SceneComponentTable::get((v21 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v22)
        {
          v23 = *(v22 + 384);
          if (v23)
          {
            v24 = *(v22 + 400);
            v25 = 8 * v23;
            do
            {
              v26 = *v24++;
              v20 += *(v26 + 360);
              v17 += *(v26 + 364);
              *(v26 + 360) = 0;
              v25 -= 8;
            }

            while (v25);
          }
        }

        v27 = re::ecs2::SceneComponentTable::get((v21 + 200), re::ecs2::ComponentImpl<re::ecs2::SpatialAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        if (v27)
        {
          v28 = *(v27 + 384);
          if (v28)
          {
            v29 = *(v27 + 400);
            v30 = 8 * v28;
            do
            {
              v31 = *(*v29 + 40);
              switch(v31)
              {
                case 3:
                  ++v15;
                  break;
                case 1:
                  ++v14;
                  break;
                case 0:
                  ++v13;
                  break;
              }

              v29 += 8;
              ++v16;
              v30 -= 8;
            }

            while (v30);
          }
        }

        v32 = re::ecs2::SceneComponentTable::get((v21 + 200), re::ecs2::ComponentImpl<re::ecs2::AmbientAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        if (v32)
        {
          v33 = *(v32 + 384);
        }

        else
        {
          v33 = 0;
        }

        v34 = re::ecs2::SceneComponentTable::get((v21 + 200), re::ecs2::ComponentImpl<re::ecs2::ChannelAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        if (v34)
        {
          v35 = *(v34 + 384);
        }

        else
        {
          v35 = 0;
        }

        v19 = v33 + v38;
        v18 += v35;
        v12 = *v12;
      }

      while (v12);
      HIDWORD(v48) = v17;
      *&v49 = __PAIR64__(v16, v18);
      DWORD2(v49) = v33 + v38;
      v50 = __PAIR64__(v15, v14);
      HIDWORD(v49) = v13;
      v1 = v37;
    }

    else
    {
      v20 = 0;
    }

    LODWORD(v48) = v20;
  }

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = ___ZN2re4ecs228AudioPlayerTelemetryReporterC2Ev_block_invoke_1;
  v41[3] = &unk_1E871BBC8;
  v36 = *(v1 + 40);
  v41[4] = *(v1 + 32);
  v41[5] = &v42;
  v41[6] = v36;
  dispatch_async(re::ecs2::AudioPlayerTelemetryReporter::m_audioPlayerTelemetryQueue, v41);
  _Block_object_dispose(&v42, 8);
}

__n128 __Block_byref_object_copy__7(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void ___ZN2re4ecs228AudioPlayerTelemetryReporterC2Ev_block_invoke_1(void *a1)
{
  v2 = re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter;
  if (re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter)
  {
    v3 = *(*(a1[6] + 8) + 24);
    if (*(re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter + 200) == v3)
    {
      v4 = *(a1[5] + 8);
      v5 = *(a1[4] + 8);
      v7 = *(v4 + 48);
      v6 = *(v4 + 52);
      v8 = *(re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter + 96);
      if (v6 <= *(re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter + 100))
      {
        v6 = *(re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter + 100);
      }

      *(re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter + 100) = v6;
      v9 = *(v4 + 56);
      if (v9 <= *(v2 + 104))
      {
        v9 = *(v2 + 104);
      }

      *(v2 + 104) = v9;
      v10 = *(v5 + 24);
      *(v2 + 96) = v8 + v7;
      *(v2 + 124) = vadd_s32(*(v2 + 124), *(v4 + 76));
      *(v2 + 132) += *(v4 + 84);
      *(v2 + 108) = vaddq_s32(*(v2 + 108), *(v4 + 60));
      re::ecs2::AudioPlayerTelemetryReporter::removeSystemFromRemainingForCurrentReport(v2, v10, v3);
    }
  }
}

void ___ZN2re4ecs228AudioPlayerTelemetryReporterC2Ev_block_invoke_2_3(uint64_t a1)
{
  if (re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter)
  {
    re::ecs2::AudioPlayerTelemetryReporter::removeSystemFromRemainingForCurrentReport(re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter, *(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 40) + 8) + 24));
  }
}

void re::ecs2::AudioPlayerTelemetryReporter::removeSystemFromRemainingForCurrentReport(re::ecs2::AudioPlayerTelemetryReporter *this, unint64_t a2, int a3)
{
  v50[20] = *MEMORY[0x1E69E9840];
  if (*(this + 50) == a3)
  {
    v4 = *(this + 58);
    if (v4)
    {
      v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
      v6 = (v5 ^ (v5 >> 31)) % v4;
      v7 = *(this + 27);
      v8 = *(v7 + 4 * v6);
      if (v8 != 0x7FFFFFFF)
      {
        v9 = *(this + 28);
        if (*(v9 + 24 * v8 + 16) == a2)
        {
          *(v7 + 4 * v6) = *(v9 + 24 * v8 + 8) & 0x7FFFFFFF;
LABEL_9:
          v11 = *(this + 28);
          v12 = v11 + 24 * v8;
          v15 = *(v12 + 8);
          v14 = (v12 + 8);
          v13 = v15;
          if (v15 < 0)
          {
            *v14 = v13 & 0x7FFFFFFF;
            v11 = *(this + 28);
            v13 = *(v11 + 24 * v8 + 8);
          }

          v16 = *(this + 62);
          *(v11 + 24 * v8 + 8) = *(this + 61) | v13 & 0x80000000;
          --*(this + 59);
          *(this + 61) = v8;
          *(this + 62) = v16 + 1;
        }

        else
        {
          while (1)
          {
            v10 = v8;
            LODWORD(v8) = *(v9 + 24 * v8 + 8) & 0x7FFFFFFF;
            if (v8 == 0x7FFFFFFF)
            {
              break;
            }

            if (*(v9 + 24 * v8 + 16) == a2)
            {
              *(v9 + 24 * v10 + 8) = *(v9 + 24 * v10 + 8) & 0x80000000 | *(v9 + 24 * v8 + 8) & 0x7FFFFFFF;
              goto LABEL_9;
            }
          }
        }
      }
    }

    if (!*(this + 59))
    {
      if (*(this + 35))
      {
        v18 = *(this + 19);
        v17 = *(this + 20);
        v19 = *(this + 21);
      }

      else
      {
        v19 = -100.0;
        v17 = -100.0;
        v18 = -100.0;
      }

      if (*(this + 36))
      {
        v20 = *(this + 22);
        v21 = *(this + 20);
        v22 = *(this + 24);
      }

      else
      {
        v22 = -100.0;
        v21 = -100.0;
        v20 = -100.0;
      }

      v49[0] = @"bundleId";
      v48 = [MEMORY[0x1E696AAE8] mainBundle];
      v23 = [v48 bundleIdentifier];
      v24 = &stru_1F5D319D0;
      v47 = v23;
      if (v23)
      {
        v24 = v23;
      }

      v50[0] = v24;
      v49[1] = @"play";
      v46 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(this + 24)];
      v50[1] = v46;
      v49[2] = @"maxConcurrentPlayCount";
      v45 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(this + 25)];
      v50[2] = v45;
      v49[3] = @"prepare";
      v44 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(this + 27)];
      v50[3] = v44;
      v49[4] = @"maxConcurrentPrepareCount";
      v43 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(this + 26)];
      v50[4] = v43;
      v49[5] = @"channelComponent";
      v42 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(this + 28)];
      v50[5] = v42;
      v49[6] = @"ambientComponent";
      v41 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(this + 30)];
      v50[6] = v41;
      v49[7] = @"spatialComponent";
      v40 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(this + 29)];
      v50[7] = v40;
      v49[8] = @"spatialComponentOmniCount";
      v39 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(this + 31)];
      v50[8] = v39;
      v49[9] = @"spatialComponentBeamDirectivityCount";
      v38 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(this + 32)];
      v50[9] = v38;
      v49[10] = @"spatialComponentSphericalApproximationDirectivityCount";
      v37 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(this + 33)];
      v50[10] = v37;
      v49[11] = @"calibrationModeNoneCount";
      v36 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(this + 34)];
      v50[11] = v36;
      v49[12] = @"calibrationModeRelativeSplCount";
      v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(this + 35)];
      v50[12] = v25;
      v49[13] = @"calibrationModeAbsoluteSplCount";
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(this + 36)];
      v50[13] = v26;
      v49[14] = @"calibrationModeRelativeSplMinValue";
      v27 = [MEMORY[0x1E696AB90] numberWithDouble:v18];
      v50[14] = v27;
      v49[15] = @"calibrationModeRelativeSplAverage";
      v28 = [MEMORY[0x1E696AB90] numberWithDouble:v17];
      v50[15] = v28;
      v49[16] = @"calibrationModeRelativeSplMaxValue";
      v29 = [MEMORY[0x1E696AB90] numberWithDouble:v19];
      v50[16] = v29;
      v49[17] = @"calibrationModeAbsoluteSplMinValue";
      v30 = [MEMORY[0x1E696AB90] numberWithDouble:v20];
      v50[17] = v30;
      v49[18] = @"calibrationModeAbsoluteSplAverage";
      v31 = [MEMORY[0x1E696AB90] numberWithDouble:v21];
      v50[18] = v31;
      v49[19] = @"calibrationModeAbsoluteSplMaxValue";
      v32 = [MEMORY[0x1E696AB90] numberWithDouble:v22];
      v50[19] = v32;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:20];

      v34 = v33;
      v35 = v34;
      *(this + 6) = 0u;
      *(this + 7) = 0u;
      *(this + 8) = 0u;
      *(this + 36) = 0;
      *(this + 152) = xmmword_1E30645F0;
      *(this + 168) = xmmword_1E3064600;
      *(this + 184) = xmmword_1E3064610;
      if (*this)
      {
        re::AudioTelemetryReporter::sendTelemetryReport(*this, @"app_usage", v34);
      }
    }
  }
}

uint64_t re::ecs2::AudioPlayerTelemetryReporter::getInstance(re::ecs2::AudioPlayerTelemetryReporter *this)
{
  v1 = &qword_1EE1C5000;
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);
    re::ecs2::AudioPlayerTelemetryReporter::getInstance(void)::onceQueue = dispatch_queue_create("AudioTelemetry", v4);

    v1 = &qword_1EE1C5000;
  }

  objc_storeStrong(&re::ecs2::AudioPlayerTelemetryReporter::m_audioPlayerTelemetryQueue, v1[290]);
  result = re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter;
  if (!re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter)
  {
    dispatch_sync(re::ecs2::AudioPlayerTelemetryReporter::m_audioPlayerTelemetryQueue, &__block_literal_global_7);
    return re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter;
  }

  return result;
}

re *___ZN2re4ecs228AudioPlayerTelemetryReporter11getInstanceEv_block_invoke(re *result)
{
  v13[4] = *MEMORY[0x1E69E9840];
  if (!re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter)
  {
    v1 = re::globalAllocators(result);
    v2 = (*(*v1[2] + 32))(v1[2], 256, 8);
    *v2 = 0;
    *(v2 + 32) = 0u;
    v3 = (v2 + 32);
    *(v2 + 48) = 0u;
    *(v2 + 60) = 0u;
    *(v2 + 76) = 0x7FFFFFFFLL;
    *(v2 + 88) = 0;
    *(v2 + 96) = 0u;
    *(v2 + 112) = 0u;
    *(v2 + 128) = 0u;
    *(v2 + 144) = 0;
    *(v2 + 152) = xmmword_1E30645F0;
    *(v2 + 168) = xmmword_1E3064600;
    *(v2 + 184) = xmmword_1E3064610;
    *(v2 + 200) = 0;
    *(v2 + 208) = 0u;
    *(v2 + 224) = 0u;
    *(v2 + 240) = 0;
    *(v2 + 244) = 0x7FFFFFFFLL;
    v4 = re::globalAllocators(v2);
    v5 = (*(*v4[2] + 32))(v4[2], 56, 8);
    v13[3] = v13;
    v12 = v11;
    v13[0] = &unk_1F5CCC7A8;
    v10 = re::AudioTelemetryReporter::AudioTelemetryReporter(v5);
    v11[0] = &unk_1F5CCC7A8;
    std::__function::__value_func<void ()(re::AudioTelemetryReporter *)>::~__value_func[abi:ne200100](v13);
    v6 = v10;
    v10 = 0;
    std::unique_ptr<re::AudioTelemetryReporter,std::function<void ()(re::AudioTelemetryReporter*)>>::reset[abi:ne200100](v2, v6);
    v7 = *(v2 + 32);
    *(v2 + 32) = 0;
    if (v7 == v2 + 8)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v8 = v12;
    if (v12)
    {
      if (v12 == v11)
      {
        *v3 = v2 + 8;
        (*(*v8 + 24))(v8, v2 + 8);
        goto LABEL_11;
      }

      *v3 = v12;
      v3 = &v12;
    }

    *v3 = 0;
LABEL_11:
    std::unique_ptr<re::AudioTelemetryReporter,std::function<void ()(re::AudioTelemetryReporter*)>>::reset[abi:ne200100](&v10, 0);
    std::__function::__value_func<void ()(re::AudioTelemetryReporter *)>::~__value_func[abi:ne200100](v11);
    *(v2 + 200) = 0;
    v9 = *v2;
    v10 = MEMORY[0x1E69E9820];
    v11[0] = 3221225472;
    v11[1] = ___ZN2re4ecs228AudioPlayerTelemetryReporterC2Ev_block_invoke;
    v11[2] = &__block_descriptor_40_e5_v8__0l;
    v12 = v2;
    result = re::AudioTelemetryReporter::initializeTimerWith(v9, re::ecs2::AudioPlayerTelemetryReporter::m_audioPlayerTelemetryQueue, &v10, 300.0);
    re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter = v2;
  }

  return result;
}

void sub_1E215670C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void re::ecs2::AudioPlayerTelemetryReporter::initializeTimerWith(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = re::ecs2::AudioPlayerTelemetryReporter::m_audioPlayerTelemetryQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2re4ecs228AudioPlayerTelemetryReporter19initializeTimerWithEPU28objcproto17OS_dispatch_queue8NSObjectPNS0_17AudioPlayerSystemE_block_invoke;
  block[3] = &unk_1E871BAC8;
  v10 = a1;
  v11 = a3;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

void ___ZN2re4ecs228AudioPlayerTelemetryReporter19initializeTimerWithEPU28objcproto17OS_dispatch_queue8NSObjectPNS0_17AudioPlayerSystemE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter;
  os_unfair_lock_lock((re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter + 88));
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v4 = *(a1 + 48);
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) >> 27));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(&v7, v2 + 40, v4, v5 ^ (v5 >> 31));
  if (HIDWORD(v8) == 0x7FFFFFFF)
  {
    v6 = re::HashTable<re::ecs2::AudioPlayerSystem *,NSObject  {objcproto17OS_dispatch_queue}* {__strong},re::Hash<re::ecs2::AudioPlayerSystem *>,re::EqualTo<re::ecs2::AudioPlayerSystem *>,true,false>::allocEntry(v2 + 40, v8, v7);
    *(v6 + 8) = *(a1 + 48);
    *(v6 + 16) = *(a1 + 32);
    ++*(v2 + 80);
  }

  os_unfair_lock_unlock(v3 + 22);
}

void re::ecs2::AudioPlayerTelemetryReporter::stopAndCleanupReporter(uint64_t a1)
{
  if (re::ecs2::AudioPlayerTelemetryReporter::m_audioPlayerTelemetryQueue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN2re4ecs228AudioPlayerTelemetryReporter22stopAndCleanupReporterEPNS0_17AudioPlayerSystemE_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    dispatch_sync(re::ecs2::AudioPlayerTelemetryReporter::m_audioPlayerTelemetryQueue, block);
  }
}

void ___ZN2re4ecs228AudioPlayerTelemetryReporter22stopAndCleanupReporterEPNS0_17AudioPlayerSystemE_block_invoke(uint64_t a1)
{
  if (re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter)
  {
    re::ecs2::AudioPlayerTelemetryReporter::removeSystemFromRemainingForCurrentReport(re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter, *(a1 + 32), *(re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter + 200));
    v2 = re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter;
    os_unfair_lock_lock((re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter + 88));
    v3 = re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter;
    v4 = *(a1 + 32);
    v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) >> 27));
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v17, re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter + 40, v4, v5 ^ (v5 >> 31));
    v6 = v19;
    if (v19 != 0x7FFFFFFF)
    {
      v7 = *(v3 + 56);
      v8 = (v7 + 32 * v19);
      v9 = *v8 & 0x7FFFFFFF;
      if (v20 == 0x7FFFFFFF)
      {
        *(*(v3 + 48) + 4 * v18) = v9;
      }

      else
      {
        *(v7 + 32 * v20) = *(v7 + 32 * v20) & 0x80000000 | v9;
      }

      v10 = *v8;
      v11 = v3;
      if (*v8 < 0)
      {
        *v8 = v10 & 0x7FFFFFFF;

        v7 = *(v3 + 56);
        v10 = *(v7 + 32 * v6);
        v11 = re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter;
      }

      v12 = *(v3 + 80);
      *(v7 + 32 * v6) = *(v3 + 76) | v10 & 0x80000000;
      --*(v3 + 68);
      *(v3 + 76) = v6;
      *(v3 + 80) = v12 + 1;
      v3 = v11;
    }

    v13 = *(v3 + 68);
    os_unfair_lock_unlock(v2 + 22);
    if (!v13)
    {
      v15 = re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter;
      if (re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter)
      {
        v16 = re::globalAllocators(v14)[2];
        std::unique_ptr<re::AudioTelemetryReporter,std::function<void ()(re::AudioTelemetryReporter*)>>::reset[abi:ne200100](v15, 0);
        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v15 + 26);
        re::HashTable<unsigned long long,re::sg::MaterialSource,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v15 + 5);
        std::unique_ptr<re::AudioTelemetryReporter,std::function<void ()(re::AudioTelemetryReporter*)>>::reset[abi:ne200100](v15, 0);
        std::__function::__value_func<void ()(re::AudioTelemetryReporter *)>::~__value_func[abi:ne200100]((v15 + 1));
        (*(*v16 + 40))(v16, v15);
      }

      re::ecs2::AudioPlayerTelemetryReporter::sharedAudioPlayerTelemetryReporter = 0;
    }
  }
}

uint64_t ___ZN2re4ecs228AudioPlayerTelemetryReporter11updateCountEjj_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  *(v1 + 96) += *(result + 40);
  *(v1 + 108) += *(result + 44);
  return result;
}

void re::ecs2::AudioPlayerTelemetryReporter::updateCalibrationModeStatistics(uint64_t a1, int a2, double a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2re4ecs228AudioPlayerTelemetryReporter31updateCalibrationModeStatisticsE22REAudioCalibrationModed_block_invoke;
  block[3] = &__block_descriptor_52_e5_v8__0l;
  block[4] = a1;
  v4 = a2;
  *&block[5] = a3;
  dispatch_async(re::ecs2::AudioPlayerTelemetryReporter::m_audioPlayerTelemetryQueue, block);
}

uint64_t ___ZN2re4ecs228AudioPlayerTelemetryReporter31updateCalibrationModeStatisticsE22REAudioCalibrationModed_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 48);
  switch(v2)
  {
    case 2:
      v7 = *(v1 + 176);
      v8 = *(v1 + 144) + 1;
      *(v1 + 184) = *(v1 + 184) + (*(result + 40) - *(v1 + 184)) / v8;
      *(v1 + 144) = v8;
      v9 = *(result + 40);
      if (v9 >= v7)
      {
        v9 = v7;
      }

      *(v1 + 176) = v9;
      v10 = *(result + 40);
      if (v10 <= *(v1 + 192))
      {
        v10 = *(v1 + 192);
      }

      *(v1 + 192) = v10;
      break;
    case 1:
      v3 = *(v1 + 152);
      v4 = *(v1 + 140) + 1;
      *(v1 + 160) = *(v1 + 160) + (*(result + 40) - *(v1 + 160)) / v4;
      *(v1 + 140) = v4;
      v5 = *(result + 40);
      if (v5 >= v3)
      {
        v5 = v3;
      }

      *(v1 + 152) = v5;
      v6 = *(result + 40);
      if (v6 <= *(v1 + 168))
      {
        v6 = *(v1 + 168);
      }

      *(v1 + 168) = v6;
      break;
    case 0:
      ++*(v1 + 136);
      break;
  }

  return result;
}

uint64_t *std::unique_ptr<re::AudioTelemetryReporter,std::function<void ()(re::AudioTelemetryReporter*)>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result[4];
    v4 = v2;
    if (!v3)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    return (*(*v3 + 48))(v3, &v4);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(re::AudioTelemetryReporter *)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20makeDefaultUniquePtrINS2_22AudioTelemetryReporterEJEEENS_10unique_ptrIT_NS_8functionIFvPS6_EEEEEDpOT0_EUlPS4_E_NS_9allocatorISG_EEFvSF_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *re::internal::destroyPersistent<re::AudioTelemetryReporter>(re *result, uint64_t a2, re::AudioTelemetryReporter *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::AudioTelemetryReporter::~AudioTelemetryReporter(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void re::HashSetBase<re::ecs2::AudioPlayerSystem *,re::ecs2::AudioPlayerSystem *,re::internal::ValueAsKey<re::ecs2::AudioPlayerSystem *>,re::Hash<re::ecs2::AudioPlayerSystem *>,re::EqualTo<re::ecs2::AudioPlayerSystem *>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v20, 0, 36);
      *&v20[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(v20, v4, a2);
      v5 = *v20;
      *v20 = *a1;
      *a1 = v5;
      v6 = *&v20[16];
      v7 = *(a1 + 16);
      *&v20[16] = v7;
      *(a1 + 16) = v6;
      v8 = *&v20[24];
      *&v20[24] = *(a1 + 24);
      DWORD2(v5) = *&v20[32];
      *(a1 + 24) = v8;
      v9 = DWORD2(v5);
      if (DWORD2(v5))
      {
        v10 = DWORD1(v8);
        v11 = (v7 + 16);
        do
        {
          if ((*(v11 - 1) & 0x80000000) != 0)
          {
            v12 = *(v11 - 2);
            v13 = *(a1 + 24);
            v14 = v12 % v13;
            v15 = *(a1 + 36);
            if (v15 == 0x7FFFFFFF)
            {
              v15 = *(a1 + 32);
              v16 = v15;
              if (v15 == v13)
              {
                re::HashSetBase<re::ecs2::AudioPlayerSystem *,re::ecs2::AudioPlayerSystem *,re::internal::ValueAsKey<re::ecs2::AudioPlayerSystem *>,re::Hash<re::ecs2::AudioPlayerSystem *>,re::EqualTo<re::ecs2::AudioPlayerSystem *>,true,false>::setCapacity(a1, (2 * v10));
                v14 = v12 % *(a1 + 24);
                v16 = *(a1 + 32);
              }

              *(a1 + 32) = v16 + 1;
              v17 = *(a1 + 16);
              v18 = *(v17 + 24 * v15 + 8);
            }

            else
            {
              v17 = *(a1 + 16);
              v18 = *(v17 + 24 * v15 + 8);
              *(a1 + 36) = v18 & 0x7FFFFFFF;
            }

            *(v17 + 24 * v15 + 8) = v18 | 0x80000000;
            *(*(a1 + 16) + 24 * v15 + 8) = *(*(a1 + 16) + 24 * v15 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * v14);
            *(*(a1 + 16) + 24 * v15) = v12;
            *(*(a1 + 16) + 24 * v15 + 16) = *v11;
            *(*(a1 + 8) + 4 * v14) = v15;
            v10 = *(a1 + 28) + 1;
            *(a1 + 28) = v10;
          }

          v11 += 3;
          --v9;
        }

        while (v9);
      }

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v20);
    }
  }

  else
  {
    if (a2)
    {
      v19 = a2;
    }

    else
    {
      v19 = 3;
    }
  }
}

uint64_t re::HashTable<re::ecs2::AudioPlayerSystem *,NSObject  {objcproto17OS_dispatch_queue}* {__strong},re::Hash<re::ecs2::AudioPlayerSystem *>,re::EqualTo<re::ecs2::AudioPlayerSystem *>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = *(a1 + 16);
          *&v26[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v14 = *&v26[32];
          *(a1 + 24) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 16);
            do
            {
              if ((*(v17 - 2) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::ecs2::AudioPlayerSystem *,NSObject  {objcproto17OS_dispatch_queue}* {__strong},re::Hash<re::ecs2::AudioPlayerSystem *>,re::EqualTo<re::ecs2::AudioPlayerSystem *>,true,false>::allocEntry(a1, v17[1] % *(a1 + 24));
                *(v18 + 8) = *(v17 - 1);
                v19 = *v17;
                *v17 = 0;
                *(v18 + 16) = v19;
              }

              v17 += 4;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::sg::MaterialSource,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 32 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v23 + 24) = a3;
  *(v24 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v20 + 32 * v5;
}

void sub_1E2157434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::vector<std::unique_ptr<re::AudioManager_PHASE_StateMachine_RecoveryStep>>::__destroy_vector::operator()[abi:ne200100](&a9);
  v12 = *v9;
  *v9 = 0;
  if (v12)
  {
    (*(*v12 + 32))(v12);
  }

  _Unwind_Resume(a1);
}

void re::AudioManager_PHASE_StateMachine::~AudioManager_PHASE_StateMachine(re::AudioManager_PHASE_StateMachine *this)
{
  v2 = *(this + 5);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___ZN2re31AudioManager_PHASE_StateMachineD2Ev_block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = this;
  dispatch_sync(v2, v4);

  v5 = (this + 16);
  std::vector<std::unique_ptr<re::AudioManager_PHASE_StateMachine_RecoveryStep>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *this;
  *this = 0;
  if (v3)
  {
    (*(*v3 + 32))(v3);
  }
}

void *___ZN2re31AudioManager_PHASE_StateMachineD2Ev_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  os_unfair_lock_lock(v1 + 2);
  v2 = *v1;
  *v1 = 0;
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  os_unfair_lock_unlock(v1 + 2);
  v4 = v1[2];
  v5 = v1[3];
  v3 = v1 + 2;
  while (v4 != v5)
  {
    v6 = *v4;
    *v4 = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    ++v4;
  }

  return std::vector<std::unique_ptr<re::AudioManager_PHASE_StateMachine_RecoveryStep>>::clear[abi:ne200100](v3);
}

void *std::vector<std::unique_ptr<re::AudioManager_PHASE_StateMachine_RecoveryStep>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void re::AudioManager_PHASE_StateMachine::handleStateChangeEvent(std::string *a1, int a2, unint64_t __val, uint64_t a4)
{
  v7 = a1;
  v22 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    std::to_string(&v15, __val);
    a1 = std::string::insert(&v15, 0, " for scene ");
    v8 = *&a1->__r_.__value_.__l.__data_;
    v17 = a1->__r_.__value_.__r.__words[2];
    *__p = v8;
    a1->__r_.__value_.__l.__size_ = 0;
    a1->__r_.__value_.__r.__words[2] = 0;
    a1->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    HIBYTE(v17) = 0;
    LOBYTE(__p[0]) = 0;
  }

  v9 = *re::audioLogObjects(a1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    re::nameForAudioManagerStateMachineEvent(a2, &v15);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v15;
    }

    else
    {
      v10 = v15.__r_.__value_.__r.__words[0];
    }

    v11 = __p;
    if (v17 < 0)
    {
      v11 = __p[0];
    }

    *buf = 136315394;
    v19 = v10;
    v20 = 2080;
    v21 = v11;
    _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "[RE/MediaServices] [EngineStateChange] Received state change event '%s'%s.", buf, 0x16u);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  v12 = v7[1].__r_.__value_.__r.__words[2];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2re31AudioManager_PHASE_StateMachine22handleStateChangeEventENS_36AudioManager_PHASE_StateMachineEventENSt3__18optionalIyEE_block_invoke;
  block[3] = &__block_descriptor_60_e5_v8__0l;
  v14 = a2;
  block[4] = v7;
  block[5] = __val;
  block[6] = a4;
  dispatch_async(v12, block);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E2157854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN2re31AudioManager_PHASE_StateMachine22handleStateChangeEventENS_36AudioManager_PHASE_StateMachineEventENSt3__18optionalIyEE_block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = (***&v1->_os_unfair_lock_opaque)(*&v1->_os_unfair_lock_opaque, *(a1 + 56), *(a1 + 40), *(a1 + 48));
  if ((v2 & 0x100000000) != 0)
  {
    switch(v2)
    {
      case 2:
        operator new();
      case 1:
        __src[1] = 0;
        v25 = 0;
        __src[0] = 0;
        v3 = *&v1[4]._os_unfair_lock_opaque;
        for (i = *&v1[6]._os_unfair_lock_opaque; v3 != i; v3 += 8)
        {
          (*(**v3 + 64))(buf);
          v5 = __src[1];
          if (__src[1] >= v25)
          {
            v8 = __src[0];
            v9 = __src[1] - __src[0];
            v10 = (__src[1] - __src[0]) >> 3;
            v11 = v10 + 1;
            if ((v10 + 1) >> 61)
            {
              std::vector<PHASESource * {__strong}>::__throw_length_error[abi:ne200100]();
            }

            v12 = v25 - __src[0];
            if ((v25 - __src[0]) >> 2 > v11)
            {
              v11 = v12 >> 2;
            }

            if (v12 >= 0x7FFFFFFFFFFFFFF8)
            {
              v13 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v13 = v11;
            }

            v29 = __src;
            if (v13)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<re::AudioManager_PHASE_StateMachine_RecoveryStep>>>(__src, v13);
            }

            v14 = *buf;
            *buf = 0;
            *(8 * v10) = v14;
            v7 = (8 * v10 + 8);
            memcpy(0, v8, v9);
            v15 = __src[0];
            v16 = v25;
            __src[0] = 0;
            __src[1] = v7;
            v25 = 0;
            __p[0] = v15;
            v27 = v15;
            v28 = v16;
            __p[1] = v15;
            std::__split_buffer<std::unique_ptr<re::AudioManager_PHASE_StateMachine_RecoveryStep>>::~__split_buffer(__p);
          }

          else
          {
            v6 = *buf;
            *buf = 0;
            *__src[1] = v6;
            v7 = v5 + 8;
          }

          __src[1] = v7;
          v17 = *buf;
          *buf = 0;
          if (v17)
          {
            (*(*v17 + 8))(v17);
          }
        }

        operator new();
      case 0:
        operator new();
    }

    v18 = *re::audioLogObjects(v2);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      (*(**&v1->_os_unfair_lock_opaque + 8))(__p);
      v19 = SHIBYTE(v27);
      v20 = __p[0];
      (*(MEMORY[0] + 8))(__src, 0);
      v21 = __p;
      if (v19 < 0)
      {
        v21 = v20;
      }

      if (SHIBYTE(v25) >= 0)
      {
        v22 = __src;
      }

      else
      {
        v22 = __src[0];
      }

      *buf = 136315394;
      *&buf[4] = v21;
      v31 = 2080;
      v32 = v22;
      _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "[RE/MediaServices] [EngineStateChange] State was changed from %s to %s", buf, 0x16u);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(__src[0]);
      }

      if (SHIBYTE(v27) < 0)
      {
        operator delete(__p[0]);
      }
    }

    os_unfair_lock_lock(v1 + 2);
    v23 = *&v1->_os_unfair_lock_opaque;
    *&v1->_os_unfair_lock_opaque = 0;
    if (v23)
    {
      (*(*v23 + 32))(v23);
    }

    os_unfair_lock_unlock(v1 + 2);
  }
}

void sub_1E2157CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t *a20)
{
  a20 = &a9;
  std::vector<std::unique_ptr<re::AudioManager_PHASE_StateMachine_RecoveryStep>>::__destroy_vector::operator()[abi:ne200100](&a20);
  _Unwind_Resume(a1);
}

uint64_t re::AudioManager_PHASE_StateMachine::getCurrentStateType(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 2);
  v2 = (*(**&this->_os_unfair_lock_opaque + 16))();
  os_unfair_lock_unlock(this + 2);
  return v2;
}

void ___ZN2re31AudioManager_PHASE_StateMachine28registerRequiredRecoveryStepENS_36AudioManager_PHASE_StateMachineEventEy_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *re::audioLogObjects(a1);
  v5 = v4;
  if (v3 > 4)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      re::nameForAudioManagerStateMachineEvent(*(a1 + 48), __p);
      v8 = v10 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v12 = v8;
      _os_log_debug_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEBUG, "[RE/MediaServices] [EngineState] Registered a recovery step for event %s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v6 = *(*(v2 + 16) + 8 * *(a1 + 48));
    (*(*v6 + 48))(v6, *(a1 + 40));
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      re::nameForAudioManagerStateMachineEvent(*(a1 + 48), __p);
      if (v10 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      *buf = 136315138;
      v12 = v7;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "[RE/MediaServices] [EngineState] Invalid recovery step registered for event %s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void ___ZN2re31AudioManager_PHASE_StateMachine30unregisterRequiredRecoveryStepENS_36AudioManager_PHASE_StateMachineEventEy_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *re::audioLogObjects(a1);
  v5 = v4;
  if (v3 > 4)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      re::nameForAudioManagerStateMachineEvent(*(a1 + 48), __p);
      v8 = v10 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v12 = v8;
      _os_log_debug_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEBUG, "[RE/MediaServices] [EngineState] Unregistered a recovery step for event %s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v6 = *(v2[2] + 8 * *(a1 + 48));
    (*(*v6 + 40))(v6, *(a1 + 40));
    if ((*(**v2 + 16))() == 1)
    {
      (***v2)(*v2, *(a1 + 48), *(a1 + 40), 1);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      re::nameForAudioManagerStateMachineEvent(*(a1 + 48), __p);
      if (v10 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      *buf = 136315138;
      v12 = v7;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "[RE/MediaServices] [EngineState] Invalid recovery step unregistered from event %s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

uint64_t re::AudioManager_PHASE_StateMachine::isRecoveryStepCompleted(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 2);
  v4 = (*(**&a1->_os_unfair_lock_opaque + 40))(*&a1->_os_unfair_lock_opaque, a2);
  os_unfair_lock_unlock(a1 + 2);
  return v4;
}

void std::vector<std::unique_ptr<re::AudioManager_PHASE_StateMachine_RecoveryStep>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<re::AudioManager_PHASE_StateMachine_RecoveryStep>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<re::AudioManager_PHASE_StateMachine_RecoveryStep>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<re::AudioManager_PHASE_StateMachine_RecoveryStep>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<re::AudioManager_PHASE_StateMachine_RecoveryStep>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<re::AudioManager_PHASE_StateMachine_RecoveryStep>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void re::audio::REPHASEAudioScene::destroy(re::audio::REPHASEAudioScene *this)
{
  v2 = *(this + 9);
  *(this + 9) = 0;

  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>>>::clear(this + 24);

  std::__hash_table<std::__hash_value_type<unsigned long long,PHASEObject * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PHASEObject * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PHASEObject * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PHASEObject * {__strong}>>>::clear(this + 88);
}

void re::audio::REPHASEAudioScene::fillOutDebugInformation(re::audio::REPHASEAudioScene *this, NSMutableDictionary *a2)
{
  v52 = a2;
  os_unfair_lock_lock(this + 16);
  v3 = *(this + 9);
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    [v3 transform];
    v53 = v5;
    v54 = v6;
    v55 = v7;
    v56 = v8;
    v9 = re::audio::REPHASEAudioScene::fillOutDebugInformation(NSMutableDictionary *)::$_0::operator()(&v53);
    [v4 setObject:v9 forKey:@"transform"];

    [v3 worldTransform];
    v53 = v10;
    v54 = v11;
    v55 = v12;
    v56 = v13;
    v14 = re::audio::REPHASEAudioScene::fillOutDebugInformation(NSMutableDictionary *)::$_0::operator()(&v53);
    [v4 setObject:v14 forKey:@"worldTransform"];
  }

  os_unfair_lock_unlock(this + 16);
  lock = (this + 16);
  os_unfair_lock_lock(this + 4);
  v15 = *(this + 5);
  if (v15)
  {
    v16 = 0x1E695D000uLL;
    do
    {
      v17 = v15[2];
      v18 = v15[3];
      v19 = v15[4];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v18)
      {
        v20 = *(v18 + 24);
        if (v20)
        {
          v21 = [*(v16 + 3984) dictionary];
          v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v17];
          [v21 setObject:v22 forKey:@"entityID"];

          if (*(v18 + 32))
          {
            v23 = *(v18 + 32);
          }

          else
          {
            v23 = @"(null)";
          }

          [v21 setObject:v23 forKey:@"name"];
          [v20 transform];
          v53 = v24;
          v54 = v25;
          v55 = v26;
          v56 = v27;
          v28 = re::audio::REPHASEAudioScene::fillOutDebugInformation(NSMutableDictionary *)::$_0::operator()(&v53);
          [v21 setObject:v28 forKey:@"transform"];

          [v20 worldTransform];
          v53 = v29;
          v54 = v30;
          v55 = v31;
          v56 = v32;
          v33 = re::audio::REPHASEAudioScene::fillOutDebugInformation(NSMutableDictionary *)::$_0::operator()(&v53);
          [v21 setObject:v33 forKey:@"worldTransform"];

          v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Occluder Entity-%llu", v17];
          [(NSMutableDictionary *)v52 setObject:v21 forKey:v34];
        }

        v35 = *(v18 + 16);
        if (v35)
        {
          v36 = v16;
          v37 = [*(v16 + 3984) dictionary];
          v38 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v17];
          [v37 setObject:v38 forKey:@"entityID"];

          if (*(v18 + 32))
          {
            v39 = *(v18 + 32);
          }

          else
          {
            v39 = @"(null)";
          }

          [v37 setObject:v39 forKey:@"name"];
          [v35 transform];
          v53 = v40;
          v54 = v41;
          v55 = v42;
          v56 = v43;
          v44 = re::audio::REPHASEAudioScene::fillOutDebugInformation(NSMutableDictionary *)::$_0::operator()(&v53);
          [v37 setObject:v44 forKey:@"transform"];

          [v35 worldTransform];
          v53 = v45;
          v54 = v46;
          v55 = v47;
          v56 = v48;
          v49 = re::audio::REPHASEAudioScene::fillOutDebugInformation(NSMutableDictionary *)::$_0::operator()(&v53);
          [v37 setObject:v49 forKey:@"worldTransform"];

          v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Source Entity-%llu", v17];
          [(NSMutableDictionary *)v52 setObject:v37 forKey:v50];

          v16 = v36;
        }
      }

      else
      {
        v20 = [MEMORY[0x1E695DF20] dictionary];
        v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"null Entity-%llu", v17];
        [(NSMutableDictionary *)v52 setObject:v20 forKey:v35];
      }

      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v19);
      }

      v15 = *v15;
    }

    while (v15);
  }

  os_unfair_lock_unlock(lock);
}

void sub_1E21588A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  os_unfair_lock_unlock(v15);

  _Unwind_Resume(a1);
}

id re::audio::REPHASEAudioScene::fillOutDebugInformation(NSMutableDictionary *)::$_0::operator()(_DWORD *a1)
{
  v43[4] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  LODWORD(v3) = *a1;
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:v3];
  v43[0] = v4;
  LODWORD(v5) = a1[4];
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  v43[1] = v6;
  LODWORD(v7) = a1[8];
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  v43[2] = v8;
  LODWORD(v9) = a1[12];
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  v43[3] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:4];
  [v2 addObject:v11];

  LODWORD(v12) = a1[1];
  v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  v42[0] = v13;
  LODWORD(v14) = a1[5];
  v15 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
  v42[1] = v15;
  LODWORD(v16) = a1[9];
  v17 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
  v42[2] = v17;
  LODWORD(v18) = a1[13];
  v19 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
  v42[3] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:4];
  [v2 addObject:v20];

  LODWORD(v21) = a1[2];
  v22 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
  v41[0] = v22;
  LODWORD(v23) = a1[6];
  v24 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
  v41[1] = v24;
  LODWORD(v25) = a1[10];
  v26 = [MEMORY[0x1E696AD98] numberWithFloat:v25];
  v41[2] = v26;
  LODWORD(v27) = a1[14];
  v28 = [MEMORY[0x1E696AD98] numberWithFloat:v27];
  v41[3] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:4];
  [v2 addObject:v29];

  LODWORD(v30) = a1[3];
  v31 = [MEMORY[0x1E696AD98] numberWithFloat:v30];
  v40[0] = v31;
  LODWORD(v32) = a1[7];
  v33 = [MEMORY[0x1E696AD98] numberWithFloat:v32];
  v40[1] = v33;
  LODWORD(v34) = a1[11];
  v35 = [MEMORY[0x1E696AD98] numberWithFloat:v34];
  v40[2] = v35;
  LODWORD(v36) = a1[15];
  v37 = [MEMORY[0x1E696AD98] numberWithFloat:v36];
  v40[3] = v37;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];
  [v2 addObject:v38];

  return v2;
}

void re::audio::REPHASEAudioScene::getOrCreateEntity(os_unfair_lock_s *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = a2;
  os_unfair_lock_lock(this + 4);
  v5 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(&this[6]._os_unfair_lock_opaque, &v7);
  if (!v5)
  {
    operator new();
  }

  v6 = v5[4];
  *a3 = v5[3];
  a3[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(this + 4);
}

void sub_1E2158E94(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  os_unfair_lock_unlock(v1 + 4);
  _Unwind_Resume(a1);
}

void re::audio::REPHASEAudioScene::getOrCreateEntityWithIncrementedCount(os_unfair_lock_s *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = a2;
  os_unfair_lock_lock(this + 4);
  v5 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(&this[6]._os_unfair_lock_opaque, &v8);
  if (!v5)
  {
    operator new();
  }

  v6 = v5[3];
  ++*(v6 + 112);
  v7 = v5[4];
  *a3 = v6;
  a3[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(this + 4);
}

void sub_1E2158FE8(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  os_unfair_lock_unlock(v1 + 4);
  _Unwind_Resume(a1);
}

void re::audio::REPHASEAudioScene::decrementOrDestroyEntityWithZeroCount(os_unfair_lock_s *this, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 4);
  *v11 = a2;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(&this[6]._os_unfair_lock_opaque, v11);
  if (v4)
  {
    v5 = *(v4 + 3);
    v6 = *(v4 + 4);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v5)
    {
      v7 = *(v5 + 112);
      v8 = __OFSUB__(v7--, 1);
      *(v5 + 112) = v7;
      if ((v7 < 0) ^ v8 | (v7 == 0))
      {
        v9 = *re::audioLogObjects(v4);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v11 = 134217984;
          *&v11[4] = a2;
          _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "Removing PHASEEntity with ID: %llu", v11, 0xCu);
        }

        *v11 = a2;
        std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEEntity>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEEntity>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEEntity>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEEntity>>>>::__erase_unique<unsigned long long>(&this[6]._os_unfair_lock_opaque, v11);
      }

      goto LABEL_12;
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = *re::audioLogObjects(v4);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *v11 = 0;
    _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "decrementOrDestroyEntityWithZeroCount: PHASEEntity is a nullptr", v11, 2u);
    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_12:
  if (v6)
  {
LABEL_13:
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

LABEL_14:
  os_unfair_lock_unlock(this + 4);
}

void sub_1E2159178(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  os_unfair_lock_unlock(v1 + 4);
  _Unwind_Resume(a1);
}

void *re::audio::REPHASEAudioScene::getEntityUnderLock@<X0>(re::audio::REPHASEAudioScene *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(this + 3, &v6);
  if (result)
  {
    v5 = result[4];
    *a3 = result[3];
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

void re::audio::REPHASEAudioScene::getEntity(os_unfair_lock_s *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  os_unfair_lock_lock(this + 4);
  re::audio::REPHASEAudioScene::getEntityUnderLock(this, a2, a3);

  os_unfair_lock_unlock(this + 4);
}

void re::audio::REPHASEAudioScene::removeEntity(os_unfair_lock_s *this, unint64_t a2)
{
  v3 = a2;
  os_unfair_lock_lock(this + 4);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEEntity>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEEntity>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEEntity>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEEntity>>>>::__erase_unique<unsigned long long>(&this[6]._os_unfair_lock_opaque, &v3);
  os_unfair_lock_unlock(this + 4);
}

void re::audio::REPHASEAudioScene::createListener(uint64_t a1, char a2)
{
  *(a1 + 144) = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 128));
  v4 = [WeakRetained maybeEngine];

  if (v4 && !*(a1 + 72))
  {
    v5 = objc_alloc(MEMORY[0x1E69781C8]);
    v6 = objc_loadWeakRetained((a1 + 128));
    v7 = [v6 engine];
    v8 = [v5 initWithEngine:v7];

    v9 = objc_loadWeakRetained((a1 + 128));
    v10 = [v9 engine];
    v11 = [v10 rootObject];
    v14 = 0;
    v12 = [v11 addChild:v8 error:&v14];
    v13 = v14;

    os_unfair_lock_lock((a1 + 64));
    if (v12)
    {
      objc_storeStrong((a1 + 72), v8);
    }

    os_unfair_lock_unlock((a1 + 64));
  }
}

void re::audio::REPHASEAudioScene::createListenerIfPending(re::audio::REPHASEAudioScene *this)
{
  if (!*(this + 9))
  {
    v1 = *(this + 144);
    if (v1)
    {

      re::audio::REPHASEAudioScene::createListener(this, v1);
    }

    else
    {
      v2 = *re::audioLogObjects(this);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        *v3 = 0;
        _os_log_debug_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEBUG, "Cannot create a listener without a valid listener type.", v3, 2u);
      }
    }
  }
}

id re::audio::REPHASEAudioScene::getListener(re::audio::REPHASEAudioScene *this)
{
  os_unfair_lock_lock(this + 16);
  v2 = *(this + 9);
  os_unfair_lock_unlock(this + 16);

  return v2;
}

void re::audio::REPHASEAudioScene::removeListener(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 16);
  v2 = *&this[18]._os_unfair_lock_opaque;
  *&this[18]._os_unfair_lock_opaque = 0;

  os_unfair_lock_unlock(this + 16);
}

id re::audio::REPHASEAudioScene::getSessionRoot(os_unfair_lock_s *this, unint64_t a2)
{
  v6 = a2;
  os_unfair_lock_lock(this + 20);
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(&this[22]._os_unfair_lock_opaque, &v6);
  if (v3)
  {
    v4 = v3[3];
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(this + 20);

  return v4;
}

void re::audio::REPHASEAudioScene::removeSessionRoot(os_unfair_lock_s *this, unint64_t a2)
{
  v4 = a2;
  os_unfair_lock_lock(this + 20);
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(&this[22]._os_unfair_lock_opaque, &v4);
  if (v3)
  {
    [v3[3] setTransform:{*MEMORY[0x1E69E9B18], *(MEMORY[0x1E69E9B18] + 16), *(MEMORY[0x1E69E9B18] + 32), *(MEMORY[0x1E69E9B18] + 48)}];
    std::__hash_table<std::__hash_value_type<unsigned long long,PHASEObject * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PHASEObject * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PHASEObject * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PHASEObject * {__strong}>>>::__erase_unique<unsigned long long>(&this[22]._os_unfair_lock_opaque, &v4);
  }

  os_unfair_lock_unlock(this + 20);
}

void re::audio::REPHASEAudioScene::getSourceCount(os_unfair_lock_s *this, unsigned int *a2, unsigned int *a3)
{
  os_unfair_lock_lock(this + 4);
  v6 = *&this[10]._os_unfair_lock_opaque;
  if (v6)
  {
    v7 = 0;
    do
    {
      v7 = vsub_s32(v7, vmovn_s64(vtstq_s64(*(v6[3] + 16), *(v6[3] + 16))));
      v6 = *v6;
    }

    while (v6);
    if (a2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v7 = 0;
    if (a2)
    {
LABEL_5:
      *a2 = v7.i32[0];
    }
  }

  if (a3)
  {
    *a3 = v7.u32[1];
  }

  os_unfair_lock_unlock(this + 4);
}

void sub_1E215978C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<re::audio::REPHASEAudioScene>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<re::audio::REPHASEAudioScene *,std::shared_ptr<re::audio::REPHASEAudioScene>::__shared_ptr_default_delete<re::audio::REPHASEAudioScene,re::audio::REPHASEAudioScene>,std::allocator<re::audio::REPHASEAudioScene>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t std::__shared_ptr_pointer<re::audio::REPHASEAudioScene *,std::shared_ptr<re::audio::REPHASEAudioScene>::__shared_ptr_default_delete<re::audio::REPHASEAudioScene,re::audio::REPHASEAudioScene>,std::allocator<re::audio::REPHASEAudioScene>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<re::audio::REPHASEAudioScene>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    objc_destroyWeak((a2 + 128));
    std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>>>::~__hash_table(a2 + 88);

    std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::~__hash_table(a2 + 24);
    v3 = *(a2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    JUMPOUT(0x1E6906520);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,PHASEObject * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PHASEObject * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PHASEObject * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PHASEObject * {__strong}>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEEntity>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEEntity>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEEntity>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEEntity>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEEntity>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEEntity>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEEntity>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEEntity>>>>::__erase_unique<unsigned long long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEEntity>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEEntity>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEEntity>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEEntity>>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEEntity>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEEntity>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEEntity>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEEntity>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned long long,PHASEObject * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PHASEObject * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PHASEObject * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PHASEObject * {__strong}>>>::__erase_unique<unsigned long long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,PHASEObject * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PHASEObject * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PHASEObject * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PHASEObject * {__strong}>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,PHASEObject * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PHASEObject * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PHASEObject * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PHASEObject * {__strong}>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
    }

    operator delete(v3);
  }

  return v2;
}

uint64_t re::UserActiveStateNotificationManager::UserActiveStateNotificationManager(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v6 = *a3;
  v7 = *(a3 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v8 = *(a1 + 8);
    *a1 = v6;
    *(a1 + 8) = v7;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      v6 = *a1;
    }
  }

  else
  {
    *a1 = v6;
    *(a1 + 8) = 0;
  }

  re::AudioEngineRunnableManager::addReason(v6, 0);

  return a1;
}

void sub_1E2159EEC(_Unwind_Exception *a1)
{
  if (*v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*v2);
  }

  _Unwind_Resume(a1);
}

void re::UserActiveStateNotificationManager::~UserActiveStateNotificationManager(re::UserActiveStateNotificationManager *this)
{
  if (*(this + 2))
  {
    IOPMUnregisterNotification();
  }

  v2 = *(this + 1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

id re::audio::SoundAssetRegistrar_Plain::registerSoundAssetWithAudioFileData(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = [a2 registerSoundAssetWithAudioFileData:a11 identifier:? assetType:? fileTypeHint:? channelLayout:? normalizationMode:? error:?];

  return v11;
}

id re::audio::SoundAssetRegistrar_Plain::registerSoundAssetAtURL(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = [a2 registerSoundAssetAtURL:a3 identifier:a4 assetType:a5 channelLayout:a7 normalizationMode:a8 error:a11];

  return v11;
}

id re::audio::SoundAssetRegistrar_Plain::registerSoundAssetWithData(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = [a2 registerSoundAssetWithData:a3 identifier:a4 format:a5 normalizationMode:a6 error:a9];

  return v9;
}

uint64_t re::audio::phasePrivateReverbPresetFor(uint64_t a1)
{
  v1 = 1917742958;
  if (a1 > 108)
  {
    if (a1 <= 1000)
    {
      v2 = 1917613682;
      v8 = 1917547630;
      v9 = 1916952948;
      if (a1 != 209)
      {
        v9 = 1917742958;
      }

      if (a1 != 208)
      {
        v8 = v9;
      }

      if (a1 != 207)
      {
        v2 = v8;
      }

      v10 = 1917020526;
      v11 = 1917612653;
      if (a1 != 206)
      {
        v11 = 1917742958;
      }

      if (a1 != 205)
      {
        v10 = v11;
      }

      if (a1 <= 206)
      {
        v2 = v10;
      }

      v12 = 1917678445;
      v13 = 1917604403;
      v14 = 1917604404;
      if (a1 != 204)
      {
        v14 = 1917742958;
      }

      if (a1 != 203)
      {
        v13 = v14;
      }

      if (a1 != 202)
      {
        v12 = v13;
      }

      if (a1 == 201)
      {
        v1 = 1917022062;
      }

      if (a1 == 109)
      {
        v1 = 1916952948;
      }

      if (a1 > 201)
      {
        v1 = v12;
      }

      v5 = a1 <= 204;
    }

    else if (a1 <= 1005)
    {
      v2 = 1917152819;
      v22 = 1917152820;
      v23 = 1917152821;
      if (a1 != 1005)
      {
        v23 = 1917742958;
      }

      if (a1 != 1004)
      {
        v22 = v23;
      }

      if (a1 != 1003)
      {
        v2 = v22;
      }

      if (a1 == 1002)
      {
        v1 = 1917152818;
      }

      if (a1 == 1001)
      {
        v1 = 1917152817;
      }

      v5 = a1 <= 1002;
    }

    else
    {
      v2 = 1917152825;
      v3 = 1917137200;
      v4 = 1917137202;
      if (a1 != 1012)
      {
        v4 = 1917742958;
      }

      if (a1 != 1010)
      {
        v3 = v4;
      }

      if (a1 != 1009)
      {
        v2 = v3;
      }

      if (a1 == 1008)
      {
        v1 = 1917152824;
      }

      if (a1 == 1007)
      {
        v1 = 1917152823;
      }

      if (a1 == 1006)
      {
        v1 = 1917152822;
      }

      v5 = a1 <= 1008;
    }

LABEL_95:
    if (v5)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }

  if (a1 > 11)
  {
    v2 = 1917612653;
    v15 = 1917613682;
    v16 = 1917547630;
    if (a1 != 108)
    {
      v16 = 1917742958;
    }

    if (a1 != 107)
    {
      v15 = v16;
    }

    if (a1 != 106)
    {
      v2 = v15;
    }

    v17 = 1917604404;
    v18 = 1917020526;
    if (a1 != 105)
    {
      v18 = 1917742958;
    }

    if (a1 != 104)
    {
      v17 = v18;
    }

    if (a1 <= 105)
    {
      v2 = v17;
    }

    v19 = 1917810036;
    v20 = 1917678445;
    v21 = 1917604403;
    if (a1 != 103)
    {
      v21 = 1917742958;
    }

    if (a1 != 102)
    {
      v20 = v21;
    }

    if (a1 != 101)
    {
      v19 = v20;
    }

    if (a1 == 100)
    {
      v1 = 1916890725;
    }

    if (a1 == 12)
    {
      v1 = 1917601842;
    }

    if (a1 > 100)
    {
      v1 = v19;
    }

    v5 = a1 <= 103;
    goto LABEL_95;
  }

  if (a1 > 6)
  {
    v2 = 1917604402;
    v24 = 1917667378;
    v25 = 1917667379;
    if (a1 != 11)
    {
      v25 = 1917742958;
    }

    if (a1 != 10)
    {
      v24 = v25;
    }

    if (a1 != 9)
    {
      v2 = v24;
    }

    if (a1 == 8)
    {
      v1 = 1917023336;
    }

    if (a1 == 7)
    {
      v1 = 1917600616;
    }

    v5 = a1 <= 8;
    goto LABEL_95;
  }

  if (a1 <= 3)
  {
    v7 = 1917669997;
    if (a1 == 3)
    {
      v1 = 1917667377;
    }

    v6 = a1 == 1;
    goto LABEL_102;
  }

  if (a1 == 4)
  {
    return 1917601841;
  }

  if (a1 != 5)
  {
    v6 = a1 == 6;
    v7 = 1917666152;
LABEL_102:
    if (v6)
    {
      return v7;
    }

    else
    {
      return v1;
    }
  }

  v26 = 1917600616;
  v28 = *re::audioLogObjects(5);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *v29 = 0;
    _os_log_error_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_ERROR, "No PHASEPrivateReverbPreset matches kPlate", v29, 2u);
  }

  return v26;
}

const char *re::audio::phasePrivateReverbPresetName(uint64_t a1)
{
  v1 = "None";
  if (a1 <= 1917547629)
  {
    if (a1 > 1917152817)
    {
      if (a1 > 1917152821)
      {
        v2 = 1917152823;
        v16 = "Environment09";
        if (a1 != 1917152825)
        {
          v16 = "None";
        }

        if (a1 == 1917152824)
        {
          v4 = "Environment08";
        }

        else
        {
          v4 = v16;
        }

        v5 = "Environment06";
        v6 = a1 == 1917152823;
        v7 = "Environment07";
        v11 = 28214;
      }

      else
      {
        v2 = 1917152819;
        v10 = "Environment05";
        if (a1 != 1917152821)
        {
          v10 = "None";
        }

        if (a1 == 1917152820)
        {
          v4 = "Environment04";
        }

        else
        {
          v4 = v10;
        }

        v5 = "Environment02";
        v6 = a1 == 1917152819;
        v7 = "Environment03";
        v11 = 28210;
      }
    }

    else
    {
      if (a1 <= 1917137199)
      {
        v2 = 1917022061;
        v3 = "Cathedral";
        if (a1 != 1917023336)
        {
          v3 = "None";
        }

        if (a1 == 1917022062)
        {
          v4 = "ConcertHall";
        }

        else
        {
          v4 = v3;
        }

        v5 = "VerySmallRoomBright";
        v6 = a1 == 1917020526;
        v7 = "MediumRoomDry";
        v8 = 1916952948;
        goto LABEL_58;
      }

      v2 = 1917137201;
      v14 = "Environment01";
      if (a1 != 1917152817)
      {
        v14 = "None";
      }

      if (a1 == 1917137202)
      {
        v4 = "Environment12";
      }

      else
      {
        v4 = v14;
      }

      v5 = "Environment10";
      v6 = a1 == 1917137201;
      v7 = "Environment11";
      v11 = 12592;
    }

    v8 = v11 | 0x72450000u;
    goto LABEL_58;
  }

  if (a1 <= 1917613681)
  {
    if (a1 <= 1917604401)
    {
      v2 = 1917601840;
      v9 = "LargeHall2";
      if (a1 != 1917601842)
      {
        v9 = "None";
      }

      if (a1 == 1917601841)
      {
        v4 = "LargeHall";
      }

      else
      {
        v4 = v9;
      }

      v5 = "SmallRoomBright";
      v6 = a1 == 1917600616;
      v7 = "LargeChamber";
      v8 = 1917547630;
      goto LABEL_58;
    }

    v2 = 1917604403;
    v15 = "MediumRoomTreated";
    if (a1 != 1917612653)
    {
      v15 = "None";
    }

    if (a1 == 1917604404)
    {
      v4 = "LargeRoomTreated";
    }

    else
    {
      v4 = v15;
    }

    v5 = "LargeRoom2";
    v6 = a1 == 1917604403;
    v7 = "LargeRoom";
    v13 = 21042;
LABEL_44:
    v8 = v13 | 0x724C0000u;
    goto LABEL_58;
  }

  if (a1 <= 1917667378)
  {
    v2 = 1917667376;
    v12 = "MediumHall2";
    if (a1 != 1917667378)
    {
      v12 = "None";
    }

    if (a1 == 1917667377)
    {
      v4 = "MediumHall";
    }

    else
    {
      v4 = v12;
    }

    v5 = "SmallRoom";
    v6 = a1 == 1917666152;
    v7 = "MediumChamber";
    v13 = 30322;
    goto LABEL_44;
  }

  v2 = 1917678444;
  v17 = "Outside";
  if (a1 != 1917810036)
  {
    v17 = "None";
  }

  if (a1 == 1917678445)
  {
    v4 = "VeryLargeRoom";
  }

  else
  {
    v4 = v17;
  }

  v5 = "MediumHall3";
  v6 = a1 == 1917669997;
  v7 = "MediumRoom";
  v8 = 1917667379;
LABEL_58:
  if (v6)
  {
    v1 = v7;
  }

  if (a1 == v8)
  {
    v1 = v5;
  }

  if (a1 <= v2)
  {
    return v1;
  }

  else
  {
    return v4;
  }
}

void sub_1E215ADFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v6 - 144));

  _Unwind_Resume(a1);
}

void sub_1E215BC10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  v28 = v25;

  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

_BYTE *re::audio::AudioFileAssetReader::init(_BYTE *this, re::SeekableInputStream *a2, char a3)
{
  v5 = this;
  v6 = *this;
  if (*this && this[8] == 1)
  {
    v7 = re::globalAllocators(this)[2];
    (**v6)(v6);
    this = (*(*v7 + 40))(v7, v6);
  }

  *v5 = a2;
  v5[8] = a3;
  return this;
}

uint64_t re::audio::CanStreamAudioFiles(re::audio *this)
{
  if (qword_1EE19D120 != -1)
  {
    dispatch_once(&qword_1EE19D120, &__block_literal_global_8);
  }

  return _MergedGlobals_120;
}

uint64_t ___ZN2re5audio19CanStreamAudioFilesEv_block_invoke()
{
  result = [MEMORY[0x1E6958408] instancesRespondToSelector:sel_initForReadingFromExtAudioFile_error_];
  _MergedGlobals_120 = result;
  return result;
}

uint64_t re::audio::ConvertBufferFrameLength(re::audio *this, unsigned int a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if (this)
  {
    v6 = a2;
    v7 = a3 * a2;
    if ((a3 * a2) >> 64 == v7 >> 63)
    {
      v8 = 0;
      *a4 = v7 / this;
      return v8;
    }

    v8 = 1685348671;
    v9 = *re::audioLogObjects(this);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = 134218240;
      v16 = a3;
      v17 = 2048;
      v18 = v6;
      v10 = "ConvertBufferFrameLength: frame length (%lld) * buffer sample rate (%lld) overflows SInt64";
      v11 = v9;
      v12 = 22;
LABEL_7:
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v10, &v15, v12);
    }
  }

  else
  {
    v8 = 1685348671;
    v13 = *re::audioLogObjects(this);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      v10 = "ConvertBufferFrameLength: invalid file sample rate = 0";
      v11 = v13;
      v12 = 2;
      goto LABEL_7;
    }
  }

  return v8;
}

void re::audio::AudioFileAssetReader::~AudioFileAssetReader(re::audio::AudioFileAssetReader *this)
{
  v1 = this;
  v2 = *this;
  if (*this)
  {
    if (*(this + 8) == 1)
    {
      v3 = re::globalAllocators(this)[2];
      (**v2)(v2);
      this = (*(*v3 + 40))(v3, v2);
    }

    *v1 = 0;
  }

  v4 = *(v1 + 2);
  if (v4)
  {
    v5 = re::globalAllocators(this)[2];
    re::SeekableInputStreamBufferedReader::~SeekableInputStreamBufferedReader(v4);
    (*(*v5 + 40))(v5, v4);
    *(v1 + 2) = 0;
  }

  v6 = *(v1 + 3);
  if (v6)
  {
    AudioFileClose(v6);
    *(v1 + 3) = 0;
  }

  v7 = *(v1 + 4);
  if (v7)
  {
    ExtAudioFileDispose(v7);
    *(v1 + 4) = 0;
  }

  v8 = *(v1 + 6);
  *(v1 + 6) = 0;
}

uint64_t re::audio::AudioFileAssetReader::createExtAudioFile(AudioFileID *this)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = AudioFileOpenWithCallbacks(this, re::audio::AudioFileAssetReader::readProc, 0, re::audio::AudioFileAssetReader::getSizeProc, 0, 0x6D346166u, this + 3);
  if (v2)
  {
    v3 = v2;
    v4 = *re::audioLogObjects(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v3;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Failed to read audio file, err = %d", buf, 8u);
    }

    return v3;
  }

  v5 = ExtAudioFileWrapAudioFileID(this[3], 0, this + 4);
  if (v5)
  {
    v3 = v5;
    v6 = *re::audioLogObjects(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v3;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Failed to read audio file, err = %d", buf, 8u);
    }

    AudioFileClose(this[3]);
    return v3;
  }

  outSize = 0;
  PropertyInfo = ExtAudioFileGetPropertyInfo(this[4], 0x66636C6Fu, &outSize, 0);
  v3 = PropertyInfo;
  if (PropertyInfo)
  {
    v8 = *re::audioLogObjects(PropertyInfo);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v3;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Failed to get property info for file channel layout. err = %d", buf, 8u);
    }

    ExtAudioFileDispose(this[4]);
    AudioFileClose(this[3]);
    return v3;
  }

  v9 = malloc_type_malloc(outSize, 0x1000040E0EAB150uLL);
  Property = ExtAudioFileGetProperty(this[4], 0x66636C6Fu, &outSize, v9);
  v3 = Property;
  if (!Property)
  {
    v12 = *v9;
    if (*v9)
    {
LABEL_18:
      *v45 = 0x96C70636DLL;
      *buf = 48000.0;
      v49 = 32;
      v47 = 4 * v12;
      v48 = v12;
      *&v45[8] = 4 * v12;
      v46 = 1;
      ioPropertyDataSize = 40;
      v13 = ExtAudioFileGetProperty(this[4], 0x66666D74u, &ioPropertyDataSize, outPropertyData);
      v3 = v13;
      if (v13)
      {
        v14 = *re::audioLogObjects(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *v40 = 67109120;
          *&v40[4] = v3;
          _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "Failed to get file data format. err = %d", v40, 8u);
        }

LABEL_35:
        ExtAudioFileDispose(this[4]);
        AudioFileClose(this[3]);
        goto LABEL_36;
      }

      v17 = ExtAudioFileSetProperty(this[4], 0x63666D74u, 0x28u, buf);
      v3 = v17;
      if (v17)
      {
        v18 = *re::audioLogObjects(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *v40 = 67109120;
          *&v40[4] = v3;
          _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "Failed to set client memory format. err = %d", v40, 8u);
        }

        goto LABEL_35;
      }

      outSize = 8;
      v20 = ExtAudioFileGetProperty(this[4], 0x2366726Du, &outSize, this + 5);
      v3 = v20;
      if (v20)
      {
        v22 = *re::audioLogObjects(v20);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *v40 = 67109120;
          *&v40[4] = v3;
          _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "Failed to get file length. err = %d", v40, 8u);
        }

        goto LABEL_35;
      }

      v28 = this[5];
      if (v28 < 0)
      {
        v3 = 1685348671;
        v31 = *re::audioLogObjects(v20);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v35 = this[5];
          *v40 = 134218240;
          *&v40[4] = v35;
          v41 = 1024;
          v42 = 1685348671;
          _os_log_error_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_ERROR, "Invalid file length = %lld, err = %d (kAudioFileInvalidFileError)", v40, 0x12u);
        }
      }

      else
      {
        *v40 = 0;
        v29 = re::audio::ConvertBufferFrameLength(outPropertyData[0], *buf, v28, v40, v21);
        v3 = v29;
        if (!v29)
        {
          this[5] = *v40;
          v47 = 4;
          *&v45[4] = 0x400000029;
          v32 = [objc_alloc(MEMORY[0x1E69583D0]) initWithLayout:v9];
          v33 = [objc_alloc(MEMORY[0x1E6958418]) initWithStreamDescription:buf channelLayout:v32];
          v34 = this[6];
          this[6] = v33;

          goto LABEL_36;
        }

        v30 = *re::audioLogObjects(v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *v38 = 67109120;
          v39 = v3;
          _os_log_error_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_ERROR, "Failed to convert buffer frame length, err = %d", v38, 8u);
        }
      }

      this[5] = 0;
      ExtAudioFileDispose(this[4]);
      AudioFileClose(this[3]);
LABEL_36:
      free(v9);
      return v3;
    }

    *v40 = 40;
    v15 = ExtAudioFileGetProperty(this[4], 0x66666D74u, v40, buf);
    v3 = v15;
    if (v15)
    {
      v16 = *re::audioLogObjects(v15);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
LABEL_24:
        ExtAudioFileDispose(this[4]);
        AudioFileClose(this[3]);
        goto LABEL_36;
      }

      LODWORD(outPropertyData[0]) = 67109120;
      HIDWORD(outPropertyData[0]) = v3;
      v25 = "Failed to get property for file data layout. err = %d";
      v26 = v16;
      v27 = 8;
LABEL_51:
      _os_log_error_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_ERROR, v25, outPropertyData, v27);
      goto LABEL_24;
    }

    v12 = v48;
    if (v48 == 1)
    {
      v19 = 6553601;
    }

    else
    {
      if (v48 != 2)
      {
        v24 = *re::audioLogObjects(v15);
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

        LOWORD(outPropertyData[0]) = 0;
        v25 = "Loaded audio file with >2 channels is missing a layout tag.";
        v26 = v24;
        v27 = 2;
        goto LABEL_51;
      }

      v19 = 6619138;
    }

    *v9 = v19;
    goto LABEL_18;
  }

  v11 = *re::audioLogObjects(Property);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v3;
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Failed to get property for file channel layout. err = %d", buf, 8u);
  }

  ExtAudioFileDispose(this[4]);
  AudioFileClose(this[3]);
  if (v9)
  {
    goto LABEL_36;
  }

  return v3;
}

uint64_t re::audio::AudioFileAssetReader::readProc(re::audio::AudioFileAssetReader *this, unint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, unsigned int *a6)
{
  v8 = a3;
  v11 = (*(**this + 64))(*this, a2, a3, a4, a5, a6);
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = v11;
  }

  if (v11 >= v12 + v8)
  {
    v13 = v12 + v8;
  }

  else
  {
    v13 = v11;
  }

  if (v13 <= a2)
  {
    v17 = *re::audioLogObjects(v11);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "AudioFileAssetReader::readProc() invalid request.", v18, 2u);
    }

    result = 4294967256;
    if (a5)
    {
      v15 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    (*(**this + 56))(*this, v12);
    v14 = (*(**this + 104))(*this, v13 - v12, a4);
    if (a5)
    {
      v15 = v14;
      result = 0;
LABEL_14:
      *a5 = v15;
      return result;
    }

    return 0;
  }

  return result;
}

id re::audio::AudioFileAssetReader::readFromData(re::audio::AudioFileAssetReader *this)
{
  v37 = *MEMORY[0x1E69E9840];
  ExtAudioFile = re::audio::AudioFileAssetReader::createExtAudioFile(this);
  if (ExtAudioFile)
  {
    v3 = 0;
    goto LABEL_32;
  }

  v4 = *re::audioLogObjects(ExtAudioFile);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v30 = *(this + 5);
    ioData.mNumberBuffers = 134217984;
    *(&ioData.mNumberBuffers + 1) = v30;
    _os_log_debug_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEBUG, "About to read %lld samples into memory", &ioData, 0xCu);
  }

  v5 = [objc_alloc(MEMORY[0x1E6958440]) initWithPCMFormat:*(this + 6) frameCapacity:*(this + 10)];
  [v5 setFrameLength:*(this + 10)];
  v6 = [v5 mutableAudioBufferList];
  v7 = *(this + 10);
  ioNumberFrames = v7;
  v8 = [*(this + 6) channelCount];
  v9 = v8;
  if (v8 == 1)
  {
    v10 = ExtAudioFileRead(*(this + 4), &ioNumberFrames, v6);
    v11 = v10;
    if (v10)
    {
      v12 = *re::audioLogObjects(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        ioData.mNumberBuffers = 67109120;
        *(&ioData.mNumberBuffers + 1) = v11;
        _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Failed to read the audio samples. err = %d", &ioData, 8u);
      }

      v3 = 0;
      goto LABEL_31;
    }

    [v5 setFrameLength:ioNumberFrames];
  }

  else
  {
    v31 = v5;
    v13 = v8 << 12;
    v14 = malloc_type_malloc(v8 << 12, 0x100004052888210uLL);
    ioData.mNumberBuffers = 1;
    ioData.mBuffers[0].mNumberChannels = v9;
    ioData.mBuffers[0].mDataByteSize = v13;
    ioData.mBuffers[0].mData = v14;
    if (v7)
    {
      v15 = 0;
      p_mData = &v6->mBuffers[0].mData;
      v17 = v7;
      while (1)
      {
        v18 = v17 >= 0x400 ? 1024 : v17;
        v32 = v18;
        v19 = ExtAudioFileRead(*(this + 4), &v32, &ioData);
        v20 = v19;
        if (v19)
        {
          break;
        }

        v21 = v32;
        if (!v32)
        {
          [v31 setFrameLength:v7 - v17];
          goto LABEL_29;
        }

        v22 = v32 + v15;
        v23 = v14;
        do
        {
          if (v9)
          {
            v24 = p_mData;
            v25 = v9;
            do
            {
              v27 = *v24;
              v24 += 2;
              v26 = v27;
              LODWORD(v27) = *v23++;
              v26[v15] = v27;
              --v25;
            }

            while (v25);
          }

          ++v15;
        }

        while (v15 != v22);
        v15 = v22;
        v17 -= v21;
        if (!v17)
        {
          goto LABEL_29;
        }
      }

      v28 = *re::audioLogObjects(v19);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v35 = v20;
        _os_log_error_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_ERROR, "Failed to read the audio samples. err = %d", buf, 8u);
      }

      free(v14);
      v3 = 0;
      v5 = v31;
      goto LABEL_31;
    }

LABEL_29:
    free(v14);
    v5 = v31;
  }

  v3 = v5;
LABEL_31:

LABEL_32:

  return v3;
}

BOOL re::audio::AudioFileAssetWriter::writeToStreamWithDefaultCompression(id *this)
{
  v2 = [*this format];
  v3 = [v2 streamDescription];

  inFormat.mSampleRate = 48000.0;
  mChannelsPerFrame = v3->mChannelsPerFrame;
  *&inFormat.mBitsPerChannel = 0;
  inFormat.mBytesPerFrame = 0;
  inFormat.mChannelsPerFrame = mChannelsPerFrame;
  *&inFormat.mFormatID = xmmword_1E3064910;
  return re::audio::AudioFileAssetWriter::writeToStream(this, v3, &inFormat, 0x6D346166u);
}

BOOL re::audio::AudioFileAssetWriter::writeToStream(id *this, const AudioStreamBasicDescription *a2, AudioStreamBasicDescription *inFormat, AudioFileTypeID inFileType)
{
  v36 = *MEMORY[0x1E69E9840];
  outExtAudioFile = 0;
  inFileID = 0;
  v6 = AudioFileInitializeWithCallbacks(this, re::audio::AudioFileAssetWriter::readProc, re::audio::AudioFileAssetWriter::writeProc, re::audio::AudioFileAssetWriter::getSizeProc, re::audio::AudioFileAssetWriter::setSizeProc, inFileType, inFormat, 0, &inFileID);
  v7 = v6;
  if (!v6)
  {
    v10 = ExtAudioFileWrapAudioFileID(inFileID, 1u, &outExtAudioFile);
    v11 = v10;
    if (v10)
    {
      v12 = *re::audioLogObjects(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v35 = v11;
        _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Failed to open ExtAudioFile for writing. Err = %d", buf, 8u);
      }

      AudioFileClose(inFileID);
      return 0;
    }

    v13 = [*this format];
    v14 = [v13 channelLayout];
    v15 = [v14 layout];

    if (!v15)
    {
LABEL_36:
      v23 = ExtAudioFileSetProperty(outExtAudioFile, 0x63666D74u, 0x28u, a2);
      v24 = v23;
      if (v23)
      {
        v25 = *re::audioLogObjects(v23);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v35 = v24;
          _os_log_error_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_ERROR, "Failed to set client data format. Err = %d", buf, 8u);
        }
      }

      else
      {
        v26 = ExtAudioFileSetProperty(outExtAudioFile, 0x63636C6Fu, 0x20u, v15);
        v27 = v26;
        if (v26)
        {
          v28 = *re::audioLogObjects(v26);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v35 = v27;
            _os_log_error_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_ERROR, "Failed to set client channel layout. Err = %d", buf, 8u);
          }
        }

        else
        {
          v29 = ExtAudioFileWrite(outExtAudioFile, [*this frameLength], objc_msgSend(*this, "audioBufferList"));
          v30 = v29;
          if (!v29)
          {
            ExtAudioFileDispose(outExtAudioFile);
            AudioFileClose(inFileID);
            (*(*this[1] + 16))(this[1], this[2], this[3] - this[2]);
            return 1;
          }

          v31 = *re::audioLogObjects(v29);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v35 = v30;
            _os_log_error_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_ERROR, "Failed to write audio buffer data. Err = %d", buf, 8u);
          }
        }
      }

      ExtAudioFileDispose(outExtAudioFile);
      AudioFileClose(inFileID);
      return 0;
    }

    v16 = *v15;
    if (v16 <= 9240581)
    {
      if (v16 > 7864324)
      {
        if (v16 == 7864325 || v16 == 8126470)
        {
          goto LABEL_31;
        }

        v17 = 8323080;
      }

      else
      {
        if (v16 == 7077892 || v16 == 7471107)
        {
          goto LABEL_31;
        }

        v17 = 7602180;
      }
    }

    else
    {
      if (v16 > 9437191)
      {
        if (v16 > 12058631)
        {
          if (v16 != 12058632)
          {
            if (v16 != 12386312)
            {
              goto LABEL_36;
            }

            v16 = 11993096;
          }

          goto LABEL_31;
        }

        if (v16 != 9437192)
        {
          v17 = 11993096;
          goto LABEL_26;
        }

LABEL_31:
        v18 = [objc_alloc(MEMORY[0x1E69583D0]) initWithLayoutTag:v16];
        v19 = [v18 layout];
        v20 = ExtAudioFileSetProperty(outExtAudioFile, 0x66636C6Fu, 0x20u, v19);
        v21 = v20;
        if (v20)
        {
          v22 = *re::audioLogObjects(v20);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v35 = v21;
            _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "Failed to set file channel layout. Err = %d", buf, 8u);
          }

          ExtAudioFileDispose(outExtAudioFile);
          AudioFileClose(inFileID);

          return 0;
        }

        goto LABEL_36;
      }

      if (v16 == 9240582 || v16 == 9306119)
      {
        goto LABEL_31;
      }

      v17 = 9371655;
    }

LABEL_26:
    if (v16 != v17)
    {
      goto LABEL_36;
    }

    goto LABEL_31;
  }

  v8 = *re::audioLogObjects(v6);
  result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (!result)
  {
    return result;
  }

  *buf = 67109120;
  v35 = v7;
  _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Failed to open AudioFile for writing. Err = %d", buf, 8u);
  return 0;
}

BOOL re::audio::AudioFileAssetWriter::writeToStreamWithCustomOutputDescription(id *a1, AudioStreamBasicDescription *a2, uint64_t a3)
{
  v6 = [*a1 format];
  v7 = [v6 streamDescription];

  if ((a3 & 0x100000000) != 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = 1667327590;
  }

  return re::audio::AudioFileAssetWriter::writeToStream(a1, v7, a2, v8);
}

uint64_t re::audio::AudioFileAssetWriter::readProc(re::audio::AudioFileAssetWriter *this, char *a2, int a3, void *__dst, int *a5, unsigned int *a6)
{
  v6 = *(this + 2);
  v7 = (*(this + 3) - v6);
  if (v7 <= a2)
  {
    return 4294967256;
  }

  if (v7 >= &a2[a3])
  {
    v7 = &a2[a3];
  }

  v9 = v7 - a2;
  memcpy(__dst, &a2[v6], v7 - a2);
  result = 0;
  if (a5)
  {
    *a5 = v9;
  }

  return result;
}

uint64_t re::audio::AudioFileAssetWriter::writeProc(re::audio::AudioFileAssetWriter *this, char *a2, size_t __n, void *__src, _DWORD *a5, unsigned int *a6)
{
  v8 = __n;
  v10 = __n;
  v11 = *(this + 2);
  v12 = (this + 16);
  v13 = *(this + 3) - v11;
  v14 = &a2[__n];
  if (v14 > v13)
  {
    std::vector<unsigned char>::__append(this + 2, &v14[-v13]);
    v11 = *v12;
  }

  memcpy(&a2[v11], __src, v10);
  if (a5)
  {
    *a5 = v8;
  }

  return 0;
}

uint64_t re::audio::AudioFileAssetWriter::getSizeProc(re::audio::AudioFileAssetWriter *this, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3) - *(this + 2);
  v3 = *re::audioLogObjects(this);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 134217984;
    v6 = v2;
    _os_log_debug_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEBUG, "AudioFileAsset.writer.getSize() -> %lld", &v5, 0xCu);
  }

  return v2;
}

uint64_t re::audio::AudioFileAssetWriter::setSizeProc(char **this, char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *re::audioLogObjects(this);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = 134217984;
    v9 = a2;
    _os_log_debug_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEBUG, "AudioFileAsset.writer.setSize(%lld)", &v8, 0xCu);
  }

  v5 = this[2];
  v6 = this[3] - v5;
  if (a2 <= v6)
  {
    if (a2 < v6)
    {
      this[3] = &a2[v5];
    }
  }

  else
  {
    std::vector<unsigned char>::__append(this + 2, &a2[-v6]);
  }

  return 0;
}

void std::vector<unsigned char>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<PHASESource * {__strong}>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void re::AudioManager_PHASE_State_Recovering::~AudioManager_PHASE_State_Recovering(re::AudioManager_PHASE_State_Recovering *this)
{
  *this = &unk_1F5CCC930;
  v1 = (this + 8);
  v2 = *(this + 1);
  v3 = *(this + 2);
  while (v2 != v3)
  {
    v4 = *v2;
    *v2 = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    ++v2;
  }

  std::vector<std::unique_ptr<re::AudioManager_PHASE_StateMachine_RecoveryStep>>::clear[abi:ne200100](v1);
  v5 = v1;
  std::vector<std::unique_ptr<re::AudioManager_PHASE_StateMachine_RecoveryStep>>::__destroy_vector::operator()[abi:ne200100](&v5);
}

{
  re::AudioManager_PHASE_State_Recovering::~AudioManager_PHASE_State_Recovering(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::AudioManager_PHASE_State_Recovering::handleStateChangeEvent(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a2 - 2 < 8)
  {
    v5 = *(*(a1 + 8) + 8 * a2);
    (*(*v5 + 16))(v5, a3, a4);
LABEL_3:
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v6 == v7)
    {
      v9 = 0x100000000;
      v8 = 2;
    }

    else
    {
      v8 = 2;
      while (((*(**v6 + 24))() & 1) != 0)
      {
        v6 += 8;
        if (v6 == v7)
        {
          goto LABEL_14;
        }
      }

      v9 = 0;
      v8 = 0;
    }

    return v8 | v9;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v9 = 0x100000000;
      v8 = 1;
      return v8 | v9;
    }

    goto LABEL_3;
  }

  v8 = 0;
LABEL_14:
  v9 = 0x100000000;
  return v8 | v9;
}

void re::AudioManager_PHASE_State_Recovering::stateDescription(re::AudioManager_PHASE_State_Recovering *this@<X0>, std::string *a2@<X8>)
{
  (*(**(*(this + 1) + 16) + 32))(&v61);
  std::operator+<char>();
  v4 = std::string::append(&v63, "), (");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v64.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v64.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  (*(**(*(this + 1) + 24) + 32))(v59);
  if ((v60 & 0x80u) == 0)
  {
    v6 = v59;
  }

  else
  {
    v6 = v59[0];
  }

  if ((v60 & 0x80u) == 0)
  {
    v7 = v60;
  }

  else
  {
    v7 = v59[1];
  }

  v8 = std::string::append(&v64, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v65.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v65.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v65, "), (");
  v11 = *&v10->__r_.__value_.__l.__data_;
  v66.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v66.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  (*(**(*(this + 1) + 40) + 32))(v57);
  if ((v58 & 0x80u) == 0)
  {
    v12 = v57;
  }

  else
  {
    v12 = v57[0];
  }

  if ((v58 & 0x80u) == 0)
  {
    v13 = v58;
  }

  else
  {
    v13 = v57[1];
  }

  v14 = std::string::append(&v66, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v67.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v67.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v67, "), (");
  v17 = *&v16->__r_.__value_.__l.__data_;
  v68.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v68.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  (*(**(*(this + 1) + 48) + 32))(v55);
  if ((v56 & 0x80u) == 0)
  {
    v18 = v55;
  }

  else
  {
    v18 = v55[0];
  }

  if ((v56 & 0x80u) == 0)
  {
    v19 = v56;
  }

  else
  {
    v19 = v55[1];
  }

  v20 = std::string::append(&v68, v18, v19);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v69.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v69.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v69, "), (");
  v23 = *&v22->__r_.__value_.__l.__data_;
  v70.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v70.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  (*(**(*(this + 1) + 32) + 32))(v53);
  if ((v54 & 0x80u) == 0)
  {
    v24 = v53;
  }

  else
  {
    v24 = v53[0];
  }

  if ((v54 & 0x80u) == 0)
  {
    v25 = v54;
  }

  else
  {
    v25 = v53[1];
  }

  v26 = std::string::append(&v70, v24, v25);
  v27 = *&v26->__r_.__value_.__l.__data_;
  v71.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v71.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  v28 = std::string::append(&v71, "), (");
  v29 = *&v28->__r_.__value_.__l.__data_;
  v72.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v72.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  (*(**(*(this + 1) + 56) + 32))(v51);
  if ((v52 & 0x80u) == 0)
  {
    v30 = v51;
  }

  else
  {
    v30 = v51[0];
  }

  if ((v52 & 0x80u) == 0)
  {
    v31 = v52;
  }

  else
  {
    v31 = v51[1];
  }

  v32 = std::string::append(&v72, v30, v31);
  v33 = *&v32->__r_.__value_.__l.__data_;
  v73.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v73.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  v34 = std::string::append(&v73, "), (");
  v35 = *&v34->__r_.__value_.__l.__data_;
  v74.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
  *&v74.__r_.__value_.__l.__data_ = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  (*(**(*(this + 1) + 64) + 32))(v49);
  if ((v50 & 0x80u) == 0)
  {
    v36 = v49;
  }

  else
  {
    v36 = v49[0];
  }

  if ((v50 & 0x80u) == 0)
  {
    v37 = v50;
  }

  else
  {
    v37 = v49[1];
  }

  v38 = std::string::append(&v74, v36, v37);
  v39 = *&v38->__r_.__value_.__l.__data_;
  v75.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
  *&v75.__r_.__value_.__l.__data_ = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  v40 = std::string::append(&v75, "), (");
  v41 = *&v40->__r_.__value_.__l.__data_;
  v76.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
  *&v76.__r_.__value_.__l.__data_ = v41;
  v40->__r_.__value_.__l.__size_ = 0;
  v40->__r_.__value_.__r.__words[2] = 0;
  v40->__r_.__value_.__r.__words[0] = 0;
  (*(**(*(this + 1) + 72) + 32))(__p);
  if ((v48 & 0x80u) == 0)
  {
    v42 = __p;
  }

  else
  {
    v42 = __p[0];
  }

  if ((v48 & 0x80u) == 0)
  {
    v43 = v48;
  }

  else
  {
    v43 = __p[1];
  }

  v44 = std::string::append(&v76, v42, v43);
  v45 = *&v44->__r_.__value_.__l.__data_;
  v77.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
  *&v77.__r_.__value_.__l.__data_ = v45;
  v44->__r_.__value_.__l.__size_ = 0;
  v44->__r_.__value_.__r.__words[2] = 0;
  v44->__r_.__value_.__r.__words[0] = 0;
  v46 = std::string::append(&v77, ").");
  *a2 = *v46;
  v46->__r_.__value_.__l.__size_ = 0;
  v46->__r_.__value_.__r.__words[2] = 0;
  v46->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (v48 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (v52 < 0)
  {
    operator delete(v51[0]);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (v54 < 0)
  {
    operator delete(v53[0]);
  }

  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  if (v58 < 0)
  {
    operator delete(v57[0]);
  }

  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  if (v60 < 0)
  {
    operator delete(v59[0]);
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (v62 < 0)
  {
    operator delete(v61);
  }
}

void sub_1E215E928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (*(v84 - 57) < 0)
  {
    operator delete(*(v84 - 80));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v84 - 89) < 0)
  {
    operator delete(*(v84 - 112));
  }

  if (*(v84 - 121) < 0)
  {
    operator delete(*(v84 - 144));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v84 - 153) < 0)
  {
    operator delete(*(v84 - 176));
  }

  if (*(v84 - 185) < 0)
  {
    operator delete(*(v84 - 208));
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v84 - 217) < 0)
  {
    operator delete(*(v84 - 240));
  }

  if (a84 < 0)
  {
    operator delete(a83);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a82 < 0)
  {
    operator delete(a81);
  }

  if (a80 < 0)
  {
    operator delete(a79);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a72 < 0)
  {
    operator delete(a71);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a69 < 0)
  {
    operator delete(a64);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  _Unwind_Resume(a1);
}

void re::AudioManager_PHASE_State_Recovering::getInitialRequiredRecoverySteps(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_1E215ED1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::unique_ptr<re::AudioManager_PHASE_StateMachine_RecoveryStep>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::unique_ptr<re::AudioManager_PHASE_StateMachine_RecoveryStep>>::push_back[abi:ne200100](uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<PHASESource * {__strong}>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v18[4] = result;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<re::AudioManager_PHASE_StateMachine_RecoveryStep>>>(result, v13);
    }

    v14 = (8 * (v9 >> 3));
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v16 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::unique_ptr<re::AudioManager_PHASE_StateMachine_RecoveryStep>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

re::REPHASESpatialMixerDefinitionCache *re::REPHASESpatialMixerDefinitionCache::REPHASESpatialMixerDefinitionCache(re::REPHASESpatialMixerDefinitionCache *this)
{
  *this = 0;
  *(this + 1) = 0;
  v2 = (this + 8);
  *(this + 2) = 0;
  v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v4 = *v2;
  *v2 = v3;

  [*v2 setTotalCostLimit:50];
  v6 = re::REPHASESpatialMixerDefinitionCache::createSpatialPipeline(@"reverbSend", &cfstr_Directsend.isa, v5);
  v7 = *(this + 2);
  *(this + 2) = v6;

  return this;
}

id re::REPHASESpatialMixerDefinitionCache::createSpatialPipeline(re::REPHASESpatialMixerDefinitionCache *this, NSString *a2, NSString *a3)
{
  v4 = this;
  v5 = a2;
  v6 = [objc_alloc(MEMORY[0x1E69781E0]) initWithValue:v4 minimum:1.0 maximum:0.0 identifier:10.0];
  v7 = [objc_alloc(MEMORY[0x1E69781E0]) initWithValue:v5 minimum:1.0 maximum:0.0 identifier:1.0];
  v8 = [objc_alloc(MEMORY[0x1E6978230]) initWithFlags:7];
  v9 = [v8 entries];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E6978278]];
  [v10 setSendLevelMetaParameterDefinition:v6];

  v11 = [v8 entries];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E6978270]];
  [v12 setSendLevelMetaParameterDefinition:v6];

  v13 = [v8 entries];
  v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E6978268]];
  [v14 setSendLevelMetaParameterDefinition:v7];

  return v8;
}

void sub_1E215F0DC(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

id re::REPHASESpatialMixerDefinitionCache::getFromCacheOrCreateAndCache(uint64_t a1, void *a2, unsigned int a3, uint64_t a4)
{
  v7 = a2;
  v8 = [*(a1 + 8) objectForKey:v7];
  if (!v8)
  {
    v9 = *(a4 + 24);
    if (!v9)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v8 = (*(*v9 + 48))(v9);
    if (v8)
    {
      [*(a1 + 8) setObject:v8 forKey:v7 cost:a3];
    }
  }

  v10 = v8;

  return v10;
}

id re::REPHASESpatialMixerDefinitionCache::getOmniSpatialMixerDefinition(uint64_t a1, uint64_t a2)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %llu", @"Omnidirectional", *(*a2 + 24)];
  v7[0] = &unk_1F5CCC998;
  v7[1] = a1;
  v7[2] = a2;
  v7[3] = v7;
  v5 = re::REPHASESpatialMixerDefinitionCache::getFromCacheOrCreateAndCache(a1, v4, 0, v7);
  std::__function::__value_func<PHASESpatialMixerDefinition * ()(void)>::~__value_func[abi:ne200100](v7);

  return v5;
}

void sub_1E215F328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<PHASESpatialMixerDefinition * ()(void)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void re::REPHASESpatialMixerDefinitionCache::getSphericalSpatialMixerDefinition(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v5 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AEC0] stringWithFormat:@"Spherical with radius %.2f and opening angle %.2f %llu", *&a1, *&a2, *(*a4 + 24), *&a2, *&a1];
  objc_claimAutoreleasedReturnValue();
  v4 = 0;
  operator new();
}

void sub_1E215F460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<PHASESpatialMixerDefinition * ()(void)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

id re::REPHASESpatialMixerDefinitionCache::getBeamSpatialMixerDefinition(uint64_t a1, uint64_t *a2, double a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (a3 > 0.0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Beam with focus: %.2f", *&a3];
    objc_claimAutoreleasedReturnValue();
    v9 = 0;
    operator new();
  }

  v3 = a2[1];
  v6 = *a2;
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = re::REPHASESpatialMixerDefinitionCache::getOmniSpatialMixerDefinition(a1, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  return v4;
}

void sub_1E215F5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<PHASESpatialMixerDefinition * ()(void)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

id re::REPHASESpatialMixerDefinitionCache::createBaseSpatialMixerDefinition(re::REPHASESpatialMixerDefinitionCache *this, NSString *a2, NSString *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"spatialMixer-%d", *this];
  v9 = re::REPHASESpatialMixerDefinitionCache::createSpatialPipeline(v5, v6, v8);
  v10 = [objc_alloc(MEMORY[0x1E6978228]) initWithSpatialPipeline:v9 identifier:v7];
  v11 = objc_alloc_init(MEMORY[0x1E69781B8]);
  [v10 setDistanceModelParameters:v11];

  ++*this;

  return v10;
}

uint64_t std::__function::__value_func<PHASESpatialMixerDefinition * ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 std::__function::__func<re::REPHASESpatialMixerDefinitionCache::getOmniSpatialMixerDefinition(std::shared_ptr<re::audio::REPHASESoundPrepareState>)::$_0,std::allocator<re::REPHASESpatialMixerDefinitionCache::getOmniSpatialMixerDefinition(std::shared_ptr<re::audio::REPHASESoundPrepareState>)::$_0>,PHASESpatialMixerDefinition * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCC998;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

id std::__function::__func<re::REPHASESpatialMixerDefinitionCache::getOmniSpatialMixerDefinition(std::shared_ptr<re::audio::REPHASESoundPrepareState>)::$_0,std::allocator<re::REPHASESpatialMixerDefinitionCache::getOmniSpatialMixerDefinition(std::shared_ptr<re::audio::REPHASESoundPrepareState>)::$_0>,PHASESpatialMixerDefinition * ()(void)>::operator()(uint64_t a1)
{
  v1 = re::REPHASESpatialMixerDefinitionCache::createBaseSpatialMixerDefinition(*(a1 + 8), *(**(a1 + 16) + 336), *(**(a1 + 16) + 344));
  v2 = *re::audioLogObjects([v1 setSourceDirectivityModelParameters:0]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_INFO, "REPHASESpatialMixerDefinitionCache::getOmniSpatialMixerDefinition created and cached a new omnidirectional spatial mixer definition.", v4, 2u);
  }

  return v1;
}

uint64_t std::__function::__func<re::REPHASESpatialMixerDefinitionCache::getOmniSpatialMixerDefinition(std::shared_ptr<re::audio::REPHASESoundPrepareState>)::$_0,std::allocator<re::REPHASESpatialMixerDefinitionCache::getOmniSpatialMixerDefinition(std::shared_ptr<re::audio::REPHASESoundPrepareState>)::$_0>,PHASESpatialMixerDefinition * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<re::REPHASESpatialMixerDefinitionCache::getSphericalSpatialMixerDefinition(double,double,std::shared_ptr<re::audio::REPHASESoundPrepareState>)::$_0,std::allocator<re::REPHASESpatialMixerDefinitionCache::getSphericalSpatialMixerDefinition(double,double,std::shared_ptr<re::audio::REPHASESoundPrepareState>)::$_0>,PHASESpatialMixerDefinition * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCCA18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

id std::__function::__func<re::REPHASESpatialMixerDefinitionCache::getSphericalSpatialMixerDefinition(double,double,std::shared_ptr<re::audio::REPHASESoundPrepareState>)::$_0,std::allocator<re::REPHASESpatialMixerDefinitionCache::getSphericalSpatialMixerDefinition(double,double,std::shared_ptr<re::audio::REPHASESoundPrepareState>)::$_0>,PHASESpatialMixerDefinition * ()(void)>::operator()(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 24);
  v3 = objc_alloc_init(MEMORY[0x1E6978238]);
  [v3 setSphereRadius:**(a1 + 8)];
  [v3 setCapOpeningAngle:**(a1 + 16)];
  v4 = re::REPHASESpatialMixerDefinitionCache::createBaseSpatialMixerDefinition(v2, *(**(a1 + 32) + 336), *(**(a1 + 32) + 344));
  v5 = *re::audioLogObjects([v4 setSourceDirectivityModelParameters:v3]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = **(a1 + 8);
    v7 = **(a1 + 16);
    v9 = 134218240;
    v10 = v6;
    v11 = 2048;
    v12 = v7;
    _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_INFO, "REPHASESpatialMixerDefinitionCache::getSphericalSpatialMixerDefinition created and cached a definition for radius %f and opening angle %f.", &v9, 0x16u);
  }

  return v4;
}

uint64_t std::__function::__func<re::REPHASESpatialMixerDefinitionCache::getSphericalSpatialMixerDefinition(double,double,std::shared_ptr<re::audio::REPHASESoundPrepareState>)::$_0,std::allocator<re::REPHASESpatialMixerDefinitionCache::getSphericalSpatialMixerDefinition(double,double,std::shared_ptr<re::audio::REPHASESoundPrepareState>)::$_0>,PHASESpatialMixerDefinition * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

id anonymous namespace::directivityModelParametersForBeamFocus(_anonymous_namespace_ *this, double a2)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = 1.0;
  if (a2 <= 1.0)
  {
    v2 = a2;
  }

  if (a2 >= 0.0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = objc_alloc_init(MEMORY[0x1E6978180]);
  [v4 setFrequency:250.0];
  [v4 setPattern:v3 * 0.25];
  [v4 setSharpness:1.0];
  v5 = objc_alloc_init(MEMORY[0x1E6978180]);
  [v5 setFrequency:1000.0];
  [v5 setPattern:v3 * 0.5];
  [v5 setSharpness:1.0];
  v6 = objc_alloc_init(MEMORY[0x1E6978180]);
  [v6 setFrequency:4000.0];
  if (v3 >= 0.5)
  {
    [v6 setPattern:?];
    v7 = v3 + -0.5 + v3 + -0.5;
    [v6 setSharpness:((1.0 - v7) + (v7 * 10.0))];
  }

  else
  {
    [v6 setPattern:v3];
    [v6 setSharpness:1.0];
  }

  v8 = objc_alloc(MEMORY[0x1E6978178]);
  v12[0] = v4;
  v12[1] = v5;
  v12[2] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
  v10 = [v8 initWithSubbandParameters:v9];

  return v10;
}

__n128 std::__function::__func<re::REPHASESpatialMixerDefinitionCache::getBeamSpatialMixerDefinition(double,std::shared_ptr<re::audio::REPHASESoundPrepareState>)::$_0,std::allocator<re::REPHASESpatialMixerDefinitionCache::getBeamSpatialMixerDefinition(double,std::shared_ptr<re::audio::REPHASESoundPrepareState>)::$_0>,PHASESpatialMixerDefinition * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCCA98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

_anonymous_namespace_ *std::__function::__func<re::REPHASESpatialMixerDefinitionCache::getBeamSpatialMixerDefinition(double,std::shared_ptr<re::audio::REPHASESoundPrepareState>)::$_0,std::allocator<re::REPHASESpatialMixerDefinitionCache::getBeamSpatialMixerDefinition(double,std::shared_ptr<re::audio::REPHASESoundPrepareState>)::$_0>,PHASESpatialMixerDefinition * ()(void)>::operator()(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = re::REPHASESpatialMixerDefinitionCache::createBaseSpatialMixerDefinition(*(a1 + 8), *(**(a1 + 16) + 336), *(**(a1 + 16) + 344));
  v3 = objc_claimAutoreleasedReturnValue();
  [(_anonymous_namespace_ *)v2 setSourceDirectivityModelParameters:v3];

  v5 = *re::audioLogObjects(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = **(a1 + 24);
    v8 = 134217984;
    v9 = v6;
    _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_INFO, "REPHASESpatialMixerDefinitionCache::getBeamSpatialMixerDefinition created and cached a definition with focus %f.", &v8, 0xCu);
  }

  return v2;
}

uint64_t std::__function::__func<re::REPHASESpatialMixerDefinitionCache::getBeamSpatialMixerDefinition(double,std::shared_ptr<re::audio::REPHASESoundPrepareState>)::$_0,std::allocator<re::REPHASESpatialMixerDefinitionCache::getBeamSpatialMixerDefinition(double,std::shared_ptr<re::audio::REPHASESoundPrepareState>)::$_0>,PHASESpatialMixerDefinition * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::shared_ptr<re::audio::REPHASEEntity>::shared_ptr[abi:ne200100]<re::audio::REPHASEEntity,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1E2160088(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<re::audio::REPHASEEntity>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

id **std::unique_ptr<re::audio::REPHASEEntity>::~unique_ptr[abi:ne200100](id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    re::audio::REPHASEEntity::~REPHASEEntity(v2);
    MEMORY[0x1E6906520]();
  }

  return a1;
}

void std::__shared_ptr_pointer<re::audio::REPHASEEntity *,std::shared_ptr<re::audio::REPHASEEntity>::__shared_ptr_default_delete<re::audio::REPHASEEntity,re::audio::REPHASEEntity>,std::allocator<re::audio::REPHASEEntity>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

id *std::__shared_ptr_pointer<re::audio::REPHASEEntity *,std::shared_ptr<re::audio::REPHASEEntity>::__shared_ptr_default_delete<re::audio::REPHASEEntity,re::audio::REPHASEEntity>,std::allocator<re::audio::REPHASEEntity>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    re::audio::REPHASEEntity::~REPHASEEntity(result);

    JUMPOUT(0x1E6906520);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<re::audio::REPHASEEntity *,std::shared_ptr<re::audio::REPHASEEntity>::__shared_ptr_default_delete<re::audio::REPHASEEntity,re::audio::REPHASEEntity>,std::allocator<re::audio::REPHASEEntity>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void re::audio::REPHASEEntity::~REPHASEEntity(id *this)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(this + 28) <= 0)
  {
    v4 = [this[2] parent];
    [v4 removeChild:this[2]];

    v5 = [this[3] parent];
    [v5 removeChild:this[3]];
  }

  else
  {
    v2 = *re::audioLogObjects(this);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(this + 28);
      v7[0] = 67109120;
      v7[1] = v3;
      _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "REPHASEEntity: Cannot destroy source and occluder from the engine. soundCount(%d) is greater than 0", v7, 8u);
    }
  }

  v6 = this[1];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_1E21602B8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t re::AudioManager_PHASE_State_Ready::handleStateChangeEvent(re *a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if ((a2 - 1) >= 9)
  {
    if (!a2)
    {
      return 0x100000000;
    }
  }

  else
  {
    v4 = *re::audioLogObjects(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 8))(v12, a1);
      v5 = v13;
      v6 = v12[0];
      re::nameForAudioManagerStateMachineEvent(a2, __p);
      v7 = v12;
      if (v5 < 0)
      {
        v7 = v6;
      }

      if (v11 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *buf = 136315394;
      v15 = v7;
      v16 = 2080;
      v17 = v8;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "[RE/MediaServices] [EngineStateChange] Invalid state change event. Current state : %s, event '%s'.", buf, 0x16u);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      if (v13 < 0)
      {
        operator delete(v12[0]);
      }
    }
  }

  return 0;
}

void sub_1E2160428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E2160668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1E216086C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = REAudioManagerNotificationListener;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1E2160D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v18 - 80) = &a17;
  std::vector<PHASESource * {__strong}>::__destroy_vector::operator()[abi:ne200100]((v18 - 80));

  _Unwind_Resume(a1);
}

void sub_1E2161370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v18 - 80) = &a17;
  std::vector<PHASESource * {__strong}>::__destroy_vector::operator()[abi:ne200100]((v18 - 80));

  _Unwind_Resume(a1);
}

void sub_1E21619D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v18 - 80) = &a17;
  std::vector<PHASESource * {__strong}>::__destroy_vector::operator()[abi:ne200100]((v18 - 80));

  _Unwind_Resume(a1);
}

void *re::audio::allocInfo_AudioSourceDirectivityConfiguration(re::audio *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_121, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_121))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19D158, "AudioSourceDirectivityConfiguration");
    __cxa_guard_release(&_MergedGlobals_121);
  }

  return &unk_1EE19D158;
}

void re::audio::initInfo_AudioSourceDirectivityConfiguration(re::audio *this, re::IntrospectionBase *a2)
{
  v23[0] = 0xE5B34C3C52C3FC9ELL;
  v23[1] = "AudioSourceDirectivityConfiguration";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&qword_1EE19D130, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19D130);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_float(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "directivityFocus";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x400000001;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE19D138 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = introspect_REAudioSourceDirectivityMode(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "sourceDirectivityMode";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 2;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE19D140 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_float(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "sphericalCapDiameter";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE19D148 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_float(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "sphericalCapOpeningAngle";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0xC00000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE19D150 = v21;
      __cxa_guard_release(&qword_1EE19D130);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE19D138;
  *(this + 9) = re::internal::defaultConstruct<re::audio::AudioSourceDirectivityConfiguration>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::audio::AudioSourceDirectivityConfiguration>;
  *(this + 13) = re::internal::defaultConstructV2<re::audio::AudioSourceDirectivityConfiguration>;
  *(this + 14) = re::internal::defaultDestructV2<re::audio::AudioSourceDirectivityConfiguration>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v22 = v24;
}

double re::internal::defaultConstruct<re::audio::AudioSourceDirectivityConfiguration>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 1;
  result = 6.14672757e-10;
  *(a3 + 4) = 0x3E051EB800000000;
  *(a3 + 12) = 1106247680;
  return result;
}

double re::internal::defaultConstructV2<re::audio::AudioSourceDirectivityConfiguration>(uint64_t a1)
{
  *a1 = 1;
  result = 6.14672757e-10;
  *(a1 + 4) = 0x3E051EB800000000;
  *(a1 + 12) = 1106247680;
  return result;
}

void ___ZN2re29AudioManagerTelemetryReporterC2Ev_block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (NSClassFromString(&cfstr_Xctest.isa) || (LODWORD(v34) = 0, v32 = 0u, v33 = 0u, __s2 = 0u, v35 = xmmword_1E30645F0, v36 = xmmword_1E3064600, v37 = xmmword_1E3064610, !memcmp((v1 + 88), &__s2, 0x68uLL)))
  {
    v2 = 0;
  }

  else
  {
    if (*(v1 + 132))
    {
      v4 = *(v1 + 144);
      v3 = *(v1 + 152);
      v5 = *(v1 + 160);
    }

    else
    {
      v5 = -100.0;
      v3 = -100.0;
      v4 = -100.0;
    }

    if (*(v1 + 136))
    {
      v6 = *(v1 + 168);
      v7 = *(v1 + 152);
      v8 = *(v1 + 184);
    }

    else
    {
      v8 = -100.0;
      v7 = -100.0;
      v6 = -100.0;
    }

    v30[0] = @"play";
    *&__s2 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v1 + 88)];
    v30[1] = @"maxConcurrentPlayCount";
    v29 = __s2;
    *(&__s2 + 1) = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v1 + 92)];
    v30[2] = @"prepare";
    v28 = *(&__s2 + 1);
    *&v32 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v1 + 100)];
    v30[3] = @"maxConcurrentPrepareCount";
    v27 = v32;
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v1 + 96)];
    *(&v32 + 1) = v26;
    v30[4] = @"channelComponent";
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v1 + 104)];
    *&v33 = v25;
    v30[5] = @"ambientComponent";
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v1 + 112)];
    *(&v33 + 1) = v24;
    v30[6] = @"spatialComponent";
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v1 + 108)];
    v34 = v23;
    v30[7] = @"spatialComponentOmniCount";
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v1 + 116)];
    *&v35 = v22;
    v30[8] = @"spatialComponentBeamDirectivityCount";
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v1 + 120)];
    *(&v35 + 1) = v21;
    v30[9] = @"spatialComponentSphericalApproximationDirectivityCount";
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v1 + 124)];
    *&v36 = v20;
    v30[10] = @"calibrationModeNoneCount";
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v1 + 128)];
    *(&v36 + 1) = v19;
    v30[11] = @"calibrationModeRelativeSplCount";
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v1 + 132)];
    *&v37 = v18;
    v30[12] = @"calibrationModeAbsoluteSplCount";
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v1 + 136)];
    *(&v37 + 1) = v17;
    v30[13] = @"calibrationModeRelativeSplMinValue";
    v16 = [MEMORY[0x1E696AB90] numberWithDouble:v4];
    v38 = v16;
    v30[14] = @"calibrationModeRelativeSplAverage";
    v9 = [MEMORY[0x1E696AB90] numberWithDouble:v3];
    v39 = v9;
    v30[15] = @"calibrationModeRelativeSplMaxValue";
    v10 = [MEMORY[0x1E696AB90] numberWithDouble:v5];
    v40 = v10;
    v30[16] = @"calibrationModeAbsoluteSplMinValue";
    v11 = [MEMORY[0x1E696AB90] numberWithDouble:v6];
    v41 = v11;
    v30[17] = @"calibrationModeAbsoluteSplAverage";
    v12 = [MEMORY[0x1E696AB90] numberWithDouble:v7];
    v42 = v12;
    v30[18] = @"calibrationModeAbsoluteSplMaxValue";
    v13 = [MEMORY[0x1E696AB90] numberWithDouble:v8];
    v43 = v13;
    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&__s2 forKeys:v30 count:19];
  }

  *(v1 + 136) = 0;
  *(v1 + 120) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 144) = xmmword_1E30645F0;
  *(v1 + 160) = xmmword_1E3064600;
  *(v1 + 176) = xmmword_1E3064610;
  v14 = v2;
  v15 = v14;
  if (re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter)
  {
    re::AudioTelemetryReporter::sendTelemetryReport(*(re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter + 32), @"system_usage", v14);
  }
}

void re::AudioManagerTelemetryReporter::initializeTimerWith(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = re::AudioManagerTelemetryReporter::m_audioManagerTelemetryQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2re29AudioManagerTelemetryReporter19initializeTimerWithEPKNS_18AudioManager_PHASEEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke;
  block[3] = &unk_1E871BAC8;
  v10 = a1;
  v11 = a2;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

void ___ZN2re29AudioManagerTelemetryReporter19initializeTimerWithEPKNS_18AudioManager_PHASEEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  os_unfair_lock_lock((v2 + 80));
  v3 = *(v2 + 32);
  v4 = re::AudioManagerTelemetryReporter::m_audioManagerTelemetryQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZN2re29AudioManagerTelemetryReporter19initializeTimerWithEPKNS_18AudioManager_PHASEEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_2;
  v6[3] = &unk_1E871BAC8;
  v5 = *(a1 + 48);
  v6[5] = v2;
  v6[6] = v5;
  v6[4] = *(a1 + 32);
  re::AudioTelemetryReporter::initializeTimerWith(v3, v4, v6, 600.0);
  objc_claimAutoreleasedReturnValue();
  memset(v7, 0, 24);
  v7[7] = v7;
  v8 = 0;
  operator new();
}

void sub_1E2162DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  *(v21 - 80) = v20;
  std::vector<PHASESource * {__strong}>::__destroy_vector::operator()[abi:ne200100]((v21 - 80));
  operator delete(v17);
  *(v21 - 80) = v19;
  std::vector<PHASESource * {__strong}>::__destroy_vector::operator()[abi:ne200100]((v21 - 80));
  *(v21 - 80) = &a16;
  std::vector<PHASESource * {__strong}>::__destroy_vector::operator()[abi:ne200100]((v21 - 80));

  os_unfair_lock_unlock(v18 + 20);
  _Unwind_Resume(a1);
}

void ___ZN2re29AudioManagerTelemetryReporter19initializeTimerWithEPKNS_18AudioManager_PHASEEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x4012000000;
  v5[3] = __Block_byref_object_copy__8;
  v5[4] = __Block_byref_object_dispose__8;
  v5[5] = 512;
  v6 = 0;
  v7 = 0;
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2020000000;
  v4[3] = -1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2re29AudioManagerTelemetryReporter22collectImmersionReportEPKNS_18AudioManager_PHASEEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke;
  block[3] = &unk_1E871BC18;
  block[5] = v5;
  block[6] = v1;
  block[4] = v4;
  dispatch_async(v2, block);
  _Block_object_dispose(v4, 8);
  _Block_object_dispose(v5, 8);
}

__n128 __Block_byref_object_copy__8(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a1[3] = result;
  return result;
}

void __Block_byref_object_dispose__8(uint64_t a1)
{
  v2 = *(a1 + 48);
}

void ___ZN2re29AudioManagerTelemetryReporter22collectImmersionReportEPKNS_18AudioManager_PHASEEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter;
    os_unfair_lock_lock((re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter + 80));
    if (re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter && std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>((re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter + 40), v2))
    {
      os_unfair_lock_unlock(v3 + 20);
      *(*(*(a1 + 32) + 8) + 24) = re::AudioManager_PHASE_Async::getReverbPreset(*(*(a1 + 48) + 648));
    }

    else
    {
      os_unfair_lock_unlock(v3 + 20);
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___ZN2re29AudioManagerTelemetryReporter22collectImmersionReportEPKNS_18AudioManager_PHASEEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_2;
  v4[3] = &unk_1E871BBF0;
  v5 = *(a1 + 32);
  dispatch_async(re::AudioManagerTelemetryReporter::m_audioManagerTelemetryQueue, v4);
}

void ___ZN2re29AudioManagerTelemetryReporter22collectImmersionReportEPKNS_18AudioManager_PHASEEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_2(re *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *re::audioLogObjects(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 4) + 8) + 24);
    v8 = 134217984;
    v9 = v3;
    _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "[AudioManagerTelemetryReporter::immersion] - Report: reverbPreset: %lld", &v8, 0xCu);
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:*(*(*(a1 + 4) + 8) + 24)];
  [v4 setObject:v5 forKey:@"reverbPreset"];

  objc_storeStrong((*(*(a1 + 5) + 8) + 56), v4);
  v6 = *(*(a1 + 5) + 8);
  v7 = *(v6 + 48);
  *(v6 + 48) = @"immersion";

  if (re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter)
  {
    re::AudioTelemetryReporter::sendTelemetryReport(*(re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter + 32), *(*(*(a1 + 5) + 8) + 48), *(*(*(a1 + 5) + 8) + 56));
  }
}

void ___ZN2re29AudioManagerTelemetryReporter23mediaServicesResetEventEv_block_invoke(uint64_t a1)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = mach_absolute_time();
  v3 = *(v1 + 16);
  v4 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&v13))
    {
      v7 = NAN;
      goto LABEL_6;
    }

    LODWORD(v5) = v13.numer;
    LODWORD(v6) = v13.denom;
    v4 = v5 / v6;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v4;
  }

  v7 = v4 * (v2 - v3);
LABEL_6:
  v8 = mach_absolute_time();
  v9 = v7 / 1000000.0;
  *&v9 = v7 / 1000000.0;
  *v1 = v8;
  v14[0] = @"timeSinceLastReset";
  v10 = [MEMORY[0x1E696AB90] numberWithFloat:v9];
  v14[1] = @"resetType";
  v15[0] = v10;
  if (*(v1 + 8))
  {
    v11 = @"mediaServicesReset";
  }

  else
  {
    v11 = @"deviceReboot";
  }

  v15[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

  *(v1 + 8) = 1;
  re::AudioTelemetryReporter::sendTelemetryReport(*(v1 + 32), @"media_service_reset", v12);
}

void ___ZN2re29AudioManagerTelemetryReporter32spatialSceneChangeTelemetryEventENS_30SpatialSceneClassificationTypeES1__block_invoke(uint64_t a1)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = mach_absolute_time();
  v4 = *(v2 + 16);
  v5 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v8 = NAN;
      goto LABEL_6;
    }

    LODWORD(v6) = info.numer;
    LODWORD(v7) = info.denom;
    v5 = v6 / v7;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v5;
  }

  v8 = v5 * (v3 - v4);
LABEL_6:
  *(v2 + 16) = v3;
  v22[0] = @"oldSpatialScene";
  v9 = MEMORY[0x1E696AEC0];
  std::string::basic_string[abi:ne200100]<0>(&info, off_1E871BD88[*(a1 + 40)]);
  if (v21 >= 0)
  {
    p_info = &info;
  }

  else
  {
    p_info = info;
  }

  v11 = [v9 stringWithUTF8String:p_info];
  v23[0] = v11;
  v22[1] = @"newSpatialScene";
  v12 = MEMORY[0x1E696AEC0];
  std::string::basic_string[abi:ne200100]<0>(__p, off_1E871BD88[*(a1 + 41)]);
  if (v19 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  v14 = [v12 stringWithUTF8String:v13];
  v15 = v8 / 1000000.0;
  *&v15 = v8 / 1000000.0;
  v23[1] = v14;
  v22[2] = @"sinceLastChange";
  v16 = [MEMORY[0x1E696AB90] numberWithFloat:v15];
  v23[2] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(*&info);
  }

  re::AudioTelemetryReporter::sendTelemetryReport(*(v2 + 32), @"location", v17);
}

void sub_1E216359C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void re::AudioManagerTelemetryReporter::roomChangeTelemetryEvent(re::AudioManagerTelemetryReporter *this, NSUUID *a2, NSUUID *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [(NSUUID *)v5 copy];
  v8 = [(NSUUID *)v6 copy];
  v9 = re::AudioManagerTelemetryReporter::m_audioManagerTelemetryQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2re29AudioManagerTelemetryReporter24roomChangeTelemetryEventEP6NSUUIDS2__block_invoke;
  block[3] = &unk_1E871BD20;
  v14 = v8;
  v15 = this;
  v13 = v7;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

void ___ZN2re29AudioManagerTelemetryReporter24roomChangeTelemetryEventEP6NSUUIDS2__block_invoke(uint64_t a1)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = mach_absolute_time();
  v4 = *(v2 + 24);
  v5 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&v18))
    {
      v8 = NAN;
      goto LABEL_6;
    }

    LODWORD(v6) = v18.numer;
    LODWORD(v7) = v18.denom;
    v5 = v6 / v7;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v5;
  }

  v8 = v5 * (v3 - v4);
LABEL_6:
  *(v2 + 24) = v3;
  v19[0] = @"oldRoomIdentifier";
  v9 = [*(a1 + 32) UUIDString];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = @"null";
  }

  v20[0] = v11;
  v19[1] = @"newRoomIdentifier";
  v12 = [*(a1 + 40) UUIDString];
  v13 = v12;
  v14 = v8 / 1000000.0;
  if (v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = @"null";
  }

  v20[1] = v15;
  v19[2] = @"sinceLastChange";
  *&v14 = v8 / 1000000.0;
  v16 = [MEMORY[0x1E696AB90] numberWithFloat:v14];
  v20[2] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  re::AudioTelemetryReporter::sendTelemetryReport(*(v2 + 32), @"location", v17);
}

uint64_t re::AudioManagerTelemetryReporter::getInstance(re::AudioManagerTelemetryReporter *this)
{
  v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);
    re::AudioManagerTelemetryReporter::getInstance(void)::onceQueue = dispatch_queue_create("AudioTelemetry", v4);

    v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  }

  objc_storeStrong(&re::AudioManagerTelemetryReporter::m_audioManagerTelemetryQueue, *(v1 + 63));
  result = re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter;
  if (!re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter)
  {
    dispatch_sync(re::AudioManagerTelemetryReporter::m_audioManagerTelemetryQueue, &__block_literal_global_9);
    return re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter;
  }

  return result;
}

re *___ZN2re29AudioManagerTelemetryReporter11getInstanceEv_block_invoke(re *result)
{
  if (!re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter)
  {
    v1 = re::globalAllocators(result);
    v2 = (*(*v1[2] + 32))(v1[2], 192, 8);
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 40) = 0u;
    *(v2 + 56) = 0u;
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 72) = 1065353216;
    *(v2 + 80) = 0;
    *(v2 + 88) = 0u;
    *(v2 + 104) = 0u;
    *(v2 + 120) = 0u;
    *(v2 + 136) = 0;
    *(v2 + 144) = xmmword_1E30645F0;
    *(v2 + 160) = xmmword_1E3064600;
    *(v2 + 176) = xmmword_1E3064610;
    v3 = re::globalAllocators(v2);
    v4 = (*(*v3[2] + 32))(v3[2], 56, 8);
    v5 = re::AudioTelemetryReporter::AudioTelemetryReporter(v4);
    *(v2 + 32) = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___ZN2re29AudioManagerTelemetryReporterC2Ev_block_invoke;
    v7[3] = &__block_descriptor_40_e5_v8__0l;
    v7[4] = v2;
    v6 = re::AudioTelemetryReporter::initializeTimerWith(v5, re::AudioManagerTelemetryReporter::m_audioManagerTelemetryQueue, v7, 300.0);
    result = mach_absolute_time();
    *v2 = result;
    re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter = v2;
  }

  return result;
}

void re::AudioManagerTelemetryReporter::stopAndCleanupReporter(re::AudioManagerTelemetryReporter *this, const re::AudioManager_PHASE *a2)
{
  if (re::AudioManagerTelemetryReporter::m_audioManagerTelemetryQueue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN2re29AudioManagerTelemetryReporter22stopAndCleanupReporterEPKNS_18AudioManager_PHASEE_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = this;
    dispatch_sync(re::AudioManagerTelemetryReporter::m_audioManagerTelemetryQueue, block);
  }
}

void ___ZN2re29AudioManagerTelemetryReporter22stopAndCleanupReporterEPKNS_18AudioManager_PHASEE_block_invoke(uint64_t a1)
{
  v1 = re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter;
  if (!re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter)
  {
    return;
  }

  os_unfair_lock_lock((re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter + 80));
  v3 = re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter;
  v4 = std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>((re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter + 40), *(a1 + 32));
  if (v4)
  {
    v5 = v4;
    v7 = v4[3];
    v8 = v4[4];
    v6 = (v4 + 3);
    if (v7 != v8)
    {
      do
      {
        v9 = *v7;
        re::AudioTelemetryReporter::stopTimer(*(re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter + 32), v9);

        ++v7;
      }

      while (v7 != v8);
      v3 = re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter;
    }

    v10 = v3[6];
    v11 = *v5;
    v12 = v5[1];
    v13 = vcnt_s8(v10);
    v13.i16[0] = vaddlv_u8(v13);
    if (v13.u32[0] > 1uLL)
    {
      if (v12 >= *&v10)
      {
        v12 %= *&v10;
      }
    }

    else
    {
      v12 &= *&v10 - 1;
    }

    v14 = v3[5];
    v15 = *(v14 + 8 * v12);
    do
    {
      v16 = v15;
      v15 = *v15;
    }

    while (v15 != v5);
    if (v16 == v3 + 7)
    {
      goto LABEL_23;
    }

    v17 = v16[1];
    if (v13.u32[0] > 1uLL)
    {
      if (v17 >= *&v10)
      {
        v17 %= *&v10;
      }
    }

    else
    {
      v17 &= *&v10 - 1;
    }

    if (v17 != v12)
    {
LABEL_23:
      if (v11)
      {
        v18 = *(v11 + 8);
        if (v13.u32[0] > 1uLL)
        {
          v19 = *(v11 + 8);
          if (v18 >= *&v10)
          {
            v19 = v18 % *&v10;
          }
        }

        else
        {
          v19 = v18 & (*&v10 - 1);
        }

        if (v19 == v12)
        {
          goto LABEL_27;
        }
      }

      *(v14 + 8 * v12) = 0;
      v11 = *v5;
    }

    if (!v11)
    {
LABEL_33:
      *v16 = v11;
      *v5 = 0;
      --v3[8];
      v24 = v6;
      std::vector<PHASESource * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v24);
      operator delete(v5);
      v3 = re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter;
      goto LABEL_34;
    }

    v18 = *(v11 + 8);
LABEL_27:
    if (v13.u32[0] > 1uLL)
    {
      if (v18 >= *&v10)
      {
        v18 %= *&v10;
      }
    }

    else
    {
      v18 &= *&v10 - 1;
    }

    if (v18 != v12)
    {
      *(v3[5] + 8 * v18) = v16;
      v11 = *v5;
    }

    goto LABEL_33;
  }

LABEL_34:
  v20 = v3[8];
  os_unfair_lock_unlock(v1 + 20);
  if (!v20)
  {
    v22 = re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter;
    if (re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter)
    {
      v23 = re::globalAllocators(v21)[2];
      re::internal::destroyPersistent<re::AudioTelemetryReporter>("~AudioManagerTelemetryReporter", 37, *(v22 + 32));
      *(v22 + 32) = 0;
      std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::~__hash_table(v22 + 40);
      (*(*v23 + 40))(v23, v22);
    }

    re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter = 0;
  }
}