void sub_1E2124E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  _Unwind_Resume(a1);
}

void re::AudioManager_PHASE_Async::setTransformForEntity(re::AudioManager_PHASE_Async *this, uint64_t a2, unint64_t a3, simd_float4x4 a4, simd_float4x4 a5, int a6)
{
  v74 = *MEMORY[0x1E69E9840];
  v62 = a4;
  v61 = a5;
  v10 = UnfairLockedPointer<REPHASEContext>::get(this + 8);
  v11 = v10;
  if (!v10)
  {
    goto LABEL_55;
  }

  [v10 sceneForID:a2];
  if (!v59)
  {
    v27 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *__str = 134217984;
      v73 = a2;
      _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, "Can't set entity transform for unknown scene %llu", __str, 0xCu);
    }

    goto LABEL_53;
  }

  re::audio::REPHASEAudioScene::getOrCreateEntity(v59, a3, &v57);
  v12 = v57;
  v47 = v57[3];
  v48 = v57[4];
  v49 = v57[5];
  v50 = v57[6];
  v13 = v62.columns[1];
  v57[3] = v62.columns[0];
  v12[4] = v13;
  v14 = v62.columns[3];
  v12[5] = v62.columns[2];
  v12[6] = v14;
  [v12[1].i64[0] setTransform:{*a4.columns[0].i64, *a4.columns[1].i64, *a4.columns[2].i64, *a4.columns[3].i64}];
  [v12[1].i64[1] setTransform:{*a4.columns[0].i64, *a4.columns[1].i64, *a4.columns[2].i64, *a4.columns[3].i64}];
  v15 = vdupq_n_s32(0x3A83126Fu);
  if ((vminvq_u32(vandq_s8(vandq_s8(vcgeq_f32(v15, vabdq_f32(a4.columns[1], v48)), vcgeq_f32(v15, vabdq_f32(a4.columns[0], v47))), vandq_s8(vcgeq_f32(v15, vabdq_f32(a4.columns[2], v49)), vcgeq_f32(v15, vabdq_f32(a4.columns[3], v50))))) & 0x80000000) == 0)
  {
    snprintf(__str, 0x64uLL, "setTransform%llu", a3);
    v16 = vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(a4.columns[1], a5.columns[1]), vceqq_f32(a4.columns[0], a5.columns[0])), vandq_s8(vceqq_f32(a4.columns[2], a5.columns[2]), vceqq_f32(a4.columns[3], a5.columns[3]))));
    if (a6)
    {
      if ((v16 & 0x80000000) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, __str);
        v17 = re::audio::throttledLog(OS_LOG_TYPE_DEFAULT, __p);
        v18 = v17;
        if (SHIBYTE(v66) < 0)
        {
          operator delete(*__p);
        }

        if (!v18)
        {
          goto LABEL_51;
        }

        v19 = *re::audioLogObjects(v17);
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_50;
        }

        v21 = v12[1].i64[0];
        v20 = v12[1].i64[1];
        re::audio::stringFromMatrix(&v62, v55);
        v22 = v56;
        v23 = v55[0];
        re::audio::stringFromMatrix(&v61, v53);
        v24 = v55;
        if (v22 < 0)
        {
          v24 = v23;
        }

        if (v54 >= 0)
        {
          v25 = v53;
        }

        else
        {
          v25 = v53[0];
        }

        *__p = 134219011;
        *&__p[4] = a3;
        v64 = 2112;
        v65 = v21;
        v66 = 2112;
        v67 = v20;
        v68 = 2085;
        v69 = v24;
        v70 = 2085;
        v71 = v25;
        v26 = "AudioManager_PHASE_Async::setTransformForEntity(): Setting transform for entity %llu (source: %@, occluder: %@) to:\n%{sensitive}s,\nbefore cleanup:\n%{sensitive}s";
LABEL_29:
        _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, v26, __p, 0x34u);
        if (v54 < 0)
        {
          operator delete(v53[0]);
        }

        goto LABEL_48;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, __str);
      v36 = re::audio::throttledLog(OS_LOG_TYPE_DEFAULT, __p);
      v37 = v36;
      if (SHIBYTE(v66) < 0)
      {
        operator delete(*__p);
      }

      if (!v37)
      {
        goto LABEL_51;
      }

      v19 = *re::audioLogObjects(v36);
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_50;
      }

      v39 = v12[1].i64[0];
      v38 = v12[1].i64[1];
      re::audio::stringFromMatrix(&v62, v55);
      if (v56 >= 0)
      {
        v40 = v55;
      }

      else
      {
        v40 = v55[0];
      }

      *__p = 134218755;
      *&__p[4] = a3;
      v64 = 2112;
      v65 = v39;
      v66 = 2112;
      v67 = v38;
      v68 = 2085;
      v69 = v40;
      v41 = "AudioManager_PHASE_Async::setTransformForEntity(): Setting transform for entity %llu (source: %@, occluder: %@) to:\n%{sensitive}s";
    }

    else
    {
      if ((v16 & 0x80000000) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, __str);
        v28 = re::audio::throttledLog(OS_LOG_TYPE_DEFAULT, __p);
        v29 = v28;
        if (SHIBYTE(v66) < 0)
        {
          operator delete(*__p);
        }

        if (!v29)
        {
          goto LABEL_51;
        }

        v19 = *re::audioLogObjects(v28);
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_50;
        }

        v31 = v12[1].i64[0];
        v30 = v12[1].i64[1];
        re::audio::stringFromMatrix(&v62, v55);
        v32 = v56;
        v33 = v55[0];
        re::audio::stringFromMatrix(&v61, v53);
        v34 = v55;
        if (v32 < 0)
        {
          v34 = v33;
        }

        if (v54 >= 0)
        {
          v35 = v53;
        }

        else
        {
          v35 = v53[0];
        }

        *__p = 134219010;
        *&__p[4] = a3;
        v64 = 2112;
        v65 = v31;
        v66 = 2112;
        v67 = v30;
        v68 = 2080;
        v69 = v34;
        v70 = 2080;
        v71 = v35;
        v26 = "AudioManager_PHASE_Async::setTransformForEntity(): Setting transform for entity %llu (source: %@, occluder: %@) to:\n%s,\nbefore cleanup:\n%s";
        goto LABEL_29;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, __str);
      v42 = re::audio::throttledLog(OS_LOG_TYPE_DEFAULT, __p);
      v43 = v42;
      if (SHIBYTE(v66) < 0)
      {
        operator delete(*__p);
      }

      if (!v43)
      {
        goto LABEL_51;
      }

      v19 = *re::audioLogObjects(v42);
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_50;
      }

      v45 = v12[1].i64[0];
      v44 = v12[1].i64[1];
      re::audio::stringFromMatrix(&v62, v55);
      if (v56 >= 0)
      {
        v46 = v55;
      }

      else
      {
        v46 = v55[0];
      }

      *__p = 134218754;
      *&__p[4] = a3;
      v64 = 2112;
      v65 = v45;
      v66 = 2112;
      v67 = v44;
      v68 = 2080;
      v69 = v46;
      v41 = "AudioManager_PHASE_Async::setTransformForEntity(): Setting transform for entity %llu (source: %@, occluder: %@) to:\n%s";
    }

    _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, v41, __p, 0x2Au);
LABEL_48:
    if (v56 < 0)
    {
      operator delete(v55[0]);
    }

LABEL_50:
  }

LABEL_51:
  atomic_store(1u, this + 312);
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v58);
  }

LABEL_53:
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v60);
  }

LABEL_55:
}

void sub_1E2125464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42, uint64_t a43, std::__shared_weak_count *a44)
{
  if (a42)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a42);
  }

  if (a44)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a44);
  }

  _Unwind_Resume(a1);
}

void re::AudioManager_PHASE_Async::setTargetRoomAcousticParameters(uint64_t a1, void *a2, int a3)
{
  v26 = a2;
  v5 = UnfairLockedPointer<REPHASEContext>::get(a1 + 8);
  v6 = v5;
  if (v5)
  {
    v7 = [v5 engine];
    [v7 setRoomAcousticTarget:v26];

    if (a3 == 2)
    {
      [v6 roomAcousticDefaults];
      v20 = v19;
      v21 = [v6 engine];
      [v21 setRoomAcousticSmoothing:v20];

      [v6 roomAcousticDefaults];
      v23 = v22;
      v24 = [v6 engine];
      [v24 setRoomAcousticMaximumReverbTime:v23];

      v25 = [v6 engine];
      [v25 setRoomAcousticSoftLimiting:1];

      v15 = [v6 engine];
      [v15 setRoomAcousticTrackingMode:2];
    }

    else if (a3 == 1)
    {
      v16 = [v6 engine];
      [v16 setRoomAcousticSmoothing:0.0];

      v17 = [v6 engine];
      [v17 setRoomAcousticMaximumReverbTime:120.0];

      v18 = [v6 engine];
      [v18 setRoomAcousticSoftLimiting:0];

      v15 = [v6 engine];
      [v15 setRoomAcousticTrackingMode:3];
    }

    else
    {
      if (a3)
      {
LABEL_9:
        atomic_store(1u, (a1 + 312));
        goto LABEL_10;
      }

      [v6 roomAcousticDefaults];
      v9 = v8;
      v10 = [v6 engine];
      [v10 setRoomAcousticSmoothing:v9];

      [v6 roomAcousticDefaults];
      v12 = v11;
      v13 = [v6 engine];
      [v13 setRoomAcousticMaximumReverbTime:v12];

      v14 = [v6 engine];
      [v14 setRoomAcousticSoftLimiting:1];

      v15 = [v6 engine];
      [v15 setRoomAcousticTrackingMode:1];
    }

    goto LABEL_9;
  }

LABEL_10:
}

void re::AudioManager_PHASE_Async::disableTargetRoomAcousticParameters(re::AudioManager_PHASE_Async *this)
{
  v2 = *re::audioLogObjects(this);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEBUG, "AudioManager_PHASE_Async::disableTargetRoomAcousticParameters()", v6, 2u);
  }

  v3 = UnfairLockedPointer<REPHASEContext>::get(this + 8);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 engine];
    [v5 setRoomAcousticTrackingMode:0];

    atomic_store(1u, this + 312);
  }
}

void re::AudioManager_PHASE_Async::setSpaceBlendLevel(re::AudioManager_PHASE_Async *this, float a2)
{
  v4 = UnfairLockedPointer<REPHASEContext>::get(this + 8);
  if (v4)
  {
    v6 = v4;
    *&v5 = a2;
    [v4 setSpaceBlendLevel:v5];
    atomic_store(1u, this + 312);
    v4 = v6;
  }
}

void re::AudioManager_PHASE_Async::unloadAsset(re::AudioManager_PHASE_Async *this, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v20 = a2;
  v4 = UnfairLockedPointer<REPHASEContext>::get(this + 8);
  if (v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a2];
    v6 = *re::audioLogObjects(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v22 = a2;
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "[RE/PHASE] [Load] Unregistering audio asset (%llu).", buf, 0xCu);
    }

    v7 = [v4 removeAudioAssetID:a2];
    if (v5)
    {
      os_unfair_lock_lock(this + 108);
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(this + 44, &v20);
      os_unfair_lock_unlock(this + 108);
      v8 = [v4 maybeEngine];
      v9 = [v8 assetRegistry];

      v10 = *(this + 40);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = ___ZN2re24AudioManager_PHASE_Async11unloadAssetEy_block_invoke;
      v14[3] = &unk_1E871B5D8;
      v18 = this;
      v19 = v20;
      v15 = v10;
      v16 = v9;
      v17 = v5;
      v11 = v9;
      v12 = v10;
      [v11 unregisterAssetWithIdentifier:v17 completion:v14];
      atomic_store(1u, this + 312);
    }

    else
    {
      v13 = *re::audioLogObjects(v7);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = 0;
        _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "[RE/PHASE] [Load] Unregistering audio asset (%@) which is not registered with PHASE", buf, 0xCu);
      }
    }
  }
}

void ___ZN2re24AudioManager_PHASE_Async11unloadAssetEy_block_invoke(uint64_t a1, char a2)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___ZN2re24AudioManager_PHASE_Async11unloadAssetEy_block_invoke_2;
  v9[3] = &unk_1E871B5B0;
  v13 = a2;
  v3 = *(a1 + 56);
  v4 = *(v3 + 184);
  v5 = *(a1 + 32);
  v12 = *(a1 + 64);
  v6 = *(a1 + 40);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v3;
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v10 = v8;
  v11 = v7;
  dispatch_async(v4, v9);
}

void ___ZN2re24AudioManager_PHASE_Async11unloadAssetEy_block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a1 + 72) == 1)
  {
    v2 = *(a1 + 56);
    if (([*(a1 + 32) isCancelled] & 1) == 0)
    {
      os_unfair_lock_lock((v2 + 432));
      std::__hash_table<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>>>::__erase_unique<unsigned long long>((v2 + 352), (a1 + 64));
      *buf = a1 + 64;
      v3 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((v2 + 392), *(a1 + 64));
      v5 = v3[3];
      v4 = v3[4];
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v5)
      {
        v6 = _Block_copy(*v5);
        v7 = *(v5 + 32);
        *buf = *(v5 + 16);
        v17 = v7;
        v18 = *(v5 + 48);
        if (v18 == 1)
        {
          re::DynamicString::DynamicString(&v19, (v5 + 56));
        }

        v21 = *(v5 + 88);
        if (v21 == 1)
        {
          v22 = *(v5 + 92);
        }

        v23 = *(v5 + 96);
        v8 = *(v5 + 8);
        v9 = (*(v6 + 2))(v6, *(a1 + 40), v8, buf, *(v2 + 328));
        v10 = *re::audioLogObjects(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 48);
          v14 = 138412290;
          v15 = v11;
          _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "[RE/PHASE] [Load] Loading pending audio asset (%@)", &v14, 0xCu);
        }

        std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>>>::__erase_unique<unsigned long long>((v2 + 392), (a1 + 64));

        if (v18 == 1 && v19 && (v20 & 1) != 0)
        {
          (*(*v19 + 40))();
        }
      }

      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      os_unfair_lock_unlock((v2 + 432));
    }
  }

  else
  {
    v12 = *re::audioLogObjects(a1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 48);
      *buf = 138412290;
      *&buf[4] = v13;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "[RE/PHASE] [Load] Failed to unregister audio asset (%@)", buf, 0xCu);
    }
  }
}

id re::AudioManager_PHASE_Async::getPHASEAssetForIdentifier(re::AudioManager_PHASE_Async *this, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = UnfairLockedPointer<REPHASEContext>::get(this + 8);
  if (v3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a2];
    if (v4)
    {
      v5 = [v3 maybeEngine];
      v6 = [v5 assetRegistry];
      v7 = [v6 assetForIdentifier:v4];
    }

    else
    {
      v8 = *re::audioLogObjects(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v11 = a2;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "could not create phase ID for asset %llu", buf, 0xCu);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void re::AudioManager_PHASE_Async::setRoomSensedReverbStabilizationIsEnabled(re::AudioManager_PHASE_Async *this, uint64_t a2)
{
  *this = a2;
  v3 = UnfairLockedPointer<REPHASEContext>::get(this + 8);
  if (v3)
  {
    [v3 setRoomSensedReverbStabilizationIsEnabled:a2];
  }
}

void re::AudioManager_PHASE_Async::forceAudioOutputType(uint64_t a1, int a2)
{
  v4 = UnfairLockedPointer<REPHASEContext>::get(a1 + 8);
  if (v4)
  {
    v6 = v4;
    if (a2 == 2)
    {
      v5 = [v4 engine];
      [v5 setOutputSpatializationMode:2];
    }

    else
    {
      [v4 engine];
      if (a2 == 1)
        v5 = {;
        [v5 setOutputSpatializationMode:1];
      }

      else
        v5 = {;
        [v5 setOutputSpatializationMode:0];
      }
    }

    atomic_store(1u, (a1 + 312));
    v4 = v6;
  }
}

uint64_t re::AudioManager_PHASE_Async::currentAudioOutputType(re::AudioManager_PHASE_Async *this)
{
  v1 = UnfairLockedPointer<REPHASEContext>::get(this + 8);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 engine];
    v4 = [v3 outputSpatializationMode];

    if (v4 == 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = v4 == 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void re::AudioManager_PHASE_Async::applyCustomHRIR(re::AudioManager_PHASE_Async *this, NSURL *a2)
{
  v5 = a2;
  v3 = UnfairLockedPointer<REPHASEContext>::get(this + 8);
  v4 = v3;
  if (v3)
  {
    [v3 setCustomHRIRURL:v5];
    atomic_store(1u, this + 312);
  }
}

void re::AudioManager_PHASE_Async::registerMixGroup(re::AudioManager_PHASE_Async *this, PHASEGroup *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UnfairLockedPointer<REPHASEContext>::get(this + 8);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 engine];

    if (v6)
    {
      v8 = [v5 engine];
      v9 = [v8 groups];
      v10 = [(PHASEGroup *)v3 identifier];
      v11 = [v9 objectForKey:v10];

      if (v11)
      {
        v13 = *re::audioLogObjects(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v19) = 0;
          v14 = "[RE/PHASE] [MixGroup] [AudioManager_PHASE_Async] -> registerMixGroup : Phase Mix Group is already registered with this engine";
LABEL_8:
          _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, v14, &v19, 2u);
        }
      }

      else
      {
        v15 = [v5 engine];
        [(PHASEGroup *)v3 registerWithEngine:v15];

        atomic_store(1u, this + 312);
        v17 = *re::audioLogObjects(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = [(PHASEGroup *)v3 identifier];
          v19 = 138412290;
          v20 = v18;
          _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_INFO, "[RE/PHASE] [MixGroup] Registered PHASEGroup. PhaseID: %@ (sceneID - connectionID - name).", &v19, 0xCu);
        }
      }
    }

    else
    {
      v13 = *re::audioLogObjects(v7);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v19) = 0;
        v14 = "[RE/PHASE] [MixGroup] [AudioManager_PHASE_Async] -> registerMixGroup : Phase Engine is nil";
        goto LABEL_8;
      }
    }
  }
}

void re::AudioManager_PHASE_Async::clearPendingAssetData(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 108);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>>>::clear(&this[98]);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear(&this[88]._os_unfair_lock_opaque);

  os_unfair_lock_unlock(this + 108);
}

void std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,void *> *>>(void *a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v11 = v4[3];
        v8[2] = v4[2];
        v12 = _Block_copy(v11);
        v13 = v8[3];
        v8[3] = v12;

        v10 = *v8;
        v14 = v8[2];
        v8[1] = v14;
        inserted = std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>>>::__node_insert_multi_prepare(a1, v14, v8 + 2);
        std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>>>::__node_insert_multi_perform(a1, v8, inserted);
        v4 = *v4;
        if (!v10)
        {
          break;
        }

        v8 = v10;
      }

      while (v4 != a3);
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>>>::__deallocate_node(a1, v10);
  }

  if (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>>>::__emplace_multi<std::pair<unsigned long long const,void({block_pointer} {__strong})(void)> const&>();
  }
}

void sub_1E2126808(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

void std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>>>::__deallocate_node(uint64_t a1, id *a2)
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

void *std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>>>::__rehash<false>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_1E2126DD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,REPHASESoundEvent * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,REPHASESoundEvent * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::AudioManager_PHASE_Async::afterFrameSlowMeshEvents(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> const&)::$_0,re::AudioManager_PHASE_Async::afterFrameSlowMeshEvents(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> const&)::$_1,re::AudioManager_PHASE_Async::afterFrameSlowMeshEvents(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> const&)::$_2>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = *(*a1 + 8);
  ***a1 += a2[2];
  re::DynamicArray<re::audio::AcousticMeshRemovalData>::DynamicArray(v4, a2);
  v4[10] = 0;
  re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>::enqueue(v2, v4);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::AudioManager_PHASE_Async::afterFrameSlowMeshEvents(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> const&)::$_0,re::AudioManager_PHASE_Async::afterFrameSlowMeshEvents(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> const&)::$_1,re::AudioManager_PHASE_Async::afterFrameSlowMeshEvents(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> const&)::$_2>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  **(*a1 + 16) += *(a2 + 16);
  v4 = **(v2 + 32);
  if (v4)
  {
    [v4 createPHASEOccluders:a2];
    v5 = v10;
    v6 = v11;
    v7 = v13;
    v8 = v12 + 1;
  }

  else
  {
    v7 = 0;
    v5 = 0;
    v12 = 0;
    v6 = 0uLL;
    v8 = 1;
  }

  v13 = 0;
  v14 = v5;
  v15 = v6;
  v11 = 0uLL;
  v10 = 0;
  v17 = v7;
  LODWORD(v12) = v8;
  v16 = 1;
  v18 = 1;
  re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>::enqueue(v3, &v14);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v14);
  return re::DynamicArray<re::audio::PHASEOccluderData>::deinit(&v10);
}

