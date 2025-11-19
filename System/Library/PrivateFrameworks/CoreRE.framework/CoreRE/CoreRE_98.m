uint64_t re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(v5, a1, a2, v3 ^ (v3 >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 72 * v6 + 16;
  }
}

void *re::ecs2::v1::allocInfo_AudioSourceState(re::ecs2::v1 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A2EA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A2EA0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A31B8, "AudioSourceState");
    __cxa_guard_release(&qword_1EE1A2EA0);
  }

  return &unk_1EE1A31B8;
}

void re::ecs2::v1::initInfo_AudioSourceState(re::ecs2::v1 *this, re::IntrospectionBase *a2)
{
  v23[0] = 0xC107D1832D9E740;
  v23[1] = "AudioSourceState";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&qword_1EE1A2EA8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A2EA8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_AssetHandle(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "asset";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1A2F28 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_uint32_t(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "layoutTag";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1A2F30 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_float(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "playbackSpeed";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x2000000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1A2F38 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_float(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "reverbSendLevel";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x2400000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1A2F40 = v21;
      __cxa_guard_release(&qword_1EE1A2EA8);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1A2F28;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::v1::AudioSourceState>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::v1::AudioSourceState>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::v1::AudioSourceState>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::v1::AudioSourceState>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v22 = v24;
}

double re::internal::defaultConstruct<re::ecs2::v1::AudioSourceState>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *&result = 1065353216;
  *(a3 + 32) = 1065353216;
  *(a3 + 40) = 6553601;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::v1::AudioSourceState>(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *&result = 1065353216;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 6553601;
  return result;
}

void *re::ecs2::v1::allocInfo_AudioPlayerComponent(re::ecs2::v1 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A2EB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A2EB8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A3248, "AudioPlayerComponent");
    __cxa_guard_release(&qword_1EE1A2EB8);
  }

  return &unk_1EE1A3248;
}

void re::ecs2::v1::initInfo_AudioPlayerComponent(re::ecs2::v1 *this, re::IntrospectionBase *a2)
{
  v21[0] = 0x913565130F19710CLL;
  v21[1] = "AudioPlayerComponent";
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  *(this + 2) = v22;
  if ((atomic_load_explicit(&qword_1EE1A2EC0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A2EC0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::ecs2::introspect_Component(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "Component";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1A2F48 = v8;
      v9 = re::introspectionAllocator(v8);
      re::IntrospectionInfo<re::HashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(v9, v10);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "sourceStatesByToken";
      *(v11 + 16) = &qword_1EE1A3048;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x2000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1A2F50 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::IntrospectionInfo<re::DynamicArray<re::AssetHandle>>::get(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "registeredAssets";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x7800000002;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1A2F58 = v15;
      v16 = re::introspectionAllocator(v15);
      v18 = re::introspect_BOOL(1, v17);
      v19 = (*(*v16 + 32))(v16, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "autoplay";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0xA000000003;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1A2F60 = v19;
      __cxa_guard_release(&qword_1EE1A2EC0);
    }
  }

  *(this + 2) = 0xA800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1A2F48;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::v1::AudioPlayerComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::v1::AudioPlayerComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::v1::AudioPlayerComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::v1::AudioPlayerComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs22v120AudioPlayerComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS6_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS9_ENS0_8priorityILi1EEEENUlSE_S9_E_8__invokeESE_S9_;
  re::internal::prepare(this, v4);
  v20 = v22;
}

void re::IntrospectionInfo<re::HashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A2F18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A2F18))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1A3048);
    qword_1EE1A3048 = &unk_1F5CE9370;
    __cxa_guard_release(&qword_1EE1A2F18);
  }

  if ((byte_1EE1A2E81 & 1) == 0)
  {
    v2 = re::introspect_uint64_t(1, a2);
    v3 = v2;
    if ((atomic_load_explicit(&qword_1EE1A2F20, memory_order_acquire) & 1) == 0)
    {
      v2 = __cxa_guard_acquire(&qword_1EE1A2F20);
      if (v2)
      {
        re::IntrospectionPointer::IntrospectionPointer(&qword_1EE1A2F68);
        __cxa_guard_release(&qword_1EE1A2F20);
      }
    }

    if ((byte_1EE1A2E82 & 1) == 0)
    {
      byte_1EE1A2E82 = 1;
      v4 = qword_1EE1A2EB0;
      if (!qword_1EE1A2EB0)
      {
        v4 = re::ecs2::v1::allocInfo_AudioSourceState(v2);
        qword_1EE1A2EB0 = v4;
        re::ecs2::v1::initInfo_AudioSourceState(v4, v5);
      }

      ArcSharedObject::ArcSharedObject(&qword_1EE1A2F68, 0);
      qword_1EE1A2F78 = 0x800000001;
      dword_1EE1A2F80 = 8;
      word_1EE1A2F84 = 0;
      *&xmmword_1EE1A2F88 = 0;
      *(&xmmword_1EE1A2F88 + 1) = 0xFFFFFFFFLL;
      qword_1EE1A2F68 = &unk_1F5CBD2C0;
      qword_1EE1A2F98 = v4;
      unk_1EE1A2FA0 = 0;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&qword_1EE1A2F68, &v28);
      if (BYTE8(v28))
      {
        v8 = v29;
      }

      else
      {
        v8 = &v28 + 9;
      }

      if (v28 && (BYTE8(v28) & 1) != 0)
      {
        (*(*v28 + 40))();
      }

      if (v30 >> 1 == 94623636 && (__s1 == "char*" || !strcmp(__s1, "char*")))
      {
        v10 = v28;
      }

      else
      {
        v28 = *(v4 + 2);
        v10 = v34;
      }

      xmmword_1EE1A2F88 = v10;
      if (v30)
      {
        if (v30)
        {
        }
      }
    }

    if ((byte_1EE1A2E81 & 1) == 0)
    {
      byte_1EE1A2E81 = 1;
      v11 = dword_1EE1A2F80;
      ArcSharedObject::ArcSharedObject(&qword_1EE1A3048, 0);
      qword_1EE1A3058 = 0x3000000007;
      dword_1EE1A3060 = v11;
      word_1EE1A3064 = 0;
      *&xmmword_1EE1A3068 = 0;
      *(&xmmword_1EE1A3068 + 1) = 0xFFFFFFFFLL;
      qword_1EE1A3078 = v3;
      unk_1EE1A3080 = 0;
      qword_1EE1A3088 = &qword_1EE1A2F68;
      qword_1EE1A3090 = 0;
      qword_1EE1A3048 = &unk_1F5CE9370;
      re::IntrospectionRegistry::add(v12, v13);
      re::getPrettyTypeName(&qword_1EE1A3048, &v28);
      if (BYTE8(v28))
      {
        v14 = v29;
      }

      else
      {
        v14 = &v28 + 9;
      }

      if (v28 && (BYTE8(v28) & 1) != 0)
      {
        (*(*v28 + 40))();
      }

      v15 = *(v3 + 32);
      v23 = xmmword_1EE1A2F88;
      v24 = v15;
      if (v37)
      {
        v22 = v37;
      }

      else
      {
        *&v28 = 0x449AD97C4B77BED4;
        *(&v28 + 1) = "_CompareFunc";
        if (v28)
        {
          if (v28)
          {
          }
        }

        if (!v36)
        {
          v30 = 0x449AD97C4B77BED4;
          __s1 = "_CompareFunc";
          v36 = v28;
          if (v30)
          {
            if (v30)
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(&v34, &v28 + 8);
        if (!v36 || (v19 = *v35, *&v28 = *(&v36 + 1), *(&v28 + 1) = v19, LODWORD(v29) = -1, (v20 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v34 + 768, &v28)) == 0) || !*v20)
        {
          v32 = v36;
          v33 = v24;
        }

        re::StackScratchAllocator::StackScratchAllocator(&v30);
        re::TypeBuilder::TypeBuilder(&v28, &v30);
        v26 = v23;
        v27 = v24;
        re::TypeBuilder::beginDictionaryType(&v28, &v25, 1, 0x30uLL, 8uLL, &v27, &v26);
        re::TypeBuilder::setConstructor(&v28, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v28, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v28, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v28, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v28, v21);
        re::StackScratchAllocator::~StackScratchAllocator(&v30);
      }

      xmmword_1EE1A3068 = v22;
      if (v25)
      {
        if (v25)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::ecs2::v1::AudioPlayerComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 20) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE9410;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v3 + 68) = 0x7FFFFFFFLL;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 80) = 0;
  *(v3 + 104) = 0;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::v1::AudioPlayerComponent>(uint64_t a1)
{
  *(a1 + 160) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE9410;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v1 + 68) = 0x7FFFFFFFLL;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 80) = 0;
  *(v1 + 104) = 0;
  *(v1 + 152) = 0;
  *(v1 + 160) = 0;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0;
  return result;
}

void re::ecs2::AudioPlayerSystem::~AudioPlayerSystem(re::ecs2::AudioPlayerSystem *this)
{
  re::HashBrown<re::ecs2::Scene *,std::vector<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::deinit(this + 416);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(this + 376);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(this + 336);
  re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 29);

  re::ecs2::System::~System(this);
}

{
  re::HashBrown<re::ecs2::Scene *,std::vector<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::deinit(this + 416);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(this + 376);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(this + 336);
  re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 29);

  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::CallableMemFn<re::ecs2::AudioPlayerSystem,REEventHandlerResult (re::ecs2::AudioPlayerSystem::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&)const,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::AudioPlayerSystem,REEventHandlerResult (re::ecs2::AudioPlayerSystem::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&)const,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CE8F38;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::AudioPlayerSystem,REEventHandlerResult (re::ecs2::AudioPlayerSystem::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&)const,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CE8F38;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

double re::HashBrown<re::ecs2::Scene *,std::vector<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::deinit(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 8))
    {
      v12[0] = a1;
      v2 = *(a1 + 16);
      if (v2 >= 0x10)
      {
        v3 = 0;
        v4 = *a1;
        v5 = v2 >> 4;
        while (1)
        {
          v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v4), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v12[1] = v6 ^ 0xFFFFLL;
          if (v6 != 0xFFFFLL)
          {
            break;
          }

          v3 -= 16;
          ++v4;
          if (!--v5)
          {
            goto LABEL_12;
          }
        }

        v7 = __clz(__rbit64(v6 ^ 0xFFFFLL));
        v8 = v7 - v3;
        v13 = v7 - v3;
        if (v7 + 1 != v3)
        {
          do
          {
            v9 = *(a1 + 8) + 32 * v8;
            v10 = *(v9 + 8);
            if (v10)
            {
              *(v9 + 16) = v10;
              operator delete(v10);
            }

            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v12);
            v8 = v13;
          }

          while (v13 != -1);
        }
      }

LABEL_12:
      *(a1 + 8) = 0;
    }

    if (*a1)
    {
      (*(**(a1 + 56) + 40))(*(a1 + 56));
      *a1 = 0;
    }

    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(uint64_t *a1)
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
          re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 72;
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

void *re::IntrospectionHashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4, void *a5)
{
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0uLL;
  memset(v34, 0, sizeof(v34));
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v27 = 9;
  v28 = 1065353216;
  v29 = 0uLL;
  v30 = 0x3F80000000000000uLL;
  __asm { FMOV            V0.2S, #1.0 }

  v31 = _D0;
  v32 = 0;
  v33 = 1065353216;
  BYTE8(v34[2]) = 0;
  v36 = 0uLL;
  v15 = re::DynamicString::setCapacity(&v35, 0);
  LODWORD(v37) = 1;
  *(&v37 + 4) = 0x3E051EB800000000;
  HIDWORD(v37) = 1106247680;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  re::DynamicString::setCapacity(&v39, 0);
  LOWORD(v41) = 0;
  v22 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(a4, a5, &v24);
  if (v39)
  {
    if (BYTE8(v39))
    {
      (*(*v39 + 40))(v39, v40, v16, v17, v18, v19, v20, v21, v24, *(&v24 + 1), v25, *(&v25 + 1), v26, *(&v26 + 1), v27, v28);
    }

    v39 = 0u;
    v40 = 0u;
  }

  if (v35)
  {
    if (BYTE8(v35))
    {
      (*(*v35 + 40))();
    }

    v35 = 0u;
    v36 = 0u;
  }

  if (LOBYTE(v34[0]) == 1 && *(&v34[0] + 1))
  {
    if (v34[1])
    {
      (*(**(&v34[0] + 1) + 40))();
    }

    memset(v34 + 8, 0, 32);
  }

  re::AssetHandle::~AssetHandle((&v25 + 8));
  re::introspectionInitElement(a2, a3, a1[8], v22);
  return v22;
}

uint64_t re::IntrospectionHashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while ((*v7 & 0x80000000) == 0)
    {
      v7 += 76;
      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v9 = *(a2 + 16) + 304 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v9 + 8, v9 + 16);
    if (!result)
    {
      break;
    }

    v10 = *(a2 + 32);
    if (v10 <= v6 + 1)
    {
      v10 = v6 + 1;
    }

    while (v10 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 304 * v6) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v6) = v10;
LABEL_16:
    ;
  }

  while (v6 != v5);
  return result;
}

double re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(a1[2], v3++);
      }

      while (v3 < *(a1 + 8));
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

void re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = a1 + 304 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    re::DynamicString::deinit((v2 + 256));
    re::DynamicString::deinit((v2 + 192));
    if (*(v2 + 144) == 1)
    {
      re::DynamicString::deinit((v2 + 152));
    }

    re::AssetHandle::~AssetHandle((v2 + 40));
  }
}

void re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 304 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

void re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v34, 0, 36);
      *&v34[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v34, v4, a2);
      v5 = *v34;
      *v34 = *a1;
      *a1 = v5;
      v6 = *&v34[16];
      v7 = *(a1 + 16);
      *&v34[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v34[24];
      *&v34[24] = *(a1 + 24);
      v8 = *&v34[32];
      *(a1 + 24) = v9;
      ++*&v34[40];
      if (v8)
      {
        v10 = 0;
        v11 = 304 * v8;
        do
        {
          if ((*(v7 + v10) & 0x80000000) != 0)
          {
            v12 = v7 + v10;
            v13 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v7 + v10 + 296) % *(a1 + 24));
            *(v13 + 8) = *(v7 + v10 + 8);
            v14 = *(v7 + v10 + 32);
            *(v13 + 16) = *(v7 + v10 + 16);
            *(v13 + 32) = v14;
            *(v13 + 40) = 0;
            *(v13 + 48) = 0;
            *(v13 + 56) = 0;
            *(v13 + 48) = *(v7 + v10 + 48);
            *(v12 + 48) = 0;
            v15 = *(v13 + 40);
            *(v13 + 40) = 0;
            *(v13 + 40) = *(v7 + v10 + 40);
            *(v12 + 40) = v15;
            v16 = *(v13 + 56);
            *(v13 + 56) = *(v7 + v10 + 56);
            *(v12 + 56) = v16;
            v17 = *(v7 + v10 + 124);
            v19 = *(v7 + v10 + 96);
            v18 = *(v7 + v10 + 112);
            *(v13 + 80) = *(v7 + v10 + 80);
            *(v13 + 96) = v19;
            *(v13 + 112) = v18;
            *(v13 + 124) = v17;
            *(v13 + 64) = *(v7 + v10 + 64);
            LODWORD(v16) = *(v7 + v10 + 144);
            *(v13 + 144) = v16;
            if (v16 == 1)
            {
              *(v13 + 168) = 0u;
              *(v13 + 152) = 0u;
              *(v13 + 176) = *(v12 + 176);
              v20 = *(v12 + 160);
              *(v13 + 152) = *(v12 + 152);
              *(v12 + 152) = 0;
              v21 = *(v12 + 168);
              *(v12 + 176) = 0;
              v23 = *(v13 + 160);
              v22 = *(v13 + 168);
              *(v13 + 160) = v20;
              *(v13 + 168) = v21;
              *(v12 + 160) = v23;
              *(v12 + 168) = v22;
            }

            *(v13 + 184) = *(v12 + 184);
            *(v13 + 192) = 0u;
            *(v13 + 208) = 0u;
            *(v13 + 216) = *(v12 + 216);
            v24 = *(v12 + 200);
            *(v13 + 192) = *(v12 + 192);
            *(v12 + 192) = 0;
            v25 = *(v12 + 208);
            *(v12 + 216) = 0;
            v27 = *(v13 + 200);
            v26 = *(v13 + 208);
            *(v13 + 200) = v24;
            *(v13 + 208) = v25;
            *(v12 + 200) = v27;
            *(v12 + 208) = v26;
            v28 = *(v12 + 240);
            *(v13 + 224) = *(v12 + 224);
            *(v13 + 240) = v28;
            *(v13 + 256) = 0u;
            *(v13 + 272) = 0u;
            *(v13 + 280) = *(v12 + 280);
            v29 = *(v12 + 264);
            *(v13 + 256) = *(v12 + 256);
            *(v12 + 256) = 0;
            v30 = *(v12 + 272);
            *(v12 + 280) = 0;
            v32 = *(v13 + 264);
            v31 = *(v13 + 272);
            *(v13 + 264) = v29;
            *(v13 + 272) = v30;
            *(v12 + 264) = v32;
            *(v12 + 272) = v31;
            *(v13 + 288) = *(v12 + 288);
          }

          v10 += 304;
        }

        while (v11 != v10);
      }

      re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v34);
    }
  }

  else
  {
    if (a2)
    {
      v33 = a2;
    }

    else
    {
      v33 = 3;
    }
  }
}

uint64_t re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 304 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 304 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 304 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 296) = a3;
  ++*(a1 + 28);
  return v7 + 304 * v5;
}

void re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(*(a1 + 16), v3++);
      }

      while (v3 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v4 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v4;
  }
}

uint64_t re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(uint64_t a1, void *a2, __int128 *a3)
{
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v39);
  v7 = HIDWORD(v40);
  if (HIDWORD(v40) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v40, v39);
    *(v8 + 8) = *a2;
    v9 = v8 + 16;
    v10 = *(a3 + 2);
    *(v8 + 16) = *a3;
    *(v8 + 32) = v10;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 48) = *(a3 + 4);
    *(a3 + 4) = 0;
    v11 = *(v8 + 40);
    *(v8 + 40) = 0;
    *(v8 + 40) = *(a3 + 3);
    *(a3 + 3) = v11;
    v12 = *(v8 + 56);
    *(v8 + 56) = *(a3 + 5);
    *(a3 + 5) = v12;
    v13 = *(a3 + 108);
    v15 = a3[5];
    v14 = a3[6];
    *(v8 + 80) = a3[4];
    *(v8 + 96) = v15;
    *(v8 + 112) = v14;
    *(v8 + 124) = v13;
    *(v8 + 64) = a3[3];
    LODWORD(v12) = *(a3 + 128);
    *(v8 + 144) = v12;
    if (v12 == 1)
    {
      *(v8 + 168) = 0u;
      *(v8 + 152) = 0u;
      *(v8 + 176) = *(a3 + 20);
      v16 = *(a3 + 18);
      *(v8 + 152) = *(a3 + 17);
      *(a3 + 17) = 0;
      v17 = *(a3 + 19);
      *(a3 + 20) = 0;
      v19 = *(v8 + 160);
      v18 = *(v8 + 168);
      *(v8 + 160) = v16;
      *(v8 + 168) = v17;
      *(a3 + 18) = v19;
      *(a3 + 19) = v18;
    }

    *(v8 + 184) = *(a3 + 168);
    *(v8 + 192) = 0u;
    *(v8 + 208) = 0u;
    *(v8 + 216) = *(a3 + 25);
    v20 = *(a3 + 23);
    *(v8 + 192) = *(a3 + 22);
    *(a3 + 22) = 0;
    v21 = *(a3 + 24);
    *(a3 + 25) = 0;
    v23 = *(v8 + 200);
    v22 = *(v8 + 208);
    *(v8 + 200) = v20;
    *(v8 + 208) = v21;
    *(a3 + 23) = v23;
    *(a3 + 24) = v22;
    v24 = a3[14];
    *(v8 + 224) = a3[13];
    *(v8 + 240) = v24;
    *(v8 + 256) = 0u;
    *(v8 + 272) = 0u;
    *(v8 + 280) = *(a3 + 33);
    v25 = *(a3 + 31);
    *(v8 + 256) = *(a3 + 30);
    *(a3 + 30) = 0;
    v26 = *(a3 + 32);
    *(a3 + 33) = 0;
    v28 = *(v8 + 264);
    v27 = *(v8 + 272);
    *(v8 + 264) = v25;
    *(v8 + 272) = v26;
    *(a3 + 31) = v28;
    *(a3 + 32) = v27;
    *(v8 + 288) = *(a3 + 136);
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v29 = *(a1 + 16) + 304 * v7;
    v9 = v29 + 16;
    v30 = *a3;
    *(v29 + 32) = *(a3 + 2);
    *(v29 + 16) = v30;
    v31 = *(v29 + 48);
    *(v29 + 48) = *(a3 + 4);
    *(a3 + 4) = v31;
    v32 = *(v29 + 40);
    *(v29 + 40) = 0;
    *(v29 + 40) = *(a3 + 3);
    *(a3 + 3) = v32;
    v33 = *(v29 + 56);
    *(v29 + 56) = *(a3 + 5);
    *(a3 + 5) = v33;
    *(v29 + 64) = a3[3];
    v34 = a3[4];
    v35 = a3[5];
    v36 = a3[6];
    *(v29 + 124) = *(a3 + 108);
    *(v29 + 96) = v35;
    *(v29 + 112) = v36;
    *(v29 + 80) = v34;
    re::Optional<re::DynamicString>::operator=(v29 + 144, (a3 + 8));
    *(v29 + 184) = *(a3 + 168);
    re::DynamicString::operator=((v29 + 192), (a3 + 11));
    v37 = a3[14];
    *(v29 + 224) = a3[13];
    *(v29 + 240) = v37;
    re::DynamicString::operator=((v29 + 256), (a3 + 15));
    *(v29 + 288) = *(a3 + 136);
  }

  return v9;
}

uint64_t re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  if (*(v7 + 304 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 304 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 304 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 304 * v8) & 0x7FFFFFFF;
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

void re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1);

  return re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1);

    re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, void *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v6 = a1[3];
        v7 = *(v6 + 32);
        if (v7 <= v4 + 1)
        {
          v8 = v4 + 1;
        }

        else
        {
          v8 = *(v6 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v7)
          {
            break;
          }

          if ((*(*(v6 + 16) + 304 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v8;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while ((*v5 & 0x80000000) == 0)
        {
          v5 += 76;
          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 304 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 304 * *(a1 + 32) + 16;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs220AudioPlayerComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 1;
    *(a2 + 8) = 0;
  }
}

re::ecs2::AudioPlayerSystem *re::ecs2::AudioPlayerSystem::AudioPlayerSystem(re::ecs2::AudioPlayerSystem *this)
{
  *re::ecs2::System::System(this, 1, 1) = &unk_1F5CE8E78;
  v2 = MEMORY[0x1E69E96A0];
  v3 = MEMORY[0x1E69E96A0];
  *(this + 28) = v2;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 66) = 0;
  *(this + 268) = 0x7FFFFFFFLL;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 45) = 0;
  *(this + 92) = 1065353216;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 102) = 1065353216;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  return this;
}

uint64_t re::HashTable<unsigned long long,void({block_pointer} {__strong})(unsigned long long,REAudioPlaybackState,REAudioPlaybackState),re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,void({block_pointer} {__strong})(unsigned long long,REAudioPlaybackState,REAudioPlaybackState),re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 32 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 24) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + 32 * v5;
}

void re::HashTable<unsigned long long,void({block_pointer} {__strong})(unsigned long long,REAudioPlaybackState,REAudioPlaybackState),re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<unsigned long long,void({block_pointer} {__strong})(unsigned long long,REAudioPlaybackState,REAudioPlaybackState),re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,re::sg::MaterialSource,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<unsigned long long,void({block_pointer} {__strong})(unsigned long long,REAudioPlaybackState,REAudioPlaybackState),re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<unsigned long long,void({block_pointer} {__strong})(unsigned long long,REAudioPlaybackState,REAudioPlaybackState),re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 24) % *(v4 + 24));
        v8 = *(a2 + 16) + v5;
        *(result + 8) = *(v8 + 8);
        v9 = *(v8 + 16);
        *(v8 + 16) = 0;
        *(result + 16) = v9;
        v2 = *(a2 + 32);
      }

      v5 += 32;
    }
  }

  return result;
}

void re::DynamicArray<re::AssetHandle>::removeAt(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v2 - 1 > a2)
  {
    v4 = *(a1 + 32);
    v5 = v4 + 24 * v2;
    v6 = (v4 + 24 * a2);
    v7 = *v6;
    *v6 = 0;
    v8 = *(v5 - 16);
    *v6 = *(v5 - 24);
    *(v6 + 1) = v8;
    *(v5 - 24) = v7;
    v9 = *(v6 + 2);
    *(v6 + 2) = *(v5 - 8);
    *(v5 - 8) = v9;
  }

  re::AssetHandle::~AssetHandle((*(a1 + 32) + 24 * v2 - 24));
  --*(a1 + 16);
  ++*(a1 + 24);
}

uint64_t re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long const&,re::SharedPtr<re::AudioSourceState> const&>(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t *a4, uint64_t *a5)
{
  v8 = re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, a3, a2);
  v9 = *a4;
  v10 = *a5;
  *(v8 + 16) = *a5;
  v11 = v8 + 16;
  *(v8 + 8) = v9;
  if (v10)
  {
    v12 = (v10 + 8);
  }

  ++*(a1 + 40);
  return v11;
}

