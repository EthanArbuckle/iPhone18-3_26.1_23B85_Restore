void *re::SamplerTable::init(re::SamplerTable *this, unint64_t a2)
{
  v4 = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(this + 8, a2);
  ++*(this + 22);
}

void **re::SamplerTable::setSampler(int8x16_t **a1, void *a2, id *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v6 == -1)
  {
    v11 = a1[10];
    re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((a1 + 8), a3);
    LOBYTE(v12[0]) = v11;
    return re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addOrReplace(a1, a2, v12);
  }

  else
  {
    v7 = a1[1][v6].u8[8];
    if (a1[10] <= v7)
    {
      memset(v12, 0, sizeof(v12));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    result = a1[12] + v7;
    v9 = *a3;
    v10 = *result;
    if (*a3 != *result)
    {
      result = NS::SharedPtr<MTL::Buffer>::operator=(result, a3);
      if (!v9 || !v10)
      {
        *&v12[0] = a1;
        return re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::rehashKeysWith<re::SamplerTable::rehashNames(void)::{lambda(unsigned char)#1}>(a1, v12);
      }
    }
  }

  return result;
}

void re::SamplerManager::deinit(re::SamplerManager *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    v3 = *(this + 5);
    v4 = 8 * v2;
    do
    {

      *v3++ = 0;
      v4 -= 8;
    }

    while (v4);
  }

  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::clear(this + 8);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(this + 8);
  *(this + 16) = 0;

  *(this + 6) = 0;
  *(this + 7) = 0;

  *(this + 8) = 0;
  *(this + 9) = 0;

  *(this + 10) = 0;
  *(this + 11) = 0;

  *(this + 12) = 0;
  *(this + 13) = 0;

  *(this + 14) = 0;
  *(this + 15) = 0;
  v5 = *this;
  *this = 0;
}

void re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 8 * v2;
    do
    {
      if (*v3)
      {

        *v3 = 0;
      }

      ++v3;
      v4 -= 8;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

int8x16_t **re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::rehashKeysWith<re::SamplerTable::rehashNames(void)::{lambda(unsigned char)#1}>(int8x16_t **result, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  result[5] = 0;
  v15[0] = result;
  v2 = result[2];
  if (v2 >= 0x10)
  {
    v4 = result;
    v5 = 0;
    v6 = *result;
    v7 = v2 >> 4;
    while (1)
    {
      v8 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v6), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v15[1] = v8 ^ 0xFFFFLL;
      if (v8 != 0xFFFFLL)
      {
        break;
      }

      v5 -= 16;
      ++v6;
      if (!--v7)
      {
        return result;
      }
    }

    v9 = __clz(__rbit64(v8 ^ 0xFFFFLL));
    v10 = v9 - v5;
    v16 = v9 - v5;
    if (v9 + 1 != v5)
    {
      do
      {
        v11 = *(v15[0] + 8) + 16 * v10;
        v12 = *(v11 + 8);
        v13 = *(*a2 + 80);
        if (v13 <= v12)
        {
          v17 = 0;
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v26 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v18 = 136315906;
          v19 = "operator[]";
          v20 = 1024;
          v21 = 789;
          v22 = 2048;
          v23 = v12;
          v24 = 2048;
          v25 = v13;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        if (*(*(*a2 + 96) + 8 * v12))
        {
          v14 = 0xBF58476D1CE4E5B9 * (*v11 ^ (*v11 >> 30));
          v4[5] = (v4[5] ^ ((0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))) >> 31) ^ (0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))));
        }

        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v15);
        v10 = v16;
      }

      while (v16 != -1);
    }
  }

  return result;
}

void *re::introspect_MeshSortingConfiguration(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "Centroid";
      re::introspect_MeshSortingConfiguration(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 1) = 3;
      *(v13 + 2) = "FurthestOBB";
      qword_1EE1C6328 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = (*(*v14 + 32))(v14, 24, 8);
      *v15 = 1;
      *(v15 + 1) = 4;
      *(v15 + 2) = "NearestOBB";
      qword_1EE1C6330 = v15;
      v16 = re::introspectionAllocator(v15);
      v17 = (*(*v16 + 32))(v16, 24, 8);
      *v17 = 1;
      *(v17 + 1) = 1;
      *(v17 + 2) = "FurthestRadial";
      qword_1EE1C6338 = v17;
      v18 = re::introspectionAllocator(v17);
      v19 = (*(*v18 + 32))(v18, 24, 8);
      *v19 = 1;
      *(v19 + 1) = 2;
      *(v19 + 2) = "NearestRadial";
      qword_1EE1C6340 = v19;
      v20 = re::introspectionAllocator(v19);
      v21 = (*(*v20 + 32))(v20, 24, 8);
      *v21 = 1;
      *(v21 + 8) = 5;
      *(v21 + 16) = "CentroidWithOverride";
      qword_1EE1C6348 = v21;
    }
  }

  {
    v22 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_MeshSortingConfiguration(BOOL)::info, "MeshSortingConfiguration", 1, 1, 1, 1);
    *v22 = &unk_1F5D0C658;
    *(v22 + 8) = &re::introspect_MeshSortingConfiguration(BOOL)::enumTable;
    *(v22 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_MeshSortingConfiguration(BOOL)::isInitialized)
    {
      return &re::introspect_MeshSortingConfiguration(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v24);
    v3 = re::introspect_MeshSortingConfiguration(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v24);
    if (v3)
    {
      return &re::introspect_MeshSortingConfiguration(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_MeshSortingConfiguration(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_MeshSortingConfiguration(BOOL)::info;
    }
  }

  re::introspect_MeshSortingConfiguration(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_MeshSortingConfiguration(BOOL)::info, a2);
  v23[0] = 0x5B547FA33D6536FELL;
  v23[1] = "MeshSortingConfiguration";
  xmmword_1EE1C62F8 = v24;
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::introspect_MeshSortingConfiguration(BOOL)::info;
}

void *re::allocInfo_RenderGraphData(re *this)
{
  if ((atomic_load_explicit(_MergedGlobals_424, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(_MergedGlobals_424))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B79F0, "RenderGraphData");
    __cxa_guard_release(_MergedGlobals_424);
  }

  return &unk_1EE1B79F0;
}

void re::initInfo_RenderGraphData(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xA3C1F00635BD9A04;
  v6[1] = "RenderGraphData";
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
  *(this + 8) = &re::initInfo_RenderGraphData(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

uint64_t re::RenderGraphDataStore::RenderGraphDataStore(uint64_t a1, unint64_t a2)
{
  *a1 = a2;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  v4 = a1 + 16;
  *(a1 + 52) = 0x7FFFFFFFLL;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  v5 = a1 + 64;
  *(a1 + 100) = 0x7FFFFFFFLL;
  v6 = re::globalAllocators(a1);
  v7 = re::PerFrameAllocatorManager::perFrameAllocator(v6[6], a2);
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = v7;
  *(a1 + 212) = 0x7FFFFFFFLL;
  *(a1 + 224) = 0;
  v9 = re::globalAllocators(v8);
  v10 = re::PerFrameAllocatorManager::perFrameAllocator(v9[6], *a1);
  *(a1 + 8) = v10;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(v5, v10, 3);
  re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(a1 + 176, *(a1 + 8), 3);
  return a1;
}

void re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 24 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_19_0, 4 * v10);
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

double re::RenderGraphDataStore::deinit(re::RenderGraphDataStore *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 4);
    while (1)
    {
      v5 = *v4;
      v4 += 6;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 12);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  while (v3 != v2)
  {
    re::internal::destroyPersistent<re::RenderGraphData>("deinit", 50, *(*(this + 4) + 24 * v3 + 16));
    v6 = *(this + 12);
    if (v6 <= v3 + 1)
    {
      v6 = v3 + 1;
    }

    while (v6 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 4) + 24 * v3) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v3) = v6;
LABEL_14:
    ;
  }

  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 2);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 8);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 112);

  return re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 22);
}

re *re::internal::destroyPersistent<re::RenderGraphData>(re *result, uint64_t a2, void (***a3)(void))
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    (**a3)(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

_anonymous_namespace_ *re::RenderGraphDataStore::add(re::RenderGraphDataStore *this, uint64_t a2, const re::RuntimeRenderGraphDataStruct *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = (*(**(this + 1) + 32))(*(this + 1), 40, 8);
  *v6 = &unk_1F5D03058;
  *(v6 + 8) = 0u;
  v40 = (v6 + 8);
  *(v6 + 24) = 0u;
  v51 = 0;
  v7 = (*(**(this + 1) + 32))(*(this + 1), 144, 8);
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 128) = 0u;
  ArcSharedObject::ArcSharedObject(v7, 0);
  *(v8 + 22) = 0;
  *(v8 + 16) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xFFFFFFFFLL;
  *v8 = &unk_1F5D0C718;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0u;
  *(v8 + 112) = 0u;
  *(v8 + 128) = 0u;
  if (*(a3 + 113))
  {
    v9 = *(a3 + 114);
  }

  else
  {
    v9 = a3 + 905;
  }

  v10 = strlen(v9);
  v11 = (*(**(this + 1) + 32))(*(this + 1), v10 + 1, 0);
  v47 = a3 + 905;
  if (*(a3 + 113))
  {
    v12 = *(a3 + 114);
  }

  else
  {
    v12 = a3 + 905;
  }

  *(v7 + 48) = strcpy(v11, v12);
  v13 = *(a3 + 181);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = *(a3 + 10);
  }

  *(v7 + 56) = v14;
  *(v7 + 16) = 8;
  if (v14)
  {
    v15 = (*(**(this + 1) + 32))(*(this + 1), 8 * v14 + 23, 0);
    v16 = ((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
    *(v16 - 2) = v14;
    *(v16 - 1) = v15;
    v49 = v16;
    bzero(v16, 8 * v14);
    v13 = *(a3 + 181);
  }

  else
  {
    v49 = 0;
  }

  v42 = v6;
  v43 = v7;
  v41 = a2;
  if (v13)
  {
    v17 = a3 + 696;
    v45 = *(a3 + 182);
    a2 = 0;
    if (v45)
    {
      v18 = *(a3 + 89);
      while (1)
      {
        v19 = *v18;
        v18 += 22;
        if (v19 < 0)
        {
          break;
        }

        if (v45 == ++a2)
        {
          LODWORD(a2) = *(a3 + 182);
          break;
        }
      }
    }

    else
    {
      LODWORD(v45) = 0;
    }

    v44 = a3 + 696;
  }

  else
  {
    v17 = a3 + 56;
    v44 = a3 + 80 * *(a3 + 5) + 56;
    v45 = *(a3 + 5);
  }

  v20 = 0;
  v46 = v13;
  v48 = a3;
  while (v13)
  {
    if (v45 == a2)
    {
      goto LABEL_41;
    }

    v21 = *(v17 + 2) + 88 * a2 + 16;
LABEL_28:
    if (*(a3 + 113))
    {
      v22 = *(a3 + 114);
    }

    else
    {
      v22 = v47;
    }

    v23 = strlen(v22);
    v24 = (*(**(this + 1) + 32))(*(this + 1), v23 + 1, 0);
    strcpy(v24, *(v21 + 8));
    v25 = (*(**(this + 1) + 32))(*(this + 1), 72, 8);
    *v25 = 0u;
    *(v25 + 32) = 0u;
    *(v25 + 64) = 0;
    *(v25 + 48) = 0u;
    *(v25 + 16) = 0u;
    v26 = re::IntrospectionMember::IntrospectionMember(v25);
    *(v26 + 1) = v24;
    *v26 = *v21;
    *(v26 + 9) = *(v21 + 36);
    re::SerializedReference<re::IntrospectionBase const*>::operator=((v25 + 16), (v21 + 16));
    re::SerializedReference<re::IntrospectionBase const*>::operator=((v25 + 48), (v21 + 48));
    *(v25 + 64) = *(v21 + 64);
    v49[v20] = v25;
    v13 = v46;
    if (v46)
    {
      v27 = a2 + 1;
      if (*(v17 + 8) <= (a2 + 1))
      {
        LODWORD(a2) = a2 + 1;
      }

      else
      {
        LODWORD(a2) = *(v17 + 8);
      }

      a3 = v48;
      while (a2 != v27)
      {
        v28 = v27;
        v29 = *(*(v17 + 2) + 88 * v27++);
        if (v29 < 0)
        {
          LODWORD(a2) = v28;
          break;
        }
      }

      ++v20;
    }

    else
    {
      v17 += 80;
      ++v20;
      a3 = v48;
    }
  }

  if (v17 != v44)
  {
    v21 = (v17 + 8);
    goto LABEL_28;
  }

LABEL_41:
  *(v7 + 64) = v49;
  *(v42 + 32) = v7;
  v30 = strlen(*(v7 + 48));
  if (v30)
  {
    MurmurHash3_x64_128(*(v7 + 48), v30, 0, &v52);
    v31 = (v53 - 0x61C8864680B583E9 + (v52 << 6) + (v52 >> 2)) ^ v52;
  }

  else
  {
    v31 = 0;
  }

  v51 = v31;
  re::FixedArray<char>::init<>(v40, *(this + 1), *(a3 + 94));
  if (*(a3 + 190))
  {
    v32 = a3 + 768;
  }

  else
  {
    v32 = *(a3 + 97);
  }

  memcpy(*(v42 + 24), v32, *(v42 + 16));
  v52 = 0;
  v53 = 0;
  v54 = 0;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(this + 176, &v51, v31, &v52);
  if (HIDWORD(v53) == 0x7FFFFFFF)
  {
    v33 = re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(this + 176, v53, v52);
    v34 = v51;
    *(v33 + 8) = v51;
    *(v33 + 16) = v7;
    ++*(this + 54);
  }

  else
  {
    v34 = v51;
  }

  v50 = (v41 - 0x61C8864680B583E9 + (v34 << 6) + (v34 >> 2)) ^ v34;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(this + 64, &v50, v50, &v52);
  if (HIDWORD(v53) == 0x7FFFFFFF)
  {
    v35 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(this + 64, v53, v52);
    *(v35 + 8) = v50;
    *(v35 + 16) = v42;
    ++*(this + 26);
  }

  v36 = *(this + 1);
  v37 = (*(*v42 + 16))(v42);
  v38 = (*(*v36 + 32))(v36, 40, 8);
  ArcSharedObject::ArcSharedObject(v38, 0);
  *(v38 + 3) = v43;
  *v38 = &unk_1F5D03098;
  *(v38 + 4) = v37;
  return v38;
}

void *re::SerializedReference<re::IntrospectionBase const*>::operator=(void *a1, void *a2)
{
  v3 = a2[1];
  if (v3)
  {
    if (*(v3 + 8))
    {
      v4 = *(v3 + 16);
    }

    else
    {
      v4 = (v3 + 9);
    }

    re::SerializedReference<re::IntrospectionBase const*>::setString(a1, v4, *v3);
  }

  else
  {
    re::SerializedReference<re::IntrospectionBase const*>::reset(a1);
    *a1 = *a2;
  }

  return a1;
}

void re::FixedArray<char>::init<>(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (a3)
  {
    v5 = (*(*a2 + 32))(a2, a3, 1);
    a1[2] = v5;
    if (v5)
    {
      v7 = v5;
      v8 = a3 - 1;
      if (v8)
      {
        bzero(v5, v8);
        v7 += v8;
      }

      *v7 = 0;
    }

    else
    {
      re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
    }
  }
}

_anonymous_namespace_ *re::RenderGraphDataStore::createWrappedData(re::RenderGraphDataStore *this, uint64_t a2, const char *__s)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = strlen(__s);
  if (v6)
  {
    MurmurHash3_x64_128(__s, v6, 0, &v15);
    v7 = (v16 + (v15 << 6) + (v15 >> 2) - 0x61C8864680B583E9) ^ v15;
  }

  else
  {
    v7 = 0;
  }

  v8 = re::RenderGraphDataStore::tryGetByTypeNameHash(this, a2, v7);
  IntrospectionByNameHash = re::RenderGraphDataStore::tryGetIntrospectionByNameHash(this, v7, &v15);
  if (!v8 || v15 != 1)
  {
    return 0;
  }

  v10 = re::globalAllocators(IntrospectionByNameHash)[2];
  v11 = (*(*v8 + 16))(v8);
  v12 = (*(*v10 + 32))(v10, 40, 8);
  v13 = v16;
  ArcSharedObject::ArcSharedObject(v12, 0);
  *(v12 + 3) = v13;
  *v12 = &unk_1F5D03098;
  *(v12 + 4) = v11;
  return v12;
}

