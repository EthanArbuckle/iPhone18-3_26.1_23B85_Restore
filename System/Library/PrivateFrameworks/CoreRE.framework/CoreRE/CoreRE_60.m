void re::MeshAssetData::generateMetaData(re::MeshAssetData *this)
{
  v17 = *MEMORY[0x1E69E9840];
  *(this + 17) = 0;
  ++*(this + 36);
  v1 = *(this + 2);
  if (v1)
  {
    for (i = 0; i != v1; ++i)
    {
      if (*(this + 2) <= i)
      {
        memset(v16, 0, sizeof(v16));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v4 = *(this + 4);
      LODWORD(v16[0]) = 0;
      v5 = v4 + (i << 9);
      v6 = *(v5 + 168);
      if (v6)
      {
        v7 = 0;
        v8 = *(v5 + 184);
        v9 = v8 + 144 * v6;
        v10 = 0.0;
        do
        {
          v11 = *(v8 + 40);
          if (v11)
          {
            v12 = 0;
            v13 = *(v8 + 48);
            v14 = 4 * v11;
            do
            {
              v15 = *v13++;
              v7 += v15 - v12;
              v12 = v15;
              v14 -= 4;
            }

            while (v14);
          }

          v10 = v10 + v11;
          v8 += 144;
        }

        while (v8 != v9);
        if (v10 > 0.0)
        {
          *v16 = v7 / v10;
        }
      }

      re::DynamicArray<float>::add((this + 120), v16);
    }
  }
}

uint64_t re::MeshAssetBaseInfo::meshModel<re::MeshAsset>(void *a1, unint64_t a2)
{
  if (a1[76] <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = *(a1[78] + 8 * a2);
  v3 = a1[79] + 8;

  return re::DataArray<re::MeshModel>::tryGet(v3, v2);
}

void *re::allocInfo_MeshAssetBuffer(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197D08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197D08))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1985C8, "MeshAssetBuffer");
    __cxa_guard_release(&qword_1EE197D08);
  }

  return &unk_1EE1985C8;
}

void re::initInfo_MeshAssetBuffer(re *this, re::IntrospectionBase *a2)
{
  v23[0] = 0xBBFF8F97F37B7606;
  v23[1] = "MeshAssetBuffer";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&qword_1EE197D10, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE197D10);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "name";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE197FC0 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicArray<unsigned char>>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "data";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE197FC8 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::mtl::introspect_VertexFormat(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "format";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x4800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE197FD0 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::mtl::introspect_VertexStepFunction(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "stepFunction";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x4900000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE197FD8 = v21;
      __cxa_guard_release(&qword_1EE197D10);
    }
  }

  *(this + 2) = 0x5000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE197FC0;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAssetBuffer>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAssetBuffer>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAssetBuffer>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAssetBuffer>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v22 = v24;
}

void *re::internal::defaultConstruct<re::MeshAssetBuffer>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  result = re::DynamicString::setCapacity(a3, 0);
  *(a3 + 64) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 32) = 0;
  *(a3 + 56) = 0;
  *(a3 + 72) = 256;
  return result;
}

double re::internal::defaultDestruct<re::MeshAssetBuffer>(uint64_t a1, uint64_t a2, re::DynamicString *a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 32);

  return re::DynamicString::deinit(a3);
}

void *re::internal::defaultConstructV2<re::MeshAssetBuffer>(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = re::DynamicString::setCapacity(a1, 0);
  *(a1 + 64) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 72) = 256;
  return result;
}

double re::internal::defaultDestructV2<re::MeshAssetBuffer>(re::DynamicString *a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 32);

  return re::DynamicString::deinit(a1);
}

void *re::allocInfo_MeshAssetPart(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197D20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197D20))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE198658, "MeshAssetPart");
    __cxa_guard_release(&qword_1EE197D20);
  }

  return &unk_1EE198658;
}

void re::initInfo_MeshAssetPart(re *this, re::IntrospectionBase *a2)
{
  v50[0] = 0xDD4C740759CEBEECLL;
  v50[1] = "MeshAssetPart";
  if (v50[0])
  {
    if (v50[0])
    {
    }
  }

  *(this + 2) = v51;
  if ((atomic_load_explicit(&qword_1EE197D28, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE197D28);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::DynamicArray<re::MeshAssetBuffer>>::get(v6);
      v7 = (*(*v6 + 32))(v6, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "buffers";
      *(v7 + 16) = &qword_1EE1980C8;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE198508 = v7;
      v8 = re::introspectionAllocator(v7);
      v10 = re::introspect_uint32_t(1, v9);
      v11 = (*(*v8 + 32))(v8, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "indexCount";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x2800000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE198510 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::mtl::introspect_IndexType(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "indexType";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x2C00000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE198518 = v15;
      v16 = re::introspectionAllocator(v15);
      v18 = re::introspect_uint32_t(1, v17);
      v19 = (*(*v16 + 32))(v16, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "vertexCount";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x3000000004;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE198520 = v19;
      v20 = re::introspectionAllocator(v19);
      v22 = re::introspect_uint16_t(1, v21);
      v23 = (*(*v20 + 32))(v20, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "materialIndex";
      *(v23 + 16) = v22;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x3800000005;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE198528 = v23;
      v24 = re::introspectionAllocator(v23);
      v26 = re::introspect_uint32_t(1, v25);
      v27 = (*(*v24 + 32))(v24, 72, 8);
      *v27 = 1;
      *(v27 + 8) = "preSplitVertexCount";
      *(v27 + 16) = v26;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0x3C00000006;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      qword_1EE198530 = v27;
      v28 = re::introspectionAllocator(v27);
      v30 = re::introspect_uint32_t(1, v29);
      v31 = (*(*v28 + 32))(v28, 72, 8);
      *v31 = 1;
      *(v31 + 8) = "patchCount";
      *(v31 + 16) = v30;
      *(v31 + 24) = 0;
      *(v31 + 32) = 0x4000000007;
      *(v31 + 40) = 0;
      *(v31 + 48) = 0;
      *(v31 + 56) = 0;
      *(v31 + 64) = 0;
      qword_1EE198538 = v31;
      v32 = re::introspectionAllocator(v31);
      v34 = re::IntrospectionInfo<re::StringID>::get(1, v33);
      v35 = (*(*v32 + 32))(v32, 72, 8);
      *v35 = 1;
      *(v35 + 8) = "name";
      *(v35 + 16) = v34;
      *(v35 + 24) = 0;
      *(v35 + 32) = 0x4800000008;
      *(v35 + 40) = 0;
      *(v35 + 48) = 0;
      *(v35 + 56) = 0;
      *(v35 + 64) = 0;
      qword_1EE198540 = v35;
      v36 = re::introspectionAllocator(v35);
      v37 = re::introspect_AABB(1);
      v38 = (*(*v36 + 32))(v36, 72, 8);
      *v38 = 1;
      *(v38 + 8) = "boundingBox";
      *(v38 + 16) = v37;
      *(v38 + 24) = 0;
      *(v38 + 32) = 0x6000000009;
      *(v38 + 40) = 0;
      *(v38 + 48) = 0;
      *(v38 + 56) = 0;
      *(v38 + 64) = 0;
      qword_1EE198548 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = re::introspect_Matrix4x4F(1);
      v41 = (*(*v39 + 32))(v39, 72, 8);
      *v41 = 1;
      *(v41 + 8) = "orientedBoundingBox";
      *(v41 + 16) = v40;
      *(v41 + 24) = 0;
      *(v41 + 32) = 0x800000000ALL;
      *(v41 + 40) = 0;
      *(v41 + 48) = 0;
      *(v41 + 56) = 0;
      *(v41 + 64) = 0;
      qword_1EE198550 = v41;
      v42 = re::introspectionAllocator(v41);
      v43 = re::introspect_MeshPartFlags(1);
      v44 = (*(*v42 + 32))(v42, 72, 8);
      *v44 = 1;
      *(v44 + 8) = "renderFlags";
      *(v44 + 16) = v43;
      *(v44 + 24) = 0;
      *(v44 + 32) = 0xC00000000BLL;
      *(v44 + 40) = 0;
      *(v44 + 48) = 0;
      *(v44 + 56) = 0;
      *(v44 + 64) = 0;
      qword_1EE198558 = v44;
      v45 = re::introspectionAllocator(v44);
      v47 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(1, v46);
      v48 = (*(*v45 + 32))(v45, 72, 8);
      *v48 = 1;
      *(v48 + 8) = "bufferAliases";
      *(v48 + 16) = v47;
      *(v48 + 24) = 0;
      *(v48 + 32) = 0xC80000000CLL;
      *(v48 + 40) = 0;
      *(v48 + 48) = 0;
      *(v48 + 56) = 0;
      *(v48 + 64) = 0;
      qword_1EE198560 = v48;
      __cxa_guard_release(&qword_1EE197D28);
    }
  }

  *(this + 2) = 0x10000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 12;
  *(this + 8) = &qword_1EE198508;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAssetPart>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAssetPart>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAssetPart>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAssetPart>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v49 = v51;
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshAssetBuffer>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE197EA8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE197EA8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1980C8);
      qword_1EE1980C8 = &unk_1F5CC6B10;
      __cxa_guard_release(&qword_1EE197EA8);
    }
  }

  if ((_MergedGlobals_87 & 1) == 0)
  {
    v1 = qword_1EE197D18;
    if (qword_1EE197D18 || (v1 = re::allocInfo_MeshAssetBuffer(a1), qword_1EE197D18 = v1, re::initInfo_MeshAssetBuffer(v1, v2), (_MergedGlobals_87 & 1) == 0))
    {
      _MergedGlobals_87 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1980C8, 0);
      qword_1EE1980D8 = 0x2800000003;
      dword_1EE1980E0 = v3;
      word_1EE1980E4 = 0;
      *&xmmword_1EE1980E8 = 0;
      *(&xmmword_1EE1980E8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1980F8 = v1;
      qword_1EE198100 = 0;
      qword_1EE1980C8 = &unk_1F5CC6B10;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1980C8, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBuffer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBuffer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBuffer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBuffer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBuffer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBuffer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBuffer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBuffer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1980E8 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

uint64_t *re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionHashTableBase::IntrospectionHashTableBase(&re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info) = &unk_1F5CC6BA8;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v19);
    v3 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v19);
    if (v3)
    {
      return &re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
  v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
  if ((re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v9 = v8;
    re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::isInitialized = 1;
    v10 = *(v8 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info, 0);
    qword_1EE186320 = 0x3000000007;
    dword_1EE186328 = v10;
    word_1EE18632C = 0;
    *&xmmword_1EE186330 = 0;
    *(&xmmword_1EE186330 + 1) = 0xFFFFFFFFLL;
    qword_1EE186340 = v6;
    unk_1EE186348 = 0;
    qword_1EE186350 = v9;
    unk_1EE186358 = 0;
    re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info = &unk_1F5CC6BA8;
    re::IntrospectionRegistry::add(v11, v12);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info, &v19);
    if (BYTE8(v19))
    {
      v13 = v20;
    }

    else
    {
      v13 = &v19 + 9;
    }

    if (v19 && (BYTE8(v19) & 1) != 0)
    {
      (*(*v19 + 40))();
    }

    v14 = v6[2];
    v18 = *(v9 + 32);
    v19 = v14;
    xmmword_1EE186330 = v17;
    if (v21)
    {
      if (v21)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v15 = re::introspectionSharedMutex(v8);
    std::__shared_mutex_base::unlock(v15);
  }

  return &re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info;
}

double re::internal::defaultConstruct<re::MeshAssetPart>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
  *(a3 + 44) = 1;
  *(a3 + 52) = 1;
  *(a3 + 56) = -1;
  *(a3 + 60) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = &str_67;
  v3.i64[0] = 0x7F0000007FLL;
  v3.i64[1] = 0x7F0000007FLL;
  *(a3 + 96) = vnegq_f32(v3);
  *(a3 + 112) = v3;
  *(a3 + 194) = 0;
  *(a3 + 196) = 0;
  *(a3 + 200) = 0u;
  *(a3 + 216) = 0u;
  *(a3 + 232) = 0;
  *(a3 + 192) = 0;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(a3 + 236) = 0x7FFFFFFFLL;
  return result;
}

uint64_t re::internal::defaultDestruct<re::MeshAssetPart>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((a3 + 200));
  re::StringID::destroyString((a3 + 72));

  return re::DynamicArray<re::MeshAssetBuffer>::deinit(a3);
}

double re::internal::defaultConstructV2<re::MeshAssetPart>(uint64_t a1)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  *(a1 + 44) = 1;
  *(a1 + 52) = 1;
  *(a1 + 56) = -1;
  *(a1 + 60) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = &str_67;
  v1.i64[0] = 0x7F0000007FLL;
  v1.i64[1] = 0x7F0000007FLL;
  *(a1 + 96) = vnegq_f32(v1);
  *(a1 + 112) = v1;
  *(a1 + 194) = 0;
  *(a1 + 196) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 192) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(a1 + 236) = 0x7FFFFFFFLL;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::MeshAssetPart>(uint64_t a1)
{
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((a1 + 200));
  re::StringID::destroyString((a1 + 72));

  return re::DynamicArray<re::MeshAssetBuffer>::deinit(a1);
}

void *re::allocInfo_SkinningInfluence(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197D38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197D38))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1986E8, "SkinningInfluence");
    __cxa_guard_release(&qword_1EE197D38);
  }

  return &unk_1EE1986E8;
}

void re::initInfo_SkinningInfluence(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0xA30D63E3F87A3C48;
  v15[1] = "SkinningInfluence";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE197D40, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE197D40);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_int(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "jointIndex";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE197F30 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_float(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "weight";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x400000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE197F38 = v13;
      __cxa_guard_release(&qword_1EE197D40);
    }
  }

  *(this + 2) = 0x800000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE197F30;
  *(this + 9) = re::internal::defaultConstruct<re::SkinningInfluence>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SkinningInfluence>;
  *(this + 13) = re::internal::defaultConstructV2<re::SkinningInfluence>;
  *(this + 14) = re::internal::defaultDestructV2<re::SkinningInfluence>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void *re::allocInfo_MeshAssetSkinningData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197D50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197D50))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE198778, "MeshAssetSkinningData");
    __cxa_guard_release(&qword_1EE197D50);
  }

  return &unk_1EE198778;
}

