void re::ecs2::AudioPlayerComponent::~AudioPlayerComponent(uint64_t **this)
{
  v1 = this;
  *this = &unk_1F5CE8DB8;
  v2 = this[47];
  v3 = this[48];
  while (v2 != v3)
  {
    v4 = *v2;
    if (*v2)
    {
      v5 = re::globalAllocators(this);
      this = (*(*v5[2] + 40))(v5[2], v4);
    }

    ++v2;
  }

  v6 = *(v1 + 28);
  if (v6)
  {
    v7 = 0;
    v8 = *(v1 + 12);
    while (1)
    {
      v9 = *v8;
      v8 += 8;
      if (v9 < 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        LODWORD(v7) = *(v1 + 28);
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  if (v7 != v6)
  {
    v10 = *(v1 + 12);
    do
    {
      *(*(v10 + 32 * v7 + 16) + 512) = 0;
      if (v6 <= v7 + 1)
      {
        v11 = v7 + 1;
      }

      else
      {
        v11 = v6;
      }

      while (v11 - 1 != v7)
      {
        LODWORD(v7) = v7 + 1;
        if ((*(v10 + 32 * v7) & 0x80000000) != 0)
        {
          goto LABEL_22;
        }
      }

      LODWORD(v7) = v11;
LABEL_22:
      ;
    }

    while (v7 != v6);
  }

  if (*(v1 + 117))
  {
    v12 = *(v1 + 116);
    if (v12)
    {
      memset_pattern16(*(v1 + 56), &unk_1E304C660, 4 * v12);
    }

    v13 = *(v1 + 118);
    if (v13)
    {
      v14 = *(v1 + 57);
      do
      {
        if ((*v14 & 0x80000000) != 0)
        {
          *v14 &= ~0x80000000;
        }

        v14 += 8;
        --v13;
      }

      while (v13);
    }

    *(v1 + 119) = 0x7FFFFFFF;
    *(v1 + 468) = 0;
    ++*(v1 + 120);
  }

  if (*(v1 + 27))
  {
    v15 = *(v1 + 26);
    if (v15)
    {
      memset_pattern16(*(v1 + 11), &unk_1E304C660, 4 * v15);
    }

    v16 = *(v1 + 28);
    if (v16)
    {
      v17 = 0;
      for (i = 0; i < v16; ++i)
      {
        v19 = *(v1 + 12);
        v20 = *(v19 + v17);
        if (v20 < 0)
        {
          v21 = v19 + v17;
          *(v19 + v17) = v20 & 0x7FFFFFFF;
          v22 = *(v19 + v17 + 16);
          if (v22)
          {

            *(v21 + 16) = 0;
            v16 = *(v1 + 28);
          }
        }

        v17 += 32;
      }
    }

    *(v1 + 27) = 0;
    *(v1 + 28) = 0;
    v23 = *(v1 + 30) + 1;
    *(v1 + 29) = 0x7FFFFFFF;
    *(v1 + 30) = v23;
  }

  *(v1 + 46) = 0;
  re::HashTable<unsigned long long,re::sg::MaterialSource,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v1 + 61);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v1 + 55);
  re::DynamicString::deinit((v1 + 408));
  v24 = *(v1 + 47);
  if (v24)
  {
    *(v1 + 48) = v24;
    operator delete(v24);
  }

  re::DynamicArray<re::AssetHandle>::deinit(v1 + 128);
  re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v1 + 10);
  re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v1 + 4);
  *v1 = &unk_1F5CCF868;
  objc_destructInstance(v1 + 8);
}

{
  re::ecs2::AudioPlayerComponent::~AudioPlayerComponent(this);

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::ecs2::AudioPlayerComponent::getTimebaseService(re::ecs2::AudioPlayerComponent *this)
{
  if (!this)
  {
    return 0;
  }

  do
  {
    v1 = this;
    this = *(this + 4);
  }

  while (this);
  v2 = *(v1 + 3);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = (*(*v3 + 32))(v3);

  return re::ServiceLocator::serviceOrNull<re::TimebaseService>(v4);
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::TimebaseService>(uint64_t a1)
{
  {
    re::introspect<re::TimebaseService>(BOOL)::info = re::introspect_TimebaseService(0);
  }

  v2 = re::introspect<re::TimebaseService>(BOOL)::info;
  re::StringID::invalid(&v6);
  v3 = (*(*a1 + 16))(a1, v2, &v6);
  v4 = v3;
  if (v6)
  {
    if (v6)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::SharedClockService>(uint64_t a1)
{
  {
    re::introspect<re::SharedClockService>(BOOL)::info = re::introspect_SharedClockService(0);
  }

  v2 = re::introspect<re::SharedClockService>(BOOL)::info;
  re::StringID::invalid(&v6);
  v3 = (*(*a1 + 16))(a1, v2, &v6);
  v4 = v3;
  if (v6)
  {
    if (v6)
    {
    }
  }

  return v4;
}

re *re::ecs2::AudioPlayerComponent::copyPreferredMasterClock(re::ecs2::AudioPlayerComponent *this)
{
  v2 = *(this + 2);
  if (!v2)
  {
    goto LABEL_9;
  }

  do
  {
    v3 = v2;
    v2 = *(v2 + 32);
  }

  while (v2);
  v4 = *(v3 + 24);
  if (!v4 || (v5 = *(v4 + 56)) == 0 || (v6 = (*(*v5 + 32))(v5), (v7 = re::ServiceLocator::serviceOrNull<re::SharedClockService>(v6)) == 0) || (v8 = v7, (result = (*(*v7 + 72))(v7)) == 0) && (result = (*(*v8 + 80))(v8)) == 0)
  {
LABEL_9:
    TimebaseService = re::ecs2::AudioPlayerComponent::getTimebaseService(*(this + 2));
    if (TimebaseService)
    {
      v12 = (*(*TimebaseService + 32))(TimebaseService);

      return CFRetain(v12);
    }

    else
    {

      return re::TimebaseService::CreateAudioClock(0, v11);
    }
  }

  return result;
}

void re::ecs2::AudioPlayerComponent::playbackStateDidChange(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v60 = *MEMORY[0x1E69E9840];
  v8 = re::audioLogObjects(a1);
  v9 = re::AudioLogObjects::loggingEnabled(v8);
  if (v9)
  {
    v41 = *re::audioLogObjects(v9);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v42 = *(a1 + 352);
      if (!v42)
      {
        v42 = *(a1 + 400);
      }

      v43 = *(a1 + 16);
      if (!v43)
      {
        goto LABEL_88;
      }

      v44 = *(a1 + 16);
      do
      {
        v45 = v44;
        v44 = *(v44 + 32);
      }

      while (v44);
      if (*(v45 + 24))
      {
        do
        {
          v47 = v43;
          v43 = *(v43 + 32);
        }

        while (v43);
        v46 = *(*(*(v47 + 24) + 104) + 288) >> 1;
      }

      else
      {
LABEL_88:
        v46 = -1;
      }

      v48 = v55;
      re::audio::nameForPlaybackState(a3, v55);
      if (v56 < 0)
      {
        v48 = v55[0];
      }

      re::audio::nameForPlaybackState(a4, __p);
      if (v54 >= 0)
      {
        v49 = __p;
      }

      else
      {
        v49 = __p[0];
      }

      *time = 134219010;
      *&time[4] = v42;
      *&time[12] = 2048;
      *&time[14] = v46;
      *&time[22] = 2048;
      *&time[24] = a2;
      *v58 = 2080;
      *&v58[2] = v48;
      *&v58[10] = 2080;
      v59 = v49;
      _os_log_debug_impl(&dword_1E1C61000, v41, OS_LOG_TYPE_DEBUG, "AudioPlayerComponent (entityID=%llu, sceneID=%llu) stream %llu changed state from %s to %s", time, 0x34u);
      if (v54 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v56) < 0)
      {
        operator delete(v55[0]);
      }
    }
  }

  v10 = re::ecs2::AudioPlayerComponent::sourceStateForToken(a1, a2);
  v11 = v10;
  if (!v10)
  {
    goto LABEL_16;
  }

  v12 = *(v10 + 756);
  if (v12 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12 == 3;
    if (a4 == 1 && v12 == 2)
    {
      goto LABEL_15;
    }
  }

  if (a4 <= 2)
  {
    if (a4)
    {
      if (a4 != 2)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_14:
    if (v13)
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (a4 == 5)
  {
LABEL_15:
    *(v10 + 756) = 0;
    goto LABEL_16;
  }

  if (a4 == 3)
  {
    goto LABEL_14;
  }

LABEL_16:
  v14 = *(a1 + 16);
  if (!v14)
  {
    goto LABEL_36;
  }

  v15 = *(a1 + 16);
  do
  {
    v16 = v15;
    v15 = *(v15 + 32);
  }

  while (v15);
  if (*(v16 + 24))
  {
    v17 = *(a1 + 16);
    do
    {
      v18 = v17;
      v17 = *(v17 + 32);
    }

    while (v17);
    v19 = *(*(v18 + 24) + 288);
    v20 = v19 != 0;
    v21 = a4 == 2;
    if (a4 == 2 && a3 == 1 && v19)
    {
      v22 = a2;
      if (*(v10 + 24) == 1)
      {
        v22 = *(v10 + 32);
      }

      v55[0] = v22;
      v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30))) >> 27));
      re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1 + 440, v55, v23 ^ (v23 >> 31), time);
      if (*&time[12] != 0x7FFFFFFF)
      {
        (*(*(a1 + 456) + 32 * *&time[12] + 16))(v55[0]);
      }

      *time = a2;
      if ((atomic_load_explicit(&qword_1EE1A2EF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A2EF0))
      {
        qword_1EE1A2EE8 = re::EventBus::typeStringToId(("29REAudioPlayerDidCompleteEvent" & 0x7FFFFFFFFFFFFFFFLL), v51);
        __cxa_guard_release(&qword_1EE1A2EF0);
      }

      re::EventBus::publish(v19, v14, qword_1EE1A2EE8, time, 8uLL, 0);
      if (*(v11 + 480) != -1)
      {
        v24 = *(v11 + 728);
        if (v24)
        {
          if (CMTimebaseGetRate(*(v11 + 728)) != 0.0)
          {
            CMTimebaseGetTime(time, v24);
            Seconds = CMTimeGetSeconds(time);
            if (Seconds >= re::ecs2::AudioPlayerComponent::assetDurationFor(a1, a2) + -0.01)
            {
              re::ecs2::AudioPlayerComponent::doStop(a1, a2, v11, 0);
            }
          }
        }
      }

      v20 = 1;
      goto LABEL_48;
    }
  }

  else
  {
LABEL_36:
    v20 = 0;
    v19 = 0;
    LOBYTE(v21) = a4 == 2;
  }

  if (!a3 && v21 || a3 == 2 && !a4)
  {
    return;
  }

  v26 = !v20;
  if (a4 != 1)
  {
    v26 = 1;
  }

  if ((v26 & 1) == 0)
  {
    v20 = 1;
    if (a3 <= 4 && ((1 << a3) & 0x19) != 0)
    {
      *time = a2;
      if ((atomic_load_explicit(&qword_1EE1A2F00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A2F00))
      {
        qword_1EE1A2EF8 = re::EventBus::typeStringToId(("26REAudioPlayerDidStartEvent" & 0x7FFFFFFFFFFFFFFFLL), v52);
        __cxa_guard_release(&qword_1EE1A2F00);
      }

      re::EventBus::publish(v19, v14, qword_1EE1A2EF8, time, 8uLL, 0);
    }
  }

LABEL_48:
  *v58 = 0;
  memset(time, 0, sizeof(time));
  *&v58[4] = 0x7FFFFFFFLL;
  v27 = *(a1 + 488);
  if (v27)
  {
    v28 = *(a1 + 516) <= 3u ? 3 : *(a1 + 516);
    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(time, v27, v28);
    v29 = *(a1 + 520);
    if (v29)
    {
      v30 = 0;
      for (i = 0; i < v29; ++i)
      {
        v32 = *(a1 + 504);
        if ((*(v32 + v30) & 0x80000000) != 0)
        {
          v33 = re::HashTable<unsigned long long,void({block_pointer} {__strong})(unsigned long long,REAudioPlaybackState,REAudioPlaybackState),re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(time, *(v32 + v30 + 24) % *&time[24], *(v32 + v30 + 24));
          v34 = *(a1 + 504) + v30;
          *(v33 + 8) = *(v34 + 8);
          *(v33 + 16) = _Block_copy(*(v34 + 16));
          v29 = *(a1 + 520);
        }

        v30 += 32;
      }
    }
  }

  v35 = *v58;
  if (*v58)
  {
    v36 = 0;
    v37 = *&time[16];
    while (1)
    {
      v38 = *v37;
      v37 += 8;
      if (v38 < 0)
      {
        break;
      }

      if (*v58 == ++v36)
      {
        LODWORD(v36) = *v58;
        break;
      }
    }
  }

  else
  {
    LODWORD(v36) = 0;
  }

  if (v36 != *v58)
  {
    v39 = *&time[16];
    do
    {
      (*(*(v39 + 32 * v36 + 16) + 16))();
      if (*v58 <= (v36 + 1))
      {
        v40 = v36 + 1;
      }

      else
      {
        v40 = *v58;
      }

      v39 = *&time[16];
      while (v40 - 1 != v36)
      {
        LODWORD(v36) = v36 + 1;
        if ((*(*&time[16] + 32 * v36) & 0x80000000) != 0)
        {
          goto LABEL_74;
        }
      }

      LODWORD(v36) = v40;
LABEL_74:
      ;
    }

    while (v36 != v35);
  }

  if (v20)
  {
    v55[0] = a2;
    v55[1] = a3;
    v56 = a4;
    if ((atomic_load_explicit(&qword_1EE1A2F10, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_1EE1A2F10))
      {
        qword_1EE1A2F08 = re::EventBus::typeStringToId(("32REAudioPlayerDidChangeStateEvent" & 0x7FFFFFFFFFFFFFFFLL), v50);
        __cxa_guard_release(&qword_1EE1A2F10);
      }
    }

    re::EventBus::publish(v19, v14, qword_1EE1A2F08, v55, 0x18uLL, 0);
  }

  re::HashTable<unsigned long long,re::sg::MaterialSource,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(time);
}

re::ecs2::NetworkComponent *re::ecs2::AudioPlayerComponent::sourceStateForToken(re::ecs2::AudioPlayerComponent *this, uint64_t a2)
{
  v7 = a2;
  result = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 80, &v7);
  if (result)
  {
    return *result;
  }

  v8 = v7;
  result = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 32, &v8);
  if (result)
  {
    v4 = result;
    v5 = *(this + 2);
    if (v5 && (result = *(v5 + 216)) != 0)
    {
      result = re::ecs2::NetworkComponent::owningProcessType(result);
      v6 = result;
    }

    else
    {
      v6 = 0;
    }

    if (re::ecs2::AudioPlayerComponent::shouldCreateSourceStateForUnmatchedSyncState(result, v4, v6))
    {
      re::ecs2::AudioPlayerComponent::createSourceStateForUnmatchedSyncState(this, v7, v4, v6, 0);
    }

    result = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 80, &v7);
    if (result)
    {
      return *result;
    }
  }

  return result;
}

double re::ecs2::AudioPlayerComponent::assetDurationFor(re::ecs2::AudioPlayerComponent *this, unint64_t a2)
{
  v2 = re::ecs2::AudioPlayerComponent::sourceStateForToken(this, a2);
  if (!v2)
  {
    return 0.0;
  }

  v3 = re::AssetHandle::AssetHandle(v11, (v2 + 64));
  v4 = 0.0;
  if (v12)
  {
    v5 = atomic_load((v12 + 896));
    if (v5 == 2)
    {
      v6 = *(v12 + 280);
      if (v6 == re::AudioFileAsset::assetType(v3))
      {
        v7 = re::AssetHandle::loadedAsset<re::AudioFileAsset>(v11);
        v8 = *(v7 + 144);
        [*(*(v7 + 8) + 8) sampleRate];
        v4 = v8 / v9;
      }
    }
  }

  re::AssetHandle::~AssetHandle(v11);
  return v4;
}

void re::ecs2::AudioPlayerComponent::doStop(re::ecs2::AudioPlayerComponent *this, unint64_t a2, re::AudioSourceState *a3, re::AudioSourceSyncState *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a3 + 752))
  {
    return;
  }

  v8 = *(a3 + 313);
  v9 = *re::audioLogObjects(this);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8 == 1)
  {
    if (v10)
    {
      v11 = *(this + 2);
      if (v11 && (v12 = re::ecs2::EntityComponentCollection::get((v11 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType)) != 0)
      {
        v13 = *(v12 + 32);
      }

      else
      {
        v13 = 0;
      }

      v17 = re::AssetHandle::assetInfo((a3 + 64));
      if (v17[17])
      {
        v18 = v17[18];
      }

      else
      {
        v18 = v17 + 137;
      }

      LODWORD(buf.value) = 134218499;
      *(&buf.value + 4) = a2;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = v13;
      HIWORD(buf.epoch) = 2085;
      v26 = v18;
      v19 = "Setting token %llu from connection %llu to stop, REAsset = '%{sensitive}s'";
LABEL_21:
      _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, v19, &buf, 0x20u);
    }
  }

  else if (v10)
  {
    v14 = *(this + 2);
    if (v14 && (v15 = re::ecs2::EntityComponentCollection::get((v14 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType)) != 0)
    {
      v16 = *(v15 + 32);
    }

    else
    {
      v16 = 0;
    }

    v20 = re::AssetHandle::assetInfo((a3 + 64));
    if (v20[17])
    {
      v21 = v20[18];
    }

    else
    {
      v21 = v20 + 137;
    }

    LODWORD(buf.value) = 134218498;
    *(&buf.value + 4) = a2;
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = v16;
    HIWORD(buf.epoch) = 2080;
    v26 = v21;
    v19 = "Setting token %llu from connection %llu to stop, REAsset = '%s'";
    goto LABEL_21;
  }

  if (a4)
  {
    *(a4 + 6) = 0;
  }

  v22 = *(a3 + 91);
  if (v22)
  {
    v23 = CMTimebaseCopySource(*(a3 + 91));
    buf = **&MEMORY[0x1E6960CC0];
    CMSyncGetTime(&immediateSourceTime, v23);
    CMTimebaseSetRateAndAnchorTime(v22, 0.0, &buf, &immediateSourceTime);
    CFRelease(v23);
    if (*(a3 + 64))
    {
      re::ecs2::AudioPlayerComponent::setRandomPlaybackPositionForTokenIfAppropriate(this, a2);
    }
  }
}

void re::ecs2::AudioPlayerComponent::registerAudioAsset(uint64_t a1, re::AssetHandle *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  canModifyState = re::ecs2::AudioPlayerComponent::canModifyState(*(a1 + 16));
  if (canModifyState)
  {

    re::DynamicArray<re::AssetHandle>::add((a1 + 128), a2);
  }

  else
  {
    v5 = *re::audioLogObjects(canModifyState);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 352);
      if (!v6)
      {
        v6 = *(a1 + 400);
      }

      v7 = 134217984;
      v8 = v6;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "AudioPlayerComponent (entityID=%llu) cannot modify state because it is not owned.", &v7, 0xCu);
    }
  }
}

uint64_t re::ecs2::AudioPlayerComponent::canModifyState(re::ecs2::AudioPlayerComponent *this)
{
  if (!this)
  {
    return 1;
  }

  v1 = *(this + 27);
  if (!v1 || !re::ecs2::NetworkComponent::owningProcessType(*(this + 27)) || !*(v1 + 32))
  {
    return 1;
  }

  return RESyncableIsAuthoritative();
}

void re::ecs2::AudioPlayerComponent::unregisterAudioAsset(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  canModifyState = re::ecs2::AudioPlayerComponent::canModifyState(*(a1 + 16));
  if (canModifyState)
  {
    v5 = *(a1 + 160);
    v6 = *(a1 + 144);
    if (v6)
    {
      v7 = 24 * v6;
      for (i = *(a1 + 160); *(i + 8) != *(a2 + 8); i += 24)
      {
        v7 -= 24;
        if (!v7)
        {
          return;
        }
      }
    }

    else
    {
      i = *(a1 + 160);
    }

    if (i != v5 + 24 * v6)
    {

      re::DynamicArray<re::AssetHandle>::removeAt(a1 + 128, 0xAAAAAAAAAAAAAAABLL * ((i - v5) >> 3));
    }
  }

  else
  {
    v9 = *re::audioLogObjects(canModifyState);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 352);
      if (!v10)
      {
        v10 = *(a1 + 400);
      }

      v11 = 134217984;
      v12 = v10;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "AudioPlayerComponent (entityID=%llu) cannot modify state because it is not owned.", &v11, 0xCu);
    }
  }
}

uint64_t re::HashTable<unsigned long long,void (*)(unsigned long long),re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(uint64_t a1, uint64_t *a2, void *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v12);
  v7 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<unsigned long long,re::ecs2::Scene const*,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v13, v12);
    v9 = *a2;
    *(v8 + 16) = *a3;
    result = v8 + 16;
    *(result - 8) = v9;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v11 = *(a1 + 16) + 32 * v7;
    *(v11 + 16) = *a3;
    return v11 + 16;
  }

  return result;
}

unint64_t re::ecs2::AudioPlayerComponent::prepare(re::ecs2::AudioPlayerComponent *a1, const re::AssetHandle *a2)
{
  re::AssetHandle::AssetHandle(v6, a2);
  v3 = re::ecs2::AudioPlayerComponent::prepareInternal(a1, v6);
  re::AssetHandle::~AssetHandle(v6);
  if (v3)
  {
    v7 = v3;
    v4 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 32, &v7);
    re::ecs2::AudioPlayerComponent::createSourceStateForUnmatchedSyncState(a1, v7, v4, 0, 0);
  }

  return v3;
}

unint64_t re::ecs2::AudioPlayerComponent::prepareInternal(uint64_t a1, re::AssetHandle *a2)
{
  v82 = *MEMORY[0x1E69E9840];
  ++*(a1 + 364);
  ++*(a1 + 372);
  canModifyState = re::ecs2::AudioPlayerComponent::canModifyState(*(a1 + 16));
  if ((canModifyState & 1) == 0)
  {
    v22 = *re::audioLogObjects(canModifyState);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 352);
      if (!v23)
      {
        v23 = *(a1 + 400);
      }

      *__buf = 134217984;
      *&__buf[4] = v23;
      v24 = "[RE/ECS] [Prepare] AudioPlayerComponent (entityID=%llu) cannot modify state because it is not owned.";
      goto LABEL_28;
    }

    return 0;
  }

  v5 = *(a2 + 1);
  if (!v5)
  {
    v22 = *re::audioLogObjects(canModifyState);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 352);
      if (!v25)
      {
        v25 = *(a1 + 400);
      }

      *__buf = 134217984;
      *&__buf[4] = v25;
      v24 = "[RE/ECS] [Prepare] AudioPlayerComponent (entityID=%llu) received null asset";
LABEL_28:
      _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, v24, __buf, 0xCu);
      return 0;
    }

    return 0;
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    v26 = *re::audioLogObjects(canModifyState);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      *__buf = 0;
      _os_log_fault_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_FAULT, "[RE/ECS] [Prepare] AudioPlayerComponent cannot prepare component without valid entity", __buf, 2u);
    }

    return 0;
  }

  v7 = atomic_load((v5 + 896));
  if (v7 != 2)
  {
    re::AssetHandle::loadAsync(a2);
  }

  *__buf = 0;
  do
  {
    arc4random_buf(__buf, 8uLL);
    v8 = *__buf;
  }

  while (*__buf < 0x3E8uLL);
  v58 = *__buf;
  if (re::internal::enableSignposts(0, 0))
  {
    re::ecs2::AudioPlayerComponent::getOrInitializePrivateEntityID(a1);
    re::AssetHandle::assetInfo(a2);
    kdebug_trace();
  }

  ShouldRedactSensitiveInfoFromLogs = REAudioShouldRedactSensitiveInfoFromLogs();
  v10 = ShouldRedactSensitiveInfoFromLogs;
  v11 = *re::audioLogObjects(ShouldRedactSensitiveInfoFromLogs);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = re::AssetHandle::assetInfo(a2);
      if (v13[17])
      {
        v14 = v13[18];
      }

      else
      {
        v14 = v13 + 137;
      }

      v15 = *(v6 + 304) & 1;
      v16 = *(a1 + 352);
      if (!v16)
      {
        v16 = *(a1 + 400);
      }

      v17 = *(v6 + 312);
      v18 = *(v6 + 296);
      do
      {
        v19 = v6;
        v6 = *(v6 + 32);
      }

      while (v6);
      v20 = *(v19 + 24);
      *__buf = 136644355;
      *&__buf[4] = v14;
      *&__buf[12] = 2048;
      *&__buf[14] = v8;
      *&__buf[22] = 2048;
      *v60 = v17;
      *&v60[8] = 2080;
      *&v60[10] = v18;
      *&v60[18] = 1024;
      *&v60[20] = v15;
      *v61 = 2048;
      *&v61[2] = v16;
      *&v61[10] = 2048;
      *v62 = v20;
      v21 = "[RE/ECS] [Prepare] AudioPlayerComponent preparing asset='%{sensitive}s', token=%llu on REEntity (id: %llu, name: %s, isActive=%d) (PHASEEntity %llu) in scene %p";
LABEL_42:
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, v21, __buf, 0x44u);
    }
  }

  else if (v12)
  {
    v29 = re::AssetHandle::assetInfo(a2);
    if (v29[17])
    {
      v30 = v29[18];
    }

    else
    {
      v30 = v29 + 137;
    }

    v31 = *(v6 + 304) & 1;
    v32 = *(a1 + 352);
    if (!v32)
    {
      v32 = *(a1 + 400);
    }

    v33 = *(v6 + 312);
    v34 = *(v6 + 296);
    do
    {
      v35 = v6;
      v6 = *(v6 + 32);
    }

    while (v6);
    v36 = *(v35 + 24);
    *__buf = 136316674;
    *&__buf[4] = v30;
    *&__buf[12] = 2048;
    *&__buf[14] = v8;
    *&__buf[22] = 2048;
    *v60 = v33;
    *&v60[8] = 2080;
    *&v60[10] = v34;
    *&v60[18] = 1024;
    *&v60[20] = v31;
    *v61 = 2048;
    *&v61[2] = v32;
    *&v61[10] = 2048;
    *v62 = v36;
    v21 = "[RE/ECS] [Prepare] AudioPlayerComponent preparing asset='%s', token=%llu on REEntity (id: %llu, name: %s, isActive=%d) (PHASEEntity %llu) in scene %p";
    goto LABEL_42;
  }

  __buf[0] = 0;
  *&__buf[8] = 0u;
  memset(v60, 0, sizeof(v60));
  *v61 = 9;
  *&v61[8] = 1065353216;
  *&v62[4] = 0;
  v63 = 0;
  v64 = 0.0;
  v65 = 1065353216;
  v66 = 0;
  __asm { FMOV            V0.2S, #1.0 }

  v67 = _D0;
  v68 = 0;
  v69 = 0;
  v70 = 1065353216;
  v71[0] = 0;
  v74 = 0;
  v76 = 0uLL;
  *(&v75 + 1) = 0;
  v43 = re::DynamicString::setCapacity(&v75, 0);
  *(&v77 + 4) = 0x3E051EB800000000;
  LODWORD(v77) = 1;
  HIDWORD(v77) = 1106247680;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  re::DynamicString::setCapacity(&v79, 0);
  v81 = 0;
  re::AssetHandle::operator=(v60, a2);
  HIBYTE(v81) = v10;
  *&__buf[16] = 1;
  *v61 = 4;
  v77 = *(a1 + 168);
  v65 = *(a1 + 328);
  v70 = *(a1 + 216);
  LODWORD(v63) = 0;
  *(&v63 + 1) = log10f(*(a1 + 264)) * 20.0;
  v64 = log10f(*(a1 + 312)) * 20.0;
  v45 = *(a2 + 1);
  if (v45)
  {
    v46 = *(v45 + 280);
    v47 = re::AudioGeneratorAsset::assetType(v44);
    if (v46 == v47)
    {
      arc4random_buf(&v78, 8uLL);
      arc4random_buf(&v78 + 8, 8uLL);
    }
  }

  else
  {
    v47 = re::AudioGeneratorAsset::assetType(v44);
  }

  if (v7 == 2)
  {
    v48 = *(a2 + 1);
    if (v48)
    {
      v49 = *(v48 + 280);
      v50 = re::AudioFileAsset::assetType(v47);
      if (v49 == v50)
      {
        v51 = re::AssetHandle::loadedAsset<re::AudioFileAsset>(a2);
        v50 = re::Optional<re::DynamicString>::operator=(v71, (v51 + 64));
      }
    }

    else
    {
      v50 = re::AudioFileAsset::assetType(v47);
    }

    v52 = *(a2 + 1);
    if (v52)
    {
      v53 = *(v52 + 280);
      if (v53 == re::AudioGeneratorAsset::assetType(v50))
      {
        v54 = re::AssetHandle::loadedAsset<re::AudioGeneratorAsset>(a2);
        re::Optional<re::DynamicString>::operator=(v71, (v54 + 8));
      }
    }

    else
    {
      re::AudioGeneratorAsset::assetType(v50);
    }
  }

  re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(a1 + 32, &v58, __buf);
  v55 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 32, &v58);
  if (v55)
  {
    v56 = v55;
    v57 = re::ecs2::AudioPlayerComponent::selectInputMode(a1, v58);
    *(v56 + 168) = v57;
    if (v57)
    {
      *(v56 + 208) = 0;
      *(a1 + 168) = 0;
    }
  }

  v27 = v58;
  if (v79)
  {
    if (BYTE8(v79))
    {
      (*(*v79 + 40))();
    }

    v79 = 0u;
    v80 = 0u;
  }

  if (v75)
  {
    if (BYTE8(v75))
    {
      (*(*v75 + 40))();
    }

    v75 = 0u;
    v76 = 0u;
  }

  if (v71[0] == 1 && v72)
  {
    if (BYTE8(v72))
    {
      (*(*v72 + 40))();
    }

    v73 = 0u;
    v72 = 0u;
  }

  re::AssetHandle::~AssetHandle(v60);
  return v27;
}

unint64_t re::ecs2::AudioPlayerComponent::prepare(re::ecs2::AudioPlayerComponent *a1, const re::AssetHandle *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  re::AssetHandle::AssetHandle(v10, a2);
  v5 = re::ecs2::AudioPlayerComponent::prepareInternal(a1, v10);
  re::AssetHandle::~AssetHandle(v10);
  v11 = v5;
  if (v5)
  {
    v6 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 32, &v11);
    if (v6)
    {
      *v6 = 1;
      *(v6 + 8) = a3;
      *buf = v11;
      v7 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 32, buf);
      re::ecs2::AudioPlayerComponent::createSourceStateForUnmatchedSyncState(a1, *buf, v7, 0, 0);
    }

    else
    {
      v8 = *re::audioLogObjects(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a3;
        _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "RE/ECS] [Prepare] Cannot complete preparation on group token: %llu with null sync state.", buf, 0xCu);
      }
    }
  }

  return v11;
}