uint64_t re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re23RenderGraphDataPipeDataE";
  if (("N2re23RenderGraphDataPipeDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re23RenderGraphDataPipeDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
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

uint64_t re::RenderGraphDataStore::tryGet<re::MipmapGenerationContext>(uint64_t a1, int a2, char *__s)
{
  v10[2] = *MEMORY[0x1E69E9840];
  {
    re::RenderGraphDataStore::tryGet<re::MipmapGenerationContext>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash = re::hashString("RenderGraphDataPipeData", v9);
  }

  v5 = 0x9E3779B97F4A7C17;
  v6 = re::RenderGraphDataStore::tryGet<re::MipmapGenerationContext>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash;
  v7 = strlen(__s);
  if (v7)
  {
    MurmurHash3_x64_128(__s, v7, 0, v10);
    v5 = ((v10[1] - 0x61C8864680B583E9 + (v10[0] << 6) + (v10[0] >> 2)) ^ v10[0]) - 0x61C8864680B583E9;
  }

  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(a1, ((v6 >> 2) + (v6 << 6) + v5) ^ v6);
  if (result)
  {
    return (*(**(result + 8) + 24))(*(result + 8));
  }

  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::DynamicArray<re::RenderProfilerText>>(uint64_t a1, int a2, char *__s)
{
  v10[2] = *MEMORY[0x1E69E9840];
  {
    re::RenderGraphDataStore::tryGet<re::DynamicArray<re::RenderProfilerText>>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash = re::hashString("RenderGraphDataPipeData", v9);
  }

  v5 = 0x9E3779B97F4A7C17;
  v6 = re::RenderGraphDataStore::tryGet<re::DynamicArray<re::RenderProfilerText>>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash;
  v7 = strlen(__s);
  if (v7)
  {
    MurmurHash3_x64_128(__s, v7, 0, v10);
    v5 = ((v10[1] - 0x61C8864680B583E9 + (v10[0] << 6) + (v10[0] >> 2)) ^ v10[0]) - 0x61C8864680B583E9;
  }

  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(a1, ((v6 >> 2) + (v6 << 6) + v5) ^ v6);
  if (result)
  {
    return (*(**(result + 8) + 56))(*(result + 8));
  }

  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::Slice<re::UberClippingParametersEntry>>(uint64_t a1, int a2, char *__s)
{
  v10[2] = *MEMORY[0x1E69E9840];
  {
    re::RenderGraphDataStore::tryGet<re::Slice<re::UberClippingParametersEntry>>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash = re::hashString("RenderGraphDataPipeData", v9);
  }

  v5 = 0x9E3779B97F4A7C17;
  v6 = re::RenderGraphDataStore::tryGet<re::Slice<re::UberClippingParametersEntry>>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash;
  v7 = strlen(__s);
  if (v7)
  {
    MurmurHash3_x64_128(__s, v7, 0, v10);
    v5 = ((v10[1] - 0x61C8864680B583E9 + (v10[0] << 6) + (v10[0] >> 2)) ^ v10[0]) - 0x61C8864680B583E9;
  }

  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(a1, ((v6 >> 2) + (v6 << 6) + v5) ^ v6);
  if (result)
  {
    return (*(**(result + 8) + 120))(*(result + 8));
  }

  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::Slice<unsigned short>>(uint64_t a1, int a2, char *__s)
{
  v10[2] = *MEMORY[0x1E69E9840];
  {
    re::RenderGraphDataStore::tryGet<re::Slice<unsigned short>>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash = re::hashString("RenderGraphDataPipeData", v9);
  }

  v5 = 0x9E3779B97F4A7C17;
  v6 = re::RenderGraphDataStore::tryGet<re::Slice<unsigned short>>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash;
  v7 = strlen(__s);
  if (v7)
  {
    MurmurHash3_x64_128(__s, v7, 0, v10);
    v5 = ((v10[1] - 0x61C8864680B583E9 + (v10[0] << 6) + (v10[0] >> 2)) ^ v10[0]) - 0x61C8864680B583E9;
  }

  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(a1, ((v6 >> 2) + (v6 << 6) + v5) ^ v6);
  if (result)
  {
    return (*(**(result + 8) + 152))(*(result + 8));
  }

  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::ProbeContext>(uint64_t a1, int a2, char *__s)
{
  v10[2] = *MEMORY[0x1E69E9840];
  {
    re::RenderGraphDataStore::tryGet<re::ProbeContext>(char const*,char const*)::kRenderGraphDataPipeDataScopeHash = re::hashString("RenderGraphDataPipeData", v9);
  }

  v5 = 0x9E3779B97F4A7C17;
  v6 = re::RenderGraphDataStore::tryGet<re::ProbeContext>(char const*,char const*)::kRenderGraphDataPipeDataScopeHash;
  v7 = strlen(__s);
  if (v7)
  {
    MurmurHash3_x64_128(__s, v7, 0, v10);
    v5 = ((v10[1] - 0x61C8864680B583E9 + (v10[0] << 6) + (v10[0] >> 2)) ^ v10[0]) - 0x61C8864680B583E9;
  }

  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(a1, ((v6 >> 2) + (v6 << 6) + v5) ^ v6);
  if (result)
  {
    return (*(**(result + 8) + 184))(*(result + 8));
  }

  return result;
}

{
  v10[2] = *MEMORY[0x1E69E9840];
  {
    re::RenderGraphDataStore::tryGet<re::ProbeContext>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash = re::hashString("RenderGraphDataPipeData", v9);
  }

  v5 = 0x9E3779B97F4A7C17;
  v6 = re::RenderGraphDataStore::tryGet<re::ProbeContext>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash;
  v7 = strlen(__s);
  if (v7)
  {
    MurmurHash3_x64_128(__s, v7, 0, v10);
    v5 = ((v10[1] - 0x61C8864680B583E9 + (v10[0] << 6) + (v10[0] >> 2)) ^ v10[0]) - 0x61C8864680B583E9;
  }

  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(a1, ((v6 >> 2) + (v6 << 6) + v5) ^ v6);
  if (result)
  {
    return (*(**(result + 8) + 184))(*(result + 8));
  }

  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::BlurGenerationContext>(uint64_t a1, int a2, char *__s)
{
  v10[2] = *MEMORY[0x1E69E9840];
  {
    re::RenderGraphDataStore::tryGet<re::BlurGenerationContext>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash = re::hashString("RenderGraphDataPipeData", v9);
  }

  v5 = 0x9E3779B97F4A7C17;
  v6 = re::RenderGraphDataStore::tryGet<re::BlurGenerationContext>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash;
  v7 = strlen(__s);
  if (v7)
  {
    MurmurHash3_x64_128(__s, v7, 0, v10);
    v5 = ((v10[1] - 0x61C8864680B583E9 + (v10[0] << 6) + (v10[0] >> 2)) ^ v10[0]) - 0x61C8864680B583E9;
  }

  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(a1, ((v6 >> 2) + (v6 << 6) + v5) ^ v6);
  if (result)
  {
    return (*(**(result + 8) + 216))(*(result + 8));
  }

  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::SFBSystemShellBlurContext>(uint64_t a1, int a2, char *__s)
{
  v10[2] = *MEMORY[0x1E69E9840];
  {
    re::RenderGraphDataStore::tryGet<re::SFBSystemShellBlurContext>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash = re::hashString("RenderGraphDataPipeData", v9);
  }

  v5 = 0x9E3779B97F4A7C17;
  v6 = re::RenderGraphDataStore::tryGet<re::SFBSystemShellBlurContext>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash;
  v7 = strlen(__s);
  if (v7)
  {
    MurmurHash3_x64_128(__s, v7, 0, v10);
    v5 = ((v10[1] - 0x61C8864680B583E9 + (v10[0] << 6) + (v10[0] >> 2)) ^ v10[0]) - 0x61C8864680B583E9;
  }

  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(a1, ((v6 >> 2) + (v6 << 6) + v5) ^ v6);
  if (result)
  {
    return (*(**(result + 8) + 248))(*(result + 8));
  }

  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::IBLContext>(uint64_t a1, uint64_t a2)
{
  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(a1, a2);
  if (result)
  {
    v3 = *(**(result + 8) + 376);

    return v3();
  }

  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::BlurPlanesRenderFrameData>(uint64_t a1, int a2, char *__s)
{
  v10[2] = *MEMORY[0x1E69E9840];
  {
    re::RenderGraphDataStore::tryGet<re::BlurPlanesRenderFrameData>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash = re::hashString("RenderGraphDataPipeData", v9);
  }

  v5 = 0x9E3779B97F4A7C17;
  v6 = re::RenderGraphDataStore::tryGet<re::BlurPlanesRenderFrameData>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash;
  v7 = strlen(__s);
  if (v7)
  {
    MurmurHash3_x64_128(__s, v7, 0, v10);
    v5 = ((v10[1] - 0x61C8864680B583E9 + (v10[0] << 6) + (v10[0] >> 2)) ^ v10[0]) - 0x61C8864680B583E9;
  }

  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(a1, ((v6 >> 2) + (v6 << 6) + v5) ^ v6);
  if (result)
  {
    return (*(**(result + 8) + 416))(*(result + 8));
  }

  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::SceneCRWSReferencePosition>(uint64_t a1, uint64_t a2)
{
  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(a1, a2);
  if (result)
  {
    v3 = *(**(result + 8) + 912);

    return v3();
  }

  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::MeshSortingCollection>(uint64_t a1, uint64_t a2)
{
  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(a1, a2);
  if (result)
  {
    v3 = *(**(result + 8) + 976);

    return v3();
  }

  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::DepthMitigationRenderData>(uint64_t a1, uint64_t a2)
{
  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(a1, a2);
  if (result)
  {
    v3 = *(**(result + 8) + 1072);

    return v3();
  }

  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::UIShadowRenderData>(uint64_t a1, int a2, char *__s)
{
  v10[2] = *MEMORY[0x1E69E9840];
  {
    re::RenderGraphDataStore::tryGet<re::UIShadowRenderData>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash = re::hashString("RenderGraphDataPipeData", v9);
  }

  v5 = 0x9E3779B97F4A7C17;
  v6 = re::RenderGraphDataStore::tryGet<re::UIShadowRenderData>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash;
  v7 = strlen(__s);
  if (v7)
  {
    MurmurHash3_x64_128(__s, v7, 0, v10);
    v5 = ((v10[1] - 0x61C8864680B583E9 + (v10[0] << 6) + (v10[0] >> 2)) ^ v10[0]) - 0x61C8864680B583E9;
  }

  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(a1, ((v6 >> 2) + (v6 << 6) + v5) ^ v6);
  if (result)
  {
    return (*(**(result + 8) + 1168))(*(result + 8));
  }

  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::AnchorTransformData>(uint64_t a1, int a2, char *__s)
{
  v10[2] = *MEMORY[0x1E69E9840];
  {
    re::RenderGraphDataStore::tryGet<re::AnchorTransformData>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash = re::hashString("RenderGraphDataPipeData", v9);
  }

  v5 = 0x9E3779B97F4A7C17;
  v6 = re::RenderGraphDataStore::tryGet<re::AnchorTransformData>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash;
  v7 = strlen(__s);
  if (v7)
  {
    MurmurHash3_x64_128(__s, v7, 0, v10);
    v5 = ((v10[1] - 0x61C8864680B583E9 + (v10[0] << 6) + (v10[0] >> 2)) ^ v10[0]) - 0x61C8864680B583E9;
  }

  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(a1, ((v6 >> 2) + (v6 << 6) + v5) ^ v6);
  if (result)
  {
    return (*(**(result + 8) + 1200))(*(result + 8));
  }

  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::VirtualEnvironmentProbeContext>(uint64_t a1, uint64_t a2)
{
  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(a1, a2);
  if (result)
  {
    v3 = *(**(result + 8) + 1232);

    return v3();
  }

  return result;
}

void re::RuntimeRenderGraphData::~RuntimeRenderGraphData(re::RuntimeRenderGraphData *this)
{
  *this = &unk_1F5D03058;
  re::FixedArray<CoreIKTransform>::deinit(this + 1);
}

{
  *this = &unk_1F5D03058;
  re::FixedArray<CoreIKTransform>::deinit(this + 1);

  JUMPOUT(0x1E6906520);
}

re::IntrospectionMember *re::IntrospectionMember::IntrospectionMember(re::IntrospectionMember *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 3) = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 16);
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 7) = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 48);
  *(this + 16) = 0;
  return this;
}

re::DynamicString *re::SerializedReference<re::IntrospectionBase const*>::setString(uint64_t a1, const char *a2, uint64_t a3)
{
  re::SerializedReference<re::IntrospectionBase const*>::reset(a1);
  v6 = (*(*a3 + 32))(a3, 32, 8);
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *v6 = a3;
  *(v6 + 1) = 0;
  re::DynamicString::setCapacity(v6, 0);
  *(a1 + 8) = v6;
  v8[0] = a2;
  v8[1] = strlen(a2);
  return re::DynamicString::operator=(v6, v8);
}

uint64_t re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 24 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 24 * v4;
}

void re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(v9, v4, a2);
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
      re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::move(a1, v9);
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v9);
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

uint64_t re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(v4, *(v7 + v5 + 8) % *(v4 + 24));
        v8 = *(a2 + 16) + v5;
        v10 = *(v8 + 8);
        v9 = *(v8 + 16);
        *(result + 8) = v10;
        *(result + 16) = v9;
        v2 = *(a2 + 32);
      }

      v5 += 24;
    }
  }

  return result;
}

void re::RenderGraphDataWrapper::~RenderGraphDataWrapper(re::RenderGraphDataWrapper *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphScopeOutput::addTargetToLane(uint64_t a1, unint64_t *a2, double *a3, int a4)
{
  v8 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(a1 + 40, a2);
  if (v8)
  {
    goto LABEL_10;
  }

  v13 = 0u;
  v14 = 0u;
  v10 = 0uLL;
  v12 = 0;
  v11 = 0;
  v15 = 0;
  v16 = 0u;
  v17 = -1;
  v18 = 0;
  v19 = -1;
  v20 = 0;
  v21 = -1;
  re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::add(a1 + 40, a2, &v10);
  if (*(&v13 + 1))
  {
    if (v16)
    {
      (*(**(&v13 + 1) + 40))();
    }

    *&v16 = 0;
    v14 = 0uLL;
    *(&v13 + 1) = 0;
    ++v15;
  }

  if (v10.n128_u64[0] && v13)
  {
    (*(*v10.n128_u64[0] + 40))();
  }

  v8 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(a1 + 40, a2);
  if (v8)
  {
LABEL_10:
    *(v8 + 5) = *a3;
    if (a4)
    {
      re::DynamicArray<re::RenderGraphTargetHandle>::add(v8, a3);
    }
  }

  else
  {
    re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) ", "outputList", "addTargetToLane", 13);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::findEntry<re::WeakStringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 144 * v6 + 16;
  }
}

void re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::add(uint64_t a1, unint64_t *a2, __n128 *a3)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::findEntry<re::WeakStringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v7);
  if (HIDWORD(v8) == 0x7FFFFFFF)
  {
    re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addInternal<re::WeakStringID const&,re::RenderGraphScopeOutput::Lane>(a1, &v7, a2, a3);
  }
}

double re::DynamicArray<re::RenderGraphTargetHandle>::add(_anonymous_namespace_ *this, double *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RenderGraphTargetHandle>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 16 * v4);
  *v5 = 0.0;
  v5[1] = NAN;
  *v5 = *a2;
  result = a2[1];
  v5[1] = result;
  *(this + 2) = v4 + 1;
  ++*(this + 6);
  return result;
}

double re::RenderGraphScopeOutput::inheritPropertiesFromLane(uint64_t a1, unint64_t *a2, double *a3)
{
  v6 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(a1 + 88, a2);
  if (!v6)
  {
    v14 = 0u;
    v15 = 0u;
    v11 = 0uLL;
    v13 = 0;
    v12 = 0;
    v16 = 0;
    v17 = 0u;
    v18 = -1;
    v19 = 0;
    v20 = -1;
    v21 = 0;
    v22 = -1;
    re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::add(a1 + 88, a2, &v11);
    v6 = v9;
    if (*(&v14 + 1))
    {
      if (v17)
      {
        (*(**(&v14 + 1) + 40))();
      }

      *&v17 = 0;
      v15 = 0uLL;
      *(&v14 + 1) = 0;
      ++v16;
    }

    if (v11.n128_u64[0] && v14)
    {
      (*(*v11.n128_u64[0] + 40))();
    }
  }

  re::DynamicArray<re::RenderGraphTargetHandle>::add(v6, a3);
  v7 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(a1 + 40, a2);
  if (!v7)
  {
    v14 = 0u;
    v15 = 0u;
    v11 = 0uLL;
    v13 = 0;
    v12 = 0;
    v16 = 0;
    v17 = 0u;
    v18 = -1;
    v19 = 0;
    v20 = -1;
    v21 = 0;
    v22 = -1;
    re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::add(a1 + 40, a2, &v11);
    v7 = v10;
    if (*(&v14 + 1))
    {
      if (v17)
      {
        (*(**(&v14 + 1) + 40))();
      }

      *&v17 = 0;
      v15 = 0uLL;
      *(&v14 + 1) = 0;
      ++v16;
    }

    if (v11.n128_u64[0] && v14)
    {
      (*(*v11.n128_u64[0] + 40))();
    }
  }

  return re::DynamicArray<re::RenderGraphTargetHandle>::add(v7, a3);
}

{
  v6 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(a1 + 40, a2);
  if (!v6)
  {
    v14 = 0u;
    v15 = 0u;
    v11 = 0uLL;
    v13 = 0;
    v12 = 0;
    v16 = 0;
    v17 = 0u;
    v18 = -1;
    v19 = 0;
    v20 = -1;
    v21 = 0;
    v22 = -1;
    re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::add(a1 + 40, a2, &v11);
    v6 = v9;
    if (*(&v14 + 1))
    {
      if (v17)
      {
        (*(**(&v14 + 1) + 40))();
      }

      *&v17 = 0;
      v15 = 0uLL;
      *(&v14 + 1) = 0;
      ++v16;
    }

    if (v11.n128_u64[0] && v14)
    {
      (*(*v11.n128_u64[0] + 40))();
    }
  }

  re::DynamicArray<re::RenderGraphTargetHandle>::add((v6 + 40), a3);
  v7 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(a1 + 88, a2);
  if (!v7)
  {
    v14 = 0u;
    v15 = 0u;
    v11 = 0uLL;
    v13 = 0;
    v12 = 0;
    v16 = 0;
    v17 = 0u;
    v18 = -1;
    v19 = 0;
    v20 = -1;
    v21 = 0;
    v22 = -1;
    re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::add(a1 + 88, a2, &v11);
    v7 = v10;
    if (*(&v14 + 1))
    {
      if (v17)
      {
        (*(**(&v14 + 1) + 40))();
      }

      *&v17 = 0;
      v15 = 0uLL;
      *(&v14 + 1) = 0;
      ++v16;
    }

    if (v11.n128_u64[0] && v14)
    {
      (*(*v11.n128_u64[0] + 40))();
    }
  }

  return re::DynamicArray<re::RenderGraphTargetHandle>::add((v7 + 40), a3);
}

void re::RenderGraphScopeOutput::addBufferToLane(uint64_t a1, unint64_t *a2, double *a3, int a4)
{
  v8 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(a1 + 88, a2);
  if (v8)
  {
    goto LABEL_10;
  }

  v13 = 0u;
  v14 = 0u;
  v10 = 0uLL;
  v12 = 0;
  v11 = 0;
  v15 = 0;
  v16 = 0u;
  v17 = -1;
  v18 = 0;
  v19 = -1;
  v20 = 0;
  v21 = -1;
  re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::add(a1 + 88, a2, &v10);
  if (*(&v13 + 1))
  {
    if (v16)
    {
      (*(**(&v13 + 1) + 40))();
    }

    *&v16 = 0;
    v14 = 0uLL;
    *(&v13 + 1) = 0;
    ++v15;
  }

  if (v10.n128_u64[0] && v13)
  {
    (*(*v10.n128_u64[0] + 40))();
  }

  v8 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(a1 + 88, a2);
  if (v8)
  {
LABEL_10:
    *(v8 + 96) = *a3;
    if (a4)
    {
      re::DynamicArray<re::RenderGraphTargetHandle>::add((v8 + 40), a3);
    }
  }

  else
  {
    re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) ", "outputList", "addBufferToLane", 49);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::findEntry<re::WeakStringID>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  if (*(v7 + 144 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 144 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 144 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 144 * v8) & 0x7FFFFFFF;
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

__n128 re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addInternal<re::WeakStringID const&,re::RenderGraphScopeOutput::Lane>(uint64_t a1, uint64_t a2, unint64_t *a3, __n128 *a4)
{
  v7 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  v7[1].n128_u64[0] = 0;
  ++v7;
  v7[2].n128_u64[0] = 0;
  v7[1].n128_u32[2] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  v9 = a4->n128_u64[0];
  v10 = a4->n128_u64[1];
  v7[-1].n128_u64[1] = v8;
  v7->n128_u64[0] = v9;
  v7->n128_u64[1] = v10;
  a4->n128_u64[0] = 0;
  a4->n128_u64[1] = 0;
  v11 = v7[1].n128_u64[0];
  v7[1].n128_u64[0] = a4[1].n128_u64[0];
  a4[1].n128_u64[0] = v11;
  v12 = v7[2].n128_u64[0];
  v7[2].n128_u64[0] = a4[2].n128_u64[0];
  a4[2].n128_u64[0] = v12;
  ++a4[1].n128_u32[2];
  ++v7[1].n128_u32[2];
  v7[4].n128_u64[1] = 0;
  v7[3].n128_u64[0] = 0;
  v7[3].n128_u64[1] = 0;
  v7[2].n128_u64[1] = 0;
  v7[4].n128_u32[0] = 0;
  v13 = a4[3].n128_u64[0];
  v7[2].n128_u64[1] = a4[2].n128_u64[1];
  v7[3].n128_u64[0] = v13;
  a4[2].n128_u64[1] = 0;
  a4[3].n128_u64[0] = 0;
  v14 = v7[3].n128_u64[1];
  v7[3].n128_u64[1] = a4[3].n128_u64[1];
  a4[3].n128_u64[1] = v14;
  v15 = v7[4].n128_u64[1];
  v7[5].n128_u64[0] = 0;
  v16 = a4[5].n128_u64[0];
  v7[4].n128_u64[1] = a4[4].n128_u64[1];
  a4[4].n128_u64[1] = v15;
  ++a4[4].n128_u32[0];
  ++v7[4].n128_u32[0];
  v7[5].n128_u64[1] = -1;
  v7[5].n128_u64[0] = v16;
  v7[5].n128_u64[1] = a4[5].n128_u64[1];
  v7[6].n128_u64[0] = 0;
  v7[6].n128_u64[1] = -1;
  v7[6].n128_u64[0] = a4[6].n128_u64[0];
  v7[6].n128_u64[1] = a4[6].n128_u64[1];
  result = a4[7];
  v7[7] = result;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v35, 0, 36);
          *&v35[36] = 0x7FFFFFFFLL;
          re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(v35, v9, v8);
          v11 = *v35;
          *v35 = *a1;
          *a1 = v11;
          v12 = *&v35[16];
          *&v35[16] = *(a1 + 16);
          *(a1 + 16) = v12;
          v14 = *&v35[24];
          *&v35[24] = *(a1 + 24);
          v13 = *&v35[32];
          *(a1 + 24) = v14;
          ++*&v35[40];
          v15 = v13;
          if (v13)
          {
            v16 = 0;
            v17 = 128;
            do
            {
              v18 = (*&v35[16] + v17);
              if ((*(*&v35[16] + v17 - 128) & 0x80000000) != 0)
              {
                v19 = 0xBF58476D1CE4E5B9 * (*(v18 - 15) ^ (*(v18 - 15) >> 30));
                v20 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) ^ ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) >> 31)) % *(a1 + 24));
                v21 = *(v18 - 15);
                *(v20 + 48) = 0;
                *(v20 + 40) = 0;
                *(v20 + 24) = 0;
                *(v20 + 32) = 0;
                *(v20 + 8) = v21;
                *(v20 + 16) = 0;
                v22 = *(v18 - 13);
                *(v20 + 16) = *(v18 - 14);
                *(v20 + 24) = v22;
                *(v18 - 14) = 0;
                *(v18 - 13) = 0;
                v23 = *(v20 + 32);
                *(v20 + 32) = *(v18 - 12);
                *(v18 - 12) = v23;
                v24 = *(v20 + 48);
                *(v20 + 48) = *(v18 - 10);
                *(v18 - 10) = v24;
                ++*(v18 - 22);
                ++*(v20 + 40);
                *(v20 + 88) = 0;
                *(v20 + 64) = 0;
                *(v20 + 72) = 0;
                *(v20 + 56) = 0;
                *(v20 + 80) = 0;
                v25 = *(v18 - 8);
                *(v20 + 56) = *(v18 - 9);
                *(v20 + 64) = v25;
                *(v18 - 9) = 0;
                *(v18 - 8) = 0;
                v26 = *(v20 + 72);
                *(v20 + 72) = *(v18 - 7);
                *(v18 - 7) = v26;
                v27 = *(v20 + 88);
                *(v20 + 96) = 0;
                v28 = *(v18 - 4);
                *(v20 + 88) = *(v18 - 5);
                *(v18 - 5) = v27;
                ++*(v18 - 12);
                ++*(v20 + 80);
                *(v20 + 104) = -1;
                *(v20 + 96) = v28;
                *(v20 + 104) = *(v18 - 3);
                *(v20 + 112) = 0;
                *(v20 + 120) = -1;
                *(v20 + 112) = *(v18 - 2);
                *(v20 + 120) = *(v18 - 1);
                *(v20 + 128) = *v18;
              }

              ++v16;
              v17 += 144;
            }

            while (v16 < v15);
          }

          re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v35);
        }
      }

      else
      {
        if (v8)
        {
          v31 = 2 * v7;
        }

        else
        {
          v31 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v29 = *(a1 + 16);
    v30 = *(v29 + 144 * v4);
  }

  else
  {
    v29 = *(a1 + 16);
    v30 = *(v29 + 144 * v4);
    *(a1 + 36) = v30 & 0x7FFFFFFF;
  }

  v32 = 144 * v4;
  *(v29 + v32) = v30 | 0x80000000;
  v33 = *(a1 + 8);
  *(v29 + v32) = *(v33 + 4 * a2) | 0x80000000;
  *(v33 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v29 + 144 * v4;
}

void re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 144 * v10, 16);
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

double re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(uint64_t *a1)
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
          v8 = v6 + v4;
          *v8 = v7 & 0x7FFFFFFF;
          *(v8 + 8) = 0;
          re::DynamicArray<unsigned long>::deinit(v6 + v4 + 56);
          re::DynamicArray<unsigned long>::deinit(v8 + 16);
          v3 = *(a1 + 8);
        }

        v4 += 144;
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

void *re::DynamicArray<re::RenderGraphTargetHandle>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::RenderGraphTargetHandle>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RenderGraphTargetHandle>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::RenderGraphTargetHandle>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RenderGraphTargetHandle>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_15;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_15:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v8 + 16 * v9);
        v11 = v7;
        v12 = v5[4];
        do
        {
          *v11 = 0;
          v11[1] = -1;
          *v11 = *v12;
          v11[1] = v12[1];
          v12 += 2;
          v11 += 2;
        }

        while (v12 != v10);
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_15;
    }
  }

  return result;
}

__n64 MetalEmulation::getCubeDir(MetalEmulation *this, int a2, int a3, float a4)
{
  result.n64_f32[0] = (((2 * this) | 1u) / a4) + -1.0;
  v6 = (((2 * a2) | 1u) / a4) + -1.0;
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v7 = -1.0;
        break;
      case 4:
        v7 = -v6;
        break;
      case 5:
        result.n64_f32[0] = -result.n64_f32[0];
        v7 = -v6;
        break;
      default:
LABEL_12:
        v7 = 0.0;
        result.n64_u32[0] = 0;
        break;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v7 = -v6;
      result.n64_u32[0] = -1.0;
      goto LABEL_15;
    }

    v7 = 1.0;
    if (a3 != 2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = -v6;
    result.n64_u32[0] = 1.0;
  }

LABEL_15:
  result.n64_f32[1] = v7;
  return result;
}

uint64_t MetalEmulation::hash3D(__n128 a1)
{
  v1 = vdup_n_s32(0x45D9F3Bu);
  v2 = vmul_s32(veor_s8(vshr_n_u32(a1.n128_u64[0], 0x10uLL), a1.n128_u64[0]), v1);
  v3 = vmul_s32(veor_s8(vshr_n_u32(v2, 0x10uLL), v2), v1);
  v4 = veor_s8(vshr_n_u32(v3, 0x10uLL), v3);
  v5 = (v4.i32[1] + (v4.i32[0] << 6) + (v4.i32[0] >> 2) - 1640531527) ^ v4.i32[0];
  v6 = (73244475 * (a1.n128_u32[2] ^ HIWORD(a1.n128_u32[2]))) ^ ((73244475 * (a1.n128_u32[2] ^ HIWORD(a1.n128_u32[2]))) >> 16);
  return (((73244475 * v6) ^ ((73244475 * v6) >> 16)) + (v5 << 6) + (v5 >> 2) - 1640531527) ^ v5;
}

uint64_t ___ZN2re22MaterialParameterTable16kDefaultNameHashEv_block_invoke()
{
  v1[2] = *MEMORY[0x1E69E9840];
  result = MurmurHash3_x64_128("Default", 7uLL, 0, v1);
  re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash = (v1[1] + (v1[0] << 6) + (v1[0] >> 2) - 0x61C8864680B583E9) ^ v1[0];
  return result;
}

uint64_t ___ZN2re22MaterialParameterTable13kFadeNameHashEv_block_invoke()
{
  v1[2] = *MEMORY[0x1E69E9840];
  result = MurmurHash3_x64_128("Fade", 4uLL, 0, v1);
  re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash = (v1[1] + (v1[0] << 6) + (v1[0] >> 2) - 0x61C8864680B583E9) ^ v1[0];
  return result;
}

BOOL re::MaterialParameterHandle::isParameterType(uint64_t a1, int a2)
{
  v2 = *(a1 + 12) & 7;
  if (v2 > 2)
  {
    if (v2 == 4)
    {
      v3 = 192;
      return v3 == a2;
    }

    if (v2 == 3)
    {
      v3 = 128;
      return v3 == a2;
    }

    goto LABEL_8;
  }

  if (v2 != 1)
  {
    if (v2 == 2)
    {
      v3 = 64;
      return v3 == a2;
    }

LABEL_8:
    v3 = 0;
    return v3 == a2;
  }

  v3 = *(a1 + 24);
  if (v3 == 48 || v3 == 34)
  {
    return a2 == 34 || a2 == 48;
  }

  return v3 == a2;
}

uint64_t re::TextureParameterTable::operator=(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    re::DynamicArray<re::TextureViews<re::TextureHandle>>::deinit(a1 + 200);
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(a1 + 136);
    if (a2[25])
    {
      v5 = a2[27];
      re::DynamicArray<re::TextureViews<re::TextureHandle>>::setCapacity((a1 + 200), v5);
      ++*(a1 + 224);
      v32 = a2 + 17;
      v6 = a2[19];
      if (v6 >= 0x10)
      {
        v7 = 0;
        v8 = a2[17];
        v9 = v6 >> 4;
        while (1)
        {
          v10 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v8), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v33 = v10 ^ 0xFFFFLL;
          if (v10 != 0xFFFFLL)
          {
            break;
          }

          v7 -= 16;
          ++v8;
          if (!--v9)
          {
            goto LABEL_10;
          }
        }

        v11 = __clz(__rbit64(v10 ^ 0xFFFFLL));
        v12 = v11 - v7;
        v34 = v11 - v7;
        if (v11 + 1 != v7)
        {
          do
          {
            v13 = v32[1] + 16 * v12;
            v14 = *(v13 + 9);
            v31 = *v13;
            v15 = re::TextureHandleTable::textureHandleAt((a2 + 16), v14);
            re::TextureHandle::TextureHandle(v30, v15);
            re::TextureHandleTable::setTexture((a1 + 128), &v31, v30);
            re::TextureHandle::invalidate(v30);
            v31 = 0;
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v32);
            v12 = v34;
          }

          while (v34 != -1);
        }
      }
    }

