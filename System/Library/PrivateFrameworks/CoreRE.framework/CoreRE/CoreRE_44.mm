uint64_t re::DynamicOverflowArray<unsigned int,128ul>::operator[](uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v2 = a1 + 24;
  }

  else
  {
    v2 = *(a1 + 32);
  }

  return v2 + 4 * a2;
}

__n128 re::DynamicArray<re::MeshAssetInstance>::add(_anonymous_namespace_ *this, StringID *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::MeshAssetInstance>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = re::StringID::StringID((*(this + 4) + 96 * v4), a2);
  *(v5 + 1) = a2[1];
  result = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  *(v5 + 20) = a2[5].var0;
  *(v5 + 3) = v7;
  *(v5 + 4) = v8;
  *(v5 + 2) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

__n128 re::DynamicArray<re::MeshAssetInstance>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::MeshAssetInstance>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 96 * v4;
  v6 = a2->n128_u64[0];
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | a2->n128_u64[0] & 1;
  *v5 = a2->n128_u64[0] & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 8) = a2->n128_u64[1];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = &str_67;
  LODWORD(v6) = a2[5].n128_u32[0];
  v7 = a2[2];
  v8 = a2[4];
  *(v5 + 48) = a2[3];
  *(v5 + 64) = v8;
  *(v5 + 32) = v7;
  result = a2[1];
  *(v5 + 16) = result;
  *(v5 + 80) = v6;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<re::AssetHandle>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    re::IntrospectionDynamicArray<re::AssetHandle>::IntrospectionDynamicArray(&re::IntrospectionInfo<re::DynamicArray<re::AssetHandle>>::get(BOOL)::info);
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<re::AssetHandle>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::AssetHandle>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::DynamicArray<re::AssetHandle>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::AssetHandle>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_AssetHandle(1, a2);
  if ((re::IntrospectionInfo<re::DynamicArray<re::AssetHandle>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::DynamicArray<re::AssetHandle>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<re::AssetHandle>>::get(BOOL)::info, 0);
    qword_1EE186C20 = 0x2800000003;
    dword_1EE186C28 = v8;
    word_1EE186C2C = 0;
    *&xmmword_1EE186C30 = 0;
    *(&xmmword_1EE186C30 + 1) = 0xFFFFFFFFLL;
    qword_1EE186C40 = v7;
    unk_1EE186C48 = 0;
    re::IntrospectionInfo<re::DynamicArray<re::AssetHandle>>::get(BOOL)::info = &unk_1F5CBD930;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::DynamicArray<re::AssetHandle>>::get(BOOL)::info, &v15);
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
    xmmword_1EE186C30 = v14;
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

  return &re::IntrospectionInfo<re::DynamicArray<re::AssetHandle>>::get(BOOL)::info;
}

void *re::allocInfo_MeshAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE193FD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193FD0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE193FF8, "MeshAsset");
    __cxa_guard_release(&qword_1EE193FD0);
  }

  return &unk_1EE193FF8;
}

void re::initInfo_MeshAsset(re *this, re::IntrospectionBase *a2)
{
  v16[0] = 0x7CB41A3561C6;
  v16[1] = "MeshAsset";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE193FC8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE193FC8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_MeshAssetData(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "meshAssetData";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0x1000000001;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE193FE0 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::IntrospectionInfo<re::DynamicArray<re::AssetHandle>>::get(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "skeletons";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x10800000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE193FE8 = v12;
      v13 = re::introspectionAllocator(v12);
      v14 = (*(*v13 + 32))(v13, 64, 8);
      *v14 = 6;
      *(v14 + 8) = 1;
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0;
      *(v14 + 40) = 1;
      *(v14 + 48) = re::MeshAssetLoader::downgradeMeshAssetFromFall2021;
      *(v14 + 56) = 1;
      qword_1EE193FF0 = v14;
      __cxa_guard_release(&qword_1EE193FC8);
    }
  }

  *(this + 2) = 0x4F800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE193FE0;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v15 = v17;
}

uint64_t re::MeshAssetData::MeshAssetData(uint64_t result, uint64_t a2)
{
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  v2 = *(a2 + 8);
  *result = *a2;
  *(result + 8) = v2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(result + 32);
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = v4;
  ++*(a2 + 24);
  ++*(result + 24);
  *(result + 72) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  *(result + 64) = 0;
  v5 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v5;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v6 = *(result + 56);
  *(result + 56) = *(a2 + 56);
  *(a2 + 56) = v6;
  v7 = *(result + 72);
  *(result + 72) = *(a2 + 72);
  *(a2 + 72) = v7;
  ++*(a2 + 64);
  ++*(result + 64);
  *(result + 112) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  v8 = *(a2 + 88);
  *(result + 80) = *(a2 + 80);
  *(result + 88) = v8;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v9 = *(result + 96);
  *(result + 96) = *(a2 + 96);
  *(a2 + 96) = v9;
  v10 = *(result + 112);
  *(result + 112) = *(a2 + 112);
  *(a2 + 112) = v10;
  ++*(a2 + 104);
  ++*(result + 104);
  *(result + 152) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 120) = 0;
  *(result + 144) = 0;
  v11 = *(a2 + 128);
  *(result + 120) = *(a2 + 120);
  *(result + 128) = v11;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  v12 = *(result + 136);
  *(result + 136) = *(a2 + 136);
  *(a2 + 136) = v12;
  v13 = *(result + 152);
  *(result + 152) = *(a2 + 152);
  *(a2 + 152) = v13;
  ++*(a2 + 144);
  ++*(result + 144);
  *(result + 160) = *(a2 + 160);
  *(result + 200) = 0;
  *(result + 176) = 0;
  *(result + 184) = 0;
  *(result + 168) = 0;
  *(result + 192) = 0;
  v14 = *(a2 + 176);
  *(result + 168) = *(a2 + 168);
  *(result + 176) = v14;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  v15 = *(result + 184);
  *(result + 184) = *(a2 + 184);
  *(a2 + 184) = v15;
  v16 = *(result + 200);
  *(result + 200) = *(a2 + 200);
  *(a2 + 200) = v16;
  ++*(a2 + 192);
  ++*(result + 192);
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN2re16FixedInlineArrayIN2NS9SharedPtrIN3MTL6BufferEEELm8EEENS9_INS8_20BufferSliceSourceCPUELm8EEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSJ_1EJSF_SH_EEEEEEDcSL_DpT0_(uint64_t a1, uint64_t a2)
{
  for (i = 56; i != -8; i -= 8)
  {
    v4 = *(a2 + i);
    if (v4)
    {

      *(a2 + i) = 0;
    }
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN2re16FixedInlineArrayIN2NS9SharedPtrIN3MTL6BufferEEELm8EEENS9_INS8_20BufferSliceSourceCPUELm8EEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSJ_1EJSF_SH_EEEEEEDcSL_DpT0_(uint64_t a1, uint64_t a2)
{
  for (i = 184; i != -8; i -= 24)
  {
    v4 = *(a2 + i);
    if (v4)
    {

      *(a2 + i) = 0;
    }
  }
}

uint64_t *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<re::FixedInlineArray<NS::SharedPtr<MTL::Buffer>,8ul>,re::FixedInlineArray<re::BufferSliceSourceCPU,8ul>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::FixedInlineArray<NS::SharedPtr<MTL::Buffer>,8ul>,re::FixedInlineArray<re::BufferSliceSourceCPU,8ul>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<re::FixedInlineArray<NS::SharedPtr<MTL::Buffer>,8ul>,re::FixedInlineArray<re::BufferSliceSourceCPU,8ul>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::FixedInlineArray<NS::SharedPtr<MTL::Buffer>,8ul>,re::FixedInlineArray<re::BufferSliceSourceCPU,8ul>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::FixedInlineArray<NS::SharedPtr<MTL::Buffer>,8ul>,re::FixedInlineArray<re::BufferSliceSourceCPU,8ul>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::FixedInlineArray<NS::SharedPtr<MTL::Buffer>,8ul>,re::FixedInlineArray<re::BufferSliceSourceCPU,8ul>> &&>(uint64_t *result, uint64_t a2)
{
  v2 = 0;
  v3 = *result;
  do
  {
    *(v3 + v2) = *(a2 + v2);
    *(a2 + v2) = 0;
    v2 += 8;
  }

  while (v2 != 64);
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<re::FixedInlineArray<NS::SharedPtr<MTL::Buffer>,8ul>,re::FixedInlineArray<re::BufferSliceSourceCPU,8ul>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::FixedInlineArray<NS::SharedPtr<MTL::Buffer>,8ul>,re::FixedInlineArray<re::BufferSliceSourceCPU,8ul>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<re::FixedInlineArray<NS::SharedPtr<MTL::Buffer>,8ul>,re::FixedInlineArray<re::BufferSliceSourceCPU,8ul>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::FixedInlineArray<NS::SharedPtr<MTL::Buffer>,8ul>,re::FixedInlineArray<re::BufferSliceSourceCPU,8ul>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::FixedInlineArray<NS::SharedPtr<MTL::Buffer>,8ul>,re::FixedInlineArray<re::BufferSliceSourceCPU,8ul>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::FixedInlineArray<NS::SharedPtr<MTL::Buffer>,8ul>,re::FixedInlineArray<re::BufferSliceSourceCPU,8ul>> &&>(__n128 **a1, __n128 *a2)
{
  v2 = a2 + 1;
  v3 = *a1 + 1;
  v4 = 8;
  do
  {
    result = v2[-1];
    v3[-1] = result;
    v3->n128_u64[0] = v2->n128_u64[0];
    v3 = (v3 + 24);
    v2->n128_u64[0] = 0;
    v2 = (v2 + 24);
    --v4;
  }

  while (v4);
  return result;
}

uint64_t re::DynamicArray<re::MeshModel>::deinit(uint64_t a1)
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
        v5 = 864 * v4;
        do
        {
          re::MeshModel::~MeshModel(v3);
          v3 = (v3 + 864);
          v5 -= 864;
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

void re::MeshModel::~MeshModel(re::MeshModel *this)
{
  for (i = 824; i != 104; i -= 40)
  {
    std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100]((this + i));
  }

  re::FixedArray<re::MeshLodLevelInfo>::deinit(this + 14);
  re::FixedArray<re::MeshPart>::deinit(this + 6);
  re::StringID::destroyString(this);
}

void *re::FixedArray<re::MeshLodLevelInfo>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = 48 * v2;
      v5 = result[2] + 8;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v5);
        v5 += 48;
        v4 -= 48;
      }

      while (v4);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::FixedArray<re::MeshPart>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 544 * v2;
      do
      {
        re::StringID::destroyString((v4 + 61));
        re::FixedArray<re::StringID>::deinit(v4 + 41);
        re::AttributeTable::~AttributeTable(v4);
        v4 += 68;
        v5 -= 544;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void re::MeshNameMap::~MeshNameMap(re::MeshNameMap *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 50);
  re::FixedArray<CoreIKTransform>::deinit(this + 47);
  re::FixedArray<CoreIKTransform>::deinit(this + 44);
  re::FixedArray<CoreIKTransform>::deinit(this + 41);
  re::FixedArray<re::HashTable<re::StringID,unsigned short,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::deinit(this + 38);
  re::FixedArray<CoreIKTransform>::deinit(this + 35);
  re::FixedArray<CoreIKTransform>::deinit(this + 32);
  re::FixedArray<CoreIKTransform>::deinit(this + 29);
  re::FixedArray<CoreIKTransform>::deinit(this + 26);
  re::FixedArray<re::StringID>::deinit(this + 23);
  re::FixedArray<re::StringID>::deinit(this + 20);
  re::FixedArray<re::FixedArray<unsigned int>>::deinit(this + 17);
  re::FixedArray<CoreIKTransform>::deinit(this + 14);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 8);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 2);
}

void *re::FixedArray<re::HashTable<re::StringID,unsigned short,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 48 * v2;
      do
      {
        v6 = re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v4);
        v4 += 6;
        v5 -= 48;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2], v6);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<re::FixedInlineArray<NS::SharedPtr<MTL::Buffer>,8ul>,re::FixedInlineArray<re::BufferSliceSourceCPU,8ul>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<re::FixedInlineArray<NS::SharedPtr<MTL::Buffer>,8ul>,re::FixedInlineArray<re::BufferSliceSourceCPU,8ul>>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 192);
  v4 = *(a2 + 192);
  if (v3 == -1)
  {
    if (v4 == -1)
    {
      return result;
    }
  }

  else if (v4 == -1)
  {
    result = (off_1F5CBD6E8[v3])(&v6, result, a2);
    *(v2 + 192) = -1;
    return result;
  }

  v5 = result;
  return (off_1F5CBD708[v4])(&v5, result, a2);
}

void **_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2re16FixedInlineArrayIN2NS9SharedPtrIN3MTL6BufferEEELm8EEENS9_INS8_20BufferSliceSourceCPUELm8EEEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISI_LNS0_6_TraitE1EEEEEvOT_EUlRSO_OT0_E_JRNS0_6__baseILSM_1EJSF_SH_EEEOSW_EEEDcSO_DpT0_(void **result, void **a2, void **a3)
{
  v4 = *result;
  v5 = *(*result + 48);
  if (v5 != -1)
  {
    if (!v5)
    {
      v7 = 8;
      do
      {
        result = NS::SharedPtr<MTL::Texture>::operator=(a2++, a3++);
        --v7;
      }

      while (v7);
      return result;
    }

    result = (off_1F5CBD6E8[v5])(&v9, v4);
  }

  for (i = 0; i != 64; i += 8)
  {
    *&v4[i / 4] = a3[i / 8];
    a3[i / 8] = 0;
  }

  v4[48] = 0;
  return result;
}

void **_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2re16FixedInlineArrayIN2NS9SharedPtrIN3MTL6BufferEEELm8EEENS9_INS8_20BufferSliceSourceCPUELm8EEEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISI_LNS0_6_TraitE1EEEEEvOT_EUlRSO_OT0_E_JRNS0_6__baseILSM_1EJSF_SH_EEEOSW_EEEDcSO_DpT0_(void **result, uint64_t a2, uint64_t a3)
{
  v4 = *result;
  v5 = *(*result + 48);
  if (v5 != -1)
  {
    if (v5 == 1)
    {
      v6 = (a3 + 16);
      v7 = (a2 + 16);
      v8 = 8;
      do
      {
        *(v7 - 1) = *(v6 - 1);
        result = NS::SharedPtr<MTL::Texture>::operator=(v7, v6);
        v6 += 3;
        v7 += 3;
        --v8;
      }

      while (v8);
      return result;
    }

    result = (off_1F5CBD6E8[v5])(&v12, v4);
  }

  *(v4 + 48) = -1;
  v9 = (a3 + 16);
  v10 = v4 + 16;
  v11 = 8;
  do
  {
    *(v10 - 1) = *(v9 - 1);
    *v10 = *v9;
    v10 += 3;
    *v9 = 0;
    v9 += 3;
    --v11;
  }

  while (v11);
  *(v4 + 48) = 1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSC_SE_EEEEEEDcSI_DpT0_(uint64_t a1, id *a2)
{
  if (*a2)
  {

    *a2 = 0;
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSC_SE_EEEEEEDcSI_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {

    *(a2 + 16) = 0;
  }
}

void re::HashSetBase<re::DataArrayHandle<re::MeshModel>,re::DataArrayHandle<re::MeshModel>,re::internal::ValueAsKey<re::DataArrayHandle<re::MeshModel>>,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_263, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash();
    __break(1u);
  }
}

void *re::FixedArray<re::SharedPtr<re::MaterialParameterBlock>>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 8 * v2;
      do
      {
        if (*v4)
        {

          *v4 = 0;
        }

        v4 += 8;
        v5 -= 8;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void re::internal::Callable<re::MeshAssetLoader::createRuntimeData(void *,re::SeekableInputStream *,re::Slice<re::SharedPtr<re::InputStreamSource>> const&&,re::HashTable<re::DynamicString,std::variant<re::HashTable,re::Data,unsigned long>,re::Hash<re::HashTable>,re::EqualTo<re::HashTable>,true,false> const*)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream&)>::operator()(uint64_t a1@<X8>)
{
  re::WrappedError::make(@"RERealityFileWriterErrorDomain", 5, "VVM files not supported on xcode trains.", &v3);
  v2 = v3;
  v3 = 0;
  *a1 = 0;
  *(a1 + 8) = v2;
}

void *re::internal::Callable<re::MeshAssetLoader::createRuntimeData(void *,re::SeekableInputStream *,re::Slice<re::SharedPtr<re::InputStreamSource>> const&&,re::HashTable<re::DynamicString,std::variant<re::HashTable,re::Data,unsigned long>,re::Hash<re::HashTable>,re::EqualTo<re::HashTable>,true,false> const*)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CBD738;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::MeshAssetLoader::createRuntimeData(void *,re::SeekableInputStream *,re::Slice<re::SharedPtr<re::InputStreamSource>> const&&,re::HashTable<re::DynamicString,std::variant<re::HashTable,re::Data,unsigned long>,re::Hash<re::HashTable>,re::EqualTo<re::HashTable>,true,false> const*)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CBD738;
  a2[1] = v2;
  return a2;
}

re::DynamicString *re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(re::DynamicString *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 28);
        if (*(a1 + 6) < v4)
        {
          re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, v4);
        }

        re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
        ++*(a1 + 10);
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

        re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, v5, v6);
        re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
      }
    }
  }

  return a1;
}

void re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 56 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_262, 4 * v10);
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

re::DynamicString *re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(re::DynamicString *result, uint64_t a2)
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
        v8 = re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 48) % *(v4 + 24), *(v7 + v5 + 48));
        result = re::DynamicString::DynamicString((v8 + 8), (*(a2 + 16) + v5 + 8));
        *(v8 + 40) = *(*(a2 + 16) + v5 + 40);
        v2 = *(a2 + 32);
      }

      v5 += 56;
    }
  }

  return result;
}

void re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_263, 4 * v2);
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
          re::DynamicString::deinit((v6 + v4 + 8));
          v3 = *(a1 + 32);
        }

        v4 += 56;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

void re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 56 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 48) = a3;
  ++*(a1 + 28);
  return v7 + 56 * v5;
}

uint64_t re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 48) % *(v4 + 24));
        v8 = (*(a2 + 16) + v5);
        *(result + 24) = 0u;
        *(result + 8) = 0u;
        *(result + 32) = v8[4];
        v9 = v8[2];
        *(result + 8) = v8[1];
        v8[1] = 0;
        v10 = v8[3];
        v8[4] = 0;
        v12 = *(result + 16);
        v11 = *(result + 24);
        *(result + 16) = v9;
        *(result + 24) = v10;
        v8[2] = v12;
        v8[3] = v11;
        *(result + 40) = *(*(a2 + 16) + v5 + 40);
        v2 = *(a2 + 32);
      }

      v5 += 56;
    }
  }

  return result;
}

void *re::FixedArray<re::VertexBufferFormat>::FixedArray(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<re::VertexBufferFormat>::init<>(a1, v4, *(a2 + 8));
    re::FixedArray<re::VertexBufferFormat>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::FixedArray<re::VertexBufferFormat>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 60)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 16 * a3, 4);
  *(v4 + 16) = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *result = 0x10000;
      *(result + 4) = 256;
      result += 16;
      --v6;
    }

    while (v6);
  }

  *result = 0x10000;
  *(result + 4) = 256;
  return result;
}

void *re::FixedArray<re::VertexBufferFormat>::copy(void *result, uint64_t a2)
{
  v4 = result[1];
  if (v4 == *(a2 + 8))
  {
    if (v4)
    {
      v5 = *(a2 + 16);
      v6 = result[2];

      return memmove(v6, v5, 16 * v4 - 3);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::BufferTable::operator=(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a1 != a2)
  {
    re::DynamicArray<re::BufferView>::operator=(a1 + 64, (a2 + 64));
    re::BucketArray<re::BufferSlice,8ul>::operator=(a1 + 144, a2 + 144);
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::copy(a1, a2);
    re::DynamicArray<re::FixedArray<unsigned long>>::operator=(a1 + 200, (a2 + 200));
    re::DynamicArray<unsigned long>::operator=(a1 + 240, (a2 + 240));
    v4 = *(a2 + 280);
    *(a1 + 280) = v4;
    if (v4)
    {
      v5 = 0;
      for (i = 0; i < *(a1 + 280); ++i)
      {
        if (*(a1 + 184) > i)
        {
          v7 = re::BucketArray<re::BufferSlice,8ul>::operator[](a1 + 144, i);
          if (re::BufferSlice::isValid(v7))
          {
            v8 = re::BucketArray<re::BufferSlice,8ul>::operator[](a1 + 144, i);
            v9 = *(a1 + 80);
            if (v9 <= i)
            {
              v27 = 0u;
              v28 = 0u;
              v25 = 0u;
              v26 = 0u;
              v24 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v16 = 136315906;
              v17 = "operator[]";
              v18 = 1024;
              v19 = 789;
              v20 = 2048;
              v21 = i;
              v22 = 2048;
              v23 = v9;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_13:
              v27 = 0u;
              v28 = 0u;
              v25 = 0u;
              v26 = 0u;
              v24 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v16 = 136315906;
              v17 = "operator[]";
              v18 = 1024;
              v19 = 789;
              v20 = 2048;
              v21 = i;
              v22 = 2048;
              v23 = v9;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_14:
              std::__throw_bad_variant_access[abi:nn200100]();
            }

            v10 = *(v8 + 24);
            if (v10 == -1)
            {
              goto LABEL_14;
            }

            v11 = *(*(a1 + 96) + v5 + 16);
            *&v24 = &v16;
            v12 = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_10BufferViewC1ERKNS6_11BufferSliceEmmE3__0ZNS9_C1ESC_mmE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v10])(&v24, v8);
            v9 = *(a1 + 80);
            if (v9 <= i)
            {
              goto LABEL_13;
            }

            v14 = (*(a1 + 96) + v5);
            *v14 = v12;
            v14[1] = v13;
            v14[2] = v11;
          }
        }

        v5 += 24;
      }
    }
  }

  return a1;
}

{
  if (a1 != a2)
  {
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap(a1, a2);
  }

  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a1 + 64, a2 + 64);
  re::DynamicArray<re::RigComponentConstraint>::operator=(a1 + 104, a2 + 104);
  re::BucketArray<re::BufferSlice,8ul>::operator=((a1 + 144), (a2 + 144));
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a1 + 200, a2 + 200);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a1 + 240, a2 + 240);
  *(a1 + 280) = *(a2 + 280);
  return a1;
}

uint64_t re::DynamicArray<re::BufferView>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::RigExpression>::copy(a1, a2);
      }

      else
      {
        *(a1 + 16) = 0;
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::RigExpression>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::BucketArray<re::BufferSlice,8ul>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::BucketArray<re::BufferSlice,8ul>::copy(a1, a2);
        ++*(a1 + 48);
      }

      else
      {
        re::BucketArray<re::BufferSlice,8ul>::clear(a1);
      }
    }

    else if (v4)
    {
      re::BucketArray<re::BufferSlice,8ul>::init(a1, v4, *(a2 + 8));
      re::BucketArray<re::BufferSlice,8ul>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::FixedArray<unsigned long>>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::FixedArray<unsigned long>>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::FixedArray<unsigned long>>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::FixedArray<unsigned long>>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::BucketArray<re::BufferSlice,8ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 3)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 3)) + 40 * (a2 & 7);
}

{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 3)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 3)) + 40 * (a2 & 7);
}