void sub_1E2126F1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va1);
  re::DynamicArray<re::audio::PHASEOccluderData>::deinit(va);
  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::AudioManager_PHASE_Async::afterFrameSlowMeshEvents(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> const&)::$_0,re::AudioManager_PHASE_Async::afterFrameSlowMeshEvents(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> const&)::$_1,re::AudioManager_PHASE_Async::afterFrameSlowMeshEvents(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> const&)::$_2>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  **(*a1 + 40) += *(a2 + 16);
  v4 = **(v2 + 56);
  if (v4)
  {
    [v4 updatePHASEOccluders:a2];
    v5 = v10;
    v6 = v11;
    v7 = v13;
    v8 = v12 + 1;
  }

  else
  {
    v7 = 0;
    v5 = 0;
    v12 = 0;
    v6 = 0uLL;
    v8 = 1;
  }

  v13 = 0;
  v14 = v5;
  v15 = v6;
  v11 = 0uLL;
  v10 = 0;
  v17 = v7;
  LODWORD(v12) = v8;
  v16 = 1;
  v18 = 2;
  re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>::enqueue(v3, &v14);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v14);
  return re::DynamicArray<re::audio::PHASEOccluderUpdateData>::deinit(&v10);
}

void sub_1E2127004(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va1);
  re::DynamicArray<re::audio::PHASEOccluderUpdateData>::deinit(va);
  _Unwind_Resume(a1);
}

uint64_t re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>::enqueue(uint64_t a1, uint64_t a2)
{
  v5 = a1 + 16;
  v4 = *(a1 + 16);
  v6 = v4 + 1;
  v7 = *(a1 + 8);
  if (v4 + 1 >= v7)
  {
    if (v7 < v6)
    {
      if (*a1)
      {
        v8 = 2 * v7;
        if (!v7)
        {
          v8 = 8;
        }

        if (v8 <= v6)
        {
          v9 = v6;
        }

        else
        {
          v9 = v8;
        }

        re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>::setCapacity(a1, v9);
        v4 = *(a1 + 16);
      }

      else
      {
        re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>::setCapacity(a1, v6);
        v4 = 0;
        *v5 = 0;
        *(v5 + 8) = 0;
        *(v5 + 16) = 0;
      }
    }

    v7 = *(a1 + 8);
  }

  result = std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](*(a1 + 40) + 48 * ((*(a1 + 24) + v4) % v7), a2);
  ++*(a1 + 16);
  ++*(a1 + 32);
  return result;
}

void *re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    v6 = result + 2;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>::setCapacity(v5, a2);
        *v6 = 0;
        v6[1] = 0;
        *(v6 + 4) = 0;
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x30uLL))
        {
          v2 = 48 * a2;
          result = (*(*result + 32))(result, 48 * a2, 8);
          if (result)
          {
            v8 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in Queue<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 440, 48, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Queue<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 444, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v8 = 0;
      if (!v3)
      {
LABEL_18:
        v5[5] = v8;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      if (v5[2])
      {
        v9 = 0;
        v10 = v5[3];
        do
        {
          v11 = v5[5] + 48 * ((v9 + v5[3]) % v5[1]);
          std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](&v8[6 * v10], v11);
          std::__variant_detail::__dtor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v11);
          if (v10 + 1 < a2)
          {
            ++v10;
          }

          else
          {
            v10 = 0;
          }

          ++v9;
        }

        while (v9 != v5[2]);
      }

      result = (*(**v5 + 40))(*v5, v5[5]);
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 40) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,(std::__variant_detail::_Trait)1>>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,(std::__variant_detail::_Trait)1>>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 40);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_1F5CCABF8[v5])(&v6, a2);
    *(a1 + 40) = v5;
  }

  return result;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (v2 != -1)
  {
    result = (off_1F5CCABE0[v2])(&v3, result);
  }

  *(v1 + 40) = -1;
  return result;
}

uint64_t *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>> &&>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *(v2 + 32) = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = 0;
  *(v2 + 24) = 0;
  v3 = *(a2 + 8);
  *v2 = *a2;
  *(v2 + 8) = v3;
  *a2 = 0;
  *(a2 + 8) = 0;
  v4 = *(v2 + 16);
  *(v2 + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  v5 = *(v2 + 32);
  *(v2 + 32) = *(a2 + 32);
  *(a2 + 32) = v5;
  ++*(a2 + 24);
  ++*(v2 + 24);
  return result;
}

uint64_t *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>> &&>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *(v2 + 32) = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = 0;
  *(v2 + 24) = 0;
  v3 = *(a2 + 8);
  *v2 = *a2;
  *(v2 + 8) = v3;
  *a2 = 0;
  *(a2 + 8) = 0;
  v4 = *(v2 + 16);
  *(v2 + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  v5 = *(v2 + 32);
  *(v2 + 32) = *(a2 + 32);
  *(a2 + 32) = v5;
  ++*(a2 + 24);
  ++*(v2 + 24);
  return result;
}

uint64_t *std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>> &&>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *(v2 + 32) = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = 0;
  *(v2 + 24) = 0;
  v3 = *(a2 + 8);
  *v2 = *a2;
  *(v2 + 8) = v3;
  *a2 = 0;
  *(a2 + 8) = 0;
  v4 = *(v2 + 16);
  *(v2 + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  v5 = *(v2 + 32);
  *(v2 + 32) = *(a2 + 32);
  *(a2 + 32) = v5;
  ++*(a2 + 24);
  ++*(v2 + 24);
  return result;
}

uint64_t re::DynamicArray<re::audio::AcousticMeshRemovalData>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::audio::AcousticMeshRemovalData>::copy(a1, a2);
  }

  return a1;
}

void **re::DynamicArray<re::audio::AcousticMeshRemovalData>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 40 * v5);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 40 * v5, (*(a2 + 32) + 40 * v5), 40 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 40 * v4);
  }

  v3[2] = v4;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

double re::Queue<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = a1[5];
    if (v3)
    {
      if (a1[2])
      {
        v4 = 0;
        do
        {
          re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>::deinit((a1[5] + 48 * ((v4 + a1[3]) % a1[1])));
          ++v4;
        }

        while (v4 != a1[2]);
        v2 = *a1;
        v3 = a1[5];
      }

      (*(*v2 + 40))(v2, v3);
    }

    a1[5] = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(REAudioPlaybackState,REAudioPlaybackState)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(REAudioPlaybackState,REAudioPlaybackState)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(REAudioPlaybackState,REAudioPlaybackState)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(REAudioPlaybackState,REAudioPlaybackState)>>>::__erase_unique<unsigned long long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,REPHASESoundEvent * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,REPHASESoundEvent * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](v4);
    return 1;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(REAudioPlaybackState,REAudioPlaybackState)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(REAudioPlaybackState,REAudioPlaybackState)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(REAudioPlaybackState,REAudioPlaybackState)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(REAudioPlaybackState,REAudioPlaybackState)>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void sub_1E2127C04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,REPHASESoundEvent * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,REPHASESoundEvent * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v3 == v8)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
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

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

double re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = a1[5];
    if (v3)
    {
      if (a1[2])
      {
        v4 = 0;
        do
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1[5] + 48 * ((v4 + a1[3]) % a1[1]));
          ++v4;
        }

        while (v4 != a1[2]);
        v2 = *a1;
        v3 = a1[5];
      }

      (*(*v2 + 40))(v2, v3);
    }

    a1[5] = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 8) = 0;
  }

  return result;
}

void *re::Queue<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    v6 = result + 2;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::Queue<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>>::setCapacity(v5, a2);
        *v6 = 0;
        v6[1] = 0;
        *(v6 + 4) = 0;
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x30uLL))
        {
          v2 = 48 * a2;
          result = (*(*result + 32))(result, 48 * a2, 8);
          if (result)
          {
            v8 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in Queue<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 440, 48, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Queue<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 444, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v8 = 0;
      if (!v3)
      {
LABEL_18:
        v5[5] = v8;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      if (v5[2])
      {
        v9 = 0;
        v10 = v5[3];
        do
        {
          v11 = (v5[5] + 48 * ((v9 + v5[3]) % v5[1]));
          v12 = &v8[6 * v10];
          v12[5] = 0;
          *(v12 + 8) = 0;
          *v12 = 0u;
          *(v12 + 1) = 0u;
          v13 = v11[1];
          *v12 = *v11;
          v12[1] = v13;
          *v11 = 0;
          v11[1] = 0;
          v14 = v12[2];
          v12[2] = v11[2];
          v11[2] = v14;
          v15 = v12[5];
          v12[5] = v11[5];
          v11[5] = v15;
          v16 = v12[3];
          v12[3] = v11[3];
          v11[3] = v16;
          re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>::deinit(v11);
          if (v10 + 1 < a2)
          {
            ++v10;
          }

          else
          {
            v10 = 0;
          }

          ++v9;
        }

        while (v9 != *v6);
      }

      result = (*(**v5 + 40))(*v5, v5[5]);
      goto LABEL_18;
    }
  }

  return result;
}

void std::__shared_ptr_emplace<re::PersistedAssetData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5CCAC20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

void std::__shared_ptr_emplace<re::PersistedAssetData>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    re::DynamicString::deinit((a1 + 80));
  }

  v2 = *(a1 + 24);
}

uint64_t re::PersistedAssetData::PersistedAssetData(uint64_t a1, const void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a3;
  *a1 = _Block_copy(a2);
  v10 = v9;
  *(a1 + 8) = v10;
  v11 = *(a4 + 16);
  *(a1 + 16) = *a4;
  *(a1 + 32) = v11;
  v12 = *(a4 + 32);
  *(a1 + 48) = v12;
  if (v12 == 1)
  {
    re::DynamicString::DynamicString((a1 + 56), (a4 + 40));
  }

  v13 = *(a4 + 72);
  *(a1 + 88) = v13;
  if (v13 == 1)
  {
    *(a1 + 92) = *(a4 + 76);
  }

  *(a1 + 96) = *(a4 + 80);
  *(a1 + 104) = a5;

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t a2)
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

uint64_t *std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>>>::__erase_unique<unsigned long long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEAudioScene>>,void *>>>::operator()[abi:ne200100](v6, v3);
  }

  return v2;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::__deallocate_node(a1, *(a1 + 16));
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

void *re::allocInfo_AudioParameterChange(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_113, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_113))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19C9A8, "AudioParameterChange");
    __cxa_guard_release(&_MergedGlobals_113);
  }

  return &unk_1EE19C9A8;
}

void re::initInfo_AudioParameterChange(re *this, re::IntrospectionBase *a2)
{
  v23[0] = 0xD528612E7C2BF446;
  v23[1] = "AudioParameterChange";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&qword_1EE19C980, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19C980);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_float(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "currentValue";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE19C988 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_float(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "targetValue";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x400000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE19C990 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_double(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "fadeDuration";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE19C998 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_uint32_t(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "currentParameterChangeID";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x1000000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE19C9A0 = v21;
      __cxa_guard_release(&qword_1EE19C980);
    }
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE19C988;
  *(this + 9) = re::internal::defaultConstruct<re::AudioParameterChange>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AudioParameterChange>;
  *(this + 13) = re::internal::defaultConstructV2<re::AudioParameterChange>;
  *(this + 14) = re::internal::defaultDestructV2<re::AudioParameterChange>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v22 = v24;
}

double re::internal::defaultConstruct<re::AudioParameterChange>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __asm { FMOV            V0.2S, #1.0 }

  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  return result;
}

double re::internal::defaultConstructV2<re::AudioParameterChange>(uint64_t a1)
{
  __asm { FMOV            V0.2S, #1.0 }

  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<unsigned long long>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&re::IntrospectionInfo<re::DynamicArray<unsigned long long>>::get(BOOL)::info) = &unk_1F5CCAC70;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<unsigned long long>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<unsigned long long>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::DynamicArray<unsigned long long>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::DynamicArray<unsigned long long>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_uint64_t(1, a2);
  if ((re::IntrospectionInfo<re::DynamicArray<unsigned long long>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::DynamicArray<unsigned long long>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<unsigned long long>>::get(BOOL)::info, 0);
    qword_1EE186710 = 0x2800000003;
    dword_1EE186718 = v8;
    word_1EE18671C = 0;
    *&xmmword_1EE186720 = 0;
    *(&xmmword_1EE186720 + 1) = 0xFFFFFFFFLL;
    qword_1EE186730 = v7;
    unk_1EE186738 = 0;
    re::IntrospectionInfo<re::DynamicArray<unsigned long long>>::get(BOOL)::info = &unk_1F5CCAC70;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::DynamicArray<unsigned long long>>::get(BOOL)::info, &v15);
    if (BYTE8(v15))
    {
      v11 = v16;
    }

    else
    {
      v11 = &v15 + 9;
    }

    if (v15 && (BYTE8(v15) & 1) != 0)
    {
      (*(*v15 + 40))();
    }

    v15 = *(v7 + 32);
    xmmword_1EE186720 = v14;
    if (v17)
    {
      if (v17)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v12 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v12);
  }

  return &re::IntrospectionInfo<re::DynamicArray<unsigned long long>>::get(BOOL)::info;
}

void *re::allocInfo_AudioMixGroup(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19CA40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19CA40))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19CAB8, "AudioMixGroup");
    __cxa_guard_release(&qword_1EE19CA40);
  }

  return &unk_1EE19CAB8;
}

void re::initInfo_AudioMixGroup(re *this, re::IntrospectionBase *a2)
{
  v63[0] = 0xE1E5FF0EF545E6B2;
  v63[1] = "AudioMixGroup";
  if (v63[0])
  {
    if (v63[0])
    {
    }
  }

  *(this + 2) = v64;
  if ((atomic_load_explicit(&_MergedGlobals_114, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&_MergedGlobals_114);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_uint64_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "ID";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x2000000001;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE19CA48 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_uint64_t(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "parentID";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE19CA50 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::IntrospectionInfo<re::DynamicArray<unsigned long long>>::get(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "children";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x3000000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE19CA58 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::IntrospectionInfo<re::DynamicString>::get(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "name";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 4;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE19CA60 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_float(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "gain_dB";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x7000000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE19CA68 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::introspect_BOOL(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "muteState";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x5800000006;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE19CA70 = v29;
      v30 = re::introspectionAllocator(v29);
      v32 = re::introspect_BOOL(1, v31);
      v33 = (*(*v30 + 32))(v30, 72, 8);
      *v33 = 1;
      *(v33 + 8) = "soloState";
      *(v33 + 16) = v32;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0x5900000007;
      *(v33 + 40) = 0;
      *(v33 + 48) = 0;
      *(v33 + 56) = 0;
      *(v33 + 64) = 0;
      qword_1EE19CA78 = v33;
      v34 = re::introspectionAllocator(v33);
      v36 = re::introspect_float(1, v35);
      v37 = (*(*v34 + 32))(v34, 72, 8);
      *v37 = 1;
      *(v37 + 8) = "rampRate";
      *(v37 + 16) = v36;
      *(v37 + 24) = 0;
      *(v37 + 32) = 0x6400000008;
      *(v37 + 40) = 0;
      *(v37 + 48) = 0;
      *(v37 + 56) = 0;
      *(v37 + 64) = 0;
      qword_1EE19CA80 = v37;
      v38 = re::introspectionAllocator(v37);
      v40 = re::introspect_float(1, v39);
      v41 = (*(*v38 + 32))(v38, 72, 8);
      *v41 = 1;
      *(v41 + 8) = "speed";
      *(v41 + 16) = v40;
      *(v41 + 24) = 0;
      *(v41 + 32) = 0x6800000009;
      *(v41 + 40) = 0;
      *(v41 + 48) = 0;
      *(v41 + 56) = 0;
      *(v41 + 64) = 0;
      qword_1EE19CA88 = v41;
      v42 = re::introspectionAllocator(v41);
      v44 = re::introspect_float(1, v43);
      v45 = (*(*v42 + 32))(v42, 72, 8);
      *v45 = 1;
      *(v45 + 8) = "highFrequencyGain_dB";
      *(v45 + 16) = v44;
      *(v45 + 24) = 0;
      *(v45 + 32) = 0x5C0000000ALL;
      *(v45 + 40) = 0;
      *(v45 + 48) = 0;
      *(v45 + 56) = 0;
      *(v45 + 64) = 0;
      qword_1EE19CA90 = v45;
      v46 = re::introspectionAllocator(v45);
      v48 = re::introspect_float(1, v47);
      v49 = (*(*v46 + 32))(v46, 72, 8);
      *v49 = 1;
      *(v49 + 8) = "lowFrequencyGain_dB";
      *(v49 + 16) = v48;
      *(v49 + 24) = 0;
      *(v49 + 32) = 0x600000000BLL;
      *(v49 + 40) = 0;
      *(v49 + 48) = 0;
      *(v49 + 56) = 0;
      *(v49 + 64) = 0;
      qword_1EE19CA98 = v49;
      v50 = re::introspectionAllocator(v49);
      v52 = re::introspect_float(1, v51);
      v53 = (*(*v50 + 32))(v50, 72, 8);
      *v53 = 1;
      *(v53 + 8) = "groupFadeDuration";
      *(v53 + 16) = v52;
      *(v53 + 24) = 0;
      *(v53 + 32) = 0x6C0000000CLL;
      *(v53 + 40) = 0;
      *(v53 + 48) = 0;
      *(v53 + 56) = 0;
      *(v53 + 64) = 0;
      qword_1EE19CAA0 = v53;
      v54 = re::introspectionAllocator(v53);
      v56 = re::introspect_int(1, v55);
      v57 = (*(*v54 + 32))(v54, 72, 8);
      *v57 = 1;
      *(v57 + 8) = "currentGainChangeID";
      *(v57 + 16) = v56;
      *(v57 + 24) = 0;
      *(v57 + 32) = 0x7C0000000DLL;
      *(v57 + 40) = 0;
      *(v57 + 48) = 0;
      *(v57 + 56) = 0;
      *(v57 + 64) = 0;
      qword_1EE19CAA8 = v57;
      v58 = re::introspectionAllocator(v57);
      v60 = re::introspect_float(1, v59);
      v61 = (*(*v58 + 32))(v58, 72, 8);
      *v61 = 1;
      *(v61 + 8) = "targetGain_dB";
      *(v61 + 16) = v60;
      *(v61 + 24) = 0;
      *(v61 + 32) = 0x740000000ELL;
      *(v61 + 40) = 0;
      *(v61 + 48) = 0;
      *(v61 + 56) = 0;
      *(v61 + 64) = 0;
      qword_1EE19CAB0 = v61;
      __cxa_guard_release(&_MergedGlobals_114);
    }
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 14;
  *(this + 8) = &qword_1EE19CA48;
  *(this + 9) = re::internal::defaultConstruct<re::AudioMixGroup>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AudioMixGroup>;
  *(this + 13) = re::internal::defaultConstructV2<re::AudioMixGroup>;
  *(this + 14) = re::internal::defaultDestructV2<re::AudioMixGroup>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v62 = v64;
}

double re::internal::defaultConstruct<re::AudioMixGroup>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 60) = 0u;
  result = 0.0;
  *(a3 + 92) = xmmword_1E30474D0;
  *(a3 + 116) = 0;
  *(a3 + 108) = 0;
  *(a3 + 124) = 1;
  return result;
}

double re::internal::defaultDestruct<re::AudioMixGroup>(uint64_t a1, uint64_t a2, re::DynamicString *a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 48);

  return re::DynamicString::deinit(a3);
}

double re::internal::defaultConstructV2<re::AudioMixGroup>(uint64_t a1)
{
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 60) = 0u;
  result = 0.0;
  *(a1 + 92) = xmmword_1E30474D0;
  *(a1 + 116) = 0;
  *(a1 + 108) = 0;
  *(a1 + 124) = 1;
  return result;
}

double re::internal::defaultDestructV2<re::AudioMixGroup>(re::DynamicString *a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 48);

  return re::DynamicString::deinit(a1);
}

float *re::AudioMixGroup::applyRamp(float *this, double a2)
{
  v2 = this[29];
  v3 = this[30];
  if (a2 > 0.0 && v3 != v2)
  {
    v5 = this[25];
    v6 = this[29];
    if (v5 != 0.0)
    {
      v7 = this[27] - a2;
      if (v7 < 0.0)
      {
        v7 = 0.0;
      }

      v8 = v7;
      this[27] = v8;
      v6 = v3 + v5 * a2;
    }

    this[30] = v6;
    v9 = v5 >= 0.0 || v6 > v2;
    if (!v9 || (v5 > 0.0 ? (v10 = v6 < v2) : (v10 = 1), !v10))
    {
      this[30] = v2;
    }
  }

  return this;
}

uint64_t re::AudioMixGroup::fadeToGainWithDuration(uint64_t this, float a2, double a3, int a4)
{
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  if (a2 > 15.0)
  {
    a2 = 15.0;
  }

  v4 = fmaxf(a2, -60.0);
  if (*(this + 116) == v4 && *(this + 108) == 0.0)
  {
    a3 = 0.0;
  }

  if (!a4 || a3 == 0.0 || *(this + 108) != 0.0)
  {
    *(this + 112) = v4;
  }

  *(this + 116) = v4;
  v5 = a3;
  *(this + 108) = v5;
  v6 = 0.0;
  if (a3 > 0.0)
  {
    v6 = (v4 - *(this + 120)) / a3;
  }

  *(this + 100) = v6;
  ++*(this + 124);
  return this;
}

void re::TypeBuilderHelper::registerDynamicArray<unsigned long long>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v12);
  if (v12)
  {
    *a4 = v12;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v11);
    re::TypeBuilder::TypeBuilder(v10, v11);
    v9 = *a3;
    re::TypeBuilder::beginListType(v10, a2, 1, 0x28uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<unsigned long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<unsigned long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<unsigned long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<unsigned long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<unsigned long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<unsigned long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<unsigned long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<unsigned long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionDynamicArray<unsigned long long>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<unsigned long long>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<unsigned long long>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<unsigned long long>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<float *>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<unsigned long long>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<float *>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<double>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<unsigned long long>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(this, &v10);
  v8 = (*(this + 4) + 8 * *(this + 2) - 8);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<unsigned long long>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 8 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 8 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<unsigned long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<float *>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<unsigned long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<float *>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<double>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 8 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 8;
        v11 -= 8;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<unsigned long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 8 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<unsigned long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<unsigned long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 8 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<unsigned long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::AudioManager_PHASE_StateMachine_GlobalRecoveryStep::stepDescription(re::AudioManager_PHASE_StateMachine_GlobalRecoveryStep *this@<X0>, std::string *a2@<X8>)
{
  re::nameForAudioManagerStateMachineEvent(*(this + 2), &v8);
  v4 = std::string::append(&v8, ": ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v9.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v9.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (*(this + 12))
  {
    v6 = "completed";
  }

  else
  {
    v6 = "pending";
  }

  v7 = std::string::append(&v9, v6);
  *a2 = *v7;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_1E212A4C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

re *REAudioCreatePHASEEngine(PHASEUpdateMode a1)
{
  v1 = [objc_alloc(MEMORY[0x1E6978198]) initWithUpdateMode:a1 spatialMode:1];
  v2 = *re::audioLogObjects(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "Initializing Phase audio engine complete.", v4, 2u);
  }

  return v1;
}

uint64_t re::AudioManager_PHASE_State_Disconnected::handleStateChangeEvent(re *a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((a2 - 2) < 8)
  {
    v4 = *re::audioLogObjects(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 8))(v11, a1);
      v5 = v12;
      v6 = v11[0];
      re::nameForAudioManagerStateMachineEvent(a2, __p);
      v7 = v11;
      if (v5 < 0)
      {
        v7 = v6;
      }

      if (v14 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = *__p;
      }

      *buf = 136315394;
      v16 = v7;
      v17 = 2080;
      v18 = v8;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "[RE/MediaServices] [EngineStateChange] Invalid state change event. Current state : %s, event '%s'", buf, 0x16u);
      if (v14 < 0)
      {
        operator delete(*__p);
      }

      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (a2 == 1)
  {
    return 0x100000001;
  }

  if (!a2)
  {
    v4 = *re::audioLogObjects(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 8))(v11, a1);
      if (v12 >= 0)
      {
        v9 = v11;
      }

      else
      {
        v9 = v11[0];
      }

      *__p = 136315138;
      *&__p[4] = v9;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "[RE/MediaServices] [EngineStateChange] AudioManager_PHASE_State is already %s", __p, 0xCu);
LABEL_17:
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

LABEL_19:
  }

  return 0;
}