uint64_t re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 304 * v6 + 16;
  }
}

unint64_t re::ecs2::AudioPlayerComponent::getOrInitializePrivateEntityID(re::ecs2::AudioPlayerComponent *this)
{
  result = *(this + 44);
  v3 = *(this + 50);
  if (result)
  {
    if (result != v3)
    {
      *(this + 50) = result;
    }

    return result;
  }

  result = *(this + 50);
  if (v3)
  {
    return result;
  }

  v4 = *(this + 2);
  if (!v4)
  {
    for (__buf = 0; __buf < 0x3E8; result = __buf)
    {
      arc4random_buf(&__buf, 8uLL);
    }

    *(this + 50) = __buf;
    goto LABEL_12;
  }

  result = *(v4 + 312);
  *(this + 50) = result;
  v5 = *(v4 + 216);
  if (!v5 || (v6 = re::ecs2::NetworkComponent::owningProcessType(v5), result = *(this + 50), !v6))
  {
LABEL_12:
    *(this + 44) = result;
  }

  return result;
}

re::DynamicString *re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(uint64_t a1, void *a2, __int128 *a3)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v22);
  v7 = HIDWORD(v23);
  if (HIDWORD(v23) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v23, v22);
    *(v8 + 8) = *a2;
    v9 = *a3;
    *(v8 + 32) = *(a3 + 2);
    *(v8 + 16) = v9;
    re::AssetHandle::AssetHandle((v8 + 40), (a3 + 24));
    *(v8 + 64) = a3[3];
    v10 = a3[4];
    v11 = a3[5];
    v12 = a3[6];
    *(v8 + 124) = *(a3 + 108);
    *(v8 + 96) = v11;
    *(v8 + 112) = v12;
    *(v8 + 80) = v10;
    v13 = *(a3 + 128);
    *(v8 + 144) = v13;
    if (v13 == 1)
    {
      re::DynamicString::DynamicString((v8 + 152), (a3 + 136));
    }

    *(v8 + 184) = *(a3 + 168);
    re::DynamicString::DynamicString((v8 + 192), (a3 + 11));
    v14 = a3[14];
    *(v8 + 224) = a3[13];
    *(v8 + 240) = v14;
    result = re::DynamicString::DynamicString((v8 + 256), (a3 + 15));
    *(v8 + 288) = *(a3 + 136);
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v16 = *(a1 + 16) + 304 * v7;
    v17 = *a3;
    *(v16 + 32) = *(a3 + 2);
    *(v16 + 16) = v17;
    re::AssetHandle::operator=(v16 + 40, a3 + 3);
    *(v16 + 64) = a3[3];
    v18 = a3[4];
    v19 = a3[5];
    v20 = a3[6];
    *(v16 + 124) = *(a3 + 108);
    *(v16 + 96) = v19;
    *(v16 + 112) = v20;
    *(v16 + 80) = v18;
    re::Optional<re::DynamicString>::operator=((v16 + 144), a3 + 128);
    *(v16 + 184) = *(a3 + 168);
    re::DynamicString::operator=((v16 + 192), (a3 + 11));
    v21 = a3[14];
    *(v16 + 224) = a3[13];
    *(v16 + 240) = v21;
    result = re::DynamicString::operator=((v16 + 256), (a3 + 15));
    *(v16 + 288) = *(a3 + 136);
  }

  return result;
}

uint64_t re::ecs2::AudioPlayerComponent::selectInputMode(re::ecs2::AudioPlayerComponent *this, uint64_t a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 0;
  }

  v5 = *(v2 + 98);
  if (*(v2 + 98))
  {
    v6 = (re::ecs2::ComponentImpl<re::ecs2::SpatialAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
    v7 = vld1q_dup_s16(v6);
    v8 = *(v2 + 104);
    v9 = 1;
    v10 = v8;
    v11 = *(v2 + 98);
    while (1)
    {
      v12 = vandq_s8(vceqq_s16(v7, *v10), xmmword_1E306AC00);
      v12.i16[0] = vmaxvq_u16(v12);
      if (v12.i32[0])
      {
        break;
      }

      v9 -= 8;
      ++v10;
      if (!--v11)
      {
        goto LABEL_8;
      }
    }

    if (v12.u16[0] - v9 < *(v2 + 96))
    {
      return 0;
    }

LABEL_8:
    v13 = (re::ecs2::ComponentImpl<re::ecs2::AmbientAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
    v14 = vld1q_dup_s16(v13);
    v15 = 1;
    v16 = *(v2 + 104);
    v17 = *(v2 + 98);
    while (1)
    {
      v18 = vandq_s8(vceqq_s16(v14, *v16), xmmword_1E306AC00);
      v18.i16[0] = vmaxvq_u16(v18);
      if (v18.i32[0])
      {
        break;
      }

      v15 -= 8;
      ++v16;
      if (!--v17)
      {
        goto LABEL_14;
      }
    }

    if (v18.u16[0] - v15 < *(v2 + 96))
    {
      return 2;
    }

LABEL_14:
    v20 = (re::ecs2::ComponentImpl<re::ecs2::ChannelAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
    v21 = vld1q_dup_s16(v20);
    v22 = 1;
    while (1)
    {
      v23 = vandq_s8(vceqq_s16(v21, *v8), xmmword_1E306AC00);
      v23.i16[0] = vmaxvq_u16(v23);
      if (v23.i32[0])
      {
        break;
      }

      v22 -= 8;
      ++v8;
      if (!--v5)
      {
        goto LABEL_20;
      }
    }

    if (v23.u16[0] - v22 < *(v2 + 96))
    {
      return 1;
    }
  }

LABEL_20:
  if (!re::ecs2::AudioPlayerComponent::hasInputModeOverride(this, a2))
  {
    v41 = a2;
    result = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 32, &v41);
    if (!result)
    {
      return result;
    }

    v24 = result;
    v25 = *(result + 32);
    if (!v25)
    {
      return 0;
    }

    v26 = atomic_load((v25 + 896));
    if (v26 != 2)
    {
      return 0;
    }

    v27 = *(result + 32);
    if (v27)
    {
      v28 = *(v27 + 280);
      v29 = re::AudioFileAsset::assetType(result);
      if (v28 == v29)
      {
        v30 = (v24 + 24);
        return *(re::AssetHandle::loadedAsset<re::AudioFileAsset>(v30) + 60);
      }
    }

    else
    {
      v29 = re::AudioFileAsset::assetType(result);
    }

    v31 = *(v24 + 32);
    if (v31)
    {
      v32 = *(v31 + 280);
      v33 = re::AudioGeneratorAsset::assetType(v29);
      if (v32 == v33)
      {
        return 0;
      }
    }

    else
    {
      v33 = re::AudioGeneratorAsset::assetType(v29);
    }

    v34 = *(v24 + 32);
    if (v34)
    {
      v35 = *(v34 + 280);
      if (v35 == re::AudioFileGroupAsset::assetType(v33))
      {
        result = re::AssetHandle::loadedAsset<re::AudioFileGroupAsset>((v24 + 24));
        if (!result)
        {
          return result;
        }

        v36 = result;
        if (*(result + 24))
        {
          v37 = *(*(result + 40) + 8);
          if (v37)
          {
            v38 = *(v37 + 280);
            if (v38 == re::AudioFileAsset::assetType(result))
            {
              v39 = *(*(v36 + 40) + 8);
              if (v39)
              {
                v40 = atomic_load((v39 + 896));
                if (v40 == 2)
                {
                  v30 = *(v36 + 40);
                  return *(re::AssetHandle::loadedAsset<re::AudioFileAsset>(v30) + 60);
                }
              }
            }
          }

          else
          {
            re::AudioFileAsset::assetType(result);
          }
        }
      }
    }

    else
    {
      re::AudioFileGroupAsset::assetType(v33);
    }

    return 0;
  }

  return re::ecs2::AudioPlayerComponent::getInputModeOverride(this, a2);
}

uint64_t re::ecs2::AudioPlayerComponent::prepare(re::ecs2::AudioPlayerComponent *this, __CFString *a2)
{
  v67 = *MEMORY[0x1E69E9840];
  ++*(this + 91);
  canModifyState = re::ecs2::AudioPlayerComponent::canModifyState(*(this + 2));
  if ((canModifyState & 1) == 0)
  {
    v6 = *re::audioLogObjects(canModifyState);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = *(this + 44);
      if (!v9)
      {
        v9 = *(this + 50);
      }

      *buf = 134217984;
      *&buf[4] = v9;
      v8 = "[RE/ECS] [Prepare] AudioPlayerComponent (entityID=%llu) cannot modify state because it is not owned.";
      goto LABEL_16;
    }

    return 0;
  }

  if (!a2)
  {
    v6 = *re::audioLogObjects(canModifyState);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = *(this + 44);
      if (!v10)
      {
        v10 = *(this + 50);
      }

      *buf = 134217984;
      *&buf[4] = v10;
      v8 = "[RE/ECS] [Prepare] AudioPlayerComponent (entityID=%llu) received null sts label";
      goto LABEL_16;
    }

    return 0;
  }

  v5 = [(__CFString *)a2 isEqualToString:&stru_1F5D319D0];
  if (v5)
  {
    v6 = *re::audioLogObjects(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(this + 44);
      if (!v7)
      {
        v7 = *(this + 50);
      }

      *buf = 134217984;
      *&buf[4] = v7;
      v8 = "[RE/ECS] [Prepare] AudioPlayerComponent (entityID=%llu) received empty sts label";
LABEL_16:
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, v8, buf, 0xCu);
      return 0;
    }

    return 0;
  }

  *buf = 0;
  do
  {
    arc4random_buf(buf, 8uLL);
  }

  while (*buf < 0x3E8uLL);
  v32 = *buf;
  buf[0] = 0;
  *&buf[8] = 0u;
  v43 = 0u;
  v44 = 0;
  v45 = 9;
  v46 = 1065353216;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 1065353216;
  v51 = 0;
  __asm { FMOV            V0.2S, #1.0 }

  v52 = _D0;
  v53 = 0;
  v54 = 0;
  v55 = 1065353216;
  v56 = 0;
  v59 = 0;
  v61 = 0uLL;
  *(&v60 + 1) = 0;
  v19 = re::DynamicString::setCapacity(&v60, 0);
  *(&v62 + 4) = 0x3E051EB800000000;
  LODWORD(v62) = 1;
  HIDWORD(v62) = 1106247680;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  re::DynamicString::setCapacity(&v64, 0);
  v66 = 0;
  *v33 = [(__CFString *)a2 UTF8String];
  *&v33[8] = strlen(*v33);
  re::DynamicString::operator=(&v64, v33);
  *&buf[16] = 1;
  v45 = 4;
  v62 = *(this + 168);
  LODWORD(v50) = *(this + 82);
  re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(this + 32, &v32, buf);
  *v33 = v32;
  v20 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 32, v33);
  re::ecs2::AudioPlayerComponent::createSourceStateForUnmatchedSyncState(this, *v33, v20, 0, 0);
  v21 = *(this + 2);
  v23 = *re::audioLogObjects(v22);
  if (!v21)
  {
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v24 = v23;
    CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
    *v33 = 136315138;
    *&v33[4] = CStringPtr;
    _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, "[RE/ECS] [Prepare] stsLabel= %s is attempting to prepare without an entity", v33, 0xCu);
    goto LABEL_26;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = v23;
    v25 = CFStringGetCStringPtr(a2, 0x8000100u);
    v26 = *(v21 + 312);
    v27 = *(v21 + 296);
    v28 = *(v21 + 304);
    do
    {
      v29 = v21;
      v21 = *(v21 + 32);
    }

    while (v21);
    v30 = *(v29 + 24);
    *v33 = 136316418;
    *&v33[4] = v25;
    *&v33[12] = 2048;
    *&v33[14] = v32;
    v34 = 2048;
    v35 = v26;
    v36 = 2080;
    v37 = v27;
    v38 = 1024;
    v39 = v28 & 1;
    v40 = 2048;
    v41 = v30;
    _os_log_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEFAULT, "[RE/ECS] [Prepare] AudioPlayerComponent preparing stsLabel= %s, token=%llu on REEntity (id: %llu, name: %s, isActive=%d) in scene %p", v33, 0x3Au);
LABEL_26:
  }

LABEL_28:
  v11 = v32;
  if (v64)
  {
    if (BYTE8(v64))
    {
      (*(*v64 + 40))();
    }

    v64 = 0u;
    v65 = 0u;
  }

  if (v60)
  {
    if (BYTE8(v60))
    {
      (*(*v60 + 40))();
    }

    v60 = 0u;
    v61 = 0u;
  }

  if (v56 == 1 && v57)
  {
    if (BYTE8(v57))
    {
      (*(*v57 + 40))();
    }

    v58 = 0u;
    v57 = 0u;
  }

  re::AssetHandle::~AssetHandle(&v43);
  return v11;
}

unint64_t re::ecs2::AudioPlayerComponent::prepare(uint64_t a1, void *a2, int a3, int a4, double a5, double a6)
{
  v98 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = v11;
  ++*(a1 + 364);
  ++*(a1 + 372);
  v13 = *(a1 + 16);
  if (!v13)
  {
    v22 = *re::audioLogObjects(v11);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    *__buf = 138412546;
    *&__buf[4] = v12;
    *&__buf[12] = 2048;
    *&__buf[14] = a1;
    v20 = "[RE/ECS] [Prepare] cannot prepare external stream %@ on component %p that does not have entity";
LABEL_17:
    v21 = v22;
    goto LABEL_18;
  }

  canModifyState = re::ecs2::AudioPlayerComponent::canModifyState(*(a1 + 16));
  if ((canModifyState & 1) == 0)
  {
    v22 = *re::audioLogObjects(canModifyState);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v23 = *(a1 + 352);
    if (!v23)
    {
      v23 = *(a1 + 400);
    }

    *__buf = 134218240;
    *&__buf[4] = v23;
    *&__buf[12] = 2048;
    *&__buf[14] = a1;
    v20 = "[RE/ECS] [Prepare] AudioPlayerComponent (entityID=%llu) %p cannot modify state because it is not owned.";
    goto LABEL_17;
  }

  if (!v12)
  {
    v25 = *re::audioLogObjects(canModifyState);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v26 = *(a1 + 352);
    if (!v26)
    {
      v26 = *(a1 + 400);
    }

    v27 = v25;
    v28 = *(v13 + 296);
    *__buf = 134218498;
    *&__buf[4] = v26;
    *&__buf[12] = 2048;
    *&__buf[14] = a1;
    *&__buf[22] = 2080;
    *&v71 = v28;
    v29 = "[RE/ECS] [Prepare] AudioPlayerComponent (entityID=%llu) %p (entity %s) received nil external stream UUID";
LABEL_28:
    _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, v29, __buf, 0x20u);

    goto LABEL_30;
  }

  v97 = 0uLL;
  v15 = [(re *)v12 getUUIDBytes:&v97];
  v95 = 0;
  v96 = 0;
  if (v97 == 0)
  {
    v30 = *re::audioLogObjects(v15);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v31 = *(a1 + 352);
    if (!v31)
    {
      v31 = *(a1 + 400);
    }

    v27 = v30;
    v32 = *(v13 + 296);
    *__buf = 134218498;
    *&__buf[4] = v31;
    *&__buf[12] = 2048;
    *&__buf[14] = a1;
    *&__buf[22] = 2080;
    *&v71 = v32;
    v29 = "[RE/ECS] [Prepare] AudioPlayerComponent (entityID=%llu) %p (entity %s) received all-zero external stream UUID";
    goto LABEL_28;
  }

  v16 = re::ecs2::EntityComponentCollection::getOrAdd((v13 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  if (!v16)
  {
    v33 = *re::audioLogObjects(0);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    *__buf = 138412290;
    *&__buf[4] = v12;
    v20 = "[RE/ECS] [Prepare] cannot prepare external stream %@ b/c failed to create transient component";
    v21 = v33;
    v24 = 12;
    goto LABEL_19;
  }

  v17 = v16;
  *__buf = 0;
  do
  {
    arc4random_buf(__buf, 8uLL);
  }

  while (*__buf < 0x3E8uLL);
  v58 = *__buf;
  v18 = re::HashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v17 + 88, &v58);
  if (v18)
  {
    v19 = *re::audioLogObjects(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *__buf = 138412546;
      *&__buf[4] = v12;
      *&__buf[12] = 2048;
      *&__buf[14] = v58;
      v20 = "[RE/ECS] [Prepare] cannot prepare external stream %@ with token %llu that collides with existing external stream";
      v21 = v19;
LABEL_18:
      v24 = 22;
LABEL_19:
      _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, v20, __buf, v24);
    }

LABEL_30:
    v34 = 0;
    goto LABEL_31;
  }

  memset(__buf, 0, sizeof(__buf));
  v36 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v58 ^ (v58 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v58 ^ (v58 >> 30))) >> 27));
  re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(v17 + 88, &v58, v36 ^ (v36 >> 31), __buf);
  if (*&__buf[12] == 0x7FFFFFFF)
  {
    v37 = re::HashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v17 + 88, *&__buf[8], *__buf);
    *(v37 + 8) = v58;
    *(v37 + 16) = a3;
    *(v37 + 20) = a4;
    *(v37 + 24) = a6;
    *(v37 + 32) = a5;
    ++*(v17 + 32);
  }

  v38 = *(v13 + 216);
  if (v38)
  {
    re::ecs2::NetworkComponent::markDirty(v38, v17);
  }

  __buf[0] = 0;
  *&__buf[8] = 0u;
  v71 = 0u;
  v72 = 0;
  v73 = 9;
  v74 = 1065353216;
  v75 = 0;
  v76 = 0;
  v77 = 0.0;
  v78 = 1065353216;
  v79 = 0;
  __asm { FMOV            V0.2S, #1.0 }

  v80 = _D0;
  v81 = 0;
  v82 = 0;
  v83 = 1065353216;
  v84 = 0;
  v87 = 0;
  v89 = 0uLL;
  *(&v88 + 1) = 0;
  v44 = re::DynamicString::setCapacity(&v88, 0);
  *(&v90 + 4) = 0x3E051EB800000000;
  LODWORD(v90) = 1;
  HIDWORD(v90) = 1106247680;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  re::DynamicString::setCapacity(&v92, 0);
  v94 = 0;
  *&__buf[16] = 1;
  v73 = 4;
  v90 = *(a1 + 168);
  v91 = v97;
  v78 = *(a1 + 328);
  v83 = *(a1 + 216);
  LODWORD(v76) = 0;
  *(&v76 + 1) = log10f(*(a1 + 264)) * 20.0;
  v77 = log10f(*(a1 + 312)) * 20.0;
  re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(a1 + 32, &v58, __buf);
  *buf = v58;
  v45 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 32, buf);
  re::ecs2::AudioPlayerComponent::createSourceStateForUnmatchedSyncState(a1, *buf, v45, 0, 0);
  AudioServiceForEntity = re::audio::getAudioServiceForEntity(*(a1 + 16), v46);
  if (AudioServiceForEntity)
  {
    re::ecs2::AudioPlayerComponent::updateSharedAcousticProperties(a1, v58, AudioServiceForEntity);
  }

  else
  {
    v49 = *re::audioLogObjects(0);
    v48 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
    if (v48)
    {
      *buf = 134217984;
      *&buf[4] = v58;
      _os_log_impl(&dword_1E1C61000, v49, OS_LOG_TYPE_DEFAULT, "[RE/ECS] [Prepare] stream token %llu will not receive shared acoustic property overrides (i.e. default writes)", buf, 0xCu);
    }
  }

  v50 = *re::audioLogObjects(v48);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v51 = v58;
    v52 = *(*(a1 + 16) + 312);
    v53 = v50;
    v54 = *(v13 + 296);
    v55 = *(v13 + 304);
    do
    {
      v56 = v13;
      v13 = *(v13 + 32);
    }

    while (v13);
    v57 = *(v56 + 24);
    *buf = 138413570;
    *&buf[4] = v12;
    v60 = 2048;
    v61 = v51;
    v62 = 2048;
    v63 = v52;
    v64 = 2080;
    v65 = v54;
    v66 = 1024;
    v67 = v55 & 1;
    v68 = 2048;
    v69 = v57;
    _os_log_impl(&dword_1E1C61000, v53, OS_LOG_TYPE_DEFAULT, "[RE/ECS] [Prepare] AudioPlayerComponent preparing external Stream=%@, token=%llu on REEntity (id: %llu, name: %s, isActive=%d) in scene %p", buf, 0x3Au);
  }

  v34 = v58;
  if (v92)
  {
    if (BYTE8(v92))
    {
      (*(*v92 + 40))();
    }

    v92 = 0u;
    v93 = 0u;
  }

  if (v88)
  {
    if (BYTE8(v88))
    {
      (*(*v88 + 40))();
    }

    v88 = 0u;
    v89 = 0u;
  }

  if (v84 == 1 && v85)
  {
    if (BYTE8(v85))
    {
      (*(*v85 + 40))();
    }

    v86 = 0u;
    v85 = 0u;
  }

  re::AssetHandle::~AssetHandle(&v71);
LABEL_31:

  return v34;
}

void re::ecs2::AudioPlayerComponent::updateSharedAcousticProperties(re::ecs2::AudioPlayerComponent *this, uint64_t a2, re::AudioService *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  *v13 = a2;
  v6 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 32, v13);
  if (v6)
  {
    v7 = v6;
    v8 = (*(*a3 + 680))(a3);
    v9 = __exp10f(v8 / 20.0);
    *(v7 + 96) = v9;
    *(v7 + 100) = v9;
    *(v7 + 112) = 0;
    *(v7 + 72) = (*(*a3 + 688))(a3);
    v10 = *(this + 2);
    if (v10)
    {
      v11 = *(v10 + 216);
      if (v11)
      {
        re::ecs2::NetworkComponent::markDirty(v11, this);
      }
    }
  }

  else
  {
    v12 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v13 = 134217984;
      *&v13[4] = a2;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Can't update shared acoustic properties for unknown sync state %llu", v13, 0xCu);
    }
  }
}

BOOL re::ecs2::AudioPlayerComponent::shouldCreateSourceStateForUnmatchedSyncState(uint64_t a1, uint64_t a2, int a3)
{
  result = 1;
  if ((a3 & 0xFFFFFFFD) != 0)
  {
    if (a3 != 1)
    {
      return 0;
    }

    v3 = *(a2 + 248);
    v4 = (v3 & 1) != 0 ? v3 >> 1 : v3 >> 1;
    if (!v4 && (*(a2 + 32) || *(a2 + 224) == 0))
    {
      return 0;
    }
  }

  return result;
}

void re::ecs2::AudioPlayerComponent::createSourceStateForUnmatchedSyncState(re::ecs2::AudioPlayerComponent *this, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v64 = *MEMORY[0x1E69E9840];
  v56 = a2;
  v10 = *(this + 2);
  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = *(this + 2);
  do
  {
    v12 = v11;
    v11 = *(v11 + 32);
  }

  while (v11);
  if (*(v12 + 24))
  {
    do
    {
      v13 = v10;
      v10 = *(v10 + 32);
    }

    while (v10);
    v14 = *(*(*(v13 + 24) + 104) + 288) >> 1;
  }

  else
  {
LABEL_7:
    v14 = -1;
  }

  v15 = re::ecs2::AudioPlayerComponent::getOrInitializePrivateEntityID(this);
  v16 = *(a3 + 273);
  v17 = *re::audioLogObjects(v15);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v16 == 1)
  {
    if (v18)
    {
      v19 = v17;
      v20 = re::AssetHandle::assetInfo((a3 + 24));
      if (v20[17])
      {
        v21 = v20[18];
      }

      else
      {
        v21 = v20 + 137;
      }

      *buf = 134219011;
      *&buf[4] = v15;
      *&buf[12] = 2048;
      *&buf[14] = v14;
      *&buf[22] = 2048;
      *&buf[24] = a2;
      LOWORD(v62) = 1024;
      *(&v62 + 2) = a4;
      WORD3(v62) = 2085;
      *(&v62 + 1) = v21;
      v22 = "AudioPlayerComponent (entityID=%llu, sceneID=%llu) Creating audio source state for token=%llu, owningProcessType=%d, REAsset='%{sensitive}s'";
LABEL_19:
      _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, v22, buf, 0x30u);
    }
  }

  else if (v18)
  {
    v19 = v17;
    v23 = re::AssetHandle::assetInfo((a3 + 24));
    if (v23[17])
    {
      v24 = v23[18];
    }

    else
    {
      v24 = v23 + 137;
    }

    *buf = 134219010;
    *&buf[4] = v15;
    *&buf[12] = 2048;
    *&buf[14] = v14;
    *&buf[22] = 2048;
    *&buf[24] = a2;
    LOWORD(v62) = 1024;
    *(&v62 + 2) = a4;
    WORD3(v62) = 2080;
    *(&v62 + 1) = v24;
    v22 = "AudioPlayerComponent (entityID=%llu, sceneID=%llu) Creating audio source state for token=%llu, owningProcessType=%d, REAsset='%s'";
    goto LABEL_19;
  }

  v25 = re::globalAllocators(v18);
  v26 = (*(*v25[2] + 32))(v25[2], 832, 16);
  v27 = re::AudioSourceState::AudioSourceState(v26);
  v55 = v27;
  v28 = *(a3 + 16);
  *(v27 + 40) = *a3;
  *(v27 + 7) = v28;
  re::AssetHandle::operator=(v27 + 64, (a3 + 24));
  *(v26 + 88) = *(a3 + 48);
  v29 = *(a3 + 64);
  v30 = *(a3 + 80);
  v31 = *(a3 + 96);
  *(v26 + 148) = *(a3 + 108);
  *(v26 + 136) = v31;
  *(v26 + 120) = v30;
  *(v26 + 104) = v29;
  re::Optional<re::DynamicString>::operator=((v26 + 168), (a3 + 128));
  *(v26 + 208) = *(a3 + 168);
  re::DynamicString::operator=((v26 + 216), (a3 + 176));
  v32 = *(a3 + 208);
  *(v26 + 264) = *(a3 + 224);
  *(v26 + 248) = v32;
  re::DynamicString::operator=((v26 + 280), (a3 + 240));
  *(v26 + 312) = *(a3 + 272);
  *(v26 + 512) = this;
  *(v26 + 712) = a2;
  *(v26 + 480) = v14;
  *(v26 + 520) = a4 == 0;
  *(v26 + 508) = *(a3 + 168);
  *(v26 + 528) = v15;
  *(v26 + 704) = 1;
  v36 = *(this + 2);
  v38 = xmmword_1E3081E30;
  v37 = unk_1E3081E40;
  v40 = _PromotedConst;
  v39 = unk_1E3081E20;
  if (v36)
  {
    do
    {
      v41 = v36;
      v36 = *(v36 + 32);
    }

    while (v36);
    v42 = *(v41 + 24);
    if (v42)
    {
      v43 = *(v42 + 56);
      if (v43)
      {
        v44 = (*(*v43 + 32))(v43);
        v45 = re::ServiceLocator::serviceOrNull<re::TransformService>(v44);
        v40 = _PromotedConst;
        v39 = unk_1E3081E20;
        v38 = xmmword_1E3081E30;
        v37 = unk_1E3081E40;
        if (v45)
        {
          re::TransformService::worldMatrixForRendering(v45, *(this + 2), 1, buf);
          v40 = *buf;
          v39 = *&buf[16];
          v38 = v62;
          v37 = v63;
        }
      }
    }
  }

  *(v26 + 416) = v40;
  *(v26 + 432) = v39;
  *(v26 + 448) = v38;
  *(v26 + 464) = v37;
  *v57 = v40;
  v58 = v39;
  v59 = v38;
  v60 = v37;
  re::audio::cleanUpTransformForPHASE(v57, v33, v34, v35, buf);
  v46 = *&buf[16];
  v47 = v62;
  v48 = v63;
  *(v26 + 352) = *buf;
  *(v26 + 368) = v46;
  *(v26 + 384) = v47;
  *(v26 + 400) = v48;
  *(v26 + 24) = *a3;
  *(v26 + 32) = *(a3 + 8);
  if (*(v26 + 520) == 1 && *(a3 + 32) && !*(v26 + 104))
  {
    v49 = re::ecs2::AudioPlayerComponent::copyPreferredMasterClock(this);
    *buf = 0;
    v50 = CMTimebaseCreateWithSourceClock(*MEMORY[0x1E695E480], v49, buf);
    if (v50)
    {
      v51 = v50;
      v52 = *re::audioLogObjects(v50);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *v57 = 67109120;
        *&v57[4] = v51;
        _os_log_error_impl(&dword_1E1C61000, v52, OS_LOG_TYPE_ERROR, "Failed to create timebase: %d", v57, 8u);
      }
    }

    else
    {
      re::AudioSourceState::setTimebase(v26, *buf, 0, AudioPlayerComponentHandleTimebaseTimeJumpedOrEffectiveRateChanged);
    }

    if (*buf)
    {
      CFRelease(*buf);
    }

    CFRelease(v49);
  }

  re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(this + 80, &v56, &v55);
  if (re::ecs2::AudioPlayerComponent::syncStateIsReadyToCompletePreparation(this, a3, a4) && a5)
  {
    v53 = v56;
    TimebaseService = re::ecs2::AudioPlayerComponent::getTimebaseService(*(this + 2));
    re::ecs2::AudioPlayerComponent::completePreparation(this, v53, a3, TimebaseService);
  }
}

uint64_t re::ecs2::AudioPlayerComponent::isPrepared(re::audio **this, uint64_t a2)
{
  v10 = a2;
  v3 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet((this + 10), &v10);
  if (!v3)
  {
    return 0;
  }

  v5 = v3;
  AudioServiceForEntity = re::audio::getAudioServiceForEntity(this[2], v4);
  if (AudioServiceForEntity)
  {
    v7 = *v5;
    if (v7)
    {
      v8 = (v7 + 8);
    }

    AudioServiceForEntity = (*(*AudioServiceForEntity + 208))(AudioServiceForEntity, v7);
    if (v7)
    {
    }
  }

  return AudioServiceForEntity;
}