uint64_t re::BucketArray<re::BufferSlice,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::BufferSlice,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void re::BucketArray<re::BufferSlice,8ul>::copy(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 40);
  if (v4 >= *(a1 + 40))
  {
    re::BucketArray<re::BufferSlice,8ul>::setBucketsCapacity(a1, (v4 + 7) >> 3);
    std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::BufferSlice,8ul>::BucketArrayIterator<re::BufferSlice,re::BufferSlice const&,re::BucketArray<re::BufferSlice,8ul> const&,true>,re::BucketArray<re::BufferSlice,8ul>::BucketArrayIterator<re::BufferSlice,re::BufferSlice const&,re::BucketArray<re::BufferSlice,8ul> const&,true>,re::BucketArray<re::BufferSlice,8ul>::BucketArrayIterator<re::BufferSlice,re::BufferSlice&,re::BucketArray<re::BufferSlice,8ul>&,true>>(a2, 0, a2, *(a1 + 40), a1, 0, v15);
    v8 = *(a1 + 40);
    v9 = v4 - v8;
    if (v4 != v8)
    {
      v10 = 0;
      do
      {
        v11 = v10 + *(a1 + 40);
        if (*(a1 + 8) <= v11 >> 3)
        {
          memset(v15, 0, sizeof(v15));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v12 = a1 + 24;
        if ((*(a1 + 16) & 1) == 0)
        {
          v12 = *(a1 + 32);
        }

        v13 = *(v12 + 8 * (v11 >> 3)) + 40 * (v11 & 7);
        v14 = re::BucketArray<re::BufferSlice,8ul>::operator[](a2, v11);
        *v13 = 0;
        *(v13 + 24) = -1;
        std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v13, v14);
        *(v13 + 32) = *(v14 + 32);
        ++v10;
      }

      while (v9 != v10);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::BufferSlice,8ul>::BucketArrayIterator<re::BufferSlice,re::BufferSlice const&,re::BucketArray<re::BufferSlice,8ul> const&,true>,re::BucketArray<re::BufferSlice,8ul>::BucketArrayIterator<re::BufferSlice,re::BufferSlice const&,re::BucketArray<re::BufferSlice,8ul> const&,true>,re::BucketArray<re::BufferSlice,8ul>::BucketArrayIterator<re::BufferSlice,re::BufferSlice&,re::BucketArray<re::BufferSlice,8ul>&,true>>(a2, 0, a2, *(a2 + 40), a1, 0, v15);
    if (v4 != *(a1 + 40))
    {
      v5 = v4;
      do
      {
        v6 = re::BucketArray<re::BufferSlice,8ul>::operator[](a1, v5);
        v7 = *(v6 + 24);
        if (v7 != -1)
        {
          (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[v7])(v15, v6);
        }

        *(v6 + 24) = -1;
        ++v5;
      }

      while (v5 != *(a1 + 40));
    }
  }

  *(a1 + 40) = v4;
}

uint64_t re::BucketArray<re::BufferSlice,8ul>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      result = re::BucketArray<re::BufferSlice,8ul>::operator[](v1, i);
      v4 = result;
      v5 = *(result + 24);
      if (v5 != -1)
      {
        result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[v5])(&v6, result);
      }

      *(v4 + 24) = -1;
    }
  }

  *(v1 + 40) = 0;
  ++*(v1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::BufferSlice,8ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 8 * a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 320, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

void std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::BufferSlice,8ul>::BucketArrayIterator<re::BufferSlice,re::BufferSlice const&,re::BucketArray<re::BufferSlice,8ul> const&,true>,re::BucketArray<re::BufferSlice,8ul>::BucketArrayIterator<re::BufferSlice,re::BufferSlice const&,re::BucketArray<re::BufferSlice,8ul> const&,true>,re::BucketArray<re::BufferSlice,8ul>::BucketArrayIterator<re::BufferSlice,re::BufferSlice&,re::BucketArray<re::BufferSlice,8ul>&,true>>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t *a7@<X8>)
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

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 24);
  v4 = *(a2 + 24);
  if (v3 == -1)
  {
    if (v4 == -1)
    {
      return result;
    }
  }

  else if (v4 == -1)
  {
    result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[v3])(&v6, result, a2);
    *(v2 + 24) = -1;
    return result;
  }

  v5 = result;
  return (__const__ZNSt3__116__variant_detail12__visitation6__base14__visit_alt_atB8nn200100IZNS0_12__assignmentINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSL_OT0_E_JRSE_SK_EEEDcmSM_DpOT0____fdiagonal[v4])(&v5, result, a2);
}

void **std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__assign_alt[abi:nn200100]<0ul,NS::SharedPtr<MTL::Buffer>,NS::SharedPtr<MTL::Buffer> const&>(uint64_t a1, void **a2, id *a3)
{
  if (*(a1 + 24))
  {
    return std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__emplace[abi:nn200100]<0ul,NS::SharedPtr<MTL::Buffer> const&>(a1, a3);
  }

  else
  {
    return NS::SharedPtr<MTL::Buffer>::operator=(a2, a3);
  }
}

void **NS::SharedPtr<MTL::Buffer>::operator=(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 != *a2)
  {
    if (v3)
    {

      v4 = *a2;
    }

    *a1 = v4;
  }

  return a1;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__emplace[abi:nn200100]<0ul,NS::SharedPtr<MTL::Buffer> const&>(uint64_t a1, id *a2)
{
  v4 = *(a1 + 24);
  if (v4 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[v4])(&v6, a1);
  }

  *(a1 + 24) = -1;
  *a1 = *a2;
  *(a1 + 24) = 0;
  return a1;
}

void **std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__assign_alt[abi:nn200100]<1ul,re::BufferSliceSourceCPU,re::BufferSliceSourceCPU const&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24) != 1)
  {
    return std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__emplace[abi:nn200100]<1ul,re::BufferSliceSourceCPU const&>(a1, a3);
  }

  *a2 = *a3;
  return NS::SharedPtr<MTL::Buffer>::operator=((a2 + 16), (a3 + 16));
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__emplace[abi:nn200100]<1ul,re::BufferSliceSourceCPU const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (v4 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[v4])(&v6, a1);
  }

  *(a1 + 24) = -1;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = 1;
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 24);
  if (v4 != -1)
  {
    result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[v4])(&v7, result);
  }

  *(v3 + 24) = -1;
  v5 = *(a2 + 24);
  if (v5 != -1)
  {
    v6 = v3;
    result = (__const__ZNSt3__116__variant_detail12__visitation6__base14__visit_alt_atB8nn200100IZNS0_6__ctorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISD_LNS0_6_TraitE1EEEEEvRSE_OT_EUlSN_E_JSK_EEEDcmSN_DpOT0____fdiagonal[v5])(&v6, a2);
    *(v3 + 24) = v5;
  }

  return result;
}

id _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISF_LNS0_6_TraitE1EEEEEvRSG_OT_EUlSP_E_JRKNS0_6__baseILSJ_1EJSC_SE_EEEEEEDcSO_DpT0_(void **a1, id *a2)
{
  v2 = *a1;
  result = *a2;
  *v2 = result;
  return result;
}

id _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISF_LNS0_6_TraitE1EEEEEvRSG_OT_EUlSP_E_JRKNS0_6__baseILSJ_1EJSC_SE_EEEEEEDcSO_DpT0_(void *a1, uint64_t a2)
{
  v2 = *a1;
  **a1 = *a2;
  result = *(a2 + 16);
  *(v2 + 2) = result;
  return result;
}

void *re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::copy(void *a1, uint64_t a2)
{
  result = re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::clear(a1);
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
        v12 = *(v15[0] + 8) + 16 * v11;
        v13 = *v12;
        v14[0] = *(v12 + 8);
        re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::internalAdd(a1, &v13, v14);
        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v15);
        v11 = v16;
      }

      while (v16 != -1);
    }
  }

  return result;
}

void *re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::clear(void *result)
{
  v1 = result;
  result[5] = 0;
  result[6] = 0;
  v2 = result[2];
  result[3] = 0;
  result[4] = v2;
  v11[0] = result;
  if (v2 >= 0x10)
  {
    v3 = 0;
    v4 = *result;
    v5 = v2 >> 4;
    while (1)
    {
      v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v4), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v11[1] = v6 ^ 0xFFFFLL;
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
    v12 = v7 - v3;
    if (v7 + 1 != v3)
    {
      do
      {
        *(v1[1] + 16 * v8) = 0;
        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v11);
        v8 = v12;
      }

      while (v12 != -1);
      v2 = v1[2];
    }
  }

LABEL_9:
  if (v2 >= 0x10)
  {
    v9 = 0;
    *&v10 = -1;
    *(&v10 + 1) = -1;
    do
    {
      *(*v1 + 16 * v9++) = v10;
    }

    while (v9 < v1[2] >> 4);
  }

  return result;
}

uint64_t re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::internalAdd(uint64_t a1, void *a2, _BYTE *a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::resize(a1, 1);
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
  v17 = *(a1 + 8) + 16 * v16;
  *v17 = *a2;
  *(v17 + 8) = *a3;
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
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::updateHashes(a1, *(a1 + 8) + 16 * v16);
  return *(a1 + 8) + 16 * v16 + 8;
}

{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::resize(a1, 1);
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
  v17 = *(a1 + 8) + 16 * v16;
  *v17 = *a2;
  *(v17 + 8) = *a3;
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
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::updateHashes(a1, *(a1 + 8) + 16 * v16);
  return *(a1 + 8) + 16 * v16 + 8;
}

double re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::resize(uint64_t a1, int a2)
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

  return re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::doResize(a1, v3);
}

uint64_t re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::updateHashes(uint64_t result, uint64_t a2)
{
  v2 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v3 = (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
  v4 = *(result + 48);
  *(result + 40) ^= v3;
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(a2 + 8)) ^ ((0xBF58476D1CE4E5B9 * *(a2 + 8)) >> 27));
  *(result + 48) = v4 ^ v3 ^ ((v3 << 6) + (v3 >> 2) + (v5 ^ (v5 >> 31)) - 0x61C8864680B583E9);
  return result;
}

double re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v21, 0, sizeof(v21));
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v21, v4, a2);
  v19[0] = a1;
  v5 = *(a1 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a1;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v19[1] = v9 ^ 0xFFFFLL;
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
    v11 = v10 - v6;
    v20 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::internalAdd(v21, (*(v19[0] + 8) + 16 * v11), (*(v19[0] + 8) + 16 * v11 + 8));
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v19);
        v11 = v20;
      }

      while (v20 != -1);
      v5 = *(a1 + 16);
    }
  }

LABEL_9:
  v12 = *(&v21[3] + 1);
  *(&v21[3] + 1) = *(a1 + 56);
  v13 = v21[0];
  v14 = v21[1];
  v21[0] = *a1;
  *&v21[1] = v5;
  v15 = v21[2];
  v16 = *(a1 + 40);
  *(a1 + 48) = *&v21[3];
  *(a1 + 56) = v12;
  *(&v21[2] + 8) = v16;
  v17 = *(a1 + 24);
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  *(&v21[1] + 8) = v17;
  return re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(v21);
}

double re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 8))
    {
      v10[0] = a1;
      v2 = *(a1 + 16);
      if (v2 >= 0x10)
      {
        v3 = 0;
        v4 = *a1;
        v5 = v2 >> 4;
        while (1)
        {
          v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v4), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v10[1] = v6 ^ 0xFFFFLL;
          if (v6 != 0xFFFFLL)
          {
            break;
          }

          v3 -= 16;
          ++v4;
          if (!--v5)
          {
            goto LABEL_10;
          }
        }

        v7 = __clz(__rbit64(v6 ^ 0xFFFFLL));
        v8 = v7 - v3;
        v11 = v7 - v3;
        if (v7 + 1 != v3)
        {
          do
          {
            *(*(a1 + 8) + 16 * v8) = 0;
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v10);
            v8 = v11;
          }

          while (v11 != -1);
        }
      }

LABEL_10:
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

uint64_t *re::DynamicArray<re::FixedArray<unsigned long>>::copy(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(result, *(a2 + 16));
    v11 = *(a2 + 32);
    v12 = v3[2];
    v13 = v3[4];
    if (v12)
    {
      v14 = 24 * v12;
      do
      {
        result = re::FixedArray<unsigned long>::operator=(v13, v11);
        v11 += 24;
        v13 += 3;
        v14 -= 24;
      }

      while (v14);
      v13 = v3[4];
      v12 = v3[2];
      v11 = *(a2 + 32);
    }

    if (v12 != v4)
    {
      v15 = 3 * v12;
      v16 = v11 + 8 * v15;
      result = &v13[v15];
      v17 = 24 * v4 - 8 * v15;
      do
      {
        v18 = re::FixedArray<unsigned long>::FixedArray(result, v16);
        v16 += 24;
        result = v18 + 3;
        v17 -= 24;
      }

      while (v17);
    }
  }

  else
  {
    v6 = result[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 24 * v4;
      do
      {
        result = re::FixedArray<unsigned long>::operator=(v6, v7);
        v7 += 24;
        v6 += 3;
        v8 -= 24;
      }

      while (v8);
      v6 = v3[4];
      v5 = v3[2];
    }

    if (v4 != v5)
    {
      v9 = &v6[3 * v4];
      v10 = 24 * v5 - 24 * v4;
      do
      {
        result = re::FixedArray<CoreIKTransform>::deinit(v9);
        v9 += 3;
        v10 -= 24;
      }

      while (v10);
    }
  }

  v3[2] = v4;
  return result;
}

uint64_t re::DynamicArray<re::FixedArray<unsigned long>>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 24 * v2;
    do
    {
      result = re::FixedArray<CoreIKTransform>::deinit(v3);
      v3 += 3;
      v4 -= 24;
    }

    while (v4);
  }

  ++*(v1 + 24);
  return result;
}

void re::DynamicArray<re::BufferView>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4)
    {
      v5 = 24 * (a2 - v4);
      if (v5 >= 1)
      {
        bzero((*(a1 + 32) + 24 * v4), 24 * (v5 / 0x18uLL - (v5 > 0x17)) + 24);
      }
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

uint64_t re::BucketArray<re::BufferSlice,8ul>::resize(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 40);
  if (v4 >= a2)
  {
    if (v4 > a2)
    {
      v5 = a2;
      do
      {
        result = re::BucketArray<re::BufferSlice,8ul>::operator[](v3, v5);
        v6 = result;
        v7 = *(result + 24);
        if (v7 != -1)
        {
          result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[v7])(&v8, result);
        }

        *(v6 + 24) = -1;
        ++v5;
      }

      while (v5 != *(v3 + 40));
      *(v3 + 40) = a2;
    }
  }

  else
  {
    if (a2 > 8 * *(result + 8))
    {
      result = re::BucketArray<re::BufferSlice,8ul>::setBucketsCapacity(result, (a2 + 7) >> 3);
      v4 = *(v3 + 40);
    }

    for (*(v3 + 40) = a2; v4 != *(v3 + 40); ++v4)
    {
      result = re::BucketArray<re::BufferSlice,8ul>::operator[](v3, v4);
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0;
    }
  }

  ++*(v3 + 48);
  return result;
}

uint64_t re::BufferTable::getOrAddKey(re::BufferTable *this, const re::WeakStringID *a2)
{
  v4 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this, a2);
  if (v4 != -1)
  {
    return *(*(this + 1) + 16 * v4 + 8);
  }

  v5 = *(this + 70);
  *(this + 70) = v5 + 1;
  v7 = v5;
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addOrReplace(this, a2, &v7);
  return v5;
}

uint64_t re::BufferTable::setBufferRef(re::BufferTable *this, unsigned int a2, const re::BufferSlice *a3)
{
  if (*(this + 23) <= a2)
  {
    result = re::BufferSlice::isValid(a3);
    if (!result)
    {
      return result;
    }

    re::BufferTable::resizeRefs(this, a2 + 1);
  }

  v7 = re::BucketArray<re::BufferSlice,8ul>::operator[](this + 144, a2);
  result = re::BufferSlice::operator==(a3, v7);
  if ((result & 1) == 0)
  {
    v8 = re::BucketArray<re::BufferSlice,8ul>::operator[](this + 144, a2);
    result = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v8, a3);
    *(v8 + 32) = *(a3 + 4);
  }

  return result;
}

uint64_t re::BufferTable::setBufferView(re::BufferTable *a1, unsigned int a2, __int128 *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 10);
  if (v6 <= a2)
  {
    re::BufferTable::resizeViews(a1, a2 + 1);
    v6 = *(a1 + 10);
  }

  if (v6 <= v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  result = re::BufferView::operator==(a3, (*(a1 + 12) + 24 * v5));
  if (result)
  {
    return result;
  }

  if (re::BufferView::isValid(a3))
  {
    if (*(a1 + 10) <= v5)
    {
LABEL_15:
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v12 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_16;
    }

    result = re::BufferView::isValid((*(a1 + 12) + 24 * v5));
    if (result)
    {
      if (*(a1 + 10) > v5)
      {
        v8 = *(a1 + 12) + 24 * v5;
        v9 = *a3;
        *(v8 + 16) = *(a3 + 2);
        *v8 = v9;
        return result;
      }

LABEL_16:
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v12 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  if (*(a1 + 10) <= v5)
  {
LABEL_14:
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_15;
  }

  v10 = *(a1 + 12) + 24 * v5;
  v11 = *a3;
  *(v10 + 16) = *(a3 + 2);
  *v10 = v11;
  *&v12 = a1;
  return re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::rehashKeysWith<re::BufferTable::rehashNames(void)::{lambda(unsigned char)#1}>(a1, &v12);
}

uint64_t re::BufferTable::setBufferIndirectResources(re::BufferTable *this, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2;
  v33 = *MEMORY[0x1E69E9840];
  if (*(this + 27) <= a2)
  {
    re::BufferTable::resizeResourcePointers(this, (a2 + 1));
    re::BufferTable::resizeResourceHashes(this, (v7 + 1));
  }

  v9 = *(this + 25);
  v17 = 0;
  v18 = 0;
  v16 = 0;
  re::FixedArray<unsigned long>::init<>(&v16, v9, a4);
  if (v17)
  {
    v11 = 0;
    v12 = 0;
    v13 = v18;
    while (a4 != v11)
    {
      v14 = *(a3 + 8 * v11);
      *(v13 + 8 * v11) = v14;
      v4 = v17;
      if (v17 <= v11)
      {
        goto LABEL_17;
      }

      v12 ^= (v12 << 6) + (v12 >> 2) - 0x61C8864680B583E9 + v14;
      if (v17 <= ++v11)
      {
        goto LABEL_10;
      }
    }

    re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a4, a4);
    _os_crash();
    __break(1u);
LABEL_17:
    v19 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    v23 = 468;
    v24 = 2048;
    v25 = v11;
    v26 = 2048;
    v27 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_18:
    v19 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    v23 = 789;
    v24 = 2048;
    v25 = a4;
    v26 = 2048;
    v27 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_19:
    v19 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    v23 = 789;
    v24 = 2048;
    v25 = a4;
    v26 = 2048;
    v27 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v12 = 0;
LABEL_10:
  a4 = v7;
  v7 = *(this + 27);
  if (v7 <= a4)
  {
    goto LABEL_18;
  }

  re::FixedArray<unsigned long>::operator=((*(this + 29) + 24 * a4), &v16);
  v7 = *(this + 32);
  if (v7 <= a4)
  {
    goto LABEL_19;
  }

  *(*(this + 34) + 8 * a4) = v12;
  result = v16;
  if (v16)
  {
    if (v17)
    {
      return (*(*v16 + 40))();
    }
  }

  return result;
}

uint64_t re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addOrReplace(void *a1, void *a2, _BYTE *a3)
{
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v6 == -1)
  {

    return re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::internalAdd(a1, a2, a3);
  }

  else
  {
    v7 = v6;
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::updateKvpsHash(a1, a1[1] + 16 * v6);
    v8 = a1[1] + 16 * v7;
    *(v8 + 8) = *a3;
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::updateKvpsHash(a1, v8);
    return a1[1] + 16 * v7 + 8;
  }
}

uint64_t re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::updateKvpsHash(uint64_t result, uint64_t a2)
{
  v2 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v3 = (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(a2 + 8)) ^ ((0xBF58476D1CE4E5B9 * *(a2 + 8)) >> 27));
  *(result + 48) ^= v3 ^ ((v4 ^ (v4 >> 31)) + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9);
  return result;
}

uint64_t re::BufferTable::resizeRefs(re::BufferTable *this, unint64_t a2)
{
  if (*(this + 23) + 1 == a2)
  {
    *&v10[17] = v2;
    v11 = v3;
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    v4 = re::BucketArray<re::BufferSlice,8ul>::addUninitialized(this + 144);
    *v4 = 0;
    *(v4 + 24) = -1;
    result = std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v4, &v7);
    *(v4 + 32) = v9;
    if (DWORD2(v8) != -1)
    {
      return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[DWORD2(v8)])(v10, &v7);
    }
  }

  else
  {
    v6 = this + 144;

    return re::BucketArray<re::BufferSlice,8ul>::resize(v6, a2);
  }

  return result;
}

uint64_t re::BucketArray<re::BufferSlice,8ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 8 * v3)
  {
    re::BucketArray<re::BufferSlice,8ul>::setBucketsCapacity(a1, (v2 + 8) >> 3);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 3));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 40 * (v2 & 7);
}

void re::BufferTable::resizeViews(re::BufferTable *this, unint64_t a2)
{
  if (*(this + 10) + 1 == a2)
  {
    v7 = v2;
    v8 = v3;
    v5 = 0uLL;
    v6 = 0;
    re::DynamicArray<re::BufferView>::add((this + 64), &v5);
  }

  else
  {
    v4 = this + 64;

    re::DynamicArray<re::BufferView>::resize(v4, a2);
  }
}

__n128 re::DynamicArray<re::BufferView>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::BufferView>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 24 * v4);
  result = *a2;
  v5[1].n128_u64[0] = a2[1].n128_u64[0];
  *v5 = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void *re::DynamicArray<re::BufferView>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

int8x16_t **re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::rehashKeysWith<re::BufferTable::rehashNames(void)::{lambda(unsigned char)#1}>(int8x16_t **result, uint64_t a2)
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

        if (re::BufferView::isValid((*(*a2 + 96) + 24 * *(v11 + 8))))
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

void *re::BufferTable::resizeResourcePointers(re::BufferTable *this, unint64_t a2)
{
  if (*(this + 27) + 1 == a2)
  {
    v10 = v2;
    v11 = v3;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    re::DynamicArray<re::FixedArray<unsigned long>>::add(this + 25, &v7);
    result = v7;
    if (v7)
    {
      v5 = v8 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      return (*(*v7 + 40))();
    }
  }

  else
  {
    v6 = (this + 200);

    return re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::resize(v6, a2);
  }

  return result;
}

void *re::BufferTable::resizeResourceHashes(re::BufferTable *this, unint64_t a2)
{
  if (*(this + 32) + 1 == a2)
  {
    v3 = 0;
    return re::DynamicArray<unsigned long>::add(this + 30, &v3);
  }

  else
  {
    v3 = 0;
    return re::DynamicArray<unsigned long>::resize(this + 30, a2, &v3);
  }
}

void *re::DynamicArray<re::FixedArray<unsigned long>>::add(void *this, void *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::FixedArray<unsigned char>>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = (v3[4] + 24 * v4);
  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  v6 = a2[1];
  *v5 = *a2;
  v5[1] = v6;
  *a2 = 0;
  a2[1] = 0;
  v7 = v5[2];
  v5[2] = a2[2];
  a2[2] = v7;
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

void *re::DynamicArray<unsigned long>::resize(void *result, unint64_t a2, uint64_t *a3)
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
      result = re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(result, a2);
      v5 = v4[2];
    }

    v7 = a2 - v5;
    if (a2 > v5)
    {
      v8 = 0;
      v9 = *a3;
      v10 = vdupq_n_s64(v7 - 1);
      v11 = v4[4] + 8 * v5;
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v8), xmmword_1E3049620)));
        if (v12.i8[0])
        {
          *(v11 + 8 * v8) = v9;
        }

        if (v12.i8[4])
        {
          *(v11 + 8 * v8 + 8) = v9;
        }

        v8 += 2;
      }

      while (((v7 + 1) & 0xFFFFFFFFFFFFFFFELL) != v8);
    }
  }

  v4[2] = a2;
  ++*(v4 + 6);
  return result;
}