LABEL_10:
    re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(a1 + 304);
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(a1 + 240);
    *(a1 + 344) = 0;
    if (a2[38])
    {
      v17 = a2[40];
      re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity((a1 + 304), v17);
      ++*(a1 + 328);
      v32 = a2 + 30;
      v18 = a2[32];
      if (v18 >= 0x10)
      {
        v19 = 0;
        v20 = a2[30];
        v21 = v18 >> 4;
        while (1)
        {
          v22 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v20), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v33 = v22 ^ 0xFFFFLL;
          if (v22 != 0xFFFFLL)
          {
            break;
          }

          v19 -= 16;
          ++v20;
          if (!--v21)
          {
            goto LABEL_20;
          }
        }

        v23 = __clz(__rbit64(v22 ^ 0xFFFFLL));
        v24 = v23 - v19;
        v34 = v23 - v19;
        if (v23 + 1 != v19)
        {
          do
          {
            v25 = v32[1] + 16 * v24;
            v26 = *(v25 + 8);
            v29 = *v25;
            v28 = *re::SamplerTable::samplerAt((a2 + 30), v26);
            re::SamplerTable::setSampler((a1 + 240), &v29, &v28);
            if (v28)
            {

              v28 = 0;
            }

            v29 = 0;
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v32);
            v24 = v34;
          }

          while (v34 != -1);
        }
      }
    }

LABEL_20:
    re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::copy(a1, a2);
    re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::copy((a1 + 64), (a2 + 8));
    re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::copy((a1 + 352), (a2 + 44));
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::copy((a1 + 416), (a2 + 52));
  }

  return a1;
}

void re::TextureHandleTable::setTexture(int8x16_t **a1, uint64_t *a2, os_unfair_lock_s **a3)
{
  re::TextureHandle::metalTexture(a3, &v11);
  v6 = v11;
  if (v11)
  {
    re::TextureHandle::metalTexture(a3, &v10);
    v7 = v10;
    v8 = [v10 protectionOptions];
    if (v7)
    {
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *a2;
  re::TextureTableImpl<re::TextureHandle>::setTexture(a1, &v9, a3, v8);
}

unint64_t re::TextureHandleTable::textureHandleAt(re::TextureHandleTable *this, unint64_t a2)
{
  if (*(this + 11) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 13) + 40 * a2;
}

unint64_t re::SamplerTable::samplerAt(re::SamplerTable *this, unint64_t a2)
{
  if (*(this + 10) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 12) + 8 * a2;
}

uint64_t *re::TextureParameterTable::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap(a1, a2);
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap(a1 + 8, a2 + 8);
    if (a2[25])
    {
      re::TextureTableImpl<re::TextureHandle>::operator=((a1 + 16), (a2 + 16));
    }

    if (a2[38])
    {
      re::SamplerTable::operator=(a1 + 30, a2 + 30);
    }

    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap(a1 + 44, a2 + 44);
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap(a1 + 52, a2 + 52);
  }

  return a1;
}

uint64_t *re::SamplerTable::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap(a1, a2);
  }

  re::DynamicArray<re::TextureViews<re::TextureHandle>>::operator=((a1 + 8), (a2 + 8));
  a1[13] = a2[13];
  return a1;
}

double re::TextureParameterTable::deinit(re::TextureParameterTable *this)
{
  re::DynamicArray<re::TextureViews<re::TextureHandle>>::deinit(this + 200);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 136);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(this + 304);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 240);
  *(this + 43) = 0;
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(this);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(this + 64);
  re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::deinit(this + 352);

  return re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 416);
}

void *re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::clear(void *result)
{
  v1 = result;
  result[5] = 0;
  result[6] = 0;
  v2 = result[2];
  result[3] = 0;
  result[4] = v2;
  v12[0] = result;
  if (v2 >= 0x10)
  {
    v3 = 0;
    v4 = *result;
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
        goto LABEL_9;
      }
    }

    v7 = __clz(__rbit64(v6 ^ 0xFFFFLL));
    v8 = v7 - v3;
    v13 = v7 - v3;
    if (v7 + 1 != v3)
    {
      do
      {
        v9 = (v1[1] + 40 * v8);
        v9[4] = 0;
        v9[2] = 0;
        *v9 = 0;
        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v12);
        v8 = v13;
      }

      while (v13 != -1);
      v2 = v1[2];
    }
  }

LABEL_9:
  if (v2 >= 0x10)
  {
    v10 = 0;
    *&v11 = -1;
    *(&v11 + 1) = -1;
    do
    {
      *(*v1 + 16 * v10++) = v11;
    }

    while (v10 < v1[2] >> 4);
  }

  return result;
}

void *re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::clear(void *result)
{
  v1 = result;
  result[5] = 0;
  result[6] = 0;
  v2 = result[2];
  result[3] = 0;
  result[4] = v2;
  v12[0] = result;
  if (v2 >= 0x10)
  {
    v3 = 0;
    v4 = *result;
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
        goto LABEL_9;
      }
    }

    v7 = __clz(__rbit64(v6 ^ 0xFFFFLL));
    v8 = v7 - v3;
    v13 = v7 - v3;
    if (v7 + 1 != v3)
    {
      do
      {
        v9 = (v1[1] + 16 * v8);
        *v9 = 0;
        v9[1] = 0;
        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v12);
        v8 = v13;
      }

      while (v13 != -1);
      v2 = v1[2];
    }
  }

LABEL_9:
  if (v2 >= 0x10)
  {
    v10 = 0;
    *&v11 = -1;
    *(&v11 + 1) = -1;
    do
    {
      *(*v1 + 16 * v10++) = v11;
    }

    while (v10 < v1[2] >> 4);
  }

  return result;
}

uint64_t *re::ShaderParameterTable::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap(a1, a2);
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap(a1 + 8, a2 + 8);
    re::ConstantTable::operator=((a1 + 16), (a2 + 16));
    re::BufferTable::operator=((a1 + 30), (a2 + 30));
  }

  return a1;
}

uint64_t re::ConstantTable::operator=(uint64_t a1, uint64_t a2)
{
  re::DynamicArray<re::internal::DeferredUnregister *>::operator=(a1 + 8, a2 + 8);
  if (a1 != a2)
  {
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((a1 + 48), (a2 + 48));
  }

  return a1;
}

double re::ShaderParameterTable::deinit(re::ShaderParameterTable *this)
{
  re::DynamicArray<unsigned long>::deinit(this + 136);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 176);
  re::BufferTable::deinit((this + 240));
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(this);

  return re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(this + 64);
}

uint64_t re::MaterialParameterTable::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::ShaderParameterTable::operator=((a1 + 24), (a2 + 24));
    re::TextureParameterTable::operator=((a1 + 552), (a2 + 552));
    re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::operator=(a1 + 1032, a2 + 1032);
    if (*(a1 + 1080))
    {
      if (*(a2 + 1080))
      {
        *(a1 + 1081) = *(a2 + 1081);
      }

      else
      {
        *(a1 + 1080) = 0;
      }
    }

    else if (*(a2 + 1080))
    {
      *(a1 + 1080) = 1;
      *(a1 + 1081) = *(a2 + 1081);
    }

    if (*(a1 + 1092))
    {
      if ((*(a2 + 1092) & 1) == 0)
      {
        *(a1 + 1092) = 0;
LABEL_14:
        *(a1 + 1112) = *(a2 + 1112);
        *(a1 + 1120) = *(a2 + 1120);
        return a1;
      }
    }

    else
    {
      if ((*(a2 + 1092) & 1) == 0)
      {
        goto LABEL_14;
      }

      *(a1 + 1092) = 1;
    }

    v4 = *(a2 + 1096);
    *(a1 + 1104) = *(a2 + 1104);
    *(a1 + 1096) = v4;
    goto LABEL_14;
  }

  return a1;
}

uint64_t re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      v4 = *a1 == *a2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
    }

    else
    {
      re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(a1, v5);
        }

        re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 28);
        if (*(a1 + 24) < v4)
        {
          re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(a1, v4);
        }

        re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::copy(a1, a2);
        ++*(a1 + 40);
      }
    }

    else
    {
      v5 = *a2;
      if (*a2)
      {
        if (*(a2 + 28) <= 3u)
        {
          v6 = 3;
        }

        else
        {
          v6 = *(a2 + 28);
        }

        re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(a1, v5, v6);
        re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::copy(a1, a2);
      }
    }
  }

  return a1;
}

uint64_t re::MaterialParameterTable::MaterialParameterTable(uint64_t a1, uint64_t *a2, void *a3)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5CD3BF8;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(v6 + 24) = 0u;
  *(a1 + 152) = &unk_1F5CC38C8;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 400) = 0;
  *(a1 + 352) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 424) = 1;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 432) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 464) = 0;
  *(a1 + 536) = 0;
  *(a1 + 544) = 0;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0;
  re::ShaderParameterTable::operator=((v6 + 24), a2);
  *(a1 + 784) = 0;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = &unk_1F5CC8148;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 868) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 1016) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 888) = 0u;
  re::TextureParameterTable::operator=(a1 + 552, a3);
  *(a1 + 1032) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1064) = 0x7FFFFFFF00000000;
  *(a1 + 1072) = 0;
  *(a1 + 1080) = 0;
  *(a1 + 1092) = 0;
  *(a1 + 1120) = 0;
  *(a1 + 1122) = 0;
  return a1;
}

unint64_t re::MaterialParameterTable::handle@<X0>(re::MaterialParameterTable *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 25, a2);
  if (v6 != -1)
  {
    v7 = *(a1 + 26) + 16 * v6;
    v8 = *(v7 + 8);
    v9 = *(v7 + 10);
    result = re::MaterialParameterTable::hash(a1);
    v11 = *(v7 + 11);
    v12 = 1;
    goto LABEL_10;
  }

  if (re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1 + 3, a2) != -1)
  {
    result = re::MaterialParameterTable::hash(a1);
    v8 = 0;
    v9 = 0;
    v11 = 0;
    v12 = 17;
    goto LABEL_10;
  }

  v13 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 86, a2);
  if (v13 != -1)
  {
    v8 = *(*(a1 + 87) + 16 * v13 + 9);
    result = re::MaterialParameterTable::hash(a1);
    v11 = 0;
    v12 = 2;
LABEL_7:
    v9 = 1;
    goto LABEL_10;
  }

  if (re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1 + 69, a2) != -1)
  {
    result = re::MaterialParameterTable::hash(a1);
    v8 = 0;
    v9 = 0;
    v11 = 0;
    v12 = 18;
    goto LABEL_10;
  }

  v14 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 33, a2);
  if (v14 != -1)
  {
    v8 = *(*(a1 + 34) + 16 * v14 + 8);
    result = re::MaterialParameterTable::hash(a1);
    v11 = 0;
    v12 = 3;
    goto LABEL_7;
  }

  if (re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1 + 11, a2) != -1)
  {
    result = re::MaterialParameterTable::hash(a1);
    v8 = 0;
    v9 = 0;
    v11 = 0;
    v12 = 19;
    goto LABEL_10;
  }

  v15 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 99, a2);
  if (v15 != -1)
  {
    v8 = *(*(a1 + 100) + 16 * v15 + 8);
    result = re::MaterialParameterTable::hash(a1);
    v11 = 0;
    v12 = 4;
    goto LABEL_7;
  }

  if (re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1 + 77, a2) == -1)
  {
    v8 = 0;
    v9 = 0;
    v12 = 0;
    result = 0;
    v11 = 0;
  }

  else
  {
    result = re::MaterialParameterTable::hash(a1);
    v8 = 0;
    v9 = 0;
    v11 = 0;
    v12 = 20;
  }

LABEL_10:
  *a3 = *a2;
  *(a3 + 8) = v8;
  *(a3 + 10) = v9;
  *(a3 + 12) = v12;
  *(a3 + 16) = result;
  *(a3 + 24) = v11;
  return result;
}

unint64_t re::MaterialParameterTable::hash(re::MaterialParameterTable *this)
{
  if (*(this + 1120) == 1)
  {
    return *(this + 139);
  }

  v2 = (*(this + 17) + ((*(this + 75) - 0x61C8864680B583E9) << 6) + ((*(this + 75) - 0x61C8864680B583E9) >> 2) - 0x61C8864680B583E9) ^ (*(this + 75) - 0x61C8864680B583E9);
  v3 = (*(this + 83) + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v4 = (*(this + 92) + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
  v5 = (*(this + 39) + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9) ^ v4;
  v6 = (*(this + 105) + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v7 = (*(this + 9) + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9) ^ v6;
  v8 = (*(this + 31) + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583E9) ^ v7;
  v9 = (*(this + 119) + (v8 << 6) + (v8 >> 2) - 0x61C8864680B583E9) ^ v8;
  v1 = (*(this + 127) + (v9 << 6) + (v9 >> 2) - 0x61C8864680B583E9) ^ v9;
  if (*(this + 1080) == 1)
  {
    if (*(this + 1081) == 255)
    {
      v11 = 0x9E3779B97F4A7C17;
    }

    else
    {
      v10 = 0xBF58476D1CE4E5B9 * (*(this + 1081) ^ (*(this + 1081) >> 30));
      v11 = ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31)) - 0x61C8864680B583E9;
    }

    v1 ^= (v1 >> 2) + (v1 << 6) + v11;
  }

  if (*(this + 1092) == 1)
  {
    v12 = ((v1 << 6) - 0x61C8864680B583E9 + (v1 >> 2) + *(this + 274)) ^ v1;
    v13 = (*(this + 275) - 0x61C8864680B583E9 + (v12 << 6) + (v12 >> 2)) ^ v12;
    v1 = (*(this + 276) - 0x61C8864680B583E9 + (v13 << 6) + (v13 >> 2)) ^ v13;
  }

  *(this + 1120) = 1;
  *(this + 139) = v1;
  return v1;
}

BOOL re::MaterialParameterTable::BOOLValue(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 176) <= v2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 192) + v2) != 0;
}

float re::MaterialParameterTable::floatValue(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 176) <= v2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 192) + v2);
}

uint64_t re::MaterialParameterTable::intValue(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 176) <= v2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 192) + v2);
}

uint64_t re::MaterialParameterTable::vector2FValue(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 176) <= v2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 192) + v2);
}

double re::MaterialParameterTable::int2Value(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 176) <= v2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 192) + v2);
}

double re::MaterialParameterTable::vector3FValue(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 176) <= v2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 192) + v2);
}

double re::MaterialParameterTable::int3Value(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 176) <= v2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 192) + v2);
}

uint64_t re::MaterialParameterTable::vector4FValue(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 176) <= v2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 192) + v2);
}

__n128 re::MaterialParameterTable::int4Value(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 176) <= v2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 192) + v2);
}

__n128 re::MaterialParameterTable::matrix3x3FValue@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>, __n128 a4@<Q0>, __n128 a5@<Q1>, __n128 a6@<Q2>)
{
  v6 = *(a2 + 8);
  if (*(a1 + 176) <= v6)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v7 = *(a1 + 192) + v6;
  a4.n128_u64[0] = *v7;
  a5.n128_u64[0] = *(v7 + 16);
  a6.n128_u64[0] = *(v7 + 32);
  a4.n128_u32[2] = *(v7 + 8);
  a5.n128_u32[2] = *(v7 + 24);
  a6.n128_u32[2] = *(v7 + 40);
  *a3 = a4;
  a3[1] = a5;
  a3[2] = a6;
  result.n128_u64[0] = a4.n128_u64[0];
  result.n128_u32[2] = a4.n128_u32[2];
  return result;
}

__n128 re::MaterialParameterTable::matrix4x4FValue@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = *(a2 + 8);
  if (*(a1 + 176) <= v3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(a1 + 192) + v3;
  result = *v4;
  v6 = *(v4 + 16);
  v7 = *(v4 + 32);
  v8 = *(v4 + 48);
  *a3 = *v4;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v8;
  return result;
}

unint64_t re::BufferTable::bufferAt(re::BufferTable *this, unint64_t a2)
{
  if (*(this + 10) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 12) + 24 * a2;
}

void re::MaterialParameterTable::bindingValue(re *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 12) & 7;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      *buf = *a2;
      v7 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1 + 11, buf);
      v8 = *(a1 + 12);
      goto LABEL_17;
    }

    if (v6 == 4)
    {
      *buf = *a2;
      v7 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1 + 77, buf);
      v8 = *(a1 + 78);
      goto LABEL_17;
    }
  }

  else
  {
    if (v6 == 1)
    {
      *buf = *a2;
      v7 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1 + 3, buf);
      v8 = *(a1 + 4);
      goto LABEL_17;
    }

    if (v6 == 2)
    {
      *buf = *a2;
      v7 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1 + 69, buf);
      v8 = *(a1 + 70);
LABEL_17:
      v14 = v8 + 40 * v7;
      *a3 = *(v14 + 8);
      *(a3 + 8) = *(v14 + 16);
      *(a3 + 16) = *(v14 + 24);
      *(a3 + 24) = *(v14 + 32);
      return;
    }
  }

  v9 = *re::graphicsLogObjects(a1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v15 = *a2;
    if (*a2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = 0;
    }

    else if (v15)
    {
      v16 = re::WeakStringID::debugStr(void)const::msg;
      snprintf(re::WeakStringID::debugStr(void)const::msg, 0x50uLL, "%llu", v15);
    }

    else
    {
      v16 = &str_67;
    }

    *buf = 136315138;
    *&buf[4] = v16;
    _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Attempted to get a binding from an invalid handle %s", buf, 0xCu);
  }

  *a3 = 3;
  v10 = re::StringID::invalid(buf);
  v11 = buf[0];
  *(a3 + 8) = *buf >> 1;
  if (v11)
  {
    if (buf[0])
    {
    }
  }

  *(a3 + 16) = 0;
  v12 = re::StringID::invalid(buf);
  v13 = buf[0];
  *(a3 + 24) = *buf >> 1;
  if (v13)
  {
    if (buf[0])
    {
    }
  }
}

uint64_t re::MaterialParameterTable::buildPerFrameDestructor(re::MaterialParameterTable *this, re::Allocator *a2)
{
  v6[5] = *MEMORY[0x1E69E9840];
  result = (*(*a2 + 24))(a2);
  if ((result & 1) == 0 && (*(this + 96) || *(this + 43) || *(this + 109) || *(this + 6) || *(this + 14) || *(this + 72) || *(this + 80)))
  {
    v5 = re::globalAllocators(result)[2];
    v6[0] = &unk_1F5D03170;
    v6[3] = v5;
    v6[4] = v6;
    (*(*a2 + 16))(a2, this, v6);
    return re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v6);
  }

  return result;
}

void *re::MaterialParameterTable::passTechniqueHashTable(re::MaterialParameterTable *this, uint64_t a2, int a3)
{
  v7 = a2;
  result = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 1032, &v7);
  if (!result)
  {
    if (!a3)
    {
      return &re::MaterialParameterTable::passTechniqueHashTable(unsigned long,BOOL)const::kDummy;
    }

    if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
    {
      dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
    }

    v6 = re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash;
    result = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 1032, &v6);
    if (!result)
    {
      return &re::MaterialParameterTable::passTechniqueHashTable(unsigned long,BOOL)const::kDummy;
    }
  }

  return result;
}

double re::MaterialParameterTable::initPassTechniqueMappings(re::MaterialParameterTable *this, re::Allocator *a2, signed int a3, uint64_t a4)
{
  v11 = a4;
  if (!*(this + 129))
  {
    re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(this + 1032, a2, 1);
  }

  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v10 = 0x7FFFFFFFLL;
  re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(v8, a2, a3);
  re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(this + 1032, &v11, v8);
  return re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v8);
}

void re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 72 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_75, 4 * v10);
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

uint64_t re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addInternal<unsigned long const&,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 72 * HIDWORD(v9) + 16;
  }
}

{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v11);
  if (HIDWORD(v12) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 72 * HIDWORD(v12) + 16;
  }

  v7 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, v12, v11);
  v8 = *a2;
  *(v7 + 16) = 0u;
  v9 = v7 + 16;
  *(v7 + 8) = v8;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0u;
  *(v7 + 52) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v7 + 16), a3);
  ++*(a1 + 40);
  return v9;
}

uint64_t re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addOrReplace(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  v7 = HIDWORD(v11);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, v11, v10);
    *(v8 + 8) = *a2;
    result = re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::HashTable(v8 + 16, a3);
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    return re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::operator=(*(a1 + 16) + 72 * v7 + 16, a3);
  }

  return result;
}

uint64_t re::MaterialParameterTable::appendPassTechniqueMappingsFrom(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v13 = a3;
  if (!*(a1 + 129))
  {
  }

  result = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a1 + 1032, &v13);
  if (!result)
  {
    return re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addOrReplace(a1 + 1032, &v13, a2);
  }

  v6 = result;
  v7 = *(a2 + 32);
  if (v7)
  {
    v8 = 0;
    v9 = *(a2 + 16);
    while (1)
    {
      v10 = *v9;
      v9 += 6;
      if (v10 < 0)
      {
        break;
      }

      if (v7 == ++v8)
      {
        LODWORD(v8) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  if (v8 != v7)
  {
    v11 = *(a2 + 16);
    do
    {
      result = re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(v6, (v11 + 24 * v8 + 8), (v11 + 24 * v8 + 16));
      if (*(a2 + 32) <= (v8 + 1))
      {
        v12 = v8 + 1;
      }

      else
      {
        v12 = *(a2 + 32);
      }

      v11 = *(a2 + 16);
      while (v12 - 1 != v8)
      {
        LODWORD(v8) = v8 + 1;
        if ((*(v11 + 24 * v8) & 0x80000000) != 0)
        {
          goto LABEL_21;
        }
      }

      LODWORD(v8) = v12;
LABEL_21:
      ;
    }

    while (v8 != v7);
  }

  return result;
}

uint64_t re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(uint64_t a1, unint64_t *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1, a2, *a2, &v10);
  v6 = HIDWORD(v11);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    v7 = re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, v11, v10);
    *(v7 + 8) = *a2;
    *(v7 + 16) = *a3;
    result = v7 + 16;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v9 = *(a1 + 16) + 24 * v6;
    *(v9 + 16) = *a3;
    return v9 + 16;
  }

  return result;
}

{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  result = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1, a2, *a2, &v8);
  v7 = HIDWORD(v9);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, v9, v8);
    *(result + 8) = *a2;
    *(result + 16) = *a3;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    *(*(a1 + 16) + 24 * v7 + 16) = *a3;
  }

  return result;
}

uint64_t re::MaterialParameterTable::addPassTechniqueMapping(re::MaterialParameterTable *this, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v13 = a2;
  v11 = a4;
  v4 = (this + 1032);
  v5 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 1032, &v11);
  if (!v5)
  {
    v6 = *v4;
    memset(v8, 0, sizeof(v8));
    v9 = 0;
    v10 = 0x7FFFFFFFLL;
    re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(v8, v6, 1);
    v5 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(v4, &v11, v8);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v8);
  }

  return re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(v5, &v13, &v12);
}

double re::MaterialParameterTable::clearPassTechniqueMappings(re::MaterialParameterTable *this)
{
  v2 = *(this + 129);
  re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(this + 1032);
  if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }

  v3 = re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash;

  return re::MaterialParameterTable::initPassTechniqueMappings(this, v2, 1, v3);
}

void re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_14, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((v6 + v4 + 16));
          v3 = *(a1 + 32);
        }

        v4 += 72;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