void AudioPlayerComponentHandleTimebaseTimeJumpedOrEffectiveRateChanged(__CFNotificationCenter *a1, char *a2, const __CFString *a3, OpaqueCMTimebase *a4, const __CFDictionary *a5)
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 64);
  if (!v5)
  {
    return;
  }

  AudioServiceForEntity = re::audio::getAudioServiceForEntity(*(v5 + 16), a2);
  if (!AudioServiceForEntity)
  {
    if (a2[696] == 1)
    {
      a2[696] = 0;
    }

    if (a2[684] == 1)
    {
      a2[684] = 0;
    }

    if (a2[656] == 1)
    {
      a2[656] = 0;
    }

    return;
  }

  v12 = AudioServiceForEntity;
  v13 = *(a2 + 9);
  if (v13)
  {
    v14 = *(v13 + 280);
    v15 = re::AudioFileAsset::assetType(AudioServiceForEntity);
    if (v14 == v15)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v15 = re::AudioFileAsset::assetType(AudioServiceForEntity);
  }

  v16 = *(a2 + 9);
  if (!v16)
  {
    re::AudioFileGroupAsset::assetType(v15);
    goto LABEL_18;
  }

  v17 = *(v16 + 280);
  if (v17 != re::AudioFileGroupAsset::assetType(v15))
  {
LABEL_18:
    v18 = 0;
    goto LABEL_19;
  }

LABEL_15:
  if (!(*(*v12 + 568))(v12))
  {
    return;
  }

  v18 = 1;
LABEL_19:
  EffectiveRate = CMTimebaseGetEffectiveRate(a4);
  v20 = *(a2 + 91);
  if (v20)
  {
    v21 = CMTimebaseGetEffectiveRate(v20);
    v22 = v21 <= 4.0 && v21 >= 0.25;
  }

  else
  {
    v22 = 0;
  }

  memset(&v57, 0, sizeof(v57));
  CMTimebaseGetTime(&v57, a4);
  v23 = (*(*v12 + 208))(v12, a2);
  if (!v23 || (a2[510] & 1) == 0)
  {
    v23 = (*(*v12 + 224))(v12, a2);
    if (v23)
    {
      re::AudioSourceState::setTimebaseUserInfo(a2, a5);
      v25 = re::globalAllocators(v24);
      v26 = (*(*v25[2] + 32))(v25[2], 32, 8);
      *v26 = 0u;
      *(v26 + 16) = 0u;
      v55.value = v26;
      if (CFStringCompare(a3, *MEMORY[0x1E6960CD0], 0))
      {
        v27 = 7;
      }

      else
      {
        v27 = 8;
      }

      *v26 = v27;
      *(v26 + 8) = *(a2 + 89);
      std::vector<re::AudioPlayerComponentAction *>::push_back[abi:nn200100](*(a2 + 64) + 376, &v55);
      v29 = *re::audioLogObjects(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a2 + 66);
        v31 = *(a2 + 60);
        v32 = v29;
        v33 = *(a2 + 89);
        v34 = *v26;
        LODWORD(buf.value) = 134218752;
        *(&buf.value + 4) = v30;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = v31;
        HIWORD(buf.epoch) = 2048;
        v60 = v33;
        v61 = 1024;
        v62 = v34;
        _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEFAULT, "AudioPlayerComponent(entityID=%llu, sceneID=%llu) token %llu, resend action %u as the REPhaseSoundEvent is being prepared", &buf, 0x26u);
      }

      return;
    }
  }

  v35 = EffectiveRate == 0.0 || v22;
  if ((v35 & 1) == 0)
  {
    v36 = *re::audioLogObjects(v23);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.value) = 134217984;
      *(&buf.value + 4) = EffectiveRate;
      _os_log_error_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_ERROR, "Rate (%0.2f) set outside of allowable bounds [0.25, 4.0]. Silencing player.", &buf, 0xCu);
    }
  }

  v37 = CFStringCompare(a3, *MEMORY[0x1E6960CE8], 0);
  if (v37 == kCFCompareEqualTo || !v22 || a2[696] != 1 || *(a2 + 86) == 0.0)
  {
    if (v22 && (buf = v57, CMTimeGetSeconds(&buf) < -0.02))
    {
      if (!*(a2 + 93))
      {
        v38 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(*(a2 + 64) + 336));
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = ___Z66AudioPlayerComponentHandleTimebaseTimeJumpedOrEffectiveRateChangedP22__CFNotificationCenterPvPK10__CFStringPKvPK14__CFDictionary_block_invoke;
        handler[3] = &__block_descriptor_72_e5_v8__0l;
        handler[4] = a2;
        handler[5] = a1;
        handler[6] = a2;
        handler[7] = a3;
        handler[8] = a4;
        dispatch_source_set_event_handler(v38, handler);
        re::AudioSourceState::setTimebaseDispatchSource(a2, v38);
      }

      re::AudioSourceState::setTimebaseUserInfo(a2, a5);
      v39 = *(a2 + 93);
      CMTimeMakeWithSeconds(&buf, -0.02, 1000);
      CMTimebaseSetTimerDispatchSourceNextFireTime(a4, v39, &buf, 0);

      v22 = 0;
    }

    else
    {
      v40 = *(a2 + 93);
      if (v40)
      {
        buf = **&MEMORY[0x1E6960C88];
        CMTimebaseSetTimerDispatchSourceNextFireTime(a4, v40, &buf, 0);
      }
    }

    Value = CFDictionaryGetValue(a5, *MEMORY[0x1E6960CC8]);
    memset(&buf, 0, sizeof(buf));
    if (Value)
    {
      CMTimeMakeFromDictionary(&buf, Value);
    }

    else
    {
      buf = **&MEMORY[0x1E6960C70];
    }

    memset(&v55, 0, sizeof(v55));
    time = **&MEMORY[0x1E6960CC0];
    HostTimeClock = CMClockGetHostTimeClock();
    CMSyncConvertTime(&v55, &time, a4, HostTimeClock);
    time = v55;
    v43 = CMClockConvertHostTimeToSystemUnits(&time);
    v44 = v43;
    if (v22 && (v45 = *re::audioLogObjects(v43), os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG)))
    {
      v49 = v45;
      v50 = *(a2 + 89);
      time2 = v55;
      v51 = CMClockGetHostTimeClock();
      CMClockGetTime(&rhs, v51);
      CMTimeSubtract(&time, &time2, &rhs);
      Seconds = CMTimeGetSeconds(&time);
      LODWORD(time.value) = 134218240;
      *(&time.value + 4) = v50;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = Seconds;
      _os_log_debug_impl(&dword_1E1C61000, v49, OS_LOG_TYPE_DEBUG, "playing token %llu %0.3f sec from now.", &time, 0x16u);

      if (v18)
      {
LABEL_55:
        if (v37)
        {
          if (a2[696] != 1 || EffectiveRate != *(a2 + 86))
          {
            *(a2 + 86) = EffectiveRate;
            a2[696] = 1;
            if (v22)
            {
              if (a2[684] == 1)
              {
                a2[684] = 0;
              }

              if (a2[656] == 1)
              {
                a2[656] = 0;
              }
            }

            time = buf;
            (*(*v12 + 216))(v12, a2, 0, v44, &time, EffectiveRate);
          }
        }

        else
        {
          v46 = a2 + 660;
          if (a2[684] != 1)
          {
            goto LABEL_69;
          }

          if (a2[656] != 1)
          {
            goto LABEL_69;
          }

          time = buf;
          *&time2.value = *v46;
          time2.epoch = *(a2 + 676);
          if (CMTimeCompare(&time, &time2))
          {
            goto LABEL_69;
          }

          time = v55;
          if ((a2[656] & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:nn200100]();
            re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add();
            return;
          }

          time2 = *(a2 + 632);
          if (CMTimeCompare(&time, &time2))
          {
LABEL_69:
            v47 = a2[684];
            *v46 = *&buf.value;
            *(a2 + 676) = buf.epoch;
            if ((v47 & 1) == 0)
            {
              a2[684] = 1;
            }

            v48 = a2[656];
            *(a2 + 632) = v55;
            if ((v48 & 1) == 0)
            {
              a2[656] = 1;
            }

            time = buf;
            (*(*v12 + 216))(v12, a2, 1, v44, &time, EffectiveRate);
          }
        }

        return;
      }
    }

    else if (v18)
    {
      goto LABEL_55;
    }

    time = buf;
    (*(*v12 + 216))(v12, a2, v37 == kCFCompareEqualTo, v44, &time, EffectiveRate);
  }
}

uint64_t re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long const&,re::SharedPtr<re::AudioSourceState> const&>(a1, v8, v9, a2, a3);
  }

  return result;
}

uint64_t re::ecs2::AudioPlayerComponent::syncStateIsReadyToCompletePreparation(uint64_t a1, void *a2, int a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_6;
  }

  v7 = v4;
  do
  {
    v8 = v7;
    v7 = *(v7 + 4);
  }

  while (v7);
  if (!*(v8 + 3) || (*(v4 + 304) & 1) == 0)
  {
LABEL_6:
    std::string::basic_string[abi:nn200100]<0>(__p, "[RE/ECS] [Update] The reason that this AudioSource is not able to complete preparation is due to the fact that the entity is not active.");
    v9 = re::audio::throttledLog(OS_LOG_TYPE_DEBUG, __p);
    v10 = v9;
    if ((v41 & 0x80000000) == 0)
    {
      if (!v9)
      {
        return 0;
      }

      goto LABEL_10;
    }

    operator delete(__p[0]);
    if (v10)
    {
LABEL_10:
      v11 = *re::audioLogObjects(v9);
      result = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      LOWORD(__p[0]) = 0;
      v13 = "[RE/ECS] [Update] The reason that this AudioSource is not able to complete preparation is due to the fact that the entity is not active.";
LABEL_12:
      _os_log_debug_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEBUG, v13, __p, 2u);
    }

    return 0;
  }

  AudioServiceForEntity = re::audio::getAudioServiceForEntity(v4, a2);
  if (a3)
  {
    v15 = *(a1 + 16);
    if (v15)
    {
      v16 = AudioServiceForEntity;
      AudioServiceForEntity = re::ecs2::EntityComponentCollection::get((v15 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
      if (AudioServiceForEntity)
      {
        if (*(AudioServiceForEntity + 32) && v16 != 0)
        {
          AudioServiceForEntity = (*(*v16 + 568))(v16);
          if (AudioServiceForEntity)
          {
            AudioServiceForEntity = (*(*v16 + 112))(v16);
            if ((AudioServiceForEntity & 1) == 0)
            {
              std::string::basic_string[abi:nn200100]<0>(__p, "[RE/ECS] [Update] The reason that this AudioSource is not able to complete preparation is due to the host still recovering from media services crash.");
              v38 = re::audio::throttledLog(OS_LOG_TYPE_DEBUG, __p);
              v39 = v38;
              if (v41 < 0)
              {
                operator delete(__p[0]);
              }

              if (!v39)
              {
                return 0;
              }

              v11 = *re::audioLogObjects(v38);
              result = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
              if (!result)
              {
                return result;
              }

              LOWORD(__p[0]) = 0;
              v13 = "[RE/ECS] [Update] The reason that this AudioSource is not able to complete preparation is due to the host still recovering from media services crash.";
              goto LABEL_12;
            }
          }
        }
      }
    }
  }

  v18 = a2[31];
  if (v18)
  {
    v19 = v18 >> 1;
  }

  else
  {
    v19 = v18 >> 1;
  }

  if (v19)
  {
    return 1;
  }

  v20 = a2[4];
  if (!v20)
  {
    return a2[28] || a2[29];
  }

  v21 = atomic_load((v20 + 896));
  if (v21 != 2)
  {
    return 0;
  }

  v22 = a2[4];
  if (v22)
  {
    v23 = *(v22 + 280);
    v24 = re::AudioFileAsset::assetType(AudioServiceForEntity);
    if (v23 == v24)
    {
      v25 = re::AssetHandle::loadedAsset<re::AudioFileAsset>((a2 + 3));
      v26 = *(a1 + 16);

      return re::ecs2::AudioPlayerComponent::audioFileAssetIsReadyForPreparation(v26, v25);
    }
  }

  else
  {
    v24 = re::AudioFileAsset::assetType(AudioServiceForEntity);
  }

  v27 = a2[4];
  if (!v27)
  {
    v29 = re::AudioFileGroupAsset::assetType(v24);
LABEL_49:
    v36 = a2[4];
    if (!v36)
    {
      re::AudioGeneratorAsset::assetType(v29);
      return 0;
    }

    v37 = *(v36 + 280);
    return v37 == re::AudioGeneratorAsset::assetType(v29);
  }

  v28 = *(v27 + 280);
  v29 = re::AudioFileGroupAsset::assetType(v24);
  if (v28 != v29)
  {
    goto LABEL_49;
  }

  v30 = re::AssetHandle::loadedAsset<re::AudioFileGroupAsset>((a2 + 3));
  v31 = *(v30 + 24);
  if (!v31)
  {
    return 1;
  }

  v32 = *(v30 + 40);
  v33 = 24 * v31 - 24;
  do
  {
    v34 = re::AssetHandle::loadedAsset<re::AudioFileAsset>(v32);
    result = re::ecs2::AudioPlayerComponent::audioFileAssetIsReadyForPreparation(*(a1 + 16), v34);
    v32 = (v32 + 24);
    if (result)
    {
      v35 = v33 == 0;
    }

    else
    {
      v35 = 1;
    }

    v33 -= 24;
  }

  while (!v35);
  return result;
}

void re::ecs2::AudioPlayerComponent::completePreparation(re::ecs2::AudioPlayerComponent *this, unint64_t a2, re::AudioSourceSyncState *a3, re::TimebaseService *a4)
{
  v68 = *MEMORY[0x1E69E9840];
  v59 = a2;
  v7 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 80, &v59);
  if (v7)
  {
    v9 = *v7;
    if (*v7)
    {
      v10 = (v9 + 8);
    }

    if (*(v9 + 480) == -1)
    {
      goto LABEL_18;
    }

    AudioServiceForEntity = re::audio::getAudioServiceForEntity(*(this + 2), v8);
    if (!AudioServiceForEntity)
    {
      v18 = *re::audioLogObjects(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "[RE/ECS] [Prepare] Cannot prepare with no AudioService", buf, 2u);
      }

      goto LABEL_18;
    }

    if (!*(this + 42))
    {
      goto LABEL_18;
    }

    v12 = *(this + 2);
    if (!v12)
    {
      goto LABEL_18;
    }

    v13 = AudioServiceForEntity;
    v14 = *(this + 2);
    do
    {
      v15 = v14;
      v14 = *(v14 + 32);
    }

    while (v14);
    if (!*(v15 + 24))
    {
      goto LABEL_18;
    }

    v16 = *(a3 + 31);
    if (v16)
    {
      v17 = v16 >> 1;
    }

    else
    {
      v17 = v16 >> 1;
    }

    if (v17)
    {
      *(v9 + 510) = 1;
      goto LABEL_18;
    }

    if (!*(a3 + 4) && (*(a3 + 28) || *(a3 + 29)))
    {
      v26 = re::ecs2::EntityComponentCollection::get((v12 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
      if (!v26)
      {
        v32 = *re::audioLogObjects(0);
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_18;
        }

        v33 = v32;
        v34 = re::AudioSourceSyncState::externalStreamUUID(a3);
        *buf = 138412546;
        *&buf[4] = v34;
        *&buf[12] = 2048;
        *&buf[14] = v59;
        v35 = "[RE/ECS] [Prepare] Cannot prepare external stream %@ (token=%llu) without an attached transient component";
LABEL_53:
        _os_log_error_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_ERROR, v35, buf, 0x16u);

        goto LABEL_18;
      }

      v27 = re::HashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v26 + 88, &v59);
      if (v27)
      {
        *buf = 0;
        buf[2] = 0;
        v63 = 0;
        v66 = 0;
        v67 = 0;
        *&buf[4] = *v27;
        *&buf[16] = *(v27 + 8);
        (*(*v13 + 624))(v13, v59, buf);
        *(v9 + 510) = 1;
        if (v63 == 1 && v64 && (v65 & 1) != 0)
        {
          (*(*v64 + 40))();
        }

        goto LABEL_18;
      }

      v36 = *re::audioLogObjects(0);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v33 = v36;
        v34 = re::AudioSourceSyncState::externalStreamUUID(a3);
        *buf = 138412546;
        *&buf[4] = v34;
        *&buf[12] = 2048;
        *&buf[14] = v59;
        v35 = "[RE/ECS] [Prepare] Cannot prepare external stream %@ (token=%llu) without accompanying stream state";
        goto LABEL_53;
      }

LABEL_18:

      return;
    }

    if (!a4)
    {
      goto LABEL_18;
    }

    re::ecs2::AudioSessionComponent::NearestAudioSessionUpEntityHierarchy(*(this + 2), &v58);
    if ((*(*v13 + 768))(v13))
    {
      v19 = v58 == 0;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      snprintf(buf, 0x64uLL, "audiosessionrequirement%llu", v59);
      std::string::basic_string[abi:nn200100]<0>(&__p, buf);
      v28 = re::audio::throttledLog(OS_LOG_TYPE_ERROR, &__p);
      v29 = v28;
      if (SHIBYTE(v61) < 0)
      {
        operator delete(__p);
      }

      if (v29)
      {
        v30 = *re::audioLogObjects(v28);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__p) = 134217984;
          *(&__p + 4) = v59;
          _os_log_error_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_ERROR, "Not preparing token %llu because it does not have a required audio session", &__p, 0xCu);
        }
      }

      goto LABEL_48;
    }

    v20 = re::ObjCObject::operator=((v9 + 496), &v58);
    v21 = *(a3 + 4);
    if (!v21 || (v22 = atomic_load((v21 + 896)), v22 != 2))
    {
      v31 = *re::audioLogObjects(v20);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        *&buf[4] = v59;
        _os_log_fault_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_FAULT, "Cannot prepare token %llu with not loaded asset", buf, 0xCu);
      }

      goto LABEL_48;
    }

    v23 = re::ecs2::AudioPlayerComponent::completeTimebasePreparation(this, v59, a3, a4);
    if (!v23)
    {
LABEL_48:

      goto LABEL_18;
    }

    v24 = *(v9 + 72);
    if (v24)
    {
      v25 = *(v24 + 280);
      if (v25 == re::AudioGeneratorAsset::assetType(v23) && *(v9 + 520) == 1)
      {
        location[1] = MEMORY[0x1E69E9820];
        location[2] = 3221225472;
        location[3] = ___ZN2re4ecs220AudioPlayerComponent19completePreparationEyPNS_20AudioSourceSyncStateEPNS_15TimebaseServiceE_block_invoke;
        location[4] = &__block_descriptor_56_e33_v24__0__AUAudioUnit_8__NSError_16l;
        location[5] = this;
        location[6] = v59;
        location[7] = v12;
        (*(*v13 + 584))(v13);
      }
    }

    else
    {
      re::AudioGeneratorAsset::assetType(v23);
    }

    v37 = re::ecs2::AudioPlayerComponent::getOrInitializePrivateEntityID(this);
    objc_initWeak(location, (v9 + 8));
    v38 = v59;
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3321888768;
    v55[2] = ___ZN2re4ecs220AudioPlayerComponent19completePreparationEyPNS_20AudioSourceSyncStateEPNS_15TimebaseServiceE_block_invoke_20;
    v55[3] = &__block_descriptor_56_a8_32c45_ZTSN2re10ArcWeakPtrINS_16AudioSourceStateEEE_e11_v24__0Q8Q16l;
    v56[0] = 0;
    objc_copyWeak(v56, location);
    v56[1] = v59;
    v56[2] = v37;
    v39 = (*(*v13 + 704))(v13, v38, v55);
    v40 = *(v9 + 72);
    if (v40)
    {
      v41 = *(v40 + 280);
      if (v41 == re::AudioGeneratorAsset::assetType(v39))
      {
        goto LABEL_60;
      }
    }

    else
    {
      re::AudioGeneratorAsset::assetType(v39);
    }

    v42 = (*(*v13 + 568))(v13);
    if ((v42 & 1) == 0)
    {
      v48 = *re::audioLogObjects(v42);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v9;
        *&buf[12] = 2048;
        *&buf[14] = v59;
        _os_log_impl(&dword_1E1C61000, v48, OS_LOG_TYPE_DEFAULT, "[RE/PHASE] [Prepare] Preparing sourceState: %p with token: %llu as client of shared simulation", buf, 0x16u);
      }

      re::ecs2::AudioPlayerComponent::setRandomPlaybackPositionForTokenIfAppropriate(this, v59);
      *(v9 + 510) = 1;
      re::ecs2::AudioPlayerComponent::triggerPendingActions(this);
      goto LABEL_66;
    }

LABEL_60:
    *(v9 + 508) = re::ecs2::AudioPlayerComponent::selectInputMode(this, v59);
    if ((*(v9 + 752) & 1) == 0)
    {
      re::ecs2::AudioPlayerComponent::setRandomPlaybackPositionForTokenIfAppropriate(this, v59);
    }

    memset(buf, 0, 24);
    (*(*a4 + 112))(buf, a4, *(a3 + 8));
    *(v9 + 511) = 1;
    v43 = *(this + 42);
    v44 = (*(*v13 + 640))(v13);
    __p = *buf;
    v61 = *&buf[16];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3321888768;
    v49[2] = ___ZN2re4ecs220AudioPlayerComponent19completePreparationEyPNS_20AudioSourceSyncStateEPNS_15TimebaseServiceE_block_invoke_23;
    v49[3] = &unk_1F5CE8E38;
    v50 = v44;
    v52 = this;
    v53 = v59;
    v54[0] = 0;
    v45 = v44;
    objc_copyWeak(v54, location);
    v51 = v43;
    v54[1] = v37;
    v46 = *(*v13 + 192);
    v47 = v43;
    v46(v13, v9, &__p, v49);

    objc_destroyWeak(v54);
    v54[0] = 0;

LABEL_66:
    objc_destroyWeak(v56);
    v56[0] = 0;
    objc_destroyWeak(location);
    goto LABEL_48;
  }
}

uint64_t re::ecs2::AudioPlayerComponent::audioFileAssetIsReadyForPreparation(re::ecs2::AudioPlayerComponent *this, const re::AudioFileAsset *a2)
{
  AudioServiceForEntity = re::audio::getAudioServiceForEntity(this, a2);
  if (AudioServiceForEntity && (*(*AudioServiceForEntity + 568))(AudioServiceForEntity))
  {
    v4 = *(*(a2 + 1) + 176) == 0;
  }

  else
  {
    v4 = *(a2 + 161);
  }

  return v4 & 1;
}

uint64_t re::ecs2::AudioPlayerComponent::hasInputModeOverride(re::ecs2::AudioPlayerComponent *this, uint64_t a2)
{
  v4 = a2;
  v2 = *(this + 2);
  if (!v2)
  {
    return 0;
  }

  result = re::ecs2::EntityComponentCollection::get((v2 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  if (result)
  {
    return re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(result + 40, &v4) != 0;
  }

  return result;
}

uint64_t re::ecs2::AudioPlayerComponent::getInputModeOverride(re::ecs2::AudioPlayerComponent *this, uint64_t a2)
{
  v12 = a2;
  v2 = *(this + 2);
  if (!v2)
  {
    v6 = *re::audioLogObjects(this);
    result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v11 = 0;
    v7 = "cannot get override input mode from component that does not have entity";
    v8 = &v11;
    goto LABEL_11;
  }

  v3 = re::ecs2::EntityComponentCollection::get((v2 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  if (!v3)
  {
    v6 = *re::audioLogObjects(0);
    result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v10 = 0;
    v7 = "cannot get override input mode b/c does not have transient component";
    v8 = &v10;
    goto LABEL_11;
  }

  v4 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v3 + 40, &v12);
  if (v4)
  {
    return *v4;
  }

  v6 = *re::audioLogObjects(0);
  result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v9 = 0;
    v7 = "cannot get override input mode b/c does not have matching token in transient component";
    v8 = &v9;
LABEL_11:
    _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
    return 0;
  }

  return result;
}

void re::ecs2::AudioPlayerComponent::preparationCompleteCallback(re::ecs2::AudioPlayerComponent *this, re::AudioSourceState *a2, re::ecs2::AudioPlayerComponent *a3, NSError *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = v7;
  *(a2 + 511) = 0;
  v9 = *(a2 + 89);
  if (v7 && (-[NSError domain](v7, "domain"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isEqualToString:@"com.apple.re.internal"], v10, v11))
  {
    v12 = *re::audioLogObjects(v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v37 = 134218242;
      *&v37[4] = v9;
      *&v37[12] = 2112;
      *&v37[14] = v8;
      v13 = "Error preparing source %llu: %@";
LABEL_20:
      v27 = v12;
      v28 = 22;
LABEL_21:
      _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, v13, v37, v28);
    }
  }

  else
  {
    v14 = *(a2 + 9);
    if (v14)
    {
      v15 = *(v14 + 280);
      v16 = re::AudioGeneratorAsset::assetType(v7);
      if (v15 == v16 && *(a2 + 520) == 1)
      {
        v17 = *(a3 + 2);
        if (v17)
        {
          v18 = *(a3 + 2);
          do
          {
            v19 = v18;
            v18 = *(v18 + 32);
          }

          while (v18);
          if (*(v19 + 24))
          {
            v20 = *(a3 + 2);
            do
            {
              v21 = v20;
              v20 = *(v20 + 32);
            }

            while (v20);
            v22 = *(*(v21 + 24) + 288);
            if (v22)
            {
              v23 = *(a2 + 61);
              *v37 = v9;
              *&v37[8] = v23;
              *&v37[16] = v8;
              AudioUnit = re::EventBus::getTypeId<REAudioPlayerDidCreateAudioUnitEvent>();
              re::EventBus::publish(v22, v17, AudioUnit, v37, 0x18uLL, 0);
              v25 = *(a2 + 61);
              *v37 = v9;
              *&v37[8] = v25;
              *&v37[16] = v8;
              Type = re::EventBus::getTypeId<REAudioPlayerDidPrepareAudioUnitEvent>();
              v16 = re::EventBus::publish(v22, v17, Type, v37, 0x18uLL, 0);
            }
          }
        }
      }
    }

    else
    {
      v16 = re::AudioGeneratorAsset::assetType(v7);
    }

    if (!v8)
    {
      if (*(a2 + 24) == 1)
      {
        v29 = re::ecs2::EntityComponentCollection::get((*(this + 2) + 48), re::ecs2::ComponentImpl<re::ecs2::AudioGroupPlaybackComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        if (v29)
        {
          v30 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v29 + 32, a2 + 4);
          if (!v30)
          {
            v35 = *re::audioLogObjects(0);
            if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_31;
            }

            v36 = *(a2 + 4);
            *v37 = 134217984;
            *&v37[4] = v36;
            v13 = "Could not complete preparation for group token %llu. Group not found.";
            v27 = v35;
            v28 = 12;
            goto LABEL_21;
          }

          v31 = *(v30 + 16);
          if (v31)
          {
            v32 = *(a2 + 89);
            v33 = 40 * v31;
            v34 = (*(v30 + 32) + 24);
            do
            {
              if (*(v34 - 1) == v32)
              {
                *v34 = 1;
              }

              v34 += 40;
              v33 -= 40;
            }

            while (v33);
          }
        }
      }

      *(a2 + 510) = 1;
      re::ecs2::AudioPlayerComponent::triggerPendingActions(a3);
      goto LABEL_31;
    }

    v12 = *re::audioLogObjects(v16);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v37 = 134218242;
      *&v37[4] = v9;
      *&v37[12] = 2112;
      *&v37[14] = v8;
      v13 = "Could not complete preparation for token %llu, error = %@";
      goto LABEL_20;
    }
  }

LABEL_31:
}

