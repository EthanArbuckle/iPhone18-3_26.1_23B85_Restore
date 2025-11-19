uint64_t *re::SkeletonAsset::assetType(re::SkeletonAsset *this)
{
  {
    re::SkeletonAsset::assetType(void)::type = "Skeleton";
    qword_1EE1C7140 = 0;
    re::AssetType::generateCompiledExtension(&re::SkeletonAsset::assetType(void)::type);
  }

  return &re::SkeletonAsset::assetType(void)::type;
}

uint64_t re::SkeletonAsset::SkeletonAsset(uint64_t a1, const StringID *a2)
{
  v4 = re::StringID::StringID(a1, a2);
  re::FixedArray<re::StringID>::FixedArray(v4 + 2, &a2[1]);
  re::FixedArray<unsigned int>::FixedArray((a1 + 40), &a2[2].var1);
  re::FixedArray<re::GenericSRT<float>>::FixedArray((a1 + 64), &a2[4]);
  *(a1 + 88) = 0;
  *(a1 + 96) = &str_67;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 260) = 0x7FFFFFFFLL;
  return a1;
}

double re::SkeletonAsset::SkeletonAsset(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a1 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *a1 = *a2 & 0xFFFFFFFFFFFFFFFELL | v2 & 1;
  *(a1 + 8) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v3 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v3;
  a2[2] = 0;
  a2[3] = 0;
  v4 = *(a1 + 32);
  *(a1 + 32) = a2[4];
  a2[4] = v4;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v5 = a2[6];
  *(a1 + 40) = a2[5];
  *(a1 + 48) = v5;
  a2[5] = 0;
  a2[6] = 0;
  v6 = *(a1 + 56);
  *(a1 + 56) = a2[7];
  a2[7] = v6;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v7 = a2[9];
  *(a1 + 64) = a2[8];
  *(a1 + 72) = v7;
  a2[8] = 0;
  a2[9] = 0;
  v8 = *(a1 + 80);
  *(a1 + 80) = a2[10];
  a2[10] = v8;
  *(a1 + 88) = 0;
  *(a1 + 96) = &str_67;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 260) = 0x7FFFFFFFLL;
  return result;
}

uint64_t re::SkeletonAssetLoader::introspectionType(re::SkeletonAssetLoader *this)
{
  v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v3)
    {
      re::introspect<re::SkeletonAsset>(BOOL)::info = re::internal::getOrCreateInfo("SkeletonAsset", re::allocInfo_SkeletonAsset, re::initInfo_SkeletonAsset, &re::internal::introspectionInfoStorage<re::SkeletonAsset>, 0);
      v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v1 + 328);
}

uint64_t re::SkeletonAssetLoader::allocateSampleAsset(re::SkeletonAssetLoader *this)
{
  v31 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  *v13 = 0u;
  v1 = re::internal::compileTimeHornerHash<15ul>(31, "SampleSkeleton", 0, 0, 14);
  *&v11.var0 = 2 * v1;
  v11.var1 = "SampleSkeleton";
  if (!*(&v12 + 1))
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
    v21 = 468;
    v22 = 2048;
    v23 = 0;
    v24 = 2048;
    v25 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v4 = v13[0];
  re::StringID::destroyString(v13[0]);
  v5 = re::internal::compileTimeHornerHash<12ul>(0, 0, 11);
  *v4 = 2 * v5;
  *(v4 + 1) = "SampleJoint";
  if (!v14)
  {
LABEL_17:
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
    v21 = 468;
    v22 = 2048;
    v23 = 0;
    v24 = 2048;
    v25 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_18:
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
    v21 = 468;
    v22 = 2048;
    v23 = 0;
    v24 = 2048;
    v25 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  **(&v14 + 1) = -1;
  if (!*(&v15 + 1))
  {
    goto LABEL_18;
  }

  v6 = v16;
  v16[1] = 0u;
  v6[2] = 0u;
  *v6 = 0u;
  v7 = re::globalAllocators(v5);
  v8 = (*(*v7[2] + 32))(v7[2], 272, 8);
  re::SkeletonAsset::SkeletonAsset(v8, &v11);
  if (v15)
  {
    if (*(&v15 + 1))
    {
      (*(*v15 + 40))();
      *(&v15 + 1) = 0;
      v16 = 0;
    }

    *&v15 = 0;
  }

  if (v13[1])
  {
    if (v14)
    {
      (*(*v13[1] + 40))();
      v14 = 0uLL;
    }

    v13[1] = 0;
  }

  v9 = re::FixedArray<re::StringID>::deinit(&v12);
  if (*&v11.var0)
  {
    if (*&v11.var0)
    {
    }
  }

  return v8;
}

uint64_t re::SkeletonAssetLoader::createRuntimeData(re *a1, uint64_t *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = re::globalAllocators(a1)[2];
  if (a2[13])
  {
    re::Skeleton::deinit((a2 + 11));
  }

  v4 = a2[3];
  *&buf = a2[4];
  *(&buf + 1) = v4;
  v5 = a2[6];
  v17[0] = a2[7];
  v17[1] = v5;
  v6 = a2[9];
  v16[0] = a2[10];
  v16[1] = v6;
  re::Skeleton::init(a2 + 11, v3, a2, &buf, v17, v16, v12);
  v8 = v12[0];
  if ((v12[0] & 1) == 0)
  {
    v9 = *re::assetTypesLogObjects(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      if (v14)
      {
        v11 = *&v15[7];
      }

      else
      {
        v11 = v15;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v11;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Invalid skeleton data: %s", &buf, 0xCu);
    }
  }

  if (v12[0] & 1) == 0 && v13 && (v14)
  {
    (*(*v13 + 40))();
  }

  return v8;
}

uint64_t *re::SkeletonAssetLoader::unloadAsset(re::SkeletonAssetLoader *this, uint64_t *a2)
{
  result = re::globalAllocators(this);
  if (a2)
  {
    v4 = result[2];
    re::Skeleton::~Skeleton((a2 + 11));
    re::FixedArray<CoreIKTransform>::deinit(a2 + 8);
    re::FixedArray<CoreIKTransform>::deinit(a2 + 5);
    re::FixedArray<re::StringID>::deinit(a2 + 2);
    re::StringID::destroyString(a2);
    v5 = *(*v4 + 40);

    return v5(v4, a2);
  }

  return result;
}

void *re::allocInfo_SkeletonAssetData(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_96, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_96))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19A490, "SkeletonAssetData");
    __cxa_guard_release(&_MergedGlobals_96);
  }

  return &unk_1EE19A490;
}

void re::initInfo_SkeletonAssetData(re *this, re::IntrospectionBase *a2)
{
  v22[0] = 0x54F97D4E1DCB899ALL;
  v22[1] = "SkeletonAssetData";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE19A448, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19A448);
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
      qword_1EE19A470 = v9;
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
      qword_1EE19A478 = v13;
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
      qword_1EE19A480 = v17;
      v18 = re::introspectionAllocator(v17);
      v19 = re::IntrospectionInfo<re::FixedArray<re::GenericSRT<float>>>::get(1);
      v20 = (*(*v18 + 32))(v18, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "localRestPose";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x4000000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE19A488 = v20;
      __cxa_guard_release(&qword_1EE19A448);
    }
  }

  *(this + 2) = 0x5800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE19A470;
  *(this + 9) = re::internal::defaultConstruct<re::SkeletonAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SkeletonAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::SkeletonAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::SkeletonAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v21 = v23;
}

double re::internal::defaultConstruct<re::SkeletonAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0;
  return result;
}

void re::internal::defaultDestruct<re::SkeletonAssetData>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::FixedArray<CoreIKTransform>::deinit(a3 + 8);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 5);
  re::FixedArray<re::StringID>::deinit(a3 + 2);

  re::StringID::destroyString(a3);
}

double re::internal::defaultConstructV2<re::SkeletonAssetData>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = &str_67;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::SkeletonAssetData>(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1 + 8);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 5);
  re::FixedArray<re::StringID>::deinit(a1 + 2);

  re::StringID::destroyString(a1);
}

void *re::allocInfo_SkeletonAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19A468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19A468))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19A520, "SkeletonAsset");
    __cxa_guard_release(&qword_1EE19A468);
  }

  return &unk_1EE19A520;
}

void re::initInfo_SkeletonAsset(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0x646333CF3298B506;
  v12[1] = "SkeletonAsset";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE19A460, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19A460);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE19A450;
      if (!qword_1EE19A450)
      {
        v8 = re::allocInfo_SkeletonAssetData(v6);
        qword_1EE19A450 = v8;
        re::initInfo_SkeletonAssetData(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "m_skeletonAssetData";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 1;
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE19A458 = v10;
      __cxa_guard_release(&qword_1EE19A460);
    }
  }

  *(this + 2) = 0x11000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE19A458;
  *(this + 9) = re::internal::defaultConstruct<re::SkeletonAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SkeletonAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::SkeletonAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::SkeletonAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

double re::internal::defaultConstruct<re::SkeletonAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = &str_67;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 184) = 0u;
  *(a3 + 200) = 0u;
  *(a3 + 216) = 0u;
  *(a3 + 232) = 0u;
  *(a3 + 244) = 0u;
  *(a3 + 260) = 0x7FFFFFFFLL;
  return result;
}

void re::internal::defaultDestruct<re::SkeletonAsset>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::Skeleton::~Skeleton((a3 + 11));
  re::FixedArray<CoreIKTransform>::deinit(a3 + 8);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 5);
  re::FixedArray<re::StringID>::deinit(a3 + 2);

  re::StringID::destroyString(a3);
}

double re::internal::defaultConstructV2<re::SkeletonAsset>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = &str_67;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = &str_67;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 260) = 0x7FFFFFFFLL;
  return result;
}

void re::internal::defaultDestructV2<re::SkeletonAsset>(uint64_t *a1)
{
  re::Skeleton::~Skeleton((a1 + 11));
  re::FixedArray<CoreIKTransform>::deinit(a1 + 8);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 5);
  re::FixedArray<re::StringID>::deinit(a1 + 2);

  re::StringID::destroyString(a1);
}

uint64_t re::internal::compileTimeHornerHash<12ul>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a3 - a2;
  if (a3 - a2 > 4)
  {
    if (v5 > 7)
    {
      switch(v5)
      {
        case 8:
          v6 = 0xC694446F01 * a1 + 0x667E12CDFLL * aSamplejoint[a2] + 887503681 * aSamplejoint[a2 + 1] + 28629151 * aSamplejoint[a2 + 2] + 923521 * aSamplejoint[a2 + 3] + 29791 * aSamplejoint[a2 + 4] + 961 * aSamplejoint[a2 + 5] - aSamplejoint[a2 + 6] + 32 * aSamplejoint[a2 + 6];
          v4 = a2 + 7;
          return v6 + aSamplejoint[v4];
        case 9:
          v6 = 0x180BF449711FLL * a1 + 0xC694446F01 * aSamplejoint[a2] + 0x667E12CDFLL * aSamplejoint[a2 + 1] + 887503681 * aSamplejoint[a2 + 2] + 28629151 * aSamplejoint[a2 + 3] + 923521 * aSamplejoint[a2 + 4] + 29791 * aSamplejoint[a2 + 5] + 961 * aSamplejoint[a2 + 6] - aSamplejoint[a2 + 7] + 32 * aSamplejoint[a2 + 7];
          v4 = a2 + 8;
          return v6 + aSamplejoint[v4];
        case 10:
          v6 = 0x2E97294E4B2C1 * a1 + 0x180BF449711FLL * aSamplejoint[a2] + 0xC694446F01 * aSamplejoint[a2 + 1] + 0x667E12CDFLL * aSamplejoint[a2 + 2] + 887503681 * aSamplejoint[a2 + 3] + 28629151 * aSamplejoint[a2 + 4] + 923521 * aSamplejoint[a2 + 5] + 29791 * aSamplejoint[a2 + 6] + 961 * aSamplejoint[a2 + 7] - aSamplejoint[a2 + 8] + 32 * aSamplejoint[a2 + 8];
          v4 = a2 + 9;
          return v6 + aSamplejoint[v4];
      }
    }

    else
    {
      switch(v5)
      {
        case 5:
          v6 = 28629151 * a1 + 923521 * aSamplejoint[a2] + 29791 * aSamplejoint[a2 + 1] + 961 * aSamplejoint[a2 + 2] - aSamplejoint[a2 + 3] + 32 * aSamplejoint[a2 + 3];
          v4 = a2 + 4;
          return v6 + aSamplejoint[v4];
        case 6:
          v6 = 887503681 * a1 + 28629151 * aSamplejoint[a2] + 923521 * aSamplejoint[a2 + 1] + 29791 * aSamplejoint[a2 + 2] + 961 * aSamplejoint[a2 + 3] - aSamplejoint[a2 + 4] + 32 * aSamplejoint[a2 + 4];
          v4 = a2 + 5;
          return v6 + aSamplejoint[v4];
        case 7:
          v6 = 0x667E12CDFLL * a1 + 887503681 * aSamplejoint[a2] + 28629151 * aSamplejoint[a2 + 1] + 923521 * aSamplejoint[a2 + 2] + 29791 * aSamplejoint[a2 + 3] + 961 * aSamplejoint[a2 + 4] - aSamplejoint[a2 + 5] + 32 * aSamplejoint[a2 + 5];
          v4 = a2 + 6;
          return v6 + aSamplejoint[v4];
      }
    }

    goto LABEL_18;
  }

  if (v5 > 1)
  {
    switch(v5)
    {
      case 2:
        v6 = 961 * a1 - aSamplejoint[a2] + 32 * aSamplejoint[a2];
        v4 = a2 + 1;
        return v6 + aSamplejoint[v4];
      case 3:
        v6 = 29791 * a1 + 961 * aSamplejoint[a2] - aSamplejoint[a2 + 1] + 32 * aSamplejoint[a2 + 1];
        v4 = a2 + 2;
        return v6 + aSamplejoint[v4];
      case 4:
        v6 = 923521 * a1 + 29791 * aSamplejoint[a2] + 961 * aSamplejoint[a2 + 1] - aSamplejoint[a2 + 2] + 32 * aSamplejoint[a2 + 2];
        v4 = a2 + 3;
        return v6 + aSamplejoint[v4];
    }

    goto LABEL_18;
  }

  if (v5)
  {
    if (v5 == 1)
    {
LABEL_19:
      v6 = 31 * a1;
      return v6 + aSamplejoint[v4];
    }

LABEL_18:
    v7 = a2 + (v5 >> 1);
    v8 = re::internal::compileTimeHornerHash<12ul>(a1, a2, v7 - 1);
    v4 = a3 - 1;
    a1 = re::internal::compileTimeHornerHash<12ul>(aSamplejoint[v7 - 1] - v8 + 32 * v8, v7, a3 - 1);
    goto LABEL_19;
  }

  return v5;
}

uint64_t *re::VertexCacheAsset::assetType(re::VertexCacheAsset *this)
{
  {
    re::VertexCacheAsset::assetType(void)::type = "VertexCacheAsset";
    qword_1EE1C6F18 = 0;
    re::AssetType::generateCompiledExtension(&re::VertexCacheAsset::assetType(void)::type);
  }

  return &re::VertexCacheAsset::assetType(void)::type;
}

uint64_t re::VertexCacheAssetLoader::introspectionType(re::VertexCacheAssetLoader *this)
{
  if ((atomic_load_explicit(&qword_1EE19A5D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19A5D8))
  {
    qword_1EE19A5D0 = re::internal::getOrCreateInfo("VertexCacheAsset", re::allocInfo_VertexCacheAsset, re::initInfo_VertexCacheAsset, &unk_1EE19A5C8, 0);
    __cxa_guard_release(&qword_1EE19A5D8);
  }

  return qword_1EE19A5D0;
}

uint64_t re::VertexCacheAssetLoader::serializeAssetBlob(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a3[10] * a3[8] * a3[9]);
  if (!v3)
  {
    return 1;
  }

  result = a3[14];
  if (result)
  {
    return v3 == [result length] && v3 == (*(*a2 + 16))(a2, objc_msgSend(a3[14], sel_contents), v3);
  }

  return result;
}

BOOL re::VertexCacheAssetLoader::createRuntimeData(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a2 + 14);
  v4 = a2[14];
  v6 = (a2[10] * a2[8] * a2[9]);
  if (v4)
  {
    return v6 == [v4 length];
  }

  v19 = 0;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  v18 = 0;
  v12 = 0;
  v13 = 0;
  v11 = a3;
  v14 = 0;
  re::SeekableInputStreamBufferedReader::readNext(&v11, 0xFFFFFFFFFFFFFFFFLL);
  if (v6 == v13)
  {
    if (v6)
    {
      v10 = [*(a1 + 8) newBufferWithBytes:v12 length:v6 options:0];
      NS::SharedPtr<MTL::Texture>::operator=(v5, &v10);
      if (v10)
      {
      }

      v8 = v13;
      v7 = v8 == [*v5 length];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  re::SeekableInputStreamBufferedReader::~SeekableInputStreamBufferedReader(&v11);
  return v7;
}

void sub_1E20D9844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10)
{
  if (a9)
  {
  }

  re::SeekableInputStreamBufferedReader::~SeekableInputStreamBufferedReader(&a10);
  _Unwind_Resume(a1);
}

re *re::internal::destroyPersistent<re::VertexCacheAsset>(re *result, uint64_t a2, void (***a3)(void))
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

double re::VertexCacheAssetLoader::allocateSampleAsset(re::VertexCacheAssetLoader *this)
{
  v1 = re::globalAllocators(this);
  v2 = (*(*v1[2] + 32))(v1[2], 120, 8);
  result = 0.0;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0;
  *v2 = &unk_1F5CC92D0;
  *(v2 + 16) = 0;
  *(v2 + 24) = &str_67;
  *(v2 + 40) = &str_67;
  *(v2 + 49) = 0;
  *(v2 + 52) = 1023969417;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0;
  *(v2 + 8) = 1;
  return result;
}

void *re::allocInfo_VertexCacheAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19A5B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19A5B8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19A670, "VertexCacheAsset");
    __cxa_guard_release(&qword_1EE19A5B8);
  }

  return &unk_1EE19A670;
}

void re::initInfo_VertexCacheAsset(re *this, re::IntrospectionBase *a2)
{
  v40[0] = 0x38B77DDA5BC982E4;
  v40[1] = "VertexCacheAsset";
  if (v40[0])
  {
    if (v40[0])
    {
    }
  }

  *(this + 2) = v41;
  if ((atomic_load_explicit(&qword_1EE19A5C0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19A5C0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_BOOL(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "defaultInterpolation";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x3000000001;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE19A628 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::mtl::introspect_VertexFormat(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "format";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x3100000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE19A630 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_float(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "frameInterval";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x3400000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE19A638 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_float(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "startTime";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x3800000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE19A640 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_size_t(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "frameCount";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x4000000006;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE19A648 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::introspect_size_t(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "vertexCount";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x4800000007;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE19A650 = v29;
      v30 = re::introspectionAllocator(v29);
      v32 = re::introspect_size_t(1, v31);
      v33 = (*(*v30 + 32))(v30, 72, 8);
      *v33 = 1;
      *(v33 + 8) = "stride";
      *(v33 + 16) = v32;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0x5000000008;
      *(v33 + 40) = 0;
      *(v33 + 48) = 0;
      *(v33 + 56) = 0;
      *(v33 + 64) = 0;
      qword_1EE19A658 = v33;
      v34 = re::introspectionAllocator(v33);
      re::IntrospectionInfo<re::FixedArray<re::AABB>>::get();
      v35 = (*(*v34 + 32))(v34, 72, 8);
      *v35 = 1;
      *(v35 + 8) = "frameAABBs";
      *(v35 + 16) = &qword_1EE19A5E8;
      *(v35 + 24) = 0;
      *(v35 + 32) = 0x5800000009;
      *(v35 + 40) = 0;
      *(v35 + 48) = 0;
      *(v35 + 56) = 0;
      *(v35 + 64) = 0;
      qword_1EE19A660 = v35;
      v36 = re::introspectionAllocator(v35);
      v37 = re::introspect_MeshIdentifierAsset(1);
      v38 = (*(*v36 + 32))(v36, 72, 8);
      *v38 = 1;
      *(v38 + 8) = "meshIdentifier";
      *(v38 + 16) = v37;
      *(v38 + 24) = 0;
      *(v38 + 32) = 0x80000000ALL;
      *(v38 + 40) = 0;
      *(v38 + 48) = 0;
      *(v38 + 56) = 0;
      *(v38 + 64) = 0;
      qword_1EE19A668 = v38;
      __cxa_guard_release(&qword_1EE19A5C0);
    }
  }

  *(this + 2) = 0x7800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 9;
  *(this + 8) = &qword_1EE19A628;
  *(this + 9) = re::internal::defaultConstruct<re::VertexCacheAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::VertexCacheAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::VertexCacheAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::VertexCacheAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v39 = v41;
}

void re::IntrospectionInfo<re::FixedArray<re::AABB>>::get()
{
  if ((atomic_load_explicit(&qword_1EE19A5E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19A5E0))
  {
    re::IntrospectionFixedArrayBase::IntrospectionFixedArrayBase(&qword_1EE19A5E8);
    qword_1EE19A5E8 = &unk_1F5CC9300;
    __cxa_guard_release(&qword_1EE19A5E0);
  }

  if ((_MergedGlobals_97 & 1) == 0)
  {
    v0 = re::introspect_AABB(1);
    if ((_MergedGlobals_97 & 1) == 0)
    {
      v1 = v0;
      _MergedGlobals_97 = 1;
      v2 = *(v0 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE19A5E8, 0);
      qword_1EE19A5F8 = 0x1800000004;
      dword_1EE19A600 = v2;
      word_1EE19A604 = 0;
      *&xmmword_1EE19A608 = 0;
      *(&xmmword_1EE19A608 + 1) = 0xFFFFFFFFLL;
      qword_1EE19A618 = v1;
      unk_1EE19A620 = 0;
      qword_1EE19A5E8 = &unk_1F5CC9300;
      re::IntrospectionRegistry::add(v3, v4);
      re::getPrettyTypeName(&qword_1EE19A5E8, &v12);
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
        re::TypeBuilder::beginListType(&v12, &v10, 1, 0x18uLL, 8uLL, &v11);
        re::TypeBuilder::setConstructor(&v12, re::TypeBuilderHelper::registerFixedArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v12, re::TypeBuilderHelper::registerFixedArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v12, 1);
        re::TypeBuilder::setListAccessors(&v12, re::TypeBuilderHelper::registerFixedArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v12, re::TypeBuilderHelper::registerFixedArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v12, re::TypeBuilderHelper::registerFixedArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v12, v7);
        re::StackScratchAllocator::~StackScratchAllocator(v15);
      }

      xmmword_1EE19A608 = v8;
      if (v10)
      {
        if (v10)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::VertexCacheAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_1F5CC92D0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = &str_67;
  *(a3 + 32) = 0;
  *(a3 + 40) = &str_67;
  *(a3 + 48) = 0;
  *(a3 + 52) = 1023969417;
  result = 0.0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::VertexCacheAsset>(uint64_t a1)
{
  *a1 = &unk_1F5CC92D0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &str_67;
  *(a1 + 32) = 0;
  *(a1 + 40) = &str_67;
  *(a1 + 48) = 0;
  *(a1 + 52) = 1023969417;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  return result;
}

void re::VertexCacheAssetLoader::~VertexCacheAssetLoader(id *this)
{
  *this = &unk_1F5CC9158;
}

{
  *this = &unk_1F5CC9158;

  JUMPOUT(0x1E6906520);
}

void re::VertexCacheAsset::~VertexCacheAsset(re::VertexCacheAsset *this)
{
  re::VertexCacheAsset::~VertexCacheAsset(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CC92D0;
  *(this + 24) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 8) = 0;
  re::FixedArray<CoreIKTransform>::deinit(this + 11);

  *(this + 14) = 0;
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  re::StringID::destroyString((this + 32));
  re::StringID::destroyString((this + 16));
}

void sub_1E20DA658(_Unwind_Exception *a1)
{
  v3 = v1[14];
  if (v3)
  {

    v1[14] = 0;
  }

  re::FixedArray<CoreIKTransform>::deinit(v1 + 11);
  re::StringID::destroyString((v1 + 4));
  re::StringID::destroyString((v1 + 2));
  _Unwind_Resume(a1);
}

void *re::IntrospectionFixedArray<re::AABB>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<re::AABB>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArray<re::AABB>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

uint64_t re::IntrospectionFixedArray<re::AABB>::init(uint64_t a1, uint64_t a2, re *a3, int a4, unint64_t a5)
{
  result = re::FixedArray<re::AABB>::init<>(a2, a3, a5);
  if (a5)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (*(a2 + 8) <= v12)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      result = re::introspectionInitElement(a3, a4, *(a1 + 48), (*(a2 + 16) + v11));
      ++v12;
      v11 += 32;
    }

    while (a5 != v12);
  }

  return result;
}

uint64_t re::IntrospectionFixedArray<re::AABB>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void *re::TypeBuilderHelper::registerFixedArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);

  return re::FixedArray<CoreIKTransform>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t *a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);
  v8 = re::FixedArray<re::AABB>::init<>(a1, a3, a4);
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

uint64_t re::TypeBuilderHelper::registerFixedArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerFixedArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
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

uint64_t re::TypeBuilderHelper::registerFixedArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::introspectionTable_GeometricObjectBaseData(re *this)
{
  if ((_MergedGlobals_98 & 1) == 0)
  {
    _MergedGlobals_98 = 1;
    if ((atomic_load_explicit(&qword_1EE19A708, memory_order_acquire) & 1) == 0)
    {
      v1 = __cxa_guard_acquire(&qword_1EE19A708);
      if (v1)
      {
        qword_1EE19A9E0 = "GeometricObjectData";
        v2 = qword_1EE19A740;
        if (!qword_1EE19A740)
        {
          v2 = re::allocInfo_GeometricObjectData(v1);
          qword_1EE19A740 = v2;
          re::initInfo_GeometricObjectData(v2, v3);
        }

        qword_1EE19A9E8 = v2;
        qword_1EE19A9F0 = 0;
        qword_1EE19A9F8 = 1;
        dword_1EE19AA00 = 0;
        __cxa_guard_release(&qword_1EE19A708);
      }
    }

    dword_1EE19A898 = 1;
    qword_1EE19A8A0 = &qword_1EE19A9E0;
  }
}

void *re::allocInfo_GeometricObjectBaseData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19A710, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19A710))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19AA88, "GeometricObjectBaseData");
    __cxa_guard_release(&qword_1EE19A710);
  }

  return &unk_1EE19AA88;
}

void re::initInfo_GeometricObjectBaseData(re *this, re::IntrospectionBase *a2)
{
  v20[0] = 0xFD63273CAECF29F6;
  v20[1] = "GeometricObjectBaseData";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE19A718, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19A718);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_GeometricObjectType(1, v7);
      v9 = (*(*v6 + 32))(v6, 32, 8);
      *v9 = 3;
      *(v9 + 8) = v8;
      *(v9 + 16) = 0;
      *(v9 + 24) = 8;
      qword_1EE19A980 = v9;
      v10 = re::introspectionAllocator(v9);
      re::introspectionTable_GeometricObjectBaseData(v10);
      v11 = (*(*v10 + 32))(v10, 16, 8);
      *v11 = 2;
      *(v11 + 1) = &dword_1EE19A898;
      qword_1EE19A988 = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = re::introspect_PoseF(1);
      v14 = (*(*v12 + 32))(v12, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "pose";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x1000000001;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE19A990 = v14;
      v15 = re::introspectionAllocator(v14);
      v17 = re::introspect_AssetHandle(1, v16);
      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "shape";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x3000000002;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE19A998 = v18;
      __cxa_guard_release(&qword_1EE19A718);
    }
  }

  *(this + 2) = 0x5000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE19A980;
  *(this + 9) = re::internal::defaultConstruct<re::GeometricObjectBaseData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::GeometricObjectBaseData>;
  *(this + 13) = re::internal::defaultConstructV2<re::GeometricObjectBaseData>;
  *(this + 14) = re::internal::defaultDestructV2<re::GeometricObjectBaseData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v19 = v21;
}