void *re::MaterialParameterTableDelta::init(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  *(a1 + 16) = a2;
  re::DynamicArray<BOOL>::setCapacity((a1 + 16), 0);
  ++*(v3 + 40);
  *(v3 + 56) = a2;
  re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::ConstantLocation>,true>>::setCapacity((v3 + 56), 0);
  ++*(v3 + 80);
  *(v3 + 96) = a2;
  re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::BufferSlice>,true>>::setCapacity((v3 + 96), 0);
  ++*(v3 + 120);
  *(v3 + 136) = a2;
  re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::TextureHandle>,true>>::setCapacity((v3 + 136), 0);
  ++*(v3 + 160);
  *(v3 + 176) = a2;
  re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<NS::SharedPtr<MTL::SamplerState>>,true>>::setCapacity((v3 + 176), 0);
  *(v3 + 216) = a2;
  v3 += 216;
  ++*(v3 - 16);
  re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakParameterBinding>,true>>::setCapacity(v3, 0);
  ++*(v3 + 24);
  *(v3 + 40) = a2;
  re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakParameterBinding>,true>>::setCapacity((v3 + 40), 0);
  ++*(v3 + 64);
  *(v3 + 80) = a2;
  re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakParameterBinding>,true>>::setCapacity((v3 + 80), 0);
  ++*(v3 + 104);
  *(v3 + 120) = a2;
  re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakParameterBinding>,true>>::setCapacity((v3 + 120), 0);
  ++*(v3 + 144);
  *(v3 + 160) = a2;
  re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<NS::SharedPtr<MTL::SamplerState>>,true>>::setCapacity((v3 + 160), 0);
  ++*(v3 + 184);
  *(v3 + 200) = a2;
  re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<unsigned int>,true>>::setCapacity((v3 + 200), 0);
  ++*(v3 + 224);
  *(v3 + 240) = a2;
  re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::mtl::TextureSwizzleChannels>,true>>::setCapacity((v3 + 240), 0);
  ++*(v3 + 264);
  *(v3 + 280) = a2;
  result = re::DynamicArray<re::PassTechniqueMappingDelta>::setCapacity((v3 + 280), 0);
  ++*(v3 + 304);
  return result;
}

uint64_t re::MaterialParameterTableDelta::deinit(re::MaterialParameterTableDelta *this)
{
  v3 = (this + 96);
  v2 = *(this + 12);
  if (v2)
  {
    v4 = *(this + 16);
    if (v4)
    {
      v5 = *(this + 14);
      if (v5)
      {
        v6 = (v4 + 40);
        v7 = 56 * v5;
        do
        {
          if (*(v6 - 32) == 1)
          {
            v8 = *v6;
            if (v8 != -1)
            {
              (off_1F5D03150[v8])(&v19, v6 - 6);
            }

            *v6 = -1;
          }

          *(v6 - 5) = 0;
          v6 += 14;
          v7 -= 56;
        }

        while (v7);
        v2 = *(this + 12);
        v4 = *(this + 16);
      }

      (*(*v2 + 40))(v2, v4);
    }

    *(this + 16) = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = 0;
    ++*(this + 30);
  }

  v9 = *(this + 17);
  if (v9)
  {
    v10 = *(this + 21);
    if (v10)
    {
      v11 = *(this + 19);
      if (v11)
      {
        v12 = (v10 + 16);
        v13 = 32 * v11;
        do
        {
          if (*(v12 - 8) == 1)
          {
            re::TextureHandle::invalidate(v12);
          }

          *(v12 - 2) = 0;
          v12 = (v12 + 32);
          v13 -= 32;
        }

        while (v13);
        v9 = *(this + 17);
        v10 = *(this + 21);
      }

      (*(*v9 + 40))(v9, v10);
    }

    *(this + 21) = 0;
    *(this + 18) = 0;
    *(this + 19) = 0;
    *(this + 17) = 0;
    ++*(this + 40);
  }

  result = *(this + 22);
  if (result)
  {
    v15 = *(this + 26);
    if (v15)
    {
      v16 = *(this + 24);
      if (v16)
      {
        v17 = (v15 + 16);
        v18 = 24 * v16;
        do
        {
          if (*(v17 - 8) == 1)
          {
            if (*v17)
            {

              *v17 = 0;
            }
          }

          *(v17 - 2) = 0;
          v17 += 3;
          v18 -= 24;
        }

        while (v18);
        result = *(this + 22);
        v15 = *(this + 26);
      }

      result = (*(*result + 40))(result, v15);
    }

    *(this + 26) = 0;
    *(this + 23) = 0;
    *(this + 24) = 0;
    *(this + 22) = 0;
    ++*(this + 50);
  }

  return result;
}

void re::MaterialParameterTableDelta::encodeClear(re::MaterialParameterTableDelta *this)
{
  *(this + 4) = 0;
  ++*(this + 10);
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    v3 = 0;
    v4 = v2 + 0xFFFFFFFFFFFFFFFLL;
    v5 = v4 & 0xFFFFFFFFFFFFFFFLL;
    v6 = (v4 & 0xFFFFFFFFFFFFFFFLL) - (v4 & 1) + 2;
    v7 = vdupq_n_s64(v5);
    v8 = (*(this + 11) + 16);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v3), xmmword_1E3049620)));
      if (v9.i8[0])
      {
        *(v8 - 2) = 0;
      }

      if (v9.i8[4])
      {
        *v8 = 0;
      }

      v3 += 2;
      v8 += 4;
    }

    while (v6 != v3);
  }

  ++*(this + 20);
  v10 = *(this + 14);
  *(this + 14) = 0;
  if (v10)
  {
    v11 = (*(this + 16) + 40);
    v12 = 56 * v10;
    do
    {
      if (*(v11 - 32) == 1)
      {
        v13 = *v11;
        if (v13 != -1)
        {
          (off_1F5D03150[v13])(&v51, v11 - 6);
        }

        *v11 = -1;
      }

      *(v11 - 5) = 0;
      v11 += 14;
      v12 -= 56;
    }

    while (v12);
  }

  ++*(this + 30);
  v14 = *(this + 19);
  *(this + 19) = 0;
  if (v14)
  {
    v15 = (*(this + 21) + 16);
    v16 = 32 * v14;
    do
    {
      if (*(v15 - 8) == 1)
      {
        re::TextureHandle::invalidate(v15);
      }

      *(v15 - 2) = 0;
      v15 = (v15 + 32);
      v16 -= 32;
    }

    while (v16);
  }

  ++*(this + 40);
  v17 = *(this + 24);
  *(this + 24) = 0;
  if (v17)
  {
    v18 = (*(this + 26) + 16);
    v19 = 24 * v17;
    do
    {
      if (*(v18 - 8) == 1 && *v18)
      {

        *v18 = 0;
      }

      *(v18 - 2) = 0;
      v18 += 3;
      v19 -= 24;
    }

    while (v19);
  }

  ++*(this + 50);
  v20 = *(this + 29);
  *(this + 29) = 0;
  if (v20)
  {
    v21 = 48 * v20;
    v22 = (*(this + 31) + 24);
    do
    {
      if (*(v22 - 16) == 1)
      {
        v22[2] = 0;
        *v22 = 0;
      }

      *(v22 - 3) = 0;
      v22 += 6;
      v21 -= 48;
    }

    while (v21);
  }

  ++*(this + 60);
  v23 = *(this + 34);
  *(this + 34) = 0;
  if (v23)
  {
    v24 = 48 * v23;
    v25 = (*(this + 36) + 24);
    do
    {
      if (*(v25 - 16) == 1)
      {
        v25[2] = 0;
        *v25 = 0;
      }

      *(v25 - 3) = 0;
      v25 += 6;
      v24 -= 48;
    }

    while (v24);
  }

  ++*(this + 70);
  v26 = *(this + 39);
  *(this + 39) = 0;
  if (v26)
  {
    v27 = 48 * v26;
    v28 = (*(this + 41) + 24);
    do
    {
      if (*(v28 - 16) == 1)
      {
        v28[2] = 0;
        *v28 = 0;
      }

      *(v28 - 3) = 0;
      v28 += 6;
      v27 -= 48;
    }

    while (v27);
  }

  ++*(this + 80);
  v29 = *(this + 44);
  *(this + 44) = 0;
  if (v29)
  {
    v30 = 48 * v29;
    v31 = (*(this + 46) + 24);
    do
    {
      if (*(v31 - 16) == 1)
      {
        v31[2] = 0;
        *v31 = 0;
      }

      *(v31 - 3) = 0;
      v31 += 6;
      v30 -= 48;
    }

    while (v30);
  }

  ++*(this + 90);
  v32 = *(this + 49);
  *(this + 49) = 0;
  if (v32)
  {
    v33 = 24 * v32;
    v34 = (*(this + 51) + 16);
    do
    {
      if (*(v34 - 8) == 1)
      {
        *v34 = 0;
      }

      *(v34 - 2) = 0;
      v34 += 3;
      v33 -= 24;
    }

    while (v33);
  }

  ++*(this + 100);
  v35 = *(this + 54);
  *(this + 54) = 0;
  if (v35)
  {
    v36 = 0;
    v37 = v35 + 0xFFFFFFFFFFFFFFFLL;
    v38 = v37 & 0xFFFFFFFFFFFFFFFLL;
    v39 = (v37 & 0xFFFFFFFFFFFFFFFLL) - (v37 & 1) + 2;
    v40 = vdupq_n_s64(v38);
    v41 = (*(this + 56) + 16);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v36), xmmword_1E3049620)));
      if (v42.i8[0])
      {
        *(v41 - 2) = 0;
      }

      if (v42.i8[4])
      {
        *v41 = 0;
      }

      v36 += 2;
      v41 += 4;
    }

    while (v39 != v36);
  }

  ++*(this + 110);
  v43 = *(this + 59);
  *(this + 59) = 0;
  if (v43)
  {
    v44 = 0;
    v45 = v43 + 0xFFFFFFFFFFFFFFFLL;
    v46 = v45 & 0xFFFFFFFFFFFFFFFLL;
    v47 = (v45 & 0xFFFFFFFFFFFFFFFLL) - (v45 & 1) + 2;
    v48 = vdupq_n_s64(v46);
    v49 = (*(this + 61) + 16);
    do
    {
      v50 = vmovn_s64(vcgeq_u64(v48, vorrq_s8(vdupq_n_s64(v44), xmmword_1E3049620)));
      if (v50.i8[0])
      {
        *(v49 - 2) = 0;
      }

      if (v50.i8[4])
      {
        *v49 = 0;
      }

      v44 += 2;
      v49 += 4;
    }

    while (v47 != v44);
  }

  ++*(this + 120);
  *(this + 64) = 0;
  ++*(this + 130);
  if (*(this + 536) == 1)
  {
    *(this + 536) = 0;
  }

  if (*(this + 548) == 1)
  {
    *(this + 548) = 0;
  }

  *(this + 564) = 1;
}

uint64_t applyBindingChanges(uint64_t result, uint64_t a2, void *a3)
{
  if (result)
  {
    v4 = 48 * result;
    v5 = a2 + 16;
    do
    {
      v6 = (v5 - 16);
      if (*(v5 - 8) == 1)
      {
        result = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addOrReplace(a3, v6, v5);
      }

      else
      {
        result = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::remove(a3, v6);
      }

      v5 += 48;
      v4 -= 48;
    }

    while (v4);
  }

  return result;
}

uint64_t re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addOrReplace(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1, a2);
  if (v6 == -1)
  {

    return re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::internalAdd(a1, a2, a3);
  }

  else
  {
    v7 = 5 * v6;
    re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::updateKvpsHash(a1, (a1[1] + 40 * v6));
    v8 = a1[1] + 8 * v7;
    *(v8 + 8) = *a3;
    *(v8 + 16) = *(a3 + 8);
    *(v8 + 24) = *(a3 + 16);
    *(v8 + 32) = *(a3 + 24);
    re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::updateKvpsHash(a1, v8);
    return a1[1] + 8 * v7 + 8;
  }
}

BOOL re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::remove(uint64_t a1, uint64_t *a2)
{
  v3 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1, a2);
  v4 = v3;
  if (v3 != -1)
  {
    v5 = (*a1 + (v3 & 0xFFFFFFFFFFFFFFF0));
    v6.i64[0] = -1;
    v6.i64[1] = -1;
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v5, v6), xmmword_1E304FAD0)))), 0x3830282018100800);
    v8 = *&v7 != 0;
    if (v7)
    {
      v9 = -1;
    }

    else
    {
      v9 = 0x80;
    }

    v5->i8[v3 & 0xF] = v9;
    re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::updateHashes(a1, (*(a1 + 8) + 40 * v3));
    v10 = *(a1 + 16);
    v11 = (*(a1 + 8) + 40 * v4);
    *v11 = 0;
    v11[4] = 0;
    v11[2] = 0;
    v12.i64[0] = -1;
    v12.i64[1] = v8;
    v13 = vaddq_s64(*(a1 + 24), v12);
    *(a1 + 24) = v13;
    if (v10 >= 0x11 && v13.i64[0] < v10 >> 2)
    {
      re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::resize(a1, 0);
    }
  }

  return v4 != -1;
}

void re::MaterialParameterTableDelta::applyDeltaChange(re::MaterialParameterTableDelta *this)
{
  v98 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(this + 1);
  v4 = (WeakRetained - 8);
  if (WeakRetained)
  {
    v5 = WeakRetained - 8;
  }

  else
  {
    v5 = 0;
  }

  if (WeakRetained)
  {
    v6 = WeakRetained;
    if (*(this + 564) == 1)
    {
      *(WeakRetained + 21) = 0;
      ++*(WeakRetained + 44);
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::clear(WeakRetained + 24);
      *(v6 + 42) = 0;
      ++*(v6 + 86);
      re::BucketArray<re::BufferSlice,8ul>::clear((v6 + 400));
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::clear(v6 + 32);
      re::DynamicArray<re::FixedArray<unsigned long>>::clear((v6 + 456));
      *(v6 + 64) = 0;
      ++*(v6 + 130);
      *(v6 + 134) = 0;
      re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::clear(v6 + 2);
      re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::clear(v6 + 10);
      v7 = *(v6 + 95);
      *(v6 + 95) = 0;
      if (v7)
      {
        v8 = *(v6 + 97);
        v9 = 40 * v7;
        do
        {
          if (*(v8 + 16) == 1)
          {
            v10 = *(v8 + 24);
            if (v10)
            {

              *(v8 + 24) = 0;
            }
          }

          re::TextureHandle::invalidate(v8);
          v8 += 40;
          v9 -= 40;
        }

        while (v9);
      }

      ++*(v6 + 192);
      *(v6 + 88) = 0;
      *(v6 + 45) = 0u;
      v11 = *(v6 + 87);
      *(v6 + 89) = v11;
      v93[0] = v6 + 680;
      if (v11 > 0xF)
      {
        v12 = 0;
        v13 = *(v6 + 85);
        v14 = v11 >> 4;
        while (1)
        {
          v15 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v13), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v93[1] = (v15 ^ 0xFFFFLL);
          if (v15 != 0xFFFFLL)
          {
            break;
          }

          v12 -= 16;
          ++v13;
          if (!--v14)
          {
            goto LABEL_20;
          }
        }

        v16 = __clz(__rbit64(v15 ^ 0xFFFFLL));
        v17 = v16 - v12;
        *&v94 = v16 - v12;
        if (v16 + 1 != v12)
        {
          do
          {
            *(*(v6 + 86) + 16 * v17) = 0;
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v93);
            v17 = v94;
          }

          while (v94 != -1);
          v11 = *(v6 + 87);
        }

LABEL_20:
        if (v11 >= 0x10)
        {
          v18 = 0;
          *&v19 = -1;
          *(&v19 + 1) = -1;
          do
          {
            *(*(v6 + 85) + 16 * v18++) = v19;
          }

          while (v18 < *(v6 + 87) >> 4);
        }
      }

      re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::clear((v6 + 848));
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::clear(v6 + 98);
      re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::clear(v6 + 68);
      re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::clear(v6 + 76);
      re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::clear(v6 + 112);
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::clear(v6 + 120);
      ++v6[1113];
      ++v6[1114];
      re::MaterialParameterTable::clearPassTechniqueMappings(v4);
      if (v6[1072] == 1)
      {
        v6[1072] = 0;
      }

      if (v6[1084] == 1)
      {
        v6[1084] = 0;
      }
    }

    v20 = *(this + 9);
    if (v20)
    {
      v21 = *(this + 11);
      v22 = 16 * v20;
      do
      {
        if (*(v21 + 8) == 1)
        {
          v23 = *(v21 + 12);
          v93[0] = (*(this + 6) + *(v21 + 10));
          v93[1] = v23;
          re::ConstantTable::setConstant(v6 + 18, v21, v93, *(v21 + 13));
        }

        else
        {
          v93[0] = *v21;
          re::removeNameMappedConstant(v93, v6 + 24, v6 + 19);
        }

        v21 += 16;
        v22 -= 16;
      }

      while (v22);
      if (*(this + 9))
      {
        ++v5[1121];
      }
    }

    v24 = *(this + 14);
    if (v24)
    {
      v25 = 56 * v24;
      v26 = (*(this + 16) + 16);
      do
      {
        v27 = (v26 - 16);
        v28 = (v5 + 264);
        if (*(v26 - 8) == 1)
        {
          re::BufferTable::setBuffer(v28, v27, v26);
        }

        else
        {
          re::BufferTable::removeBuffer(v28, v27);
        }

        v26 = (v26 + 56);
        v25 -= 56;
      }

      while (v25);
    }

    v29 = *(this + 19);
    if (v29)
    {
      v30 = 32 * v29;
      v31 = (*(this + 21) + 16);
      do
      {
        if (*(v31 - 8) == 1)
        {
          v85[0] = *(v31 - 2);
          re::TextureHandle::TextureHandle(v84, v31);
          re::TextureHandleTable::setTexture(v5 + 85, v85, v84);
          re::TextureHandle::invalidate(v84);
          v85[0] = 0;
        }

        else
        {
          v93[0] = *(v31 - 2);
          re::removeNameMappedProtectedTexture<re::DynamicArray<re::TextureViews<re::TextureHandle>>>(v93, v5 + 86, (v5 + 752));
        }

        v31 = (v31 + 32);
        v30 -= 32;
      }

      while (v30);
    }

    v32 = *(this + 59);
    if (v32)
    {
      v33 = *(this + 61);
      for (i = 16 * v32; i; i -= 16)
      {
        v35 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v5 + 86, v33);
        if (v35 != -1)
        {
          v36 = *(v33 + 8);
          if (v36 == 1)
          {
            v1 = *(v33 + 9);
          }

          v37 = *(*(v5 + 87) + 16 * v35 + 9);
          v38 = *(v5 + 96);
          if (v38 <= v37)
          {
            v85[1] = 0;
            v96 = 0u;
            v97 = 0u;
            v94 = 0u;
            v95 = 0u;
            *v93 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v86 = 136315906;
            *&v86[4] = "operator[]";
            v87 = 1024;
            v88 = 789;
            v89 = 2048;
            v90 = v37;
            v91 = 2048;
            v92 = v38;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v39 = *(v5 + 98) + 40 * *(*(v5 + 87) + 16 * v35 + 9);
          if (*(v33 + 8) && *(v39 + 32))
          {
            if (*(v39 + 33) != v1)
            {
              goto LABEL_59;
            }
          }

          else if ((v36 & 1) != 0 || *(v39 + 32))
          {
LABEL_59:
            if (*(v39 + 32))
            {
              if ((v36 & 1) == 0)
              {
                *(v39 + 32) = 0;
LABEL_65:
                LOBYTE(v93[0]) = 0;
                re::Optional<NS::SharedPtr<MTL::Texture>>::operator=(v39 + 16, v93);
                if (LOBYTE(v93[0]) == 1 && v93[1])
                {
                }

                goto LABEL_68;
              }
            }

            else
            {
              if ((v36 & 1) == 0)
              {
                goto LABEL_65;
              }

              *(v39 + 32) = 1;
            }

            *(v39 + 33) = v1;
            goto LABEL_65;
          }
        }

LABEL_68:
        v33 += 16;
      }
    }

    if (*(this + 19) || *(this + 59))
    {
      ++v5[1122];
    }

    v40 = *(this + 24);
    if (v40)
    {
      v41 = *(this + 26);
      v42 = &v41[3 * v40];
      do
      {
        if (*(v41 + 8) == 1)
        {
          v83 = *v41;
          v82 = v41[2];
          re::SamplerTable::setSampler(v5 + 99, &v83, &v82);
          if (v82)
          {

            v82 = 0;
          }

          v83 = 0;
        }

        else
        {
          *v86 = *v41;
          v43 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v5 + 99, v86);
          if (v43 != -1)
          {
            v44 = *(v5 + 100) + 16 * v43;
            re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::removeStableAt((v5 + 856), *(v44 + 8));
            v45 = *(v44 + 8);
            v93[0] = v5 + 792;
            v46 = *(v5 + 101);
            if (v46 >= 0x10)
            {
              v47 = 0;
              v48 = *(v5 + 99);
              v49 = v46 >> 4;
              while (1)
              {
                v50 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v48), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
                v93[1] = (v50 ^ 0xFFFFLL);
                if (v50 != 0xFFFFLL)
                {
                  break;
                }

                v47 -= 16;
                ++v48;
                if (!--v49)
                {
                  goto LABEL_88;
                }
              }

              v51 = __clz(__rbit64(v50 ^ 0xFFFFLL));
              v52 = v51 - v47;
              *&v94 = v51 - v47;
              if (v51 + 1 != v47)
              {
                do
                {
                  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::updateKvpsHash((v5 + 792), *(v5 + 100) + 16 * v52);
                  v53 = *(v5 + 100);
                  v54 = v94;
                  v55 = v53 + 16 * v94;
                  v58 = *(v55 + 8);
                  v56 = (v55 + 8);
                  v57 = v58;
                  if (v58 >= v45)
                  {
                    *v56 = v57 - 1;
                    v53 = *(v5 + 100);
                    v54 = v94;
                  }

                  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::updateKvpsHash((v5 + 792), v53 + 16 * v54);
                  re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v93);
                  v52 = v94;
                }

                while (v94 != -1);
              }
            }

LABEL_88:
            re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::remove((v5 + 792), v86);
          }
        }

        v41 += 3;
      }

      while (v41 != v42);
    }

    applyBindingChanges(*(this + 29), *(this + 31), v5 + 3);
    applyBindingChanges(*(this + 34), *(this + 36), v5 + 11);
    applyBindingChanges(*(this + 39), *(this + 41), v5 + 69);
    applyBindingChanges(*(this + 44), *(this + 46), v5 + 77);
    v59 = *(this + 49);
    if (v59)
    {
      v60 = 24 * v59;
      v61 = (*(this + 51) + 16);
      do
      {
        v62 = v61 - 2;
        v63 = v5 + 904;
        if (*(v61 - 8) == 1)
        {
          re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::addOrReplace(v63, v62, v61);
        }

        else
        {
          re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::remove(v63, v62);
        }

        v61 += 3;
        v60 -= 24;
      }

      while (v60);
    }

    v64 = *(this + 54);
    if (v64)
    {
      v65 = 16 * v64;
      v66 = (*(this + 56) + 12);
      do
      {
        v67 = v66 - 3;
        v68 = v5 + 968;
        if (*(v66 - 4) == 1)
        {
          re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::addOrReplace(v68, v67, v66);
        }

        else
        {
          re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::remove(v68, v67);
        }

        v66 += 4;
        v65 -= 16;
      }

      while (v65);
    }

    v69 = *(this + 64);
    if (v69)
    {
      v70 = *(this + 66);
      v71 = v70 + 40 * v69;
      do
      {
        if (*(v70 + 32) == 1)
        {
          re::MaterialParameterTable::clearPassTechniqueMappings(v5);
        }

        else
        {
          v72 = *(v70 + 8);
          if (*(v70 + 16) == 1)
          {
            re::MaterialParameterTable::addPassTechniqueMapping(v5, *(v70 + 8), *(v70 + 24), *v70);
          }

          else
          {
            *v86 = *v70;
            v73 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet((v5 + 1032), v86);
            if (v73)
            {
              v74 = *v73;
              if (!*v73 || (v74 = v72 % *(v73 + 24), v75 = *(*(v73 + 8) + 4 * v74), v75 == 0x7FFFFFFF))
              {
                v76 = 0x7FFFFFFF;
                goto LABEL_112;
              }

              v77 = *(v73 + 16);
              if (*(v77 + 24 * v75 + 8) == v72)
              {
                v76 = *(*(v73 + 8) + 4 * v74);
LABEL_112:
                v75 = 0x7FFFFFFF;
              }

              else
              {
                v78 = *(v77 + 24 * v75) & 0x7FFFFFFF;
                if (v78 == 0x7FFFFFFF)
                {
LABEL_119:
                  v76 = 0x7FFFFFFF;
                }

                else if (*(v77 + 24 * v78 + 8) == v72)
                {
                  v76 = *(v77 + 24 * v75) & 0x7FFFFFFF;
                }

                else
                {
                  v79 = *(v77 + 24 * v78) & 0x7FFFFFFF;
                  if (v79 == 0x7FFFFFFF)
                  {
                    v76 = 0x7FFFFFFF;
                  }

                  else
                  {
                    while (1)
                    {
                      v75 = v79;
                      if (*(v77 + 24 * v79 + 8) == v72)
                      {
                        break;
                      }

                      v79 = *(v77 + 24 * v79) & 0x7FFFFFFF;
                      LODWORD(v78) = v75;
                      if (v79 == 0x7FFFFFFF)
                      {
                        goto LABEL_119;
                      }
                    }

                    v76 = v79;
                  }

                  v75 = v78;
                }
              }

              v93[0] = v72;
              v93[1] = __PAIR64__(v76, v74);
              LODWORD(v94) = v75;
              re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::removeInternal(v73, v93);
            }
          }
        }

        v70 += 40;
      }

      while (v70 != v71);
    }

    if (*(this + 536))
    {
      v80 = *(this + 537);
      if ((v5[1080] & 1) == 0)
      {
        v5[1080] = 1;
      }

      *(v5 + 1081) = v80;
    }

    if (*(this + 548) == 1)
    {
      *(v93 + 3) = *(this + 69);
      *(&v93[1] + 3) = *(this + 140);
      if (v5[1092])
      {
        v81 = *(this + 69);
        *(v5 + 276) = *(this + 140);
        *(v5 + 137) = v81;
      }

      else
      {
        v5[1092] = 1;
        *(v5 + 137) = *(v93 + 3);
        *(v5 + 276) = *(&v93[1] + 3);
      }
    }

    v5[1120] = 0;
  }
}