char *re::EventBus::getTypeId<REAudioPlayerDidCreateAudioUnitEvent>()
{
  v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
  {
    v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    if (v2)
    {
      re::EventBus::getTypeId<REAudioPlayerDidCreateAudioUnitEvent>(void)const::s_id = re::EventBus::typeStringToId(("36REAudioPlayerDidCreateAudioUnitEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    }
  }

  return v0[38];
}

char *re::EventBus::getTypeId<REAudioPlayerDidPrepareAudioUnitEvent>()
{
  v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
  {
    v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    if (v2)
    {
      re::EventBus::getTypeId<REAudioPlayerDidPrepareAudioUnitEvent>(void)const::s_id = re::EventBus::typeStringToId(("37REAudioPlayerDidPrepareAudioUnitEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    }
  }

  return v0[40];
}

uint64_t _ZNSt3__110__function6__funcIZZN2re4ecs220AudioPlayerComponent19completePreparationEyPNS2_20AudioSourceSyncStateEPNS2_15TimebaseServiceEEUb_E3__0NS_9allocatorIS9_EEFvvEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F5CE9030;
  objc_destroyWeak((a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

void _ZNSt3__110__function6__funcIZZN2re4ecs220AudioPlayerComponent19completePreparationEyPNS2_20AudioSourceSyncStateEPNS2_15TimebaseServiceEEUb_E3__0NS_9allocatorIS9_EEFvvEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F5CE9030;
  objc_destroyWeak((a1 + 8));
  *(a1 + 8) = 0;

  JUMPOUT(0x1E6906520);
}

__n128 _ZNKSt3__110__function6__funcIZZN2re4ecs220AudioPlayerComponent19completePreparationEyPNS2_20AudioSourceSyncStateEPNS2_15TimebaseServiceEEUb_E3__0NS_9allocatorIS9_EEFvvEE7__cloneEPNS0_6__baseISC_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CE9030;
  *(a2 + 8) = 0;
  objc_copyWeak((a2 + 8), (a1 + 8));
  v4 = *(a1 + 32);
  result = *(a1 + 16);
  *(a2 + 16) = result;
  *(a2 + 32) = v4;
  return result;
}

void _ZNSt3__110__function6__funcIZZN2re4ecs220AudioPlayerComponent19completePreparationEyPNS2_20AudioSourceSyncStateEPNS2_15TimebaseServiceEEUb_E3__0NS_9allocatorIS9_EEFvvEE18destroy_deallocateEv(id *a1)
{
  objc_destroyWeak(a1 + 1);

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZZN2re4ecs220AudioPlayerComponent19completePreparationEyPNS2_20AudioSourceSyncStateEPNS2_15TimebaseServiceEEUb_E3__0NS_9allocatorIS9_EEFvvEEclEv(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v4 = WeakRetained[63];
    if (v4)
    {
      re::ecs2::AudioPlayerComponent::playbackStateDidChange(v4, *(a1 + 16), *(a1 + 24), *(a1 + 32));
    }
  }

  else
  {
    v5 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 0;
      _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "[RE/ECS] [Update] SourceState was deallocated. Cannot invoke state change callback.", v6, 2u);
    }
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN2re4ecs220AudioPlayerComponent19completePreparationEyPNS2_20AudioSourceSyncStateEPNS2_15TimebaseServiceEEUb_E3__0NS_9allocatorIS9_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZZN2re4ecs220AudioPlayerComponent19completePreparationEyPNS_20AudioSourceSyncStateEPNS_15TimebaseServiceEEUb_E3__0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZZN2re4ecs220AudioPlayerComponent19completePreparationEyPNS2_20AudioSourceSyncStateEPNS2_15TimebaseServiceEEUb0_E3__1NS_9allocatorIS9_EEFvvEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F5CE90B0;

  objc_destroyWeak((a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

void _ZNSt3__110__function6__funcIZZN2re4ecs220AudioPlayerComponent19completePreparationEyPNS2_20AudioSourceSyncStateEPNS2_15TimebaseServiceEEUb0_E3__1NS_9allocatorIS9_EEFvvEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F5CE90B0;

  objc_destroyWeak((a1 + 8));
  *(a1 + 8) = 0;

  JUMPOUT(0x1E6906520);
}

id _ZNKSt3__110__function6__funcIZZN2re4ecs220AudioPlayerComponent19completePreparationEyPNS2_20AudioSourceSyncStateEPNS2_15TimebaseServiceEEUb0_E3__1NS_9allocatorIS9_EEFvvEE7__cloneEPNS0_6__baseISC_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CE90B0;
  *(a2 + 8) = 0;
  objc_copyWeak((a2 + 8), (a1 + 8));
  v4 = *(a1 + 24);
  *(a2 + 16) = *(a1 + 16);
  result = v4;
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZZN2re4ecs220AudioPlayerComponent19completePreparationEyPNS2_20AudioSourceSyncStateEPNS2_15TimebaseServiceEEUb0_E3__1NS_9allocatorIS9_EEFvvEE18destroy_deallocateEv(id *a1)
{
  objc_destroyWeak(a1 + 1);

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZZN2re4ecs220AudioPlayerComponent19completePreparationEyPNS2_20AudioSourceSyncStateEPNS2_15TimebaseServiceEEUb0_E3__1NS_9allocatorIS9_EEFvvEEclEv(uint64_t a1)
{
  v2 = *(a1 + 16);
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = WeakRetained[63];
    if (v5)
    {
      re::ecs2::AudioPlayerComponent::preparationCompleteCallback(v2, (WeakRetained - 1), v5, *(a1 + 24));
    }
  }

  else
  {
    v6 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 0;
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "[RE/ECS] [Update] SourceState was deallocated. Cannot invoke state change callback.", v7, 2u);
    }
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN2re4ecs220AudioPlayerComponent19completePreparationEyPNS2_20AudioSourceSyncStateEPNS2_15TimebaseServiceEEUb0_E3__1NS_9allocatorIS9_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZZN2re4ecs220AudioPlayerComponent19completePreparationEyPNS_20AudioSourceSyncStateEPNS_15TimebaseServiceEEUb0_E3__1))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::HashTable<unsigned long long,float,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
            v17 = 0;
            v18 = v13 + 16;
            do
            {
              if ((*(v18 - 16) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long long,float,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v18 + 8) % *(a1 + 24));
                *(v19 + 8) = *(v18 - 8);
                *(v19 + 16) = *v18;
              }

              ++v17;
              v18 += 32;
            }

            while (v17 < v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v26);
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

uint64_t std::__function::__func<re::ecs2::AudioPlayerComponent::applyGainForAllPlaybackTokens(void)::$_0,std::allocator<re::ecs2::AudioPlayerComponent::applyGainForAllPlaybackTokens(void)::$_0>,void ()(unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CE9130;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::ecs2::AudioPlayerComponent::applyGainForAllPlaybackTokens(void)::$_0,std::allocator<re::ecs2::AudioPlayerComponent::applyGainForAllPlaybackTokens(void)::$_0>,void ()(unsigned long long)>::operator()(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v2 = *(a1 + 8);
  v3 = *(v2 + 216);
  result = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](v2 + 32, &v5);
  *(result + 120) = v3;
  return result;
}

uint64_t std::__function::__func<re::ecs2::AudioPlayerComponent::applyGainForAllPlaybackTokens(void)::$_0,std::allocator<re::ecs2::AudioPlayerComponent::applyGainForAllPlaybackTokens(void)::$_0>,void ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return *(a1 + 16) + 304 * v6 + 16;
}

uint64_t std::__function::__func<re::ecs2::AudioPlayerComponent::applyDirectLevelForAllPlaybackTokens(void)::$_0,std::allocator<re::ecs2::AudioPlayerComponent::applyDirectLevelForAllPlaybackTokens(void)::$_0>,void ()(unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CE91B0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::ecs2::AudioPlayerComponent::applyDirectLevelForAllPlaybackTokens(void)::$_0,std::allocator<re::ecs2::AudioPlayerComponent::applyDirectLevelForAllPlaybackTokens(void)::$_0>,void ()(unsigned long long)>::operator()(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v2 = *(a1 + 8);
  v3 = log10f(*(v2 + 312)) * 20.0;
  result = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](v2 + 32, &v5);
  *(result + 80) = v3;
  return result;
}

uint64_t std::__function::__func<re::ecs2::AudioPlayerComponent::applyDirectLevelForAllPlaybackTokens(void)::$_0,std::allocator<re::ecs2::AudioPlayerComponent::applyDirectLevelForAllPlaybackTokens(void)::$_0>,void ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<re::ecs2::AudioPlayerComponent::applyReverbLevelForAllPlaybackTokens(void)::$_0,std::allocator<re::ecs2::AudioPlayerComponent::applyReverbLevelForAllPlaybackTokens(void)::$_0>,void ()(unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CE9230;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::ecs2::AudioPlayerComponent::applyReverbLevelForAllPlaybackTokens(void)::$_0,std::allocator<re::ecs2::AudioPlayerComponent::applyReverbLevelForAllPlaybackTokens(void)::$_0>,void ()(unsigned long long)>::operator()(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v2 = *(a1 + 8);
  v3 = log10f(*(v2 + 264)) * 20.0;
  result = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](v2 + 32, &v5);
  *(result + 76) = v3;
  return result;
}

uint64_t std::__function::__func<re::ecs2::AudioPlayerComponent::applyReverbLevelForAllPlaybackTokens(void)::$_0,std::allocator<re::ecs2::AudioPlayerComponent::applyReverbLevelForAllPlaybackTokens(void)::$_0>,void ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioPlayerSystem::didAddComponents,re::ecs2::AudioPlayerSystem>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v71 = *MEMORY[0x1E69E9840];
  v59 = *(a2 + 472);
  v6 = *(*(v59 + 104) + 288);
  v8 = (*(**(a1 + 40) + 32))(*(a1 + 40));
  v9 = re::ServiceLocator::serviceOrNull<re::Engine>(v8);
  if (v9)
  {
    obj = *(v9 + 55);
  }

  else
  {
    obj = MEMORY[0x1E69E96A0];
    v10 = MEMORY[0x1E69E96A0];
  }

  v11 = (*(**(a1 + 40) + 32))(*(a1 + 40));
  v12 = re::ServiceLocator::serviceOrNull<re::SharedClockService>(v11);
  if (a4)
  {
    v13 = v12;
    v14 = v6 >> 1;
    v55 = &a3[a4];
    v56 = v12;
    do
    {
      v15 = *a3;
      if (v13)
      {
        v12 = (*(*v13 + 32))(v13);
      }

      v16 = *re::audioLogObjects(v12);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(v15 + 352);
        if (!v17)
        {
          v17 = *(v15 + 400);
        }

        v18 = *(v15 + 16);
        if (v18)
        {
          v19 = re::ecs2::EntityComponentCollection::get((v18 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
          if (v19)
          {
            v18 = *(v19 + 32);
          }

          else
          {
            v18 = 0;
          }
        }

        v20 = *(v15 + 108);
        v21 = *(v15 + 60);
        *buf = 134219008;
        v62 = v17;
        v63 = 2048;
        v64 = v15;
        v65 = 2048;
        v66 = v18;
        v67 = 1024;
        v68 = v20;
        v69 = 1024;
        v70 = v21;
        _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "Adding AudioPlayerComponent (entityID=%llu) %p (connection=%llu) with %u source states and %u sync states.", buf, 0x2Cu);
      }

      objc_storeStrong((v15 + 336), obj);
      v22 = *(v15 + 112);
      if (v22)
      {
        v23 = 0;
        v24 = *(v15 + 96);
        while (1)
        {
          v25 = *v24;
          v24 += 8;
          if (v25 < 0)
          {
            break;
          }

          if (v22 == ++v23)
          {
            LODWORD(v23) = *(v15 + 112);
            break;
          }
        }
      }

      else
      {
        LODWORD(v23) = 0;
      }

LABEL_38:
      while (v23 != v22)
      {
        v26 = *(*(v15 + 96) + 32 * v23 + 16);
        *(v26 + 480) = v14;
        v12 = re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(a1 + 232, v59);
        if (v12)
        {
          v27 = *(v26 + 712);
          v60 = v27;
          if (*v12)
          {
            v28 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v27 ^ (v27 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v27 ^ (v27 >> 30))) >> 27));
            v29 = *(*(v12 + 8) + 4 * ((v28 ^ (v28 >> 31)) % *(v12 + 24)));
            if (v29 != 0x7FFFFFFF)
            {
              v30 = *(v12 + 16);
              while (*(v30 + 32 * v29 + 8) != v27)
              {
                v29 = *(v30 + 32 * v29) & 0x7FFFFFFF;
                if (v29 == 0x7FFFFFFF)
                {
                  goto LABEL_32;
                }
              }

              re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v12, &v60);
              v32 = *re::audioLogObjects(v31);
              v12 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
              if (v12)
              {
                *buf = 134217984;
                v62 = v60;
                _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEFAULT, "[RE/ECS] [Update] didAddSourceState() matched a stale source state to an AudioPlayerComponent with token: %llu", buf, 0xCu);
              }
            }
          }
        }

LABEL_32:
        v33 = *(v15 + 112);
        if (v33 <= v23 + 1)
        {
          v33 = v23 + 1;
        }

        while (v33 - 1 != v23)
        {
          LODWORD(v23) = v23 + 1;
          if ((*(*(v15 + 96) + 32 * v23) & 0x80000000) != 0)
          {
            goto LABEL_38;
          }
        }

        LODWORD(v23) = v33;
      }

      v35 = *(v15 + 376);
      v34 = *(v15 + 384);
      v36 = v34;
      v58 = a3;
      if (v35 != v34)
      {
        while (1)
        {
          v37 = *v35;
          v12 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v15 + 80, (*v35 + 8));
          if (v37 && v12 == 0)
          {
            break;
          }

          if (!v12)
          {
            goto LABEL_48;
          }

          if (++v35 == v34)
          {
            goto LABEL_59;
          }
        }

        v39 = re::globalAllocators(v12);
        v12 = (*(*v39[2] + 40))(v39[2], v37);
      }

LABEL_48:
      if (v35 != v34)
      {
        v40 = v35 + 1;
        v36 = v35;
        while (v40 != v34)
        {
          v41 = *v40;
          v12 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v15 + 80, (*v40 + 8));
          if (v41)
          {
            v42 = v12 == 0;
          }

          else
          {
            v42 = 0;
          }

          if (v42)
          {
            v43 = re::globalAllocators(v12);
            v12 = (*(*v43[2] + 40))(v43[2], v41);
          }

          else if (v12)
          {
            *v36++ = *v40;
          }

          ++v40;
        }
      }

LABEL_59:
      if (v36 != *(v15 + 384))
      {
        *(v15 + 384) = v36;
      }

      v44 = *(v15 + 64);
      if (v44)
      {
        v45 = 0;
        v46 = *(v15 + 48);
        while ((*v46 & 0x80000000) == 0)
        {
          v46 += 76;
          if (v44 == ++v45)
          {
            LODWORD(v45) = *(v15 + 64);
            break;
          }
        }
      }

      else
      {
        LODWORD(v45) = 0;
      }

LABEL_78:
      while (v45 != v44)
      {
        v47 = (*(v15 + 48) + 304 * v45);
        v12 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v15 + 80, v47 + 1);
        if (v12)
        {
          if (*(*v12 + 520) == 1)
          {
            if (v47[10])
            {
              TimebaseService = re::ecs2::AudioPlayerComponent::getTimebaseService(*(v15 + 16));
              v12 = (*(*TimebaseService + 120))(TimebaseService, v47[10]);
              if ((v12 & 1) == 0)
              {
                v47[10] = 0;
                v49 = v47[1];
                v50 = re::ecs2::AudioPlayerComponent::getTimebaseService(*(v15 + 16));
                v12 = re::ecs2::AudioPlayerComponent::completeTimebasePreparation(v15, v49, (v47 + 2), v50);
              }
            }
          }
        }

        v51 = *(v15 + 64);
        if (v51 <= v45 + 1)
        {
          v51 = v45 + 1;
        }

        while (v51 - 1 != v45)
        {
          LODWORD(v45) = v45 + 1;
          if ((*(*(v15 + 48) + 304 * v45) & 0x80000000) != 0)
          {
            goto LABEL_78;
          }
        }

        LODWORD(v45) = v51;
      }

      v52 = *(v15 + 16);
      v13 = v56;
      if (v52)
      {
        v53 = re::ecs2::EntityComponentCollection::get((v52 + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        if (v53)
        {
          re::ecs2::SpatialAudioComponent::syncStateToAudioPlayerComponent(v53);
        }

        else
        {
          v12 = re::ecs2::EntityComponentCollection::get((v52 + 48), re::ecs2::ComponentImpl<re::ecs2::AmbientAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          if (v12 || (v12 = re::ecs2::EntityComponentCollection::get((v52 + 48), re::ecs2::ComponentImpl<re::ecs2::ChannelAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)) != 0)
          {
            re::ecs2::AmbientAudioComponent::syncStateToAudioPlayerComponent(v12);
          }
        }
      }

      a3 = v58 + 1;
    }

    while (v58 + 1 != v55);
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = (*a2 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a1, *a3, a3[1]);
}

uint64_t re::HashBrown<re::ecs2::Scene *,std::vector<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::find(void *a1, unint64_t a2)
{
  if (!a1[7])
  {
    return -1;
  }

  v2 = a1[2];
  if (v2 < 0x10 || !a1[3])
  {
    return -1;
  }

  v3 = v2 >> 4;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v5 = v4 ^ (v4 >> 31);
  v6 = v5 % v3;
  v7 = vdupq_n_s8(v5 & 0x7F);
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v9 = v5 % v3;
  while (1)
  {
    v10 = *(*a1 + 16 * v9);
    v11 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v7, v10), xmmword_1E304FAD0)))), 0x3830282018100800);
    v12 = __clz(__rbit64(v11));
    if (v12 <= 0x3F)
    {
      break;
    }

LABEL_10:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v10, v8), xmmword_1E304FAD0)))), 0x3830282018100800))
    {
      return -1;
    }

    if (v9 + 1 == v3)
    {
      v9 = 0;
    }

    else
    {
      ++v9;
    }

    v14 = -1;
    if (v9 == v6)
    {
      return v14;
    }
  }

  v13 = 16 * v9;
  while (1)
  {
    v14 = v12 + v13;
    if (*(a1[1] + 32 * (v12 + v13)) == a2)
    {
      return v14;
    }

    if (v12 <= 0x3E)
    {
      v12 = __clz(__rbit64((-2 << v12) & v11));
      if (v12 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_10;
  }
}

int64x2_t re::HashBrown<re::ecs2::Scene *,std::vector<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::internalAdd(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<re::ecs2::Scene *,std::vector<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::resize(a1, 1u);
    v7 = *(a1 + 16);
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = v9 % (v7 >> 4);
  v12 = *a1;
  v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v13 >= 0x40)
  {
    do
    {
      if (v11 + 1 == v10)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v12 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v13 > 0x3F);
  }

  v14 = v12 + 16 * v11;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = 32 * (v13 + 16 * v11);
  *(*(a1 + 8) + v16) = *a2;
  v17 = (*(a1 + 8) + v16);
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = 0;
  *(v17 + 1) = *a3;
  v17[3] = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (v15 == 255)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v19.i64[1] = v18;
  result = vaddq_s64(*(a1 + 24), v19);
  *(a1 + 24) = result;
  v21 = *(*(a1 + 8) + v16) ^ (*(*(a1 + 8) + v16) >> 30);
  v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v21) ^ ((0xBF58476D1CE4E5B9 * v21) >> 27));
  *(a1 + 40) ^= (v22 >> 31) ^ v22;
  return result;
}