void re::internal::defaultConstruct<re::GeometricObjectBaseData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CC9398;
  a3[2] = 0;
  a3[3] = 0;
  a3[4] = 0;
  a3[5] = 0x3F80000000000000;
  a3[7] = 0;
  a3[8] = 0;
  a3[6] = 0;
}

void *re::internal::defaultConstructV2<re::GeometricObjectBaseData>(void *result)
{
  *result = &unk_1F5CC9398;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = 0x3F80000000000000;
  result[7] = 0;
  result[8] = 0;
  result[6] = 0;
  return result;
}

void *re::allocInfo_GeometricObjectData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19A728, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19A728))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19AB18, "GeometricObjectData");
    __cxa_guard_release(&qword_1EE19A728);
  }

  return &unk_1EE19AB18;
}

void re::initInfo_GeometricObjectData(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0x871260762354B514;
  v12[1] = "GeometricObjectData";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE19A738, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19A738);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE19A720;
      if (!qword_1EE19A720)
      {
        v8 = re::allocInfo_GeometricObjectBaseData(v6);
        qword_1EE19A720 = v8;
        re::initInfo_GeometricObjectBaseData(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "GeometricObjectBaseData";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE19A730 = v10;
      __cxa_guard_release(&qword_1EE19A738);
    }
  }

  *(this + 2) = 0x5000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE19A730;
  *(this + 9) = re::internal::defaultConstruct<re::GeometricObjectData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::GeometricObjectData>;
  *(this + 13) = re::internal::defaultConstructV2<re::GeometricObjectData>;
  *(this + 14) = re::internal::defaultDestructV2<re::GeometricObjectData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

void re::internal::defaultConstruct<re::GeometricObjectData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = 1;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0x3F80000000000000;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 48) = 0;
  *a3 = &unk_1F5CC93C8;
}

uint64_t re::internal::defaultConstructV2<re::GeometricObjectData>(uint64_t result)
{
  *(result + 8) = 1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0x3F80000000000000;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  *result = &unk_1F5CC93C8;
  return result;
}

uint64_t re::convertToSerializable(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v9 = (*(*a1 + 24))(a1);
  if (v9 <= 5)
  {
    if (v9 <= 2)
    {
      if (v9 == 1)
      {
        v11 = (*(*a4 + 32))(a4, 16, 8);
        *(v11 + 8) = 1;
        *v11 = &unk_1F5CC9580;
        return v11;
      }

      if (v9 == 2)
      {
        v11 = (*(*a4 + 32))(a4, 16, 8);
        *(v11 + 8) = 2;
        *v11 = &unk_1F5CC9628;
        *(v11 + 12) = (*(*a1 + 64))(a1);
        return v11;
      }

      goto LABEL_48;
    }

    if (v9 != 3)
    {
      if (v9 == 4)
      {
        v11 = (*(*a4 + 32))(a4, 24, 8);
        *(v11 + 8) = 4;
        *v11 = &unk_1F5CC9468;
        *(v11 + 12) = (*(*a1 + 64))(a1);
        (*(*a1 + 72))(a1);
        goto LABEL_41;
      }

      v11 = (*(*a4 + 32))(a4, 96, 8);
      *(v11 + 8) = 5;
      *v11 = &unk_1F5CC9510;
      *(v11 + 16) = 0;
      *(v11 + 40) = 0;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0;
      *(v11 + 88) = 0;
      *(v11 + 48) = 0u;
      *(v11 + 64) = 0u;
      *(v11 + 80) = 0;
      v13 = (*(*a1 + 80))(a1);
      *(v11 + 16) = a4;
      re::DynamicArray<re::Quaternion<float>>::setCapacity((v11 + 16), v13);
      ++*(v11 + 40);
      v14 = (*(*a1 + 64))(a1);
      v15 = (*(*a1 + 72))(a1);
      if (v13)
      {
        v17 = v15;
        v18 = (v14 + 8);
        do
        {
          v16.n128_u64[0] = *(v18 - 1);
          v16.n128_u32[2] = *v18;
          v18 = (v18 + v17);
          v43 = v16;
          v16 = re::DynamicArray<re::Vector3<float>>::add((v11 + 16), &v43);
          --v13;
        }

        while (v13);
      }

      v4 = &re::StackScratchAllocator::s_rootsWithPersistentBlocks[17];
      {
        goto LABEL_13;
      }

      goto LABEL_47;
    }

    v11 = (*(*a4 + 32))(a4, 32, 16);
    *(v11 + 8) = 3;
    *v11 = &unk_1F5CC9400;
    *(v11 + 16) = 0u;
    v34 = (*(*a1 + 64))(a1);
    *(v11 + 24) = v35;
LABEL_43:
    *(v11 + 16) = v34;
    return v11;
  }

  if (v9 <= 8)
  {
    if (v9 == 6)
    {
      v11 = (*(*a4 + 32))(a4, 48, 16);
      *(v11 + 8) = 6;
      *v11 = &unk_1F5CC95B8;
      *(v11 + 16) = 0u;
      *(v11 + 16) = *(*(*a1 + 64))(a1);
      *(v11 + 32) = (*(*a1 + 72))(a1);
    }

    else
    {
      if (v9 != 7)
      {
        v11 = (*(*a4 + 32))(a4, 24, 8);
        *(v11 + 8) = 8;
        *v11 = &unk_1F5CC9548;
        *(v11 + 12) = (*(*a1 + 64))(a1);
        (*(*a1 + 72))(a1);
LABEL_41:
        *(v11 + 16) = v12;
        return v11;
      }

      v11 = (*(*a4 + 32))(a4, 72, 8);
      *(v11 + 8) = 7;
      *v11 = &unk_1F5CC94A0;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0;
      *(v11 + 16) = 0;
      *(v11 + 48) = 0;
      v37 = (v11 + 48);
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      v21 = a1[4];
      re::FixedArray<re::GeometricObjectData>::init<>((v11 + 16), a4, v21);
      if (v21)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        while (1)
        {
          v25 = a1[4];
          if (v25 <= v24)
          {
            break;
          }

          v25 = *(v11 + 24);
          if (v25 <= v24)
          {
            goto LABEL_46;
          }

          v26 = a1[5] + v23;
          v27 = *(v11 + 32);
          (*(*v26 + 40))(&v43, v26);
          v4 = (v27 + v22);
          v28 = v44;
          v4[1] = v43;
          v4[2] = v28;
          *v38 = (*(*v26 + 24))(v26);
          v29 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*v38 ^ (*v38 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*v38 ^ (*v38 >> 30))) >> 27));
          re::HashTable<re::Timeline const*,re::AssetHandle,re::Hash<re::Timeline const*>,re::EqualTo<re::Timeline const*>,true,false>::findEntry<re::Timeline const*>(a2, v38, v29 ^ (v29 >> 31), &v43);
          re::AssetHandle::operator=(&v4[3], (*(a2 + 16) + 48 * v43.n128_u32[3] + 16));
          ++v24;
          v23 += 240;
          v22 += 80;
          if (v21 == v24)
          {
            goto LABEL_26;
          }
        }

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v43 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v38 = 136315906;
        *&v38[4] = "operator[]";
        *&v38[12] = 1024;
        *&v38[14] = 476;
        v39 = 2048;
        v40 = v24;
        v41 = 2048;
        v42 = v25;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_46:
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v43 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v38 = 136315906;
        *&v38[4] = "operator[]";
        *&v38[12] = 1024;
        *&v38[14] = 468;
        v39 = 2048;
        v40 = v24;
        v41 = 2048;
        v42 = v25;
        _os_log_send_and_compose_impl();
        v19 = _os_crash_msg();
        __break(1u);
LABEL_47:
        re::initCollision(v19);
        v19 = v4[126].n128_u64[0];
LABEL_13:
        (*(*v19 + 192))(&v43);
        re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v11 + 56, &v43);
        goto LABEL_33;
      }

LABEL_26:
      v30 = (*(*a1 + 64))(a1);
      *(v11 + 40) = v30;
      if (v30)
      {
        {
          re::initCollision(0);
        }

        v32 = (*(*v31 + 192))(&v43);
        v33 = v44;
        *v38 = v45;
        *&v38[8] = v44;
        if (!*v37)
        {
          if (!v44)
          {
            goto LABEL_33;
          }
        }

        re::FixedArray<unsigned char>::copy(v37, v38);
LABEL_33:
        if (v43.n128_u64[0])
        {
          if (v45)
          {
            (*(*v43.n128_u64[0] + 40))(v43.n128_u64[0], v45);
          }
        }
      }
    }

    return v11;
  }

  switch(v9)
  {
    case 9:
      v11 = (*(*a4 + 32))(a4, 24, 8);
      *(v11 + 8) = 9;
      *v11 = &unk_1F5CC94D8;
      *(v11 + 12) = (*(*a1 + 64))(a1);
      v12 = (*(*a1 + 72))(a1);
      goto LABEL_41;
    case 11:
      v11 = (*(*a4 + 32))(a4, 24, 8);
      *(v11 + 8) = 11;
      *v11 = &unk_1F5CC95F0;
      *(v11 + 16) = 0;
      v34 = (*(*a1 + 64))(a1);
      goto LABEL_43;
    case 12:
      v11 = (*(*a4 + 32))(a4, 40, 8);
      *(v11 + 8) = 12;
      *v11 = &unk_1F5CC9660;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0;
      *(v11 + 16) = 0;
      *v38 = a1[3];
      v20 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*v38 ^ (*v38 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*v38 ^ (*v38 >> 30))) >> 27));
      re::HashTable<re::Timeline const*,re::AssetHandle,re::Hash<re::Timeline const*>,re::EqualTo<re::Timeline const*>,true,false>::findEntry<re::Timeline const*>(a3, v38, v20 ^ (v20 >> 31), &v43);
      re::AssetHandle::operator=(v11 + 16, (*(a3 + 16) + 48 * v43.n128_u32[3] + 16));
      return v11;
  }

LABEL_48:
  re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) Unexpected shape type.", "!Unreachable code", "convertToSerializable", 267);
  result = _os_crash();
  __break(1u);
  return result;
}

void *re::FixedArray<re::GeometricObjectData>::init<>(void *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x333333333333334)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 80, a3);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 80 * a3, 16);
  v4[2] = result;
  if (!result)
  {
LABEL_10:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    v7 = result;
    do
    {
      *(result + 2) = 1;
      result[2] = 0;
      result[3] = 0;
      result[4] = 0;
      result[5] = 0x3F80000000000000;
      result[7] = 0;
      result[8] = 0;
      result[6] = 0;
      *result = &unk_1F5CC93C8;
      result += 10;
      v7 += 10;
      --v6;
    }

    while (v6);
  }

  *(result + 2) = 1;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = 0x3F80000000000000;
  result[7] = 0;
  result[8] = 0;
  result[6] = 0;
  *result = &unk_1F5CC93C8;
  return result;
}

uint64_t re::convertFromSerializable(re *this, const re::CollisionShapeData *a2, re::CollisionShape **a3, uint64_t a4, re::Allocator *a5)
{
  v5 = a5;
  v8 = a2;
  v9 = this;
  v61 = *MEMORY[0x1E69E9840];
  v10 = &re::StackScratchAllocator::s_rootsWithPersistentBlocks[17];
  {
LABEL_85:
    re::initCollision(this);
    v11 = v10[252];
  }

  v12 = *(v9 + 2);
  if (v12 <= 5)
  {
    if (v12 > 2)
    {
      if (v12 == 3)
      {
        v13 = (*(*v11 + 32))(v11, a3, v9 + 16);
      }

      else if (v12 == 4)
      {
        v13 = (*(*v11 + 40))(v11, a3, *(v9 + 3), *(v9 + 4));
      }

      else
      {
        v13 = (*(*v11 + 72))(v11, a3, *(v9 + 6), *(v9 + 4), *(v9 + 11), *(v9 + 9));
      }

      goto LABEL_55;
    }

    if (v12 == 1)
    {
      v13 = (*(*v11 + 96))(v11, a3);
    }

    else
    {
      if (v12 != 2)
      {
        goto LABEL_86;
      }

      v13 = (*(*v11 + 112))(v11, a3, *(v9 + 3));
    }

LABEL_55:
    a4 = 0;
LABEL_56:
    *v8 = v13;
    return a4;
  }

  if (v12 <= 8)
  {
    if (v12 == 6)
    {
      v13 = (*(*v11 + 104))(v11, a3, v9 + 16, *(v9 + 8));
    }

    else
    {
      if (v12 == 7)
      {
        v15 = *(v9 + 3);
        v44 = 0;
        v45 = 0;
        v46 = 0;
        re::FixedArray<unsigned long>::init<>(&v44, a4, v15);
        v41 = 0;
        v42 = 0;
        v43 = 0;
        re::FixedArray<re::Pose<float>>::init<>(&v41, a4, v15);
        v40 = v15;
        if (v15)
        {
          v38 = a3;
          v39 = v8;
          v16 = 0;
          v17 = 0;
          a4 = 0;
          v18 = 0;
          do
          {
            v19 = *(v9 + 3);
            if (v19 <= v18)
            {
              v47 = 0;
              v59 = 0u;
              v60 = 0u;
              v58 = 0u;
              v56 = 0u;
              v57 = 0u;
              v8 = MEMORY[0x1E69E9C10];
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v48 = 136315906;
              v49 = "operator[]";
              v50 = 1024;
              v51 = 476;
              v52 = 2048;
              v53 = v18;
              v54 = 2048;
              v55 = v19;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_82:
              v47 = 0;
              v59 = 0u;
              v60 = 0u;
              v58 = 0u;
              v56 = 0u;
              v57 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v48 = 136315906;
              v49 = "operator[]";
              v50 = 1024;
              v51 = 468;
              v52 = 2048;
              v53 = v18;
              v54 = 2048;
              v55 = v8;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_83:
              v47 = 0;
              v59 = 0u;
              v60 = 0u;
              v58 = 0u;
              v56 = 0u;
              v57 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v48 = 136315906;
              v49 = "operator[]";
              v50 = 1024;
              v51 = 476;
              v52 = 2048;
              v53 = v18;
              v54 = 2048;
              v55 = v8;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_84:
              v47 = 0;
              v59 = 0u;
              v60 = 0u;
              v58 = 0u;
              v56 = 0u;
              v57 = 0u;
              v10 = MEMORY[0x1E69E9C10];
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v48 = 136315906;
              v49 = "operator[]";
              v50 = 1024;
              v51 = 468;
              v52 = 2048;
              v53 = v18;
              v54 = 2048;
              v55 = v8;
              _os_log_send_and_compose_impl();
              this = _os_crash_msg();
              __break(1u);
              goto LABEL_85;
            }

            re::AssetHandle::AssetHandle(&v56, (*(v9 + 4) + v17 + 48));
            if (v5)
            {
              re::AssetHandle::loadNow(*(&v56 + 1), 0);
            }

            else if (*(&v56 + 1))
            {
              if (!atomic_load((*(&v56 + 1) + 896)))
              {
                re::AssetHandle::loadAsync(&v56);
              }
            }

            v21 = re::AssetHandle::loadedAsset<re::CollisionShapeAsset>(&v56);
            if (v21)
            {
              v22 = 0;
              a3 = *(v21 + 8);
            }

            else if (*(&v56 + 1))
            {
              a3 = 0;
              v23 = atomic_load((*(&v56 + 1) + 896));
              if (v23 == 3)
              {
                v22 = 2;
              }

              else
              {
                v22 = 1;
              }
            }

            else
            {
              a3 = 0;
              v22 = 1;
            }

            re::AssetHandle::~AssetHandle(&v56);
            v8 = v45;
            if (v45 <= v18)
            {
              goto LABEL_82;
            }

            *(v46 + 8 * v18) = a3;
            v8 = *(v9 + 3);
            if (v8 <= v18)
            {
              goto LABEL_83;
            }

            v8 = v42;
            if (v42 <= v18)
            {
              goto LABEL_84;
            }

            v24 = *(v9 + 4) + v17;
            v25 = v43;
            v26 = (v43 + v16);
            v27 = *(v24 + 32);
            *v26 = *(v24 + 16);
            v26[1] = v27;
            if (v22 == 2)
            {
              v28 = 2;
            }

            else
            {
              v28 = a4;
            }

            if (a4)
            {
              v29 = 0;
            }

            else
            {
              v29 = v22 == 1;
            }

            if (v29)
            {
              a4 = 1;
            }

            else
            {
              a4 = v28;
            }

            ++v18;
            v17 += 80;
            v16 += 32;
          }

          while (v40 != v18);
          a3 = v38;
          if (a4)
          {
            v30 = 0;
            v31 = 0;
            v8 = v39;
            goto LABEL_75;
          }

          v8 = v39;
        }

        else
        {
          v25 = v43;
        }

        v31 = (*(*v11 + 160))(v11, a3, v46, v25, v40, *(v9 + 40), 0);
        a4 = 0;
        v30 = v42 == 0;
LABEL_75:
        *v8 = v31;
        if (v41 && !v30)
        {
          (*(*v41 + 40))(v41, v43);
        }

        if (v44)
        {
          if (v45)
          {
            (*(*v44 + 40))(v44, v46);
          }
        }

        return a4;
      }

      v13 = (*(*v11 + 128))(v11, a3, *(v9 + 3), *(v9 + 4));
    }

    goto LABEL_55;
  }

  switch(v12)
  {
    case 9:
      v13 = (*(*v11 + 120))(v11, a3, *(v9 + 3), *(v9 + 4));
      goto LABEL_55;
    case 11:
      v13 = (*(*v11 + 136))(v11, a3, v9 + 16);
      goto LABEL_55;
    case 12:
      re::AssetHandle::AssetHandle(&v56, (v9 + 16));
      v14 = *(&v56 + 1);
      if (v5)
      {
        re::AssetHandle::loadNow(*(&v56 + 1), 0);
      }

      else if (*(&v56 + 1))
      {
        if (!atomic_load((*(&v56 + 1) + 896)))
        {
          re::AssetHandle::loadAsync(&v56);
        }
      }

      if (*(&v56 + 1))
      {
        v34 = re::IndexedTriangleMeshAsset::assetType(v14);
        v35 = re::AssetHandle::assetWithType(&v56, v34, 1);
        if (v35)
        {
          v36 = *(v35 + 8);
          if (v36)
          {
            if (re::IndexedTriangleMesh::isValid(*(v35 + 8)))
            {
              re::AssetHandle::~AssetHandle(&v56);
              v13 = (*(*v11 + 144))(v11, a3, v36);
              goto LABEL_55;
            }
          }
        }

        a4 = 1;
        if (*(&v56 + 1))
        {
          v37 = atomic_load((*(&v56 + 1) + 896));
          if (v37 == 3)
          {
            a4 = 2;
          }

          else
          {
            a4 = 1;
          }
        }
      }

      else
      {
        a4 = 1;
      }

      re::AssetHandle::~AssetHandle(&v56);
      v13 = 0;
      goto LABEL_56;
  }

LABEL_86:
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected shape type.", "!Unreachable code", "convertFromSerializable", 398);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::convertToSerializable(re *this, const re::IndexedTriangleMesh *a2, re::Allocator *a3)
{
  v5 = (*(*a2 + 32))(a2, 80, 8);
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 57) = 0u;
  re::FixedArray<int>::init<>(v5, a2, 3 * *(this + 3));
  v6 = *(this + 3);
  if (v6)
  {
    v7 = *(v5 + 16);
    v8 = *(this + 4);
    v9 = (*(this + 1) + 8);
    do
    {
      *v7 = *(v9 - 2);
      v7[1] = *(v9 - 1);
      v7[2] = *v9;
      v9 = (v9 + v8);
      v7 += 3;
      --v6;
    }

    while (v6);
  }

  v10 = *(this + 58);
  if (v10 == 2)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2 * (v10 == 1);
  }

  re::FixedArray<unsigned short>::init<>((v5 + 24), a2, (v11 * *(this + 5)) >> 1);
  v12 = *(this + 58);
  if (v12 == 2)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2 * (v12 == 1);
  }

  memcpy(*(v5 + 40), *(this + 2), v13 * *(this + 5));
  if (*(this + 2))
  {
    v14 = *(this + 5);
    re::FixedArray<unsigned short>::init<>((v5 + 48), a2, v14 / 3);
    if (v14 >= 3)
    {
      v15 = 0;
      do
      {
        v16 = (*(*this + 16))(this, v15);
        if (*(v5 + 56) <= v15)
        {
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        *(*(v5 + 64) + 2 * v15++) = v16;
      }

      while (v14 / 3 != v15);
    }
  }

  *(v5 + 72) = *(this + 58) == 2;
  return v5;
}