uint64_t *introspect_REAudioInputMode(int a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE19CB50, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE19CB58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19CB58))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE19CC30, "REAudioInputMode", 1, 1, 1, 1);
      qword_1EE19CC30 = &unk_1F5D0C658;
      qword_1EE19CC70 = &introspect_REAudioInputMode(BOOL)::enumTable;
      dword_1EE19CC40 = 9;
      __cxa_guard_release(&qword_1EE19CB58);
    }

    if (a1)
    {
      if (_MergedGlobals_115)
      {
        return &qword_1EE19CC30;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v45);
      v3 = _MergedGlobals_115;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v45);
      if (v3)
      {
        return &qword_1EE19CC30;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (_MergedGlobals_115)
      {
        goto LABEL_46;
      }
    }

    _MergedGlobals_115 = 1;
    re::IntrospectionRegistry::add(&qword_1EE19CC30, a2);
    v41 = 0xF873BB5B608C0CD4;
    v42 = "REAudioInputMode";
    v46 = 0x31CD534126;
    v47 = "uint8_t";
    v9 = v45[0];
    v10 = v45[1];
    if (v46)
    {
      if (v46)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v42);
    _os_crash();
    __break(1u);
LABEL_49:
    v34 = __cxa_guard_acquire(&qword_1EE19CB50);
    if (v34)
    {
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 0;
      *(v36 + 2) = "REAudioInputModePointSource";
      qword_1EE19CBA0 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 1;
      *(v38 + 2) = "REAudioInputModeStereoBypass";
      qword_1EE19CBA8 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 8) = 2;
      *(v40 + 16) = "REAudioInputModeAmbientBed";
      qword_1EE19CBB0 = v40;
      __cxa_guard_release(&qword_1EE19CB50);
    }
  }

  v11 = qword_1EE19CC70;
  v46 = v9;
  v47 = v10;
  re::TypeBuilder::beginEnumType(v45, &v41, 1, 1, &v46);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v44.var0 = 2 * v16;
        v44.var1 = v15;
        re::TypeBuilder::addEnumConstant(v45, v20, &v44);
        if (*&v44.var0)
        {
          if (*&v44.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v44.var0 = 2 * v25;
          v44.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v45, v29, &v44);
          if (*&v44.var0)
          {
            if (*&v44.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v45, v31);
  xmmword_1EE19CC50 = v43;
  if (v41)
  {
    if (v41)
    {
    }
  }

  if ((a1 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE19CC30;
}

uint64_t *introspect_REAudioPlaybackState(int a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE19CB60, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE19CB68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19CB68))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE19CC78, "REAudioPlaybackState", 8, 8, 1, 1);
      qword_1EE19CC78 = &unk_1F5D0C658;
      qword_1EE19CCB8 = &introspect_REAudioPlaybackState(BOOL)::enumTable;
      dword_1EE19CC88 = 9;
      __cxa_guard_release(&qword_1EE19CB68);
    }

    if (a1)
    {
      if (byte_1EE19CB49)
      {
        return &qword_1EE19CC78;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v51);
      v3 = byte_1EE19CB49;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v51);
      if (v3)
      {
        return &qword_1EE19CC78;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (byte_1EE19CB49)
      {
        goto LABEL_46;
      }
    }

    byte_1EE19CB49 = 1;
    re::IntrospectionRegistry::add(&qword_1EE19CC78, a2);
    v47 = 0x6E6EE0AE8D82AD26;
    v48 = "REAudioPlaybackState";
    v52 = 0x607DD11CB1ALL;
    v53 = "uint64_t";
    v9 = v51[0];
    v10 = v51[1];
    if (v52)
    {
      if (v52)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v48);
    _os_crash();
    __break(1u);
LABEL_49:
    v34 = __cxa_guard_acquire(&qword_1EE19CB60);
    if (v34)
    {
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 0;
      *(v36 + 2) = "REAudioPlaybackState_Stopped";
      qword_1EE19CC00 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 1;
      *(v38 + 2) = "REAudioPlaybackState_Playing";
      qword_1EE19CC08 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 2;
      *(v40 + 2) = "REAudioPlaybackState_Completed";
      qword_1EE19CC10 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 1) = 3;
      *(v42 + 2) = "REAudioPlaybackState_Paused";
      qword_1EE19CC18 = v42;
      v43 = re::introspectionAllocator(v42);
      v44 = (*(*v43 + 32))(v43, 24, 8);
      *v44 = 1;
      *(v44 + 1) = 9;
      *(v44 + 2) = "REAudioPlaybackState_Initial";
      qword_1EE19CC20 = v44;
      v45 = re::introspectionAllocator(v44);
      v46 = (*(*v45 + 32))(v45, 24, 8);
      *v46 = 1;
      *(v46 + 8) = 4;
      *(v46 + 16) = "REAudioPlaybackState_Prepared";
      qword_1EE19CC28 = v46;
      __cxa_guard_release(&qword_1EE19CB60);
    }
  }

  v11 = qword_1EE19CCB8;
  v52 = v9;
  v53 = v10;
  re::TypeBuilder::beginEnumType(v51, &v47, 1, 1, &v52);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v50.var0 = 2 * v16;
        v50.var1 = v15;
        re::TypeBuilder::addEnumConstant(v51, v20, &v50);
        if (*&v50.var0)
        {
          if (*&v50.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v50.var0 = 2 * v25;
          v50.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v51, v29, &v50);
          if (*&v50.var0)
          {
            if (*&v50.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v51, v31);
  xmmword_1EE19CC98 = v49;
  if (v47)
  {
    if (v47)
    {
    }
  }

  if ((a1 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE19CC78;
}

uint64_t *introspect_REAudioSourceDirectivityMode(int a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE19CB70, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE19CB78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19CB78))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE19CCC0, "REAudioSourceDirectivityMode", 4, 4, 1, 1);
      qword_1EE19CCC0 = &unk_1F5D0C658;
      qword_1EE19CD00 = &introspect_REAudioSourceDirectivityMode(BOOL)::enumTable;
      dword_1EE19CCD0 = 9;
      __cxa_guard_release(&qword_1EE19CB78);
    }

    if (a1)
    {
      if (byte_1EE19CB4A)
      {
        return &qword_1EE19CCC0;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v45);
      v3 = byte_1EE19CB4A;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v45);
      if (v3)
      {
        return &qword_1EE19CCC0;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (byte_1EE19CB4A)
      {
        goto LABEL_46;
      }
    }

    byte_1EE19CB4A = 1;
    re::IntrospectionRegistry::add(&qword_1EE19CCC0, a2);
    v41 = 0x4BCB4D54408DF13ALL;
    v42 = "REAudioSourceDirectivityMode";
    v46 = 208862;
    v47 = "int";
    v9 = v45[0];
    v10 = v45[1];
    if (v46)
    {
      if (v46)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v42);
    _os_crash();
    __break(1u);
LABEL_49:
    v34 = __cxa_guard_acquire(&qword_1EE19CB70);
    if (v34)
    {
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 0;
      *(v36 + 2) = "REAudioSourceDirectivityModeOmnidirectional";
      qword_1EE19CBB8 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 1;
      *(v38 + 2) = "REAudioSourceDirectivityModeBeam";
      qword_1EE19CBC0 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 8) = 3;
      *(v40 + 16) = "REAudioSourceDirectivityModeSphericalCap";
      qword_1EE19CBC8 = v40;
      __cxa_guard_release(&qword_1EE19CB70);
    }
  }

  v11 = qword_1EE19CD00;
  v46 = v9;
  v47 = v10;
  re::TypeBuilder::beginEnumType(v45, &v41, 1, 1, &v46);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v44.var0 = 2 * v16;
        v44.var1 = v15;
        re::TypeBuilder::addEnumConstant(v45, v20, &v44);
        if (*&v44.var0)
        {
          if (*&v44.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v44.var0 = 2 * v25;
          v44.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v45, v29, &v44);
          if (*&v44.var0)
          {
            if (*&v44.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v45, v31);
  xmmword_1EE19CCE0 = v43;
  if (v41)
  {
    if (v41)
    {
    }
  }

  if ((a1 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE19CCC0;
}

uint64_t *introspect_REAudioNormalizationMode(int a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE19CB80, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE19CB88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19CB88))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE19CD08, "REAudioNormalizationMode", 4, 4, 1, 1);
      qword_1EE19CD08 = &unk_1F5D0C658;
      qword_1EE19CD48 = &introspect_REAudioNormalizationMode(BOOL)::enumTable;
      dword_1EE19CD18 = 9;
      __cxa_guard_release(&qword_1EE19CB88);
    }

    if (a1)
    {
      if (byte_1EE19CB4B)
      {
        return &qword_1EE19CD08;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v45);
      v3 = byte_1EE19CB4B;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v45);
      if (v3)
      {
        return &qword_1EE19CD08;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (byte_1EE19CB4B)
      {
        goto LABEL_46;
      }
    }

    byte_1EE19CB4B = 1;
    re::IntrospectionRegistry::add(&qword_1EE19CD08, a2);
    v41 = 0xCFA8E1CC2B40CB7ALL;
    v42 = "REAudioNormalizationMode";
    v46 = 208862;
    v47 = "int";
    v9 = v45[0];
    v10 = v45[1];
    if (v46)
    {
      if (v46)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v42);
    _os_crash();
    __break(1u);
LABEL_49:
    v34 = __cxa_guard_acquire(&qword_1EE19CB80);
    if (v34)
    {
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 0;
      *(v36 + 2) = "REAudioNormalizationModeNone";
      qword_1EE19CBD0 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 1;
      *(v38 + 2) = "REAudioNormalizationModeDynamic";
      qword_1EE19CBD8 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 8) = 2;
      *(v40 + 16) = "REAudioNormalizationModeStatic";
      qword_1EE19CBE0 = v40;
      __cxa_guard_release(&qword_1EE19CB80);
    }
  }

  v11 = qword_1EE19CD48;
  v46 = v9;
  v47 = v10;
  re::TypeBuilder::beginEnumType(v45, &v41, 1, 1, &v46);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v44.var0 = 2 * v16;
        v44.var1 = v15;
        re::TypeBuilder::addEnumConstant(v45, v20, &v44);
        if (*&v44.var0)
        {
          if (*&v44.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v44.var0 = 2 * v25;
          v44.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v45, v29, &v44);
          if (*&v44.var0)
          {
            if (*&v44.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v45, v31);
  xmmword_1EE19CD28 = v43;
  if (v41)
  {
    if (v41)
    {
    }
  }

  if ((a1 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE19CD08;
}

uint64_t *introspect_REAudioCalibrationMode(int a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE19CB90, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE19CB98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19CB98))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE19CD50, "REAudioCalibrationMode", 4, 4, 1, 1);
      qword_1EE19CD50 = &unk_1F5D0C658;
      qword_1EE19CD90 = &introspect_REAudioCalibrationMode(BOOL)::enumTable;
      dword_1EE19CD60 = 9;
      __cxa_guard_release(&qword_1EE19CB98);
    }

    if (a1)
    {
      if (byte_1EE19CB4C)
      {
        return &qword_1EE19CD50;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v45);
      v3 = byte_1EE19CB4C;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v45);
      if (v3)
      {
        return &qword_1EE19CD50;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (byte_1EE19CB4C)
      {
        goto LABEL_46;
      }
    }

    byte_1EE19CB4C = 1;
    re::IntrospectionRegistry::add(&qword_1EE19CD50, a2);
    v41 = 0x72177D22AD933D94;
    v42 = "REAudioCalibrationMode";
    v46 = 208862;
    v47 = "int";
    v9 = v45[0];
    v10 = v45[1];
    if (v46)
    {
      if (v46)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v42);
    _os_crash();
    __break(1u);
LABEL_49:
    v34 = __cxa_guard_acquire(&qword_1EE19CB90);
    if (v34)
    {
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 0;
      *(v36 + 2) = "REAudioCalibrationModeNone";
      qword_1EE19CBE8 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 1;
      *(v38 + 2) = "REAudioCalibrationModeRelativeSpl";
      qword_1EE19CBF0 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 8) = 2;
      *(v40 + 16) = "REAudioCalibrationModeAbsoluteSpl";
      qword_1EE19CBF8 = v40;
      __cxa_guard_release(&qword_1EE19CB90);
    }
  }

  v11 = qword_1EE19CD90;
  v46 = v9;
  v47 = v10;
  re::TypeBuilder::beginEnumType(v45, &v41, 1, 1, &v46);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v44.var0 = 2 * v16;
        v44.var1 = v15;
        re::TypeBuilder::addEnumConstant(v45, v20, &v44);
        if (*&v44.var0)
        {
          if (*&v44.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v44.var0 = 2 * v25;
          v44.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v45, v29, &v44);
          if (*&v44.var0)
          {
            if (*&v44.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v45, v31);
  xmmword_1EE19CD70 = v43;
  if (v41)
  {
    if (v41)
    {
    }
  }

  if ((a1 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE19CD50;
}

void sub_1E212C80C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

re::AudioSessionCache *re::AudioSessionCache::AudioSessionCache(NSObject **this)
{
  *(this + 28) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 44) = 0x7FFFFFFF;
  this[7] = 0;
  this[8] = 54000;
  v5 = 0x100000001;
  v6 = 0;
  v7 = 0;
  re::dispatch::Queue::make("com.apple.re.AudioSessionCache", &v5, &v8);
  if (&v8 != this)
  {
    v2 = v8;
    v8 = 0;
    v3 = *this;
    *this = v2;
  }

  return this;
}

void re::AudioSessionCache::sessionForID(os_unfair_lock_s *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v11 = a2;
  if (a2)
  {
    os_unfair_lock_lock(this + 14);
    v5 = re::HashTable<unsigned int,re::AudioSessionCache::CacheState,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(&this[2], &v11);
    if (v5)
    {
      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](a3, v5);
      os_unfair_lock_unlock(this + 14);
    }

    else
    {
      v9 = 1;
      v10 = *&this[16]._os_unfair_lock_opaque;
      re::HashTable<unsigned int,re::AudioSessionCache::CacheState,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::add(&this[2], &v11, v8);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
      os_unfair_lock_unlock(this + 14);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = ___ZN2re17AudioSessionCache12sessionForIDEj_block_invoke;
      v6[3] = &__block_descriptor_44_e5_v8__0l;
      v6[4] = this;
      v7 = v11;
      dispatch_async(*&this->_os_unfair_lock_opaque, v6);
      *(a3 + 8) = 1;
    }
  }

  else
  {
    *(a3 + 8) = 0;
  }
}

void sub_1E212CE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  os_unfair_lock_unlock(v7 + 14);
  _Unwind_Resume(a1);
}

uint64_t re::HashTable<unsigned int,re::AudioSessionCache::CacheState,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(uint64_t a1, _DWORD *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned int,re::AudioSessionCache::CacheState,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 40 * v6 + 8;
  }
}

uint64_t re::HashTable<unsigned int,re::AudioSessionCache::CacheState,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::add(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned int,re::AudioSessionCache::CacheState,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 40 * HIDWORD(v10) + 8;
  }

  v7 = re::HashTable<unsigned int,re::AudioSessionCache::CacheState,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, v10, v9);
  *(v7 + 4) = *a2;
  result = std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v7 + 8, a3);
  *(v7 + 24) = *(a3 + 16);
  ++*(a1 + 40);
  return result;
}

void ___ZN2re17AudioSessionCache12sessionForIDEj_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *re::audioLogObjects(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    *buf = 67109376;
    *&buf[4] = v4;
    LOWORD(v15) = 1024;
    *(&v15 + 2) = v4;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "Calling [AVAudioSession retrieveSessionWithID:%u(0x%x)]", buf, 0xEu);
  }

  v6 = *(a1 + 40);
  v5 = (a1 + 40);
  v12 = [MEMORY[0x1E698D710] retrieveSessionWithID:v6];
  os_unfair_lock_lock(v2 + 14);
  v7 = re::HashTable<unsigned int,re::AudioSessionCache::CacheState,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(&v2[2], v5);
  v11 = v7;
  if (v7)
  {
    *buf = &v12;
    v15 = v5;
    v16 = &v12;
    v17 = v5;
    v18 = &v11;
    v19 = v5;
    v20 = v5;
    v8 = *(v7 + 8);
    if (v8 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v13 = buf;
    (off_1F5CCAE40[v8])(&v13);
  }

  else
  {
    v9 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *v5;
      *buf = 67109376;
      *&buf[4] = v10;
      LOWORD(v15) = 1024;
      *(&v15 + 2) = v10;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "[AVAudioSession retrieveSessionWithID:%u(0x%x)] removed from cache before retrieval finished", buf, 0xEu);
    }
  }

  os_unfair_lock_unlock(v2 + 14);
}

void sub_1E212D16C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  os_unfair_lock_unlock(v11 + 14);

  _Unwind_Resume(a1);
}

uint64_t re::AudioSessionCache::addSession(os_unfair_lock_s *this, AVAudioSession *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v17 = [(AVAudioSession *)v3 opaqueSessionID];
  if (!v17)
  {
    v4 = this[15]._os_unfair_lock_opaque + 1;
    do
    {
      v5 = v4;
      v4 = 1;
    }

    while (!v5);
    this[15]._os_unfair_lock_opaque = v5;
    v17 = v5;
  }

  os_unfair_lock_lock(this + 14);
  v6 = re::HashTable<unsigned int,re::AudioSessionCache::CacheState,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(&this[2], &v17);
  if (v6 && *(v6 + 2) == 3)
  {
    v7 = *re::audioLogObjects(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *&buf[4] = v17;
      LOWORD(v19) = 1024;
      *(&v19 + 2) = v17;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_INFO, "[RE] AudioSessionCache::addSession: session with known sessionID=%u(0x%x)! Not replacing", buf, 0xEu);
    }
  }

  else
  {
    v14 = v3;
    v15 = 3;
    v16 = *&this[16]._os_unfair_lock_opaque;
    *buf = 0;
    v19 = 0;
    v20 = 0;
    v8 = 0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30));
    re::HashTable<unsigned int,re::AudioSessionCache::CacheState,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&this[2], &v17, (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31), buf);
    v9 = HIDWORD(v19);
    if (HIDWORD(v19) == 0x7FFFFFFF)
    {
      v10 = re::HashTable<unsigned int,re::AudioSessionCache::CacheState,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(&this[2], v19, *buf);
      *(v10 + 4) = v17;
      std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v10 + 8, &v14);
      *(v10 + 24) = v16;
      ++this[12]._os_unfair_lock_opaque;
    }

    else
    {
      ++this[12]._os_unfair_lock_opaque;
      v11 = *&this[6]._os_unfair_lock_opaque + 40 * v9;
      std::__variant_detail::__assignment<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>>::__assign_alt[abi:ne200100]<3ul,re::audiosession_state::SessionAvailable,re::audiosession_state::SessionAvailable>(v11 + 8, (v11 + 8), &v14);
      *(v11 + 24) = v16;
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v14);
  }

  v12 = v17;
  os_unfair_lock_unlock(this + 14);

  return v12;
}