void *re::ConstantTable::setConstant(void *a1, void *a2, uint64_t a3, char a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 6, a2);
  if (v8 == -1)
  {
    v14 = *(a3 + 8);
    v15 = a1[3] + 3;
    LOWORD(v16[0]) = v15 & 0xFFFC;
    BYTE2(v16[0]) = v14;
    BYTE3(v16[0]) = a4;
    re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::addNew(a1 + 6, a2, v16);
    re::DynamicArray<BOOL>::resize((a1 + 1), (v15 & 0xFFFC) + v14);
    if (a1[3] <= (v15 & 0xFFFC))
    {
      memset(v16, 0, sizeof(v16));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    return memcpy((a1[5] + (v15 & 0xFFFC)), *a3, v14);
  }

  else
  {
    v9 = a1[7] + 16 * v8;
    v10 = *a3;
    v11 = *(v9 + 10);
    v12 = (a1[5] + *(v9 + 8));

    return memcpy(v12, v10, v11);
  }
}

BOOL re::BufferTable::removeBuffer(re::BufferTable *this, const re::WeakStringID *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this, a2);
  v5 = v4;
  if (v4 != -1)
  {
    v6 = *(this + 1) + 16 * v4;
    v8 = *(v6 + 8);
    v7 = (v6 + 8);
    re::DynamicArray<re::BufferView>::removeStableAt(this + 8, v8);
    v9 = *v7;
    v10 = *(this + 23);
    if (v10 > v9)
    {
      re::BucketArray<re::BufferSlice,8ul>::removeStableAt(this + 144, v9);
      v10 = *(this + 23);
    }

    v11 = (*(this + 70) - 1);
    *(this + 70) = v11;
    if (v11 >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    v13 = *v7;
    if (v12 > v13)
    {
      if (v11 >= v10)
      {
        v14 = v10;
      }

      else
      {
        v14 = v11;
      }

      v15 = 24 * v13;
      do
      {
        v16 = re::BucketArray<re::BufferSlice,8ul>::operator[](this + 144, v13);
        if (re::BufferSlice::isValid(v16))
        {
          v17 = re::BucketArray<re::BufferSlice,8ul>::operator[](this + 144, v13);
          v18 = *(this + 10);
          if (v18 <= v13)
          {
            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            v33 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v25 = 136315906;
            v26 = "operator[]";
            v27 = 1024;
            v28 = 789;
            v29 = 2048;
            v30 = v13;
            v31 = 2048;
            v32 = v18;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_21:
            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            v33 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v25 = 136315906;
            v26 = "operator[]";
            v27 = 1024;
            v28 = 789;
            v29 = 2048;
            v30 = v13;
            v31 = 2048;
            v32 = v18;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_22:
            std::__throw_bad_variant_access[abi:nn200100]();
          }

          v19 = *(v17 + 24);
          if (v19 == -1)
          {
            goto LABEL_22;
          }

          v20 = *(*(this + 12) + v15 + 16);
          *&v33 = &v25;
          v21 = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_10BufferViewC1ERKNS6_11BufferSliceEmmE3__0ZNS9_C1ESC_mmE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v19])(&v33, v17);
          v18 = *(this + 10);
          if (v18 <= v13)
          {
            goto LABEL_21;
          }

          v23 = (*(this + 12) + v15);
          *v23 = v21;
          v23[1] = v22;
          v23[2] = v20;
        }

        ++v13;
        v15 += 24;
      }

      while (v14 != v13);
    }

    *&v33 = v7;
    _ZN2re9HashBrownINS_12WeakStringIDEhNS_4HashIS1_EENS_7EqualToIS1_EENS2_IhEELb0EE9mapValuesIZNS_11BufferTable12removeBufferERKS1_EUlRT_E_EEvOSC_(this, &v33);
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::remove(this, a2);
    *&v33 = this;
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::rehashKeysWith<re::BufferTable::rehashNames(void)::{lambda(unsigned char)#1}>(this, &v33);
    re::DynamicArray<re::FixedArray<unsigned long>>::removeStableAt(this + 200, *v7);
    re::DynamicArray<re::Allocator const*>::removeStableAt(this + 30, *v7);
  }

  return v5 != -1;
}

uint64_t re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::addOrReplace(void *a1, void *a2, void *a3)
{
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v6 == -1)
  {

    return re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::internalAdd(a1, a2, a3);
  }

  else
  {
    v7 = v6;
    re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::updateKvpsHash(a1, (a1[1] + 16 * v6));
    v8 = (a1[1] + 16 * v7);
    v8[1] = *a3;
    re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::updateKvpsHash(a1, v8);
    return a1[1] + 16 * v7 + 8;
  }
}

BOOL re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::remove(uint64_t a1, void *a2)
{
  v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  v4 = v3;
  if (v3 != -1)
  {
    v5 = (*a1 + (v3 & 0xFFFFFFFFFFFFFFF0));
    v6.i64[0] = -1;
    v6.i64[1] = -1;
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v5, v6), xmmword_1E304FAD0)))), 0x3830282018100800);
    v8 = *&v7 != 0;
    if (v7)
    {
      v9 = -1;
    }

    else
    {
      v9 = 0x80;
    }

    v5->i8[v3 & 0xF] = v9;
    re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::updateHashes(a1, (*(a1 + 8) + 16 * v3));
    v10 = (*(a1 + 8) + 16 * v4);
    *v10 = 0;
    v10[1] = 0;
    v11.i64[0] = -1;
    v11.i64[1] = v8;
    v12 = vaddq_s64(*(a1 + 24), v11);
    *(a1 + 24) = v12;
    v13 = *(a1 + 16);
    if (v13 >= 0x11 && v12.i64[0] < v13 >> 2)
    {
      re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::resize(a1, 0);
    }
  }

  return v4 != -1;
}

uint64_t re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::addOrReplace(void *a1, void *a2, _DWORD *a3)
{
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v6 == -1)
  {

    return re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::internalAdd(a1, a2, a3);
  }

  else
  {
    v7 = v6;
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::updateKvpsHash(a1, a1[1] + 16 * v6);
    v8 = a1[1] + 16 * v7;
    *(v8 + 8) = *a3;
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::updateKvpsHash(a1, v8);
    return a1[1] + 16 * v7 + 8;
  }
}

void re::TextureTableImpl<re::TextureHandle>::setTexture(int8x16_t **a1, void *a2, const re::TextureHandle *a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 1, a2);
  if (v8 == -1)
  {
    v17 = a1[11];
    re::TextureHandle::TextureHandle(v18, a3);
    LOBYTE(v19[0]) = 0;
    LOBYTE(v20) = 0;
    re::DynamicArray<re::TextureViews<re::TextureHandle>>::add(a1 + 9, v18);
    if (LOBYTE(v19[0]) == 1 && v19[1])
    {

      v19[1] = 0;
    }

    re::TextureHandle::invalidate(v18);
    LOBYTE(v18[0]) = a4;
    BYTE1(v18[0]) = v17;
    re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::addOrReplace(a1 + 1, a2, v18);
  }

  else
  {
    i64 = a1[2][v8].i64;
    v10 = *(i64 + 9);
    if (a1[11] <= v10)
    {
      v21 = 0u;
      v22 = 0u;
      *v19 = 0u;
      v20 = 0u;
      *v18 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v11 = *(i64 + 8);
    v12 = &a1[13]->i64[5 * *(i64 + 9)];
    LOBYTE(v18[0]) = 0;
    re::Optional<NS::SharedPtr<MTL::Texture>>::operator=((v12 + 2), v18);
    if (LOBYTE(v18[0]) == 1 && v18[1])
    {
    }

    v13 = v12[1];
    v14 = *(a3 + 1);
    if (v13 != v14)
    {
      v16 = 1;
      if (v13 && v14 && *v12 && *a3 != 0)
      {
        v16 = 0;
      }

      re::TextureHandle::operator=(v12, a3);
      if (v11 != a4)
      {
        LOBYTE(v18[0]) = a4;
        BYTE1(v18[0]) = v10;
        re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::replace(a1 + 1, a2, v18);
      }

      if (v16)
      {
        v18[0] = a1;
        re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::rehashKeysWith<re::TextureTableImpl<re::TextureHandle>::rehashNames(void)::{lambda(re::IndexAndProtectionOptions)#1}>(a1 + 1, v18);
      }
    }
  }
}

void *re::DynamicArray<re::TextureViews<re::TextureHandle>>::add(void *this, uint64_t *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::TextureViews<re::TextureHandle>>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 40 * v4;
  *v5 = 0;
  *(v5 + 8) = 0;
  v6 = *a2;
  if (a2[1])
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    *v5 = v6;
    *(v5 + 8) = a2[1];
    a2[1] = 0;
  }

  v8 = *(a2 + 16);
  *(v5 + 16) = v8;
  if (v8 == 1)
  {
    *(v5 + 24) = a2[3];
    a2[3] = 0;
  }

  v9 = *(a2 + 32);
  *(v5 + 32) = v9;
  if (v9 == 1)
  {
    *(v5 + 33) = *(a2 + 33);
  }

  ++v3[2];
  ++*(v3 + 6);
  return this;
}

int8x16_t **re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::rehashKeysWith<re::TextureTableImpl<re::TextureHandle>::rehashNames(void)::{lambda(re::IndexAndProtectionOptions)#1}>(int8x16_t **result, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  result[5] = 0;
  v16[0] = result;
  v2 = result[2];
  if (v2 >= 0x10)
  {
    v4 = result;
    v5 = 0;
    v6 = *result;
    v7 = v2 >> 4;
    while (1)
    {
      v8 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v6), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v16[1] = v8 ^ 0xFFFFLL;
      if (v8 != 0xFFFFLL)
      {
        break;
      }

      v5 -= 16;
      ++v6;
      if (!--v7)
      {
        return result;
      }
    }

    v9 = __clz(__rbit64(v8 ^ 0xFFFFLL));
    v10 = v9 - v5;
    v17 = v9 - v5;
    if (v9 + 1 != v5)
    {
      do
      {
        v11 = *(v16[0] + 8) + 16 * v10;
        v12 = *(v11 + 8) >> 8;
        v13 = *(*a2 + 88);
        if (v13 <= v12)
        {
          v18 = 0;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v27 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v19 = 136315906;
          v20 = "operator[]";
          v21 = 1024;
          v22 = 789;
          v23 = 2048;
          v24 = v12;
          v25 = 2048;
          v26 = v13;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v14 = (*(*a2 + 104) + 40 * v12);
        if (v14[1])
        {
          if (*v14)
          {
            v15 = 0xBF58476D1CE4E5B9 * (*v11 ^ (*v11 >> 30));
            v4[5] = (v4[5] ^ ((0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) >> 31) ^ (0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))));
          }
        }

        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v16);
        v10 = v17;
      }

      while (v17 != -1);
    }
  }

  return result;
}

void *re::DynamicArray<re::TextureViews<re::TextureHandle>>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::TextureViews<re::TextureHandle>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::TextureViews<re::TextureHandle>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::TextureViews<re::TextureHandle>>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 == a2)
  {
    return result;
  }

  v5 = result;
  if (result[2] > a2)
  {
    return result;
  }

  result = *result;
  if (!*v5)
  {
    result = re::DynamicArray<re::TextureViews<re::TextureHandle>>::setCapacity(v5, a2);
    ++*(v5 + 6);
    return result;
  }

  if (a2)
  {
    if (is_mul_ok(a2, 0x28uLL))
    {
      v2 = 40 * a2;
      result = (*(*result + 32))(result, 40 * a2, 8);
      if (result)
      {
        v7 = result;
        if (!v5[1])
        {
          goto LABEL_28;
        }

        goto LABEL_11;
      }
    }

    else
    {
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
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
    goto LABEL_28;
  }

LABEL_11:
  v8 = v5[4];
  v9 = v5[2];
  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = 0;
  v11 = 40 * v9;
  do
  {
    v12 = &v7[v10 / 8];
    v13 = v8 + v10;
    *v12 = 0;
    v12[1] = 0;
    v14 = *(v8 + v10);
    if (*(v8 + v10 + 8))
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      *v12 = v14;
      v12[1] = *(v13 + 8);
      *(v13 + 8) = 0;
    }

    v16 = *(v13 + 16);
    *(v12 + 16) = v16;
    v17 = &v7[v10 / 8];
    if (v16 == 1)
    {
      v17[3] = *(v8 + v10 + 24);
      *(v8 + v10 + 24) = 0;
      v18 = *(v8 + v10 + 32);
      *(v17 + 32) = v18;
      if ((v18 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v19 = *(v8 + v10 + 32);
      *(v17 + 32) = v19;
      if (v19 != 1)
      {
        goto LABEL_25;
      }
    }

    v20 = v8 + v10;
    *(&v7[v10 / 8 + 4] + 1) = *(v8 + v10 + 33);
    if (*(v13 + 16))
    {
      v21 = *(v20 + 24);
      if (v21)
      {

        *(v20 + 24) = 0;
      }
    }

LABEL_25:
    re::TextureHandle::invalidate((v8 + v10));
    v10 += 40;
  }

  while (v11 != v10);
  v8 = v5[4];
LABEL_27:
  result = (*(**v5 + 40))(*v5, v8);
LABEL_28:
  v5[4] = v7;
  v5[1] = a2;
  return result;
}

uint64_t re::TextureTableImpl<re::TextureHandle>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((a1 + 8), (a2 + 8));
  }

  re::DynamicArray<re::TextureViews<re::TextureHandle>>::operator=(a1 + 72, a2 + 72);
  return a1;
}

uint64_t re::DynamicArray<re::TextureViews<re::TextureHandle>>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6 || v4 == v5)
    {
      v8 = *(result + 8);
      v9 = *(a2 + 8);
      *result = v5;
      *(result + 8) = v9;
      *a2 = v4;
      *(a2 + 8) = v8;
      v10 = *(result + 16);
      *(result + 16) = *(a2 + 16);
      *(a2 + 16) = v10;
      v11 = *(result + 32);
      *(result + 32) = *(a2 + 32);
      *(a2 + 32) = v11;
      ++*(a2 + 24);
      ++*(result + 24);
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503, v2, v3);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

void re::internal::Callable<re::MaterialParameterTable::buildPerFrameDestructor(re::Allocator *)::$_0,void ()(void *)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(*a2 + 768);
  if (v3)
  {
    v4 = v2[98];
    v5 = 40 * v3;
    do
    {
      if (*(v4 + 16) == 1)
      {
        v6 = *(v4 + 24);
        if (v6)
        {

          *(v4 + 24) = 0;
        }
      }

      re::TextureHandle::invalidate(v4);
      v4 += 40;
      v5 -= 40;
    }

    while (v5);
  }

  re::BufferTable::~BufferTable((v2 + 33));
  v7 = v2[109];
  if (v7)
  {
    v8 = v2[111];
    v9 = 8 * v7;
    do
    {
      if (*v8)
      {

        *v8 = 0;
      }

      ++v8;
      v9 -= 8;
    }

    while (v9);
  }
}

void *re::internal::Callable<re::MaterialParameterTable::buildPerFrameDestructor(re::Allocator *)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D03170;
  return result;
}

void *re::internal::Callable<re::MaterialParameterTable::buildPerFrameDestructor(re::Allocator *)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D03170;
  return result;
}

void *re::DynamicArray<re::BufferView>::removeStableAt(void *result, unint64_t a2)
{
  v2 = result[2];
  if (v2 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = result;
  v4 = v2 - 1;
  if (v2 - 1 > a2)
  {
    v5 = result[4];
    result = (v5 + 24 * a2);
    v6 = (v5 + 24 * v2);
    if (v6 != (result + 3))
    {
      result = memmove(result, result + 3, v6 - (result + 3));
      v4 = v3[2] - 1;
    }
  }

  v3[2] = v4;
  ++*(v3 + 6);
  return result;
}

uint64_t re::BucketArray<re::BufferSlice,8ul>::removeStableAt(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "removeStableAt", 884, a2, v3);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v5 = v3 - 1;
    if (v3 - 1 > a2)
    {
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<re::BucketArray<re::BufferSlice,8ul>::BucketArrayIterator<re::BufferSlice,re::BufferSlice&,re::BucketArray<re::BufferSlice,8ul>&,true>,re::BucketArray<re::BufferSlice,8ul>::BucketArrayIterator<re::BufferSlice,re::BufferSlice&,re::BucketArray<re::BufferSlice,8ul>&,true>,re::BucketArray<re::BufferSlice,8ul>::BucketArrayIterator<re::BufferSlice,re::BufferSlice&,re::BucketArray<re::BufferSlice,8ul>&,true>>(a1, a2 + 1, a1, v3, a1, a2, v9);
      v5 = *(a1 + 40) - 1;
    }

    result = re::BucketArray<re::BufferSlice,8ul>::operator[](a1, v5);
    v7 = result;
    v8 = *(result + 24);
    if (v8 != -1)
    {
      result = (off_1F5D03150[v8])(v9, result);
    }

    *(v7 + 24) = -1;
    --*(a1 + 40);
    ++*(a1 + 48);
  }

  return result;
}

int8x16_t **_ZN2re9HashBrownINS_12WeakStringIDEhNS_4HashIS1_EENS_7EqualToIS1_EENS2_IhEELb0EE9mapValuesIZNS_11BufferTable12removeBufferERKS1_EUlRT_E_EEvOSC_(int8x16_t **result, unsigned __int8 **a2)
{
  v17[0] = result;
  v2 = result[2];
  if (v2 >= 0x10)
  {
    v4 = result;
    v5 = 0;
    v6 = *result;
    v7 = v2 >> 4;
    while (1)
    {
      v8 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v6), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v17[1] = v8 ^ 0xFFFFLL;
      if (v8 != 0xFFFFLL)
      {
        break;
      }

      v5 -= 16;
      ++v6;
      if (!--v7)
      {
        return result;
      }
    }

    v9 = __clz(__rbit64(v8 ^ 0xFFFFLL));
    v10 = v9 - v5;
    v18 = v9 - v5;
    if (v9 + 1 != v5)
    {
      do
      {
        re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::updateKvpsHash(v4, *(v4 + 8) + 16 * v10);
        v11 = *(v4 + 8);
        v12 = v18;
        v13 = v11 + 16 * v18;
        v16 = *(v13 + 8);
        v14 = (v13 + 8);
        v15 = v16;
        if (v16 > **a2)
        {
          *v14 = v15 - 1;
          v11 = *(v4 + 8);
          v12 = v18;
        }

        re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::updateKvpsHash(v4, v11 + 16 * v12);
        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v17);
        v10 = v18;
      }

      while (v18 != -1);
    }
  }

  return result;
}

BOOL re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::remove(uint64_t a1, void *a2)
{
  v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  v4 = v3;
  if (v3 != -1)
  {
    v5 = (*a1 + (v3 & 0xFFFFFFFFFFFFFFF0));
    v6.i64[0] = -1;
    v6.i64[1] = -1;
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v5, v6), xmmword_1E304FAD0)))), 0x3830282018100800);
    v8 = *&v7 != 0;
    if (v7)
    {
      v9 = -1;
    }

    else
    {
      v9 = 0x80;
    }

    v5->i8[v3 & 0xF] = v9;
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::updateHashes(a1, *(a1 + 8) + 16 * v3);
    v10 = *(a1 + 16);
    *(*(a1 + 8) + 16 * v4) = 0;
    v11.i64[0] = -1;
    v11.i64[1] = v8;
    v12 = vaddq_s64(*(a1 + 24), v11);
    *(a1 + 24) = v12;
    if (v10 >= 0x11 && v12.i64[0] < v10 >> 2)
    {
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::resize(a1, 0);
    }
  }

  return v4 != -1;
}

uint64_t re::DynamicArray<re::FixedArray<unsigned long>>::removeStableAt(uint64_t a1, unint64_t a2)
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
    v5 = (v4 + 24 * a2);
    v6 = (v4 + 24 * v2);
    if (v5 + 3 != v6)
    {
      do
      {
        re::FixedArray<unsigned long>::operator=(v5, v5 + 3);
        v7 = v5 + 6;
        v5 += 3;
      }

      while (v7 != v6);
      v2 = *(a1 + 16);
    }
  }

  result = re::FixedArray<CoreIKTransform>::deinit((*(a1 + 32) + 24 * v2 - 24));
  --*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<re::BucketArray<re::BufferSlice,8ul>::BucketArrayIterator<re::BufferSlice,re::BufferSlice&,re::BucketArray<re::BufferSlice,8ul>&,true>,re::BucketArray<re::BufferSlice,8ul>::BucketArrayIterator<re::BufferSlice,re::BufferSlice&,re::BucketArray<re::BufferSlice,8ul>&,true>,re::BucketArray<re::BufferSlice,8ul>::BucketArrayIterator<re::BufferSlice,re::BufferSlice&,re::BucketArray<re::BufferSlice,8ul>&,true>>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (a1 != a3 || a2 != a4)
  {
    v13 = a4 - 1;
    do
    {
      do
      {
        v14 = a2;
        v15 = re::BucketArray<re::BufferSlice,8ul>::operator[](a1, a2);
        v16 = re::BucketArray<re::BufferSlice,8ul>::operator[](a5, a6);
        std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v16, v15);
        *(v16 + 32) = *(v15 + 32);
        a2 = v14 + 1;
        ++a6;
      }

      while (a1 != a3);
    }

    while (v13 != v14);
    a2 = a4;
  }

  *a7 = a1;
  a7[1] = a2;
  a7[2] = a5;
  a7[3] = a6;
}

void re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::removeStableAt(uint64_t a1, unint64_t a2)
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
    v5 = (v4 + 8 * a2);
    v6 = (v4 + 8 * v2);
    if (v5 + 1 != v6)
    {
      do
      {
        NS::SharedPtr<MTL::Texture>::operator=(v5, v5 + 1);
        v7 = v5 + 2;
        ++v5;
      }

      while (v7 != v6);
      v2 = *(a1 + 16);
    }
  }

  v8 = *(a1 + 32) + 8 * v2;
  v9 = *(v8 - 8);
  if (v9)
  {

    *(v8 - 8) = 0;
    v2 = *(a1 + 16);
  }

  *(a1 + 16) = v2 - 1;
  ++*(a1 + 24);
}

void *re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::copy(void *a1, uint64_t a2)
{
  result = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::clear(a1);
  v18[0] = a2;
  v5 = *(a2 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a2;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v18[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        return result;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v19 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        v12 = *(v18[0] + 8) + 40 * v11;
        v13 = *v12;
        v14 = *(v12 + 8);
        v15 = *(v12 + 16);
        v16 = *(v12 + 24);
        v17 = *(v12 + 32);
        re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::internalAdd(a1, &v13, &v14);
        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v18);
        v11 = v19;
      }

      while (v19 != -1);
    }
  }

  return result;
}