void re::FixedArray<unsigned short>::init<>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 < 0)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 2, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 2 * a3;
  v6 = (*(*a2 + 32))(a2, 2 * a3, 2);
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
    bzero(v6, v5 - 2);
    v8 = (v8 + v5 - 2);
  }

  *v8 = 0;
}

uint64_t re::convertFromSerializable(uint64_t a1, uint64_t a2)
{
  {
    re::initCollision(0);
  }

  return (*(*v4 + 152))(v4, a2, *(a1 + 16));
}

void re::introspectionTable_CollisionShapeData(re *this)
{
  if ((byte_1EE19A701 & 1) == 0)
  {
    byte_1EE19A701 = 1;
    if ((atomic_load_explicit(&qword_1EE19A748, memory_order_acquire) & 1) == 0)
    {
      v1 = __cxa_guard_acquire(&qword_1EE19A748);
      if (v1)
      {
        qword_1EE19B2F8 = "BoxShapeData";
        v2 = qword_1EE19A778;
        if (!qword_1EE19A778)
        {
          v2 = re::allocInfo_BoxShapeData(v1);
          qword_1EE19A778 = v2;
          re::initInfo_BoxShapeData(v2, v3);
        }

        qword_1EE19B300 = v2;
        qword_1EE19B308 = 0;
        qword_1EE19B310 = 3;
        dword_1EE19B318 = 0;
        qword_1EE19B320 = "CapsuleShapeData";
        v4 = qword_1EE19A790;
        if (!qword_1EE19A790)
        {
          v4 = re::allocInfo_CapsuleShapeData(v1);
          qword_1EE19A790 = v4;
          re::initInfo_CapsuleShapeData(v4, v5);
        }

        qword_1EE19B328 = v4;
        qword_1EE19B330 = 0;
        qword_1EE19B338 = 4;
        dword_1EE19B340 = 0;
        qword_1EE19B348 = "CompoundShapeData";
        v6 = qword_1EE19A7A8;
        if (!qword_1EE19A7A8)
        {
          v6 = re::allocInfo_CompoundShapeData(v1);
          qword_1EE19A7A8 = v6;
          re::initInfo_CompoundShapeData(v6, v7);
        }

        qword_1EE19B350 = v6;
        qword_1EE19B358 = 0;
        qword_1EE19B360 = 7;
        dword_1EE19B368 = 0;
        qword_1EE19B370 = "ConeShapeData";
        v8 = qword_1EE19A7C0;
        if (!qword_1EE19A7C0)
        {
          v8 = re::allocInfo_ConeShapeData(v1);
          qword_1EE19A7C0 = v8;
          re::initInfo_ConeShapeData(v8, v9);
        }

        qword_1EE19B378 = v8;
        qword_1EE19B380 = 0;
        qword_1EE19B388 = 9;
        dword_1EE19B390 = 0;
        qword_1EE19B398 = "ConvexPolyhedronShapeData";
        v10 = qword_1EE19A7D8;
        if (!qword_1EE19A7D8)
        {
          v10 = re::allocInfo_ConvexPolyhedronShapeData(v1);
          qword_1EE19A7D8 = v10;
          re::initInfo_ConvexPolyhedronShapeData(v10, v11);
        }

        qword_1EE19B3A0 = v10;
        qword_1EE19B3A8 = 0;
        qword_1EE19B3B0 = 5;
        dword_1EE19B3B8 = 0;
        qword_1EE19B3C0 = "CylinderShapeData";
        v12 = qword_1EE19A7F0;
        if (!qword_1EE19A7F0)
        {
          v12 = re::allocInfo_CylinderShapeData(v1);
          qword_1EE19A7F0 = v12;
          re::initInfo_CylinderShapeData(v12, v13);
        }

        qword_1EE19B3C8 = v12;
        qword_1EE19B3D0 = 0;
        qword_1EE19B3D8 = 8;
        dword_1EE19B3E0 = 0;
        qword_1EE19B3E8 = "EmptyShapeData";
        v14 = qword_1EE19A810;
        if (!qword_1EE19A810)
        {
          v14 = re::allocInfo_EmptyShapeData(v1);
          qword_1EE19A810 = v14;
          re::initInfo_EmptyShapeData(v14, v15);
        }

        qword_1EE19B3F0 = v14;
        qword_1EE19B3F8 = 0;
        qword_1EE19B400 = 1;
        dword_1EE19B408 = 0;
        qword_1EE19B410 = "PlaneShapeData";
        v16 = qword_1EE19A828;
        if (!qword_1EE19A828)
        {
          v16 = re::allocInfo_PlaneShapeData(v1);
          qword_1EE19A828 = v16;
          re::initInfo_PlaneShapeData(v16, v17);
        }

        qword_1EE19B418 = v16;
        qword_1EE19B420 = 0;
        qword_1EE19B428 = 6;
        dword_1EE19B430 = 0;
        qword_1EE19B438 = "RectangleShapeData";
        v18 = qword_1EE19A840;
        if (!qword_1EE19A840)
        {
          v18 = re::allocInfo_RectangleShapeData(v1);
          qword_1EE19A840 = v18;
          re::initInfo_RectangleShapeData(v18, v19);
        }

        qword_1EE19B440 = v18;
        qword_1EE19B448 = 0;
        qword_1EE19B450 = 11;
        dword_1EE19B458 = 0;
        qword_1EE19B460 = "SphereShapeData";
        v20 = qword_1EE19A858;
        if (!qword_1EE19A858)
        {
          v20 = re::allocInfo_SphereShapeData(v1);
          qword_1EE19A858 = v20;
          re::initInfo_SphereShapeData(v20, v21);
        }

        qword_1EE19B468 = v20;
        qword_1EE19B470 = 0;
        qword_1EE19B478 = 2;
        dword_1EE19B480 = 0;
        qword_1EE19B488 = "TriangleMeshShapeData";
        v22 = qword_1EE19A870;
        if (!qword_1EE19A870)
        {
          v22 = re::allocInfo_TriangleMeshShapeData(v1);
          qword_1EE19A870 = v22;
          re::initInfo_TriangleMeshShapeData(v22, v23);
        }

        qword_1EE19B490 = v22;
        qword_1EE19B498 = 0;
        qword_1EE19B4A0 = 12;
        dword_1EE19B4A8 = 0;
        __cxa_guard_release(&qword_1EE19A748);
      }
    }

    dword_1EE19A8A8 = 11;
    qword_1EE19A8B0 = &qword_1EE19B2F8;
  }
}

void *re::allocInfo_CollisionShapeData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19A750, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19A750))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19ABA8, "CollisionShapeData");
    __cxa_guard_release(&qword_1EE19A750);
  }

  return &unk_1EE19ABA8;
}

void re::initInfo_CollisionShapeData(re *this, re::IntrospectionBase *a2)
{
  v13[0] = 0x139DD8F0161B0FF2;
  v13[1] = "CollisionShapeData";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&qword_1EE19A758, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19A758);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_ShapeType(1, v7);
      v9 = (*(*v6 + 32))(v6, 32, 8);
      *v9 = 3;
      *(v9 + 8) = v8;
      *(v9 + 16) = 0;
      *(v9 + 24) = 8;
      qword_1EE19A8B8 = v9;
      v10 = re::introspectionAllocator(v9);
      re::introspectionTable_CollisionShapeData(v10);
      v11 = (*(*v10 + 32))(v10, 16, 8);
      *v11 = 2;
      *(v11 + 8) = &dword_1EE19A8A8;
      qword_1EE19A8C0 = v11;
      __cxa_guard_release(&qword_1EE19A758);
    }
  }

  *(this + 4) = 8;
  *(this + 20) = 0x800000010;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE19A8B8;
  *(this + 9) = re::internal::defaultConstruct<re::CollisionShapeData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::CollisionShapeData>;
  *(this + 13) = re::internal::defaultConstructV2<re::CollisionShapeData>;
  *(this + 14) = re::internal::defaultDestructV2<re::CollisionShapeData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v12 = v14;
}

void *re::allocInfo_BoxShapeData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19A768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19A768))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19AC38, "BoxShapeData");
    __cxa_guard_release(&qword_1EE19A768);
  }

  return &unk_1EE19AC38;
}

void re::initInfo_BoxShapeData(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0x3129063846308B00;
  v15[1] = "BoxShapeData";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE19A770, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19A770);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE19A760;
      if (!qword_1EE19A760)
      {
        v8 = re::allocInfo_CollisionShapeData(v6);
        qword_1EE19A760 = v8;
        re::initInfo_CollisionShapeData(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "CollisionShapeData";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE19A8C8 = v10;
      v11 = re::introspectionAllocator(v10);
      v12 = re::introspect_Vector3F(1);
      v13 = (*(*v11 + 32))(v11, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "extent";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1000000001;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE19A8D0 = v13;
      __cxa_guard_release(&qword_1EE19A770);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE19A8C8;
  *(this + 9) = re::internal::defaultConstruct<re::BoxShapeData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BoxShapeData>;
  *(this + 13) = re::internal::defaultConstructV2<re::BoxShapeData>;
  *(this + 14) = re::internal::defaultDestructV2<re::BoxShapeData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

double re::internal::defaultConstruct<re::BoxShapeData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = 3;
  *a3 = &unk_1F5CC9400;
  result = 0.0;
  *(a3 + 16) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::BoxShapeData>(uint64_t a1)
{
  *(a1 + 8) = 3;
  *a1 = &unk_1F5CC9400;
  result = 0.0;
  *(a1 + 16) = 0u;
  return result;
}

void *re::allocInfo_CapsuleShapeData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19A780, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19A780))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19ACC8, "CapsuleShapeData");
    __cxa_guard_release(&qword_1EE19A780);
  }

  return &unk_1EE19ACC8;
}

void re::initInfo_CapsuleShapeData(re *this, re::IntrospectionBase *a2)
{
  v20[0] = 0x8B915C5BAD1E5EBCLL;
  v20[1] = "CapsuleShapeData";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE19A788, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19A788);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE19A760;
      if (!qword_1EE19A760)
      {
        v8 = re::allocInfo_CollisionShapeData(v6);
        qword_1EE19A760 = v8;
        re::initInfo_CollisionShapeData(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "CollisionShapeData";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE19A908 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::introspect_float(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "height";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0xC00000001;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE19A910 = v14;
      v15 = re::introspectionAllocator(v14);
      v17 = re::introspect_float(1, v16);
      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "radius";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x1000000002;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE19A918 = v18;
      __cxa_guard_release(&qword_1EE19A788);
    }
  }

  *(this + 4) = 8;
  *(this + 20) = 0x800000018;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE19A908;
  *(this + 9) = re::internal::defaultConstruct<re::CapsuleShapeData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::CapsuleShapeData>;
  *(this + 13) = re::internal::defaultConstructV2<re::CapsuleShapeData>;
  *(this + 14) = re::internal::defaultDestructV2<re::CapsuleShapeData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v19 = v21;
}

uint64_t re::internal::defaultConstructV2<re::CapsuleShapeData>(uint64_t result)
{
  *(result + 8) = 4;
  *result = &unk_1F5CC9468;
  return result;
}

void *re::allocInfo_CompoundShapeData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19A798, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19A798))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19AD58, "CompoundShapeData");
    __cxa_guard_release(&qword_1EE19A798);
  }

  return &unk_1EE19AD58;
}

void re::initInfo_CompoundShapeData(re *this, re::IntrospectionBase *a2)
{
  v22[0] = 0xCA87D356D3A682C0;
  v22[1] = "CompoundShapeData";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE19A7A0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19A7A0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE19A760;
      if (!qword_1EE19A760)
      {
        v8 = re::allocInfo_CollisionShapeData(v6);
        qword_1EE19A760 = v8;
        re::initInfo_CollisionShapeData(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "CollisionShapeData";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE19A9A0 = v10;
      v11 = re::introspectionAllocator(v10);
      re::IntrospectionInfo<re::FixedArray<re::GeometricObjectData>>::get(v11);
      v12 = (*(*v11 + 32))(v11, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "objects";
      *(v12 + 16) = &qword_1EE19AA08;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE19A9A8 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_BOOL(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "useAABBTree";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x2800000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE19A9B0 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::IntrospectionInfo<re::FixedArray<unsigned char>>::get(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "bulletData";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x3000000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE19A9B8 = v20;
      __cxa_guard_release(&qword_1EE19A7A0);
    }
  }

  *(this + 2) = 0x4800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE19A9A0;
  *(this + 9) = re::internal::defaultConstruct<re::CompoundShapeData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::CompoundShapeData>;
  *(this + 13) = re::internal::defaultConstructV2<re::CompoundShapeData>;
  *(this + 14) = re::internal::defaultDestructV2<re::CompoundShapeData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v21 = v23;
}

void re::IntrospectionInfo<re::FixedArray<re::GeometricObjectData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE19A888, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE19A888);
    if (a1)
    {
      re::IntrospectionFixedArrayBase::IntrospectionFixedArrayBase(&qword_1EE19AA08);
      qword_1EE19AA08 = &unk_1F5CC9698;
      __cxa_guard_release(&qword_1EE19A888);
    }
  }

  if ((byte_1EE19A702 & 1) == 0)
  {
    v1 = qword_1EE19A740;
    if (qword_1EE19A740 || (v1 = re::allocInfo_GeometricObjectData(a1), qword_1EE19A740 = v1, re::initInfo_GeometricObjectData(v1, v2), (byte_1EE19A702 & 1) == 0))
    {
      byte_1EE19A702 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE19AA08, 0);
      qword_1EE19AA18 = 0x1800000004;
      dword_1EE19AA20 = v3;
      word_1EE19AA24 = 0;
      *&xmmword_1EE19AA28 = 0;
      *(&xmmword_1EE19AA28 + 1) = 0xFFFFFFFFLL;
      qword_1EE19AA38 = v1;
      qword_1EE19AA40 = 0;
      qword_1EE19AA08 = &unk_1F5CC9698;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE19AA08, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerFixedArray<re::GeometricObjectData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerFixedArray<re::GeometricObjectData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerFixedArray<re::GeometricObjectData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::GeometricObjectData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerFixedArray<re::GeometricObjectData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerFixedArray<re::GeometricObjectData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::GeometricObjectData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::GeometricObjectData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE19AA28 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::internal::defaultConstruct<re::CompoundShapeData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = 7;
  *a3 = &unk_1F5CC94A0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 48) = 0;
}

void *re::internal::defaultDestruct<re::CompoundShapeData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::FixedArray<CoreIKTransform>::deinit((a3 + 48));

  return re::FixedArray<re::GeometricObjectData>::deinit((a3 + 16));
}

uint64_t re::internal::defaultConstructV2<re::CompoundShapeData>(uint64_t result)
{
  *(result + 8) = 7;
  *result = &unk_1F5CC94A0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  return result;
}

void *re::internal::defaultDestructV2<re::CompoundShapeData>(uint64_t a1)
{
  re::FixedArray<CoreIKTransform>::deinit((a1 + 48));

  return re::FixedArray<re::GeometricObjectData>::deinit((a1 + 16));
}

void *re::allocInfo_ConeShapeData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19A7B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19A7B0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19ADE8, "ConeShapeData");
    __cxa_guard_release(&qword_1EE19A7B0);
  }

  return &unk_1EE19ADE8;
}

void re::initInfo_ConeShapeData(re *this, re::IntrospectionBase *a2)
{
  v20[0] = 0x99D738C6689E5D0;
  v20[1] = "ConeShapeData";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE19A7B8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19A7B8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE19A760;
      if (!qword_1EE19A760)
      {
        v8 = re::allocInfo_CollisionShapeData(v6);
        qword_1EE19A760 = v8;
        re::initInfo_CollisionShapeData(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "CollisionShapeData";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE19A920 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::introspect_float(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "height";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0xC00000001;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE19A928 = v14;
      v15 = re::introspectionAllocator(v14);
      v17 = re::introspect_float(1, v16);
      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "radius";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x1000000002;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE19A930 = v18;
      __cxa_guard_release(&qword_1EE19A7B8);
    }
  }

  *(this + 4) = 8;
  *(this + 20) = 0x800000018;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE19A920;
  *(this + 9) = re::internal::defaultConstruct<re::ConeShapeData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ConeShapeData>;
  *(this + 13) = re::internal::defaultConstructV2<re::ConeShapeData>;
  *(this + 14) = re::internal::defaultDestructV2<re::ConeShapeData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v19 = v21;
}

uint64_t re::internal::defaultConstructV2<re::ConeShapeData>(uint64_t result)
{
  *(result + 8) = 9;
  *result = &unk_1F5CC94D8;
  return result;
}

void *re::allocInfo_ConvexPolyhedronShapeData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19A7C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19A7C8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19AE78, "ConvexPolyhedronShapeData");
    __cxa_guard_release(&qword_1EE19A7C8);
  }

  return &unk_1EE19AE78;
}

void re::initInfo_ConvexPolyhedronShapeData(re *this, re::IntrospectionBase *a2)
{
  v19[0] = 0x55E4C92089E1199CLL;
  v19[1] = "ConvexPolyhedronShapeData";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE19A7D0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19A7D0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE19A760;
      if (!qword_1EE19A760)
      {
        v8 = re::allocInfo_CollisionShapeData(v6);
        qword_1EE19A760 = v8;
        re::initInfo_CollisionShapeData(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "CollisionShapeData";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE19A938 = v10;
      v11 = re::introspectionAllocator(v10);
      v12 = re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(1);
      v13 = (*(*v11 + 32))(v11, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "vertices";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1000000001;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE19A940 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::IntrospectionInfo<re::DynamicArray<unsigned char>>::get(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "bulletData";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x3800000002;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE19A948 = v17;
      __cxa_guard_release(&qword_1EE19A7D0);
    }
  }

  *(this + 2) = 0x6000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE19A938;
  *(this + 9) = re::internal::defaultConstruct<re::ConvexPolyhedronShapeData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ConvexPolyhedronShapeData>;
  *(this + 13) = re::internal::defaultConstructV2<re::ConvexPolyhedronShapeData>;
  *(this + 14) = re::internal::defaultDestructV2<re::ConvexPolyhedronShapeData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v18 = v20;
}

double re::internal::defaultConstruct<re::ConvexPolyhedronShapeData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = 5;
  *a3 = &unk_1F5CC9510;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  *(a3 + 40) = 0;
  *(a3 + 88) = 0;
  result = 0.0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0;
  return result;
}

uint64_t re::internal::defaultDestruct<re::ConvexPolyhedronShapeData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 56);

  return re::DynamicArray<unsigned long>::deinit(a3 + 16);
}

double re::internal::defaultConstructV2<re::ConvexPolyhedronShapeData>(uint64_t a1)
{
  *(a1 + 8) = 5;
  *a1 = &unk_1F5CC9510;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 88) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::ConvexPolyhedronShapeData>(uint64_t a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 56);

  return re::DynamicArray<unsigned long>::deinit(a1 + 16);
}

void *re::allocInfo_CylinderShapeData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19A7E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19A7E0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19AF08, "CylinderShapeData");
    __cxa_guard_release(&qword_1EE19A7E0);
  }

  return &unk_1EE19AF08;
}

void re::initInfo_CylinderShapeData(re *this, re::IntrospectionBase *a2)
{
  v20[0] = 0x258B756EC289C72ALL;
  v20[1] = "CylinderShapeData";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE19A7E8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19A7E8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE19A760;
      if (!qword_1EE19A760)
      {
        v8 = re::allocInfo_CollisionShapeData(v6);
        qword_1EE19A760 = v8;
        re::initInfo_CollisionShapeData(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "CollisionShapeData";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE19A950 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::introspect_float(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "height";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0xC00000001;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE19A958 = v14;
      v15 = re::introspectionAllocator(v14);
      v17 = re::introspect_float(1, v16);
      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "radius";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x1000000002;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE19A960 = v18;
      __cxa_guard_release(&qword_1EE19A7E8);
    }
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE19A950;
  *(this + 9) = re::internal::defaultConstruct<re::CylinderShapeData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::CylinderShapeData>;
  *(this + 13) = re::internal::defaultConstructV2<re::CylinderShapeData>;
  *(this + 14) = re::internal::defaultDestructV2<re::CylinderShapeData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v19 = v21;
}

uint64_t re::internal::defaultConstructV2<re::CylinderShapeData>(uint64_t result)
{
  *(result + 8) = 8;
  *result = &unk_1F5CC9548;
  return result;
}

void *re::allocInfo_EmptyShapeData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19A7F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19A7F8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19AF98, "EmptyShapeData");
    __cxa_guard_release(&qword_1EE19A7F8);
  }

  return &unk_1EE19AF98;
}

void re::initInfo_EmptyShapeData(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0x4B9147A9A0AC107CLL;
  v12[1] = "EmptyShapeData";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE19A808, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19A808);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE19A760;
      if (!qword_1EE19A760)
      {
        v8 = re::allocInfo_CollisionShapeData(v6);
        qword_1EE19A760 = v8;
        re::initInfo_CollisionShapeData(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "CollisionShapeData";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE19A800 = v10;
      __cxa_guard_release(&qword_1EE19A808);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE19A800;
  *(this + 9) = re::internal::defaultConstruct<re::EmptyShapeData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::EmptyShapeData>;
  *(this + 13) = re::internal::defaultConstructV2<re::EmptyShapeData>;
  *(this + 14) = re::internal::defaultDestructV2<re::EmptyShapeData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

uint64_t re::internal::defaultConstructV2<re::EmptyShapeData>(uint64_t result)
{
  *(result + 8) = 1;
  *result = &unk_1F5CC9580;
  return result;
}

void *re::allocInfo_PlaneShapeData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19A818, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19A818))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19B028, "PlaneShapeData");
    __cxa_guard_release(&qword_1EE19A818);
  }

  return &unk_1EE19B028;
}