double re::HashBrown<re::ecs2::Scene *,std::vector<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::resize(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24) + a2;
  v5 = (((151 * v4) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v5 > v3)
  {
    v6 = 3 * v3;
    v7 = v6 << 6;
    v8 = (v6 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v5 > v7 >> 7)
    {
      v8 = (((151 * v4) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v4 = (v8 << 7) / 0x97;
  }

  v9 = *(a1 + 56);
  memset(v28, 0, sizeof(v28));
  re::HashBrown<re::ecs2::Scene *,std::vector<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::init(v28, v9, v4);
  v26[0] = a1;
  v11 = *(a1 + 16);
  if (v11 >= 0x10)
  {
    v12 = 0;
    v13 = *a1;
    v14 = v11 >> 4;
    v15 = xmmword_1E304FAD0;
    v10.n128_u64[0] = 0x3830282018100800;
    while (1)
    {
      v16 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v13), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v26[1] = v16 ^ 0xFFFFLL;
      if (v16 != 0xFFFFLL)
      {
        break;
      }

      v12 -= 16;
      ++v13;
      if (!--v14)
      {
        goto LABEL_13;
      }
    }

    v17 = __clz(__rbit64(v16 ^ 0xFFFFLL));
    v18 = v17 - v12;
    v27 = v17 - v12;
    if (v17 + 1 != v12)
    {
      do
      {
        re::HashBrown<re::ecs2::Scene *,std::vector<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::internalAdd(v28, *(v26[0] + 8) + 32 * v18, *(v26[0] + 8) + 32 * v18 + 8, v15, v10);
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v26);
        v18 = v27;
      }

      while (v27 != -1);
      v11 = *(a1 + 16);
    }
  }

LABEL_13:
  v19 = *(&v28[3] + 1);
  *(&v28[3] + 1) = *(a1 + 56);
  v20 = v28[0];
  v21 = v28[1];
  v28[0] = *a1;
  *&v28[1] = v11;
  v22 = v28[2];
  v23 = *(a1 + 40);
  *(a1 + 48) = *&v28[3];
  *(a1 + 56) = v19;
  *(&v28[2] + 8) = v23;
  v24 = *(a1 + 24);
  *a1 = v20;
  *(a1 + 16) = v21;
  *(a1 + 32) = v22;
  *(&v28[1] + 8) = v24;
  return re::HashBrown<re::ecs2::Scene *,std::vector<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::deinit(v28);
}

void *re::HashBrown<re::ecs2::Scene *,std::vector<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::init(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  result[7] = a2;
  v4 = 151 * a3;
  v5 = ((151 * a3) >> 7) + 15;
  result[2] = v5 & 0x3FFFFFFFFFFFFF0;
  if ((v5 & 0x3FFFFFFFFFFFFF0) != 0)
  {
    v6 = v5 >> 4;
    result = (*(*a2 + 32))(a2, 33 * (v5 & 0x3FFFFFFFFFFFFF0), 16);
    *v3 = result;
    if (v4 >= 0x80)
    {
      v7 = 0;
      *&v8 = -1;
      *(&v8 + 1) = -1;
      do
      {
        *(*v3 + 16 * v7++) = v8;
      }

      while (v6 != v7);
      result = *v3;
    }

    v3[1] = &result[2 * v6];
    v9 = v3[2];
  }

  else
  {
    v9 = 0;
    *result = 0;
    result[1] = 0;
  }

  v3[5] = 0;
  v3[6] = 0;
  v3[3] = 0;
  v3[4] = v9;
  return result;
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::ChannelAudioComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioPlayerSystem::didAddChannelAudioComponents,re::ecs2::AudioPlayerSystem>(re *a1, uint64_t a2, re::ecs2::AmbientAudioComponent **a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a3;
    v5 = &a3[a4];
    v6 = xmmword_1E306AC00;
    do
    {
      v7 = *v4;
      v8 = *(*v4 + 2);
      if (v8)
      {
        v9 = *(v8 + 98);
        if (*(v8 + 98))
        {
          v10 = (re::ecs2::ComponentImpl<re::ecs2::AmbientAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
          v11 = *(v8 + 104);
          v12 = vld1q_dup_s16(v10);
          v13 = 1;
          v14 = v11;
          v15 = *(v8 + 98);
          while (1)
          {
            v16 = vandq_s8(vceqq_s16(v12, *v14), v6);
            v16.i16[0] = vmaxvq_u16(v16);
            if (v16.i32[0])
            {
              break;
            }

            v13 -= 8;
            ++v14;
            if (!--v15)
            {
              goto LABEL_10;
            }
          }

          if (v16.u16[0] - v13 < *(v8 + 96))
          {
LABEL_15:
            v21 = *re::audioLogObjects(a1);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "An entity may only have a single audio component at a time. The previous audio component is being removed.", buf, 2u);
            }

            re::ecs2::EntityComponentCollection::remove((v8 + 48), re::ecs2::ComponentImpl<re::ecs2::AmbientAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            re::ecs2::EntityComponentCollection::remove((v8 + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            goto LABEL_18;
          }

LABEL_10:
          v17 = (re::ecs2::ComponentImpl<re::ecs2::SpatialAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
          v18 = vld1q_dup_s16(v17);
          v19 = 1;
          while (1)
          {
            v20 = vandq_s8(vceqq_s16(v18, *v11), v6);
            v20.i16[0] = vmaxvq_u16(v20);
            if (v20.i32[0])
            {
              break;
            }

            v19 -= 8;
            ++v11;
            if (!--v9)
            {
              goto LABEL_18;
            }
          }

          if (v20.u16[0] - v19 < *(v8 + 96))
          {
            goto LABEL_15;
          }
        }

LABEL_18:
        re::ecs2::AmbientAudioComponent::syncStateToAudioPlayerComponent(v7);
        v6 = xmmword_1E306AC00;
      }

      ++v4;
    }

    while (v4 != v5);
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::ChannelAudioComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::ChannelAudioComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::ChannelAudioComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = (*a2 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a1, *a3, a3[1]);
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::AmbientAudioComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioPlayerSystem::didAddAmbientAudioComponents,re::ecs2::AudioPlayerSystem>(re *a1, uint64_t a2, re::ecs2::AmbientAudioComponent **a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a3;
    v5 = &a3[a4];
    v6 = xmmword_1E306AC00;
    do
    {
      v7 = *v4;
      v8 = *(*v4 + 2);
      if (v8)
      {
        v9 = *(v8 + 98);
        if (*(v8 + 98))
        {
          v10 = (re::ecs2::ComponentImpl<re::ecs2::ChannelAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
          v11 = *(v8 + 104);
          v12 = vld1q_dup_s16(v10);
          v13 = 1;
          v14 = v11;
          v15 = *(v8 + 98);
          while (1)
          {
            v16 = vandq_s8(vceqq_s16(v12, *v14), v6);
            v16.i16[0] = vmaxvq_u16(v16);
            if (v16.i32[0])
            {
              break;
            }

            v13 -= 8;
            ++v14;
            if (!--v15)
            {
              goto LABEL_10;
            }
          }

          if (v16.u16[0] - v13 < *(v8 + 96))
          {
LABEL_15:
            v21 = *re::audioLogObjects(a1);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "An entity may only have a single audio component at a time. The previous audio component is being removed.", buf, 2u);
            }

            re::ecs2::EntityComponentCollection::remove((v8 + 48), re::ecs2::ComponentImpl<re::ecs2::ChannelAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            re::ecs2::EntityComponentCollection::remove((v8 + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            goto LABEL_18;
          }

LABEL_10:
          v17 = (re::ecs2::ComponentImpl<re::ecs2::SpatialAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
          v18 = vld1q_dup_s16(v17);
          v19 = 1;
          while (1)
          {
            v20 = vandq_s8(vceqq_s16(v18, *v11), v6);
            v20.i16[0] = vmaxvq_u16(v20);
            if (v20.i32[0])
            {
              break;
            }

            v19 -= 8;
            ++v11;
            if (!--v9)
            {
              goto LABEL_18;
            }
          }

          if (v20.u16[0] - v19 < *(v8 + 96))
          {
            goto LABEL_15;
          }
        }

LABEL_18:
        re::ecs2::AmbientAudioComponent::syncStateToAudioPlayerComponent(v7);
        v6 = xmmword_1E306AC00;
      }

      ++v4;
    }

    while (v4 != v5);
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AmbientAudioComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AmbientAudioComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AmbientAudioComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = (*a2 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a1, *a3, a3[1]);
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::SpatialAudioComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioPlayerSystem::didAddSpatialAudioComponents,re::ecs2::AudioPlayerSystem>(re *a1, uint64_t a2, re::ecs2::SpatialAudioComponent **a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a3;
    v5 = &a3[a4];
    v6 = xmmword_1E306AC00;
    do
    {
      v7 = *v4;
      v8 = *(*v4 + 2);
      if (v8)
      {
        v9 = *(v8 + 98);
        if (*(v8 + 98))
        {
          v10 = (re::ecs2::ComponentImpl<re::ecs2::ChannelAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
          v11 = *(v8 + 104);
          v12 = vld1q_dup_s16(v10);
          v13 = 1;
          v14 = v11;
          v15 = *(v8 + 98);
          while (1)
          {
            v16 = vandq_s8(vceqq_s16(v12, *v14), v6);
            v16.i16[0] = vmaxvq_u16(v16);
            if (v16.i32[0])
            {
              break;
            }

            v13 -= 8;
            ++v14;
            if (!--v15)
            {
              goto LABEL_10;
            }
          }

          if (v16.u16[0] - v13 < *(v8 + 96))
          {
LABEL_15:
            v21 = *re::audioLogObjects(a1);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "An entity may only have a single audio component at a time. The previous audio component is being removed.", buf, 2u);
            }

            re::ecs2::EntityComponentCollection::remove((v8 + 48), re::ecs2::ComponentImpl<re::ecs2::ChannelAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            re::ecs2::EntityComponentCollection::remove((v8 + 48), re::ecs2::ComponentImpl<re::ecs2::AmbientAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            goto LABEL_18;
          }

LABEL_10:
          v17 = (re::ecs2::ComponentImpl<re::ecs2::AmbientAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
          v18 = vld1q_dup_s16(v17);
          v19 = 1;
          while (1)
          {
            v20 = vandq_s8(vceqq_s16(v18, *v11), v6);
            v20.i16[0] = vmaxvq_u16(v20);
            if (v20.i32[0])
            {
              break;
            }

            v19 -= 8;
            ++v11;
            if (!--v9)
            {
              goto LABEL_18;
            }
          }

          if (v20.u16[0] - v19 < *(v8 + 96))
          {
            goto LABEL_15;
          }
        }

LABEL_18:
        re::ecs2::SpatialAudioComponent::syncStateToAudioPlayerComponent(v7);
        v6 = xmmword_1E306AC00;
      }

      ++v4;
    }

    while (v4 != v5);
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::SpatialAudioComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::SpatialAudioComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::SpatialAudioComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = (*a2 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a1, *a3, a3[1]);
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::AudioPlayerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioPlayerSystem::willRemoveComponents,re::ecs2::AudioPlayerSystem>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a1;
  v54 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 472);
  v8 = (*(**(a1 + 40) + 32))(*(a1 + 40));
  v9 = re::ServiceLocator::serviceOrNull<re::SharedClockService>(v8);
  if (a4)
  {
    v45 = &a3[a4];
    v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27));
    v44 = v10 ^ (v10 >> 31);
    v47 = v6;
    v48 = v7;
    v46 = v9;
    do
    {
      v49 = a3;
      v11 = *a3;
      Instance = re::ecs2::AudioPlayerTelemetryReporter::getInstance(v9);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZN2re4ecs228AudioPlayerTelemetryReporter11updateCountEjj_block_invoke;
      v51 = &__block_descriptor_48_e5_v8__0l;
      v52 = Instance;
      v53 = *(v11 + 360);
      dispatch_async(re::ecs2::AudioPlayerTelemetryReporter::m_audioPlayerTelemetryQueue, block);
      if (*(v11 + 108))
      {
        v14 = *re::audioLogObjects(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(v11 + 352);
          if (!v15)
          {
            v15 = *(v11 + 400);
          }

          v16 = *(v11 + 16);
          if (v16)
          {
            v17 = re::ecs2::EntityComponentCollection::get((v16 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
            if (v17)
            {
              v16 = *(v17 + 32);
            }

            else
            {
              v16 = 0;
            }
          }

          v18 = *(v11 + 108);
          LODWORD(block[0]) = 134218752;
          *(block + 4) = v15;
          WORD2(block[1]) = 2048;
          *(&block[1] + 6) = v11;
          HIWORD(block[2]) = 2048;
          v51 = v16;
          LOWORD(v52) = 1024;
          *(&v52 + 2) = v18;
          _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "Removing AudioPlayerComponent (entityID=%llu) %p (connection=%llu) with %u source states", block, 0x26u);
          v7 = v48;
        }
      }

      memset(block, 0, sizeof(block));
      re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(block, v6 + 232, v7, v44);
      if (HIDWORD(block[1]) == 0x7FFFFFFF)
      {
        v19 = re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(v6 + 232, block[1], block[0]);
        *(v19 + 16) = 0u;
        v20 = v19 + 16;
        *(v19 + 8) = v7;
        *(v19 + 32) = 0u;
        *(v19 + 48) = 0u;
        *(v19 + 52) = 0x7FFFFFFF;
        ++*(v6 + 272);
      }

      else
      {
        v20 = *(v6 + 248) + 72 * HIDWORD(block[1]) + 16;
      }

      v21 = *(v11 + 112);
      if (v21)
      {
        v22 = 0;
        v23 = *(v11 + 96);
        while (1)
        {
          v24 = *v23;
          v23 += 8;
          if (v24 < 0)
          {
            break;
          }

          if (v21 == ++v22)
          {
            LODWORD(v22) = *(v11 + 112);
            break;
          }
        }
      }

      else
      {
        LODWORD(v22) = 0;
      }

      if (v22 != v21)
      {
        v25 = *(v11 + 96);
        do
        {
          v26 = v25 + 32 * v22;
          memset(block, 0, sizeof(block));
          v28 = *(v26 + 8);
          v27 = (v26 + 8);
          v29 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v28 ^ (v28 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v28 ^ (v28 >> 30))) >> 27));
          v30 = re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v20, v27, v29 ^ (v29 >> 31), block);
          v31 = HIDWORD(block[1]);
          if (HIDWORD(block[1]) == 0x7FFFFFFF)
          {
            v30 = re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long const&,re::SharedPtr<re::AudioSourceState> const&>(v20, block[0], block[1], v27, v27 + 1);
          }

          else
          {
            ++*(v20 + 40);
            v32 = *(v20 + 16) + 32 * v31;
            v35 = *(v32 + 16);
            v34 = (v32 + 16);
            v33 = v35;
            v36 = v27[1];
            if (v35 != v36)
            {
              if (v36)
              {
                v30 = (v36 + 8);
                v33 = *v34;
              }

              if (v33)
              {
              }

              *v34 = v36;
            }
          }

          v37 = *re::audioLogObjects(v30);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = v27[1];
            v39 = v37;
            v40 = *(v38 + 712);
            LODWORD(block[0]) = 134217984;
            *(block + 4) = v40;
            _os_log_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_DEFAULT, "[RE/ECS] [Update] Added stale source state with token: %llu", block, 0xCu);
          }

          if (*(v11 + 112) <= (v22 + 1))
          {
            v41 = v22 + 1;
          }

          else
          {
            v41 = *(v11 + 112);
          }

          v25 = *(v11 + 96);
          while (v41 - 1 != v22)
          {
            LODWORD(v22) = v22 + 1;
            if ((*(v25 + 32 * v22) & 0x80000000) != 0)
            {
              goto LABEL_43;
            }
          }

          LODWORD(v22) = v41;
LABEL_43:
          ;
        }

        while (v22 != v21);
      }

      if (v46)
      {
        (*(*v46 + 40))(v46);
      }

      v42 = *(v11 + 336);
      *(v11 + 336) = 0;

      v7 = v48;
      a3 = v49 + 1;
      v6 = v47;
    }

    while (v49 + 1 != v45);
  }

  return 0;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(void *a1, unint64_t a2)
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

uint64_t re::internal::CallableRef<re::ecs2::AudioPlayerSystem::update(re::ecs2::System::UpdateContext)::$_0,re::Optional<simd_float4x4> ()(unsigned long long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CE9318;
  *(a2 + 8) = *v2;
  return a2;
}

void std::invoke[abi:nn200100]<re::ecs2::AudioPlayerSystem::update(re::ecs2::System::UpdateContext)::$_0 const&,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v19[0] = a4;
  v7 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a2 + 152, v19);
  if (!v7)
  {
    v8 = *(a2 + 104);
    if (*(v8 + 39) == *&v19[0])
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v8 = *(v7 + 8);
  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = *(a3 + 296);
  v10 = 1;
  re::TransformService::worldMatrixForRendering(v9, v8, 1, v17);
  v18[0] = v17[0];
  v18[1] = v17[1];
  v18[2] = v17[2];
  v18[3] = v17[3];
  re::audio::cleanUpTransformForPHASE(v18, v11, v12, v13, v19);
  v14 = v19[1];
  v15 = v19[2];
  v16 = v19[3];
  *(a1 + 16) = v19[0];
  *(a1 + 32) = v14;
  *(a1 + 48) = v15;
  *(a1 + 64) = v16;
LABEL_6:
  *a1 = v10;
}

uint64_t re::internal::Callable<re::ecs2::AudioPlayerSystem::update(re::ecs2::System::UpdateContext)::$_0,re::Optional<simd_float4x4> ()(unsigned long long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CE9318;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::ecs2::AudioPlayerSystem::update(re::ecs2::System::UpdateContext)::$_0,re::Optional<simd_float4x4> ()(unsigned long long)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CE9318;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_10;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 72 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_10:
    v6 = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + 72 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 72 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 72 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_11;
      }
    }

    v5 = v8;
  }

LABEL_11:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          v13 = *(a1 + 16);
          *&v27[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v27[24];
          *&v27[24] = *(a1 + 24);
          v14 = *&v27[32];
          *(a1 + 24) = v15;
          ++*&v27[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 32;
            do
            {
              if ((*(v17 - 32) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(a1, *(v17 + 32) % *(a1 + 24));
                *(v18 + 8) = *(v17 - 24);
                *(v18 + 48) = 0;
                *(v18 + 16) = 0u;
                *(v18 + 32) = 0u;
                *(v18 + 52) = 0x7FFFFFFFLL;
                *(v18 + 16) = *(v17 - 16);
                *(v17 - 16) = 0;
                v19 = *(v18 + 24);
                *(v18 + 24) = *(v17 - 8);
                *(v17 - 8) = v19;
                v20 = *(v18 + 32);
                *(v18 + 32) = *v17;
                *v17 = v20;
                *(v18 + 40) = *(v17 + 8);
                *(v17 + 8) = 0;
                LODWORD(v20) = *(v18 + 44);
                *(v18 + 44) = *(v17 + 12);
                *(v17 + 12) = v20;
                LODWORD(v20) = *(v18 + 48);
                *(v18 + 48) = *(v17 + 16);
                *(v17 + 16) = v20;
                LODWORD(v20) = *(v18 + 52);
                *(v18 + 52) = *(v17 + 20);
                *(v17 + 20) = v20;
                ++*(v18 + 56);
              }

              v17 += 72;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(v27);
        }
      }

      else
      {
        if (v8)
        {
          v23 = 2 * v7;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 72 * v5);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 72 * v5);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = v21 + 72 * v5;
  *v24 = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *v24 = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v5;
  *(v24 + 64) = a3;
  ++*(a1 + 28);
  return v21 + 72 * v5;
}

void *re::IntrospectionHashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, uint64_t *a5)
{
  v10 = 0;
  v8 = re::HashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(a4, a5, &v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 8;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 32 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 16);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 32 * v6) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v6) = v11;
LABEL_17:
    ;
  }

  while (v6 != v5);
  return result;
}

void re::HashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v15, 0, 36);
      *&v15[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v15, v4, a2);
      v5 = *v15;
      *v15 = *a1;
      *a1 = v5;
      v6 = *&v15[16];
      v7 = *(a1 + 16);
      *&v15[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v15[24];
      *&v15[24] = *(a1 + 24);
      v8 = *&v15[32];
      *(a1 + 24) = v9;
      ++*&v15[40];
      v10 = v8;
      if (v8)
      {
        v11 = (v7 + 16);
        do
        {
          if ((*(v11 - 2) & 0x80000000) != 0)
          {
            v12 = re::HashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v11[1] % *(a1 + 24));
            v13 = *v11;
            *(v12 + 8) = *(v11 - 1);
            *(v12 + 16) = v13;
          }

          v11 += 4;
          --v10;
        }

        while (v10);
      }

      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v15);
    }
  }

  else
  {
    if (a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = 3;
    }
  }
}

uint64_t re::HashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 32 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 24) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + 32 * v5;
}

uint64_t re::HashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(uint64_t a1, uint64_t *a2, void *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v12, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  v7 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v13, v12);
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

void re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1);

  return re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1);

    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, uint64_t *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, uint64_t *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v5, a1, *a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 32 * v6 + 16;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 32 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 8;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 32 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 32 * *(a1 + 32) + 16;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::v1::AudioSourceState *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void re::ecs2::v1::AudioPlayerComponent::~AudioPlayerComponent(re::ecs2::v1::AudioPlayerComponent *this)
{
  *this = &unk_1F5CE9410;
  v2 = (this + 32);
  re::DynamicArray<re::AssetHandle>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CE9410;
  v2 = (this + 32);
  re::DynamicArray<re::AssetHandle>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs22v120AudioPlayerComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS6_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS9_ENS0_8priorityILi1EEEENUlSE_S9_E_8__invokeESE_S9_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 1;
    *(a2 + 8) = 0;
  }
}

void re::ecs2::introspect_UILayerGeometryGroundingShadowType(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A32F0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1A32F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A32F8))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1A3328, "UILayerGeometryGroundingShadowType", 1, 1, 1, 1);
      qword_1EE1A3328 = &unk_1F5D0C658;
      qword_1EE1A3368 = &re::ecs2::introspect_UILayerGeometryGroundingShadowType(BOOL)::enumTable;
      dword_1EE1A3338 = 9;
      __cxa_guard_release(&qword_1EE1A32F8);
    }

    if (_MergedGlobals_189)
    {
      break;
    }

    _MergedGlobals_189 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1A3328, a2);
    v35 = 0xE31EB6F765E1894CLL;
    v36 = "UILayerGeometryGroundingShadowType";
    v39 = 0x31CD534126;
    v40 = "uint8_t";
    v4 = v38[0];
    v5 = v38[1];
    if (v39)
    {
      if (v39)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1A3368;
      v39 = v4;
      v40 = v5;
      re::TypeBuilder::beginEnumType(v38, &v35, 1, 1, &v39);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v37.var0 = 2 * v11;
            v37.var1 = v10;
            re::TypeBuilder::addEnumConstant(v38, v15, &v37);
            if (*&v37.var0)
            {
              if (*&v37.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v37.var0 = 2 * v20;
              v37.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v38, v24, &v37);
              if (*&v37.var0)
              {
                if (*&v37.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v38, v26);
      xmmword_1EE1A3348 = v37;
      if (v35)
      {
        if (v35)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v36);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1A32F0);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "None";
      qword_1EE1A3310 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "FadeUI";
      qword_1EE1A3318 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 8) = 2;
      *(v34 + 16) = "Constant";
      qword_1EE1A3320 = v34;
      __cxa_guard_release(&qword_1EE1A32F0);
    }
  }
}

void *re::ecs2::allocInfo_UILayerGeometryComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A3308, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A3308))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A3370, "UILayerGeometryComponent");
    __cxa_guard_release(&qword_1EE1A3308);
  }

  return &unk_1EE1A3370;
}