void sub_1E212D3A8(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 14);

  _Unwind_Resume(a1);
}

void re::AudioSessionCache::keepSessionAlive(os_unfair_lock_s *this, int a2)
{
  v4 = a2;
  os_unfair_lock_lock(this + 14);
  v3 = re::HashTable<unsigned int,re::AudioSessionCache::CacheState,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(&this[2], &v4);
  if (v3)
  {
    *(v3 + 16) = *&this[16]._os_unfair_lock_opaque;
  }

  os_unfair_lock_unlock(this + 14);
}

void sub_1E212DBF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, __int16 a21, char a22, char a23, uint64_t a24)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,REPHASESoundEvent * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,REPHASESoundEvent * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](&a21);

  os_unfair_lock_unlock(v24 + 14);
  if (__p)
  {
    operator delete(__p);
  }

  std::unique_ptr<std::unordered_map<unsigned int,AVAudioSession * {__strong}>>::reset[abi:ne200100](&a20);
  _Unwind_Resume(a1);
}

void std::vector<unsigned int>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 2) + 1;
    if (v8 >> 62)
    {
      std::vector<PHASESource * {__strong}>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (4 * (v7 >> 2));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

int *re::HashTable<unsigned int,re::AudioSessionCache::CacheState,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::remove(uint64_t a1, _DWORD *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned int,re::AudioSessionCache::CacheState,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v11);
  v5 = v13;
  if (v13 != 0x7FFFFFFF)
  {
    v6 = *(a1 + 16);
    v7 = *(v6 + 40 * v13) & 0x7FFFFFFF;
    if (v14 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v12) = v7;
      v5 = v13;
    }

    else
    {
      *(v6 + 40 * v14) = *(v6 + 40 * v14) & 0x80000000 | v7;
    }

    result = (v6 + 40 * v5);
    v8 = *result;
    if (*result < 0)
    {
      *result = v8 & 0x7FFFFFFF;
      result = std::__variant_detail::__dtor<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((result + 2));
      v9 = v13;
      v6 = *(a1 + 16);
      v8 = *(v6 + 40 * v13);
      v5 = v13;
    }

    else
    {
      v9 = v5;
    }

    v10 = *(a1 + 40);
    *(v6 + 40 * v9) = *(a1 + 36) | v8 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v5;
    *(a1 + 40) = v10 + 1;
  }

  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

uint64_t ___ZN2re17AudioSessionCache6updateEv_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 8);
  v2 = *(*(v1 + 48) + 16);
  if (v2)
  {
    do
    {
      v4 = *(v2 + 4);
      v5 = v2[3];
      v6 = *re::audioLogObjects(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v9 = v4;
        v10 = 1024;
        v11 = v4;
        _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "[RE] AudioSessionCache::update: deleting unused audio session %u (0x%x)", buf, 0xEu);
      }

      v2 = *v2;
    }

    while (v2);
    v1 = *(*(a1 + 32) + 8);
  }

  return std::unique_ptr<std::unordered_map<unsigned int,AVAudioSession * {__strong}>>::reset[abi:ne200100]((v1 + 48));
}

uint64_t std::unique_ptr<std::unordered_map<unsigned int,AVAudioSession * {__strong}>>::reset[abi:ne200100](uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,NSString * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSString * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSString * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSString * {__strong}>>>::~__hash_table(result);

    JUMPOUT(0x1E6906520);
  }

  return result;
}

void re::AudioSessionCache::clear(dispatch_queue_t *this)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2re17AudioSessionCache5clearEv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  dispatch_async(*this, block);
}

void ___ZN2re17AudioSessionCache5clearEv_block_invoke(re::audio *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 4);
  MediaserverdPID = re::audio::getMediaserverdPID(a1);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  os_unfair_lock_lock((v1 + 56));
  v4 = *(v1 + 40);
  if (v4)
  {
    v5 = 0;
    v6 = *(v1 + 24);
    while (1)
    {
      v7 = *v6;
      v6 += 10;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(v1 + 40);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 == v4)
  {

    os_unfair_lock_unlock((v1 + 56));
  }

  else
  {
    v8 = *(v1 + 40);
    do
    {
      v9 = *(v1 + 24) + 40 * v5;
      if (*(v9 + 16) == 2 || MediaserverdPID != *(v9 + 4) >> 12)
      {
        std::vector<unsigned int>::push_back[abi:ne200100](&v16, (v9 + 4));
        v8 = *(v1 + 40);
      }

      if (v8 <= v5 + 1)
      {
        v10 = v5 + 1;
      }

      else
      {
        v10 = v8;
      }

      while (v10 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(*(v1 + 24) + 40 * v5) & 0x80000000) != 0)
        {
          goto LABEL_22;
        }
      }

      LODWORD(v5) = v10;
LABEL_22:
      ;
    }

    while (v5 != v4);
    v11 = v16;
    v12 = v17;
    if (v16 != v17)
    {
      v13 = v16;
      do
      {
        v15 = *v13;
        v14 = *re::audioLogObjects(v3);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          v20 = v15;
          v21 = 1024;
          v22 = v15;
          _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_INFO, "[RE] AudioSessionCache::clear: removing unused audio session ID %u (0x%x) from cache", buf, 0xEu);
        }

        v3 = re::HashTable<unsigned int,re::AudioSessionCache::CacheState,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::remove(v1 + 8, &v15);
        ++v13;
      }

      while (v13 != v12);
    }

    os_unfair_lock_unlock((v1 + 56));
    if (v11)
    {
      operator delete(v11);
    }
  }
}

void sub_1E212E294(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 14);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>,(std::__variant_detail::_Trait)1> const&>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 8);
  if (v5 != -1)
  {
    v6 = a1;
    result = (__const__ZNSt3__116__variant_detail12__visitation6__base14__visit_alt_atB8ne200100IZNS0_6__ctorINS0_8__traitsIJN2re18audiosession_state16InvalidSessionIDENS7_17RetrievingSessionENS7_18SessionUnavailableENS7_16SessionAvailableEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISC_LNS0_6_TraitE1EEEEEvRSD_OT_EUlSM_E_JSJ_EEEDcmSM_DpOT0____fdiagonal[v5])(&v6, a2);
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 != -1)
  {
    result = (off_1F5CCAE00[v2])(&v3, result);
  }

  *(v1 + 8) = -1;
  return result;
}

id _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN2re18audiosession_state16InvalidSessionIDENS9_17RetrievingSessionENS9_18SessionUnavailableENS9_16SessionAvailableEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISE_LNS0_6_TraitE1EEEEEvRSF_OT_EUlSO_E_JRKNS0_6__baseILSI_1EJSA_SB_SC_SD_EEEEEEDcSN_DpT0_(void **a1, id *a2)
{
  v2 = *a1;
  result = *a2;
  *v2 = result;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIN2re8internal10overloadedIJZZNS8_17AudioSessionCache12sessionForIDEjEUb_E3__0ZZNSB_12sessionForIDEjEUb_E3__1ZZNSB_12sessionForIDEjEUb_E3__2ZZNSB_12sessionForIDEjEUb_E3__3EEEEEJRNS0_6__baseILNS0_6_TraitE1EJNS8_18audiosession_state16InvalidSessionIDENSL_17RetrievingSessionENSL_18SessionUnavailableENSL_16SessionAvailableEEEEEEEDcT_DpT0_(re *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = *re::audioLogObjects(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = **(v1 + 48);
    v4[0] = 67109376;
    v4[1] = v3;
    v5 = 1024;
    v6 = v3;
    _os_log_error_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_ERROR, "[AVAudioSession retrieveSessionWithID:%u(0x%x)] unexpected state 'InvalidSessionID'. Expected 'RetrievingSession'", v4, 0xEu);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIN2re8internal10overloadedIJZZNS8_17AudioSessionCache12sessionForIDEjEUb_E3__0ZZNSB_12sessionForIDEjEUb_E3__1ZZNSB_12sessionForIDEjEUb_E3__2ZZNSB_12sessionForIDEjEUb_E3__3EEEEEJRNS0_6__baseILNS0_6_TraitE1EJNS8_18audiosession_state16InvalidSessionIDENSL_17RetrievingSessionENSL_18SessionUnavailableENSL_16SessionAvailableEEEEEEEDcT_DpT0_(re *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = **(*a1 + 16);
  v3 = re::audioLogObjects(a1);
  v4 = *v3;
  if (v2)
  {
    v5 = v4;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = **(v1 + 24);
      v7 = **(v1 + 16);
      LODWORD(v10) = 67109890;
      HIDWORD(v10) = v6;
      v11 = 1024;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 1024;
      v16 = [v7 opaqueSessionID];
      _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "[AVAudioSession retrieveSessionWithID:%u(0x%x)] returned %@ opaqueSessionID(%u)", &v10, 0x1Eu);
    }

    v10 = **(v1 + 16);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>>::__assign_alt[abi:ne200100]<3ul,re::audiosession_state::SessionAvailable,re::audiosession_state::SessionAvailable>(**(v1 + 32), **(v1 + 32), &v10);
  }

  else
  {
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v9 = **(v1 + 24);
      LODWORD(v10) = 67109376;
      HIDWORD(v10) = v9;
      v11 = 1024;
      v12 = v9;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "[AVAudioSession retrieveSessionWithID:%u(0x%x)] returned nil", &v10, 0xEu);
    }

    v8 = **(v1 + 32);
    if (*(v8 + 8) != 2)
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](**(v1 + 32));
      *(v8 + 8) = 2;
    }
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIN2re8internal10overloadedIJZZNS8_17AudioSessionCache12sessionForIDEjEUb_E3__0ZZNSB_12sessionForIDEjEUb_E3__1ZZNSB_12sessionForIDEjEUb_E3__2ZZNSB_12sessionForIDEjEUb_E3__3EEEEEJRNS0_6__baseILNS0_6_TraitE1EJNS8_18audiosession_state16InvalidSessionIDENSL_17RetrievingSessionENSL_18SessionUnavailableENSL_16SessionAvailableEEEEEEEDcT_DpT0_(re *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = *re::audioLogObjects(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = **(v1 + 40);
    v4[0] = 67109376;
    v4[1] = v3;
    v5 = 1024;
    v6 = v3;
    _os_log_error_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_ERROR, "[AVAudioSession retrieveSessionWithID:%u(0x%x)] unexpected state 'SessionUnavailable'. Expected 'RetrievingSession'", v4, 0xEu);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIN2re8internal10overloadedIJZZNS8_17AudioSessionCache12sessionForIDEjEUb_E3__0ZZNSB_12sessionForIDEjEUb_E3__1ZZNSB_12sessionForIDEjEUb_E3__2ZZNSB_12sessionForIDEjEUb_E3__3EEEEEJRNS0_6__baseILNS0_6_TraitE1EJNS8_18audiosession_state16InvalidSessionIDENSL_17RetrievingSessionENSL_18SessionUnavailableENSL_16SessionAvailableEEEEEEEDcT_DpT0_(id ***a1, id *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *a2;
  if (*a2 == **v3 && (v4 = [(re *)v4 opaqueSessionID], v4 == *v3[1]))
  {
    v5 = *re::audioLogObjects(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *v3[1];
      v13 = 67109376;
      v14 = v6;
      v15 = 1024;
      v16 = v6;
      _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "[AVAudioSession retrieveSessionWithID:%u(0x%x)] session was added with 'addSession' call before retrieval finished", &v13, 0xEu);
    }
  }

  else
  {
    v7 = *re::audioLogObjects(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *v3[1];
      v9 = **v3;
      v10 = [*a2 opaqueSessionID];
      v11 = [*a2 opaqueSessionID];
      v12 = *a2;
      v13 = 67110402;
      v14 = v8;
      v15 = 1024;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 1024;
      v20 = v10;
      v21 = 1024;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "[AVAudioSession retrieveSessionWithID:%u(0x%x)] different session was added with 'addSession' call before retrieval finished.\nRetrieved session: %@\nSession found in cache: %u(0x%x) %@", &v13, 0x2Eu);
    }
  }
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>>::__assign_alt[abi:ne200100]<3ul,re::audiosession_state::SessionAvailable,re::audiosession_state::SessionAvailable>(uint64_t a1, void **a2, void **a3)
{
  if (*(a1 + 8) == 3)
  {
    v4 = *a3;
    *a3 = 0;
    v5 = *a2;
    *a2 = v4;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    v7 = *a3;
    *a3 = 0;
    *a1 = v7;
    *(a1 + 8) = 3;
  }
}

double re::HashTable<unsigned int,re::AudioSessionCache::CacheState,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          std::__variant_detail::__dtor<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v6 + v4 + 8);
          v3 = *(a1 + 8);
        }

        v4 += 40;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::HashTable<unsigned int,re::AudioSessionCache::CacheState,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_5;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(result + 16);
  if (*(v7 + 40 * v6 + 4) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 40 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 40 * v8 + 4) == *a2)
      {
        break;
      }

      v8 = *(v7 + 40 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned int,re::AudioSessionCache::CacheState,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          *&v26[16] = *(a1 + 16);
          *(a1 + 16) = v12;
          v14 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v13 = *&v26[32];
          *(a1 + 24) = v14;
          ++*&v26[40];
          v15 = v13;
          if (v13)
          {
            v16 = 0;
            v17 = 0;
            do
            {
              if ((*(*&v26[16] + v16) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned int,re::AudioSessionCache::CacheState,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, *(*&v26[16] + v16 + 32) % *(a1 + 24));
                v19 = *&v26[16] + v16;
                *(v18 + 4) = *(*&v26[16] + v16 + 4);
                std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v18 + 8, v19 + 8);
                *(v18 + 24) = *(v19 + 24);
                v15 = *&v26[32];
              }

              ++v17;
              v16 += 40;
            }

            while (v17 < v15);
          }

          re::HashTable<unsigned int,re::AudioSessionCache::CacheState,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(v26);
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
    v21 = *(v20 + 40 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 40 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 40 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 32) = a3;
  ++*(a1 + 28);
  return v20 + 40 * v5;
}

uint64_t std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>,(std::__variant_detail::_Trait)1>>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>,(std::__variant_detail::_Trait)1>>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 8);
  if (v5 != -1)
  {
    v6 = a1;
    result = (__const__ZNSt3__116__variant_detail12__visitation6__base14__visit_alt_atB8ne200100IZNS0_6__ctorINS0_8__traitsIJN2re18audiosession_state16InvalidSessionIDENS7_17RetrievingSessionENS7_18SessionUnavailableENS7_16SessionAvailableEEEEE19__generic_constructB8ne200100INS0_18__move_constructorISC_LNS0_6_TraitE1EEEEEvRSD_OT_EUlSK_E_JSH_EEEDcmSK_DpOT0____fdiagonal[v5])(&v6, a2);
    *(a1 + 8) = v5;
  }

  return result;
}

void **std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable> &&>(void **result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  *a2 = 0;
  *v2 = v3;
  return result;
}

uint64_t *re::introspect_ReverbPreset(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE19CDA0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE19CDA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19CDA8))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE19CDB0, "ReverbPreset", 8, 8, 1, 1);
      qword_1EE19CDB0 = &unk_1F5D0C658;
      qword_1EE19CDF0 = &re::introspect_ReverbPreset(BOOL)::enumTable;
      dword_1EE19CDC0 = 9;
      __cxa_guard_release(&qword_1EE19CDA8);
    }

    if (v2)
    {
      if (_MergedGlobals_116)
      {
        return &qword_1EE19CDB0;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v125);
      v3 = _MergedGlobals_116;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v125);
      if (v3)
      {
        return &qword_1EE19CDB0;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (_MergedGlobals_116)
      {
        goto LABEL_46;
      }
    }

    _MergedGlobals_116 = 1;
    re::IntrospectionRegistry::add(&qword_1EE19CDB0, a2);
    v121 = 0x3C372182BEBBCEE2;
    v122 = "ReverbPreset";
    v126 = 0x2CE93EC744;
    v127 = "int64_t";
    v9 = v125[0];
    v10 = v125[1];
    if (v126)
    {
      if (v126)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v122);
    _os_crash();
    __break(1u);