void re::ecs2::AudioPlayerComponent::triggerPendingActions(re::ecs2::AudioPlayerComponent **this)
{
  v65 = *MEMORY[0x1E69E9840];
  canModifyState = re::ecs2::AudioPlayerComponent::canModifyState(this[2]);
  v58 = 0;
  memset(time, 0, sizeof(time));
  v59 = 0x7FFFFFFFLL;
  v3 = this[47];
  if (v3 != this[48])
  {
    v4 = canModifyState;
    v5 = *MEMORY[0x1E6960CD0];
    v6 = *MEMORY[0x1E6960CE8];
    do
    {
      v7 = *v3;
      if (!re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(time, (*v3 + 8)))
      {
        v8 = re::ecs2::AudioPlayerComponent::sourceStateForToken(this, *(v7 + 1));
        if (v8)
        {
          v10 = v8;
          if (re::audio::getAudioServiceForEntity(this[2], v9))
          {
            AudioServiceForEntity = re::audio::getAudioServiceForEntity(this[2], v11);
            if ((*(*AudioServiceForEntity + 208))(AudioServiceForEntity, v10))
            {
              if (*(v10 + 510))
              {
                if (*v7 > 6u || ((1 << *v7) & 0x68) == 0)
                {
                  v14 = this[47];
                  v15 = this[48];
                  if (v14 == v15)
                  {
LABEL_21:
                    v16 = 0;
                  }

                  else
                  {
                    while (1)
                    {
                      v16 = *v14;
                      if (*(*v14 + 8) == *(v7 + 1) && *v16 <= 6u && ((1 << *v16) & 0x68) != 0)
                      {
                        break;
                      }

                      v14 = (v14 + 8);
                      if (v14 == v15)
                      {
                        goto LABEL_21;
                      }
                    }
                  }

                  if (v16)
                  {
                    v7 = v16;
                  }
                }

                v19 = this[47];
                v18 = this[48];
                if (v19 != v18)
                {
                  while (*v19 != v7)
                  {
                    v19 = (v19 + 8);
                    if (v19 == v18)
                    {
                      goto LABEL_46;
                    }
                  }

                  if (v19 != v18)
                  {
                    v25 = (v19 + 8);
                    if ((v19 + 8) != v18)
                    {
                      do
                      {
                        if (*v25 != v7)
                        {
                          *v19 = *v25;
                          v19 = (v19 + 8);
                        }

                        v25 = (v25 + 8);
                      }

                      while (v25 != v18);
                      v18 = this[48];
                    }
                  }
                }

                if (v19 != v18)
                {
                  this[48] = v19;
                }

LABEL_46:
                re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(time);
                *__p = *(v7 + 1);
                v26 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet((this + 10), __p);
                if (!v26)
                {
                  goto LABEL_88;
                }

                v27 = v26;
                v26 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet((this + 4), __p);
                v29 = *v27;
                v30 = *v7;
                if (*v7 <= 3)
                {
                  if (v30 <= 1)
                  {
                    if (v30)
                    {
                      if (v30 == 1)
                      {
                        if (v4)
                        {
                          v36 = v26;
                        }

                        else
                        {
                          v36 = 0;
                        }

                        v26 = re::ecs2::AudioPlayerComponent::doPause(this, *(v7 + 1), *v27, v36);
                      }
                    }

                    else
                    {
                      if (v4)
                      {
                        v42 = v26;
                      }

                      else
                      {
                        v42 = 0;
                      }

                      re::ecs2::AudioPlayerComponent::doPlay(this, *(v7 + 1), *v27, v42);
                    }

                    goto LABEL_88;
                  }

                  if (v30 == 2)
                  {
                    if (v4)
                    {
                      v43 = v26;
                    }

                    else
                    {
                      v43 = 0;
                    }

                    re::ecs2::AudioPlayerComponent::doStop(this, *(v7 + 1), *v27, v43);
                    goto LABEL_88;
                  }

                  if (v30 == 3)
                  {
                    v26 = re::audio::getAudioServiceForEntity(this[2], v28);
                    if (v26)
                    {
                      v37 = v26;
                      v38 = (*(*v26 + 568))(v26);
                      if ((v38 & 1) == 0)
                      {
                        v51 = *(v29 + 9);
                        if (!v51)
                        {
                          goto LABEL_104;
                        }

                        v54 = *(v51 + 280);
                        v26 = re::AudioGeneratorAsset::assetType(v38);
                        if (v54 != v26)
                        {
                          goto LABEL_88;
                        }

                        v26 = (*(*v37 + 576))(v37);
                        if (!v26)
                        {
                          goto LABEL_88;
                        }
                      }

                      v26 = (*(*v37 + 312))(v37, v29, *(v7 + 4), *(v7 + 5));
                    }
                  }
                }

                else
                {
                  if (v30 > 5)
                  {
                    if (v30 != 6)
                    {
                      if (v30 == 7)
                      {
                        v31 = re::AudioSourceState::copyTimebaseUserInfo(*(v29 + 92));
                        LocalCenter = CFNotificationCenterGetLocalCenter();
                        v33 = *(v29 + 91);
                        v34 = v29;
                        v35 = v6;
LABEL_87:
                        AudioPlayerComponentHandleTimebaseTimeJumpedOrEffectiveRateChanged(LocalCenter, v34, v35, v33, v31);
                        CFRelease(v31);
                      }

                      else if (v30 == 8)
                      {
                        v31 = re::AudioSourceState::copyTimebaseUserInfo(*(v29 + 92));
                        LocalCenter = CFNotificationCenterGetLocalCenter();
                        v33 = *(v29 + 91);
                        v34 = v29;
                        v35 = v5;
                        goto LABEL_87;
                      }

                      goto LABEL_88;
                    }

                    v26 = re::audio::getAudioServiceForEntity(this[2], v28);
                    if (!v26)
                    {
                      goto LABEL_88;
                    }

                    v44 = v26;
                    v38 = (*(*v26 + 568))(v26);
                    if (v38)
                    {
LABEL_80:
                      v26 = (*(*v44 + 328))(v44, v29, *(v7 + 4), *(v7 + 5));
                      goto LABEL_88;
                    }

                    v53 = *(v29 + 9);
                    if (v53)
                    {
                      v56 = *(v53 + 280);
                      v26 = re::AudioGeneratorAsset::assetType(v38);
                      if (v56 != v26)
                      {
                        goto LABEL_88;
                      }

                      v26 = (*(*v44 + 576))(v44);
                      if (!v26)
                      {
                        goto LABEL_88;
                      }

                      goto LABEL_80;
                    }

LABEL_104:
                    v26 = re::AudioGeneratorAsset::assetType(v38);
                    goto LABEL_88;
                  }

                  if (v30 == 4)
                  {
                    if (*(v29 + 752) == 1)
                    {
                      v45 = *(v7 + 1);
                      v46 = *re::audioLogObjects(v26);
                      v26 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
                      if (v26)
                      {
                        v47 = this[44];
                        if (!v47)
                        {
                          v47 = this[50];
                        }

                        LODWORD(__str[0].value) = 134218240;
                        *(&__str[0].value + 4) = v47;
                        LOWORD(__str[0].flags) = 2048;
                        *(&__str[0].flags + 2) = v45;
                        _os_log_error_impl(&dword_1E1C61000, v46, OS_LOG_TYPE_ERROR, "AudioPlayerComponent::doSetPlaybackPositionFor() (entityID=%llu) cannot seek un-owned playback token %llu.", __str, 0x16u);
                      }
                    }

                    else
                    {
                      v49 = *(v7 + 3);
                      CMTimeMakeWithSeconds(__str, v49, 48000);
                      v50 = *(v29 + 91);
                      *time = __str[0];
                      v26 = CMTimebaseSetTime(v50, time);
                      if ((*(v29 + 192) & 1) != 0 && *(v29 + 95) == v49)
                      {
                        *(v29 + 768) = 0;
                      }
                    }

                    goto LABEL_88;
                  }

                  if (v30 == 5)
                  {
                    v26 = re::audio::getAudioServiceForEntity(this[2], v28);
                    if (v26)
                    {
                      v39 = v26;
                      v38 = (*(*v26 + 568))(v26);
                      if ((v38 & 1) == 0)
                      {
                        v52 = *(v29 + 9);
                        if (!v52)
                        {
                          goto LABEL_104;
                        }

                        v55 = *(v52 + 280);
                        v26 = re::AudioGeneratorAsset::assetType(v38);
                        if (v55 != v26)
                        {
                          goto LABEL_88;
                        }

                        v26 = (*(*v39 + 576))(v39);
                        if (!v26)
                        {
                          goto LABEL_88;
                        }
                      }

                      v26 = (*(*v39 + 320))(v39, v29, *(v7 + 4), *(v7 + 5));
                    }
                  }
                }

LABEL_88:
                v48 = re::globalAllocators(v26);
                (*(*v48[2] + 40))(v48[2], v7);
                v58 = 0;
                memset(time, 0, sizeof(time));
                v59 = 0x7FFFFFFFLL;
                v3 = this[47];
                continue;
              }
            }
          }
        }

        v20 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(time, v7 + 1);
        v21 = re::audioLogObjects(v20);
        if (os_log_type_enabled(*v21, OS_LOG_TYPE_DEBUG))
        {
          snprintf(__str, 0x8DuLL, "AudioPlayerComponent::nextReadyAction() - token %llu not ready for action %d", *(v7 + 1), *v7);
          std::string::basic_string[abi:nn200100]<0>(__p, __str);
          v22 = re::audio::throttledLog(OS_LOG_TYPE_DEBUG, __p);
          v23 = v22;
          if (v63 < 0)
          {
            operator delete(*__p);
            if (v23)
            {
LABEL_33:
              v24 = *re::audioLogObjects(v22);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
              {
                v40 = *(v7 + 1);
                v41 = *v7;
                *__p = 134218240;
                *&__p[4] = v40;
                v61 = 1024;
                v62 = v41;
                _os_log_debug_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEBUG, "AudioPlayerComponent::nextReadyAction() - token %llu not ready for action %d", __p, 0x12u);
              }
            }
          }

          else if (v22)
          {
            goto LABEL_33;
          }
        }
      }

      v3 = (v3 + 8);
    }

    while (v3 != this[48]);
  }

  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(time);
}

uint64_t *re::ecs2::AudioPlayerComponent::completeTimebasePreparation(re::ecs2::AudioPlayerComponent *this, uint64_t a2, re::AudioSourceSyncState *a3, re::TimebaseService *a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v41 = a2;
  result = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 80, &v41);
  if (result)
  {
    v8 = *result;
    if (*result)
    {
      v9 = (v8 + 8);
    }

    v10 = *(this + 2);
    if (!v10)
    {
      goto LABEL_10;
    }

    v11 = *(this + 2);
    do
    {
      v12 = v11;
      v11 = *(v11 + 32);
    }

    while (v11);
    v13 = *(v12 + 24);
    if (!v13)
    {
LABEL_10:
      v16 = 0;
      result = 0;
      if (!v8)
      {
        return result;
      }

      goto LABEL_43;
    }

    v14 = *(v8 + 728);
    if (v14)
    {
      v14 = CFRetain(v14);
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    cf = v15;
    if (*(v8 + 520) == 1 && !*(a3 + 8) && v15)
    {
      buf[0] = 0;
      SceneDataEntity = makeSceneDataEntity(v13, buf, 1, re::ecs2::Scene::kSharedSceneDataEntityID, 1);
      v18 = re::ecs2::EntityComponentCollection::getOrAdd((SceneDataEntity + 48), re::ecs2::ComponentImpl<re::ecs2::TimebaseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      v19 = v18;
      v20 = *(v8 + 72);
      if (v20)
      {
        v21 = *(v20 + 280);
        v22 = re::AudioFileAsset::assetType(v18);
        if (v21 == v22)
        {
          v23 = (re::AssetHandle::loadedAsset<re::AudioFileAsset>((a3 + 24)) + 160);
LABEL_36:
          v33 = *v23 == 0;
          goto LABEL_39;
        }
      }

      else
      {
        v22 = re::AudioFileAsset::assetType(v18);
      }

      v31 = *(v8 + 72);
      if (v31)
      {
        v32 = *(v31 + 280);
        if (v32 == re::AudioGeneratorAsset::assetType(v22))
        {
          v23 = (re::AssetHandle::loadedAsset<re::AudioGeneratorAsset>((a3 + 24)) + 88);
          goto LABEL_36;
        }
      }

      else
      {
        re::AudioGeneratorAsset::assetType(v22);
      }

      v33 = 1;
LABEL_39:
      *(a3 + 8) = (*(*a4 + 64))(a4, v15, v19 + 32, v33);
      v34 = *(v10 + 216);
      if (v34)
      {
        re::ecs2::NetworkComponent::markDirty(v34, this);
      }

      goto LABEL_41;
    }

    if (v15)
    {
LABEL_41:
      CFRelease(v15);
LABEL_42:
      v16 = 1;
LABEL_43:

      return v16;
    }

    if (*(a3 + 2))
    {
      if (!*(a3 + 8))
      {
        v35 = *re::audioLogObjects(v14);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v43 = v41;
          _os_log_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_INFO, "[RE/ECS] token %llu doesn't have valid timebase ID yet", buf, 0xCu);
        }

        goto LABEL_50;
      }

      v24 = *a4;
      if (*(v8 + 520))
      {
        v25 = (*(v24 + 104))(a4);
        v26 = v25;
        v27 = 0;
        cf = v25;
        if (!v25)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v25 = (*(v24 + 96))(a4);
        v26 = v25;
        cf = v25;
        v27 = 1;
        if (!v25)
        {
LABEL_48:
          v36 = *re::audioLogObjects(v25);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v37 = *(a3 + 8);
            v38 = *(this + 2);
            if (v38)
            {
              v39 = re::ecs2::EntityComponentCollection::get((v38 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
              if (v39)
              {
                v38 = *(v39 + 32);
              }

              else
              {
                v38 = 0;
              }
            }

            *buf = 134218496;
            v43 = v37;
            v44 = 1024;
            v45 = v27;
            v46 = 2048;
            v47 = v38;
            _os_log_error_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_ERROR, "[RE/ECS] Timebase %llu (readonly %d) from connection %llu not available", buf, 0x1Cu);
          }

LABEL_50:
          v16 = 0;
          goto LABEL_43;
        }
      }
    }

    else
    {
      v28 = re::ecs2::AudioPlayerComponent::copyPreferredMasterClock(this);
      v29 = CMTimebaseCreateWithSourceClock(*MEMORY[0x1E695E480], v28, &cf);
      if (v29)
      {
        v30 = *re::audioLogObjects(v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_ERROR, "[RE/ECS] Failed to create timebase", buf, 2u);
        }

        cf = 0;
      }

      CFRelease(v28);
      v27 = 0;
      v26 = cf;
      if (!cf)
      {
        goto LABEL_48;
      }
    }

    re::AudioSourceState::setTimebase(v8, v26, v27, AudioPlayerComponentHandleTimebaseTimeJumpedOrEffectiveRateChanged);
    v15 = cf;
    if (!cf)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  return result;
}

void ___ZN2re4ecs220AudioPlayerComponent19completePreparationEyPNS_20AudioSourceSyncStateEPNS_15TimebaseServiceE_block_invoke(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = a1[4];
  if (v6 && (v9 = *re::audioLogObjects(v6), os_log_type_enabled(v9, OS_LOG_TYPE_ERROR)))
  {
    v17 = a1[5];
    *v18 = 134218242;
    *&v18[4] = v17;
    *&v18[12] = 2112;
    *&v18[14] = v7;
    _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "[RE/PHASE] Error instantiating audio unit for token %llu: error = %@", v18, 0x16u);
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  else if (!v8)
  {
    goto LABEL_12;
  }

  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = *(v8 + 16);
    do
    {
      v12 = v11;
      v11 = *(v11 + 32);
    }

    while (v11);
    if (*(v12 + 24))
    {
      do
      {
        v13 = v10;
        v10 = *(v10 + 32);
      }

      while (v10);
      v14 = *(*(v13 + 24) + 288);
      if (v14)
      {
        v15 = a1[6];
        if (v15)
        {
          *v18 = a1[5];
          *&v18[8] = v5;
          *&v18[16] = v7;
          Type = re::EventBus::getTypeId<REAudioPlayerDidPrepareAudioUnitEvent>();
          re::EventBus::publish(v14, v15, Type, v18, 0x18uLL, 0);
        }
      }
    }
  }

LABEL_12:
}

void ___ZN2re4ecs220AudioPlayerComponent19completePreparationEyPNS_20AudioSourceSyncStateEPNS_15TimebaseServiceE_block_invoke_20(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v8 = WeakRetained[63];
    if (!v8)
    {
      v11 = *re::audioLogObjects(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 40);
        v12 = *(a1 + 48);
        *buf = 134218240;
        v16 = v12;
        v17 = 2048;
        v18 = v13;
        _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "[RE/ECS] [Update] AudioPlayerComponent (entityID=%llu) enqueuing state change callback to be called on ecs tick for token %llu", buf, 0x16u);
      }

      v14[0] = 0;
      objc_copyWeak(v14, (a1 + 32));
      v14[1] = *(a1 + 40);
      v14[2] = a2;
      v14[3] = a3;
      operator new();
    }

    re::ecs2::AudioPlayerComponent::playbackStateDidChange(v8, *(a1 + 40), a2, a3);
  }

  else
  {
    v9 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      *buf = 134217984;
      v16 = v10;
      _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "[RE/ECS] [Update] SourceState was deallocated. Cannot invoke state change callback for token %llu", buf, 0xCu);
    }
  }
}

void re::ecs2::AudioPlayerComponent::setRandomPlaybackPositionForTokenIfAppropriate(re::ecs2::AudioPlayerComponent *this, unint64_t a2)
{
  v4 = re::ecs2::AudioPlayerComponent::sourceStateForToken(this, a2);
  v5 = re::AssetHandle::AssetHandle(v12, (v4 + 64));
  if (v13)
  {
    v6 = *(v13 + 280);
    if (v6 == re::AudioFileAsset::assetType(v5))
    {
      v7 = re::AssetHandle::loadedAsset<re::AudioFileAsset>(v12);
      if (v7)
      {
        v8 = v7;
        if (*(v7 + 109) == 1)
        {
          v9 = arc4random() / 4294967300.0;
          v10 = *(v8 + 144);
          [*(*(v8 + 8) + 8) sampleRate];
          re::ecs2::AudioPlayerComponent::setPlaybackPositionFor(this, a2, v9 * (v10 / v11));
        }
      }
    }
  }

  else
  {
    re::AudioFileAsset::assetType(v5);
  }

  re::AssetHandle::~AssetHandle(v12);
}

void ___ZN2re4ecs220AudioPlayerComponent19completePreparationEyPNS_20AudioSourceSyncStateEPNS_15TimebaseServiceE_block_invoke_23(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) isCancelled];
  if (v5)
  {
    v6 = *re::audioLogObjects(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 56);
      *buf = 134217984;
      v18 = v7;
      v8 = "[RE/PHASE] REEngine was deallocated. cannot invoke preparation callback for token %llu";
LABEL_9:
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, v8, buf, 0xCu);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    if (WeakRetained)
    {
      v10 = WeakRetained;
      v11 = WeakRetained[63];
      if (!v11)
      {
        v13 = *re::audioLogObjects(WeakRetained);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 72);
          v15 = *(a1 + 56);
          *buf = 134218240;
          v18 = v14;
          v19 = 2048;
          v20 = v15;
          _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "[RE/ECS] [Update] AudioPlayerComponent (entityID=%llu) enqueuing state change callback to be called on ecs tick for token %llu", buf, 0x16u);
        }

        to[0] = 0;
        objc_copyWeak(to, (a1 + 64));
        to[1] = v4;
        to[2] = v3;
        operator new();
      }

      re::ecs2::AudioPlayerComponent::preparationCompleteCallback(v4, (WeakRetained - 1), v11, v3);
    }

    else
    {
      v6 = *re::audioLogObjects(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 56);
        *buf = 134217984;
        v18 = v12;
        v8 = "[RE/ECS] [Update] SourceState was deallocated. Cannot invoke state change callback for token %llu";
        goto LABEL_9;
      }
    }
  }
}

void re::ecs2::AudioPlayerComponent::setOneShotSound(re::ecs2::AudioPlayerComponent **this, uint64_t a2)
{
  canModifyState = re::ecs2::AudioPlayerComponent::canModifyState(this[2]);
  if ((canModifyState & 1) == 0)
  {
    v6 = *re::audioLogObjects(canModifyState);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v10 = 0;
    v7 = "AudioPlayerComponent cannot modify state because it is not owned.";
    v8 = &v10;
LABEL_9:
    _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
    return;
  }

  v11 = a2;
  v5 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet((this + 4), &v11);
  if (v5)
  {
    *(v5 + 92) = 1;
    return;
  }

  v6 = *re::audioLogObjects(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = 0;
    v7 = "AudioPlayerComponent cannot access sync state for unknown playback token.";
    v8 = &v9;
    goto LABEL_9;
  }
}

void re::ecs2::AudioPlayerComponent::destroy(re::ecs2::AudioPlayerComponent **this, unint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v30 = a2;
  canModifyState = re::ecs2::AudioPlayerComponent::canModifyState(this[2]);
  if (canModifyState)
  {
    *buf = a2;
    v5 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet((this + 4), buf);
    if (v5)
    {
      v6 = *(v5 + 248);
      if (!((v6 & 1) != 0 ? v6 >> 1 : v6 >> 1))
      {
        --*(this + 93);
      }
    }

    v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>((this + 4), &v30, v8 ^ (v8 >> 31), buf);
    v9 = v32[0];
    if (v32[0] != 0x7FFFFFFF)
    {
      v10 = this[6];
      v11 = *(v10 + 304 * v32[0]) & 0x7FFFFFFF;
      if (v32[1] == 0x7FFFFFFF)
      {
        *(this[5] + *&buf[8]) = v11;
        v9 = v32[0];
      }

      else
      {
        *(v10 + 304 * v32[1]) = *(v10 + 304 * v32[1]) & 0x80000000 | v11;
      }

      re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(v10, v9);
      v14 = v32[0];
      *(this[6] + 76 * v32[0]) = *(this[6] + 76 * v32[0]) & 0x80000000 | *(this + 17);
      --*(this + 15);
      v15 = *(this + 18) + 1;
      *(this + 17) = v14;
      *(this + 18) = v15;
    }

    v16 = this[2];
    if (v16)
    {
      v17 = re::ecs2::EntityComponentCollection::get((v16 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
      if (v17)
      {
        v18 = v17;
        v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v30 ^ (v30 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v30 ^ (v30 >> 30))) >> 27));
        re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(v17 + 88, &v30, v19 ^ (v19 >> 31), buf);
        v20 = v32[0];
        if (v32[0] != 0x7FFFFFFF)
        {
          v21 = *(v18 + 104);
          v22 = *(v21 + 48 * v32[0]) & 0x7FFFFFFF;
          if (v32[1] == 0x7FFFFFFF)
          {
            *(*(v18 + 96) + 4 * *&buf[8]) = v22;
            v20 = v32[0];
          }

          else
          {
            *(v21 + 48 * v32[1]) = *(v21 + 48 * v32[1]) & 0x80000000 | v22;
          }

          *(v21 + 48 * v20) = *(v18 + 124);
          --*(v18 + 116);
          v23 = *(v18 + 128) + 1;
          *(v18 + 124) = v20;
          *(v18 + 128) = v23;
        }

        v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v30 ^ (v30 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v30 ^ (v30 >> 30))) >> 27));
        re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v18 + 40, &v30, v24 ^ (v24 >> 31), buf);
        v25 = v32[0];
        if (v32[0] != 0x7FFFFFFF)
        {
          v26 = *(v18 + 56);
          v27 = *(v26 + 32 * v32[0]) & 0x7FFFFFFF;
          if (v32[1] == 0x7FFFFFFF)
          {
            *(*(v18 + 48) + 4 * *&buf[8]) = v27;
            v25 = v32[0];
          }

          else
          {
            *(v26 + 32 * v32[1]) = *(v26 + 32 * v32[1]) & 0x80000000 | v27;
          }

          *(v26 + 32 * v25) = *(v18 + 76);
          --*(v18 + 68);
          v28 = *(v18 + 80) + 1;
          *(v18 + 76) = v25;
          *(v18 + 80) = v28;
        }

        v29 = *(this[2] + 27);
        if (v29)
        {
          re::ecs2::NetworkComponent::markDirty(v29, v18);
        }
      }
    }
  }

  else
  {
    v12 = *re::audioLogObjects(canModifyState);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = this[44];
      if (!v13)
      {
        v13 = this[50];
      }

      *buf = 134218240;
      *&buf[4] = v13;
      LOWORD(v32[0]) = 2048;
      *(v32 + 2) = a2;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "AudioPlayerComponent (entityID=%llu) cannot modify state for token %llu because it is not owned.", buf, 0x16u);
    }
  }
}

void re::ecs2::AudioPlayerComponent::play(uint64_t a1, uint64_t a2, int a3)
{
  v56 = *MEMORY[0x1E69E9840];
  ++*(a1 + 360);
  v50 = a2;
  *block = a2;
  v6 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 32, block);
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = v6;
  v8 = *(v6 + 4);
  if (v8)
  {
    v9 = *(v8 + 280);
    v10 = re::AudioFileAsset::assetType(v6);
    if (v9 != v10)
    {
      goto LABEL_4;
    }

    v25 = re::AssetHandle::loadedAsset<re::AudioFileAsset>((v7 + 24));
    if (!v25)
    {
      goto LABEL_19;
    }

    v26 = v25;
    Instance = re::ecs2::AudioPlayerTelemetryReporter::getInstance(v25);
    v23 = *(v26 + 29);
    v24 = *(v26 + 15);
LABEL_17:
    *block = MEMORY[0x1E69E9820];
    *&block[8] = 3221225472;
    *&block[16] = ___ZN2re4ecs228AudioPlayerTelemetryReporter31updateCalibrationModeStatisticsE22REAudioCalibrationModed_block_invoke;
    v52 = &__block_descriptor_52_e5_v8__0l;
    v53 = Instance;
    v55 = v23;
    v54 = v24;
    dispatch_async(re::ecs2::AudioPlayerTelemetryReporter::m_audioPlayerTelemetryQueue, block);
    goto LABEL_19;
  }

  if (*(v6 + 28) || *(v6 + 29))
  {
    v19 = re::ecs2::EntityComponentCollection::get((*(a1 + 16) + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
    if (!v19)
    {
      goto LABEL_19;
    }

    v20 = re::HashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v19 + 88, &v50);
    if (!v20)
    {
      goto LABEL_19;
    }

    v21 = v20;
    Instance = re::ecs2::AudioPlayerTelemetryReporter::getInstance(v20);
    v23 = *(v21 + 1);
    v24 = *(v21 + 1);
    goto LABEL_17;
  }

  v10 = re::AudioFileAsset::assetType(v6);
LABEL_4:
  v11 = *(v7 + 4);
  if (v11)
  {
    v12 = *(v11 + 280);
    if (v12 == re::AudioFileGroupAsset::assetType(v10))
    {
      v13 = re::AssetHandle::loadedAsset<re::AudioFileGroupAsset>((v7 + 24));
      if (v13)
      {
        v14 = v13;
        v15 = arc4random_uniform(*(v13 + 24));
        if (*(v14 + 24) > v15)
        {
          v16 = re::AssetHandle::loadedAsset<re::AudioFileAsset>((*(v14 + 40) + 24 * v15));
          if (v16)
          {
            v17 = v16;
            v18 = re::ecs2::AudioPlayerTelemetryReporter::getInstance(v16);
            re::ecs2::AudioPlayerTelemetryReporter::updateCalibrationModeStatistics(v18, *(v17 + 29), *(v17 + 15));
          }
        }
      }
    }
  }

  else
  {
    re::AudioFileGroupAsset::assetType(v10);
  }

LABEL_19:
  canModifyState = re::ecs2::AudioPlayerComponent::canModifyState(*(a1 + 16));
  if ((canModifyState & 1) == 0)
  {
    v33 = *re::audioLogObjects(canModifyState);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v34 = *(a1 + 352);
    if (!v34)
    {
      v34 = *(a1 + 400);
    }

    *block = 134218240;
    *&block[4] = v34;
    *&block[12] = 2048;
    *&block[14] = a2;
    v35 = "AudioPlayerComponent (entityID=%llu) cannot modify state for token %llu because it is not owned.";
    goto LABEL_37;
  }

  v28 = re::ecs2::AudioPlayerComponent::sourceStateForToken(a1, a2);
  if (!v28)
  {
    v33 = *re::audioLogObjects(0);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v36 = *(a1 + 352);
    if (!v36)
    {
      v36 = *(a1 + 400);
    }

    *block = 134218240;
    *&block[4] = v36;
    *&block[12] = 2048;
    *&block[14] = a2;
    v35 = "AudioPlayerComponent (entityID=%llu) cannot access state for unknown playback token %llu.";
    goto LABEL_37;
  }

  v29 = v28;
  *block = a2;
  v30 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 32, block);
  if (!v30)
  {
    v33 = *re::audioLogObjects(0);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v37 = *(a1 + 352);
    if (!v37)
    {
      v37 = *(a1 + 400);
    }

    *block = 134218240;
    *&block[4] = v37;
    *&block[12] = 2048;
    *&block[14] = a2;
    v35 = "AudioPlayerComponent (entityID=%llu) cannot access sync state for unknown playback token %llu.";
LABEL_37:
    _os_log_error_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_ERROR, v35, block, 0x16u);
    return;
  }

  if ((*(v29 + 752) & 1) == 0)
  {
    v31 = v30;
    v32 = re::internal::enableSignposts(0, 0);
    if (v32)
    {
      re::AssetHandle::assetInfo((v31 + 24));
      v32 = kdebug_trace();
    }

    *(v29 + 189) = 2;
    v38 = re::globalAllocators(v32);
    v39 = (*(*v38[2] + 32))(v38[2], 32, 8);
    *v39 = 0u;
    *(v39 + 16) = 0u;
    *block = v39;
    *(v39 + 8) = a2;
    if (a3 == 1)
    {
      std::vector<re::AudioPlayerComponentAction *>::push_back[abi:nn200100](a1 + 376, block);
    }

    else if (!a3)
    {
      v41 = *(a1 + 376);
      v40 = *(a1 + 384);
      v42 = *(a1 + 392);
      if (v40 >= v42)
      {
        v45 = v40 - v41 + 1;
        if (!(v45 >> 61))
        {
          v46 = v42 - v41;
          if (v46 >> 2 > v45)
          {
            v45 = v46 >> 2;
          }

          if (v46 >= 0x7FFFFFFFFFFFFFF8)
          {
            v47 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v47 = v45;
          }

          if (v47)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<zip_entry_t *>>(v47);
          }

          std::__allocate_at_least[abi:nn200100]<std::allocator<zip_entry_t *>>(1uLL);
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      if (v41 == v40)
      {
        *v40 = v39;
        *(a1 + 384) = v40 + 1;
      }

      else
      {
        v43 = v41 + 1;
        if (v40 < 8)
        {
          v44 = *(a1 + 384);
        }

        else
        {
          *v40 = *(v40 - 1);
          v44 = v40 + 1;
        }

        *(a1 + 384) = v44;
        if (v40 != v43)
        {
          memmove(v41 + 1, v41, v40 - v43);
          v44 = *(a1 + 384);
        }

        v48 = v44 <= block || v41 > block;
        v49 = 8;
        if (v48)
        {
          v49 = 0;
        }

        *v41 = *&block[v49];
      }
    }
  }
}

void std::vector<re::AudioPlayerComponentAction *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<zip_entry_t *>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void re::ecs2::AudioPlayerComponent::stop(re::ecs2::AudioPlayerComponent **this, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  canModifyState = re::ecs2::AudioPlayerComponent::canModifyState(this[2]);
  if ((canModifyState & 1) == 0)
  {
    v10 = *re::audioLogObjects(canModifyState);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v11 = this[44];
    if (!v11)
    {
      v11 = this[50];
    }

    *v17 = 134218240;
    *&v17[4] = v11;
    v18 = 2048;
    v19 = a2;
    v12 = "AudioPlayerComponent (entityID=%llu) cannot modify state for token %llu because it is not owned.";
LABEL_19:
    _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, v12, v17, 0x16u);
    return;
  }

  v5 = re::ecs2::AudioPlayerComponent::sourceStateForToken(this, a2);
  if (!v5)
  {
    v10 = *re::audioLogObjects(0);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v13 = this[44];
    if (!v13)
    {
      v13 = this[50];
    }

    *v17 = 134218240;
    *&v17[4] = v13;
    v18 = 2048;
    v19 = a2;
    v12 = "AudioPlayerComponent (entityID=%llu) cannot access state for unknown playback token %llu.";
    goto LABEL_19;
  }

  v6 = v5;
  *v17 = a2;
  v7 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet((this + 4), v17);
  if (!v7)
  {
    v10 = *re::audioLogObjects(0);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v14 = this[44];
    if (!v14)
    {
      v14 = this[50];
    }

    *v17 = 134218240;
    *&v17[4] = v14;
    v18 = 2048;
    v19 = a2;
    v12 = "AudioPlayerComponent (entityID=%llu) cannot access sync state for unknown playback token %llu.";
    goto LABEL_19;
  }

  if ((*(v6 + 752) & 1) == 0)
  {
    v8 = v7;
    v9 = re::internal::enableSignposts(0, 0);
    if (v9)
    {
      re::AssetHandle::assetInfo((v8 + 24));
      v9 = kdebug_trace();
    }

    *(v6 + 189) = 3;
    v15 = re::globalAllocators(v9);
    v16 = (*(*v15[2] + 32))(v15[2], 32, 8);
    *v16 = 0u;
    *(v16 + 16) = 0u;
    *v17 = v16;
    *v16 = 2;
    *(v16 + 8) = a2;
    std::vector<re::AudioPlayerComponentAction *>::push_back[abi:nn200100]((this + 47), v17);
  }
}