uint64_t re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::internalAdd(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::resize(a1, 1);
    v7 = *(a1 + 16);
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = *a1;
  v12 = v9 % v10;
  while (1)
  {
    v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v11 + 16 * v12)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    if (v13 < 0x40)
    {
      break;
    }

    if (v12 + 1 == v10)
    {
      v12 = 0;
    }

    else
    {
      ++v12;
    }

    if (v12 == v9 % v10)
    {
      re::internal::assertLog(4, a2, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
      _os_crash();
      __break(1u);
      break;
    }
  }

  v14 = v11 + 16 * v12;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = 5 * (v13 + 16 * v12);
  v17 = *(a1 + 8) + 40 * (v13 + 16 * v12);
  *v17 = *a2;
  *(v17 + 8) = *a3;
  *(v17 + 16) = *(a3 + 8);
  *(v17 + 24) = *(a3 + 16);
  *(v17 + 32) = *(a3 + 24);
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
  *(a1 + 24) = vaddq_s64(*(a1 + 24), v19);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::updateHashes(a1, v17);
  return *(a1 + 8) + 8 * v16 + 8;
}

{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::resize(a1, 1);
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
  v16 = v13 + 16 * v11;
  v17 = 5 * v16;
  v18 = *(a1 + 8) + 40 * v16;
  *v18 = *a2;
  *(v18 + 8) = *a3;
  *(v18 + 16) = *(a3 + 8);
  *(v18 + 24) = *(a3 + 16);
  *(v18 + 32) = *(a3 + 24);
  if (v15 == 255)
  {
    v19 = -1;
  }

  else
  {
    v19 = 0;
  }

  v20.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v20.i64[1] = v19;
  *(a1 + 24) = vaddq_s64(*(a1 + 24), v20);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::updateHashes(a1, v18);
  return *(a1 + 8) + 8 * v17 + 8;
}

double re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::resize(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + a2;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  return re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::doResize(a1, v3);
}

unint64_t re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::updateHashes(uint64_t a1, re::WeakParameterBinding *this)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*this ^ (*this >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*this ^ (*this >> 30))) >> 27));
  v4 = v3 ^ (v3 >> 31);
  *(a1 + 40) ^= v4;
  result = re::WeakParameterBinding::hash((this + 8));
  *(a1 + 48) ^= v4 ^ (result + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9);
  return result;
}

void *re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::init(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  result[7] = a2;
  v4 = 151 * a3;
  v5 = ((151 * a3) >> 7) + 15;
  v6 = v5 & 0x3FFFFFFFFFFFFF0;
  result[2] = v5 & 0x3FFFFFFFFFFFFF0;
  if ((v5 & 0x3FFFFFFFFFFFFF0) != 0)
  {
    v7 = v5 >> 4;
    result = (*(*a2 + 32))(a2, 41 * v6, 16);
    *v3 = result;
    if (v4 >= 0x80)
    {
      v8 = 0;
      *&v9 = -1;
      *(&v9 + 1) = -1;
      do
      {
        *(*v3 + 16 * v8++) = v9;
      }

      while (v7 != v8);
      result = *v3;
    }

    v3[1] = &result[2 * v7];
    v6 = v3[2];
  }

  else
  {
    *result = 0;
    result[1] = 0;
  }

  v3[5] = 0;
  v3[6] = 0;
  v3[3] = 0;
  v3[4] = v6;
  return result;
}

double re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v20, 0, sizeof(v20));
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::init(v20, v4, a2);
  v18[0] = a1;
  v5 = *(a1 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a1;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v18[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        goto LABEL_9;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v19 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::internalAdd(v20);
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v18);
      }

      while (v19 != -1);
      v5 = *(a1 + 16);
    }
  }

LABEL_9:
  v11 = *(&v20[3] + 1);
  *(&v20[3] + 1) = *(a1 + 56);
  v12 = v20[0];
  v13 = v20[1];
  v20[0] = *a1;
  *&v20[1] = v5;
  v14 = v20[2];
  v15 = *(a1 + 40);
  *(a1 + 48) = *&v20[3];
  *(a1 + 56) = v11;
  *(&v20[2] + 8) = v15;
  v16 = *(a1 + 24);
  *a1 = v12;
  *(a1 + 16) = v13;
  *(a1 + 32) = v14;
  *(&v20[1] + 8) = v16;
  return re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(v20);
}

unint64_t re::WeakParameterBinding::hash(re::WeakParameterBinding *this)
{
  v1 = 0xBF58476D1CE4E5B9 * (*this ^ (*this >> 30));
  v2 = (0x94D049BB133111EBLL * (v1 ^ (v1 >> 27))) ^ ((0x94D049BB133111EBLL * (v1 ^ (v1 >> 27))) >> 31);
  v3 = 0xBF58476D1CE4E5B9 * (*(this + 1) ^ (*(this + 1) >> 30));
  v4 = (((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31)) + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(this + 16)) ^ ((0xBF58476D1CE4E5B9 * *(this + 16)) >> 27));
  v6 = *(this + 3) ^ (*(this + 3) >> 30);
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v6) ^ ((0xBF58476D1CE4E5B9 * v6) >> 27));
  return ((v4 << 6) + (v4 >> 2) + ((((v5 ^ (v5 >> 31)) << 6) + ((v5 ^ (v5 >> 31)) >> 2) + (v7 ^ (v7 >> 31)) - 0x61C8864680B583E9) ^ v5 ^ (v5 >> 31)) - 0x61C8864680B583E9) ^ v4;
}

void *re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::copy(void *a1, uint64_t a2)
{
  result = re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::clear(a1);
  v15[0] = a2;
  v5 = *(a2 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a2;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v15[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        return result;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v16 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        v12 = (*(v15[0] + 8) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::internalAdd(a1, &v13, &v14);
        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v15);
        v11 = v16;
      }

      while (v16 != -1);
    }
  }

  return result;
}

uint64_t re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::internalAdd(uint64_t a1, void *a2, void *a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::resize(a1, 1);
    v7 = *(a1 + 16);
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = *a1;
  v12 = v9 % v10;
  while (1)
  {
    v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v11 + 16 * v12)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    if (v13 < 0x40)
    {
      break;
    }

    if (v12 + 1 == v10)
    {
      v12 = 0;
    }

    else
    {
      ++v12;
    }

    if (v12 == v9 % v10)
    {
      re::internal::assertLog(4, a2, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
      _os_crash();
      __break(1u);
      break;
    }
  }

  v14 = v11 + 16 * v12;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = v13 + 16 * v12;
  v17 = (*(a1 + 8) + 16 * v16);
  *v17 = *a2;
  v17[1] = *a3;
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
  *(a1 + 24) = vaddq_s64(*(a1 + 24), v19);
  re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::updateHashes(a1, v17);
  return *(a1 + 8) + 16 * v16 + 8;
}

double re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::resize(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + a2;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  return re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::doResize(a1, v3);
}

uint64_t re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::updateHashes(uint64_t result, void *a2)
{
  v2 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v3 = (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
  v4 = 0xBF58476D1CE4E5B9 * (a2[1] ^ (a2[1] >> 30));
  v5 = v3 ^ *(result + 40);
  v6 = *(result + 48) ^ v3 ^ ((v3 << 6) + (v3 >> 2) + ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31)) - 0x61C8864680B583E9);
  *(result + 40) = v5;
  *(result + 48) = v6;
  return result;
}

double re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v23, 0, sizeof(v23));
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v23, v4, a2);
  v21[0] = a1;
  v6 = *(a1 + 16);
  if (v6 >= 0x10)
  {
    v7 = 0;
    v8 = *a1;
    v9 = v6 >> 4;
    v10 = xmmword_1E304FAD0;
    v5.n128_u64[0] = 0x3830282018100800;
    while (1)
    {
      v11 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v8), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v21[1] = v11 ^ 0xFFFFLL;
      if (v11 != 0xFFFFLL)
      {
        break;
      }

      v7 -= 16;
      ++v8;
      if (!--v9)
      {
        goto LABEL_9;
      }
    }

    v12 = __clz(__rbit64(v11 ^ 0xFFFFLL));
    v13 = v12 - v7;
    v22 = v12 - v7;
    if (v12 + 1 != v7)
    {
      do
      {
        re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::internalAdd(v23, *(v21[0] + 8) + 16 * v13, *(v21[0] + 8) + 16 * v13 + 8, v10, v5);
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v21);
        v13 = v22;
      }

      while (v22 != -1);
      v6 = *(a1 + 16);
    }
  }

LABEL_9:
  v14 = *(&v23[3] + 1);
  *(&v23[3] + 1) = *(a1 + 56);
  v15 = v23[0];
  v16 = v23[1];
  v23[0] = *a1;
  *&v23[1] = v6;
  v17 = v23[2];
  v18 = *(a1 + 40);
  *(a1 + 48) = *&v23[3];
  *(a1 + 56) = v14;
  *(&v23[2] + 8) = v18;
  v19 = *(a1 + 24);
  *a1 = v15;
  *(a1 + 16) = v16;
  *(a1 + 32) = v17;
  *(&v23[1] + 8) = v19;
  return re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::deinit(v23);
}

uint64_t re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(void *a1, uint64_t *a2)
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
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = v6 % v3;
  v8 = vdupq_n_s8(v6 & 0x7F);
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v10 = v6 % v3;
  while (1)
  {
    v11 = *(*a1 + 16 * v10);
    v12 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v8, v11), xmmword_1E304FAD0)))), 0x3830282018100800);
    v13 = __clz(__rbit64(v12));
    if (v13 <= 0x3F)
    {
      break;
    }

LABEL_10:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v11, v9), xmmword_1E304FAD0)))), 0x3830282018100800))
    {
      return -1;
    }

    if (v10 + 1 == v3)
    {
      v10 = 0;
    }

    else
    {
      ++v10;
    }

    v15 = -1;
    if (v10 == v7)
    {
      return v15;
    }
  }

  v14 = 16 * v10;
  while (1)
  {
    v15 = v13 + v14;
    if (v4 == *(a1[1] + 40 * (v13 + v14)))
    {
      return v15;
    }

    if (v13 <= 0x3E)
    {
      v13 = __clz(__rbit64((-2 << v13) & v12));
      if (v13 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_10;
  }
}

void re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(v9, v4, a2);
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
      re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::move(a1, v9);
      re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(v9);
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

uint64_t *re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::move(uint64_t *result, uint64_t a2)
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
        v8 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(v4, *(v7 + v5 + 64) % *(v4 + 6));
        v9 = *(a2 + 16) + v5;
        v10 = *(v9 + 8);
        *(v8 + 16) = 0u;
        v8 += 16;
        *(v8 - 8) = v10;
        *(v8 + 32) = 0;
        *(v8 + 16) = 0u;
        *(v8 + 36) = 0x7FFFFFFFLL;
        result = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v8, (v9 + 16));
        v2 = *(a2 + 32);
      }

      v5 += 72;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 72 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 72 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 72 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 64) = a3;
  ++*(a1 + 28);
  return v7 + 72 * v5;
}

uint64_t re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addInternal<unsigned long const&,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 16) = 0u;
  v9 = v7 + 16;
  *(v7 + 8) = v8;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0u;
  *(v7 + 52) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v7 + 16), a4);
  ++*(a1 + 40);
  return v9;
}

uint64_t re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 28);
        if (*(a1 + 24) < v4)
        {
          re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(a1, v4);
        }

        re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }

    else
    {
      v5 = *a2;
      if (*a2)
      {
        if (*(a2 + 28) <= 3u)
        {
          v6 = 3;
        }

        else
        {
          v6 = *(a2 + 28);
        }

        re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(a1, v5, v6);
        re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::move(a1, a2);
      }
    }
  }

  return a1;
}

void re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_75, 4 * v2);
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

        v4 += 6;
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

uint64_t re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::HashTable(uint64_t a1, uint64_t a2)
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

    re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(a1, v4, v5);
    re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::move(a1, a2);
  }

  return a1;
}

BOOL re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v3 = a2[4];
    v4 = *(a1 + 16);
    v5 = *(v4 + 24 * v2) & 0x7FFFFFFF;
    if (v3 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v5;
      v6 = a2[3];
      v7 = v6;
    }

    else
    {
      *(v4 + 24 * v3) = *(v4 + 24 * v3) & 0x80000000 | v5;
      v6 = v2;
      v7 = v2;
    }

    v8 = *(a1 + 40);
    *(v4 + 24 * v6) = *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v7;
    *(a1 + 40) = v8 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

void *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::ConstantLocation>,true>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::ConstantLocation>,true>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_18:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 16 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          v12 = *(v8 + 8);
          *(v11 + 8) = v12;
          if (v12 == 1)
          {
            *(v11 + 10) = *(v8 + 10);
          }

          *v8 = 0;
          v8 += 16;
          v11 += 2;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

void *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::BufferSlice>,true>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::BufferSlice>,true>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x38uLL))
        {
          v2 = 56 * a2;
          result = (*(*result + 32))(result, 56 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_21;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 56, a2);
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
LABEL_21:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 0;
        v11 = 56 * v9;
        do
        {
          v12 = &v7[v10 / 8];
          v13 = v8 + v10;
          *v12 = *(v8 + v10);
          v14 = *(v8 + v10 + 8);
          *(v12 + 8) = v14;
          if (v14 == 1)
          {
            *(v12 + 16) = 0;
            v15 = (v12 + 2);
            *(v15 + 24) = -1;
            std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v15, v13 + 16);
            *(v15 + 32) = *(v13 + 48);
            if (*(v13 + 8))
            {
              v16 = *(v8 + v10 + 40);
              if (v16 != -1)
              {
                (off_1F5D03150[v16])(&v17, v13 + 16);
              }

              *(v8 + v10 + 40) = -1;
            }
          }

          *(v8 + v10) = 0;
          v10 += 56;
        }

        while (v11 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_21;
    }
  }

  return result;
}

void *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::TextureHandle>,true>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::TextureHandle>,true>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 59)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 32, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 32 * a2;
          result = (*(*result + 32))(result, 32 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_24;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_24:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v8 + 16);
        v11 = v7 + 2;
        v12 = 32 * v9;
        do
        {
          *(v11 - 2) = *(v10 - 2);
          v13 = *(v10 - 8);
          *(v11 - 8) = v13;
          if (v13 == 1)
          {
            *v11 = 0;
            v11[1] = 0;
            v14 = *v10;
            if (*(v10 + 1))
            {
              v15 = v14 == 0;
            }

            else
            {
              v15 = 1;
            }

            if (!v15)
            {
              *v11 = v14;
              v11[1] = *(v10 + 1);
              *(v10 + 1) = 0;
            }

            if (*(v10 - 8))
            {
              re::TextureHandle::invalidate(v10);
            }
          }

          *(v10 - 2) = 0;
          v10 = (v10 + 32);
          v11 += 4;
          v12 -= 32;
        }

        while (v12);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_24;
    }
  }

  return result;
}

void *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<NS::SharedPtr<MTL::SamplerState>>,true>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<NS::SharedPtr<MTL::SamplerState>>,true>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x18uLL))
        {
          v2 = 24 * a2;
          result = (*(*result + 32))(result, 24 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_17;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 24, a2);
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
LABEL_17:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v8 + 24 * v9);
        v11 = v7 + 2;
        v12 = (v8 + 16);
        do
        {
          v13 = v12 - 2;
          *(v11 - 2) = *(v12 - 2);
          v14 = *(v12 - 8);
          *(v11 - 8) = v14;
          if (v14 == 1)
          {
            *v11 = *v12;
            *v12 = 0;
          }

          *(v12 - 2) = 0;
          v11 += 3;
          v12 += 3;
        }

        while (v13 + 3 != v10);
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_17;
    }
  }

  return result;
}

void *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakParameterBinding>,true>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakParameterBinding>,true>>::setCapacity(v5, a2);
        ++*(v5 + 6);
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
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_17;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 48, a2);
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
LABEL_17:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v8 + 48 * v9);
        v11 = (v8 + 40);
        v12 = v7 + 3;
        do
        {
          v13 = v11 - 5;
          *(v12 - 3) = *(v11 - 5);
          v14 = *(v11 - 32);
          *(v12 - 16) = v14;
          if (v14 == 1)
          {
            *(v12 - 2) = *(v11 - 6);
            *v12 = *(v11 - 2);
            *(v12 + 8) = *(v11 - 8);
            v12[2] = *v11;
            *v11 = 0;
            *(v11 - 2) = 0;
          }

          *(v11 - 5) = 0;
          v11 += 6;
          v12 += 6;
        }

        while (v13 + 6 != v10);
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_17;
    }
  }

  return result;
}

void *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<unsigned int>,true>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<unsigned int>,true>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_17;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_17:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 16 * v9;
        v11 = v7;
        v12 = v5[4];
        do
        {
          *v11 = *v12;
          v13 = *(v12 + 8);
          *(v11 + 8) = v13;
          if (v13 == 1)
          {
            *(v11 + 3) = *(v12 + 12);
          }

          *v12 = 0;
          v12 += 16;
          v11 += 2;
        }

        while (v12 != v10);
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_17;
    }
  }

  return result;
}

void *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::mtl::TextureSwizzleChannels>,true>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::mtl::TextureSwizzleChannels>,true>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_18:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 16 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          v12 = *(v8 + 8);
          *(v11 + 8) = v12;
          if (v12 == 1)
          {
            *(v11 + 9) = *(v8 + 9);
          }

          *v8 = 0;
          v8 += 16;
          v11 += 2;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

void *re::DynamicArray<re::PassTechniqueMappingDelta>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::PassTechniqueMappingDelta>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
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
LABEL_18:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 40 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          v12 = *(v8 + 16);
          *(v11 + 16) = v12;
          if (v12 == 1)
          {
            v11[3] = *(v8 + 24);
          }

          *(v11 + 32) = *(v8 + 32);
          v8 += 40;
          v11 += 5;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

unint64_t re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::updateKvpsHash(uint64_t a1, re::WeakParameterBinding *this)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*this ^ (*this >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*this ^ (*this >> 30))) >> 27));
  v4 = v3 ^ (v3 >> 31);
  result = re::WeakParameterBinding::hash((this + 8));
  *(a1 + 48) ^= v4 ^ (result + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9);
  return result;
}

uint64_t re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::updateKvpsHash(uint64_t result, void *a2)
{
  v2 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v3 = (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
  v4 = 0xBF58476D1CE4E5B9 * (a2[1] ^ (a2[1] >> 30));
  *(result + 48) ^= v3 ^ (((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31)) + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9);
  return result;
}

__n128 re::RenderCamera::computeLocalTransform@<Q0>(re::RenderCamera *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 4);
  v3 = *(this + 5);
  v4 = v2 + v2;
  v5 = v3 + v3;
  v6 = *(this + 6);
  v7 = *(this + 7);
  v8 = v6 + v6;
  v9 = v2 * (v2 + v2);
  v10 = v3 * (v3 + v3);
  v11 = v6 * (v6 + v6);
  v12 = v4 * v3;
  v13 = v4 * v6;
  v14 = v5 * v6;
  v15 = v5 * v7;
  v16 = v8 * v7;
  HIDWORD(v17) = 0;
  *&v17 = 1.0 - (v10 + v11);
  *(&v17 + 1) = v12 + v16;
  *(&v17 + 2) = v13 - v15;
  v18 = v4 * v7;
  v19 = 1.0 - (v9 + v11);
  HIDWORD(v20) = 0;
  *&v20 = v12 - v16;
  *(&v20 + 1) = v19;
  *(&v20 + 2) = v14 + v18;
  HIDWORD(v21) = 0;
  *&v21 = v13 + v15;
  *(&v21 + 1) = v14 - v18;
  *(&v21 + 2) = 1.0 - (v9 + v10);
  *a2 = v17;
  *(a2 + 16) = v20;
  result = *this;
  result.n128_u32[3] = 1.0;
  *(a2 + 32) = v21;
  *(a2 + 48) = result;
  return result;
}

__n128 re::RenderCamera::computeInverseTransform@<Q0>(float32x4_t *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this[1];
  v3 = vnegq_f32(v2);
  v4 = vnegq_f32(*this);
  v5 = vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL);
  v6 = vmlsq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL), v2), v5, *this);
  v7 = vaddq_f32(v6, v6);
  v8 = vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL);
  v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), v2), v8, v5);
  result = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v8, v2, 3), *this), vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL));
  v8.f32[0] = v3.f32[0] + v3.f32[0];
  v10 = (v3.f32[0] + v3.f32[0]) * v3.f32[0];
  v11 = vmuls_lane_f32(v3.f32[1] + v3.f32[1], *v3.f32, 1);
  v12 = vmuls_lane_f32(v3.f32[2] + v3.f32[2], v3, 2);
  v13 = vmuls_lane_f32(v3.f32[0] + v3.f32[0], *v3.f32, 1);
  v14 = vmuls_lane_f32(v3.f32[0] + v3.f32[0], v3, 2);
  v3.f32[0] = vmuls_lane_f32(v3.f32[1] + v3.f32[1], v3, 2);
  v8.f32[0] = vmuls_lane_f32(v8.f32[0], v2, 3);
  v5.f32[0] = vmuls_lane_f32(v3.f32[1] + v3.f32[1], v2, 3);
  v2.f32[0] = vmuls_lane_f32(v3.f32[2] + v3.f32[2], v2, 3);
  HIDWORD(v15) = 0;
  *&v15 = 1.0 - (v11 + v12);
  *(&v15 + 1) = v13 + v2.f32[0];
  v9.i32[3] = 0;
  *(&v15 + 2) = v14 - v5.f32[0];
  HIDWORD(v16) = 0;
  *&v16 = v13 - v2.f32[0];
  *(&v16 + 1) = 1.0 - (v10 + v12);
  *(&v16 + 2) = v3.f32[0] + v8.f32[0];
  *v9.i32 = v14 + v5.f32[0];
  *&v9.i32[1] = v3.f32[0] - v8.f32[0];
  *&v9.i32[2] = 1.0 - (v10 + v11);
  *a2 = v15;
  *(a2 + 16) = v16;
  result.n128_u32[3] = 1.0;
  *(a2 + 32) = v9;
  *(a2 + 48) = result;
  return result;
}

double re::RenderCamera::computeWorldToScreenMatrix@<D0>(float32x4_t *this@<X0>, const re::Projection *a2@<X1>, float32x4_t *a3@<X8>)
{
  re::RenderCamera::computeInverseTransform(this, v30);
  if (*(a2 + 80) == 1)
  {
    v5 = *(a2 + 7);
    v26 = *(a2 + 6);
    v27 = v5;
    v6 = *(a2 + 9);
    v28 = *(a2 + 8);
    v29 = v6;
  }

  else
  {
    re::Projection::cullingProjectionMatrix(a2, &v26);
  }

  if ((atomic_load_explicit(&_MergedGlobals_425, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_425))
  {
    xmmword_1EE1B7A90 = xmmword_1E3047670;
    unk_1EE1B7AA0 = xmmword_1E3047680;
    xmmword_1EE1B7AB0 = xmmword_1E30476A0;
    unk_1EE1B7AC0 = xmmword_1E30A1180;
    __cxa_guard_release(&_MergedGlobals_425);
  }

  if ((atomic_load_explicit(&qword_1EE1B7A88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B7A88))
  {
    xmmword_1EE1B7AD0 = 0u;
    unk_1EE1B7AE0 = 0u;
    xmmword_1EE1B7AF0 = 0u;
    unk_1EE1B7B00 = 0u;
    LODWORD(xmmword_1EE1B7AD0) = 1056964608;
    dword_1EE1B7AE4 = -1090519040;
    DWORD2(xmmword_1EE1B7AF0) = 1065353216;
    dword_1EE1B7B0C = 1065353216;
    __cxa_guard_release(&qword_1EE1B7A88);
  }

  v7 = 0;
  v8 = xmmword_1EE1B7A90;
  v9 = unk_1EE1B7AA0;
  v10 = xmmword_1EE1B7AB0;
  v11 = unk_1EE1B7AC0;
  v31 = xmmword_1EE1B7AD0;
  v32 = unk_1EE1B7AE0;
  v33 = xmmword_1EE1B7AF0;
  v34 = unk_1EE1B7B00;
  do
  {
    *(&v35 + v7) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, COERCE_FLOAT(*(&v31 + v7))), v9, *(&v31 + v7), 1), v10, *(&v31 + v7), 2), v11, *(&v31 + v7), 3);
    v7 += 16;
  }

  while (v7 != 64);
  v12 = 0;
  v13 = v35;
  v14 = v36;
  v15 = v37;
  v16 = v38;
  v31 = v26;
  v32 = v27;
  v33 = v28;
  v34 = v29;
  do
  {
    *(&v35 + v12) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(*(&v31 + v12))), v14, *(&v31 + v12), 1), v15, *(&v31 + v12), 2), v16, *(&v31 + v12), 3);
    v12 += 16;
  }

  while (v12 != 64);
  v17 = 0;
  v18 = v35;
  v19 = v36;
  v20 = v37;
  v21 = v38;
  v31 = v30[0];
  v32 = v30[1];
  v33 = v30[2];
  v34 = v30[3];
  do
  {
    *(&v35 + v17) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*(&v31 + v17))), v19, *(&v31 + v17), 1), v20, *(&v31 + v17), 2), v21, *(&v31 + v17), 3);
    v17 += 16;
  }

  while (v17 != 64);
  result = *v35.i64;
  v23 = v36;
  v24 = v37;
  v25 = v38;
  *a3 = v35;
  a3[1] = v23;
  a3[2] = v24;
  a3[3] = v25;
  return result;
}