void re::initInfo_MeshAssetSkinningData(re *this, re::IntrospectionBase *a2)
{
  v24[0] = 0x8DB8D5870250C6FCLL;
  v24[1] = "MeshAssetSkinningData";
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  *(this + 2) = v25;
  if ((atomic_load_explicit(&qword_1EE197D58, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE197D58);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_uint32_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "skeletonIndex";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE197FE0 = v9;
      v10 = re::introspectionAllocator(v9);
      re::IntrospectionInfo<re::FixedArray<re::SkinningInfluence>>::get(v10);
      v11 = (*(*v10 + 32))(v10, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "skinningInfluences";
      *(v11 + 16) = &qword_1EE198108;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x800000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE197FE8 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::IntrospectionInfo<re::FixedArray<int>>::get(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "influenceEndIndices";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x2000000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE197FF0 = v15;
      v16 = re::introspectionAllocator(v15);
      v18 = re::IntrospectionInfo<re::FixedArray<int>>::get(1, v17);
      v19 = (*(*v16 + 32))(v16, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "remappedJointIndices";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x3800000004;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE197FF8 = v19;
      v20 = re::introspectionAllocator(v19);
      v21 = re::introspect_Matrix4x4F(1);
      v22 = (*(*v20 + 32))(v20, 72, 8);
      *v22 = 1;
      *(v22 + 8) = "geometryBindTransform";
      *(v22 + 16) = v21;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0x5000000005;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(v22 + 64) = 0;
      qword_1EE198000 = v22;
      __cxa_guard_release(&qword_1EE197D58);
    }
  }

  *(this + 2) = 0x9000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE197FE0;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAssetSkinningData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAssetSkinningData>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAssetSkinningData>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAssetSkinningData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v23 = v25;
}

void re::IntrospectionInfo<re::FixedArray<re::SkinningInfluence>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE197EB0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE197EB0);
    if (a1)
    {
      re::IntrospectionFixedArrayBase::IntrospectionFixedArrayBase(&qword_1EE198108);
      qword_1EE198108 = &unk_1F5CC6C48;
      __cxa_guard_release(&qword_1EE197EB0);
    }
  }

  if ((byte_1EE197CF1 & 1) == 0)
  {
    v1 = qword_1EE197D48;
    if (qword_1EE197D48 || (v1 = re::allocInfo_SkinningInfluence(a1), qword_1EE197D48 = v1, re::initInfo_SkinningInfluence(v1, v2), (byte_1EE197CF1 & 1) == 0))
    {
      byte_1EE197CF1 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE198108, 0);
      qword_1EE198118 = 0x1800000004;
      dword_1EE198120 = v3;
      word_1EE198124 = 0;
      *&xmmword_1EE198128 = 0;
      *(&xmmword_1EE198128 + 1) = 0xFFFFFFFFLL;
      qword_1EE198138 = v1;
      qword_1EE198140 = 0;
      qword_1EE198108 = &unk_1F5CC6C48;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE198108, &v13);
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
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x18uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerFixedArray<re::SkinningInfluence>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerFixedArray<re::SkinningInfluence>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerFixedArray<re::SkinningInfluence>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::SkinningInfluence>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerFixedArray<re::SkinningInfluence>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerFixedArray<re::SkinningInfluence>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::SkinningInfluence>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::SkinningInfluence>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE198128 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::MeshAssetSkinningData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = -1;
  result = 0.0;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0;
  return result;
}

uint64_t re::internal::defaultDestruct<re::MeshAssetSkinningData>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::FixedArray<CoreIKTransform>::deinit(a3 + 7);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 4);

  return re::FixedArray<CoreIKTransform>::deinit(a3 + 1);
}

double re::internal::defaultConstructV2<re::MeshAssetSkinningData>(uint64_t a1)
{
  *a1 = -1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::MeshAssetSkinningData>(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1 + 7);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 4);

  return re::FixedArray<CoreIKTransform>::deinit(a1 + 1);
}

void *re::allocInfo_MeshAssetBlendShapeData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197D68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197D68))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE198808, "MeshAssetBlendShapeData");
    __cxa_guard_release(&qword_1EE197D68);
  }

  return &unk_1EE198808;
}

void re::initInfo_MeshAssetBlendShapeData(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x14975A1BFCD5F2BALL;
  v14[1] = "MeshAssetBlendShapeData";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE197D70, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE197D70);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_BlendShapeGroupDefinition(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "blendShapeGroup";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE197F40 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_uint16_t(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "meshPartIndex";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x3000000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE197F48 = v12;
      __cxa_guard_release(&qword_1EE197D70);
    }
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE197F40;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAssetBlendShapeData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAssetBlendShapeData>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAssetBlendShapeData>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAssetBlendShapeData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void re::internal::defaultConstruct<re::MeshAssetBlendShapeData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 44) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  *(a3 + 40) = 0;
}

void re::internal::defaultDestruct<re::MeshAssetBlendShapeData>(uint64_t a1, uint64_t a2, re::StringID *a3)
{
  re::FixedArray<re::BlendShapeDefinition>::deinit(a3 + 2);

  re::StringID::destroyString(a3);
}

uint64_t re::internal::defaultConstructV2<re::MeshAssetBlendShapeData>(uint64_t result)
{
  *result = 0;
  *(result + 8) = &str_67;
  *(result + 44) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::MeshAssetBlendShapeData>(re::StringID *a1)
{
  re::FixedArray<re::BlendShapeDefinition>::deinit(a1 + 2);

  re::StringID::destroyString(a1);
}

void *re::allocInfo_MeshAssetWrapDeformerData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197D80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197D80))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE198898, "MeshAssetWrapDeformerData");
    __cxa_guard_release(&qword_1EE197D80);
  }

  return &unk_1EE198898;
}

void re::initInfo_MeshAssetWrapDeformerData(re *this, re::IntrospectionBase *a2)
{
  v25[0] = 0x7C3F1F58CCCB5ED2;
  v25[1] = "MeshAssetWrapDeformerData";
  if (v25[0])
  {
    if (v25[0])
    {
    }
  }

  *(this + 2) = v26;
  if ((atomic_load_explicit(&qword_1EE197D88, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE197D88);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "targetMeshInstanceName";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE198008 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::FixedArray<unsigned int>>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "faceIndices";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE198010 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = re::IntrospectionInfo<re::FixedArray<re::Vector3<float>>>::get(1);
      v16 = (*(*v14 + 32))(v14, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "faceCoordinates";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x3800000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE198018 = v16;
      v17 = re::introspectionAllocator(v16);
      v18 = re::IntrospectionInfo<re::FixedArray<re::Vector3<float>>>::get(1);
      v19 = (*(*v17 + 32))(v17, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "offsets";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x5000000004;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE198020 = v19;
      v20 = re::introspectionAllocator(v19);
      v22 = re::introspect_uint16_t(1, v21);
      v23 = (*(*v20 + 32))(v20, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "meshPartIndex";
      *(v23 + 16) = v22;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x6800000005;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE198028 = v23;
      __cxa_guard_release(&qword_1EE197D88);
    }
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE198008;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAssetWrapDeformerData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAssetWrapDeformerData>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAssetWrapDeformerData>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAssetWrapDeformerData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v24 = v26;
}

double re::internal::defaultConstruct<re::MeshAssetWrapDeformerData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 16) = 0;
  *(a3 + 24) = &str_67;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0;
  return result;
}

void re::internal::defaultDestruct<re::MeshAssetWrapDeformerData>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::FixedArray<CoreIKTransform>::deinit(a3 + 10);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 7);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 4);
  re::StringID::destroyString((a3 + 2));

  re::StringID::destroyString(a3);
}

double re::internal::defaultConstructV2<re::MeshAssetWrapDeformerData>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = &str_67;
  *(a1 + 16) = 0;
  *(a1 + 24) = &str_67;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::MeshAssetWrapDeformerData>(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 7);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 4);
  re::StringID::destroyString((a1 + 2));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_MeshAssetContactDeformerTarget(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197D98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197D98))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE198928, "MeshAssetContactDeformerTarget");
    __cxa_guard_release(&qword_1EE197D98);
  }

  return &unk_1EE198928;
}

void re::initInfo_MeshAssetContactDeformerTarget(re *this, re::IntrospectionBase *a2)
{
  v19[0] = 0x12ECC0F162C64700;
  v19[1] = "MeshAssetContactDeformerTarget";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE197DA0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE197DA0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_uint32_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "jointIndex";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE197F90 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_float(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "radius";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x400000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE197F98 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::IntrospectionInfo<re::FixedArray<float>>::get(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "heightMap";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE197FA0 = v17;
      __cxa_guard_release(&qword_1EE197DA0);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE197F90;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAssetContactDeformerTarget>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAssetContactDeformerTarget>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAssetContactDeformerTarget>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAssetContactDeformerTarget>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v18 = v20;
}

void re::internal::defaultConstruct<re::MeshAssetContactDeformerTarget>(uint64_t a1, uint64_t a2, void *a3)
{
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = 0;
}

void *re::internal::defaultConstructV2<re::MeshAssetContactDeformerTarget>(void *result)
{
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *re::allocInfo_MeshAssetContactDeformerData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197DB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197DB0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1989B8, "MeshAssetContactDeformerData");
    __cxa_guard_release(&qword_1EE197DB0);
  }

  return &unk_1EE1989B8;
}

void re::initInfo_MeshAssetContactDeformerData(re *this, re::IntrospectionBase *a2)
{
  v13[0] = 0x17FEA5E5144AA2B2;
  v13[1] = "MeshAssetContactDeformerData";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&qword_1EE197DB8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE197DB8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::FixedArray<re::MeshAssetContactDeformerTarget>>::get(v6);
      v7 = (*(*v6 + 32))(v6, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "targets";
      *(v7 + 16) = &qword_1EE198148;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0x1000000001;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE197F50 = v7;
      v8 = re::introspectionAllocator(v7);
      v10 = re::introspect_uint16_t(1, v9);
      v11 = (*(*v8 + 32))(v8, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "meshPartIndex";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x2800000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE197F58 = v11;
      __cxa_guard_release(&qword_1EE197DB8);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE197F50;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAssetContactDeformerData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAssetContactDeformerData>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAssetContactDeformerData>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAssetContactDeformerData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v12 = v14;
}

void re::IntrospectionInfo<re::FixedArray<re::MeshAssetContactDeformerTarget>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE197EB8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE197EB8);
    if (a1)
    {
      re::IntrospectionFixedArrayBase::IntrospectionFixedArrayBase(&qword_1EE198148);
      qword_1EE198148 = &unk_1F5CC6CE0;
      __cxa_guard_release(&qword_1EE197EB8);
    }
  }

  if ((byte_1EE197CF2 & 1) == 0)
  {
    v1 = qword_1EE197DA8;
    if (qword_1EE197DA8 || (v1 = re::allocInfo_MeshAssetContactDeformerTarget(a1), qword_1EE197DA8 = v1, re::initInfo_MeshAssetContactDeformerTarget(v1, v2), (byte_1EE197CF2 & 1) == 0))
    {
      byte_1EE197CF2 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE198148, 0);
      qword_1EE198158 = 0x1800000004;
      dword_1EE198160 = v3;
      word_1EE198164 = 0;
      *&xmmword_1EE198168 = 0;
      *(&xmmword_1EE198168 + 1) = 0xFFFFFFFFLL;
      qword_1EE198178 = v1;
      qword_1EE198180 = 0;
      qword_1EE198148 = &unk_1F5CC6CE0;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE198148, &v13);
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
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x18uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerFixedArray<re::MeshAssetContactDeformerTarget>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerFixedArray<re::MeshAssetContactDeformerTarget>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerFixedArray<re::MeshAssetContactDeformerTarget>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::MeshAssetContactDeformerTarget>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerFixedArray<re::MeshAssetContactDeformerTarget>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerFixedArray<re::MeshAssetContactDeformerTarget>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::MeshAssetContactDeformerTarget>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::MeshAssetContactDeformerTarget>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE198168 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::internal::defaultConstruct<re::MeshAssetContactDeformerData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = &str_67;
  a3[3] = 0;
  a3[4] = 0;
  a3[2] = 0;
}

void re::internal::defaultDestruct<re::MeshAssetContactDeformerData>(uint64_t a1, uint64_t a2, re::StringID *a3)
{
  re::FixedArray<re::MeshAssetContactDeformerTarget>::deinit(a3 + 2);

  re::StringID::destroyString(a3);
}

void *re::internal::defaultConstructV2<re::MeshAssetContactDeformerData>(void *result)
{
  *result = 0;
  result[1] = &str_67;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void re::internal::defaultDestructV2<re::MeshAssetContactDeformerData>(re::StringID *a1)
{
  re::FixedArray<re::MeshAssetContactDeformerTarget>::deinit(a1 + 2);

  re::StringID::destroyString(a1);
}

void *re::allocInfo_MeshAssetSmoothDeformerData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197DC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197DC8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE198A48, "MeshAssetSmoothDeformerData");
    __cxa_guard_release(&qword_1EE197DC8);
  }

  return &unk_1EE198A48;
}

void re::initInfo_MeshAssetSmoothDeformerData(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0xFF33CE7A6A0D541ALL;
  v15[1] = "MeshAssetSmoothDeformerData";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE197DD0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE197DD0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "envelopeBufferName";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE197F60 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_uint16_t(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "meshPartIndex";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE197F68 = v13;
      __cxa_guard_release(&qword_1EE197DD0);
    }
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE197F60;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAssetSmoothDeformerData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAssetSmoothDeformerData>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAssetSmoothDeformerData>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAssetSmoothDeformerData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void *re::internal::defaultConstructV2<re::MeshAssetSmoothDeformerData>(void *result)
{
  *result = 0;
  result[1] = &str_67;
  return result;
}

void *re::allocInfo_MeshAssetOffsetsDeformerData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197DE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197DE0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE198AD8, "MeshAssetOffsetsDeformerData");
    __cxa_guard_release(&qword_1EE197DE0);
  }

  return &unk_1EE198AD8;
}

void re::initInfo_MeshAssetOffsetsDeformerData(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0x574CE82AAD8A56F2;
  v15[1] = "MeshAssetOffsetsDeformerData";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE197DE8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE197DE8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "envelopeBufferName";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE197F70 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_uint16_t(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "meshPartIndex";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE197F78 = v13;
      __cxa_guard_release(&qword_1EE197DE8);
    }
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE197F70;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAssetOffsetsDeformerData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAssetOffsetsDeformerData>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAssetOffsetsDeformerData>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAssetOffsetsDeformerData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void *re::internal::defaultConstructV2<re::MeshAssetOffsetsDeformerData>(void *result)
{
  *result = 0;
  result[1] = &str_67;
  return result;
}

void *re::allocInfo_MeshAssetSkeleton(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197DF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197DF8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE198B68, "MeshAssetSkeleton");
    __cxa_guard_release(&qword_1EE197DF8);
  }

  return &unk_1EE198B68;
}

void re::initInfo_MeshAssetSkeleton(re *this, re::IntrospectionBase *a2)
{
  v25[0] = 0xBA5A0A3EA9A0F4A0;
  v25[1] = "MeshAssetSkeleton";
  if (v25[0])
  {
    if (v25[0])
    {
    }
  }

  *(this + 2) = v26;
  if ((atomic_load_explicit(&qword_1EE197E00, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE197E00);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "name";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE198030 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::FixedArray<re::StringID>>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "jointNames";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE198038 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::IntrospectionInfo<re::FixedArray<unsigned int>>::get(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "parentIndices";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x2800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE198040 = v17;
      v18 = re::introspectionAllocator(v17);
      v19 = re::IntrospectionInfo<re::FixedArray<re::GenericSRT<float>>>::get(1);
      v20 = (*(*v18 + 32))(v18, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "localBindPoses";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x4000000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE198048 = v20;
      v21 = re::introspectionAllocator(v20);
      v22 = re::IntrospectionInfo<re::FixedArray<re::Matrix4x4<float>>>::get(1);
      v23 = (*(*v21 + 32))(v21, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "inverseBindPoses";
      *(v23 + 16) = v22;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x5800000005;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE198050 = v23;
      __cxa_guard_release(&qword_1EE197E00);
    }
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE198030;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAssetSkeleton>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAssetSkeleton>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAssetSkeleton>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAssetSkeleton>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v24 = v26;
}

double re::internal::defaultConstruct<re::MeshAssetSkeleton>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  return result;
}

void re::internal::defaultDestruct<re::MeshAssetSkeleton>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::FixedArray<CoreIKTransform>::deinit(a3 + 11);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 8);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 5);
  re::FixedArray<re::StringID>::deinit(a3 + 2);

  re::StringID::destroyString(a3);
}