void re::ecs2::AudioPlayerComponent::pause(re::ecs2::AudioPlayerComponent **this, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  canModifyState = re::ecs2::AudioPlayerComponent::canModifyState(this[2]);
  if ((canModifyState & 1) == 0)
  {
    v10 = *re::audioLogObjects(canModifyState);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v11 = this[44];
    if (!v11)
    {
      v11 = this[50];
    }

    *v17 = 134218240;
    *&v17[4] = v11;
    v18 = 2048;
    v19 = a2;
    v12 = "AudioPlayerComponent (entityID=%llu) cannot modify state for token %llu because it is not owned.";
LABEL_19:
    _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, v12, v17, 0x16u);
    return;
  }

  v5 = re::ecs2::AudioPlayerComponent::sourceStateForToken(this, a2);
  if (!v5)
  {
    v10 = *re::audioLogObjects(0);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v13 = this[44];
    if (!v13)
    {
      v13 = this[50];
    }

    *v17 = 134218240;
    *&v17[4] = v13;
    v18 = 2048;
    v19 = a2;
    v12 = "AudioPlayerComponent (entityID=%llu) cannot access state for unknown playback token %llu.";
    goto LABEL_19;
  }

  v6 = v5;
  *v17 = a2;
  v7 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet((this + 4), v17);
  if (!v7)
  {
    v10 = *re::audioLogObjects(0);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v14 = this[44];
    if (!v14)
    {
      v14 = this[50];
    }

    *v17 = 134218240;
    *&v17[4] = v14;
    v18 = 2048;
    v19 = a2;
    v12 = "AudioPlayerComponent (entityID=%llu) cannot access sync state for unknown playback token %llu.";
    goto LABEL_19;
  }

  if ((*(v6 + 752) & 1) == 0)
  {
    v8 = v7;
    v9 = re::internal::enableSignposts(0, 0);
    if (v9)
    {
      re::AssetHandle::assetInfo((v8 + 24));
      v9 = kdebug_trace();
    }

    *(v6 + 189) = 1;
    v15 = re::globalAllocators(v9);
    v16 = (*(*v15[2] + 32))(v15[2], 32, 8);
    *v16 = 0u;
    *(v16 + 16) = 0u;
    *v17 = v16;
    *v16 = 1;
    *(v16 + 8) = a2;
    std::vector<re::AudioPlayerComponentAction *>::push_back[abi:nn200100]((this + 47), v17);
  }
}

void re::ecs2::AudioPlayerComponent::doPlay(re::ecs2::AudioPlayerComponent *this, CMTimeValue a2, re::AudioSourceState *a3, re::AudioSourceSyncState *a4)
{
  v66 = *MEMORY[0x1E69E9840];
  if (*(a3 + 752))
  {
    return;
  }

  v8 = *(a3 + 91);
  if (CMTimebaseGetRate(v8) != 0.0)
  {
    v10 = *re::audioLogObjects(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.value) = 134217984;
      *(&buf.value + 4) = a2;
      _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "token %llu is already playing", &buf, 0xCu);
    }

    return;
  }

  v11 = CMTimebaseCopySource(v8);
  v12 = CFGetTypeID(v11);
  TypeID = CMTimebaseGetTypeID();
  CFRelease(v11);
  v15 = 0.0;
  if (v12 == TypeID || (v16 = *(a3 + 9)) == 0 || (v17 = atomic_load((v16 + 896)), v17 != 2))
  {
LABEL_44:
    v42 = *(a3 + 313);
    v43 = *re::audioLogObjects(v14);
    v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
    if (v42 == 1)
    {
      if (v44)
      {
        v45 = *(this + 2);
        if (v45 && (v46 = re::ecs2::EntityComponentCollection::get((v45 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType)) != 0)
        {
          v47 = *(v46 + 32);
        }

        else
        {
          v47 = 0;
        }

        v51 = re::AssetHandle::assetInfo((a3 + 64));
        if (v51[17])
        {
          v52 = v51[18];
        }

        else
        {
          v52 = v51 + 137;
        }

        LODWORD(buf.value) = 134218755;
        *(&buf.value + 4) = a2;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = v47;
        HIWORD(buf.epoch) = 2048;
        v63 = v15 * 1000.0;
        v64 = 2085;
        v65 = v52;
        v53 = "Setting token %llu from connection %llu to play with alignment delay %0.2f msec, REAsset = '%{sensitive}s'";
LABEL_63:
        _os_log_impl(&dword_1E1C61000, v43, OS_LOG_TYPE_DEFAULT, v53, &buf, 0x2Au);
      }
    }

    else if (v44)
    {
      v48 = *(this + 2);
      if (v48 && (v49 = re::ecs2::EntityComponentCollection::get((v48 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType)) != 0)
      {
        v50 = *(v49 + 32);
      }

      else
      {
        v50 = 0;
      }

      v54 = re::AssetHandle::assetInfo((a3 + 64));
      if (v54[17])
      {
        v55 = v54[18];
      }

      else
      {
        v55 = v54 + 137;
      }

      LODWORD(buf.value) = 134218754;
      *(&buf.value + 4) = a2;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = v50;
      HIWORD(buf.epoch) = 2048;
      v63 = v15 * 1000.0;
      v64 = 2080;
      v65 = v55;
      v53 = "Setting token %llu from connection %llu to play with alignment delay %0.2f msec, REAsset = '%s'";
      goto LABEL_63;
    }

    if (a4)
    {
      *(a4 + 6) = 1;
    }

    Rate = CMTimebaseGetRate(v8);
    v57 = *(a3 + 86);
    if (Rate != v57)
    {
      if (v15 != 0.0)
      {
        memset(&buf, 0, sizeof(buf));
        CMTimeMakeWithSeconds(&buf, v15, 1000000000);
        memset(&v61, 0, sizeof(v61));
        CMTimebaseGetTime(&v61, v8);
        lhs = v61;
        v58 = buf;
        CMTimeSubtract(&time, &lhs, &v58);
        CMTimebaseSetTime(v8, &time);
        v57 = *(a3 + 86);
      }

      CMTimebaseSetRate(v8, v57);
    }

    return;
  }

  v18 = *(a3 + 9);
  if (v18)
  {
    v19 = *(v18 + 280);
    v20 = re::AudioFileAsset::assetType(v14);
    if (v19 == v20)
    {
      v14 = re::AssetHandle::loadedAsset<re::AudioFileAsset>((a3 + 64));
      v21 = *(v14 + 152);
LABEL_41:
      if (v21 >= 0.0)
      {
        v15 = v21;
        if (v21 > 0.5)
        {
          v15 = 0.5;
        }
      }

      goto LABEL_44;
    }
  }

  else
  {
    v20 = re::AudioFileAsset::assetType(v14);
  }

  v22 = *(a3 + 9);
  if (v22)
  {
    v23 = *(v22 + 280);
    v24 = re::AudioGeneratorAsset::assetType(v20);
    if (v23 == v24)
    {
      v14 = re::AssetHandle::loadedAsset<re::AudioGeneratorAsset>((a3 + 64));
      v21 = *(v14 + 96);
      goto LABEL_41;
    }
  }

  else
  {
    v24 = re::AudioGeneratorAsset::assetType(v20);
  }

  v25 = *(a3 + 9);
  if (v25)
  {
    v26 = *(v25 + 280);
    v27 = re::AudioFileGroupAsset::assetType(v24);
    if (v26 == v27)
    {
      v14 = re::AssetHandle::loadedAsset<re::AudioFileGroupAsset>((a3 + 64));
      if (!*(v14 + 24))
      {
        goto LABEL_44;
      }

      v28 = re::DynamicArray<re::AssetHandle>::operator[](v14 + 8, 0);
      v29 = re::AssetHandle::AssetHandle(&buf, v28);
      if (*&buf.timescale)
      {
        v30 = *(*&buf.timescale + 280);
        v21 = 0.0;
        if (v30 == re::AudioFileAsset::assetType(v29))
        {
          v21 = *(re::AssetHandle::loadedAsset<re::AudioFileAsset>(&buf) + 152);
        }
      }

      else
      {
        re::AudioFileAsset::assetType(v29);
        v21 = 0.0;
      }

      re::AssetHandle::~AssetHandle(&buf);
      goto LABEL_41;
    }
  }

  else
  {
    v27 = re::AudioFileGroupAsset::assetType(v24);
  }

  v31 = *(a3 + 313);
  v32 = *re::audioLogObjects(v27);
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
  if (v31 == 1)
  {
    if (!v33)
    {
      return;
    }

    v34 = *(this + 44);
    if (!v34)
    {
      v34 = *(this + 50);
    }

    v35 = v32;
    v36 = re::AssetHandle::assetInfo((a3 + 64));
    if (v36[17])
    {
      v37 = v36[18];
    }

    else
    {
      v37 = v36 + 137;
    }

    LODWORD(buf.value) = 134218499;
    *(&buf.value + 4) = v34;
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = a2;
    HIWORD(buf.epoch) = 2085;
    v63 = *&v37;
    v38 = "AudioPlayerComponent (entityID=%llu) token %llu cannot play unknown asset type '%{sensitive}s'.";
  }

  else
  {
    if (!v33)
    {
      return;
    }

    v39 = *(this + 44);
    if (!v39)
    {
      v39 = *(this + 50);
    }

    v35 = v32;
    v40 = re::AssetHandle::assetInfo((a3 + 64));
    if (v40[17])
    {
      v41 = v40[18];
    }

    else
    {
      v41 = v40 + 137;
    }

    LODWORD(buf.value) = 134218498;
    *(&buf.value + 4) = v39;
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = a2;
    HIWORD(buf.epoch) = 2080;
    v63 = *&v41;
    v38 = "AudioPlayerComponent (entityID=%llu) token %llu cannot play unknown asset type '%s'.";
  }

  _os_log_error_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_ERROR, v38, &buf, 0x20u);
}

void re::ecs2::AudioPlayerComponent::doStopAll(re::ecs2::AudioPlayerComponent *this)
{
  v2 = *(this + 28);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 12);
    while (1)
    {
      v5 = *v4;
      v4 += 8;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 28);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

LABEL_14:
  while (v3 != v2)
  {
    v6 = *(this + 12) + 32 * v3;
    v8 = *(v6 + 16);
    v11 = *(v6 + 8);
    v7 = v11;
    v9 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 32, &v11);
    re::ecs2::AudioPlayerComponent::doStop(this, v7, v8, v9);
    v10 = *(this + 28);
    if (v10 <= v3 + 1)
    {
      v10 = v3 + 1;
    }

    while (v10 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 12) + 32 * v3) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v3) = v10;
  }
}

uint64_t re::ecs2::AudioPlayerComponent::doPause(re::ecs2::AudioPlayerComponent *this, uint64_t a2, re::AudioSourceState *a3, re::AudioSourceSyncState *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*(a3 + 752))
  {
    return 0;
  }

  v8 = *(a3 + 313);
  v9 = *re::audioLogObjects(this);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8 == 1)
  {
    if (!v10)
    {
      goto LABEL_22;
    }

    v11 = *(this + 2);
    if (v11 && (v12 = re::ecs2::EntityComponentCollection::get((v11 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType)) != 0)
    {
      v13 = *(v12 + 32);
    }

    else
    {
      v13 = 0;
    }

    v17 = re::AssetHandle::assetInfo((a3 + 64));
    if (v17[17])
    {
      v18 = v17[18];
    }

    else
    {
      v18 = v17 + 137;
    }

    v23 = 134218499;
    v24 = a2;
    v25 = 2048;
    v26 = v13;
    v27 = 2085;
    v28 = v18;
    v19 = "Setting token %llu from connection %llu to pause, REAsset = '%{sensitive}s'";
  }

  else
  {
    if (!v10)
    {
      goto LABEL_22;
    }

    v14 = *(this + 2);
    if (v14 && (v15 = re::ecs2::EntityComponentCollection::get((v14 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType)) != 0)
    {
      v16 = *(v15 + 32);
    }

    else
    {
      v16 = 0;
    }

    v20 = re::AssetHandle::assetInfo((a3 + 64));
    if (v20[17])
    {
      v21 = v20[18];
    }

    else
    {
      v21 = v20 + 137;
    }

    v23 = 134218498;
    v24 = a2;
    v25 = 2048;
    v26 = v16;
    v27 = 2080;
    v28 = v21;
    v19 = "Setting token %llu from connection %llu to pause, REAsset = '%s'";
  }

  _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, v19, &v23, 0x20u);
LABEL_22:

  if (a4)
  {
    if (*(a4 + 6) == 1)
    {
      *(a4 + 6) = 3;
    }
  }

  if (CMTimebaseGetRate(*(a3 + 91)) != 0.0)
  {
    CMTimebaseSetRate(*(a3 + 91), 0.0);
    return 1;
  }

  return 0;
}

void re::ecs2::AudioPlayerComponent::resumeAll(re::ecs2::AudioPlayerComponent **this)
{
  v12 = *MEMORY[0x1E69E9840];
  canModifyState = re::ecs2::AudioPlayerComponent::canModifyState(this[2]);
  if (canModifyState)
  {
    v3 = *(this + 28);
    if (v3)
    {
      v4 = 0;
      v5 = this[12];
      while (1)
      {
        v6 = *v5;
        v5 = (v5 + 32);
        if (v6 < 0)
        {
          break;
        }

        if (v3 == ++v4)
        {
          LODWORD(v4) = *(this + 28);
          break;
        }
      }
    }

    else
    {
      LODWORD(v4) = 0;
    }

LABEL_19:
    while (v4 != v3)
    {
      re::ecs2::AudioPlayerComponent::play(this, *(this[12] + 4 * v4 + 1), 1);
      v9 = *(this + 28);
      if (v9 <= v4 + 1)
      {
        v9 = v4 + 1;
      }

      while (v9 - 1 != v4)
      {
        LODWORD(v4) = v4 + 1;
        if ((*(this[12] + 8 * v4) & 0x80000000) != 0)
        {
          goto LABEL_19;
        }
      }

      LODWORD(v4) = v9;
    }
  }

  else
  {
    v7 = *re::audioLogObjects(canModifyState);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = this[44];
      if (!v8)
      {
        v8 = this[50];
      }

      v10 = 134217984;
      v11 = v8;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "AudioPlayerComponent::resumeAll() (entityID=%llu) cannot modify state because component is not owned.", &v10, 0xCu);
    }
  }
}

void re::ecs2::AudioPlayerComponent::stopAll(re::ecs2::AudioPlayerComponent **this)
{
  v12 = *MEMORY[0x1E69E9840];
  canModifyState = re::ecs2::AudioPlayerComponent::canModifyState(this[2]);
  if (canModifyState)
  {
    v3 = *(this + 28);
    if (v3)
    {
      v4 = 0;
      v5 = this[12];
      while (1)
      {
        v6 = *v5;
        v5 = (v5 + 32);
        if (v6 < 0)
        {
          break;
        }

        if (v3 == ++v4)
        {
          LODWORD(v4) = *(this + 28);
          break;
        }
      }
    }

    else
    {
      LODWORD(v4) = 0;
    }

LABEL_19:
    while (v4 != v3)
    {
      re::ecs2::AudioPlayerComponent::stop(this, *(this[12] + 4 * v4 + 1));
      v9 = *(this + 28);
      if (v9 <= v4 + 1)
      {
        v9 = v4 + 1;
      }

      while (v9 - 1 != v4)
      {
        LODWORD(v4) = v4 + 1;
        if ((*(this[12] + 8 * v4) & 0x80000000) != 0)
        {
          goto LABEL_19;
        }
      }

      LODWORD(v4) = v9;
    }
  }

  else
  {
    v7 = *re::audioLogObjects(canModifyState);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = this[44];
      if (!v8)
      {
        v8 = this[50];
      }

      v10 = 134217984;
      v11 = v8;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "AudioPlayerComponent::stopAll() (entityID=%llu) cannot modify state because component is not owned.", &v10, 0xCu);
    }
  }
}

void re::ecs2::AudioPlayerComponent::pauseAll(re::ecs2::AudioPlayerComponent **this)
{
  v12 = *MEMORY[0x1E69E9840];
  canModifyState = re::ecs2::AudioPlayerComponent::canModifyState(this[2]);
  if (canModifyState)
  {
    v3 = *(this + 28);
    if (v3)
    {
      v4 = 0;
      v5 = this[12];
      while (1)
      {
        v6 = *v5;
        v5 = (v5 + 32);
        if (v6 < 0)
        {
          break;
        }

        if (v3 == ++v4)
        {
          LODWORD(v4) = *(this + 28);
          break;
        }
      }
    }

    else
    {
      LODWORD(v4) = 0;
    }

LABEL_19:
    while (v4 != v3)
    {
      re::ecs2::AudioPlayerComponent::pause(this, *(this[12] + 4 * v4 + 1));
      v9 = *(this + 28);
      if (v9 <= v4 + 1)
      {
        v9 = v4 + 1;
      }

      while (v9 - 1 != v4)
      {
        LODWORD(v4) = v4 + 1;
        if ((*(this[12] + 8 * v4) & 0x80000000) != 0)
        {
          goto LABEL_19;
        }
      }

      LODWORD(v4) = v9;
    }
  }

  else
  {
    v7 = *re::audioLogObjects(canModifyState);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = this[44];
      if (!v8)
      {
        v8 = this[50];
      }

      v10 = 134217984;
      v11 = v8;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "AudioPlayerComponent::pauseAll() (entityID=%llu) cannot modify state because component is not owned.", &v10, 0xCu);
    }
  }
}

double re::ecs2::AudioPlayerComponent::playbackPositionFor(CMTimeValue *this, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = re::ecs2::AudioPlayerComponent::sourceStateForToken(this, a2);
  if (v4)
  {
    v5 = v4;
    if (*(v4 + 192))
    {
      Seconds = *(v4 + 95);
    }

    else
    {
      memset(&buf, 0, sizeof(buf));
      CMTimebaseGetTime(&buf, *(v4 + 91));
      v22 = buf;
      Seconds = CMTimeGetSeconds(&v22);
    }

    v8 = 0.0;
    if (Seconds >= 0.0)
    {
      v10 = re::AssetHandle::AssetHandle(&buf, (v5 + 64));
      if (*&buf.timescale)
      {
        v11 = atomic_load((*&buf.timescale + 896));
        if (v11 == 2)
        {
          v12 = *(*&buf.timescale + 280);
          if (v12 == re::AudioFileAsset::assetType(v10))
          {
            v13 = re::AssetHandle::loadedAsset<re::AudioFileAsset>(&buf);
            v14 = *(v13 + 144);
            [*(*(v13 + 8) + 8) sampleRate];
            v16 = *(v13 + 104);
            if (v16)
            {
              v8 = v14 / v15;
              if ((v16 & 0x80000000) != 0 || Seconds < v8 * v16)
              {
                v17 = remainder(Seconds, v8);
                if (v17 >= 0.0)
                {
                  v8 = v17;
                }

                else
                {
                  v8 = v8 + v17;
                }
              }
            }

            else
            {
              v19 = *(v13 + 144);
              [*(*(v13 + 8) + 8) sampleRate];
              v21 = v19 / v20;
              if (Seconds <= v21)
              {
                v8 = Seconds;
              }

              else
              {
                v8 = v21;
              }
            }
          }

          else
          {
            v8 = Seconds;
          }
        }
      }

      re::AssetHandle::~AssetHandle(&buf);
    }
  }

  else
  {
    v7 = *re::audioLogObjects(0);
    v8 = 0.0;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = this[44];
      if (!v9)
      {
        v9 = this[50];
      }

      LODWORD(buf.value) = 134218240;
      *(&buf.value + 4) = v9;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = a2;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "AudioPlayerComponent::playbackPositionFor() (entityID=%llu) cannot access state for unknown playback token %llu.", &buf, 0x16u);
    }
  }

  return v8;
}

void re::ecs2::AudioPlayerComponent::setPlaybackPositionFor(re::ecs2::AudioPlayerComponent *this, unint64_t a2, double a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = re::ecs2::AudioPlayerComponent::sourceStateForToken(this, a2);
  if (!v6)
  {
    v7 = *re::audioLogObjects(0);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v10 = *(this + 44);
    if (!v10)
    {
      v10 = *(this + 50);
    }

    *v13 = 134218240;
    *&v13[4] = v10;
    v14 = 2048;
    v15 = a2;
    v9 = "AudioPlayerComponent::setPlaybackPositionFor() (entityID=%llu) cannot access state for unknown playback token %llu.";
    goto LABEL_11;
  }

  if (*(v6 + 752) == 1)
  {
    v7 = *re::audioLogObjects(v6);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v8 = *(this + 44);
    if (!v8)
    {
      v8 = *(this + 50);
    }

    *v13 = 134218240;
    *&v13[4] = v8;
    v14 = 2048;
    v15 = a2;
    v9 = "AudioPlayerComponent::setPlaybackPositionFor() (entityID=%llu) cannot seek un-owned playback token %llu.";
LABEL_11:
    _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, v9, v13, 0x16u);
    return;
  }

  *(v6 + 760) = a3;
  *(v6 + 768) = 1;
  v11 = re::globalAllocators(v6);
  v12 = (*(*v11[2] + 32))(v11[2], 32, 8);
  *(v12 + 8) = a2;
  *(v12 + 16) = 0;
  *v12 = 0;
  *v13 = v12;
  *v12 = 4;
  *(v12 + 24) = a3;
  std::vector<re::AudioPlayerComponentAction *>::push_back[abi:nn200100](this + 376, v13);
}

float re::ecs2::AudioPlayerComponent::playbackSpeed(re::ecs2::AudioPlayerComponent *this, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = re::ecs2::AudioPlayerComponent::sourceStateForToken(this, a2);
  if (v4)
  {
    return *(v4 + 86);
  }

  v6 = *re::audioLogObjects(0);
  v5 = 0.0;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = *(this + 44);
    if (!v8)
    {
      v8 = *(this + 50);
    }

    v9 = 134218240;
    v10 = v8;
    v11 = 2048;
    v12 = a2;
    _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "AudioPlayerComponent::playbackSpeed() (entityID=%llu) cannot access state for unknown playback token %llu.", &v9, 0x16u);
  }

  return v5;
}

void re::ecs2::AudioPlayerComponent::setPlaybackSpeed(re::ecs2::AudioPlayerComponent **this, uint64_t a2, float a3)
{
  v17 = *MEMORY[0x1E69E9840];
  canModifyState = re::ecs2::AudioPlayerComponent::canModifyState(this[2]);
  if (canModifyState)
  {
    v7 = re::ecs2::AudioPlayerComponent::sourceStateForToken(this, a2);
    if (v7 && *(v7 + 752) != 1)
    {
      *(v7 + 86) = a3;
      v11 = *(v7 + 91);
      if (CMTimebaseGetRate(v11) != 0.0)
      {

        CMTimebaseSetRate(v11, a3);
      }
    }

    else
    {
      v8 = *re::audioLogObjects(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = this[44];
        if (!v9)
        {
          v9 = this[50];
        }

        v13 = 134218240;
        v14 = v9;
        v15 = 2048;
        v16 = a2;
        v10 = "AudioPlayerComponent::setPlaybackSpeed() (entityID=%llu) cannot access state for unknown playback token %llu.";
LABEL_17:
        _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, v10, &v13, 0x16u);
      }
    }
  }

  else
  {
    v8 = *re::audioLogObjects(canModifyState);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = this[44];
      if (!v12)
      {
        v12 = this[50];
      }

      v13 = 134218240;
      v14 = v12;
      v15 = 2048;
      v16 = a2;
      v10 = "AudioPlayerComponent::setPlaybackSpeed() (entityID=%llu) cannot modify state for token %llu because it is not owned.";
      goto LABEL_17;
    }
  }
}

void re::ecs2::AudioPlayerComponent::overrideInputMode(re *a1, uint64_t a2, char a3)
{
  v12 = a2;
  v3 = *(a1 + 2);
  if (!v3)
  {
    v8 = *re::audioLogObjects(a1);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    LOWORD(v11) = 0;
    v9 = "cannot override input mode on component that does not have entity";
LABEL_9:
    _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, v9, &v11, 2u);
    return;
  }

  v5 = re::ecs2::EntityComponentCollection::getOrAdd((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  if (!v5)
  {
    v8 = *re::audioLogObjects(0);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    LOWORD(v11) = 0;
    v9 = "cannot override input mode b/c failed to create transient component";
    goto LABEL_9;
  }

  v6 = v5;
  v7 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v5 + 40, &v12);
  if (v7)
  {
    *v7 = a3;
  }

  else
  {
    HIDWORD(v11) = 6553601;
    LOBYTE(v11) = a3;
    re::HashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v6 + 40, &v12, &v11);
  }

  v10 = *(v3 + 216);
  if (v10)
  {
    re::ecs2::NetworkComponent::markDirty(v10, v6);
  }
}

uint64_t re::HashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, void *a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v10) + 16;
  }

  v7 = re::HashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v10, v9);
  *(v7 + 8) = *a2;
  *(v7 + 16) = *a3;
  result = v7 + 16;
  ++*(a1 + 40);
  return result;
}

float re::ecs2::AudioPlayerComponent::reverbSendLevel(re::ecs2::AudioPlayerComponent *this, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v15 = a2;
  v3 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 32, &v15);
  if (v3)
  {
    return *(v3 + 72);
  }

  v5 = *re::audioLogObjects(0);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    v14 = *(this + 44);
    if (!v14)
    {
      v14 = *(this + 50);
    }

    *buf = 134218240;
    *&buf[4] = v14;
    *&buf[12] = 2048;
    *&buf[14] = v15;
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "AudioPlayerComponent::reverbSendLevel() (entityID=%llu) cannot access state for unknown playback token %llu.", buf, 0x16u);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0uLL;
  memset(v25, 0, sizeof(v25));
  v17 = 0u;
  memset(buf, 0, sizeof(buf));
  v18 = 9;
  v19 = 1065353216;
  v20 = 0uLL;
  v21 = 0x3F80000000000000uLL;
  __asm { FMOV            V0.2S, #1.0 }

  v22 = _D0;
  v23 = 0;
  v24 = 1065353216;
  LOBYTE(v25[5]) = 0;
  v32 = 0;
  v27 = 0uLL;
  v12 = re::DynamicString::setCapacity(&v26, 0);
  *(&v28 + 4) = 0x3E051EB800000000;
  LODWORD(v28) = 1;
  HIDWORD(v28) = 1106247680;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  re::DynamicString::setCapacity(&v30, 0);
  LOWORD(v32) = 0;
  v4 = *(&v20 + 2);
  if (v30)
  {
    if (BYTE8(v30))
    {
      (*(*v30 + 40))();
    }

    v30 = 0u;
    v31 = 0u;
  }

  if (v26)
  {
    if (BYTE8(v26))
    {
      (*(*v26 + 40))();
    }

    v26 = 0u;
    v27 = 0u;
  }

  if (LOBYTE(v25[0]) == 1 && v25[1])
  {
    if (v25[2])
    {
      (*(*v25[1] + 40))();
    }

    memset(&v25[1], 0, 32);
  }

  re::AssetHandle::~AssetHandle(&buf[24]);
  return v4;
}

void re::ecs2::AudioPlayerComponent::setReverbSendLevel(re::ecs2::AudioPlayerComponent **this, uint64_t a2, float a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = a2;
  canModifyState = re::ecs2::AudioPlayerComponent::canModifyState(this[2]);
  if ((canModifyState & 1) == 0)
  {
    v8 = *re::audioLogObjects(canModifyState);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v9 = this[44];
    if (!v9)
    {
      v9 = this[50];
    }

    *buf = 134218240;
    v16 = v9;
    v17 = 2048;
    v18 = a2;
    v10 = "AudioPlayerComponent::setReverbSendLevel() (entityID=%llu) cannot modify state for token %llu because it is not owned.";
    v11 = v8;
LABEL_13:
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v10, buf, 0x16u);
    return;
  }

  v7 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet((this + 4), &v14);
  if (v7)
  {
    *(v7 + 72) = a3;
    return;
  }

  v12 = *re::audioLogObjects(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = this[44];
    if (!v13)
    {
      v13 = this[50];
    }

    *buf = 134218240;
    v16 = v13;
    v17 = 2048;
    v18 = v14;
    v10 = "AudioPlayerComponent::setReverbSendLevel() (entityID=%llu) cannot modify state for unknown playback token %llu.";
    v11 = v12;
    goto LABEL_13;
  }
}

float re::ecs2::AudioPlayerComponent::directSendLevel(re::ecs2::AudioPlayerComponent *this, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v15 = a2;
  v3 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 32, &v15);
  if (v3)
  {
    return *(v3 + 88);
  }

  v5 = *re::audioLogObjects(0);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    v14 = *(this + 44);
    if (!v14)
    {
      v14 = *(this + 50);
    }

    *buf = 134218240;
    *&buf[4] = v14;
    *&buf[12] = 2048;
    *&buf[14] = v15;
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "AudioPlayerComponent::directSendLevel() (entityID=%llu) cannot access state for unknown playback token %llu.", buf, 0x16u);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0uLL;
  memset(v25, 0, sizeof(v25));
  v17 = 0u;
  memset(buf, 0, sizeof(buf));
  v18 = 9;
  v19 = 1065353216;
  v20 = 0uLL;
  v21 = 0x3F80000000000000uLL;
  __asm { FMOV            V0.2S, #1.0 }

  v22 = _D0;
  v23 = 0;
  v24 = 1065353216;
  LOBYTE(v25[5]) = 0;
  v32 = 0;
  v27 = 0uLL;
  v12 = re::DynamicString::setCapacity(&v26, 0);
  *(&v28 + 4) = 0x3E051EB800000000;
  LODWORD(v28) = 1;
  HIDWORD(v28) = 1106247680;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  re::DynamicString::setCapacity(&v30, 0);
  LOWORD(v32) = 0;
  v4 = *(&v21 + 2);
  if (v30)
  {
    if (BYTE8(v30))
    {
      (*(*v30 + 40))();
    }

    v30 = 0u;
    v31 = 0u;
  }

  if (v26)
  {
    if (BYTE8(v26))
    {
      (*(*v26 + 40))();
    }

    v26 = 0u;
    v27 = 0u;
  }

  if (LOBYTE(v25[0]) == 1 && v25[1])
  {
    if (v25[2])
    {
      (*(*v25[1] + 40))();
    }

    memset(&v25[1], 0, 32);
  }

  re::AssetHandle::~AssetHandle(&buf[24]);
  return v4;
}

void re::ecs2::AudioPlayerComponent::setDirectSendLevel(re::ecs2::AudioPlayerComponent **this, uint64_t a2, float a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = a2;
  canModifyState = re::ecs2::AudioPlayerComponent::canModifyState(this[2]);
  if ((canModifyState & 1) == 0)
  {
    v8 = *re::audioLogObjects(canModifyState);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v9 = this[44];
    if (!v9)
    {
      v9 = this[50];
    }

    *buf = 134218240;
    v16 = v9;
    v17 = 2048;
    v18 = a2;
    v10 = "AudioPlayerComponent::setDirectSendLevel() (entityID=%llu) cannot modify state for token %llu because it is not owned.";
    v11 = v8;
LABEL_13:
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v10, buf, 0x16u);
    return;
  }

  v7 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet((this + 4), &v14);
  if (v7)
  {
    *(v7 + 88) = a3;
    return;
  }

  v12 = *re::audioLogObjects(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = this[44];
    if (!v13)
    {
      v13 = this[50];
    }

    *buf = 134218240;
    v16 = v13;
    v17 = 2048;
    v18 = v14;
    v10 = "AudioPlayerComponent::setDirectSendLevel() (entityID=%llu) cannot modify state for unknown playback token %llu.";
    v11 = v12;
    goto LABEL_13;
  }
}