void re::initInfo_PlaneShapeData(re *this, re::IntrospectionBase *a2)
{
  v19[0] = 0x49EDF1A51FB1E81ELL;
  v19[1] = "PlaneShapeData";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE19A820, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19A820);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE19A760;
      if (!qword_1EE19A760)
      {
        v8 = re::allocInfo_CollisionShapeData(v6);
        qword_1EE19A760 = v8;
        re::initInfo_CollisionShapeData(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "CollisionShapeData";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE19A968 = v10;
      v11 = re::introspectionAllocator(v10);
      v12 = re::introspect_Vector3F(1);
      v13 = (*(*v11 + 32))(v11, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "normal";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1000000001;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE19A970 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_float(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "distanceFromOrigin";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x2000000002;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE19A978 = v17;
      __cxa_guard_release(&qword_1EE19A820);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE19A968;
  *(this + 9) = re::internal::defaultConstruct<re::PlaneShapeData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::PlaneShapeData>;
  *(this + 13) = re::internal::defaultConstructV2<re::PlaneShapeData>;
  *(this + 14) = re::internal::defaultDestructV2<re::PlaneShapeData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v18 = v20;
}

double re::internal::defaultConstruct<re::PlaneShapeData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = 6;
  *a3 = &unk_1F5CC95B8;
  result = 0.0;
  *(a3 + 16) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::PlaneShapeData>(uint64_t a1)
{
  *(a1 + 8) = 6;
  *a1 = &unk_1F5CC95B8;
  result = 0.0;
  *(a1 + 16) = 0u;
  return result;
}

void *re::allocInfo_RectangleShapeData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19A830, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19A830))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19B0B8, "RectangleShapeData");
    __cxa_guard_release(&qword_1EE19A830);
  }

  return &unk_1EE19B0B8;
}

void re::initInfo_RectangleShapeData(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0xB21153305B1BACB8;
  v15[1] = "RectangleShapeData";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE19A838, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19A838);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE19A760;
      if (!qword_1EE19A760)
      {
        v8 = re::allocInfo_CollisionShapeData(v6);
        qword_1EE19A760 = v8;
        re::initInfo_CollisionShapeData(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "CollisionShapeData";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE19A8D8 = v10;
      v11 = re::introspectionAllocator(v10);
      v12 = re::introspect_Vector2F(1);
      v13 = (*(*v11 + 32))(v11, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "extent";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1000000001;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE19A8E0 = v13;
      __cxa_guard_release(&qword_1EE19A838);
    }
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE19A8D8;
  *(this + 9) = re::internal::defaultConstruct<re::RectangleShapeData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RectangleShapeData>;
  *(this + 13) = re::internal::defaultConstructV2<re::RectangleShapeData>;
  *(this + 14) = re::internal::defaultDestructV2<re::RectangleShapeData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void re::internal::defaultConstruct<re::RectangleShapeData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = 11;
  *a3 = &unk_1F5CC95F0;
  *(a3 + 16) = 0;
}

uint64_t re::internal::defaultConstructV2<re::RectangleShapeData>(uint64_t result)
{
  *(result + 8) = 11;
  *result = &unk_1F5CC95F0;
  *(result + 16) = 0;
  return result;
}

void *re::allocInfo_SphereShapeData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19A848, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19A848))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19B148, "SphereShapeData");
    __cxa_guard_release(&qword_1EE19A848);
  }

  return &unk_1EE19B148;
}

void re::initInfo_SphereShapeData(re *this, re::IntrospectionBase *a2)
{
  v16[0] = 0x51F1FDBF4C05C2FCLL;
  v16[1] = "SphereShapeData";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE19A850, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19A850);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE19A760;
      if (!qword_1EE19A760)
      {
        v8 = re::allocInfo_CollisionShapeData(v6);
        qword_1EE19A760 = v8;
        re::initInfo_CollisionShapeData(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "CollisionShapeData";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE19A8E8 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::introspect_float(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "radius";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0xC00000001;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE19A8F0 = v14;
      __cxa_guard_release(&qword_1EE19A850);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE19A8E8;
  *(this + 9) = re::internal::defaultConstruct<re::SphereShapeData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SphereShapeData>;
  *(this + 13) = re::internal::defaultConstructV2<re::SphereShapeData>;
  *(this + 14) = re::internal::defaultDestructV2<re::SphereShapeData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v15 = v17;
}

uint64_t re::internal::defaultConstructV2<re::SphereShapeData>(uint64_t result)
{
  *(result + 8) = 2;
  *result = &unk_1F5CC9628;
  return result;
}

void *re::allocInfo_TriangleMeshShapeData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19A860, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19A860))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19B1D8, "TriangleMeshShapeData");
    __cxa_guard_release(&qword_1EE19A860);
  }

  return &unk_1EE19B1D8;
}

void re::initInfo_TriangleMeshShapeData(re *this, re::IntrospectionBase *a2)
{
  v16[0] = 0xF87ECA8D15E0C46CLL;
  v16[1] = "TriangleMeshShapeData";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE19A868, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19A868);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE19A760;
      if (!qword_1EE19A760)
      {
        v8 = re::allocInfo_CollisionShapeData(v6);
        qword_1EE19A760 = v8;
        re::initInfo_CollisionShapeData(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "CollisionShapeData";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE19A8F8 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::introspect_AssetHandle(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "mesh";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x1000000001;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE19A900 = v14;
      __cxa_guard_release(&qword_1EE19A868);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE19A8F8;
  *(this + 9) = re::internal::defaultConstruct<re::TriangleMeshShapeData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::TriangleMeshShapeData>;
  *(this + 13) = re::internal::defaultConstructV2<re::TriangleMeshShapeData>;
  *(this + 14) = re::internal::defaultDestructV2<re::TriangleMeshShapeData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v15 = v17;
}

void re::internal::defaultConstruct<re::TriangleMeshShapeData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = 12;
  *a3 = &unk_1F5CC9660;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
}

uint64_t re::internal::defaultConstructV2<re::TriangleMeshShapeData>(uint64_t result)
{
  *(result + 8) = 12;
  *result = &unk_1F5CC9660;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  return result;
}

void *re::allocInfo_IndexedTriangleMeshData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19A878, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19A878))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19B268, "IndexedTriangleMeshData");
    __cxa_guard_release(&qword_1EE19A878);
  }

  return &unk_1EE19B268;
}

void re::initInfo_IndexedTriangleMeshData(re *this, re::IntrospectionBase *a2)
{
  v21[0] = 0xDBF1A6A2E64C08A0;
  v21[1] = "IndexedTriangleMeshData";
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  *(this + 2) = v22;
  if ((atomic_load_explicit(&qword_1EE19A880, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19A880);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::FixedArray<float>>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "positions";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE19A9C0 = v9;
      v10 = re::introspectionAllocator(v9);
      re::IntrospectionInfo<re::FixedArray<unsigned short>>::get(v10, v11);
      v12 = (*(*v10 + 32))(v10, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "indices";
      *(v12 + 16) = &qword_1EE19AA48;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1800000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE19A9C8 = v12;
      v13 = re::introspectionAllocator(v12);
      re::IntrospectionInfo<re::FixedArray<unsigned short>>::get(v13, v14);
      v15 = (*(*v13 + 32))(v13, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "materialIndices";
      *(v15 + 16) = &qword_1EE19AA48;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x3000000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE19A9D0 = v15;
      v16 = re::introspectionAllocator(v15);
      v18 = re::introspect_BOOL(1, v17);
      v19 = (*(*v16 + 32))(v16, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "has32BitIndices";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x4800000004;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE19A9D8 = v19;
      __cxa_guard_release(&qword_1EE19A880);
    }
  }

  *(this + 2) = 0x5000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE19A9C0;
  *(this + 9) = re::internal::defaultConstruct<re::IndexedTriangleMeshData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IndexedTriangleMeshData>;
  *(this + 13) = re::internal::defaultConstructV2<re::IndexedTriangleMeshData>;
  *(this + 14) = re::internal::defaultDestructV2<re::IndexedTriangleMeshData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v20 = v22;
}

void re::IntrospectionInfo<re::FixedArray<unsigned short>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE19A890, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19A890))
  {
    re::IntrospectionFixedArrayBase::IntrospectionFixedArrayBase(&qword_1EE19AA48);
    qword_1EE19AA48 = &unk_1F5CC9730;
    __cxa_guard_release(&qword_1EE19A890);
  }

  if ((byte_1EE19A703 & 1) == 0)
  {
    v2 = re::introspect_uint16_t(1, a2);
    if ((byte_1EE19A703 & 1) == 0)
    {
      v3 = v2;
      byte_1EE19A703 = 1;
      v4 = v2[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE19AA48, 0);
      qword_1EE19AA58 = 0x1800000004;
      dword_1EE19AA60 = v4;
      word_1EE19AA64 = 0;
      *&xmmword_1EE19AA68 = 0;
      *(&xmmword_1EE19AA68 + 1) = 0xFFFFFFFFLL;
      qword_1EE19AA78 = v3;
      qword_1EE19AA80 = 0;
      qword_1EE19AA48 = &unk_1F5CC9730;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&qword_1EE19AA48, &v14);
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
        re::TypeBuilder::beginListType(&v14, &v12, 1, 0x18uLL, 8uLL, &v13);
        re::TypeBuilder::setConstructor(&v14, re::TypeBuilderHelper::registerFixedArray<unsigned short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v14, re::TypeBuilderHelper::registerFixedArray<unsigned short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v14, 1);
        re::TypeBuilder::setListAccessors(&v14, re::TypeBuilderHelper::registerFixedArray<unsigned short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<unsigned short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v14, re::TypeBuilderHelper::registerFixedArray<unsigned short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v14, re::TypeBuilderHelper::registerFixedArray<unsigned short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<unsigned short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<unsigned short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE19AA68 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::IndexedTriangleMeshData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 64) = 0;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t re::internal::defaultDestruct<re::IndexedTriangleMeshData>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::FixedArray<CoreIKTransform>::deinit(a3 + 6);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 3);

  return re::FixedArray<CoreIKTransform>::deinit(a3);
}

double re::internal::defaultConstructV2<re::IndexedTriangleMeshData>(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::IndexedTriangleMeshData>(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1 + 6);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 3);

  return re::FixedArray<CoreIKTransform>::deinit(a1);
}

uint64_t re::AssetHandle::loadedAsset<re::CollisionShapeAsset>(re::CollisionShapeAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  v2 = re::CollisionShapeAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, v2, 1);
}

void re::GeometricObjectBaseData::~GeometricObjectBaseData(re::GeometricObjectBaseData *this)
{
  *this = &unk_1F5CC9398;
  re::AssetHandle::~AssetHandle((this + 48));
}

{
  *this = &unk_1F5CC9398;
  re::AssetHandle::~AssetHandle((this + 48));

  JUMPOUT(0x1E6906520);
}

void re::GeometricObjectData::~GeometricObjectData(re::GeometricObjectData *this)
{
  *this = &unk_1F5CC9398;
  re::AssetHandle::~AssetHandle((this + 48));
}

{
  *this = &unk_1F5CC9398;
  re::AssetHandle::~AssetHandle((this + 48));

  JUMPOUT(0x1E6906520);
}

void re::CompoundShapeData::~CompoundShapeData(re::CompoundShapeData *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 6);
  re::FixedArray<re::GeometricObjectData>::deinit(this + 2);
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 6);
  re::FixedArray<re::GeometricObjectData>::deinit(this + 2);

  JUMPOUT(0x1E6906520);
}

void *re::FixedArray<re::GeometricObjectData>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 80 * v2;
      v6 = (v4 + 48);
      do
      {
        *(v6 - 6) = &unk_1F5CC9398;
        re::AssetHandle::~AssetHandle(v6);
        v6 = (v7 + 80);
        v4 += 80;
        v5 -= 80;
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

void re::ConvexPolyhedronShapeData::~ConvexPolyhedronShapeData(re::ConvexPolyhedronShapeData *this)
{
  re::DynamicArray<unsigned long>::deinit(this + 56);
  re::DynamicArray<unsigned long>::deinit(this + 16);
}

{
  re::DynamicArray<unsigned long>::deinit(this + 56);
  re::DynamicArray<unsigned long>::deinit(this + 16);

  JUMPOUT(0x1E6906520);
}

void re::TriangleMeshShapeData::~TriangleMeshShapeData(re::TriangleMeshShapeData *this)
{
  re::AssetHandle::~AssetHandle((this + 16));
}

{
  re::AssetHandle::~AssetHandle((this + 16));

  JUMPOUT(0x1E6906520);
}

void *re::IntrospectionFixedArray<re::GeometricObjectData>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<re::GeometricObjectData>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArray<re::GeometricObjectData>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void *re::IntrospectionFixedArray<re::GeometricObjectData>::init(uint64_t a1, void *a2, re *a3, int a4, unint64_t a5)
{
  result = re::FixedArray<re::GeometricObjectData>::init<>(a2, a3, a5);
  if (a5)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (a2[1] <= v12)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      result = re::introspectionInitElement(a3, a4, *(a1 + 48), (a2[2] + v11));
      ++v12;
      v11 += 80;
    }

    while (a5 != v12);
  }

  return result;
}

uint64_t re::IntrospectionFixedArray<re::GeometricObjectData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 80 * a3;
}

{
  if (*(a2 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 80 * a3;
}

void *re::TypeBuilderHelper::registerFixedArray<re::GeometricObjectData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

void *re::TypeBuilderHelper::registerFixedArray<re::GeometricObjectData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(void *a1)
{
  re::FixedArray<re::GeometricObjectData>::deinit(a1);

  return re::FixedArray<re::GeometricObjectData>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<re::GeometricObjectData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(void *a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  re::FixedArray<re::GeometricObjectData>::deinit(a1);
  v8 = re::FixedArray<re::GeometricObjectData>::init<>(a1, a3, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = a1[1];
    if (v9)
    {
      v10 = a1[2];
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

uint64_t re::TypeBuilderHelper::registerFixedArray<re::GeometricObjectData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + 80 * a2;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::GeometricObjectData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::GeometricObjectData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
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
    return *(v2 + 16) + 80 * v1;
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::GeometricObjectData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionFixedArray<unsigned short>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<unsigned short>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArray<unsigned short>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void re::IntrospectionFixedArray<unsigned short>::init(uint64_t a1, uint64_t *a2, re *a3, int a4, uint64_t a5)
{
  re::FixedArray<unsigned short>::init<>(a2, a3, a5);
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
      v10 += 2;
    }

    while (a5 != v11);
  }
}

uint64_t re::IntrospectionFixedArray<unsigned short>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 2 * a3;
}

{
  if (*(a2 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 2 * a3;
}

void *re::TypeBuilderHelper::registerFixedArray<unsigned short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<unsigned short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);

  return re::FixedArray<CoreIKTransform>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<unsigned short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t *a1, uint64_t a2, re::Allocator *a3, uint64_t a4)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);
  re::FixedArray<unsigned short>::init<>(a1, a3, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = a1[1];
    if (v9)
    {
      v10 = a1[2];
      v11 = 2 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 2;
        v11 -= 2;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<unsigned short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + 2 * a2;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<unsigned short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<unsigned short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
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
    return *(v2 + 16) + 2 * v1;
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<unsigned short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionInfo<unsigned char [16]>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&re::IntrospectionInfo<unsigned char [16]>::get(BOOL)::info);
  }

  if (a1)
  {
    if (re::IntrospectionInfo<unsigned char [16]>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<unsigned char [16]>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v14);
    v3 = re::IntrospectionInfo<unsigned char [16]>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v14);
    if (v3)
    {
      return &re::IntrospectionInfo<unsigned char [16]>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::IntrospectionInfo<unsigned char [16]>::get(BOOL)::isInitialized)
    {
LABEL_17:
      v11 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v11);
      return &re::IntrospectionInfo<unsigned char [16]>::get(BOOL)::info;
    }
  }

  re::IntrospectionInfo<unsigned char [16]>::get(BOOL)::isInitialized = 1;
  v7 = re::introspect_uint8_t(1, a2);
  re::IntrospectionCStyleArray::IntrospectionCStyleArray(&re::IntrospectionInfo<unsigned char [16]>::get(BOOL)::info, v7, 16);
  re::IntrospectionRegistry::add(v8, v9);
  re::getPrettyTypeName(&re::IntrospectionInfo<unsigned char [16]>::get(BOOL)::info, &v14);
  if (BYTE8(v14))
  {
    v10 = v15;
  }

  else
  {
    v10 = &v14 + 9;
  }

  if (v14 && (BYTE8(v14) & 1) != 0)
  {
    (*(*v14 + 40))();
  }

  v14 = *(v7 + 2);
  xmmword_1EE187080 = v13;
  if (v16)
  {
    if (v16)
    {
    }
  }

  if ((a1 & 1) == 0)
  {
    goto LABEL_17;
  }

  return &re::IntrospectionInfo<unsigned char [16]>::get(BOOL)::info;
}

void *re::allocInfo_DirectResourceId(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19B4C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19B4C0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19B4E0, "DirectResourceId");
    __cxa_guard_release(&qword_1EE19B4C0);
  }

  return &unk_1EE19B4E0;
}

void re::initInfo_DirectResourceId(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0x3F9727A418475D64;
  v11[1] = "DirectResourceId";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE19B4B8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19B4B8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<unsigned char [16]>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "m_value";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      _MergedGlobals_99 = v9;
      __cxa_guard_release(&qword_1EE19B4B8);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 1;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &_MergedGlobals_99;
  *(this + 9) = re::internal::defaultConstruct<re::DirectResourceId>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::DirectResourceId>;
  *(this + 13) = re::internal::defaultConstructV2<re::DirectResourceId>;
  *(this + 14) = re::internal::defaultDestructV2<re::DirectResourceId>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

unsigned int *re::internalEncode<re::snapshot::EncoderRaw>(unsigned int *a1, re::DirectBuffer *this)
{
  v5 = *MEMORY[0x1E69E9840];
  re::DirectBuffer::getResourceId(this, v4);
  if ((atomic_load_explicit(&qword_1EE19B4D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19B4D8))
  {
    qword_1EE19B4D0 = re::internal::getOrCreateInfo("DirectResourceId", re::allocInfo_DirectResourceId, re::initInfo_DirectResourceId, &unk_1EE19B4C8, 0);
    __cxa_guard_release(&qword_1EE19B4D8);
  }

  return re::snapshot::introspected::write<re::snapshot::EncoderRaw>(a1, v4, qword_1EE19B4D0);
}

unsigned int *re::internalEncode<re::snapshot::EncoderOPACK>(uint64_t a1, re::DirectBuffer *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  re::snapshot::EncoderOPACK::beginObject(a1);
  re::DirectBuffer::getResourceId(a2, v7);
  v4 = *(a1 + 16);
  if (v4 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 1);
  }

  else
  {
    v5 = *(a1 + 8);
    *(a1 + 16) = v4 + 1;
    *(v5 + v4) = 9;
  }

  if ((atomic_load_explicit(&qword_1EE19B4D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19B4D8))
  {
    qword_1EE19B4D0 = re::internal::getOrCreateInfo("DirectResourceId", re::allocInfo_DirectResourceId, re::initInfo_DirectResourceId, &unk_1EE19B4C8, 0);
    __cxa_guard_release(&qword_1EE19B4D8);
  }

  re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(a1, v7, qword_1EE19B4D0);
  return re::snapshot::EncoderOPACK::endObject(a1);
}

void re::internalDecode<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw *a1, void **a2)
{
  v17 = *MEMORY[0x1E69E9840];
  uuid_copy(dst, UUID_NULL);
  if ((atomic_load_explicit(&qword_1EE19B4D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19B4D8))
  {
    qword_1EE19B4D0 = re::internal::getOrCreateInfo("DirectResourceId", re::allocInfo_DirectResourceId, re::initInfo_DirectResourceId, &unk_1EE19B4C8, 0);
    __cxa_guard_release(&qword_1EE19B4D8);
  }

  re::snapshot::introspected::read<re::snapshot::DecoderRaw>(a1, dst, qword_1EE19B4D0);
  v4 = (*(*a1 + 32))(a1);
  v5 = v4[1];
  if (!v5)
  {
    v13 = *re::assetTypesLogObjects(v4);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *v15 = 0;
    v14 = "ServiceLocator not found when decoding DirectBuffer";
    goto LABEL_13;
  }

  v6 = re::ServiceLocator::serviceOrNull<re::DirectResourceAssetTracker>(v4[1]);
  if (!v6)
  {
    v13 = *re::assetTypesLogObjects(0);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *v15 = 0;
    v14 = "DirectResourceAssetTracker not found when decoding DirectBuffer";
LABEL_13:
    _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, v14, v15, 2u);
    return;
  }

  v7 = re::ServiceLocator::serviceOrNull<re::ResourceFetchService>(v5);
  if (v7)
  {
    v8 = (*(*a1 + 32))(a1);
    v9 = (*(*v7 + 40))(v7, *(v8 + 16));
    uuid_copy(v15, dst);
    v10 = re::DirectResourceAssetTracker::findResource(v6, v9, v15);
    if (v10)
    {
      v11 = DRResourceAsBuffer();
      v12 = *a2;
      *a2 = v11;
    }
  }
}

void re::internalDecode<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK *a1, void **a2)
{
  v17 = *MEMORY[0x1E69E9840];
  uuid_copy(dst, UUID_NULL);
  re::snapshot::DecoderOPACK::beginObject(a1, 0);
  if (re::snapshot::DecoderOPACK::beginField<1>(a1))
  {
    if ((atomic_load_explicit(&qword_1EE19B4D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19B4D8))
    {
      qword_1EE19B4D0 = re::internal::getOrCreateInfo("DirectResourceId", re::allocInfo_DirectResourceId, re::initInfo_DirectResourceId, &unk_1EE19B4C8, 0);
      __cxa_guard_release(&qword_1EE19B4D8);
    }

    re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(a1, dst, qword_1EE19B4D0);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  v4 = (*(*a1 + 32))(a1);
  v5 = v4[1];
  if (!v5)
  {
    v13 = *re::assetTypesLogObjects(v4);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *v15 = 0;
    v14 = "ServiceLocator not found when decoding DirectBuffer";
    goto LABEL_15;
  }

  v6 = re::ServiceLocator::serviceOrNull<re::DirectResourceAssetTracker>(v4[1]);
  if (!v6)
  {
    v13 = *re::assetTypesLogObjects(0);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *v15 = 0;
    v14 = "DirectResourceAssetTracker not found when decoding DirectBuffer";
LABEL_15:
    _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, v14, v15, 2u);
    return;
  }

  v7 = re::ServiceLocator::serviceOrNull<re::ResourceFetchService>(v5);
  if (v7)
  {
    v8 = (*(*a1 + 32))(a1);
    v9 = (*(*v7 + 40))(v7, *(v8 + 16));
    uuid_copy(v15, dst);
    v10 = re::DirectResourceAssetTracker::findResource(v6, v9, v15);
    if (v10)
    {
      v11 = DRResourceAsBuffer();
      v12 = *a2;
      *a2 = v11;
    }

    re::snapshot::DecoderOPACK::endObject(a1, 0);
  }
}

void sub_1E20E2EF8(_Unwind_Exception *a1)
{
  *v1 = &unk_1F5CCF868;
  objc_destructInstance(v1 + 1);
  _Unwind_Resume(a1);
}

BOOL re::snapshot::DecoderOPACK::beginField<1>(uint64_t a1)
{
  Integer = *(a1 + 40);
  if (Integer <= 0)
  {
    while (1)
    {
      v5 = *(a1 + 24);
      if (v5 >= *(a1 + 32))
      {
        v4 = 0;
      }

      else
      {
        *(a1 + 24) = v5 + 1;
        v4 = *v5;
      }

      re::snapshot::DecoderOPACK::skip(a1, v4);
      v6 = *(a1 + 24);
      if (v6 >= *(a1 + 32))
      {
        break;
      }

      v3 = *v6;
      if (v3 == 3)
      {
        break;
      }

      if ((v3 - 7) > 0x28)
      {
        Integer = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
      }

      else
      {
        *(a1 + 24) = v6 + 1;
        Integer = v3 - 8;
      }

      *(a1 + 40) = Integer;
      if (Integer >= 1)
      {
        return Integer == 1;
      }
    }

    Integer = 0x7FFFFFFF;
    *(a1 + 40) = 0x7FFFFFFF;
  }

  return Integer == 1;
}

void *re::allocInfo_DrawableQueueService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_100, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_100))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19B578, "DrawableQueueService");
    __cxa_guard_release(&_MergedGlobals_100);
  }

  return &unk_1EE19B578;
}