void re::AttributeTableBuilder::~AttributeTableBuilder(re::AttributeTableBuilder *this)
{
  *this = 0;
  re::FixedArray<CoreIKTransform>::deinit(this + 1);
  re::BufferTable::deinit((this + 32));
  *(this + 320) = 0;
  re::BufferTable::~BufferTable((this + 32));
  re::FixedArray<CoreIKTransform>::deinit(this + 1);
}

uint64_t re::BufferTable::deinit(re::BufferTable *this)
{
  re::DynamicArray<unsigned long>::deinit(this + 64);
  re::BucketArray<re::BufferSlice,8ul>::deinit(this + 144);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(this + 200);
  result = re::DynamicArray<unsigned long>::deinit(this + 240);
  *(this + 70) = 0;
  return result;
}

uint64_t re::BucketArray<re::BufferSlice,8ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::BufferSlice,8ul>::operator[](a1, i);
      v5 = *(v4 + 24);
      if (v5 != -1)
      {
        (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[v5])(&v7, v4);
      }

      *(v4 + 24) = -1;
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

void re::BufferTable::~BufferTable(re::BufferTable *this)
{
  re::BufferTable::deinit(this);
  re::DynamicArray<unsigned long>::deinit(this + 240);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(this + 200);
  re::BucketArray<re::BufferSlice,8ul>::deinit(this + 144);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 144);
  re::DynamicArray<unsigned long>::deinit(this + 104);
  re::DynamicArray<unsigned long>::deinit(this + 64);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this);
}

uint64_t re::AssetService::createNamedMemoryAsset<re::MeshAsset>(re::MeshAsset *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v8 = re::MeshAsset::assetType(a1);
  (*(*a1 + 432))(a1, a2, &re::MeshAsset::assetType(void)::type, &v10, 0, a4, 0);
  result = v10;
  if (v10)
  {
    if (v11)
    {
      return (*(*v10 + 40))();
    }
  }

  return result;
}

float32x2_t *anonymous namespace::buildDoubleBillboard(_anonymous_namespace_ *this, re::GeomMesh *a2)
{
  v8 = 65537;
  v9 = 0;
  v11 = 0;
  __asm { FMOV            V0.2S, #1.0 }

  v10 = _D0;
  v13 = 4;
  v12 = 0;
  return re::buildPlane(this, &v8);
}

uint64_t anonymous namespace::buildDoubleVertexBillboard(_anonymous_namespace_ *this, re::GeomMesh *a2)
{
  re::GeomMeshBuilder::GeomMeshBuilder(&v37, this);
  if (v38 >= 0x11 && v40 && (v40 - 1) > v40)
  {
      ;
    }
  }

  v38 = 16;
  v43 = 16;
  if (v44)
  {
    v3 = v45;
    v4 = 8 * v44;
    do
    {
      v5 = *v3++;
      (*(*v5 + 80))(v5, v43);
      v4 -= 8;
    }

    while (v4);
  }

  if (v40 >= 0x13)
  {
    v6 = v50;
    if (v50)
    {
      v7 = 0;
      do
      {
        v8 = re::internal::GeomAttributeContainer::attributeByIndex(&v49, v7);
        re::internal::accessFaceVaryingAttributeSubmesh(v8, v9);
        ++v7;
      }

      while (v6 != v7);
    }
  }

  re::DynamicArray<re::GeomCell4>::resize(&v39, 0x12uLL);
  v46 = 18;
  if (v47)
  {
    v10 = v48;
    v11 = 8 * v47;
    do
    {
      v12 = *v10++;
      (*(*v12 + 80))(v12, v46);
      v11 -= 8;
    }

    while (v11);
  }

  re::GeomMeshBuilder::setFaceVertices(&v37, 0, 0, 1, 3);
  re::GeomMeshBuilder::setFaceVertices(&v37, 1u, 3, 1, 2);
  re::GeomMeshBuilder::setFaceVertices(&v37, 2u, 4, 5, 0);
  re::GeomMeshBuilder::setFaceVertices(&v37, 3u, 4, 0, 15);
  re::GeomMeshBuilder::setFaceVertices(&v37, 4u, 5, 6, 0);
  re::GeomMeshBuilder::setFaceVertices(&v37, 5u, 0, 6, 1);
  re::GeomMeshBuilder::setFaceVertices(&v37, 6u, 6, 7, 1);
  re::GeomMeshBuilder::setFaceVertices(&v37, 7u, 1, 7, 8);
  re::GeomMeshBuilder::setFaceVertices(&v37, 8u, 2, 1, 8);
  re::GeomMeshBuilder::setFaceVertices(&v37, 9u, 2, 8, 9);
  re::GeomMeshBuilder::setFaceVertices(&v37, 0xAu, 2, 9, 10);
  re::GeomMeshBuilder::setFaceVertices(&v37, 0xBu, 2, 10, 11);
  re::GeomMeshBuilder::setFaceVertices(&v37, 0xCu, 3, 2, 12);
  re::GeomMeshBuilder::setFaceVertices(&v37, 0xDu, 12, 2, 11);
  re::GeomMeshBuilder::setFaceVertices(&v37, 0xEu, 14, 3, 13);
  re::GeomMeshBuilder::setFaceVertices(&v37, 0xFu, 13, 3, 12);
  re::GeomMeshBuilder::setFaceVertices(&v37, 0x10u, 15, 0, 14);
  re::GeomMeshBuilder::setFaceVertices(&v37, 0x11u, 14, 0, 3);
  v13 = re::GeomMesh::operator=(this, &v38);
  re::GeomMesh::setName(v13, v37);
  re::GeomMesh::freeName(&v37);
  re::addVertexUVs(this, v14);
  v35 = re::GeomMesh::modifyVertexPositions(this);
  v36 = v15;
  v33 = re::modifyVertexUVs(this, v15);
  v34 = v16;
  v17 = re::internal::GeomAttributeManager::attributeByName((this + 64), "vertexNormal");
  v31 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v17);
  v32 = v18;
  v19 = re::internal::GeomAttributeManager::attributeByName((this + 64), "vertexTangent");
  v29 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v19);
  v30 = v20;
  v21 = re::internal::GeomAttributeManager::attributeByName((this + 64), "vertexBitangent");
  v22 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v21);
  v28 = v23;
  v26[0] = &v35;
  v26[1] = &v33;
  v26[2] = &v31;
  v26[3] = &v29;
  v26[4] = &v27;
  v27 = v22;
  v25[0] = xmmword_1E3047670;
  v25[1] = xmmword_1E30476A0;
  v25[2] = xmmword_1E30476B0;
  re::transform(this, v25);
  re::GeomMesh::freeName(&v37);
  re::internal::GeomAttributeManager::~GeomAttributeManager(&v42);
  result = v39;
  if (v39 && v41)
  {
    return (*(*v39 + 40))();
  }

  return result;
}

uint64_t re::GeomMeshBuilder::setFaceVertices(uint64_t this, unsigned int a2, int a3, int a4, int a5)
{
  v5 = a2;
  v6 = *(this + 32);
  if (v6 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v10 = this;
  v11 = (*(this + 48) + 16 * a2);
  v12 = *v11;
  v13 = v11[3];
  if (v12 != -1 && v13 == -1)
  {
    v15 = *(this + 416);
    if (v15)
    {
      for (i = 0; i != v15; ++i)
      {
        v17 = re::internal::GeomAttributeContainer::attributeByIndex((v10 + 49), i);
        this = re::internal::accessFaceVaryingAttributeSubmesh(v17, v18);
      }

      v6 = v10[4];
    }
  }

  if (v6 <= v5)
  {
LABEL_14:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v19 = (v10[6] + 16 * v5);
  *v19 = a3;
  v19[1] = a4;
  v19[2] = a5;
  v19[3] = -1;
  return this;
}

void *anonymous namespace::buildDoubleVertexBillboard(re::GeomMesh &)::$_0::operator()(void *result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(*result + 8) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_8;
  }

  v5 = (**result + 16 * a2);
  *v5 = a3;
  v5[1] = a4;
  v6 = result[1];
  if (*(v6 + 8) <= a2)
  {
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_9;
  }

  *(*v6 + 8 * a2) = a5;
  v7 = result[2];
  if (*(v7 + 8) <= a2)
  {
LABEL_9:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_10;
  }

  v8 = (*v7 + 16 * a2);
  *v8 = 0x3F80000000000000;
  v8[1] = 0;
  v9 = result[3];
  if (*(v9 + 8) <= a2)
  {
LABEL_10:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_11:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v10 = (*v9 + 16 * a2);
  *v10 = 0;
  v10[1] = 1065353216;
  v11 = result[4];
  if (*(v11 + 8) <= a2)
  {
    goto LABEL_11;
  }

  v12 = (*v11 + 16 * a2);
  *v12 = 1065353216;
  v12[1] = 0;
  return result;
}

void *re::DynamicArray<re::GeomCell4>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::BlendNode>::setCapacity(result, a2);
      v4 = v3[2];
    }

    if (a2 > v4 && a2 > v4)
    {
      result = memset((v3[4] + 16 * v4), 255, 16 * (a2 - v4));
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

uint64_t anonymous namespace::buildDoubleVertexCircularBillboard(_anonymous_namespace_ *this, re::GeomMesh *a2)
{
  v64 = *MEMORY[0x1E69E9840];
  re::GeomMeshBuilder::GeomMeshBuilder(&v36, this);
  if (v37 >= 0x52 && v39 && (v39 - 1) > v39)
  {
      ;
    }
  }

  v37 = 81;
  v42 = 81;
  if (v43)
  {
    v3 = v44;
    v4 = 8 * v43;
    do
    {
      v5 = *v3++;
      (*(*v5 + 80))(v5, v42);
      v4 -= 8;
    }

    while (v4);
  }

  if (v39 >= 0x79)
  {
    v6 = v49;
    if (v49)
    {
      v7 = 0;
      do
      {
        v8 = re::internal::GeomAttributeContainer::attributeByIndex(&v48, v7);
        re::internal::accessFaceVaryingAttributeSubmesh(v8, v9);
        ++v7;
      }

      while (v6 != v7);
    }
  }

  re::DynamicArray<re::GeomCell4>::resize(&v38, 0x78uLL);
  v45 = 120;
  if (v46)
  {
    v10 = v47;
    v11 = 8 * v46;
    do
    {
      v12 = *v10++;
      (*(*v12 + 80))(v12, v45);
      v11 -= 8;
    }

    while (v11);
  }

  v13 = 0;
  v14 = 1;
  do
  {
    v15 = v13 + 1;
    v16 = v14 + 2;
    if (v14 >= 0x4E)
    {
      v17 = v14 - 78;
    }

    else
    {
      v17 = v14 + 2;
    }

    re::GeomMeshBuilder::setFaceVertices(&v36, v13, 0, v14, v17);
    v13 = v15;
    v14 = v16;
  }

  while (v15 != 40);
  do
  {
    re::GeomMeshBuilder::setFaceVertices(&v36, v15, v15 - 39, v15 - 38, v15 - 36);
    re::GeomMeshBuilder::setFaceVertices(&v36, v15 + 1, v15 - 39, v15 - 36, v15 - 37);
    v18 = v15 >= 0x74;
    v15 += 2;
  }

  while (!v18);
  re::GeomMeshBuilder::setFaceVertices(&v36, 0x76u, 79, 80, 2);
  re::GeomMeshBuilder::setFaceVertices(&v36, 0x77u, 79, 2, 1);
  v19 = re::GeomMesh::operator=(this, &v37);
  re::GeomMesh::setName(v19, v36);
  re::GeomMesh::freeName(&v36);
  re::addVertexUVs(this, v20);
  v21 = re::GeomMesh::modifyVertexPositions(this);
  v23 = v22;
  v24 = re::modifyVertexUVs(this, v22);
  if (!v23)
  {
LABEL_38:
    v50 = 0;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v51 = 136315906;
    v52 = "operator[]";
    v53 = 1024;
    v54 = 621;
    v55 = 2048;
    v56 = 0;
    v57 = 2048;
    v58 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_39:
    v50 = 0;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v51 = 136315906;
    v52 = "operator[]";
    v53 = 1024;
    v54 = 621;
    v55 = 2048;
    v56 = 0;
    v57 = 2048;
    v58 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v21->i64[0] = 0;
  v21->i64[1] = 0;
  v26 = v25;
  if (!v25)
  {
    goto LABEL_39;
  }

  v27 = 0;
  *v24 = 0;
  v28 = v24 + 2;
  v29 = v21 + 2;
  v30 = 1;
  do
  {
    v33 = __sincosf_stret(v27 * 0.15708);
    v32.f32[0] = v33.__cosval;
    if (v30 >= v23)
    {
      v50 = 0;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v59 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v51 = 136315906;
      v52 = "operator[]";
      v53 = 1024;
      v54 = 621;
      v55 = 2048;
      v56 = v30;
      v57 = 2048;
      v58 = v23;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_35:
      v50 = 0;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v59 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v51 = 136315906;
      v52 = "operator[]";
      v53 = 1024;
      v54 = 621;
      v55 = 2048;
      v56 = v30;
      v57 = 2048;
      v58 = v26;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_36:
      v50 = 0;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v59 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v51 = 136315906;
      v52 = "operator[]";
      v53 = 1024;
      v54 = 621;
      v55 = 2048;
      v56 = v30 + 1;
      v57 = 2048;
      v58 = v23;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_37:
      v50 = 0;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v59 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v51 = 136315906;
      v52 = "operator[]";
      v53 = 1024;
      v54 = 621;
      v55 = 2048;
      v56 = v30 + 1;
      v57 = 2048;
      v58 = v26;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_38;
    }

    v32.i32[1] = LODWORD(v33.__sinval);
    *v31.i8 = vmul_f32(v32, 0x3F0000003F000000);
    v34 = vzip1q_s32(v31, v31);
    v34.i32[1] = 0;
    v29[-1] = v34;
    if (v30 >= v26)
    {
      goto LABEL_35;
    }

    *(v28 - 1) = 0;
    if (v30 + 1 >= v23)
    {
      goto LABEL_36;
    }

    *v29 = v34;
    if (v30 + 1 >= v26)
    {
      goto LABEL_37;
    }

    *v28 = 0x3F8000003F800000;
    v28 += 2;
    ++v27;
    v29 += 2;
    v30 += 2;
  }

  while (v27 != 40);
  re::GeomMesh::freeName(&v36);
  re::internal::GeomAttributeManager::~GeomAttributeManager(&v41);
  result = v38;
  if (v38 && v40)
  {
    return (*(*v38 + 40))();
  }

  return result;
}

uint64_t re::DynamicArray<re::MeshAssetModel>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::MeshAssetModel>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::MeshAssetModel>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::MeshAssetModel>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::MeshAssetModel>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetModel *,re::MeshAssetModel *,re::MeshAssetModel *>(&v16, *(a2 + 32), *(a2 + 32) + (a1[2] << 9), a1[4]);
    v5 = a1[2];
    if (v5 != v4)
    {
      v6 = *(a2 + 32);
      v7 = a1[4];
      v8 = v5 << 9;
      v9 = v4 << 9;
      do
      {
        v10 = (v7 + v8);
        re::StringID::StringID((v7 + v8), (v6 + v8));
        v11 = *(v6 + v8 + 32);
        v10[1] = *(v6 + v8 + 16);
        v10[2] = v11;
        v12 = *(v6 + v8 + 48);
        v13 = *(v6 + v8 + 64);
        v14 = *(v6 + v8 + 96);
        v10[5] = *(v6 + v8 + 80);
        v10[6] = v14;
        v10[3] = v12;
        v10[4] = v13;
        re::DynamicArray<re::MeshAssetBlendShapeData>::DynamicArray(v7 + v8 + 112, (v6 + v8 + 112));
        re::DynamicArray<re::MeshAssetSkinningData>::DynamicArray(v7 + v8 + 152, (v6 + v8 + 152));
        re::DynamicArray<re::MeshAssetPart>::DynamicArray(v7 + v8 + 192, (v6 + v8 + 192));
        re::DynamicArray<re::MeshAssetSkeleton>::DynamicArray(v7 + v8 + 232, (v6 + v8 + 232));
        re::DynamicArray<re::MeshLodLevelInfo>::DynamicArray(v7 + v8 + 272, (v6 + v8 + 272));
        re::DynamicArray<re::MeshAssetContactDeformerData>::DynamicArray(v7 + v8 + 312, (v6 + v8 + 312));
        re::DynamicArray<re::MeshAssetSmoothDeformerData>::DynamicArray(v7 + v8 + 352, (v6 + v8 + 352));
        re::DynamicArray<re::MeshAssetWrapDeformerData>::DynamicArray(v7 + v8 + 392, (v6 + v8 + 392));
        re::DynamicArray<re::MeshAssetSmoothDeformerData>::DynamicArray(v7 + v8 + 432, (v6 + v8 + 432));
        re::DynamicArray<re::MeshAssetJiggleDeformerData>::DynamicArray(v7 + v8 + 472, (v6 + v8 + 472));
        v6 += 512;
        v9 -= 512;
        v7 += 512;
      }

      while (v8 != v9);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetModel *,re::MeshAssetModel *,re::MeshAssetModel *>(&v15, *(a2 + 32), *(a2 + 32) + (v4 << 9), a1[4]);
    re::ObjectHelper::destroy<re::MeshAssetModel>((a1[4] + (v4 << 9)), (a1[4] + (a1[2] << 9)));
  }

  a1[2] = v4;
}

void *re::DynamicArray<re::MeshAssetModel>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshAssetModel>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 55)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 512, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = a2 << 9;
          result = (*(*result + 32))(result, a2 << 9, 16);
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
        v11 = v9 << 9;
        do
        {
          re::MeshAssetModel::MeshAssetModel(&v7[v10 / 8], (v8 + v10));
          re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(v8 + v10 + 472);
          re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v8 + v10 + 432);
          re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(v8 + v10 + 392);
          re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v8 + v10 + 352);
          re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(v8 + v10 + 312);
          re::DynamicArray<re::MeshLodLevelInfo>::deinit(v8 + v10 + 272);
          re::DynamicArray<re::MeshAssetSkeleton>::deinit(v8 + v10 + 232);
          re::DynamicArray<re::MeshAssetPart>::deinit(v8 + v10 + 192);
          re::DynamicArray<re::MeshAssetSkinningData>::deinit(v8 + v10 + 152);
          re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(v8 + v10 + 112);
          re::StringID::destroyString((v8 + v10));
          v10 += 512;
        }

        while (v11 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

__n128 re::MeshAssetModel::MeshAssetModel(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a1 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *a1 = *a2 & 0xFFFFFFFFFFFFFFFELL | v2 & 1;
  *(a1 + 8) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v3 = *(a2 + 2);
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = v3;
  result = *(a2 + 3);
  v5 = *(a2 + 4);
  v6 = *(a2 + 6);
  *(a1 + 80) = *(a2 + 5);
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  *(a1 + 144) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  v7 = a2[15];
  *(a1 + 112) = a2[14];
  *(a1 + 120) = v7;
  a2[14] = 0;
  a2[15] = 0;
  v8 = *(a1 + 128);
  *(a1 + 128) = a2[16];
  a2[16] = v8;
  v9 = *(a1 + 144);
  *(a1 + 144) = a2[18];
  a2[18] = v9;
  ++*(a2 + 34);
  ++*(a1 + 136);
  *(a1 + 184) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  *(a1 + 176) = 0;
  v10 = a2[20];
  *(a1 + 152) = a2[19];
  *(a1 + 160) = v10;
  a2[19] = 0;
  a2[20] = 0;
  v11 = *(a1 + 168);
  *(a1 + 168) = a2[21];
  a2[21] = v11;
  v12 = *(a1 + 184);
  *(a1 + 184) = a2[23];
  a2[23] = v12;
  ++*(a2 + 44);
  ++*(a1 + 176);
  *(a1 + 224) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  *(a1 + 216) = 0;
  v13 = a2[25];
  *(a1 + 192) = a2[24];
  *(a1 + 200) = v13;
  a2[24] = 0;
  a2[25] = 0;
  v14 = *(a1 + 208);
  *(a1 + 208) = a2[26];
  a2[26] = v14;
  v15 = *(a1 + 224);
  *(a1 + 224) = a2[28];
  a2[28] = v15;
  ++*(a2 + 54);
  ++*(a1 + 216);
  *(a1 + 264) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0;
  *(a1 + 256) = 0;
  v16 = a2[30];
  *(a1 + 232) = a2[29];
  *(a1 + 240) = v16;
  a2[29] = 0;
  a2[30] = 0;
  v17 = *(a1 + 248);
  *(a1 + 248) = a2[31];
  a2[31] = v17;
  v18 = *(a1 + 264);
  *(a1 + 264) = a2[33];
  a2[33] = v18;
  ++*(a2 + 64);
  ++*(a1 + 256);
  *(a1 + 304) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0;
  *(a1 + 296) = 0;
  v19 = a2[35];
  *(a1 + 272) = a2[34];
  *(a1 + 280) = v19;
  a2[34] = 0;
  a2[35] = 0;
  v20 = *(a1 + 288);
  *(a1 + 288) = a2[36];
  a2[36] = v20;
  v21 = *(a1 + 304);
  *(a1 + 304) = a2[38];
  a2[38] = v21;
  ++*(a2 + 74);
  ++*(a1 + 296);
  *(a1 + 344) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 312) = 0;
  *(a1 + 336) = 0;
  v22 = a2[40];
  *(a1 + 312) = a2[39];
  *(a1 + 320) = v22;
  a2[39] = 0;
  a2[40] = 0;
  v23 = *(a1 + 328);
  *(a1 + 328) = a2[41];
  a2[41] = v23;
  v24 = *(a1 + 344);
  *(a1 + 344) = a2[43];
  a2[43] = v24;
  ++*(a2 + 84);
  ++*(a1 + 336);
  *(a1 + 384) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0;
  *(a1 + 376) = 0;
  v25 = a2[45];
  *(a1 + 352) = a2[44];
  *(a1 + 360) = v25;
  a2[44] = 0;
  a2[45] = 0;
  v26 = *(a1 + 368);
  *(a1 + 368) = a2[46];
  a2[46] = v26;
  v27 = *(a1 + 384);
  *(a1 + 384) = a2[48];
  a2[48] = v27;
  ++*(a2 + 94);
  ++*(a1 + 376);
  *(a1 + 424) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0;
  *(a1 + 416) = 0;
  v28 = a2[50];
  *(a1 + 392) = a2[49];
  *(a1 + 400) = v28;
  a2[49] = 0;
  a2[50] = 0;
  v29 = *(a1 + 408);
  *(a1 + 408) = a2[51];
  a2[51] = v29;
  v30 = *(a1 + 424);
  *(a1 + 424) = a2[53];
  a2[53] = v30;
  ++*(a2 + 104);
  ++*(a1 + 416);
  *(a1 + 464) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 432) = 0;
  *(a1 + 456) = 0;
  v31 = a2[55];
  *(a1 + 432) = a2[54];
  *(a1 + 440) = v31;
  a2[54] = 0;
  a2[55] = 0;
  v32 = *(a1 + 448);
  *(a1 + 448) = a2[56];
  a2[56] = v32;
  v33 = *(a1 + 464);
  *(a1 + 464) = a2[58];
  a2[58] = v33;
  ++*(a2 + 114);
  ++*(a1 + 456);
  *(a1 + 504) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 472) = 0;
  *(a1 + 496) = 0;
  v34 = a2[60];
  *(a1 + 472) = a2[59];
  *(a1 + 480) = v34;
  a2[59] = 0;
  a2[60] = 0;
  v35 = *(a1 + 488);
  *(a1 + 488) = a2[61];
  a2[61] = v35;
  v36 = *(a1 + 504);
  *(a1 + 504) = a2[63];
  a2[63] = v36;
  ++*(a2 + 124);
  ++*(a1 + 496);
  return result;
}