void re::ecs2::initInfo_UILayerGeometryComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v125[0] = 0xE73E24FF61F3F61CLL;
  v125[1] = "UILayerGeometryComponent";
  if (v125[0])
  {
    if (v125[0])
    {
    }
  }

  *(this + 2) = v126;
  if ((atomic_load_explicit(&qword_1EE1A3300, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A3300);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::ecs2::introspect_Component(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "Component";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1A3400 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_uint16_t(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "widthSegmentCount";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1A00000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A3408 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_uint16_t(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "heightSegmentCount";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x1C00000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1A3410 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_uint16_t(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "flatDepthSegmentCount";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x1E00000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1A3418 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::introspect_uint16_t(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "cornerRadiusSegmentCount";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x2000000004;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1A3420 = v24;
      v25 = re::introspectionAllocator(v24);
      v27 = re::introspect_uint16_t(1, v26);
      v28 = (*(*v25 + 32))(v25, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "frontBackBevelSegmentCount";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0x2200000005;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE1A3428 = v28;
      v29 = re::introspectionAllocator(v28);
      v31 = re::introspect_float(1, v30);
      v32 = (*(*v29 + 32))(v29, 72, 8);
      *v32 = 1;
      *(v32 + 8) = "bevelFrontDepth";
      *(v32 + 16) = v31;
      *(v32 + 24) = 0;
      *(v32 + 32) = 0x2400000006;
      *(v32 + 40) = 0;
      *(v32 + 48) = 0;
      *(v32 + 56) = 0;
      *(v32 + 64) = 0;
      qword_1EE1A3430 = v32;
      v33 = re::introspectionAllocator(v32);
      v35 = re::introspect_float(1, v34);
      v36 = (*(*v33 + 32))(v33, 72, 8);
      *v36 = 1;
      *(v36 + 8) = "bevelBackDepth";
      *(v36 + 16) = v35;
      *(v36 + 24) = 0;
      *(v36 + 32) = 0x2800000007;
      *(v36 + 40) = 0;
      *(v36 + 48) = 0;
      *(v36 + 56) = 0;
      *(v36 + 64) = 0;
      qword_1EE1A3438 = v36;
      v37 = re::introspectionAllocator(v36);
      v39 = re::introspect_float(1, v38);
      v40 = (*(*v37 + 32))(v37, 72, 8);
      *v40 = 1;
      *(v40 + 8) = "flatDepth";
      *(v40 + 16) = v39;
      *(v40 + 24) = 0;
      *(v40 + 32) = 0x2C00000008;
      *(v40 + 40) = 0;
      *(v40 + 48) = 0;
      *(v40 + 56) = 0;
      *(v40 + 64) = 0;
      qword_1EE1A3440 = v40;
      v41 = re::introspectionAllocator(v40);
      v43 = re::introspect_float(1, v42);
      v44 = (*(*v41 + 32))(v41, 72, 8);
      *v44 = 1;
      *(v44 + 8) = "width";
      *(v44 + 16) = v43;
      *(v44 + 24) = 0;
      *(v44 + 32) = 0x3000000009;
      *(v44 + 40) = 0;
      *(v44 + 48) = 0;
      *(v44 + 56) = 0;
      *(v44 + 64) = 0;
      qword_1EE1A3448 = v44;
      v45 = re::introspectionAllocator(v44);
      v47 = re::introspect_float(1, v46);
      v48 = (*(*v45 + 32))(v45, 72, 8);
      *v48 = 1;
      *(v48 + 8) = "height";
      *(v48 + 16) = v47;
      *(v48 + 24) = 0;
      *(v48 + 32) = 0x340000000ALL;
      *(v48 + 40) = 0;
      *(v48 + 48) = 0;
      *(v48 + 56) = 0;
      *(v48 + 64) = 0;
      qword_1EE1A3450 = v48;
      v49 = re::introspectionAllocator(v48);
      v51 = re::introspect_float(1, v50);
      v52 = (*(*v49 + 32))(v49, 72, 8);
      *v52 = 1;
      *(v52 + 8) = "cornerRadius";
      *(v52 + 16) = v51;
      *(v52 + 24) = 0;
      *(v52 + 32) = 0x380000000BLL;
      *(v52 + 40) = 0;
      *(v52 + 48) = 0;
      *(v52 + 56) = 0;
      *(v52 + 64) = 0;
      qword_1EE1A3458 = v52;
      v53 = re::introspectionAllocator(v52);
      v55 = re::introspect_BOOL(1, v54);
      v56 = (*(*v53 + 32))(v53, 72, 8);
      *v56 = 1;
      *(v56 + 8) = "needsVertDistanceToPlatterEdge";
      *(v56 + 16) = v55;
      *(v56 + 24) = 0;
      *(v56 + 32) = 0x3C0000000CLL;
      *(v56 + 40) = 0;
      *(v56 + 48) = 0;
      *(v56 + 56) = 0;
      *(v56 + 64) = 0;
      qword_1EE1A3460 = v56;
      v57 = re::introspectionAllocator(v56);
      v59 = re::introspect_float(1, v58);
      v60 = (*(*v57 + 32))(v57, 72, 8);
      *v60 = 1;
      *(v60 + 8) = "curveTheta";
      *(v60 + 16) = v59;
      *(v60 + 24) = 0;
      *(v60 + 32) = 0x400000000DLL;
      *(v60 + 40) = 0;
      *(v60 + 48) = 0;
      *(v60 + 56) = 0;
      *(v60 + 64) = 0;
      qword_1EE1A3468 = v60;
      v61 = re::introspectionAllocator(v60);
      v63 = re::introspect_BOOL(1, v62);
      v64 = (*(*v61 + 32))(v61, 72, 8);
      *v64 = 1;
      *(v64 + 8) = "curveDirectionIsFrontward";
      *(v64 + 16) = v63;
      *(v64 + 24) = 0;
      *(v64 + 32) = 0x440000000ELL;
      *(v64 + 40) = 0;
      *(v64 + 48) = 0;
      *(v64 + 56) = 0;
      *(v64 + 64) = 0;
      qword_1EE1A3470 = v64;
      v65 = re::introspectionAllocator(v64);
      v67 = re::introspect_uint16_t(1, v66);
      v68 = (*(*v65 + 32))(v65, 72, 8);
      *v68 = 1;
      *(v68 + 8) = "meshWidthSegmentCount";
      *(v68 + 16) = v67;
      *(v68 + 24) = 0;
      *(v68 + 32) = 0x6E0000000FLL;
      *(v68 + 40) = 0;
      *(v68 + 48) = 0;
      *(v68 + 56) = 0;
      *(v68 + 64) = 0;
      qword_1EE1A3478 = v68;
      v69 = re::introspectionAllocator(v68);
      v71 = re::introspect_uint16_t(1, v70);
      v72 = (*(*v69 + 32))(v69, 72, 8);
      *v72 = 1;
      *(v72 + 8) = "meshHeightSegmentCount";
      *(v72 + 16) = v71;
      *(v72 + 24) = 0;
      *(v72 + 32) = 0x7000000010;
      *(v72 + 40) = 0;
      *(v72 + 48) = 0;
      *(v72 + 56) = 0;
      *(v72 + 64) = 0;
      qword_1EE1A3480 = v72;
      v73 = re::introspectionAllocator(v72);
      v75 = re::introspect_uint16_t(1, v74);
      v76 = (*(*v73 + 32))(v73, 72, 8);
      *v76 = 1;
      *(v76 + 8) = "meshFlatDepthSegmentCount";
      *(v76 + 16) = v75;
      *(v76 + 24) = 0;
      *(v76 + 32) = 0x7200000011;
      *(v76 + 40) = 0;
      *(v76 + 48) = 0;
      *(v76 + 56) = 0;
      *(v76 + 64) = 0;
      qword_1EE1A3488 = v76;
      v77 = re::introspectionAllocator(v76);
      v79 = re::introspect_uint16_t(1, v78);
      v80 = (*(*v77 + 32))(v77, 72, 8);
      *v80 = 1;
      *(v80 + 8) = "meshCornerRadiusSegmentCount";
      *(v80 + 16) = v79;
      *(v80 + 24) = 0;
      *(v80 + 32) = 0x7400000012;
      *(v80 + 40) = 0;
      *(v80 + 48) = 0;
      *(v80 + 56) = 0;
      *(v80 + 64) = 0;
      qword_1EE1A3490 = v80;
      v81 = re::introspectionAllocator(v80);
      v83 = re::introspect_uint16_t(1, v82);
      v84 = (*(*v81 + 32))(v81, 72, 8);
      *v84 = 1;
      *(v84 + 8) = "meshFrontBackBevelSegmentCount";
      *(v84 + 16) = v83;
      *(v84 + 24) = 0;
      *(v84 + 32) = 0x7600000013;
      *(v84 + 40) = 0;
      *(v84 + 48) = 0;
      *(v84 + 56) = 0;
      *(v84 + 64) = 0;
      qword_1EE1A3498 = v84;
      v85 = re::introspectionAllocator(v84);
      v87 = re::introspect_float(1, v86);
      v88 = (*(*v85 + 32))(v85, 72, 8);
      *v88 = 1;
      *(v88 + 8) = "meshBevelFrontDepth";
      *(v88 + 16) = v87;
      *(v88 + 24) = 0;
      *(v88 + 32) = 0x7800000014;
      *(v88 + 40) = 0;
      *(v88 + 48) = 0;
      *(v88 + 56) = 0;
      *(v88 + 64) = 0;
      qword_1EE1A34A0 = v88;
      v89 = re::introspectionAllocator(v88);
      v91 = re::introspect_float(1, v90);
      v92 = (*(*v89 + 32))(v89, 72, 8);
      *v92 = 1;
      *(v92 + 8) = "meshBevelBackDepth";
      *(v92 + 16) = v91;
      *(v92 + 24) = 0;
      *(v92 + 32) = 0x7C00000015;
      *(v92 + 40) = 0;
      *(v92 + 48) = 0;
      *(v92 + 56) = 0;
      *(v92 + 64) = 0;
      qword_1EE1A34A8 = v92;
      v93 = re::introspectionAllocator(v92);
      v95 = re::introspect_float(1, v94);
      v96 = (*(*v93 + 32))(v93, 72, 8);
      *v96 = 1;
      *(v96 + 8) = "meshFlatDepth";
      *(v96 + 16) = v95;
      *(v96 + 24) = 0;
      *(v96 + 32) = 0x8000000016;
      *(v96 + 40) = 0;
      *(v96 + 48) = 0;
      *(v96 + 56) = 0;
      *(v96 + 64) = 0;
      qword_1EE1A34B0 = v96;
      v97 = re::introspectionAllocator(v96);
      v99 = re::introspect_float(1, v98);
      v100 = (*(*v97 + 32))(v97, 72, 8);
      *v100 = 1;
      *(v100 + 8) = "meshWidth";
      *(v100 + 16) = v99;
      *(v100 + 24) = 0;
      *(v100 + 32) = 0x8400000017;
      *(v100 + 40) = 0;
      *(v100 + 48) = 0;
      *(v100 + 56) = 0;
      *(v100 + 64) = 0;
      qword_1EE1A34B8 = v100;
      v101 = re::introspectionAllocator(v100);
      v103 = re::introspect_float(1, v102);
      v104 = (*(*v101 + 32))(v101, 72, 8);
      *v104 = 1;
      *(v104 + 8) = "meshHeight";
      *(v104 + 16) = v103;
      *(v104 + 24) = 0;
      *(v104 + 32) = 0x8800000018;
      *(v104 + 40) = 0;
      *(v104 + 48) = 0;
      *(v104 + 56) = 0;
      *(v104 + 64) = 0;
      qword_1EE1A34C0 = v104;
      v105 = re::introspectionAllocator(v104);
      v107 = re::introspect_float(1, v106);
      v108 = (*(*v105 + 32))(v105, 72, 8);
      *v108 = 1;
      *(v108 + 8) = "meshCornerRadius";
      *(v108 + 16) = v107;
      *(v108 + 24) = 0;
      *(v108 + 32) = 0x8C00000019;
      *(v108 + 40) = 0;
      *(v108 + 48) = 0;
      *(v108 + 56) = 0;
      *(v108 + 64) = 0;
      qword_1EE1A34C8 = v108;
      v109 = re::introspectionAllocator(v108);
      v111 = re::introspect_BOOL(1, v110);
      v112 = (*(*v109 + 32))(v109, 72, 8);
      *v112 = 1;
      *(v112 + 8) = "meshNeedsVertDistanceToPlatterEdge";
      *(v112 + 16) = v111;
      *(v112 + 24) = 0;
      *(v112 + 32) = 0x900000001ALL;
      *(v112 + 40) = 0;
      *(v112 + 48) = 0;
      *(v112 + 56) = 0;
      *(v112 + 64) = 0;
      qword_1EE1A34D0 = v112;
      v113 = re::introspectionAllocator(v112);
      v115 = re::introspect_float(1, v114);
      v116 = (*(*v113 + 32))(v113, 72, 8);
      *v116 = 1;
      *(v116 + 8) = "meshCurveTheta";
      *(v116 + 16) = v115;
      *(v116 + 24) = 0;
      *(v116 + 32) = 0x940000001BLL;
      *(v116 + 40) = 0;
      *(v116 + 48) = 0;
      *(v116 + 56) = 0;
      *(v116 + 64) = 0;
      qword_1EE1A34D8 = v116;
      v117 = re::introspectionAllocator(v116);
      v119 = re::introspect_BOOL(1, v118);
      v120 = (*(*v117 + 32))(v117, 72, 8);
      *v120 = 1;
      *(v120 + 8) = "meshCurveDirectionIsFrontward";
      *(v120 + 16) = v119;
      *(v120 + 24) = 0;
      *(v120 + 32) = 0x980000001CLL;
      *(v120 + 40) = 0;
      *(v120 + 48) = 0;
      *(v120 + 56) = 0;
      *(v120 + 64) = 0;
      qword_1EE1A34E0 = v120;
      v121 = re::introspectionAllocator(v120);
      re::ecs2::introspect_UILayerGeometryGroundingShadowType(v121, v122);
      v123 = (*(*v121 + 32))(v121, 72, 8);
      *v123 = 1;
      *(v123 + 8) = "groundingShadowType";
      *(v123 + 16) = &qword_1EE1A3328;
      *(v123 + 24) = 0;
      *(v123 + 32) = 0x6C0000001DLL;
      *(v123 + 40) = 0;
      *(v123 + 48) = 0;
      *(v123 + 56) = 0;
      *(v123 + 64) = 0;
      qword_1EE1A34E8 = v123;
      __cxa_guard_release(&qword_1EE1A3300);
    }
  }

  *(this + 2) = 0x3C000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 30;
  *(this + 8) = &qword_1EE1A3400;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::UILayerGeometryComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::UILayerGeometryComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::UILayerGeometryComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::UILayerGeometryComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs224UILayerGeometryComponentELNS_17RealityKitReleaseE13EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v124 = v126;
}

void *re::internal::defaultDestruct<re::ecs2::UILayerGeometryComponent>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_destroyWeak((a3 + 952));
  *(a3 + 952) = 0;
  re::GeomMesh::~GeomMesh((a3 + 200));
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance((a3 + 8));
}

void *re::internal::defaultDestructV2<re::ecs2::UILayerGeometryComponent>(uint64_t a1)
{
  objc_destroyWeak((a1 + 952));
  *(a1 + 952) = 0;
  re::GeomMesh::~GeomMesh((a1 + 200));
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance((a1 + 8));
}

void re::ecs2::UILayerGeometryComponent::buildGeomMesh(re::ecs2::UILayerGeometryComponent *this, double a2, double a3, double a4)
{
  v108 = *MEMORY[0x1E69E9840];
  v6 = *(this + 13);
  *(this + 55) = v6;
  v7 = *(this + 14);
  *(this + 56) = v7;
  v8 = *(this + 15);
  *(this + 57) = v8;
  v9 = *(this + 16);
  *(this + 58) = v9;
  v10 = *(this + 17);
  *(this + 59) = v10;
  v11 = *(this + 9);
  v12 = *(this + 10);
  *(this + 30) = v11;
  *(this + 31) = v12;
  LODWORD(a4) = *(this + 11);
  *(this + 32) = LODWORD(a4);
  v13 = *(this + 14);
  v14 = *(this + 60);
  *(this + 144) = v14;
  *(this + 37) = *(this + 16);
  *(this + 76) = *(this + 34);
  v15 = *(this + 88);
  *(this + 10) = *(this + 72);
  *(this + 11) = v15;
  *(this + 48) = *(this + 26);
  v69[0] = v6;
  v69[1] = v7;
  v69[2] = v8;
  v69[3] = v9;
  v69[4] = v10;
  v72 = v12;
  v73 = LODWORD(a4);
  v75 = 257;
  v76 = 0;
  v16 = *(this + 48);
  *(this + 132) = v16;
  *&a4 = fminf(v13, fminf(v16.f32[0], v16.f32[1]) * 0.5);
  *(this + 35) = LODWORD(a4);
  v70 = LODWORD(a4);
  v71 = v11;
  v74 = v16;
  __asm { FMOV            V9.2S, #0.25 }

  v22 = vmul_f32(v16, _D9);
  v23 = vmul_f32(v16, 0x3F0000003F000000);
  v24 = vdup_lane_s32(*&a4, 0);
  __asm { FMOV            V8.2S, #1.0 }

  v77 = vsub_f32(_D8, vdiv_f32(vsub_f32(vbsl_s8(vcgt_f32(v22, v24), v22, vbsl_s8(vcgt_f32(v24, v23), v23, v24)), v22), vsub_f32(v23, v22)));
  v78 = 0;
  if (v14)
  {
    v26 = "vertDistanceToPlatterEdge";
  }

  else
  {
    v26 = 0;
  }

  v79 = v26;
  re::buildPlatterWithRoundedCorners(this + 50, v69);
  v28 = *(this + 37);
  if (v28 > 0.0 && v28 >= ((v28 + 1.0) * 0.00001))
  {
    re::internal::wrapGeometryAroundCylinder(this + 25, this + 25, *(this + 68), v28);
  }

  if (*(this + 69) == 1)
  {
    v4 = *(this + 54);
    v29 = re::modifyVertexUVs((this + 200), v27);
    if (v4)
    {
      v30 = v27;
      v31 = v27;
      while (v31)
      {
        LODWORD(v32) = *v29;
        *(&v32 + 1) = 1.0 - *(v29 + 4);
        *v29 = v32;
        v29 += 8;
        --v31;
        if (!--v4)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_46;
    }
  }

LABEL_12:
  v33 = *(this + 26);
  if (v33 > 0.0)
  {
    v34 = fabsf(v33);
    if (v34 >= ((v34 + 1.0) * 0.00001))
    {
      v80 = *(this + 26);
      v36 = *(this + 48);
      v84 = *(this + 5);
      v35.i32[1] = HIDWORD(v84);
      v37 = *(this + 14);
      v81 = *(this + 17);
      v86 = 257;
      v87 = 0;
      *v35.i32 = fminf(v37, fminf(v36.f32[0], v36.f32[1]) * 0.5);
      v82 = v35.i32[0];
      v83 = v33;
      v85 = v36;
      v38 = vmul_f32(v36, _D9);
      v39 = vmul_f32(v36, 0x3F0000003F000000);
      v40 = vdup_lane_s32(v35, 0);
      v88 = vsub_f32(_D8, vdiv_f32(vsub_f32(vbsl_s8(vcgt_f32(v38, v40), v38, vbsl_s8(vcgt_f32(v40, v39), v39, v40)), v38), vsub_f32(v39, v38)));
      v89 = 0;
      if (*(this + 60))
      {
        v41 = "vertDistanceToPlatterEdge";
      }

      else
      {
        v41 = 0;
      }

      v90 = v41;
      re::GeomMesh::GeomMesh(out, 0);
      re::buildPlatterWithRoundedCorners(out, &v80);
      v42 = *(this + 16);
      if (v42 > 0.0 && v42 >= ((v42 + 1.0) * 0.00001))
      {
        re::internal::wrapGeometryAroundCylinder(out, out, *(this + 68), v42);
        re::computeSmoothFaceVaryingNormals(out, v43, 0.7854);
      }

      v44 = re::GeomMesh::modifyVertexPositions(out);
      v46 = v45;
      re::GeomMesh::accessVertexPositions((this + 200));
      if (v46 == v47)
      {
        if (v46)
        {
          v4 = 0;
          v48 = 8;
          while (1)
          {
            v49 = re::GeomMesh::accessVertexPositions((this + 200));
            if (v4 >= v50)
            {
              break;
            }

            *(v44 + v48) = *(v49 + v48);
            ++v4;
            v48 += 16;
            if (v46 == v4)
            {
              goto LABEL_25;
            }
          }

LABEL_47:
          v68 = v50;
          v91 = 0;
          v106 = 0u;
          v107 = 0u;
          memset(buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v97 = 136315906;
          v98 = "operator[]";
          v99 = 1024;
          v100 = 613;
          v101 = 2048;
          v102 = v4;
          v103 = 2048;
          v104 = v68;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

LABEL_25:
        re::GeomMesh::copy(out, this + 25);
      }

      else
      {
        if ((atomic_load_explicit(&qword_1EE1A32E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A32E8))
        {
          qword_1EE1A32E0 = os_log_create("com.apple.re", "UILayer");
          __cxa_guard_release(&qword_1EE1A32E8);
        }

        v51 = qword_1EE1A32E0;
        if (os_log_type_enabled(qword_1EE1A32E0, OS_LOG_TYPE_DEFAULT))
        {
          re::GeomMesh::accessVertexPositions((this + 200));
          *buf = 67109376;
          *&buf[4] = v46;
          *&buf[8] = 1024;
          *&buf[10] = v52;
          _os_log_impl(&dword_1E1C61000, v51, OS_LOG_TYPE_DEFAULT, "Skipped FrontDepthNormals due to mismatch between positionsModifier size (%d) and baseMesh (%d)", buf, 0xEu);
        }
      }

      re::GeomMesh::~GeomMesh(out);
    }
  }

  v53 = vmvn_s8(vceq_f32(*(this + 96), _D8));
  if ((vpmax_u32(v53, v53).u32[0] & 0x80000000) != 0 || (v54 = vmvn_s8(vceq_f32(*(this + 88), 1056964608)), (vpmax_u32(v54, v54).u32[0] & 0x80000000) != 0))
  {
    v30 = *(this + 54);
    v55 = re::modifyVertexUVs((this + 200), v27);
    if (v30)
    {
      v57 = v56;
      v58 = (v55 + 4);
      v59 = v56;
      while (v59)
      {
        v60 = *(this + 22) + ((*(v58 - 1) - *(this + 22)) * *(this + 24));
        *&v61 = v60;
        *(&v61 + 1) = *v58;
        *(v58 - 1) = v61;
        v62 = *(this + 19);
        if (*(this + 18) <= v60)
        {
          v60 = *(this + 18);
        }

        *(this + 18) = v60;
        v63 = *v58;
        if (v62 <= *v58)
        {
          v63 = v62;
        }

        *(this + 19) = v63;
        v64 = *(v58 - 1);
        v65 = *(this + 21);
        if (*(this + 20) >= v64)
        {
          v64 = *(this + 20);
        }

        *(this + 20) = v64;
        v66 = *v58;
        v58 += 2;
        v67 = v66;
        if (v65 >= v66)
        {
          v67 = v65;
        }

        *(this + 21) = v67;
        --v59;
        if (!--v30)
        {
          goto LABEL_44;
        }
      }

      v80 = 0;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      *out = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *buf = 136315906;
      *&buf[4] = "operator[]";
      *&buf[12] = 1024;
      *&buf[14] = 621;
      *&buf[18] = 2048;
      *&buf[20] = v57;
      *&buf[28] = 2048;
      *&buf[30] = v57;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_46:
      v80 = 0;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      *out = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *buf = 136315906;
      *&buf[4] = "operator[]";
      *&buf[12] = 1024;
      *&buf[14] = 621;
      *&buf[18] = 2048;
      *&buf[20] = v30;
      *&buf[28] = 2048;
      *&buf[30] = v30;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_47;
    }
  }

LABEL_44:
  uuid_generate_random(out);
  *(this + 117) = (*&out[8] + (*out << 6) + (*out >> 2) - 0x61C8864680B583E9) ^ *out;
}

void *re::make::shared::unsafelyInplace<re::ecs2::UILayerGeometryComponent>(void *a1)
{
  bzero(a1, 0x3C0uLL);
  ArcSharedObject::ArcSharedObject(a1, 0);
  a1[2] = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F5CE74B8;
  *(a1 + 26) = 0x3000100010001;
  *(a1 + 17) = 4;
  *(a1 + 36) = xmmword_1E30747A0;
  *(a1 + 52) = 0x3E4CCCCD3F800000;
  *(a1 + 60) = 0;
  *(a1 + 16) = 0;
  *(a1 + 34) = 1;
  *(a1 + 9) = re::ecs2::UILayerGeometryComponent::kInOutUVMinMax;
  *(a1 + 11) = xmmword_1E30747B0;
  *(a1 + 26) = 0;
  *(a1 + 108) = 0;
  *(a1 + 110) = 0x3000100010001;
  *(a1 + 59) = 4;
  *(a1 + 15) = xmmword_1E30747A0;
  a1[17] = 0x3E4CCCCD3F800000;
  *(a1 + 144) = 0;
  *(a1 + 37) = 0;
  *(a1 + 76) = 1;
  *(a1 + 10) = re::ecs2::UILayerGeometryComponent::kInOutUVMinMax;
  *(a1 + 11) = xmmword_1E30747B0;
  *(a1 + 48) = 0;
  re::GeomMesh::GeomMesh((a1 + 25), 0);
  *(a1 + 117) = 0u;
  objc_initWeak(a1 + 119, 0);
  return a1;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs224UILayerGeometryComponentELNS_17RealityKitReleaseE13EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 13;
  *(a2 + 8) = 0;
  return result;
}

void *re::ecs2::allocInfo_VisualDepthCustomMaterialService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_190, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_190))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A34F8, "VisualDepthCustomMaterialService");
    __cxa_guard_release(&_MergedGlobals_190);
  }

  return &unk_1EE1A34F8;
}

void re::ecs2::initInfo_VisualDepthCustomMaterialService(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x3983DB95A166E0B4;
  v6[1] = "VisualDepthCustomMaterialService";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::ecs2::initInfo_VisualDepthCustomMaterialService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::ecs2::allocInfo_BillboardComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_191, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_191))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A35A8, "BillboardComponent");
    __cxa_guard_release(&_MergedGlobals_191);
  }

  return &unk_1EE1A35A8;
}

void re::ecs2::initInfo_BillboardComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x627F7D68FFE4F13CLL;
  v14[1] = "BillboardComponent";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1A3590, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A3590);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::ecs2::introspect_Component(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "Component";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1A3598 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_float(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "blendFactor";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x5000000004;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A35A0 = v12;
      __cxa_guard_release(&qword_1EE1A3590);
    }
  }

  *(this + 2) = 0x6000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A3598;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::BillboardComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::BillboardComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::BillboardComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::BillboardComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs218BillboardComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v13 = v15;
}

double re::internal::defaultConstruct<re::ecs2::BillboardComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE7108;
  result = 0.0078125;
  *(v3 + 32) = xmmword_1E3047680;
  *(v3 + 48) = xmmword_1E30476A0;
  *(v3 + 64) = xmmword_1E3047680;
  *(v3 + 80) = 1065353216;
  *(v3 + 84) = 1;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::BillboardComponent>(ArcSharedObject *a1)
{
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE7108;
  result = 0.0078125;
  *(v1 + 32) = xmmword_1E3047680;
  *(v1 + 48) = xmmword_1E30476A0;
  *(v1 + 64) = xmmword_1E3047680;
  *(v1 + 80) = 1065353216;
  *(v1 + 84) = 1;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs218BillboardComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 12;
  *(a2 + 8) = 0;
  return result;
}

void *re::ecs2::allocInfo_FrameReuseSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_192, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_192))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A3640, "FrameReuseSystem");
    __cxa_guard_release(&_MergedGlobals_192);
  }

  return &unk_1EE1A3640;
}

void re::ecs2::initInfo_FrameReuseSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xC248F025A101D46CLL;
  v6[1] = "FrameReuseSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0xF800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_FrameReuseSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::FrameReuseSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::FrameReuseSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::FrameReuseSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::FrameReuseSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::FrameReuseSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::FrameReuseSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::internal::defaultConstruct<re::ecs2::FrameReuseSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::System::System(a3, 2);
  *result = &unk_1F5CE9498;
  result[29] = 0;
  result[30] = 0;
  result[28] = 0;
  return result;
}

void *re::internal::defaultConstructV2<re::ecs2::FrameReuseSystem>(uint64_t a1)
{
  result = re::ecs2::System::System(a1, 2);
  *result = &unk_1F5CE9498;
  result[29] = 0;
  result[30] = 0;
  result[28] = 0;
  return result;
}

void re::ecs2::FrameReuseSystem::~FrameReuseSystem(re::ecs2::FrameReuseSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::ecs2::FrameReuseSystem::willAddSystemToECSService(re::ecs2::FrameReuseSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 28) = re::ServiceLocator::serviceOrNull<re::Engine>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 29) = re::ServiceLocator::serviceOrNull<re::RenderManager>(v3);
  v4 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::ecs2::PortalService>(v4);
  *(this + 30) = result;
  return result;
}

void *re::ecs2::FrameReuseSystem::willRemoveSystemFromECSService(void *this)
{
  this[28] = 0;
  this[29] = 0;
  this[30] = 0;
  return this;
}