LABEL_49:
    v34 = __cxa_guard_acquire(&qword_1EE19CDA0);
    if (v34)
    {
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = -1;
      *(v36 + 2) = "Invalid";
      qword_1EE19CDF8 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 1;
      *(v38 + 2) = "MediumRoom";
      qword_1EE19CE00 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 3;
      *(v40 + 2) = "MediumHall";
      qword_1EE19CE08 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 1) = 4;
      *(v42 + 2) = "LargeHall";
      qword_1EE19CE10 = v42;
      v43 = re::introspectionAllocator(v42);
      v44 = (*(*v43 + 32))(v43, 24, 8);
      *v44 = 1;
      *(v44 + 1) = 5;
      *(v44 + 2) = "Plate";
      qword_1EE19CE18 = v44;
      v45 = re::introspectionAllocator(v44);
      v46 = (*(*v45 + 32))(v45, 24, 8);
      *v46 = 1;
      *(v46 + 1) = 6;
      *(v46 + 2) = "MediumChamber";
      qword_1EE19CE20 = v46;
      v47 = re::introspectionAllocator(v46);
      v48 = (*(*v47 + 32))(v47, 24, 8);
      *v48 = 1;
      *(v48 + 1) = 7;
      *(v48 + 2) = "LargeChamber";
      qword_1EE19CE28 = v48;
      v49 = re::introspectionAllocator(v48);
      v50 = (*(*v49 + 32))(v49, 24, 8);
      *v50 = 1;
      *(v50 + 1) = 8;
      *(v50 + 2) = "Cathedral";
      qword_1EE19CE30 = v50;
      v51 = re::introspectionAllocator(v50);
      v52 = (*(*v51 + 32))(v51, 24, 8);
      *v52 = 1;
      *(v52 + 1) = 9;
      *(v52 + 2) = "LargeRoom2";
      qword_1EE19CE38 = v52;
      v53 = re::introspectionAllocator(v52);
      v54 = (*(*v53 + 32))(v53, 24, 8);
      *v54 = 1;
      *(v54 + 1) = 10;
      *(v54 + 2) = "MediumHall2";
      qword_1EE19CE40 = v54;
      v55 = re::introspectionAllocator(v54);
      v56 = (*(*v55 + 32))(v55, 24, 8);
      *v56 = 1;
      *(v56 + 1) = 11;
      *(v56 + 2) = "MediumHall3";
      qword_1EE19CE48 = v56;
      v57 = re::introspectionAllocator(v56);
      v58 = (*(*v57 + 32))(v57, 24, 8);
      *v58 = 1;
      *(v58 + 1) = 12;
      *(v58 + 2) = "LargeHall2";
      qword_1EE19CE50 = v58;
      v59 = re::introspectionAllocator(v58);
      v60 = (*(*v59 + 32))(v59, 24, 8);
      *v60 = 1;
      *(v60 + 1) = 100;
      *(v60 + 2) = "Anechoic";
      qword_1EE19CE58 = v60;
      v61 = re::introspectionAllocator(v60);
      v62 = (*(*v61 + 32))(v61, 24, 8);
      *v62 = 1;
      *(v62 + 1) = 101;
      *(v62 + 2) = "Outside";
      qword_1EE19CE60 = v62;
      v63 = re::introspectionAllocator(v62);
      v64 = (*(*v63 + 32))(v63, 24, 8);
      *v64 = 1;
      *(v64 + 1) = 102;
      *(v64 + 2) = "Museum";
      qword_1EE19CE68 = v64;
      v65 = re::introspectionAllocator(v64);
      v66 = (*(*v65 + 32))(v65, 24, 8);
      *v66 = 1;
      *(v66 + 1) = 103;
      *(v66 + 2) = "LargeRoom3";
      qword_1EE19CE70 = v66;
      v67 = re::introspectionAllocator(v66);
      v68 = (*(*v67 + 32))(v67, 24, 8);
      *v68 = 1;
      *(v68 + 1) = 104;
      *(v68 + 2) = "LargeRoom4";
      qword_1EE19CE78 = v68;
      v69 = re::introspectionAllocator(v68);
      v70 = (*(*v69 + 32))(v69, 24, 8);
      *v70 = 1;
      *(v70 + 1) = 105;
      *(v70 + 2) = "Cinema";
      qword_1EE19CE80 = v70;
      v71 = re::introspectionAllocator(v70);
      v72 = (*(*v71 + 32))(v71, 24, 8);
      *v72 = 1;
      *(v72 + 1) = 106;
      *(v72 + 2) = "ListeningRoom";
      qword_1EE19CE88 = v72;
      v73 = re::introspectionAllocator(v72);
      v74 = (*(*v73 + 32))(v73, 24, 8);
      *v74 = 1;
      *(v74 + 1) = 107;
      *(v74 + 2) = "LivingRoom";
      qword_1EE19CE90 = v74;
      v75 = re::introspectionAllocator(v74);
      v76 = (*(*v75 + 32))(v75, 24, 8);
      *v76 = 1;
      *(v76 + 1) = 108;
      *(v76 + 2) = "Kitchen";
      qword_1EE19CE98 = v76;
      v77 = re::introspectionAllocator(v76);
      v78 = (*(*v77 + 32))(v77, 24, 8);
      *v78 = 1;
      *(v78 + 1) = 109;
      *(v78 + 2) = "Bathroom";
      qword_1EE19CEA0 = v78;
      v79 = re::introspectionAllocator(v78);
      v80 = (*(*v79 + 32))(v79, 24, 8);
      *v80 = 1;
      *(v80 + 1) = 201;
      *(v80 + 2) = "ConcertHall";
      qword_1EE19CEA8 = v80;
      v81 = re::introspectionAllocator(v80);
      v82 = (*(*v81 + 32))(v81, 24, 8);
      *v82 = 1;
      *(v82 + 1) = 202;
      *(v82 + 2) = "VeryLargeRoom";
      qword_1EE19CEB0 = v82;
      v83 = re::introspectionAllocator(v82);
      v84 = (*(*v83 + 32))(v83, 24, 8);
      *v84 = 1;
      *(v84 + 1) = 203;
      *(v84 + 2) = "LargeRoom";
      qword_1EE19CEB8 = v84;
      v85 = re::introspectionAllocator(v84);
      v86 = (*(*v85 + 32))(v85, 24, 8);
      *v86 = 1;
      *(v86 + 1) = 204;
      *(v86 + 2) = "LargeRoomTreated";
      qword_1EE19CEC0 = v86;
      v87 = re::introspectionAllocator(v86);
      v88 = (*(*v87 + 32))(v87, 24, 8);
      *v88 = 1;
      *(v88 + 1) = 205;
      *(v88 + 2) = "MediumRoomDry";
      qword_1EE19CEC8 = v88;
      v89 = re::introspectionAllocator(v88);
      v90 = (*(*v89 + 32))(v89, 24, 8);
      *v90 = 1;
      *(v90 + 1) = 206;
      *(v90 + 2) = "MediumRoomTreated";
      qword_1EE19CED0 = v90;
      v91 = re::introspectionAllocator(v90);
      v92 = (*(*v91 + 32))(v91, 24, 8);
      *v92 = 1;
      *(v92 + 1) = 207;
      *(v92 + 2) = "SmallRoom";
      qword_1EE19CED8 = v92;
      v93 = re::introspectionAllocator(v92);
      v94 = (*(*v93 + 32))(v93, 24, 8);
      *v94 = 1;
      *(v94 + 1) = 208;
      *(v94 + 2) = "SmallRoomBright";
      qword_1EE19CEE0 = v94;
      v95 = re::introspectionAllocator(v94);
      v96 = (*(*v95 + 32))(v95, 24, 8);
      *v96 = 1;
      *(v96 + 1) = 209;
      *(v96 + 2) = "VerySmallRoomBright";
      qword_1EE19CEE8 = v96;
      v97 = re::introspectionAllocator(v96);
      v98 = (*(*v97 + 32))(v97, 24, 8);
      *v98 = 1;
      *(v98 + 1) = 1001;
      *(v98 + 2) = "Environment01";
      qword_1EE19CEF0 = v98;
      v99 = re::introspectionAllocator(v98);
      v100 = (*(*v99 + 32))(v99, 24, 8);
      *v100 = 1;
      *(v100 + 1) = 1002;
      *(v100 + 2) = "Environment02";
      qword_1EE19CEF8 = v100;
      v101 = re::introspectionAllocator(v100);
      v102 = (*(*v101 + 32))(v101, 24, 8);
      *v102 = 1;
      *(v102 + 1) = 1003;
      *(v102 + 2) = "Environment03";
      qword_1EE19CF00 = v102;
      v103 = re::introspectionAllocator(v102);
      v104 = (*(*v103 + 32))(v103, 24, 8);
      *v104 = 1;
      *(v104 + 1) = 1004;
      *(v104 + 2) = "Environment04";
      qword_1EE19CF08 = v104;
      v105 = re::introspectionAllocator(v104);
      v106 = (*(*v105 + 32))(v105, 24, 8);
      *v106 = 1;
      *(v106 + 1) = 1005;
      *(v106 + 2) = "Environment05";
      qword_1EE19CF10 = v106;
      v107 = re::introspectionAllocator(v106);
      v108 = (*(*v107 + 32))(v107, 24, 8);
      *v108 = 1;
      *(v108 + 1) = 1006;
      *(v108 + 2) = "Environment06";
      qword_1EE19CF18 = v108;
      v109 = re::introspectionAllocator(v108);
      v110 = (*(*v109 + 32))(v109, 24, 8);
      *v110 = 1;
      *(v110 + 1) = 1007;
      *(v110 + 2) = "Environment07";
      qword_1EE19CF20 = v110;
      v111 = re::introspectionAllocator(v110);
      v112 = (*(*v111 + 32))(v111, 24, 8);
      *v112 = 1;
      *(v112 + 1) = 1008;
      *(v112 + 2) = "Environment08";
      qword_1EE19CF28 = v112;
      v113 = re::introspectionAllocator(v112);
      v114 = (*(*v113 + 32))(v113, 24, 8);
      *v114 = 1;
      *(v114 + 1) = 1009;
      *(v114 + 2) = "Environment09";
      qword_1EE19CF30 = v114;
      v115 = re::introspectionAllocator(v114);
      v116 = (*(*v115 + 32))(v115, 24, 8);
      *v116 = 1;
      *(v116 + 1) = 1010;
      *(v116 + 2) = "Environment10";
      qword_1EE19CF38 = v116;
      v117 = re::introspectionAllocator(v116);
      v118 = (*(*v117 + 32))(v117, 24, 8);
      *v118 = 1;
      *(v118 + 1) = 1012;
      *(v118 + 2) = "Environment12";
      qword_1EE19CF40 = v118;
      v119 = re::introspectionAllocator(v118);
      v120 = (*(*v119 + 32))(v119, 24, 8);
      *v120 = 1;
      *(v120 + 8) = 941;
      *(v120 + 16) = "Simulated";
      qword_1EE19CF48 = v120;
      __cxa_guard_release(&qword_1EE19CDA0);
    }
  }

  v11 = qword_1EE19CDF0;
  v126 = v9;
  v127 = v10;
  re::TypeBuilder::beginEnumType(v125, &v121, 1, 1, &v126);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v124.var0 = 2 * v16;
        v124.var1 = v15;
        re::TypeBuilder::addEnumConstant(v125, v20, &v124);
        if (*&v124.var0)
        {
          if (*&v124.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v124.var0 = 2 * v25;
          v124.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v125, v29, &v124);
          if (*&v124.var0)
          {
            if (*&v124.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v125, v31);
  xmmword_1EE19CDD0 = v123;
  if (v121)
  {
    if (v121)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE19CDB0;
}

void *re::ecs2::allocInfo_AudioPlaybackGroup(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_117, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_117))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19CF80, "AudioPlaybackGroup");
    __cxa_guard_release(&_MergedGlobals_117);
  }

  return &unk_1EE19CF80;
}

void re::ecs2::initInfo_AudioPlaybackGroup(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v23[0] = 0x5BEC4D74AA90A1CLL;
  v23[1] = "AudioPlaybackGroup";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&qword_1EE19CF58, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19CF58);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_uint8_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "_groupSize";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x800000002;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE19CF60 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_uint64_t(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "_groupToken";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 3;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE19CF68 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_uint64_t(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "_audioPlayerToken";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x1000000004;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE19CF70 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_uint64_t(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "_transportControlToken";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x2000000005;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE19CF78 = v21;
      __cxa_guard_release(&qword_1EE19CF58);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE19CF60;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AudioPlaybackGroup>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AudioPlaybackGroup>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AudioPlaybackGroup>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AudioPlaybackGroup>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v22 = v24;
}

uint64_t re::audio::getPhase1AcousticMeshEventSignpostData@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = xmmword_1E30631F0;
  *(a2 + 40) = xmmword_1E30631F0;
  *(a2 + 56) = xmmword_1E30631F0;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = result;
    for (i = 0; i != v3; ++i)
    {
      v6 = v4[5] + 48 * ((i + v4[3]) % v4[1]);
      v8[0] = a2;
      v8[1] = a2;
      v8[2] = a2;
      v7 = *(v6 + 40);
      if (v7 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v9 = v8;
      result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_5audio38getPhase1AcousticMeshEventSignpostDataERKNS6_5QueueINS_7variantIJNS6_12DynamicArrayINS9_23AcousticMeshRemovalDataEEENSC_INSB_IJNS9_16AcousticMeshDataENS9_21AcousticARKitMeshDataEEEEEENSC_INSB_IJNS9_22AcousticMeshUpdateDataENS9_27AcousticARKitMeshUpdateDataEEEEEEEEEEEE3__0ZNS9_38getPhase1AcousticMeshEventSignpostDataESQ_E3__1ZNS9_38getPhase1AcousticMeshEventSignpostDataESQ_E3__2EEEEEJRKNS0_6__implIJSE_SI_SM_EEEEEEDcOT_DpOT0____fmatrix[v7])(&v9);
    }
  }

  return result;
}

void *re::audio::emitPhase1AcousticMeshEventSignposts(void *result)
{
  v1 = result;
  if (*result)
  {
    result = re::internal::enableSignposts(0, 0);
    if (result)
    {
      result = kdebug_trace();
    }
  }

  if (v1[1])
  {
    result = re::internal::enableSignposts(0, 0);
    if (result)
    {
      result = kdebug_trace();
    }
  }

  if (v1[2])
  {
    result = re::internal::enableSignposts(0, 0);
    if (result)
    {

      return kdebug_trace();
    }
  }

  return result;
}

uint64_t re::audio::getPhase3AcousticMeshEventSignpostData@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = xmmword_1E30631F0;
  *(a2 + 40) = xmmword_1E30631F0;
  *(a2 + 56) = xmmword_1E30631F0;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = result;
    for (i = 0; i != v3; ++i)
    {
      v6 = (v4[5] + 48 * ((v4[3] + i) % v4[1]));
      v7 = v6[2];
      if (v7)
      {
        for (j = 0; j != v7; ++j)
        {
          v9 = v6[5] + 48 * ((j + v6[3]) % v6[1]);
          v11[0] = a2;
          v11[1] = a2;
          v11[2] = a2;
          v10 = *(v9 + 40);
          if (v10 == -1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v12 = v11;
          result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_5audio38getPhase3AcousticMeshEventSignpostDataERKNS6_5QueueINSA_INS_7variantIJNS6_12DynamicArrayINS9_23AcousticMeshRemovalDataEEENSC_INS9_17PHASEOccluderDataEEENSC_INS9_23PHASEOccluderUpdateDataEEEEEEEEEEE3__0ZNS9_38getPhase3AcousticMeshEventSignpostDataESN_E3__1ZNS9_38getPhase3AcousticMeshEventSignpostDataESN_E3__2EEEEEJRKNS0_6__implIJSE_SG_SI_EEEEEEDcOT_DpOT0____fmatrix[v10])(&v12);
        }
      }
    }
  }

  return result;
}

void *re::audio::emitPhase3AcousticMeshEventSignposts(void *result)
{
  v1 = result;
  if (*result)
  {
    result = re::internal::enableSignposts(0, 0);
    if (result)
    {
      result = kdebug_trace();
    }
  }

  if (v1[1])
  {
    result = re::internal::enableSignposts(0, 0);
    if (result)
    {
      result = kdebug_trace();
    }
  }

  if (v1[2])
  {
    result = re::internal::enableSignposts(0, 0);
    if (result)
    {

      return kdebug_trace();
    }
  }

  return result;
}

uint64_t re::audio::convertToAcousticMeshAddition@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *(a2 + 140) = 0u;
  a2[7] = 0u;
  a2[8] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  v4[0] = a2;
  v4[1] = a2;
  v2 = *(a1 + 160);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v5 = v4;
  return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_5audio29convertToAcousticMeshAdditionERKNS_7variantIJNS9_22AcousticMeshUpdateDataENS9_27AcousticARKitMeshUpdateDataEEEEE3__0ZNS9_29convertToAcousticMeshAdditionESF_E3__1EEEEEJRKNS0_6__implIJSB_SC_EEEEEEDcOT_DpOT0____fmatrix[v2])(&v5, a1);
}

uint64_t **std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::audio::getPhase1AcousticMeshEventSignpostData(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> const&)::$_0,re::audio::getPhase1AcousticMeshEventSignpostData(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> const&)::$_1,re::audio::getPhase1AcousticMeshEventSignpostData(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> const&)::$_2>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>> const&>(uint64_t **result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = **result;
    v4 = 40 * v2;
    v5 = *(a2 + 32) + 24;
    do
    {
      if (*(v5 + 8) == 1)
      {
        ++*v3;
        v6 = *v5;
        v7 = *(v3 + 32);
        if (*v5 >= *(v3 + 24))
        {
          v6 = *(v3 + 24);
        }

        *(v3 + 24) = v6;
        v8 = *v5;
        if (v7 >= *v5)
        {
          v8 = v7;
        }

        *(v3 + 32) = v8;
      }

      v5 += 40;
      v4 -= 40;
    }

    while (v4);
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::audio::getPhase1AcousticMeshEventSignpostData(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> const&)::$_0,re::audio::getPhase1AcousticMeshEventSignpostData(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> const&)::$_1,re::audio::getPhase1AcousticMeshEventSignpostData(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> const&)::$_2>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>> const&>(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(a2 + 32);
    v4 = *(*result + 8);
    v5 = 160 * v2;
    do
    {
      if (v3 && *(v3 + 152) == 1)
      {
        ++*(v4 + 8);
        v6 = *(v3 + 40);
        v7 = *(v4 + 48);
        if (v6 >= *(v4 + 40))
        {
          v6 = *(v4 + 40);
        }

        *(v4 + 40) = v6;
        v8 = *(v3 + 40);
        if (v7 >= v8)
        {
          v8 = v7;
        }

        *(v4 + 48) = v8;
      }

      v3 += 160;
      v5 -= 160;
    }

    while (v5);
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::audio::getPhase1AcousticMeshEventSignpostData(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> const&)::$_0,re::audio::getPhase1AcousticMeshEventSignpostData(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> const&)::$_1,re::audio::getPhase1AcousticMeshEventSignpostData(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> const&)::$_2>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>> const&>(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(a2 + 32);
    v4 = *(*result + 16);
    v5 = 168 * v2;
    do
    {
      if (v3 && *(v3 + 160) == 1)
      {
        ++*(v4 + 16);
        v6 = *(v3 + 48);
        v7 = *(v4 + 64);
        if (v6 >= *(v4 + 56))
        {
          v6 = *(v4 + 56);
        }

        *(v4 + 56) = v6;
        v8 = *(v3 + 48);
        if (v7 >= v8)
        {
          v8 = v7;
        }

        *(v4 + 64) = v8;
      }

      v3 += 168;
      v5 -= 168;
    }

    while (v5);
  }

  return result;
}

uint64_t **std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::audio::getPhase3AcousticMeshEventSignpostData(re::Queue<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>> const&)::$_0,re::audio::getPhase3AcousticMeshEventSignpostData(re::Queue<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>> const&)::$_1,re::audio::getPhase3AcousticMeshEventSignpostData(re::Queue<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>> const&)::$_2>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>> const&>(uint64_t **result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = **result;
    v4 = 40 * v2;
    v5 = *(a2 + 32) + 24;
    do
    {
      if (*(v5 + 8) == 1)
      {
        ++*v3;
        v6 = *v5;
        v7 = *(v3 + 32);
        if (*v5 >= *(v3 + 24))
        {
          v6 = *(v3 + 24);
        }

        *(v3 + 24) = v6;
        v8 = *v5;
        if (v7 >= *v5)
        {
          v8 = v7;
        }

        *(v3 + 32) = v8;
      }

      v5 += 40;
      v4 -= 40;
    }

    while (v4);
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::audio::getPhase3AcousticMeshEventSignpostData(re::Queue<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>> const&)::$_0,re::audio::getPhase3AcousticMeshEventSignpostData(re::Queue<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>> const&)::$_1,re::audio::getPhase3AcousticMeshEventSignpostData(re::Queue<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>> const&)::$_2>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>> const&>(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(*result + 8);
    v4 = 48 * v2;
    v5 = *(a2 + 32) + 32;
    do
    {
      if (*(v5 + 8) == 1)
      {
        ++*(v3 + 8);
        v6 = *v5;
        v7 = *(v3 + 48);
        if (*v5 >= *(v3 + 40))
        {
          v6 = *(v3 + 40);
        }

        *(v3 + 40) = v6;
        v8 = *v5;
        if (v7 >= *v5)
        {
          v8 = v7;
        }

        *(v3 + 48) = v8;
      }

      v5 += 48;
      v4 -= 48;
    }

    while (v4);
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::audio::getPhase3AcousticMeshEventSignpostData(re::Queue<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>> const&)::$_0,re::audio::getPhase3AcousticMeshEventSignpostData(re::Queue<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>> const&)::$_1,re::audio::getPhase3AcousticMeshEventSignpostData(re::Queue<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>> const&)::$_2>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>> const&>(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(*result + 16);
    v4 = 56 * v2;
    v5 = *(a2 + 32) + 40;
    do
    {
      if (*(v5 + 8) == 1)
      {
        ++*(v3 + 16);
        v6 = *v5;
        v7 = *(v3 + 64);
        if (*v5 >= *(v3 + 56))
        {
          v6 = *(v3 + 56);
        }

        *(v3 + 56) = v6;
        v8 = *v5;
        if (v7 >= *v5)
        {
          v8 = v7;
        }

        *(v3 + 64) = v8;
      }

      v5 += 56;
      v4 -= 56;
    }

    while (v4);
  }

  return result;
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::audio::convertToAcousticMeshAddition(std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData> const&)::$_0,re::audio::convertToAcousticMeshAddition(std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData> const&)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData> const&>(uint64_t **a1, __int128 *a2)
{
  v3 = *a1;
  v31 = *a2;
  v4 = *(a2 + 4);
  v32 = *(a2 + 3);
  *&v33 = v4;
  re::DynamicArray<re::AcousticAbsorptionMaterial>::DynamicArray(&v33 + 8, a2 + 5);
  re::DynamicArray<re::AcousticScatteringMaterial>::DynamicArray(&v36 + 8, a2 + 10);
  re::DynamicArray<re::AcousticSoundReductionMaterial>::DynamicArray(&v39 + 8, a2 + 15);
  v5 = *v3;
  if (*(*v3 + 152))
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*v3);
    v6 = v31;
    *(v5 + 16) = v32;
    *v5 = v6;
    *(v5 + 64) = 0;
    *(v5 + 56) = 0;
    *(v5 + 40) = 0u;
    *(v5 + 32) = 0;
    v7 = v33;
    v8 = v34;
    *(v5 + 32) = *(&v33 + 1);
    *(v5 + 40) = v8;
    v33 = 0u;
    *(v5 + 24) = v7;
    *(v5 + 48) = *(&v34 + 1);
    v34 = 0u;
    *(v5 + 96) = 0;
    *(v5 + 88) = 0;
    *(v5 + 72) = 0u;
    v9 = v37;
    *(v5 + 64) = v36;
    ++v35;
    ++*(v5 + 56);
    *(v5 + 104) = 0;
    *(v5 + 80) = v9;
    v10 = *(&v37 + 1);
    *(v5 + 72) = *(&v36 + 1);
    *(v5 + 88) = v10;
    v36 = 0u;
    v37 = 0u;
    *(v5 + 136) = 0;
    *(v5 + 128) = 0;
    *(v5 + 112) = 0u;
    v11 = v40;
    *(v5 + 104) = v39;
    ++v38;
    ++*(v5 + 96);
    *(v5 + 144) = 0;
    *(v5 + 120) = v11;
    v12 = *(&v40 + 1);
    *(v5 + 112) = *(&v39 + 1);
    v39 = 0u;
    *(v5 + 128) = v12;
    v40 = 0u;
    *(v5 + 144) = v42;
    v42 = 0;
    ++v41;
    ++*(v5 + 136);
    *(v5 + 152) = 0;
LABEL_19:
    re::DynamicArray<re::AcousticSoundReductionMaterial>::deinit(&v39 + 8);
    re::DynamicArray<re::AcousticScatteringMaterial>::deinit(&v36 + 8);
    re::DynamicArray<re::AcousticAbsorptionMaterial>::deinit(&v33 + 8);

    return;
  }

  v13 = v31;
  *(v5 + 16) = v32;
  *v5 = v13;
  v14 = v33;
  *&v33 = 0;
  v15 = *(v5 + 24);
  *(v5 + 24) = v14;

  if (v5 == &v31)
  {
    goto LABEL_19;
  }

  v17 = *(v5 + 32);
  if (v17)
  {
    v18 = *(&v33 + 1) == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18 && v17 != *(&v33 + 1))
  {
    re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
    _os_crash();
    __break(1u);
LABEL_20:
    re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
    _os_crash();
    __break(1u);
    goto LABEL_21;
  }

  v20 = v34;
  v21 = *(v5 + 40);
  *(v5 + 32) = *(&v33 + 1);
  *(v5 + 40) = v20;
  *(&v33 + 1) = v17;
  *(v5 + 48) = *(&v34 + 1);
  v23 = *(v5 + 64);
  v22 = *(v5 + 72);
  *(v5 + 64) = v36;
  v34 = v21;
  *&v36 = v23;
  ++v35;
  ++*(v5 + 56);
  if (v22 && *(&v36 + 1) && v22 != *(&v36 + 1))
  {
    goto LABEL_20;
  }

  v24 = v37;
  v25 = *(v5 + 80);
  *(v5 + 72) = *(&v36 + 1);
  *(v5 + 80) = v24;
  *(&v36 + 1) = v22;
  *(v5 + 88) = *(&v37 + 1);
  v27 = *(v5 + 104);
  v26 = *(v5 + 112);
  *(v5 + 104) = v39;
  v37 = v25;
  *&v39 = v27;
  ++v38;
  ++*(v5 + 96);
  if (!v26 || !*(&v39 + 1) || v26 == *(&v39 + 1))
  {
    v28 = v40;
    v29 = *(v5 + 120);
    *(v5 + 112) = *(&v39 + 1);
    *(v5 + 120) = v28;
    *(&v39 + 1) = v26;
    *(v5 + 128) = *(&v40 + 1);
    v40 = v29;
    v30 = *(v5 + 144);
    *(v5 + 144) = v42;
    v42 = v30;
    ++v41;
    ++*(v5 + 136);
    goto LABEL_19;
  }

LABEL_21:
  re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
  _os_crash();
  __break(1u);
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::audio::convertToAcousticMeshAddition(std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData> const&)::$_0,re::audio::convertToAcousticMeshAddition(std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData> const&)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData> const&>(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[3];
  v7 = a2[4];
  v8 = v7;
  v9 = *(a2 + 40);
  v10 = a2[6];
  v11 = *(v3 + 8);
  if (*(v11 + 152) == 1)
  {
    *v11 = v5;
    *(v11 + 8) = v4;
    v12 = *(v11 + 24);
    *(v11 + 16) = v6;
    *(v11 + 24) = v7;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*(v3 + 8));
    *v11 = v5;
    *(v11 + 8) = v4;
    *(v11 + 16) = v6;
    *(v11 + 24) = v8;
    *(v11 + 152) = 1;
  }

  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
}

void re::audio::REPHASESoundPrepareState::setCompletionHandler(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZN2re5audio24REPHASESoundPrepareState20setCompletionHandlerEU13block_pointerFvP7NSErrorE_block_invoke;
  v7[3] = &unk_1E871B670;
  v8 = v3;
  v9 = a1;
  v4 = v3;
  v5 = _Block_copy(v7);
  v6 = *(a1 + 392);
  *(a1 + 392) = v5;
}

void ___ZN2re5audio24REPHASESoundPrepareState20setCompletionHandlerEU13block_pointerFvP7NSErrorE_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 40);
  if ((*(v3 + 384) & 1) == 0)
  {
    if (!v4)
    {
      *(v3 + 384) = 1;
    }

    (*(*(a1 + 32) + 16))();
  }
}