void re::initInfo_DrawableQueueService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x6C98752D9BDC5884;
  v6[1] = "DrawableQueueService";
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
  *(this + 8) = &re::initInfo_DrawableQueueService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

uint64_t *re::SkeletalPoseDefinitionAsset::assetType(re::SkeletalPoseDefinitionAsset *this)
{
  {
    re::SkeletalPoseDefinitionAsset::assetType(void)::type = "SkeletalPose";
    qword_1EE1C6570 = 0;
    re::AssetType::generateCompiledExtension(&re::SkeletalPoseDefinitionAsset::assetType(void)::type);
  }

  return &re::SkeletalPoseDefinitionAsset::assetType(void)::type;
}

void *re::SkeletalPoseDefinitionAsset::init(re::SkeletalPoseDefinitionAsset *this, re::Allocator *a2)
{
  v2 = a2;
  if (!a2)
  {
  }

  *(this + 15) = v2;
  re::DynamicArray<re::FixedArray<re::StringID>>::setCapacity(this + 15, 0);
  ++*(this + 36);
  *(this + 20) = v2;
  re::DynamicArray<re::FixedArray<re::StringID>>::setCapacity(this + 20, 0);
  *(this + 25) = v2;
  v4 = this + 200;
  ++*(v4 - 4);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(v4, 0);
  ++*(v4 + 6);
  *(v4 + 10) = v2;
  result = re::DynamicArray<re::SkeletalPoseMeshMap>::setCapacity(v4 + 10, 0);
  ++*(v4 + 26);
  return result;
}

void re::SkeletalPoseDefinitionAsset::init(re::SkeletalPoseDefinitionAsset *this, const re::MeshAsset *a2, re::Allocator *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 79))
  {
    v7 = *re::assetsLogObjects(this);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Mesh Asset doesn't have a mesh manager.", buf, 2u);
    }

    return;
  }

  v4 = a2;
  v5 = this;
  re::SkeletalPoseDefinitionAsset::init(this, a3);
  if (!*(v4 + 79))
  {
    return;
  }

  v6 = *(v4 + 156);
  if (*(v5 + 16) >= v6)
  {
    if (!v6)
    {
      goto LABEL_16;
    }
  }

  else
  {
    re::DynamicArray<re::FixedArray<re::StringID>>::setCapacity(v5 + 15, *(v4 + 156));
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = re::MeshAsset::skeletonAtIndex(v4, v9);
    re::StringID::StringID(&v39, v10);
    v11 = *(v10 + 24);
    *buf = *(v10 + 32);
    *&buf[8] = v11;
    v12 = *(v10 + 96);
    *v41 = *(v10 + 104);
    *&v41[8] = v12;
    if (v9 >= *(v4 + 35))
    {
      memset(v38, 0, sizeof(v38));
    }

    else
    {
      re::AssetHandle::AssetHandle(v38, (*(v4 + 37) + v8));
    }

    re::SkeletalPoseDefinitionAsset::addDefaultSkeletalPose(v5, &v39, buf, v41, &re::SkeletalPoseDefinitionAsset::init(re::MeshAsset const&,re::Allocator *)::emptyJointNameMap, v38);
    re::AssetHandle::~AssetHandle(v38);
    if (*&v39.var0)
    {
      if (*&v39.var0)
      {
      }
    }

    *&v39.var0 = 0;
    v39.var1 = &str_67;
    ++v9;
    v8 += 24;
  }

  while (v6 != v9);
LABEL_16:
  v14 = *(v4 + 226);
  if (*(v5 + 36) < v14)
  {
    re::DynamicArray<re::SkeletalPoseMeshMap>::setCapacity(v5 + 35, v14);
  }

  v15 = 32;
  if (*(v4 + 1264))
  {
    v15 = 608;
  }

  v34 = *(v4 + v15);
  if (v34)
  {
    v16 = 0;
    v17 = *(v4 + 79);
    v37 = v4;
    v33 = v17;
    do
    {
      v18 = *(v4 + 76);
      if (v18 <= v16)
      {
        goto LABEL_47;
      }

      v19 = *(*(v4 + 78) + 8 * v16);
      v18 = WORD1(v19);
      v3 = *(v17 + 24);
      if (v3 <= WORD1(v19))
      {
LABEL_48:
        v40 = 0;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        *buf = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v41 = 136315906;
        *&v41[4] = "operator[]";
        *&v41[12] = 1024;
        *&v41[14] = 797;
        v42 = 2048;
        v43 = v18;
        v44 = 2048;
        v45 = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v35 = v16;
      v20 = *(*(v17 + 40) + 16 * WORD1(v19)) + 864 * v19;
      v21 = *(v20 + 224);
      if (v21)
      {
        v22 = *(v21 + 8);
        if (v22)
        {
          v23 = 0;
          v18 = 488;
          v24 = 4;
          v36 = *(v21 + 8);
          do
          {
            v25 = *(v20 + 224);
            if (v25 && *(v25 + 8) > v23)
            {
              v26 = *(*(v25 + 16) + v24);
            }

            else
            {
              v26 = 0xFFFFFFFFLL;
            }

            if (v6 > v26)
            {
              v27 = *(v20 + 56);
              if (v27 <= v23)
              {
                v40 = 0;
                v49 = 0u;
                v50 = 0u;
                v47 = 0u;
                v48 = 0u;
                *buf = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v41 = 136315906;
                *&v41[4] = "operator[]";
                *&v41[12] = 1024;
                *&v41[14] = 476;
                v42 = 2048;
                v43 = v23;
                v44 = 2048;
                v45 = v27;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_47:
                v40 = 0;
                v49 = 0u;
                v50 = 0u;
                v47 = 0u;
                v48 = 0u;
                *buf = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v41 = 136315906;
                *&v41[4] = "operator[]";
                *&v41[12] = 1024;
                *&v41[14] = 797;
                v42 = 2048;
                v43 = v16;
                v44 = 2048;
                v45 = v18;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
                goto LABEL_48;
              }

              v16 = v6;
              v28 = v5;
              v29 = *(v20 + 64);
              v30 = re::MeshAsset::skeletonAtIndex(v37, v26);
              buf[0] = 2;
              v3 = buf;
              re::StringID::StringID(&buf[8], v20);
              v31 = (v29 + v18);
              v5 = v28;
              re::StringID::StringID((&v47 + 8), v31);
              re::StringID::StringID((&v48 + 8), v30);
              BYTE8(v49) = 0;
              HIDWORD(v49) = v26;
              v32 = re::DynamicArray<re::SkeletalPoseMeshMap>::add(v28 + 35, buf);
              if (BYTE8(v48))
              {
                if (BYTE8(v48))
                {
                }
              }

              *(&v48 + 1) = 0;
              *&v49 = &str_67;
              if (BYTE8(v47))
              {
                if (BYTE8(v47))
                {
                }
              }

              *(&v47 + 1) = 0;
              *&v48 = &str_67;
              v6 = v16;
              if (buf[8])
              {
                if (buf[8])
                {
                }
              }

              v22 = v36;
            }

            ++v23;
            v24 += 88;
            v18 += 544;
          }

          while (v22 != v23);
        }
      }

      v16 = v35 + 1;
      v4 = v37;
      v17 = v33;
    }

    while (v35 + 1 != v34);
  }
}

uint64_t re::SkeletalPoseDefinitionAsset::addDefaultSkeletalPose(void *a1, StringID *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t *a6)
{
  v35 = *MEMORY[0x1E69E9840];
  v30 = 0uLL;
  *&v31 = 0;
  v11 = *(a3 + 8);
  if (v11)
  {
    re::FixedArray<re::StringID>::copy(&v30, a3);
  }

  re::DynamicArray<re::FixedArray<re::StringID>>::add(a1 + 15, &v30);
  re::FixedArray<re::StringID>::deinit(&v30);
  re::DynamicArray<re::StringID>::add((a1 + 5), a2);
  if (a4[1])
  {
    v12 = a1[27];
    v13 = a1[17];
    if (v12 < v13)
    {
      re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::resize(a1 + 25, v13);
      v13 = a1[17];
      v12 = a1[27];
    }

    if (v12 <= v13 - 1)
    {
      goto LABEL_24;
    }

    v14 = (a1[29] + 24 * (v13 - 1));
    re::FixedArray<CoreIKTransform>::deinit(v14);
    re::FixedArray<re::GenericSRT<float>>::init<>(v14, a1[25], *(a3 + 8));
    if (*(a5 + 28))
    {
      v16 = *(a3 + 8);
      if (v16)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        while (1)
        {
          v20 = *(a3 + 8);
          if (v20 <= v19)
          {
            break;
          }

          v21 = 0xBF58476D1CE4E5B9 * ((*(*a3 + v17) >> 31) ^ (*(*a3 + v17) >> 1));
          re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a5, (*a3 + v17), (0x94D049BB133111EBLL * (v21 ^ (v21 >> 27))) ^ ((0x94D049BB133111EBLL * (v21 ^ (v21 >> 27))) >> 31), &v30);
          if (HIDWORD(v30) != 0x7FFFFFFF)
          {
            v22 = *(*(a5 + 16) + 32 * HIDWORD(v30) + 24);
            v23 = a4[1];
            if (v23 <= v22)
            {
              goto LABEL_22;
            }

            if (v14[1] <= v19)
            {
              goto LABEL_23;
            }

            v24 = (*a4 + 48 * v22);
            v25 = (v14[2] + v18);
            v26 = *v24;
            v27 = v24[2];
            v25[1] = v24[1];
            v25[2] = v27;
            *v25 = v26;
          }

          ++v19;
          v18 += 48;
          v17 += 16;
          if (v16 == v19)
          {
            goto LABEL_18;
          }
        }

        re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v19, v20);
        _os_crash();
        __break(1u);
LABEL_22:
        re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v22, v23);
        _os_crash();
        __break(1u);
LABEL_23:
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v30 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_24:
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v30 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }

    else
    {
      re::FixedArray<re::GenericSRT<float>>::operator=(v14, a4);
    }
  }

LABEL_18:
  if (a6[1])
  {
    re::DynamicArray<re::AssetHandle>::resize(a1, a1[17]);
    re::AssetHandle::operator=(a1[4] + 24 * a1[2] - 24, a6);
  }

  return a1[17] - 1;
}

void *re::DynamicArray<re::SkeletalPoseMeshMap>::add(void *this, uint64_t a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::SkeletalPoseMeshMap>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + (v4 << 6);
  *v5 = *a2;
  v6 = *(a2 + 8);
  *(v5 + 8) = *(v5 + 8) & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 8) = *(a2 + 8) & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = &str_67;
  v7 = *(a2 + 24);
  *(v5 + 24) = *(v5 + 24) & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  *(v5 + 24) = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  *(v5 + 32) = *(a2 + 32);
  *(a2 + 24) = 0;
  *(a2 + 32) = &str_67;
  v8 = *(a2 + 40);
  *(v5 + 40) = *(v5 + 40) & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  *(v5 + 40) = *(a2 + 40) & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  *(v5 + 48) = *(a2 + 48);
  *(a2 + 40) = 0;
  *(a2 + 48) = &str_67;
  *(v5 + 56) = *(a2 + 56);
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

uint64_t re::SkeletalPoseDefinitionAsset::deinit(re::SkeletalPoseDefinitionAsset *this)
{
  re::DynamicArray<re::FixedArray<re::StringID>>::deinit(this + 120);
  re::DynamicArray<re::FixedArray<re::StringID>>::deinit(this + 160);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(this + 200);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(this + 240);

  return re::DynamicArray<re::MeshRigGraphIndex>::deinit(this + 280);
}

void re::SkeletalPoseDefinitionAsset::constructSkeletalPoses(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v9 = a1[17];
  re::DynamicArray<re::SkeletalPose>::resize(a3, v9);
  v31 = v9;
  if (v9)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = a1[17];
      if (v14 <= v13)
      {
        break;
      }

      v4 = *(a3 + 16);
      if (v4 <= v13)
      {
        goto LABEL_40;
      }

      v5 = *(a1[19] + v11 + 8);
      v4 = *(*(a3 + 32) + v12 + 24);
      if (v13 >= a1[2])
      {
        v6 = 0;
      }

      else
      {
        v10 = re::AssetHandle::loadedAsset<re::SkeletonAsset>((a1[4] + v11));
        if (v10)
        {
          v6 = (v10 + 88);
        }

        else
        {
          v6 = 0;
        }

        v14 = a1[17];
      }

      if (v14 <= v13)
      {
        goto LABEL_41;
      }

      v15 = a1[19];
      v16 = re::globalAllocators(v10);
      v17 = (*(*v16[2] + 32))(v16[2], 280, 8);
      v18 = *(v15 + v11 + 8);
      *&v44 = *(v15 + v11 + 16);
      *(&v44 + 1) = v18;
      v34 = v17;
      v19 = *(a3 + 16);
      if (v19 <= v13)
      {
        goto LABEL_42;
      }

      re::SkeletalPose::reset((*(a3 + 32) + v12), &v34);
      if (v6)
      {
        re::StringID::StringID(&v32, v6);
      }

      else
      {
        v32 = 0x12712E227DDD53ALL;
        v33 = "/noSkeleton";
      }

      v6 = *(a3 + 16);
      if (v6 <= v13)
      {
        goto LABEL_43;
      }

      v10 = re::StringID::operator=((*(a3 + 32) + v12), &v32);
      if (v32)
      {
        if (v32)
        {
        }
      }

      if (v5 != v4 && v13 < a1[27])
      {
        v20 = a1[29] + v11;
        if (v5 == *(v20 + 8))
        {
          v4 = *(a3 + 16);
          if (v4 <= v13)
          {
            goto LABEL_46;
          }

          v10 = re::FixedArray<re::GenericSRT<float>>::operator=((*(a3 + 32) + v12 + 16), v20);
        }
      }

      if (v17)
      {
      }

      v13 = (v13 + 1);
      v12 += 88;
      v11 += 24;
      if (v31 == v13)
      {
        goto LABEL_28;
      }
    }

    v32 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    v39 = 797;
    v40 = 2048;
    v41 = v13;
    v42 = 2048;
    v43 = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_40:
    v32 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    v39 = 789;
    v40 = 2048;
    v41 = v13;
    v42 = 2048;
    v43 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_41:
    v32 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    v19 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    v39 = 797;
    v40 = 2048;
    v41 = v13;
    v42 = 2048;
    v43 = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_42:
    v32 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    v39 = 789;
    v40 = 2048;
    v41 = v13;
    v42 = 2048;
    v43 = v19;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_43:
    v35 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    v39 = 789;
    v40 = 2048;
    v41 = v13;
    v42 = 2048;
    v43 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_44:
    v32 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    v39 = 797;
    v40 = 2048;
    v41 = v5;
    v42 = 2048;
    v43 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_45:
    v32 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    v39 = 789;
    v40 = 2048;
    v41 = v5;
    v42 = 2048;
    v43 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_46:
    v32 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    v39 = 789;
    v40 = 2048;
    v41 = v13;
    v42 = 2048;
    v43 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_47:
    v35 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    v39 = 789;
    v40 = 2048;
    v41 = v5;
    v42 = 2048;
    v43 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_28:
  v21 = a1[22];
  v13 = a4;
  re::DynamicArray<re::DynamicArray<float>>::resize(a4, v21);
  if (v21)
  {
    v22 = 0;
    v23 = 0;
    v5 = 0;
    while (1)
    {
      v4 = a1[22];
      if (v4 <= v5)
      {
        goto LABEL_44;
      }

      v4 = a4[2];
      if (v4 <= v5)
      {
        goto LABEL_45;
      }

      v24 = *(a1[24] + v22 + 8);
      v25 = a4[4] + v23;
      v26 = *(v25 + 16);
      re::DynamicArray<re::Matrix4x4<float>>::resize(v25, v24);
      if (v24 != v26 && v5 < a1[32])
      {
        v27 = a1[34] + v22;
        if (v24 == *(v27 + 8))
        {
          v32 = 0;
          v33 = 0;
          v29 = v27 + 8;
          v28 = *(v27 + 8);
          v32 = *(v29 + 8);
          v33 = v28;
          v4 = a4[2];
          if (v4 <= v5)
          {
            goto LABEL_47;
          }

          re::DynamicArray<re::Matrix4x4<float>>::operator=((a4[4] + v23), &v32);
        }
      }

      v5 = (v5 + 1);
      v23 += 40;
      v22 += 24;
      if (v21 == v5)
      {
        return;
      }
    }
  }
}

void re::DynamicArray<re::SkeletalPose>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 88 * a2;
    v9 = a2;
    do
    {
      re::SkeletalPose::~SkeletalPose((*(a1 + 32) + v8));
      ++v9;
      v8 += 88;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::SkeletalPose>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 88 * v4;
      do
      {
        v7 = *(a1 + 32) + v6;
        *(v7 + 64) = 0;
        *(v7 + 72) = 0;
        *(v7 + 32) = 0uLL;
        *(v7 + 48) = 0uLL;
        *v7 = 0uLL;
        *(v7 + 16) = 0uLL;
        *(v7 + 8) = &str_67;
        *(v7 + 64) = 0;
        *(v7 + 80) = 0;
        v6 += 88;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

_anonymous_namespace_ *re::DynamicArray<re::Matrix4x4<float>>::operator=(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*this)
  {
    if (v4)
    {
      re::DynamicArray<re::Matrix4x4<float>>::copy(this, 0, *a2, v4);
      re::DynamicArray<re::Matrix4x4<float>>::resize(this, *(a2 + 8));
    }

    else
    {
      *(this + 2) = 0;
      ++*(this + 6);
    }
  }

  else if (v4)
  {
    re::DynamicArray<re::Matrix4x4<float>>::setCapacity(this, v4);
    ++*(this + 6);
    re::DynamicArray<re::Matrix4x4<float>>::copy(this, 0, *a2, *(a2 + 8));
  }

  return this;
}

re *re::internal::destroyPersistent<re::SkeletalPoseDefinitionAsset>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::DynamicArray<re::MeshRigGraphIndex>::deinit(a3 + 280);
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(a3 + 240);
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(a3 + 200);
    re::DynamicArray<re::FixedArray<re::StringID>>::deinit(a3 + 160);
    re::DynamicArray<re::FixedArray<re::StringID>>::deinit(a3 + 120);
    re::DynamicArray<re::StringID>::deinit(a3 + 80);
    re::DynamicArray<re::StringID>::deinit(a3 + 40);
    re::DynamicArray<re::AssetHandle>::deinit(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::SkeletalPoseDefinitionAssetLoader::introspectionType(re::SkeletalPoseDefinitionAssetLoader *this)
{
  if ((atomic_load_explicit(&qword_1EE19B658, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19B658))
  {
    qword_1EE19B650 = re::internal::getOrCreateInfo("SkeletalPoseDefinitionAsset", re::allocInfo_SkeletalPoseDefinitionAsset, re::initInfo_SkeletalPoseDefinitionAsset, &unk_1EE19B648, 0);
    __cxa_guard_release(&qword_1EE19B658);
  }

  return qword_1EE19B650;
}

void re::introspect_SkeletalPoseType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE19B610, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE19B618, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19B618))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE19B798, "SkeletalPoseType", 1, 1, 1, 1);
      qword_1EE19B798 = &unk_1F5D0C658;
      qword_1EE19B7D8 = &re::introspect_SkeletalPoseType(BOOL)::enumTable;
      dword_1EE19B7A8 = 9;
      __cxa_guard_release(&qword_1EE19B618);
    }

    if (_MergedGlobals_101)
    {
      break;
    }

    _MergedGlobals_101 = 1;
    re::IntrospectionRegistry::add(&qword_1EE19B798, a2);
    v33 = 0x3447792674AFC288;
    v34 = "SkeletalPoseType";
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
      v6 = qword_1EE19B7D8;
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
      xmmword_1EE19B7B8 = v35;
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
    v28 = __cxa_guard_acquire(&qword_1EE19B610);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "LocalSpaceSRTs";
      qword_1EE19B678 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 8) = 1;
      *(v32 + 16) = "ModelSpaceMatrix4x4s";
      qword_1EE19B680 = v32;
      __cxa_guard_release(&qword_1EE19B610);
    }
  }
}

void *re::allocInfo_SkeletalPoseMeshMap(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19B620, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19B620))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19B7E0, "SkeletalPoseMeshMap");
    __cxa_guard_release(&qword_1EE19B620);
  }

  return &unk_1EE19B7E0;
}

void re::initInfo_SkeletalPoseMeshMap(re *this, re::IntrospectionBase *a2)
{
  v21[0] = 0xC96B6221C8DF5BCALL;
  v21[1] = "SkeletalPoseMeshMap";
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  *(this + 2) = v22;
  if ((atomic_load_explicit(&qword_1EE19B628, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19B628);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_MeshIdentifierAsset(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "meshIdentifier";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE19B688 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::IntrospectionInfo<re::StringID>::get(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "skeletonName";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2800000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE19B690 = v12;
      v13 = re::introspectionAllocator(v12);
      re::introspect_SkeletalPoseType(v13, v14);
      v15 = (*(*v13 + 32))(v13, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "skeletalPoseType";
      *(v15 + 16) = &qword_1EE19B798;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x3800000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE19B698 = v15;
      v16 = re::introspectionAllocator(v15);
      v18 = re::introspect_uint32_t(1, v17);
      v19 = (*(*v16 + 32))(v16, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "poseIndex";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x3C00000004;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE19B6A0 = v19;
      __cxa_guard_release(&qword_1EE19B628);
    }
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE19B688;
  *(this + 9) = re::internal::defaultConstruct<re::SkeletalPoseMeshMap>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SkeletalPoseMeshMap>;
  *(this + 13) = re::internal::defaultConstructV2<re::SkeletalPoseMeshMap>;
  *(this + 14) = re::internal::defaultDestructV2<re::SkeletalPoseMeshMap>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v20 = v22;
}

void re::internal::defaultConstruct<re::SkeletalPoseMeshMap>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = &str_67;
  *(a3 + 24) = 0;
  *(a3 + 32) = &str_67;
  *(a3 + 40) = 0;
  *(a3 + 48) = &str_67;
  *(a3 + 56) = 0;
  *(a3 + 60) = 0;
}

void re::internal::defaultDestruct<re::SkeletalPoseMeshMap>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 40));
  re::StringID::destroyString((a3 + 24));

  re::StringID::destroyString((a3 + 8));
}

uint64_t re::internal::defaultConstructV2<re::SkeletalPoseMeshMap>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = &str_67;
  *(result + 24) = 0;
  *(result + 32) = &str_67;
  *(result + 40) = 0;
  *(result + 48) = &str_67;
  *(result + 56) = 0;
  *(result + 60) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::SkeletalPoseMeshMap>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 40));
  re::StringID::destroyString((a1 + 24));

  re::StringID::destroyString((a1 + 8));
}

void *re::allocInfo_SkeletalPoseDefinitionAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19B638, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19B638))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19B870, "SkeletalPoseDefinitionAsset");
    __cxa_guard_release(&qword_1EE19B638);
  }

  return &unk_1EE19B870;
}