void re::ObjectHelper::destroy<re::MeshAssetModel>(re::StringID *a1, re::StringID *a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    do
    {
      re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(v3 + 472);
      re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v3 + 432);
      re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(v3 + 392);
      re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v3 + 352);
      re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(v3 + 312);
      re::DynamicArray<re::MeshLodLevelInfo>::deinit(v3 + 272);
      re::DynamicArray<re::MeshAssetSkeleton>::deinit(v3 + 232);
      re::DynamicArray<re::MeshAssetPart>::deinit(v3 + 192);
      re::DynamicArray<re::MeshAssetSkinningData>::deinit(v3 + 152);
      re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(v3 + 112);
      re::StringID::destroyString(v3);
      v3 = (v3 + 512);
    }

    while (v3 != a2);
  }
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetModel *,re::MeshAssetModel *,re::MeshAssetModel *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    v8 = (a4 + v7);
    re::StringID::operator=((a4 + v7), (a2 + v7));
    v9 = *(a2 + v7 + 32);
    v8[1] = *(a2 + v7 + 16);
    v8[2] = v9;
    v10 = *(a2 + v7 + 48);
    v11 = *(a2 + v7 + 64);
    v12 = *(a2 + v7 + 96);
    v8[5] = *(a2 + v7 + 80);
    v8[6] = v12;
    v8[3] = v10;
    v8[4] = v11;
    re::DynamicArray<re::MeshAssetBlendShapeData>::operator=(a4 + v7 + 112, (a2 + v7 + 112));
    re::DynamicArray<re::MeshAssetSkinningData>::operator=(a4 + v7 + 152, (a2 + v7 + 152));
    re::DynamicArray<re::MeshAssetPart>::operator=(a4 + v7 + 192, (a2 + v7 + 192));
    re::DynamicArray<re::MeshAssetSkeleton>::operator=(a4 + v7 + 232, (a2 + v7 + 232));
    re::DynamicArray<re::MeshLodLevelInfo>::operator=(a4 + v7 + 272, (a2 + v7 + 272));
    re::DynamicArray<re::MeshAssetContactDeformerData>::operator=(a4 + v7 + 312, (a2 + v7 + 312));
    re::DynamicArray<re::MeshAssetSmoothDeformerData>::operator=(a4 + v7 + 352, (a2 + v7 + 352));
    re::DynamicArray<re::MeshAssetWrapDeformerData>::operator=(a4 + v7 + 392, (a2 + v7 + 392));
    re::DynamicArray<re::MeshAssetSmoothDeformerData>::operator=(a4 + v7 + 432, (a2 + v7 + 432));
    re::DynamicArray<re::MeshAssetJiggleDeformerData>::operator=(a4 + v7 + 472, (a2 + v7 + 472));
    v7 += 512;
  }

  while (a2 + v7 != v6);
  return v6;
}

uint64_t re::DynamicArray<re::MeshAssetBlendShapeData>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::MeshAssetBlendShapeData>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::MeshAssetBlendShapeData>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::MeshAssetBlendShapeData>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::MeshAssetBlendShapeData>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetBlendShapeData *,re::MeshAssetBlendShapeData *,re::MeshAssetBlendShapeData *>(&v15, *(a2 + 32), *(a2 + 32) + 56 * a1[2], a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = a1[4];
      v11 = 56 * v8;
      v12 = 56 * v4;
      do
      {
        v13 = v10 + v11;
        re::StringID::StringID((v10 + v11), (v9 + v11));
        re::FixedArray<re::BlendShapeDefinition>::FixedArray((v10 + v11 + 16), v9 + v11 + 16);
        *(v13 + 40) = *(v9 + v11 + 40);
        *(v13 + 48) = *(v9 + v11 + 48);
        v9 += 56;
        v12 -= 56;
        v10 += 56;
      }

      while (v11 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetBlendShapeData *,re::MeshAssetBlendShapeData *,re::MeshAssetBlendShapeData *>(&v14, *(a2 + 32), *(a2 + 32) + 56 * v4, a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = (a1[4] + 56 * v4);
      v7 = -56 * v4 + 56 * v5;
      do
      {
        re::FixedArray<re::BlendShapeDefinition>::deinit(v6 + 2);
        re::StringID::destroyString(v6);
        v6 = (v6 + 56);
        v7 -= 56;
      }

      while (v7);
    }
  }

  a1[2] = v4;
}

void *re::DynamicArray<re::MeshAssetBlendShapeData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshAssetBlendShapeData>::setCapacity(v5, a2);
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
              goto LABEL_16;
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
        v10 = &v8[7 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          v11[2] = 0;
          v11[3] = 0;
          v11[4] = 0;
          v11[2] = v8[2];
          v8[2] = 0;
          v13 = v11[4];
          v14 = v8[4];
          v11[3] = v8[3];
          v11[4] = v14;
          v8[3] = 0;
          v8[4] = v13;
          v11[5] = v8[5];
          *(v11 + 24) = *(v8 + 24);
          re::FixedArray<re::BlendShapeDefinition>::deinit(v8 + 2);
          re::StringID::destroyString(v8);
          v11 += 7;
          v8 += 7;
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

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetBlendShapeData *,re::MeshAssetBlendShapeData *,re::MeshAssetBlendShapeData *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    v8 = a4 + v7;
    re::StringID::operator=((a4 + v7), (a2 + v7));
    re::FixedArray<re::BlendShapeDefinition>::operator=((a4 + v7 + 16), a2 + v7 + 16);
    *(v8 + 40) = *(a2 + v7 + 40);
    *(v8 + 48) = *(a2 + v7 + 48);
    v7 += 56;
  }

  while (a2 + v7 != v6);
  return v6;
}

void *re::FixedArray<re::BlendShapeDefinition>::operator=(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (!v4)
      {
        return a1;
      }

      goto LABEL_7;
    }

    if (v4)
    {
      re::FixedArray<re::BlendShapeDefinition>::init<>(a1, v4, *(a2 + 8));
LABEL_7:
      re::FixedArray<re::BlendShapeDefinition>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::FixedArray<re::BlendShapeDefinition>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x1E1E1E1E1E1E1E2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 136, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 136 * a3, 8);
  *(v4 + 16) = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *result = 0;
      *(result + 8) = &str_67;
      *(result + 16) = 0uLL;
      *(result + 32) = 0uLL;
      *(result + 48) = 0uLL;
      *(result + 64) = 0uLL;
      *(result + 80) = 0uLL;
      *(result + 96) = 0uLL;
      *(result + 112) = 0uLL;
      *(result + 128) = 0;
      result += 136;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  *(result + 8) = &str_67;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0;
  return result;
}

uint64_t re::FixedArray<re::BlendShapeDefinition>::copy(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 == *(a2 + 8))
  {
    return std::__copy_impl::operator()[abi:nn200100]<re::BlendShapeDefinition *,re::BlendShapeDefinition *,re::BlendShapeDefinition *>(&v4, *(a2 + 16), *(a2 + 16) + 136 * v2, *(a1 + 16));
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::BlendShapeDefinition *,re::BlendShapeDefinition *,re::BlendShapeDefinition *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    re::StringID::operator=((a4 + v7), (a2 + v7));
    re::FixedArray<unsigned int>::operator=((a4 + v7 + 16), a2 + v7 + 16);
    re::FixedArray<float>::operator=((a4 + v7 + 40), a2 + v7 + 40);
    re::FixedArray<float>::operator=((a4 + v7 + 64), a2 + v7 + 64);
    re::FixedArray<float>::operator=((a4 + v7 + 88), a2 + v7 + 88);
    re::FixedArray<float>::operator=((a4 + v7 + 112), a2 + v7 + 112);
    v7 += 136;
  }

  while (a2 + v7 != v6);
  return v6;
}

void *re::FixedArray<re::BlendShapeDefinition>::FixedArray(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<re::BlendShapeDefinition>::init<>(a1, v4, *(a2 + 8));
    re::FixedArray<re::BlendShapeDefinition>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::DynamicArray<re::MeshAssetSkinningData>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::MeshAssetSkinningData>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::MeshAssetSkinningData>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::DynamicArray<re::MeshAssetSkinningData>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::MeshAssetSkinningData>::setCapacity(a1, *(a2 + 16));
    result = std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetSkinningData *,re::MeshAssetSkinningData *,re::MeshAssetSkinningData *>(&v20, *(a2 + 32), *(a2 + 32) + 144 * a1[2], a1[4]);
    v9 = a1[2];
    if (v9 != v4)
    {
      v10 = *(a2 + 32);
      v11 = v10 + 144 * v4;
      v12 = a1[4];
      v13 = 144 * v9;
      do
      {
        v14 = v10 + v13;
        v15 = (v12 + v13);
        *(v12 + v13) = *(v10 + v13);
        re::FixedArray<re::SkinningInfluence>::FixedArray((v12 + v13 + 8), v10 + v13 + 8);
        re::FixedArray<int>::FixedArray((v12 + v13 + 32), v10 + v13 + 32);
        result = re::FixedArray<int>::FixedArray((v12 + v13 + 56), v10 + v13 + 56);
        v16 = *(v10 + v13 + 80);
        v17 = *(v10 + v13 + 96);
        v18 = *(v10 + v13 + 128);
        v15[7] = *(v10 + v13 + 112);
        v15[8] = v18;
        v15[5] = v16;
        v15[6] = v17;
        v10 += 144;
        v12 += 144;
      }

      while (v14 + 144 != v11);
    }
  }

  else
  {
    result = std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetSkinningData *,re::MeshAssetSkinningData *,re::MeshAssetSkinningData *>(&v19, *(a2 + 32), *(a2 + 32) + 144 * v4, a1[4]);
    v6 = a1[2];
    if (v4 != v6)
    {
      v7 = 144 * v6 - 144 * v4;
      v8 = (a1[4] + 144 * v4 + 56);
      do
      {
        re::FixedArray<CoreIKTransform>::deinit(v8);
        re::FixedArray<CoreIKTransform>::deinit(v8 - 3);
        result = re::FixedArray<CoreIKTransform>::deinit(v8 - 6);
        v8 += 18;
        v7 -= 144;
      }

      while (v7);
    }
  }

  a1[2] = v4;
  return result;
}

void *re::DynamicArray<re::MeshAssetSkinningData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshAssetSkinningData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x90uLL))
        {
          v2 = 144 * a2;
          result = (*(*result + 32))(result, 144 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 144, a2);
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
        v10 = &v8[36 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          v11[2] = 0;
          v11[3] = 0;
          v11[1] = 0;
          v13 = (v8 + 2);
          v11[1] = *(v8 + 1);
          *(v8 + 1) = 0;
          v14 = v11[3];
          v15 = *(v8 + 3);
          v11[2] = *(v8 + 2);
          v11[3] = v15;
          *(v8 + 2) = 0;
          *(v8 + 3) = v14;
          v11[5] = 0;
          v11[6] = 0;
          v11[4] = 0;
          v16 = (v8 + 8);
          v11[4] = *(v8 + 4);
          *(v8 + 4) = 0;
          v17 = v11[6];
          v18 = *(v8 + 6);
          v11[5] = *(v8 + 5);
          v11[6] = v18;
          *(v8 + 5) = 0;
          *(v8 + 6) = v17;
          v11[7] = 0;
          v11[8] = 0;
          v11[9] = 0;
          v20 = *(v8 + 7);
          v19 = v8 + 14;
          *v11 = v12;
          v11[7] = v20;
          *v19 = 0;
          v21 = v11[9];
          v22 = *(v19 + 2);
          v11[8] = *(v19 + 1);
          v11[9] = v22;
          *(v19 + 1) = 0;
          *(v19 + 2) = v21;
          v23 = *(v19 + 6);
          v24 = *(v19 + 10);
          v25 = *(v19 + 18);
          *(v11 + 7) = *(v19 + 14);
          *(v11 + 8) = v25;
          *(v11 + 5) = v23;
          *(v11 + 6) = v24;
          re::FixedArray<CoreIKTransform>::deinit(v19);
          re::FixedArray<CoreIKTransform>::deinit(v16);
          re::FixedArray<CoreIKTransform>::deinit(v13);
          v11 += 18;
          v8 = v19 + 22;
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

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetSkinningData *,re::MeshAssetSkinningData *,re::MeshAssetSkinningData *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    *a4 = *v5;
    re::FixedArray<re::SkinningInfluence>::operator=((a4 + 8), v5 + 8);
    re::FixedArray<int>::operator=((a4 + 32), v5 + 32);
    re::FixedArray<int>::operator=((a4 + 56), v5 + 56);
    v7 = *(v5 + 128);
    v9 = *(v5 + 80);
    v8 = *(v5 + 96);
    *(a4 + 112) = *(v5 + 112);
    *(a4 + 128) = v7;
    *(a4 + 80) = v9;
    *(a4 + 96) = v8;
    a4 += 144;
    v5 += 144;
  }

  while (v5 != v6);
  return v6;
}

uint64_t *re::FixedArray<re::SkinningInfluence>::operator=(uint64_t *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (!v4)
      {
        return a1;
      }

      goto LABEL_7;
    }

    if (v4)
    {
      re::FixedArray<re::SkinningInfluence>::init<>(a1, v4, *(a2 + 8));
LABEL_7:
      re::FixedArray<unsigned long>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t *re::FixedArray<int>::operator=(uint64_t *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (!v4)
      {
        return a1;
      }

      goto LABEL_7;
    }

    if (v4)
    {
      re::FixedArray<int>::init<>(a1, v4, *(a2 + 8));
LABEL_7:
      re::FixedArray<int>::copy(a1, a2);
    }
  }

  return a1;
}

void re::FixedArray<re::SkinningInfluence>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 61)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 8 * a3;
  v6 = (*(*a2 + 32))(a2, 8 * a3, 4);
  a1[2] = v6;
  if (!v6)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
    return;
  }

  v8 = v6;
  if (a3 != 1)
  {
    bzero(v6, v5 - 8);
    v8 = (v8 + v5 - 8);
  }

  *v8 = 0;
}

void *re::FixedArray<int>::copy(void *result, uint64_t a2)
{
  v4 = result[1];
  if (v4 == *(a2 + 8))
  {
    if (v4)
    {
      v5 = *(a2 + 16);
      v6 = result[2];

      return memmove(v6, v5, 4 * v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t *re::FixedArray<re::SkinningInfluence>::FixedArray(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<re::SkinningInfluence>::init<>(a1, v4, *(a2 + 8));
    re::FixedArray<unsigned long>::copy(a1, a2);
  }

  return a1;
}

uint64_t *re::FixedArray<int>::FixedArray(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<int>::init<>(a1, v4, *(a2 + 8));
    re::FixedArray<int>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::DynamicArray<re::MeshAssetPart>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::MeshAssetPart>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::MeshAssetPart>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::DynamicArray<re::MeshAssetPart>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::MeshAssetPart>::setCapacity(a1, *(a2 + 16));
    result = std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetPart *,re::MeshAssetPart *,re::MeshAssetPart *>(&v27, *(a2 + 32), *(a2 + 32) + (a1[2] << 8), a1[4]);
    v9 = a1[2];
    if (v9 != v4)
    {
      v10 = *(a2 + 32);
      v11 = a1[4];
      v12 = v9 << 8;
      v13 = v4 << 8;
      do
      {
        v14 = v11 + v12;
        v15 = v10 + v12;
        re::DynamicArray<re::MeshAssetBuffer>::DynamicArray(v11 + v12, (v10 + v12));
        v16 = *(v10 + v12 + 40);
        *(v14 + 52) = *(v10 + v12 + 52);
        *(v14 + 40) = v16;
        re::StringID::StringID((v11 + v12 + 72), (v10 + v12 + 72));
        v17 = *(v10 + v12 + 112);
        *(v14 + 96) = *(v10 + v12 + 96);
        *(v14 + 112) = v17;
        v18 = *(v10 + v12 + 128);
        v19 = *(v10 + v12 + 144);
        v20 = *(v10 + v12 + 176);
        *(v14 + 160) = *(v10 + v12 + 160);
        *(v14 + 176) = v20;
        *(v14 + 128) = v18;
        *(v14 + 144) = v19;
        v21 = *(v10 + v12 + 192);
        *(v14 + 192) = v21;
        if (v21 == 1)
        {
          *(v14 + 193) = *(v15 + 193);
        }

        v22 = *(v15 + 194);
        *(v14 + 194) = v22;
        if (v22 == 1)
        {
          *(v11 + v12 + 195) = *(v10 + v12 + 195);
        }

        v23 = v11 + v12;
        v24 = v10 + v12;
        v25 = *(v10 + v12 + 196);
        *(v11 + v12 + 196) = v25;
        if (v25 == 1)
        {
          *(v23 + 197) = *(v24 + 197);
        }

        result = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v23 + 200, v24 + 200);
        v13 -= 256;
        v10 += 256;
        v11 += 256;
      }

      while (v12 != v13);
    }
  }

  else
  {
    result = std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetPart *,re::MeshAssetPart *,re::MeshAssetPart *>(&v26, *(a2 + 32), *(a2 + 32) + (v4 << 8), a1[4]);
    v6 = a1[2];
    if (v4 != v6)
    {
      v7 = a1[4] + (v4 << 8);
      v8 = (v6 << 8) - (v4 << 8);
      do
      {
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v7 + 200));
        re::StringID::destroyString((v7 + 72));
        result = re::DynamicArray<re::MeshAssetBuffer>::deinit(v7);
        v7 += 256;
        v8 -= 256;
      }

      while (v8);
    }
  }

  a1[2] = v4;
  return result;
}

void *re::DynamicArray<re::MeshAssetPart>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshAssetPart>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (HIBYTE(a2))
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 256, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = a2 << 8;
          result = (*(*result + 32))(result, a2 << 8, 16);
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
        v10 = v9 << 8;
        v11 = v7;
        do
        {
          re::ObjectHelper::move<re::MeshAssetPart>(v8, v11);
          v8 += 256;
          v11 += 256;
          v10 -= 256;
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

uint64_t re::ObjectHelper::move<re::MeshAssetPart>(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *(a2 + 16);
  *(a2 + 16) = *(a1 + 16);
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  *(a2 + 32) = *(a1 + 32);
  *(a1 + 32) = v5;
  ++*(a1 + 24);
  ++*(a2 + 24);
  v6 = *(a1 + 40);
  *(a2 + 52) = *(a1 + 52);
  *(a2 + 40) = v6;
  v7 = (a1 + 72);
  LOBYTE(v5) = *(a1 + 72);
  *(a2 + 72) = *(a2 + 72) & 0xFFFFFFFFFFFFFFFELL | *(a1 + 72) & 1;
  *(a2 + 72) = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL | v5 & 1;
  *(a2 + 80) = *(a1 + 80);
  *(a1 + 72) = 0;
  *(a1 + 80) = &str_67;
  v8 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v8;
  v9 = *(a1 + 128);
  v10 = *(a1 + 144);
  v11 = *(a1 + 176);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v11;
  *(a2 + 128) = v9;
  *(a2 + 144) = v10;
  LODWORD(v5) = *(a1 + 192);
  *(a2 + 192) = v5;
  if (v5 == 1)
  {
    *(a2 + 193) = *(a1 + 193);
  }

  v12 = *(a1 + 194);
  *(a2 + 194) = v12;
  if (v12 == 1)
  {
    *(a2 + 195) = *(a1 + 195);
  }

  v13 = *(a1 + 196);
  *(a2 + 196) = v13;
  if (v13 == 1)
  {
    *(a2 + 197) = *(a1 + 197);
  }

  *(a2 + 200) = 0u;
  *(a2 + 232) = 0;
  *(a2 + 216) = 0u;
  *(a2 + 236) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a2 + 200), (a1 + 200));
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((a1 + 200));
  re::StringID::destroyString(v7);

  return re::DynamicArray<re::MeshAssetBuffer>::deinit(a1);
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetPart *,re::MeshAssetPart *,re::MeshAssetPart *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    v8 = a4 + v7;
    v9 = a2 + v7;
    re::DynamicArray<re::MeshAssetBuffer>::operator=(a4 + v7, (a2 + v7));
    v10 = *(a2 + v7 + 52);
    *(v8 + 40) = *(a2 + v7 + 40);
    *(v8 + 52) = v10;
    re::StringID::operator=((a4 + v7 + 72), (a2 + v7 + 72));
    v11 = *(a2 + v7 + 112);
    *(v8 + 96) = *(a2 + v7 + 96);
    *(v8 + 112) = v11;
    v12 = *(a2 + v7 + 128);
    v13 = *(a2 + v7 + 144);
    v14 = *(a2 + v7 + 176);
    *(v8 + 160) = *(a2 + v7 + 160);
    *(v8 + 176) = v14;
    *(v8 + 128) = v12;
    *(v8 + 144) = v13;
    if (*(a4 + v7 + 192))
    {
      if (*(a2 + v7 + 192))
      {
        *(a4 + v7 + 193) = *(a2 + v7 + 193);
      }

      else
      {
        *(v8 + 192) = 0;
      }
    }

    else if (*(a2 + v7 + 192))
    {
      *(v8 + 192) = 1;
      *(a4 + v7 + 193) = *(a2 + v7 + 193);
    }

    v15 = a4 + v7;
    if (*(a4 + v7 + 194))
    {
      if (*(v9 + 194))
      {
        *(a4 + v7 + 195) = *(a2 + v7 + 195);
      }

      else
      {
        *(v15 + 194) = 0;
      }
    }

    else if (*(v9 + 194))
    {
      *(v15 + 194) = 1;
      *(a4 + v7 + 195) = *(a2 + v7 + 195);
    }

    v16 = a4 + v7;
    if (*(a4 + v7 + 196))
    {
      if (*(v9 + 196))
      {
        *(a4 + v7 + 197) = *(a2 + v7 + 197);
      }

      else
      {
        *(v16 + 196) = 0;
      }
    }

    else if (*(v9 + 196))
    {
      *(v16 + 196) = 1;
      *(a4 + v7 + 197) = *(a2 + v7 + 197);
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((a4 + v7 + 200), v9 + 200);
    v7 += 256;
  }

  while (v9 + 256 != v6);
  return v6;
}

uint64_t re::DynamicArray<re::MeshAssetBuffer>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::MeshAssetBuffer>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::MeshAssetBuffer>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::MeshAssetBuffer>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::MeshAssetBuffer>::copy(a1, a2);
    }
  }

  return a1;
}

re::DynamicString *re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(re::DynamicString *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 28);
        if (*(a1 + 6) < v4)
        {
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, v4);
        }

        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
        ++*(a1 + 10);
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

        re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(a1, v5, v6);
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
      }
    }
  }

  return a1;
}

void re::DynamicArray<re::MeshAssetBuffer>::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= *(a1 + 16))
  {
    re::DynamicArray<re::MeshAssetBuffer>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetBuffer *,re::MeshAssetBuffer *,re::MeshAssetBuffer *>(&v14, *(a2 + 32), (*(a2 + 32) + 80 * *(a1 + 16)), *(a1 + 32));
    v8 = *(a1 + 16);
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = *(a1 + 32);
      v11 = 80 * v8;
      v12 = 80 * v4;
      do
      {
        re::DynamicString::DynamicString((v10 + v11), (v9 + v11));
        re::DynamicArray<BOOL>::DynamicArray(v10 + v11 + 32, (v9 + v11 + 32));
        *(v10 + v11 + 72) = *(v9 + v11 + 72);
        v9 += 80;
        v12 -= 80;
        v10 += 80;
      }

      while (v11 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetBuffer *,re::MeshAssetBuffer *,re::MeshAssetBuffer *>(&v13, *(a2 + 32), (*(a2 + 32) + 80 * v4), *(a1 + 32));
    v5 = *(a1 + 16);
    if (v4 != v5)
    {
      v6 = (*(a1 + 32) + 80 * v4);
      v7 = 80 * v5 - 80 * v4;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v6 + 32);
        re::DynamicString::deinit(v6);
        v6 = (v6 + 80);
        v7 -= 80;
      }

      while (v7);
    }
  }

  *(a1 + 16) = v4;
}