float32x4_t re::RenderCamera::transformWorldBoundsToScreen@<Q0>(float32x4_t *this@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X2>, float32x4_t *a4@<X8>)
{
  re::RenderCamera::computeInverseTransform(this, v26);
  if (a3[5].i8[0] == 1)
  {
    v7 = a3[7];
    v22 = a3[6];
    v23 = v7;
    v8 = a3[9];
    v24 = a3[8];
    v25 = v8;
  }

  else
  {
    re::Projection::cullingProjectionMatrix(a3, &v22);
  }

  v9 = 0;
  v10 = v22;
  v11 = v23;
  v12 = v24;
  v13 = v25;
  v27[0] = v26[0];
  v27[1] = v26[1];
  v27[2] = v26[2];
  v27[3] = v26[3];
  do
  {
    *(&v28 + v9 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(v27[v9])), v11, *&v27[v9], 1), v12, v27[v9], 2), v13, v27[v9], 3);
    ++v9;
  }

  while (v9 != 4);
  re::AABB::transform(a2, &v28, a4);
  v14.i64[0] = 0x3F0000003F000000;
  v14.i64[1] = 0x3F0000003F000000;
  v15 = vaddq_f32(vmulq_f32(*a4, v14), v14);
  v16 = vaddq_f32(vmulq_f32(a4[1], v14), v14);
  *a4 = v15;
  a4[1] = v16;
  a4->f32[1] = 1.0 - v16.f32[1];
  a4[1].f32[1] = 1.0 - v15.f32[1];
  v17 = *a4;
  v18 = a4[1];
  v17.i32[3] = 0;
  v19 = vmaxnmq_f32(v17, 0);
  v19.i32[3] = 0;
  v18.i32[3] = 0;
  v20 = vmaxnmq_f32(v18, 0);
  result = vminnmq_f32(v19, xmmword_1E304F3C0);
  v20.i32[3] = 0;
  *a4 = result;
  a4[1] = vminnmq_f32(v20, xmmword_1E304F3C0);
  return result;
}

void re::PerFrameAllocatorGPU::allocInternal(re::PerFrameAllocatorGPU *this@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (!a2)
  {
    goto LABEL_45;
  }

  do
  {
    if (*(this + 96))
    {
      goto LABEL_45;
    }

    v9 = a4;
    v10 = this;
    if (pthread_self() == *(this + 10))
    {
      break;
    }

    this = re::PerFrameAllocatorGPUManager::perFrameAllocatorGPU(*(this + 9), *this);
    v11 = *(this + 10);
    v12 = pthread_self();
    a4 = 0;
  }

  while (v11 == v12);
  v13 = 16;
  if (a3 > 0x10)
  {
    v13 = a3;
  }

  v14 = v10 + 8;
  v15 = v13 - 1;
  v16 = -v13;
  for (i = 8; i != 32; i += 8)
  {
    v18 = *(v10 + i);
    if (v18)
    {
      if (v9)
      {
        v19 = v18[7];
        v20 = (v18[8] - a2) & v16;
        v21 = __OFSUB__(v19, v20);
        v22 = v19 - v20;
        if ((v22 < 0) ^ v21 | (v22 == 0))
        {
          goto LABEL_29;
        }
      }

      else
      {
        v23 = v18[8];
        v24 = ((v18[7] + v15) & v16) + a2;
        v25 = v24 <= v23;
        v22 = v24 - v23;
        if (v25)
        {
          goto LABEL_29;
        }
      }

      if (!v22)
      {
LABEL_29:
        v48 = *(v10 + i);
        if (v9)
        {
          goto LABEL_30;
        }

LABEL_36:
        v43 = (v18[7] + v15) & v16;
        if ((v43 + a2) <= v18[8])
        {
          v18[7] = v43 + a2;
          if (v43)
          {
            goto LABEL_38;
          }
        }

LABEL_45:
        *a5 = 0u;
        *(a5 + 16) = 0u;
        return;
      }
    }
  }

  v26 = *(v10 + 9);
  if (a2 <= 0x10000)
  {
    v27 = 0x10000;
  }

  else
  {
    v27 = a2;
  }

  v28 = *v10;
  os_unfair_lock_lock((v26 + 80));
  v30 = re::PerFrameAllocatorGPUManager::sizeToIndex(v29, v27);
  v31 = *(v26 + 104);
  if (v30 >= v31)
  {
LABEL_44:
    os_unfair_lock_unlock((v26 + 80));
    goto LABEL_45;
  }

  v32 = *(v26 + 120);
  v33 = v32 + 88 * v30;
  v34 = *(v33 + 24);
  if (v34)
  {
    v35 = v33 + 8;
    goto LABEL_22;
  }

  v46 = 0x10000 << v30;
  if (v30 >= v31 - 1 || v46 >= 2 * v27 || (v47 = v32 + 88 * v30, v34 = *(v47 + 112), v34 <= 1))
  {
    NewChunk = re::PerFrameAllocatorGPUManager::allocateNewChunk(v26, v46);
    if (NewChunk)
    {
      goto LABEL_23;
    }

    goto LABEL_44;
  }

  v35 = v47 + 96;
LABEL_22:
  NewChunk = *(*(v35 + 32) + 8 * v34 - 8);
  *(v35 + 16) = v34 - 1;
  ++*(v35 + 24);
LABEL_23:
  *(NewChunk + 136) = v28;
  *(NewChunk + 56) = *(NewChunk + 40);
  os_unfair_lock_unlock((v26 + 80));
  v48 = NewChunk;
  re::DynamicArray<re::TransitionCondition *>::add(v10 + 4, &v48);
  v38 = 0;
  v39 = 0;
  v40 = -1;
  while (1)
  {
    v41 = *&v14[8 * v38];
    if (!v41)
    {
      break;
    }

    v42 = *(v41 + 64) - *(v41 + 56);
    if (v42 < v40)
    {
      v39 = v38;
      v40 = v42;
    }

    if (++v38 == 3)
    {
      goto LABEL_34;
    }
  }

  v39 = v38;
LABEL_34:
  v44 = v39;
  if (v39 < 3)
  {
    v18 = v48;
    *&v14[8 * v44] = v48;
    if ((v9 & 1) == 0)
    {
      goto LABEL_36;
    }

LABEL_30:
    v43 = (v18[8] - a2) & v16;
    if (v18[7] > v43)
    {
      goto LABEL_45;
    }

    v18[8] = v43;
    if (!v43)
    {
      goto LABEL_45;
    }

LABEL_38:
    v45 = *v18;
    *(a5 + 16) = a2;
    *(a5 + 24) = v18 + 18;
    *a5 = v45;
    *(a5 + 8) = v43 - v45;
    return;
  }

  re::internal::assertLog(6, v37, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v39, 3);
  _os_crash();
  __break(1u);
}

uint64_t re::PerFrameAllocatorGPUManager::perFrameAllocatorGPU(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = a2;
  v4 = pthread_getspecific(*(a1 + 8));
  if (v4)
  {
    v5 = re::DataArray<re::PerFrameAllocatorGPU>::tryGet(a1 + 16, v4);
    if (v5)
    {
      v6 = v5;
      if (((*v5 ^ a2) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        return v6;
      }

      *(v5 + 104) = 1;
    }
  }

  os_unfair_lock_lock((a1 + 80));
  v7 = re::PerFrameAllocatorGPUManager::perFrameAllocatorGPU(re::FrameCount)::kAllocationName();
  if (*v7)
  {
    v14 = 0;
    *v13 = 0;
    v8 = pthread_self();
    pthread_getname_np(v8, v13, 0xAuLL);
    snprintf(v7, 0x200uLL, "PerThreadAllocatorGPU.%s", v13);
  }

  *v13 = a1;
  v9 = re::DataArray<re::PerFrameAllocatorGPU>::create<char (&)[512],re::FrameCount &,re::PerFrameAllocatorGPUManager *>(a1 + 16, v7, &v12, v13);
  v10 = v9;
  pthread_setspecific(*(a1 + 8), v9);
  v6 = re::DataArray<re::PerFrameAllocatorGPU>::get(a1 + 16, v10);
  os_unfair_lock_unlock((a1 + 80));
  return v6;
}

void re::PerFrameAllocatorGPUManager::init(re::PerFrameAllocatorGPUManager *this, re::RenderManager *a2)
{
  if ((*this & 1) == 0)
  {
    *(this + 16) = a2;
    *this = 1;
    v4 = pthread_key_create(this + 1, 0);
    if (v4)
    {
      re::internal::assertLog(5, v5, "assertion failure: '%s' (%s:line %i) pthread_key_create failed: %d", "result == 0", "init", 200, v4);
      _os_crash();
      __break(1u);
    }

    else
    {
      v6 = re::DynamicArray<re::PerFrameAllocatorGPUManager::ChunkGroup>::resize(this + 11, 0xFuLL);
      v7 = *(this + 13);
      if (v7)
      {
        v8 = 0;
        v9 = *(this + 15);
        v10 = vdupq_n_s64(v7 - 1);
        v11 = xmmword_1E3049620;
        v12 = vdupq_n_s64(2uLL);
        do
        {
          v13 = vmovn_s64(vcgeq_u64(v10, v11));
          if (v13.i8[0])
          {
            *v9 = 0x10000 << v8;
          }

          if (v13.i8[4])
          {
            v9[11] = 0x20000 << v8;
          }

          v8 += 2;
          v11 = vaddq_s64(v11, v12);
          v9 += 22;
        }

        while (((v7 + 1) & 0xFFFFFFFFFFFFFFFELL) != v8);
      }

      if (*(a2 + 326) == 1)
      {
        v14 = *(a2 + 33);
        re::PerFrameAllocatorGPUManager::addChunks(this, 0x10000, 8 * v14);
        v6 = re::PerFrameAllocatorGPUManager::addChunks(this, 0x20000, 4 * v14);
      }

      v15 = this + 16;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(v15, 0);
      ++*(v15 + 6);
      *(v15 + 11) = 8;

      re::DataArray<re::PerFrameAllocatorGPU>::allocBlock(v15);
    }
  }
}

uint64_t re::PerFrameAllocatorGPUManager::sizeToIndex(re::PerFrameAllocatorGPUManager *this, uint64_t a2)
{
  if (a2)
  {
    v4 = 16 - __clz(a2 - 1);
    return v4 & ~(v4 >> 31);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "size > 0", "sizeToIndex", 495, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void *re::DynamicArray<re::PerFrameAllocatorGPUManager::ChunkGroup>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 88 * a2 + 48;
    v9 = a2;
    do
    {
      v10 = v3[4] + v8;
      re::DynamicArray<unsigned long>::deinit(v10);
      result = re::DynamicArray<unsigned long>::deinit(v10 - 40);
      ++v9;
      v8 += 88;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::PerFrameAllocatorGPUManager::ChunkGroup>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 88 * v4;
      do
      {
        v7 = v3[4] + v6;
        *(v7 + 80) = 0;
        *v7 = 0uLL;
        *(v7 + 16) = 0uLL;
        *(v7 + 32) = 0;
        *(v7 + 40) = 0uLL;
        *(v7 + 56) = 0uLL;
        *(v7 + 72) = 0;
        v6 += 88;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

unint64_t re::PerFrameAllocatorGPUManager::addChunks(re::PerFrameAllocatorGPUManager *this, uint64_t a2, uint64_t a3)
{
  result = re::PerFrameAllocatorGPUManager::sizeToIndex(this, a2);
  if (a3 && result < *(this + 13))
  {
    do
    {
      NewChunk = re::PerFrameAllocatorGPUManager::allocateNewChunk(this, a2);
      result = re::PerFrameAllocatorGPUManager::reuseChunk(this, NewChunk);
      --a3;
    }

    while (a3);
  }

  return result;
}

uint64_t re::PerFrameAllocatorGPUManager::deinit(uint64_t this)
{
  if (*this == 1)
  {
    v1 = this;
    v2 = re::DataArray<re::PerFrameAllocatorGPU>::deinit(this + 16);
    v3 = *(v1 + 104);
    if (!v3)
    {
      goto LABEL_14;
    }

    v4 = 0;
    while (1)
    {
      v5 = *(v1 + 120) + 88 * v4;
      v6 = *(v5 + 64);
      if (!v6)
      {
        goto LABEL_13;
      }

      for (i = 0; i < v6; ++i)
      {
        v8 = *(*(v5 + 80) + 8 * i);
        if (v8)
        {
          v9 = re::globalAllocators(v2)[2];
          v10 = *(v8 + 144);
          if (v10)
          {

            *(v8 + 144) = 0;
          }

          *(v8 + 56) = 0u;
          *(v8 + 40) = 0u;
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((v8 + 80));
          re::Allocator::~Allocator((v8 + 16));
          v2 = (*(*v9 + 40))(v9, v8);
          v6 = *(v5 + 64);
        }

        if (v6 <= i)
        {
          v12 = 0;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v13) = 136315906;
          *(&v13 + 4) = "operator[]";
          WORD6(v13) = 1024;
          HIWORD(v13) = 789;
          _os_log_send_and_compose_impl();
          this = _os_crash_msg();
          __break(1u);
          goto LABEL_18;
        }

        *(*(v5 + 80) + 8 * i) = 0;
      }

      v3 = *(v1 + 104);
LABEL_13:
      *(v5 + 64) = 0;
      ++*(v5 + 72);
      *(v5 + 24) = 0;
      ++*(v5 + 32);
      if (v3 <= ++v4)
      {
LABEL_14:
        this = pthread_key_delete(*(v1 + 8));
        if (!this)
        {
          *v1 = 0;
          return this;
        }

LABEL_18:
        re::internal::assertLog(5, v11, "assertion failure: '%s' (%s:line %i) pthread_key_delete failed: %d", "result == 0", "deinit", 247, this, v12, v13);
        _os_crash();
        __break(1u);
      }
    }
  }

  return this;
}

unint64_t re::DataArray<re::PerFrameAllocatorGPU>::create<char (&)[512],re::FrameCount &,re::PerFrameAllocatorGPUManager *>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *(a1 + 56);
  if ((v8 + 1) >> 24)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 + 1;
  }

  *(a1 + 56) = v9;
  v10 = *(a1 + 52);
  v11 = *(a1 + 54);
  if (v10 == 0xFFFF && v11 == 0xFFFF)
  {
    if (*(a1 + 48) >= *(a1 + 44))
    {
      re::DataArray<re::PerFrameAllocatorGPU>::allocBlock(a1);
    }

    v15 = *(a1 + 16);
    v11 = (v15 - 1);
    if (v15)
    {
      v10 = *(a1 + 48);
      if (v10 < 0x10000)
      {
        v16 = (*(a1 + 32) + 16 * v11);
        *(a1 + 48) = v10 + 1;
        *(v16[1] + 4 * v10) = *(a1 + 56);
        v14 = *v16 + 112 * v10;
        goto LABEL_15;
      }

LABEL_18:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v10, v20, v21);
      _os_crash();
      __break(1u);
    }

LABEL_17:
    v20 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v21) = 136315906;
    *(&v21 + 4) = "operator[]";
    WORD6(v21) = 1024;
    HIWORD(v21) = 789;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  if (*(a1 + 16) <= v11)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v13 = (*(a1 + 32) + 16 * v11);
  *(v13[1] + 4 * v10) = v9;
  v14 = *v13 + 112 * v10;
  *(a1 + 52) = *v14;
LABEL_15:
  ++*(a1 + 40);
  v17 = *a3;
  v18 = *a4;
  *(v14 + 40) = 0;
  *(v14 + 48) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *(v14 + 56) = 0;
  *(v14 + 64) = 0;
  *(v14 + 72) = v18;
  *(v14 + 88) = a2;
  *(v14 + 96) = 0;
  *(v14 + 100) = 3;
  *(v14 + 104) = 0;
  *v14 = v17;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *(v14 + 80) = pthread_self();
  return ((v11 << 16) | ((*(a1 + 56) & 0xFFFFFF) << 32)) + v10;
}

uint64_t re::DataArray<re::PerFrameAllocatorGPU>::get(uint64_t a1, int a2)
{
  if (*(a1 + 16) <= HIWORD(a2))
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 32) + 16 * HIWORD(a2)) + 112 * a2;
}

uint64_t re::PerFrameAllocatorGPUManager::allocateNewChunk(re::PerFrameAllocatorGPUManager *this, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = re::PerFrameAllocatorGPUManager::sizeToIndex(this, a2);
  if (v4 >= *(this + 13))
  {
    return 0;
  }

  v5 = v4;
  v6 = *(this + 16);
  v7 = re::globalAllocators(v4);
  v8 = (*(*v7[2] + 32))(v7[2], 152, 8);
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 32) = 0;
  *(v8 + 16) = &unk_1F5CCF5B8;
  *(v8 + 24) = "PerFrameAllocatorGPUChunk-Linear";
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0u;
  *(v8 + 112) = 0;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0;
  *(v8 + 116) = 0x7FFFFFFFLL;
  *(v8 + 128) = 0;
  *(v8 + 136) = 0xFFFFFFFFFFFFFFFLL;
  *(v8 + 144) = 0;
  v14[0] = v8;
  v23[0] = [*(v6 + 208) newBufferWithLength:a2 options:0];
  NS::SharedPtr<MTL::Texture>::operator=((v8 + 144), v23);
  if (v23[0])
  {
  }

  *v8 = [*(v8 + 144) contents];
  v9 = [*(v8 + 144) length];
  *(v8 + 8) = v9;
  v10 = *v8;
  v11 = &v9[*v8];
  *(v8 + 40) = *v8;
  *(v8 + 48) = v11;
  *(v8 + 56) = v10;
  *(v8 + 64) = v11;
  v12 = *(this + 13);
  if (v12 <= v5)
  {
    v14[1] = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    *v23 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    v18 = 789;
    v19 = 2048;
    v20 = v5;
    v21 = 2048;
    v22 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  re::DynamicArray<re::TransitionCondition *>::add((*(this + 15) + 88 * v5 + 48), v14);
  return v14[0];
}

unint64_t re::PerFrameAllocatorGPUManager::reuseChunk(re::PerFrameAllocatorGPUManager *a1, uint64_t a2)
{
  v4 = a2;
  result = re::PerFrameAllocatorGPUManager::sizeToIndex(a1, *(a2 + 8));
  if (result < *(a1 + 13))
  {
    return re::DynamicArray<re::TransitionCondition *>::add((*(a1 + 15) + 88 * result + 8), &v4);
  }

  return result;
}

void re::PerFrameAllocatorGPUManager::freeAllocatorsWithPredicate(os_unfair_lock_s *a1, unint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(a1 + 20);
  v29 = 0;
  v26[1] = 0;
  v27 = 0;
  v25 = 0;
  v26[0] = 0;
  v28 = 0;
  v22[1] = 0;
  v23 = 0;
  v22[0] = 0;
  v24 = 0;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v30, &a1[4], 0);
  v20 = v30;
  v21 = v31;
  if (&a1[4] == v30 && v31 == 0xFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    do
    {
      v7 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v20);
      v8 = re::DataArray<re::PerFrameAllocatorGPU>::get(&a1[4], v7);
      v9 = *v8;
      v30 = a2;
      v32 = v9;
      if ((*(**(a3 + 32) + 16))(*(a3 + 32), &v30, &v32))
      {
        v30 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v20);
        re::DynamicArray<re::DataArrayHandle<re::PerFrameAllocatorImpl>>::add(v26, &v30);
      }

      if (*(v8 + 96) == 1)
      {
        v10 = *(v8 + 100);
        if (v10 >= 1)
        {
          *(v8 + 100) = --v10;
        }

        if (!v10 && *(v8 + 104) == 1)
        {
          v30 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v20);
          re::DynamicArray<re::DataArrayHandle<re::PerFrameAllocatorImpl>>::add(v22, &v30);
        }
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v20);
    }

    while (v20 != &a1[4] || v21 != 0xFFFF || HIWORD(v21) != 0xFFFF);
    v6 = v29;
    if (v27)
    {
      v11 = &v29[v27];
      v12 = v29;
      do
      {
        v13 = re::DataArray<re::PerFrameAllocatorGPU>::get(&a1[4], *v12);
        if (*(v13 + 48))
        {
          v14 = 0;
          do
          {
            re::PerFrameAllocatorGPUManager::reuseChunk(a1, *(*(v13 + 64) + 8 * v14++));
          }

          while (*(v13 + 48) > v14);
        }

        *(v13 + 48) = 0;
        ++*(v13 + 56);
        *(v13 + 16) = 0;
        *(v13 + 24) = 0;
        *(v13 + 8) = 0;
        *(v13 + 96) = 1;
        ++v12;
      }

      while (v12 != v11);
    }
  }

  v15 = v25;
  if (v23)
  {
    v16 = 8 * v23;
    v17 = v25;
    do
    {
      v18 = *v17++;
      re::DataArray<re::PerFrameAllocatorGPU>::destroy(&a1[4], v18);
      v16 -= 8;
    }

    while (v16);
  }

  if (v22[0])
  {
    v19 = v15 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    (*(*v22[0] + 40))();
  }

  if (v26[0] && v6)
  {
    (*(*v26[0] + 40))();
  }

  os_unfair_lock_unlock(a1 + 20);
}

uint64_t (***re::PerFrameAllocatorGPUManager::freeAllocatorsOlderOrEqual(re *a1, unint64_t a2))(void)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v4 = re::globalAllocators(a1)[2];
  v6[0] = &unk_1F5D031C8;
  v6[3] = v4;
  v6[4] = v6;
  re::PerFrameAllocatorGPUManager::freeAllocatorsWithPredicate(a1, a2, v6);
  return re::FunctionBase<24ul,BOOL ()(re::FrameCount,re::FrameCount)>::destroyCallable(v6);
}

uint64_t (***re::PerFrameAllocatorGPUManager::freeAllocatorsForFrame(re *a1, unint64_t a2))(void)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v4 = re::globalAllocators(a1)[2];
  v6[0] = &unk_1F5D03220;
  v6[3] = v4;
  v6[4] = v6;
  re::PerFrameAllocatorGPUManager::freeAllocatorsWithPredicate(a1, a2, v6);
  return re::FunctionBase<24ul,BOOL ()(re::FrameCount,re::FrameCount)>::destroyCallable(v6);
}

void *re::internal::Callable<re::PerFrameAllocatorGPUManager::freeAllocatorsOlderOrEqual(re::FrameCount)::$_0,BOOL ()(re::FrameCount,re::FrameCount)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D031C8;
  return result;
}

void *re::internal::Callable<re::PerFrameAllocatorGPUManager::freeAllocatorsOlderOrEqual(re::FrameCount)::$_0,BOOL ()(re::FrameCount,re::FrameCount)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D031C8;
  return result;
}

void *re::internal::Callable<re::PerFrameAllocatorGPUManager::freeAllocatorsForFrame(re::FrameCount)::$_0,BOOL ()(re::FrameCount,re::FrameCount)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D03220;
  return result;
}

void *re::internal::Callable<re::PerFrameAllocatorGPUManager::freeAllocatorsForFrame(re::FrameCount)::$_0,BOOL ()(re::FrameCount,re::FrameCount)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D03220;
  return result;
}

