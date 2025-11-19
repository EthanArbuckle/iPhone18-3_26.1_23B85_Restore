uint64_t *re::IntrospectionHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, const re::DynamicString *a5)
{
  memset(v10, 0, sizeof(v10));
  v8 = re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a4, a5, v10);
  re::AssetHandle::~AssetHandle(v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 18;
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
    v10 = *(a2 + 16) + 72 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 40);
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
      if ((*(*(a2 + 16) + 72 * v6) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v6) = v11;
LABEL_16:
    ;
  }

  while (v6 != v5);
  return result;
}

void re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(uint64_t a1)
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
      v4 = 0;
      do
      {
        re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((*(a1 + 16) + v3));
        ++v4;
        v3 += 72;
      }

      while (v4 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

uint64_t *re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, uint64_t *a3)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v20, a2);
  re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v17);
  v7 = HIDWORD(v18);
  if (HIDWORD(v18) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v18, v17);
    re::DynamicString::DynamicString((v8 + 1), a2);
    v8[5] = 0;
    v8[6] = 0;
    v9 = v8 + 5;
    v9[2] = 0;
    v9[1] = a3[1];
    a3[1] = 0;
    v10 = *v9;
    *v9 = 0;
    *v9 = *a3;
    *a3 = v10;
    v11 = v9[2];
    v9[2] = a3[2];
    a3[2] = v11;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v12 = *(a1 + 16) + 72 * v7;
    v13 = *(v12 + 48);
    *(v12 + 48) = a3[1];
    a3[1] = v13;
    v14 = *(v12 + 40);
    v9 = (v12 + 40);
    *v9 = 0;
    *v9 = *a3;
    *a3 = v14;
    v15 = v9[2];
    v9[2] = a3[2];
    a3[2] = v15;
  }

  return v9;
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

  return re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

    re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(a1, a3, 3);
  }
}

uint64_t *re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, const re::DynamicString *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
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

          if ((*(*(v7 + 16) + 72 * v4) & 0x80000000) != 0)
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
          v5 += 18;
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

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 72 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 72 * *(a1 + 32) + 40;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

void _ZZN2re8internal15setIntroVersionINS_4ecs221AudioLibraryComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 12;
    *(a2 + 8) = 0;
  }
}

void *re::ecs2::allocInfo_SpatialSceneClassificationComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC470, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC470))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AC490, "SpatialSceneClassificationComponent");
    __cxa_guard_release(&qword_1EE1AC470);
  }

  return &unk_1EE1AC490;
}

void re::ecs2::initInfo_SpatialSceneClassificationComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x70160EC3AACD711ELL;
  v18[1] = "SpatialSceneClassificationComponent";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&_MergedGlobals_314, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&_MergedGlobals_314);
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
      qword_1EE1AC478 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_SpatialSceneClassificationType(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "m_spatialSceneClassification";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1900000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1AC480 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::IntrospectionInfo<unsigned char [16]>::get(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "m_spatialSceneRoomIdentifier";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x1A00000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1AC488 = v16;
      __cxa_guard_release(&_MergedGlobals_314);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1AC478;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SpatialSceneClassificationComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SpatialSceneClassificationComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SpatialSceneClassificationComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SpatialSceneClassificationComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs235SpatialSceneClassificationComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v17 = v19;
}

void re::internal::defaultConstruct<re::ecs2::SpatialSceneClassificationComponent>(int a1, int a2, ArcSharedObject *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CF4F30;
  *(v3 + 33) = 0;
  *(v3 + 25) = 0;
  *(v3 + 40) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::SpatialSceneClassificationComponent>(ArcSharedObject *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CF4F30;
  *(v1 + 33) = 0;
  *(v1 + 25) = 0;
  *(v1 + 40) = 0;
}

void re::ecs2::SpatialSceneClassificationComponent::setSpatialSceneClassification(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 25);
    v5[0] = 67109376;
    v5[1] = v4;
    v6 = 1024;
    v7 = a2;
    _os_log_impl(&dword_1E1C61000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RE/ECS] [SpatialScene] SpatialSceneClassificationComponent: Classification changed from [%hhu] -> [%hhu].", v5, 0xEu);
  }

  *(a1 + 25) = a2;
  *(a1 + 42) = 0;
}

void re::ecs2::SpatialSceneClassificationComponent::setSpatialSceneRoomIdentifier(re::ecs2::SpatialSceneClassificationComponent *this, const unsigned __int8 *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(out, 0, 37);
  uuid_unparse(this + 26, out);
  *(this + 26) = *a2;
  memset(v8, 0, 37);
  uuid_unparse(this + 26, v8);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = out;
    v6 = 2080;
    v7 = v8;
    _os_log_impl(&dword_1E1C61000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RE/ECS] [SpatialScene] SpatialSceneClassificationComponent: Room UUID changed from [%s] -> [%s]", &v4, 0x16u);
  }

  *(this + 43) = 0;
}

void re::ecs2::SpatialSceneClassificationComponent::~SpatialSceneClassificationComponent(re::ecs2::SpatialSceneClassificationComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs235SpatialSceneClassificationComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 6;
    *(a2 + 8) = 0;
  }
}

double re::ecs2::MeshOffsetsAttributes::add(re::ecs2::MeshOffsetsAttributes *this, const re::MeshAsset *a2, unsigned int a3, unsigned int a4)
{
  v4 = *(a2 + 79);
  if (v4)
  {
    if (*(a2 + 71) <= a3)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v5 = *(*(a2 + 73) + 8 * a3);
      if (v4[11] > WORD1(v5))
      {
        v6 = *(*(v4[13] + 16 * WORD1(v5)) + 144 * v5 + 16);
        if (v4[3] > WORD1(v6))
        {
          v7 = *(v4[5] + 16 * WORD1(v6)) + 864 * v6;
          if (*(v7 + 56) > a4)
          {
            v9 = *(*(v7 + 64) + 544 * a4 + 452);
            re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::resize(this, *(this + 2) + 1);
            v10 = *(this + 4) + 192 * *(this + 2);
            re::DynamicArray<float>::resize(v10 - 192, (3 * v9));
            *(v10 - 16) = 0;
            *&result = 1065353216;
            *(v10 - 144) = xmmword_1E3047670;
            *(v10 - 128) = xmmword_1E3047680;
            *(v10 - 112) = xmmword_1E30476A0;
            *(v10 - 96) = xmmword_1E30474D0;
            *(v10 - 80) = xmmword_1E3047670;
            *(v10 - 64) = xmmword_1E3047680;
            *(v10 - 48) = xmmword_1E30476A0;
            *(v10 - 32) = xmmword_1E30474D0;
            return result;
          }

LABEL_11:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

LABEL_10:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_11;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_10;
  }

  return result;
}

void *re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 192 * a2;
    v9 = a2;
    do
    {
      result = re::DynamicArray<unsigned long>::deinit(v3[4] + v8);
      ++v9;
      v8 += 192;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 192 * v4 + 176;
      do
      {
        v7 = (v3[4] + v6);
        *(v7 - 18) = 0;
        *(v7 - 21) = 0;
        *(v7 - 20) = 0;
        *(v7 - 22) = 0;
        *(v7 - 38) = 0;
        *(v7 - 8) = xmmword_1E3047670;
        *(v7 - 7) = xmmword_1E3047680;
        *(v7 - 6) = xmmword_1E30476A0;
        *(v7 - 5) = xmmword_1E30474D0;
        *(v7 - 4) = xmmword_1E3047670;
        *(v7 - 3) = xmmword_1E3047680;
        *(v7 - 2) = xmmword_1E30476A0;
        *(v7 - 1) = xmmword_1E30474D0;
        v6 += 192;
        *v7 = 0;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

uint64_t re::AssetHandle::blockUntilLoaded<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>>(re::AssetHandle *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>::assetType();
  v3 = re::AssetHandle::assetWithType(a1, v2, 0);
  if (!v3)
  {
    v4 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = re::AssetHandle::assetInfo(a1);
      if (v6[17])
      {
        v7 = v6[18];
      }

      else
      {
        v7 = v6 + 137;
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", &v8, 0xCu);
    }
  }

  return v3;
}

void re::ecs2::MeshOffsetsComponent::resetDeformerInputs(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v14[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v9 = (a2 + 8);
  }

  else
  {
    v9 = 0;
  }

  inited = objc_initWeak(&location, v9);
  memset(v14, 0, 24);
  v14[3] = re::globalAllocators(inited)[2];
  v14[4] = 0;
  re::FramePersistentPtr<re::ecs2::MeshOffsetsComponent::OffsetsDeformerInputs,re::FrameManager>::reset((a1 + 160), &location, a3, v14);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v14);
  objc_destroyWeak(&location);
  if (a5)
  {
    v11 = 168 * a5;
    v12 = (a4 + 96);
    do
    {
      ++*(v12 - 87);
      *v12 = 0;
      v12 += 21;
      v11 -= 168;
    }

    while (v11);
  }
}

re::ecs2::MeshOffsetsComponentStateImpl *re::ecs2::MeshOffsetsComponentStateImpl::MeshOffsetsComponentStateImpl(re::ecs2::MeshOffsetsComponentStateImpl *this)
{
  v6[3] = *MEMORY[0x1E69E9840];
  *this = &unk_1F5CF4FB8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 7) = 0;
  *(this + 40) = 0u;
  v2 = (this + 40);
  v6[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v6[1] = re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v6[2] = re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v5[0] = v6;
  v5[1] = 3;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::FixedArray(v4, v5);
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=(v2, v4);
  if (v4[0] && v4[1])
  {
    (*(*v4[0] + 40))();
  }

  return this;
}

BOOL re::ecs2::MeshOffsetsComponentStateImpl::processDirtyComponents(re::ProfilerConfig *a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
  if (isStatisticCollectionEnabled)
  {
    v10 = re::profilerThreadContext(isStatisticCollectionEnabled);
    v11 = re::ecs2::SceneComponentTable::get((a3[1] + 200), re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v12 = v11 ? *(v11 + 384) : 0;
    v13 = *(v10 + 152);
    if (v13)
    {
      v14 = v13[912].u64[0];
      if (v14 >= v12)
      {
        v14 = v12;
      }

      v13[912].i64[0] = v14;
      v15 = v13[912].u64[1];
      if (v15 <= v12)
      {
        v15 = v12;
      }

      v13[912].i64[1] = v15;
      v16 = vdupq_n_s64(1uLL);
      v16.i64[0] = v12;
      v13[913] = vaddq_s64(v13[913], v16);
      *(v10 + 184) = 0;
    }
  }

  re::ecs2::SceneComponentTable::get((a3[1] + 200), re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v50, 3069, a1);
  v17 = *(a1 + 4);
  if (v17)
  {
    v18 = (*(*v17 + 104))(v17);
  }

  else
  {
    v18 = 0;
  }

  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v47, a5, 0);
  v20 = v47;
  v19 = v48;
  v47 = a4;
  v48 = v20;
  v49 = v19;
  if (v20 != a5 || v19 != 0xFFFFFFFFLL)
  {
    while (1)
    {
      v21 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v47);
      v22 = v21;
      v23 = *(v21 + 2);
      v24 = *(v23 + 200);
      v25 = *(v21 + 21);
      if (v25)
      {
        if (v24)
        {
          v26 = *(v24 + 248) != *v25 || v18 == 0;
          if (!v26 && v25[1] == v18)
          {
            goto LABEL_39;
          }

          v27 = *(v24 + 392);
          v29 = *(v27 + 88);
          v28 = *(v27 + 96);
        }

        else
        {
          v29 = 0;
          v28 = 0;
        }

        re::ecs2::MeshOffsetsComponent::resetDeformerInputs(v21, *(*(a1 + 2) + 144), 0, v28, v29);
      }

      v30 = *(v23 + 192);
      v31 = !v30 || v24 == 0;
      if (v31 || !*(v30 + 40))
      {
        break;
      }

      if (!*(v22 + 10) && *(a1 + 3))
      {
        v32 = re::globalAllocators(v21);
        v33 = (*(*v32[2] + 32))(v32[2], 40, 8);
        *v33 = 0u;
        *(v33 + 16) = 0u;
        *(v33 + 32) = 0;
        re::DynamicArray<re::MeshIdentifierAsset>::setCapacity(v33, 0);
        ++*(v33 + 24);
        v34 = *(a1 + 3);
        v35 = re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>::assetType();
        (*(*v34 + 424))(&v45, v34, v33, v35, 0, 0, 0);
        v36 = *(v22 + 72);
        *(v22 + 72) = v45;
        v45 = v36;
        v37 = *(v22 + 11);
        *(v22 + 11) = v46;
        v46 = v37;
        re::AssetHandle::~AssetHandle(&v45);
      }

      v38 = *(a1 + 2);
      v39 = v47;
      v40 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v48);
      v41 = a3[2];
      if (!v38)
      {
        goto LABEL_37;
      }

      v42 = a3[5];
LABEL_38:
      re::ecs2::ComponentBucketsBase::moveComponent(v41, v39, v40, v42);
LABEL_39:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v48);
      if (v48 == a5 && v49 == 0xFFFF && HIWORD(v49) == 0xFFFF)
      {
        goto LABEL_42;
      }
    }

    v39 = v47;
    v40 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v48);
    v41 = a3[2];
LABEL_37:
    v42 = a3[4];
    goto LABEL_38;
  }

LABEL_42:
  v43 = *(a5 + 40) != 0;
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v50);
  return v43;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[3]);
  if (result != a2 || v7 != a3 || ((v7 ^ a3) & 0xFFFFFF00000000) != 0)
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, result);
    v10 = *a1;
    v11 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v10 + 56), &v11);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v10 + 168, *(*(v10 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v10);
    }
  }

  return result;
}