void re::DynamicArray<re::MeshAssetBuffer>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 80 * v2;
    do
    {
      re::DynamicArray<unsigned long>::deinit(v3 + 32);
      re::DynamicString::deinit(v3);
      v3 = (v3 + 80);
      v4 -= 80;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

void *re::DynamicArray<re::MeshAssetBuffer>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshAssetBuffer>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x50uLL))
        {
          v2 = 80 * a2;
          result = (*(*result + 32))(result, 80 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 80, a2);
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
        v10 = v8 + 80 * v9;
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 24);
          v12 = *(v8 + 8);
          *v11 = *v8;
          *v8 = 0;
          v13 = *(v8 + 16);
          *(v8 + 24) = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          *(v8 + 8) = v15;
          *(v8 + 16) = v14;
          v11[8] = 0;
          *(v11 + 14) = 0;
          v11[5] = 0;
          v11[6] = 0;
          v11[4] = 0;
          v16 = *(v8 + 40);
          v11[4] = *(v8 + 32);
          *(v8 + 32) = 0;
          v11[5] = v16;
          *(v8 + 40) = 0;
          v17 = v11[6];
          v11[6] = *(v8 + 48);
          *(v8 + 48) = v17;
          v18 = v11[8];
          v11[8] = *(v8 + 64);
          *(v8 + 64) = v18;
          ++*(v8 + 56);
          ++*(v11 + 14);
          *(v11 + 36) = *(v8 + 72);
          re::DynamicArray<unsigned long>::deinit(v8 + 32);
          re::DynamicString::deinit(v8);
          v11 += 10;
          v8 += 80;
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

re::DynamicString *std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetBuffer *,re::MeshAssetBuffer *,re::MeshAssetBuffer *>(int a1, re::DynamicString *a2, re::DynamicString *a3, re::DynamicString *this)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      re::DynamicString::operator=(this, v5);
      re::DynamicArray<BOOL>::operator=(this + 32, v5 + 4);
      *(this + 36) = *(v5 + 36);
      v5 = (v5 + 80);
      this = (this + 80);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

re::DynamicString *re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(re::DynamicString *result, uint64_t a2)
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
        v8 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 72) % *(v4 + 24), *(v7 + v5 + 72));
        re::DynamicString::DynamicString((v8 + 8), (*(a2 + 16) + v5 + 8));
        result = re::DynamicString::DynamicString((v8 + 40), (*(a2 + 16) + v5 + 40));
        v2 = *(a2 + 32);
      }

      v5 += 80;
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::MeshAssetBuffer>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::MeshAssetBuffer>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::MeshAssetBuffer>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(uint64_t a1, uint64_t a2)
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

    re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(a1, v4, v5);
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::DynamicArray<re::MeshLodLevelInfo>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::MeshLodLevelInfo>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::MeshLodLevelInfo>::copy(a1, a2);
  }

  return a1;
}

void *re::DynamicArray<re::MeshLodLevelInfo>::copy(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::MeshLodLevelInfo>::setCapacity(result, *(a2 + 16));
    v14 = *(a2 + 32);
    v15 = v3[2];
    v16 = v3[4];
    if (v15)
    {
      v17 = &v14[6 * v15];
      v18 = *(a2 + 32);
      v19 = v3[4];
      do
      {
        v20 = *v18;
        v18 += 6;
        *v19 = v20;
        v19 += 6;
        result = re::DynamicArray<unsigned long long>::operator=((v16 + 1), v14 + 1);
        v16 = v19;
        v14 = v18;
      }

      while (v18 != v17);
      v16 = v3[4];
      v15 = v3[2];
      v14 = *(a2 + 32);
    }

    if (v15 != v4)
    {
      v21 = 3 * v15;
      v22 = 48 * v4 - 16 * v21;
      v23 = (16 * v21) | 8;
      v24 = (v14 + v23);
      result = (v16 + v23);
      do
      {
        *(result - 1) = *(v24 - 1);
        v25 = re::DynamicArray<char const*>::DynamicArray(result, v24);
        v24 += 6;
        result = (v25 + 48);
        v22 -= 48;
      }

      while (v22);
    }
  }

  else
  {
    v6 = result[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = &v7[6 * v4];
      v9 = v7;
      v10 = result[4];
      do
      {
        v11 = *v9;
        v9 += 6;
        *v10 = v11;
        v10 += 6;
        result = re::DynamicArray<unsigned long long>::operator=((v6 + 1), v7 + 1);
        v6 = v10;
        v7 = v9;
      }

      while (v9 != v8);
      v6 = v3[4];
      v5 = v3[2];
    }

    if (v4 != v5)
    {
      v12 = 48 * v5 - 48 * v4;
      v13 = &v6[6 * v4 + 1];
      do
      {
        result = re::DynamicArray<unsigned long>::deinit(v13);
        v13 += 48;
        v12 -= 48;
      }

      while (v12);
    }
  }

  v3[2] = v4;
  return result;
}

void *re::DynamicArray<re::MeshLodLevelInfo>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshLodLevelInfo>::setCapacity(v5, a2);
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
              goto LABEL_16;
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
        v10 = &v8[6 * v9];
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
          v13 = v8[1];
          v14 = v8[2];
          v15 = (v8 + 1);
          v11[1] = v13;
          v11[2] = v14;
          *v15 = 0;
          *(v15 + 8) = 0;
          v16 = v11[3];
          v11[3] = *(v15 + 16);
          *(v15 + 16) = v16;
          v17 = v11[5];
          v11[5] = *(v15 + 32);
          *(v15 + 32) = v17;
          ++*(v15 + 24);
          ++*(v11 + 8);
          re::DynamicArray<unsigned long>::deinit(v15);
          v11 += 6;
          v8 = (v15 + 40);
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

uint64_t re::DynamicArray<re::MeshAssetContactDeformerData>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::MeshAssetContactDeformerData>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::MeshAssetContactDeformerData>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::MeshAssetContactDeformerData>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::MeshAssetContactDeformerData>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetContactDeformerData *,re::MeshAssetContactDeformerData *,re::MeshAssetContactDeformerData *>(&v14, *(a2 + 32), *(a2 + 32) + 48 * a1[2], a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = a1[4];
      v11 = 48 * v8;
      v12 = 48 * v4;
      do
      {
        re::StringID::StringID((v10 + v11), (v9 + v11));
        re::FixedArray<re::MeshAssetContactDeformerTarget>::FixedArray((v10 + v11 + 16), v9 + v11 + 16);
        *(v10 + v11 + 40) = *(v9 + v11 + 40);
        v9 += 48;
        v12 -= 48;
        v10 += 48;
      }

      while (v11 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetContactDeformerData *,re::MeshAssetContactDeformerData *,re::MeshAssetContactDeformerData *>(&v13, *(a2 + 32), *(a2 + 32) + 48 * v4, a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = (a1[4] + 48 * v4);
      v7 = 48 * v5 - 48 * v4;
      do
      {
        re::FixedArray<re::MeshAssetContactDeformerTarget>::deinit(v6 + 2);
        re::StringID::destroyString(v6);
        v6 = (v6 + 48);
        v7 -= 48;
      }

      while (v7);
    }
  }

  a1[2] = v4;
}

void *re::DynamicArray<re::MeshAssetContactDeformerData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshAssetContactDeformerData>::setCapacity(v5, a2);
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
              goto LABEL_16;
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
        v10 = &v8[6 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          v11[2] = 0;
          v11[3] = 0;
          v11[4] = 0;
          v11[2] = v8[2];
          v8[2] = 0;
          v13 = v11[4];
          v14 = v8[4];
          v11[3] = v8[3];
          v11[4] = v14;
          v8[3] = 0;
          v8[4] = v13;
          *(v11 + 20) = *(v8 + 20);
          re::FixedArray<re::MeshAssetContactDeformerTarget>::deinit(v8 + 2);
          re::StringID::destroyString(v8);
          v11 += 6;
          v8 += 6;
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

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetContactDeformerData *,re::MeshAssetContactDeformerData *,re::MeshAssetContactDeformerData *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      re::StringID::operator=(a4, v5);
      re::FixedArray<re::MeshAssetContactDeformerTarget>::operator=((a4 + 16), v5 + 16);
      *(a4 + 40) = *(v5 + 40);
      v5 += 48;
      a4 += 48;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t *re::FixedArray<re::MeshAssetContactDeformerTarget>::operator=(uint64_t *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (!v4)
      {
        return a1;
      }

      goto LABEL_7;
    }

    if (v4)
    {
      re::FixedArray<re::MeshAssetContactDeformerTarget>::init<>(a1, v4, *(a2 + 8));
LABEL_7:
      re::FixedArray<re::MeshAssetContactDeformerTarget>::copy(a1, a2);
    }
  }

  return a1;
}

void re::FixedArray<re::MeshAssetContactDeformerTarget>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 59)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 32, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 32 * a3;
  v6 = (*(*a2 + 32))(a2, 32 * a3, 8);
  a1[2] = v6;
  if (!v6)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
    return;
  }

  v8 = v6;
  if (a3 != 1)
  {
    bzero(v6, v5 - 32);
    v8 = (v8 + v5 - 32);
  }

  *v8 = 0u;
  v8[1] = 0u;
}

uint64_t re::FixedArray<re::MeshAssetContactDeformerTarget>::copy(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 == *(a2 + 8))
  {
    if (v2)
    {
      v3 = *(a2 + 16);
      v4 = &v3[4 * v2];
      v5 = *(result + 16);
      v6 = v3;
      v7 = v5;
      do
      {
        v8 = *v6;
        v6 += 4;
        *v7 = v8;
        v7 += 4;
        result = re::FixedArray<float>::operator=(v5 + 1, (v3 + 1));
        v5 = v7;
        v3 = v6;
      }

      while (v6 != v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t *re::FixedArray<re::MeshAssetContactDeformerTarget>::FixedArray(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<re::MeshAssetContactDeformerTarget>::init<>(a1, v4, *(a2 + 8));
    re::FixedArray<re::MeshAssetContactDeformerTarget>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::DynamicArray<re::MeshAssetSmoothDeformerData>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::MeshAssetSmoothDeformerData>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::MeshAssetSmoothDeformerData>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::MeshAssetSmoothDeformerData>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::MeshAssetSmoothDeformerData>::setCapacity(a1, *(a2 + 16));
    v12 = *(a2 + 32);
    v13 = a1[2];
    v14 = a1[4];
    if (v13)
    {
      v15 = 24 * v13;
      do
      {
        v16 = re::StringID::operator=(v14, v12);
        *(v16 + 8) = *(v12 + 16);
        v12 += 24;
        v14 = v16 + 3;
        v15 -= 24;
      }

      while (v15);
      v14 = a1[4];
      v13 = a1[2];
      v12 = *(a2 + 32);
    }

    if (v13 != v4)
    {
      v17 = 3 * v13;
      v18 = v12 + 8 * v17;
      v19 = &v14[v17];
      v20 = 24 * v4 - 8 * v17;
      do
      {
        v21 = re::StringID::StringID(v19, v18);
        *(v21 + 8) = *(v18 + 16);
        v18 += 24;
        v19 = (v21 + 24);
        v20 -= 24;
      }

      while (v20);
    }
  }

  else
  {
    v6 = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 24 * v4;
      do
      {
        v9 = re::StringID::operator=(v6, v7);
        *(v9 + 8) = *(v7 + 16);
        v7 += 24;
        v6 = v9 + 3;
        v8 -= 24;
      }

      while (v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v10 = &v6[3 * v4];
      v11 = 24 * v5 - 24 * v4;
      do
      {
        re::StringID::destroyString(v10);
        v10 = (v10 + 24);
        v11 -= 24;
      }

      while (v11);
    }
  }

  a1[2] = v4;
}

void *re::DynamicArray<re::MeshAssetSmoothDeformerData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshAssetSmoothDeformerData>::setCapacity(v5, a2);
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
              goto LABEL_16;
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
        v10 = &v8[3 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          *(v11 + 8) = *(v8 + 8);
          re::StringID::destroyString(v8);
          v8 += 3;
          v11 += 3;
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

uint64_t re::DynamicArray<re::MeshAssetWrapDeformerData>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::MeshAssetWrapDeformerData>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::MeshAssetWrapDeformerData>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::MeshAssetWrapDeformerData>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::MeshAssetWrapDeformerData>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetWrapDeformerData *,re::MeshAssetWrapDeformerData *,re::MeshAssetWrapDeformerData *>(&v15, *(a2 + 32), *(a2 + 32) + 112 * a1[2], a1[4]);
    v9 = a1[2];
    if (v9 != v4)
    {
      v10 = *(a2 + 32);
      v11 = a1[4];
      v12 = 112 * v9;
      v13 = 112 * v4;
      do
      {
        re::StringID::StringID((v11 + v12), (v10 + v12));
        re::StringID::StringID((v11 + v12 + 16), (v10 + v12 + 16));
        re::FixedArray<unsigned int>::FixedArray((v11 + v12 + 32), v10 + v12 + 32);
        re::FixedArray<re::Vector3<float>>::FixedArray((v11 + v12 + 56), v10 + v12 + 56);
        re::FixedArray<re::Vector3<float>>::FixedArray((v11 + v12 + 80), v10 + v12 + 80);
        *(v11 + v12 + 104) = *(v10 + v12 + 104);
        v10 += 112;
        v13 -= 112;
        v11 += 112;
      }

      while (v12 != v13);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetWrapDeformerData *,re::MeshAssetWrapDeformerData *,re::MeshAssetWrapDeformerData *>(&v14, *(a2 + 32), *(a2 + 32) + 112 * v4, a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = a1[4];
      v7 = 112 * v4;
      v8 = 112 * v5;
      do
      {
        re::FixedArray<CoreIKTransform>::deinit((v6 + v7 + 80));
        re::FixedArray<CoreIKTransform>::deinit((v6 + v7 + 56));
        re::FixedArray<CoreIKTransform>::deinit((v6 + v7 + 32));
        re::StringID::destroyString((v6 + v7 + 16));
        re::StringID::destroyString((v6 + v7));
        v6 += 112;
        v8 -= 112;
      }

      while (v7 != v8);
    }
  }

  a1[2] = v4;
}

void *re::DynamicArray<re::MeshAssetWrapDeformerData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshAssetWrapDeformerData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x70uLL))
        {
          v2 = 112 * a2;
          result = (*(*result + 32))(result, 112 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 112, a2);
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
        v10 = &v8[14 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          LOBYTE(v12) = v8[2];
          v11[2] = v11[2] & 0xFFFFFFFFFFFFFFFELL | v8[2] & 1;
          v11[2] = v8[2] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[3] = v8[3];
          v8[3] = &str_67;
          v8[2] = 0;
          v11[4] = 0;
          v11[5] = 0;
          v11[6] = 0;
          v11[4] = v8[4];
          v8[4] = 0;
          v13 = v11[6];
          v14 = v8[6];
          v11[5] = v8[5];
          v11[6] = v14;
          v8[5] = 0;
          v8[6] = v13;
          v11[7] = 0;
          v11[8] = 0;
          v11[9] = 0;
          v11[7] = v8[7];
          v8[7] = 0;
          v15 = v11[9];
          v16 = v8[9];
          v11[8] = v8[8];
          v11[9] = v16;
          v8[8] = 0;
          v8[9] = v15;
          v11[10] = 0;
          v11[11] = 0;
          v11[12] = 0;
          v11[10] = v8[10];
          v8[10] = 0;
          v17 = v11[12];
          v18 = v8[12];
          v11[11] = v8[11];
          v11[12] = v18;
          v8[11] = 0;
          v8[12] = v17;
          *(v11 + 52) = *(v8 + 52);
          re::FixedArray<CoreIKTransform>::deinit(v8 + 10);
          re::FixedArray<CoreIKTransform>::deinit(v8 + 7);
          re::FixedArray<CoreIKTransform>::deinit(v8 + 4);
          re::StringID::destroyString((v8 + 2));
          re::StringID::destroyString(v8);
          v11 += 14;
          v8 += 14;
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

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetWrapDeformerData *,re::MeshAssetWrapDeformerData *,re::MeshAssetWrapDeformerData *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    re::StringID::operator=((a4 + v7), (a2 + v7));
    re::StringID::operator=((a4 + v7 + 16), (a2 + v7 + 16));
    re::FixedArray<unsigned int>::operator=((a4 + v7 + 32), a2 + v7 + 32);
    re::FixedArray<re::Vector3<float>>::operator=((a4 + v7 + 56), a2 + v7 + 56);
    re::FixedArray<re::Vector3<float>>::operator=((a4 + v7 + 80), a2 + v7 + 80);
    *(a4 + v7 + 104) = *(a2 + v7 + 104);
    v7 += 112;
  }

  while (a2 + v7 != v6);
  return v6;
}

uint64_t *re::FixedArray<re::Vector3<float>>::FixedArray(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<re::Vector3<float>>::init<>(a1, v4, *(a2 + 8));
    re::FixedArray<re::Vector3<float>>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::DynamicArray<re::MeshAssetJiggleDeformerData>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::MeshAssetJiggleDeformerData>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::MeshAssetJiggleDeformerData>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::MeshAssetJiggleDeformerData>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::MeshAssetJiggleDeformerData>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetJiggleDeformerData *,re::MeshAssetJiggleDeformerData *,re::MeshAssetJiggleDeformerData *>(&v16, *(a2 + 32), *(a2 + 32) + 48 * a1[2], a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = a1[4];
      v11 = 48 * v8;
      v12 = 48 * v4;
      do
      {
        v13 = v10 + v11;
        re::StringID::StringID((v10 + v11), (v9 + v11));
        re::StringID::StringID((v10 + v11 + 16), (v9 + v11 + 16));
        v14 = *(v9 + v11 + 32);
        *(v13 + 40) = *(v9 + v11 + 40);
        *(v13 + 32) = v14;
        v9 += 48;
        v12 -= 48;
        v10 += 48;
      }

      while (v11 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetJiggleDeformerData *,re::MeshAssetJiggleDeformerData *,re::MeshAssetJiggleDeformerData *>(&v15, *(a2 + 32), *(a2 + 32) + 48 * v4, a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = a1[4] + 48 * v4;
      v7 = 48 * v5 - 48 * v4;
      do
      {
        re::StringID::destroyString((v6 + 16));
        re::StringID::destroyString(v6);
        v6 += 48;
        v7 -= 48;
      }

      while (v7);
    }
  }

  a1[2] = v4;
}

void *re::DynamicArray<re::MeshAssetJiggleDeformerData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshAssetJiggleDeformerData>::setCapacity(v5, a2);
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
              goto LABEL_16;
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
        v10 = &v8[6 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          LOBYTE(v12) = v8[2];
          v11[2] = v11[2] & 0xFFFFFFFFFFFFFFFELL | v8[2] & 1;
          v11[2] = v8[2] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[3] = v8[3];
          v8[3] = &str_67;
          v8[2] = 0;
          v13 = v8[4];
          *(v11 + 20) = *(v8 + 20);
          v11[4] = v13;
          re::StringID::destroyString((v8 + 2));
          re::StringID::destroyString(v8);
          v11 += 6;
          v8 += 6;
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

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetJiggleDeformerData *,re::MeshAssetJiggleDeformerData *,re::MeshAssetJiggleDeformerData *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v4 = a3;
  v5 = a4 + 16;
  v6 = a2 + 16;
  do
  {
    re::StringID::operator=((v5 - 16), (v6 - 16));
    re::StringID::operator=(v5, v6);
    v7 = *(v6 + 16);
    *(v5 + 24) = *(v6 + 24);
    *(v5 + 16) = v7;
    v5 += 48;
    v8 = v6 + 32;
    v6 += 48;
  }

  while (v8 != v4);
  return v4;
}

uint64_t re::DynamicArray<re::MeshAssetInstance>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::MeshAssetInstance>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::MeshAssetInstance>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::MeshAssetInstance>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::MeshAssetInstance>::setCapacity(a1, *(a2 + 16));
    v15 = *(a2 + 32);
    v16 = a1[2];
    v17 = a1[4];
    if (v16)
    {
      v18 = 96 * v16;
      do
      {
        v19 = re::StringID::operator=(v17, v15);
        *(v19 + 1) = *(v15 + 16);
        v20 = *(v15 + 32);
        v21 = *(v15 + 48);
        v22 = *(v15 + 64);
        *(v19 + 20) = *(v15 + 80);
        *(v19 + 3) = v21;
        *(v19 + 4) = v22;
        *(v19 + 2) = v20;
        v15 += 96;
        v17 = v19 + 12;
        v18 -= 96;
      }

      while (v18);
      v17 = a1[4];
      v16 = a1[2];
      v15 = *(a2 + 32);
    }

    if (v16 != v4)
    {
      v23 = 3 * v16;
      v24 = v15 + 32 * v23;
      v25 = &v17[4 * v23];
      v26 = 96 * v4 - 32 * v23;
      do
      {
        v27 = re::StringID::StringID(v25, v24);
        *(v27 + 1) = *(v24 + 16);
        v28 = *(v24 + 32);
        v29 = *(v24 + 48);
        v30 = *(v24 + 64);
        *(v27 + 20) = *(v24 + 80);
        *(v27 + 3) = v29;
        *(v27 + 4) = v30;
        *(v27 + 2) = v28;
        v24 += 96;
        v25 = (v27 + 96);
        v26 -= 96;
      }

      while (v26);
    }
  }

  else
  {
    v6 = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 96 * v4;
      do
      {
        v9 = re::StringID::operator=(v6, v7);
        *(v9 + 1) = *(v7 + 16);
        v10 = *(v7 + 32);
        v11 = *(v7 + 48);
        v12 = *(v7 + 64);
        *(v9 + 20) = *(v7 + 80);
        *(v9 + 3) = v11;
        *(v9 + 4) = v12;
        *(v9 + 2) = v10;
        v7 += 96;
        v6 = v9 + 12;
        v8 -= 96;
      }

      while (v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v13 = &v6[12 * v4];
      v14 = 96 * v5 - 96 * v4;
      do
      {
        re::StringID::destroyString(v13);
        v13 = (v13 + 96);
        v14 -= 96;
      }

      while (v14);
    }
  }

  a1[2] = v4;
}