void re::initInfo_SkeletalPoseDefinitionAsset(re *this, re::IntrospectionBase *a2)
{
  v25[0] = 0x97599FFE2F080A26;
  v25[1] = "SkeletalPoseDefinitionAsset";
  if (v25[0])
  {
    if (v25[0])
    {
    }
  }

  *(this + 2) = v26;
  if ((atomic_load_explicit(&qword_1EE19B640, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19B640);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicArray<re::AssetHandle>>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "skeletons";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE19B6A8 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicArray<re::FixedArray<re::StringID>>>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "skeletalPoseJoints";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x7800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE19B6B0 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::IntrospectionInfo<re::DynamicArray<re::FixedArray<re::StringID>>>::get(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "skeletalPoseModelSpaceTransformJoints";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0xA000000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE19B6B8 = v17;
      v18 = re::introspectionAllocator(v17);
      re::IntrospectionInfo<re::DynamicArray<re::FixedArray<re::GenericSRT<float>>>>::get();
      v19 = (*(*v18 + 32))(v18, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "defaultPoseTransforms";
      *(v19 + 16) = qword_1EE19B6D8;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0xC800000004;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE19B6C0 = v19;
      v20 = re::introspectionAllocator(v19);
      re::IntrospectionInfo<re::DynamicArray<re::FixedArray<re::Matrix4x4<float>>>>::get();
      v21 = (*(*v20 + 32))(v20, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "defaultModelSpacePoseTransforms";
      *(v21 + 16) = &qword_1EE19B718;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0xF000000005;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE19B6C8 = v21;
      v22 = re::introspectionAllocator(v21);
      re::IntrospectionInfo<re::DynamicArray<re::SkeletalPoseMeshMap>>::get(v22);
      v23 = (*(*v22 + 32))(v22, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "skeletalMeshPoses";
      *(v23 + 16) = &qword_1EE19B758;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x11800000006;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE19B6D0 = v23;
      __cxa_guard_release(&qword_1EE19B640);
    }
  }

  *(this + 2) = 0x14000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE19B6A8;
  *(this + 9) = re::internal::defaultConstruct<re::SkeletalPoseDefinitionAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SkeletalPoseDefinitionAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::SkeletalPoseDefinitionAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::SkeletalPoseDefinitionAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v24 = v26;
}

void re::IntrospectionInfo<re::DynamicArray<re::FixedArray<re::GenericSRT<float>>>>::get()
{
  if ((atomic_load_explicit(&qword_1EE19B660, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19B660))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(qword_1EE19B6D8);
    qword_1EE19B6D8[0] = &unk_1F5CC9940;
    __cxa_guard_release(&qword_1EE19B660);
  }

  if ((byte_1EE19B609 & 1) == 0)
  {
    v0 = re::IntrospectionInfo<re::FixedArray<re::GenericSRT<float>>>::get(1);
    if ((byte_1EE19B609 & 1) == 0)
    {
      v1 = v0;
      byte_1EE19B609 = 1;
      v2 = *(v0 + 6);
      ArcSharedObject::ArcSharedObject(qword_1EE19B6D8, 0);
      unk_1EE19B6E8 = 0x2800000003;
      unk_1EE19B6F0 = v2;
      unk_1EE19B6F4 = 0;
      *&xmmword_1EE19B6F8 = 0;
      *(&xmmword_1EE19B6F8 + 1) = 0xFFFFFFFFLL;
      *algn_1EE19B708 = v1;
      qword_1EE19B710 = 0;
      qword_1EE19B6D8[0] = &unk_1F5CC9940;
      re::IntrospectionRegistry::add(v3, v4);
      re::getPrettyTypeName(qword_1EE19B6D8, &v12);
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

      v9 = *(v1 + 2);
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
        re::TypeBuilder::setConstructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::GenericSRT<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::GenericSRT<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v12, 1);
        re::TypeBuilder::setListAccessors(&v12, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::GenericSRT<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::GenericSRT<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v12, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::GenericSRT<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v12, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::GenericSRT<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::GenericSRT<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::GenericSRT<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v12, v7);
        re::StackScratchAllocator::~StackScratchAllocator(v15);
      }

      xmmword_1EE19B6F8 = v8;
      if (v10)
      {
        if (v10)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::FixedArray<re::Matrix4x4<float>>>>::get()
{
  if ((atomic_load_explicit(&qword_1EE19B668, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19B668))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE19B718);
    qword_1EE19B718 = &unk_1F5CC99D8;
    __cxa_guard_release(&qword_1EE19B668);
  }

  if ((byte_1EE19B60A & 1) == 0)
  {
    v0 = re::IntrospectionInfo<re::FixedArray<re::Matrix4x4<float>>>::get(1);
    if ((byte_1EE19B60A & 1) == 0)
    {
      v1 = v0;
      byte_1EE19B60A = 1;
      v2 = *(v0 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE19B718, 0);
      qword_1EE19B728 = 0x2800000003;
      dword_1EE19B730 = v2;
      word_1EE19B734 = 0;
      *&xmmword_1EE19B738 = 0;
      *(&xmmword_1EE19B738 + 1) = 0xFFFFFFFFLL;
      qword_1EE19B748 = v1;
      unk_1EE19B750 = 0;
      qword_1EE19B718 = &unk_1F5CC99D8;
      re::IntrospectionRegistry::add(v3, v4);
      re::getPrettyTypeName(&qword_1EE19B718, &v12);
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
        re::TypeBuilder::setConstructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::Matrix4x4<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::Matrix4x4<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v12, 1);
        re::TypeBuilder::setListAccessors(&v12, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::Matrix4x4<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::Matrix4x4<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v12, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::Matrix4x4<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v12, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::Matrix4x4<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::Matrix4x4<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::Matrix4x4<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v12, v7);
        re::StackScratchAllocator::~StackScratchAllocator(v15);
      }

      xmmword_1EE19B738 = v8;
      if (v10)
      {
        if (v10)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::SkeletalPoseMeshMap>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE19B670, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE19B670);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE19B758);
      qword_1EE19B758 = &unk_1F5CC9A70;
      __cxa_guard_release(&qword_1EE19B670);
    }
  }

  if ((byte_1EE19B60B & 1) == 0)
  {
    v1 = qword_1EE19B630;
    if (qword_1EE19B630 || (v1 = re::allocInfo_SkeletalPoseMeshMap(a1), qword_1EE19B630 = v1, re::initInfo_SkeletalPoseMeshMap(v1, v2), (byte_1EE19B60B & 1) == 0))
    {
      byte_1EE19B60B = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE19B758, 0);
      qword_1EE19B768 = 0x2800000003;
      dword_1EE19B770 = v3;
      word_1EE19B774 = 0;
      *&xmmword_1EE19B778 = 0;
      *(&xmmword_1EE19B778 + 1) = 0xFFFFFFFFLL;
      qword_1EE19B788 = v1;
      unk_1EE19B790 = 0;
      qword_1EE19B758 = &unk_1F5CC9A70;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE19B758, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE19B778 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::SkeletalPoseDefinitionAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 312) = 0;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 184) = 0;
  *(a3 + 224) = 0;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 264) = 0;
  *(a3 + 248) = 0u;
  *(a3 + 232) = 0u;
  *(a3 + 304) = 0;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  return result;
}

uint64_t re::internal::defaultDestruct<re::SkeletalPoseDefinitionAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshRigGraphIndex>::deinit(a3 + 280);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(a3 + 240);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(a3 + 200);
  re::DynamicArray<re::FixedArray<re::StringID>>::deinit(a3 + 160);
  re::DynamicArray<re::FixedArray<re::StringID>>::deinit(a3 + 120);
  re::DynamicArray<re::StringID>::deinit(a3 + 80);
  re::DynamicArray<re::StringID>::deinit(a3 + 40);

  return re::DynamicArray<re::AssetHandle>::deinit(a3);
}

double re::internal::defaultConstructV2<re::SkeletalPoseDefinitionAsset>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 312) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 224) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::SkeletalPoseDefinitionAsset>(uint64_t a1)
{
  re::DynamicArray<re::MeshRigGraphIndex>::deinit(a1 + 280);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(a1 + 240);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(a1 + 200);
  re::DynamicArray<re::FixedArray<re::StringID>>::deinit(a1 + 160);
  re::DynamicArray<re::FixedArray<re::StringID>>::deinit(a1 + 120);
  re::DynamicArray<re::StringID>::deinit(a1 + 80);
  re::DynamicArray<re::StringID>::deinit(a1 + 40);

  return re::DynamicArray<re::AssetHandle>::deinit(a1);
}

void *re::DynamicArray<re::SkeletalPoseMeshMap>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SkeletalPoseMeshMap>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 58)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 64, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = a2 << 6;
          result = (*(*result + 32))(result, a2 << 6, 8);
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
        v10 = &v8[8 * v9];
        v11 = v7;
        do
        {
          *v11 = *v8;
          v13 = (v8 + 1);
          v12 = v8[1];
          v11[1] = v11[1] & 0xFFFFFFFFFFFFFFFELL | v8[1] & 1;
          v11[1] = v8[1] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[2] = v8[2];
          v8[2] = &str_67;
          v8[1] = 0;
          v15 = (v8 + 3);
          v14 = v8[3];
          v11[3] = v11[3] & 0xFFFFFFFFFFFFFFFELL | v8[3] & 1;
          v11[3] = v8[3] & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
          v11[4] = v8[4];
          v8[4] = &str_67;
          v8[3] = 0;
          v17 = v8[5];
          v16 = (v8 + 5);
          v11[5] = v11[5] & 0xFFFFFFFFFFFFFFFELL | v17 & 1;
          v11[5] = *v16 & 0xFFFFFFFFFFFFFFFELL | v17 & 1;
          v11[6] = *(v16 + 1);
          *v16 = 0;
          *(v16 + 1) = &str_67;
          v11[7] = *(v16 + 2);
          re::StringID::destroyString(v16);
          re::StringID::destroyString(v15);
          re::StringID::destroyString(v13);
          v11 += 8;
          v8 = (v16 + 24);
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

void *re::DynamicArray<re::SkeletalPoseMeshMap>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::SkeletalPoseMeshMap>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::SkeletalPoseMeshMap>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::Matrix4x4<float>>::copy(void *this, unint64_t a2, char *__src, uint64_t a4)
{
  if (!a4)
  {
    return this;
  }

  v5 = a2;
  v6 = this;
  v7 = this[2];
  if (v7 + 1 <= a2)
  {
    v13 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v14) = 136315906;
    *(&v14 + 4) = "copy";
    WORD6(v14) = 1024;
    HIWORD(v14) = 643;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_12:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, v5, v4, v13, v14);
    _os_crash();
    __break(1u);
  }

  v4 = a4;
  v8 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_12;
  }

  if (v7 >= v8)
  {
    this = memmove((this[4] + (a2 << 6)), __src, a4 << 6);
  }

  else
  {
    re::DynamicArray<re::Matrix4x4<float>>::growCapacity(this, a2 + a4);
    v10 = v6[2];
    v11 = v10 - v5;
    v12 = &__src[64 * (v10 - v5)];
    if (v10 != v5)
    {
      memmove((v6[4] + (v5 << 6)), __src, v11 << 6);
      v5 = v6[2];
    }

    this = memcpy((v6[4] + (v5 << 6)), v12, (v4 - v11) << 6);
    v6[2] = v8;
  }

  ++*(v6 + 6);
  return this;
}

void *re::IntrospectionDynamicArray<re::FixedArray<re::GenericSRT<float>>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::FixedArray<re::GenericSRT<float>>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::FixedArray<re::GenericSRT<float>>>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::FixedArray<re::GenericSRT<float>>>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::FixedArray<re::GenericSRT<float>>>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::FixedArray<re::GenericSRT<float>>>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  if (v9 >= v8)
  {
    v10 = v9 + 1;
    if (v8 < v9 + 1)
    {
      if (*a4)
      {
        v11 = 2 * v8;
        v12 = v8 == 0;
        v13 = 8;
        if (!v12)
        {
          v13 = v11;
        }

        if (v13 <= v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = v13;
        }

        re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  v15 = (*(a4 + 32) + 24 * v9);
  *v15 = 0;
  v15[1] = 0;
  v15[2] = 0;
  v16 = *(a4 + 16);
  *(a4 + 16) = v16 + 1;
  ++*(a4 + 24);
  v17 = (*(a4 + 32) + 24 * v16);
  re::introspectionInitElement(a2, a3, a1[6], v17);
  return v17;
}

uint64_t re::IntrospectionDynamicArray<re::FixedArray<re::GenericSRT<float>>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void *re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::GenericSRT<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::GenericSRT<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 24 * v8;
      do
      {
        re::FixedArray<CoreIKTransform>::deinit(v9);
        v9 += 3;
        v10 -= 24;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v11 = re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 24 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 24;
        v14 -= 24;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::GenericSRT<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::GenericSRT<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::GenericSRT<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::GenericSRT<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::FixedArray<re::Matrix4x4<float>>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::FixedArray<re::Matrix4x4<float>>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::FixedArray<re::Matrix4x4<float>>>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::FixedArray<re::Matrix4x4<float>>>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::FixedArray<re::Matrix4x4<float>>>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::FixedArray<re::Matrix4x4<float>>>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  if (v9 >= v8)
  {
    v10 = v9 + 1;
    if (v8 < v9 + 1)
    {
      if (*a4)
      {
        v11 = 2 * v8;
        v12 = v8 == 0;
        v13 = 8;
        if (!v12)
        {
          v13 = v11;
        }

        if (v13 <= v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = v13;
        }

        re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  v15 = (*(a4 + 32) + 24 * v9);
  *v15 = 0;
  v15[1] = 0;
  v15[2] = 0;
  v16 = *(a4 + 16);
  *(a4 + 16) = v16 + 1;
  ++*(a4 + 24);
  v17 = (*(a4 + 32) + 24 * v16);
  re::introspectionInitElement(a2, a3, a1[6], v17);
  return v17;
}

uint64_t re::IntrospectionDynamicArray<re::FixedArray<re::Matrix4x4<float>>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void *re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::Matrix4x4<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::Matrix4x4<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 24 * v8;
      do
      {
        re::FixedArray<CoreIKTransform>::deinit(v9);
        v9 += 3;
        v10 -= 24;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v11 = re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 24 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 24;
        v14 -= 24;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::Matrix4x4<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::Matrix4x4<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::Matrix4x4<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<re::Matrix4x4<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::SkeletalPoseMeshMap>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::SkeletalPoseMeshMap>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::SkeletalPoseMeshMap>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::SkeletalPoseMeshMap>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshRigGraphIndex>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::SkeletalPoseMeshMap>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::SkeletalPoseMeshMap>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::SkeletalPoseMeshMap>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::SkeletalPoseMeshMap>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::SkeletalPoseMeshMap>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v15 = 0;
  v17 = 0;
  v11 = 0u;
  v13 = 0;
  v12 = &str_67;
  v14 = &str_67;
  v16 = &str_67;
  v8 = re::DynamicArray<re::SkeletalPoseMeshMap>::add(this, &v11);
  if (v15)
  {
    if (v15)
    {
    }
  }

  v15 = 0;
  v16 = &str_67;
  if (v13)
  {
    if (v13)
    {
    }
  }

  v13 = 0;
  v14 = &str_67;
  if (BYTE8(v11))
  {
    if (BYTE8(v11))
    {
    }
  }

  v9 = (*(this + 4) + (*(this + 2) << 6) - 64);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::SkeletalPoseMeshMap>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 6);
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 6);
}

void re::DynamicArray<re::SkeletalPoseMeshMap>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = (a2 << 6) | 0x28;
    v9 = a2;
    do
    {
      v10 = (*(a1 + 32) + v8);
      re::StringID::destroyString(v10);
      re::StringID::destroyString((v10 - 16));
      re::StringID::destroyString((v10 - 32));
      ++v9;
      v8 += 64;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::SkeletalPoseMeshMap>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = (v4 << 6) | 0x20;
      do
      {
        v7 = *(a1 + 32) + v6;
        *(v7 - 32) = 0;
        *(v7 - 24) = 0;
        *(v7 - 16) = &str_67;
        *(v7 - 8) = 0;
        *v7 = &str_67;
        *(v7 + 8) = 0;
        *(v7 + 16) = &str_67;
        *(v7 + 24) = 0;
        *(v7 + 28) = 0;
        v6 += 64;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::SkeletalPoseMeshMap>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = v8 << 6;
      v10 = (*(a1 + 32) + 40);
      do
      {
        re::StringID::destroyString(v10);
        re::StringID::destroyString((v10 - 16));
        re::StringID::destroyString((v10 - 32));
        v10 = (v10 + 64);
        v9 -= 64;
      }

      while (v9);
    }
  }

  else
  {
    re::DynamicArray<re::MeshRigGraphIndex>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::SkeletalPoseMeshMap>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::SkeletalPoseMeshMap>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = v12 << 6;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 64;
        v14 -= 64;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + (a2 << 6);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + (v5 << 6);
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t re::AudioAssetLoadStrategy_Client::createRuntimeData(re::AudioAssetLoadStrategy_Base *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  token = 0;
  v6 = task_create_identity_token(*MEMORY[0x1E69E9A60], &token);
  v7 = v6;
  if (v6)
  {
    v8 = *re::audioLogObjects(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = mach_error_string(v7);
      *buf = 136315138;
      v19 = v15;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAssetLoader/Client] Could not retrieve task id from app. Failed with KERN error code: %s", buf, 0xCu);
    }
  }

  *(a2 + 140) = token;
  v9 = *(*(a2 + 8) + 16);

  if (v9)
  {
    result = re::AudioFileAsset::createSharablePCMBuffer(a2);
    if (!result)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (a3)
  {
    if ((*(*a1 + 48))(a1, a3, a2))
    {
      goto LABEL_16;
    }

    return 0;
  }

  v11 = (*(*(*(a2 + 8) + 48) + 64))();
  v12 = *(a2 + 8);
  if (v11)
  {
    if ((*(*a1 + 56))(a1, v12 + 48, a2))
    {
LABEL_16:
      result = 1;
      *(a2 + 161) = 1;
      return result;
    }

    return 0;
  }

  v13 = *(v12 + 208);

  if (v13)
  {
    goto LABEL_16;
  }

  RuntimeDataWithAudioFile = re::AudioAssetLoadStrategy_Base::createRuntimeDataWithAudioFile(a1, a2);
  if (RuntimeDataWithAudioFile)
  {
    goto LABEL_16;
  }

  v16 = *re::audioLogObjects(RuntimeDataWithAudioFile);
  result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAssetLoader/Client] Failed to create runtime data with audio file.", buf, 2u);
    return 0;
  }

  return result;
}

void re::AudioAssetLoadStrategy_Client::resourceDidUpdate(int a1, uint64_t a2, id *a3, uint64_t a4, uint64_t a5)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = *a3;
  v10[0] = 0;
  v11 = 0;
  re::AudioAssetLoadStrategy_Base::resourceDidUpdate(a1, a2, &v9, a4, a5, v10);
  if (v11 == 1)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v10);
  }
}

void sub_1E20E8914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a15 == 1)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&a11);
  }

  _Unwind_Resume(a1);
}

uint64_t re::AudioAssetLoadStrategy_Client::decodeSeekableStreamIntoPCMBuffer(re::AudioAssetLoadStrategy_Client *this, re::SeekableInputStream *a2, re::AudioFileAsset *a3)
{
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v14 = 0;
  v15 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  re::audio::AudioFileAssetReader::init(&v14, a2, 0);
  v5 = re::audio::AudioFileAssetReader::readFromData(&v14);
  v6 = v5;
  if (!v5)
  {
    if (re::internal::enableSignposts(0, 0))
    {
      (*(*a2 + 64))(a2);
      kdebug_trace();
    }

    goto LABEL_12;
  }

  v7 = [v5 format];
  objc_storeStrong((*(a3 + 1) + 8), v7);

  *(a3 + 18) = [v6 frameLength];
  objc_storeStrong((*(a3 + 1) + 16), v6);
  re::audio::pcmBufferSize(v6, v8);
  if (re::internal::enableSignposts(0, 0))
  {
    (*(*a2 + 64))(a2);
    kdebug_trace();
  }

  SharablePCMBuffer = re::AudioFileAsset::createSharablePCMBuffer(a3);
  if ((SharablePCMBuffer & 1) == 0)
  {
    v11 = *re::audioLogObjects(SharablePCMBuffer);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAssetLoader/Client] Failed to createSharablePCMBuffer.", v13, 2u);
    }

LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  v10 = 1;
LABEL_13:

  re::audio::AudioFileAssetReader::~AudioFileAssetReader(&v14);
  return v10;
}

void sub_1E20E8B74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  re::audio::AudioFileAssetReader::~AudioFileAssetReader(va);
  _Unwind_Resume(a1);
}

void *re::allocInfo_ImageBasedLightFile(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_102, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_102))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19B960, "ImageBasedLightFile");
    __cxa_guard_release(&_MergedGlobals_102);
  }

  return &unk_1EE19B960;
}

void re::initInfo_ImageBasedLightFile(re *this, re::IntrospectionBase *a2)
{
  v27[0] = 0x97870A1F04E56B4;
  v27[1] = "ImageBasedLightFile";
  if (v27[0])
  {
    if (v27[0])
    {
    }
  }

  *(this + 2) = v28;
  if ((atomic_load_explicit(&qword_1EE19B908, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19B908);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_AssetHandle(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "sourceTexture";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE19B938 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_AssetHandle(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "diffuseTexture";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE19B940 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_AssetHandle(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "specularTexture";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x4800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE19B948 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::IntrospectionInfo<re::DynamicString>::get(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "colorSpace";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x6000000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE19B950 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_AssetHandle(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "sssDiffuseTexture";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x3000000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE19B958 = v25;
      __cxa_guard_release(&qword_1EE19B908);
    }
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE19B938;
  *(this + 9) = re::internal::defaultConstruct<re::ImageBasedLightFile>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ImageBasedLightFile>;
  *(this + 13) = re::internal::defaultConstructV2<re::ImageBasedLightFile>;
  *(this + 14) = re::internal::defaultDestructV2<re::ImageBasedLightFile>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v26 = v28;
}

void *re::internal::defaultConstruct<re::ImageBasedLightFile>(_anonymous_namespace_ *a1, uint64_t a2, _OWORD *a3)
{
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  a3[6] = 0u;
  v3 = a3 + 6;

  return re::DynamicString::setCapacity(v3, 0);
}

void re::internal::defaultDestruct<re::ImageBasedLightFile>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicString::deinit((a3 + 96));
  re::AssetHandle::~AssetHandle((a3 + 72));
  re::AssetHandle::~AssetHandle((a3 + 48));
  re::AssetHandle::~AssetHandle((a3 + 24));

  re::AssetHandle::~AssetHandle(a3);
}

void *re::internal::defaultConstructV2<re::ImageBasedLightFile>(_OWORD *a1)
{
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  a1[6] = 0u;
  v1 = a1 + 6;

  return re::DynamicString::setCapacity(v1, 0);
}

void re::internal::defaultDestructV2<re::ImageBasedLightFile>(uint64_t a1)
{
  re::DynamicString::deinit((a1 + 96));
  re::AssetHandle::~AssetHandle((a1 + 72));
  re::AssetHandle::~AssetHandle((a1 + 48));
  re::AssetHandle::~AssetHandle((a1 + 24));

  re::AssetHandle::~AssetHandle(a1);
}

void *re::allocInfo_ImageBasedLightAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19B918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19B918))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19B9F0, "ImageBasedLightAsset");
    __cxa_guard_release(&qword_1EE19B918);
  }

  return &unk_1EE19B9F0;
}