BOOL re::ecs2::MeshOffsetsComponentStateImpl::processPreparingComponents(re::ProfilerConfig *a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v156 = *MEMORY[0x1E69E9840];
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
  if (isStatisticCollectionEnabled)
  {
    v5 = re::profilerThreadContext(isStatisticCollectionEnabled);
    v10 = re::ecs2::SceneComponentTable::get((a3[1] + 200), re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v11 = v10 ? *(v10 + 384) : 0;
    v12 = *(v5 + 152);
    if (v12)
    {
      v13 = v12[912].u64[0];
      if (v13 >= v11)
      {
        v13 = v11;
      }

      v12[912].i64[0] = v13;
      v14 = v12[912].u64[1];
      if (v14 <= v11)
      {
        v14 = v11;
      }

      v12[912].i64[1] = v14;
      v15 = vdupq_n_s64(1uLL);
      v15.i64[0] = v11;
      v12[913] = vaddq_s64(v12[913], v15);
      *(v5 + 184) = 0;
    }
  }

  re::ecs2::SceneComponentTable::get((a3[1] + 200), re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v130, 3069, a1);
  v121 = *(a1 + 2);
  v16 = *(a1 + 4);
  v113 = a1;
  v114 = a3;
  if (v16)
  {
    v112 = (*(*v16 + 104))(v16);
  }

  else
  {
    v112 = 0;
  }

  v17 = buf;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(buf, a5, 0);
  v127 = a4;
  v128 = *buf;
  v129 = *&buf[8];
  if (*buf != a5 || *&buf[8] != 0xFFFFFFFFLL)
  {
    do
    {
      v18 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v127);
      v19 = v18;
      v118 = v18[2];
      if (v18[10])
      {
        v20 = re::AssetHandle::blockUntilLoaded<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>>((v18 + 9));
        if (v20)
        {
          v21 = v19[2];
          if (v21)
          {
            v22 = *(v21 + 192);
            if (v22)
            {
              v23 = v20;
              v24 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((v22 + 32));
              if (v24)
              {
                v25 = v24;
                if (v24[79])
                {
                  v26 = v24[73];
                  v27 = v24[71];
                  v28 = re::ecs2::EntityComponentCollection::get((v21 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                  if (v28)
                  {
                    v29 = v28 + 216;
                    v26 = *(v28 + 208);
                    v27 = *(v28 + 192);
                  }

                  else
                  {
                    v29 = (v25 + 80);
                  }

                  v30 = *(v23 + 16);
                  v119 = v29;
                  if (v30)
                  {
                    LODWORD(v31) = 0;
                    v32 = *(v23 + 32);
                    v21 = 40 * v30;
                    do
                    {
                      re::MeshNameMap::meshInstancePartsForIdentifier(v29, v32, buf);
                      v31 = (v31 + *buf);
                      re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&buf[8]);
                      v29 = v119;
                      v32 += 5;
                      v21 -= 40;
                    }

                    while (v21);
                  }

                  else
                  {
                    v31 = 0;
                  }

                  re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::resize(v19 + 4, v31);
                  v33 = *(v23 + 16);
                  if (v33)
                  {
                    v34 = *(v23 + 32);
                    v35 = 0;
                    v115 = &v34[5 * v33];
                    while (1)
                    {
                      v116 = v34;
                      re::MeshNameMap::meshInstancePartsForIdentifier(v119, v34, &v143);
                      if (v143)
                      {
                        break;
                      }

LABEL_38:
                      re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(v144);
                      v34 = v116 + 5;
                      v17 = buf;
                      if (v116 + 5 == v115)
                      {
                        goto LABEL_39;
                      }
                    }

                    v36 = 0;
                    while (1)
                    {
                      *buf = v36;
                      v37 = (*(*v148 + 16))(v148, buf);
                      v39 = v37;
                      if (v27 <= v37)
                      {
                        goto LABEL_105;
                      }

                      v40 = re::DataArray<re::MeshInstance>::tryGet(v25[79] + 72, *(v26 + 8 * v37));
                      v41 = re::DataArray<re::MeshModel>::tryGet(v25[79] + 8, *(v40 + 16));
                      v5 = v35;
                      v21 = v19[6];
                      if (v21 <= v35)
                      {
                        goto LABEL_106;
                      }

                      v31 = v41;
                      v42 = v25;
                      v25 = v27;
                      v27 = v26;
                      v43 = v19[8];
                      *buf = v36;
                      v44 = ((*(*v148 + 16))(v148, buf) >> 32);
                      v21 = *(v31 + 56);
                      if (v21 <= v44)
                      {
                        goto LABEL_107;
                      }

                      re::DynamicArray<float>::resize(v43 + 192 * v35++, (3 * *(*(v31 + 64) + 544 * v44 + 452)));
                      ++v36;
                      v26 = v27;
                      v27 = v25;
                      v25 = v42;
                      if (v36 == v143)
                      {
                        goto LABEL_38;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_39:
      v45 = re::AssetHandle::loadedAsset<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>>((v19 + 9));
      if (!v45)
      {
        re::AssetHandle::loadAsync((v19 + 9));
        goto LABEL_100;
      }

      v25 = v45;
      v46 = v118;
      v47 = *(v118 + 192);
      v48 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((v47 + 4)) + 640;
      v49 = re::ecs2::EntityComponentCollection::get((v118 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v49)
      {
        v5 = v49 + 216;
      }

      else
      {
        v5 = v48;
      }

      v120 = v47;
      v50 = v47[5];
      if (v50)
      {
        v51 = *(v50 + 792);
      }

      else
      {
        v51 = 0;
      }

      v27 = buf;
      v52 = v19[10];
      if (v52)
      {
        v53 = *(v52 + 792);
      }

      else
      {
        v53 = 0;
      }

      v54 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v50 ^ (v50 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v50 ^ (v50 >> 30))) >> 27));
      v55 = v51 ^ (v54 >> 31) ^ v54;
      v56 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v52 ^ (v52 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v52 ^ (v52 >> 30))) >> 27));
      v57 = ((v55 << 6) - 0x61C8864680B583E9 + (v55 >> 2) + ((*(v5 + 8) - 0x61C8864680B583E9 + ((v53 ^ (v56 >> 31) ^ v56) << 6) + ((v53 ^ (v56 >> 31) ^ v56) >> 2)) ^ v53 ^ (v56 >> 31) ^ v56)) ^ v55;
      if (v19[13] != v57)
      {
        v19[13] = -1;
        re::FixedArray<CoreIKTransform>::deinit(v19 + 14);
        v58 = re::FixedArray<CoreIKTransform>::deinit(v19 + 17);
        v59 = v19[12];
        if (!v59)
        {
          v19[13] = -1;
        }

        re::FixedArray<int>::init<>(v19 + 17, v59, *(v5 + 216));
        if (*(v5 + 216))
        {
          v60 = 0;
          v31 = 0;
          do
          {
            v17 = v19[18];
            if (v17 <= v31)
            {
              goto LABEL_108;
            }

            *(v19[19] + 4 * v31) = v60;
            v60 += re::MeshNameMap::meshPartInstanceCount(v5, v31++);
          }

          while (v31 < *(v5 + 216));
        }

        v61 = *(v5 + 336);
        if (v61)
        {
          v62 = *(*(v5 + 344) + 4 * v61 - 4);
        }

        else
        {
          v62 = 0;
        }

        v63 = v19[12];
        *buf = -1;
        v49 = re::FixedArray<unsigned int>::init<int>(v19 + 14, v63, v62, buf);
        if (v25[2])
        {
          v64 = 0;
          v27 = 0;
          while (1)
          {
            re::MeshNameMap::meshInstancePartsForIdentifier(v5, (v25[4] + 40 * v27), &v143);
            if (v143)
            {
              break;
            }

            v69 = v64;
LABEL_68:
            v49 = re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(v144);
            ++v27;
            v64 = v69;
            if (v27 >= v25[2])
            {
              goto LABEL_69;
            }
          }

          v65 = 0;
          while (1)
          {
            *buf = v65;
            v66 = (*(*v148 + 16))(v148, buf);
            started = re::MeshNameMap::meshPartStartIndexForInstance(v5, v66);
            *buf = v65;
            v31 = started + ((*(*v148 + 16))(v148, buf) >> 32);
            v68 = v19[15];
            if (v68 <= v31)
            {
              break;
            }

            v69 = (v64 + 1);
            *(v19[16] + 4 * v31) = v64;
            ++v65;
            LODWORD(v64) = v64 + 1;
            if (v65 == v143)
            {
              goto LABEL_68;
            }
          }

          v122 = 0;
          v134 = 0u;
          v135 = 0u;
          v133 = 0u;
          memset(buf, 0, sizeof(buf));
          v21 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v149 = 136315906;
          *&v149[4] = "operator[]";
          v150 = 1024;
          v151 = 468;
          v152 = 2048;
          v153 = v31;
          v154 = 2048;
          v155 = v68;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_105:
          re::internal::assertLog(6, v38, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v39, v27);
          _os_crash();
          __break(1u);
LABEL_106:
          v122 = 0;
          v134 = 0u;
          v135 = 0u;
          v133 = 0u;
          memset(buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v149 = 136315906;
          *&v149[4] = "operator[]";
          v150 = 1024;
          v151 = 789;
          v152 = 2048;
          v153 = v5;
          v154 = 2048;
          v155 = v21;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_107:
          v122 = 0;
          v134 = 0u;
          v135 = 0u;
          v133 = 0u;
          memset(buf, 0, sizeof(buf));
          v57 = MEMORY[0x1E69E9C10];
          v17 = v44;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v149 = 136315906;
          *&v149[4] = "operator[]";
          v150 = 1024;
          v151 = 476;
          v152 = 2048;
          v153 = v17;
          v154 = 2048;
          v155 = v21;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_108:
          *v149 = 0;
          *(v27 + 48) = 0u;
          *(v27 + 64) = 0u;
          v133 = 0u;
          memset(buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v143) = 136315906;
          *(v27 + 180) = "operator[]";
          v145 = 1024;
          *(v27 + 190) = 468;
          v146 = 2048;
          *(v27 + 196) = v31;
          v147 = 2048;
          *(v27 + 206) = v17;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_109:
          re::internal::assertLog(6, v91, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v57, v25);
          _os_crash();
          __break(1u);
LABEL_110:
          v131 = 0;
          *(v27 + 224) = 0u;
          *(v27 + 240) = 0u;
          *(v27 + 192) = 0u;
          *(v27 + 208) = 0u;
          *(v27 + 176) = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v149 = 136315906;
          *&v149[4] = "operator[]";
          v150 = 1024;
          v151 = 468;
          v152 = 2048;
          v153 = v57;
          v154 = 2048;
          v155 = v17;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_111:
          *v149 = 0;
          *(v27 + 48) = 0u;
          *(v27 + 64) = 0u;
          v133 = 0u;
          memset(buf, 0, sizeof(buf));
          v81 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v143) = 136315906;
          *(v27 + 180) = "operator[]";
          v145 = 1024;
          *(v27 + 190) = 468;
          v146 = 2048;
          *(v27 + 196) = v57;
          v147 = 2048;
          *(v27 + 206) = v17;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_112:
          re::internal::assertLog(6, v83, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 176, v81);
          _os_crash();
          __break(1u);
LABEL_113:
          re::internal::assertLog(4, v85, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
          _os_crash();
          __break(1u);
        }

LABEL_69:
        v19[13] = v57;
        v17 = buf;
        v46 = v118;
      }

      v70 = *(v46 + 200);
      if (*(v70 + 30))
      {
        if (!v19[6])
        {
          v72 = v127;
          v73 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v128);
          v74 = v114[2];
          v75 = v114[4];
          goto LABEL_99;
        }

        v71 = v19[21];
        if (!v71 || *v71 != *(v70 + 31))
        {
          v76 = *(v70 + 49);
          v25 = *(v76 + 88);
          v5 = *(v76 + 96);
          v77 = *(v113 + 2);
          v78 = re::globalAllocators(v49);
          v79 = (*(*v78[2] + 32))(v78[2], 40, 8);
          *v79 = *(v70 + 31);
          v79[1] = v112;
          v79[3] = 0;
          v79[4] = 0;
          v79[2] = 0;
          re::ecs2::MeshOffsetsComponent::resetDeformerInputs(v19, *(v77 + 144), v79, v5, v25);
          v80 = v19[21];
          v81 = *(v70 + 32);
          v80[3] = v81;
          if (v81)
          {
            if (v81 >= 0x1745D1745D1745ELL)
            {
              goto LABEL_112;
            }

            v80[4] = v84;
            if (!v84)
            {
              goto LABEL_113;
            }

            v86 = v81 - 1;
            if (v81 != 1)
            {
              do
              {
                *(v84 + 128) = 0;
                *(v84 + 96) = 0uLL;
                *(v84 + 112) = 0uLL;
                *(v84 + 64) = 0uLL;
                *(v84 + 80) = 0uLL;
                *(v84 + 32) = 0uLL;
                *(v84 + 48) = 0uLL;
                *v84 = 0uLL;
                *(v84 + 16) = 0uLL;
                *(v84 + 136) = 0uLL;
                *(v84 + 152) = 0uLL;
                *(v84 + 168) = 0;
                v84 += 176;
                --v86;
              }

              while (v86);
            }

            *(v84 + 128) = 0;
            *(v84 + 96) = 0uLL;
            *(v84 + 112) = 0uLL;
            *(v84 + 64) = 0uLL;
            *(v84 + 80) = 0uLL;
            *(v84 + 32) = 0uLL;
            *(v84 + 48) = 0uLL;
            *v84 = 0uLL;
            *(v84 + 16) = 0uLL;
            *(v84 + 136) = 0uLL;
            *(v84 + 152) = 0uLL;
            *(v84 + 168) = 0;
          }

          v125 = (v70 + 232);
          v126 = 9;
          v122 = (v70 + 232);
          v123 = 9;
          v124 = 0;
          while (1)
          {
            re::MeshDeformationRuntimeData::MeshDeformationIteration::end(&v125, buf);
            if (HIDWORD(v123) == *&buf[12] && v124 == *&buf[16])
            {
              break;
            }

            v87 = re::MeshDeformationRuntimeData::MeshDeformationIterator::originalMeshInstanceAndPartIndex(&v122);
            v88 = re::DeformedMeshAssetsMap::deformedIndex((v19 + 12), v87, WORD2(v87));
            if (v88 != -1)
            {
              v89 = v88;
              v90 = re::MeshDeformationRuntimeData::MeshDeformationIterator::absoluteDeformedMeshPartIndex(&v122);
              v57 = v90;
              if (v25 <= v90)
              {
                goto LABEL_109;
              }

              if (v19[6] <= v89)
              {
                v27 = *re::graphicsLogObjects(v90);
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  v109 = v19[6];
                  *buf = 67109376;
                  *&buf[4] = v89;
                  *&buf[8] = 2048;
                  *&buf[10] = v109;
                  _os_log_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_DEFAULT, "Missing attributes for some parts of assigned mesh (deformed index %u, but only %zu attributes have been added). Skipping.", buf, 0x12u);
                }
              }

              else
              {
                v92 = v19[8] + 192 * v89;
                v93 = *(v92 + 48);
                v94 = *(v92 + 64);
                v95 = *(v92 + 80);
                v27 = buf;
                v134 = *(v92 + 96);
                *&buf[16] = v94;
                v133 = v95;
                *buf = v93;
                v96 = *(v92 + 112);
                v97 = *(v92 + 128);
                v98 = *(v92 + 160);
                v137 = *(v92 + 144);
                v138 = v98;
                v135 = v96;
                v136 = v97;
                v139 = *(v92 + 176);
                v99 = [*(v121 + 208) newBufferWithBytes:*(v92 + 32) length:4 * *(v92 + 16) options:0];
                v140[0] = v99;
                v141 = 0;
                LODWORD(v142) = 0;
                HIDWORD(v142) = [v99 length];
                v17 = v80[3];
                if (v17 <= v57)
                {
                  goto LABEL_110;
                }

                v100 = v80[4] + 176 * v57;
                *v100 = *buf;
                v101 = *&buf[16];
                v102 = v133;
                v103 = v135;
                *(v100 + 48) = v134;
                *(v100 + 64) = v103;
                *(v100 + 16) = v101;
                *(v100 + 32) = v102;
                v104 = v136;
                v105 = v137;
                v106 = v138;
                *(v100 + 128) = v139;
                *(v100 + 96) = v105;
                *(v100 + 112) = v106;
                *(v100 + 80) = v104;
                std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v100 + 136, v140);
                *(v100 + 168) = v142;
                if (v141 != -1)
                {
                  (off_1F5CF50A0[v141])(&v143, v140);
                }

                v141 = -1;
                if (v99)
                {
                }

                v17 = v80[3];
                if (v17 <= v57)
                {
                  goto LABEL_111;
                }

                v107 = v5 + 168 * v57;
                v108 = v80[4] + 176 * v57;
                ++*(v107 + 9);
                *(v107 + 96) = v108;
                v17 = buf;
              }
            }

            re::MeshDeformationRuntimeData::MeshDeformationIterator::operator++(&v122);
          }
        }

        if (re::ecs2::MeshDeformationComponent::areRequiredAssetsLoaded(v70, v120))
        {
          v72 = v127;
          v73 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v128);
          v74 = v114[2];
          v75 = v114[6];
LABEL_99:
          re::ecs2::ComponentBucketsBase::moveComponent(v74, v72, v73, v75);
        }
      }

LABEL_100:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v128);
    }

    while (v128 != a5 || v129 != 0xFFFF || HIWORD(v129) != 0xFFFF);
  }

  v110 = *(a5 + 40) != 0;
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v130);
  return v110;
}

uint64_t re::ecs2::MeshOffsetsSystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v32[0] = a2;
  v32[1] = a3;
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v31);
  re::StackScratchAllocator::StackScratchAllocator(v44);
  v40 = 1;
  v41 = 0;
  v42 = 0;
  v38 = v44;
  v39 = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v38, 0);
  v40 += 2;
  v5 = a1[58];
  if ((v5 & 0x3F) != 0)
  {
    v6 = (v5 >> 6) + 1;
  }

  else
  {
    v6 = v5 >> 6;
  }

  v43 = a1[58];
  v33[0] = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v38, v6, v33);
  v7 = *(a3 + 200);
  if (v7)
  {
    v8 = *(a3 + 216);
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      v33[0] = v10;
      v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 39, v33);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v38, *(a1[40] + 16 * v11 + 8));
      v9 -= 8;
    }

    while (v9);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v38, (a1 + 53));
  v34 = 1;
  v35 = 0;
  v36 = 0;
  v33[0] = v44;
  v33[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v33, 0);
  v34 += 2;
  v12 = a1[58];
  if ((v12 & 0x3F) != 0)
  {
    v13 = (v12 >> 6) + 1;
  }

  else
  {
    v13 = v12 >> 6;
  }

  v37 = a1[58];
  v45 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v33, v13, &v45);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 53), &v38);
  v14 = v42;
  if (v40)
  {
    v14 = &v41;
  }

  v15 = v39;
  if ((v39 & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v16 = 0;
    while (1)
    {
      v18 = *v14++;
      v17 = v18;
      if (v18)
      {
        break;
      }

      v16 -= 64;
      if (!--v15)
      {
        goto LABEL_30;
      }
    }

    v19 = __clz(__rbit64(v17));
    if (v19 + 1 != v16)
    {
      FirstBitSet = v19 - v16;
      do
      {
        v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 32), FirstBitSet);
        v22 = *(*v21 + 224);
        v23 = v21[3];
        v24 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v23);
        if (*(v24 + 40))
        {
          v25 = (*(*v22 + 24))(v22, v32, v21, v23, v24, 0);
        }

        else
        {
          v25 = 0;
        }

        v26 = v21[5];
        v27 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v26);
        if (*(v27 + 40))
        {
          v25 |= (*(*v22 + 32))(v22, v32, v21, v26, v27, 0);
        }

        v28 = v21[6];
        v29 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v28);
        if (*(v29 + 40))
        {
          if (((v25 | (*(*v22 + 40))(v22, v32, v21, v28, v29, 0)) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else if (!v25)
        {
LABEL_28:
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v33, FirstBitSet);
          goto LABEL_29;
        }

        re::DynamicBitset<unsigned long long,64ul>::setBit(v33, FirstBitSet);
LABEL_29:
        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v38, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_30:
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 53), v33);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 32));
  if (v33[0] && (v34 & 1) == 0)
  {
    (*(*v33[0] + 40))();
  }

  if (v38 && (v40 & 1) == 0)
  {
    (*(*v38 + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v44);
  return re::ProfilerTimeGuard<(re::ProfilerStatistic)125>::end(v31);
}

void *re::ecs2::MeshOffsetsSystem::willAddSystemToECSService(re::ecs2::MeshOffsetsSystem *this)
{
  re::ecs2::DeformationSubsystem::willAddSystemToECSService(this);
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  v3 = re::ServiceLocator::serviceOrNull<re::Engine>(v2);
  v4 = (*(**(this + 5) + 32))(*(this + 5));
  v5 = re::ServiceLocator::serviceOrNull<re::RenderManager>(v4);
  v6 = (*(**(this + 5) + 32))(*(this + 5));
  v7 = re::ServiceLocator::serviceOrNull<re::AssetService>(v6);
  v8 = (*(**(this + 5) + 32))(*(this + 5));
  v9 = re::ServiceLocator::serviceOrNull<re::ecs2::ThrottleService>(v8);
  *(this + 63) = v3;
  *(this + 64) = v5;
  *(this + 65) = v7;
  *(this + 66) = v9;
  v12 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 47, 0);
  *(this + 98) += 2;
  *(this + 52) = 0;
  result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 53, 0);
  *(this + 110) += 2;
  *(this + 58) = 0;
  *(this + 59) = this;
  *(this + 60) = this + 496;
  *(this + 488) = 1;
  return result;
}

double re::ecs2::MeshOffsetsSystem::willRemoveSystemFromECSService(re::ecs2::MeshOffsetsSystem *this)
{
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 256);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 312);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 376);
  *(this + 52) = 0;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 424);
  *(this + 58) = 0;
  *(this + 59) = 0;
  *(this + 60) = 0;
  result = 0.0;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  return result;
}

unint64_t re::ecs2::MeshOffsetsSystem::willAddSceneToECSService(re::ecs2::MeshOffsetsSystem *this, re::ecs2::Scene *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v48[0] = a2;
  v4 = *(this + 48);
  v5 = *(this + 98);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (this + 400);
    }

    else
    {
      v6 = *(this + 51);
    }

    v8 = 8 * v4;
    while (!*v6)
    {
      ++v6;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v7 = (this + 400);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(this + 51);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  v9 = 0;
  v10 = 8 * v4;
  do
  {
    v11 = *v7++;
    v9 |= v11;
    v10 -= 8;
  }

  while (v10);
  if (v9)
  {
LABEL_16:
    *&v40 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 376, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 256, v40);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::init(v12, this + 256, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 39, v48, &v40);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 376, v40);
    v13 = v40;
    goto LABEL_49;
  }

LABEL_17:
  v47 = 0u;
  v40 = 0u;
  *&v41 = 0;
  v42 = 0u;
  v43 = 0u;
  *(&v41 + 1) = -1;
  v44 = 0;
  v45 = 1;
  v46 = 0uLL;
  v14 = *(this + 37);
  *&v47 = 0;
  v15 = *(this + 33);
  DWORD2(v47) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>,4ul>::setBucketsCapacity(this + 32, (v14 + 4) >> 2);
    v15 = *(this + 33);
  }

  if (v15 <= v14 >> 2)
  {
    v48[1] = 0;
    memset(v57, 0, sizeof(v57));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v49 = 136315906;
    v50 = "operator[]";
    v51 = 1024;
    v52 = 858;
    v53 = 2048;
    v54 = v14 >> 2;
    v55 = 2048;
    v56 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_53;
  }

  if (*(this + 272))
  {
    v16 = this + 280;
  }

  else
  {
    v16 = *(this + 36);
  }

  v17 = *&v16[8 * (v14 >> 2)];
  ++*(this + 37);
  ++*(this + 76);
  v18 = v17 + 112 * (v14 & 3);
  v19 = v40;
  v20 = v41;
  v21 = v42;
  *(v18 + 48) = v43;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v43 + 8);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v40);
  v23 = *(this + 37);
  if (!v23)
  {
LABEL_53:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 256, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::init(v24, this + 256, v48[0]);
  *&v57[0] = *(this + 37) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 39, v48, v57);
  v25 = *(this + 37);
  v26 = *(this + 52);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(this + 52) = v25;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 376), v27, &v40);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(this + 52) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(this + 392))
    {
      v30 = this + 400;
    }

    else
    {
      v30 = *(this + 51);
    }

    *&v30[8 * *(this + 48) - 8] &= v28;
  }

  v31 = *(this + 37);
  v32 = *(this + 58);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(this + 58) = v31;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 424), v33, &v40);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(this + 58) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(this + 440))
    {
      v36 = this + 448;
    }

    else
    {
      v36 = *(this + 57);
    }

    *&v36[8 * *(this + 54) - 8] &= v34;
  }

  v13 = *&v57[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(this + 424, v13);
  if (*(this + 488) == 1)
  {
    v38 = *(this + 59);
    v39 = *(v48[0] + 376);
    LOWORD(v40) = 257;
    DWORD1(v40) = 1023969417;
    BYTE8(v40) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v40);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 256);
  }

  return result;
}

uint64_t re::ecs2::MeshOffsetsSystem::willRemoveSceneFromECSService(re::ecs2::MeshOffsetsSystem *this, re::ecs2::Scene *a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 39, &v15);
  if (result != -1)
  {
    v4 = *(this + 40) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 376, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 424, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 256, *(v4 + 8));
    if (*v5)
    {
      v6 = v5;
      *v5 = 0;
      v7 = v5 + 1;
      v8 = *(v5[1] + 288);
      if (v8)
      {
        v9 = v5[12];
        if (v9)
        {
          for (i = 0; i != v9; ++i)
          {
            v11 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v6 + 7), i);
            re::EventBus::unsubscribe(v8, *v11, *(v11 + 8));
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v6 + 7));
      v12 = 0;
      v13 = v6 + 3;
      do
      {
        v14 = v6[2];
        if (*v14)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v14, v13[v12]);
        }

        v13[v12++] = -1;
      }

      while (v12 != 4);
      *v7 = 0;
      v7[1] = 0;
    }

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 312, &v15);
  }

  return result;
}

void *re::ecs2::allocInfo_AssignedMeshOffsetsAttributes(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC528))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AC5F8, "AssignedMeshOffsetsAttributes");
    __cxa_guard_release(&qword_1EE1AC528);
  }

  return &unk_1EE1AC5F8;
}