double re::internal::defaultConstructV2<re::MeshAssetSkeleton>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = &str_67;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  return result;
}

void re::internal::defaultDestructV2<re::MeshAssetSkeleton>(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 8);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 5);
  re::FixedArray<re::StringID>::deinit(a1 + 2);

  re::StringID::destroyString(a1);
}

void *re::allocInfo_MeshAssetMetaData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197E10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197E10))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE198BF8, "MeshAssetMetaData");
    __cxa_guard_release(&qword_1EE197E10);
  }

  return &unk_1EE198BF8;
}

void re::initInfo_MeshAssetMetaData(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0xBA5A09EF8224E2A4;
  v11[1] = "MeshAssetMetaData";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE197E20, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE197E20);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "averageSkinningInfluencesPerVertex";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE197E18 = v9;
      __cxa_guard_release(&qword_1EE197E20);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE197E18;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAssetMetaData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAssetMetaData>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAssetMetaData>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAssetMetaData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

void re::internal::defaultConstruct<re::MeshAssetMetaData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
}

uint64_t re::internal::defaultConstructV2<re::MeshAssetMetaData>(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  return result;
}

void *re::allocInfo_MeshAssetModel(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197E30))
  {
    re::IntrospectionStructure::IntrospectionStructure(&_MergedGlobals_197, "MeshAssetModel");
    __cxa_guard_release(&qword_1EE197E30);
  }

  return &_MergedGlobals_197;
}

void re::initInfo_MeshAssetModel(re *this, re::IntrospectionBase *a2)
{
  v35[0] = 0xCC420CE3DFC0E00CLL;
  v35[1] = "MeshAssetModel";
  if (v35[0])
  {
    if (v35[0])
    {
    }
  }

  *(this + 2) = v36;
  if ((atomic_load_explicit(&qword_1EE197E38, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE197E38);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "name";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE198568 = v9;
      v10 = re::introspectionAllocator(v9);
      v11 = re::introspect_AABB(1);
      v12 = (*(*v10 + 32))(v10, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "boundingBox";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1000000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE198570 = v12;
      v13 = re::introspectionAllocator(v12);
      v14 = re::introspect_Matrix4x4F(1);
      v15 = (*(*v13 + 32))(v13, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "orientedBoundingBox";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x3000000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE198578 = v15;
      v16 = re::introspectionAllocator(v15);
      re::IntrospectionInfo<re::DynamicArray<re::MeshAssetSkeleton>>::get(v16);
      v17 = (*(*v16 + 32))(v16, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "skeletons";
      *(v17 + 16) = &qword_1EE198188;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0xE800000004;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE198580 = v17;
      v18 = re::introspectionAllocator(v17);
      re::IntrospectionInfo<re::DynamicArray<re::MeshAssetBlendShapeData>>::get(v18);
      v19 = (*(*v18 + 32))(v18, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "meshBlendShapeData";
      *(v19 + 16) = &qword_1EE1981C8;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x7000000005;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE198588 = v19;
      v20 = re::introspectionAllocator(v19);
      re::IntrospectionInfo<re::DynamicArray<re::MeshAssetSkinningData>>::get(v20);
      v21 = (*(*v20 + 32))(v20, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "meshSkinningData";
      *(v21 + 16) = &qword_1EE198208;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x9800000006;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE198590 = v21;
      v22 = re::introspectionAllocator(v21);
      re::IntrospectionInfo<re::DynamicArray<re::MeshAssetPart>>::get(v22);
      v23 = (*(*v22 + 32))(v22, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "meshParts";
      *(v23 + 16) = &qword_1EE198248;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0xC000000007;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE198598 = v23;
      v24 = re::introspectionAllocator(v23);
      re::IntrospectionInfo<re::DynamicArray<re::MeshLodLevelInfo>>::get();
      v25 = (*(*v24 + 32))(v24, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "lodLevelInfos";
      *(v25 + 16) = &qword_1EE198288;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x11000000008;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1985A0 = v25;
      v26 = re::introspectionAllocator(v25);
      re::IntrospectionInfo<re::DynamicArray<re::MeshAssetContactDeformerData>>::get(v26);
      v27 = (*(*v26 + 32))(v26, 72, 8);
      *v27 = 1;
      *(v27 + 8) = "contactDeformerData";
      *(v27 + 16) = &qword_1EE1982C8;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0x13800000009;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      qword_1EE1985A8 = v27;
      v28 = re::introspectionAllocator(v27);
      re::IntrospectionInfo<re::DynamicArray<re::MeshAssetSmoothDeformerData>>::get(v28);
      v29 = (*(*v28 + 32))(v28, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "smoothDeformerData";
      *(v29 + 16) = &qword_1EE198308;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x1600000000ALL;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE1985B0 = v29;
      v30 = re::introspectionAllocator(v29);
      re::IntrospectionInfo<re::DynamicArray<re::MeshAssetWrapDeformerData>>::get(v30);
      v31 = (*(*v30 + 32))(v30, 72, 8);
      *v31 = 1;
      *(v31 + 8) = "wrapDeformerData";
      *(v31 + 16) = &qword_1EE198348;
      *(v31 + 24) = 0;
      *(v31 + 32) = 0x1880000000BLL;
      *(v31 + 40) = 0;
      *(v31 + 48) = 0;
      *(v31 + 56) = 0;
      *(v31 + 64) = 0;
      qword_1EE1985B8 = v31;
      v32 = re::introspectionAllocator(v31);
      re::IntrospectionInfo<re::DynamicArray<re::MeshAssetOffsetsDeformerData>>::get(v32);
      v33 = (*(*v32 + 32))(v32, 72, 8);
      *v33 = 1;
      *(v33 + 8) = "offsetsDeformerData";
      *(v33 + 16) = &qword_1EE198388;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0x1B00000000CLL;
      *(v33 + 40) = 0;
      *(v33 + 48) = 0;
      *(v33 + 56) = 0;
      *(v33 + 64) = 0;
      qword_1EE1985C0 = v33;
      __cxa_guard_release(&qword_1EE197E38);
    }
  }

  *(this + 2) = 0x20000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 12;
  *(this + 8) = &qword_1EE198568;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAssetModel>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAssetModel>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAssetModel>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAssetModel>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v34 = v36;
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshAssetSkeleton>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE197EC0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE197EC0);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE198188);
      qword_1EE198188 = &unk_1F5CC6D78;
      __cxa_guard_release(&qword_1EE197EC0);
    }
  }

  if ((byte_1EE197CF3 & 1) == 0)
  {
    v1 = qword_1EE197E08;
    if (qword_1EE197E08 || (v1 = re::allocInfo_MeshAssetSkeleton(a1), qword_1EE197E08 = v1, re::initInfo_MeshAssetSkeleton(v1, v2), (byte_1EE197CF3 & 1) == 0))
    {
      byte_1EE197CF3 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE198188, 0);
      qword_1EE198198 = 0x2800000003;
      dword_1EE1981A0 = v3;
      word_1EE1981A4 = 0;
      *&xmmword_1EE1981A8 = 0;
      *(&xmmword_1EE1981A8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1981B8 = v1;
      qword_1EE1981C0 = 0;
      qword_1EE198188 = &unk_1F5CC6D78;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE198188, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkeleton>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkeleton>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkeleton>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkeleton>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkeleton>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkeleton>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkeleton>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkeleton>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1981A8 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshAssetBlendShapeData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE197EC8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE197EC8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1981C8);
      qword_1EE1981C8 = &unk_1F5CC6E10;
      __cxa_guard_release(&qword_1EE197EC8);
    }
  }

  if ((byte_1EE197CF4 & 1) == 0)
  {
    v1 = qword_1EE197D78;
    if (qword_1EE197D78 || (v1 = re::allocInfo_MeshAssetBlendShapeData(a1), qword_1EE197D78 = v1, re::initInfo_MeshAssetBlendShapeData(v1, v2), (byte_1EE197CF4 & 1) == 0))
    {
      byte_1EE197CF4 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1981C8, 0);
      qword_1EE1981D8 = 0x2800000003;
      dword_1EE1981E0 = v3;
      word_1EE1981E4 = 0;
      *&xmmword_1EE1981E8 = 0;
      *(&xmmword_1EE1981E8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1981F8 = v1;
      qword_1EE198200 = 0;
      qword_1EE1981C8 = &unk_1F5CC6E10;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1981C8, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBlendShapeData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBlendShapeData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBlendShapeData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBlendShapeData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBlendShapeData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBlendShapeData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBlendShapeData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBlendShapeData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1981E8 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshAssetSkinningData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE197ED0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE197ED0);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE198208);
      qword_1EE198208 = &unk_1F5CC6EA8;
      __cxa_guard_release(&qword_1EE197ED0);
    }
  }

  if ((byte_1EE197CF5 & 1) == 0)
  {
    v1 = qword_1EE197D60;
    if (qword_1EE197D60 || (v1 = re::allocInfo_MeshAssetSkinningData(a1), qword_1EE197D60 = v1, re::initInfo_MeshAssetSkinningData(v1, v2), (byte_1EE197CF5 & 1) == 0))
    {
      byte_1EE197CF5 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE198208, 0);
      qword_1EE198218 = 0x2800000003;
      dword_1EE198220 = v3;
      word_1EE198224 = 0;
      *&xmmword_1EE198228 = 0;
      *(&xmmword_1EE198228 + 1) = 0xFFFFFFFFLL;
      qword_1EE198238 = v1;
      qword_1EE198240 = 0;
      qword_1EE198208 = &unk_1F5CC6EA8;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE198208, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkinningData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkinningData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkinningData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkinningData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkinningData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkinningData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkinningData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkinningData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE198228 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshAssetPart>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE197ED8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE197ED8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE198248);
      qword_1EE198248 = &unk_1F5CC6F40;
      __cxa_guard_release(&qword_1EE197ED8);
    }
  }

  if ((byte_1EE197CF6 & 1) == 0)
  {
    v1 = qword_1EE197D30;
    if (qword_1EE197D30 || (v1 = re::allocInfo_MeshAssetPart(a1), qword_1EE197D30 = v1, re::initInfo_MeshAssetPart(v1, v2), (byte_1EE197CF6 & 1) == 0))
    {
      byte_1EE197CF6 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE198248, 0);
      qword_1EE198258 = 0x2800000003;
      dword_1EE198260 = v3;
      word_1EE198264 = 0;
      *&xmmword_1EE198268 = 0;
      *(&xmmword_1EE198268 + 1) = 0xFFFFFFFFLL;
      qword_1EE198278 = v1;
      qword_1EE198280 = 0;
      qword_1EE198248 = &unk_1F5CC6F40;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE198248, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetPart>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetPart>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetPart>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetPart>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetPart>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetPart>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetPart>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetPart>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE198268 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshLodLevelInfo>>::get()
{
  if ((atomic_load_explicit(&qword_1EE197EE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197EE0))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE198288);
    qword_1EE198288 = &unk_1F5CC6FD8;
    __cxa_guard_release(&qword_1EE197EE0);
  }

  if ((byte_1EE197CF7 & 1) == 0)
  {
    v0 = re::introspect_MeshLodLevelInfo(1);
    if ((byte_1EE197CF7 & 1) == 0)
    {
      v1 = v0;
      byte_1EE197CF7 = 1;
      v2 = *(v0 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE198288, 0);
      qword_1EE198298 = 0x2800000003;
      dword_1EE1982A0 = v2;
      word_1EE1982A4 = 0;
      *&xmmword_1EE1982A8 = 0;
      *(&xmmword_1EE1982A8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1982B8 = v1;
      qword_1EE1982C0 = 0;
      qword_1EE198288 = &unk_1F5CC6FD8;
      re::IntrospectionRegistry::add(v3, v4);
      re::getPrettyTypeName(&qword_1EE198288, &v12);
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
        re::TypeBuilder::setConstructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::MeshLodLevelInfo>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::MeshLodLevelInfo>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v12, 1);
        re::TypeBuilder::setListAccessors(&v12, re::TypeBuilderHelper::registerDynamicArray<re::MeshLodLevelInfo>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshLodLevelInfo>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v12, re::TypeBuilderHelper::registerDynamicArray<re::MeshLodLevelInfo>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v12, re::TypeBuilderHelper::registerDynamicArray<re::MeshLodLevelInfo>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshLodLevelInfo>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshLodLevelInfo>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v12, v7);
        re::StackScratchAllocator::~StackScratchAllocator(v15);
      }

      xmmword_1EE1982A8 = v8;
      if (v10)
      {
        if (v10)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshAssetContactDeformerData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE197EE8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE197EE8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1982C8);
      qword_1EE1982C8 = &unk_1F5CC7070;
      __cxa_guard_release(&qword_1EE197EE8);
    }
  }

  if ((byte_1EE197CF8 & 1) == 0)
  {
    v1 = qword_1EE197DC0;
    if (qword_1EE197DC0 || (v1 = re::allocInfo_MeshAssetContactDeformerData(a1), qword_1EE197DC0 = v1, re::initInfo_MeshAssetContactDeformerData(v1, v2), (byte_1EE197CF8 & 1) == 0))
    {
      byte_1EE197CF8 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1982C8, 0);
      qword_1EE1982D8 = 0x2800000003;
      dword_1EE1982E0 = v3;
      word_1EE1982E4 = 0;
      *&xmmword_1EE1982E8 = 0;
      *(&xmmword_1EE1982E8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1982F8 = v1;
      qword_1EE198300 = 0;
      qword_1EE1982C8 = &unk_1F5CC7070;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1982C8, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetContactDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetContactDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetContactDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetContactDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetContactDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetContactDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetContactDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetContactDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1982E8 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshAssetSmoothDeformerData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE197EF0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE197EF0);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE198308);
      qword_1EE198308 = &unk_1F5CC7108;
      __cxa_guard_release(&qword_1EE197EF0);
    }
  }

  if ((byte_1EE197CF9 & 1) == 0)
  {
    v1 = qword_1EE197DD8;
    if (qword_1EE197DD8 || (v1 = re::allocInfo_MeshAssetSmoothDeformerData(a1), qword_1EE197DD8 = v1, re::initInfo_MeshAssetSmoothDeformerData(v1, v2), (byte_1EE197CF9 & 1) == 0))
    {
      byte_1EE197CF9 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE198308, 0);
      qword_1EE198318 = 0x2800000003;
      dword_1EE198320 = v3;
      word_1EE198324 = 0;
      *&xmmword_1EE198328 = 0;
      *(&xmmword_1EE198328 + 1) = 0xFFFFFFFFLL;
      qword_1EE198338 = v1;
      qword_1EE198340 = 0;
      qword_1EE198308 = &unk_1F5CC7108;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE198308, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSmoothDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSmoothDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSmoothDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSmoothDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSmoothDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSmoothDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSmoothDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSmoothDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE198328 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshAssetWrapDeformerData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE197EF8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE197EF8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE198348);
      qword_1EE198348 = &unk_1F5CC71A0;
      __cxa_guard_release(&qword_1EE197EF8);
    }
  }

  if ((byte_1EE197CFA & 1) == 0)
  {
    v1 = qword_1EE197D90;
    if (qword_1EE197D90 || (v1 = re::allocInfo_MeshAssetWrapDeformerData(a1), qword_1EE197D90 = v1, re::initInfo_MeshAssetWrapDeformerData(v1, v2), (byte_1EE197CFA & 1) == 0))
    {
      byte_1EE197CFA = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE198348, 0);
      qword_1EE198358 = 0x2800000003;
      dword_1EE198360 = v3;
      word_1EE198364 = 0;
      *&xmmword_1EE198368 = 0;
      *(&xmmword_1EE198368 + 1) = 0xFFFFFFFFLL;
      qword_1EE198378 = v1;
      qword_1EE198380 = 0;
      qword_1EE198348 = &unk_1F5CC71A0;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE198348, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetWrapDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetWrapDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetWrapDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetWrapDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetWrapDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetWrapDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetWrapDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetWrapDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE198368 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshAssetOffsetsDeformerData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE197F00, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE197F00);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE198388);
      qword_1EE198388 = &unk_1F5CC7238;
      __cxa_guard_release(&qword_1EE197F00);
    }
  }

  if ((byte_1EE197CFB & 1) == 0)
  {
    v1 = qword_1EE197DF0;
    if (qword_1EE197DF0 || (v1 = re::allocInfo_MeshAssetOffsetsDeformerData(a1), qword_1EE197DF0 = v1, re::initInfo_MeshAssetOffsetsDeformerData(v1, v2), (byte_1EE197CFB & 1) == 0))
    {
      byte_1EE197CFB = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE198388, 0);
      qword_1EE198398 = 0x2800000003;
      dword_1EE1983A0 = v3;
      word_1EE1983A4 = 0;
      *&xmmword_1EE1983A8 = 0;
      *(&xmmword_1EE1983A8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1983B8 = v1;
      qword_1EE1983C0 = 0;
      qword_1EE198388 = &unk_1F5CC7238;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE198388, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetOffsetsDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetOffsetsDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetOffsetsDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetOffsetsDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetOffsetsDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetOffsetsDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetOffsetsDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetOffsetsDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1983A8 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::MeshAssetModel>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  v3.i64[0] = 0x7F0000007FLL;
  v3.i64[1] = 0x7F0000007FLL;
  *(a3 + 16) = vnegq_f32(v3);
  *(a3 + 32) = v3;
  *(a3 + 504) = 0;
  result = 0.0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 124) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0u;
  *(a3 + 200) = 0u;
  *(a3 + 216) = 0;
  *(a3 + 256) = 0;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 296) = 0;
  *(a3 + 264) = 0u;
  *(a3 + 280) = 0u;
  *(a3 + 336) = 0;
  *(a3 + 304) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 376) = 0;
  *(a3 + 344) = 0u;
  *(a3 + 360) = 0u;
  *(a3 + 416) = 0;
  *(a3 + 384) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 456) = 0;
  *(a3 + 424) = 0u;
  *(a3 + 440) = 0u;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  *(a3 + 496) = 0;
  return result;
}