void *re::DynamicArray<re::MeshAssetInstance>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshAssetInstance>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x60uLL))
        {
          v2 = 96 * a2;
          result = (*(*result + 32))(result, 96 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 96, a2);
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
        v10 = &v8[12 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          LODWORD(v12) = *(v8 + 20);
          v13 = *(v8 + 2);
          v14 = *(v8 + 4);
          *(v11 + 3) = *(v8 + 3);
          *(v11 + 4) = v14;
          *(v11 + 2) = v13;
          *(v11 + 1) = *(v8 + 1);
          *(v11 + 20) = v12;
          re::StringID::destroyString(v8);
          v8 += 12;
          v11 += 12;
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

uint64_t re::DynamicArray<re::MeshAssetSkeleton>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::MeshAssetSkeleton>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::MeshAssetSkeleton>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::MeshAssetSkeleton>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::MeshAssetSkeleton>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetSkeleton *,re::MeshAssetSkeleton *,re::MeshAssetSkeleton *>(&v15, *(a2 + 32), *(a2 + 32) + 112 * a1[2], a1[4]);
    v9 = a1[2];
    if (v9 != v4)
    {
      v10 = *(a2 + 32);
      v11 = a1[4];
      v12 = 112 * v9;
      v13 = 112 * v4;
      do
      {
        re::StringID::StringID((v11 + v12), (v10 + v12));
        re::FixedArray<re::StringID>::FixedArray((v11 + v12 + 16), v10 + v12 + 16);
        re::FixedArray<unsigned int>::FixedArray((v11 + v12 + 40), v10 + v12 + 40);
        re::FixedArray<re::GenericSRT<float>>::FixedArray((v11 + v12 + 64), v10 + v12 + 64);
        re::FixedArray<re::Matrix4x4<float>>::FixedArray((v11 + v12 + 88), v10 + v12 + 88);
        v10 += 112;
        v13 -= 112;
        v11 += 112;
      }

      while (v12 != v13);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetSkeleton *,re::MeshAssetSkeleton *,re::MeshAssetSkeleton *>(&v14, *(a2 + 32), *(a2 + 32) + 112 * v4, a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = a1[4];
      v7 = 112 * v4;
      v8 = 112 * v5;
      do
      {
        re::FixedArray<CoreIKTransform>::deinit((v6 + v7 + 88));
        re::FixedArray<CoreIKTransform>::deinit((v6 + v7 + 64));
        re::FixedArray<CoreIKTransform>::deinit((v6 + v7 + 40));
        re::FixedArray<re::StringID>::deinit((v6 + v7 + 16));
        re::StringID::destroyString((v6 + v7));
        v6 += 112;
        v8 -= 112;
      }

      while (v7 != v8);
    }
  }

  a1[2] = v4;
}

void *re::DynamicArray<re::MeshAssetSkeleton>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshAssetSkeleton>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x70uLL))
        {
          v2 = 112 * a2;
          result = (*(*result + 32))(result, 112 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 112, a2);
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
        v10 = &v8[14 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          v11[2] = 0;
          v11[3] = 0;
          v11[4] = 0;
          v11[2] = v8[2];
          v8[2] = 0;
          v13 = v11[4];
          v14 = v8[4];
          v11[3] = v8[3];
          v11[4] = v14;
          v8[3] = 0;
          v8[4] = v13;
          v11[5] = 0;
          v11[6] = 0;
          v11[7] = 0;
          v11[5] = v8[5];
          v8[5] = 0;
          v15 = v11[7];
          v16 = v8[7];
          v11[6] = v8[6];
          v11[7] = v16;
          v8[6] = 0;
          v8[7] = v15;
          v11[8] = 0;
          v11[9] = 0;
          v11[10] = 0;
          v11[8] = v8[8];
          v8[8] = 0;
          v17 = v11[10];
          v18 = v8[10];
          v11[9] = v8[9];
          v11[10] = v18;
          v8[9] = 0;
          v8[10] = v17;
          v11[11] = 0;
          v11[12] = 0;
          v11[13] = 0;
          v11[11] = v8[11];
          v8[11] = 0;
          v19 = v11[13];
          v20 = v8[13];
          v11[12] = v8[12];
          v11[13] = v20;
          v8[12] = 0;
          v8[13] = v19;
          re::FixedArray<CoreIKTransform>::deinit(v8 + 11);
          re::FixedArray<CoreIKTransform>::deinit(v8 + 8);
          re::FixedArray<CoreIKTransform>::deinit(v8 + 5);
          re::FixedArray<re::StringID>::deinit(v8 + 2);
          re::StringID::destroyString(v8);
          v11 += 14;
          v8 += 14;
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

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetSkeleton *,re::MeshAssetSkeleton *,re::MeshAssetSkeleton *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    re::StringID::operator=((a4 + v7), (a2 + v7));
    re::FixedArray<re::StringID>::operator=((a4 + v7 + 16), a2 + v7 + 16);
    re::FixedArray<unsigned int>::operator=((a4 + v7 + 40), a2 + v7 + 40);
    re::FixedArray<re::GenericSRT<float>>::operator=((a4 + v7 + 64), a2 + v7 + 64);
    re::FixedArray<re::Matrix4x4<float>>::operator=((a4 + v7 + 88), a2 + v7 + 88);
    v7 += 112;
  }

  while (a2 + v7 != v6);
  return v6;
}

uint64_t re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= *(a1 + 16))
  {
    re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::setCapacity(a1, *(a2 + 16));
    result = std::__copy_impl::operator()[abi:nn200100]<re::MeshAsssetModelVVMTableOfContents *,re::MeshAsssetModelVVMTableOfContents *,re::MeshAsssetModelVVMTableOfContents *>(&v16, *(a2 + 32), *(a2 + 32) + 208 * *(a1 + 16), *(a1 + 32));
    v10 = *(a1 + 16);
    if (v10 != v4)
    {
      v11 = *(a2 + 32);
      v12 = *(a1 + 32);
      v13 = 208 * v10;
      v14 = 208 * v4;
      do
      {
        *(v12 + v13) = *(v11 + v13);
        re::DynamicArray<unsigned long>::DynamicArray(v12 + v13 + 8, (v11 + v13 + 8));
        re::DynamicArray<unsigned long>::DynamicArray(v12 + v13 + 48, (v11 + v13 + 48));
        re::DynamicArray<re::DynamicArray<unsigned int>>::DynamicArray(v12 + v13 + 88, (v11 + v13 + 88));
        re::DynamicArray<re::DynamicArray<unsigned int>>::DynamicArray(v12 + v13 + 128, (v11 + v13 + 128));
        result = re::DynamicArray<re::DynamicArray<unsigned char>>::DynamicArray(v12 + v13 + 168, (v11 + v13 + 168));
        v14 -= 208;
        v11 += 208;
        v12 += 208;
      }

      while (v13 != v14);
    }
  }

  else
  {
    result = std::__copy_impl::operator()[abi:nn200100]<re::MeshAsssetModelVVMTableOfContents *,re::MeshAsssetModelVVMTableOfContents *,re::MeshAsssetModelVVMTableOfContents *>(&v15, *(a2 + 32), *(a2 + 32) + 208 * v4, *(a1 + 32));
    v6 = *(a1 + 16);
    if (v4 != v6)
    {
      v7 = *(a1 + 32);
      v8 = 208 * v4;
      v9 = 208 * v6;
      do
      {
        re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v7 + v8 + 168);
        re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v7 + v8 + 128);
        re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v7 + v8 + 88);
        re::DynamicArray<unsigned long>::deinit(v7 + v8 + 48);
        result = re::DynamicArray<unsigned long>::deinit(v7 + v8 + 8);
        v9 -= 208;
        v7 += 208;
      }

      while (v8 != v9);
    }
  }

  *(a1 + 16) = v4;
  return result;
}

void *re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xD0uLL))
        {
          v2 = 208 * a2;
          result = (*(*result + 32))(result, 208 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 208, a2);
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
        v11 = 208 * v9;
        do
        {
          re::MeshAsssetModelVVMTableOfContents::MeshAsssetModelVVMTableOfContents(&v7[v10 / 8], v8 + v10);
          re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v8 + v10 + 168);
          re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v8 + v10 + 128);
          re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v8 + v10 + 88);
          re::DynamicArray<unsigned long>::deinit(v8 + v10 + 48);
          re::DynamicArray<unsigned long>::deinit(v8 + v10 + 8);
          v10 += 208;
        }

        while (v11 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::MeshAsssetModelVVMTableOfContents::MeshAsssetModelVVMTableOfContents(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 40) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 8) = 0;
  *(result + 32) = 0;
  v2 = *(a2 + 16);
  *(result + 8) = *(a2 + 8);
  *(result + 16) = v2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *(result + 24);
  *(result + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  v4 = *(result + 40);
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = v4;
  ++*(a2 + 32);
  ++*(result + 32);
  *(result + 80) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  *(result + 72) = 0;
  v5 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v5;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v6 = *(result + 64);
  *(result + 64) = *(a2 + 64);
  *(a2 + 64) = v6;
  v7 = *(result + 80);
  *(result + 80) = *(a2 + 80);
  *(a2 + 80) = v7;
  ++*(a2 + 72);
  ++*(result + 72);
  *(result + 120) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 88) = 0;
  *(result + 112) = 0;
  v8 = *(a2 + 96);
  *(result + 88) = *(a2 + 88);
  *(result + 96) = v8;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  v9 = *(result + 104);
  *(result + 104) = *(a2 + 104);
  *(a2 + 104) = v9;
  v10 = *(result + 120);
  *(result + 120) = *(a2 + 120);
  *(a2 + 120) = v10;
  ++*(a2 + 112);
  ++*(result + 112);
  *(result + 160) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 128) = 0;
  *(result + 152) = 0;
  v11 = *(a2 + 136);
  *(result + 128) = *(a2 + 128);
  *(result + 136) = v11;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  v12 = *(result + 144);
  *(result + 144) = *(a2 + 144);
  *(a2 + 144) = v12;
  v13 = *(result + 160);
  *(result + 160) = *(a2 + 160);
  *(a2 + 160) = v13;
  ++*(a2 + 152);
  ++*(result + 152);
  *(result + 200) = 0;
  *(result + 176) = 0;
  *(result + 184) = 0;
  *(result + 168) = 0;
  *(result + 192) = 0;
  v14 = *(a2 + 176);
  *(result + 168) = *(a2 + 168);
  *(result + 176) = v14;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  v15 = *(result + 184);
  *(result + 184) = *(a2 + 184);
  *(a2 + 184) = v15;
  v16 = *(result + 200);
  *(result + 200) = *(a2 + 200);
  *(a2 + 200) = v16;
  ++*(a2 + 192);
  ++*(result + 192);
  return result;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::MeshAsssetModelVVMTableOfContents *,re::MeshAsssetModelVVMTableOfContents *,re::MeshAsssetModelVVMTableOfContents *>(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    *a4 = *v5;
    re::DynamicArray<unsigned long>::operator=((a4 + 2), (v5 + 8));
    re::DynamicArray<unsigned long>::operator=((a4 + 12), (v5 + 48));
    re::DynamicArray<re::DynamicArray<unsigned int>>::operator=((a4 + 22), (v5 + 88));
    re::DynamicArray<re::DynamicArray<unsigned int>>::operator=((a4 + 32), (v5 + 128));
    re::DynamicArray<re::DynamicArray<unsigned char>>::operator=((a4 + 42), (v5 + 168));
    a4 += 52;
    v5 += 208;
  }

  while (v5 != v6);
  return v6;
}

uint64_t re::DynamicArray<re::DynamicArray<unsigned int>>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::DynamicArray<unsigned int>>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::DynamicArray<unsigned int>>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::DynamicArray<unsigned int>>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::DynamicArray<unsigned char>>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::DynamicArray<unsigned char>>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::DynamicArray<unsigned int>>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::DynamicArray<unsigned char>>::copy(a1, a2);
    }
  }

  return a1;
}

void *re::DynamicArray<re::DynamicArray<unsigned int>>::copy(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(result, *(a2 + 16));
    v11 = *(a2 + 32);
    v12 = v3[2];
    v13 = v3[4];
    if (v12)
    {
      v14 = 40 * v12;
      do
      {
        result = re::DynamicArray<float>::operator=(v13, v11);
        v11 += 5;
        v13 += 40;
        v14 -= 40;
      }

      while (v14);
      v13 = v3[4];
      v12 = v3[2];
      v11 = *(a2 + 32);
    }

    if (v12 != v4)
    {
      v15 = 5 * v12;
      v16 = &v11[v15];
      result = (v13 + 8 * v15);
      v17 = 40 * v4 - 8 * v15;
      do
      {
        v18 = re::DynamicArray<float>::DynamicArray(result, v16);
        v16 += 5;
        result = (v18 + 40);
        v17 -= 40;
      }

      while (v17);
    }
  }

  else
  {
    v6 = result[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 40 * v4;
      do
      {
        result = re::DynamicArray<float>::operator=(v6, v7);
        v7 += 5;
        v6 += 40;
        v8 -= 40;
      }

      while (v8);
      v6 = v3[4];
      v5 = v3[2];
    }

    if (v4 != v5)
    {
      v9 = v6 + 40 * v4;
      v10 = 40 * v5 - 40 * v4;
      do
      {
        result = re::DynamicArray<unsigned long>::deinit(v9);
        v9 += 40;
        v10 -= 40;
      }

      while (v10);
    }
  }

  v3[2] = v4;
  return result;
}

uint64_t re::DynamicArray<re::DynamicArray<unsigned int>>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 40 * v2;
    do
    {
      result = re::DynamicArray<unsigned long>::deinit(v3);
      v3 += 40;
      v4 -= 40;
    }

    while (v4);
  }

  ++*(v1 + 24);
  return result;
}

void *re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(v5, a2);
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
              goto LABEL_16;
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
        v10 = v8 + 40 * v9;
        v11 = v7 + 4;
        do
        {
          *v11 = 0;
          *(v11 - 3) = 0;
          *(v11 - 2) = 0;
          *(v11 - 4) = 0;
          *(v11 - 2) = 0;
          v12 = *(v8 + 8);
          *(v11 - 4) = *v8;
          *(v11 - 3) = v12;
          *v8 = 0;
          *(v8 + 8) = 0;
          v13 = *(v11 - 2);
          *(v11 - 2) = *(v8 + 16);
          *(v8 + 16) = v13;
          v14 = *v11;
          *v11 = *(v8 + 32);
          *(v8 + 32) = v14;
          ++*(v8 + 24);
          ++*(v11 - 2);
          re::DynamicArray<unsigned long>::deinit(v8);
          v8 += 40;
          v11 += 5;
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

void *re::DynamicArray<re::DynamicArray<unsigned char>>::copy(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(result, *(a2 + 16));
    v11 = *(a2 + 32);
    v12 = v3[2];
    v13 = v3[4];
    if (v12)
    {
      v14 = 40 * v12;
      do
      {
        result = re::DynamicArray<BOOL>::operator=(v13, v11);
        v11 += 5;
        v13 += 40;
        v14 -= 40;
      }

      while (v14);
      v13 = v3[4];
      v12 = v3[2];
      v11 = *(a2 + 32);
    }

    if (v12 != v4)
    {
      v15 = 5 * v12;
      v16 = &v11[v15];
      result = (v13 + 8 * v15);
      v17 = 40 * v4 - 8 * v15;
      do
      {
        v18 = re::DynamicArray<BOOL>::DynamicArray(result, v16);
        v16 += 5;
        result = (v18 + 40);
        v17 -= 40;
      }

      while (v17);
    }
  }

  else
  {
    v6 = result[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 40 * v4;
      do
      {
        result = re::DynamicArray<BOOL>::operator=(v6, v7);
        v7 += 5;
        v6 += 40;
        v8 -= 40;
      }

      while (v8);
      v6 = v3[4];
      v5 = v3[2];
    }

    if (v4 != v5)
    {
      v9 = v6 + 40 * v4;
      v10 = 40 * v5 - 40 * v4;
      do
      {
        result = re::DynamicArray<unsigned long>::deinit(v9);
        v9 += 40;
        v10 -= 40;
      }

      while (v10);
    }
  }

  v3[2] = v4;
  return result;
}

uint64_t re::DynamicArray<re::DynamicArray<unsigned int>>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::DynamicArray<unsigned int>>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::DynamicArray<re::DynamicArray<unsigned char>>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::DynamicArray<unsigned char>>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::MeshAssetSkeleton>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 112 * a2;
    v9 = a2;
    do
    {
      v10 = (*(a1 + 32) + v8);
      re::FixedArray<CoreIKTransform>::deinit(v10 + 11);
      re::FixedArray<CoreIKTransform>::deinit(v10 + 8);
      re::FixedArray<CoreIKTransform>::deinit(v10 + 5);
      re::FixedArray<re::StringID>::deinit(v10 + 2);
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 112;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::MeshAssetSkeleton>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 112 * v4;
      do
      {
        v7 = *(a1 + 32) + v6;
        *v7 = 0;
        *(v7 + 8) = &str_67;
        *(v7 + 16) = 0uLL;
        *(v7 + 32) = 0uLL;
        *(v7 + 48) = 0uLL;
        *(v7 + 64) = 0uLL;
        *(v7 + 80) = 0uLL;
        *(v7 + 96) = 0uLL;
        v6 += 112;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

uint64_t re::MeshAsset::skeletonAtIndex(re::MeshAsset *this, unint64_t a2)
{
  if (*(this + 156) > a2)
  {
    return *(this + 157) + 184 * a2;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "skeletonIndex < skeletonCount()", "skeletonAtIndex", 260, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t anonymous namespace::makeMeshAssetPartFromMeshPart(unint64_t this, re::AttributeTable **a2, id *a3, int a4)
{
  v5 = a2;
  v350 = *MEMORY[0x1E69E9840];
  v325 = 0;
  v323 = 0;
  v322 = 0uLL;
  v324 = 0;
  v326[4] = 1;
  *&v326[12] = 1;
  *&v326[16] = -1;
  *&v326[24] = 0;
  *&v326[20] = 0;
  v327 = 0;
  v328 = &str_67;
  v7.i64[0] = 0x7F0000007FLL;
  v7.i64[1] = 0x7F0000007FLL;
  v329 = vnegq_f32(v7);
  v330 = v7;
  v337 = 0;
  v339 = 0;
  memset(v341, 0, 36);
  v335 = 0;
  v333 = 0u;
  v334 = 0u;
  v331 = 0u;
  v332 = 0u;
  *&v341[36] = 0x7FFFFFFFLL;
  v8 = re::AttributeTable::buffers(a2);
  v10 = v9;
  v11 = v5;
  do
  {
    v12 = v11;
    v11 = *v11;
  }

  while (v11 && !v12[3]);
  v13 = *(*a3 + 26);
  v300 = v13;
  if (v13 && (v14 = v13, v13 = [v13 supportsFamily:1006], v13) && (v13 = objc_msgSend(v14, "supportsFamily:", 5001), v13))
  {
    v13 = re::mtl::Device::supportsArgumentBuffers(&v300, v15);
    v16 = v13 ^ 1;
  }

  else
  {
    v16 = 1;
  }

  if (v12[3] != v10 || v5[42] != v10)
  {
    v18 = __dst[0];
    v19 = __dst[1];
    *this = 0;
    *(this + 16) = 100;
    *(this + 24) = re::AssetErrorCategory(void)::instance;
    *(this + 32) = v18;
    *(this + 48) = v19;
    goto LABEL_465;
  }

  v299 = 0;
  v296[1] = 0;
  v297 = 0;
  v296[0] = 0;
  v298 = 0;
  v277 = this;
  v282 = v5;
  v288 = v10;
  v266 = a3;
  v267 = v16;
  if (*(&v322 + 1) < v10)
  {
    re::DynamicArray<re::MeshAssetBuffer>::setCapacity(&v322, v10);
    re::DynamicArray<re::ReadOnlyCPUAccessibleBufferSliceContent>::resize(v296, v10);
    goto LABEL_15;
  }

  re::DynamicArray<re::ReadOnlyCPUAccessibleBufferSliceContent>::resize(v296, v10);
  if (v10)
  {
LABEL_15:
    v20 = 0;
    v21 = 4;
    v284 = v297;
    v22 = v299;
    v23 = v342;
    while (1)
    {
      this = v12[3];
      if (this <= v20)
      {
        break;
      }

      if (*(v12[4] + v21) != 1)
      {
        v31 = __dst[0];
        v33 = __dst[1];
        *v277 = 0;
        *(v277 + 2) = 100;
        *(v277 + 3) = re::AssetErrorCategory(void)::instance;
        *(v277 + 2) = v31;
        *(v277 + 3) = v33;
        goto LABEL_459;
      }

      v24 = *(v8 + 20);
      if (!a4 || v24)
      {
        *v345 = *v8;
        v29 = *(v8 + 16);
        __dst[0] = *v345;
        *&__dst[1] = __PAIR64__(v24, v29);
        *&v292 = 0;
        DWORD2(v293) = 0;
        *&v294 = __PAIR64__(v24, v29);
        *&v342[0] = &v292;
        *(&v342[0] + 1) = &v292;
        if (*&v345[8] == -1)
        {
          goto LABEL_495;
        }

        v301 = v342;
        (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_11BufferSliceC1ENS6_10BufferViewEmmE3__0ZNS9_C1ESA_mmE3__1EEEEEJRNS0_6__implIJPN3MTL6BufferEPKNS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[*&v345[8]])(&v301, __dst);
      }

      else
      {
        v25 = *v8;
        *&__dst[1] = *(v8 + 16);
        __dst[0] = v25;
        v26 = *(v8 + 16);
        v27 = re::BufferView::sourceLength(v8);
        v28 = *(v8 + 16);
        *&v292 = 0;
        DWORD2(v293) = 0;
        LODWORD(v294) = v26;
        DWORD1(v294) = v27 - v28;
        *&v342[0] = &v292;
        *(&v342[0] + 1) = &v292;
        if (DWORD2(__dst[0]) == -1)
        {
          goto LABEL_495;
        }

        *v345 = v342;
        (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_11BufferSliceC1ENS6_10BufferViewEmmE3__0ZNS9_C1ESA_mmE3__1EEEEEJRNS0_6__implIJPN3MTL6BufferEPKNS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[DWORD2(__dst[0])])(v345, __dst);
      }

      re::ReadOnlyCPUAccessibleBufferSliceContent::make(&v292, __dst);
      this = LOBYTE(__dst[0]);
      if (LOBYTE(__dst[0]) == 1)
      {
        if (v284 <= v20)
        {
          goto LABEL_471;
        }

        re::ReadOnlyCPUAccessibleBufferSliceContent::operator=(v22, __dst + 1);
      }

      else
      {
        v31 = v342[0];
        v32 = v342[1];
        *v277 = 0;
        *(v277 + 2) = 100;
        *(v277 + 3) = re::AssetErrorCategory(void)::instance;
        *(v277 + 2) = v31;
        *(v277 + 3) = v32;
      }

      if (LOBYTE(__dst[0]) == 1)
      {
        re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent((__dst + 8));
      }

      else
      {
        v17 = *(&__dst[1] + 1);
        if (*(&__dst[1] + 1) && (v303[0] & 1) != 0)
        {
          v17 = (*(**(&__dst[1] + 1) + 40))();
        }
      }

      if (DWORD2(v293) != -1)
      {
        v17 = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[DWORD2(v293)])(__dst, &v292);
      }

      if (!this)
      {
        goto LABEL_459;
      }

      ++v20;
      v22 += 96;
      v21 += 16;
      v8 += 24;
      if (v288 == v20)
      {
        v22 = 0;
        this = v277;
        v10 = v288;
        goto LABEL_40;
      }
    }

    *&v292 = 0;
    memset(v303, 0, sizeof(v303));
    memset(__dst, 0, sizeof(__dst));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v342[0]) = 136315906;
    *(v342 + 4) = "operator[]";
    WORD6(v342[0]) = 1024;
    *(v342 + 14) = 476;
    WORD1(v342[1]) = 2048;
    *(&v342[1] + 4) = v20;
    WORD6(v342[1]) = 2048;
    *(&v342[1] + 14) = this;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_470:
    *v345 = 0;
    memset(v303, 0, sizeof(v303));
    memset(__dst, 0, sizeof(__dst));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v342[0]) = 136315906;
    *(v342 + 4) = "operator[]";
    WORD6(v342[0]) = 1024;
    *(v342 + 14) = 476;
    WORD1(v342[1]) = 2048;
    *(&v342[1] + 4) = v8;
    WORD6(v342[1]) = 2048;
    *(&v342[1] + 14) = v23;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_471:
    v301 = 0;
    v343 = 0u;
    v344 = 0u;
    memset(v342, 0, sizeof(v342));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v345 = 136315906;
    *&v345[4] = "operator[]";
    *&v345[12] = 1024;
    *&v345[14] = 789;
    v346 = 2048;
    v347 = v20;
    v348 = 2048;
    v349 = v284;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_472:
    *v345 = 0;
    memset(v303, 0, sizeof(v303));
    memset(__dst, 0, sizeof(__dst));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v342[0]) = 136315906;
    *(v342 + 4) = "operator[]";
    WORD6(v342[0]) = 1024;
    *(v342 + 14) = 789;
    WORD1(v342[1]) = 2048;
    *(&v342[1] + 4) = v8;
    WORD6(v342[1]) = 2048;
    *(&v342[1] + 14) = v20;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_473:
    *v345 = 0;
    memset(v303, 0, sizeof(v303));
    memset(__dst, 0, sizeof(__dst));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v342[0]) = 136315906;
    *(v342 + 4) = "operator[]";
    WORD6(v342[0]) = 1024;
    *(v342 + 14) = 476;
    WORD1(v342[1]) = 2048;
    *(&v342[1] + 4) = v8;
    WORD6(v342[1]) = 2048;
    *(&v342[1] + 14) = v23;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_474:
    *v345 = 0;
    memset(v303, 0, sizeof(v303));
    memset(__dst, 0, sizeof(__dst));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v342[0]) = 136315906;
    *(v342 + 4) = "operator[]";
    WORD6(v342[0]) = 1024;
    *(v342 + 14) = 789;
    WORD1(v342[1]) = 2048;
    *(&v342[1] + 4) = this;
    WORD6(v342[1]) = 2048;
    *(&v342[1] + 14) = v20;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_475:
    *v345 = 0;
    memset(v303, 0, sizeof(v303));
    memset(__dst, 0, sizeof(__dst));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v342[0]) = 136315906;
    *(v342 + 4) = "operator[]";
    WORD6(v342[0]) = 1024;
    *(v342 + 14) = 789;
    WORD1(v342[1]) = 2048;
    *(&v342[1] + 4) = this;
    WORD6(v342[1]) = 2048;
    *(&v342[1] + 14) = v273;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_476:
    *v345 = 0;
    memset(v303, 0, sizeof(v303));
    memset(__dst, 0, sizeof(__dst));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v342[0]) = 136315906;
    *(v342 + 4) = "operator[]";
    WORD6(v342[0]) = 1024;
    *(v342 + 14) = 476;
    WORD1(v342[1]) = 2048;
    *(&v342[1] + 4) = this;
    WORD6(v342[1]) = 2048;
    *(&v342[1] + 14) = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_477:
    *v345 = 0;
    memset(v303, 0, sizeof(v303));
    memset(__dst, 0, sizeof(__dst));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v342[0]) = 136315906;
    *(v342 + 4) = "operator[]";
    WORD6(v342[0]) = 1024;
    *(v342 + 14) = 476;
    WORD1(v342[1]) = 2048;
    *(&v342[1] + 4) = this;
    WORD6(v342[1]) = 2048;
    *(&v342[1] + 14) = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_478:
    *v345 = 0;
    memset(v303, 0, sizeof(v303));
    memset(__dst, 0, sizeof(__dst));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v342[0]) = 136315906;
    *(v342 + 4) = "operator[]";
    WORD6(v342[0]) = 1024;
    *(v342 + 14) = 476;
    WORD1(v342[1]) = 2048;
    *(&v342[1] + 4) = this;
    WORD6(v342[1]) = 2048;
    *(&v342[1] + 14) = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_479:
    v301 = 0;
    memset(v303, 0, sizeof(v303));
    memset(__dst, 0, sizeof(__dst));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v345 = 136315906;
    *&v345[4] = "operator[]";
    *&v345[12] = 1024;
    *&v345[14] = 476;
    v346 = 2048;
    v347 = this;
    v348 = 2048;
    v349 = v22;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_480:
    *v345 = 0;
    memset(v303, 0, sizeof(v303));
    memset(__dst, 0, sizeof(__dst));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v342[0]) = 136315906;
    *(v342 + 4) = "operator[]";
    WORD6(v342[0]) = 1024;
    *(v342 + 14) = 476;
    WORD1(v342[1]) = 2048;
    *(&v342[1] + 4) = v22;
    WORD6(v342[1]) = 2048;
    *(&v342[1] + 14) = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_481:
    *v345 = 0;
    memset(v303, 0, sizeof(v303));
    memset(__dst, 0, sizeof(__dst));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v342[0]) = 136315906;
    *(v342 + 4) = "operator[]";
    WORD6(v342[0]) = 1024;
    *(v342 + 14) = 476;
    WORD1(v342[1]) = 2048;
    *(&v342[1] + 4) = v20;
    WORD6(v342[1]) = 2048;
    *(&v342[1] + 14) = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_482:
    *v345 = 0;
    memset(v303, 0, sizeof(v303));
    memset(__dst, 0, sizeof(__dst));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v342[0]) = 136315906;
    *(v342 + 4) = "operator[]";
    WORD6(v342[0]) = 1024;
    *(v342 + 14) = 789;
    WORD1(v342[1]) = 2048;
    *(&v342[1] + 4) = v273;
    WORD6(v342[1]) = 2048;
    *(&v342[1] + 14) = v273;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_483;
  }

  v22 = 1;