id re::audio::REPHASESoundPrepareState::getChannelLayout(re::audio::REPHASESoundPrepareState *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    v3 = [v2 channelLayout];
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E69583D0]) initWithLayoutTag:*(this + 44)];
  }

  return v3;
}

void sub_1E2131A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<PHASESource * {__strong}>::__destroy_vector::operator()[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_1E2132444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v26);

  _Unwind_Resume(a1);
}

void re::MultipleCallbackManager<REPHASESoundEvent>::complete(atomic_ullong *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = v4;
  add = atomic_fetch_add(a1, 0xFFFFFFFFFFFFFFFFLL);
  if (add <= 0)
  {
    v11 = *re::audioLogObjects(v4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = a1[4];
      v14 = 138412290;
      v15 = v13;
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "callback manager with context %@ called too many times", &v14, 0xCu);
    }

    atomic_fetch_add(a1, 1uLL);
  }

  else
  {
    v7 = add - 1;
    objc_storeStrong((a1[1] + 8 * (add - 1)), a2);
    if (!v7)
    {
      v8 = a1[1];
      v9 = a1[2];
      while (1)
      {
        if (v8 == v9)
        {
          v12 = 0;
          (*(a1[5] + 16))();
          goto LABEL_12;
        }

        v10 = *v8;
        if (v10)
        {
          break;
        }

        ++v8;
      }

      v12 = v10;
      (*(a1[5] + 16))();
LABEL_12:
    }
  }
}

uint64_t __copy_helper_block_ea8_56c77_ZTSNSt3__110shared_ptrIN2re23MultipleCallbackManagerI17REPHASESoundEventEEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(result + 56) = *(a2 + 56);
  *(result + 64) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_56c77_ZTSNSt3__110shared_ptrIN2re23MultipleCallbackManagerI17REPHASESoundEventEEEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_40c77_ZTSNSt3__110shared_ptrIN2re23MultipleCallbackManagerI17REPHASESoundEventEEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_40c77_ZTSNSt3__110shared_ptrIN2re23MultipleCallbackManagerI17REPHASESoundEventEEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void sub_1E2132B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = REPHASESoundEvent;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1E2134D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_1E2135A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, id location)
{
  objc_destroyWeak((v36 + 48));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E2135F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  _Unwind_Resume(a1);
}

void sub_1E21363DC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1E21369F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  _Unwind_Resume(a1);
}

void sub_1E2136BFC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E2136E2C(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

double re::audio::REPHASESoundPrepareState::REPHASESoundPrepareState(re::audio::REPHASESoundPrepareState *this)
{
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  v1 = MEMORY[0x1E69E9B18];
  v2 = *(MEMORY[0x1E69E9B18] + 16);
  *(this + 7) = *MEMORY[0x1E69E9B18];
  *(this + 8) = v2;
  v3 = *(v1 + 48);
  *(this + 9) = *(v1 + 32);
  *(this + 10) = v3;
  *(this + 44) = 0;
  *(this + 180) = xmmword_1E3063230;
  *(this + 49) = 1065353216;
  *(this + 200) = 0;
  *(this + 51) = 0;
  *(this + 26) = 0x3FF0000000000000;
  v4 = *MEMORY[0x1E6960CC0];
  *(this + 29) = *(MEMORY[0x1E6960CC0] + 16);
  *(this + 216) = v4;
  *(this + 240) = 0;
  *(this + 264) = 0;
  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 288) = 0;
  *(this + 37) = 0;
  *(this + 38) = 1;
  result = 4294968290.0;
  *(this + 39) = 0x41F000003E051EB8;
  *(this + 40) = 0;
  *(this + 41) = 0;
  *(this + 42) = @"reverbSend";
  *(this + 43) = @"directSend";
  *(this + 49) = 0;
  *(this + 44) = @"gain";
  *(this + 45) = 0;
  *(this + 384) = 0;
  *(this + 46) = 0;
  *(this + 47) = 0;
  return result;
}

void *std::deque<REPHASESoundEventCommandState>::emplace_back<REPHASESoundEventCommand>(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 32 * (v4 - v5) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<REPHASESoundEventCommandState>::__add_back_capacity(result);
    v7 = v3[5];
    v5 = v3[1];
    v8 = v3[4] + v7;
  }

  v9 = *(v5 + ((v8 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v8;
  *v9 = *a2;
  *(v9 + 8) = 0;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<REPHASESoundEventCommandState>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<REPHASESoundEventCommandState *>>(v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<REPHASESoundEventCommandState *>::emplace_back<REPHASESoundEventCommandState *&>(a1, &v10);
}

void sub_1E21376D4(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<REPHASESoundEventCommandState *>::emplace_back<REPHASESoundEventCommandState *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<REPHASESoundEventCommandState *>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<REPHASESoundEventCommandState *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::shared_ptr<re::audio::REPHASESoundPrepareState>::shared_ptr[abi:ne200100]<re::audio::REPHASESoundPrepareState,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1E21378DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<re::audio::REPHASESoundPrepareState>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::shared_ptr<re::audio::REPHASESoundPrepareState>::__enable_weak_this[abi:ne200100]<re::audio::REPHASESoundPrepareState,re::audio::REPHASESoundPrepareState,0>(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
      }
    }
  }
}

id **std::unique_ptr<re::audio::REPHASESoundPrepareState>::~unique_ptr[abi:ne200100](id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    re::audio::REPHASESoundPrepareState::~REPHASESoundPrepareState(v2);
    MEMORY[0x1E6906520]();
  }

  return a1;
}

void std::__shared_ptr_pointer<re::audio::REPHASESoundPrepareState *,std::shared_ptr<re::audio::REPHASESoundPrepareState>::__shared_ptr_default_delete<re::audio::REPHASESoundPrepareState,re::audio::REPHASESoundPrepareState>,std::allocator<re::audio::REPHASESoundPrepareState>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

id *std::__shared_ptr_pointer<re::audio::REPHASESoundPrepareState *,std::shared_ptr<re::audio::REPHASESoundPrepareState>::__shared_ptr_default_delete<re::audio::REPHASESoundPrepareState,re::audio::REPHASESoundPrepareState>,std::allocator<re::audio::REPHASESoundPrepareState>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    re::audio::REPHASESoundPrepareState::~REPHASESoundPrepareState(result);

    JUMPOUT(0x1E6906520);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<re::audio::REPHASESoundPrepareState *,std::shared_ptr<re::audio::REPHASESoundPrepareState>::__shared_ptr_default_delete<re::audio::REPHASESoundPrepareState,re::audio::REPHASESoundPrepareState>,std::allocator<re::audio::REPHASESoundPrepareState>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void re::audio::REPHASESoundPrepareState::~REPHASESoundPrepareState(id *this)
{
  if (*(this + 264) == 1 && *(this + 263) < 0)
  {
    operator delete(this[30]);
  }

  v2 = this[9];
  if (v2)
  {
    this[10] = v2;
    operator delete(v2);
  }

  v3 = this[1];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v26 = *a1;
        *a1 = 0;
        if (v26)
        {
          operator delete(v26);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v6);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = a2;
    if (v6 <= a2)
    {
      v17 = a2 % v6;
    }
  }

  else
  {
    v17 = (v6 - 1) & a2;
  }

  v18 = *(*a1 + 8 * v17);
  if (!v18)
  {
    return 0;
  }

  v19 = 0;
  do
  {
    result = v18;
    v18 = *v18;
    if (!v18)
    {
      break;
    }

    v21 = v18[1];
    if (v16.u32[0] > 1uLL)
    {
      v22 = v18[1];
      if (v21 >= v6)
      {
        v22 = v21 % v6;
      }
    }

    else
    {
      v22 = v21 & (v6 - 1);
    }

    if (v22 != v17)
    {
      break;
    }

    v23 = v21 == a2 && v18[2] == *a3;
    v24 = v23 != (v19 & 1);
    v25 = v19 & v24;
    v19 |= v24;
  }

  while (v25 != 1);
  return result;
}

id *std::__copy_impl::operator()[abi:ne200100]<PHASESource * {__strong}*,PHASESource * {__strong}*,PHASESource * {__strong}*>(void **a1, void **a2, id *location)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5++;
      objc_storeStrong(location++, v6);
    }

    while (v5 != a2);
  }

  return location;
}

void std::__shared_ptr_emplace<re::MultipleCallbackManager<REPHASESoundEvent>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5CCAFB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

re::REPHASEMaterialCache *re::REPHASEMaterialCache::REPHASEMaterialCache(re::REPHASEMaterialCache *this)
{
  *this = 1036831949;
  *(this + 1) = 0;
  v2 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v3 = *(this + 1);
  *(this + 1) = v2;

  [*(this + 1) setTotalCostLimit:200];
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 objectForKey:@"com.apple.re.audio.meshConfidenceThreshold"];
  v6 = v5;
  if (v5)
  {
    [v5 floatValue];
    if (v7 >= 0.0)
    {
      [v6 floatValue];
      if (v8 <= 1.0)
      {
        [v6 floatValue];
        *this = v9;
      }
    }
  }

  return this;
}

id re::REPHASEMaterialCache::getMaterials(re::REPHASEMaterialCache *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = *MEMORY[0x1E69E9840];
  isInputValid = a2;
  v11 = isInputValid;
  v12 = *(a3 + 16);
  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = *(a4 + 16);
  if (!v13)
  {
    goto LABEL_7;
  }

  if (v12 != v13 || v12 != *(a5 + 16))
  {
    goto LABEL_7;
  }

  v19 = 0;
  LOBYTE(isInputValid) = 1;
  do
  {
    v20 = 112 * v19;
    while ((isInputValid & 1) == 0)
    {
      isInputValid = 0;
      ++v19;
      v20 += 112;
      if (v12 <= v19)
      {
        goto LABEL_7;
      }
    }

    v21 = *(a4 + 16);
    if (v21 <= v19)
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v44 = 136315906;
      *&v44[4] = "operator[]";
      v45 = 1024;
      v46 = 797;
      v47 = 2048;
      v48 = v19;
      v49 = 2048;
      v50 = v21;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_37:
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v44 = 136315906;
      *&v44[4] = "operator[]";
      v45 = 1024;
      v46 = 797;
      v47 = 2048;
      v48 = v19;
      v49 = 2048;
      v50 = v21;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_38:
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v44 = 136315906;
      *&v44[4] = "operator[]";
      v45 = 1024;
      v46 = 797;
      v47 = 2048;
      v48 = v21;
      v49 = 2048;
      v50 = v19;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_39:
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v44 = 136315906;
      *&v44[4] = "operator[]";
      v45 = 1024;
      v46 = 797;
      v47 = 2048;
      v48 = v42;
      v49 = 2048;
      v50 = v19;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v21 = *(a5 + 16);
    if (v21 <= v19)
    {
      goto LABEL_37;
    }

    v12 = *(a3 + 16);
    ++v19;
  }

  while (v12 > v19);
  if (isInputValid)
  {
    v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
    if (*(a3 + 16))
    {
      v22 = 0;
      v21 = 0;
      do
      {
        v19 = *(a4 + 16);
        if (v19 <= v21)
        {
          goto LABEL_38;
        }

        v19 = *(a5 + 16);
        v42 = v21;
        if (v19 <= v21)
        {
          goto LABEL_39;
        }

        v40 = *(a3 + 32);
        v39 = *(a4 + 32);
        v23 = (*(a5 + 32) + v22);
        v24 = v11;
        *v44 = v24;
        if (v26)
        {
          v27 = v40 + v22;
          v41 = v22;
          v28 = v24;
          v29 = *(v27 + 8);
          v37 = *(v27 + 16);
          v38 = MEMORY[0x1E696AEC0];
          v30 = *(v39 + v22 + 8);
          v31 = *(v39 + v22 + 16);
          v32 = [(PHASEEngine *)v28 hash];
          v33 = v39 + v41 + 9;
          if (v30)
          {
            v33 = v31;
          }

          v34 = v27 + 9;
          if (v29)
          {
            v34 = v37;
          }

          [v38 stringWithFormat:@"Absorption: %s. Scattering: %s. Engine hash: %lu.", v34, v33, v32];
          objc_claimAutoreleasedReturnValue();
          *(&v52 + 1) = 0;
          operator new();
        }

        v35 = *re::audioLogObjects(v26);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_ERROR, "REPHASEMaterialCache::getMaterials was called with invalid arguments. Returning the default material.", buf, 2u);
        }

        v36 = re::REPHASEMaterialCache::defaultMaterial(a1, v24);

        [v17 addObject:v36];
        v21 = v42 + 1;
        v22 += 112;
      }

      while (*(a3 + 16) > v42 + 1);
    }
  }

  else
  {
LABEL_7:
    v15 = *re::audioLogObjects(isInputValid);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "REPHASEMaterialCache::getMaterials was called with invalid arguments. Returning the default material.", buf, 2u);
    }

    v16 = re::REPHASEMaterialCache::defaultMaterial(a1, v11);
    v43 = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
  }

  return v17;
}

id re::REPHASEMaterialCache::defaultMaterial(re::REPHASEMaterialCache *this, PHASEEngine *a2)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Default material. Engine hash: %lu.", -[PHASEEngine hash](v6, "hash")];
  v7[0] = &unk_1F5CCB118;
  v7[1] = &v6;
  v7[3] = v7;
  v4 = re::REPHASEMaterialCache::getFromCacheOrCreateAndCache(this, v3, v7);
  std::__function::__value_func<PHASEMaterial * ()(void)>::~__value_func[abi:ne200100](v7);

  return v4;
}

void sub_1E21388C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<PHASEMaterial * ()(void)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::isInputValid(_anonymous_namespace_ *this, const AcousticAbsorptionMaterial *a2, const AcousticScatteringMaterial *a3, const AcousticSoundReductionMaterial *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(this + 6);
  v8 = v4 == *(a2 + 6) && v4 == *(a3 + 6) && v4 == *(this + 11) && v4 == *(a2 + 11) && v4 == *(a3 + 11);
  v9 = v8;
  if (!v8)
  {
    v13 = *re::audioLogObjects(this);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      if (*(this + 1))
      {
        v15 = *(this + 2);
      }

      else
      {
        v15 = this + 9;
      }

      if (*(a2 + 1))
      {
        v16 = *(a2 + 2);
      }

      else
      {
        v16 = a2 + 9;
      }

      if (*(a3 + 1))
      {
        v17 = *(a3 + 2);
      }

      else
      {
        v17 = a3 + 9;
      }

      v18 = 136315650;
      v19 = v15;
      v20 = 2080;
      v21 = v16;
      v22 = 2080;
      v23 = v17;
      _os_log_fault_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_FAULT, "Absorption %s, scattering %s, and sound reduction %s materials have inconsistent frequency counts and/or coefficients count.", &v18, 0x20u);
    }
  }

  return v9;
}

id re::REPHASEMaterialCache::getFromCacheOrCreateAndCache(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 8) objectForKey:v5];
  if (!v6)
  {
    v7 = *(a3 + 24);
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v6 = (*(*v7 + 48))(v7);
    if (v6)
    {
      [*(a1 + 8) setObject:v6 forKey:v5 cost:1];
    }
  }

  v8 = v6;

  return v8;
}

id re::REPHASEMaterialCache::getMaterials(re::REPHASEMaterialCache *this, PHASEEngine *a2, MDLMesh *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v33 = a2;
  v5 = a3;
  v6 = MEMORY[0x1E695DF70];
  v30 = v5;
  v7 = [(MDLMesh *)v5 submeshes];
  v32 = [v6 arrayWithCapacity:{objc_msgSend(v7, "count")}];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = [(MDLMesh *)v30 submeshes];
  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v41 count:16];
  if (v9)
  {
    v10 = *v35;
    do
    {
      v11 = 0;
      do
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v34 + 1) + 8 * v11);
        v13 = v33;
        v40 = v13;
        v14 = v12;
        v15 = [v14 material];
        v16 = [v15 propertyNamed:@"ARMeshGeometryClassification"];
        v39 = v16;

        v17 = [v14 material];
        v18 = [v17 propertyNamed:@"ARMeshGeometryMaterial"];
        v38 = v18;

        v19 = [v14 material];
        v20 = [v19 propertyNamed:@"ARMeshGeometryConfidence"];

        if (v16 && v18)
        {
          if (v20)
          {
            [v20 floatValue];
          }

          else
          {
            v22 = 1.0;
          }

          if (v22 > *this)
          {
            v24 = MEMORY[0x1E696AEC0];
            [v16 floatValue];
            v26 = v25;
            [v18 floatValue];
            [v24 stringWithFormat:@"ARMeshGeometryClassification: %.02f. ARMeshGeometryMaterial: %.02f. Engine hash: %lu.", v26, v27, -[PHASEEngine hash](v13, "hash")];
            objc_claimAutoreleasedReturnValue();
            v43 = 0;
            operator new();
          }
        }

        else
        {
          v23 = *re::audioLogObjects(v21);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, "REPHASEMaterialCache::getMaterial was called for a submesh missing ARMeshGeometryClassification and/or ARMeshGeometryMaterial. Returning the default material.", buf, 2u);
          }
        }

        v28 = re::REPHASEMaterialCache::defaultMaterial(this, v13);

        if (v28)
        {
          [v32 addObject:v28];
        }

        ++v11;
      }

      while (v9 != v11);
      v8 = obj;
      v9 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
    }

    while (v9);
  }

  return v32;
}