void re::internal::defaultDestruct<re::MeshAssetModel>(uint64_t a1, uint64_t a2, re::StringID *a3)
{
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(a3 + 472);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a3 + 432);
  re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(a3 + 392);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a3 + 352);
  re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(a3 + 312);
  re::DynamicArray<re::MeshLodLevelInfo>::deinit(a3 + 272);
  re::DynamicArray<re::MeshAssetSkeleton>::deinit(a3 + 232);
  re::DynamicArray<re::MeshAssetPart>::deinit(a3 + 192);
  re::DynamicArray<re::MeshAssetSkinningData>::deinit(a3 + 152);
  re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(a3 + 112);

  re::StringID::destroyString(a3);
}

double re::internal::defaultConstructV2<re::MeshAssetModel>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = &str_67;
  v1.i64[0] = 0x7F0000007FLL;
  v1.i64[1] = 0x7F0000007FLL;
  *(a1 + 16) = vnegq_f32(v1);
  *(a1 + 32) = v1;
  *(a1 + 504) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 124) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 256) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 336) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 416) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 456) = 0;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::MeshAssetModel>(re::StringID *a1)
{
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(a1 + 472);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a1 + 432);
  re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(a1 + 392);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a1 + 352);
  re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(a1 + 312);
  re::DynamicArray<re::MeshLodLevelInfo>::deinit(a1 + 272);
  re::DynamicArray<re::MeshAssetSkeleton>::deinit(a1 + 232);
  re::DynamicArray<re::MeshAssetPart>::deinit(a1 + 192);
  re::DynamicArray<re::MeshAssetSkinningData>::deinit(a1 + 152);
  re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(a1 + 112);

  re::StringID::destroyString(a1);
}

void *re::allocInfo_MeshAssetInstance(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197E48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197E48))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18DC00, "MeshAssetInstance");
    __cxa_guard_release(&qword_1EE197E48);
  }

  return &unk_1EE18DC00;
}

void re::initInfo_MeshAssetInstance(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0xBA5A09BFFA142D30;
  v18[1] = "MeshAssetInstance";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE197E50, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE197E50);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "name";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE197FA8 = v9;
      v10 = re::introspectionAllocator(v9);
      v11 = re::introspect_Matrix4x4F(1);
      v12 = (*(*v10 + 32))(v10, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "transform";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1000000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE197FB0 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_uint32_t(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "modelIndex";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x5000000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE197FB8 = v16;
      __cxa_guard_release(&qword_1EE197E50);
    }
  }

  *(this + 2) = 0x6000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE197FA8;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAssetInstance>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAssetInstance>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAssetInstance>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAssetInstance>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

double re::internal::defaultConstruct<re::MeshAssetInstance>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::MeshAssetInstance>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = &str_67;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  return result;
}

void *re::allocInfo_MeshAsssetModelVVMTableOfContents(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197E60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197E60))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18DC90, "MeshAsssetModelVVMTableOfContents");
    __cxa_guard_release(&qword_1EE197E60);
  }

  return &unk_1EE18DC90;
}

void re::initInfo_MeshAsssetModelVVMTableOfContents(re *this, re::IntrospectionBase *a2)
{
  v28[0] = 0x49F680847A95571ALL;
  v28[1] = "MeshAsssetModelVVMTableOfContents";
  if (v28[0])
  {
    if (v28[0])
    {
    }
  }

  *(this + 2) = v29;
  if ((atomic_load_explicit(&qword_1EE197E68, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE197E68);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_uint32_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "mVersion";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE198058 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicArray<unsigned long>>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "mOffsetsToVVMData";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE198060 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::IntrospectionInfo<re::DynamicArray<unsigned long>>::get(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "mSizeOfVVMData";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x3000000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE198068 = v17;
      v18 = re::introspectionAllocator(v17);
      re::IntrospectionInfo<re::DynamicArray<re::DynamicArray<unsigned int>>>::get(v18, v19);
      v20 = (*(*v18 + 32))(v18, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "mEncodedToOriginalVertexIndexMap";
      *(v20 + 16) = &qword_1EE1983C8;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x5800000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE198070 = v20;
      v21 = re::introspectionAllocator(v20);
      re::IntrospectionInfo<re::DynamicArray<re::DynamicArray<unsigned int>>>::get(v21, v22);
      v23 = (*(*v21 + 32))(v21, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "mEncodedToOriginalFaceIndexMap";
      *(v23 + 16) = &qword_1EE1983C8;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x8000000005;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE198078 = v23;
      v24 = re::introspectionAllocator(v23);
      re::IntrospectionInfo<re::DynamicArray<re::DynamicArray<unsigned char>>>::get(v24, v25);
      v26 = (*(*v24 + 32))(v24, 72, 8);
      *v26 = 1;
      *(v26 + 8) = "mEncodedFaceVertexShifts";
      *(v26 + 16) = &qword_1EE198408;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0xA800000006;
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
      *(v26 + 56) = 0;
      *(v26 + 64) = 0;
      qword_1EE198080 = v26;
      __cxa_guard_release(&qword_1EE197E68);
    }
  }

  *(this + 2) = 0xD000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE198058;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAsssetModelVVMTableOfContents>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAsssetModelVVMTableOfContents>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAsssetModelVVMTableOfContents>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAsssetModelVVMTableOfContents>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v27 = v29;
}

void re::IntrospectionInfo<re::DynamicArray<re::DynamicArray<unsigned int>>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE197F08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197F08))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1983C8);
    qword_1EE1983C8 = &unk_1F5CC72D0;
    __cxa_guard_release(&qword_1EE197F08);
  }

  if ((byte_1EE197CFC & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(1, a2);
    if ((byte_1EE197CFC & 1) == 0)
    {
      v3 = v2;
      byte_1EE197CFC = 1;
      v4 = *(v2 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1983C8, 0);
      qword_1EE1983D8 = 0x2800000003;
      dword_1EE1983E0 = v4;
      word_1EE1983E4 = 0;
      *&xmmword_1EE1983E8 = 0;
      *(&xmmword_1EE1983E8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1983F8 = v3;
      qword_1EE198400 = 0;
      qword_1EE1983C8 = &unk_1F5CC72D0;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&qword_1EE1983C8, &v14);
      if (v15)
      {
        v7 = *&v16[7];
      }

      else
      {
        v7 = v16;
      }

      if (v14 && (v15 & 1) != 0)
      {
        (*(*v14 + 40))();
      }

      v11 = *(v3 + 32);
      if (v18)
      {
        v10 = v18;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v17);
        re::TypeBuilder::TypeBuilder(&v14, v17);
        v13 = v11;
        re::TypeBuilder::beginListType(&v14, &v12, 1, 0x28uLL, 8uLL, &v13);
        re::TypeBuilder::setConstructor(&v14, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned int>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v14, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned int>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v14, 1);
        re::TypeBuilder::setListAccessors(&v14, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned int>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned int>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v14, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned int>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v14, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned int>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned int>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned int>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE1983E8 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::DynamicArray<unsigned char>>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE197F10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197F10))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE198408);
    qword_1EE198408 = &unk_1F5CC7368;
    __cxa_guard_release(&qword_1EE197F10);
  }

  if ((byte_1EE197CFD & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::DynamicArray<unsigned char>>::get(1, a2);
    if ((byte_1EE197CFD & 1) == 0)
    {
      v3 = v2;
      byte_1EE197CFD = 1;
      v4 = *(v2 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE198408, 0);
      qword_1EE198418 = 0x2800000003;
      dword_1EE198420 = v4;
      word_1EE198424 = 0;
      *&xmmword_1EE198428 = 0;
      *(&xmmword_1EE198428 + 1) = 0xFFFFFFFFLL;
      qword_1EE198438 = v3;
      qword_1EE198440 = 0;
      qword_1EE198408 = &unk_1F5CC7368;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&qword_1EE198408, &v14);
      if (v15)
      {
        v7 = *&v16[7];
      }

      else
      {
        v7 = v16;
      }

      if (v14 && (v15 & 1) != 0)
      {
        (*(*v14 + 40))();
      }

      v11 = *(v3 + 32);
      if (v18)
      {
        v10 = v18;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v17);
        re::TypeBuilder::TypeBuilder(&v14, v17);
        v13 = v11;
        re::TypeBuilder::beginListType(&v14, &v12, 1, 0x28uLL, 8uLL, &v13);
        re::TypeBuilder::setConstructor(&v14, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v14, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v14, 1);
        re::TypeBuilder::setListAccessors(&v14, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v14, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v14, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE198428 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::MeshAsssetModelVVMTableOfContents>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  *(a3 + 32) = 0;
  *(a3 + 200) = 0;
  result = 0.0;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0;
  return result;
}

uint64_t re::internal::defaultDestruct<re::MeshAsssetModelVVMTableOfContents>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(a3 + 168);
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(a3 + 128);
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(a3 + 88);
  re::DynamicArray<unsigned long>::deinit(a3 + 48);

  return re::DynamicArray<unsigned long>::deinit(a3 + 8);
}

double re::internal::defaultConstructV2<re::MeshAsssetModelVVMTableOfContents>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 200) = 0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::MeshAsssetModelVVMTableOfContents>(uint64_t a1)
{
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(a1 + 168);
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(a1 + 128);
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(a1 + 88);
  re::DynamicArray<unsigned long>::deinit(a1 + 48);

  return re::DynamicArray<unsigned long>::deinit(a1 + 8);
}

void *re::allocInfo_MeshAsssetDataVVMTableOfContents(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197E78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197E78))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18DD20, "MeshAsssetDataVVMTableOfContents");
    __cxa_guard_release(&qword_1EE197E78);
  }

  return &unk_1EE18DD20;
}

void re::initInfo_MeshAsssetDataVVMTableOfContents(re *this, re::IntrospectionBase *a2)
{
  v13[0] = 0x32DFD8910BDA8154;
  v13[1] = "MeshAsssetDataVVMTableOfContents";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&qword_1EE197E80, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE197E80);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_uint32_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "mVersion";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE197F80 = v9;
      v10 = re::introspectionAllocator(v9);
      re::IntrospectionInfo<re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>>::get(v10);
      v11 = (*(*v10 + 32))(v10, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "mModelInfo";
      *(v11 + 16) = &qword_1EE198448;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x800000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE197F88 = v11;
      __cxa_guard_release(&qword_1EE197E80);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE197F80;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAsssetDataVVMTableOfContents>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAsssetDataVVMTableOfContents>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAsssetDataVVMTableOfContents>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAsssetDataVVMTableOfContents>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v12 = v14;
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE197F18, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE197F18);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE198448);
      qword_1EE198448 = &unk_1F5CC7400;
      __cxa_guard_release(&qword_1EE197F18);
    }
  }

  if ((byte_1EE197CFE & 1) == 0)
  {
    v1 = qword_1EE197E70;
    if (qword_1EE197E70 || (v1 = re::allocInfo_MeshAsssetModelVVMTableOfContents(a1), qword_1EE197E70 = v1, re::initInfo_MeshAsssetModelVVMTableOfContents(v1, v2), (byte_1EE197CFE & 1) == 0))
    {
      byte_1EE197CFE = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE198448, 0);
      qword_1EE198458 = 0x2800000003;
      dword_1EE198460 = v3;
      word_1EE198464 = 0;
      *&xmmword_1EE198468 = 0;
      *(&xmmword_1EE198468 + 1) = 0xFFFFFFFFLL;
      qword_1EE198478 = v1;
      qword_1EE198480 = 0;
      qword_1EE198448 = &unk_1F5CC7400;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE198448, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAsssetModelVVMTableOfContents>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAsssetModelVVMTableOfContents>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAsssetModelVVMTableOfContents>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAsssetModelVVMTableOfContents>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAsssetModelVVMTableOfContents>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAsssetModelVVMTableOfContents>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAsssetModelVVMTableOfContents>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAsssetModelVVMTableOfContents>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE198468 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::internal::defaultConstruct<re::MeshAsssetDataVVMTableOfContents>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 40) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  *(a3 + 32) = 0;
}

uint64_t re::internal::defaultConstructV2<re::MeshAsssetDataVVMTableOfContents>(uint64_t result)
{
  *result = 0;
  *(result + 40) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 8) = 0;
  *(result + 32) = 0;
  return result;
}

void *re::allocInfo_MeshAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197E90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197E90))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18DDB0, "MeshAssetData");
    __cxa_guard_release(&qword_1EE197E90);
  }

  return &unk_1EE18DDB0;
}