uint64_t re::ecs2::AudioPlayerComponent::deferToSystemAcousticTuning(re::ecs2::AudioPlayerComponent *this, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v3 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 32, &v8);
  if (v3)
  {
    v4 = *(v3 + 272);
  }

  else
  {
    v5 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(this + 44);
      if (!v7)
      {
        v7 = *(this + 50);
      }

      *buf = 134218240;
      v10 = v7;
      v11 = 2048;
      v12 = v8;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "AudioPlayerComponent::deferToSystemAcousticTuning() (entityID=%llu) cannot access deferToSystemAcousticTuning for unknown playback token %llu.", buf, 0x16u);
    }

    v4 = 0;
  }

  return v4 & 1;
}

void re::ecs2::AudioPlayerComponent::setDeferToSystemAcousticTuning(re::ecs2::AudioPlayerComponent **this, uint64_t a2, char a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = a2;
  canModifyState = re::ecs2::AudioPlayerComponent::canModifyState(this[2]);
  if ((canModifyState & 1) == 0)
  {
    v8 = *re::audioLogObjects(canModifyState);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v9 = this[44];
    if (!v9)
    {
      v9 = this[50];
    }

    *buf = 134218240;
    v16 = v9;
    v17 = 2048;
    v18 = a2;
    v10 = "AudioPlayerComponent::setDeferToSystemAcousticTuning() (entityID=%llu) cannot modify deferToSystemAcousticTuning for token %llu because it is not owned.";
    v11 = v8;
LABEL_13:
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v10, buf, 0x16u);
    return;
  }

  v7 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet((this + 4), &v14);
  if (v7)
  {
    *(v7 + 272) = a3;
    return;
  }

  v12 = *re::audioLogObjects(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = this[44];
    if (!v13)
    {
      v13 = this[50];
    }

    *buf = 134218240;
    v16 = v13;
    v17 = 2048;
    v18 = v14;
    v10 = "AudioPlayerComponent::setDeferToSystemAcousticTuning() (entityID=%llu) cannot modify deferToSystemAcousticTuning for unknown playback token %llu.";
    v11 = v12;
    goto LABEL_13;
  }
}

double re::ecs2::AudioPlayerComponent::currentLinearGainForToken(re::audio **this, uint64_t a2)
{
  if (!re::ecs2::AudioPlayerComponent::sourceStateForToken(this, a2))
  {
    return 0.0;
  }

  AudioServiceForEntity = re::audio::getAudioServiceForEntity(this[2], v3);
  if (!AudioServiceForEntity)
  {
    return 0.0;
  }

  v5 = *(*AudioServiceForEntity + 336);

  v5();
  return result;
}

void re::ecs2::AudioPlayerComponent::setParameterFade(uint64_t a1, uint64_t a2, uint64_t a3, float a4, float a5)
{
  v17 = *MEMORY[0x1E69E9840];
  canModifyState = re::ecs2::AudioPlayerComponent::canModifyState(*(a1 + 16));
  if (canModifyState)
  {
    v11 = *(a3 + 16) == 0.0 && *(a2 + 4) == a4;
    v12 = 0.0;
    if (!v11)
    {
      v12 = a5;
    }

    *(a2 + 8) = v12;
    *(a2 + 4) = a4;
    ++*(a2 + 16);
    if (v12 <= 0.0)
    {
      *a2 = a4;
      *(a2 + 8) = 0;
      *(a3 + 4) = 1;
    }

    else if ((*(a3 + 4) & 1) == 0)
    {
      *a2 = a4;
    }
  }

  else
  {
    v13 = *re::audioLogObjects(canModifyState);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 352);
      if (!v14)
      {
        v14 = *(a1 + 400);
      }

      v15 = 134217984;
      v16 = v14;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "AudioPlayerComponent::setComponentFade (entityID=%llu) cannot modify state because entity is not owned", &v15, 0xCu);
    }
  }
}

void re::ecs2::AudioPlayerComponent::fadeToGain(re::ecs2::AudioPlayerComponent **this, unint64_t a2, float a3, double a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = a2;
  canModifyState = re::ecs2::AudioPlayerComponent::canModifyState(this[2]);
  if ((canModifyState & 1) == 0)
  {
    v14 = *re::audioLogObjects(canModifyState);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v15 = this[44];
    if (!v15)
    {
      v15 = this[50];
    }

    *buf = 134218240;
    v23 = v15;
    v24 = 2048;
    v25 = a2;
    v16 = "AudioPlayerComponent::fadeToGain() (entityID=%llu) cannot modify state for token %llu because it is not owned.";
    v17 = v14;
LABEL_23:
    _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, v16, buf, 0x16u);
    return;
  }

  v9 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet((this + 4), &v21);
  if (!v9)
  {
    v18 = *re::audioLogObjects(0);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v19 = this[44];
    if (!v19)
    {
      v19 = this[50];
    }

    *buf = 134218240;
    v23 = v19;
    v24 = 2048;
    v25 = v21;
    v16 = "AudioPlayerComponent::fadeToGain() (entityID=%llu) cannot modify state for unknown playback token %llu.";
    v17 = v18;
    goto LABEL_23;
  }

  v10 = v9;
  v11 = 4.0;
  if (a3 <= 4.0)
  {
    v11 = a3;
  }

  if (a3 >= 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  if (*(v9 + 100) == v12 && *(v9 + 112) == 0.0)
  {
    a4 = *(v9 + 112);
  }

  *(v9 + 112) = a4;
  *(v9 + 100) = v12;
  ++*(v9 + 104);
  if (a4 <= 0.0)
  {
    *(v9 + 96) = v12;
    v20 = re::ecs2::AudioPlayerComponent::sourceStateForToken(this, v21);
    if (v20)
    {
      *(v20 + 324) = 1;
      *(v10 + 112) = 0;
    }
  }

  else
  {
    v13 = re::ecs2::AudioPlayerComponent::sourceStateForToken(this, v21);
    if (!v13 || (*(v13 + 324) & 1) == 0)
    {
      *(v10 + 96) = v12;
    }
  }
}

void re::ecs2::AudioPlayerComponent::doFade(re *a1, int a2, uint64_t a3, float a4, double a5)
{
  if (a2 == 2)
  {
    v12 = re::globalAllocators(a1);
    v10 = (*(*v12[2] + 32))(v12[2], 32, 8);
    *v10 = 0u;
    *(v10 + 16) = 0u;
    v15 = v10;
    v11 = 6;
  }

  else if (a2 == 1)
  {
    v9 = re::globalAllocators(a1);
    v10 = (*(*v9[2] + 32))(v9[2], 32, 8);
    *v10 = 0u;
    *(v10 + 16) = 0u;
    v15 = v10;
    v11 = 5;
  }

  else
  {
    v13 = re::globalAllocators(a1);
    v10 = (*(*v13[2] + 32))(v13[2], 32, 8);
    *v10 = 0u;
    *(v10 + 16) = 0u;
    v15 = v10;
    v11 = 3;
  }

  *v10 = v11;
  *(v10 + 8) = a3;
  v14 = a5;
  *(v10 + 16) = a4;
  *(v10 + 20) = v14;
  std::vector<re::AudioPlayerComponentAction *>::push_back[abi:nn200100](a1 + 376, &v15);
}

BOOL re::ecs2::AudioPlayerComponent::isPlaying(re::ecs2::AudioPlayerComponent *this, uint64_t a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 0;
  }

  if ((*(v2 + 304) & 1) == 0)
  {
    return 0;
  }

  v6 = re::ecs2::AudioPlayerComponent::sourceStateForToken(this, a2);
  return v6 && *(v6 + 189) == 2 || re::ecs2::AudioPlayerComponent::playbackStateForToken(this, a2) == 1;
}

uint64_t re::ecs2::AudioPlayerComponent::playbackStateForToken(re::ecs2::AudioPlayerComponent *this, uint64_t a2)
{
  v3 = a2;
  result = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 80, &v3);
  if (result)
  {
    if (*result)
    {
      return playbackStateFromTimebase(*(*result + 728));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL re::ecs2::AudioPlayerComponent::isAnythingPlaying(re::ecs2::AudioPlayerComponent *this)
{
  v2 = *(this + 28);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 12);
    while (1)
    {
      v5 = *v4;
      v4 += 8;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 28);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v3 == v2)
  {
    return 0;
  }

  while (1)
  {
    result = re::ecs2::AudioPlayerComponent::isPlaying(this, *(*(this + 12) + 32 * v3 + 8));
    if (result)
    {
      return 1;
    }

    v7 = *(this + 28);
    if (v7 <= v3 + 1)
    {
      v7 = v3 + 1;
    }

    while (v7 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 12) + 32 * v3) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v3) = v7;
LABEL_17:
    if (v3 == v2)
    {
      return result;
    }
  }
}

uint64_t re::ecs2::AudioPlayerComponent::forEachToken(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 64);
  if (v4)
  {
    v5 = 0;
    v6 = *(result + 48);
    while ((*v6 & 0x80000000) == 0)
    {
      v6 += 76;
      if (v4 == ++v5)
      {
        v5 = *(result + 64);
        break;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if (v4 != v5)
  {
    LODWORD(v7) = v5;
    do
    {
      LODWORD(v8) = v7;
      result = std::function<void ()(unsigned long long)>::operator()(a2, *(*(v3 + 48) + 304 * v5 + 8));
      v9 = *(v3 + 64);
      if (v9 <= v8 + 1)
      {
        v7 = (v8 + 1);
      }

      else
      {
        v7 = v9;
      }

      while (v7 - 1 != v8)
      {
        v8 = (v8 + 1);
        if ((*(*(v3 + 48) + 304 * v8) & 0x80000000) != 0)
        {
          v5 = v8;
          LODWORD(v7) = v8;
          goto LABEL_16;
        }
      }

      v5 = v7;
LABEL_16:
      ;
    }

    while (v9 != v7);
  }

  return result;
}

uint64_t std::function<void ()(unsigned long long)>::operator()(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v8);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return re::ecs2::AudioPlayerComponent::setParameterValue(v4, v5, v6, v7);
}

void re::ecs2::AudioPlayerComponent::setParameterValue(re::ecs2::AudioPlayerComponent **this, uint64_t a2, uint64_t a3, float a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v12 = a4;
  canModifyState = re::ecs2::AudioPlayerComponent::canModifyState(this[2]);
  if ((canModifyState & 1) == 0)
  {
    v8 = *re::audioLogObjects(canModifyState);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v9 = this[44];
    if (!v9)
    {
      v9 = this[50];
    }

    *buf = 134218240;
    v15 = v9;
    v16 = 2048;
    v17 = a2;
    v10 = "AudioPlayerComponent::setParameterValue() (entityID=%llu) cannot modify state for token %llu because it is not owned.";
LABEL_13:
    _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, v10, buf, 0x16u);
    return;
  }

  v7 = re::ecs2::AudioPlayerComponent::sourceStateForToken(this, a2);
  if (v7)
  {
    re::HashTable<unsigned long long,float,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(v7 + 536, &v13, &v12);
    return;
  }

  v8 = *re::audioLogObjects(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11 = this[44];
    if (!v11)
    {
      v11 = this[50];
    }

    *buf = 134218240;
    v15 = v11;
    v16 = 2048;
    v17 = a2;
    v10 = "AudioPlayerComponent::setParameterValue() (entityID=%llu) cannot modify state for unknown playback token %llu.";
    goto LABEL_13;
  }
}

float re::HashTable<unsigned long long,float,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(uint64_t a1, uint64_t *a2, float *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v10, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  v7 = HIDWORD(v11);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<unsigned long long,float,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v11, v10);
    *(v8 + 8) = *a2;
    result = *a3;
    *(v8 + 16) = *a3;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    result = *a3;
    *(*(a1 + 16) + 32 * v7 + 16) = *a3;
  }

  return result;
}

float re::ecs2::AudioPlayerComponent::getParameterValue(re::ecs2::AudioPlayerComponent *this, uint64_t a2, unint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  *v13 = a2;
  v6 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 80, v13);
  if (v6 && (v7 = *v6) != 0)
  {
    v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
    re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v13, v7 + 536, a3, v8 ^ (v8 >> 31));
    v9 = 0.0;
    if (v14[0] != 0x7FFFFFFF)
    {
      return *(*(v7 + 552) + 32 * v14[0] + 16);
    }
  }

  else
  {
    v10 = *re::audioLogObjects(v6);
    v9 = 0.0;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = *(this + 44);
      if (!v12)
      {
        v12 = *(this + 50);
      }

      *v13 = 134218240;
      *&v13[4] = v12;
      LOWORD(v14[0]) = 2048;
      *(v14 + 2) = a2;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "AudioPlayerComponent::getParameterValue() (entityID=%llu) cannot access state for unknown playback token %llu.", v13, 0x16u);
    }
  }

  return v9;
}

void re::ecs2::AudioPlayerComponent::doDestroy(re::audio **this, uint64_t a2)
{
  v2 = a2;
  v48 = *MEMORY[0x1E69E9840];
  v43 = a2;
  v4 = *re::audioLogObjects(this);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = this[44];
    if (!v5)
    {
      v5 = this[50];
    }

    v6 = v4;
    v7 = this[2];
    if (!v7)
    {
      goto LABEL_10;
    }

    v8 = this[2];
    do
    {
      v9 = v8;
      v8 = *(v8 + 4);
    }

    while (v8);
    if (*(v9 + 3))
    {
      do
      {
        v10 = v7;
        v7 = *(v7 + 4);
      }

      while (v7);
      v11 = *(*(*(v10 + 3) + 104) + 288) >> 1;
    }

    else
    {
LABEL_10:
      v11 = -1;
    }

    *buf = 134218496;
    *&buf[4] = v2;
    *v45 = 2048;
    *&v45[2] = v5;
    v46 = 2048;
    v47 = v11;
    _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "AudioPlayerComponent::doDestroy(token=%llu) (entityID=%llu, sceneID=%llu)", buf, 0x20u);
  }

  v12 = re::ecs2::AudioPlayerComponent::sourceStateForToken(this, v2);
  AudioServiceForEntity = re::audio::getAudioServiceForEntity(this[2], v13);
  v15 = AudioServiceForEntity;
  if (v12)
  {
    v16 = &v43;
    if (*(v12 + 24))
    {
      v16 = (v12 + 32);
    }

    v42 = *v16;
    v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v42 ^ (v42 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v42 ^ (v42 >> 30))) >> 27));
    re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>((this + 55), &v42, v17 ^ (v17 >> 31), buf);
    v18 = *v45;
    if (*v45 != 0x7FFFFFFF)
    {
      v19 = this[57];
      v20 = *(v19 + 8 * *v45) & 0x7FFFFFFF;
      if (*&v45[4] == 0x7FFFFFFF)
      {
        *(this[56] + *&buf[8]) = v20;
        v18 = *v45;
      }

      else
      {
        *(v19 + 8 * *&v45[4]) = *(v19 + 8 * *&v45[4]) & 0x80000000 | v20;
      }

      *(v19 + 8 * v18) = *(this + 119);
      *(this + 119) = v18;
      --*(this + 117);
      ++*(this + 120);
    }

    if (v15)
    {
      *(v12 + 60) = -1;
      (*(*v15 + 304))(v15, v12);
      if (!*(v12 + 9) && (*(v12 + 33) || *(v12 + 34)))
      {
        (*(*v15 + 648))(v15, v2);
      }
    }

    TimebaseService = re::ecs2::AudioPlayerComponent::getTimebaseService(this[2]);
    v23 = this[2];
    if (v23)
    {
      v24 = TimebaseService;
      do
      {
        v25 = v23;
        v23 = *(v23 + 4);
      }

      while (v23);
      if (TimebaseService)
      {
        v26 = *(v25 + 3);
        if (v26)
        {
          buf[0] = 0;
          SceneDataEntity = makeSceneDataEntity(v26, buf, 1, re::ecs2::Scene::kSharedSceneDataEntityID, 1);
          v28 = re::ecs2::EntityComponentCollection::get((SceneDataEntity + 48), re::ecs2::ComponentImpl<re::ecs2::TimebaseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          if (v28)
          {
            (*(*v24 + 72))(v24, *(v12 + 91), v28 + 32);
          }
        }
      }
    }

    *(v12 + 64) = 0;
    re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove((this + 10), &v43);
    v2 = v43;
  }

  else
  {
    v21 = *re::audioLogObjects(AudioServiceForEntity);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v2;
      _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "Removing a source state that doesn't exist! (%llu)", buf, 0xCu);
    }
  }

  *buf = v2;
  v29 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet((this + 4), buf);
  v30 = v29;
  v31 = this[2];
  if (v31 && (v32 = *(v31 + 27)) != 0)
  {
    v29 = re::ecs2::NetworkComponent::owningProcessType(*(v31 + 27));
    if (v30 && !v29)
    {
      *(v30 + 8) = 0;
      re::ecs2::NetworkComponent::markDirty(v32, this);
    }
  }

  else if (v29)
  {
    *(v29 + 8) = 0;
  }

  v33 = this[47];
  v34 = this[48];
  if (v33 != v34)
  {
    v35 = v43;
    while (1)
    {
      v36 = *v33;
      if (*(*v33 + 8) == v43)
      {
        break;
      }

      v33 = (v33 + 8);
      if (v33 == v34)
      {
        v33 = this[48];
        goto LABEL_54;
      }
    }

    v37 = re::globalAllocators(v29);
    v38 = (*(*v37[2] + 40))(v37[2], v36);
    if (v33 != v34)
    {
      for (i = (v33 + 8); i != v34; i = (i + 8))
      {
        v40 = *i;
        if (*(*i + 8) == v35)
        {
          v41 = re::globalAllocators(v38);
          v38 = (*(*v41[2] + 40))(v41[2], v40);
        }

        else
        {
          *v33 = v40;
          v33 = (v33 + 8);
        }
      }
    }
  }

LABEL_54:
  if (v33 != this[48])
  {
    this[48] = v33;
  }

  if (v15)
  {
    (*(*v15 + 592))(v15, v43);
    (*(*v15 + 704))(v15, v43, 0);
  }
}

void re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v12);
  v4 = v14;
  if (v14 != 0x7FFFFFFF)
  {
    v5 = *(a1 + 16);
    v6 = *(v5 + 32 * v14) & 0x7FFFFFFF;
    if (v15 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v13) = v6;
      v4 = v14;
    }

    else
    {
      *(v5 + 32 * v15) = *(v5 + 32 * v15) & 0x80000000 | v6;
    }

    v7 = v4;
    v8 = (v5 + 32 * v4);
    v9 = *v8;
    if (*v8 < 0)
    {
      v9 &= ~0x80000000;
      *v8 = v9;
      v10 = *(v8 + 2);
      if (v10)
      {

        *(v8 + 2) = 0;
        v7 = v14;
        v5 = *(a1 + 16);
        v9 = *(v5 + 32 * v14);
      }
    }

    v11 = *(a1 + 40);
    *(v5 + 32 * v7) = *(a1 + 36) | v9 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v7;
    *(a1 + 40) = v11 + 1;
  }
}

uint64_t playbackStateFromTimebase(OpaqueCMTimebase *a1)
{
  if (!a1)
  {
    return 13;
  }

  if (CMTimebaseGetEffectiveRate(a1) != 0.0)
  {
    return 1;
  }

  CMTimebaseGetTime(&time, a1);
  if (CMTimeGetSeconds(&time) == 0.0)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

BOOL re::ecs2::AudioPlayerComponent::isValid(re::ecs2::AudioPlayerComponent *this, unint64_t a2)
{
  if (!*(this + 4))
  {
    return 0;
  }

  v2 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v3 = *(*(this + 5) + 4 * ((v2 ^ (v2 >> 31)) % *(this + 14)));
  if (v3 == 0x7FFFFFFF)
  {
    return 0;
  }

  v5 = *(this + 6);
  v6 = 0x7FFFFFFFLL;
  while (*(v5 + 304 * v3 + 8) != a2)
  {
    v3 = *(v5 + 304 * v3) & 0x7FFFFFFF;
    if (v3 == 0x7FFFFFFF)
    {
      return v6 != 0x7FFFFFFF;
    }
  }

  v6 = v3;
  return v6 != 0x7FFFFFFF;
}

void re::ecs2::AudioPlayerComponent::applyFadingParameterChangesForStateChange(re *a1, uint64_t a2, float *a3, uint64_t a4, int a5)
{
  v5 = *(a4 + 16);
  if (!v5)
  {
    return;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = *(a4 + 32);
  v15 = &v14[2 * v5];
  v16 = 0.0;
  v17 = 1.0;
  v18 = 1.0;
  do
  {
    v20 = *v14;
    v19 = v14[1];
    v21 = *(*v14 + 4);
    v22 = *(*v14 + 16);
    if (*v19 == v22)
    {
      goto LABEL_39;
    }

    if (*v20 != v21 || *(v20 + 8) == 0.0)
    {
      v11 = 1;
    }

    v23 = *(v20 + 8);
    if (v23 <= 0.0)
    {
LABEL_39:
      if (*v20 != v21)
      {
        goto LABEL_15;
      }

      v24 = *(v19 + 16);
      if (v24 <= 0.0)
      {
        goto LABEL_15;
      }

      ++v13;
      v16 = v24;
      if (*v19 == v22)
      {
        goto LABEL_15;
      }

      v23 = *(v20 + 8);
    }

    else
    {
      ++v13;
      v16 = *(v19 + 16);
    }

    v25 = v23 <= 0.0;
    v26 = v23;
    if (!v25)
    {
      v16 = v26;
      ++v12;
    }

LABEL_15:
    v18 = v18 * v21;
    v17 = v17 * *(v19 + 8);
    v14 += 2;
  }

  while (v14 != v15);
  if (v11)
  {
    re::ecs2::AudioPlayerComponent::doFade(a1, a5, a2, v17, 0.0);
    if (v13 == 1 && !v12)
    {
      goto LABEL_34;
    }
  }

  if (v12 == 1 && v13 == 1)
  {
    goto LABEL_34;
  }

  if (a3 && v13 >= 2)
  {
    v27 = *(a4 + 16);
    v28 = *a3;
    if (v27)
    {
      v29 = 0;
      v30 = 16 * v27;
      v31 = *(a4 + 32) + 8;
      v32 = 1.0;
      do
      {
        v33 = *(*v31 + 16);
        if (v33 >= v28)
        {
          v16 = v33;
          ++v29;
          v34 = *(*v31 + 8) + (v28 * *(*v31 + 12));
        }

        else
        {
          v34 = *(*(v31 - 8) + 4);
        }

        v32 = v32 * v34;
        v31 += 16;
        v30 -= 16;
      }

      while (v30);
      if (v29 == 1)
      {
LABEL_34:

        re::ecs2::AudioPlayerComponent::doFade(a1, a5, a2, v18, v16);
        return;
      }
    }

    else
    {
      v32 = 1.0;
    }

    v16 = *a3;
    v18 = v32;
    goto LABEL_34;
  }
}

CFDictionaryRef re::AudioSourceState::copyTimebaseUserInfo(re::AudioSourceState *this)
{
  if (this)
  {
    return CFRetain(this);
  }

  else
  {
    return CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, 0, 0);
  }
}

void re::AudioSourceState::setTimebaseUserInfo(re::AudioSourceState *this, const __CFDictionary *a2)
{
  v3 = *(this + 92);
  if (a2)
  {
    Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], a2);
  }

  else
  {
    Copy = 0;
  }

  *(this + 92) = Copy;
  if (v3)
  {

    CFRelease(v3);
  }
}

void ___Z66AudioPlayerComponentHandleTimebaseTimeJumpedOrEffectiveRateChangedP22__CFNotificationCenterPvPK10__CFStringPKvPK14__CFDictionary_block_invoke(uint64_t a1)
{
  v2 = re::AudioSourceState::copyTimebaseUserInfo(*(*(a1 + 32) + 736));
  AudioPlayerComponentHandleTimebaseTimeJumpedOrEffectiveRateChanged(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), v2);

  CFRelease(v2);
}

void re::ecs2::AudioPlayerComponent::setComponentDirectivityMode(uint64_t a1, int a2)
{
  *(a1 + 168) = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = re::ecs2::EntityComponentCollection::get((v2 + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (v4)
    {
      *(v4 + 40) = a2;
    }
  }

  else
  {
    v5 = *re::audioLogObjects(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Unable to set directivity on audio player component with no entity.", v6, 2u);
    }
  }
}

void re::ecs2::AudioPlayerComponent::setComponentDirectivityFocus(re::ecs2::AudioPlayerComponent *this, float a2)
{
  *(this + 43) = a2;
  v2 = *(this + 2);
  if (v2)
  {
    v4 = re::ecs2::EntityComponentCollection::get((v2 + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (v4)
    {
      *(v4 + 44) = *(this + 43);
    }
  }

  else
  {
    v5 = *re::audioLogObjects(this);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Unable to set directivity focus on audio player component with no entity.", v6, 2u);
    }
  }
}

void re::ecs2::AudioPlayerComponent::setComponentDirectivitySphericalCap(re::ecs2::AudioPlayerComponent *this, float a2, float a3)
{
  *(this + 44) = a2;
  *(this + 45) = a3;
  v3 = *(this + 2);
  if (v3)
  {
    v5 = re::ecs2::EntityComponentCollection::get((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (v5)
    {
      *(v5 + 48) = *(this + 22);
    }
  }

  else
  {
    v6 = *re::audioLogObjects(this);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Unable to set spherical cap directivity parameters on audio player component with no entity.", v7, 2u);
    }
  }
}

uint64_t re::ecs2::AudioPlayerComponent::getSizeOfAudioPlayerComponent(re::ecs2::AudioPlayerComponent *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  do
  {
    v3 = v1;
    v1 = *(v1 + 32);
  }

  while (v1);
  v4 = *(v3 + 24);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 56);
  if (!v5)
  {
    return 0;
  }

  v6 = (*(*v5 + 32))(v5);
  v7 = re::ServiceLocator::serviceOrNull<re::AssetService>(v6);
  v8 = *(this + 18);
  if (!v8)
  {
    return 0;
  }

  v9 = v7;
  v10 = 0;
  v11 = *(this + 20);
  v12 = 24 * v8;
  do
  {
    re::AssetHandle::AssetHandle(v14, v11);
    v10 += re::AssetManager::assetByteSize(v9, v14);
    re::AssetHandle::~AssetHandle(v14);
    v11 = (v11 + 24);
    v12 -= 24;
  }

  while (v12);
  return v10;
}

uint64_t re::ecs2::AudioPlayerComponent::copySizeWithPathOfAssetsInAudioComponent(re::ecs2::AudioPlayerComponent *this)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = *(this + 2);
  if (!v3)
  {
    goto LABEL_12;
  }

  do
  {
    v4 = v3;
    v3 = *(v3 + 32);
  }

  while (v3);
  v5 = *(v4 + 24);
  if (v5 && (v6 = *(v5 + 56)) != 0)
  {
    v7 = (*(*v6 + 32))(v6);
    v8 = re::ServiceLocator::serviceOrNull<re::AssetService>(v7);
    v9 = *(this + 18);
    if (v9)
    {
      v10 = v8;
      v11 = 0;
      v12 = *(this + 20);
      v13 = 24 * v9;
      do
      {
        re::AssetHandle::AssetHandle(v23, v12);
        v14 = MEMORY[0x1E696AEC0];
        v15 = re::AssetHandle::assetInfo(v23);
        if (v15[13])
        {
          v16 = v15[14];
        }

        else
        {
          v16 = v15 + 105;
        }

        v17 = [v14 stringWithCString:v16 encoding:4];
        v18 = re::AssetManager::assetByteSize(v10, v23);
        v11 += v18;
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v18];
        [v2 setObject:v19 forKey:v17];

        re::AssetHandle::~AssetHandle(v23);
        v12 = (v12 + 24);
        v13 -= 24;
      }

      while (v13);
    }

    else
    {
      v11 = 0;
    }

    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
    [v2 setObject:v21 forKey:@"TotalSize"];

    v20 = [v2 copy];
  }

  else
  {
LABEL_12:
    v20 = 0;
  }

  return v20;
}