LABEL_40:
  v294 = 0u;
  v295 = 0u;
  v292 = 0u;
  v293 = 0u;
  v8 = 2 * v10;
  v301 = 0;
  if ((v22 & 1) == 0)
  {
    v8 = 0;
    v20 = v297;
    v35 = v299;
    this = qword_1E871AE48;
    do
    {
      v23 = v5[42];
      if (v23 <= v8)
      {
        goto LABEL_470;
      }

      v36 = 0;
      v37 = 1;
      do
      {
        v38 = qword_1E871AE48[2 * v36 + 1];
        v39 = *v38;
        v40 = *(v5[43] + 2 * v8 + 1);
        if (*v38)
        {
          v41 = v38 + 1;
          v40 = *(v5[43] + 2 * v8 + 1);
          while (v39 == *v40)
          {
            ++v40;
            v42 = *v41++;
            v39 = v42;
            if (!v42)
            {
              goto LABEL_50;
            }
          }
        }

        else
        {
LABEL_50:
          if (!*v40)
          {
            break;
          }
        }

        v37 = v36++ < 8;
      }

      while (v36 != 9);
      if (v37)
      {
        if (v20 <= v8)
        {
          goto LABEL_472;
        }

        v23 = v12[3];
        if (v23 <= v8)
        {
          goto LABEL_473;
        }

        *&__dst[0] = *(v35 + 12 * v8) + *(v12[4] + 4 * v8 + 2);
        if (re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::find(&v292, *&__dst[0]) == -1)
        {
          re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::addNew(&v292, __dst, &v301);
        }
      }

      v301 = ++v8;
    }

    while (v8 < v288);
    v272 = *(v5 + 113);
    v23 = *(v5 + 461);
    if (a4)
    {
      this = v277;
      goto LABEL_60;
    }

    v268 = *(v5 + 461);
    v51 = 0;
    this = 0;
    v291 = 0;
    v23 = v342;
    while (1)
    {
      if (v20 <= this)
      {
        goto LABEL_474;
      }

      v290 = *v35;
      v52 = re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::find(&v292, v290);
      if (v52 == -1)
      {
        re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::addNew(&v292, &v290, &v291);
      }

      else
      {
        v53 = (*(&v292 + 1) + 16 * v52 + 8);
      }

      v22 = *v53;
      if (this == *v53)
      {
        v8 = v12[3];
        if (v8 <= this)
        {
          goto LABEL_478;
        }

        v54 = v12[4];
        v8 = *(v35 + 1);
        memset(v342, 0, 32);
        re::DynamicString::setCapacity(v342, 0);
        *&v344 = 0;
        *&v343 = 0;
        v342[2] = 0uLL;
        DWORD2(v343) = 0;
        WORD4(v344) = 256;
        v22 = v5[42];
        if (v22 <= this)
        {
          goto LABEL_479;
        }

        v22 = *(v5[43] + v51 + 8);
        v55 = strlen(v22);
        *&__dst[0] = v22;
        *(&__dst[0] + 1) = v55;
        re::DynamicString::operator=(v342, __dst);
        BYTE8(v344) = *(v54 + v51 + 12);
        BYTE9(v344) = *(v54 + v51 + 5);
        if (*(&v342[2] + 1) < v8)
        {
          re::DynamicArray<BOOL>::setCapacity(&v342[2], v8);
        }

        re::DynamicArray<REFrameAnalysisBottleneck>::copy(&v342[2], 0, *v35, v8);
        v56.n128_f64[0] = re::DynamicArray<re::MeshAssetBuffer>::add(&v322, v342);
        if (*&v342[2])
        {
          if (v344)
          {
            (*(**&v342[2] + 40))(v56.n128_f64[0]);
          }

          *&v344 = 0;
          *&v343 = 0;
          v342[2] = 0uLL;
          ++DWORD2(v343);
        }

        v34 = *&v342[0];
        if (!*&v342[0] || (BYTE8(v342[0]) & 1) == 0)
        {
          goto LABEL_98;
        }

        v57 = *&v342[1];
      }

      else
      {
        v8 = v5[42];
        if (v8 <= this)
        {
          goto LABEL_477;
        }

        if (v8 <= v22)
        {
          goto LABEL_480;
        }

        v58 = v5[43];
        v8 = *(v58 + v51 + 8);
        v22 = *(v58 + 2 * v22 + 1);
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(v341, v8, __dst);
        v34 = *&__dst[0];
        if (!*&__dst[0] || (BYTE8(__dst[0]) & 1) == 0)
        {
          goto LABEL_98;
        }

        v57 = *&__dst[1];
      }

      v34 = (*(*v34 + 40))(v34, v57, v56);
LABEL_98:
      v291 = ++this;
      v51 += 16;
      v35 = (v35 + 96);
      if (this >= v288)
      {
        this = v277;
        v23 = v268;
        goto LABEL_114;
      }
    }
  }

  v272 = *(v5 + 113);
  v23 = *(v5 + 461);
  if ((a4 & 1) == 0)
  {
    goto LABEL_114;
  }

LABEL_60:
  v20 = *(v5 + 460);
  if (v20 != 255)
  {
    v8 = v297;
    if (v297 <= v20)
    {
LABEL_492:
      *v345 = 0;
      memset(v303, 0, sizeof(v303));
      memset(__dst, 0, sizeof(__dst));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v342[0]) = 136315906;
      *(v342 + 4) = "operator[]";
      WORD6(v342[0]) = 1024;
      *(v342 + 14) = 789;
      WORD1(v342[1]) = 2048;
      *(&v342[1] + 4) = v20;
      WORD6(v342[1]) = 2048;
      *(&v342[1] + 14) = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_493;
    }

    v8 = v12[3];
    if (v8 <= v20)
    {
LABEL_493:
      *v345 = 0;
      memset(v303, 0, sizeof(v303));
      memset(__dst, 0, sizeof(__dst));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v342[0]) = 136315906;
      *(v342 + 4) = "operator[]";
      WORD6(v342[0]) = 1024;
      *(v342 + 14) = 476;
      WORD1(v342[1]) = 2048;
      *(&v342[1] + 4) = v20;
      WORD6(v342[1]) = 2048;
      *(&v342[1] + 14) = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_494;
    }

    v43 = (v299 + 96 * *(v5 + 460));
    v44 = *(v5 + 112);
    v45 = *(v12[4] + 16 * v20 + 12);
    if (v45 == 36)
    {
      if (v43[1] >= 4 * v44 && v44)
      {
        v46 = 0;
        v59 = *v43;
        do
        {
          v61 = *v59;
          v59 += 2;
          v60 = v61;
          if (v46 <= v61)
          {
            v62 = v60;
          }

          else
          {
            v62 = v46;
          }

          if (v60 != -1)
          {
            v46 = v62;
          }

          --v44;
        }

        while (v44);
        goto LABEL_111;
      }
    }

    else if (v45 == 49 && v43[1] >= 2 * v44 && v44)
    {
      v46 = 0;
      v47 = *v43;
      do
      {
        v49 = *v47++;
        v48 = v49;
        if (v46 <= v49)
        {
          v50 = v48;
        }

        else
        {
          v50 = v46;
        }

        if (v48 != 0xFFFF)
        {
          v46 = v50;
        }

        --v44;
      }

      while (v44);
      goto LABEL_111;
    }

    v46 = 0;
LABEL_111:
    v272 = v46 + 1;
  }

  v34 = useGPUFormatConversionForAttributeSerialization();
  if (v267 & 1 | ((v34 & 1) == 0))
  {
    v301 = 0;
    if (!v22)
    {
      this = 0;
      v273 = v297;
      v275 = v299;
      do
      {
        if (v273 <= this)
        {
          goto LABEL_475;
        }

        v8 = v12[3];
        if (v8 <= this)
        {
          goto LABEL_476;
        }

        v291 = (*(v275 + 12 * this) + *(v12[4] + 4 * this + 2));
        v118 = re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::find(&v292, v291);
        if (v118 == -1)
        {
          re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::addNew(&v292, &v291, &v301);
        }

        else
        {
          v119 = (*(&v292 + 1) + 16 * v118 + 8);
        }

        v22 = *v119;
        if (*v119 == this)
        {
          if (this == v20)
          {
            this = v20;
          }

          else
          {
            v8 = v12[3];
            if (v8 <= this)
            {
              goto LABEL_488;
            }

            v121 = (v12[4] + 16 * this);
            if (*(v121 + 5) == 1)
            {
              v122 = *(v275 + 12 * this + 1) / *v121;
              v123 = v272;
              if (v272 >= v122)
              {
                v123 = v122;
              }

              v272 = v123;
            }
          }
        }

        else
        {
          v8 = v5[42];
          if (v8 <= this)
          {
            goto LABEL_484;
          }

          if (v8 <= v22)
          {
            goto LABEL_485;
          }

          v120 = v5[43];
          v8 = *(v120 + 2 * this + 1);
          v22 = *(v120 + 2 * v22 + 1);
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(v341, v8, __dst);
          if (*&__dst[0] && (BYTE8(__dst[0]) & 1) != 0)
          {
            (*(**&__dst[0] + 40))();
          }
        }

        v301 = ++this;
      }

      while (this < v288);
      v20 = 0;
      this = v277;
      v22 = v288;
      v270 = v23;
      while (1)
      {
        v8 = v12[3];
        if (v8 <= v20)
        {
          goto LABEL_481;
        }

        if (v20 == v273)
        {
          goto LABEL_482;
        }

        v124 = (v12[4] + 16 * v20);
        v125 = (v275 + 96 * v20);
        v34 = re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::find(&v292, *v125 + *(v124 + 2));
        if (*(*(&v292 + 1) + 16 * v34 + 8) != v20)
        {
          goto LABEL_375;
        }

        v8 = v282[42];
        if (v8 <= v20)
        {
          goto LABEL_486;
        }

        v127 = 0;
        v8 = *(v124 + 5);
        v128 = *(v275 + 12 * v20 + 1) / *v124;
        v129 = v128;
        v130 = *(v282[43] + 2 * v20 + 1);
        v131 = *(v124 + 12);
        v132 = 105;
        while (v132 == v130[v127])
        {
          v132 = aIndextriangles[++v127];
          if (v127 == 14)
          {
            if (!v130[14])
            {
              if (v131 == 49)
              {
                v131 = 49;
              }

              else
              {
                v131 = 36;
              }

              goto LABEL_283;
            }

            break;
          }
        }

        v133 = 0;
        v134 = 118;
        while (v134 == v130[v133])
        {
          v134 = aVertexposition[++v133];
          if (v133 == 14)
          {
            if (!v130[14])
            {
LABEL_276:
              v131 = 30;
              goto LABEL_283;
            }

            break;
          }
        }

        v135 = 0;
        v136 = 118;
        while (v136 == v130[v135])
        {
          v136 = aVertexnormal[++v135];
          if (v135 == 12)
          {
            if (!v130[12])
            {
              goto LABEL_276;
            }

            break;
          }
        }

        v137 = 0;
        v138 = 118;
        while (v138 == v130[v137])
        {
          v138 = aVertextangent[++v137];
          if (v137 == 13)
          {
            if (!v130[13])
            {
              goto LABEL_276;
            }

            break;
          }
        }

        v139 = 0;
        v140 = 118;
        while (v140 == v130[v139])
        {
          v140 = aVertexbitangen[++v139];
          if (v139 == 15)
          {
            if (!v130[15])
            {
              goto LABEL_276;
            }

            break;
          }
        }

        v141 = 0;
        v142 = 118;
        while (v142 == v130[v141])
        {
          v142 = aVertexcolor[++v141];
          if (v141 == 11)
          {
            if (!v130[11])
            {
              v131 = 31;
              goto LABEL_283;
            }

            break;
          }
        }

        v143 = 0;
        v144 = 118;
        while (v144 == v130[v143])
        {
          v144 = aVertexuv[++v143];
          if (v143 == 8)
          {
            if (!v130[8])
            {
LABEL_280:
              v131 = 29;
              goto LABEL_283;
            }

            break;
          }
        }

        v145 = 0;
        v146 = 118;
        while (v146 == v130[v145])
        {
          v146 = aVertexuv1[++v145];
          if (v145 == 9)
          {
            if (!v130[9])
            {
              goto LABEL_280;
            }

            break;
          }
        }

        v147 = 0;
        v148 = 118;
        while (v148 == v130[v147])
        {
          v148 = aVertexadjacenc[++v147];
          if (v147 == 17)
          {
            if (!v130[17])
            {
              v131 = 36;
              goto LABEL_283;
            }

            break;
          }
        }

        v149 = 0;
        v150 = 97;
        while (v150 == v130[v149])
        {
          v150 = aAccumulatedver[++v149];
          if (v149 == 24)
          {
            if (v130[24])
            {
              v131 = *(v124 + 12);
            }

            else
            {
              v131 = 36;
            }

            break;
          }
        }

LABEL_283:
        v281 = v131;
        v151 = re::sizeFromVertexFormat(v131, v126);
        v152 = v151;
        if (v20 == *(v282 + 460))
        {
          break;
        }

        v154 = *(v124 + 5);
        if (v154 > 2)
        {
          this = v20;
          if (v154 - 3 < 2)
          {
            v129 = 0;
          }

          goto LABEL_294;
        }

        if (!*(v124 + 5))
        {
          goto LABEL_291;
        }

        if (v154 == 1)
        {
          this = v20;
          v153 = v272;
LABEL_285:
          if (v128 >= v153)
          {
            v129 = v153;
          }

          goto LABEL_294;
        }

        if (v154 != 2)
        {
          this = v20;
        }

        else
        {
LABEL_291:
          this = v20;
          v129 = v128 != 0;
        }

LABEL_294:
        memset(v342, 0, 32);
        re::DynamicString::setCapacity(v342, 0);
        *&v344 = 0;
        *&v343 = 0;
        v342[2] = 0uLL;
        DWORD2(v343) = 0;
        WORD4(v344) = 256;
        v20 = v282[42];
        if (v20 <= this)
        {
          goto LABEL_487;
        }

        v155 = v128 * v152;
        v271 = this;
        v156 = strlen(*(v282[43] + 2 * this + 1));
        *&__dst[0] = *(v282[43] + 2 * this + 1);
        *(&__dst[0] + 1) = v156;
        re::DynamicString::operator=(v342, __dst);
        BYTE8(v344) = v281;
        BYTE9(v344) = v8;
        if (*(&v342[2] + 1) < v155)
        {
          re::DynamicArray<BOOL>::setCapacity(&v342[2], v155);
        }

        v158 = *v125;
        v159 = *(v124 + 2);
        re::sizeFromVertexFormat(*(v124 + 12), v157);
        v160 = v281;
        if (v129)
        {
          v161 = 0;
          v162 = 0;
          v8 = 0;
          v163 = v158 + v159;
          v164 = v152;
          v287 = v129;
          v279 = v152;
          do
          {
            v165 = v124;
            v166 = *(v124 + 12);
            v167 = (v163 + v161);
            v168 = v160;
            if (v166 == v160)
            {
              re::DynamicArray<REFrameAnalysisBottleneck>::copy(&v342[2], v162, (v163 + v161), v164);
              v160 = v168;
              v124 = v165;
            }

            else
            {
              v160 = v168;
              if ((v168 - 28) < 4)
              {
                v171 = 0.0;
                __dst[0] = xmmword_1E30474D0;
                v124 = v165;
                switch(v166)
                {
                  case 1:
                  case 2:
                  case 3:
                  case 45:
                    if (VectorSizeForVertexFormat)
                    {
                      v172 = __dst;
                      do
                      {
                        v173 = *v167;
                        v167 = (v167 + 1);
                        *v172++ = v173;
                        --VectorSizeForVertexFormat;
                      }

                      while (VectorSizeForVertexFormat);
                    }

                    goto LABEL_365;
                  case 4:
                  case 5:
                  case 6:
                  case 46:
                    if (VectorSizeForVertexFormat)
                    {
                      v189 = __dst;
                      do
                      {
                        v190 = *v167;
                        v167 = (v167 + 1);
                        *v189++ = v190;
                        --VectorSizeForVertexFormat;
                      }

                      while (VectorSizeForVertexFormat);
                    }

                    goto LABEL_365;
                  case 7:
                  case 8:
                  case 9:
                  case 47:
                    if (VectorSizeForVertexFormat)
                    {
                      v193 = __dst;
                      do
                      {
                        v194 = *v167;
                        v167 = (v167 + 1);
                        *v193++ = v194 * 0.0039216;
                        --VectorSizeForVertexFormat;
                      }

                      while (VectorSizeForVertexFormat);
                    }

                    goto LABEL_365;
                  case 10:
                  case 11:
                  case 12:
                  case 48:
                    if (VectorSizeForVertexFormat)
                    {
                      v197 = __dst;
                      do
                      {
                        v198 = *v167;
                        v167 = (v167 + 1);
                        v199 = v198 * 0.007874;
                        if (v199 < -1.0)
                        {
                          v199 = -1.0;
                        }

                        *v197++ = v199;
                        --VectorSizeForVertexFormat;
                      }

                      while (VectorSizeForVertexFormat);
                    }

                    goto LABEL_365;
                  case 13:
                  case 14:
                  case 15:
                  case 49:
                    if (VectorSizeForVertexFormat)
                    {
                      v185 = __dst;
                      do
                      {
                        v186 = *v167++;
                        *v185++ = v186;
                        --VectorSizeForVertexFormat;
                      }

                      while (VectorSizeForVertexFormat);
                    }

                    goto LABEL_365;
                  case 16:
                  case 17:
                  case 18:
                  case 50:
                    if (VectorSizeForVertexFormat)
                    {
                      v195 = __dst;
                      do
                      {
                        v196 = *v167++;
                        *v195++ = v196;
                        --VectorSizeForVertexFormat;
                      }

                      while (VectorSizeForVertexFormat);
                    }

                    goto LABEL_365;
                  case 19:
                  case 20:
                  case 21:
                  case 51:
                    if (VectorSizeForVertexFormat)
                    {
                      v187 = __dst;
                      do
                      {
                        v188 = *v167++;
                        *v187++ = v188 * 0.000015259;
                        --VectorSizeForVertexFormat;
                      }

                      while (VectorSizeForVertexFormat);
                    }

                    goto LABEL_365;
                  case 22:
                  case 23:
                  case 24:
                  case 52:
                    if (VectorSizeForVertexFormat)
                    {
                      v182 = __dst;
                      do
                      {
                        v183 = *v167++;
                        v184 = v183 * 0.000030519;
                        if (v184 < -1.0)
                        {
                          v184 = -1.0;
                        }

                        *v182++ = v184;
                        --VectorSizeForVertexFormat;
                      }

                      while (VectorSizeForVertexFormat);
                    }

                    goto LABEL_365;
                  case 25:
                  case 26:
                  case 27:
                  case 53:
                    if (VectorSizeForVertexFormat)
                    {
                      v175 = __dst;
                      do
                      {
                        v176 = *v167++;
                        _H0 = v176;
                        __asm { FCVT            S0, H0 }

                        *v175++ = _S0;
                        --VectorSizeForVertexFormat;
                      }

                      while (VectorSizeForVertexFormat);
                    }

                    goto LABEL_365;
                  case 28:
                  case 29:
                  case 30:
                  case 31:
                    if (VectorSizeForVertexFormat)
                    {
                      v200 = 4 * VectorSizeForVertexFormat;
                      v201 = v170;
                      memcpy(__dst, (v163 + v161), v200);
                      v170 = v201;
                    }

                    goto LABEL_365;
                  case 32:
                  case 33:
                  case 34:
                  case 35:
                    if (VectorSizeForVertexFormat)
                    {
                      v191 = __dst;
                      do
                      {
                        v192 = *v167;
                        v167 += 2;
                        *v191++ = v192;
                        --VectorSizeForVertexFormat;
                      }

                      while (VectorSizeForVertexFormat);
                    }

                    goto LABEL_365;
                  case 36:
                  case 37:
                  case 38:
                  case 39:
                    if (VectorSizeForVertexFormat)
                    {
                      v202 = __dst;
                      do
                      {
                        v203 = *v167;
                        v167 += 2;
                        *v202++ = v203;
                        --VectorSizeForVertexFormat;
                      }

                      while (VectorSizeForVertexFormat);
                    }

                    goto LABEL_365;
                  case 42:
                    if (VectorSizeForVertexFormat)
                    {
                      for (i = 0; i != VectorSizeForVertexFormat; ++i)
                      {
                        LOBYTE(v171) = *(v167 + i);
                        v171 = LODWORD(v171) * 0.0039216;
                        *(__dst + i) = v171;
                      }

                      v205 = DWORD2(__dst[0]);
                      v206 = __dst[0];
                    }

                    else
                    {
                      v206 = 0;
                      v205 = 0;
                    }

                    DWORD2(__dst[0]) = v206;
                    LODWORD(__dst[0]) = v205;
LABEL_365:
                    re::DynamicArray<REFrameAnalysisBottleneck>::copy(&v342[2], v162, __dst, 4 * v170);
                    break;
                  default:
                    break;
                }

                v160 = v281;
                v164 = v279;
                goto LABEL_367;
              }

              v124 = v165;
              v164 = v279;
              if (v160 == 36)
              {
                if (v166 == 49)
                {
                  v174 = *v167;
                  goto LABEL_312;
                }

                if (v166 == 45)
                {
                  v174 = *v167;
LABEL_312:
                  LODWORD(__dst[0]) = v174;
                  re::DynamicArray<REFrameAnalysisBottleneck>::copy(&v342[2], v162, __dst, 4uLL);
                  v160 = v281;
                }
              }
            }

LABEL_367:
            v161 += *v124;
            v162 += v164;
            ++v8;
          }

          while (v8 != v287);
        }

        v207.n128_f64[0] = re::DynamicArray<re::MeshAssetBuffer>::add(&v322, v342);
        this = v277;
        v23 = v270;
        v20 = v271;
        v22 = v288;
        if (*&v342[2])
        {
          if (v344)
          {
            (*(**&v342[2] + 40))(v207.n128_f64[0]);
          }

          *&v344 = 0;
          *&v343 = 0;
          v342[2] = 0uLL;
          ++DWORD2(v343);
        }

        v34 = *&v342[0];
        if (*&v342[0] && (BYTE8(v342[0]) & 1) != 0)
        {
          v34 = (*(**&v342[0] + 40))(v207);
        }

LABEL_375:
        ++v20;
        v5 = v282;
        if (v20 == v22)
        {
          goto LABEL_114;
        }
      }

      this = v20;
      v153 = *(v282 + 112);
      goto LABEL_285;
    }
  }