void re::initInfo_MeshAssetData(re *this, re::IntrospectionBase *a2)
{
  v38[0] = 0xDD4C740759C3D65ALL;
  v38[1] = "MeshAssetData";
  if (v38[0])
  {
    if (v38[0])
    {
    }
  }

  *(this + 2) = v39;
  if ((atomic_load_explicit(&qword_1EE197E98, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE197E98);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::DynamicArray<re::MeshAssetModel>>::get(v6);
      v7 = (*(*v6 + 32))(v6, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "models";
      *(v7 + 16) = &qword_1EE198488;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE198088 = v7;
      v8 = re::introspectionAllocator(v7);
      re::IntrospectionInfo<re::DynamicArray<re::MeshAssetInstance>>::get(v8);
      v9 = (*(*v8 + 32))(v8, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "instances";
      *(v9 + 16) = &qword_1EE1984C8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x2800000002;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE198090 = v9;
      v10 = re::introspectionAllocator(v9);
      re::IntrospectionInfo<re::DynamicArray<re::MeshAssetSkeleton>>::get(v10);
      v11 = (*(*v10 + 32))(v10, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "skeletons";
      *(v11 + 16) = &qword_1EE198188;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x5000000003;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE198098 = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = v12;
      v14 = qword_1EE197E28;
      if (!qword_1EE197E28)
      {
        v14 = re::allocInfo_MeshAssetMetaData(v12);
        qword_1EE197E28 = v14;
        re::initInfo_MeshAssetMetaData(v14, v15);
      }

      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "meshAssetMetaData";
      *(v16 + 16) = v14;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x7800000004;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1980A0 = v16;
      v17 = re::introspectionAllocator(v16);
      v18 = v17;
      v19 = qword_1EE197E88;
      if (!qword_1EE197E88)
      {
        v19 = re::allocInfo_MeshAsssetDataVVMTableOfContents(v17);
        qword_1EE197E88 = v19;
        re::initInfo_MeshAsssetDataVVMTableOfContents(v19, v20);
      }

      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "vvmTableOfContents";
      *(v21 + 16) = v19;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0xA000000005;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1980A8 = v21;
      v22 = re::introspectionAllocator(v21);
      v23 = v22;
      v24 = qword_1EE197EA0;
      if (!qword_1EE197EA0)
      {
        v24 = re::allocInfo_MeshAssetData(v22);
        qword_1EE197EA0 = v24;
        re::initInfo_MeshAssetData(v24, v25);
      }

      v26 = (*(*v23 + 32))(v23, 64, 8);
      *v26 = 6;
      *(v26 + 8) = 2;
      *(v26 + 16) = v24;
      *(v26 + 24) = 0;
      *(v26 + 32) = re::meshAssetDataUpgrade<(re::MeshAssetDataVersion)0>;
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
      *(v26 + 56) = 0;
      qword_1EE1980B0 = v26;
      v27 = re::introspectionAllocator(v26);
      v28 = v27;
      v29 = qword_1EE197EA0;
      if (!qword_1EE197EA0)
      {
        v29 = re::allocInfo_MeshAssetData(v27);
        qword_1EE197EA0 = v29;
        re::initInfo_MeshAssetData(v29, v30);
      }

      v31 = (*(*v28 + 32))(v28, 64, 8);
      *v31 = 6;
      *(v31 + 8) = 3;
      *(v31 + 16) = v29;
      *(v31 + 24) = 0;
      *(v31 + 32) = re::meshAssetDataUpgrade<(re::MeshAssetDataVersion)1>;
      *(v31 + 40) = 0;
      *(v31 + 48) = 0;
      *(v31 + 56) = 0;
      qword_1EE1980B8 = v31;
      v32 = re::introspectionAllocator(v31);
      v33 = v32;
      v34 = qword_1EE197EA0;
      if (!qword_1EE197EA0)
      {
        v34 = re::allocInfo_MeshAssetData(v32);
        qword_1EE197EA0 = v34;
        re::initInfo_MeshAssetData(v34, v35);
      }

      v36 = (*(*v33 + 32))(v33, 64, 8);
      *v36 = 6;
      *(v36 + 8) = 4;
      *(v36 + 16) = v34;
      *(v36 + 24) = 0;
      *(v36 + 32) = re::meshAssetDataUpgrade<(re::MeshAssetDataVersion)2>;
      *(v36 + 40) = 0;
      *(v36 + 48) = 0;
      *(v36 + 56) = 0;
      qword_1EE1980C0 = v36;
      __cxa_guard_release(&qword_1EE197E98);
    }
  }

  *(this + 2) = 0xD000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 8;
  *(this + 8) = &qword_1EE198088;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v37 = v39;
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshAssetModel>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE197F20, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE197F20);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE198488);
      qword_1EE198488 = &unk_1F5CC7498;
      __cxa_guard_release(&qword_1EE197F20);
    }
  }

  if ((byte_1EE197CFF & 1) == 0)
  {
    v1 = qword_1EE197E40;
    if (qword_1EE197E40 || (v1 = re::allocInfo_MeshAssetModel(a1), qword_1EE197E40 = v1, re::initInfo_MeshAssetModel(v1, v2), (byte_1EE197CFF & 1) == 0))
    {
      byte_1EE197CFF = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE198488, 0);
      qword_1EE198498 = 0x2800000003;
      dword_1EE1984A0 = v3;
      word_1EE1984A4 = 0;
      *&xmmword_1EE1984A8 = 0;
      *(&xmmword_1EE1984A8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1984B8 = v1;
      qword_1EE1984C0 = 0;
      qword_1EE198488 = &unk_1F5CC7498;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE198488, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetModel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetModel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetModel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetModel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetModel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetModel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetModel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetModel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1984A8 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshAssetInstance>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE197F28, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE197F28);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1984C8);
      qword_1EE1984C8 = &unk_1F5CC7530;
      __cxa_guard_release(&qword_1EE197F28);
    }
  }

  if ((byte_1EE197D00 & 1) == 0)
  {
    v1 = qword_1EE197E58;
    if (qword_1EE197E58 || (v1 = re::allocInfo_MeshAssetInstance(a1), qword_1EE197E58 = v1, re::initInfo_MeshAssetInstance(v1, v2), (byte_1EE197D00 & 1) == 0))
    {
      byte_1EE197D00 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1984C8, 0);
      qword_1EE1984D8 = 0x2800000003;
      dword_1EE1984E0 = v3;
      word_1EE1984E4 = 0;
      *&xmmword_1EE1984E8 = 0;
      *(&xmmword_1EE1984E8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1984F8 = v1;
      qword_1EE198500 = 0;
      qword_1EE1984C8 = &unk_1F5CC7530;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1984C8, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetInstance>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetInstance>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetInstance>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetInstance>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetInstance>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetInstance>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetInstance>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetInstance>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1984E8 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

uint64_t re::meshAssetDataUpgrade<(re::MeshAssetDataVersion)0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshAssetModel>::operator=(a3, a2);
  re::DynamicArray<re::MeshAssetInstance>::operator=(a3 + 40, (a2 + 40));
  re::DynamicArray<re::MeshAssetSkeleton>::operator=(a3 + 80, (a2 + 80));
  re::DynamicArray<float>::operator=(a3 + 120, (a2 + 120));
  *(a3 + 160) = *(a2 + 160);
  re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::operator=(a3 + 168, (a2 + 168));
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = *(a3 + 32);
    v8 = v7 + (v6 << 9);
    v25 = v8;
    do
    {
      v9 = *(a3 + 96);
      v10 = *(v7 + 248);
      if (v10)
      {
        if (v9 == -1)
        {
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_22:
          re::internal::assertLog(7, v5, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v9, v9, v10);
          _os_crash();
          __break(1u);
        }

        v11 = v9 + v10;
        if (__CFADD__(v9, v10))
        {
          goto LABEL_22;
        }

        v12 = *(v7 + 264);
        if (v9 >= v11)
        {
          std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetSkeleton const*,re::MeshAssetSkeleton const*,re::MeshAssetSkeleton*>(*(v7 + 264), &v12[14 * v10], *(a3 + 112) + 112 * v9);
        }

        else
        {
          re::DynamicArray<re::MeshAssetSkeleton>::growCapacity((a3 + 80), v9 + v10);
          v13 = *(a3 + 96);
          v14 = &v12[14 * (v13 - v9)];
          std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetSkeleton const*,re::MeshAssetSkeleton const*,re::MeshAssetSkeleton*>(v12, v14, *(a3 + 112) + 112 * v9);
          if (v13 - v9 != v10)
          {
            v15 = 0;
            v16 = *(a3 + 112) + 112 * *(a3 + 96);
            v17 = 112 * v9 + 112 * v10 - 112 * v13;
            do
            {
              re::StringID::StringID((v16 + v15), &v14[v15 / 8]);
              re::FixedArray<re::StringID>::FixedArray((v16 + v15 + 16), &v14[v15 / 8 + 2]);
              re::FixedArray<unsigned int>::FixedArray((v16 + v15 + 40), &v14[v15 / 8 + 5]);
              re::FixedArray<re::GenericSRT<float>>::FixedArray((v16 + v15 + 64), &v14[v15 / 8 + 8]);
              re::FixedArray<re::Matrix4x4<float>>::FixedArray((v16 + v15 + 88), &v14[v15 / 8 + 11]);
              v15 += 112;
            }

            while (v17 != v15);
          }

          *(a3 + 96) = v11;
          v8 = v25;
        }

        ++*(a3 + 104);
      }

      v18 = *(v7 + 168);
      if (v18)
      {
        v19 = *(v7 + 184);
        v20 = 144 * v18;
        do
        {
          *v19 += v9;
          v19 += 36;
          v20 -= 144;
        }

        while (v20);
      }

      v7 += 512;
    }

    while (v7 != v8);
    v21 = *(a3 + 16);
    if (v21)
    {
      v22 = v21 << 9;
      v23 = *(a3 + 32) + 232;
      do
      {
        re::DynamicArray<re::MeshAssetSkeleton>::operator=(v23, (a3 + 80));
        v23 += 512;
        v22 -= 512;
      }

      while (v22);
    }
  }

  return 1;
}

uint64_t re::meshAssetDataUpgrade<(re::MeshAssetDataVersion)1>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  re::DynamicArray<re::MeshAssetModel>::operator=(a3, a2);
  re::DynamicArray<re::MeshAssetInstance>::operator=(a3 + 40, (a2 + 40));
  re::DynamicArray<re::MeshAssetSkeleton>::operator=(a3 + 80, (a2 + 80));
  re::DynamicArray<float>::operator=(a3 + 120, (a2 + 120));
  *(a3 + 160) = *(a2 + 160);
  v5 = re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::operator=(a3 + 168, (a2 + 168));
  v23 = 0;
  v24 = 0;
  v6 = 1;
  v25 = 1;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v29 = 0;
  v7 = *(a3 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = *(a3 + 32);
    v10 = v9 + (v7 << 9);
    do
    {
      v11 = *(v9 + 208);
      if (v11)
      {
        v12 = v11 << 8;
        v13 = (*(v9 + 224) + 56);
        do
        {
          v14 = *v13;
          if (v14 == 0xFFFF)
          {
            v15 = v28;
            v16 = v24;
            if (v28 + 1 > 32 * v24)
            {
              re::BucketArray<unsigned short *,32ul>::setBucketsCapacity(&v23, (v28 + 32) >> 5);
              v16 = v24;
            }

            if (v16 <= v15 >> 5)
            {
              v30 = 0;
              v42 = 0u;
              v43 = 0u;
              v40 = 0u;
              v41 = 0u;
              v39 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v31 = 136315906;
              v32 = "operator[]";
              v33 = 1024;
              v34 = 858;
              v35 = 2048;
              v36 = v15 >> 5;
              v37 = 2048;
              v38 = v16;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            v17 = v27;
            if (v25)
            {
              v17 = &v26;
            }

            v18 = v17[v15 >> 5];
            ++v28;
            ++v29;
            *(v18 + 8 * (v15 & 0x1F)) = v13;
          }

          else if (v14 > v8)
          {
            v8 = *v13;
          }

          v13 += 128;
          v12 -= 256;
        }

        while (v12);
      }

      v9 += 512;
    }

    while (v9 != v10);
    v6 = v8 + 1;
  }

  v19 = v28;
  if (v28)
  {
    v20 = 0;
    do
    {
      **re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](&v23, v20++) = v6;
    }

    while (v19 != v20);
    v21 = 0;
    do
    {
      re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](&v23, v21++);
    }

    while (v19 != v21);
  }

  while (v24)
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v23);
  }

  if (v23 && (v25 & 1) == 0)
  {
    (*(*v23 + 40))();
  }

  return 1;
}

BOOL re::meshAssetDataUpgrade<(re::MeshAssetDataVersion)2>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  re::DynamicArray<re::MeshAssetModel>::operator=(a3, a2);
  re::DynamicArray<re::MeshAssetInstance>::operator=(a3 + 40, (a2 + 40));
  re::DynamicArray<re::MeshAssetSkeleton>::operator=(a3 + 80, (a2 + 80));
  re::DynamicArray<float>::operator=(a3 + 120, (a2 + 120));
  *(a3 + 160) = *(a2 + 160);
  v6 = re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::operator=(a3 + 168, (a2 + 168));
  v7 = *(a3 + 16);
  if (!v7)
  {
    return 1;
  }

  v8 = *(a3 + 32);
  v42 = &v8[64 * v7];
  while (1)
  {
    v9 = *(v8 + 52);
    if (*(v8 + 52))
    {
      break;
    }

LABEL_27:
    v8 += 64;
    if (v8 == v42)
    {
      v24 = *(a3 + 16);
      if (v24)
      {
        v25 = *(a3 + 32);
        v26 = &v25[32 * v24];
        while (1)
        {
          if (v25[10].i64[1])
          {
            v27 = v25[13].u32[0];
            if (v25[13].i32[0])
            {
              v28 = 0;
              v29.i64[0] = 0x7F0000007FLL;
              v29.i64[1] = 0x7F0000007FLL;
              v30 = vnegq_f32(v29);
              v31 = 80;
              v32 = 96;
              while (v25[13].i64[0] > v28)
              {
                if (v25[10].i64[1] <= v28)
                {
                  goto LABEL_47;
                }

                v44 = v30;
                v46 = v29;
                re::AABB::transform((v25[14].i64[0] + v32), (v25[11].i64[1] + v31), buf);
                v34 = v44;
                v33 = v46;
                v34.i32[3] = 0;
                v35 = buf[0];
                v36 = buf[1];
                v35.i32[3] = 0;
                v33.i32[3] = 0;
                v36.i32[3] = 0;
                v30 = vminnmq_f32(v34, v35);
                v29 = vmaxnmq_f32(v33, v36);
                ++v28;
                v32 += 256;
                v31 += 144;
                if (v27 == v28)
                {
                  goto LABEL_38;
                }
              }

              v48 = 0u;
              v49 = 0u;
              memset(buf, 0, sizeof(buf));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_47:
              v48 = 0u;
              v49 = 0u;
              memset(buf, 0, sizeof(buf));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_48:
              v48 = 0u;
              v49 = 0u;
              memset(buf, 0, sizeof(buf));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            v29.i64[0] = 0x7F0000007FLL;
            v29.i64[1] = 0x7F0000007FLL;
            v30 = vnegq_f32(v29);
LABEL_38:
            v25[1] = v30;
            v25[2] = v29;
          }

          v25 += 32;
          if (v25 == v26)
          {
            return 1;
          }
        }
      }

      return 1;
    }
  }

  v10 = 0;
  while (1)
  {
    v11 = v8[26];
    if (v11 <= v10)
    {
      goto LABEL_44;
    }

    v3 = (v8[28] + (v10 << 8));
    v43 = v3[7];
    v45 = v3[6];
    v12 = vcgtq_f32(v45, v43);
    v12.i32[3] = v12.i32[2];
    if ((vmaxvq_u32(v12) & 0x80000000) != 0)
    {
      v13 = v3[1].u64[0];
      if (v13)
      {
        v11 = 0;
        v14 = 8;
        while (v13 != v11)
        {
          v15 = (v3[2].i64[0] + v14);
          if (*v15)
          {
            v16 = v15[1];
          }

          else
          {
            v16 = v15 + 1;
          }

          v6 = strcmp(v16, "vertexPosition");
          if (!v6)
          {
            v11 = v11;
            goto LABEL_20;
          }

          ++v11;
          v14 += 80;
          if (v13 == v11)
          {
            goto LABEL_7;
          }
        }

        v48 = 0u;
        v49 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_44:
        v48 = 0u;
        v49 = 0u;
        memset(buf, 0, sizeof(buf));
        v38 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_45;
      }

      v11 = 0;
LABEL_20:
      if (v11 != v13)
      {
        break;
      }
    }

LABEL_7:
    if (++v10 == v9)
    {
      goto LABEL_27;
    }
  }

  if (v13 <= v11)
  {
    goto LABEL_48;
  }

  v17 = v3[2].i64[0] + 80 * v11;
  v11 = *(v17 + 48);
  v18 = v3[3].u32[0];
  if (v18 <= v11 / 0xC)
  {
    if (v18)
    {
      v19 = *(v17 + 64);
      v20 = v19 + 12 * v18;
      do
      {
        v21.i64[0] = *v19;
        v23 = v43;
        v22 = v45;
        v22.i32[3] = 0;
        v21.i64[1] = *(v19 + 8);
        v23.i32[3] = 0;
        v43 = vmaxnmq_f32(v23, v21);
        v45 = vminnmq_f32(v22, v21);
        v3[6] = v45;
        v3[7] = v43;
        v19 += 12;
      }

      while (v19 != v20);
    }

    goto LABEL_7;
  }

  v38 = *re::assetTypesLogObjects(v6);
  result = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
  if (!result)
  {
    return result;
  }

LABEL_45:
  v39 = v8[1];
  v40 = v3[5].i64[0];
  v41 = v3[3].i32[0];
  buf[0].i32[0] = 136315906;
  *(buf[0].i64 + 4) = v39;
  buf[0].i16[6] = 2080;
  *(&buf[0].i64[1] + 6) = v40;
  buf[1].i16[3] = 1024;
  buf[1].i32[2] = v41;
  buf[1].i16[6] = 2048;
  *(&buf[1].i64[1] + 6) = v11;
  _os_log_error_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_ERROR, "Invalid vertex count in MeshAssetModel. Model: %s, Part: %s, Vertex Count: %u, Data Size: %lu", buf, 0x26u);
  return 0;
}