void re::ecs2::initInfo_AssignedMeshOffsetsAttributes(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v21[0] = 0x8D01A139E5A607F8;
  v21[1] = "AssignedMeshOffsetsAttributes";
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  *(this + 2) = v22;
  if ((atomic_load_explicit(&qword_1EE1AC530, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AC530);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "offsets";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1AC598 = v9;
      v10 = re::introspectionAllocator(v9);
      v11 = re::introspect_Matrix4x4F(1);
      v12 = (*(*v10 + 32))(v10, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "preTransform";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x3000000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1AC5A0 = v12;
      v13 = re::introspectionAllocator(v12);
      v14 = re::introspect_Matrix4x4F(1);
      v15 = (*(*v13 + 32))(v13, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "postTransform";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x7000000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1AC5A8 = v15;
      v16 = re::introspectionAllocator(v15);
      v18 = re::introspect_REMeshOffsetsBlendingMode(1, v17);
      v19 = (*(*v16 + 32))(v16, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "blendingMode";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0xB000000004;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1AC5B0 = v19;
      __cxa_guard_release(&qword_1EE1AC530);
    }
  }

  *(this + 2) = 0xC000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1AC598;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AssignedMeshOffsetsAttributes>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AssignedMeshOffsetsAttributes>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AssignedMeshOffsetsAttributes>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AssignedMeshOffsetsAttributes>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v20 = v22;
}

double re::internal::defaultConstruct<re::ecs2::AssignedMeshOffsetsAttributes>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
  *&result = 1065353216;
  *(a3 + 48) = xmmword_1E3047670;
  *(a3 + 64) = xmmword_1E3047680;
  *(a3 + 80) = xmmword_1E30476A0;
  *(a3 + 96) = xmmword_1E30474D0;
  *(a3 + 112) = xmmword_1E3047670;
  *(a3 + 128) = xmmword_1E3047680;
  *(a3 + 144) = xmmword_1E30476A0;
  *(a3 + 160) = xmmword_1E30474D0;
  *(a3 + 176) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::AssignedMeshOffsetsAttributes>(uint64_t a1)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  *&result = 1065353216;
  *(a1 + 48) = xmmword_1E3047670;
  *(a1 + 64) = xmmword_1E3047680;
  *(a1 + 80) = xmmword_1E30476A0;
  *(a1 + 96) = xmmword_1E30474D0;
  *(a1 + 112) = xmmword_1E3047670;
  *(a1 + 128) = xmmword_1E3047680;
  *(a1 + 144) = xmmword_1E30476A0;
  *(a1 + 160) = xmmword_1E30474D0;
  *(a1 + 176) = 0;
  return result;
}

void *re::ecs2::allocInfo_MeshOffsetsAttributes(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC540, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC540))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AC688, "MeshOffsetsAttributes");
    __cxa_guard_release(&qword_1EE1AC540);
  }

  return &unk_1EE1AC688;
}

void re::ecs2::initInfo_MeshOffsetsAttributes(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v9[0] = 0x594BC986F85AAA54;
  v9[1] = "MeshOffsetsAttributes";
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  *(this + 2) = v10;
  if ((atomic_load_explicit(&qword_1EE1AC550, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AC550);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>>::get(v6);
      v7 = (*(*v6 + 32))(v6, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "perAssignedMeshAttributes";
      *(v7 + 16) = &qword_1EE1AC5B8;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE1AC548 = v7;
      __cxa_guard_release(&qword_1EE1AC550);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1AC548;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MeshOffsetsAttributes>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MeshOffsetsAttributes>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MeshOffsetsAttributes>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MeshOffsetsAttributes>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v8 = v10;
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>>::get(re::ecs2 *a1)
{
  if ((atomic_load_explicit(&qword_1EE1AC578, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1AC578);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1AC5B8);
      qword_1EE1AC5B8 = &unk_1F5CF5220;
      __cxa_guard_release(&qword_1EE1AC578);
    }
  }

  if ((_MergedGlobals_315 & 1) == 0)
  {
    v1 = qword_1EE1AC538;
    if (qword_1EE1AC538 || (v1 = re::ecs2::allocInfo_AssignedMeshOffsetsAttributes(a1), qword_1EE1AC538 = v1, re::ecs2::initInfo_AssignedMeshOffsetsAttributes(v1, v2), (_MergedGlobals_315 & 1) == 0))
    {
      _MergedGlobals_315 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AC5B8, 0);
      qword_1EE1AC5C8 = 0x2800000003;
      dword_1EE1AC5D0 = v3;
      word_1EE1AC5D4 = 0;
      *&xmmword_1EE1AC5D8 = 0;
      *(&xmmword_1EE1AC5D8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AC5E8 = v1;
      unk_1EE1AC5F0 = 0;
      qword_1EE1AC5B8 = &unk_1F5CF5220;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1AC5B8, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1AC5D8 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::internal::defaultConstruct<re::ecs2::MeshOffsetsAttributes>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
}

uint64_t re::internal::defaultConstructV2<re::ecs2::MeshOffsetsAttributes>(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  return result;
}

void *re::ecs2::allocInfo_MeshOffsetsComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC560, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC560))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AC718, "MeshOffsetsComponent");
    __cxa_guard_release(&qword_1EE1AC560);
  }

  return &unk_1EE1AC718;
}

void re::ecs2::initInfo_MeshOffsetsComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v19[0] = 0x55761199A1A25594;
  v19[1] = "MeshOffsetsComponent";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE1AC568, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AC568);
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
      qword_1EE1AC580 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = v9;
      v11 = qword_1EE1AC558;
      if (!qword_1EE1AC558)
      {
        v11 = re::ecs2::allocInfo_MeshOffsetsAttributes(v9);
        qword_1EE1AC558 = v11;
        re::ecs2::initInfo_MeshOffsetsAttributes(v11, v12);
      }

      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "attributes";
      *(v13 + 16) = v11;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2000000001;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1AC588 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_AssetHandle(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "assignedMeshDeformation";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x4800000002;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1AC590 = v17;
      __cxa_guard_release(&qword_1EE1AC568);
    }
  }

  *(this + 2) = 0xD800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1AC580;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MeshOffsetsComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MeshOffsetsComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MeshOffsetsComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MeshOffsetsComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs220MeshOffsetsComponentELNS_17RealityKitReleaseE3EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v18 = v20;
}

void *re::ecs2::allocInfo_MeshOffsetsSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC570, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC570))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AC7A8, "MeshOffsetsSystem");
    __cxa_guard_release(&qword_1EE1AC570);
  }

  return &unk_1EE1AC7A8;
}

void re::ecs2::initInfo_MeshOffsetsSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xE2F769280B31FF04;
  v6[1] = "MeshOffsetsSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x23000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_MeshOffsetsSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MeshOffsetsSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MeshOffsetsSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::MeshOffsetsSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::MeshOffsetsSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MeshOffsetsSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MeshOffsetsSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::MeshOffsetsSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  a3[62] = &unk_1F5CF4FB8;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 67);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 32);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::MeshOffsetsSystem>(uint64_t *a1)
{
  a1[62] = &unk_1F5CF4FB8;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 67);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 32);

  re::ecs2::System::~System(a1);
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::MeshOffsetsComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (result)
  {
    v5 = result;
    v6 = 24;
    v7 = 0xFFFFFFFFLL;
    do
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a2 + 16), *(a2 + v6), v5);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        v11 = v8;
        v7 = v9;
        goto LABEL_11;
      }

      v6 += 8;
    }

    while (v6 != 56);
    v11 = -1;
LABEL_11:

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

void re::ecs2::MeshOffsetsSystem::~MeshOffsetsSystem(re::ecs2::MeshOffsetsSystem *this)
{
  *(this + 62) = &unk_1F5CF4FB8;
  re::FixedArray<CoreIKTransform>::deinit(this + 67);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 32);

  re::ecs2::System::~System(this);
}

{
  *(this + 62) = &unk_1F5CF4FB8;
  re::FixedArray<CoreIKTransform>::deinit(this + 67);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 32);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = v3 + 3;
        do
        {
          result = (*(**v3 + 32))(*v3, 448, 0);
          v6 = result;
          if (*v3)
          {
            v7 = v3[1];
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = v3[1];
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = v3 + 3;
          if ((v8 & 1) == 0)
          {
            v15 = v3[4];
          }

          v16 = v3[1];
          v15[v16++] = v6;
          v3[1] = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
  for (i = 24; i != 56; i += 8)
  {
    v7 = re::ecs2::ComponentBucketsBase::addBucket(*(a1 + 16));
    *(a1 + i) = v7;
  }

  v9 = *(a3 + 288);
  if (v9)
  {
    v82 = re::globalAllocators(result)[2];
    v10 = (*(*v82 + 32))(v82, 32, 0);
    *v10 = &unk_1F5CF50C0;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CF5118;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CF5170;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CF51C8;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v31 = v30;
    v32 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v32 = v29;
    v32[1] = v31;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v72);
    result = (***(a2 + 224))();
    if (v33)
    {
      v34 = result;
      v35 = 8 * v33;
      do
      {
        v36 = *v34++;
        v70 = re::globalAllocators(result)[2];
        v71 = 0;
        v37 = (*(*v70 + 32))(v70, 32, 0);
        *v37 = &unk_1F5CF50C0;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
        v37[3] = 0;
        v71 = v37;
        v38 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v69, v36, 0);
        v40 = v39;
        v41 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v41 = v38;
        v41[1] = v40;
        v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v69);
        v67 = re::globalAllocators(v42)[2];
        v68 = 0;
        v43 = (*(*v67 + 32))(v67, 32, 0);
        *v43 = &unk_1F5CF5118;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
        v43[3] = 0;
        v68 = v43;
        v44 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v66, v36, 0);
        v46 = v45;
        v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v47 = v44;
        v47[1] = v46;
        v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v66);
        v64 = re::globalAllocators(v48)[2];
        v65 = 0;
        v49 = (*(*v64 + 32))(v64, 32, 0);
        *v49 = &unk_1F5CF5170;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
        v49[3] = 0;
        v65 = v49;
        v50 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v63, v36, 0);
        v52 = v51;
        v53 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v53 = v50;
        v53[1] = v52;
        v54 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v63);
        v61 = re::globalAllocators(v54)[2];
        v62 = 0;
        v55 = (*(*v61 + 32))(v61, 32, 0);
        *v55 = &unk_1F5CF51C8;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
        v55[3] = 0;
        v62 = v55;
        v56 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v60, v36, 0);
        v58 = v57;
        v59 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v59 = v56;
        v59[1] = v58;
        result = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v60);
        v35 -= 8;
      }

      while (v35);
    }
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF50C0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF50C0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF5118;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF5118;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF5170;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF5170;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF51C8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF51C8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::IntrospectionDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v8 = *(this + 2);
  if (v8 >= *(this + 1))
  {
    re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::growCapacity(this, v8 + 1);
    v8 = *(this + 2);
  }

  v9 = *(this + 4) + 192 * v8;
  *(v9 + 32) = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *v9 = 0;
  *(v9 + 24) = 1;
  *(v9 + 48) = xmmword_1E3047670;
  *(v9 + 64) = xmmword_1E3047680;
  *(v9 + 80) = xmmword_1E30476A0;
  *(v9 + 96) = xmmword_1E30474D0;
  *(v9 + 112) = xmmword_1E3047670;
  *(v9 + 128) = xmmword_1E3047680;
  *(v9 + 144) = xmmword_1E30476A0;
  *(v9 + 160) = xmmword_1E30474D0;
  *(v9 + 176) = 0;
  v10 = *(this + 2);
  *(this + 2) = v10 + 1;
  ++*(this + 6);
  v11 = (*(this + 4) + 192 * v10);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v11);
  return v11;
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 192 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 192 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 192 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 192;
        v11 -= 192;
      }

      while (v11);
    }
  }
}

uint64_t re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 192 * v2;
    do
    {
      result = re::DynamicArray<unsigned long>::deinit(v3);
      v3 += 192;
      v4 -= 192;
    }

    while (v4);
  }

  ++*(v1 + 24);
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 192 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 192 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::MeshOffsetsComponent>(uint64_t a1)
{
  *(a1 + 208) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
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
  *(a1 + 160) = 0u;
  v2 = (a1 + 160);
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD1030;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0;
  *(v3 + 104) = -1;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  inited = objc_initWeak(v2, 0);
  *(a1 + 168) = 0;
  *(a1 + 200) = re::globalAllocators(inited)[2];
  *(a1 + 208) = 0;
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs220MeshOffsetsComponentELNS_17RealityKitReleaseE3EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 3;
    *(a2 + 8) = 0;
  }
}

void *re::make::shared::unsafelyInplace<re::ecs2::MeshOffsetsSystem>(void *a1)
{
  bzero(a1, 0x230uLL);
  v3 = re::DeformerFeatureFlags::enableAppDeformation(v2);
  re::ecs2::System::System(a1, v3 ^ 1, 1);
  *(a1 + 14) = 0u;
  *(a1 + 15) = 0u;
  *a1 = &unk_1F5CF5020;
  a1[32] = 0;
  a1[33] = 0;
  *(a1 + 68) = 1;
  a1[36] = 0;
  a1[37] = 0;
  a1[35] = 0;
  *(a1 + 76) = 0;
  *(a1 + 39) = 0u;
  *(a1 + 41) = 0u;
  *(a1 + 43) = 0u;
  *(a1 + 45) = 0u;
  *(a1 + 47) = 0u;
  *(a1 + 98) = 1;
  *(a1 + 25) = 0u;
  *(a1 + 26) = 0u;
  a1[54] = 0;
  *(a1 + 110) = 1;
  *(a1 + 28) = 0u;
  *(a1 + 29) = 0u;
  *(a1 + 473) = 0u;
  re::ecs2::MeshOffsetsComponentStateImpl::MeshOffsetsComponentStateImpl((a1 + 62));
  return a1;
}

void re::introspect_LightType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1AC840, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1AC848, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC848))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1ACA90, "LightType", 4, 4, 1, 1);
      qword_1EE1ACA90 = &unk_1F5D0C658;
      qword_1EE1ACAD0 = &re::introspect_LightType(BOOL)::enumTable;
      dword_1EE1ACAA0 = 9;
      __cxa_guard_release(&qword_1EE1AC848);
    }

    if (_MergedGlobals_316)
    {
      break;
    }

    _MergedGlobals_316 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1ACA90, a2);
    v45 = 0x7B5540A1BAA0;
    v46 = "LightType";
    v49 = 208862;
    v50 = "int";
    v4 = v48[0];
    v5 = v48[1];
    if (v49)
    {
      if (v49)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1ACAD0;
      v49 = v4;
      v50 = v5;
      re::TypeBuilder::beginEnumType(v48, &v45, 1, 1, &v49);
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
            *&v47.var0 = 2 * v11;
            v47.var1 = v10;
            re::TypeBuilder::addEnumConstant(v48, v15, &v47);
            if (*&v47.var0)
            {
              if (*&v47.var0)
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
              *&v47.var0 = 2 * v20;
              v47.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v48, v24, &v47);
              if (*&v47.var0)
              {
                if (*&v47.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v48, v26);
      xmmword_1EE1ACAB0 = v47;
      if (v45)
      {
        if (v45)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v46);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1AC840);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Directional";
      qword_1EE1ACA50 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "DirectionalUnshadowed";
      qword_1EE1ACA58 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "Point";
      qword_1EE1ACA60 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 3;
      *(v36 + 2) = "PointUnshadowed";
      qword_1EE1ACA68 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 4;
      *(v38 + 2) = "Spot";
      qword_1EE1ACA70 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 5;
      *(v40 + 2) = "SpotUnshadowed";
      qword_1EE1ACA78 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 1) = 6;
      *(v42 + 2) = "Ambient";
      qword_1EE1ACA80 = v42;
      v43 = re::introspectionAllocator(v42);
      v44 = (*(*v43 + 32))(v43, 24, 8);
      *v44 = 1;
      *(v44 + 8) = 7;
      *(v44 + 16) = "RectangleUnshadowed";
      qword_1EE1ACA88 = v44;
      __cxa_guard_release(&qword_1EE1AC840);
    }
  }
}

float re::ecs2::downgradeLightComponentFromFall2023@<S0>(re::ecs2 *this@<X0>, _BYTE *a2@<X8>)
{
  v6 = *(this + 218);
  v7 = *(this + 880);
  v13 = *(this + 108);
  v15 = v7;
  v14 = v6;
  v8 = re::ColorGamut3F::as(&v13, 0, 3);
  result = v9;
  *&v11 = v8;
  *(&v11 + 2) = v9;
  *(this + 54) = v11;
  *(this + 880) = v12;
  *a2 = 1;
  return result;
}

void *re::ecs2::allocInfo_LightComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC858, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC858))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ACC08, "LightComponent");
    __cxa_guard_release(&qword_1EE1AC858);
  }

  return &unk_1EE1ACC08;
}

void re::ecs2::initInfo_LightComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v45[0] = 0x758E810C9880594ELL;
  v45[1] = "LightComponent";
  if (v45[0])
  {
    if (v45[0])
    {
    }
  }

  *(this + 2) = v46;
  if ((atomic_load_explicit(&qword_1EE1AC850, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AC850);
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
      qword_1EE1ACBB0 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_Vector3F(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "color";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x36000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1ACBB8 = v11;
      v12 = re::introspectionAllocator(v11);
      re::introspect_LightType(v12, v13);
      v14 = (*(*v12 + 32))(v12, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "type";
      *(v14 + 16) = &qword_1EE1ACA90;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x1C00000002;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE1ACBC0 = v14;
      v15 = re::introspectionAllocator(v14);
      v17 = re::introspect_float(1, v16);
      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "intensity";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x2000000003;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE1ACBC8 = v18;
      v19 = re::introspectionAllocator(v18);
      v21 = re::introspect_float(1, v20);
      v22 = (*(*v19 + 32))(v19, 72, 8);
      *v22 = 1;
      *(v22 + 8) = "angle";
      *(v22 + 16) = v21;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0x2400000004;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(v22 + 64) = 0;
      qword_1EE1ACBD0 = v22;
      v23 = re::introspectionAllocator(v22);
      v24 = re::introspect_Vector2F(1);
      v25 = (*(*v23 + 32))(v23, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "rectangleArea";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x3000000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1ACBD8 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::introspect_BOOL(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "rectDoubleSided";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x3800000006;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE1ACBE0 = v29;
      v30 = re::introspectionAllocator(v29);
      v32 = re::introspect_float(1, v31);
      v33 = (*(*v30 + 32))(v30, 72, 8);
      *v33 = 1;
      *(v33 + 8) = "radius";
      *(v33 + 16) = v32;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0x2800000007;
      *(v33 + 40) = 0;
      *(v33 + 48) = 0;
      *(v33 + 56) = 0;
      *(v33 + 64) = 0;
      qword_1EE1ACBE8 = v33;
      v34 = re::introspectionAllocator(v33);
      v36 = re::introspect_float(1, v35);
      v37 = (*(*v34 + 32))(v34, 72, 8);
      *v37 = 1;
      *(v37 + 8) = "shadowBias";
      *(v37 + 16) = v36;
      *(v37 + 24) = 0;
      *(v37 + 32) = 0x3C00000008;
      *(v37 + 40) = 0;
      *(v37 + 48) = 0;
      *(v37 + 56) = 0;
      *(v37 + 64) = 0;
      qword_1EE1ACBF0 = v37;
      v38 = re::introspectionAllocator(v37);
      v40 = re::introspect_ColorGamut(1, v39);
      v41 = (*(*v38 + 32))(v38, 72, 8);
      *v41 = 1;
      *(v41 + 8) = "colorGamut";
      *(v41 + 16) = v40;
      *(v41 + 24) = 0;
      *(v41 + 32) = 0x37000000009;
      *(v41 + 40) = 0;
      *(v41 + 48) = 0;
      *(v41 + 56) = 0;
      *(v41 + 64) = 0;
      qword_1EE1ACBF8 = v41;
      v42 = re::introspectionAllocator(v41);
      v43 = (*(*v42 + 32))(v42, 64, 8);
      *v43 = 6;
      *(v43 + 8) = 1;
      *(v43 + 16) = 0;
      *(v43 + 24) = 0;
      *(v43 + 32) = 0;
      *(v43 + 40) = 1;
      *(v43 + 48) = re::ecs2::downgradeLightComponentFromFall2023;
      *(v43 + 56) = 2;
      qword_1EE1ACC00 = v43;
      __cxa_guard_release(&qword_1EE1AC850);
    }
  }

  *(this + 2) = 0x38000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 11;
  *(this + 8) = &qword_1EE1ACBB0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::LightComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::LightComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::LightComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::LightComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs214LightComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v44 = v46;
}

float re::ecs2::downgradeAmbientLightComponentFromFall2023@<S0>(re::ecs2 *this@<X0>, _BYTE *a2@<X8>)
{
  v6 = *(this + 18);
  v7 = *(this + 80);
  v13 = *(this + 8);
  v15 = v7;
  v14 = v6;
  v8 = re::ColorGamut3F::as(&v13, 0, 3);
  result = v9;
  *&v11 = v8;
  *(&v11 + 2) = v9;
  *(this + 4) = v11;
  *(this + 80) = v12;
  *a2 = 1;
  return result;
}

void *re::ecs2::allocInfo_AmbientLightComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC868, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC868))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ACC98, "AmbientLightComponent");
    __cxa_guard_release(&qword_1EE1AC868);
  }

  return &unk_1EE1ACC98;
}

void re::ecs2::initInfo_AmbientLightComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v23[0] = 0x895FF577E2580A3ELL;
  v23[1] = "AmbientLightComponent";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&qword_1EE1AC860, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AC860);
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
      qword_1EE1AC938 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_Vector3F(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "color";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x4000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1AC940 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_float(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "intensity";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x1C00000002;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1AC948 = v15;
      v16 = re::introspectionAllocator(v15);
      v18 = re::introspect_ColorGamut(1, v17);
      v19 = (*(*v16 + 32))(v16, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "colorGamut";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x5000000003;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1AC950 = v19;
      v20 = re::introspectionAllocator(v19);
      v21 = (*(*v20 + 32))(v20, 64, 8);
      *v21 = 6;
      *(v21 + 8) = 1;
      *(v21 + 16) = 0;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0;
      *(v21 + 40) = 1;
      *(v21 + 48) = re::ecs2::downgradeAmbientLightComponentFromFall2023;
      *(v21 + 56) = 2;
      qword_1EE1AC958 = v21;
      __cxa_guard_release(&qword_1EE1AC860);
    }
  }

  *(this + 2) = 0x6000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1AC938;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AmbientLightComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AmbientLightComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AmbientLightComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AmbientLightComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs221AmbientLightComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v22 = v24;
}