id re::REPHASEMaterialCache::createSubbands(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E695DF70] array];
  if (*(a1 + 16))
  {
    v5 = 0;
    do
    {
      v6 = objc_alloc(MEMORY[0x1E6978240]);
      if (*(a1 + 16) <= v5)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_10:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (*(a2 + 16) <= v5)
      {
        goto LABEL_10;
      }

      LODWORD(v7) = *(*(a1 + 32) + 4 * v5);
      LODWORD(v8) = *(*(a2 + 32) + 4 * v5);
      v9 = [v6 initWithFrequency:v7 value:v8];
      [v4 addObject:v9];

      ++v5;
    }

    while (*(a1 + 16) > v5);
  }

  return v4;
}

__n128 std::__function::__func<re::REPHASEMaterialCache::getMaterial(PHASEEngine *,re::AcousticAbsorptionMaterial const&,re::AcousticScatteringMaterial const&,re::AcousticSoundReductionMaterial const&)::$_0,std::allocator<re::REPHASEMaterialCache::getMaterial(PHASEEngine *,re::AcousticAbsorptionMaterial const&,re::AcousticScatteringMaterial const&,re::AcousticSoundReductionMaterial const&)::$_0>,PHASEMaterial * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCB008;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

id std::__function::__func<re::REPHASEMaterialCache::getMaterial(PHASEEngine *,re::AcousticAbsorptionMaterial const&,re::AcousticScatteringMaterial const&,re::AcousticSoundReductionMaterial const&)::$_0,std::allocator<re::REPHASEMaterialCache::getMaterial(PHASEEngine *,re::AcousticAbsorptionMaterial const&,re::AcousticScatteringMaterial const&,re::AcousticSoundReductionMaterial const&)::$_0>,PHASEMaterial * ()(void)>::operator()(uint64_t a1)
{
  v2 = re::REPHASEMaterialCache::createSubbands(*(a1 + 16) + 32, *(a1 + 16) + 72);
  v3 = re::REPHASEMaterialCache::createSubbands(*(a1 + 24) + 32, *(a1 + 24) + 72);
  v4 = re::REPHASEMaterialCache::createSubbands(*(a1 + 32) + 32, *(a1 + 32) + 72);
  v5 = objc_alloc(MEMORY[0x1E69781D0]);
  v6 = **(a1 + 40);
  v7 = objc_alloc(MEMORY[0x1E6978218]);
  LODWORD(v8) = 1036831949;
  v9 = [v7 initWithAttenuationCoefficients:v4 measuredDepth:v8];
  v10 = [objc_alloc(MEMORY[0x1E6978160]) initWithAbsorptionCoefficients:v2];
  v11 = [objc_alloc(MEMORY[0x1E6978200]) initWithScatteringCoefficients:v3];
  v12 = [v5 initWithEngine:v6 soundReductionIndex:v9 absorptionData:v10 scatteringData:v11];

  return v12;
}

uint64_t std::__function::__func<re::REPHASEMaterialCache::getMaterial(PHASEEngine *,re::AcousticAbsorptionMaterial const&,re::AcousticScatteringMaterial const&,re::AcousticSoundReductionMaterial const&)::$_0,std::allocator<re::REPHASEMaterialCache::getMaterial(PHASEEngine *,re::AcousticAbsorptionMaterial const&,re::AcousticScatteringMaterial const&,re::AcousticSoundReductionMaterial const&)::$_0>,PHASEMaterial * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<PHASEMaterial * ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<re::REPHASEMaterialCache::getMaterial(PHASEEngine *,MDLSubmesh *)::$_0,std::allocator<re::REPHASEMaterialCache::getMaterial(PHASEEngine *,MDLSubmesh *)::$_0>,PHASEMaterial * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCB098;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

id std::__function::__func<re::REPHASEMaterialCache::getMaterial(PHASEEngine *,MDLSubmesh *)::$_0,std::allocator<re::REPHASEMaterialCache::getMaterial(PHASEEngine *,MDLSubmesh *)::$_0>,PHASEMaterial * ()(void)>::operator()(uint64_t a1)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v12[0] = *MEMORY[0x1E6978258];
  v3 = MEMORY[0x1E696AD98];
  [**(a1 + 8) floatValue];
  v4 = [v3 numberWithFloat:?];
  v12[1] = *MEMORY[0x1E6978260];
  v13[0] = v4;
  v5 = MEMORY[0x1E696AD98];
  [**(a1 + 16) floatValue];
  v6 = [v5 numberWithFloat:?];
  v13[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v8 = [objc_alloc(MEMORY[0x1E69781D0]) initWithEngine:**(a1 + 24) semantics:v7];
  if (!v8)
  {
    v9 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "REPHASEMaterialCache::getMaterial failed to initialize a PHASEMaterial with the provided semantics. Returning the default material.", v11, 2u);
    }

    v8 = re::REPHASEMaterialCache::defaultMaterial(v2, **(a1 + 24));
  }

  return v8;
}

uint64_t std::__function::__func<re::REPHASEMaterialCache::getMaterial(PHASEEngine *,MDLSubmesh *)::$_0,std::allocator<re::REPHASEMaterialCache::getMaterial(PHASEEngine *,MDLSubmesh *)::$_0>,PHASEMaterial * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

uint64_t std::__function::__func<re::REPHASEMaterialCache::defaultMaterial(PHASEEngine *)::$_0,std::allocator<re::REPHASEMaterialCache::defaultMaterial(PHASEEngine *)::$_0>,PHASEMaterial * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CCB118;
  a2[1] = v2;
  return result;
}

id std::__function::__func<re::REPHASEMaterialCache::defaultMaterial(PHASEEngine *)::$_0,std::allocator<re::REPHASEMaterialCache::defaultMaterial(PHASEEngine *)::$_0>,PHASEMaterial * ()(void)>::operator()(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6978260];
  v6[0] = *MEMORY[0x1E6978258];
  v6[1] = v2;
  v7[0] = &unk_1F5D42A98;
  v7[1] = &unk_1F5D42A98;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = [objc_alloc(MEMORY[0x1E69781D0]) initWithEngine:**(a1 + 8) semantics:v3];

  return v4;
}

uint64_t std::__function::__func<re::REPHASEMaterialCache::defaultMaterial(PHASEEngine *)::$_0,std::allocator<re::REPHASEMaterialCache::defaultMaterial(PHASEEngine *)::$_0>,PHASEMaterial * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void removeOldLogsAtMaxCapacity(unsigned int a1, unsigned int a2, void *a3, double a4, double a5)
{
  if (a1 > a2 && a3[3] == a1)
  {
    v8 = a2;
    v9 = v20;
    v20[0] = 0;
    v20[1] = 0;
    v19 = v20;
    for (i = a3 + 2; ; std::string::operator=((v11 + 5), (i + 2)))
    {
      i = *i;
      if (!i)
      {
        break;
      }

      v21 = i + 5;
      v11 = std::__tree<std::__value_type<double,std::string>,std::__map_value_compare<double,std::__value_type<double,std::string>,std::less<double>,true>,std::allocator<std::__value_type<double,std::string>>>::__emplace_unique_key_args<double,std::piecewise_construct_t const&,std::tuple<double const&>,std::tuple<>>(&v19, i + 5);
    }

    std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::clear(a3);
    if (v8 && v20 != v19)
    {
      do
      {
        v12 = *v9;
        v13 = v9;
        if (*v9)
        {
          do
          {
            v14 = v12;
            v12 = *(v12 + 1);
          }

          while (v12);
        }

        else
        {
          do
          {
            v14 = v13[2];
            v15 = *v14 == v13;
            v13 = v14;
          }

          while (v15);
        }

        v16 = *(v14 + 4);
        if (a4 - v16 >= a5)
        {
          break;
        }

        v21 = v14 + 40;
        *(std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, v14 + 5) + 5) = v16;
        v17 = *v9;
        if (*v9)
        {
          do
          {
            v18 = v17;
            v17 = *(v17 + 1);
          }

          while (v17);
        }

        else
        {
          do
          {
            v18 = v9[2];
            v15 = *v18 == v9;
            v9 = v18;
          }

          while (v15);
        }

        if (!--v8)
        {
          break;
        }

        v9 = v18;
      }

      while (v18 != v19);
    }

    std::__tree<std::__value_type<double,std::string>,std::__map_value_compare<double,std::__value_type<double,std::string>,std::less<double>,true>,std::allocator<std::__value_type<double,std::string>>>::destroy(&v19, v20[0]);
  }
}

uint64_t re::audio::throttledLog(os_log_type_t a1, const void **a2)
{
  {
    re::audio::throttledLog(os_log_type_t,std::string const&)::previousLogs = 0u;
    unk_1ECF1C1A8 = 0u;
    dword_1ECF1C1B8 = 1065353216;
  }

  {
    re::audio::throttledLog(os_log_type_t,std::string const&)::logLock = 0;
  }

  os_unfair_lock_lock(&re::audio::throttledLog(os_log_type_t,std::string const&)::logLock);
  v5 = re::audioLogObjects(v4);
  if (os_log_type_enabled(*v5, a1) && ((Current = CFAbsoluteTimeGetCurrent(), (v7 = std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::find<std::string>(&re::audio::throttledLog(os_log_type_t,std::string const&)::previousLogs, a2)) == 0) || Current - *(v7 + 5) >= 2.0))
  {
    *(std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&re::audio::throttledLog(os_log_type_t,std::string const&)::previousLogs, a2) + 5) = Current;
    removeOldLogsAtMaxCapacity(0x64u, 0xAu, &re::audio::throttledLog(os_log_type_t,std::string const&)::previousLogs, Current, 2.0);
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  os_unfair_lock_unlock(&re::audio::throttledLog(os_log_type_t,std::string const&)::logLock);
  return v8;
}

_BYTE *re::audio::stringFromPose@<X0>(re::audio *this@<X0>, _BYTE *a2@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x100uLL, "<pos=[% 3.2f,% 3.2f,% 3.2f],fwd=[% 3.2f,% 3.2f,% 3.2f],up=[% 3.2f,% 3.2f,% 3.2f]>", COERCE_FLOAT(*(this + 3)), COERCE_FLOAT(HIDWORD(*(this + 6))), COERCE_FLOAT(*(this + 7)), COERCE_FLOAT(*(this + 2)), COERCE_FLOAT(HIDWORD(*(this + 4))), COERCE_FLOAT(*(this + 5)), COERCE_FLOAT(*(this + 1)), COERCE_FLOAT(HIDWORD(*(this + 2))), COERCE_FLOAT(*(this + 3)));
  return std::string::basic_string[abi:ne200100]<0>(a2, __str);
}

_BYTE *re::audio::stringFromMatrix@<X0>(re::audio *this@<X0>, _BYTE *a2@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x100uLL, "<c0=[% 3.2f,% 3.2f,% 3.2f,% 3.2f],c1=[% 3.2f,% 3.2f,% 3.2f,% 3.2f],c2=[% 3.2f,% 3.2f,% 3.2f,% 3.2f],c3=[% 3.2f,% 3.2f,% 3.2f,% 3.2f]>", COERCE_FLOAT(*this), COERCE_FLOAT(HIDWORD(*this)), COERCE_FLOAT(*(this + 1)), COERCE_FLOAT(HIDWORD(*this)), COERCE_FLOAT(*(this + 1)), COERCE_FLOAT(HIDWORD(*(this + 2))), COERCE_FLOAT(*(this + 3)), COERCE_FLOAT(HIDWORD(*(this + 1))), COERCE_FLOAT(*(this + 2)), COERCE_FLOAT(HIDWORD(*(this + 4))), COERCE_FLOAT(*(this + 5)), COERCE_FLOAT(HIDWORD(*(this + 2))), COERCE_FLOAT(*(this + 3)), COERCE_FLOAT(HIDWORD(*(this + 6))), COERCE_FLOAT(*(this + 7)), COERCE_FLOAT(HIDWORD(*(this + 3))));
  return std::string::basic_string[abi:ne200100]<0>(a2, __str);
}

void re::audio::debugStringFromDeactivatedEntityState(re::audio **this@<X0>, const re::ecs2::Entity *__val@<X1>, std::string *a3@<X8>)
{
  std::to_string(&v60, __val);
  v5 = std::string::insert(&v60, 0, "Token ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v61.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v61.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v61, " with ");
  v8 = *&v7->__r_.__value_.__l.__data_;
  v62.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v62.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  re::ecs2::Entity::debugDescription(this, &v52);
  if (v53)
  {
    v9 = v55;
  }

  else
  {
    v9 = v54;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, v9);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v12 = std::string::append(&v62, p_p, size);
  v13 = *&v12->__r_.__value_.__l.__data_;
  a3->__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&a3->__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v52 && (v53 & 1) != 0)
  {
    (*(*v52 + 40))();
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  v14 = *(this + 76);
  if ((v14 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v48, "");
    if ((this[38] & 0xA) == 8)
    {
      v15 = this[4];
      if (!v15 || (v16 = *(v15 + 76), (v16 & 0x80) != 0))
      {
LABEL_29:
        std::string::append(&v48, "No parent with isSelfEnabled = false");
      }

      else
      {
        v17 = 1;
        while ((v16 & 8) != 0)
        {
          v15 = *(v15 + 4);
          if (v15)
          {
            v16 = *(v15 + 76);
            ++v17;
            if ((v16 & 0x80) == 0)
            {
              continue;
            }
          }

          goto LABEL_29;
        }

        std::to_string(&__p, v17);
        v37 = std::string::insert(&__p, 0, "First parent with isSelfEnabled = false is ");
        v38 = *&v37->__r_.__value_.__l.__data_;
        v60.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
        *&v60.__r_.__value_.__l.__data_ = v38;
        v37->__r_.__value_.__l.__size_ = 0;
        v37->__r_.__value_.__r.__words[2] = 0;
        v37->__r_.__value_.__r.__words[0] = 0;
        v39 = std::string::append(&v60, " levels up with ");
        v40 = *&v39->__r_.__value_.__l.__data_;
        v61.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
        *&v61.__r_.__value_.__l.__data_ = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        re::ecs2::Entity::debugDescription(v15, &v52);
        if (v53)
        {
          v41 = v55;
        }

        else
        {
          v41 = v54;
        }

        std::string::basic_string[abi:ne200100]<0>(&v56, v41);
        if ((v58 & 0x80u) == 0)
        {
          v42 = &v56;
        }

        else
        {
          v42 = v56;
        }

        if ((v58 & 0x80u) == 0)
        {
          v43 = v58;
        }

        else
        {
          v43 = v57;
        }

        v44 = std::string::append(&v61, v42, v43);
        v45 = *&v44->__r_.__value_.__l.__data_;
        v62.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
        *&v62.__r_.__value_.__l.__data_ = v45;
        v44->__r_.__value_.__l.__size_ = 0;
        v44->__r_.__value_.__r.__words[2] = 0;
        v44->__r_.__value_.__r.__words[0] = 0;
        if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v46 = &v62;
        }

        else
        {
          v46 = v62.__r_.__value_.__r.__words[0];
        }

        if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v47 = HIBYTE(v62.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v47 = v62.__r_.__value_.__l.__size_;
        }

        std::string::append(&v48, v46, v47);
        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
        }

        if (v58 < 0)
        {
          operator delete(v56);
        }

        if (v52 && (v53 & 1) != 0)
        {
          (*(*v52 + 40))();
        }

        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    std::operator+<char>();
    if ((v51 & 0x80u) == 0)
    {
      v18 = &v49;
    }

    else
    {
      v18 = v49;
    }

    if ((v51 & 0x80u) == 0)
    {
      v19 = v51;
    }

    else
    {
      v19 = v50;
    }

    std::string::append(a3, v18, v19);
    if (v51 < 0)
    {
      operator delete(v49);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    v14 = *(this + 76);
  }

  if ((v14 & 0xA) == 8)
  {
    std::string::basic_string[abi:ne200100]<0>(&v48, "");
    if ((this[38] & 1) == 0)
    {
      v20 = this[4];
      if (v20)
      {
        v21 = 0;
        do
        {
          v22 = v20;
          v23 = *(v20 + 76);
          if ((v23 & 0x80) != 0)
          {
            break;
          }

          if (v23)
          {
            std::to_string(&__p, v21);
            v26 = std::string::insert(&__p, 0, "Last parent with isActive = false is ");
            v27 = *&v26->__r_.__value_.__l.__data_;
            v60.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
            *&v60.__r_.__value_.__l.__data_ = v27;
            v26->__r_.__value_.__l.__size_ = 0;
            v26->__r_.__value_.__r.__words[2] = 0;
            v26->__r_.__value_.__r.__words[0] = 0;
            v28 = std::string::append(&v60, " levels up with ");
            v29 = *&v28->__r_.__value_.__l.__data_;
            v61.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
            *&v61.__r_.__value_.__l.__data_ = v29;
            v28->__r_.__value_.__l.__size_ = 0;
            v28->__r_.__value_.__r.__words[2] = 0;
            v28->__r_.__value_.__r.__words[0] = 0;
            re::ecs2::Entity::debugDescription(this, &v52);
            if (v53)
            {
              v30 = v55;
            }

            else
            {
              v30 = v54;
            }

            std::string::basic_string[abi:ne200100]<0>(&v56, v30);
            if ((v58 & 0x80u) == 0)
            {
              v31 = &v56;
            }

            else
            {
              v31 = v56;
            }

            if ((v58 & 0x80u) == 0)
            {
              v32 = v58;
            }

            else
            {
              v32 = v57;
            }

            v33 = std::string::append(&v61, v31, v32);
            v34 = *&v33->__r_.__value_.__l.__data_;
            v62.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
            *&v62.__r_.__value_.__l.__data_ = v34;
            v33->__r_.__value_.__l.__size_ = 0;
            v33->__r_.__value_.__r.__words[2] = 0;
            v33->__r_.__value_.__r.__words[0] = 0;
            if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v35 = &v62;
            }

            else
            {
              v35 = v62.__r_.__value_.__r.__words[0];
            }

            if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v36 = HIBYTE(v62.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v36 = v62.__r_.__value_.__l.__size_;
            }

            std::string::append(&v48, v35, v36);
            if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v62.__r_.__value_.__l.__data_);
            }

            if (v58 < 0)
            {
              operator delete(v56);
            }

            if (v52 && (v53 & 1) != 0)
            {
              (*(*v52 + 40))();
            }

            if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v61.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v60.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            goto LABEL_49;
          }

          ++v21;
          v20 = *(v22 + 4);
          this = v22;
        }

        while (v20);
      }

      std::string::append(&v48, "No parent with isActive = true");
    }

LABEL_49:
    std::operator+<char>();
    if ((v51 & 0x80u) == 0)
    {
      v24 = &v49;
    }

    else
    {
      v24 = v49;
    }

    if ((v51 & 0x80u) == 0)
    {
      v25 = v51;
    }

    else
    {
      v25 = v50;
    }

    std::string::append(a3, v24, v25);
    if (v51 < 0)
    {
      operator delete(v49);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1E213A5A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v43 - 57) < 0)
  {
    operator delete(*(v43 - 80));
  }

  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a21 && (a22 & 1) != 0)
  {
    (*(*a21 + 40))();
  }

  if (*(v43 - 89) < 0)
  {
    operator delete(*(v43 - 112));
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (*(v42 + 23) < 0)
  {
    operator delete(*v42);
  }

  _Unwind_Resume(exception_object);
}

uint64_t re::audio::getAudioServiceForEntity(re::audio *this, const re::ecs2::Entity *a2)
{
  if (!this)
  {
    return 0;
  }

  do
  {
    v2 = this;
    this = *(this + 4);
  }

  while (this);
  v3 = *(v2 + 3);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 56);
  if (!v4)
  {
    return 0;
  }

  v5 = (*(*v4 + 32))(v4, a2);
  v6 = re::ServiceLocator::serviceOrNull<re::AudioSceneService>(v5);
  if (!v6)
  {
    return 0;
  }

  v7 = *(*v6 + 16);

  return v7();
}