double re::internal::defaultConstruct<re::MeshAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0;
  *(a3 + 200) = 0;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  *(a3 + 168) = 0;
  *(a3 + 192) = 0;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  *(a3 + 144) = 0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  return result;
}

uint64_t re::internal::defaultDestruct<re::MeshAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(a3 + 168);
  re::DynamicArray<unsigned long>::deinit(a3 + 120);
  re::DynamicArray<re::MeshAssetSkeleton>::deinit(a3 + 80);
  re::DynamicArray<re::MeshAssetInstance>::deinit(a3 + 40);

  return re::DynamicArray<re::MeshAssetModel>::deinit(a3);
}

double re::internal::defaultConstructV2<re::MeshAssetData>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 200) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  *(a1 + 192) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 144) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::MeshAssetData>(uint64_t a1)
{
  re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(a1 + 168);
  re::DynamicArray<unsigned long>::deinit(a1 + 120);
  re::DynamicArray<re::MeshAssetSkeleton>::deinit(a1 + 80);
  re::DynamicArray<re::MeshAssetInstance>::deinit(a1 + 40);

  return re::DynamicArray<re::MeshAssetModel>::deinit(a1);
}

void *re::IntrospectionDynamicArray<re::MeshAssetBuffer>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshAssetBuffer>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshAssetBuffer>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshAssetBuffer>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshAssetBuffer>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshAssetBuffer>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MeshAssetBuffer>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshAssetBuffer>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::MeshAssetBuffer>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshAssetBuffer>::addElement(re::Allocator **a1, re *a2, int a3, _anonymous_namespace_ *a4)
{
  v16 = 0;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  re::DynamicString::setCapacity(&v11, 0);
  *(&v15 + 1) = 0;
  v14 = 0uLL;
  *(&v13 + 1) = 0;
  LODWORD(v15) = 0;
  LOWORD(v16) = 256;
  v8.n128_f64[0] = re::DynamicArray<re::MeshAssetBuffer>::add(a4, &v11);
  if (*(&v13 + 1))
  {
    if (*(&v15 + 1))
    {
      (*(**(&v13 + 1) + 40))(v8.n128_f64[0]);
    }

    *(&v15 + 1) = 0;
    v14 = 0uLL;
    *(&v13 + 1) = 0;
    LODWORD(v15) = v15 + 1;
  }

  if (v11 && (v12 & 1) != 0)
  {
    (*(*v11 + 40))(v8);
  }

  v9 = (*(a4 + 4) + 80 * *(a4 + 2) - 80);
  re::introspectionInitElement(a2, a3, a1[6], v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::MeshAssetBuffer>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 80 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 80 * a3;
}

void re::DynamicArray<re::MeshAssetBuffer>::resize(_anonymous_namespace_ *a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 80 * a2;
    v9 = a2;
    do
    {
      v10 = (*(v3 + 4) + v8);
      re::DynamicArray<unsigned long>::deinit(v10 + 32);
      re::DynamicString::deinit(v10);
      ++v9;
      v8 += 80;
    }

    while (v9 < *(v3 + 2));
  }

  else
  {
    if (*(a1 + 1) < a2)
    {
      a1 = re::DynamicArray<re::MeshAssetBuffer>::setCapacity(a1, a2);
      v4 = *(v3 + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 80 * v4;
      do
      {
        v7 = *(v3 + 4) + v6;
        *v7 = 0u;
        *(v7 + 16) = 0u;
        a1 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 64) = 0;
        *(v7 + 40) = 0;
        *(v7 + 48) = 0;
        *(v7 + 32) = 0;
        *(v7 + 56) = 0;
        v6 += 80;
        *(v7 + 72) = 256;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = a2;
  ++*(v3 + 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBuffer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshAssetBuffer>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBuffer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::MeshAssetBuffer>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::MeshAssetBuffer>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshAssetBuffer>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::MeshAssetBuffer>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 80 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 80;
        v11 -= 80;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBuffer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 80 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBuffer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBuffer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 80 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBuffer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, re **a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v26);
  if (v26)
  {
    *a5 = v26;
  }

  else
  {
    *&v19 = 0x449AD97C4B77BED4;
    *(&v19 + 1) = "_CompareFunc";
    v10 = re::TypeRegistry::typeID(a1, &v19, &v25);
    if (v19)
    {
      if (v19)
      {
      }
    }

    if (!v25)
    {
      v21[0] = 0x449AD97C4B77BED4;
      v21[1] = "_CompareFunc";
      re::TypeRegistry::declareType(v21, a1, 8, 1u, 0, &v19);
      v25 = v19;
      if (v21[0])
      {
        if (v21[0])
        {
        }
      }
    }

    re::TypeRegistry::typeInfo(a1, a3, &v19);
    re::TypeInfo::TypeInfo(v24, &v19 + 8);
    if (!v25 || (v12 = *v24[2], *&v19 = *(&v25 + 1), *(&v19 + 1) = v12, v20 = -1, (v13 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v24[0] + 768, &v19)) == 0) || !*v13)
    {
      v14 = *a3;
      v22 = v25;
      v23 = v14;
      re::TypeRegistry::addAttribute(a1, &v23, -1, &v22, re::internal::less<re::DynamicString>, 0);
    }

    re::StackScratchAllocator::StackScratchAllocator(v21);
    re::TypeBuilder::TypeBuilder(&v19, v21);
    v15 = *a3;
    v17 = *a4;
    v18 = v15;
    re::TypeBuilder::beginDictionaryType(&v19, a2, 1, 0x30uLL, 8uLL, &v18, &v17);
    re::TypeBuilder::setConstructor(&v19, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(&v19, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setDictionaryAccessors(&v19, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
    re::TypeBuilder::setDictionaryIterator(&v19, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(&v19, a1, a5);
    re::TypeBuilder::~TypeBuilder(&v19, v16);
    re::StackScratchAllocator::~StackScratchAllocator(v21);
  }
}

void *re::IntrospectionHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4, const re::DynamicString *a5)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  re::DynamicString::setCapacity(&v12, 0);
  v10 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a4, a5, &v12);
  if (v12 && (v13 & 1) != 0)
  {
    (*(*v12 + 40))();
  }

  re::introspectionInitElement(a2, a3, a1[8], v10);
  return v10;
}

uint64_t re::IntrospectionHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 20;
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
    v10 = *(a2 + 16) + 80 * v6;
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
      if ((*(*(a2 + 16) + 80 * v6) & 0x80000000) != 0)
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

re::DynamicString *re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, re::DynamicString *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v12, a2);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v9);
  v7 = HIDWORD(v10);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::DynamicString>(a1, &v9, a2, a3);
  }

  ++*(a1 + 40);
  return re::DynamicString::operator=((*(a1 + 16) + 80 * v7 + 40), a3);
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

  return re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

    re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(a1, a3, 3);
  }
}

re::DynamicString *re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, const re::DynamicString *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
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

          if ((*(*(v7 + 16) + 80 * v4) & 0x80000000) != 0)
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
          v5 += 20;
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

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 80 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 80 * *(a1 + 32) + 40;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

void *re::IntrospectionFixedArray<re::SkinningInfluence>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<re::SkinningInfluence>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArray<re::SkinningInfluence>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void re::IntrospectionFixedArray<re::SkinningInfluence>::init(uint64_t a1, uint64_t *a2, re *a3, int a4, unint64_t a5)
{
  re::FixedArray<re::SkinningInfluence>::init<>(a2, a3, a5);
  if (a5)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      if (a2[1] <= v11)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      re::introspectionInitElement(a3, a4, *(a1 + 48), (a2[2] + v10));
      ++v11;
      v10 += 8;
    }

    while (a5 != v11);
  }
}

uint64_t re::IntrospectionFixedArray<re::SkinningInfluence>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 8 * a3;
}

{
  if (*(a2 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 8 * a3;
}

void *re::TypeBuilderHelper::registerFixedArray<re::SkinningInfluence>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::SkinningInfluence>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);

  return re::FixedArray<CoreIKTransform>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<re::SkinningInfluence>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t *a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);
  re::FixedArray<re::SkinningInfluence>::init<>(a1, a3, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = a1[1];
    if (v9)
    {
      v10 = a1[2];
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

uint64_t re::TypeBuilderHelper::registerFixedArray<re::SkinningInfluence>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + 8 * a2;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::SkinningInfluence>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::SkinningInfluence>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (v1 < v3)
  {
    a1[2] = ++v1;
  }

  if (v3 <= v1)
  {
    return 0;
  }

  else
  {
    return *(v2 + 16) + 8 * v1;
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::SkinningInfluence>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionFixedArray<re::MeshAssetContactDeformerTarget>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<re::MeshAssetContactDeformerTarget>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArray<re::MeshAssetContactDeformerTarget>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void re::IntrospectionFixedArray<re::MeshAssetContactDeformerTarget>::init(uint64_t a1, uint64_t *a2, re *a3, int a4, unint64_t a5)
{
  re::FixedArray<re::MeshAssetContactDeformerTarget>::init<>(a2, a3, a5);
  if (a5)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      if (a2[1] <= v11)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      re::introspectionInitElement(a3, a4, *(a1 + 48), (a2[2] + v10));
      ++v11;
      v10 += 32;
    }

    while (a5 != v11);
  }
}

uint64_t re::IntrospectionFixedArray<re::MeshAssetContactDeformerTarget>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 32 * a3;
}