__n128 re::internal::defaultConstruct<re::ecs2::AmbientLightComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  v3[1].n128_u64[0] = 0;
  v3[1].n128_u8[8] = 0;
  v3->n128_u64[0] = &unk_1F5CDCD18;
  v3[1].n128_u32[3] = 1143652352;
  v3[2].n128_u64[0] = 0;
  v3[2].n128_u64[1] = 0;
  v3[3].n128_u32[0] = 0;
  __asm { FMOV            V0.4S, #1.0 }

  v3[4] = result;
  v3[5].n128_u8[0] = 0;
  return result;
}

__n128 re::internal::defaultConstructV2<re::ecs2::AmbientLightComponent>(ArcSharedObject *a1)
{
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  v1[1].n128_u64[0] = 0;
  v1[1].n128_u8[8] = 0;
  v1->n128_u64[0] = &unk_1F5CDCD18;
  v1[1].n128_u32[3] = 1143652352;
  v1[2].n128_u64[0] = 0;
  v1[2].n128_u64[1] = 0;
  v1[3].n128_u32[0] = 0;
  __asm { FMOV            V0.4S, #1.0 }

  v1[4] = result;
  v1[5].n128_u8[0] = 0;
  return result;
}

float re::ecs2::downgradeDirectionalLightComponentFromFall2023@<S0>(re::ecs2 *this@<X0>, _BYTE *a2@<X8>)
{
  v6 = *(this + 90);
  v7 = *(this + 368);
  v13 = *(this + 44);
  v15 = v7;
  v14 = v6;
  v8 = re::ColorGamut3F::as(&v13, 0, 3);
  result = v9;
  *&v11 = v8;
  *(&v11 + 2) = v9;
  *(this + 22) = v11;
  *(this + 368) = v12;
  *a2 = 1;
  return result;
}

void *re::ecs2::allocInfo_DirectionalLightComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC878, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC878))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ACD28, "DirectionalLightComponent");
    __cxa_guard_release(&qword_1EE1AC878);
  }

  return &unk_1EE1ACD28;
}

void re::ecs2::initInfo_DirectionalLightComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v27[0] = 0x661AEDCCAE0735E2;
  v27[1] = "DirectionalLightComponent";
  if (v27[0])
  {
    if (v27[0])
    {
    }
  }

  *(this + 2) = v28;
  if ((atomic_load_explicit(&qword_1EE1AC870, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AC870);
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
      qword_1EE1AC9B0 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_Vector3F(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "color";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x16000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1AC9B8 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_float(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "intensity";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x1C00000002;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1AC9C0 = v15;
      v16 = re::introspectionAllocator(v15);
      v18 = re::introspect_BOOL(1, v17);
      v19 = (*(*v16 + 32))(v16, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "isProxy";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x2000000003;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1AC9C8 = v19;
      v20 = re::introspectionAllocator(v19);
      v22 = re::introspect_ColorGamut(1, v21);
      v23 = (*(*v20 + 32))(v20, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "colorGamut";
      *(v23 + 16) = v22;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x17000000004;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE1AC9D0 = v23;
      v24 = re::introspectionAllocator(v23);
      v25 = (*(*v24 + 32))(v24, 64, 8);
      *v25 = 6;
      *(v25 + 8) = 1;
      *(v25 + 16) = 0;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0;
      *(v25 + 40) = 1;
      *(v25 + 48) = re::ecs2::downgradeDirectionalLightComponentFromFall2023;
      *(v25 + 56) = 2;
      qword_1EE1AC9D8 = v25;
      __cxa_guard_release(&qword_1EE1AC870);
    }
  }

  *(this + 2) = 0x18000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1AC9B0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::DirectionalLightComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::DirectionalLightComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::DirectionalLightComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::DirectionalLightComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs225DirectionalLightComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v26 = v28;
}

re::ecs2::DirectionalLightComponent *re::internal::defaultConstruct<re::ecs2::DirectionalLightComponent>(int a1, int a2, re::ecs2::DirectionalLightComponent *this)
{
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
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
  return re::ecs2::DirectionalLightComponent::DirectionalLightComponent(this);
}

re::ecs2::DirectionalLightComponent *re::internal::defaultConstructV2<re::ecs2::DirectionalLightComponent>(re::ecs2::DirectionalLightComponent *this)
{
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
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
  return re::ecs2::DirectionalLightComponent::DirectionalLightComponent(this);
}

float re::ecs2::downgradeSpotLightComponentFromFall2023@<S0>(re::ecs2 *this@<X0>, _BYTE *a2@<X8>)
{
  v6 = *(this + 74);
  v7 = *(this + 304);
  v13 = *(this + 36);
  v15 = v7;
  v14 = v6;
  v8 = re::ColorGamut3F::as(&v13, 0, 3);
  result = v9;
  *&v11 = v8;
  *(&v11 + 2) = v9;
  *(this + 18) = v11;
  *(this + 304) = v12;
  *a2 = 1;
  return result;
}

void *re::ecs2::allocInfo_SpotLightComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC888, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC888))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ACDB8, "SpotLightComponent");
    __cxa_guard_release(&qword_1EE1AC888);
  }

  return &unk_1EE1ACDB8;
}

void re::ecs2::initInfo_SpotLightComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v39[0] = 0xA41086BFAF11EC92;
  v39[1] = "SpotLightComponent";
  if (v39[0])
  {
    if (v39[0])
    {
    }
  }

  *(this + 2) = v40;
  if ((atomic_load_explicit(&qword_1EE1AC880, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AC880);
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
      qword_1EE1ACAD8 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_Vector3F(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "color";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x12000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1ACAE0 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_float(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "intensity";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x1C00000002;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1ACAE8 = v15;
      v16 = re::introspectionAllocator(v15);
      v18 = re::introspect_float(1, v17);
      v19 = (*(*v16 + 32))(v16, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "outerAngle";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x2000000003;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1ACAF0 = v19;
      v20 = re::introspectionAllocator(v19);
      v22 = re::introspect_float(1, v21);
      v23 = (*(*v20 + 32))(v20, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "innerAngle";
      *(v23 + 16) = v22;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x2400000004;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE1ACAF8 = v23;
      v24 = re::introspectionAllocator(v23);
      v26 = re::introspect_float(1, v25);
      v27 = (*(*v24 + 32))(v24, 72, 8);
      *v27 = 1;
      *(v27 + 8) = "attenuationRadius";
      *(v27 + 16) = v26;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0x2800000005;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      qword_1EE1ACB00 = v27;
      v28 = re::introspectionAllocator(v27);
      v30 = re::introspect_ColorGamut(1, v29);
      v31 = (*(*v28 + 32))(v28, 72, 8);
      *v31 = 1;
      *(v31 + 8) = "colorGamut";
      *(v31 + 16) = v30;
      *(v31 + 24) = 0;
      *(v31 + 32) = 0x13000000006;
      *(v31 + 40) = 0;
      *(v31 + 48) = 0;
      *(v31 + 56) = 0;
      *(v31 + 64) = 0;
      qword_1EE1ACB08 = v31;
      v32 = re::introspectionAllocator(v31);
      v34 = re::introspect_float(1, v33);
      v35 = (*(*v32 + 32))(v32, 72, 8);
      *v35 = 1;
      *(v35 + 8) = "attenuationFalloffExponent";
      *(v35 + 16) = v34;
      *(v35 + 24) = 0;
      *(v35 + 32) = 0x2C00000007;
      *(v35 + 40) = 0;
      *(v35 + 48) = 0;
      *(v35 + 56) = 0;
      *(v35 + 64) = 0;
      qword_1EE1ACB10 = v35;
      v36 = re::introspectionAllocator(v35);
      v37 = (*(*v36 + 32))(v36, 64, 8);
      *v37 = 6;
      *(v37 + 8) = 1;
      *(v37 + 16) = 0;
      *(v37 + 24) = 0;
      *(v37 + 32) = 0;
      *(v37 + 40) = 1;
      *(v37 + 48) = re::ecs2::downgradeSpotLightComponentFromFall2023;
      *(v37 + 56) = 2;
      qword_1EE1ACB18 = v37;
      __cxa_guard_release(&qword_1EE1AC880);
    }
  }

  *(this + 2) = 0x14000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 9;
  *(this + 8) = &qword_1EE1ACAD8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SpotLightComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SpotLightComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SpotLightComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SpotLightComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs218SpotLightComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v38 = v40;
}

re::ecs2::SpotLightComponent *re::internal::defaultConstruct<re::ecs2::SpotLightComponent>(int a1, int a2, re::ecs2::SpotLightComponent *this)
{
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
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
  return re::ecs2::SpotLightComponent::SpotLightComponent(this);
}

re::ecs2::SpotLightComponent *re::internal::defaultConstructV2<re::ecs2::SpotLightComponent>(re::ecs2::SpotLightComponent *this)
{
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
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
  return re::ecs2::SpotLightComponent::SpotLightComponent(this);
}

float re::ecs2::downgradePointLightComponentFromFall2023@<S0>(re::ecs2 *this@<X0>, _BYTE *a2@<X8>)
{
  v6 = *(this + 70);
  v7 = *(this + 288);
  v13 = *(this + 34);
  v15 = v7;
  v14 = v6;
  v8 = re::ColorGamut3F::as(&v13, 0, 3);
  result = v9;
  *&v11 = v8;
  *(&v11 + 2) = v9;
  *(this + 17) = v11;
  *(this + 288) = v12;
  *a2 = 1;
  return result;
}

void *re::ecs2::allocInfo_PointLightComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC898, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC898))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ACE48, "PointLightComponent");
    __cxa_guard_release(&qword_1EE1AC898);
  }

  return &unk_1EE1ACE48;
}

void re::ecs2::initInfo_PointLightComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v31[0] = 0x7C7634670D0A9C2ELL;
  v31[1] = "PointLightComponent";
  if (v31[0])
  {
    if (v31[0])
    {
    }
  }

  *(this + 2) = v32;
  if ((atomic_load_explicit(&qword_1EE1AC890, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AC890);
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
      qword_1EE1AC9E0 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_Vector3F(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "color";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x11000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1AC9E8 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_float(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "intensity";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x1C00000002;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1AC9F0 = v15;
      v16 = re::introspectionAllocator(v15);
      v18 = re::introspect_float(1, v17);
      v19 = (*(*v16 + 32))(v16, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "attenuationRadius";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x2000000003;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1AC9F8 = v19;
      v20 = re::introspectionAllocator(v19);
      v22 = re::introspect_ColorGamut(1, v21);
      v23 = (*(*v20 + 32))(v20, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "colorGamut";
      *(v23 + 16) = v22;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x12000000004;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE1ACA00 = v23;
      v24 = re::introspectionAllocator(v23);
      v26 = re::introspect_float(1, v25);
      v27 = (*(*v24 + 32))(v24, 72, 8);
      *v27 = 1;
      *(v27 + 8) = "attenuationFalloffExponent";
      *(v27 + 16) = v26;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0x2400000005;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      qword_1EE1ACA08 = v27;
      v28 = re::introspectionAllocator(v27);
      v29 = (*(*v28 + 32))(v28, 64, 8);
      *v29 = 6;
      *(v29 + 8) = 1;
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0;
      *(v29 + 40) = 1;
      *(v29 + 48) = re::ecs2::downgradePointLightComponentFromFall2023;
      *(v29 + 56) = 2;
      qword_1EE1ACA10 = v29;
      __cxa_guard_release(&qword_1EE1AC890);
    }
  }

  *(this + 2) = 0x13000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1AC9E0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PointLightComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PointLightComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PointLightComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PointLightComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs219PointLightComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v30 = v32;
}

re::ecs2::PointLightComponent *re::internal::defaultConstruct<re::ecs2::PointLightComponent>(int a1, int a2, re::ecs2::PointLightComponent *this)
{
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return re::ecs2::PointLightComponent::PointLightComponent(this);
}

re::ecs2::PointLightComponent *re::internal::defaultConstructV2<re::ecs2::PointLightComponent>(re::ecs2::PointLightComponent *this)
{
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return re::ecs2::PointLightComponent::PointLightComponent(this);
}

float re::ecs2::downgradeRectAreaLightComponentFromFall2023@<S0>(re::ecs2 *this@<X0>, _BYTE *a2@<X8>)
{
  v6 = *(this + 50);
  v7 = *(this + 208);
  v13 = *(this + 24);
  v15 = v7;
  v14 = v6;
  v8 = re::ColorGamut3F::as(&v13, 0, 3);
  result = v9;
  *&v11 = v8;
  *(&v11 + 2) = v9;
  *(this + 12) = v11;
  *(this + 208) = v12;
  *a2 = 1;
  return result;
}

void *re::ecs2::allocInfo_RectAreaLightComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC8A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC8A8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ACED8, "RectAreaLightComponent");
    __cxa_guard_release(&qword_1EE1AC8A8);
  }

  return &unk_1EE1ACED8;
}

void re::ecs2::initInfo_RectAreaLightComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v30[0] = 0x253CA3D5FF302730;
  v30[1] = "RectAreaLightComponent";
  if (v30[0])
  {
    if (v30[0])
    {
    }
  }

  *(this + 2) = v31;
  if ((atomic_load_explicit(&qword_1EE1AC8A0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AC8A0);
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
      qword_1EE1ACA18 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_Vector3F(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "color";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0xC000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1ACA20 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_float(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "intensity";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x1C00000002;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1ACA28 = v15;
      v16 = re::introspectionAllocator(v15);
      v17 = re::introspect_Vector2F(1);
      v18 = (*(*v16 + 32))(v16, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "extents";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x2000000003;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE1ACA30 = v18;
      v19 = re::introspectionAllocator(v18);
      v21 = re::introspect_BOOL(1, v20);
      v22 = (*(*v19 + 32))(v19, 72, 8);
      *v22 = 1;
      *(v22 + 8) = "emitsDoubleSided";
      *(v22 + 16) = v21;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0x2800000004;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(v22 + 64) = 0;
      qword_1EE1ACA38 = v22;
      v23 = re::introspectionAllocator(v22);
      v25 = re::introspect_ColorGamut(1, v24);
      v26 = (*(*v23 + 32))(v23, 72, 8);
      *v26 = 1;
      *(v26 + 8) = "colorGamut";
      *(v26 + 16) = v25;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0xD000000005;
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
      *(v26 + 56) = 0;
      *(v26 + 64) = 0;
      qword_1EE1ACA40 = v26;
      v27 = re::introspectionAllocator(v26);
      v28 = (*(*v27 + 32))(v27, 64, 8);
      *v28 = 6;
      *(v28 + 8) = 1;
      *(v28 + 16) = 0;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0;
      *(v28 + 40) = 1;
      *(v28 + 48) = re::ecs2::downgradeRectAreaLightComponentFromFall2023;
      *(v28 + 56) = 2;
      qword_1EE1ACA48 = v28;
      __cxa_guard_release(&qword_1EE1AC8A0);
    }
  }

  *(this + 2) = 0xE000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1ACA18;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::RectAreaLightComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::RectAreaLightComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::RectAreaLightComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::RectAreaLightComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs222RectAreaLightComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v29 = v31;
}

re::ecs2::RectAreaLightComponent *re::internal::defaultConstruct<re::ecs2::RectAreaLightComponent>(int a1, int a2, re::ecs2::RectAreaLightComponent *this)
{
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
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
  return re::ecs2::RectAreaLightComponent::RectAreaLightComponent(this);
}

re::ecs2::RectAreaLightComponent *re::internal::defaultConstructV2<re::ecs2::RectAreaLightComponent>(re::ecs2::RectAreaLightComponent *this)
{
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
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
  return re::ecs2::RectAreaLightComponent::RectAreaLightComponent(this);
}

float re::ecs2::downgradeFrustumLightComponentFromFall2023@<S0>(re::ecs2 *this@<X0>, _BYTE *a2@<X8>)
{
  v6 = *(this + 78);
  v7 = *(this + 320);
  v13 = *(this + 38);
  v15 = v7;
  v14 = v6;
  v8 = re::ColorGamut3F::as(&v13, 0, 3);
  result = v9;
  *&v11 = v8;
  *(&v11 + 2) = v9;
  *(this + 19) = v11;
  *(this + 320) = v12;
  *a2 = 1;
  return result;
}

void *re::ecs2::allocInfo_FrustumLightComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC8B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC8B8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ACF68, "FrustumLightComponent");
    __cxa_guard_release(&qword_1EE1AC8B8);
  }

  return &unk_1EE1ACF68;
}

void re::ecs2::initInfo_FrustumLightComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v38[0] = 0x199383482F3684D2;
  v38[1] = "FrustumLightComponent";
  if (v38[0])
  {
    if (v38[0])
    {
    }
  }

  *(this + 2) = v39;
  if ((atomic_load_explicit(&qword_1EE1AC8B0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AC8B0);
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
      qword_1EE1ACB20 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_Vector3F(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "color";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x13000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1ACB28 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_float(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "intensity";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x1C00000002;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1ACB30 = v15;
      v16 = re::introspectionAllocator(v15);
      v18 = re::introspect_float(1, v17);
      v19 = (*(*v16 + 32))(v16, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "outerAngle";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x2000000003;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1ACB38 = v19;
      v20 = re::introspectionAllocator(v19);
      v22 = re::introspect_float(1, v21);
      v23 = (*(*v20 + 32))(v20, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "innerAngle";
      *(v23 + 16) = v22;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x2400000004;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE1ACB40 = v23;
      v24 = re::introspectionAllocator(v23);
      v26 = re::introspect_float(1, v25);
      v27 = (*(*v24 + 32))(v24, 72, 8);
      *v27 = 1;
      *(v27 + 8) = "attenuationRadius";
      *(v27 + 16) = v26;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0x2800000005;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      qword_1EE1ACB48 = v27;
      v28 = re::introspectionAllocator(v27);
      v29 = re::introspect_Vector2F(1);
      v30 = (*(*v28 + 32))(v28, 72, 8);
      *v30 = 1;
      *(v30 + 8) = "extents";
      *(v30 + 16) = v29;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0x3000000006;
      *(v30 + 40) = 0;
      *(v30 + 48) = 0;
      *(v30 + 56) = 0;
      *(v30 + 64) = 0;
      qword_1EE1ACB50 = v30;
      v31 = re::introspectionAllocator(v30);
      v33 = re::introspect_ColorGamut(1, v32);
      v34 = (*(*v31 + 32))(v31, 72, 8);
      *v34 = 1;
      *(v34 + 8) = "colorGamut";
      *(v34 + 16) = v33;
      *(v34 + 24) = 0;
      *(v34 + 32) = 0x14000000007;
      *(v34 + 40) = 0;
      *(v34 + 48) = 0;
      *(v34 + 56) = 0;
      *(v34 + 64) = 0;
      qword_1EE1ACB58 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 64, 8);
      *v36 = 6;
      *(v36 + 8) = 1;
      *(v36 + 16) = 0;
      *(v36 + 24) = 0;
      *(v36 + 32) = 0;
      *(v36 + 40) = 1;
      *(v36 + 48) = re::ecs2::downgradeFrustumLightComponentFromFall2023;
      *(v36 + 56) = 2;
      qword_1EE1ACB60 = v36;
      __cxa_guard_release(&qword_1EE1AC8B0);
    }
  }

  *(this + 2) = 0x15000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 9;
  *(this + 8) = &qword_1EE1ACB20;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::FrustumLightComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::FrustumLightComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::FrustumLightComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::FrustumLightComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs221FrustumLightComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v37 = v39;
}

re::ecs2::FrustumLightComponent *re::internal::defaultConstruct<re::ecs2::FrustumLightComponent>(int a1, int a2, re::ecs2::FrustumLightComponent *this)
{
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return re::ecs2::FrustumLightComponent::FrustumLightComponent(this);
}

re::ecs2::FrustumLightComponent *re::internal::defaultConstructV2<re::ecs2::FrustumLightComponent>(re::ecs2::FrustumLightComponent *this)
{
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return re::ecs2::FrustumLightComponent::FrustumLightComponent(this);
}

void *re::ecs2::allocInfo_FilterMapComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC8C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC8C0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ACFF8, "FilterMapComponent");
    __cxa_guard_release(&qword_1EE1AC8C0);
  }

  return &unk_1EE1ACFF8;
}