void re::ecs2::FrameReuseSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v152 = *MEMORY[0x1E69E9840];
  v5 = *(*(a1 + 232) + 112);
  if (v5)
  {
    v6 = re::RenderFrameBox::get((v5 + 328), 0xFFFFFFFFFFFFFFFuLL);
  }

  else
  {
    v6 = 0;
  }

  if (((*(v6 + 416) ^ *(v6 + 384)) & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = *(a3 + 200);
    if (v7)
    {
      v8 = *(a3 + 216);
      v97 = &v8[v7];
      v103 = (v6 + 3536);
      v9 = &unk_1EE187000;
      v93 = v4;
      while (1)
      {
        v10 = *v8;
        v11 = (*(**(v4 + 240) + 24))(*(v4 + 240));
        v12 = re::ecs2::SceneComponentTable::get((v10 + 200), v9[419]);
        if (v12)
        {
          v13 = *(v12 + 384);
          if (v13)
          {
            break;
          }
        }

LABEL_147:
        if (++v8 == v97)
        {
          return;
        }
      }

      v14 = *(v12 + 400);
      v98 = &v14[v13];
      v95 = v10;
      v96 = v8;
      v94 = v11;
      while (1)
      {
        v99 = v14;
        v102 = *v14;
        v101 = *(*v14 + 2);
        (*(*v11 + 8))(v130, v11);
        if (LOBYTE(v130[0]))
        {
          v15 = *(&v130[0] + 1);
        }

        else
        {
          v15 = 0;
        }

        re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(v10, v15, v6, &v115);
        *&v130[0] = v115 >> 1;
        v16 = **(re::RenderFrameData::stream((v6 + 264), v130) + 48);
        v17 = (*(v16 + 560))();
        if (v17 && *(v17 + 5))
        {
          v17 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](v17, 0);
          v100 = v17;
          v112 = v102;
          v114 = 0;
          if (*(v102 + 27))
          {
            v18 = 0;
            v19 = v102;
            goto LABEL_21;
          }

          v19 = v102;
          if (*(v102 + 32))
          {
            v18 = 1;
            goto LABEL_21;
          }

          if (*(v102 + 37))
          {
            v18 = 2;
LABEL_21:
            v20 = 0;
            v113 = v18;
            while (2)
            {
              v21 = (v20 + 0x20000);
              if (v18 == 1)
              {
                v20 = (v20 + 0x10000);
              }

              if (v18 == 2)
              {
                v22 = v21;
              }

              else
              {
                v22 = v20;
              }

              ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(v19, v22);
              v24 = *(v19 + 2);
              v25 = *(v100 + 2);
              if (v25)
              {
                v26 = 0;
                v27 = *(v100 + 4);
                while (!re::DynamicString::operator==(v27, &v108))
                {
                  ++v26;
                  v27 += 1552;
                  if (v25 == v26)
                  {
                    goto LABEL_31;
                  }
                }

                if (v25 <= v26)
                {
                  goto LABEL_153;
                }
              }

              else
              {
LABEL_31:
                v27 = 0;
              }

              if (*(ViewDescriptor + 296))
              {
                re::RenderFrame::frameReuse_setRenderCommandEncoder(v6, *(v27 + 1160), (ViewDescriptor + 296), *(ViewDescriptor + 312));
              }

              v28 = *(ViewDescriptor + 288);
              if (v28)
              {
                v25 = *(v27 + 1164);
                v26 = *(v6 + 4352);
                if (v26 <= v25)
                {
                  goto LABEL_152;
                }

                v29 = *(v6 + 4368);
                v30 = *(v29 + 8 * v25);
                if (v30 != v28)
                {
                  if (v30)
                  {

                    v28 = *(ViewDescriptor + 288);
                  }

                  *(v29 + 8 * v25) = v28;
                }
              }

              if (*(ViewDescriptor + 928))
              {
                v31 = 0;
                while (1)
                {
                  v32 = *(ViewDescriptor + 944) + 136 * v31;
                  v117[0].i64[0] = *(v32 + 88);
                  v33 = [v117[0].i64[0] width];
                  v34 = [v117[0].i64[0] height];
                  v35 = *(v32 + 8);
                  if ((v35 & 1) == 0)
                  {
                    break;
                  }

                  v37 = *(v32 + 16);
                  if (v37)
                  {
                    LOBYTE(v36) = *v37;
LABEL_47:
                    if (v36)
                    {
                      v36 = v36;
                      v38 = v37[1];
                      if (v38)
                      {
                        v39 = v37 + 2;
                        do
                        {
                          v36 = 31 * v36 + v38;
                          v40 = *v39++;
                          v38 = v40;
                        }

                        while (v40);
                      }

                      v41 = v36 & 0x7FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v41 = 0;
                    }

                    goto LABEL_54;
                  }

                  v41 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_54:
                  *&v104 = v41;
                  v42 = v110;
                  if (v109)
                  {
                    v43 = v111;
                  }

                  else
                  {
                    v43 = v110;
                  }

                  re::RenderFrame::frameReuse_specifyScopeLane(v6, &v104, v117, v43);
                  if (v109)
                  {
                    v42 = v111;
                  }

                  v44 = strlen(v42);
                  v45 = 0x9E3779B97F4A7C17;
                  if (v44)
                  {
                    MurmurHash3_x64_128(v42, v44, 0, v130);
                    v45 = ((*(&v130[0] + 1) - 0x61C8864680B583E9 + (*&v130[0] << 6) + (*&v130[0] >> 2)) ^ *&v130[0]) - 0x61C8864680B583E9;
                  }

                  if (*v103)
                  {
                    v46 = ((v41 >> 2) + (v41 << 6) + v45) ^ v41;
                    v47 = ((v46 << 6) + (v46 >> 2) + 0x8756A0D28FEDB54) ^ v46;
                    v48 = v47 % *(v6 + 3560);
                    v49 = *(v6 + 3544);
                    v50 = *(v49 + 4 * v48);
                    if (v50 != 0x7FFFFFFF)
                    {
                      v51 = *(v6 + 3552);
                      if (*(v51 + 24 * v50 + 8) == v47)
                      {
                        *(v49 + 4 * v48) = *(v51 + 24 * v50) & 0x7FFFFFFF;
LABEL_68:
                        re::HashTable<unsigned long long,NS::SharedPtr<MTL::Texture>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::free(v103, v50);
                        *(*(v6 + 3552) + 24 * v50) = *(*(v6 + 3552) + 24 * v50) & 0x80000000 | *(v6 + 3572);
                        *(v6 + 3572) = v50;
                        --*(v6 + 3564);
                        ++*(v6 + 3576);
                      }

                      else
                      {
                        while (1)
                        {
                          v52 = v50;
                          v53 = *(v51 + 24 * v50);
                          v50 = v53 & 0x7FFFFFFF;
                          if ((v53 & 0x7FFFFFFF) == 0x7FFFFFFF)
                          {
                            break;
                          }

                          if (*(v51 + 24 * v50 + 8) == v47)
                          {
                            *(v51 + 24 * v52) = *(v51 + 24 * v52) & 0x80000000 | *(v51 + 24 * v50) & 0x7FFFFFFF;
                            goto LABEL_68;
                          }
                        }
                      }
                    }
                  }

                  if (v117[0].i64[0])
                  {
                  }

                  if (*(ViewDescriptor + 928) <= ++v31)
                  {
                    v54 = v33 / v34;
                    goto LABEL_74;
                  }
                }

                v36 = v35 >> 8;
                v37 = (v32 + 9);
                goto LABEL_47;
              }

              v54 = 1.0;
LABEL_74:
              v55 = *(ViewDescriptor + 212);
              v56 = *(ViewDescriptor + 216);
              LODWORD(v130[0]) = 0;
              *(v130 + 4) = xmmword_1E30806D0;
              *(&v130[1] + 4) = 0xBDCCCCCD3DCCCCCDLL;
              BYTE12(v130[1]) = 0;
              v131 = xmmword_1E30476A0;
              LODWORD(v132) = 1;
              *(&v132 + 1) = 0;
              LOWORD(v133) = 0;
              v134 = 0;
              v139 = 0;
              v57 = re::ecs2::EntityComponentCollection::get((v101 + 48), re::ecs2::ComponentImpl<re::ecs2::PerspectiveCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
              if (v57)
              {
                v58 = v57;
                re::ecs2::PerspectiveCameraComponent::calculateWorldPose(v57, 0, v117);
                v59 = v117[0].i64[1];
                v60 = v117[0].i64[0];
                v61 = v117[1].i64[1];
                v62 = v117[1].i64[0];
                re::ecs2::PerspectiveCameraComponent::calculateProjection(v58, v117, 1.0);
                goto LABEL_76;
              }

              v63 = re::ecs2::EntityComponentCollection::get((v101 + 48), re::ecs2::ComponentImpl<re::ecs2::CustomMatrixCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
              if (v63)
              {
                v64 = v63;
                re::ecs2::CustomMatrixCameraComponent::calculateWorldPose(v63, 0, v117);
                v59 = v117[0].i64[1];
                v60 = v117[0].i64[0];
                v61 = v117[1].i64[1];
                v62 = v117[1].i64[0];
                re::ecs2::CustomMatrixCameraComponent::calculateProjection(v64, 0, v117);
                v131 = v117[2];
                v132 = v118;
                LOWORD(v133) = v119;
                v130[0] = v117[0];
                v130[1] = v117[1];
                if (v134)
                {
                  if ((v120 & 1) == 0)
                  {
                    v134 = 0;
                    goto LABEL_99;
                  }

LABEL_98:
                  v135 = v121;
                  v136 = v122;
                  v137 = v123;
                  v138 = v124;
                }

                else if (v120)
                {
                  v134 = 1;
                  goto LABEL_98;
                }

LABEL_99:
                if (v139)
                {
                  if ((v125 & 1) == 0)
                  {
                    v139 = 0;
                    goto LABEL_105;
                  }

LABEL_104:
                  v140 = v126;
                  v141 = v127;
                  v142 = v128;
                  v143 = v129;
                }

                else if (v125)
                {
                  v139 = 1;
                  goto LABEL_104;
                }

LABEL_105:
                if (*(v64 + 32) == 1)
                {
                  v65 = (v64 + 28);
LABEL_107:
                  re::Projection::setAspect(v130, *v65 != 0, v54 * (v55 / v56));
                }

                goto LABEL_108;
              }

              v66 = re::ecs2::EntityComponentCollection::get((v101 + 48), re::ecs2::ComponentImpl<re::ecs2::OrthographicCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
              if (!v66)
              {
                v60 = 0;
                v59 = 0;
                v62 = 0;
                v61 = 0x3F80000000000000;
                goto LABEL_108;
              }

              v58 = v66;
              re::ecs2::OrthographicCameraComponent::calculateWorldPose(v66, 0, v117);
              v59 = v117[0].i64[1];
              v60 = v117[0].i64[0];
              v61 = v117[1].i64[1];
              v62 = v117[1].i64[0];
              re::ecs2::OrthographicCameraComponent::calculateProjection(v58, v117, 1.0);
LABEL_76:
              v131 = v117[2];
              v132 = v118;
              LOWORD(v133) = v119;
              v130[0] = v117[0];
              v130[1] = v117[1];
              if (v134)
              {
                if ((v120 & 1) == 0)
                {
                  v134 = 0;
                  goto LABEL_86;
                }

LABEL_85:
                v135 = v121;
                v136 = v122;
                v137 = v123;
                v138 = v124;
              }

              else if (v120)
              {
                v134 = 1;
                goto LABEL_85;
              }

LABEL_86:
              if (v139)
              {
                if ((v125 & 1) == 0)
                {
                  v139 = 0;
                  goto LABEL_92;
                }

LABEL_91:
                v140 = v126;
                v141 = v127;
                v142 = v128;
                v143 = v129;
              }

              else if (v125)
              {
                v139 = 1;
                goto LABEL_91;
              }

LABEL_92:
              if (*(v58 + 44) == 1)
              {
                v65 = (v58 + 40);
                goto LABEL_107;
              }

LABEL_108:
              *(v27 + 32) = v60;
              v26 = v27 + 32;
              *(v27 + 48) = v62;
              *(v27 + 56) = v61;
              *(v27 + 40) = v59;
              v67 = v130[1];
              *(v27 + 64) = v130[0];
              *(v27 + 80) = v67;
              *(v27 + 128) = v133;
              v68 = v132;
              *(v27 + 96) = v131;
              *(v27 + 112) = v68;
              if (*(v27 + 144))
              {
                if ((v134 & 1) == 0)
                {
                  *(v27 + 144) = 0;
                  goto LABEL_114;
                }

LABEL_113:
                v69 = v136;
                *(v27 + 160) = v135;
                *(v27 + 176) = v69;
                v70 = v138;
                *(v27 + 192) = v137;
                *(v27 + 208) = v70;
              }

              else if (v134)
              {
                *(v27 + 144) = 1;
                goto LABEL_113;
              }

LABEL_114:
              if (*(v27 + 224))
              {
                if ((v139 & 1) == 0)
                {
                  *(v27 + 224) = 0;
LABEL_120:
                  if (v109)
                  {
                    v73 = v111;
                  }

                  else
                  {
                    v73 = v110;
                  }

                  MurmurHash3_x64_128("Camera", 6uLL, 0, v117);
                  v74 = v117[0];
                  v75 = strlen(v73);
                  v76 = 0x9E3779B97F4A7C17;
                  if (v75)
                  {
                    MurmurHash3_x64_128(v73, v75, 0, v117);
                    v76 = ((v117[0].i64[1] - 0x61C8864680B583E9 + (v117[0].i64[0] << 6) + (v117[0].i64[0] >> 2)) ^ v117[0].i64[0]) - 0x61C8864680B583E9;
                  }

                  v77 = (v74.i64[1] - 0x61C8864680B583E9 + (v74.i64[0] << 6) + (v74.i64[0] >> 2)) ^ v74.i64[0];
                  v78 = re::RenderGraphDataStore::tryGet<re::CameraMatrices>(v6 + 32, ((v77 >> 2) + (v77 << 6) + v76) ^ v77);
                  if (*(v78 + 160))
                  {
                    v79 = v78;
                    v80 = 0;
                    v25 = 0;
                    while (1)
                    {
                      re::RenderCamera::computeInverseTransform((v27 + 32), &v104);
                      v81 = *(v79 + 24);
                      if (v81 <= v25)
                      {
                        break;
                      }

                      v82 = (*(v79 + 40) + v80);
                      *v82 = v104;
                      v82[1] = v105;
                      v82[2] = v106;
                      v82[3] = v107;
                      if (*(v27 + 144) == 1)
                      {
                        v83 = *(v27 + 176);
                        v104 = *(v27 + 160);
                        v105 = v83;
                        v84 = *(v27 + 208);
                        v106 = *(v27 + 192);
                        v107 = v84;
                      }

                      else
                      {
                        re::Projection::cullingProjectionMatrix((v27 + 64), &v104);
                      }

                      v81 = *(v79 + 64);
                      if (v81 <= v25)
                      {
                        goto LABEL_150;
                      }

                      v85 = (*(v79 + 80) + v80);
                      v86 = v104;
                      v87 = v105;
                      v88 = v107;
                      v85[2] = v106;
                      v85[3] = v88;
                      *v85 = v86;
                      v85[1] = v87;
                      re::Projection::cullingProjectionMatrix((v27 + 64), &v104);
                      v81 = *(v79 + 104);
                      if (v81 <= v25)
                      {
                        goto LABEL_151;
                      }

                      v89 = (*(v79 + 120) + v80);
                      v90 = v104;
                      v91 = v105;
                      v92 = v107;
                      v89[2] = v106;
                      v89[3] = v92;
                      *v89 = v90;
                      v89[1] = v91;
                      ++v25;
                      v80 += 64;
                      if (v25 >= *(v79 + 160))
                      {
                        goto LABEL_134;
                      }
                    }

                    v116 = 0;
                    v118 = 0u;
                    v119 = 0u;
                    memset(v117, 0, sizeof(v117));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    v144 = 136315906;
                    v145 = "operator[]";
                    v146 = 1024;
                    v147 = 789;
                    v148 = 2048;
                    v149 = v25;
                    v150 = 2048;
                    v151 = v81;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_150:
                    v116 = 0;
                    v118 = 0u;
                    v119 = 0u;
                    memset(v117, 0, sizeof(v117));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    v144 = 136315906;
                    v145 = "operator[]";
                    v146 = 1024;
                    v147 = 789;
                    v148 = 2048;
                    v149 = v25;
                    v150 = 2048;
                    v151 = v81;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_151:
                    v116 = 0;
                    v118 = 0u;
                    v119 = 0u;
                    memset(v117, 0, sizeof(v117));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    v144 = 136315906;
                    v145 = "operator[]";
                    v146 = 1024;
                    v147 = 789;
                    v148 = 2048;
                    v149 = v25;
                    v150 = 2048;
                    v151 = v81;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_152:
                    *&v104 = 0;
                    v132 = 0u;
                    v133 = 0u;
                    v131 = 0u;
                    memset(v130, 0, sizeof(v130));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    v117[0].i32[0] = 136315906;
                    *(v117[0].i64 + 4) = "operator[]";
                    v117[0].i16[6] = 1024;
                    *(&v117[0].i32[3] + 2) = 789;
                    v117[1].i16[1] = 2048;
                    *(v117[1].i64 + 4) = v25;
                    v117[1].i16[6] = 2048;
                    *(&v117[1].i64[1] + 6) = v26;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_153:
                    *&v104 = 0;
                    v132 = 0u;
                    v133 = 0u;
                    v131 = 0u;
                    memset(v130, 0, sizeof(v130));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    v117[0].i32[0] = 136315906;
                    *(v117[0].i64 + 4) = "operator[]";
                    v117[0].i16[6] = 1024;
                    *(&v117[0].i32[3] + 2) = 789;
                    v117[1].i16[1] = 2048;
                    *(v117[1].i64 + 4) = v26;
                    v117[1].i16[6] = 2048;
                    *(&v117[1].i64[1] + 6) = v25;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                  }

LABEL_134:
                  if (v108 && (v109 & 1) != 0)
                  {
                    (*(*v108 + 40))();
                  }

                  v17 = re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator++(&v112);
                  v18 = v113;
                  v20 = v114;
                  v19 = v102;
                  if (v112 == v102 && v113 == 3 && !v114)
                  {
                    goto LABEL_142;
                  }

                  continue;
                }
              }

              else
              {
                if ((v139 & 1) == 0)
                {
                  goto LABEL_120;
                }

                *(v27 + 224) = 1;
              }

              break;
            }

            v71 = v141;
            *(v27 + 240) = v140;
            *(v27 + 256) = v71;
            v72 = v143;
            *(v27 + 272) = v142;
            *(v27 + 288) = v72;
            goto LABEL_120;
          }

LABEL_142:
          v4 = v93;
          v11 = v94;
          v10 = v95;
          v8 = v96;
          v9 = &unk_1EE187000;
        }

        if (v115)
        {
          if (v115)
          {
          }
        }

        v14 = v99 + 1;
        if (v99 + 1 == v98)
        {
          goto LABEL_147;
        }
      }
    }
  }
}

uint64_t *re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator++(uint64_t *result)
{
  v1 = result[2] + 1;
  result[2] = v1;
  v2 = *(result + 2);
  switch(v2)
  {
    case 2:
      v3 = *result;
LABEL_10:
      if (v1 >= *(v3 + 296))
      {
        *(result + 2) = 3;
        result[2] = 0;
      }

      return result;
    case 1:
      v3 = *result;
      goto LABEL_7;
    case 0:
      v3 = *result;
      if (v1 >= *(*result + 216))
      {
        v1 = 0;
        *(result + 2) = 1;
        result[2] = 0;
LABEL_7:
        if (v1 < *(v3 + 256))
        {
          return result;
        }

        v1 = 0;
        *(result + 2) = 2;
        result[2] = 0;
        goto LABEL_10;
      }

      break;
  }

  return result;
}

void re::HashTable<unsigned long long,NS::SharedPtr<MTL::Texture>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + 24 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    v3 = *(v2 + 16);
    if (v3)
    {

      *(v2 + 16) = 0;
    }
  }
}

uint64_t re::RenderGraphDataStore::tryGet<re::CameraMatrices>(uint64_t a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  {
    re::introspect<re::CameraMatrices>(BOOL)::info = re::introspect_CameraMatrices(0);
  }

  v4 = strlen(*(re::introspect<re::CameraMatrices>(BOOL)::info + 6));
  if (v4)
  {
    MurmurHash3_x64_128(*(re::introspect<re::CameraMatrices>(BOOL)::info + 6), v4, 0, v10);
    v5 = (v10[1] - 0x61C8864680B583E9 + (v10[0] << 6) + (v10[0] >> 2)) ^ v10[0];
  }

  else
  {
    v5 = 0;
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 - 0x61C8864680B583E9 + (v5 << 6) + (v5 >> 2)) ^ v5;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

void re::PeerVideoStreamingDecoder::~PeerVideoStreamingDecoder(VTDecompressionSessionRef *this)
{
  v2 = *this;
  if (*this)
  {
    VTDecompressionSessionInvalidate(*this);
    CFRelease(v2);
    *this = 0;
  }
}

void re::PeerVideoStreamingDecoder::decodeFrame(VTDecompressionSessionRef *a1, opaqueCMSampleBuffer *a2, uint64_t a3, id *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
  {
    kdebug_trace();
  }

  FormatDescription = CMSampleBufferGetFormatDescription(a2);
  if (*a1)
  {
    if (VTDecompressionSessionCanAcceptFormatDescription(*a1, FormatDescription))
    {
      goto LABEL_23;
    }

    v9 = *a1;
    if (*a1)
    {
      VTDecompressionSessionInvalidate(*a1);
      CFRelease(v9);
    }
  }

  v35[0] = *MEMORY[0x1E6966130];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1111970369];
  v35[1] = *MEMORY[0x1E6966100];
  *v36 = v10;
  v37 = MEMORY[0x1E695E118];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];

  session = 0;
  v12 = VTDecompressionSessionCreate(0, FormatDescription, MEMORY[0x1E695E0F8], v11, 0, &session);
  v13 = v12;
  v14 = *re::peerVideoStreamingLogObjects(v12);
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v34 = v13;
      _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "Error creating decompression session, errCode: %d.", buf, 8u);
    }

    *a1 = 0;
LABEL_12:
    v16 = *re::peerVideoStreamingLogObjects(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v36 = 0;
      _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Failed to create decompression session", v36, 2u);
    }

    if (re::internal::enableSignposts(0, 0))
    {
      if (re::internal::enableHighFrequencyNetworkTracing(0, 0))
      {
        kdebug_trace();
      }
    }

    return;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "Created decompression session", buf, 2u);
  }

  v17 = VTSessionSetProperty(session, *MEMORY[0x1E69839A0], *MEMORY[0x1E695E4D0]);
  if (v17)
  {
    v18 = v17;
    v19 = *re::peerVideoStreamingLogObjects(v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v34 = v18;
      _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "Failed to enable RealTime, errCode: %d.", buf, 8u);
    }
  }

  v20 = session;

  *a1 = v20;
  if (!v20)
  {
    goto LABEL_12;
  }

LABEL_23:
  v21 = applesauce::dispatch::v1::queue::get(a4);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZN2re25PeerVideoStreamingDecoder11decodeFrameEP20opaqueCMSampleBufferNS_8FunctionIFvONS_16OutputVideoFrameEEEEN10applesauce8dispatch2v15queueE_block_invoke;
  aBlock[3] = &unk_1F5CE9550;
  v31 = a1;
  v22 = v21;
  v23 = *(a3 + 24);
  v30 = v22;
  v32[3] = v23;
  v32[4] = 0;
  re::FunctionBase<24ul,void ()(re::OutputVideoFrame &&)>::operator=<24ul>(v32, a3);
  v24 = _Block_copy(aBlock);
  v25 = VTDecompressionSessionDecodeFrameWithOutputHandler(*a1, a2, 1u, 0, v24);
  if (v25)
  {
    v26 = v25;
    v27 = *re::peerVideoStreamingLogObjects(v25);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *v36 = 67109120;
      *&v36[4] = v26;
      _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, "Failed to decode frame, errCode: %d", v36, 8u);
    }
  }

  re::FunctionBase<24ul,void ()(re::OutputVideoFrame &&)>::destroyCallable(v32);
}

uint64_t (***___ZN2re25PeerVideoStreamingDecoder11decodeFrameEP20opaqueCMSampleBufferNS_8FunctionIFvONS_16OutputVideoFrameEEEEN10applesauce8dispatch2v15queueE_block_invoke(re *a1, int a2, char a3, CFTypeRef cf, uint64_t *a5))(void)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = *re::peerVideoStreamingLogObjects(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v19) = a2;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Error decoding frame, errCode: %d", buf, 8u);
    }

    result = re::internal::enableSignposts(0, 0);
    if (result)
    {
      result = re::internal::enableHighFrequencyNetworkTracing(0, 0);
      if (result)
      {
        return kdebug_trace();
      }
    }
  }

  else if ((a3 & 2) != 0)
  {
    v13 = *re::peerVideoStreamingLogObjects(a1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *a5;
      *buf = 134217984;
      v19 = v14;
      _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "Decoder dropped frame with timestamp %lld", buf, 0xCu);
    }

    result = re::internal::enableSignposts(0, 0);
    if (result)
    {
      result = re::internal::enableHighFrequencyNetworkTracing(0, 0);
      if (result)
      {
        return kdebug_trace();
      }
    }
  }

  else if (cf)
  {
    CFRetain(cf);
    v11 = *(a1 + 4);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3321888768;
    v16[2] = ___ZN2re25PeerVideoStreamingDecoder11decodeFrameEP20opaqueCMSampleBufferNS_8FunctionIFvONS_16OutputVideoFrameEEEEN10applesauce8dispatch2v15queueE_block_invoke_1;
    v16[3] = &__block_descriptor_80_a8_40c46_ZTSN2re8FunctionIFvONS_16OutputVideoFrameEEEE_e5_v8__0l;
    v12 = *(a1 + 9);
    v16[4] = cf;
    v17[3] = v12;
    v17[4] = 0;
    re::FunctionBase<24ul,void ()(re::OutputVideoFrame &&)>::operator=<24ul>(v17, a1 + 48);
    dispatch_async(v11, v16);
    if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
    {
      kdebug_trace();
    }

    return re::FunctionBase<24ul,void ()(re::OutputVideoFrame &&)>::destroyCallable(v17);
  }

  else
  {
    v15 = *re::peerVideoStreamingLogObjects(a1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "CVImageBuffer for decoded frame is null", buf, 2u);
    }

    result = re::internal::enableSignposts(0, 0);
    if (result)
    {
      result = re::internal::enableHighFrequencyNetworkTracing(0, 0);
      if (result)
      {
        return kdebug_trace();
      }
    }
  }

  return result;
}

void ___ZN2re25PeerVideoStreamingDecoder11decodeFrameEP20opaqueCMSampleBufferNS_8FunctionIFvONS_16OutputVideoFrameEEEEN10applesauce8dispatch2v15queueE_block_invoke_1(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRetain(*(a1 + 32));
    CFRetain(v2);
    CFRelease(v2);
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  cf[0] = v2;
  cf[1] = 0;
  CFRelease(v3);
  (*(**(a1 + 72) + 16))(*(a1 + 72), cf);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }
}

uint64_t __copy_helper_block_a8_40c46_ZTSN2re8FunctionIFvONS_16OutputVideoFrameEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = 0;
  return re::FunctionBase<24ul,void ()(re::OutputVideoFrame &&)>::operator=<24ul>(a1 + 40, a2 + 40);
}

uint64_t __copy_helper_block_a8_48c46_ZTSN2re8FunctionIFvONS_16OutputVideoFrameEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = 0;
  return re::FunctionBase<24ul,void ()(re::OutputVideoFrame &&)>::operator=<24ul>(a1 + 48, a2 + 48);
}

uint64_t re::FunctionBase<24ul,void ()(re::OutputVideoFrame &&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::OutputVideoFrame &&)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::OutputVideoFrame &&)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

re::ecs2::BillboardManagerStateTracking *re::ecs2::BillboardManagerStateTracking::BillboardManagerStateTracking(re::ecs2::BillboardManagerStateTracking *this)
{
  v5[3] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::HierarchyStateTracking(this);
  *v2 = &unk_1F5CE9590;
  v2 += 304;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(v2 + 44) = 0u;
  *(this + 364) = 0x7FFFFFFFLL;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 102) = 0;
  *(this + 412) = 0x7FFFFFFFLL;
  *(this + 424) = 0;
  *(this + 54) = 0;
  v5[0] = re::ecs2::ComponentImpl<re::ecs2::BillboardComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v5[1] = re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v5[2] = re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v4[0] = v5;
  v4[1] = 3;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=(v2, v4);
  return this;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::HierarchyStateTracking(uint64_t a1)
{
  *a1 = &unk_1F5CE9848;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0x7FFFFFFFLL;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  v2 = a1 + 56;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0x7FFFFFFFLL;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  v3 = a1 + 104;
  *(a1 + 136) = 0;
  *(a1 + 140) = 0x7FFFFFFFLL;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  v4 = a1 + 152;
  *(a1 + 184) = 0;
  *(a1 + 188) = 0x7FFFFFFFLL;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  v5 = a1 + 200;
  *(a1 + 232) = 0;
  *(a1 + 236) = 0x7FFFFFFFLL;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 284) = 0x7FFFFFFFLL;
  *(a1 + 296) = -1;
  return a1;
}

uint64_t re::ecs2::BillboardManagerStateTracking::billboardComponentAddOrActivateEventHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v3 = 1;
  re::HashTable<re::ecs2::Entity const*,BOOL,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 328, &v4, &v3);
  return 0;
}

uint64_t re::ecs2::BillboardManagerStateTracking::billboardComponentAddOrActivateEventHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v3 = 1;
  re::HashTable<re::ecs2::Entity const*,BOOL,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 328, &v4, &v3);
  return 0;
}

uint64_t re::ecs2::BillboardManagerStateTracking::billboardComponentRemoveOrDeactivateEventHandler<REComponentWillRemoveEvent>(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityVisualProxyScopeData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 328, &v3);
  return 0;
}

uint64_t re::ecs2::BillboardManagerStateTracking::billboardComponentRemoveOrDeactivateEventHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityVisualProxyScopeData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 328, &v3);
  return 0;
}

uint64_t re::ecs2::BillboardManagerStateTracking::physicsBodyAddOrActivateEventHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  if (re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) && re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType))
  {
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 376, &v5);
    *(a1 + 424) = 1;
  }

  return 0;
}

uint64_t re::ecs2::BillboardManagerStateTracking::physicsBodyAddOrActivateEventHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  if (re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) && re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType))
  {
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 376, &v5);
    *(a1 + 424) = 1;
  }

  return 0;
}

uint64_t re::ecs2::BillboardManagerStateTracking::physicsBodyRemoveOrDeactivateEventHandler<REComponentWillRemoveEvent>(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  if (re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) || re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType))
  {
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 376, &v5);
    *(a1 + 424) = 1;
  }

  return 0;
}

uint64_t re::ecs2::BillboardManagerStateTracking::physicsBodyRemoveOrDeactivateEventHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  if (re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) || re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType))
  {
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 376, &v5);
    *(a1 + 424) = 1;
  }

  return 0;
}

uint64_t re::ecs2::BillboardManagerStateTracking::physicsBodyReparentEventHandler<RESceneEntityDidReparentEvent>(uint64_t a1, uint64_t a2)
{
  if (re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) && re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType))
  {
    *(a1 + 424) = 1;
  }

  return 0;
}

void re::ecs2::BillboardManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchies(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 356) && (*(a2 + 28) || *(a1 + 424) == 1))
  {
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::HashSetBase(v100, a2);
    if (*(a1 + 424) != 1)
    {
LABEL_76:
      *(&v121 + 1) = 0;
      v119 = 0u;
      v120 = 0u;
      LODWORD(v121) = 0;
      v36 = v102;
      if (v102)
      {
        v37 = 0;
        v38 = (v101 + 8);
        while (1)
        {
          v39 = *v38;
          v38 += 6;
          if (v39 < 0)
          {
            break;
          }

          if (v102 == ++v37)
          {
            LODWORD(v37) = v102;
            break;
          }
        }
      }

      else
      {
        LODWORD(v37) = 0;
      }

      if (v37 != v102)
      {
        v40 = v101;
        v41 = v102;
        while (1)
        {
          v42 = *(v40 + 24 * v37 + 16);
          if ((*(v42 + 304) & 1) == 0)
          {
            re::internal::assertLog(4, v3, "assertion failure: '%s' (%s:line %i) Billboard state tracking should not get inactive entites from the dirty entity list.", "entity->isActive()", "populateAllEntitiesToBeUpdated", 175);
            _os_crash();
            __break(1u);
            return;
          }

          v43 = *(v42 + 344);
          if (!v43)
          {
            goto LABEL_96;
          }

          v44 = *(v42 + 360);
          v45 = 8 * v43;
          do
          {
            v46 = *v44;
            if (!*v44)
            {
              v115.i64[0] = 0;
              if (re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(v100, &v115))
              {
                goto LABEL_94;
              }

LABEL_91:
              if (*(v46 + 304))
              {
                v115.i64[0] = v46;
                re::Queue<re::internal::AssetLoadItem *>::enqueue(&v119, &v115);
              }

              goto LABEL_93;
            }

            v47 = (v46 + 8);
            v115.i64[0] = v46;
            if (!re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(v100, &v115))
            {
              goto LABEL_91;
            }

LABEL_93:

LABEL_94:
            ++v44;
            v45 -= 8;
          }

          while (v45);
          v41 = v102;
          v40 = v101;
LABEL_96:
          if (v41 <= v37 + 1)
          {
            v48 = v37 + 1;
          }

          else
          {
            v48 = v41;
          }

          while (v48 - 1 != v37)
          {
            LODWORD(v37) = v37 + 1;
            if ((*(v40 + 24 * v37 + 8) & 0x80000000) != 0)
            {
              goto LABEL_103;
            }
          }

          LODWORD(v37) = v48;
LABEL_103:
          if (v37 == v36)
          {
            do
            {
LABEL_115:
              if (!v120)
              {
                goto LABEL_116;
              }

              v107.i64[0] = re::Queue<re::internal::AssetLoadItem *>::dequeue(&v119, v3);
              re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(v100, &v107);
              v49 = *(v107.i64[0] + 344);
            }

            while (!v49);
            v50 = *(v107.i64[0] + 360);
            v51 = 8 * v49;
            while (2)
            {
              v52 = *v50;
              if (*v50)
              {
                v53 = (v52 + 8);
                v115.i64[0] = v52;
                if (re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(v100, &v115))
                {
                  goto LABEL_113;
                }

                goto LABEL_111;
              }

              v115.i64[0] = 0;
              if (!re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(v100, &v115))
              {
LABEL_111:
                if (*(v52 + 304))
                {
                  v115.i64[0] = v52;
                  re::Queue<re::internal::AssetLoadItem *>::enqueue(&v119, &v115);
                }

LABEL_113:
              }

              ++v50;
              v51 -= 8;
              if (!v51)
              {
                goto LABEL_115;
              }

              continue;
            }
          }
        }
      }

LABEL_116:
      if (v119.i64[0] && *(&v121 + 1))
      {
        (*(*v119.i64[0] + 40))(v119.i64[0]);
      }

      v98 = 0;
      memset(v97, 0, sizeof(v97));
      v99 = 0x7FFFFFFFLL;
      v54 = v102;
      if (v102)
      {
        v55 = 0;
        v56 = (v101 + 8);
        while (1)
        {
          v57 = *v56;
          v56 += 6;
          if (v57 < 0)
          {
            break;
          }

          if (v102 == ++v55)
          {
            LODWORD(v55) = v102;
            break;
          }
        }
      }

      else
      {
        LODWORD(v55) = 0;
      }

      if (v55 == v102)
      {
LABEL_126:
        re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v97);
        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v100);
        return;
      }

      v58 = v101;
      v59 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
      v60 = v102;
      v96 = v102;
      while (1)
      {
        v61 = *(v58 + 24 * v55 + 16);
        v114 = v61;
        if (v61)
        {
          break;
        }

LABEL_165:
        if (v60 <= v55 + 1)
        {
          v81 = v55 + 1;
        }

        else
        {
          v81 = v60;
        }

        while (v81 - 1 != v55)
        {
          LODWORD(v55) = v55 + 1;
          if ((*(v58 + 24 * v55 + 8) & 0x80000000) != 0)
          {
            goto LABEL_172;
          }
        }

        LODWORD(v55) = v81;
LABEL_172:
        if (v55 == v54)
        {
          goto LABEL_126;
        }
      }

      v113 = 0;
      v62 = v61[4];
      if (v62)
      {
        while (1)
        {
          if ((*(v62 + 304) & 0x80) != 0)
          {
            goto LABEL_135;
          }

          v112 = v62;
          if (re::ecs2::EntityComponentCollection::get((v62 + 48), v59[55]))
          {
            break;
          }

          v63 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v97, &v112);
          if (v63)
          {
            v64 = *v63;
            goto LABEL_138;
          }

          v62 = v112[4];
          if (!v62)
          {
            goto LABEL_135;
          }
        }

        v64 = v112;