LABEL_114:
  if (a4)
  {
    v34 = useGPUFormatConversionForAttributeSerialization();
    if (!(v267 & 1 | ((v34 & 1) == 0)))
    {
      memset(__dst, 0, 24);
      *(&__dst[0] + 1) = 14;
      *&__dst[1] = v63;
      if (!v63)
      {
LABEL_494:
        re::internal::assertLog(4, v64, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        _os_crash();
        __break(1u);
LABEL_495:
        std::__throw_bad_variant_access[abi:nn200100]();
      }

      v63[5] = 0u;
      v63[6] = 0u;
      v63[3] = 0u;
      v63[4] = 0u;
      v63[1] = 0u;
      v63[2] = 0u;
      *v63 = 0u;
      re::GPUAttributeFormatConverter::convertAttributes(__dst, v266, v5, &v322);
      if (*&__dst[0] && *(&__dst[0] + 1))
      {
        v65 = *&__dst[1];
        v66 = 8 * *(&__dst[0] + 1);
        do
        {
          if (*v65)
          {

            *v65 = 0;
          }

          ++v65;
          v66 -= 8;
        }

        while (v66);
        v34 = (*(**&__dst[0] + 40))(*&__dst[0], *&__dst[1]);
      }
    }
  }

  v20 = *(v5 + 112);
  v22 = *(v5 + 456);
  if (*(v5 + 520) == 4 && v23 != 255)
  {
    v67 = *(v5 + 460);
    if (v67 != 255)
    {
      memset(v342, 0, 32);
      re::DynamicString::setCapacity(v342, 0);
      *&v344 = 0;
      *&v343 = 0;
      v342[2] = 0uLL;
      DWORD2(v343) = 0;
      WORD4(v344) = 256;
      *&__dst[0] = "indexTriangles";
      *(&__dst[0] + 1) = 14;
      re::DynamicString::operator=(v342, __dst);
      BYTE9(v344) = 0;
      v68 = HIWORD(v272);
      if (HIWORD(v272))
      {
        v69 = 36;
      }

      else
      {
        v69 = 49;
      }

      BYTE8(v344) = v69;
      v12 = v323;
      if (v323 <= v67)
      {
LABEL_489:
        v301 = 0;
        memset(v303, 0, sizeof(v303));
        memset(__dst, 0, sizeof(__dst));
        v8 = v342;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v345 = 136315906;
        *&v345[4] = "operator[]";
        *&v345[12] = 1024;
        *&v345[14] = 789;
        v346 = 2048;
        v347 = v67;
        v348 = 2048;
        v349 = v12;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_490;
      }

      v70 = v325 + 80 * v67;
      v71 = *(v70 + 64);
      v72 = *(v70 + 48);
      v73 = *(v5 + 456);
      *&v343 = 0;
      ++DWORD2(v343);
      v289 = v71;
      v269 = v23;
      if (v73)
      {
        v74 = v72 >> 2;
        v285 = v72 >> 2;
        if (v68)
        {
          if (v72 >= 0xC)
          {
            v75 = 0;
            v20 = 0;
            v76 = v71 - 8;
            v77 = v71 - 4;
            v78 = 2;
            do
            {
              v79 = *(v77 + 4 * v78);
              v80 = *(v71 + 4 * v78);
              if (*(v76 + 4 * v78) == -1 || v79 == -1 || v80 == -1)
              {
                v75 = 0;
              }

              else
              {
                v83 = v20;
                v84 = 0;
                LODWORD(__dst[0]) = *(v76 + 4 * v78);
                do
                {
                  v345[0] = *(__dst + v84);
                  re::DynamicArray<unsigned char>::add(&v342[2], v345);
                  ++v84;
                }

                while (v84 != 4);
                v85 = 0;
                if (v75)
                {
                  v86 = v80;
                }

                else
                {
                  v86 = v79;
                }

                LODWORD(__dst[0]) = v86;
                do
                {
                  v345[0] = *(__dst + v85);
                  re::DynamicArray<unsigned char>::add(&v342[2], v345);
                  ++v85;
                }

                while (v85 != 4);
                v87 = 0;
                if (v75)
                {
                  v88 = v79;
                }

                else
                {
                  v88 = v80;
                }

                LODWORD(__dst[0]) = v88;
                do
                {
                  v345[0] = *(__dst + v87);
                  re::DynamicArray<unsigned char>::add(&v342[2], v345);
                  ++v87;
                }

                while (v87 != 4);
                v20 = (v83 + 3);
                v75 ^= 1u;
                v74 = v285;
                v71 = v289;
              }

              ++v78;
            }

            while (v78 != v74);
            goto LABEL_405;
          }
        }

        else if (v72 >= 0xC)
        {
          v104 = 0;
          v20 = 0;
          v105 = v71 - 8;
          v106 = v71 - 4;
          v107 = 2;
          do
          {
            v108 = *(v106 + 4 * v107);
            v109 = *(v71 + 4 * v107);
            if (*(v105 + 4 * v107) == -1 || v108 == -1 || v109 == -1)
            {
              v104 = 0;
            }

            else
            {
              v112 = v20;
              v113 = 0;
              LOWORD(__dst[0]) = *(v105 + 4 * v107);
              do
              {
                v345[0] = *(__dst + v113);
                re::DynamicArray<unsigned char>::add(&v342[2], v345);
                ++v113;
              }

              while (v113 != 2);
              v114 = 0;
              if (v104)
              {
                v115 = v109;
              }

              else
              {
                v115 = v108;
              }

              LOWORD(__dst[0]) = v115;
              do
              {
                v345[0] = *(__dst + v114);
                re::DynamicArray<unsigned char>::add(&v342[2], v345);
                ++v114;
              }

              while (v114 != 2);
              v116 = 0;
              if (v104)
              {
                v117 = v108;
              }

              else
              {
                v117 = v109;
              }

              LOWORD(__dst[0]) = v117;
              do
              {
                v345[0] = *(__dst + v116);
                re::DynamicArray<unsigned char>::add(&v342[2], v345);
                ++v116;
              }

              while (v116 != 2);
              v20 = (v112 + 3);
              v104 ^= 1u;
              v74 = v285;
              v71 = v289;
            }

            ++v107;
          }

          while (v107 != v74);
          goto LABEL_405;
        }
      }

      else
      {
        v89 = v72 >> 1;
        v286 = v72 >> 1;
        if (v68)
        {
          if (v72 >= 6)
          {
            v90 = 0;
            v20 = 0;
            v91 = v71 - 4;
            v92 = v71 - 2;
            v93 = 2;
            v278 = v71 - 4;
            v274 = v71 - 2;
            do
            {
              v94 = *(v92 + 2 * v93);
              v95 = *(v71 + 2 * v93);
              if (*(v91 + 2 * v93) == 0xFFFF || v94 == 0xFFFF || v95 == 0xFFFF)
              {
                v90 = 0;
              }

              else
              {
                v98 = v20;
                v99 = 0;
                LODWORD(__dst[0]) = *(v91 + 2 * v93);
                do
                {
                  v345[0] = *(__dst + v99);
                  re::DynamicArray<unsigned char>::add(&v342[2], v345);
                  ++v99;
                }

                while (v99 != 4);
                v100 = 0;
                if (v90)
                {
                  v101 = v95;
                }

                else
                {
                  v101 = v94;
                }

                LODWORD(__dst[0]) = v101;
                do
                {
                  v345[0] = *(__dst + v100);
                  re::DynamicArray<unsigned char>::add(&v342[2], v345);
                  ++v100;
                }

                while (v100 != 4);
                v102 = 0;
                if (v90)
                {
                  v103 = v94;
                }

                else
                {
                  v103 = v95;
                }

                LODWORD(__dst[0]) = v103;
                do
                {
                  v345[0] = *(__dst + v102);
                  re::DynamicArray<unsigned char>::add(&v342[2], v345);
                  ++v102;
                }

                while (v102 != 4);
                v20 = (v98 + 3);
                v90 ^= 1u;
                v89 = v286;
                v71 = v289;
                v91 = v278;
                v92 = v274;
              }

              ++v93;
            }

            while (v93 != v89);
            goto LABEL_405;
          }
        }

        else if (v72 >= 6)
        {
          v208 = 0;
          v20 = 0;
          v209 = v71 - 4;
          v210 = v71 - 2;
          v211 = 2;
          v280 = v71 - 4;
          v276 = v71 - 2;
          do
          {
            v212 = *(v210 + 2 * v211);
            v213 = *(v71 + 2 * v211);
            if (*(v209 + 2 * v211) == 0xFFFF || v212 == 0xFFFF || v213 == 0xFFFF)
            {
              v208 = 0;
            }

            else
            {
              v216 = v20;
              v217 = 0;
              LOWORD(__dst[0]) = *(v209 + 2 * v211);
              do
              {
                v345[0] = *(__dst + v217);
                re::DynamicArray<unsigned char>::add(&v342[2], v345);
                ++v217;
              }

              while (v217 != 2);
              v218 = 0;
              if (v208)
              {
                v219 = v213;
              }

              else
              {
                v219 = v212;
              }

              LOWORD(__dst[0]) = v219;
              do
              {
                v345[0] = *(__dst + v218);
                re::DynamicArray<unsigned char>::add(&v342[2], v345);
                ++v218;
              }

              while (v218 != 2);
              v220 = 0;
              if (v208)
              {
                v221 = v212;
              }

              else
              {
                v221 = v213;
              }

              LOWORD(__dst[0]) = v221;
              do
              {
                v345[0] = *(__dst + v220);
                re::DynamicArray<unsigned char>::add(&v342[2], v345);
                ++v220;
              }

              while (v220 != 2);
              v20 = (v216 + 3);
              v208 ^= 1u;
              v89 = v286;
              v71 = v289;
              v209 = v280;
              v210 = v276;
            }

            ++v211;
          }

          while (v211 != v89);
          goto LABEL_405;
        }
      }

      v20 = 0;
LABEL_405:
      v12 = v323;
      v8 = v67;
      if (v323 <= v67)
      {
LABEL_491:
        v301 = 0;
        memset(v303, 0, sizeof(v303));
        memset(__dst, 0, sizeof(__dst));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v345 = 136315906;
        *&v345[4] = "operator[]";
        *&v345[12] = 1024;
        *&v345[14] = 789;
        v346 = 2048;
        v347 = v8;
        v348 = 2048;
        v349 = v12;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_492;
      }

      v8 = v325 + 80 * v67;
      re::DynamicString::operator=(v8, v342);
      re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v8 + 32, &v342[2]);
      *(v8 + 72) = WORD4(v344);
      this = v277;
      v5 = v282;
      v23 = v269;
      if (*&v342[2])
      {
        if (v344)
        {
          (*(**&v342[2] + 40))();
        }

        *&v344 = 0;
        *&v343 = 0;
        v342[2] = 0uLL;
        ++DWORD2(v343);
      }

      if (*&v342[0] && (BYTE8(v342[0]) & 1) != 0)
      {
        (*(**&v342[0] + 40))();
      }

      v22 = HIWORD(v272) != 0;
    }
  }

  if (v23 != 255)
  {
    v12 = v323;
    if (v323 <= v23)
    {
LABEL_490:
      *v345 = 0;
      memset(v303, 0, sizeof(v303));
      memset(__dst, 0, sizeof(__dst));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v342[0]) = 136315906;
      *(v342 + 4) = "operator[]";
      WORD6(v342[0]) = 1024;
      *(v342 + 14) = 789;
      WORD1(v342[1]) = 2048;
      *(&v342[1] + 4) = v23;
      WORD6(v342[1]) = 2048;
      *(&v342[1] + 14) = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_491;
    }

    v222 = v325 + 80 * v23;
    if (*(v222 + 72) == 30)
    {
      if (*(v222 + 48) < (12 * v272))
      {
        re::DynamicString::format("Malformed position attribute size: %zu is less than min:%zu", __dst, *(v222 + 48), 12 * v272);
        v223 = __dst[0];
        v224 = __dst[1];
        *this = 0;
        *(this + 16) = 100;
        *(this + 24) = re::AssetErrorCategory(void)::instance;
        *(this + 32) = v223;
        *(this + 48) = v224;
        goto LABEL_458;
      }

      *&v342[2] = 0;
      memset(v342, 0, 28);
      re::DynamicArray<re::Vector3<float>>::resize(v342, v272);
      if (v272)
      {
        v8 = 0;
        v226 = *(v222 + 64);
        v227 = v226 + 12 * v272;
        while (1)
        {
          v12 = *&v342[1];
          if (*&v342[1] <= v8)
          {
            break;
          }

          *&v225 = *v226;
          DWORD2(v225) = *(v226 + 8);
          *(*&v342[2] + 16 * v8) = v225;
          v226 += 12;
          ++v8;
          if (v226 == v227)
          {
            goto LABEL_423;
          }
        }

LABEL_483:
        v301 = 0;
        memset(v303, 0, sizeof(v303));
        memset(__dst, 0, sizeof(__dst));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v345 = 136315906;
        *&v345[4] = "operator[]";
        *&v345[12] = 1024;
        *&v345[14] = 789;
        v346 = 2048;
        v347 = v8;
        v348 = 2048;
        v349 = v12;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_484:
        *v345 = 0;
        memset(v303, 0, sizeof(v303));
        memset(__dst, 0, sizeof(__dst));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v342[0]) = 136315906;
        *(v342 + 4) = "operator[]";
        WORD6(v342[0]) = 1024;
        *(v342 + 14) = 476;
        WORD1(v342[1]) = 2048;
        *(&v342[1] + 4) = this;
        WORD6(v342[1]) = 2048;
        *(&v342[1] + 14) = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_485:
        *v345 = 0;
        memset(v303, 0, sizeof(v303));
        memset(__dst, 0, sizeof(__dst));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v342[0]) = 136315906;
        *(v342 + 4) = "operator[]";
        WORD6(v342[0]) = 1024;
        *(v342 + 14) = 476;
        WORD1(v342[1]) = 2048;
        *(&v342[1] + 4) = v22;
        WORD6(v342[1]) = 2048;
        *(&v342[1] + 14) = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_486:
        *v345 = 0;
        memset(v303, 0, sizeof(v303));
        memset(__dst, 0, sizeof(__dst));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v342[0]) = 136315906;
        *(v342 + 4) = "operator[]";
        WORD6(v342[0]) = 1024;
        *(v342 + 14) = 476;
        WORD1(v342[1]) = 2048;
        *(&v342[1] + 4) = v20;
        WORD6(v342[1]) = 2048;
        *(&v342[1] + 14) = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_487:
        v301 = 0;
        memset(v303, 0, sizeof(v303));
        memset(__dst, 0, sizeof(__dst));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v345 = 136315906;
        *&v345[4] = "operator[]";
        *&v345[12] = 1024;
        *&v345[14] = 476;
        v346 = 2048;
        v347 = this;
        v348 = 2048;
        v349 = v20;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_488:
        *v345 = 0;
        memset(v303, 0, sizeof(v303));
        memset(__dst, 0, sizeof(__dst));
        v67 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v342[0]) = 136315906;
        *(v342 + 4) = "operator[]";
        WORD6(v342[0]) = 1024;
        *(v342 + 14) = 476;
        WORD1(v342[1]) = 2048;
        *(&v342[1] + 4) = this;
        WORD6(v342[1]) = 2048;
        *(&v342[1] + 14) = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_489;
      }

LABEL_423:
      *&v228 = MEMORY[0x1E69070C0](*&v342[1], *&v342[2]);
      v331 = v228;
      v332 = v229;
      v333 = v230;
      v334 = v231;
      if (*&v342[0] && *&v342[2])
      {
        (*(**&v342[0] + 40))();
      }
    }
  }

  *v326 = v20;
  v326[4] = v22;
  v232 = *(v5 + 131);
  *&v326[8] = v272;
  *&v326[12] = v232;
  *&v326[16] = *(v5 + 229);
  *&v326[20] = v5[64];
  re::StringID::operator=(&v327, v5 + 61);
  v234 = *(v5 + 27);
  v329 = *(v5 + 26);
  v330 = v234;
  v235 = *(v5 + 132);
  v236 = v335;
  if ((v335 & 1) == 0)
  {
    v236 = 1;
    v335 = 1;
  }

  v336 = v235 & 1;
  if ((v337 & 1) == 0)
  {
    v337 = 1;
  }

  v338 = (v235 & 2) != 0;
  if ((v339 & 1) == 0)
  {
    v339 = 1;
  }

  v340 = (v235 >> 17) & 3;
  v237 = v323;
  if (v323)
  {
    v238 = 0;
    do
    {
      v239 = v325 + 80 * v238;
      if (*(v239 + 8))
      {
        v240 = *(v239 + 16);
      }

      else
      {
        v240 = (v239 + 9);
      }

      if (re::OpenSubdivUtils::isGeneratedTessellationBuffer(v240, v233))
      {
        re::DynamicArray<re::MeshAssetBuffer>::removeAt(&v322, v238);
        v237 = v323;
      }

      else
      {
        ++v238;
      }
    }

    while (v238 < v237);
    v236 = v335;
  }

  v241 = v322;
  __dst[0] = v322;
  *&__dst[1] = v237;
  v322 = 0uLL;
  v323 = 0;
  ++v324;
  DWORD2(__dst[1]) = 1;
  *(v303 + 8) = *v326;
  *(&v303[1] + 4) = *&v326[12];
  v242 = v325;
  v243 = v327;
  *&v303[0] = v325;
  v244 = v328;
  *(&v303[2] + 1) = v327;
  v304 = v328;
  v328 = &str_67;
  v325 = 0;
  v327 = 0;
  v305 = v329;
  v306 = v330;
  v309 = v333;
  v310 = v334;
  v307 = v331;
  v308 = v332;
  v311 = v236;
  if (v236)
  {
    v312 = v336;
  }

  v245 = v337;
  v313 = v337;
  if (v337 == 1)
  {
    v314 = v338;
  }

  v246 = v339;
  v315 = v339;
  if (v339 == 1)
  {
    v316 = v340;
  }

  v247 = *v341;
  memset(v341, 0, 24);
  v248 = *&v341[16];
  v318 = *(&v247 + 1);
  v319 = *&v341[16];
  v249 = *&v341[24];
  v250 = *&v341[28];
  v320 = *&v341[24];
  v251 = *&v341[32];
  v252 = *&v341[36];
  *&v341[24] = xmmword_1E3058120;
  v321 = 1;
  *this = 1;
  *&__dst[0] = 0;
  *(this + 16) = v241;
  *(this + 32) = v237;
  *(__dst + 8) = 0u;
  *(this + 48) = v242;
  DWORD2(__dst[1]) = 2;
  *(this + 40) = 1;
  v253 = *v326;
  *(this + 68) = *&v326[12];
  *(this + 56) = v253;
  *(this + 88) = v243;
  *(this + 96) = v244;
  v317 = v247;
  *(&v303[2] + 1) = 0;
  v304 = &str_67;
  *&v303[0] = 0;
  v254 = v330;
  *(this + 112) = v329;
  *(this + 128) = v254;
  v255 = v331;
  v256 = v332;
  v257 = v334;
  *(this + 176) = v333;
  *(this + 192) = v257;
  *(this + 144) = v255;
  *(this + 160) = v256;
  *(this + 208) = v236;
  if (v236)
  {
    *(this + 209) = v312;
  }

  *(this + 210) = v245;
  if (v245)
  {
    *(this + 211) = v314;
  }

  *(this + 212) = v246;
  if (v246)
  {
    *(this + 213) = v316;
  }

  *(this + 216) = v247;
  v317 = 0;
  v318 = 0;
  *(this + 232) = v248;
  v319 = 0;
  *(this + 240) = v249;
  *(this + 244) = v250;
  *(this + 248) = v251;
  *(this + 252) = v252;
  v320 = xmmword_1E3058120;
  *(this + 256) = 1;
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v317);
  if (BYTE8(v303[2]))
  {
    if (BYTE8(v303[2]))
    {
    }
  }

  *(&v303[2] + 1) = 0;
  v304 = &str_67;
  re::DynamicArray<re::MeshAssetBuffer>::deinit(__dst);
LABEL_458:
  v31.n128_f64[0] = re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit(&v292);
LABEL_459:
  v259 = v296[0];
  if (v296[0])
  {
    v260 = v299;
    if (v299)
    {
      if (v297)
      {
        v261 = 96 * v297;
        v262 = v299;
        do
        {
          re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(v262);
          v262 = (v263 + 96);
          v261 -= 96;
        }

        while (v261);
      }

      (*(*v259 + 40))(v259, v260, v31);
    }
  }

LABEL_465:

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v341);
  if (v327)
  {
    if (v327)
    {
    }
  }

  v328 = &str_67;
  v327 = 0;
  return re::DynamicArray<re::MeshAssetBuffer>::deinit(&v322);
}