void re::initInfo_ImageBasedLightAsset(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x2595A39C18F8E1A4;
  v14[1] = "ImageBasedLightAsset";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE19B920, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19B920);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE19B910;
      if (!qword_1EE19B910)
      {
        v8 = re::allocInfo_ImageBasedLightFile(v6);
        qword_1EE19B910 = v8;
        re::initInfo_ImageBasedLightFile(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "iblFile";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 1;
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE19B928 = v10;
      v11 = re::introspectionAllocator(v10);
      v12 = (*(*v11 + 32))(v11, 64, 8);
      *v12 = 6;
      *(v12 + 8) = 1;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0;
      *(v12 + 40) = 1;
      *(v12 + 56) = 2;
      qword_1EE19B930 = v12;
      __cxa_guard_release(&qword_1EE19B920);
    }
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE19B928;
  *(this + 9) = re::internal::defaultConstruct<re::ImageBasedLightAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ImageBasedLightAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::ImageBasedLightAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::ImageBasedLightAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

uint64_t re::anonymous namespace::downgradeIBLAssetFromFall2023@<X0>(re::_anonymous_namespace_ *this@<X0>, _BYTE *a2@<X8>)
{
  CStringPtr = CFStringGetCStringPtr(*MEMORY[0x1E695F108], 0x8000100u);
  re::DynamicString::operator=((this + 96), &v8);
  result = v8;
  if (v8 && (v9 & 1) != 0)
  {
    result = (*(*v8 + 40))();
  }

  *a2 = 1;
  return result;
}

void *re::internal::defaultConstruct<re::ImageBasedLightAsset>(_anonymous_namespace_ *a1, uint64_t a2, _OWORD *a3)
{
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  a3[6] = 0u;
  v3 = a3 + 6;

  return re::DynamicString::setCapacity(v3, 0);
}

void *re::internal::defaultConstructV2<re::ImageBasedLightAsset>(_OWORD *a1)
{
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  a1[6] = 0u;
  v1 = a1 + 6;

  return re::DynamicString::setCapacity(v1, 0);
}

uint64_t *re::ImageBasedLightAsset::assetType(re::ImageBasedLightAsset *this)
{
  {
    re::ImageBasedLightAsset::assetType(void)::type = "ImageBasedLight";
    qword_1EE1C69F8 = 0;
    re::AssetType::generateCompiledExtension(&re::ImageBasedLightAsset::assetType(void)::type);
  }

  return &re::ImageBasedLightAsset::assetType(void)::type;
}

re *re::internal::destroyPersistent<re::ImageBasedLightAsset>(re *result, uint64_t a2, re::ImageBasedLightAsset *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::ImageBasedLightAsset::~ImageBasedLightAsset(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::ImageBasedLightAssetLoader::introspectionType(re::ImageBasedLightAssetLoader *this)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::ImageBasedLightAsset>(BOOL)::info = re::internal::getOrCreateInfo("ImageBasedLightAsset", re::allocInfo_ImageBasedLightAsset, re::initInfo_ImageBasedLightAsset, &re::internal::introspectionInfoStorage<re::ImageBasedLightAsset>, 0);
      v1 = &unk_1EE187000;
    }
  }

  return v1[201];
}

re::AssetHandle *re::ImageBasedLightAssetLoader::findDependencies@<X0>(re::ImageBasedLightAssetLoader *this@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  re::DynamicArray<re::AssetHandle>::setCapacity(a3, 3uLL);
  ++*(a3 + 24);
  re::DynamicArray<re::AssetHandle>::add(a3, a2);
  re::DynamicArray<re::AssetHandle>::add(a3, (a2 + 24));

  return re::DynamicArray<re::AssetHandle>::add(a3, (a2 + 72));
}

void re::ImageBasedLightAsset::~ImageBasedLightAsset(re::ImageBasedLightAsset *this)
{
  re::DynamicString::deinit((this + 96));
  re::AssetHandle::~AssetHandle((this + 72));
  re::AssetHandle::~AssetHandle((this + 48));
  re::AssetHandle::~AssetHandle((this + 24));

  re::AssetHandle::~AssetHandle(this);
}

uint64_t re::anonymous namespace::validatePayload(void *a1)
{
  v81 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v49 = v1;
  if (v1)
  {
    [v1 payloadBufferSizes];
  }

  v3 = [v2 models];
  v48 = [v3 count];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v4 = [v49 parts];
  v5 = [v4 countByEnumeratingWithState:&v66 objects:v80 count:16];
  if (v5)
  {
    v6 = *v67;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v67 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v66 + 1) + 8 * i);
        v65 = 0;
        v10 = [v9 validateWithPayloadSize:&v70 error:&v65];
        v11 = v65;
        v12 = v11;
        if ((v10 & 1) == 0)
        {
          v13 = *re::assetTypesLogObjects(v11);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *&buf[4] = v9;
            *&buf[12] = 2112;
            *&buf[14] = v12;
            _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Mesh part descriptor %@ is invalid: %@", buf, 0x16u);
          }

          v7 = 0;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v66 objects:v80 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 1;
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v14 = [v49 models];
  obj = v14;
  v15 = [v14 countByEnumeratingWithState:&v61 objects:v79 count:16];
  if (v15)
  {
    v17 = *v62;
    *&v16 = 138412546;
    v46 = v16;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v62 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v61 + 1) + 8 * j);
        v20 = [v49 parts];
        *buf = v70;
        *&buf[16] = v71;
        v77 = v72;
        v78 = v73;
        v60 = 0;
        v21 = [v19 validateWithParts:v20 payloadSize:buf error:&v60];
        v22 = v60;

        if ((v21 & 1) == 0)
        {
          v24 = *re::assetTypesLogObjects(v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = v46;
            *&buf[4] = v19;
            *&buf[12] = 2112;
            *&buf[14] = v22;
            _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, "Mesh model descriptor %@ is invalid: %@", buf, 0x16u);
          }

          v7 = 0;
        }
      }

      v14 = obj;
      v15 = [obj countByEnumeratingWithState:&v61 objects:v79 count:16];
    }

    while (v15);
  }

  v59 = 0u;
  v57 = 0u;
  v58 = 0u;
  v56 = 0u;
  v25 = [v49 instances];
  v26 = [v25 countByEnumeratingWithState:&v56 objects:v75 count:16];
  if (v26)
  {
    v27 = *v57;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v57 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v56 + 1) + 8 * k);
        v55 = 0;
        v30 = [v29 validateWithModelCount:v48 error:&v55];
        v31 = v55;
        v32 = v31;
        if ((v30 & 1) == 0)
        {
          v33 = *re::assetTypesLogObjects(v31);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *&buf[4] = v29;
            *&buf[12] = 2112;
            *&buf[14] = v32;
            _os_log_error_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_ERROR, "Mesh instance descriptor %@ is invalid: %@", buf, 0x16u);
          }

          v7 = 0;
        }
      }

      v26 = [v25 countByEnumeratingWithState:&v56 objects:v75 count:16];
    }

    while (v26);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v34 = [v49 skeletons];
  v35 = [v34 countByEnumeratingWithState:&v51 objects:v74 count:16];
  if (v35)
  {
    v36 = *v52;
    do
    {
      for (m = 0; m != v35; ++m)
      {
        if (*v52 != v36)
        {
          objc_enumerationMutation(v34);
        }

        v38 = *(*(&v51 + 1) + 8 * m);
        v50 = 0;
        v39 = [v38 validateWithError:&v50];
        v40 = v50;
        v41 = v40;
        if ((v39 & 1) == 0)
        {
          v42 = *re::assetTypesLogObjects(v40);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *&buf[4] = v38;
            *&buf[12] = 2112;
            *&buf[14] = v41;
            _os_log_error_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_ERROR, "Mesh skeleton descriptor %@ is invalid: %@", buf, 0x16u);
          }

          v7 = 0;
        }
      }

      v35 = [v34 countByEnumeratingWithState:&v51 objects:v74 count:16];
    }

    while (v35);
  }

  if ((v7 & 1) == 0)
  {
    v44 = *re::assetTypesLogObjects(v43);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_FAULT, "Mesh payload is invalid", buf, 2u);
    }
  }

  return v7 & 1;
}

uint64_t re::anonymous namespace::validatePrivateData(void *a1, uint64_t a2, unint64_t a3)
{
  v360 = *MEMORY[0x1E69E9840];
  v353 = a1;
  if ((atomic_load_explicit(&qword_1ECF18948, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_410;
  }

  while (1)
  {
    if ((_MergedGlobals_17 & 1) == 0)
    {
      v294 = 1;
      goto LABEL_377;
    }

    v351 = a3;
    v355 = 0u;
    v356 = 0u;
    v357 = 0u;
    v358 = 0u;
    v6 = [v353 parts];
    v7 = [v6 countByEnumeratingWithState:&v355 objects:v359 count:16];
    if (v7)
    {
      v8 = *v356;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v356 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v355 + 1) + 8 * i);
          if ([v10 isIndexed])
          {
            m = [v10 indexType];
            v11 = [v10 indexPayloadOffset];
            v4 = [v10 indexBufferSize];
            if ((MEMORY[0x1E6904100](m, a2 + v11, v4, [v10 vertexCount]) & 1) == 0)
            {

              goto LABEL_376;
            }
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v355 objects:v359 count:16];
      }

      while (v7);
    }

    v12 = v353;
    v355 = 0u;
    v356 = 0u;
    v357 = 0u;
    v358 = 0u;
    v343 = v12;
    obj = [v12 parts];
    v13 = [obj countByEnumeratingWithState:&v355 objects:v359 count:16];
    if (v13)
    {
      v339 = *v356;
      do
      {
        v335 = v13;
        for (j = 0; j != v335; ++j)
        {
          if (*v356 != v339)
          {
            objc_enumerationMutation(obj);
          }

          v4 = *(*(&v355 + 1) + 8 * j);
          v15 = [v4 customAttributes];
          v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"accumulatedVertexValence"];
          v17 = [v15 objectForKeyedSubscript:v16];

          v18 = [v4 customAttributes];
          v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"vertexAdjacencies"];
          v20 = [v18 objectForKeyedSubscript:v19];

          if (v17 | v20)
          {
            if (!v17)
            {
              goto LABEL_371;
            }

            if (!v20)
            {
              goto LABEL_371;
            }

            if ([v17 format] != 36)
            {
              goto LABEL_371;
            }

            if ([v17 stride] != 4)
            {
              goto LABEL_371;
            }

            if ([v20 format] != 36)
            {
              goto LABEL_371;
            }

            if ([v20 stride] != 4)
            {
              goto LABEL_371;
            }

            v21 = [v17 payloadOffset];
            v22 = [v17 count];
            v23 = [v20 payloadOffset];
            v24 = [v20 count];
            m = [v4 indexCount];
            if (v22 != [v4 vertexCount])
            {
              goto LABEL_371;
            }

            if (v22)
            {
              v25 = (a2 + v21);
              v26 = 4 * v22;
              while (v24 >= *v25)
              {
                ++v25;
                v26 -= 4;
                if (!v26)
                {
                  goto LABEL_29;
                }
              }

LABEL_371:

              goto LABEL_376;
            }

LABEL_29:
            if (v24)
            {
              v27 = (a2 + v23);
              v28 = 4 * v24;
              while (*v27 < m / 3)
              {
                ++v27;
                v28 -= 4;
                if (!v28)
                {
                  goto LABEL_33;
                }
              }

              goto LABEL_371;
            }
          }

LABEL_33:

          v29 = v4;
          v30 = [v29 customAttributes];
          v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"cotangentLaplacianEndIndices"];
          v17 = [v30 objectForKeyedSubscript:v31];

          v32 = [v29 customAttributes];
          v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"cotangentLaplacianIndices"];
          v20 = [v32 objectForKeyedSubscript:v33];

          if (v17 | v20)
          {
            if (!v17)
            {
              goto LABEL_371;
            }

            if (!v20)
            {
              goto LABEL_371;
            }

            if ([v17 format] != 36)
            {
              goto LABEL_371;
            }

            if ([v17 stride] != 4)
            {
              goto LABEL_371;
            }

            if ([v20 format] != 36)
            {
              goto LABEL_371;
            }

            if ([v20 stride] != 4)
            {
              goto LABEL_371;
            }

            m = [v17 payloadOffset];
            v34 = [v17 count];
            v35 = [v20 payloadOffset];
            v36 = [v20 count];
            v37 = [v29 vertexCount];
            if (v34 != [v29 vertexCount])
            {
              goto LABEL_371;
            }

            if (v34)
            {
              v38 = (a2 + m);
              v39 = 4 * v34;
              while (v36 >= *v38)
              {
                ++v38;
                v39 -= 4;
                if (!v39)
                {
                  goto LABEL_45;
                }
              }

              goto LABEL_371;
            }

LABEL_45:
            if (v36)
            {
              v40 = (a2 + v35);
              v41 = 4 * v36;
              while (*v40 < v37)
              {
                ++v40;
                v41 -= 4;
                if (!v41)
                {
                  goto LABEL_49;
                }
              }

              goto LABEL_371;
            }
          }

LABEL_49:
        }

        v13 = [obj countByEnumeratingWithState:&v355 objects:v359 count:16];
      }

      while (v13);
    }

    v42 = v343;
    v322 = v42;
    v336 = [v42 parts];
    v357 = 0u;
    v358 = 0u;
    v355 = 0u;
    v356 = 0u;
    v325 = [v42 models];
    v43 = [v325 countByEnumeratingWithState:&v355 objects:v359 count:16];
    if (v43)
    {
      v319 = *v356;
      do
      {
        v316 = v43;
        for (k = 0; k != v316; ++k)
        {
          if (*v356 != v319)
          {
            objc_enumerationMutation(v325);
          }

          v45 = *(*(&v355 + 1) + 8 * k);
          v344 = [v45 modelPartIndexToResourcePartIndexMap];
          obja = [v45 skinningModel];
          if (obja)
          {
            v46 = [obja skinningParts];
            v328 = [v46 count];

            if (v328)
            {
              for (m = 0; m != v328; ++m)
              {
                v47 = [obja skinningParts];
                v48 = [v47 objectAtIndexedSubscript:m];

                v49 = [v42 skeletons];
                v340 = [v49 objectAtIndexedSubscript:{objc_msgSend(v48, "skeletonIndex")}];

                v50 = [v340 jointNames];
                v51 = [v50 count];

                v331 = [v344 objectAtIndexedSubscript:m];
                v4 = [v336 objectAtIndexedSubscript:{objc_msgSend(v331, "unsignedLongLongValue")}];
                v52 = [v48 skinningInfluences];
                v53 = [v48 packedInfluence];
                v54 = [v52 bufferSize];
                if (v53)
                {
                  v55 = 2;
                }

                else
                {
                  v55 = 3;
                }

                v56 = [v52 payloadOffset];
                a3 = v54 >> v55;
                if ([v48 influencePerVertex])
                {
                  v57 = [v48 influencePerVertex];
                  if (a3 != [v4 vertexCount] * v57)
                  {
                    re::internal::assertLog(4, v58, "assertion failure: '%s' (%s:line %i) ", "influenceCount == skinningPartDesc.influencePerVertex * meshPartDescriptor.vertexCount", "validateMeshSkinningInfluences", 306);
                    _os_crash();
                    __break(1u);
LABEL_384:
                    re::internal::assertLog(4, v296, "assertion failure: '%s' (%s:line %i) ", "influencesDesc.payloadOffset + influenceCount * sizeof(SkinningInfluence) <= payloadLength", "validateMeshSkinningInfluences", 320);
                    _os_crash();
                    __break(1u);
LABEL_385:
                    re::internal::assertLog(4, v71, "assertion failure: '%s' (%s:line %i) ", "influencesDesc.payloadOffset + influenceCount * sizeof(PackedSkinningInfluence) <= payloadLength", "validateMeshSkinningInfluences", 311);
                    _os_crash();
                    __break(1u);
LABEL_386:
                    re::internal::assertLog(4, v61, "assertion failure: '%s' (%s:line %i) ", "endInfluencesDesc.payloadOffset + meshPartDescriptor.vertexCount * sizeof(int) <= payloadLength", "validateMeshSkinningInfluences", 295);
                    _os_crash();
                    __break(1u);
LABEL_387:
                    re::internal::assertLog(4, v96, "assertion failure: '%s' (%s:line %i) ", "bufferIndex < blendShapeModel.blendShapeBuffers.count", "validateBlendShape", 620);
                    _os_crash();
                    __break(1u);
LABEL_388:
                    re::internal::assertLog(4, v99, "assertion failure: '%s' (%s:line %i) ", "blendShapeConstantsDesc.payloadOffset + blendShapeConstantsDesc.bufferSize <= payloadLength", "validateBlendShape", 514);
                    _os_crash();
                    __break(1u);
LABEL_389:
                    re::internal::assertLog(4, v83, "assertion failure: '%s' (%s:line %i) ", "blendShapeModel.perMeshPartBlendShapeBufferIndex.count <= modelPartIndicesToResourcePartIndicesMap.count", "validateBlendShape", 609);
                    _os_crash();
                    __break(1u);
                    goto LABEL_390;
                  }
                }

                else
                {
                  v59 = [v48 influenceEndIndices];
                  v60 = [v59 payloadOffset];
                  if (4 * [v4 vertexCount] + v60 > v351)
                  {
                    goto LABEL_386;
                  }

                  v62 = [v59 payloadOffset];
                  v63 = [v4 vertexCount];
                  if (v63)
                  {
                    v64 = 0;
                    v65 = (a2 + v62);
                    v66 = 4 * v63;
                    while (1)
                    {
                      v67 = *v65;
                      if (v67 < v64 || a3 < v67)
                      {
                        break;
                      }

                      ++v65;
                      v64 = v67;
                      v66 -= 4;
                      if (!v66)
                      {
                        goto LABEL_74;
                      }
                    }

                    v42 = v322;
LABEL_375:

                    goto LABEL_376;
                  }

LABEL_74:
                }

                v69 = (a2 + v56);
                if ([v48 packedInfluence])
                {
                  v70 = [v52 payloadOffset];
                  v72 = 4 * a3;
                  if (4 * a3 + v70 > v351)
                  {
                    goto LABEL_385;
                  }

                  v42 = v322;
                  if (a3)
                  {
                    while (v51 > *v69 >> 22)
                    {
                      ++v69;
                      v72 -= 4;
                      if (!v72)
                      {
                        goto LABEL_86;
                      }
                    }

                    goto LABEL_375;
                  }
                }

                else
                {
                  v73 = [v52 payloadOffset];
                  v74 = 8 * a3;
                  if (8 * a3 + v73 > v351)
                  {
                    goto LABEL_384;
                  }

                  v42 = v322;
                  if (a3)
                  {
                    do
                    {
                      v75 = *v69;
                      if ((v75 & 0x80000000) != 0 || v51 <= v75)
                      {
                        goto LABEL_375;
                      }

                      v69 += 2;
                      v74 -= 8;
                    }

                    while (v74);
                  }
                }

LABEL_86:
              }
            }
          }
        }

        v43 = [v325 countByEnumeratingWithState:&v355 objects:v359 count:16];
      }

      while (v43);
    }

    v309 = v42;
    v306 = [v309 parts];
    v357 = 0u;
    v358 = 0u;
    v355 = 0u;
    v356 = 0u;
    v76 = [v309 models];
    v307 = v76;
    v77 = [v76 countByEnumeratingWithState:&v355 objects:v359 count:16];
    if (!v77)
    {
LABEL_222:

      v184 = v309;
      v355 = 0u;
      v356 = 0u;
      v357 = 0u;
      v358 = 0u;
      v330 = v184;
      v185 = [v184 parts];
      v186 = [v185 countByEnumeratingWithState:&v355 objects:v359 count:16];
      if (v186)
      {
        v187 = *v356;
        v327 = v185;
        v311 = *v356;
        while (2)
        {
          v188 = 0;
          v313 = v186;
          do
          {
            if (*v356 != v187)
            {
              objc_enumerationMutation(v185);
            }

            v352 = *(*(&v355 + 1) + 8 * v188);
            v189 = [v352 customAttributes];
            v190 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"controlIndices"];
            v318 = v188;
            objc = [v189 objectForKeyedSubscript:v190];

            v191 = [v352 customAttributes];
            v192 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"stencilSizes"];
            v346 = [v191 objectForKeyedSubscript:v192];

            v193 = [v352 customAttributes];
            v194 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"stencilIndices"];
            v338 = [v193 objectForKeyedSubscript:v194];

            v195 = [v352 customAttributes];
            v196 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"stencilOffsets"];
            v342 = [v195 objectForKeyedSubscript:v196];

            v197 = [v352 customAttributes];
            v198 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"stencilWeights"];
            v199 = [v197 objectForKeyedSubscript:v198];

            v200 = [v352 customAttributes];
            v201 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"patchParams"];
            v202 = [v200 objectForKeyedSubscript:v201];

            v203 = [v352 patchCount];
            if (objc || v346 || v338 || v342 || v199 || v202)
            {
              if (!objc)
              {
                goto LABEL_379;
              }

              if (!v346)
              {
                goto LABEL_379;
              }

              if (!v338)
              {
                goto LABEL_379;
              }

              if (!v342)
              {
                goto LABEL_379;
              }

              if (!v199)
              {
                goto LABEL_379;
              }

              if (!v202)
              {
                goto LABEL_379;
              }

              if ([objc format] != 36)
              {
                goto LABEL_379;
              }

              if ([objc stride] != 4)
              {
                goto LABEL_379;
              }

              if ([objc count] != 16 * v203)
              {
                goto LABEL_379;
              }

              if ([v346 format] != 36)
              {
                goto LABEL_379;
              }

              if ([v346 stride] != 4)
              {
                goto LABEL_379;
              }

              if ([v338 format] != 36)
              {
                goto LABEL_379;
              }

              if ([v338 stride] != 4)
              {
                goto LABEL_379;
              }

              if ([v342 format] != 36)
              {
                goto LABEL_379;
              }

              if ([v342 stride] != 4)
              {
                goto LABEL_379;
              }

              if ([v199 format] != 28)
              {
                goto LABEL_379;
              }

              if ([v199 stride] != 4)
              {
                goto LABEL_379;
              }

              if ([v202 format] != 34)
              {
                goto LABEL_379;
              }

              if ([v202 stride] != 12)
              {
                goto LABEL_379;
              }

              if ([v202 count] != v203)
              {
                goto LABEL_379;
              }

              v229 = [objc payloadOffset];
              v230 = [objc count];
              v231 = [v346 count];
              v232 = [v352 preSplitVertexCount];
              if (v231 != [v342 count])
              {
                goto LABEL_379;
              }

              if (v230)
              {
                v233 = (a2 + v229);
                v234 = 4 * v230;
                while (*v233 < v232 + v231)
                {
                  ++v233;
                  v234 -= 4;
                  if (!v234)
                  {
                    goto LABEL_281;
                  }
                }

LABEL_379:

                v228 = v199;
LABEL_380:

                v211 = v338;
LABEL_381:

                v294 = 0;
                v185 = v327;
                goto LABEL_382;
              }

LABEL_281:
              v235 = [v346 payloadOffset];
              v236 = [v346 count];
              v237 = [v342 payloadOffset];
              v238 = [v342 count];
              v334 = [v338 payloadOffset];
              v239 = [v338 count];
              v240 = [v199 count];
              v241 = [v338 count];
              if (v241 >= v240)
              {
                v242 = v240;
              }

              else
              {
                v242 = v241;
              }

              if (v238 != v236)
              {
                goto LABEL_379;
              }

              if (v236)
              {
                v243 = (a2 + v235);
                v244 = 4 * v238;
                v245 = (a2 + v237);
                while (*v243 + *v245 <= v242)
                {
                  ++v245;
                  ++v243;
                  v244 -= 4;
                  if (!v244)
                  {
                    goto LABEL_289;
                  }
                }

                goto LABEL_379;
              }

LABEL_289:
              if (v239)
              {
                v246 = (a2 + v334);
                v247 = 4 * v239;
                while (*v246 < v232)
                {
                  ++v246;
                  v247 -= 4;
                  if (!v247)
                  {
                    goto LABEL_233;
                  }
                }

                goto LABEL_379;
              }
            }