LABEL_138:
        v113 = v64;
        goto LABEL_139;
      }

LABEL_135:
      v64 = 0;
      v62 = 0;
      v112 = 0;
LABEL_139:
      v111 = v61;
      if (v62 != v61 && v64 != v61)
      {
        do
        {
          re::HashTable<re::ecs2::Entity const*,re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(v97, &v111, &v113);
          v65 = v111[4];
          if (v65 && (*(v65 + 304) & 0x80) != 0)
          {
            v65 = 0;
          }

          v111 = v65;
        }

        while (v62 != v65 && v113 != v65);
      }

      v119.i64[0] = v61;
      v66 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a1 + 328, &v119);
      v67 = v66 && (*v66 & 1) != 0;
      v119.i64[0] = v113;
      if (v113 && (v68 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a1 + 328, &v119)) != 0 && (*v68 & 1) != 0)
      {
        if (v67)
        {
          v69 = 1;
LABEL_157:
          v70 = v59;
          v71 = re::ecs2::EntityComponentCollection::get((v61 + 6), v59[55]);
          v72 = re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryEmplace<>(a1 + 56, &v114);
          v73 = v72;
          *(v72 + 72) = 1;
          v72[5] = *(v71 + 32);
          v72[6] = *(v71 + 48);
          v72[7] = *(v71 + 64);
          *(v72 + 32) = *(v71 + 80);
          *(v72 + 66) = *(v71 + 84);
          if (v69)
          {
            v74 = v113;
            *(v72 + 8) = v113;
            re::TransformService::worldMatrix(*(a1 + 432), v74, 0, &v107);
            v123.columns[2] = v109;
            v123.columns[3] = v110;
            v123.columns[0] = v107;
            v123.columns[1] = v108;
            v124 = __invert_f4(v123);
            v92 = v124.columns[0];
            v94 = v124.columns[1];
            v88 = v124.columns[3];
            v90 = v124.columns[2];
            re::TransformService::worldMatrix(*(a1 + 432), v61, 0, &v103);
            v75 = 0;
            v115 = v103;
            v116 = v104;
            v117 = v105;
            v118 = v106;
            do
            {
              *(&v119 + v75) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v92, COERCE_FLOAT(*(&v115 + v75))), v94, *&v115.f32[v75 / 4], 1), v90, *(&v115 + v75), 2), v88, *(&v115 + v75), 3);
              v75 += 16;
            }

            while (v75 != 64);
            v76 = v120;
            v77 = v121;
            v78 = v122;
            *v73 = v119;
            v73[1] = v76;
            v73[2] = v77;
            v73[3] = v78;
          }

          else
          {
            re::TransformService::worldMatrix(*(a1 + 432), v61, 0, &v119);
            v79 = v120;
            *v73 = v119;
            v73[1] = v79;
            v80 = v122;
            v73[2] = v121;
            v73[3] = v80;
          }

          v59 = v70;
          v54 = v96;
          goto LABEL_164;
        }

        v82 = re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryEmplace<>(a1 + 56, &v114);
        *(v82 + 72) = 0;
        v83 = v113;
        *(v82 + 8) = v113;
        re::TransformService::worldMatrix(*(a1 + 432), v83, 0, &v107);
        v125.columns[2] = v109;
        v125.columns[3] = v110;
        v125.columns[0] = v107;
        v125.columns[1] = v108;
        v126 = __invert_f4(v125);
        v93 = v126.columns[0];
        v95 = v126.columns[1];
        v89 = v126.columns[3];
        v91 = v126.columns[2];
        re::TransformService::worldMatrix(*(a1 + 432), v61, 0, &v103);
        v84 = 0;
        v115 = v103;
        v116 = v104;
        v117 = v105;
        v118 = v106;
        do
        {
          *(&v119 + v84) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v93, COERCE_FLOAT(*(&v115 + v84))), v95, *&v115.f32[v84 / 4], 1), v91, *(&v115 + v84), 2), v89, *(&v115 + v84), 3);
          v84 += 16;
        }

        while (v84 != 64);
        v85 = v120;
        v86 = v121;
        v87 = v122;
        *v82 = v119;
        v82[1] = v85;
        v82[2] = v86;
        v82[3] = v87;
      }

      else
      {
        if (v67)
        {
          v69 = 0;
          goto LABEL_157;
        }

        re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 56, v61);
      }

LABEL_164:
      v60 = v102;
      v58 = v101;
      goto LABEL_165;
    }

    LODWORD(v121) = 0;
    v119 = 0u;
    v120 = 0u;
    *(&v121 + 4) = 0x7FFFFFFFLL;
    v4 = *(a1 + 328);
    if (v4)
    {
      if (*(a1 + 356) <= 3u)
      {
        v5 = 3;
      }

      else
      {
        v5 = *(a1 + 356);
      }

      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(&v119, v4, v5);
      v6 = *(a1 + 360);
      if (!v6)
      {
        goto LABEL_30;
      }

      v7 = 0;
      v8 = 0;
      v9 = *(a1 + 344);
      do
      {
        if ((*(v9 + v7) & 0x80000000) != 0)
        {
          v10 = re::HashTable<re::ecs2::Entity const*,BOOL,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(&v119, *(v9 + v7 + 24) % DWORD2(v120), *(v9 + v7 + 24));
          *(v10 + 8) = *(*(a1 + 344) + v7 + 8);
          v9 = *(a1 + 344);
          *(v10 + 16) = *(v9 + v7 + 16);
          v6 = *(a1 + 360);
        }

        ++v8;
        v7 += 32;
      }

      while (v8 < v6);
      if (!v6)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v6 = *(a1 + 360);
      if (!v6)
      {
LABEL_30:
        v16 = *(a1 + 408);
        if (v16)
        {
          v17 = 0;
          v18 = (*(a1 + 392) + 8);
          while (1)
          {
            v19 = *v18;
            v18 += 6;
            if (v19 < 0)
            {
              break;
            }

            if (v16 == ++v17)
            {
              LODWORD(v17) = *(a1 + 408);
              break;
            }
          }
        }

        else
        {
          LODWORD(v17) = 0;
        }

        if (v17 != v16)
        {
          v20 = *(a1 + 392);
          v21 = *(a1 + 408);
          do
          {
            v115.i64[0] = *(v20 + 24 * v17 + 16);
            if (v115.i64[0])
            {
              while (1)
              {
                v22 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a1 + 328, &v115);
                if (v22)
                {
                  if (*v22 != 1)
                  {
                    break;
                  }

                  *v22 = 0;
                }

                v23 = *(v115.i64[0] + 32);
                if (!v23 || (*(v23 + 304) & 0x80) != 0)
                {
                  break;
                }

                v115.i64[0] = *(v115.i64[0] + 32);
              }

              v21 = *(a1 + 408);
              v20 = *(a1 + 392);
            }

            if (v21 <= v17 + 1)
            {
              v24 = v17 + 1;
            }

            else
            {
              v24 = v21;
            }

            while (v24 - 1 != v17)
            {
              LODWORD(v17) = v17 + 1;
              if ((*(v20 + 24 * v17 + 8) & 0x80000000) != 0)
              {
                goto LABEL_53;
              }
            }

            LODWORD(v17) = v24;
LABEL_53:
            ;
          }

          while (v17 != v16);
        }

        v25 = v121;
        if (v121)
        {
          v26 = 0;
          v27 = v120;
          while (1)
          {
            v28 = *v27;
            v27 += 8;
            if (v28 < 0)
            {
              break;
            }

            if (v121 == ++v26)
            {
              LODWORD(v26) = v121;
              break;
            }
          }
        }

        else
        {
          LODWORD(v26) = 0;
        }

        if (v26 != v121)
        {
          v29 = v120;
          do
          {
            v30 = v29 + 32 * v26;
            v32 = (v30 + 8);
            v31 = *(v30 + 8);
            if (*(v31 + 304))
            {
              v33 = *(v30 + 16);
              v34 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) >> 27));
              re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1 + 328, v32, v34 ^ (v34 >> 31), &v115);
              if (v33 != *(*(a1 + 344) + 32 * v115.u32[3] + 16))
              {
                re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(v100, v32);
              }
            }

            if (v121 <= v26 + 1)
            {
              v35 = v26 + 1;
            }

            else
            {
              v35 = v121;
            }

            v29 = v120;
            while (v35 - 1 != v26)
            {
              LODWORD(v26) = v26 + 1;
              if ((*(v120 + 32 * v26) & 0x80000000) != 0)
              {
                goto LABEL_74;
              }
            }

            LODWORD(v26) = v35;
LABEL_74:
            ;
          }

          while (v26 != v25);
        }

        re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v119);
        *(a1 + 424) = 0;
        goto LABEL_76;
      }
    }

    v11 = 0;
    v12 = *(a1 + 344);
    v13 = v12;
    while (1)
    {
      v14 = *v13;
      v13 += 8;
      if (v14 < 0)
      {
        break;
      }

      if (v6 == ++v11)
      {
        LODWORD(v11) = v6;
        break;
      }
    }

    while (v11 != v6)
    {
      LOBYTE(v12[8 * v11 + 4]) = 1;
      if (v6 <= v11 + 1)
      {
        v15 = v11 + 1;
      }

      else
      {
        v15 = v6;
      }

      while (v15 - 1 != v11)
      {
        LODWORD(v11) = v11 + 1;
        if (v12[8 * v11] < 0)
        {
          goto LABEL_29;
        }
      }

      LODWORD(v11) = v15;
LABEL_29:
      ;
    }

    goto LABEL_30;
  }
}

_OWORD *re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryEmplace<>(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(&v8, a1, *a2, (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31));
  if (HIDWORD(v9) != 0x7FFFFFFF)
  {
    return (*(a1 + 16) + 176 * HIDWORD(v9) + 16);
  }

  v5 = re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1, v9, v8);
  v6 = *a2;
  *(v5 + 16) = xmmword_1E3047670;
  *(v5 + 32) = xmmword_1E3047680;
  result = (v5 + 16);
  result[2] = xmmword_1E30476A0;
  result[3] = xmmword_1E30474D0;
  result[4] = 0u;
  result[5] = xmmword_1E3047680;
  result[6] = xmmword_1E30476A0;
  result[7] = xmmword_1E3047680;
  *(result - 1) = v6;
  result[8] = 0u;
  *(result + 32) = 1065353216;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  result = re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(v10, a1, a2, v3 ^ (v3 >> 31));
  v5 = v12;
  if (v12 != 0x7FFFFFFF)
  {
    v6 = *(a1 + 16);
    v7 = (v6 + 176 * v12);
    v8 = *v7 & 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v11) = v8;
    }

    else
    {
      *(v6 + 176 * v13) = *(v6 + 176 * v13) & 0x80000000 | v8;
    }

    v9 = *(a1 + 40);
    *v7 = *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v5;
    *(a1 + 40) = v9 + 1;
  }

  return result;
}

uint64_t re::ecs2::BillboardManager::registerScene(re::ecs2::BillboardManager *this, re::EventBus **a2)
{
  v179 = *MEMORY[0x1E69E9840];
  v132 = a2;
  v166[0] = a2;
  v2 = a2[36];
  if (!v2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) An event bus is expected for this system to track entity state changes.", "eventBus", "registerScene", 106);
    _os_crash();
    __break(1u);
  }

  v3 = a2;
  v5 = (this + 24);
  v169 = 0;
  v170 = 0;
  LODWORD(v171) = 1;
  v173 = 0;
  v174 = 0;
  v172 = 0;
  v175 = 0;
  v6 = (*(*v5 + 16))(v5);
  if (v7)
  {
    v8 = v6;
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      v177 = re::globalAllocators(v6)[2];
      v11 = (*(*v177 + 32))(v177, 32, 0);
      *v11 = &unk_1F5CE9888;
      v11[1] = v5;
      v11[2] = re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>;
      v11[3] = 0;
      v178 = v11;
      v12 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v2, v176, v10, 0);
      v14 = v13;
      v15 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v169);
      *v15 = v12;
      v15[1] = v14;
      re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v176);
      re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(v5, v2, &v169, v10);
      v6 = re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(v5, v2, &v169, v10);
      v9 -= 8;
    }

    while (v9);
  }

  v16 = (*(*v5 + 24))(v5);
  if (v17)
  {
    v18 = v16;
    v19 = 8 * v17;
    do
    {
      v20 = *v18++;
      re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(v5, v2, &v169, v20);
      v16 = re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(v5, v2, &v169, v20);
      v19 -= 8;
    }

    while (v19);
  }

  v177 = re::globalAllocators(v16)[2];
  v21 = (*(*v177 + 32))(v177, 32, 0);
  *v21 = &unk_1F5CE9990;
  v21[1] = v5;
  v21[2] = re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>;
  v21[3] = 0;
  v178 = v21;
  v22 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(v2, v176, 0, 0);
  v24 = v23;
  v25 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v169);
  *v25 = v22;
  v25[1] = v24;
  v26 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v176);
  v177 = re::globalAllocators(v26)[2];
  v27 = (*(*v177 + 32))(v177, 32, 0);
  *v27 = &unk_1F5CE99E8;
  v27[1] = v5;
  v27[2] = re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>;
  v27[3] = 0;
  v178 = v27;
  v28 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidActivateEvent>(v2, v176, 0, 0);
  v30 = v29;
  v31 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v169);
  *v31 = v28;
  v31[1] = v30;
  v32 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::destroyCallable(v176);
  v177 = re::globalAllocators(v32)[2];
  v33 = (*(*v177 + 32))(v177, 32, 0);
  *v33 = &unk_1F5CE9A40;
  v33[1] = v5;
  v33[2] = re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>;
  v33[3] = 0;
  v178 = v33;
  v34 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(v2, v176, 0, 0);
  v36 = v35;
  v37 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v169);
  *v37 = v34;
  v37[1] = v36;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::destroyCallable(v176);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::add(this + 176, v166, &v169);
  v38 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v166[0] ^ (v166[0] >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v166[0] ^ (v166[0] >> 30))) >> 27));
  v39 = v38 ^ (v38 >> 31);
  v40 = *(this + 14);
  if (!v40)
  {
    LODWORD(v41) = 0;
    goto LABEL_15;
  }

  v41 = v39 % v40;
  v42 = *(*(this + 5) + 4 * (v39 % v40));
  if (v42 == 0x7FFFFFFF)
  {
LABEL_15:
    re::HashSetBase<re::ecs2::Scene const*,re::ecs2::Scene const*,re::internal::ValueAsKey<re::ecs2::Scene const*>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::addAsCopy(this + 32, v41, v39, v166, v166);
    ++*(this + 18);
    goto LABEL_16;
  }

  v43 = *(this + 6);
  while (*(v43 + 24 * v42 + 16) != v166[0])
  {
    LODWORD(v42) = *(v43 + 24 * v42 + 8) & 0x7FFFFFFF;
    if (v42 == 0x7FFFFFFF)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  re::BucketArray<RESubscriptionHandle,8ul>::deinit(&v169);
  if (v169 && (v171 & 1) == 0)
  {
    (*(*v169 + 40))(v169, v173);
  }

  v44 = *(v3 + 288);
  if (v44)
  {
    v45 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::operator[](this + 176, &v132);
    v172 = re::globalAllocators(v45)[2];
    v46 = (*(*v172 + 32))(v172, 32, 0);
    *v46 = &unk_1F5CE9690;
    v46[1] = v5;
    v46[2] = re::ecs2::BillboardManagerStateTracking::billboardComponentAddOrActivateEventHandler<REComponentDidAddEvent>;
    v46[3] = 0;
    v173 = v46;
    v47 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v44, &v169, re::ecs2::ComponentImpl<re::ecs2::BillboardComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v49 = v48;
    v50 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v45);
    *v50 = v47;
    v50[1] = v49;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(&v169);
    v51 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::operator[](this + 176, &v132);
    v177 = re::globalAllocators(v51)[2];
    v52 = (*(*v177 + 32))(v177, 32, 0);
    *v52 = &unk_1F5CE96E8;
    v52[1] = v5;
    v52[2] = re::ecs2::BillboardManagerStateTracking::billboardComponentAddOrActivateEventHandler<REComponentDidActivateEvent>;
    v52[3] = 0;
    v178 = v52;
    v53 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v44, v176, re::ecs2::ComponentImpl<re::ecs2::BillboardComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v55 = v54;
    v56 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v51);
    *v56 = v53;
    v56[1] = v55;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v176);
    v57 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::operator[](this + 176, &v132);
    v167 = re::globalAllocators(v57)[2];
    v58 = (*(*v167 + 32))(v167, 32, 0);
    *v58 = &unk_1F5CE9740;
    v58[1] = v5;
    v58[2] = re::ecs2::BillboardManagerStateTracking::billboardComponentRemoveOrDeactivateEventHandler<REComponentWillRemoveEvent>;
    v58[3] = 0;
    v168 = v58;
    v59 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v44, v166, re::ecs2::ComponentImpl<re::ecs2::BillboardComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v61 = v60;
    v62 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v57);
    *v62 = v59;
    v62[1] = v61;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v166);
    v63 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::operator[](this + 176, &v132);
    v164 = re::globalAllocators(v63)[2];
    v64 = (*(*v164 + 32))(v164, 32, 0);
    *v64 = &unk_1F5CE9798;
    v64[1] = v5;
    v64[2] = re::ecs2::BillboardManagerStateTracking::billboardComponentRemoveOrDeactivateEventHandler<REComponentWillDeactivateEvent>;
    v64[3] = 0;
    v165 = v64;
    v65 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v44, v163, re::ecs2::ComponentImpl<re::ecs2::BillboardComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v67 = v66;
    v68 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v63);
    *v68 = v65;
    v68[1] = v67;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v163);
    v69 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::operator[](this + 176, &v132);
    v161 = re::globalAllocators(v69)[2];
    v70 = (*(*v161 + 32))(v161, 32, 0);
    *v70 = &unk_1F5CE9690;
    v70[1] = v5;
    v70[2] = re::ecs2::BillboardManagerStateTracking::physicsBodyAddOrActivateEventHandler<REComponentDidAddEvent>;
    v70[3] = 0;
    v162 = v70;
    v71 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v44, v160, re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v73 = v72;
    v74 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v69);
    *v74 = v71;
    v74[1] = v73;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v160);
    v75 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::operator[](this + 176, &v132);
    v158 = re::globalAllocators(v75)[2];
    v76 = (*(*v158 + 32))(v158, 32, 0);
    *v76 = &unk_1F5CE96E8;
    v76[1] = v5;
    v76[2] = re::ecs2::BillboardManagerStateTracking::physicsBodyAddOrActivateEventHandler<REComponentDidActivateEvent>;
    v76[3] = 0;
    v159 = v76;
    v77 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v44, v157, re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v131 = v3;
    v79 = v78;
    v80 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v75);
    *v80 = v77;
    v80[1] = v79;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v157);
    v81 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::operator[](this + 176, &v132);
    v155 = re::globalAllocators(v81)[2];
    v82 = (*(*v155 + 32))(v155, 32, 0);
    *v82 = &unk_1F5CE9740;
    v82[1] = v5;
    v82[2] = re::ecs2::BillboardManagerStateTracking::physicsBodyRemoveOrDeactivateEventHandler<REComponentWillRemoveEvent>;
    v82[3] = 0;
    v156 = v82;
    v83 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v44, v154, re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v85 = v84;
    v86 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v81);
    *v86 = v83;
    v86[1] = v85;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v154);
    v87 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::operator[](this + 176, &v132);
    v152 = re::globalAllocators(v87)[2];
    v88 = (*(*v152 + 32))(v152, 32, 0);
    *v88 = &unk_1F5CE9798;
    v88[1] = v5;
    v88[2] = re::ecs2::BillboardManagerStateTracking::physicsBodyRemoveOrDeactivateEventHandler<REComponentWillDeactivateEvent>;
    v88[3] = 0;
    v153 = v88;
    v89 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v44, v151, re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v91 = v90;
    v92 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v87);
    *v92 = v89;
    v92[1] = v91;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v151);
    v93 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::operator[](this + 176, &v132);
    v149 = re::globalAllocators(v93)[2];
    v94 = (*(*v149 + 32))(v149, 32, 0);
    *v94 = &unk_1F5CE97F0;
    v94[1] = v5;
    v94[2] = re::ecs2::BillboardManagerStateTracking::physicsBodyReparentEventHandler<RESceneEntityDidReparentEvent>;
    v94[3] = 0;
    v150 = v94;
    v95 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(v44, v148, re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v97 = v96;
    v98 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v93);
    *v98 = v95;
    v98[1] = v97;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v148);
    v99 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::operator[](this + 176, &v132);
    v146 = re::globalAllocators(v99)[2];
    v100 = (*(*v146 + 32))(v146, 32, 0);
    *v100 = &unk_1F5CE9690;
    v100[1] = v5;
    v100[2] = re::ecs2::BillboardManagerStateTracking::physicsBodyAddOrActivateEventHandler<REComponentDidAddEvent>;
    v100[3] = 0;
    v147 = v100;
    v101 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v44, v145, re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v103 = v102;
    v104 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v99);
    *v104 = v101;
    v104[1] = v103;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v145);
    v105 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::operator[](this + 176, &v132);
    v143 = re::globalAllocators(v105)[2];
    v106 = (*(*v143 + 32))(v143, 32, 0);
    *v106 = &unk_1F5CE96E8;
    v106[1] = v5;
    v106[2] = re::ecs2::BillboardManagerStateTracking::physicsBodyAddOrActivateEventHandler<REComponentDidActivateEvent>;
    v106[3] = 0;
    v144 = v106;
    v107 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v44, v142, re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v109 = v108;
    v110 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v105);
    *v110 = v107;
    v110[1] = v109;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v142);
    v111 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::operator[](this + 176, &v132);
    v140 = re::globalAllocators(v111)[2];
    v112 = (*(*v140 + 32))(v140, 32, 0);
    *v112 = &unk_1F5CE9740;
    v112[1] = v5;
    v112[2] = re::ecs2::BillboardManagerStateTracking::physicsBodyRemoveOrDeactivateEventHandler<REComponentWillRemoveEvent>;
    v112[3] = 0;
    v141 = v112;
    v113 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v44, v139, re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v115 = v114;
    v116 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v111);
    *v116 = v113;
    v116[1] = v115;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v139);
    v117 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::operator[](this + 176, &v132);
    v137 = re::globalAllocators(v117)[2];
    v118 = (*(*v137 + 32))(v137, 32, 0);
    *v118 = &unk_1F5CE9798;
    v118[1] = v5;
    v118[2] = re::ecs2::BillboardManagerStateTracking::physicsBodyRemoveOrDeactivateEventHandler<REComponentWillDeactivateEvent>;
    v118[3] = 0;
    v138 = v118;
    v119 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v44, v136, re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v121 = v120;
    v122 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v117);
    *v122 = v119;
    v122[1] = v121;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v136);
    v123 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::operator[](this + 176, &v132);
    v134 = re::globalAllocators(v123)[2];
    v124 = (*(*v134 + 32))(v134, 32, 0);
    *v124 = &unk_1F5CE97F0;
    v124[1] = v5;
    v124[2] = re::ecs2::BillboardManagerStateTracking::physicsBodyReparentEventHandler<RESceneEntityDidReparentEvent>;
    v124[3] = 0;
    v3 = v131;
    v135 = v124;
    v125 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(v44, v133, re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v127 = v126;
    v128 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
    *v128 = v125;
    v128[1] = v127;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v133);
  }

  if (!*(this + 1))
  {
    *(this + 1) = *(v3 + 56);
  }

  v169 = 0;
  v170 = 0;
  v171 = 0;
  v129 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) >> 27));
  result = re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::findEntry<re::ecs2::Scene *>(&v169, this + 496, v3, v129 ^ (v129 >> 31));
  if (HIDWORD(v170) == 0x7FFFFFFF)
  {
    result = re::HashTable<re::ecs2::Scene const*,re::ecs2::CameraPosition,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(this + 496, v170, v169);
    *(result + 8) = v3;
    *(result + 16) = 0;
    *(result + 32) = 0;
    ++*(this + 134);
  }

  return result;
}

uint64_t re::ecs2::BillboardManager::unregisterScene(re::ecs2::BillboardManager *this, re::ecs2::Scene *a2)
{
  v13 = a2;
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 32, &v13);
  v3 = *(v13 + 13);
  v4 = *(v3 + 344);
  if (v4)
  {
    v5 = *(v3 + 360);
    v6 = 8 * v4;
    do
    {
      if (*(*v5 + 304))
      {
        (*(*(this + 3) + 40))(this + 24);
      }

      v5 += 8;
      v6 -= 8;
    }

    while (v6);
  }

  result = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 176, &v13);
  if (result)
  {
    v8 = *(v13 + 36);
    if (v8)
    {
      v9 = result;
      v10 = *(result + 40);
      if (v10)
      {
        for (i = 0; i != v10; ++i)
        {
          v12 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](v9, i);
          re::EventBus::unsubscribe(v8, *v12, *(v12 + 8));
        }
      }
    }

    return re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::remove(this + 176, &v13);
  }

  return result;
}