void re::ecs2::initInfo_FilterMapComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x4F276BC591308D72;
  v14[1] = "FilterMapComponent";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1AC8C8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AC8C8);
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
      qword_1EE1AC910 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_AssetHandle(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "material";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1AC918 = v12;
      __cxa_guard_release(&qword_1EE1AC8C8);
    }
  }

  *(this + 4) = 8;
  *(this + 20) = 0x800000038;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1AC910;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::FilterMapComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::FilterMapComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::FilterMapComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::FilterMapComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs218FilterMapComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void re::internal::defaultConstruct<re::ecs2::FilterMapComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDD990;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::FilterMapComponent>(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDD990;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
}

void *re::ecs2::allocInfo_ShadowMapComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC8D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC8D0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AD088, "ShadowMapComponent");
    __cxa_guard_release(&qword_1EE1AC8D0);
  }

  return &unk_1EE1AD088;
}

void re::ecs2::initInfo_ShadowMapComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v18[0] = 0xD3AD1E1D3F2970C2;
  v18[1] = "ShadowMapComponent";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1AC8D8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AC8D8);
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
      qword_1EE1AC920 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_float(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "depthBias";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1C00000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1AC928 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_float(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "distance";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x2000000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1AC930 = v16;
      __cxa_guard_release(&qword_1EE1AC8D8);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1AC920;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ShadowMapComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ShadowMapComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ShadowMapComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ShadowMapComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs218ShadowMapComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v17 = v19;
}

double re::internal::defaultConstruct<re::ecs2::ShadowMapComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDD3F0;
  result = 2048.00048;
  *(v3 + 28) = 0x40A000003F800000;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::ShadowMapComponent>(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDD3F0;
  result = 2048.00048;
  *(v1 + 28) = 0x40A000003F800000;
  return result;
}

void *re::ecs2::allocInfo_PointLightShadowMapComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC8E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC8E0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AD118, "PointLightShadowMapComponent");
    __cxa_guard_release(&qword_1EE1AC8E0);
  }

  return &unk_1EE1AD118;
}

void re::ecs2::initInfo_PointLightShadowMapComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v26[0] = 0xE3B8089A156ED0CELL;
  v26[1] = "PointLightShadowMapComponent";
  if (v26[0])
  {
    if (v26[0])
    {
    }
  }

  *(this + 2) = v27;
  if ((atomic_load_explicit(&qword_1EE1AC8E8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AC8E8);
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
      qword_1EE1AC960 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_float(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "depthBias";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1C00000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1AC968 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::IntrospectionInfo<re::Optional<re::mtl::CullMode>>::get(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "cullMode";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x2000000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1AC970 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::IntrospectionInfo<re::Optional<float>>::get(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "zNear";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x2400000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1AC978 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::IntrospectionInfo<re::Optional<float>>::get(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "zFar";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x2C00000004;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1AC980 = v24;
      __cxa_guard_release(&qword_1EE1AC8E8);
    }
  }

  *(this + 4) = 8;
  *(this + 20) = 0x800000038;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1AC960;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PointLightShadowMapComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PointLightShadowMapComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PointLightShadowMapComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PointLightShadowMapComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs228PointLightShadowMapComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v25 = v27;
}

uint64_t *re::IntrospectionInfo<re::Optional<re::mtl::CullMode>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionOptionalBase::IntrospectionOptionalBase(&re::IntrospectionInfo<re::Optional<re::mtl::CullMode>>::get(BOOL)::info) = &unk_1F5CF5450;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::Optional<re::mtl::CullMode>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::Optional<re::mtl::CullMode>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::Optional<re::mtl::CullMode>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::Optional<re::mtl::CullMode>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::mtl::introspect_CullMode(1, a2);
  if ((re::IntrospectionInfo<re::Optional<re::mtl::CullMode>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::Optional<re::mtl::CullMode>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::Optional<re::mtl::CullMode>>::get(BOOL)::info, 0);
    qword_1EE186648 = 0x20000000DLL;
    dword_1EE186650 = v8;
    word_1EE186654 = 0;
    *&xmmword_1EE186658 = 0;
    *(&xmmword_1EE186658 + 1) = 0xFFFFFFFFLL;
    qword_1EE186668 = v7;
    unk_1EE186670 = 0;
    re::IntrospectionInfo<re::Optional<re::mtl::CullMode>>::get(BOOL)::info = &unk_1F5CF5450;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::Optional<re::mtl::CullMode>>::get(BOOL)::info, &v15);
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
    xmmword_1EE186658 = v14;
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

  return &re::IntrospectionInfo<re::Optional<re::mtl::CullMode>>::get(BOOL)::info;
}

void re::internal::defaultConstruct<re::ecs2::PointLightShadowMapComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDD558;
  *(v3 + 28) = 1065353216;
  *(v3 + 32) = 0;
  *(v3 + 36) = 0;
  *(v3 + 44) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::PointLightShadowMapComponent>(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDD558;
  *(v1 + 28) = 1065353216;
  *(v1 + 32) = 0;
  *(v1 + 36) = 0;
  *(v1 + 44) = 0;
}

void *re::ecs2::allocInfo_DirectionalLightShadowMapComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC8F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC8F0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AD1A8, "DirectionalLightShadowMapComponent");
    __cxa_guard_release(&qword_1EE1AC8F0);
  }

  return &unk_1EE1AD1A8;
}

void re::ecs2::initInfo_DirectionalLightShadowMapComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v42[0] = 0x392F7D3B7831E19ALL;
  v42[1] = "DirectionalLightShadowMapComponent";
  if (v42[0])
  {
    if (v42[0])
    {
    }
  }

  *(this + 2) = v43;
  if ((atomic_load_explicit(&qword_1EE1AC8F8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AC8F8);
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
      qword_1EE1ACB68 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_float(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "depthBias";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1C00000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1ACB70 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_float(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "distance";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x2000000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1ACB78 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::IntrospectionInfo<re::Optional<re::mtl::CullMode>>::get(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "cullMode";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x2400000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1ACB80 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::introspect_BOOL(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "automaticallyAdjustsShadowProjection";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x2600000004;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1ACB88 = v24;
      v25 = re::introspectionAllocator(v24);
      v27 = re::introspect_float(1, v26);
      v28 = (*(*v25 + 32))(v25, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "zNear";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0x2800000005;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE1ACB90 = v28;
      v29 = re::introspectionAllocator(v28);
      v31 = re::introspect_float(1, v30);
      v32 = (*(*v29 + 32))(v29, 72, 8);
      *v32 = 1;
      *(v32 + 8) = "zFar";
      *(v32 + 16) = v31;
      *(v32 + 24) = 0;
      *(v32 + 32) = 0x2C00000006;
      *(v32 + 40) = 0;
      *(v32 + 48) = 0;
      *(v32 + 56) = 0;
      *(v32 + 64) = 0;
      qword_1EE1ACB98 = v32;
      v33 = re::introspectionAllocator(v32);
      v35 = re::introspect_float(1, v34);
      v36 = (*(*v33 + 32))(v33, 72, 8);
      *v36 = 1;
      *(v36 + 8) = "orthographicScale";
      *(v36 + 16) = v35;
      *(v36 + 24) = 0;
      *(v36 + 32) = 0x3000000007;
      *(v36 + 40) = 0;
      *(v36 + 48) = 0;
      *(v36 + 56) = 0;
      *(v36 + 64) = 0;
      qword_1EE1ACBA0 = v36;
      v37 = re::introspectionAllocator(v36);
      v39 = re::introspect_BOOL(1, v38);
      v40 = (*(*v37 + 32))(v37, 72, 8);
      *v40 = 1;
      *(v40 + 8) = "useDiameterBounds";
      *(v40 + 16) = v39;
      *(v40 + 24) = 0;
      *(v40 + 32) = 0x3400000008;
      *(v40 + 40) = 0;
      *(v40 + 48) = 0;
      *(v40 + 56) = 0;
      *(v40 + 64) = 0;
      qword_1EE1ACBA8 = v40;
      __cxa_guard_release(&qword_1EE1AC8F8);
    }
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 9;
  *(this + 8) = &qword_1EE1ACB68;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::DirectionalLightShadowMapComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::DirectionalLightShadowMapComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::DirectionalLightShadowMapComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::DirectionalLightShadowMapComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs234DirectionalLightShadowMapComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v41 = v43;
}

void *re::ecs2::allocInfo_SpotLightShadowMapComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC900, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC900))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AD238, "SpotLightShadowMapComponent");
    __cxa_guard_release(&qword_1EE1AC900);
  }

  return &unk_1EE1AD238;
}

void re::ecs2::initInfo_SpotLightShadowMapComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v26[0] = 0x695021DC2B51B0EALL;
  v26[1] = "SpotLightShadowMapComponent";
  if (v26[0])
  {
    if (v26[0])
    {
    }
  }

  *(this + 2) = v27;
  if ((atomic_load_explicit(&qword_1EE1AC908, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AC908);
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
      qword_1EE1AC988 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_float(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "depthBias";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1C00000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1AC990 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::IntrospectionInfo<re::Optional<re::mtl::CullMode>>::get(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "cullMode";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x2000000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1AC998 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::IntrospectionInfo<re::Optional<float>>::get(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "zNear";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x2400000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1AC9A0 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::IntrospectionInfo<re::Optional<float>>::get(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "zFar";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x2C00000004;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1AC9A8 = v24;
      __cxa_guard_release(&qword_1EE1AC908);
    }
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1AC988;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SpotLightShadowMapComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SpotLightShadowMapComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SpotLightShadowMapComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SpotLightShadowMapComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs227SpotLightShadowMapComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v25 = v27;
}

void re::internal::defaultConstruct<re::ecs2::SpotLightShadowMapComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDD828;
  *(v3 + 28) = 1065353216;
  *(v3 + 32) = 0;
  *(v3 + 36) = 0;
  *(v3 + 44) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::SpotLightShadowMapComponent>(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDD828;
  *(v1 + 28) = 1065353216;
  *(v1 + 32) = 0;
  *(v1 + 36) = 0;
  *(v1 + 44) = 0;
}

void re::ecs2::DirectionalLightComponent::adjustedIntroReleaseInfo(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *((*(*a1 + 40))(a1) + 32);

  getAdjustedRelease(a3, a2, v5);
}

void getAdjustedRelease(uint64_t a1, int a2, const char *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2 == 4)
  {
    re::getRequiredDeploymentTargetsForRelease(0xC, &v16);
    if (v17)
    {
      v5 = v19;
    }

    else
    {
      v5 = v18;
    }

    snprintf(__str, 0x100uLL, "%s %s %s %s", a3, "on visionOS is available for", v5, "and later.");
    v6 = v16;
    if (v16 && (v17 & 1) != 0)
    {
      v6 = (*(*v16 + 40))();
    }

    v17 = 0;
    LODWORD(v16) = 12;
    v11 = 0;
    v12 = &str_67;
    v7 = strlen(__str);
    v13[0] = 1;
    v14 = v11;
    v15 = v12;
    v11 = 0;
    v12 = &str_67;
    v8 = re::Optional<re::StringID>::operator=(&v17, v13);
    if (v13[0] == 1)
    {
      if (v14)
      {
        if (v14)
        {
        }
      }

      v14 = 0;
      v15 = &str_67;
    }

    if (v11)
    {
      if (v11)
      {
      }
    }

    *a1 = 1;
    *(a1 + 8) = v16;
    v9 = v17;
    *(a1 + 16) = v17;
    if (v9 == 1)
    {
      v10 = v20;
      *(a1 + 24) = v19;
      *(a1 + 32) = v10;
    }
  }

  else
  {
    *a1 = 0;
  }
}

void re::ecs2::SpotLightComponent::adjustedIntroReleaseInfo(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *((*(*a1 + 40))(a1) + 32);

  getAdjustedRelease(a3, a2, v5);
}

void re::ecs2::PointLightComponent::adjustedIntroReleaseInfo(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *((*(*a1 + 40))(a1) + 32);

  getAdjustedRelease(a3, a2, v5);
}

void re::ecs2::DirectionalLightComponent::~DirectionalLightComponent(re::ecs2::DirectionalLightComponent *this)
{
  *this = &unk_1F5CF52B8;
  v2 = (this + 48);
  re::DynamicString::deinit((this + 208));
  re::DynamicString::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CF52B8;
  v2 = (this + 48);
  re::DynamicString::deinit((this + 208));
  re::DynamicString::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::SpotLightComponent::~SpotLightComponent(re::ecs2::SpotLightComponent *this)
{
  *this = &unk_1F5CF5340;
  v2 = *(this + 35);
  if (v2)
  {

    *(this + 35) = 0;
  }

  re::DynamicString::deinit((this + 48));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CF5340;
  v2 = *(this + 35);
  if (v2)
  {

    *(this + 35) = 0;
  }

  re::DynamicString::deinit((this + 48));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::PointLightComponent::~PointLightComponent(re::ecs2::PointLightComponent *this)
{
  *this = &unk_1F5CF53C8;
  re::DynamicString::deinit((this + 48));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CF53C8;
  re::DynamicString::deinit((this + 48));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *re::make::shared::unsafelyInplace<re::ecs2::LightComponent>(void *a1)
{
  bzero(a1, 0x380uLL);
  ArcSharedObject::ArcSharedObject(a1, 0);
  a1[2] = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F5CDCA48;
  *(a1 + 7) = 3;
  a1[4] = 0x42B4000046D2A785;
  *(a1 + 10) = 1120403456;
  a1[6] = 0;
  *(a1 + 56) = 0;
  *(a1 + 15) = 1008981770;
  *(a1 + 5) = 0u;
  *(a1 + 4) = 0u;
  v3 = re::DynamicString::setCapacity(a1 + 8, 0);
  *(a1 + 44) = 0;
  *(a1 + 9) = 0u;
  *(a1 + 10) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 180) = 0x412000003C23D70ALL;
  *(a1 + 188) = 0;
  *(a1 + 196) = 0;
  *(a1 + 198) = 16842752;
  *(a1 + 51) = 1065353216;
  a1[26] = 0;
  *(a1 + 15) = 0u;
  *(a1 + 14) = 0u;
  v4 = re::DynamicString::setCapacity(a1 + 28, 0);
  *(a1 + 84) = 0;
  *(a1 + 19) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 18) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 340) = 0x412000003C23D70ALL;
  *(a1 + 223) = 0;
  *(a1 + 448) = 0;
  *(a1 + 22) = 0u;
  *(a1 + 23) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 25) = 0u;
  *(a1 + 26) = 0u;
  *(a1 + 429) = 0u;
  *(a1 + 57) = 0u;
  *(a1 + 59) = 0u;
  a1[61] = 0;
  v5 = re::DynamicString::setCapacity(a1 + 58, 0);
  *(a1 + 144) = 0;
  *(a1 + 34) = 0u;
  *(a1 + 35) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 33) = 0u;
  *(a1 + 31) = 0u;
  *(a1 + 580) = 0x412000003C23D70ALL;
  *(a1 + 339) = 0;
  *(a1 + 37) = 0u;
  *(a1 + 38) = 0u;
  *(a1 + 39) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 41) = 0u;
  *(a1 + 669) = 0;
  *(a1 + 43) = 0u;
  *(a1 + 44) = 0u;
  re::DynamicString::setCapacity(a1 + 86, 0);
  *(a1 + 48) = 0u;
  *(a1 + 49) = 0u;
  *(a1 + 46) = 0u;
  *(a1 + 47) = 0u;
  *(a1 + 45) = 0u;
  a1[100] = 0x3C23D70A00000000;
  *(a1 + 202) = 1092616192;
  a1[102] = 0;
  *(a1 + 824) = 0;
  *(a1 + 52) = 0u;
  *(a1 + 212) = 0;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 54) = _Q0;
  *(a1 + 880) = 0;
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs214LightComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void _ZZN2re8internal15setIntroVersionINS_4ecs221AmbientLightComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void _ZZN2re8internal15setIntroVersionINS_4ecs225DirectionalLightComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void _ZZN2re8internal15setIntroVersionINS_4ecs218SpotLightComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void _ZZN2re8internal15setIntroVersionINS_4ecs219PointLightComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void _ZZN2re8internal15setIntroVersionINS_4ecs222RectAreaLightComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void _ZZN2re8internal15setIntroVersionINS_4ecs221FrustumLightComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 5;
    *(a2 + 8) = 0;
  }
}

void _ZZN2re8internal15setIntroVersionINS_4ecs218FilterMapComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 5;
    *(a2 + 8) = 0;
  }
}

void _ZZN2re8internal15setIntroVersionINS_4ecs218ShadowMapComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void re::TypeBuilderHelper::registerOptional<re::mtl::CullMode>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
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
    re::TypeBuilder::beginOptionalType(v10, a2, 2uLL, 1uLL, &v9);
    re::TypeBuilder::setOptionalAccessors(v10, re::TypeBuilderHelper::registerOptional<re::mtl::CullMode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::mtl::CullMode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionOptional<re::mtl::CullMode>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::mtl::CullMode>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::mtl::CullMode>::setHasValue(uint64_t a1, _BYTE *a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    ++a2;
  }

  else if (!*a2)
  {
    return;
  }

  *a2 = 0;
}

uint64_t re::IntrospectionOptional<re::mtl::CullMode>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 1;
}

{
  return a2 + 1;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::mtl::CullMode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 1;
  if (!v2)
  {
    return 0;
  }

  return result;
}

_BYTE *re::TypeBuilderHelper::registerOptional<re::mtl::CullMode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(_BYTE *result, char *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    result[1] = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs228PointLightShadowMapComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 9;
    *(a2 + 8) = 0;
  }
}

double re::make::shared::unsafelyInplace<re::ecs2::DirectionalLightShadowMapComponent>(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDD6C0;
  *(v1 + 28) = 0x40A000003F800000;
  *(v1 + 36) = 0;
  *(v1 + 38) = 1;
  result = 524288.117;
  *(v1 + 40) = 0x412000003C23D70ALL;
  *(v1 + 48) = 1065353216;
  *(v1 + 52) = 1;
  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs234DirectionalLightShadowMapComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 9;
    *(a2 + 8) = 0;
  }
}

void _ZZN2re8internal15setIntroVersionINS_4ecs227SpotLightShadowMapComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 9;
    *(a2 + 8) = 0;
  }
}