void *re::DynamicArray<re::PerFrameAllocatorGPUManager::ChunkGroup>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::PerFrameAllocatorGPUManager::ChunkGroup>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x58uLL))
        {
          v2 = 88 * a2;
          result = (*(*result + 32))(result, 88 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 88, a2);
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
        v10 = v8 + 88 * v9;
        v11 = v7;
        do
        {
          v12 = *v8;
          v11[5] = 0;
          *v11 = v12;
          v11[1] = 0;
          *(v11 + 8) = 0;
          v11[2] = 0;
          v11[3] = 0;
          v13 = v8 + 8;
          v14 = *(v8 + 16);
          v11[1] = *(v8 + 8);
          *(v8 + 8) = 0;
          v11[2] = v14;
          *(v8 + 16) = 0;
          v15 = v11[3];
          v11[3] = *(v8 + 24);
          *(v8 + 24) = v15;
          v16 = v11[5];
          v11[5] = *(v8 + 40);
          *(v8 + 40) = v16;
          ++*(v8 + 32);
          ++*(v11 + 8);
          v11[10] = 0;
          v11[7] = 0;
          v11[8] = 0;
          v11[6] = 0;
          *(v11 + 18) = 0;
          v17 = *(v8 + 48);
          v18 = *(v8 + 56);
          v19 = v8 + 48;
          v11[6] = v17;
          v11[7] = v18;
          *v19 = 0;
          *(v19 + 8) = 0;
          v20 = v11[8];
          v11[8] = *(v19 + 16);
          *(v19 + 16) = v20;
          v21 = v11[10];
          v11[10] = *(v19 + 32);
          *(v19 + 32) = v21;
          ++*(v19 + 24);
          ++*(v11 + 18);
          re::DynamicArray<unsigned long>::deinit(v19);
          re::DynamicArray<unsigned long>::deinit(v13);
          v11 += 11;
          v8 = v19 + 40;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void re::DataArray<re::PerFrameAllocatorGPU>::allocBlock(unsigned int *a1)
{
  v2 = 112 * a1[11];
  v5.n128_u64[0] = (*(**a1 + 32))(*a1, v2, 0);
  if (v5.n128_u64[0])
  {
    v2 = 4 * a1[11];
    v5.n128_u64[1] = (*(**a1 + 32))(*a1, v2, 0);
    if (v5.n128_u64[1])
    {
      re::DynamicArray<re::RigNodeConstraint>::add(a1, &v5);
      a1[12] = 0;
      return;
    }
  }

  else
  {
    re::internal::assertLog(6, v3, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v2, *(*a1 + 8), 0);
    _os_crash();
    __break(1u);
  }

  re::internal::assertLog(6, v4, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v2, *(*a1 + 8));
  _os_crash();
  __break(1u);
}

unint64_t re::generateFunctionVariantHash(uint64_t *a1, const char *a2)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = 0x9E3779B97F4A7C17;
  v4 = re::TechniqueDefinitionBuilder::hashFunctionConstants(*a1, a1[1], 0);
  v5 = strlen(a2);
  if (v5)
  {
    MurmurHash3_x64_128(a2, v5, 0, v7);
    v3 = ((v7[1] - 0x61C8864680B583E9 + (v7[0] << 6) + (v7[0] >> 2)) ^ v7[0]) - 0x61C8864680B583E9;
  }

  return ((v4 >> 2) + (v4 << 6) + v3) ^ v4;
}

void re::FunctionReflectionCache::~FunctionReflectionCache(re::FunctionReflectionCache *this)
{
  v2 = (this + 120);
  v10[0] = this + 120;
  v3 = *(this + 17);
  if (v3 >= 0x10)
  {
    v4 = 0;
    v5 = *v2;
    v6 = v3 >> 4;
    while (1)
    {
      v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v5), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v10[1] = v7 ^ 0xFFFFLL;
      if (v7 != 0xFFFFLL)
      {
        break;
      }

      v4 -= 16;
      ++v5;
      if (!--v6)
      {
        goto LABEL_8;
      }
    }

    v8 = __clz(__rbit64(v7 ^ 0xFFFFLL));
    v9 = v8 - v4;
    v11 = v8 - v4;
    if (v8 + 1 != v4)
    {
      do
      {
        re::internal::destroyPersistent<re::FunctionReflectionResult>("~FunctionReflectionCache", 59, *(*(v10[0] + 8) + 16 * v9 + 8));
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v10);
        v9 = v11;
      }

      while (v11 != -1);
    }
  }

LABEL_8:
  re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::clear(v2);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v2);
  re::DynamicArray<re::FunctionReflectionCache::FunctionReflectionTask>::deinit(this + 72);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 3);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::FunctionReflectionCache::~FunctionReflectionCache(this);

  JUMPOUT(0x1E6906520);
}

re *re::internal::destroyPersistent<re::FunctionReflectionResult>(re *result, uint64_t a2, id *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::FunctionReflectionResult::~FunctionReflectionResult(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::FunctionReflectionCache::tryGetCachedFunction(os_unfair_lock_s *this, uint64_t a2)
{
  v6 = a2;
  os_unfair_lock_lock(this + 28);
  v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(&this[30]._os_unfair_lock_opaque, &v6);
  if (v3 == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(*&this[32]._os_unfair_lock_opaque + 16 * v3 + 8);
  }

  os_unfair_lock_unlock(this + 28);
  return v4;
}

uint64_t re::FunctionReflectionCache::scheduleAllFunctionBuildTasks(uint64_t result, uint64_t a2, id *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = *(result + 88);
  if (v3 >= 1)
  {
    v4 = result;
    if (*(result + 88) > (*(result + 88) & 0x7FFFFFFFuLL) - 1)
    {
      v5 = (*(result + 104) + 88 * ((*(result + 88) & 0x7FFFFFFFLL) - 1));
      v6 = v5[4];
      v7 = v5[2];
      v8 = v5[9];
      v9 = *a3;
      if (v5[6])
      {
        v10 = v5[7];
      }

      else
      {
        v10 = (v5 + 49);
      }

      if ((atomic_load_explicit(&qword_1EE1B7B18, memory_order_acquire) & 1) == 0)
      {
        v9 = __cxa_guard_acquire(&qword_1EE1B7B18);
        if (v9)
        {
          re::Defaults::BOOLValue("enableShaderDebugLogs", v26, &v36);
          if (v36)
          {
            v27 = BYTE1(v36);
          }

          else
          {
            v27 = 0;
          }

          _MergedGlobals_426 = v27;
          __cxa_guard_release(&qword_1EE1B7B18);
        }
      }

      if (_MergedGlobals_426)
      {
        *&v43[2] = 0;
        memset(&v41[8], 0, 20);
        re::DynamicArray<re::TechniqueFunctionConstant>::setCapacity(v41, v7);
        ++*&v41[24];
        v28 = v10;
        re::ShaderManager::makeFunction(*(a2 + 48), v8, v10, 0, &v35);
        v11 = [v35 functionConstantsDictionary];
        v36 = 0u;
        v37 = 0u;
        LODWORD(v38) = 0;
        *(&v38 + 4) = 0x7FFFFFFFLL;
        v12 = [v11 keyEnumerator];
        v13 = [v12 nextObject];
        if (v13)
        {
          v14 = v13;
          do
          {
            v31 = [(_anonymous_namespace_ *)v14 UTF8String];
            *&buf = [v11 objectForKey_];
            re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::add(&v36, &v31, &buf);
            if (buf)
            {
            }

            v13 = [v12 nextObject];
            v14 = v13;
          }

          while (v13);
        }

        v32 = 0;
        v33 = 0;
        v34 = 0;
        re::DynamicString::setCapacity(&v31, 0x1F4uLL);
        if (v7)
        {
          v15 = 104 * v7;
          do
          {
            if (*(v6 + 8))
            {
              v16 = *(v6 + 16);
            }

            else
            {
              v16 = (v6 + 9);
            }

            v30 = v16;
            re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::findEntry<char const*>(&v36, &v30, &buf);
            if (HIDWORD(buf) != 0x7FFFFFFF)
            {
              re::DynamicArray<re::TechniqueFunctionConstant>::add(v41, v6);
            }

            v6 += 104;
            v15 -= 104;
          }

          while (v15);
        }

        *&buf = *&v43[2];
        *(&buf + 1) = *&v41[16];
        FunctionVariantHash = re::generateFunctionVariantHash(&buf, v28);
        v18 = re::DynamicString::appendf(&v31, "Compiling shader %s (%zu) with function constants ", v28, FunctionVariantHash);
        if (*&v41[16])
        {
          v19 = (*&v43[2] + 36);
          v20 = 104 * *&v41[16];
          do
          {
            if (*(v19 - 28))
            {
              v21 = *(v19 - 20);
            }

            else
            {
              v21 = v19 - 27;
            }

            v22 = *v19;
            v19 += 13;
            v18 = re::DynamicString::appendf(&v31, "%s=%llu ", v21, v22);
            v20 -= 104;
          }

          while (v20);
        }

        v23 = *re::graphicsLogObjects(v18);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v25 = &v32 + 1;
          if (v32)
          {
            v25 = v33;
          }

          LODWORD(buf) = 136315138;
          *(&buf + 4) = v25;
          _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, "%s\n", &buf, 0xCu);
        }

        if (v31 && (v32 & 1) != 0)
        {
          (*(*v31 + 40))();
        }

        re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v36);
        if (v35)
        {
        }

        re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v41);
        LOBYTE(v31) = 0;
      }

      else
      {
        LOBYTE(v31) = 0;
      }

      *v41 = v4;
      v24 = (v4 + 8);
      operator new();
    }

    v31 = 0;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v36 = 0u;
    v37 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v41 = 136315906;
    *&v41[4] = "operator[]";
    *&v41[12] = 1024;
    *&v41[14] = 789;
    *&v41[18] = 2048;
    *&v41[20] = (v3 & 0x7FFFFFFF) - 1;
    v42 = 2048;
    *v43 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

void re::FunctionReflectionCache::scheduleReflectionTasksForBuiltFunctions(uint64_t a1, uint64_t a2, dispatch_group_t *a3, int a4, void *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 112));
  dispatch_group_enter(*a3);
  if (a1)
  {
    v10 = (a1 + 8);
  }

  v28[0] = a1 + 120;
  v11 = *(a1 + 136);
  if (v11 >= 0x10)
  {
    v12 = 0;
    v13 = *(a1 + 120);
    v14 = v11 >> 4;
    while (1)
    {
      v15 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v13), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v28[1] = v15 ^ 0xFFFFLL;
      if (v15 != 0xFFFFLL)
      {
        break;
      }

      v12 -= 16;
      ++v13;
      if (!--v14)
      {
        goto LABEL_17;
      }
    }

    v16 = __clz(__rbit64(v15 ^ 0xFFFFLL));
    v17 = v16 - v12;
    v29 = v16 - v12;
    if (v16 + 1 != v12)
    {
      do
      {
        v18 = *(*(v28[0] + 8) + 16 * v17 + 8);
        if (*(v18 + 48) == 1)
        {
          dispatch_group_enter(*a3);
          v19 = [objc_msgSend(*v18 name)];
          v20 = *(a2 + 48);
          v21 = *a3;
          v26.var1 = &str_67;
          v27 = v21;
          *&v26.var0 = 0;
          if (a1)
          {
            v22 = (a1 + 8);
          }

          v23 = *a3;
          v31 = re::globalAllocators(v23)[2];
          v32 = 0;
          v24 = (*(*v31 + 32))(v31, 48, 0);
          *v24 = &unk_1F5D032A8;
          *(v24 + 8) = a1;
          *(v24 + 16) = v18;
          *(v24 + 24) = v23;
          *(v24 + 32) = a5;
          *(v24 + 40) = a4;
          v32 = v24;
          re::ShaderManager::scheduleAsyncGroupFuncOnCompilationQueue(v20, a4, a5, &v27, 2, &v26, v30);
          v25 = re::FunctionBase<24ul,void ()(void)>::destroyCallable(v30);
          if (*&v26.var0)
          {
            if (*&v26.var0)
            {
            }
          }

          *&v26.var0 = 0;
          v26.var1 = &str_67;
        }

        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v28);
        v17 = v29;
      }

      while (v29 != -1);
    }
  }

LABEL_17:
  dispatch_group_leave(*a3);
  if (a1)
  {
  }

  os_unfair_lock_unlock((a1 + 112));
}

BOOL re::FunctionReflectionCache::addTask(uint64_t a1, uint64_t a2)
{
  v4 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(a1 + 24, (a2 + 80));
  if (v4)
  {
    return !v4;
  }

  re::DynamicArray<re::FunctionReflectionCache::FunctionReflectionTask>::add((a1 + 72), a2);
  v5 = *(a2 + 80);
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) >> 27));
  v7 = v6 ^ (v6 >> 31);
  v8 = *(a1 + 48);
  if (!v8)
  {
    LODWORD(v9) = 0;
    goto LABEL_9;
  }

  v9 = v7 % v8;
  v10 = *(*(a1 + 32) + 4 * (v7 % v8));
  if (v10 == 0x7FFFFFFF)
  {
LABEL_9:
    re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addAsCopy(a1 + 24, v9, v7, a2 + 80, (a2 + 80));
    ++*(a1 + 64);
    return !v4;
  }

  v11 = *(a1 + 40);
  if (*(v11 + 24 * v10 + 16) != v5)
  {
    while (1)
    {
      LODWORD(v10) = *(v11 + 24 * v10 + 8) & 0x7FFFFFFF;
      if (v10 == 0x7FFFFFFF)
      {
        break;
      }

      if (*(v11 + 24 * v10 + 16) == v5)
      {
        return !v4;
      }
    }

    goto LABEL_9;
  }

  return !v4;
}

__n128 re::DynamicArray<re::FunctionReflectionCache::FunctionReflectionTask>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::FunctionReflectionCache::FunctionReflectionTask>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 88 * v4;
  re::DynamicArray<re::TechniqueFunctionConstant>::DynamicArray(v5, a2);
  re::DynamicString::DynamicString((v5 + 40), (a2 + 40));
  result = *(a2 + 72);
  *(v5 + 72) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::FunctionReflectionCache::hashFunction(uint64_t a1, uint64_t a2, re::FunctionConstantUsageMask *a3, const char *a4, unint64_t a5)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v7 = re::TechniqueDefinitionBuilder::hashFunctionConstants(a1, a2, a3);
  v8 = strlen(a4);
  if (v8)
  {
    MurmurHash3_x64_128(a4, v8, 0, v11);
    v9 = ((v11[1] - 0x61C8864680B583E9 + (v11[0] << 6) + (v11[0] >> 2)) ^ v11[0]) - 0x61C8864680B583E9;
  }

  else
  {
    v9 = 0x9E3779B97F4A7C17;
  }

  return ((v7 << 6) - 0x61C8864680B583E9 + (v7 >> 2) + (((a5 >> 2) + (a5 << 6) + v9) ^ a5)) ^ v7;
}

uint64_t re::internal::Callable<re::FunctionReflectionCache::scheduleReflectionTasksForBuiltFunctions(re::RenderManager &,re::dispatch::Group,BOOL,unsigned long long)::$_0,void ()(void)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5D032A8;

  v2 = *(a1 + 8);
  if (v2)
  {

    *(a1 + 8) = 0;
  }

  return a1;
}

void re::internal::Callable<re::FunctionReflectionCache::scheduleReflectionTasksForBuiltFunctions(re::RenderManager &,re::dispatch::Group,BOOL,unsigned long long)::$_0,void ()(void)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5D032A8;

  v2 = *(a1 + 8);
  if (v2)
  {

    *(a1 + 8) = 0;
  }

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<re::FunctionReflectionCache::scheduleReflectionTasksForBuiltFunctions(re::RenderManager &,re::dispatch::Group,BOOL,unsigned long long)::$_0,void ()(void)>::operator()(uint64_t a1)
{
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if ([**(a1 + 16) functionType] == 5)
  {
    v2 = **(a1 + 16);
  }

  else
  {
    v2 = [**(a1 + 16) reflectionWithOptions_];
  }

  re::mtl::retainedArray<MTL::Argument>(v3, [v2 arguments]);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(*(a1 + 16) + 8, v3);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v3);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  *(*(a1 + 16) + 48) = 0;
  dispatch_group_leave(*(a1 + 24));
}

uint64_t re::internal::Callable<re::FunctionReflectionCache::scheduleReflectionTasksForBuiltFunctions(re::RenderManager &,re::dispatch::Group,BOOL,unsigned long long)::$_0,void ()(void)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_1F5D032A8;
  *(a2 + 8) = v4;
  if (v4)
  {
    v5 = (v4 + 8);
  }

  v6 = *(a1 + 24);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = v6;
  v7 = *(a1 + 40);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = v7;
  return a2;
}

uint64_t re::internal::Callable<re::FunctionReflectionCache::scheduleReflectionTasksForBuiltFunctions(re::RenderManager &,re::dispatch::Group,BOOL,unsigned long long)::$_0,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D032A8;
  *(a2 + 8) = *(a1 + 8);
  *(a1 + 8) = 0;
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  *(a2 + 24) = v2;
  v3 = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 32) = v3;
  return a2;
}

void re::mtl::retainedArray<MTL::Argument>(uint64_t a1, id a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v4 = [a2 count];
  if (v4)
  {
    re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(a1, v4);
  }

  v5 = [a2 count];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      v8 = [a2 objectAtIndex_];
      re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(a1, &v8);
      if (v8)
      {
      }
    }
  }
}

uint64_t re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::findEntry<char const*>@<X0>(uint64_t a1@<X0>, const char **a2@<X1>, uint64_t a3@<X8>)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = strlen(*a2);
  if (v7)
  {
    MurmurHash3_x64_128(v6, v7, 0, v10);
    v8 = (v10[1] + (v10[0] << 6) + (v10[0] >> 2) - 0x61C8864680B583E9) ^ v10[0];
  }

  else
  {
    v8 = 0;
  }

  return re::HashTable<char const*,unsigned long,re::RigEvaluation::HashString,re::RigEvaluation::EqualString,true,false>::findEntry<char const*>(a1, a2, v8, a3);
}

void re::FunctionReflectionResult::~FunctionReflectionResult(id *this)
{
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit((this + 1));
  if (*this)
  {

    *this = 0;
  }
}

uint64_t re::DynamicArray<re::FunctionReflectionCache::FunctionReflectionTask>::deinit(uint64_t a1)
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
        v5 = 88 * v4;
        do
        {
          re::DynamicString::deinit((v3 + 40));
          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v3);
          v3 += 88;
          v5 -= 88;
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

void re::HashBrown<unsigned long,re::FunctionReflectionResult *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::resize(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + 1;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  v8 = *(a1 + 56);
  memset(v46, 0, sizeof(v46));
  v9 = re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v46, v8, v3);
  v44[0] = a1;
  v10 = *(a1 + 16);
  if (v10 >= 0x10)
  {
    v11 = 0;
    v12 = *a1;
    v13 = v10 >> 4;
    while (1)
    {
      v14 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v12), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v44[1] = v14 ^ 0xFFFFLL;
      if (v14 != 0xFFFFLL)
      {
        break;
      }

      v11 -= 16;
      ++v12;
      if (!--v13)
      {
        goto LABEL_29;
      }
    }

    v15 = __clz(__rbit64(v14 ^ 0xFFFFLL));
    v16 = v15 - v11;
    v45 = v15 - v11;
    if (v15 + 1 != v11)
    {
      v43 = vdupq_n_s64(1uLL).u64[0];
      do
      {
        v17 = *(v44[0] + 8);
        if (*(&v46[3] + 1))
        {
          v18 = *&v46[2];
        }

        else
        {
          *&v46[1] = 16;
          *&v36 = -1;
          *(&v36 + 1) = -1;
          **&v46[0] = v36;
          v18 = *&v46[1];
          *(&v46[0] + 1) = *&v46[0] + 16;
          *(&v46[1] + 1) = 0;
          v46[2] = *&v46[1];
          *&v46[3] = 0;
        }

        v19 = xmmword_1E304FAD0;
        if (!v18 || (v20 = *&v46[1], *&v46[1] > (8 * v18)))
        {
          re::HashBrown<unsigned long,re::FunctionReflectionResult *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::resize(v46);
          v19 = xmmword_1E304FAD0;
          v20 = *&v46[1];
        }

        v21 = (v17 + 16 * v16);
        v22 = 0xBF58476D1CE4E5B9 * (*v21 ^ (*v21 >> 30));
        v23 = (0x94D049BB133111EBLL * (v22 ^ (v22 >> 27))) ^ ((0x94D049BB133111EBLL * (v22 ^ (v22 >> 27))) >> 31);
        v24 = v20 >> 4;
        v25 = v23 % (v20 >> 4);
        v26 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*&v46[0] + 16 * v25)), v19)))), 0x3830282018100800)));
        if (v26 >= 0x40)
        {
          do
          {
            if (v25 + 1 == v24)
            {
              v25 = 0;
            }

            else
            {
              ++v25;
            }

            v26 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*&v46[0] + 16 * v25)), v19)))), 0x3830282018100800)));
          }

          while (v26 > 0x3F);
        }

        v27 = *&v46[0] + 16 * v25;
        v28 = *(v27 + v26);
        *(v27 + v26) = v23 & 0x7F;
        v29 = 16 * (v26 + 16 * v25);
        v30 = (*(&v46[0] + 1) + v29);
        v32 = *v21;
        v31 = v21[1];
        *v30 = v32;
        v30[1] = v31;
        if (v28 == 255)
        {
          v33 = -1;
        }

        else
        {
          v33 = 0;
        }

        v34.i64[0] = v43;
        v34.i64[1] = v33;
        *(&v46[1] + 8) = vaddq_s64(*(&v46[1] + 8), v34);
        v35 = 0xBF58476D1CE4E5B9 * (*(*(&v46[0] + 1) + v29) ^ (*(*(&v46[0] + 1) + v29) >> 30));
        *(&v46[2] + 1) ^= ((0x94D049BB133111EBLL * (v35 ^ (v35 >> 27))) >> 31) ^ (0x94D049BB133111EBLL * (v35 ^ (v35 >> 27)));
        v9 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v44);
        v16 = v45;
      }

      while (v45 != -1);
      v10 = *(a1 + 16);
    }
  }

LABEL_29:
  v37 = *(&v46[3] + 1);
  *(&v46[3] + 1) = *(a1 + 56);
  v38 = v46[0];
  v39 = v46[1];
  v46[0] = *a1;
  *&v46[1] = v10;
  v40 = v46[2];
  v41 = *(a1 + 40);
  *(a1 + 48) = *&v46[3];
  *(a1 + 56) = v37;
  *(&v46[2] + 8) = v41;
  v42 = *(a1 + 24);
  *a1 = v38;
  *(a1 + 16) = v39;
  *(a1 + 32) = v40;
  *(&v46[1] + 8) = v42;
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v46);
}

void *re::DynamicArray<re::FunctionReflectionCache::FunctionReflectionTask>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::FunctionReflectionCache::FunctionReflectionTask>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::FunctionReflectionCache::FunctionReflectionTask>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::FunctionReflectionCache::FunctionReflectionTask>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::FunctionReflectionCache::FunctionReflectionTask>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x58uLL))
        {
          v2 = 88 * a2;
          result = (*(*result + 32))(result, 88 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 88, a2);
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
        v10 = 0;
        v11 = v8 + 88 * v9;
        do
        {
          v12 = v8 + v10;
          v13 = &v7[v10 / 8];
          v13[4] = 0;
          v13[1] = 0;
          v13[2] = 0;
          *v13 = 0;
          *(v13 + 6) = 0;
          v14 = *(v8 + v10 + 8);
          *v13 = *(v8 + v10);
          v13[1] = v14;
          *v12 = 0;
          *(v12 + 8) = 0;
          v15 = v7[v10 / 8 + 2];
          v13[2] = *(v8 + v10 + 16);
          *(v12 + 16) = v15;
          v16 = v7[v10 / 8 + 4];
          v13[4] = *(v8 + v10 + 32);
          *(v12 + 32) = v16;
          *(v12 + 24) = *(v8 + v10 + 24) + 1;
          *(v13 + 6) = LODWORD(v7[v10 / 8 + 3]) + 1;
          *(v13 + 5) = 0u;
          *(v13 + 7) = 0u;
          v17 = (v8 + v10 + 40);
          v13[5] = *v17;
          *v17 = 0;
          v13[8] = *(v8 + v10 + 64);
          *(v12 + 64) = 0;
          v19 = v7[v10 / 8 + 6];
          v18 = v7[v10 / 8 + 7];
          v20 = *(v8 + v10 + 56);
          v13[6] = *(v8 + v10 + 48);
          v13[7] = v20;
          *(v12 + 48) = v19;
          *(v12 + 56) = v18;
          *(v13 + 9) = *(v8 + v10 + 72);
          re::DynamicString::deinit(v17);
          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v8 + v10);
          v10 += 88;
        }

        while (v12 + 88 != v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}