void re::ecs2::BillboardManager::update(float32x4_t *this)
{
  v2 = this[23].i32[3];
  re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::updatePerEntityStateData(&this[1].i64[1], v2 != 0);
  if (v2)
  {
    v3 = this[33].u32[0];
    if (v3)
    {
      v4 = 0;
      v5 = this[32].i64[0];
      while (1)
      {
        v6 = *v5;
        v5 += 20;
        if (v6 < 0)
        {
          break;
        }

        if (v3 == ++v4)
        {
          LODWORD(v4) = this[33].i32[0];
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
      v7 = this[32].i64[0];
      do
      {
        *(v7 + 80 * v4 + 16) = 0;
        if (v3 <= v4 + 1)
        {
          v8 = v4 + 1;
        }

        else
        {
          v8 = v3;
        }

        while (v8 - 1 != v4)
        {
          LODWORD(v4) = v4 + 1;
          if ((*(v7 + 80 * v4) & 0x80000000) != 0)
          {
            goto LABEL_20;
          }
        }

        LODWORD(v4) = v8;
LABEL_20:
        ;
      }

      while (v4 != v3);
    }

    if (re::ecs2::BillboardService::isBillboardEnabled(void)::onceToken != -1)
    {
      dispatch_once(&re::ecs2::BillboardService::isBillboardEnabled(void)::onceToken, &__block_literal_global_31);
    }

    if (re::ecs2::gIsBillboardEnabled)
    {
      v9 = this + 5;
    }

    else
    {
      v9 = 0;
    }

    if (re::ecs2::gIsBillboardEnabled)
    {
      v10 = this[36].u32[0];
      if (v10)
      {
        v11 = 0;
        v12 = this[35].i64[0];
        while (1)
        {
          v13 = *v12;
          v12 += 44;
          if (v13 < 0)
          {
            break;
          }

          if (v10 == ++v11)
          {
            LODWORD(v11) = this[36].i32[0];
            break;
          }
        }
      }

      else
      {
        LODWORD(v11) = 0;
      }

      if (v11 != v10)
      {
        v14 = this[35].i64[0];
        v29 = this[36].i32[0];
        v15 = v29;
        do
        {
          v16 = *(v14 + 176 * v11 + 8);
          v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v16 ^ (v16 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v16 ^ (v16 >> 30))) >> 27));
          v18 = v17 ^ (v17 >> 31);
          re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(v30, v9, v16, v18);
          if (v32 == 0x7FFFFFFF)
          {
            re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(v30, &this[34], v16, v18);
            v19 = v32;
            if (v32 != 0x7FFFFFFF)
            {
              v20 = (v14 + 176 * v32);
              v21 = *v20 & 0x7FFFFFFF;
              if (v33 == 0x7FFFFFFF)
              {
                *(this[34].i64[1] + 4 * v31) = v21;
                v15 = this[36].u32[0];
              }

              else
              {
                *(v14 + 176 * v33) = *(v14 + 176 * v33) & 0x80000000 | v21;
                v15 = v29;
              }

              *v20 = this[36].i32[1];
              this[36].i32[1] = v19;
              --this[35].i32[3];
              ++this[36].i32[2];
              v29 = v15;
            }
          }

          else
          {
            *(v14 + 176 * v11 + 16) = 0;
          }

          if (v15 <= v11 + 1)
          {
            v22 = v11 + 1;
          }

          else
          {
            v22 = v15;
          }

          while (v22 - 1 != v11)
          {
            LODWORD(v11) = v11 + 1;
            if ((*(v14 + 176 * v11) & 0x80000000) != 0)
            {
              goto LABEL_51;
            }
          }

          LODWORD(v11) = v22;
LABEL_51:
          ;
        }

        while (v11 != v10);
      }
    }

    else
    {
      re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardTransform,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::clear(&this[34]);
      if (re::ecs2::BillboardService::isBillboardEnabled(void)::onceToken != -1)
      {
        dispatch_once(&re::ecs2::BillboardService::isBillboardEnabled(void)::onceToken, &__block_literal_global_31);
      }
    }

    if (re::ecs2::gIsBillboardEnabled)
    {
      v23 = this + 5;
    }

    else
    {
      v23 = 0;
    }

    if (re::ecs2::gIsBillboardEnabled == 1)
    {
      v24 = this[7].u32[0];
      if (v24)
      {
        v25 = 0;
        v26 = this[6].i64[0];
        while (1)
        {
          v27 = *v26;
          v26 += 44;
          if (v27 < 0)
          {
            break;
          }

          if (v24 == ++v25)
          {
            LODWORD(v25) = this[7].i32[0];
            break;
          }
        }
      }

      else
      {
        LODWORD(v25) = 0;
      }

      while (v25 != v24)
      {
        re::ecs2::BillboardManager::getBillboardedTransform(this, *(v23[1].i64[0] + 176 * v25 + 8), 1, v30);
        v28 = this[7].u32[0];
        if (v28 <= v25 + 1)
        {
          v28 = v25 + 1;
        }

        while (v28 - 1 != v25)
        {
          LODWORD(v25) = v25 + 1;
          if ((*(v23[1].i64[0] + 176 * v25) & 0x80000000) != 0)
          {
            goto LABEL_69;
          }
        }

        LODWORD(v25) = v28;
LABEL_69:
        ;
      }
    }
  }

  else
  {

    re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardTransform,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::clear(&this[34]);
  }
}

void re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::updatePerEntityStateData(uint64_t a1, int a2)
{
  if (a2)
  {
    (*(*a1 + 32))(a1, a1 + 104);
  }

  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1 + 104);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1 + 200);

  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1 + 248);
}

void re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardTransform,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 44;
        --v3;
      }

      while (v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

uint64_t re::ecs2::BillboardManager::billboardDataPerEntity(re::ecs2::BillboardManager *this)
{
  if (re::ecs2::BillboardService::isBillboardEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::BillboardService::isBillboardEnabled(void)::onceToken, &__block_literal_global_31);
  }

  if (re::ecs2::gIsBillboardEnabled)
  {
    return this + 80;
  }

  else
  {
    return 0;
  }
}

double re::ecs2::BillboardManager::getBillboardedTransform@<D0>(float32x4_t *this@<X0>, const re::ecs2::Entity *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (!a2)
  {
    *a4 = xmmword_1E3047670;
    *(a4 + 16) = xmmword_1E3047680;
    result = 0.0;
    *(a4 + 32) = xmmword_1E30476A0;
    *(a4 + 48) = xmmword_1E30474D0;
    return result;
  }

  if (re::ecs2::BillboardService::isBillboardEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::BillboardService::isBillboardEnabled(void)::onceToken, &__block_literal_global_31);
  }

  if (re::ecs2::gIsBillboardEnabled == 1 && re::ecs2::BillboardManager::isEntityUnderBillboardInfluence(this, a2))
  {
    v8 = a2;
    do
    {
      v9 = v8;
      v8 = *(v8 + 4);
    }

    while (v8);
    v10 = *(v9 + 3);
    v11 = *(v10 + 56);
    if (v11 && (*(v10 + 376) & 0xFFFFFF00000000) != 0 && *((*(*v11 + 304))(v11) + 8) == 2)
    {
      v12 = 1;
    }

    else
    {
      if (this[29].i8[0] == 1)
      {
        v15 = this[30];
LABEL_18:
        v47 = v15;
LABEL_19:
        re::ecs2::BillboardManager::getBillboardedTransformByCamera(this, &v47, a2, 1, a4);
        return result;
      }

      v12 = 0;
    }

    v16 = a2;
    do
    {
      v17 = v16;
      v16 = *(v16 + 4);
    }

    while (v16);
    v18 = *(v17 + 3);
    v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v18 ^ (v18 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v18 ^ (v18 >> 30))) >> 27));
    re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::findEntry<re::ecs2::Scene *>(v48, &this[31], v18, v19 ^ (v19 >> 31));
    if (v48[0].i32[3] == 0x7FFFFFFF)
    {
      return re::TransformService::worldMatrix(this[1].i64[0], a2, a3 ^ 1u, a4);
    }

    v20 = this[32].i64[0] + 80 * v48[0].u32[3];
    v22 = *(v20 + 16);
    v21 = (v20 + 16);
    if (v22 == 1)
    {
      if (v21[1].i8[0] == 1)
      {
        v15 = v21[2];
        goto LABEL_18;
      }

      return re::TransformService::worldMatrix(this[1].i64[0], a2, a3 ^ 1u, a4);
    }

    if (v12)
    {
      v23 = *(re::ecs2::ComponentImpl<re::ecs2::PerspectiveCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 8);
      v24 = *(v18 + 224);
      if (v24 > v23)
      {
        v25 = *(*(v18 + 240) + 8 * v23);
        if (v25)
        {
          v26 = *(v25 + 384);
          if (v26)
          {
            v27 = *(v25 + 400);
            v28 = 8 * v26;
            while (1)
            {
              v29 = *(*v27 + 16);
              if (*(v29 + 304))
              {
                v30 = re::ecs2::EntityComponentCollection::get((v29 + 48), re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                if (v30)
                {
                  if (*(v30 + 256))
                  {
                    goto LABEL_69;
                  }
                }
              }

              v27 += 8;
              v28 -= 8;
              if (!v28)
              {
                v24 = *(v18 + 224);
                break;
              }
            }
          }
        }
      }

      v31 = *(re::ecs2::ComponentImpl<re::ecs2::OrthographicCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 8);
      if (v24 > v31)
      {
        v32 = *(*(v18 + 240) + 8 * v31);
        if (v32)
        {
          v33 = *(v32 + 384);
          if (v33)
          {
            v34 = *(v32 + 400);
            v35 = 8 * v33;
            while (1)
            {
              v29 = *(*v34 + 16);
              if (*(v29 + 304))
              {
                v36 = re::ecs2::EntityComponentCollection::get((v29 + 48), re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                if (v36)
                {
                  if (*(v36 + 256))
                  {
                    break;
                  }
                }
              }

              v34 += 8;
              v35 -= 8;
              if (!v35)
              {
                v24 = *(v18 + 224);
                goto LABEL_47;
              }
            }

LABEL_69:
            v46 = this[1].i64[0];
            v45 = v29;
            goto LABEL_60;
          }
        }
      }

LABEL_47:
      v37 = *(re::ecs2::ComponentImpl<re::ecs2::CustomMatrixCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 8);
      if (v24 > v37)
      {
        v38 = *(*(v18 + 240) + 8 * v37);
        if (!v38)
        {
          goto LABEL_62;
        }

        v39 = *(v38 + 384);
        if (v39)
        {
          v40 = *(v38 + 400);
          v41 = 8 * v39;
          while (1)
          {
            v42 = *(*v40 + 16);
            if (*(v42 + 304))
            {
              v43 = re::ecs2::EntityComponentCollection::get((v42 + 48), re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
              if (v43)
              {
                if (*(v43 + 256))
                {
                  break;
                }
              }
            }

            v40 += 8;
            v41 -= 8;
            if (!v41)
            {
              goto LABEL_61;
            }
          }

          v46 = this[1].i64[0];
          v45 = v42;
          goto LABEL_60;
        }
      }
    }

    else
    {
      PerspectiveCameraInScene = re::ecs2::PerspectiveCameraComponent::firstPerspectiveCameraInScene(v18);
      if (PerspectiveCameraInScene || (PerspectiveCameraInScene = re::ecs2::OrthographicCameraComponent::firstOrthographicCameraInScene(v18)) != 0 || (PerspectiveCameraInScene = re::ecs2::CustomMatrixCameraComponent::firstCustomMatrixCameraInScene(v18)) != 0)
      {
        v45 = *(PerspectiveCameraInScene + 16);
        v46 = this[1].i64[0];
LABEL_60:
        re::TransformService::worldMatrix(v46, v45, 0, v48);
        LOBYTE(v38) = 1;
        v47 = v48[3];
        goto LABEL_62;
      }
    }

LABEL_61:
    LOBYTE(v38) = 0;
LABEL_62:
    if (v21[1].i8[0])
    {
      if ((v38 & 1) == 0)
      {
        v21[1].i8[0] = 0;
LABEL_68:
        v21->i8[0] = 1;
        return re::TransformService::worldMatrix(this[1].i64[0], a2, a3 ^ 1u, a4);
      }
    }

    else
    {
      if ((v38 & 1) == 0)
      {
        goto LABEL_68;
      }

      v21[1].i8[0] = 1;
    }

    v21[2] = v47;
    v21->i8[0] = 1;
    goto LABEL_19;
  }

  v13 = this[1].i64[0];

  return re::TransformService::worldMatrix(v13, a2, a3 ^ 1u, a4);
}

uint64_t re::makeQuaternionFromMatrix<float>(float32x4_t *a1)
{
  v1 = a1[1];
  v2 = vmulq_f32(*a1, *a1);
  v3.i32[1] = 0;
  v4 = COERCE_UNSIGNED_INT(v2.f32[2] + vaddv_f32(*v2.f32));
  *v2.f32 = vrsqrte_f32(v4);
  *v2.f32 = vmul_f32(*v2.f32, vrsqrts_f32(v4.u32[0], vmul_f32(*v2.f32, *v2.f32)));
  v5 = vmulq_n_f32(*a1, vmul_f32(*v2.f32, vrsqrts_f32(v4.u32[0], vmul_f32(*v2.f32, *v2.f32))).f32[0]);
  v6 = vmulq_f32(v1, v5);
  v7 = vmulq_f32(v5, v5);
  v8 = a1[2];
  v9 = vmulq_f32(v5, v8);
  *v9.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v9, v9, 8uLL), *&vextq_s8(v7, v7, 8uLL)), vadd_f32(vzip1_s32(*v9.i8, *v7.i8), vzip2_s32(*v9.i8, *v7.i8)));
  v10 = vsubq_f32(v1, vmulq_n_f32(v5, (v6.f32[2] + vaddv_f32(*v6.f32)) / *&v9.i32[1]));
  v11 = vmulq_f32(v10, v10);
  *v7.i32 = v11.f32[2] + vaddv_f32(*v11.f32);
  *v11.f32 = vrsqrte_f32(v7.u32[0]);
  *v11.f32 = vmul_f32(*v11.f32, vrsqrts_f32(v7.u32[0], vmul_f32(*v11.f32, *v11.f32)));
  v12 = vmulq_n_f32(v10, vmul_f32(*v11.f32, vrsqrts_f32(v7.u32[0], vmul_f32(*v11.f32, *v11.f32))).f32[0]);
  v13 = vsubq_f32(v8, vmulq_n_f32(v5, *v9.i32 / *&v9.i32[1]));
  v14 = vmulq_f32(v8, v12);
  v15 = vmulq_f32(v12, v12);
  *v14.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v14, v14, 8uLL), *&vextq_s8(v15, v15, 8uLL)), vadd_f32(vzip1_s32(*v14.i8, *v15.i8), vzip2_s32(*v14.i8, *v15.i8)));
  v16 = vsubq_f32(v13, vmulq_n_f32(v12, vdiv_f32(*v14.i8, vdup_lane_s32(*v14.i8, 1)).f32[0]));
  v17 = vmulq_f32(v16, v16);
  *v15.i32 = v17.f32[2] + vaddv_f32(*v17.f32);
  *v17.f32 = vrsqrte_f32(v15.u32[0]);
  *v17.f32 = vmul_f32(*v17.f32, vrsqrts_f32(v15.u32[0], vmul_f32(*v17.f32, *v17.f32)));
  v18 = vmulq_n_f32(v16, vmul_f32(*v17.f32, vrsqrts_f32(v15.u32[0], vmul_f32(*v17.f32, *v17.f32))).f32[0]);
  v19 = (v5.f32[0] + v12.f32[1]) + v18.f32[2];
  if (v19 >= 0.0)
  {
    v26 = sqrtf(v19 + 1.0);
    v3.f32[0] = v26 + v26;
    v27 = vrecpe_f32(v3);
    v28 = vmul_f32(v27, vrecps_f32(v3, v27));
    v29 = vmul_f32(v28, vrecps_f32(v3, v28)).f32[0];
    v3.f32[0] = (v12.f32[2] - v18.f32[1]) * v29;
    v25 = (v18.f32[0] - v5.f32[2]) * v29;
  }

  else if (v5.f32[0] < v12.f32[1] || v5.f32[0] < v18.f32[2])
  {
    v30 = 1.0 - v5.f32[0];
    if (v12.f32[1] >= v18.f32[2])
    {
      v35 = sqrtf(v12.f32[1] + (v30 - v18.f32[2]));
      v36 = v35 + v35;
      v37 = vrecpe_f32(COERCE_UNSIGNED_INT(v35 + v35));
      v38 = vmul_f32(v37, vrecps_f32(COERCE_UNSIGNED_INT(v35 + v35), v37));
      v3.f32[0] = (v5.f32[1] + v12.f32[0]) * vmul_f32(v38, vrecps_f32(COERCE_UNSIGNED_INT(v35 + v35), v38)).f32[0];
      v25 = v36 * 0.25;
    }

    else
    {
      v31 = sqrtf((v30 - v12.f32[1]) + v18.f32[2]);
      v32 = vrecpe_f32(COERCE_UNSIGNED_INT(v31 + v31));
      v33 = vmul_f32(v32, vrecps_f32(COERCE_UNSIGNED_INT(v31 + v31), v32));
      v34 = vmul_f32(v33, vrecps_f32(COERCE_UNSIGNED_INT(v31 + v31), v33)).f32[0];
      v3.f32[0] = (v5.f32[2] + v18.f32[0]) * v34;
      v25 = (v12.f32[2] + v18.f32[1]) * v34;
    }
  }

  else
  {
    v20 = sqrtf(v5.f32[0] + ((1.0 - v12.f32[1]) - v18.f32[2]));
    *&v21 = v20 + v20;
    v22 = vrecpe_f32(v21);
    v23 = vmul_f32(v22, vrecps_f32(v21, v22));
    v24 = vmul_f32(v23, vrecps_f32(v21, v23)).f32[0];
    v3.f32[0] = *&v21 * 0.25;
    v25 = (v5.f32[1] + v12.f32[0]) * v24;
  }

  v3.f32[1] = v25;
  return v3;
}

uint64_t re::ecs2::BillboardManager::setHeadPosition(uint64_t result, __int128 *a2)
{
  v3 = *a2;
  if (*(result + 464))
  {
    v2 = *a2;
  }

  else
  {
    *(result + 464) = 1;
    v2 = v3;
  }

  *(result + 480) = v2;
  return result;
}

uint64_t re::ecs2::BillboardManager::isEntityUnderBillboardInfluence(uint64_t a1, unint64_t a2)
{
  if (re::ecs2::BillboardService::isBillboardEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::BillboardService::isBillboardEnabled(void)::onceToken, &__block_literal_global_31);
  }

  if (re::ecs2::gIsBillboardEnabled == 1)
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
      v6 = *(*(a1 + 88) + 4 * ((v5 ^ (v5 >> 31)) % *(a1 + 104)));
      if (v6 == 0x7FFFFFFF)
      {
        LOBYTE(v2) = 0;
      }

      else
      {
        v7 = *(a1 + 96);
        v8 = 0x7FFFFFFFLL;
        while (*(v7 + 176 * v6 + 8) != a2)
        {
          v6 = *(v7 + 176 * v6) & 0x7FFFFFFF;
          if (v6 == 0x7FFFFFFF)
          {
            goto LABEL_12;
          }
        }

        v8 = v6;
LABEL_12:
        LOBYTE(v2) = v8 != 0x7FFFFFFF;
      }
    }
  }

  return v2 & re::ecs2::gIsBillboardEnabled;
}

BOOL re::ecs2::isBillboardResultChanged(float32x4_t *a1, float32x4_t *a2)
{
  if (re::ecs2::BillboardService::getBillboardTransformChangeThreshold(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::BillboardService::getBillboardTransformChangeThreshold(void)::onceToken, &__block_literal_global_6_1);
  }

  v4 = vsubq_f32(a1[3], a2[3]);
  v5 = vmulq_f32(v4, v4);
  if ((v5.f32[2] + vaddv_f32(*v5.f32)) > *&re::ecs2::gBillboardTransformChangeThreshold)
  {
    return 1;
  }

  v6 = a1[1];
  v8 = vmulq_f32(v6, v6);
  v7 = vaddv_f32(*v8.f32);
  v8.i32[1] = 0;
  *&v9 = v8.f32[2] + v7;
  v10 = vrsqrte_f32(COERCE_UNSIGNED_INT(v8.f32[2] + v7));
  v11 = vmul_f32(v10, vrsqrts_f32(v9, vmul_f32(v10, v10)));
  v12 = vmulq_n_f32(v6, vmul_f32(v11, vrsqrts_f32(v9, vmul_f32(v11, v11))).f32[0]);
  v13 = a2[1];
  v14 = vmulq_f32(v13, v13);
  *&v15 = v14.f32[2] + vaddv_f32(*v14.f32);
  *v14.f32 = vrsqrte_f32(v15);
  *v14.f32 = vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32)));
  v16 = vmulq_f32(v12, vmulq_n_f32(v13, vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32))).f32[0]));
  if ((1.0 - (v16.f32[2] + vaddv_f32(*v16.f32))) > *&re::ecs2::gBillboardTransformChangeThreshold)
  {
    return 1;
  }

  v18 = a1[2];
  v19 = vmulq_f32(v18, v18);
  *&v20 = v19.f32[2] + vaddv_f32(*v19.f32);
  *v19.f32 = vrsqrte_f32(v20);
  *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32)));
  v21 = vmulq_n_f32(v18, vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32))).f32[0]);
  v22 = a2[2];
  v23 = vmulq_f32(v22, v22);
  v8.f32[0] = v23.f32[2] + vaddv_f32(*v23.f32);
  *v23.f32 = vrsqrte_f32(*v8.f32);
  *v23.f32 = vmul_f32(*v23.f32, vrsqrts_f32(*v8.f32, vmul_f32(*v23.f32, *v23.f32)));
  v24 = vmulq_f32(v21, vmulq_n_f32(v22, vmul_f32(*v23.f32, vrsqrts_f32(*v8.f32, vmul_f32(*v23.f32, *v23.f32))).f32[0]));
  return (1.0 - (v24.f32[2] + vaddv_f32(*v24.f32))) > *&re::ecs2::gBillboardTransformChangeThreshold;
}