uint64_t re::ecs2::VisualProxyCaptureHelper::visualProxyStartCapturing(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v8 = a2;
  do
  {
    v9 = v8;
    v8 = *(v8 + 32);
  }

  while (v8);
  v10 = (*(**(*(v9 + 24) + 56) + 32))(*(*(v9 + 24) + 56));
  v11 = re::ServiceLocator::serviceOrNull<re::RenderManager>(v10);
  result = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VisualProxyCaptureComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (result)
  {
    return result;
  }

  v13 = re::ecs2::EntityComponentCollection::add((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VisualProxyCaptureComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v14 = *a3;
  if (*(a1 + 48) != v14)
  {
    LOBYTE(v15) = a3[1];
    goto LABEL_11;
  }

  v15 = a3[1];
  if (*(a1 + 49) != v15)
  {
    goto LABEL_11;
  }

  v16 = *(a1 + 56);
  if (v16 == 1 && a3[8])
  {
    LOBYTE(v15) = *(a1 + 49);
    if (*(a1 + 64) == *(a3 + 2))
    {
      goto LABEL_41;
    }

    goto LABEL_11;
  }

  if (v16)
  {
    LOBYTE(v15) = *(a1 + 49);
    goto LABEL_11;
  }

  LOBYTE(v15) = *(a1 + 49);
  if (a3[8])
  {
LABEL_11:
    *(a1 + 48) = v14;
    *(a1 + 49) = v15;
    re::Optional<re::ArcWeakPtr<re::ecs2::Entity>>::operator=(a1 + 56, (a3 + 8));
    v17 = 1;
    goto LABEL_12;
  }

LABEL_41:
  v17 = 0;
LABEL_12:
  v18 = (a3 + 40);
  if (*(a3 + 5))
  {
    re::TextureHandle::metalTexture((a1 + 32), &v26);
    v19 = *v18 != v26;
    if (v26)
    {
    }
  }

  else
  {
    v19 = 0;
  }

  if ((*a3 & 1) == 0 && (!*(a1 + 40) || *(a1 + 32) == 0 || v19))
  {
    v20 = *(v11 + 7);
    v29 = 0;
    if (*v18)
    {
      NS::SharedPtr<MTL::Buffer>::operator=(&v29, a3 + 5);
    }

    else
    {
      re::DynamicString::format("rootEntity-%s_scope", &v26, *(a2 + 296));
      if (v27)
      {
        v24 = *&v28[7];
      }

      else
      {
        v24 = v28;
      }

      re::TextureManager::createRenderTarget(v20, *(a3 + 6), *(a3 + 7), *(a3 + 8), 1u, v24, 5, 0xFFFF, &v25);
      NS::SharedPtr<MTL::Texture>::operator=(&v29, &v25);
      if (v25)
      {
      }

      if (v26 && (v27 & 1) != 0)
      {
        (*(*v26 + 40))();
      }
    }

    re::TextureManager::registerTexture(v20, &v29, &v26);
    re::TextureHandle::operator=(a1 + 32, &v26);
    re::TextureHandle::invalidate(&v26);
    if (v29)
    {
    }

    goto LABEL_24;
  }

  if (v17)
  {
LABEL_24:
    re::ecs2::Component::markDirty(a1);
  }

  *(v13 + 176) = a1;
  *(v13 + 32) = *a3;
  re::Optional<re::ArcWeakPtr<re::ecs2::Entity>>::operator=(v13 + 40, (a3 + 8));
  v21 = *(a3 + 8);
  *(v13 + 56) = *(a3 + 3);
  *(v13 + 64) = v21;
  NS::SharedPtr<MTL::Buffer>::operator=((v13 + 72), a3 + 5);
  v22 = *(v13 + 80);
  v23 = *(a3 + 6);
  *(v13 + 80) = v23;
  if (v23)
  {
    CFRetain(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  re::HashSetBase<re::ecs2::ComponentTypeBase *,re::ecs2::ComponentTypeBase *,re::internal::ValueAsKey<re::ecs2::ComponentTypeBase *>,re::Hash<re::ecs2::ComponentTypeBase *>,re::EqualTo<re::ecs2::ComponentTypeBase *>,true,false>::operator=(v13 + 88, (a3 + 56));
  return re::FunctionBase<24ul,void ()(NS::SharedPtr<MTL::Texture>)>::operator=<24ul>(v13 + 136, a4);
}

uint64_t re::Optional<re::ArcWeakPtr<re::ecs2::Entity>>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = (a1 + 8);
    if (*a2)
    {
      re::ArcWeakPtr<re::ecs2::UISortingComponent>::operator=(v3, (a2 + 8));
    }

    else
    {
      objc_destroyWeak(v3);
      *(a1 + 8) = 0;
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 8) = 0;
    objc_copyWeak((a1 + 8), (a2 + 8));
  }

  return a1;
}

{
  if (*a1)
  {
    v3 = (a1 + 8);
    if (*a2)
    {
      re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(v3, (a2 + 8));
    }

    else
    {
      objc_destroyWeak(v3);
      *(a1 + 8) = 0;
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 8) = 0;
    objc_moveWeak((a1 + 8), (a2 + 8));
  }

  return a1;
}

uint64_t re::ecs2::VisualProxyCaptureHelper::isUnderHighFidelityVisualProxyTree(re::ecs2::VisualProxyCaptureHelper *this, const re::ecs2::Entity *a2)
{
  if (this)
  {
    v2 = this;
    while (1)
    {
      v3 = re::ecs2::EntityComponentCollection::get((v2 + 48), re::ecs2::ComponentImpl<re::ecs2::VisualProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v3)
      {
        break;
      }

      v2 = *(v2 + 4);
      if (!v2 || (*(v2 + 304) & 0x80) != 0)
      {
        v4 = 0;
        return v4 & 1;
      }
    }

    v4 = *(v3 + 48);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void **re::ecs2::VisualProxyCaptureHelper::markVisualProxyScope(re::ecs2::VisualProxyCaptureHelper *this, re::ecs2::Entity *a2)
{
  v2 = a2;
  result = re::ecs2::EntityComponentCollection::getOrAdd((this + 48), re::ecs2::ComponentImpl<re::ecs2::VisualProxyScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v4 = *(result + 7);
  if (((1 << v2) & v4) == 0)
  {
    *(result + 7) = v4 | (1 << v2);

    return re::ecs2::Component::markDirty(result);
  }

  return result;
}

uint64_t re::HashSetBase<re::ecs2::ComponentTypeBase *,re::ecs2::ComponentTypeBase *,re::internal::ValueAsKey<re::ecs2::ComponentTypeBase *>,re::Hash<re::ecs2::ComponentTypeBase *>,re::EqualTo<re::ecs2::ComponentTypeBase *>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::HashSetBase<re::ecs2::ComponentTypeBase *,re::ecs2::ComponentTypeBase *,re::internal::ValueAsKey<re::ecs2::ComponentTypeBase *>,re::Hash<re::ecs2::ComponentTypeBase *>,re::EqualTo<re::ecs2::ComponentTypeBase *>,true,false>::copy(a1, a2);
        ++*(a1 + 40);
      }

      else
      {
        re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(a1);
      }
    }

    else if (v4)
    {
      if (*(a2 + 28) <= 3u)
      {
        v5 = 3;
      }

      else
      {
        v5 = *(a2 + 28);
      }

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(a1, v4, v5);
      re::HashSetBase<re::ecs2::ComponentTypeBase *,re::ecs2::ComponentTypeBase *,re::internal::ValueAsKey<re::ecs2::ComponentTypeBase *>,re::Hash<re::ecs2::ComponentTypeBase *>,re::EqualTo<re::ecs2::ComponentTypeBase *>,true,false>::copy(a1, a2);
    }
  }

  return a1;
}

void re::HashSetBase<re::ecs2::ComponentTypeBase *,re::ecs2::ComponentTypeBase *,re::internal::ValueAsKey<re::ecs2::ComponentTypeBase *>,re::Hash<re::ecs2::ComponentTypeBase *>,re::EqualTo<re::ecs2::ComponentTypeBase *>,true,false>::copy(uint64_t a1, uint64_t a2)
{
  re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(a1);
  v4 = *(a2 + 28);
  if (*(a1 + 24) < v4)
  {
    re::HashSetBase<re::ecs2::ComponentTypeBase *,re::ecs2::ComponentTypeBase *,re::internal::ValueAsKey<re::ecs2::ComponentTypeBase *>,re::Hash<re::ecs2::ComponentTypeBase *>,re::EqualTo<re::ecs2::ComponentTypeBase *>,true,false>::setCapacity(a1, v4);
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
        re::HashSetBase<re::ecs2::ComponentTypeBase *,re::ecs2::ComponentTypeBase *,re::internal::ValueAsKey<re::ecs2::ComponentTypeBase *>,re::Hash<re::ecs2::ComponentTypeBase *>,re::EqualTo<re::ecs2::ComponentTypeBase *>,true,false>::addAsCopy(a1, *v8 % *(a1 + 24), *v8, v8 + 16, (v8 + 16));
        v5 = *(a2 + 32);
      }

      v6 += 24;
    }
  }
}

void re::HashSetBase<re::ecs2::ComponentTypeBase *,re::ecs2::ComponentTypeBase *,re::internal::ValueAsKey<re::ecs2::ComponentTypeBase *>,re::Hash<re::ecs2::ComponentTypeBase *>,re::EqualTo<re::ecs2::ComponentTypeBase *>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(v13, v4, a2);
      v5 = *v13;
      *v13 = *a1;
      *a1 = v5;
      v6 = *&v13[16];
      *&v13[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v8 = *&v13[24];
      *&v13[24] = *(a1 + 24);
      v7 = *&v13[32];
      *(a1 + 24) = v8;
      v9 = v7;
      if (v7)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if ((*(*&v13[16] + v10 + 8) & 0x80000000) != 0)
          {
            re::HashSetBase<re::ecs2::ComponentTypeBase *,re::ecs2::ComponentTypeBase *,re::internal::ValueAsKey<re::ecs2::ComponentTypeBase *>,re::Hash<re::ecs2::ComponentTypeBase *>,re::EqualTo<re::ecs2::ComponentTypeBase *>,true,false>::addAsCopy(a1, *(*&v13[16] + v10) % *(a1 + 24), *(*&v13[16] + v10), *&v13[16] + v10 + 16, *&v13[16] + v10 + 16);
            v9 = *&v13[32];
          }

          ++v11;
          v10 += 24;
        }

        while (v11 < v9);
      }

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v13);
    }
  }

  else
  {
    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 3;
    }
  }
}

uint64_t re::HashSetBase<re::ecs2::ComponentTypeBase *,re::ecs2::ComponentTypeBase *,re::internal::ValueAsKey<re::ecs2::ComponentTypeBase *>,re::Hash<re::ecs2::ComponentTypeBase *>,re::EqualTo<re::ecs2::ComponentTypeBase *>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<re::ecs2::ComponentTypeBase *,re::ecs2::ComponentTypeBase *,re::internal::ValueAsKey<re::ecs2::ComponentTypeBase *>,re::Hash<re::ecs2::ComponentTypeBase *>,re::EqualTo<re::ecs2::ComponentTypeBase *>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  *(v10 + 24 * v8 + 8) = v11 | 0x80000000;
  *(*(a1 + 16) + 24 * v8 + 8) = *(*(a1 + 16) + 24 * v8 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 24 * v8) = a3;
  *(*(a1 + 16) + 24 * v8 + 16) = *a5;
  *(*(a1 + 8) + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

void *re::ecs2::allocInfo_RayCastResultComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_317, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_317))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AD2F8, "RayCastResultComponent");
    __cxa_guard_release(&_MergedGlobals_317);
  }

  return &unk_1EE1AD2F8;
}

void re::ecs2::initInfo_RayCastResultComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v20[0] = 0x7F36C6B09A4F476ELL;
  v20[1] = "RayCastResultComponent";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1AD2D0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AD2D0);
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
      qword_1EE1AD2D8 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_Vector3F(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "hitWorldPosition";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x2000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1AD2E0 = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = re::introspect_Vector3F(1);
      v14 = (*(*v12 + 32))(v12, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "hitWorldNormal";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x3000000002;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE1AD2E8 = v14;
      v15 = re::introspectionAllocator(v14);
      v17 = re::ecs2::introspect_EntityHandle(1, v16);
      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "hitEntity";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x4000000003;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE1AD2F0 = v18;
      __cxa_guard_release(&qword_1EE1AD2D0);
    }
  }

  *(this + 2) = 0x6000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1AD2D8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::RayCastResultComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::RayCastResultComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::RayCastResultComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::RayCastResultComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs222RayCastResultComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v19 = v21;
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::RayCastResultComponent>(uint64_t a1)
{
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  v2 = (a1 + 64);
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE15A0;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  objc_initWeak(v2, 0);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  re::ecs2::EntityHandle::reset(v2);
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs222RayCastResultComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void re::ecs2::introspect_ReferenceLoadingPolicy(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1AD390, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1AD398, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AD398))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1AD418, "ReferenceLoadingPolicy", 1, 1, 1, 1);
      qword_1EE1AD418 = &unk_1F5D0C658;
      qword_1EE1AD458 = &re::ecs2::introspect_ReferenceLoadingPolicy(BOOL)::enumTable;
      dword_1EE1AD428 = 9;
      __cxa_guard_release(&qword_1EE1AD398);
    }

    if (_MergedGlobals_318)
    {
      break;
    }

    _MergedGlobals_318 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1AD418, a2);
    v33 = 0xC2DBD2F3D2E34846;
    v34 = "ReferenceLoadingPolicy";
    v37 = 0x31CD534126;
    v38 = "uint8_t";
    v4 = v36[0];
    v5 = v36[1];
    if (v37)
    {
      if (v37)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1AD458;
      v37 = v4;
      v38 = v5;
      re::TypeBuilder::beginEnumType(v36, &v33, 1, 1, &v37);
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
            *&v35.var0 = 2 * v11;
            v35.var1 = v10;
            re::TypeBuilder::addEnumConstant(v36, v15, &v35);
            if (*&v35.var0)
            {
              if (*&v35.var0)
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
              *&v35.var0 = 2 * v20;
              v35.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v36, v24, &v35);
              if (*&v35.var0)
              {
                if (*&v35.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v36, v26);
      xmmword_1EE1AD438 = v35;
      if (v33)
      {
        if (v33)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v34);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1AD390);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Immediate";
      qword_1EE1AD3C0 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 8) = 1;
      *(v32 + 16) = "OnDemand";
      qword_1EE1AD3C8 = v32;
      __cxa_guard_release(&qword_1EE1AD390);
    }
  }
}

void re::ecs2::introspect_ReferenceLoadingState(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1AD3A0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1AD3A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AD3A8))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1AD460, "ReferenceLoadingState", 1, 1, 1, 1);
      qword_1EE1AD460 = &unk_1F5D0C658;
      qword_1EE1AD4A0 = &re::ecs2::introspect_ReferenceLoadingState(BOOL)::enumTable;
      dword_1EE1AD470 = 9;
      __cxa_guard_release(&qword_1EE1AD3A8);
    }

    if (byte_1EE1AD389)
    {
      break;
    }

    byte_1EE1AD389 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1AD460, a2);
    v35 = 0x92AC409C83054700;
    v36 = "ReferenceLoadingState";
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
      v6 = qword_1EE1AD4A0;
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
      xmmword_1EE1AD480 = v37;
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
    v28 = __cxa_guard_acquire(&qword_1EE1AD3A0);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "NotLoaded";
      qword_1EE1AD3D0 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Loading";
      qword_1EE1AD3D8 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 8) = 2;
      *(v34 + 16) = "Loaded";
      qword_1EE1AD3E0 = v34;
      __cxa_guard_release(&qword_1EE1AD3A0);
    }
  }
}

void *re::ecs2::allocInfo_ReferenceComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AD3B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AD3B0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AD4A8, "ReferenceComponent");
    __cxa_guard_release(&qword_1EE1AD3B0);
  }

  return &unk_1EE1AD4A8;
}