{
  if (*(a2 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 32 * a3;
}

void *re::TypeBuilderHelper::registerFixedArray<re::MeshAssetContactDeformerTarget>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

void *re::TypeBuilderHelper::registerFixedArray<re::MeshAssetContactDeformerTarget>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(void *a1)
{
  re::FixedArray<re::MeshAssetContactDeformerTarget>::deinit(a1);

  return re::FixedArray<re::MeshAssetContactDeformerTarget>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<re::MeshAssetContactDeformerTarget>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t *a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  re::FixedArray<re::MeshAssetContactDeformerTarget>::deinit(a1);
  re::FixedArray<re::MeshAssetContactDeformerTarget>::init<>(a1, a3, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = a1[1];
    if (v9)
    {
      v10 = a1[2];
      v11 = 32 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 32;
        v11 -= 32;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::MeshAssetContactDeformerTarget>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + 32 * a2;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::MeshAssetContactDeformerTarget>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::MeshAssetContactDeformerTarget>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (v1 < v3)
  {
    a1[2] = ++v1;
  }

  if (v3 <= v1)
  {
    return 0;
  }

  else
  {
    return *(v2 + 16) + 32 * v1;
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::MeshAssetContactDeformerTarget>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MeshAssetSkeleton>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshAssetSkeleton>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshAssetSkeleton>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshAssetSkeleton>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshAssetSkeleton>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshAssetSkeleton>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MeshAssetSkeleton>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshAssetSkeleton>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::MeshAssetSkeleton>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshAssetSkeleton>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11[0] = 0;
  v11[1] = &str_67;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  re::DynamicArray<re::MeshAssetSkeleton>::add(this, v11);
  if (*(&v16 + 1))
  {
    if (v17)
    {
      (*(**(&v16 + 1) + 40))();
      v17 = 0uLL;
    }

    *(&v16 + 1) = 0;
  }

  if (v15)
  {
    if (*(&v15 + 1))
    {
      (*(*v15 + 40))();
      *(&v15 + 1) = 0;
      *&v16 = 0;
    }

    *&v15 = 0;
  }

  if (*(&v13 + 1))
  {
    if (v14)
    {
      (*(**(&v13 + 1) + 40))();
      v14 = 0uLL;
    }

    *(&v13 + 1) = 0;
  }

  v8 = re::FixedArray<re::StringID>::deinit(&v12);
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  v9 = (*(this + 4) + 112 * *(this + 2) - 112);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::MeshAssetSkeleton>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 112 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 112 * a3;
}

void *re::DynamicArray<re::MeshAssetSkeleton>::add(void *this, uint64_t *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::MeshAssetSkeleton>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = (v3[4] + 112 * v4);
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  v5[1] = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = 0;
  v7 = a2[3];
  v5[2] = a2[2];
  v5[3] = v7;
  a2[2] = 0;
  a2[3] = 0;
  v8 = v5[4];
  v5[4] = a2[4];
  a2[4] = v8;
  v5[5] = 0;
  v5[6] = 0;
  v5[7] = 0;
  v9 = a2[6];
  v5[5] = a2[5];
  v5[6] = v9;
  a2[5] = 0;
  a2[6] = 0;
  v10 = v5[7];
  v5[7] = a2[7];
  a2[7] = v10;
  v5[8] = 0;
  v5[9] = 0;
  v5[10] = 0;
  v11 = a2[9];
  v5[8] = a2[8];
  v5[9] = v11;
  a2[8] = 0;
  a2[9] = 0;
  v12 = v5[10];
  v5[10] = a2[10];
  a2[10] = v12;
  v5[11] = 0;
  v5[12] = 0;
  v5[13] = 0;
  v13 = a2[12];
  v5[11] = a2[11];
  v5[12] = v13;
  a2[11] = 0;
  a2[12] = 0;
  v14 = v5[13];
  v5[13] = a2[13];
  a2[13] = v14;
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkeleton>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshAssetSkeleton>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkeleton>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::MeshAssetSkeleton>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::MeshAssetSkeleton>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshAssetSkeleton>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::MeshAssetSkeleton>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 112 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 112;
        v11 -= 112;
      }

      while (v11);
    }
  }
}

void re::DynamicArray<re::MeshAssetSkeleton>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 112 * v2;
    do
    {
      re::FixedArray<CoreIKTransform>::deinit(v3 + 11);
      re::FixedArray<CoreIKTransform>::deinit(v3 + 8);
      re::FixedArray<CoreIKTransform>::deinit(v3 + 5);
      re::FixedArray<re::StringID>::deinit(v3 + 2);
      re::StringID::destroyString(v3);
      v3 += 14;
      v4 -= 112;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkeleton>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 112 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkeleton>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkeleton>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 112 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkeleton>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MeshAssetBlendShapeData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshAssetBlendShapeData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshAssetBlendShapeData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshAssetBlendShapeData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshAssetBlendShapeData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MeshAssetBlendShapeData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshAssetBlendShapeData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::MeshAssetBlendShapeData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshAssetBlendShapeData>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11[0] = 0;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v11[1] = &str_67;
  re::DynamicArray<re::MeshAssetBlendShapeData>::add(this, v11);
  v8 = re::FixedArray<re::BlendShapeDefinition>::deinit(v12);
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  v9 = (*(this + 4) + 56 * *(this + 2) - 56);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::MeshAssetBlendShapeData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 56 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 56 * a3;
}

void *re::DynamicArray<re::MeshAssetBlendShapeData>::add(void *this, uint64_t *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::MeshAssetBlendShapeData>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 56 * v4;
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 8) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  v7 = a2[3];
  *(v5 + 16) = a2[2];
  *(v5 + 24) = v7;
  a2[2] = 0;
  a2[3] = 0;
  v8 = *(v5 + 32);
  *(v5 + 32) = a2[4];
  a2[4] = v8;
  *(v5 + 40) = a2[5];
  *(v5 + 48) = *(a2 + 24);
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

void *re::DynamicArray<re::MeshAssetBlendShapeData>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::MeshAssetBlendShapeData>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MeshAssetBlendShapeData>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBlendShapeData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshAssetBlendShapeData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBlendShapeData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::MeshAssetBlendShapeData>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshAssetBlendShapeData>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::MeshAssetBlendShapeData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 56 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 56;
        v11 -= 56;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBlendShapeData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 56 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBlendShapeData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBlendShapeData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 56 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBlendShapeData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MeshAssetSkinningData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshAssetSkinningData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshAssetSkinningData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshAssetSkinningData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshAssetSkinningData>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshAssetSkinningData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::MeshAssetSkinningData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshAssetSkinningData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::MeshAssetSkinningData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshAssetSkinningData>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11 = 0xFFFFFFFFLL;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  v8 = re::DynamicArray<re::MeshAssetSkinningData>::add(this, &v11);
  if (v15)
  {
    if (*(&v15 + 1))
    {
      (*(*v15 + 40))(v8);
      *(&v15 + 1) = 0;
      *&v16 = 0;
    }

    *&v15 = 0;
  }

  if (*(&v13 + 1))
  {
    if (v14)
    {
      (*(**(&v13 + 1) + 40))(v8);
      v14 = 0uLL;
    }

    *(&v13 + 1) = 0;
  }

  if (v12 && *(&v12 + 1))
  {
    (*(*v12 + 40))(v8);
  }

  v9 = (*(this + 4) + 144 * *(this + 2) - 144);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::MeshAssetSkinningData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 144 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 144 * a3;
}

void *re::DynamicArray<re::MeshAssetSkinningData>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 144 * a2 + 56;
    v9 = a2;
    do
    {
      v10 = (v3[4] + v8);
      re::FixedArray<CoreIKTransform>::deinit(v10);
      re::FixedArray<CoreIKTransform>::deinit(v10 - 3);
      result = re::FixedArray<CoreIKTransform>::deinit(v10 - 6);
      ++v9;
      v8 += 144;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::MeshAssetSkinningData>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 144 * v4;
      do
      {
        v7 = v3[4] + v6;
        *v7 = -1;
        *(v7 + 8) = 0uLL;
        *(v7 + 24) = 0uLL;
        *(v7 + 40) = 0uLL;
        *(v7 + 56) = 0uLL;
        *(v7 + 72) = 0uLL;
        *(v7 + 88) = 0uLL;
        *(v7 + 104) = 0uLL;
        *(v7 + 120) = 0uLL;
        *(v7 + 136) = 0;
        v6 += 144;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkinningData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshAssetSkinningData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkinningData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::MeshAssetSkinningData>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::MeshAssetSkinningData>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshAssetSkinningData>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::MeshAssetSkinningData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 144 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 144;
        v11 -= 144;
      }

      while (v11);
    }
  }
}

uint64_t re::DynamicArray<re::MeshAssetSkinningData>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = 144 * v2;
    v4 = (*(result + 32) + 56);
    do
    {
      re::FixedArray<CoreIKTransform>::deinit(v4);
      re::FixedArray<CoreIKTransform>::deinit(v4 - 3);
      result = re::FixedArray<CoreIKTransform>::deinit(v4 - 6);
      v4 += 18;
      v3 -= 144;
    }

    while (v3);
  }

  ++*(v1 + 24);
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkinningData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 144 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkinningData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkinningData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 144 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkinningData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MeshAssetPart>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshAssetPart>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshAssetPart>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshAssetPart>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshAssetPart>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshAssetPart>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::MeshAssetPart>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshAssetPart>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::MeshAssetPart>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshAssetPart>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0uLL;
  v17 = 0;
  v26 = 0u;
  memset(v24, 0, sizeof(v24));
  memset(v12, 0, sizeof(v12));
  BYTE12(v13) = 1;
  DWORD1(v14) = 1;
  WORD4(v14) = -1;
  v16 = &str_67;
  v8.i64[0] = 0x7F0000007FLL;
  v8.i64[1] = 0x7F0000007FLL;
  v18 = vnegq_f32(v8);
  v19 = v8;
  v25 = 0x7FFFFFFF00000000;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  re::DynamicArray<re::MeshAssetPart>::add(this, v12);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v24[8]);
  if (BYTE8(v15))
  {
    if (BYTE8(v15))
    {
    }
  }

  *(&v15 + 1) = 0;
  v16 = &str_67;
  re::DynamicArray<re::MeshAssetBuffer>::deinit(v12);
  v10 = (*(this + 4) + (*(this + 2) << 8) - 256);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v10);
  return v10;
}

uint64_t re::IntrospectionDynamicArray<re::MeshAssetPart>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 8);
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 8);
}

void *re::DynamicArray<re::MeshAssetPart>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v10 = a2 << 8;
    v11 = a2;
    do
    {
      v12 = v3[4] + v10;
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v12 + 200));
      re::StringID::destroyString((v12 + 72));
      result = re::DynamicArray<re::MeshAssetBuffer>::deinit(v12);
      ++v11;
      v10 += 256;
    }

    while (v11 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::MeshAssetPart>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = (v4 << 8) | 0x80;
      v7.i64[0] = 0x7F0000007FLL;
      v7.i64[1] = 0x7F0000007FLL;
      v8 = vnegq_f32(v7);
      do
      {
        v9 = v3[4] + v6;
        *(v9 - 96) = 0;
        *(v9 - 120) = 0;
        *(v9 - 112) = 0;
        *(v9 - 128) = 0;
        *(v9 - 104) = 0;
        *(v9 - 88) = 0;
        *(v9 - 84) = 1;
        *(v9 - 80) = 0x100000000;
        *(v9 - 72) = -1;
        *(v9 - 68) = 0;
        *(v9 - 56) = 0;
        *(v9 - 48) = &str_67;
        *(v9 - 32) = v8;
        *(v9 - 16) = v7;
        *(v9 + 66) = 0;
        *(v9 + 68) = 0;
        *v9 = 0uLL;
        *(v9 + 16) = 0uLL;
        *(v9 + 32) = 0uLL;
        *(v9 + 48) = 0uLL;
        *(v9 + 64) = 0;
        *(v9 + 104) = 0uLL;
        *(v9 + 88) = 0uLL;
        *(v9 + 72) = 0uLL;
        v6 += 256;
        *(v9 + 108) = 0x7FFFFFFF;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetPart>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshAssetPart>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetPart>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::MeshAssetPart>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::MeshAssetPart>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshAssetPart>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::MeshAssetPart>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = v9 << 8;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 256;
        v11 -= 256;
      }

      while (v11);
    }
  }
}

uint64_t re::DynamicArray<re::MeshAssetPart>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = v2 << 8;
    do
    {
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v3 + 200));
      re::StringID::destroyString((v3 + 72));
      result = re::DynamicArray<re::MeshAssetBuffer>::deinit(v3);
      v3 += 256;
      v4 -= 256;
    }

    while (v4);
  }

  ++*(v1 + 24);
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetPart>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + (a2 << 8);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetPart>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetPart>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + (v5 << 8);
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetPart>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MeshLodLevelInfo>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshLodLevelInfo>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshLodLevelInfo>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshLodLevelInfo>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshLodLevelInfo>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshLodLevelInfo>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::MeshLodLevelInfo>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshLodLevelInfo>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::MeshLodLevelInfo>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshLodLevelInfo>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  re::DynamicArray<re::MeshLodLevelInfo>::add(this, v10);
  if (*(&v10[0] + 1) && *(&v11 + 1))
  {
    (*(**(&v10[0] + 1) + 40))();
  }

  v8 = (*(this + 4) + 48 * *(this + 2) - 48);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::MeshLodLevelInfo>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 48 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 48 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshLodLevelInfo>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshLodLevelInfo>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshLodLevelInfo>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::MeshLodLevelInfo>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::MeshLodLevelInfo>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshLodLevelInfo>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::MeshLodLevelInfo>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 48 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 48;
        v11 -= 48;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshLodLevelInfo>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 48 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshLodLevelInfo>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshLodLevelInfo>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 48 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshLodLevelInfo>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MeshAssetContactDeformerData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshAssetContactDeformerData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshAssetContactDeformerData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshAssetContactDeformerData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshAssetContactDeformerData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MeshAssetContactDeformerData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshAssetContactDeformerData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::MeshAssetContactDeformerData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshAssetContactDeformerData>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11[0] = 0;
  memset(v12, 0, sizeof(v12));
  v11[1] = &str_67;
  re::DynamicArray<re::MeshAssetContactDeformerData>::add(this, v11);
  v8 = re::FixedArray<re::MeshAssetContactDeformerTarget>::deinit(v12);
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  v9 = (*(this + 4) + 48 * *(this + 2) - 48);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::MeshAssetContactDeformerData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 48 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 48 * a3;
}

void *re::DynamicArray<re::MeshAssetContactDeformerData>::add(void *this, uint64_t *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::MeshAssetContactDeformerData>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 48 * v4;
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 8) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  v7 = a2[3];
  *(v5 + 16) = a2[2];
  *(v5 + 24) = v7;
  a2[2] = 0;
  a2[3] = 0;
  v8 = *(v5 + 32);
  *(v5 + 32) = a2[4];
  a2[4] = v8;
  *(v5 + 40) = *(a2 + 20);
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

void *re::DynamicArray<re::MeshAssetContactDeformerData>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::MeshAssetContactDeformerData>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MeshAssetContactDeformerData>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetContactDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshAssetContactDeformerData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetContactDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::MeshAssetContactDeformerData>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshAssetContactDeformerData>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::MeshAssetContactDeformerData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 48 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 48;
        v11 -= 48;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetContactDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 48 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetContactDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetContactDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 48 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetContactDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MeshAssetSmoothDeformerData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshAssetSmoothDeformerData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshAssetSmoothDeformerData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshAssetSmoothDeformerData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshAssetSmoothDeformerData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MeshAssetSmoothDeformerData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshAssetSmoothDeformerData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::MeshAssetSmoothDeformerData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshAssetSmoothDeformerData>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11[0] = 0;
  v11[1] = &str_67;
  v11[2] = 0;
  v8 = re::DynamicArray<re::MeshAssetSmoothDeformerData>::add(this, v11);
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  v9 = (*(this + 4) + 24 * *(this + 2) - 24);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::MeshAssetSmoothDeformerData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 24 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 24 * a3;
}

void *re::DynamicArray<re::MeshAssetSmoothDeformerData>::add(void *this, uint64_t *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::MeshAssetSmoothDeformerData>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 24 * v4;
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 8) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  *(v5 + 16) = *(a2 + 8);
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

void *re::DynamicArray<re::MeshAssetSmoothDeformerData>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::MeshAssetSmoothDeformerData>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MeshAssetSmoothDeformerData>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSmoothDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshAssetSmoothDeformerData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSmoothDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::MeshAssetSmoothDeformerData>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshAssetSmoothDeformerData>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::MeshAssetSmoothDeformerData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 24 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 24;
        v11 -= 24;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSmoothDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 24 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSmoothDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSmoothDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 24 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSmoothDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MeshAssetWrapDeformerData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshAssetWrapDeformerData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshAssetWrapDeformerData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshAssetWrapDeformerData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshAssetWrapDeformerData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MeshAssetWrapDeformerData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshAssetWrapDeformerData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::MeshAssetWrapDeformerData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshAssetWrapDeformerData>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11[0] = 0;
  v12 = 0;
  v17 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v11[1] = &str_67;
  v13 = &str_67;
  v18 = 0uLL;
  re::DynamicArray<re::MeshAssetWrapDeformerData>::add(this, v11);
  if (v17)
  {
    if (*(&v17 + 1))
    {
      (*(*v17 + 40))();
      *(&v17 + 1) = 0;
      *&v18 = 0;
    }

    *&v17 = 0;
  }

  if (*(&v15 + 1))
  {
    if (v16)
    {
      (*(**(&v15 + 1) + 40))();
      v16 = 0uLL;
    }

    *(&v15 + 1) = 0;
  }

  v8 = v14;
  if (v14)
  {
    if (*(&v14 + 1))
    {
      v8 = (*(*v14 + 40))();
      *(&v14 + 1) = 0;
      *&v15 = 0;
    }

    *&v14 = 0;
  }

  if (v12)
  {
    if (v12)
    {
    }
  }

  v12 = 0;
  v13 = &str_67;
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  v9 = (*(this + 4) + 112 * *(this + 2) - 112);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::MeshAssetWrapDeformerData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 112 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 112 * a3;
}

void *re::DynamicArray<re::MeshAssetWrapDeformerData>::add(void *this, uint64_t *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::MeshAssetWrapDeformerData>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 112 * v4;
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 8) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v7 = a2[2];
  *(v5 + 16) = *(v5 + 16) & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  *(v5 + 16) = a2[2] & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  *(v5 + 24) = a2[3];
  a2[2] = 0;
  a2[3] = &str_67;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  v8 = a2[5];
  *(v5 + 32) = a2[4];
  *(v5 + 40) = v8;
  a2[4] = 0;
  a2[5] = 0;
  v9 = *(v5 + 48);
  *(v5 + 48) = a2[6];
  a2[6] = v9;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  v10 = a2[8];
  *(v5 + 56) = a2[7];
  *(v5 + 64) = v10;
  a2[7] = 0;
  a2[8] = 0;
  v11 = *(v5 + 72);
  *(v5 + 72) = a2[9];
  a2[9] = v11;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  *(v5 + 96) = 0;
  v12 = a2[11];
  *(v5 + 80) = a2[10];
  *(v5 + 88) = v12;
  a2[10] = 0;
  a2[11] = 0;
  v13 = *(v5 + 96);
  *(v5 + 96) = a2[12];
  a2[12] = v13;
  *(v5 + 104) = *(a2 + 52);
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