LABEL_233:

            v204 = v352;
            v205 = [v204 customAttributes];
            v206 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"vertexUV|values"];
            objc = [v205 objectForKeyedSubscript:v206];

            v207 = [v204 customAttributes];
            v208 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"vertexUV|indices"];
            v346 = [v207 objectForKeyedSubscript:v208];

            v209 = [v204 customAttributes];
            v210 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"vertexUV|patchParams"];
            v211 = [v209 objectForKeyedSubscript:v210];

            if (objc || v346 || v211)
            {
              if (!objc)
              {
                goto LABEL_381;
              }

              if (!v346)
              {
                goto LABEL_381;
              }

              if (!v211)
              {
                goto LABEL_381;
              }

              if ([objc format] != 29)
              {
                goto LABEL_381;
              }

              if ([objc stride] != 8)
              {
                goto LABEL_381;
              }

              if ([v346 format] != 36)
              {
                goto LABEL_381;
              }

              if ([v346 stride] != 4)
              {
                goto LABEL_381;
              }

              if ([v211 format] != 34)
              {
                goto LABEL_381;
              }

              if ([v211 stride] != 12)
              {
                goto LABEL_381;
              }

              v212 = [v211 count];
              if (v212 != [v204 patchCount])
              {
                goto LABEL_381;
              }

              v213 = [objc count];
              v214 = [v346 payloadOffset];
              v215 = [v346 count];
              if (v215)
              {
                v216 = (a2 + v214);
                v217 = 4 * v215;
                while (*v216 < v213)
                {
                  ++v216;
                  v217 -= 4;
                  if (!v217)
                  {
                    goto LABEL_250;
                  }
                }

                goto LABEL_381;
              }
            }

LABEL_250:

            v333 = v204;
            v218 = [v333 customAttributes];
            v219 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"tessellationFactors"];
            objc = [v218 objectForKeyedSubscript:v219];

            v220 = [v333 customAttributes];
            v221 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"tessellationVertexOffsets"];
            v346 = [v220 objectForKeyedSubscript:v221];

            v222 = [v333 customAttributes];
            v223 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"tessellationIndexOffsets"];
            v338 = [v222 objectForKeyedSubscript:v223];

            v224 = [v333 customAttributes];
            v225 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"postTessellationVertexPatchIDs"];
            v342 = [v224 objectForKeyedSubscript:v225];

            v226 = [v333 customAttributes];
            v227 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"postTessellationIndices"];
            v315 = [v226 objectForKeyedSubscript:v227];

            v228 = v315;
            if (v346 || v338 || v342 || v315)
            {
              if (!v346)
              {
                goto LABEL_380;
              }

              if (!v338)
              {
                goto LABEL_380;
              }

              if (!v342)
              {
                goto LABEL_380;
              }

              if (!v315)
              {
                goto LABEL_380;
              }

              if (!objc)
              {
                goto LABEL_380;
              }

              v248 = [v333 patchCount];
              if ([v346 format] != 36)
              {
                goto LABEL_380;
              }

              if ([v346 stride] != 4)
              {
                goto LABEL_380;
              }

              v4 = v248 + 1;
              if ([v346 count] != v4 || objc_msgSend(v338, "format") != 36 || objc_msgSend(v338, "stride") != 4 || objc_msgSend(v338, "count") != v4 || objc_msgSend(objc, "format") != 53 || objc_msgSend(objc, "stride") != 2 || objc_msgSend(objc, "count") != 6 * v248)
              {
                goto LABEL_380;
              }

              v249 = [v346 payloadOffset];
              LODWORD(m) = [v346 count];
              v250 = [v338 payloadOffset];
              v251 = [v338 count];
              v252 = a2 + v249;
              m = m;
              if ([v346 count])
              {
                v324 = *re::Slice<unsigned int>::last(v252, m);
              }

              else
              {
                v324 = 0;
              }

              v254 = a2 + v250;
              a3 = v251;
              if ([v338 count])
              {
                v321 = *re::Slice<unsigned int>::last(v254, v251);
              }

              else
              {
                v321 = 0;
              }

              if (v4 >= 2)
              {
                v255 = 0;
                if (m <= 1uLL)
                {
                  v256 = 1;
                }

                else
                {
                  v256 = m;
                }

                if (v251 <= 1uLL)
                {
                  v257 = 1;
                }

                else
                {
                  v257 = v251;
                }

                while (4 * m != v255)
                {
                  if (4 * v256 - 4 == v255)
                  {
                    goto LABEL_402;
                  }

                  if (*(v252 + v255) > *(v252 + v255 + 4))
                  {
                    goto LABEL_380;
                  }

                  if (4 * v251 == v255)
                  {
                    goto LABEL_403;
                  }

                  if (4 * v257 - 4 == v255)
                  {
                    goto LABEL_404;
                  }

                  if (*(v254 + v255) > *(v254 + v255 + 4))
                  {
                    goto LABEL_380;
                  }

                  v255 += 4;
                  if (4 * v248 == v255)
                  {
                    goto LABEL_328;
                  }
                }

                goto LABEL_401;
              }

LABEL_328:
              v258 = [objc payloadOffset];
              v259 = [objc count];
              if (v248)
              {
                v261 = 0;
                v262 = a2 + v258;
                v4 = v259;
                do
                {
                  v263 = (6 * v261);
                  if (v263 >= v4)
                  {
                    goto LABEL_395;
                  }

                  v264 = v263 | 1;
                  if ((v263 | 1) >= v4)
                  {
                    goto LABEL_396;
                  }

                  v265 = v263 + 2;
                  if (v263 + 2 >= v4)
                  {
                    goto LABEL_397;
                  }

                  v266 = v263 + 3;
                  if (v263 + 3 >= v4)
                  {
                    goto LABEL_398;
                  }

                  v267 = v263 + 4;
                  if (v263 + 4 >= v4)
                  {
                    goto LABEL_399;
                  }

                  v268 = v263 + 5;
                  if (v263 + 5 >= v4)
                  {
                    goto LABEL_400;
                  }

                  v269 = *(v262 + 2 * v263);
                  v270 = *(v262 + 2 * v264);
                  v271 = *(v262 + 2 * v265);
                  v272 = *(v262 + 2 * v266);
                  v273 = *(v262 + 2 * v267);
                  v274 = *(v262 + 2 * v268);
                  if (v261)
                  {
                    v275 = *re::Slice<unsigned int>::operator[](v252, m, v261 - 1);
                    v276 = *re::Slice<unsigned int>::operator[](v254, a3, v261 - 1);
                  }

                  else
                  {
                    v275 = 0;
                    v276 = 0;
                  }

                  v277 = v273;
                  v278 = v270 + v269 + v271 + v272;
                  v279 = v276 + 3 * (v278 + 2 * (v274 + v277 + v274 * v277));
                  if (v277 + 1 + (v277 + 1) * v274 + v278 + v275 > v324 || v279 > v321)
                  {
                    v228 = v315;
                    goto LABEL_380;
                  }
                }

                while (++v261 != v248);
              }

              v228 = v315;
              if ([v342 format] != 36 || objc_msgSend(v342, "stride") != 4 || objc_msgSend(v342, "count") != v324)
              {
                goto LABEL_380;
              }

              v281 = [v342 payloadOffset];
              v282 = [v342 count];
              if (v282)
              {
                v283 = (a2 + v281);
                v284 = 4 * v282;
                while (*v283 < v248)
                {
                  ++v283;
                  v284 -= 4;
                  if (!v284)
                  {
                    goto LABEL_351;
                  }
                }

                goto LABEL_380;
              }

LABEL_351:
              if ([v315 count] != v321)
              {
                goto LABEL_380;
              }

              if ([v315 format] == 36)
              {
                if ([v315 stride] != 4)
                {
                  goto LABEL_380;
                }

                v285 = [v315 payloadOffset];
                v286 = [v315 count];
                if (v286)
                {
                  v287 = (a2 + v285);
                  v288 = 4 * v286;
                  while (*v287 < v324)
                  {
                    ++v287;
                    v288 -= 4;
                    if (!v288)
                    {
                      goto LABEL_366;
                    }
                  }

                  goto LABEL_380;
                }
              }

              else
              {
                if ([v315 format] != 49 || objc_msgSend(v315, "stride") != 2 || v324 > 0xFFFD)
                {
                  goto LABEL_380;
                }

                v289 = [v315 payloadOffset];
                v290 = [v315 count];
                if (v290)
                {
                  v291 = (a2 + v289);
                  v292 = 2 * v290;
                  while (*v291 < v324)
                  {
                    ++v291;
                    v292 -= 2;
                    if (!v292)
                    {
                      goto LABEL_366;
                    }
                  }

                  goto LABEL_380;
                }
              }

LABEL_366:
            }

            v188 = v318 + 1;
            v187 = v311;
            v185 = v327;
          }

          while (v318 + 1 != v313);
          v293 = [v327 countByEnumeratingWithState:&v355 objects:v359 count:16];
          v186 = v293;
          v294 = 1;
          if (v293)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v294 = 1;
      }

LABEL_382:

      goto LABEL_377;
    }

    v305 = *v356;
LABEL_91:
    v312 = 0;
    v304 = v77;
    while (1)
    {
      if (*v356 != v305)
      {
        objc_enumerationMutation(v76);
      }

      v78 = *(*(&v355 + 1) + 8 * v312);
      v308 = [v78 modelPartIndexToResourcePartIndexMap];
      v79 = [v78 blendShapeModel];
      if (v79)
      {
        break;
      }

LABEL_220:

      ++v312;
      v76 = v307;
      if (v312 == v304)
      {
        v77 = [v307 countByEnumeratingWithState:&v355 objects:v359 count:16];
        if (!v77)
        {
          goto LABEL_222;
        }

        goto LABEL_91;
      }
    }

    v303 = v79;
    v80 = v79;
    v314 = v306;
    v320 = v308;
    objb = v80;
    v310 = [v80 blendShapeIndexType];
    if (v310 > 1)
    {
      goto LABEL_374;
    }

    a3 = [v80 perMeshPartBlendShapeBufferIndex];
    v81 = [a3 count];
    v82 = v81 > [v320 count];

    if (v82)
    {
      goto LABEL_389;
    }

    a3 = [objb blendShapeBuffers];
    v84 = [a3 count];
    v85 = [objb blendShapeGroupNames];
    v86 = v84 == [v85 count];

    if (v86)
    {
      break;
    }

LABEL_390:
    re::internal::assertLog(4, v87, "assertion failure: '%s' (%s:line %i) ", "blendShapeModel.blendShapeBuffers.count == blendShapeModel.blendShapeGroupNames.count", "validateBlendShape", 610);
    _os_crash();
    __break(1u);
LABEL_391:
    re::internal::assertLog(4, v143, "assertion failure: '%s' (%s:line %i) ", "blendShapeConstantsDesc.payloadOffset + blendShapeConstantsDesc.bufferSize <= payloadLength", "validateBlendShape", 514);
    _os_crash();
    __break(1u);
LABEL_392:
    re::internal::assertLog(4, v106, "assertion failure: '%s' (%s:line %i) ", "floatSliceDesc.payloadOffset + floatSliceDesc.bufferSize <= payloadLength", "validateBlendShape", 538);
    _os_crash();
    __break(1u);
LABEL_393:
    re::internal::assertLog(4, v108, "assertion failure: '%s' (%s:line %i) ", "indexDesc.payloadOffset + indexDesc.bufferSize <= payloadLength", "validateBlendShape", 539);
    _os_crash();
    __break(1u);
LABEL_394:
    re::internal::assertLog(4, v110, "assertion failure: '%s' (%s:line %i) ", "coefficientIndexDesc.payloadOffset + coefficientIndexDesc.bufferSize <= payloadLength", "validateBlendShape", 540);
    _os_crash();
    __break(1u);
LABEL_395:
    re::internal::assertLog(6, v260, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v263, v4);
    _os_crash();
    __break(1u);
LABEL_396:
    re::internal::assertLog(6, v260, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v264, v4);
    _os_crash();
    __break(1u);
LABEL_397:
    re::internal::assertLog(6, v260, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v265, v4);
    _os_crash();
    __break(1u);
LABEL_398:
    re::internal::assertLog(6, v260, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v266, v4);
    _os_crash();
    __break(1u);
LABEL_399:
    re::internal::assertLog(6, v260, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v267, v4);
    _os_crash();
    __break(1u);
LABEL_400:
    re::internal::assertLog(6, v260, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v268, v4);
    _os_crash();
    __break(1u);
LABEL_401:
    re::internal::assertLog(6, v253, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, m, m);
    _os_crash();
    __break(1u);
LABEL_402:
    re::internal::assertLog(6, v253, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v256, m);
    _os_crash();
    __break(1u);
LABEL_403:
    re::internal::assertLog(6, v253, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a3, a3);
    _os_crash();
    __break(1u);
LABEL_404:
    re::internal::assertLog(6, v253, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v257, a3);
    _os_crash();
    __break(1u);
LABEL_405:
    re::internal::assertLog(4, v112, "assertion failure: '%s' (%s:line %i) ", "renormalizationDesc.payloadOffset + renormalizationDesc.bufferSize <= payloadLength", "validateBlendShape", 542);
    _os_crash();
    __break(1u);
LABEL_406:
    re::internal::assertLog(4, v150, "assertion failure: '%s' (%s:line %i) ", "floatSliceDesc.payloadOffset + floatSliceDesc.bufferSize <= payloadLength", "validateBlendShape", 538);
    _os_crash();
    __break(1u);
LABEL_407:
    re::internal::assertLog(4, v152, "assertion failure: '%s' (%s:line %i) ", "indexDesc.payloadOffset + indexDesc.bufferSize <= payloadLength", "validateBlendShape", 539);
    _os_crash();
    __break(1u);
LABEL_408:
    re::internal::assertLog(4, v154, "assertion failure: '%s' (%s:line %i) ", "coefficientIndexDesc.payloadOffset + coefficientIndexDesc.bufferSize <= payloadLength", "validateBlendShape", 540);
    _os_crash();
    __break(1u);
LABEL_409:
    re::internal::assertLog(4, v156, "assertion failure: '%s' (%s:line %i) ", "renormalizationDesc.payloadOffset + renormalizationDesc.bufferSize <= payloadLength", "validateBlendShape", 542);
    _os_crash();
    __break(1u);
LABEL_410:
    if (__cxa_guard_acquire(&qword_1ECF18948))
    {
      re::Defaults::BOOLValue("validatePayloadContents", v297, v359);
      if (v359[0])
      {
        v298 = v359[1];
      }

      else
      {
        v298 = 1;
      }

      _MergedGlobals_17 = v298;
      __cxa_guard_release(&qword_1ECF18948);
    }
  }

  for (n = 0; ; ++n)
  {
    v88 = [objb perMeshPartBlendShapeBufferIndex];
    v89 = n < [v88 count];

    if (!v89)
    {

      v79 = v303;
      goto LABEL_220;
    }

    v90 = [v320 objectAtIndexedSubscript:n];
    v323 = [v314 objectAtIndexedSubscript:{objc_msgSend(v90, "unsignedLongLongValue")}];

    v91 = [objb perMeshPartBlendShapeBufferIndex];
    v92 = [v91 objectAtIndexedSubscript:n];
    v93 = [v92 unsignedIntValue];

    if (v93 == -1)
    {
      goto LABEL_218;
    }

    v94 = [objb blendShapeBuffers];
    a3 = v93;
    v95 = [v94 count] > v93;

    if (!v95)
    {
      goto LABEL_387;
    }

    v97 = [objb blendShapeBuffers];
    v317 = [v97 objectAtIndexedSubscript:a3];

    if (!v310)
    {
      break;
    }

    v98 = [v323 vertexCount];
    v4 = v317;
    v337 = [v4 floatSliceBuffer];
    v329 = [v4 indexBuffer];
    v341 = [v4 coefficientIndexBuffer];
    v326 = [v4 renormalizationBuffer];
    v332 = [v4 blendShapeConstantsBuffer];
    if ((v337 != 0) == (v329 == 0) || (v337 != 0) != (v341 != 0) || !v332)
    {
      goto LABEL_372;
    }

    a3 = [v332 payloadOffset];
    if ([v332 bufferSize] + a3 > v351)
    {
      goto LABEL_388;
    }

    v100 = a2 + [v332 payloadOffset];
    v101 = *v100;
    v102 = *(v100 + 8);
    v103 = [v4 floatDeltaBuffer];
    v104 = [v103 bufferSize];

    if (![v332 count])
    {
      goto LABEL_372;
    }

    if ([v332 stride] != 12)
    {
      goto LABEL_372;
    }

    a3 = v104 >> 2;
    {
      goto LABEL_372;
    }

    if (v337)
    {
      v105 = [v337 payloadOffset];
      if ([v337 bufferSize] + v105 > v351)
      {
        goto LABEL_392;
      }

      v107 = [v329 payloadOffset];
      if ([v329 bufferSize] + v107 > v351)
      {
        goto LABEL_393;
      }

      v109 = [v341 payloadOffset];
      if ([v341 bufferSize] + v109 > v351)
      {
        goto LABEL_394;
      }

      if (v326)
      {
        v111 = [v326 payloadOffset];
        if ([v326 bufferSize] + v111 > v351)
        {
          goto LABEL_405;
        }
      }

      if ([v337 stride] != 4 || objc_msgSend(v329, "stride") != 4 || objc_msgSend(v341, "stride") != 4 || v326 && objc_msgSend(v326, "stride") != 4)
      {
        goto LABEL_372;
      }

      v113 = [v4 hasNormals];
      v114 = [v4 hasTangents];
      v115 = [v4 hasBitangents];
      v116 = v113 ? v102 : 0;
      m = v114 ? v102 : 0;
      v117 = v115 ? v102 : 0;
      v118 = [v329 count];
      if (v118 + 1 != [v337 count] || a3 != objc_msgSend(v341, "count"))
      {
        goto LABEL_372;
      }

      v119 = [v329 payloadOffset];
      v120 = [v329 count];
      v121 = [v337 payloadOffset];
      v122 = [v337 count];
      v299 = [v341 payloadOffset];
      v301 = [v341 count];
      v123 = v116 + v102 + m + v117;
      if (v326)
      {
        m = v326;
        v124 = [v326 payloadOffset];
        v125 = [v326 count];
        if (v125)
        {
          v126 = (a2 + v124);
          v127 = 4 * v125;
          while (v123 > (*v126 + 2))
          {
            ++v126;
            v127 -= 4;
            if (!v127)
            {
              goto LABEL_137;
            }
          }

          goto LABEL_372;
        }
      }

LABEL_137:
      if (v120)
      {
        v128 = (a2 + v119);
        v129 = 4 * v120;
        while (v123 > *v128)
        {
          ++v128;
          v129 -= 4;
          if (!v129)
          {
            goto LABEL_141;
          }
        }

        goto LABEL_372;
      }

LABEL_141:
      if (v122)
      {
        v130 = 0;
        v131 = (a2 + v121);
        v132 = 4 * v122;
        do
        {
          v133 = *v131;
          if (v133 < v130 || a3 < v133)
          {
            goto LABEL_372;
          }

          ++v131;
          v130 = v133;
          v132 -= 4;
        }

        while (v132);
      }

      v135 = [v4 blendShapeNames];
      v136 = [v135 count];
      if (v301)
      {
        v137 = (a2 + v299);
        v138 = 4 * v301 - 4;
        do
        {
          v139 = *v137++;
          v140 = v136 > v139;
          v141 = v136 <= v139 || v138 == 0;
          v138 -= 4;
        }

        while (!v141);
      }

      else
      {
        v140 = 1;
      }

LABEL_215:

      goto LABEL_216;
    }

    v140 = v326 == 0;
LABEL_216:

    if (!v140)
    {
      goto LABEL_373;
    }

LABEL_218:
  }

  v142 = [v323 vertexCount];
  v4 = v317;
  v337 = [v4 floatSliceBuffer];
  v329 = [v4 indexBuffer];
  v341 = [v4 coefficientIndexBuffer];
  v326 = [v4 renormalizationBuffer];
  v332 = [v4 blendShapeConstantsBuffer];
  if ((v337 != 0) == (v329 == 0) || (v337 != 0) != (v341 != 0) || !v332)
  {
    goto LABEL_372;
  }

  a3 = [v332 payloadOffset];
  if ([v332 bufferSize] + a3 > v351)
  {
    goto LABEL_391;
  }

  v144 = a2 + [v332 payloadOffset];
  v145 = *v144;
  v146 = *(v144 + 8);
  v147 = [v4 floatDeltaBuffer];
  v148 = [v147 bufferSize];

  if (![v332 count])
  {
    goto LABEL_372;
  }

  if ([v332 stride] != 12)
  {
    goto LABEL_372;
  }

  a3 = v148 >> 2;
  {
    goto LABEL_372;
  }

  if (!v337)
  {
    v140 = v326 == 0;
    goto LABEL_216;
  }

  v149 = [v337 payloadOffset];
  if ([v337 bufferSize] + v149 > v351)
  {
    goto LABEL_406;
  }

  v151 = [v329 payloadOffset];
  if ([v329 bufferSize] + v151 > v351)
  {
    goto LABEL_407;
  }

  v153 = [v341 payloadOffset];
  if ([v341 bufferSize] + v153 > v351)
  {
    goto LABEL_408;
  }

  if (v326)
  {
    v155 = [v326 payloadOffset];
    if ([v326 bufferSize] + v155 > v351)
    {
      goto LABEL_409;
    }
  }

  if ([v337 stride] != 2 || objc_msgSend(v329, "stride") != 2 || objc_msgSend(v341, "stride") != 2 || v326 && objc_msgSend(v326, "stride") != 2)
  {
    goto LABEL_372;
  }

  v157 = [v4 hasNormals];
  v158 = [v4 hasTangents];
  v159 = [v4 hasBitangents];
  v160 = v157 ? v146 : 0;
  m = v158 ? v146 : 0;
  v161 = v159 ? v146 : 0;
  v162 = [v329 count];
  if (v162 + 1 != [v337 count] || a3 != objc_msgSend(v341, "count"))
  {
    goto LABEL_372;
  }

  v163 = [v329 payloadOffset];
  v164 = [v329 count];
  v165 = [v337 payloadOffset];
  v166 = [v337 count];
  v300 = [v341 payloadOffset];
  v302 = [v341 count];
  v167 = v160 + v146 + m + v161;
  if (!v326 || (m = v326, v168 = [v326 payloadOffset], (v169 = objc_msgSend(v326, "count")) == 0))
  {
LABEL_191:
    if (v164)
    {
      v172 = (a2 + v163);
      v173 = 2 * v164;
      while (v167 > *v172)
      {
        ++v172;
        v173 -= 2;
        if (!v173)
        {
          goto LABEL_195;
        }
      }

      goto LABEL_372;
    }

LABEL_195:
    if (v166)
    {
      v174 = 0;
      v175 = (a2 + v165);
      v176 = 2 * v166;
      do
      {
        v177 = *v175;
        if (v177 < v174 || a3 < v177)
        {
          goto LABEL_372;
        }

        ++v175;
        v174 = v177;
        v176 -= 2;
      }

      while (v176);
    }

    v135 = [v4 blendShapeNames];
    v179 = [v135 count];
    if (v302)
    {
      v180 = (a2 + v300);
      v181 = 2 * v302 - 2;
      do
      {
        v182 = *v180++;
        v140 = v179 > v182;
        v183 = v179 <= v182 || v181 == 0;
        v181 -= 2;
      }

      while (!v183);
    }

    else
    {
      v140 = 1;
    }

    goto LABEL_215;
  }

  v170 = (a2 + v168);
  v171 = 2 * v169;
  while (*v170 + 2 < v167)
  {
    ++v170;
    v171 -= 2;
    if (!v171)
    {
      goto LABEL_191;
    }
  }

LABEL_372:

LABEL_373:
LABEL_374:

LABEL_376:
  v294 = 0;
LABEL_377:

  return v294;
}