void re::ecs2::initInfo_ReferenceComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v28[0] = 0x41AC874E67497C24;
  v28[1] = "ReferenceComponent";
  if (v28[0])
  {
    if (v28[0])
    {
    }
  }

  *(this + 2) = v29;
  if ((atomic_load_explicit(&qword_1EE1AD3B8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AD3B8);
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
      qword_1EE1AD3E8 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::IntrospectionInfo<re::DynamicString>::get(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "entityName";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1AD3F0 = v12;
      v13 = re::introspectionAllocator(v12);
      re::ecs2::introspect_ReferenceLoadingPolicy(v13, v14);
      v15 = (*(*v13 + 32))(v13, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "policy";
      *(v15 + 16) = &qword_1EE1AD418;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x6100000002;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1AD3F8 = v15;
      v16 = re::introspectionAllocator(v15);
      re::ecs2::introspect_ReferenceLoadingState(v16, v17);
      v18 = (*(*v16 + 32))(v16, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "state";
      *(v18 + 16) = &qword_1EE1AD460;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x6200000003;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE1AD400 = v18;
      v19 = re::introspectionAllocator(v18);
      v21 = re::ecs2::introspect_EntityHandle(1, v20);
      v22 = (*(*v19 + 32))(v19, 72, 8);
      *v22 = 1;
      *(v22 + 8) = "subscene";
      *(v22 + 16) = v21;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0x6800000004;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(v22 + 64) = 0;
      qword_1EE1AD408 = v22;
      v23 = re::introspectionAllocator(v22);
      v25 = re::IntrospectionInfo<re::DynamicString>::get(1, v24);
      v26 = (*(*v23 + 32))(v23, 72, 8);
      *v26 = 1;
      *(v26 + 8) = "bundlePath";
      *(v26 + 16) = v25;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0x4000000005;
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
      *(v26 + 56) = 0;
      *(v26 + 64) = 0;
      qword_1EE1AD410 = v26;
      __cxa_guard_release(&qword_1EE1AD3B8);
    }
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1AD3E8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ReferenceComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ReferenceComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ReferenceComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ReferenceComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs218ReferenceComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v27 = v29;
}

void *re::internal::defaultDestruct<re::ecs2::ReferenceComponent>(uint64_t a1, uint64_t a2, id *a3)
{
  re::ecs2::EntityHandle::reset((a3 + 13));
  objc_destroyWeak(a3 + 13);
  a3[13] = 0;
  re::DynamicString::deinit((a3 + 8));
  re::DynamicString::deinit((a3 + 4));
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void *re::internal::defaultDestructV2<re::ecs2::ReferenceComponent>(id *a1)
{
  re::ecs2::EntityHandle::reset((a1 + 13));
  objc_destroyWeak(a1 + 13);
  a1[13] = 0;
  re::DynamicString::deinit((a1 + 8));
  re::DynamicString::deinit((a1 + 4));
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

uint64_t re::ecs2::ReferenceComponent::makeSyncInfo(re::IntrospectionBase **this)
{
  v2 = RESyncSyncableTypeInfoCreate();
  RESyncSyncableTypeInfoSetTypeId();
  v3 = &unk_1EE187000;
  {
    v3 = &unk_1EE187000;
    if (v5)
    {
      re::introspect<re::ecs2::ReferenceComponent>(BOOL)::info = re::internal::getOrCreateInfo("ReferenceComponent", re::ecs2::allocInfo_ReferenceComponent, re::ecs2::initInfo_ReferenceComponent, &re::internal::introspectionInfoStorage<re::ecs2::ReferenceComponent>, this);
      v3 = &unk_1EE187000;
    }
  }

  re::getPrettyTypeName(v3[121], &v6);
  RESyncSyncableTypeInfoSetDebugName();
  if (v6 && (v7 & 1) != 0)
  {
    (*(*v6 + 40))();
  }

  RESyncSyncableTypeInfoSetSupportsNetworkSync();
  return v2;
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::ReferenceComponent>(uint64_t a1)
{
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  v2 = (a1 + 64);
  *(a1 + 32) = 0u;
  v3 = (a1 + 32);
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *v4 = &unk_1F5CE4850;
  *v3 = 0u;
  *(v4 + 48) = 0u;
  v5 = re::DynamicString::setCapacity(v3, 0);
  *(a1 + 80) = 0u;
  *v2 = 0u;
  re::DynamicString::setCapacity(v2, 0);
  *(a1 + 96) = 0;
  *(a1 + 98) = 0;
  objc_initWeak((a1 + 104), 0);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  re::ecs2::EntityHandle::reset((a1 + 104));
  return a1;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs218ReferenceComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 12;
  *(a2 + 8) = 0;
  return result;
}

void re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::~PhysicsJointDefinitionAndRuntimeCollection(re::ecs2::PhysicsJointDefinitionAndRuntimeCollection *this)
{
  *this = &unk_1F5CF54D0;
  v1 = this + 8;
  re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::deinit(this + 48);
  re::DynamicArray<re::ecs2::PhysicsJointDefinition>::deinit(v1);
}

{
  *this = &unk_1F5CF54D0;
  v1 = this + 8;
  re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::deinit(this + 48);
  re::DynamicArray<re::ecs2::PhysicsJointDefinition>::deinit(v1);

  JUMPOUT(0x1E6906520);
}

char *re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::runtimeJoint(re::ecs2::PhysicsJointDefinitionAndRuntimeCollection *this, unint64_t a2)
{
  if (*(this + 8) <= a2)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((*(this + 10) + 8 * a2));
  if (!WeakRetained)
  {
    return 0;
  }

  v3 = WeakRetained - 8;

  return v3;
}

void re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::addJoint(re::ecs2::PhysicsJointDefinitionAndRuntimeCollection *this, const re::ecs2::PhysicsJointDefinition *a2, const re::ecs2::Scene *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::syncAfterExternalChange(this, 1);
  re::DynamicArray<re::ecs2::PhysicsJointDefinition>::add((this + 8), a2);
  inited = objc_initWeak(&v24, 0);
  v7 = *(this + 7);
  v8 = *(this + 8);
  if (v8 >= v7)
  {
    v9 = v8 + 1;
    if (v7 < v8 + 1)
    {
      if (*(this + 6))
      {
        v10 = 2 * v7;
        v11 = v7 == 0;
        v12 = 8;
        if (!v11)
        {
          v12 = v10;
        }

        if (v12 <= v9)
        {
          v13 = v9;
        }

        else
        {
          v13 = v12;
        }

        re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::setCapacity(this + 6, v13);
      }

      else
      {
        re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::setCapacity(this + 6, v9);
        ++*(this + 18);
      }
    }

    v8 = *(this + 8);
  }

  v14 = (*(this + 10) + 8 * v8);
  *v14 = 0;
  objc_moveWeak(v14, &v24);
  ++*(this + 8);
  ++*(this + 18);
  objc_destroyWeak(&v24);
  uuid_generate_random(&v24);
  v15 = (*v25 + (v24 << 6) + (v24 >> 2) - 0x61C8864680B583E9) ^ v24;
  *(this + 11) = v15;
  *(this + 12) = v15;
  v16 = re::ecs2::EntityHandle::resolve(a2 + 16, a3);
  v17 = v16;
  if (v16)
  {
    v18 = *(v16 + 37);
  }

  else
  {
    v18 = "null";
  }

  v19 = re::ecs2::EntityHandle::resolve(a2 + 128, a3);
  v20 = v19;
  if (v19)
  {
    v21 = *(v19 + 37);
  }

  else
  {
    v21 = "null";
  }

  v22 = *re::physicsLogObjects(v19);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(this + 6) - 1;
    LODWORD(v24) = 67110146;
    HIDWORD(v24) = v23;
    *v25 = 2080;
    *&v25[2] = v18;
    v26 = 2048;
    v27 = v17;
    v28 = 2080;
    v29 = v21;
    v30 = 2048;
    v31 = v20;
    _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, "PhysicsJointDefinitionAndRuntimeCollection::addJoint(): index=%d, Entity %s (%p), Entity %s (%p)", &v24, 0x30u);
  }
}

void re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::syncAfterExternalChange(re::ecs2::PhysicsJointDefinitionAndRuntimeCollection *this, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(this + 12) != *(this + 11))
  {
    v4 = *re::physicsLogObjects(this);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(this + 11);
      v5 = *(this + 12);
      v16 = 134218240;
      v17 = v5;
      v18 = 2048;
      v19 = v6;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "PhysicsJointDefinitionAndRuntimeCollection::syncAfterExternalChange(): m_lastGuid=%llu m_guid=%llu", &v16, 0x16u);
    }

    if (*(this + 8))
    {
      v7 = 0;
      do
      {
        re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::deleteRuntimeJoint(this, v7++, a2);
      }

      while (*(this + 8) > v7);
    }

    v8 = *(this + 3);
    objc_initWeak(&v16, 0);
    v9 = *(this + 8);
    if (v9 >= v8)
    {
      if (v9 <= v8)
      {
LABEL_18:
        objc_destroyWeak(&v16);
        *(this + 12) = *(this + 11);
        return;
      }

      v13 = 8 * v8;
      v14 = v8;
      do
      {
        v15 = *(this + 10);
        objc_destroyWeak((v15 + v13));
        *(v15 + 8 * v14++) = 0;
        v13 += 8;
      }

      while (v14 < *(this + 8));
    }

    else
    {
      if (*(this + 7) < v8)
      {
        re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::setCapacity(this + 6, v8);
        v9 = *(this + 8);
      }

      v10 = v8 - v9;
      if (v8 > v9)
      {
        v11 = 8 * v9;
        do
        {
          v12 = *(this + 10);
          *(v12 + v11) = 0;
          objc_copyWeak((v12 + v11), &v16);
          v11 += 8;
          --v10;
        }

        while (v10);
      }
    }

    *(this + 8) = v8;
    ++*(this + 18);
    goto LABEL_18;
  }
}

__n128 re::DynamicArray<re::ecs2::PhysicsJointDefinition>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::ecs2::PhysicsJointDefinition>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 304 * v4;
  *v5 = *a2;
  re::ecs2::EntityHandle::EntityHandle((v5 + 16), (a2 + 16));
  re::StringID::StringID((v5 + 40), (a2 + 40));
  v6 = *(a2 + 80);
  *(v5 + 64) = *(a2 + 64);
  *(v5 + 80) = v6;
  v7 = *(a2 + 96);
  *(v5 + 96) = v7;
  if (v7 == 1)
  {
    re::StringID::StringID((v5 + 104), (a2 + 104));
  }

  re::ecs2::EntityHandle::EntityHandle((v5 + 128), (a2 + 128));
  re::StringID::StringID((v5 + 152), (a2 + 152));
  v8 = *(a2 + 192);
  *(v5 + 176) = *(a2 + 176);
  *(v5 + 192) = v8;
  v9 = *(a2 + 208);
  *(v5 + 208) = v9;
  if (v9 == 1)
  {
    re::StringID::StringID((v5 + 216), (a2 + 216));
  }

  result = *(a2 + 240);
  v11 = *(a2 + 256);
  v12 = *(a2 + 272);
  *(v5 + 284) = *(a2 + 284);
  *(v5 + 256) = v11;
  *(v5 + 272) = v12;
  *(v5 + 240) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::deleteJoint(re::ecs2::PhysicsJointDefinitionAndRuntimeCollection *this, unint64_t a2, int a3)
{
  v36 = *MEMORY[0x1E69E9840];
  re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::syncAfterExternalChange(this, a3);
  if (*(this + 3) <= a2)
  {
    v34 = 0u;
    v35 = 0u;
    memset(out, 0, sizeof(out));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_23:
    v34 = 0u;
    v35 = 0u;
    memset(out, 0, sizeof(out));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_24;
  }

  v6 = *(this + 5) + 304 * a2;
  WeakRetained = objc_loadWeakRetained((v6 + 16));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v9 = WeakRetained - 8;

    v10 = *(v8 + 36);
  }

  else
  {
    v9 = 0;
    v10 = "null";
  }

  v11 = objc_loadWeakRetained((v6 + 128));
  if (v11)
  {
    v12 = v11;
    v13 = v11 - 8;

    v14 = *(v12 + 36);
  }

  else
  {
    v13 = 0;
    v14 = "null";
  }

  re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::deleteRuntimeJoint(this, a2, a3);
  v15 = *(this + 3);
  if (v15 <= a2)
  {
    goto LABEL_23;
  }

  v16 = *(this + 5);
  if (v15 - 1 > a2 && v16 + 304 * a2 + 304 != v16 + 304 * v15)
  {
    v17 = 304 * a2;
    v18 = 304 * v15 - 304;
    do
    {
      v19 = v16 + v17;
      *(v16 + 304 * a2) = *(v16 + 304 * a2 + 304);
      re::ecs2::EntityHandle::operator=((v16 + v17 + 16), (v16 + v17 + 320));
      re::StringID::operator=((v19 + 40), (v19 + 344));
      v20 = *(v16 + v17 + 384);
      *(v19 + 64) = *(v19 + 368);
      *(v19 + 80) = v20;
      re::Optional<re::StringID>::operator=((v19 + 96), v19 + 400);
      re::ecs2::EntityHandle::operator=((v19 + 128), (v19 + 432));
      re::StringID::operator=((v19 + 152), (v19 + 456));
      v21 = *(v16 + v17 + 496);
      *(v19 + 176) = *(v19 + 480);
      *(v19 + 192) = v21;
      re::Optional<re::StringID>::operator=((v19 + 208), v19 + 512);
      v22 = *(v16 + v17 + 560);
      *(v19 + 240) = *(v19 + 544);
      *(v19 + 256) = v22;
      *(v19 + 272) = *(v19 + 576);
      *(v19 + 284) = *(v19 + 588);
      v16 += 304;
      v18 -= 304;
    }

    while (v17 != v18);
    v15 = *(this + 3);
    v16 = *(this + 5);
  }

  v23 = v16 + 304 * v15;
  re::ecs2::PinHandle::~PinHandle((v23 - 176));
  re::ecs2::PinHandle::~PinHandle((v23 - 288));
  --*(this + 3);
  ++*(this + 8);
  v24 = *(this + 8);
  if (v24 <= a2)
  {
LABEL_24:
    v34 = 0u;
    v35 = 0u;
    memset(out, 0, sizeof(out));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v24 - 1 > a2)
  {
    v25 = *(this + 10);
    v26 = (v25 + 8 * a2);
    v27 = (v25 + 8 * v24);
    if (v26 + 1 != v27)
    {
      do
      {
        objc_destroyWeak(v26);
        *v26 = 0;
        v28 = v26 + 2;
        objc_moveWeak(v26, v26 + 1);
        ++v26;
      }

      while (v28 != v27);
      v24 = *(this + 8);
    }
  }

  v29 = *(this + 10) + 8 * v24;
  objc_destroyWeak((v29 - 8));
  *(v29 - 8) = 0;
  --*(this + 8);
  ++*(this + 18);
  uuid_generate_random(out);
  v30 = (*&out[8] + (*out << 6) + (*out >> 2) - 0x61C8864680B583E9) ^ *out;
  *(this + 11) = v30;
  *(this + 12) = v30;
  v32 = *re::physicsLogObjects(v31);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *out = 67110146;
    *&out[4] = a2;
    *&out[8] = 2080;
    *&out[10] = v10;
    *&out[18] = 2048;
    *&out[20] = v9;
    *&out[28] = 2080;
    *&out[30] = v14;
    *&out[38] = 2048;
    *&out[40] = v13;
    _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEFAULT, "PhysicsJointDefinitionAndRuntimeCollection::deleteJoint(): index=%d, Entity %s (%p), Entity %s (%p)", out, 0x30u);
  }
}

void re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::deleteRuntimeJoint(re::ecs2::PhysicsJointDefinitionAndRuntimeCollection *this, unint64_t a2, int a3)
{
  if (*(this + 8) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained((*(this + 10) + 8 * a2));
  if (!WeakRetained)
  {
    return;
  }

  v7 = WeakRetained;

  v8 = v7[5];
  if (v8)
  {
    re::PhysicsJointCollection::deleteJoint((v8 + 136), (v7 - 1), a3);
    if (a3)
    {
      v7[5] = 0;
    }
  }

  if (*(this + 8) <= a2)
  {
LABEL_10:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v9 = (*(this + 10) + 8 * a2);
  objc_destroyWeak(v9);
  *v9 = 0;
}

uint64_t re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::setJoints(re::ecs2::PhysicsJointDefinitionAndRuntimeCollection *a1, uint64_t a2, unint64_t a3, char *a4)
{
  v54 = *MEMORY[0x1E69E9840];
  re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::syncAfterExternalChange(a1, 1);
  v11 = *re::physicsLogObjects(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 3);
    *buf = 67109376;
    *&buf[4] = a3;
    *&buf[8] = 1024;
    *&buf[10] = v12;
    _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "PhysicsJointDefinitionAndRuntimeCollection::setJoints(): Begin, new joint count=%d, existing joint count=%d", buf, 0xEu);
  }

  v42 = 0;
  v39[1] = 0;
  v40 = 0;
  v39[0] = 0;
  v41 = 0;
  v13 = *(a1 + 3);
  buf[0] = 0;
  v14 = re::DynamicArray<BOOL>::resize(v39, v13, buf);
  v38 = 0;
  v35[1] = 0;
  v36 = 0;
  v34 = 0;
  v35[0] = 0;
  v37 = 0;
  if (a3)
  {
    v16 = 0;
    do
    {
      v17 = a2 + 304 * v16;
      v18 = re::ecs2::EntityHandle::resolve(v17 + 16, a4);
      v19 = v18;
      if (v18)
      {
        v20 = *(v18 + 37);
      }

      else
      {
        v20 = "null";
      }

      v21 = re::ecs2::EntityHandle::resolve(v17 + 128, a4);
      v22 = v21;
      if (v21)
      {
        v23 = *(v21 + 37);
      }

      else
      {
        v23 = "null";
      }

      if (!*(a1 + 3))
      {
        goto LABEL_24;
      }

      v5 = 0;
      while (1)
      {
        v24 = re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::joint(a1, v5);
        v21 = re::ecs2::PhysicsJointDefinition::operator==(v17, v24);
        if (v21)
        {
          break;
        }

        if (++v5 >= *(a1 + 3))
        {
          goto LABEL_24;
        }
      }

      v4 = v40;
      if (v40 <= v5)
      {
        goto LABEL_49;
      }

      if (*(v42 + v5) == 1)
      {
        v25 = *re::physicsLogObjects(v21);
        v21 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        if (v21)
        {
          *buf = 67110402;
          *&buf[4] = v34;
          *&buf[8] = 1024;
          *&buf[10] = v5;
          *&buf[14] = 2080;
          *&buf[16] = v20;
          *&buf[24] = 2048;
          *&buf[26] = v19;
          *&buf[34] = 2080;
          *&buf[36] = v23;
          *&buf[44] = 2048;
          *&buf[46] = v22;
          _os_log_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_DEFAULT, "PhysicsJointDefinitionAndRuntimeCollection::setJoints(: New joint %d matches an already matched existing joint %d, Entity %s (%p), Entity %s (%p)", buf, 0x36u);
        }
      }

      v4 = v40;
      if (v40 <= v5)
      {
        goto LABEL_50;
      }

      *(v42 + v5) = 1;
      if (v5 == -1)
      {
LABEL_24:
        v4 = *re::physicsLogObjects(v21);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67110146;
          *&buf[4] = v34;
          *&buf[8] = 2080;
          *&buf[10] = v20;
          *&buf[18] = 2048;
          *&buf[20] = v19;
          *&buf[28] = 2080;
          *&buf[30] = v23;
          *&buf[38] = 2048;
          *&buf[40] = v22;
          _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "PhysicsJointDefinitionAndRuntimeCollection::setJoints(: New joint %d does not match any existing joint, Entity %s (%p), Entity %s (%p)", buf, 0x30u);
        }

        v14 = re::DynamicArray<unsigned long>::add(v35, &v34);
      }

      else
      {
        v4 = *re::physicsLogObjects(v21);
        v14 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          *buf = 67110402;
          *&buf[4] = v34;
          *&buf[8] = 1024;
          *&buf[10] = v5;
          *&buf[14] = 2080;
          *&buf[16] = v20;
          *&buf[24] = 2048;
          *&buf[26] = v19;
          *&buf[34] = 2080;
          *&buf[36] = v23;
          *&buf[44] = 2048;
          *&buf[46] = v22;
          _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "PhysicsJointDefinitionAndRuntimeCollection::setJoints(: New joint %d matches an existing joint %d, Entity %s (%p), Entity %s (%p)", buf, 0x36u);
        }
      }

      v16 = v34 + 1;
      v34 = v16;
    }

    while (v16 < a3);
  }

  if (*(a1 + 3) >= 1)
  {
    v26 = (*(a1 + 3) & 0x7FFFFFFFLL) - 1;
    while (1)
    {
      v27 = v40;
      if (v40 <= v26)
      {
        break;
      }

      if ((*(v42 + v26) & 1) == 0)
      {
        re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::deleteJoint(a1, v26, 1);
      }

      v28 = v26-- + 1;
      if (v28 <= 1)
      {
        goto LABEL_34;
      }
    }

    v43 = 0;
    v53 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v44 = 136315906;
    v45 = "operator[]";
    v46 = 1024;
    v47 = 789;
    v48 = 2048;
    v49 = v26;
    v50 = 2048;
    v51 = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_48;
  }

LABEL_34:
  if (v36)
  {
    v29 = 0;
    while (1)
    {
      v30 = *(v38 + 8 * v29);
      if (a3 <= v30)
      {
        break;
      }

      re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::addJoint(a1, (a2 + 304 * v30), a4);
      if (++v29 >= v36)
      {
        goto LABEL_38;
      }
    }

LABEL_48:
    re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v30, a3);
    _os_crash();
    __break(1u);
LABEL_49:
    v43 = 0;
    v53 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v44 = 136315906;
    v45 = "operator[]";
    v46 = 1024;
    v47 = 789;
    v48 = 2048;
    v49 = v5;
    v50 = 2048;
    v51 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_50:
    v43 = 0;
    v53 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v44 = 136315906;
    v45 = "operator[]";
    v46 = 1024;
    v47 = 789;
    v48 = 2048;
    v49 = v5;
    v50 = 2048;
    v51 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_38:
  v31 = *re::physicsLogObjects(v14);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = *(a1 + 3);
    *buf = 67109120;
    *&buf[4] = v32;
    _os_log_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_DEFAULT, "PhysicsJointDefinitionAndRuntimeCollection::setJoints(): End, resulting joint count=%d", buf, 8u);
  }

  if (v35[0] && v38)
  {
    (*(*v35[0] + 40))();
  }

  result = v39[0];
  if (v39[0])
  {
    if (v42)
    {
      return (*(*v39[0] + 40))();
    }
  }

  return result;
}

void *re::DynamicArray<BOOL>::resize(void *result, unint64_t a2, unsigned __int8 *a3)
{
  v4 = result;
  v5 = result[2];
  if (v5 >= a2)
  {
    if (v5 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<BOOL>::setCapacity(result, a2);
      v5 = v4[2];
    }

    if (a2 > v5)
    {
      result = memset((v4[4] + v5), *a3, a2 - v5);
    }
  }

  v4[2] = a2;
  ++*(v4 + 6);
  return result;
}

unint64_t re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::joint(re::ecs2::PhysicsJointDefinitionAndRuntimeCollection *this, unint64_t a2)
{
  if (*(this + 3) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 5) + 304 * a2;
}

void re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::auditAndSyncRuntimeJoints(re::ecs2::PhysicsJointDefinitionAndRuntimeCollection *this, int a2, re::PhysicsSimulation *a3, re::ecs2::Scene *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::syncAfterExternalChange(this, 0);
  if ((a2 & 1) == 0 && *(this + 8))
  {
    v9 = 0;
    do
    {
      re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::deleteRuntimeJoint(this, v9++, 0);
    }

    while (*(this + 8) > v9);
  }

  if (a3 && a4)
  {
    if (*(this + 3) >= 1)
    {
      v10 = *(this + 3) & 0x7FFFFFFFLL;
      v11 = v10 + 1;
      v12 = 8 * v10 - 8;
      v13 = 304 * v10 - 304;
      do
      {
        v14 = v11 - 2;
        v15 = re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::joint(this, v11 - 2);
        v16 = re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::runtimeJoint(this, v11 - 2);
        v25 = 0;
        v26 = 0;
        memset(buf, 0, sizeof(buf));
        *&v29 = 0;
        *(&v29 + 1) = 0x3F80000000000000;
        memset(v27, 0, 24);
        *&v27[24] = 0x3F80000000000000;
        DataToCreateRuntimeJoint = re::ecs2::PhysicsJointDefinition::getDataToCreateRuntimeJoint(v15, a3, a4, v16, &v26, buf, &v25, v27);
        if (DataToCreateRuntimeJoint == 3)
        {
          re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::deleteJoint(this, v11 - 2, 0);
        }

        else
        {
          v19 = DataToCreateRuntimeJoint;
          if (DataToCreateRuntimeJoint == 2)
          {
            if (v16)
            {
              re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::deleteRuntimeJoint(this, v11 - 2, 0);
            }
          }

          else
          {
            if (DataToCreateRuntimeJoint == 1 && v16)
            {
              re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::deleteRuntimeJoint(this, v11 - 2, 0);
              v16 = 0;
            }

            if (v19 <= 1 && !v16 && a2)
            {
              v20 = *(this + 3);
              if (v20 <= v14)
              {
                v26 = 0;
                v31 = 0u;
                v32 = 0u;
                v29 = 0u;
                v30 = 0u;
                *buf = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v27 = 136315906;
                *&v27[4] = "operator[]";
                *&v27[12] = 1024;
                *&v27[14] = 789;
                *&v27[18] = 2048;
                *&v27[20] = v11 - 2;
                *&v27[28] = 2048;
                *&v27[30] = v20;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_35:
                v26 = 0;
                v31 = 0u;
                v32 = 0u;
                v29 = 0u;
                v30 = 0u;
                *buf = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v27 = 136315906;
                *&v27[4] = "operator[]";
                *&v27[12] = 1024;
                *&v27[14] = 789;
                *&v27[18] = 2048;
                *&v27[20] = v11 - 2;
                *&v27[28] = 2048;
                *&v27[30] = v20;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
              }

              RuntimeJoint = re::ecs2::PhysicsRuntimeJointFactory::createRuntimeJoint((*(this + 5) + v13), a3, a4, v18);
              v20 = *(this + 8);
              if (v20 <= v14)
              {
                goto LABEL_35;
              }

              if (RuntimeJoint)
              {
                v22 = RuntimeJoint + 8;
              }

              else
              {
                v22 = 0;
              }

              objc_storeWeak((*(this + 10) + v12), v22);
            }
          }
        }

        --v11;
        v12 -= 8;
        v13 -= 304;
      }

      while (v11 > 1);
    }
  }

  else
  {
    if (*(this + 8))
    {
      v23 = 0;
      do
      {
        re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::deleteRuntimeJoint(this, v23++, 0);
      }

      while (*(this + 8) > v23);
    }

    v24 = *re::physicsLogObjects(v8);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEFAULT, "PhysicsJointDefinitionAndRuntimeCollection::auditAndSyncRuntimeJoints(): Simulation or scene is null", buf, 2u);
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::PhysicsJointDefinition>>::get()
{
  if ((atomic_load_explicit(&qword_1EE1AD550, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AD550))
  {
    re::IntrospectionDynamicArray<re::ecs2::PhysicsJointDefinition>::IntrospectionDynamicArray();
    __cxa_guard_release(&qword_1EE1AD550);
  }

  if ((_MergedGlobals_319 & 1) == 0)
  {
    v0 = re::ecs2::introspect_PhysicsJointDefinition(1);
    if ((_MergedGlobals_319 & 1) == 0)
    {
      v1 = v0;
      _MergedGlobals_319 = 1;
      v2 = *(v0 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AD568, 0);
      qword_1EE1AD578 = 0x2800000003;
      dword_1EE1AD580 = v2;
      word_1EE1AD584 = 0;
      *&xmmword_1EE1AD588 = 0;
      *(&xmmword_1EE1AD588 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AD598 = v1;
      qword_1EE1AD5A0 = 0;
      qword_1EE1AD568 = &unk_1F5CF5500;
      re::IntrospectionRegistry::add(v3, v4);
      re::getPrettyTypeName(&qword_1EE1AD568, &v12);
      if (v13)
      {
        v5 = *&v14[7];
      }

      else
      {
        v5 = v14;
      }

      if (v12 && (v13 & 1) != 0)
      {
        (*(*v12 + 40))();
      }

      v9 = *(v1 + 32);
      if (v16)
      {
        v8 = v16;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v15);
        re::TypeBuilder::TypeBuilder(&v12, v15);
        v11 = v9;
        re::TypeBuilder::beginListType(&v12, &v10, 1, 0x28uLL, 8uLL, &v11);
        re::TypeBuilder::setConstructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsJointDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsJointDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v12, 1);
        re::TypeBuilder::setListAccessors(&v12, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsJointDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsJointDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v12, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsJointDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v12, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsJointDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsJointDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsJointDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v12, v7);
        re::StackScratchAllocator::~StackScratchAllocator(v15);
      }

      xmmword_1EE1AD588 = v8;
      if (v10)
      {
        if (v10)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_PhysicsJointDefinitionAndRuntimeCollection(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AD548, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AD548))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AD5A8, "PhysicsJointDefinitionAndRuntimeCollection");
    __cxa_guard_release(&qword_1EE1AD548);
  }

  return &unk_1EE1AD5A8;
}

void re::ecs2::initInfo_PhysicsJointDefinitionAndRuntimeCollection(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v13[0] = 0x6B0B6CA5207AC9EALL;
  v13[1] = "PhysicsJointDefinitionAndRuntimeCollection";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&qword_1EE1AD540, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AD540);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::DynamicArray<re::ecs2::PhysicsJointDefinition>>::get();
      v7 = (*(*v6 + 32))(v6, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "m_joints";
      *(v7 + 16) = &qword_1EE1AD568;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0x800000001;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE1AD558 = v7;
      v8 = re::introspectionAllocator(v7);
      v10 = re::introspect_uint64_t(1, v9);
      v11 = (*(*v8 + 32))(v8, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "m_guid";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x5800000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1AD560 = v11;
      __cxa_guard_release(&qword_1EE1AD540);
    }
  }

  *(this + 2) = 0x6800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1AD558;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PhysicsJointDefinitionAndRuntimeCollection>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PhysicsJointDefinitionAndRuntimeCollection>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PhysicsJointDefinitionAndRuntimeCollection>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PhysicsJointDefinitionAndRuntimeCollection>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v12 = v14;
}