void *re::DynamicArray<re::MeshAssetWrapDeformerData>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::MeshAssetWrapDeformerData>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MeshAssetWrapDeformerData>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetWrapDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshAssetWrapDeformerData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetWrapDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::MeshAssetWrapDeformerData>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshAssetWrapDeformerData>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::MeshAssetWrapDeformerData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 112 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 112;
        v11 -= 112;
      }

      while (v11);
    }
  }
}

void re::DynamicArray<re::MeshAssetWrapDeformerData>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 112 * v2;
    do
    {
      re::FixedArray<CoreIKTransform>::deinit(v3 + 10);
      re::FixedArray<CoreIKTransform>::deinit(v3 + 7);
      re::FixedArray<CoreIKTransform>::deinit(v3 + 4);
      re::StringID::destroyString((v3 + 2));
      re::StringID::destroyString(v3);
      v3 += 14;
      v4 -= 112;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetWrapDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 112 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetWrapDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetWrapDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 112 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetWrapDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MeshAssetOffsetsDeformerData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshAssetOffsetsDeformerData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshAssetOffsetsDeformerData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshAssetOffsetsDeformerData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshAssetSmoothDeformerData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MeshAssetOffsetsDeformerData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshAssetSmoothDeformerData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::MeshAssetSmoothDeformerData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshAssetOffsetsDeformerData>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11[0] = 0;
  v11[1] = &str_67;
  v11[2] = 0;
  v8 = re::DynamicArray<re::MeshAssetSmoothDeformerData>::add(this, v11);
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  v9 = (*(this + 4) + 24 * *(this + 2) - 24);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::MeshAssetOffsetsDeformerData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 24 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 24 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetOffsetsDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshAssetSmoothDeformerData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetOffsetsDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::MeshAssetSmoothDeformerData>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshAssetSmoothDeformerData>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::MeshAssetSmoothDeformerData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 24 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 24;
        v11 -= 24;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetOffsetsDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 24 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetOffsetsDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetOffsetsDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 24 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetOffsetsDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::DynamicArray<unsigned int>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::DynamicArray<unsigned int>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::DynamicArray<unsigned int>>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::DynamicArray<unsigned int>>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::DynamicArray<unsigned int>>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::DynamicArray<float>>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::DynamicArray<unsigned int>>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v12 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  re::DynamicArray<re::DynamicArray<unsigned int>>::add(this, v10);
  if (v10[0] && v12)
  {
    (*(*v10[0] + 40))();
  }

  v8 = (*(this + 4) + 40 * *(this + 2) - 40);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::DynamicArray<unsigned int>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 40 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 40 * a3;
}

void *re::DynamicArray<re::DynamicArray<unsigned int>>::add(void *this, uint64_t a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::DynamicArray<unsigned int>>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 40 * v4;
  *(v5 + 32) = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *v5 = 0;
  *(v5 + 24) = 0;
  v6 = *(a2 + 8);
  *v5 = *a2;
  *(v5 + 8) = v6;
  *a2 = 0;
  *(a2 + 8) = 0;
  v7 = *(v5 + 16);
  *(v5 + 16) = *(a2 + 16);
  *(a2 + 16) = v7;
  v8 = *(v5 + 32);
  *(v5 + 32) = *(a2 + 32);
  *(a2 + 32) = v8;
  ++*(a2 + 24);
  ++*(v5 + 24);
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

void *re::DynamicArray<re::DynamicArray<unsigned int>>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned int>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned int>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::DynamicArray<unsigned int>>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::DynamicArray<float>>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 40 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 40;
        v11 -= 40;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned int>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 40 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned int>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned int>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 40 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned int>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::DynamicArray<unsigned char>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::DynamicArray<unsigned char>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::DynamicArray<unsigned char>>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::DynamicArray<unsigned char>>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::DynamicArray<unsigned char>>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::DynamicArray<float>>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::DynamicArray<unsigned char>>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v12 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  re::DynamicArray<re::DynamicArray<unsigned int>>::add(this, v10);
  if (v10[0] && v12)
  {
    (*(*v10[0] + 40))();
  }

  v8 = (*(this + 4) + 40 * *(this + 2) - 40);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::DynamicArray<unsigned char>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 40 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 40 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::DynamicArray<unsigned int>>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::DynamicArray<float>>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 40 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 40;
        v11 -= 40;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 40 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 40 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MeshAsssetModelVVMTableOfContents>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshAsssetModelVVMTableOfContents>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshAsssetModelVVMTableOfContents>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshAsssetModelVVMTableOfContents>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::MeshAsssetModelVVMTableOfContents>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshAsssetModelVVMTableOfContents>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v8 = 0uLL;
  v24 = 0u;
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  v20 = 0u;
  v21 = 0u;
  memset(v19, 0, sizeof(v19));
  v9 = *(a4 + 8);
  v10 = *(a4 + 16);
  if (v10 >= v9)
  {
    v11 = v10 + 1;
    if (v9 < v10 + 1)
    {
      if (*a4)
      {
        v12 = 2 * v9;
        v13 = v9 == 0;
        v14 = 8;
        if (!v13)
        {
          v14 = v12;
        }

        if (v14 <= v11)
        {
          v15 = v11;
        }

        else
        {
          v15 = v14;
        }

        re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::setCapacity(a4, v15);
      }

      else
      {
        re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::setCapacity(a4, v11);
        ++*(a4 + 24);
      }

      v8 = 0uLL;
    }

    v10 = *(a4 + 16);
  }

  v16 = *(a4 + 32) + 208 * v10;
  *v16 = 0;
  *(v16 + 8) = v8;
  *(v16 + 24) = 0;
  *(v16 + 40) = 0;
  *(v16 + 32) = 1;
  *(v16 + 48) = v8;
  *(v16 + 64) = 0;
  *(v16 + 80) = 0;
  *(v16 + 72) = 1;
  *(v16 + 88) = v8;
  *(v19 + 8) = v8;
  *(v16 + 104) = 0;
  *(&v19[1] + 1) = 0;
  *(v16 + 120) = 0;
  *(&v20 + 1) = 0;
  LODWORD(v20) = 1;
  *(v16 + 112) = 1;
  *(v16 + 128) = v8;
  v21 = v8;
  *(v16 + 144) = 0;
  *&v22 = 0;
  *(v16 + 160) = 0;
  *&v23[0] = 0;
  DWORD2(v22) = 1;
  *(v16 + 152) = 1;
  *(v16 + 168) = v8;
  *(v23 + 8) = v8;
  *(v16 + 184) = *(&v23[1] + 1);
  *(&v23[1] + 1) = 0;
  *(v16 + 200) = *(&v24 + 1);
  *(&v24 + 1) = 0;
  LODWORD(v24) = v24 + 1;
  *(v16 + 192) = 1;
  ++*(a4 + 16);
  ++*(a4 + 24);
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v23 + 8);
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(&v21);
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v19 + 8);
  v17 = (*(a4 + 32) + 208 * *(a4 + 16) - 208);
  re::introspectionInitElement(a2, a3, a1[6], v17);
  return v17;
}

uint64_t re::IntrospectionDynamicArray<re::MeshAsssetModelVVMTableOfContents>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 208 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 208 * a3;
}

void *re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 208 * a2 + 168;
    v9 = a2;
    do
    {
      v10 = v3[4] + v8;
      re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v10);
      re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v10 - 40);
      re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v10 - 80);
      re::DynamicArray<unsigned long>::deinit(v10 - 120);
      result = re::DynamicArray<unsigned long>::deinit(v10 - 160);
      ++v9;
      v8 += 208;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 208 * v4 + 200;
      do
      {
        v7 = (v3[4] + v6);
        *(v7 - 50) = 0;
        *(v7 - 23) = 0;
        *(v7 - 22) = 0;
        *(v7 - 24) = 0;
        *(v7 - 42) = 0;
        *v7 = 0;
        *(v7 - 10) = 0uLL;
        *(v7 - 9) = 0uLL;
        *(v7 - 32) = 0;
        *(v7 - 15) = 0uLL;
        *(v7 - 13) = 0uLL;
        *(v7 - 22) = 0;
        *(v7 - 5) = 0uLL;
        *(v7 - 4) = 0uLL;
        *(v7 - 12) = 0;
        *(v7 - 5) = 0uLL;
        *(v7 - 3) = 0uLL;
        v6 += 208;
        *(v7 - 2) = 0;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshAsssetModelVVMTableOfContents>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshAsssetModelVVMTableOfContents>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 208 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 208;
        v11 -= 208;
      }

      while (v11);
    }
  }
}

uint64_t re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = 208 * v2;
    v4 = *(result + 32) + 168;
    do
    {
      re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v4);
      re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v4 - 40);
      re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v4 - 80);
      re::DynamicArray<unsigned long>::deinit(v4 - 120);
      result = re::DynamicArray<unsigned long>::deinit(v4 - 160);
      v4 += 208;
      v3 -= 208;
    }

    while (v3);
  }

  ++*(v1 + 24);
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAsssetModelVVMTableOfContents>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 208 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAsssetModelVVMTableOfContents>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAsssetModelVVMTableOfContents>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 208 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAsssetModelVVMTableOfContents>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MeshAssetModel>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshAssetModel>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshAssetModel>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshAssetModel>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshAssetModel>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshAssetModel>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MeshAssetModel>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshAssetModel>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::MeshAssetModel>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshAssetModel>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v23 = 0;
  v13[0] = 0;
  v13[1] = &str_67;
  v8.i64[0] = 0x7F0000007FLL;
  v8.i64[1] = 0x7F0000007FLL;
  v14 = vnegq_f32(v8);
  v15 = v8;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  memset(v22, 0, sizeof(v22));
  memset(v24, 0, sizeof(v24));
  v9 = *(this + 2);
  if (v9 >= *(this + 1))
  {
    re::DynamicArray<re::MeshAssetModel>::growCapacity(this, v9 + 1);
    v9 = *(this + 2);
  }

  re::MeshAssetModel::MeshAssetModel(*(this + 4) + (v9 << 9), v13);
  ++*(this + 2);
  ++*(this + 6);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(&v24[36]);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v24[31]);
  re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(&v24[26]);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v24[21]);
  re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(&v24[16]);
  re::DynamicArray<re::MeshLodLevelInfo>::deinit(&v24[11]);
  re::DynamicArray<re::MeshAssetSkeleton>::deinit(&v24[6]);
  re::DynamicArray<re::MeshAssetPart>::deinit(&v24[1]);
  re::DynamicArray<re::MeshAssetSkinningData>::deinit(v22 + 8);
  v10 = re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(v20);
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  v11 = (*(this + 4) + (*(this + 2) << 9) - 512);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v11);
  return v11;
}

uint64_t re::IntrospectionDynamicArray<re::MeshAssetModel>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 9);
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 9);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetModel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshAssetModel>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetModel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    re::ObjectHelper::destroy<re::MeshAssetModel>(*(a1 + 32), (*(a1 + 32) + (v8 << 9)));
  }

  else
  {
    re::DynamicArray<re::MeshAssetModel>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshAssetModel>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::MeshAssetModel>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v14);
    re::TypeInfo::TypeInfo(v13, &v15);
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = v10 << 9;
      do
      {
        re::TypeInfo::destruct(v13, v11, a3, 0);
        re::TypeInfo::construct(v13, v11, a3, 0);
        v11 += 512;
        v12 -= 512;
      }

      while (v12);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetModel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + (a2 << 9);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetModel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetModel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + (v5 << 9);
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetModel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MeshAssetInstance>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshAssetInstance>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshAssetInstance>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshAssetInstance>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshAssetInstance>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshAssetInstance>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MeshAssetInstance>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshAssetInstance>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::MeshAssetInstance>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshAssetInstance>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v11[0].n128_u64[0] = 0;
  memset(&v11[1], 0, 80);
  v11[0].n128_u64[1] = &str_67;
  re::DynamicArray<re::MeshAssetInstance>::add(this, v11);
  if (v11[0].n128_u8[0])
  {
    if (v11[0].n128_u8[0])
    {
    }
  }

  v9 = (*(this + 4) + 96 * *(this + 2) - 96);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::MeshAssetInstance>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 96 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 96 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetInstance>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshAssetInstance>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetInstance>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::MeshAssetInstance>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::MeshAssetInstance>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshAssetInstance>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::MeshAssetInstance>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 96 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 96;
        v11 -= 96;
      }

      while (v11);
    }
  }
}

void re::DynamicArray<re::MeshAssetInstance>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 96 * v2;
    do
    {
      re::StringID::destroyString(v3);
      v3 = (v3 + 96);
      v4 -= 96;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetInstance>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 96 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetInstance>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetInstance>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 96 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetInstance>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t re::DynamicArray<re::MeshAssetModel>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::MeshAssetModel>::copy(a1, a2);
      }

      else
      {
        v6 = *(a1 + 16);
        *(a1 + 16) = 0;
        re::ObjectHelper::destroy<re::MeshAssetModel>(*(a1 + 32), (*(a1 + 32) + (v6 << 9)));
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::MeshAssetModel>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::MeshAssetModel>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::MeshAssetInstance>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::MeshAssetInstance>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::MeshAssetInstance>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::MeshAssetInstance>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::MeshAssetInstance>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t *std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetSkeleton const*,re::MeshAssetSkeleton const*,re::MeshAssetSkeleton*>(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      re::StringID::operator=((a3 + v6 * 8), &v5[v6]);
      re::FixedArray<re::StringID>::operator=((a3 + v6 * 8 + 16), &v5[v6 + 2]);
      re::FixedArray<unsigned int>::operator=((a3 + v6 * 8 + 40), &v5[v6 + 5]);
      re::FixedArray<re::GenericSRT<float>>::operator=((a3 + v6 * 8 + 64), &v5[v6 + 8]);
      result = re::FixedArray<re::Matrix4x4<float>>::operator=((a3 + v6 * 8 + 88), &v5[v6 + 11]);
      v6 += 14;
    }

    while (&v5[v6] != a2);
  }

  return result;
}

void *re::BucketArray<unsigned short *,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<unsigned short *,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<unsigned short *,32ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 32 * a2)
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
          result = (*(**v3 + 32))(*v3, 256, 0);
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

uint64_t *re::VideoFileAsset::assetType(re::VideoFileAsset *this)
{
  {
    re::VideoFileAsset::assetType(void)::type = "VideoFile";
    qword_1EE1C70C8 = 0;
    re::AssetType::generateCompiledExtension(&re::VideoFileAsset::assetType(void)::type);
  }

  return &re::VideoFileAsset::assetType(void)::type;
}

re::VideoFileAsset *re::VideoFileAsset::VideoFileAsset(re::VideoFileAsset *this)
{
  *this = &unk_1F5CC75C8;
  *(this + 8) = 0u;
  v2 = (this + 8);
  *(this + 24) = 0u;
  v3 = re::DynamicString::setCapacity(v2, 0);
  v4 = re::globalAllocators(v3);
  v5 = (*(*v4[2] + 32))(v4[2], 32, 8);
  *v5 = 0u;
  v5[1] = 0u;
  *(this + 5) = v5;
  return this;
}