uint64_t re::ecs2::AudioPlayerComponent::clearAllSourceStates(re::audio **this)
{
  re::ecs2::AudioPlayerComponent::doStopAll(this);
  v21 = 0u;
  v22 = 0u;
  v23 = 1065353216;
  v3 = *(this + 28);
  if (v3)
  {
    v4 = 0;
    v5 = this[12];
    while (1)
    {
      v6 = *v5;
      v5 = (v5 + 32);
      if (v6 < 0)
      {
        break;
      }

      if (v3 == ++v4)
      {
        LODWORD(v4) = *(this + 28);
        break;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 != v3)
  {
    do
    {
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(&v21, this[12] + 4 * v4 + 1);
      v7 = *(this + 28);
      if (v7 <= v4 + 1)
      {
        v7 = v4 + 1;
      }

      while (v7 - 1 != v4)
      {
        LODWORD(v4) = v4 + 1;
        if ((*(this[12] + 8 * v4) & 0x80000000) != 0)
        {
          goto LABEL_15;
        }
      }

      LODWORD(v4) = v7;
LABEL_15:
      ;
    }

    while (v4 != v3);
    for (i = v22; i; i = *i)
    {
      re::ecs2::AudioPlayerComponent::doDestroy(this, i[2]);
    }
  }

  v9 = this[2];
  if (!v9)
  {
    v10 = 0;
    goto LABEL_22;
  }

  v10 = v9[27];
  if (!v10)
  {
LABEL_22:
    v12 = 0;
    LOBYTE(v11) = 1;
    goto LABEL_23;
  }

  v11 = re::ecs2::NetworkComponent::owningProcessType(v9[27]) != 0;
  v9 = this[2];
  v12 = v11;
LABEL_23:
  if (re::audio::getAudioServiceForEntity(v9, v2))
  {
    AudioServiceForEntity = re::audio::getAudioServiceForEntity(this[2], v13);
    if ((((*(*AudioServiceForEntity + 568))(AudioServiceForEntity) | v12) & 1) == 0)
    {
      v15 = *(this + 16);
      if (v15)
      {
        v16 = 0;
        v17 = this[6];
        while ((*v17 & 0x80000000) == 0)
        {
          v17 = (v17 + 304);
          if (v15 == ++v16)
          {
            LODWORD(v16) = *(this + 16);
            break;
          }
        }
      }

      else
      {
        LODWORD(v16) = 0;
      }

      if (v16 != v15)
      {
        v18 = this[6];
        do
        {
          *(v18 + 38 * v16 + 8) = 4;
          if (v15 <= v16 + 1)
          {
            v19 = v16 + 1;
          }

          else
          {
            v19 = v15;
          }

          while (v19 - 1 != v16)
          {
            LODWORD(v16) = v16 + 1;
            if ((*(v18 + 76 * v16) & 0x80000000) != 0)
            {
              goto LABEL_40;
            }
          }

          LODWORD(v16) = v19;
LABEL_40:
          ;
        }

        while (v16 != v15);
      }
    }
  }

  if (!v11)
  {
    re::ecs2::Component::markDirty(this);
    re::ecs2::NetworkComponent::markDirty(v10, this);
  }

  return std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(&v21);
}

void re::ecs2::AudioPlayerComponent::markDirtyAndMarkDirtyForNetwork(re::ecs2::AudioPlayerComponent *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    re::ecs2::Component::markDirty(this);
    v3 = *(v1 + 216);
    if (v3)
    {

      re::ecs2::NetworkComponent::markDirty(v3, this);
    }
  }
}

void re::ecs2::AudioPlayerSystem::willAddSystemToECSService(re::ecs2::AudioPlayerSystem *this)
{
  v2 = *(this + 5);
  Instance = re::ecs2::AudioPlayerTelemetryReporter::getInstance(this);
  re::ecs2::AudioPlayerTelemetryReporter::initializeTimerWith(Instance, *(this + 28), this);
  if (v2)
  {
    v4 = (*(*v2 + 32))(v2);
    v5 = re::ServiceLocator::serviceOrNull<re::Engine>(v4);
    if (v5)
    {
      objc_storeStrong(this + 28, *(v5 + 55));
    }

    v6 = (*(*v2 + 32))(v2);
    *(this + 35) = re::ServiceLocator::serviceOrNull<re::AudioSceneService>(v6);
    v7 = (*(*v2 + 32))(v2);
    *(this + 36) = re::ServiceLocator::serviceOrNull<re::TimebaseService>(v7);
    v8 = (*(*v2 + 32))(v2);
    *(this + 37) = re::ServiceLocator::serviceOrNull<re::TransformService>(v8);
    *(this + 38) = (*(*v2 + 32))(v2);
  }
}

void re::ecs2::AudioPlayerSystem::willRemoveSystemFromECSService(re::ecs2::AudioPlayerSystem *this)
{
  re::ecs2::AudioPlayerTelemetryReporter::stopAndCleanupReporter(this);
  *(this + 38) = 0;
  *(this + 35) = 0;
  *(this + 36) = 0;
}

unint64_t *re::ecs2::AudioPlayerSystem::willAddSceneToECSService(unint64_t *this, re::EventBus **a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v23 = a2;
  if (a2)
  {
    v3 = this;
    v4 = re::ecs2::SceneComponentTable::get((a2 + 25), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v33 = v3;
    v34 = re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioPlayerSystem::didAddComponents,re::ecs2::AudioPlayerSystem>;
    v35 = 0;
    v36 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v4 + 8), &v33);
    v6 = a2[36];
    if (v6)
    {
      v31 = re::globalAllocators(v5)[2];
      v7 = (*(*v31 + 32))(v31, 32, 0);
      *v7 = &unk_1F5CE8F38;
      v7[1] = v3;
      v7[2] = re::ecs2::AudioPlayerSystem::didChangeAudioSourceComponent;
      v7[3] = 0;
      v32 = v7;
      v8 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v6, v30, re::ecs2::ComponentImpl<re::ecs2::SpatialAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
      v28 = re::globalAllocators(v8)[2];
      v9 = (*(*v28 + 32))(v28, 32, 0);
      *v9 = &unk_1F5CE8F38;
      v9[1] = v3;
      v9[2] = re::ecs2::AudioPlayerSystem::didChangeAudioSourceComponent;
      v9[3] = 0;
      v29 = v9;
      v10 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v6, v27, re::ecs2::ComponentImpl<re::ecs2::AmbientAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
      v25 = re::globalAllocators(v10)[2];
      v11 = (*(*v25 + 32))(v25, 32, 0);
      *v11 = &unk_1F5CE8F38;
      v11[1] = v3;
      v11[2] = re::ecs2::AudioPlayerSystem::didChangeAudioSourceComponent;
      v11[3] = 0;
      v26 = v11;
      re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v6, v24, re::ecs2::ComponentImpl<re::ecs2::ChannelAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
      operator new();
    }

    v12 = re::ecs2::SceneComponentTable::get((a2 + 25), re::ecs2::ComponentImpl<re::ecs2::ChannelAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v33 = v3;
    v34 = re::ecs2::SceneComponentCollection<re::ecs2::ChannelAudioComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioPlayerSystem::didAddChannelAudioComponents,re::ecs2::AudioPlayerSystem>;
    v35 = 0;
    v36 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::ChannelAudioComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::ChannelAudioComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::ChannelAudioComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v12 + 8), &v33);
    v13 = v23;
    v14 = re::ecs2::SceneComponentTable::get((v23 + 200), re::ecs2::ComponentImpl<re::ecs2::AmbientAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v33 = v3;
    v34 = re::ecs2::SceneComponentCollection<re::ecs2::AmbientAudioComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioPlayerSystem::didAddAmbientAudioComponents,re::ecs2::AudioPlayerSystem>;
    v35 = 0;
    v36 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AmbientAudioComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AmbientAudioComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AmbientAudioComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v14 + 8), &v33);
    v15 = re::ecs2::SceneComponentTable::get((v13 + 200), re::ecs2::ComponentImpl<re::ecs2::SpatialAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v33 = v3;
    v34 = re::ecs2::SceneComponentCollection<re::ecs2::SpatialAudioComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioPlayerSystem::didAddSpatialAudioComponents,re::ecs2::AudioPlayerSystem>;
    v35 = 0;
    v36 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::SpatialAudioComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::SpatialAudioComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::SpatialAudioComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v15 + 8), &v33);
    v33 = v3;
    v34 = re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioPlayerSystem::willRemoveComponents,re::ecs2::AudioPlayerSystem>;
    v35 = 0;
    v36 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v4 + 272), &v33);
    std::__hash_table<re::ecs2::Scene *,std::hash<re::ecs2::Scene *>,std::equal_to<re::ecs2::Scene *>,std::allocator<re::ecs2::Scene *>>::__emplace_unique_key_args<re::ecs2::Scene *,re::ecs2::Scene * const&>(v3 + 47, &v23);
    this = v3[35];
    if (this)
    {
      this = (*(*this + 16))(this, v23);
      if (this)
      {
        v16 = this;
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = ___ZN2re4ecs217AudioPlayerSystem24willAddSceneToECSServiceEPNS0_5SceneE_block_invoke;
        v22[3] = &__block_descriptor_40_e5_v8__0l;
        v22[4] = v23;
        v17 = (*(*this + 48))(this, v22);
        v21 = *(*(v23 + 13) + 288) >> 1;
        v33 = &v21;
        std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v3 + 42, v21)[3] = v17;
        v18 = *(*(v23 + 13) + 288) >> 1;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = ___ZN2re4ecs217AudioPlayerSystem24willAddSceneToECSServiceEPNS0_5SceneE_block_invoke_2;
        v20[3] = &__block_descriptor_40_e5_v8__0l;
        v20[4] = v23;
        (*(*v16 + 32))(v16, 513, v18, v20);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = ___ZN2re4ecs217AudioPlayerSystem24willAddSceneToECSServiceEPNS0_5SceneE_block_invoke_3;
        v19[3] = &__block_descriptor_56_e5_v8__0l;
        v19[4] = v23;
        v19[5] = v16;
        v19[6] = v18;
        return (*(*v16 + 32))(v16, 769, v18, v19);
      }
    }
  }

  return this;
}

uint64_t re::ecs2::AudioPlayerSystem::didChangeAudioSourceComponent(re *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3 != re::ecs2::ComponentImpl<re::ecs2::SpatialAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
  {
    if (v3 == re::ecs2::ComponentImpl<re::ecs2::AmbientAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AmbientAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (!v6)
      {
        return 0;
      }
    }

    else
    {
      if (v3 != re::ecs2::ComponentImpl<re::ecs2::ChannelAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
      {
        v4 = *re::audioLogObjects(a1);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          *v8 = 0;
          _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "[RE/ECS] [Update] AudioPlayerSystem should not be following any component updates other than for audio source components.", v8, 2u);
        }

        return 0;
      }

      v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ChannelAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (!v6)
      {
        return 0;
      }
    }

    re::ecs2::AmbientAudioComponent::syncStateToAudioPlayerComponent(v6);
    return 0;
  }

  v5 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v5)
  {
    re::ecs2::SpatialAudioComponent::syncStateToAudioPlayerComponent(v5);
  }

  return 0;
}

uint64_t ___ZN2re4ecs217AudioPlayerSystem24willAddSceneToECSServiceEPNS0_5SceneE_block_invoke(uint64_t a1)
{
  result = re::ecs2::SceneComponentTable::get((*(a1 + 32) + 200), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (result)
  {
    v2 = *(result + 384);
    if (v2)
    {
      v3 = *(result + 400);
      v4 = 8 * v2;
      do
      {
        v5 = *v3++;
        result = re::ecs2::AudioPlayerComponent::clearAllSourceStates(v5);
        v4 -= 8;
      }

      while (v4);
    }
  }

  return result;
}

void ___ZN2re4ecs217AudioPlayerSystem24willAddSceneToECSServiceEPNS0_5SceneE_block_invoke_2(uint64_t a1)
{
  v1 = re::ecs2::SceneComponentTable::get((*(a1 + 32) + 200), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v1)
  {
    v2 = *(v1 + 384);
    if (v2)
    {
      v3 = *(v1 + 400);
      v4 = &v3[v2];
      do
      {
        v5 = *v3;
        re::ecs2::AudioPlayerComponent::doStopAll(*v3);
        *(v5 + 92) = 0;
        v6 = *(v5 + 16);
        if (v6)
        {
          v7 = 0;
          v8 = *(v5 + 6);
          while ((*v8 & 0x80000000) == 0)
          {
            v8 += 76;
            if (v6 == ++v7)
            {
              LODWORD(v7) = *(v5 + 16);
              break;
            }
          }
        }

        else
        {
          LODWORD(v7) = 0;
        }

        if (v7 != v6)
        {
          v9 = *(v5 + 6);
          do
          {
            *(v9 + 304 * v7 + 80) = 0;
            if (v6 <= v7 + 1)
            {
              v10 = v7 + 1;
            }

            else
            {
              v10 = v6;
            }

            while (v10 - 1 != v7)
            {
              LODWORD(v7) = v7 + 1;
              if ((*(v9 + 304 * v7) & 0x80000000) != 0)
              {
                goto LABEL_19;
              }
            }

            LODWORD(v7) = v10;
LABEL_19:
            ;
          }

          while (v7 != v6);
        }

        v11 = *(v5 + 2);
        if (v11)
        {
          v12 = *(v11 + 216);
          if (v12)
          {
            if (!re::ecs2::NetworkComponent::owningProcessType(*(v11 + 216)))
            {
              re::ecs2::NetworkComponent::markDirty(v12, v5);
            }
          }
        }

        ++v3;
      }

      while (v3 != v4);
    }
  }
}

uint64_t ___ZN2re4ecs217AudioPlayerSystem24willAddSceneToECSServiceEPNS0_5SceneE_block_invoke_3(uint64_t a1)
{
  v2 = re::ecs2::SceneComponentTable::get((*(a1 + 32) + 200), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v2)
  {
    v3 = *(v2 + 384);
    if (v3)
    {
      v4 = *(v2 + 400);
      v5 = 8 * v3;
      do
      {
        v6 = *v4++;
        re::ecs2::AudioPlayerComponent::clearAllSourceStates(v6);
        v5 -= 8;
      }

      while (v5);
    }
  }

  v7 = *(**(a1 + 40) + 88);

  return v7();
}

uint64_t re::ecs2::AudioPlayerSystem::willRemoveSceneFromECSService(uint64_t this, re::ecs2::Scene *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v31 = a2;
  if (a2)
  {
    v3 = this;
    v4 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *&v32 = v3;
    *(&v32 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioPlayerSystem::didAddComponents,re::ecs2::AudioPlayerSystem>;
    v33 = 0;
    v34 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v4 + 8, &v32);
    *&v32 = v3;
    *(&v32 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioPlayerSystem::willRemoveComponents,re::ecs2::AudioPlayerSystem>;
    v33 = 0;
    v34 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v4 + 272, &v32);
    v5 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::ChannelAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    *&v32 = v3;
    *(&v32 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::ChannelAudioComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioPlayerSystem::didAddChannelAudioComponents,re::ecs2::AudioPlayerSystem>;
    v33 = 0;
    v34 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::ChannelAudioComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::ChannelAudioComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::ChannelAudioComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v5 + 8, &v32);
    v6 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::AmbientAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    *&v32 = v3;
    *(&v32 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AmbientAudioComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioPlayerSystem::didAddAmbientAudioComponents,re::ecs2::AudioPlayerSystem>;
    v33 = 0;
    v34 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AmbientAudioComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AmbientAudioComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AmbientAudioComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v6 + 8, &v32);
    v7 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::SpatialAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    *&v32 = v3;
    *(&v32 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::SpatialAudioComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioPlayerSystem::didAddSpatialAudioComponents,re::ecs2::AudioPlayerSystem>;
    v33 = 0;
    v34 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::SpatialAudioComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::SpatialAudioComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::SpatialAudioComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v7 + 8, &v32);
    v8 = re::HashBrown<re::ecs2::Scene *,std::vector<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::find((v3 + 416), a2);
    if (v8 != -1)
    {
      v9 = *(a2 + 36);
      if (v9)
      {
        v10 = *(v3 + 424) + 32 * v8;
        v11 = *(v10 + 8);
        v12 = *(v10 + 16);
        while (v11 != v12)
        {
          v13 = *v11;
          v14 = v11[1];
          v11 += 2;
          re::EventBus::unsubscribe(v9, v13, v14);
        }
      }

      v15 = re::HashBrown<re::ecs2::Scene *,std::vector<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::find((v3 + 416), a2);
      if (v15 != -1)
      {
        v16 = (*(v3 + 416) + (v15 & 0xFFFFFFFFFFFFFFF0));
        v17.i64[0] = -1;
        v17.i64[1] = -1;
        v18 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v16, v17), xmmword_1E304FAD0)))), 0x3830282018100800);
        if (v18)
        {
          v19 = -1;
        }

        else
        {
          v19 = 0x80;
        }

        v16->i8[v15 & 0xF] = v19;
        v20 = (*(v3 + 424) + 32 * v15);
        v21 = 0xBF58476D1CE4E5B9 * (*v20 ^ (*v20 >> 30));
        *(v3 + 456) ^= ((0x94D049BB133111EBLL * (v21 ^ (v21 >> 27))) >> 31) ^ (0x94D049BB133111EBLL * (v21 ^ (v21 >> 27)));
        v24 = v20[1];
        v23 = v20 + 1;
        v22 = v24;
        if (v24)
        {
          v23[1] = v22;
          operator delete(v22);
          v17.i64[0] = -1;
        }

        v17.i64[1] = *&v18 != 0;
        v25 = vaddq_s64(*(v3 + 440), v17);
        *(v3 + 440) = v25;
        v26 = *(v3 + 432);
        if (v26 >= 0x11 && v25.i64[0] < v26 >> 2)
        {
          re::HashBrown<re::ecs2::Scene *,std::vector<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::resize(v3 + 416, 0);
        }
      }
    }

    std::__hash_table<re::ecs2::Scene *,std::hash<re::ecs2::Scene *>,std::equal_to<re::ecs2::Scene *>,std::allocator<re::ecs2::Scene *>>::__erase_unique<re::ecs2::Scene *>((v3 + 376), &v31);
    this = *(v3 + 280);
    if (this)
    {
      this = (*(*this + 16))(this, v31);
      if (this)
      {
        v27 = this;
        v30 = *(*(v31 + 13) + 288) >> 1;
        *&v32 = &v30;
        v28 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v3 + 336), v30);
        (*(*v27 + 56))(v27, v28[3]);
        v29 = *(*(v31 + 13) + 288) >> 1;
        (*(*v27 + 40))(v27, 513, v29);
        return (*(*v27 + 40))(v27, 769, v29);
      }
    }
  }

  return this;
}

uint64_t re::ecs2::AudioPlayerSystem::update(uint64_t result, uint64_t a2, uint64_t a3)
{
  v324 = *MEMORY[0x1E69E9840];
  if (*(result + 280))
  {
    v4 = result;
    v6 = re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v277);
    v254 = a3;
    v7 = *(a3 + 200);
    if (v7)
    {
      v8 = *(a3 + 216);
      v256 = &v8[v7];
      v253 = vdupq_n_s64(1uLL);
      v257 = a2;
      v272 = v4;
      while (1)
      {
        v259 = v8;
        v9 = *v8;
        isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v6);
        if (isStatisticCollectionEnabled)
        {
          v11 = re::profilerThreadContext(isStatisticCollectionEnabled);
          v12 = re::ecs2::SceneComponentTable::get((v9 + 25), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          v13 = v12 ? *(v12 + 384) : 0;
          v14 = *(v11 + 152);
          if (v14)
          {
            v15 = v14[1152].u64[0];
            if (v15 >= v13)
            {
              v15 = v13;
            }

            v14[1152].i64[0] = v15;
            v16 = v14[1152].u64[1];
            if (v16 <= v13)
            {
              v16 = v13;
            }

            v14[1152].i64[1] = v16;
            v17.i64[1] = v253.i64[1];
            v17.i64[0] = v13;
            v14[1153] = vaddq_s64(v14[1153], v17);
            *(v11 + 184) = 0;
          }
        }

        re::ecs2::SceneComponentTable::get((v9 + 25), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v276, 3059, v4);
        v18 = (*(**(v4 + 280) + 16))(*(v4 + 280), v9);
        if (v18)
        {
          v19 = v18;
          *buf = v9;
          *&buf[8] = v4;
          v315 = re::globalAllocators(v18)[2];
          v314[0] = &unk_1F5CE92B0;
          v314[1] = buf;
          v316 = v314;
          (*(*v19 + 824))(v19, v314);
          if (v316)
          {
            (**v316)(v316);
            if (v316 != v314)
            {
              (*(*v315 + 40))(v315);
            }

            v316 = 0;
          }
        }

        if ((a2 & 0x100000000) == 0)
        {
          break;
        }

        v42 = *(re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 8);
        if (v9[28] > v42)
        {
          v43 = *(v9[30] + 8 * v42);
          if (v43)
          {
            v44 = *(v43 + 384);
            if (v44)
            {
              v45 = *(v43 + 400);
              v46 = &v45[v44];
              do
              {
                v47 = *v45;
                canModifyState = re::ecs2::AudioPlayerComponent::canModifyState(*(*v45 + 16));
                if ((canModifyState & 1) == 0)
                {
                  v49 = *re::audioLogObjects(canModifyState);
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                  {
                    v59 = v49;
                    v60 = *(v47 + 16);
                    if (!v60)
                    {
                      goto LABEL_77;
                    }

                    v61 = *(v47 + 16);
                    do
                    {
                      v62 = v61;
                      v61 = *(v61 + 32);
                    }

                    while (v61);
                    if (*(v62 + 24))
                    {
                      do
                      {
                        v64 = v60;
                        v60 = *(v60 + 32);
                      }

                      while (v60);
                      v63 = *(*(*(v64 + 24) + 104) + 288) >> 1;
                    }

                    else
                    {
LABEL_77:
                      v63 = -1;
                    }

                    *buf = 134217984;
                    *&buf[4] = v63;
                    _os_log_error_impl(&dword_1E1C61000, v59, OS_LOG_TYPE_ERROR, "AudioPlayerComponent::doSuspendAll cannot modify state. Scene ID: %llu", buf, 0xCu);
                  }
                }

                v50 = *(v47 + 112);
                if (v50)
                {
                  v51 = 0;
                  v52 = *(v47 + 96);
                  while (1)
                  {
                    v53 = *v52;
                    v52 += 8;
                    if (v53 < 0)
                    {
                      break;
                    }

                    if (v50 == ++v51)
                    {
                      LODWORD(v51) = *(v47 + 112);
                      break;
                    }
                  }
                }

                else
                {
                  LODWORD(v51) = 0;
                }

LABEL_70:
                while (v51 != v50)
                {
                  v54 = *(v47 + 96) + 32 * v51;
                  v55 = *(v54 + 8);
                  v56 = *(v54 + 16);
                  v57 = (v54 + 8);
                  if (re::ecs2::AudioPlayerComponent::doPause(v47, v55, v56, 0))
                  {
                    re::ecs2::AudioPlayerComponent::play(v47, *v57, 0);
                  }

                  v58 = *(v47 + 112);
                  if (v58 <= v51 + 1)
                  {
                    v58 = v51 + 1;
                  }

                  while (v58 - 1 != v51)
                  {
                    LODWORD(v51) = v51 + 1;
                    if ((*(*(v47 + 96) + 32 * v51) & 0x80000000) != 0)
                    {
                      goto LABEL_70;
                    }
                  }

                  LODWORD(v51) = v58;
                }

                ++v45;
              }

              while (v45 != v46);
            }
          }
        }

LABEL_432:
        re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v276);
        v8 = v259 + 1;
        a2 = v257;
        if (v259 + 1 == v256)
        {
          return re::ProfilerTimeGuard<(re::ProfilerStatistic)120>::end(v277);
        }
      }

      v278[0] = a2;
      v278[1] = v254;
      v270 = v9;
      v20 = re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(v4 + 232, v9);
      if (v20)
      {
        v21 = *(re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 8);
        if (v9[28] > v21)
        {
          v22 = *(v9[30] + 8 * v21);
          if (v22)
          {
            v23 = *(v22 + 384);
            if (v23)
            {
              v24 = v20;
              v25 = *(v22 + 400);
              v26 = &v25[v23];
              do
              {
                v27 = *v25;
                v28 = *(*v25 + 64);
                if (v28)
                {
                  v29 = 0;
                  v30 = *(v27 + 48);
                  do
                  {
                    if ((*v30 & 0x80000000) != 0)
                    {
                      goto LABEL_40;
                    }

                    v30 += 76;
                    ++v29;
                  }

                  while (v28 != v29);
                  LODWORD(v29) = *(*v25 + 64);
                }

                else
                {
                  LODWORD(v29) = 0;
                }

LABEL_40:
                while (v29 != v28)
                {
                  *immediateSourceTime = *(*(v27 + 48) + 304 * v29 + 8);
                  v31 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v24, immediateSourceTime);
                  if (v31)
                  {
                    *(*v31 + 512) = v27;
                    re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v27 + 80, immediateSourceTime, v31);
                    re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v24, immediateSourceTime);
                    v33 = *re::audioLogObjects(v32);
                    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 134217984;
                      *&buf[4] = *immediateSourceTime;
                      _os_log_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_DEFAULT, "[RE/ECS] [Update] Stale source state with token: %llu matched to syncState", buf, 0xCu);
                    }
                  }

                  v34 = *(v27 + 64);
                  if (v34 <= v29 + 1)
                  {
                    v34 = v29 + 1;
                  }

                  while (v34 - 1 != v29)
                  {
                    LODWORD(v29) = v29 + 1;
                    if ((*(*(v27 + 48) + 304 * v29) & 0x80000000) != 0)
                    {
                      goto LABEL_40;
                    }
                  }

                  LODWORD(v29) = v34;
                }

                ++v25;
              }

              while (v25 != v26);
            }
          }
        }
      }

      v35 = v270;
      v36 = re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(v4 + 232, v270);
      if (v36)
      {
        v37 = v36;
        v38 = *(v36 + 32);
        if (v38)
        {
          v39 = 0;
          v40 = *(v36 + 16);
          do
          {
            v41 = *v40;
            v40 += 8;
            if (v41 < 0)
            {
              goto LABEL_103;
            }

            ++v39;
          }

          while (v38 != v39);
          LODWORD(v39) = *(v36 + 32);
        }

        else
        {
          LODWORD(v39) = 0;
        }

LABEL_103:
        while (v39 != v38)
        {
          v65 = *(v37 + 16) + 32 * v39;
          v66 = *(v65 + 16);
          *(v66 + 480) = -1;
          v67 = (*(**(v4 + 280) + 16))(*(v4 + 280), v35);
          if (v67)
          {
            v67 = (*(*v67 + 304))(v67, v66);
          }

          *(v66 + 510) = 0;
          if ((*(v66 + 752) & 1) == 0)
          {
            *(v66 + 88) = 0;
            v68 = *(v66 + 728);
            if (v68)
            {
              v69 = *(v66 + 512) == 0;
            }

            else
            {
              v69 = 1;
            }

            if (!v69)
            {
              v70 = CMTimebaseCopySource(*(v66 + 728));
              *buf = *MEMORY[0x1E6960CC0];
              *&v321 = *(MEMORY[0x1E6960CC0] + 16);
              CMSyncGetTime(immediateSourceTime, v70);
              CMTimebaseSetRateAndAnchorTime(v68, 0.0, buf, immediateSourceTime);
              v35 = v270;
              CFRelease(v70);
            }

            if (*(v4 + 288))
            {
              buf[0] = 0;
              SceneDataEntity = makeSceneDataEntity(v35, buf, 1, re::ecs2::Scene::kSharedSceneDataEntityID, 1);
              v67 = re::ecs2::EntityComponentCollection::get((SceneDataEntity + 48), re::ecs2::ComponentImpl<re::ecs2::TimebaseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
              if (v67)
              {
                v67 = (*(**(v4 + 288) + 72))(*(v4 + 288), *(v66 + 728), v67 + 32);
              }
            }
          }

          v72 = *(v66 + 720);
          if (v72)
          {
            v67 = v72(*(v66 + 712));
          }

          v73 = *re::audioLogObjects(v67);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            v74 = *(v65 + 8);
            *buf = 134217984;
            *&buf[4] = v74;
            _os_log_impl(&dword_1E1C61000, v73, OS_LOG_TYPE_DEFAULT, "[RE/ECS] [Update] stopSourceState() stopping stale token: %llu", buf, 0xCu);
          }

          v75 = *(v37 + 32);
          if (v75 <= v39 + 1)
          {
            v75 = v39 + 1;
          }

          while (v75 - 1 != v39)
          {
            LODWORD(v39) = v39 + 1;
            if ((*(*(v37 + 16) + 32 * v39) & 0x80000000) != 0)
            {
              goto LABEL_103;
            }
          }

          LODWORD(v39) = v75;
        }

        v76 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v35 ^ (v35 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v35 ^ (v35 >> 30))) >> 27));
        re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(buf, v4 + 232, v35, v76 ^ (v76 >> 31));
        v77 = *&buf[12];
        if (*&buf[12] != 0x7FFFFFFF)
        {
          v78 = *(v4 + 248);
          v79 = (v78 + 72 * *&buf[12]);
          v80 = *v79 & 0x7FFFFFFF;
          if (v321 == 0x7FFFFFFF)
          {
            *(*(v4 + 240) + 4 * *&buf[8]) = v80;
          }

          else
          {
            *(v78 + 72 * v321) = *(v78 + 72 * v321) & 0x80000000 | v80;
          }

          v81 = *v79;
          if ((*v79 & 0x80000000) != 0)
          {
            *v79 = v81 & 0x7FFFFFFF;
            re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v79 + 2);
            v78 = *(v4 + 248);
            v81 = *(v78 + 72 * v77);
          }

          *(v78 + 72 * v77) = *(v4 + 268) | v81 & 0x80000000;
          *(v4 + 268) = v77;
          --*(v4 + 260);
          ++*(v4 + 272);
        }
      }

      v82 = re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
      v83 = *(re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 8);
      if (*(v35 + 224) > v83)
      {
        v84 = *(*(v35 + 240) + 8 * v83);
        if (v84)
        {
          v85 = *(v84 + 384);
          if (v85)
          {
            v86 = *(v84 + 400);
            v87 = &v86[v85];
            do
            {
              v88 = *v86;
              v89 = *(*v86 + 112);
              if (v89)
              {
                v90 = 0;
                v91 = *(v88 + 96);
                do
                {
                  v92 = *v91;
                  v91 += 8;
                  if (v92 < 0)
                  {
                    goto LABEL_128;
                  }

                  ++v90;
                }

                while (v89 != v90);
                LODWORD(v90) = *(*v86 + 112);
              }

              else
              {
                LODWORD(v90) = 0;
              }

LABEL_128:
              while (v90 != v89)
              {
                re::AudioSourceState::callPendingCallbacks(*(*(v88 + 96) + 32 * v90 + 16));
                v93 = *(v88 + 112);
                if (v93 <= v90 + 1)
                {
                  v93 = v90 + 1;
                }

                while (v93 - 1 != v90)
                {
                  LODWORD(v90) = v90 + 1;
                  if ((*(*(v88 + 96) + 32 * v90) & 0x80000000) != 0)
                  {
                    goto LABEL_128;
                  }
                }

                LODWORD(v90) = v93;
              }

              ++v86;
            }

            while (v86 != v87);
            v82 = re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
            v35 = v270;
          }
        }
      }

      v94 = *(*(v35 + 104) + 288);
      v95 = re::ecs2::SceneComponentTable::get((v35 + 200), v82);
      if (!v95 || (v96 = *(v95 + 384)) == 0)
      {
        *&v273 = 0;
        goto LABEL_431;
      }

      v255 = v94 >> 1;
      v97 = *(v95 + 400);
      v269 = &v97[v96];
      v273 = 0u;