void re::ecs2::BillboardManager::getBillboardedTransformByCamera(uint64_t a1@<X0>, float32x4_t *a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v238 = a3;
  if (!a3)
  {
    *a5 = xmmword_1E3047670;
    *(a5 + 16) = xmmword_1E3047680;
    *(a5 + 32) = xmmword_1E30476A0;
    *(a5 + 48) = xmmword_1E30474D0;
    return;
  }

  if (re::ecs2::BillboardService::isBillboardEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::BillboardService::isBillboardEnabled(void)::onceToken, &__block_literal_global_31);
  }

  if (re::ecs2::gIsBillboardEnabled != 1 || (re::ecs2::BillboardManager::isEntityUnderBillboardInfluence(a1, a3) & 1) == 0)
  {
    v15 = *(a1 + 16);

    re::TransformService::worldMatrix(v15, a3, 0, a5);
    return;
  }

  re::TransformService::worldMatrix(*(a1 + 16), a3, 0, &v220);
  v10 = vsubq_f32(v223, *a2);
  v11 = vmulq_f32(v10, v10);
  if (fabsf(v11.f32[2] + vaddv_f32(*v11.f32)) < 1.0e-10)
  {
    goto LABEL_25;
  }

  v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(&v220, a1 + 544, a3, v12 ^ (v12 >> 31));
  v13 = v220.i32[3];
  if (v220.i32[3] == 0x7FFFFFFF)
  {
    v14 = 0;
  }

  else
  {
    v14 = (*(a1 + 560) + 176 * v220.u32[3] + 16);
    if (a4 && v14->i8[0] == 1)
    {
      v16 = *(*(a1 + 560) + 176 * v220.u32[3] + 96);
      v17 = *(*(a1 + 560) + 176 * v220.u32[3] + 112);
      v18 = *(*(a1 + 560) + 176 * v220.u32[3] + 144);
      *(a5 + 32) = *(*(a1 + 560) + 176 * v220.u32[3] + 128);
      *(a5 + 48) = v18;
      *a5 = v16;
      *(a5 + 16) = v17;
      return;
    }
  }

  v19 = xmmword_1E3047670;
  v20 = xmmword_1E3047680;
  v234 = xmmword_1E3047670;
  v235 = xmmword_1E3047680;
  v21 = xmmword_1E30476A0;
  v22 = xmmword_1E30474D0;
  v236 = xmmword_1E30476A0;
  v237 = xmmword_1E30474D0;
  if (re::ecs2::BillboardService::isBillboardEnabled(void)::onceToken != -1)
  {
    v202 = v220.i32[3];
    dispatch_once(&re::ecs2::BillboardService::isBillboardEnabled(void)::onceToken, &__block_literal_global_31);
    v19 = xmmword_1E3047670;
    v20 = xmmword_1E3047680;
    v22 = xmmword_1E30474D0;
    v21 = xmmword_1E30476A0;
    v13 = v202;
  }

  v23 = re::ecs2::gIsBillboardEnabled ? a1 + 80 : 0;
  if (re::ecs2::gIsBillboardEnabled != 1 || (v212 = v19, v214 = v20, v216 = v22, v218 = v21, v207 = v13, v229 = 0, v230 = 0, v231 = 1, v232 = 0, v233 = 0, (v24 = re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(a1 + 80, a3)) == 0))
  {
LABEL_25:
    re::TransformService::worldMatrix(*(a1 + 16), a3, 0, a5);
    return;
  }

  if (*(v24 + 72) == 1)
  {
    v206 = xmmword_1E30474D0;
    v205 = xmmword_1E30476A0;
    v204 = xmmword_1E3047680;
    v203 = xmmword_1E3047670;
  }

  else
  {
    v203 = *v24;
    v204 = *(v24 + 16);
    v205 = *(v24 + 32);
    v206 = *(v24 + 48);
  }

  v25 = re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(a1 + 80, a3);
  if (!v25)
  {
    v39 = v216;
    v38 = v218;
    v40 = v212;
    v41 = v214;
    goto LABEL_85;
  }

  v26 = v25;
  do
  {
    if (*(v26 + 72) != 1)
    {
      goto LABEL_48;
    }

    if (v229)
    {
      v27 = v231;
      if ((v231 & 1) == 0)
      {
        v28 = v230 + 1;
        if (v230 < v232 || v232 >= v28)
        {
          goto LABEL_45;
        }

        v30 = 2 * v232;
        goto LABEL_41;
      }

      if (v230 - 8 < 0xFFFFFFFFFFFFFFF7)
      {
        v28 = v230 + 1;
        v30 = 16;
LABEL_41:
        if (v30 <= v28)
        {
          v31 = v28;
        }

        else
        {
          v31 = v30;
        }

        re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::setCapacity(&v229, v31);
        v27 = v231;
      }
    }

    else
    {
      re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::setCapacity(&v229, v230 + 1);
      v27 = v231 + 2;
      v231 += 2;
    }

LABEL_45:
    v32 = (v27 & 1) == 0;
    v33 = v233;
    v34 = v230;
    if (!v32)
    {
      v33 = &v232;
    }

    v33[v230] = v26;
    v230 = v34 + 1;
    v231 += 2;
LABEL_48:
    v25 = re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(v23, *(v26 + 8));
    v26 = v25;
  }

  while (v25);
  v39 = v216;
  v38 = v218;
  v40 = v212;
  v41 = v214;
  if (v230)
  {
    v42 = v231;
    v43 = v233;
    if (v231)
    {
      v44 = &v232;
    }

    else
    {
      v44 = v233;
    }

    v45 = &v44[v230];
    v38 = xmmword_1E30476A0;
    v41 = xmmword_1E3047680;
    v40 = xmmword_1E3047670;
    v39 = xmmword_1E30474D0;
    v46 = 1.0;
    do
    {
      v47 = 0;
      v49 = *--v45;
      v48 = v49;
      v50 = v49[1];
      v51 = v49[2];
      v52 = v49[3];
      v239 = *v49;
      v240 = v50;
      v241 = v51;
      v242 = v52;
      do
      {
        *(&v220 + v47) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, COERCE_FLOAT(*(&v239 + v47))), v41, *(&v239 + v47), 1), v38, *(&v239 + v47), 2), v39, *(&v239 + v47), 3);
        v47 += 16;
      }

      while (v47 != 64);
      v40 = v220;
      v41 = v221;
      v38 = v222;
      v39 = v223;
      v53 = v48[8].f32[0];
      if (v53 >= 0.0001)
      {
        v55 = v48[6];
        v54 = v48[7];
        v56 = v48[5];
        v57 = v48[8].u8[4];
        v58 = *a2;
        v59 = v48[8].u8[5];
        v60 = vmulq_f32(v220, v220);
        *&v36 = v60.f32[2] + vaddv_f32(*v60.f32);
        v61 = vmulq_f32(v221, v221);
        *&v37 = v61.f32[2] + vaddv_f32(*v61.f32);
        v62 = vmulq_f32(v222, v222);
        *&v35 = v62.f32[2] + vaddv_f32(*v62.f32);
        v63 = vrsqrte_f32(v36);
        v64 = vmul_f32(v63, vrsqrts_f32(v36, vmul_f32(v63, v63)));
        v65 = vmulq_n_f32(v220, vmul_f32(v64, vrsqrts_f32(v36, vmul_f32(v64, v64))).f32[0]);
        v66 = vrsqrte_f32(v37);
        v67 = vmul_f32(v66, vrsqrts_f32(v37, vmul_f32(v66, v66)));
        v68 = vmulq_n_f32(v221, vmul_f32(v67, vrsqrts_f32(v37, vmul_f32(v67, v67))).f32[0]);
        *v62.f32 = vrsqrte_f32(v35);
        *v62.f32 = vmul_f32(*v62.f32, vrsqrts_f32(v35, vmul_f32(*v62.f32, *v62.f32)));
        v69 = vmulq_n_f32(v222, vmul_f32(*v62.f32, vrsqrts_f32(v35, vmul_f32(*v62.f32, *v62.f32))).f32[0]);
        v244[0] = v65;
        v244[1] = v68;
        v244[2] = v69;
        v70 = vsubq_f32(v58, v223);
        v71 = vmulq_f32(v70, v70);
        v67.f32[0] = v71.f32[2] + vaddv_f32(*v71.f32);
        *v71.f32 = vrsqrte_f32(v67.u32[0]);
        *v71.f32 = vmul_f32(*v71.f32, vrsqrts_f32(v67.u32[0], vmul_f32(*v71.f32, *v71.f32)));
        v72 = vmulq_n_f32(v70, vmul_f32(*v71.f32, vrsqrts_f32(v67.u32[0], vmul_f32(*v71.f32, *v71.f32))).f32[0]);
        v73 = vuzp1q_s32(v72, v72);
        if (v59 == 1)
        {
          v74 = vmulq_f32(v54, v54);
          *&v75 = v74.f32[2] + vaddv_f32(*v74.f32);
          *v74.f32 = vrsqrte_f32(v75);
          *v74.f32 = vmul_f32(*v74.f32, vrsqrts_f32(v75, vmul_f32(*v74.f32, *v74.f32)));
          v76 = vmulq_n_f32(v54, vmul_f32(*v74.f32, vrsqrts_f32(v75, vmul_f32(*v74.f32, *v74.f32))).f32[0]);
          if (!v57)
          {
            v77 = vzip2q_s32(v65, v69);
            v78 = vzip1q_s32(vzip1q_s32(v65, v69), v68);
            v79 = vtrn2q_s32(v65, v68);
            v79.i32[2] = v69.i32[1];
            v56 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, v76.f32[0]), v79, *v76.f32, 1), vzip1q_s32(v77, vdupq_laneq_s32(v68, 2)), v76, 2);
          }

          v80 = vmulq_f32(v56, v56);
          *&v81 = v80.f32[2] + vaddv_f32(*v80.f32);
          *v80.f32 = vrsqrte_f32(v81);
          *v80.f32 = vmul_f32(*v80.f32, vrsqrts_f32(v81, vmul_f32(*v80.f32, *v80.f32)));
          v82 = vmulq_n_f32(v56, vmul_f32(*v80.f32, vrsqrts_f32(v81, vmul_f32(*v80.f32, *v80.f32))).f32[0]);
          v83 = vextq_s8(vuzp1q_s32(v76, v76), v76, 0xCuLL);
          v84 = vmlaq_f32(vmulq_f32(vextq_s8(v73, v72, 0xCuLL), vnegq_f32(v76)), v72, v83);
          v85 = vmulq_f32(v84, v84);
          *&v86 = v85.f32[1] + (v85.f32[2] + v85.f32[0]);
          v87 = vextq_s8(vuzp1q_s32(v84, v84), v84, 0xCuLL);
          *v84.f32 = vrsqrte_f32(v86);
          *v84.f32 = vmul_f32(*v84.f32, vrsqrts_f32(v86, vmul_f32(*v84.f32, *v84.f32)));
          v88 = vmulq_n_f32(v87, vmul_f32(*v84.f32, vrsqrts_f32(v86, vmul_f32(*v84.f32, *v84.f32))).f32[0]);
          v89 = vmlaq_f32(vmulq_f32(v83, vnegq_f32(v88)), v76, vextq_s8(vuzp1q_s32(v88, v88), v88, 0xCuLL));
          v90 = vextq_s8(vuzp1q_s32(v89, v89), v89, 0xCuLL);
          v91 = vmulq_f32(v89, v89);
          v85.f32[0] = v91.f32[1] + (v91.f32[2] + v91.f32[0]);
          *v91.f32 = vrsqrte_f32(v85.u32[0]);
          *v91.f32 = vmul_f32(*v91.f32, vrsqrts_f32(v85.u32[0], vmul_f32(*v91.f32, *v91.f32)));
          v72 = vmulq_n_f32(v90, vmul_f32(*v91.f32, vrsqrts_f32(v85.u32[0], vmul_f32(*v91.f32, *v91.f32))).f32[0]);
          v92 = vmulq_f32(v55, v55);
          v85.f32[0] = v92.f32[2] + vaddv_f32(*v92.f32);
          *v92.f32 = vrsqrte_f32(v85.u32[0]);
          *v92.f32 = vmul_f32(*v92.f32, vrsqrts_f32(v85.u32[0], vmul_f32(*v92.f32, *v92.f32)));
          v93 = vmulq_n_f32(v55, vmul_f32(*v92.f32, vrsqrts_f32(v85.u32[0], vmul_f32(*v92.f32, *v92.f32))).f32[0]);
          v94 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v93, v93), v93, 0xCuLL), vnegq_f32(v82)), v93, vextq_s8(vuzp1q_s32(v82, v82), v82, 0xCuLL));
          v95 = vextq_s8(vuzp1q_s32(v94, v94), v94, 0xCuLL);
          v96 = vmulq_f32(v94, v94);
          *&v97 = v96.f32[1] + (v96.f32[2] + v96.f32[0]);
          *v96.f32 = vrsqrte_f32(v97);
          *v96.f32 = vmul_f32(*v96.f32, vrsqrts_f32(v97, vmul_f32(*v96.f32, *v96.f32)));
          v98 = vmulq_n_f32(v95, vmul_f32(*v96.f32, vrsqrts_f32(v97, vmul_f32(*v96.f32, *v96.f32))).f32[0]);
        }

        else
        {
          v99 = vmulq_f32(v55, v55);
          *&v100 = v99.f32[2] + vaddv_f32(*v99.f32);
          *v99.f32 = vrsqrte_f32(v100);
          *v99.f32 = vmul_f32(*v99.f32, vrsqrts_f32(v100, vmul_f32(*v99.f32, *v99.f32)));
          v93 = vmulq_n_f32(v55, vmul_f32(*v99.f32, vrsqrts_f32(v100, vmul_f32(*v99.f32, *v99.f32))).f32[0]);
          v101 = vuzp1q_s32(v93, v93);
          if (v57)
          {
            v102 = vextq_s8(v101, v93, 0xCuLL);
            v103 = vmlaq_f32(vmulq_f32(v102, vnegq_f32(v56)), v93, vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL));
            v104 = vextq_s8(vuzp1q_s32(v103, v103), v103, 0xCuLL);
            v105 = vmulq_f32(v103, v103);
            *&v106 = v105.f32[1] + (v105.f32[2] + v105.f32[0]);
            *v105.f32 = vrsqrte_f32(v106);
            *v105.f32 = vmul_f32(*v105.f32, vrsqrts_f32(v106, vmul_f32(*v105.f32, *v105.f32)));
            v98 = vmulq_n_f32(v104, vmul_f32(*v105.f32, vrsqrts_f32(v106, vmul_f32(*v105.f32, *v105.f32))).f32[0]);
          }

          else
          {
            v107 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v65, v55.f32[0]), v68, *v55.f32, 1), v69, v55, 2);
            v108 = vmulq_f32(v107, xmmword_1E30661F0);
            v109 = vmlaq_f32(vextq_s8(vuzp1q_s32(v108, v108), v108, 0xCuLL), xmmword_1E30476A0, v107);
            v110 = vzip2q_s32(v65, v69);
            v111 = vzip1q_s32(vzip1q_s32(v65, v69), v68);
            v112 = vtrn2q_s32(v65, v68);
            v112.i32[2] = v69.i32[1];
            v113 = vmlaq_lane_f32(vmlaq_n_f32(vmulq_laneq_f32(v111, v109, 2), v112, v109.f32[0]), vzip1q_s32(v110, vdupq_laneq_s32(v68, 2)), *v109.f32, 1);
            v114 = vmulq_f32(v113, v113);
            v112.f32[0] = v114.f32[2] + vaddv_f32(*v114.f32);
            *v114.f32 = vrsqrte_f32(v112.u32[0]);
            *v114.f32 = vmul_f32(*v114.f32, vrsqrts_f32(v112.u32[0], vmul_f32(*v114.f32, *v114.f32)));
            v98 = vmulq_n_f32(v113, vmul_f32(*v114.f32, vrsqrts_f32(v112.u32[0], vmul_f32(*v114.f32, *v114.f32))).f32[0]);
            v102 = vextq_s8(v101, v93, 0xCuLL);
          }

          v115 = vextq_s8(v73, v72, 0xCuLL);
          v116 = vmlaq_f32(vmulq_f32(v115, xmmword_1E30661D0), xmmword_1E30476A0, v72);
          v117 = vextq_s8(vuzp1q_s32(v116, v116), v116, 0xCuLL);
          v118 = vmulq_f32(v116, v116);
          *&v119 = v118.f32[1] + (v118.f32[2] + v118.f32[0]);
          *v118.f32 = vrsqrte_f32(v119);
          *v118.f32 = vmul_f32(*v118.f32, vrsqrts_f32(v119, vmul_f32(*v118.f32, *v118.f32)));
          v88 = vmulq_n_f32(v117, vmul_f32(*v118.f32, vrsqrts_f32(v119, vmul_f32(*v118.f32, *v118.f32))).f32[0]);
          v120 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v88, v88), v88, 0xCuLL), vnegq_f32(v72)), v88, v115);
          v121 = vextq_s8(vuzp1q_s32(v120, v120), v120, 0xCuLL);
          v122 = vmulq_f32(v120, v120);
          *&v123 = v122.f32[1] + (v122.f32[2] + v122.f32[0]);
          *v122.f32 = vrsqrte_f32(v123);
          *v122.f32 = vmul_f32(*v122.f32, vrsqrts_f32(v123, vmul_f32(*v122.f32, *v122.f32)));
          v76 = vmulq_n_f32(v121, vmul_f32(*v122.f32, vrsqrts_f32(v123, vmul_f32(*v122.f32, *v122.f32))).f32[0]);
          v124 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v98, v98), v98, 0xCuLL), vnegq_f32(v93)), v98, v102);
          v125 = vextq_s8(vuzp1q_s32(v124, v124), v124, 0xCuLL);
          v126 = vmulq_f32(v124, v124);
          *&v127 = v126.f32[1] + (v126.f32[2] + v126.f32[0]);
          *v126.f32 = vrsqrte_f32(v127);
          *v126.f32 = vmul_f32(*v126.f32, vrsqrts_f32(v127, vmul_f32(*v126.f32, *v126.f32)));
          v82 = vmulq_n_f32(v125, vmul_f32(*v126.f32, vrsqrts_f32(v127, vmul_f32(*v126.f32, *v126.f32))).f32[0]);
        }

        v128 = vmulq_f32(v98, xmmword_1E3047670);
        v129 = vmulq_f32(v82, xmmword_1E3047670);
        v130 = vmulq_f32(v93, xmmword_1E3047670);
        v131 = vmulq_f32(v98, xmmword_1E3047680);
        v132 = vmulq_f32(v82, xmmword_1E3047680);
        v133 = vmulq_f32(v93, xmmword_1E3047680);
        v134 = vmulq_f32(v98, xmmword_1E30476A0);
        v135 = v134.f32[2] + vaddv_f32(*v134.f32);
        v136 = vmulq_f32(v82, xmmword_1E30476A0);
        v137 = v136.f32[2] + vaddv_f32(*v136.f32);
        v138 = vmulq_f32(v93, xmmword_1E30476A0);
        v139 = v138.f32[2] + vaddv_f32(*v138.f32);
        v140 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v88, v128.f32[2] + vaddv_f32(*v128.f32)), v76, v129.f32[2] + vaddv_f32(*v129.f32)), v72, v130.f32[2] + vaddv_f32(*v130.f32));
        v141 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v88, v131.f32[2] + vaddv_f32(*v131.f32)), v76, v132.f32[2] + vaddv_f32(*v132.f32)), v72, v133.f32[2] + vaddv_f32(*v133.f32));
        v142 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v88, v135), v76, v137), v72, v139);
        v243[0] = v140;
        v243[1] = v141;
        v243[2] = v142;
        if (v53 < 0.9999)
        {
          v211 = v37;
          v213 = v36;
          v215 = v35;
          v217 = v223;
          v143.i64[0] = re::makeQuaternionFromMatrix<float>(v244);
          v143.i64[1] = v144;
          v219 = v143;
          v145.i64[0] = re::makeQuaternionFromMatrix<float>(v243);
          v145.i64[1] = v146;
          v147 = vmulq_f32(v219, v145);
          v148 = vextq_s8(v147, v147, 8uLL);
          *v147.f32 = vadd_f32(*v147.f32, *v148.f32);
          v147.f32[0] = vaddv_f32(*v147.f32);
          v148.i64[0] = 0;
          v149 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v147, v148)), 0), vnegq_f32(v145), v145);
          v150 = 1.0;
          v151 = vsubq_f32(v219, v149);
          v152 = vmulq_f32(v151, v151);
          v210 = v149;
          v153 = vaddq_f32(v149, v219);
          v154 = vmulq_f32(v153, v153);
          v155 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v152.i8, *&vextq_s8(v152, v152, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v154.i8, *&vextq_s8(v154, v154, 8uLL)))));
          v156 = v155 + v155;
          v157 = 1.0;
          if ((v155 + v155) != 0.0)
          {
            v157 = sinf(v155 + v155) / v156;
          }

          v158 = (1.0 - v53) * v156;
          if (v158 != 0.0)
          {
            v208 = v157;
            v159 = sinf((1.0 - v53) * v156);
            v157 = v208;
            v150 = v159 / v158;
          }

          v160 = v53 * v156;
          v161 = 1.0;
          if (v160 != 0.0)
          {
            v209 = v157;
            v162 = sinf(v160);
            v157 = v209;
            v161 = v162 / v160;
          }

          v163 = v157;
          v164 = vrecpe_f32(LODWORD(v157));
          v165 = vmul_f32(v164, vrecps_f32(LODWORD(v163), v164));
          v166 = vmul_f32(v165, vrecps_f32(LODWORD(v163), v165)).f32[0];
          v165.f32[0] = (1.0 - v53) * (v166 * v150);
          v167 = vmlaq_f32(vmulq_n_f32(v210, v53 * (v166 * v161)), v219, vdupq_lane_s32(v165, 0));
          v168 = vmulq_f32(v167, v167);
          v140 = vextq_s8(v168, v168, 8uLL);
          v169 = vadd_f32(*v168.i8, *v140.f32);
          if (vaddv_f32(v169) == 0.0)
          {
            v170 = xmmword_1E30474D0;
          }

          else
          {
            v171 = vadd_f32(v169, vdup_lane_s32(v169, 1)).u32[0];
            v172 = vrsqrte_f32(v171);
            v173 = vmul_f32(v172, vrsqrts_f32(v171, vmul_f32(v172, v172)));
            v170 = vmulq_n_f32(v167, vmul_f32(v173, vrsqrts_f32(v171, vmul_f32(v173, v173))).f32[0]);
          }

          v35 = v215;
          v39 = v217;
          v46 = 1.0;
          v37 = v211;
          v36 = v213;
          v174 = (v170.f32[0] + v170.f32[0]) * v170.f32[0];
          v175 = vmuls_lane_f32(v170.f32[1] + v170.f32[1], *v170.f32, 1);
          v176 = vmuls_lane_f32(v170.f32[2] + v170.f32[2], v170, 2);
          v177 = vmuls_lane_f32(v170.f32[0] + v170.f32[0], *v170.f32, 1);
          v178 = vmuls_lane_f32(v170.f32[0] + v170.f32[0], v170, 2);
          v179 = vmuls_lane_f32(v170.f32[1] + v170.f32[1], v170, 2);
          v180 = vmuls_lane_f32(v170.f32[0] + v170.f32[0], v170, 3);
          v181 = vmuls_lane_f32(v170.f32[1] + v170.f32[1], v170, 3);
          v182 = vmuls_lane_f32(v170.f32[2] + v170.f32[2], v170, 3);
          v140.f32[0] = 1.0 - (v175 + v176);
          v140.f32[1] = v177 + v182;
          v140.f32[2] = v178 - v181;
          v141.f32[0] = v177 - v182;
          v141.f32[1] = 1.0 - (v174 + v176);
          v141.f32[2] = v179 + v180;
          v142.f32[0] = v178 + v181;
          v142.f32[1] = v179 - v180;
          v142.f32[2] = 1.0 - (v174 + v175);
        }

        v183 = 0;
        LODWORD(v184) = 0;
        HIDWORD(v184) = sqrtf(*&v37);
        *&v185 = 0;
        *(&v185 + 1) = COERCE_UNSIGNED_INT(sqrtf(*&v35));
        v239 = COERCE_UNSIGNED_INT(sqrtf(*&v36));
        v240 = v184;
        v241 = v185;
        do
        {
          *(&v220 + v183) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v140, COERCE_FLOAT(*(&v239 + v183))), v141, *(&v239 + v183), 1), v142, *(&v239 + v183), 2);
          v183 += 16;
        }

        while (v183 != 48);
        v40 = v220;
        v41 = v221;
        v38 = v222;
        v40.i32[3] = 0;
        v41.i32[3] = 0;
        v38.i32[3] = 0;
        v39.f32[3] = v46;
        v42 = v231;
        v43 = v233;
      }

      if (v42)
      {
        v186 = &v232;
      }

      else
      {
        v186 = v43;
      }
    }

    while (v45 != v186);
  }

LABEL_85:
  v187 = 0;
  v239 = v203;
  v240 = v204;
  v241 = v205;
  v242 = v206;
  do
  {
    *(&v220 + v187) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, COERCE_FLOAT(*(&v239 + v187))), v41, *(&v239 + v187), 1), v38, *(&v239 + v187), 2), v39, *(&v239 + v187), 3);
    v187 += 16;
  }

  while (v187 != 64);
  v234 = v220;
  v235 = v221;
  v236 = v222;
  v237 = v223;
  v188 = v14;
  if (a4)
  {
    if (v207 == 0x7FFFFFFF)
    {
      v189 = v238;
      do
      {
        v190 = v189;
        v189 = v189[4];
      }

      while (v189);
      v191 = *(v190[3] + 288);
      v220.i64[0] = v238;
      re::EventBus::publish<re::ecs2::Entity,REBillboardTransformChangedEvent>(v191, v238, &v220);
      v227 = 0u;
      v228 = 0u;
      v225 = 0u;
      v226 = 0u;
      v223 = 0u;
      v224 = 0u;
      v221 = 0u;
      v222 = 0u;
      v220 = 0u;
      v188 = re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardTransform,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 544, &v238, &v220);
      goto LABEL_96;
    }

    if (re::ecs2::isBillboardResultChanged(&v234, v14 + 1))
    {
      v192 = v238;
      do
      {
        v193 = v192;
        v192 = v192[4];
      }

      while (v192);
      v194 = *(v193[3] + 288);
      v220.i64[0] = v238;
      re::EventBus::publish<re::ecs2::Entity,REBillboardTransformChangedEvent>(v194, v238, &v220);
LABEL_96:
      v196 = v236;
      v195 = v237;
      v197 = v235;
      *(v188 + 16) = v234;
      *(v188 + 32) = v197;
      *(v188 + 48) = v196;
      *(v188 + 64) = v195;
    }

    v198 = v235;
    *(v188 + 80) = v234;
    *(v188 + 96) = v198;
    v199 = v237;
    *(v188 + 112) = v236;
    *(v188 + 128) = v199;
    *v188 = 1;
  }

  v200 = v235;
  *a5 = v234;
  *(a5 + 16) = v200;
  v201 = v237;
  *(a5 + 32) = v236;
  *(a5 + 48) = v201;
  if (v229)
  {
    if ((v231 & 1) == 0)
    {
      (*(*v229 + 40))();
    }
  }
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(v5, a1, a2, v3 ^ (v3 >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 176 * v6 + 16;
  }
}

uint64_t re::EventBus::publish<re::ecs2::Entity,REBillboardTransformChangedEvent>(re::EventBus *a1, void *a2, const void *a3)
{
  Type = re::EventBus::getTypeId<REBillboardTransformChangedEvent>();

  return re::EventBus::publish(a1, a2, Type, a3, 8uLL, 0);
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardTransform,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(uint64_t a1, uint64_t *a2, _OWORD *a3)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(&v15, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v16) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 176 * HIDWORD(v16) + 16;
  }

  v7 = re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1, v16, v15);
  *(v7 + 8) = *a2;
  result = v7 + 16;
  v9 = a3[5];
  v10 = a3[6];
  v11 = a3[8];
  *(v7 + 128) = a3[7];
  *(v7 + 144) = v11;
  *(v7 + 96) = v9;
  *(v7 + 112) = v10;
  v12 = a3[1];
  v13 = a3[2];
  v14 = a3[4];
  *(v7 + 64) = a3[3];
  *(v7 + 80) = v14;
  *(v7 + 32) = v12;
  *(v7 + 48) = v13;
  *(v7 + 16) = *a3;
  ++*(a1 + 40);
  return result;
}

void re::ecs2::BillboardManager::flushDirtyComponentsQueueAndUpdatePerEntityStateData(re::ecs2::BillboardManager *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    re::ecs2::ECSManager::flushComponentToMarkDirtyQueue(v2);
  }

  if (*(this + 39))
  {

    re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::updatePerEntityStateData(this + 24, 1);
  }
}

uint64_t re::ecs2::BillboardManager::setTransformService(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 456) = a2;
  return result;
}

void re::ecs2::BillboardManagerStateTracking::~BillboardManagerStateTracking(re::ecs2::BillboardManagerStateTracking *this)
{
  re::ecs2::BillboardManagerStateTracking::~BillboardManagerStateTracking(this);

  JUMPOUT(0x1E6906520);
}

{
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 47);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 41);
  re::FixedArray<CoreIKTransform>::deinit(this + 38);
  *this = &unk_1F5CE9848;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 31);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 25);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 152);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 13);
  re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::deinit(this + 7);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 1);
}

void re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::clearEntityHierarchyStateData(_DWORD *a1, uint64_t a2)
{
  if (a1[21])
  {
    if (a1[74] != a1[24])
    {
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear((a1 + 62));
    }

    re::StackScratchAllocator::StackScratchAllocator(v15);
    v9[0] = 0;
    v9[1] = 0;
    v10 = 1;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v14 = 0;
    re::BucketArray<re::ecs2::Entity const*,32ul>::init(v9, v15, 1uLL);
    *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v9) = a2;
    while (v13)
    {
      v8 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v9, v13 - 1);
      re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v9, --v13);
      ++v14;
      if (!re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains((a1 + 62), &v8))
      {
        re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove((a1 + 14), v8);
        re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add((a1 + 62), &v8);
        v4 = *(v8 + 344);
        if (v4)
        {
          v5 = *(v8 + 360);
          v6 = 8 * v4;
          do
          {
            v7 = *v5++;
            *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v9) = v7;
            v6 -= 8;
          }

          while (v6);
        }
      }
    }

    a1[74] = a1[24];
    re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v9);
    if (v9[0] && (v10 & 1) == 0)
    {
      (*(*v9[0] + 40))();
    }

    re::StackScratchAllocator::~StackScratchAllocator(v15);
  }
}

void re::ecs2::BillboardManager::~BillboardManager(re::ecs2::BillboardManager *this)
{
  re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::deinit(this + 68);
  re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 62);
  re::ecs2::BillboardManagerStateTracking::~BillboardManagerStateTracking((this + 24));
}

{
  re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::deinit(this + 68);
  re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 62);
  re::ecs2::BillboardManagerStateTracking::~BillboardManagerStateTracking((this + 24));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BillboardManagerStateTracking,REEventHandlerResult (re::ecs2::BillboardManagerStateTracking::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BillboardManagerStateTracking,REEventHandlerResult (re::ecs2::BillboardManagerStateTracking::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CE9690;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BillboardManagerStateTracking,REEventHandlerResult (re::ecs2::BillboardManagerStateTracking::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CE9690;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BillboardManagerStateTracking,REEventHandlerResult (re::ecs2::BillboardManagerStateTracking::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BillboardManagerStateTracking,REEventHandlerResult (re::ecs2::BillboardManagerStateTracking::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CE96E8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BillboardManagerStateTracking,REEventHandlerResult (re::ecs2::BillboardManagerStateTracking::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CE96E8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BillboardManagerStateTracking,REEventHandlerResult (re::ecs2::BillboardManagerStateTracking::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BillboardManagerStateTracking,REEventHandlerResult (re::ecs2::BillboardManagerStateTracking::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CE9740;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BillboardManagerStateTracking,REEventHandlerResult (re::ecs2::BillboardManagerStateTracking::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CE9740;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BillboardManagerStateTracking,REEventHandlerResult (re::ecs2::BillboardManagerStateTracking::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BillboardManagerStateTracking,REEventHandlerResult (re::ecs2::BillboardManagerStateTracking::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CE9798;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BillboardManagerStateTracking,REEventHandlerResult (re::ecs2::BillboardManagerStateTracking::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CE9798;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BillboardManagerStateTracking,REEventHandlerResult (re::ecs2::BillboardManagerStateTracking::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BillboardManagerStateTracking,REEventHandlerResult (re::ecs2::BillboardManagerStateTracking::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CE97F0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BillboardManagerStateTracking,REEventHandlerResult (re::ecs2::BillboardManagerStateTracking::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CE97F0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::HashSetBase(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  v4 = *a2;
  if (v4)
  {
    if (*(a2 + 28) <= 3u)
    {
      v5 = 3;
    }

    else
    {
      v5 = *(a2 + 28);
    }

    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::init(a1, v4, v5);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::copy(a1, a2);
  }

  return a1;
}

void re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::copy(uint64_t a1, uint64_t a2)
{
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1);
  v4 = *(a2 + 28);
  if (*(a1 + 24) < v4)
  {
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::setCapacity(a1, v4);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    for (i = 0; i < v5; ++i)
    {
      v8 = *(a2 + 16) + v6;
      if ((*(v8 + 8) & 0x80000000) != 0)
      {
        re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::addAsCopy(a1, *v8 % *(a1 + 24), *v8, v8 + 16, (v8 + 16));
        v5 = *(a2 + 32);
      }

      v6 += 24;
    }
  }
}

double re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = a1[2];
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 44;
        --v3;
      }

      while (v3);
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

void re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 176 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

uint64_t (***re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CE98E0;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v14);
}

uint64_t (***re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CE9938;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v14);
}