double re::internal::defaultConstruct<re::ecs2::PhysicsJointDefinitionAndRuntimeCollection>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_1F5CF54D0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  result = 0.0;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a3 + 80) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::PhysicsJointDefinitionAndRuntimeCollection>(uint64_t a1)
{
  *a1 = &unk_1F5CF54D0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  return result;
}

uint64_t re::DynamicArray<re::ecs2::PhysicsJointDefinition>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 304 * v4;
        v6 = (v3 + 128);
        do
        {
          re::ecs2::PinHandle::~PinHandle(v6);
          re::ecs2::PinHandle::~PinHandle((v6 - 112));
          v6 = (v6 + 304);
          v5 -= 304;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void *re::DynamicArray<re::ecs2::PhysicsJointDefinition>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::ecs2::PhysicsJointDefinition>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ecs2::PhysicsJointDefinition>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::ecs2::PhysicsJointDefinition>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::ecs2::PhysicsJointDefinition>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x130uLL))
        {
          v2 = 304 * a2;
          result = (*(*result + 32))(result, 304 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 304, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 304 * v9;
        v11 = v7;
        do
        {
          re::ObjectHelper::move<re::ecs2::PhysicsJointDefinition>(v8, v11);
          v8 += 304;
          v11 += 304;
          v10 -= 304;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void re::ObjectHelper::move<re::ecs2::PhysicsJointDefinition>(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  re::ecs2::EntityHandle::EntityHandle((a2 + 16), (a1 + 16));
  re::StringID::StringID((a2 + 40), (a1 + 40));
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  v5 = *(a1 + 96);
  *(a2 + 96) = v5;
  if (v5 == 1)
  {
    re::StringID::StringID((a2 + 104), (a1 + 104));
  }

  re::ecs2::EntityHandle::EntityHandle((a2 + 128), (a1 + 128));
  re::StringID::StringID((a2 + 152), (a1 + 152));
  v6 = *(a1 + 192);
  *(a2 + 176) = *(a1 + 176);
  *(a2 + 192) = v6;
  v7 = *(a1 + 208);
  *(a2 + 208) = v7;
  if (v7 == 1)
  {
    re::StringID::StringID((a2 + 216), (a1 + 216));
  }

  v8 = *(a1 + 240);
  v9 = *(a1 + 256);
  v10 = *(a1 + 272);
  *(a2 + 284) = *(a1 + 284);
  *(a2 + 256) = v9;
  *(a2 + 272) = v10;
  *(a2 + 240) = v8;
  re::ecs2::PinHandle::~PinHandle((a1 + 128));

  re::ecs2::PinHandle::~PinHandle((a1 + 16));
}

_BYTE *re::Optional<re::StringID>::operator=(_BYTE *a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = (a1 + 8);
    if (*a2)
    {
      re::StringID::operator=(v3, (a2 + 8));
    }

    else
    {
      re::StringID::destroyString(v3);
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    re::StringID::StringID((a1 + 8), (a2 + 8));
  }

  return a1;
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::PhysicsJointDefinition>::IntrospectionDynamicArray()
{
  ArcSharedObject::ArcSharedObject(&qword_1EE1AD568, 0);
  *(&qword_1EE1AD578 + 6) = 0;
  qword_1EE1AD578 = 0;
  *&xmmword_1EE1AD588 = 0;
  *(&xmmword_1EE1AD588 + 1) = 0xFFFFFFFFLL;
  qword_1EE1AD568 = &unk_1F5CADA48;
  qword_1EE1AD5A0 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&qword_1EE1AD598);
  qword_1EE1AD568 = &unk_1F5CF5500;
  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::PhysicsJointDefinition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::PhysicsJointDefinition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::PhysicsJointDefinition>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::PhysicsJointDefinition>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::ecs2::PhysicsJointDefinition>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::ecs2::PhysicsJointDefinition>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::ecs2::PhysicsJointDefinition>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::ecs2::PhysicsJointDefinition>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::ecs2::PhysicsJointDefinition>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::PhysicsJointDefinition>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  re::ecs2::PhysicsJointDefinition::PhysicsJointDefinition(v19);
  v8 = *(a4 + 16);
  if (v8 >= *(a4 + 8))
  {
    re::DynamicArray<re::ecs2::PhysicsJointDefinition>::growCapacity(a4, v8 + 1);
    v8 = *(a4 + 16);
  }

  v9 = *(a4 + 32) + 304 * v8;
  *v9 = v19[0];
  re::ecs2::EntityHandle::EntityHandle((v9 + 16), v20);
  re::StringID::StringID((v9 + 40), v21);
  v10 = *&v21[5];
  *(v9 + 64) = *&v21[3];
  *(v9 + 80) = v10;
  v11 = v22;
  *(v9 + 96) = v22;
  if (v11 == 1)
  {
    re::StringID::StringID((v9 + 104), &v23);
  }

  re::ecs2::EntityHandle::EntityHandle((v9 + 128), v24);
  re::StringID::StringID((v9 + 152), v25);
  v12 = *&v25[5];
  *(v9 + 176) = *&v25[3];
  *(v9 + 192) = v12;
  v13 = v26;
  *(v9 + 208) = v26;
  if (v13 == 1)
  {
    re::StringID::StringID((v9 + 216), v27);
  }

  v14 = *&v27[3];
  v15 = *&v27[5];
  v16 = v28[0];
  *(v9 + 284) = *(v28 + 12);
  *(v9 + 256) = v15;
  *(v9 + 272) = v16;
  *(v9 + 240) = v14;
  ++*(a4 + 16);
  ++*(a4 + 24);
  re::ecs2::PinHandle::~PinHandle(v24);
  re::ecs2::PinHandle::~PinHandle(v20);
  v17 = (*(a4 + 32) + 304 * *(a4 + 16) - 304);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v17);
  return v17;
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::PhysicsJointDefinition>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 304 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 304 * a3;
}

void re::DynamicArray<re::ecs2::PhysicsJointDefinition>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v7 = 304 * a2 + 128;
    v8 = a2;
    do
    {
      re::ecs2::PinHandle::~PinHandle((*(a1 + 32) + v7));
      re::ecs2::PinHandle::~PinHandle((v9 - 112));
      ++v8;
      v7 += 304;
    }

    while (v8 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::ecs2::PhysicsJointDefinition>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 304 * v4;
      do
      {
        re::ecs2::PhysicsJointDefinition::PhysicsJointDefinition((*(a1 + 32) + v6));
        v6 += 304;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

re::ecs2::PhysicsJointDefinition *re::ecs2::PhysicsJointDefinition::PhysicsJointDefinition(re::ecs2::PhysicsJointDefinition *this)
{
  *this = 0;
  objc_initWeak(this + 2, 0);
  *(this + 3) = 0;
  *(this + 4) = 0;
  re::ecs2::EntityHandle::reset((this + 16));
  *(this + 5) = 0;
  *(this + 6) = &str_67;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0x3F80000000000000;
  *(this + 96) = 0;
  objc_initWeak(this + 16, 0);
  *(this + 17) = 0;
  *(this + 18) = 0;
  re::ecs2::EntityHandle::reset((this + 128));
  *(this + 19) = 0;
  *(this + 20) = &str_67;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0x3F80000000000000;
  *(this + 208) = 0;
  *(this + 240) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  v7 = -_D0;
  *(this + 244) = v7;
  *(this + 252) = v7;
  v8 = 268;
  *(this + 260) = v7;
  do
  {
    *(this + v8) = v7;
    v8 += 8;
  }

  while (v8 != 292);
  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsJointDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::ecs2::PhysicsJointDefinition>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsJointDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = 304 * v8;
      v10 = (*(a1 + 32) + 128);
      do
      {
        re::ecs2::PinHandle::~PinHandle(v10);
        re::ecs2::PinHandle::~PinHandle((v10 - 112));
        v10 = (v10 + 304);
        v9 -= 304;
      }

      while (v9);
    }
  }

  else
  {
    re::DynamicArray<re::ecs2::PhysicsJointDefinition>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::ecs2::PhysicsJointDefinition>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::ecs2::PhysicsJointDefinition>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 304 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 304;
        v14 -= 304;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsJointDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 304 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsJointDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsJointDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 304 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PhysicsJointDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::ecs2::allocInfo_SceneUnderstandingMeshSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_320, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_320))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AD640, "SceneUnderstandingMeshSystem");
    __cxa_guard_release(&_MergedGlobals_320);
  }

  return &unk_1EE1AD640;
}

void re::ecs2::initInfo_SceneUnderstandingMeshSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x3CF52F60DF61D568;
  v6[1] = "SceneUnderstandingMeshSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x13000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_SceneUnderstandingMeshSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SceneUnderstandingMeshSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SceneUnderstandingMeshSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::SceneUnderstandingMeshSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::SceneUnderstandingMeshSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SceneUnderstandingMeshSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SceneUnderstandingMeshSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

double re::internal::defaultConstruct<re::ecs2::SceneUnderstandingMeshSystem>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  v3 = re::ecs2::System::System(a3, 1, 1);
  *(v3 + 288) = 0;
  *(v3 + 296) = 0;
  result = 0.0;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *v3 = &unk_1F5CF5598;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::SceneUnderstandingMeshSystem>(_OWORD *a1)
{
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  v1 = re::ecs2::System::System(a1, 1, 1);
  *(v1 + 288) = 0;
  *(v1 + 296) = 0;
  result = 0.0;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *v1 = &unk_1F5CF5598;
  return result;
}

_anonymous_namespace_ *re::ecs2::SceneUnderstandingMeshSystem::willAddSystemToECSService(re::ecs2::SceneUnderstandingMeshSystem *this)
{
  re::ecs2::RenderingSubsystem::willAddSystemToECSService(this);
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::SceneUnderstandingService>(v2);
  *(this + 37) = result;
  return result;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::SceneUnderstandingService>(uint64_t a1)
{
  {
    re::introspect<re::SceneUnderstandingService>(BOOL)::info = re::introspect_SceneUnderstandingService(0);
  }

  v2 = re::introspect<re::SceneUnderstandingService>(BOOL)::info;
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

double re::ecs2::SceneUnderstandingMeshSystem::willRemoveSystemFromECSService(re::ecs2::SceneUnderstandingMeshSystem *this)
{
  result = 0.0;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 14) = 0u;
  return result;
}

void re::ecs2::SceneUnderstandingMeshSystem::update(re::ProfilerConfig *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v95 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 28);
  if (!v4 || (*(v4 + 432) & 0x10) != 0)
  {
    if (*(a1 + 37))
    {
      v5 = *(a3 + 200);
      if (v5)
      {
        v6 = *(a3 + 216);
        v7 = 8 * v5;
        v47 = vdupq_n_s64(1uLL);
        v8 = &unk_1EE187000;
        v9 = &unk_1ECF17000;
        while (1)
        {
          v10 = *v6;
          isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
          if (isStatisticCollectionEnabled)
          {
            v12 = re::profilerThreadContext(isStatisticCollectionEnabled);
            if (*(v12 + 152))
            {
              v48 = mach_absolute_time();
            }
          }

          else
          {
            v12 = 0;
          }

          re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v57, 3093, v3);
          v14 = *(v3 + 232);
          if (!v14)
          {
            break;
          }

          v15 = *(v14 + 112);
          if (v15)
          {
            v16 = re::RenderFrameBox::get((v15 + 328), 0xFFFFFFFFFFFFFFFuLL);
          }

          else
          {
            v16 = 0;
          }

          re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(v10, 0, v16, &v56);
          v17 = re::ecs2::SceneComponentTable::get((v10 + 200), *(v8 + 3056));
          if (v17 && *(v17 + 384))
          {
            v18 = v9[1928];
            v19 = **(v17 + 400);
            v50[17] = *(v19 + 25);
            v51 = *(v19 + 26);
            v54 = v18;
            if (*(v19 + 30))
            {
              v20 = 1;
            }

            else
            {
              if (re::ecs2::ShadowHelper::forceEnableMeshProjectiveShadows(void)::onceToken != -1)
              {
                dispatch_once(&re::ecs2::ShadowHelper::forceEnableMeshProjectiveShadows(void)::onceToken, &__block_literal_global_18);
              }

              v20 = re::ecs2::ShadowHelper::forceEnableMeshProjectiveShadows(void)::g_forceEnableMeshProjectiveShadows;
            }

            v55 = v20 & 1;
            re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v50, 7502, v3);
            v52 = (*(**(v3 + 296) + 56))(*(v3 + 296));
            v53 = (*(**(v3 + 296) + 72))(*(v3 + 296));
            v71 = (v56 >> 1);
            v21 = **(re::RenderFrameData::stream((v16 + 33), &v71) + 48);
            (*(v21 + 1000))();
            (*(**(v3 + 296) + 120))(&v59);
            v22 = v61[1];
            if (v60 == 1 && v61[0] && v61[1])
            {
              v49 = v56 >> 1;
              v23 = re::RenderFrameData::stream((v16 + 33), &v49);
              re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(v23, &v58, &v71);
              if (HIDWORD(v72) == 0x7FFFFFFF)
              {
                v24 = *(*(v23 + 48) + 8);
                v25 = (*(*v24 + 32))(v24, 56, 8);
                *v25 = 0;
                *(v25 + 8) = 0;
                *(v25 + 16) = 1;
                *(v25 + 32) = 0;
                *(v25 + 40) = 0;
                *(v25 + 24) = 0;
                *(v25 + 48) = 0;
                v26 = re::BucketArray<re::SceneUnderstandingGuidedFilterOcclusionData,4ul>::init(v25, v24, 1uLL);
                v27 = re::globalAllocators(v26)[2];
                *&v90 = &unk_1F5CF5670;
                *(&v90 + 1) = v24;
                *(&v91 + 1) = v27;
                *&v92 = &v90;
                v71 = std::__any_imp::_SmallHandler<re::BucketArray<re::SceneUnderstandingGuidedFilterOcclusionData,4ul> *>::__handle[abi:nn200100];
                v72 = v25;
                *(&v75 + 1) = v27;
                *&v76 = 0;
                re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::operator=<24ul>(&v74, &v90);
                v28 = re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::addNew(v23, &v58, &v71);
                if (v76)
                {
                  *v83 = &v71;
                  (*(*v76 + 16))(v76, v83);
                }

                re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(&v74);
                if (v71)
                {
                  (v71)(0, &v71, 0, 0, 0);
                }

                re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(&v90);
              }

              else
              {
                v28 = (*(v23 + 16) + 96 * HIDWORD(v72) + 16);
              }

              LOBYTE(v72) = v60;
              v73 = *v61;
              v78 = v66;
              v79 = v67;
              v76 = v64;
              v77 = v65;
              *(v82 + 10) = *(v70 + 10);
              v81 = v69;
              v82[0] = v70[0];
              v80 = v68;
              v74 = v62;
              v75 = v63;
              v31 = *(v30 + 40);
              v61[0] = 0;
              v61[1] = 0;
              v10 = *(v30 + 8);
              v71 = &unk_1F5CF56C8;
              if (v31 + 1 > 4 * v10)
              {
                re::BucketArray<re::SceneUnderstandingGuidedFilterOcclusionData,4ul>::setBucketsCapacity(v30, (v31 + 4) >> 2);
                v10 = *(v30 + 8);
              }

              v8 = v31 >> 2;
              if (v10 <= v31 >> 2)
              {
                goto LABEL_59;
              }

              if (*(v30 + 16))
              {
                v32 = v30 + 24;
              }

              else
              {
                v32 = *(v30 + 32);
              }

              v33 = *(v32 + 8 * v8);
              ++*(v30 + 40);
              ++*(v30 + 48);
              v34 = v33 + 192 * (v31 & 3);
              *v34 = &unk_1F5CF56C8;
              *(v34 + 8) = v72;
              *(v34 + 16) = v73;
              *&v73 = 0;
              *(v34 + 24) = *(&v73 + 1);
              v35 = v75;
              *(v34 + 32) = v74;
              *(v34 + 48) = v35;
              v36 = v76;
              v37 = v77;
              v38 = v79;
              *(v34 + 96) = v78;
              *(v34 + 112) = v38;
              *(v34 + 64) = v36;
              *(v34 + 80) = v37;
              v39 = v80;
              v40 = v81;
              v41 = v82[0];
              *(v34 + 170) = *(v82 + 10);
              *(v34 + 144) = v40;
              *(v34 + 160) = v41;
              *(v34 + 128) = v39;
              v42 = *(v30 + 40);
              if (!v42)
              {
                goto LABEL_60;
              }

              re::BucketArray<re::SceneUnderstandingGuidedFilterOcclusionData,4ul>::operator[](v30, v42 - 1);
              v22 = v61[1];
              v8 = 0x1EE187000;
              v9 = &unk_1ECF17000;
            }

            if (v22)
            {

              v61[1] = 0;
            }

            if (v61[0])
            {
            }

            re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v50);
          }

          if (v56)
          {
            if (v56)
            {
            }
          }

          re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v57);
          if (v12)
          {
            if (*(v12 + 152))
            {
              a1 = mach_absolute_time();
              v43 = *(v12 + 152);
              if (v43)
              {
                v44 = v43[1040].i64[0];
                if (v44 >= a1 - v48)
                {
                  v44 = a1 - v48;
                }

                v43[1040].i64[0] = v44;
                v45 = v43[1040].i64[1];
                if (v45 <= a1 - v48)
                {
                  v45 = a1 - v48;
                }

                v43[1040].i64[1] = v45;
                v46.i64[1] = v47.i64[1];
                v46.i64[0] = a1 - v48;
                v43[1041] = vaddq_s64(v43[1041], v46);
                *(v12 + 184) = 0;
              }
            }
          }

          ++v6;
          v7 -= 8;
          if (!v7)
          {
            return;
          }
        }

        re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) ", "m_renderManager", "updateSceneInternal", 61, v47.i64[0]);
        _os_crash();
        __break(1u);
LABEL_59:
        v58 = 0;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v90 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v83 = 136315906;
        *&v83[4] = "operator[]";
        v84 = 1024;
        v85 = 858;
        v86 = 2048;
        v87 = v8;
        v88 = 2048;
        v89 = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_60:
        re::internal::assertLog(4, v29, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
        _os_crash();
        __break(1u);
      }
    }
  }
}