LABEL_134:
      v98 = *v97;
      if (!*(*v97 + 16))
      {
        goto LABEL_426;
      }

      v271 = v97;
      v99 = (*(**(v4 + 280) + 16))(*(v4 + 280), v270);
      if (!v99)
      {
        goto LABEL_425;
      }

      v100 = v99;
      v101 = *(v98 + 16);
      if (!v101 || (*(v101 + 304) & 1) == 0)
      {
        v102 = *(v98 + 112);
        if (v102)
        {
          v103 = 0;
          v104 = *(v98 + 96);
          while (1)
          {
            v105 = *v104;
            v104 += 8;
            if (v105 < 0)
            {
              break;
            }

            if (v102 == ++v103)
            {
              LODWORD(v103) = *(v98 + 112);
              break;
            }
          }
        }

        else
        {
          LODWORD(v103) = 0;
        }

LABEL_165:
        while (v103 != v102)
        {
          v110 = *(v98 + 96) + 32 * v103;
          v113 = *(v110 + 16);
          v112 = v110 + 16;
          v111 = v113;
          if (*(v113 + 480) != -1)
          {
            v114 = *(v98 + 16);
            if (v114)
            {
              v115 = *re::audioLogObjects(v99);
              if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
              {
                re::audio::debugStringFromDeactivatedEntityState(v114, *(*v112 + 712), buf);
                v116 = buf;
                if (SBYTE7(v321) < 0)
                {
                  v116 = *buf;
                }

                *immediateSourceTime = 136446210;
                *&immediateSourceTime[4] = v116;
                _os_log_impl(&dword_1E1C61000, v115, OS_LOG_TYPE_DEFAULT, "[RE/ECS] [Update] entity unexpectedly deactivated: %{public}s", immediateSourceTime, 0xCu);
                if (SBYTE7(v321) < 0)
                {
                  operator delete(*buf);
                }
              }

              v111 = *v112;
            }
          }

          *(v111 + 480) = -1;
          v99 = (*(*v100 + 304))(v100);
          *(*v112 + 510) = 0;
          v117 = *(v98 + 112);
          if (v117 <= v103 + 1)
          {
            v117 = v103 + 1;
          }

          while (v117 - 1 != v103)
          {
            LODWORD(v103) = v103 + 1;
            if ((*(*(v98 + 96) + 32 * v103) & 0x80000000) != 0)
            {
              goto LABEL_165;
            }
          }

          LODWORD(v103) = v117;
        }

        goto LABEL_425;
      }

      v106 = *(v98 + 112);
      if (v106)
      {
        v107 = 0;
        v108 = *(v98 + 96);
        do
        {
          v109 = *v108;
          v108 += 8;
          if (v109 < 0)
          {
            goto LABEL_168;
          }

          ++v107;
        }

        while (v106 != v107);
        LODWORD(v107) = *(v98 + 112);
      }

      else
      {
        LODWORD(v107) = 0;
      }

LABEL_168:
      v262 = *(v4 + 288);
      if (v107 != v106)
      {
        v118 = *(v98 + 96);
        do
        {
          *(*(v118 + 32 * v107 + 16) + 480) = v255;
          if (v106 <= v107 + 1)
          {
            v119 = v107 + 1;
          }

          else
          {
            v119 = v106;
          }

          while (v119 - 1 != v107)
          {
            LODWORD(v107) = v107 + 1;
            if ((*(v118 + 32 * v107) & 0x80000000) != 0)
            {
              goto LABEL_177;
            }
          }

          LODWORD(v107) = v119;
LABEL_177:
          ;
        }

        while (v107 != v106);
      }

      v120 = *(v101 + 216);
      if (!v120)
      {
        if ((*(v98 + 344) & 1) == 0)
        {
          goto LABEL_425;
        }

        v121 = 1;
LABEL_187:
        v122 = (*(*v100 + 744))(v100);
        if (v121)
        {
          v123 = v122;
          v124 = *(v98 + 16);
          if (v124)
          {
            v122 = re::ecs2::EntityComponentCollection::get((v124 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
            if (v122)
            {
              v124 = *(v122 + 4);
            }

            else
            {
              v124 = 0;
            }
          }

          if (v124 != v123)
          {
            v122 = re::ecs2::EntityComponentCollection::getOrAdd((*(v98 + 16) + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
            *(v122 + 4) = v123;
            if (v120)
            {
              re::ecs2::NetworkComponent::markDirty(v120, v122);
            }
          }
        }

        v293 = 0;
        memset(v292, 0, sizeof(v292));
        v294 = 0x7FFFFFFFLL;
        v290 = 0;
        v288 = 0u;
        v289 = 0u;
        v291 = 0x7FFFFFFFLL;
        *&buf[8] = 0;
        v321 = 0uLL;
        re::DynamicString::setCapacity(buf, 0);
        v125 = *(v98 + 168);
        if (v125 != 3)
        {
          if (v125 == 1)
          {
            v126 = *(v98 + 172);
            if (v126 >= 0.125)
            {
              v127 = @"Simple-025";
              if (v126 >= 0.375)
              {
                v127 = @"Simple-050";
                if (v126 >= 0.625)
                {
                  v127 = @"Simple-075";
                  if (v126 >= 0.875)
                  {
                    v127 = @"Simple-100";
                    if (v126 >= 1.125)
                    {
                      v127 = @"Simple-125";
                      if (v126 >= 1.375)
                      {
                        v127 = @"Simple-200";
                        if (v126 < 1.875)
                        {
                          v127 = @"Simple-175";
                        }

                        if (v126 < 1.625)
                        {
                          v127 = @"Simple-150";
                        }
                      }
                    }
                  }
                }
              }

              v128 = v127;
              if ((atomic_load_explicit(&qword_1EE1A2ED8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A2ED8))
              {
                qword_1EE1A2ED0 = [MEMORY[0x1E695DF90] dictionary];
                __cxa_guard_release(&qword_1EE1A2ED8);
              }

              v129 = [qword_1EE1A2ED0 objectForKeyedSubscript:{v128, v253.i64[0]}];

              if (!v129)
              {
                re::Bundle::reResourcesFramework(immediateSourceTime);
                if (immediateSourceTime[0])
                {
                  v130 = *&immediateSourceTime[8];
                }

                else
                {
                  v130 = 0;
                }

                v131 = v130;
                if (immediateSourceTime[0] == 1)
                {
                }

                v132 = [v131 pathForResource:v128 ofType:@"ir"];
                [qword_1EE1A2ED0 setObject:v132 forKeyedSubscript:v128];
              }

              v133 = [qword_1EE1A2ED0 objectForKeyedSubscript:v128];

              if (v133)
              {
                v134 = [v133 UTF8String];
                v135 = strlen(v134);
                *immediateSourceTime = v134;
                *&immediateSourceTime[8] = v135;
                re::DynamicString::operator=(buf, immediateSourceTime);

                goto LABEL_220;
              }
            }
          }

          else if (v125)
          {
LABEL_220:
            re::DynamicString::operator=((v98 + 408), buf);
            if (*buf && (buf[8] & 1) != 0)
            {
              (*(**buf + 40))(*buf, v321);
            }

            v286 = v98 + 184;
            v287 = v98 + 208;
            re::FadingParameterController::updateFadingParameterStatus(&v286, *v278);
            v284 = v98 + 232;
            v285 = v98 + 256;
            re::FadingParameterController::updateFadingParameterStatus(&v284, *v278);
            v282 = v98 + 280;
            v283 = v98 + 304;
            re::FadingParameterController::updateFadingParameterStatus(&v282, *v278);
            *(v98 + 368) = 0;
            v136 = *(v98 + 64);
            if (v136)
            {
              v137 = 0;
              v138 = *(v98 + 48);
              do
              {
                if ((*v138 & 0x80000000) != 0)
                {
                  goto LABEL_229;
                }

                v138 += 76;
                ++v137;
              }

              while (v136 != v137);
              v137 = *(v98 + 64);
            }

            else
            {
              v137 = 0;
            }

LABEL_229:
            v274 = v100;
            v258 = v121;
            if (v136 == v137)
            {
              v139 = v98 + 184;
              v140 = v98 + 208;
              v141 = v98 + 232;
              v142 = v98 + 256;
              v143 = v98 + 280;
              v144 = v98 + 304;
              goto LABEL_319;
            }

            LODWORD(v145) = v137;
            while (1)
            {
              v146 = *(v98 + 48) + 304 * v137;
              if (*(v146 + 64) == 1)
              {
                ++*(v98 + 368);
              }

              v281 = *(v146 + 8);
              re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v292, &v281);
              v147 = re::AssetHandle::AssetHandle(v279, (*(v98 + 48) + 304 * v137 + 40));
              if (v280)
              {
                v148 = *(v280 + 35);
                v149 = re::AudioFileAsset::assetType(v147);
                if (v148 == v149)
                {
                  goto LABEL_240;
                }
              }

              else
              {
                v149 = re::AudioFileAsset::assetType(v147);
              }

              if (v280)
              {
                v150 = *(v280 + 35);
                v149 = re::AudioFileGroupAsset::assetType(v149);
                if (v150 == v149)
                {
LABEL_240:
                  v151 = *(v98 + 16);
                  if (v151)
                  {
                    v149 = re::ecs2::EntityComponentCollection::get((v151 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
                    if (v149)
                    {
                      if (v149[4])
                      {
                        goto LABEL_249;
                      }
                    }
                  }
                }
              }

              else
              {
                v149 = re::AudioFileGroupAsset::assetType(v149);
              }

              if (v280)
              {
                v152 = *(v280 + 35);
                v149 = re::AudioGeneratorAsset::assetType(v149);
                if (v152 == v149)
                {
                  v149 = (*(*v100 + 536))(v100);
                }
              }

              else
              {
                v149 = re::AudioGeneratorAsset::assetType(v149);
              }

LABEL_249:
              if (v280)
              {
                v153 = *(v280 + 35);
                if (v153 == re::AudioFileAsset::assetType(v149))
                {
                  v161 = re::AssetHandle::loadedAsset<re::AudioFileAsset>(v279);
                  if (v161)
                  {
                    if (*(v161 + 162) == 1)
                    {
                      if (v280)
                      {
                        v162 = atomic_load(v280 + 224);
                        if (v162 == 2)
                        {
                          ++*(v280 + 69);
                          v163 = re::AssetHandle::loadedAsset<re::AudioFileAsset>(v279);
                          if (v163)
                          {
                            re::AudioFileAsset::completeLoad(v163, *(v4 + 280));
                            re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v280);
                            re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v280);
                          }
                        }
                      }
                    }
                  }
                }
              }

              v313 = v281;
              v154 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v98 + 32, &v313);
              AudioServiceForEntity = re::audio::getAudioServiceForEntity(*(v98 + 16), v155);
              if (AudioServiceForEntity)
              {
                v157 = AudioServiceForEntity;
                v158 = *(*(v98 + 16) + 216);
                if (v158)
                {
                  v159 = re::ecs2::NetworkComponent::owningProcessType(v158);
                }

                else
                {
                  v159 = 0;
                }

                if (!re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v98 + 80, &v313))
                {
                  if (!re::ecs2::AudioPlayerComponent::shouldCreateSourceStateForUnmatchedSyncState(0, v154, v159))
                  {
                    goto LABEL_303;
                  }

                  re::ecs2::AudioPlayerComponent::createSourceStateForUnmatchedSyncState(v98, v313, v154, v159, 0);
                }

                v164 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v313 ^ (v313 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v313 ^ (v313 >> 30))) >> 27));
                re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v98 + 80, &v313, v164 ^ (v164 >> 31), buf);
                v165 = *(*(v98 + 96) + 32 * *&buf[12] + 16);
                if (v165)
                {
                  v166 = (v165 + 8);
                }

                v167 = *(v154 + 112);
                v311[0] = *(v154 + 96);
                v311[1] = v167;
                v312 = *(v154 + 104);
                v310.n128_u64[0] = v311;
                v310.n128_u64[1] = v165 + 320;
                re::FadingParameterController::updateFadingParameterStatus(&v310, *v278);
                v307[0] = __exp10f(*(v154 + 72) / 20.0);
                v307[1] = v307[0];
                v308 = 0;
                v309 = 0;
                v306[0] = 0;
                v306[1] = 1065353216;
                v306[2] = 0;
                v305.n128_u64[0] = v307;
                v305.n128_u64[1] = v306;
                re::FadingParameterController::updateFadingParameterStatus(&v305, *v278);
                v302[0] = __exp10f(*(v154 + 88) / 20.0);
                v302[1] = v302[0];
                v303 = 0;
                v304 = 0;
                v301[0] = 0;
                v301[1] = 1065353216;
                v301[2] = 0;
                v300.n128_u64[0] = v302;
                v300.n128_u64[1] = v301;
                v168.n128_f32[0] = re::FadingParameterController::updateFadingParameterStatus(&v300, *v278);
                v169 = (*(*v157 + 568))(v157, v168);
                if (v169)
                {
LABEL_269:
                  *&v322 = 0;
                  *&v321 = 0;
                  memset(buf, 0, sizeof(buf));
                  DWORD2(v321) = 0;
                  *immediateSourceTime = v98 + 184;
                  *&immediateSourceTime[8] = v98 + 208;
                  re::DynamicArray<re::RigNodeConstraint>::add(buf, immediateSourceTime);
                  re::DynamicArray<re::RigNodeConstraint>::add(buf, &v310);
                  re::ecs2::AudioPlayerComponent::applyFadingParameterChangesForStateChange(v98, v313, v278, buf, 0);
                  *&v318 = 0;
                  memset(immediateSourceTime, 0, 28);
                  v296.n128_u64[0] = v98 + 232;
                  v296.n128_u64[1] = v98 + 256;
                  re::DynamicArray<re::RigNodeConstraint>::add(immediateSourceTime, &v296);
                  re::DynamicArray<re::RigNodeConstraint>::add(immediateSourceTime, &v305);
                  re::ecs2::AudioPlayerComponent::applyFadingParameterChangesForStateChange(v98, v313, v278, immediateSourceTime, 1);
                  v299 = 0;
                  v297 = 0;
                  v296 = 0uLL;
                  v298 = 0;
                  v295.n128_u64[0] = v98 + 280;
                  v295.n128_u64[1] = v98 + 304;
                  re::DynamicArray<re::RigNodeConstraint>::add(&v296, &v295);
                  re::DynamicArray<re::RigNodeConstraint>::add(&v296, &v300);
                  re::ecs2::AudioPlayerComponent::applyFadingParameterChangesForStateChange(v98, v313, v278, &v296, 2);
                  if (v296.n128_u64[0] && v299)
                  {
                    (*(*v296.n128_u64[0] + 40))();
                  }

                  if (*immediateSourceTime && v318)
                  {
                    (*(**immediateSourceTime + 40))();
                  }

                  if (*buf && v322)
                  {
                    (*(**buf + 40))(*buf);
                  }
                }

                else
                {
                  v170 = *(v165 + 72);
                  if (v170)
                  {
                    v171 = *(v170 + 280);
                    if (v171 == re::AudioGeneratorAsset::assetType(v169) && (*(*v157 + 576))(v157))
                    {
                      goto LABEL_269;
                    }
                  }

                  else
                  {
                    re::AudioGeneratorAsset::assetType(v169);
                  }
                }

                *(v165 + 320) = v312;
                *(v165 + 324) = 0;
                *(v154 + 120) = *(v98 + 216);
                LODWORD(v306[0]) = v309;
                BYTE4(v306[0]) = 0;
                *(v154 + 76) = log10f(*(v98 + 264)) * 20.0;
                LODWORD(v301[0]) = v304;
                BYTE4(v301[0]) = 0;
                *(v154 + 80) = log10f(*(v98 + 312)) * 20.0;
                IsReadyToCompletePreparation = re::DynamicString::operator=((v154 + 176), (v98 + 408));
                *(v154 + 208) = *(v98 + 168);
                *(v154 + 84) = *(v98 + 328);
                if ((*(v165 + 510) & 1) == 0 && (*(v165 + 511) & 1) == 0)
                {
                  IsReadyToCompletePreparation = re::ecs2::AudioPlayerComponent::syncStateIsReadyToCompletePreparation(v98, v154, v159);
                  if (IsReadyToCompletePreparation)
                  {
                    v173 = *v154;
                    *(v165 + 56) = *(v154 + 16);
                    *(v165 + 40) = v173;
                    re::AssetHandle::operator=(v165 + 64, (v154 + 24));
                    *(v165 + 88) = *(v154 + 48);
                    v174 = *(v154 + 64);
                    v175 = *(v154 + 80);
                    v176 = *(v154 + 96);
                    *(v165 + 148) = *(v154 + 108);
                    *(v165 + 136) = v176;
                    *(v165 + 120) = v175;
                    *(v165 + 104) = v174;
                    re::Optional<re::DynamicString>::operator=((v165 + 168), (v154 + 128));
                    *(v165 + 208) = *(v154 + 168);
                    re::DynamicString::operator=((v165 + 216), (v154 + 176));
                    v177 = *(v154 + 208);
                    *(v165 + 264) = *(v154 + 224);
                    *(v165 + 248) = v177;
                    re::DynamicString::operator=((v165 + 280), (v154 + 240));
                    *(v165 + 312) = *(v154 + 272);
                    re::ecs2::AudioPlayerComponent::completePreparation(v98, v313, v154, v262);
                  }
                }

                if (*(v154 + 16))
                {
                  v178 = *(v165 + 728);
                  if (v178)
                  {
                    EffectiveRate = CMTimebaseGetEffectiveRate(v178);
                    v180 = *(v154 + 16);
                    if (EffectiveRate == 0.0)
                    {
                      EffectiveRate = 1.0;
                    }

                    v181 = EffectiveRate;
                    *(v154 + 56) = v181;
                    if (!v180)
                    {
                      goto LABEL_292;
                    }
                  }

                  else
                  {
                    *(v154 + 56) = 1065353216;
                  }
                }

                else
                {
LABEL_292:
                  v182 = *(v154 + 48);
                  if (v182 != *(v165 + 88))
                  {
                    if (v182 > 2)
                    {
                      if (v182 == 3)
                      {
                        re::ecs2::AudioPlayerComponent::doPause(v98, v313, v165, 0);
                      }

                      else if (v182 == 5)
                      {
                        v193 = *re::audioLogObjects(IsReadyToCompletePreparation);
                        if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
                        {
                          v194 = v193;
                          v195 = *(v165 + 712);
                          *buf = 134217984;
                          *&buf[4] = v195;
                          _os_log_error_impl(&dword_1E1C61000, v194, OS_LOG_TYPE_ERROR, "Sync state in error state, token: %llu", buf, 0xCu);
                        }
                      }
                    }

                    else if (v182)
                    {
                      if (v182 == 1)
                      {
                        re::ecs2::AudioPlayerComponent::doPlay(v98, v313, v165, 0);
                      }
                    }

                    else
                    {
                      re::ecs2::AudioPlayerComponent::doStop(v98, v313, v165, 0);
                    }
                  }

                  v183 = *(v165 + 728);
                  if (v183)
                  {
                    v184 = CMTimebaseGetEffectiveRate(*(v165 + 728));
                    v185 = *(v154 + 56);
                    if (v184 != v185 && *(v154 + 48) == 1)
                    {
                      CMTimebaseSetRate(v183, v185);
                    }
                  }
                }

                v186 = *v154;
                *(v165 + 56) = *(v154 + 16);
                *(v165 + 40) = v186;
                re::AssetHandle::operator=(v165 + 64, (v154 + 24));
                *(v165 + 88) = *(v154 + 48);
                v187 = *(v154 + 64);
                v188 = *(v154 + 80);
                v189 = *(v154 + 96);
                *(v165 + 148) = *(v154 + 108);
                *(v165 + 136) = v189;
                *(v165 + 120) = v188;
                *(v165 + 104) = v187;
                re::Optional<re::DynamicString>::operator=((v165 + 168), (v154 + 128));
                *(v165 + 208) = *(v154 + 168);
                re::DynamicString::operator=((v165 + 216), (v154 + 176));
                v190 = *(v154 + 208);
                *(v165 + 264) = *(v154 + 224);
                *(v165 + 248) = v190;
                re::DynamicString::operator=((v165 + 280), (v154 + 240));
                *(v165 + 312) = *(v154 + 272);

                goto LABEL_303;
              }

              v160 = *re::audioLogObjects(0);
              if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1E1C61000, v160, OS_LOG_TYPE_ERROR, "Cannot applyCommandsForStateChanges with no AudioService", buf, 2u);
              }

LABEL_303:
              re::AssetHandle::~AssetHandle(v279);
              v191 = *(v98 + 64);
              if (v191 <= v145 + 1)
              {
                v192 = (v145 + 1);
              }

              else
              {
                v192 = v191;
              }

              v100 = v274;
              while (v192 - 1 != v145)
              {
                v145 = (v145 + 1);
                if ((*(*(v98 + 48) + 304 * v145) & 0x80000000) != 0)
                {
                  v137 = v145;
                  LODWORD(v192) = v145;
                  goto LABEL_311;
                }
              }

              v137 = v192;
LABEL_311:
              LODWORD(v145) = v192;
              if (v191 == v192)
              {
                v139 = v286;
                v140 = v287;
                v141 = v284;
                v142 = v285;
                v143 = v282;
                v144 = v283;
LABEL_319:
                *buf = &unk_1F5CE9130;
                *&buf[8] = v98;
                *(&v321 + 1) = buf;
                re::ecs2::AudioPlayerComponent::forEachToken(v98, buf);
                std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:nn200100](buf);
                *buf = &unk_1F5CE9230;
                *&buf[8] = v98;
                *(&v321 + 1) = buf;
                re::ecs2::AudioPlayerComponent::forEachToken(v98, buf);
                std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:nn200100](buf);
                *buf = &unk_1F5CE91B0;
                *&buf[8] = v98;
                *(&v321 + 1) = buf;
                re::ecs2::AudioPlayerComponent::forEachToken(v98, buf);
                std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:nn200100](buf);
                *v140 = *(v139 + 16);
                *(v140 + 4) = 0;
                *v142 = *(v141 + 16);
                *(v142 + 4) = 0;
                *v144 = *(v143 + 16);
                *(v144 + 4) = 0;
                v196 = *(v98 + 112);
                if (v196)
                {
                  v197 = 0;
                  v198 = *(v98 + 96);
                  v199 = v258;
                  while (1)
                  {
                    v200 = *v198;
                    v198 += 8;
                    if (v200 < 0)
                    {
                      break;
                    }

                    if (v196 == ++v197)
                    {
                      v197 = *(v98 + 112);
                      break;
                    }
                  }
                }

                else
                {
                  v197 = 0;
                  v199 = v258;
                }

                LODWORD(v201) = v197;
                if (v196 != v197)
                {
                  do
                  {
                    *buf = *(*(v98 + 96) + 32 * v197 + 8);
                    if (!re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(v292, buf))
                    {
                      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(&v288, buf);
                    }

                    v202 = *(v98 + 112);
                    if (v202 <= v201 + 1)
                    {
                      v203 = (v201 + 1);
                    }

                    else
                    {
                      v203 = v202;
                    }

                    while (v203 - 1 != v201)
                    {
                      v201 = (v201 + 1);
                      if ((*(*(v98 + 96) + 32 * v201) & 0x80000000) != 0)
                      {
                        v197 = v201;
                        LODWORD(v203) = v201;
                        goto LABEL_335;
                      }
                    }

                    v197 = v203;
LABEL_335:
                    LODWORD(v201) = v203;
                  }

                  while (v202 != v203);
                }

                re::TransformService::worldMatrixForRendering(*(v4 + 296), *(v98 + 16), 1, buf);
                v267 = v321;
                v268 = *buf;
                *immediateSourceTime = *buf;
                *&immediateSourceTime[16] = v321;
                v265 = v323;
                v266 = v322;
                v318 = v322;
                v319 = v323;
                re::audio::cleanUpTransformForPHASE(immediateSourceTime, v204, v205, v206, buf);
                *v263 = v321;
                v264 = *buf;
                v260 = v323;
                v261 = v322;
                if (v199 && (*(*v100 + 696))(v100))
                {
                  v207 = *(v98 + 64);
                  if (v207)
                  {
                    v208 = 0;
                    v209 = *(v98 + 48);
                    while ((*v209 & 0x80000000) == 0)
                    {
                      v209 += 76;
                      if (v207 == ++v208)
                      {
                        LODWORD(v208) = *(v98 + 64);
                        break;
                      }
                    }
                  }

                  else
                  {
                    LODWORD(v208) = 0;
                  }

                  if (v208 != v207)
                  {
                    v210 = *(v98 + 64);
                    do
                    {
                      v211 = (*(v98 + 48) + 304 * v208);
                      if (!v211[6] && (v211[30] || v211[31]))
                      {
                        re::ecs2::AudioPlayerComponent::updateSharedAcousticProperties(v98, v211[1], v100);
                        v210 = *(v98 + 64);
                      }

                      if (v210 <= v208 + 1)
                      {
                        v212 = v208 + 1;
                      }

                      else
                      {
                        v212 = v210;
                      }

                      while (v212 - 1 != v208)
                      {
                        LODWORD(v208) = v208 + 1;
                        if ((*(*(v98 + 48) + 304 * v208) & 0x80000000) != 0)
                        {
                          goto LABEL_357;
                        }
                      }

                      LODWORD(v208) = v212;
LABEL_357:
                      ;
                    }

                    while (v208 != v207);
                  }
                }

                v275 = *(v98 + 112);
                if (v275)
                {
                  v213 = 0;
                  v214 = *(v98 + 96);
                  while (1)
                  {
                    v215 = *v214;
                    v214 += 8;
                    if (v215 < 0)
                    {
                      break;
                    }

                    if (v275 == ++v213)
                    {
                      LODWORD(v213) = *(v98 + 112);
                      break;
                    }
                  }
                }

                else
                {
                  LODWORD(v213) = 0;
                }

LABEL_365:
                while (v213 != v275)
                {
                  v216 = *(v98 + 96) + 32 * v213;
                  v219 = *(v216 + 16);
                  v218 = v216 + 16;
                  v217 = v219;
                  if (*(v219 + 704) == 1)
                  {
                    v220 = *(v217 + 288);
                    if (v220)
                    {
                      v221 = v220 >> 1;
                    }

                    else
                    {
                      v221 = v220 >> 1;
                    }

                    if (v221 || !*(v217 + 72) && (*(v217 + 264) || *(v217 + 272)))
                    {
                      v222 = *(v98 + 16);
                      if (v222 && (v223 = re::ecs2::EntityComponentCollection::get((v222 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType)) != 0)
                      {
                        *buf = *(*v218 + 712);
                        v224 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v223 + 40, buf);
                        v225 = *v218;
                        if (v224)
                        {
                          *(v225 + 504) = *(v224 + 4);
                        }
                      }

                      else
                      {
                        v225 = *v218;
                      }

                      v226 = re::ecs2::AudioPlayerComponent::selectInputMode(v98, *(v225 + 712));
                      v217 = *v218;
                      *(*v218 + 508) = v226;
                    }

                    *(v217 + 352) = v264;
                    *(v217 + 368) = *v263;
                    *(v217 + 384) = v261;
                    *(v217 + 400) = v260;
                    v227 = *v218;
                    v227[26] = v268;
                    v227[27] = v267;
                    v227[28] = v266;
                    v227[29] = v265;
                    (*(*v274 + 304))();
                    v228 = *v218;
                    v229 = *(*v218 + 568);
                    if (v229)
                    {
                      v230 = 0;
                      v231 = *(v228 + 552);
                      while (1)
                      {
                        v232 = *v231;
                        v231 += 8;
                        if (v232 < 0)
                        {
                          break;
                        }

                        if (v229 == ++v230)
                        {
                          LODWORD(v230) = *(*v218 + 568);
                          break;
                        }
                      }
                    }

                    else
                    {
                      LODWORD(v230) = 0;
                    }

                    if (v230 != v229)
                    {
                      v233 = *(*v218 + 568);
                      do
                      {
                        v234 = *(v228 + 552) + 32 * v230;
                        v236 = *(v234 + 8);
                        v235 = (v234 + 8);
                        v237 = v235[2];
                        v238 = *v218;
                        v239 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v236 ^ (v236 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v236 ^ (v236 >> 30))) >> 27));
                        re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(buf, *v218 + 584, v236, v239 ^ (v239 >> 31));
                        if (*&buf[12] == 0x7FFFFFFF || *(*(v238 + 600) + 32 * *&buf[12] + 16) != v237)
                        {
                          *&v240 = re::HashTable<unsigned long long,float,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(v238 + 584, v235, v235 + 2);
                          v241 = [*(*v218 + 488) parameterTree];
                          v242 = [v241 parameterWithAddress:*v235];
                          *&v243 = v237;
                          [v242 setValue:v243];

                          v233 = *(v228 + 568);
                        }

                        if (v233 <= v230 + 1)
                        {
                          v244 = v230 + 1;
                        }

                        else
                        {
                          v244 = v233;
                        }

                        while (v244 - 1 != v230)
                        {
                          LODWORD(v230) = v230 + 1;
                          if ((*(*(v228 + 552) + 32 * v230) & 0x80000000) != 0)
                          {
                            goto LABEL_397;
                          }
                        }

                        LODWORD(v230) = v244;
LABEL_397:
                        ;
                      }

                      while (v230 != v229);
                    }
                  }

                  v245 = *(v98 + 112);
                  if (v245 <= v213 + 1)
                  {
                    v245 = v213 + 1;
                  }

                  v4 = v272;
                  while (v245 - 1 != v213)
                  {
                    LODWORD(v213) = v213 + 1;
                    if ((*(*(v98 + 96) + 32 * v213) & 0x80000000) != 0)
                    {
                      goto LABEL_365;
                    }
                  }

                  LODWORD(v213) = v245;
                }

                re::ecs2::AudioPlayerComponent::triggerPendingActions(v98);
                v246 = v290;
                if (v290)
                {
                  v247 = 0;
                  v248 = (v289 + 8);
                  while (1)
                  {
                    v249 = *v248;
                    v248 += 6;
                    if (v249 < 0)
                    {
                      break;
                    }

                    if (v290 == ++v247)
                    {
                      LODWORD(v247) = v290;
                      break;
                    }
                  }
                }

                else
                {
                  LODWORD(v247) = 0;
                }

                if (v247 != v290)
                {
                  v250 = v289;
                  do
                  {
                    re::ecs2::AudioPlayerComponent::doDestroy(v98, *(v250 + 24 * v247 + 16));
                    v250 = v289;
                    if (v290 <= v247 + 1)
                    {
                      v251 = v247 + 1;
                    }

                    else
                    {
                      v251 = v290;
                    }

                    while (v251 - 1 != v247)
                    {
                      LODWORD(v247) = v247 + 1;
                      if ((*(v289 + 24 * v247 + 8) & 0x80000000) != 0)
                      {
                        goto LABEL_423;
                      }
                    }

                    LODWORD(v247) = v251;
LABEL_423:
                    ;
                  }

                  while (v247 != v246);
                }

                re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v288);
                re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v292);
LABEL_425:
                *(&v252 + 1) = *(&v273 + 1);
                *&v252 = vadd_s32(*(v98 + 368), *&v273);
                v273 = v252;
                v97 = v271;
LABEL_426:
                if (++v97 == v269)
                {
LABEL_431:
                  *(v4 + 328) = vmax_u32(*(v4 + 328), *&v273);
                  goto LABEL_432;
                }

                goto LABEL_134;
              }
            }
          }
        }

        *immediateSourceTime = "omni";
        *&immediateSourceTime[8] = 4;
        re::DynamicString::operator=(buf, immediateSourceTime);
        goto LABEL_220;
      }

      if (*(v120 + 4))
      {
        if (!RESyncableGetOwnerPeerID())
        {
LABEL_185:
          if ((*(v98 + 344) & 1) == 0)
          {
            goto LABEL_425;
          }
        }
      }

      else if (!*(v120 + 8))
      {
        goto LABEL_185;
      }

      v121 = re::ecs2::NetworkComponent::owningProcessType(v120) == 0;
      goto LABEL_187;
    }

    return re::ProfilerTimeGuard<(re::ProfilerStatistic)120>::end(v277);
  }

  return result;
}