__n128 re::audio::cleanUpTransformForPHASE@<Q0>(float32x4_t *a1@<X0>, double *a2@<X4>, double *a3@<X5>, double *a4@<X6>, uint64_t a5@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v6 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  v10 = vmulq_f32(v7, v7);
  v10.f32[0] = sqrtf(v10.f32[2] + vaddv_f32(*v10.f32));
  if (v10.f32[0] == 0.0 || (v11 = vmulq_f32(v6, v6), v12 = vmulq_f32(v9, v9), v13 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v12, v12, 8uLL), *&vextq_s8(v11, v11, 8uLL)), vadd_f32(vzip1_s32(*v12.i8, *v11.i8), vzip2_s32(*v12.i8, *v11.i8)))), v14 = vceqz_f32(v13), (v14.i8[4] & 1) != 0) || (v14.i8[0] & 1) != 0)
  {
    result.n128_u64[0] = 1065353216;
    result.n128_u32[2] = 0;
    result.n128_u32[3] = HIDWORD(*a1);
    *&v32 = 0x3F80000000000000;
    DWORD2(v32) = 0;
    HIDWORD(v32) = HIDWORD(*&a1[1]);
    *&v33 = 0;
    *(&v33 + 1) = __PAIR64__(v9.u32[3], 1.0);
    *a5 = result;
    *(a5 + 16) = v32;
    *(a5 + 32) = v33;
LABEL_18:
    *(a5 + 48) = v8;
    return result;
  }

  v16 = vdivq_f32(v7, vdupq_lane_s32(*v10.f32, 0));
  result = vdivq_f32(v6, vdupq_lane_s32(v13, 1));
  v57 = v16;
  v58 = result;
  v18 = vdivq_f32(v9, vdupq_lane_s32(v13, 0));
  v59 = v18;
  v19 = vmulq_f32(v16, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v18, v18, 0xCuLL), v18, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(result, result), result, 0xCuLL))), vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), vextq_s8(vextq_s8(result, result, 0xCuLL), result, 8uLL)));
  if ((v19.f32[2] + vaddv_f32(*v19.f32)) < 0.0)
  {
    result = vnegq_f32(result);
    v58 = result;
  }

  v20 = vextq_s8(result, result, 4uLL).u64[0];
  v21 = 0;
  v22 = v18.i32[1];
  v23 = v18.i32[2];
  v24 = vzip1q_s32(v16, v18);
  v60 = vzip1q_s32(v24, result);
  v61 = vzip2q_s32(v24, vdupq_lane_s32(result.n128_u64[0], 1));
  v62 = vzip1q_s32(vzip2q_s32(v16, v18), vdupq_laneq_s32(result, 2));
  do
  {
    *&buf[v21] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, COERCE_FLOAT(*(&v60 + v21))), result, *&v60.i8[v21], 1), v18, *(&v60 + v21), 2);
    v21 += 16;
  }

  while (v21 != 48);
  v25 = *buf;
  v25.i32[0] = 0;
  v26 = vmulq_f32(v25, v25);
  if (fabsf(v26.f32[2] + vaddv_f32(*v26.f32)) < 1.0e-10)
  {
    v27 = v64;
    v27.i32[1] = 0;
    v28 = vmulq_f32(v27, v27);
    if (fabsf(v28.f32[2] + vaddv_f32(*v28.f32)) < 1.0e-10)
    {
      v29 = v65;
      v29.i32[2] = 0;
      v30 = vmulq_f32(v29, v29);
      if (fabsf(v30.f32[2] + vaddv_f32(*v30.f32)) < 1.0e-10)
      {
        v31 = vextq_s8(vextq_s8(v18, v18, 4uLL), v16, 0xCuLL);
LABEL_17:
        v39 = vextq_s8(v31, vextq_s8(v7, v7, 0xCuLL), 4uLL);
        v6.i64[0] = __PAIR64__(v20.u32[0], result.n128_u32[0]);
        v6.i32[2] = v20.i32[1];
        v31.i32[1] = v22;
        v31.i64[1] = __PAIR64__(v9.u32[3], v23);
        *a5 = v39;
        *(a5 + 16) = v6;
        *(a5 + 32) = v31;
        goto LABEL_18;
      }
    }
  }

  v46 = v7;
  v47 = v6.i32[3];
  v48 = v9.i32[3];
  v49 = v8;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  re::computeSVD3x3(&v57, &v54, &v50, &v51, a2, a3, a4);
  if (v34)
  {
    v35 = 0;
    v36 = v54;
    v37 = v55;
    v38 = v56;
    v60 = v51;
    v61 = v52;
    v62 = v53;
    do
    {
      *&buf[v35] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, COERCE_FLOAT(*(&v60 + v35))), v37, *&v60.i8[v35], 1), v38, *(&v60 + v35), 2);
      v35 += 16;
    }

    while (v35 != 48);
    result = v64;
    v23 = v65.i32[2];
    v22 = v65.i32[1];
    v31 = vextq_s8(vextq_s8(v65, v65, 4uLL), *buf, 0xCuLL);
    v20 = vext_s8(v64.n128_u64[0], *&vextq_s8(result, result, 8uLL), 4uLL);
    v9.i32[3] = v48;
    v8 = v49;
    v7 = v46;
    v6.i32[3] = v47;
    goto LABEL_17;
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "cleanUpTransformForPHASE() Invalid transformation submatrix");
  v40 = re::audio::throttledLog(OS_LOG_TYPE_FAULT, buf);
  v41 = v40;
  if ((v64.n128_i8[7] & 0x80000000) == 0)
  {
    if (!v40)
    {
      goto LABEL_26;
    }

LABEL_23:
    v42 = *re::audioLogObjects(v40);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
    {
      v45 = re::audio::matrix3x3_to_string(v57.f32);
      *buf = 138412290;
      *&buf[4] = v45;
      _os_log_fault_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_FAULT, "cleanUpTransformForPHASE() Invalid transformation submatrix:\n%@", buf, 0xCu);
    }

    goto LABEL_26;
  }

  operator delete(*buf);
  if (v41)
  {
    goto LABEL_23;
  }

LABEL_26:
  v43 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v43;
  result = a1[2];
  v44 = a1[3];
  *(a5 + 32) = result;
  *(a5 + 48) = v44;
  return result;
}

uint64_t re::audio::layoutTagFromFormat(re::audio *this, AVAudioFormat *a2)
{
  v2 = this;
  v3 = [(re::audio *)v2 channelLayout];

  if (v3)
  {
    v4 = [(re::audio *)v2 channelLayout];
    v5 = [v4 layoutTag];
  }

  else
  {
    v6 = [(re::audio *)v2 channelCount];
    v7 = v6;
    if (v6 >= 3)
    {
      v8 = *re::audioLogObjects(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "AudioFileAsset layout tag was not set, but audio has >2 channels. Folding audio to mono!", v10, 2u);
      }

      v5 = v7 | 0x930000u;
    }

    else
    {
      v5 = dword_1E30637E4[v6];
    }
  }

  return v5;
}

CFBundleRef REAudioCopyTestDataBundle(void)
{
  v30 = *MEMORY[0x1E69E9840];
  v18 = [MEMORY[0x1E695DF70] array];
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 environment];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___Z25REAudioCopyTestDataBundlev_block_invoke;
  aBlock[3] = &unk_1E871B828;
  v17 = v1;
  v26 = v17;
  v2 = v18;
  v27 = v2;
  v3 = _Block_copy(aBlock);
  v3[2](v3, @"__XCODE_BUILT_PRODUCTS_DIR_PATHS");
  v3[2](v3, @"DYLD_FRAMEWORK_PATH");
  bufsize = 1023;
  if (_NSGetExecutablePath(buf, &bufsize))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v23 = 0;
      _os_log_error_impl(&dword_1E1C61000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to get current executable path", v23, 2u);
    }
  }

  else
  {
    buf[bufsize] = 0;
    v4 = MEMORY[0x1E695DFF8];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:buf];
    v6 = [v4 fileURLWithPath:v5];

    v7 = [v6 URLByDeletingLastPathComponent];
    [v2 addObject:v7];
  }

  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/AppleInternal/Library/Bundles"];
  [v2 addObject:v8];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v2;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v28 count:16];
  if (v10)
  {
    v11 = *v20;
    v12 = *MEMORY[0x1E695E480];
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v19 + 1) + 8 * v13) URLByAppendingPathComponent:@"REAudioTestData.bundle"];
        v15 = CFBundleCreate(v12, v14);

        if (v15)
        {

          goto LABEL_17;
        }

        ++v13;
      }

      while (v10 != v13);
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v28 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v23 = 0;
    _os_log_error_impl(&dword_1E1C61000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to load REAudioTestData.bundle", v23, 2u);
  }

  v15 = 0;
LABEL_17:

  return v15;
}

void ___Z25REAudioCopyTestDataBundlev_block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) objectForKey:a2];
  v4 = v3;
  if (v3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [v3 componentsSeparatedByString:{@":", 0}];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(a1 + 40);
          v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(*(&v11 + 1) + 8 * v8)];
          [v9 addObject:v10];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

CFBundleRef REAudioCopyTestDataBundleNextTo(CFURLRef url)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E695E480];
  PathComponent = CFURLCreateCopyDeletingLastPathComponent(*MEMORY[0x1E695E480], url);
  v3 = CFURLCreateCopyAppendingPathComponent(v1, PathComponent, @"REAudioTestData.bundle", 1u);
  v4 = CFBundleCreate(v1, v3);
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_error_impl(&dword_1E1C61000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to load REAudioTestData.bundle from %@", &v6, 0xCu);
  }

  CFRelease(v3);
  CFRelease(PathComponent);
  return v4;
}

uint64_t REAudioShouldRedactSensitiveInfoFromLogs(void)
{
  if (qword_1EE19D018 != -1)
  {
    dispatch_once(&qword_1EE19D018, &__block_literal_global_62);
  }

  return _MergedGlobals_118;
}

void ___Z40REAudioShouldRedactSensitiveInfoFromLogsv_block_invoke()
{
  cf[1] = *MEMORY[0x1E69E9840];
  v0 = SecTaskCreateFromSelf(0);
  if (v0)
  {
    v1 = v0;
    cf[0] = 0;
    v2 = SecTaskCopyValueForEntitlement(v0, @"com.apple.re.should-redact-sensitive-info-from-logs", cf);
    v3 = 0;
    v4 = cf[0];
    if (v2 && !cf[0])
    {
      v5 = v2;
      if (objc_opt_respondsToSelector())
      {
        v3 = [v5 BOOLValue];
      }

      else
      {
        v3 = 0;
      }

      v4 = cf[0];
    }

    if (v4)
    {
      CFRelease(v4);
    }

    if (v2)
    {
      CFRelease(v2);
    }

    CFRelease(v1);
  }

  else
  {
    v3 = 0;
  }

  _MergedGlobals_118 = v3;
  v6 = *re::audioLogObjects(v0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(cf[0]) = 67109120;
    HIDWORD(cf[0]) = _MergedGlobals_118;
    _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "Entitlement shouldRedactSensitiveInfoFromLogs set %d.", cf, 8u);
  }
}

uint64_t REAudioEnableAudioEngineRunnableAutomationSupport(void)
{
  if (qword_1EE19D020 != -1)
  {
    dispatch_once(&qword_1EE19D020, &__block_literal_global_67);
  }

  return byte_1EE19D011;
}

void ___Z49REAudioEnableAudioEngineRunnableAutomationSupportv_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 objectForKey:@"com.apple.re.enableAudioEngineRunnableAutomation"];

  if (v1)
  {
    v2 = objc_opt_respondsToSelector();
    if (v2)
    {
      v2 = [v1 BOOLValue];
      byte_1EE19D011 = v2;
    }
  }

  v3 = *re::audioLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = byte_1EE19D011;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "[RE] [Sleep/Wake] User Defaults set enableAudioEngineRunnableAutomationSupport=%d", v4, 8u);
  }
}

uint64_t REAudioShouldConfigureTuningForSTSLabels(void)
{
  if (REAudioShouldConfigureTuningForSTSLabels(void)::onceToken != -1)
  {
    dispatch_once(&REAudioShouldConfigureTuningForSTSLabels(void)::onceToken, &__block_literal_global_73);
  }

  return g_shouldConfigureTuningForSTSLabels;
}

void ___Z40REAudioShouldConfigureTuningForSTSLabelsv_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 objectForKey:@"com.apple.re.shouldConfigureTuningForSTSLabels"];

  if (v1)
  {
    v2 = objc_opt_respondsToSelector();
    if (v2)
    {
      v2 = [v1 BOOLValue];
      g_shouldConfigureTuningForSTSLabels = v2;
    }
  }

  v3 = *re::audioLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = g_shouldConfigureTuningForSTSLabels;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "REAudioShouldConfigureTuningForSTSLabels=%d", v4, 8u);
  }
}

float REAudioEngineShutdownTimerLength(void)
{
  if (REAudioEngineShutdownTimerLength(void)::onceToken != -1)
  {
    dispatch_once(&REAudioEngineShutdownTimerLength(void)::onceToken, &__block_literal_global_78);
  }

  return *&REAudioEngineShutdownTimerLength(void)::audioEngineShutdownTimerLengthFrames / 90.0;
}

void ___Z32REAudioEngineShutdownTimerLengthv_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 objectForKey:@"com.apple.re.audioEngineShutdownTimerLengthFrames"];

  v2 = objc_opt_respondsToSelector();
  if (v2)
  {
    v2 = [v1 floatValue];
    REAudioEngineShutdownTimerLength(void)::audioEngineShutdownTimerLengthFrames = v3;
  }

  v4 = *re::audioLogObjects(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = *&REAudioEngineShutdownTimerLength(void)::audioEngineShutdownTimerLengthFrames;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "audioEngineShutdownTimerLengthFrames=%f", &v5, 0xCu);
  }
}

void sub_1E213B978(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void REAudioComputePHASEMixGroupID(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  std::to_string(&v20, a1);
  v7 = std::string::append(&v20, "-");
  v8 = *&v7->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v11 = std::string::append(&v21, p_p, size);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v22, "-");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = *(a3 + 23);
  if (v15 >= 0)
  {
    v16 = a3;
  }

  else
  {
    v16 = *a3;
  }

  if (v15 >= 0)
  {
    v17 = *(a3 + 23);
  }

  else
  {
    v17 = *(a3 + 8);
  }

  v18 = std::string::append(&v23, v16, v17);
  *a4 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }
}

void sub_1E213BAF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

unint64_t re::audio::pcmBufferSize(re::audio *this, AVAudioPCMBuffer *a2)
{
  v2 = this;
  v3 = v2;
  if (v2)
  {
    v4 = [(re::audio *)v2 frameCapacity];
    v5 = [(re::audio *)v3 format];
    v6 = *([v5 streamDescription] + 24) * v4;
  }

  else
  {
    v7 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "[pcmBufferSize] Cannot retrieve size of null buffer.", v9, 2u);
    }

    v6 = 0;
  }

  return v6;
}

void std::__tree<std::__value_type<double,std::string>,std::__map_value_compare<double,std::__value_type<double,std::string>,std::less<double>,true>,std::allocator<std::__value_type<double,std::string>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<double,std::string>,std::__map_value_compare<double,std::__value_type<double,std::string>,std::less<double>,true>,std::allocator<std::__value_type<double,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<double,std::string>,std::__map_value_compare<double,std::__value_type<double,std::string>,std::less<double>,true>,std::allocator<std::__value_type<double,std::string>>>::destroy(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<double,std::string>,std::__map_value_compare<double,std::__value_type<double,std::string>,std::less<double>,true>,std::allocator<std::__value_type<double,std::string>>>::__emplace_unique_key_args<double,std::piecewise_construct_t const&,std::tuple<double const&>,std::tuple<>>(uint64_t a1, double *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 4);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v2;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v2;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<double,std::string>,std::__map_value_compare<double,std::__value_type<double,std::string>,std::less<double>,true>,std::allocator<std::__value_type<double,std::string>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__deallocate_node(a1, *(a1 + 16));
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

void std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
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
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1E213C0DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11, char a12)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,double>,void *>>>::operator()[abi:ne200100](a12, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E213C198(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,double>,void *>>>::operator()[abi:ne200100](0, v2);
  _Unwind_Resume(a1);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v5, a2, v3);
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,double>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

const void **std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void std::__shared_ptr_emplace<re::AudioSharedSceneManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5CCB218;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

void std::__shared_ptr_emplace<re::AudioMultiSceneManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5CCB268;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

void *re::allocInfo_AudioFileAssetConfiguration(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_119, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_119))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19D088, "AudioFileAssetConfiguration");
    __cxa_guard_release(&_MergedGlobals_119);
  }

  return &unk_1EE19D088;
}

void re::initInfo_AudioFileAssetConfiguration(re *this, re::IntrospectionBase *a2)
{
  v47[0] = 0xC6CB289492F5ABB0;
  v47[1] = "AudioFileAssetConfiguration";
  if (v47[0])
  {
    if (v47[0])
    {
    }
  }

  *(this + 2) = v48;
  if ((atomic_load_explicit(&qword_1EE19D030, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19D030);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_BOOL(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "stream";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE19D038 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_BOOL(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "loop";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x100000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE19D040 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_BOOL(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "randomizeStartTime";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x200000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE19D048 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = introspect_REAudioNormalizationMode(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "normalizationMode";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x400000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE19D050 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = introspect_REAudioCalibrationMode(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "calibrationMode";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x800000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE19D058 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::introspect_double(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "calibrationLevel";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x1000000006;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE19D060 = v29;
      v30 = re::introspectionAllocator(v29);
      v32 = re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(1, v31);
      v33 = (*(*v30 + 32))(v30, 72, 8);
      *v33 = 1;
      *(v33 + 8) = "mixGroupName";
      *(v33 + 16) = v32;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0x2000000007;
      *(v33 + 40) = 0;
      *(v33 + 48) = 0;
      *(v33 + 56) = 0;
      *(v33 + 64) = 0;
      qword_1EE19D068 = v33;
      v34 = re::introspectionAllocator(v33);
      v36 = re::IntrospectionInfo<re::Optional<unsigned int>>::get(1, v35);
      v37 = (*(*v34 + 32))(v34, 72, 8);
      *v37 = 1;
      *(v37 + 8) = "layoutTag";
      *(v37 + 16) = v36;
      *(v37 + 24) = 0;
      *(v37 + 32) = 0x4800000008;
      *(v37 + 40) = 0;
      *(v37 + 48) = 0;
      *(v37 + 56) = 0;
      *(v37 + 64) = 0;
      qword_1EE19D070 = v37;
      v38 = re::introspectionAllocator(v37);
      v40 = introspect_REAudioInputMode(1, v39);
      v41 = (*(*v38 + 32))(v38, 72, 8);
      *v41 = 1;
      *(v41 + 8) = "inputMode";
      *(v41 + 16) = v40;
      *(v41 + 24) = 0;
      *(v41 + 32) = 0x5000000009;
      *(v41 + 40) = 0;
      *(v41 + 48) = 0;
      *(v41 + 56) = 0;
      *(v41 + 64) = 0;
      qword_1EE19D078 = v41;
      v42 = re::introspectionAllocator(v41);
      v44 = re::introspect_double(1, v43);
      v45 = (*(*v42 + 32))(v42, 72, 8);
      *v45 = 1;
      *(v45 + 8) = "targetLUFS";
      *(v45 + 16) = v44;
      *(v45 + 24) = 0;
      *(v45 + 32) = 0x180000000ALL;
      *(v45 + 40) = 0;
      *(v45 + 48) = 0;
      *(v45 + 56) = 0;
      *(v45 + 64) = 0;
      qword_1EE19D080 = v45;
      __cxa_guard_release(&qword_1EE19D030);
    }
  }

  *(this + 2) = 0x5800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 10;
  *(this + 8) = &qword_1EE19D038;
  *(this + 9) = re::internal::defaultConstruct<re::AudioFileAssetConfiguration>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AudioFileAssetConfiguration>;
  *(this + 13) = re::internal::defaultConstructV2<re::AudioFileAssetConfiguration>;
  *(this + 14) = re::internal::defaultDestructV2<re::AudioFileAssetConfiguration>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v46 = v48;
}

uint64_t *re::IntrospectionInfo<re::Optional<unsigned int>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionOptionalBase::IntrospectionOptionalBase(&re::IntrospectionInfo<re::Optional<unsigned int>>::get(BOOL)::info) = &unk_1F5CCB2B8;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::Optional<unsigned int>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::Optional<unsigned int>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::Optional<unsigned int>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::Optional<unsigned int>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_uint32_t(1, a2);
  if ((re::IntrospectionInfo<re::Optional<unsigned int>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::Optional<unsigned int>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::Optional<unsigned int>>::get(BOOL)::info, 0);
    qword_1EE186450 = 0x80000000DLL;
    dword_1EE186458 = v8;
    word_1EE18645C = 0;
    *&xmmword_1EE186460 = 0;
    *(&xmmword_1EE186460 + 1) = 0xFFFFFFFFLL;
    qword_1EE186470 = v7;
    unk_1EE186478 = 0;
    re::IntrospectionInfo<re::Optional<unsigned int>>::get(BOOL)::info = &unk_1F5CCB2B8;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::Optional<unsigned int>>::get(BOOL)::info, &v15);
    if (BYTE8(v15))
    {
      v11 = v16;
    }

    else
    {
      v11 = &v15 + 9;
    }

    if (v15 && (BYTE8(v15) & 1) != 0)
    {
      (*(*v15 + 40))();
    }

    v15 = *(v7 + 32);
    xmmword_1EE186460 = v14;
    if (v17)
    {
      if (v17)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v12 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v12);
  }

  return &re::IntrospectionInfo<re::Optional<unsigned int>>::get(BOOL)::info;
}

double re::internal::defaultConstruct<re::AudioFileAssetConfiguration>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 2) = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  result = 0.0;
  *(a3 + 16) = xmmword_1E3061530;
  *(a3 + 32) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  return result;
}

double re::internal::defaultDestruct<re::AudioFileAssetConfiguration>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 32) == 1)
  {
    return re::DynamicString::deinit((a3 + 40));
  }

  return result;
}