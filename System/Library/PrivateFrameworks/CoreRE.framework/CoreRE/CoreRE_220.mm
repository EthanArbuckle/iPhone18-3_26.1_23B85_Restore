re::RenderGraphComputeNodeBase *re::RenderGraph::addNode<re::MXIAlphaComputeNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 496, 16);
  v6 = re::RenderGraphComputeNodeBase::RenderGraphComputeNodeBase(v5, a2);
  *v6 = &unk_1F5D167F8;
  v10 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v7;
  *(v5 + 6) = v8;
  return v5;
}

void re::MXIProvider::~MXIProvider(re::MXIProvider *this)
{
  re::MXIProvider::~MXIProvider(this);

  JUMPOUT(0x1E6906520);
}

{
  re::AssetHandle::~AssetHandle((this + 72));
  re::AssetHandle::~AssetHandle((this + 48));
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));
}

void *re::internal::Callable<re::MXIProvider::provide(char const*,char const*,re::RenderFrame &)::$_0,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D15428;
  return result;
}

void *re::internal::Callable<re::MXIProvider::provide(char const*,char const*,re::RenderFrame &)::$_0,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D15428;
  return result;
}

double re::internal::Callable<re::MXIProvider::provide(char const*,char const*,re::RenderFrame &)::$_1,void ()(re::RenderGraphContext &)>::Callable(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D15480;
  *(a1 + 16) = 0;
  *(a1 + 24) = -1;
  *(a1 + 8) = *a2;
  *(a1 + 24) = *(a2 + 16);
  *(a1 + 40) = 0;
  *(a1 + 48) = -1;
  v2 = *(a2 + 32);
  *(a1 + 32) = *(a2 + 24);
  *(a1 + 40) = v2;
  *(a1 + 48) = *(a2 + 40);
  *(a1 + 56) = 0;
  *(a1 + 64) = -1;
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 56);
  *(a1 + 72) = 0;
  *(a1 + 80) = -1;
  *(a1 + 72) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 72);
  *(a1 + 88) = 0;
  *(a1 + 96) = -1;
  *(a1 + 88) = *(a2 + 80);
  result = *(a2 + 88);
  *(a1 + 96) = result;
  return result;
}

void re::internal::Callable<re::MXIProvider::provide(char const*,char const*,re::RenderFrame &)::$_1,void ()(re::RenderGraphContext &)>::operator()(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 32);
  v5 = *a2;
  v12 = re::kMXIOffscreenColorIDs[2 * *(a1 + 8)] & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderGraphContext::metalTexture(a2, a1 + 16, 0, 1, &v11);
  re::DynamicTextureTableAdd((v5 + 368), &v12, &v11);
  if (v11)
  {
  }

  if (*(v4 + 45) == 1)
  {
    v6 = *a2;
    v12 = re::kMXIOffscreenLowResBlurIDs[2 * *(a1 + 8)] & 0x7FFFFFFFFFFFFFFFLL;
    re::RenderGraphContext::metalTexture(a2, a1 + 40, 0, 1, &v11);
    re::DynamicTextureTableAdd((v6 + 368), &v12, &v11);
    if (v11)
    {
    }

    v7 = *a2;
    v12 = re::kMXIOffscreenLowResAlphaIDs[2 * *(a1 + 8)] & 0x7FFFFFFFFFFFFFFFLL;
    re::RenderGraphContext::metalTexture(a2, a1 + 56, 0, 1, &v11);
    re::DynamicTextureTableAdd((v7 + 368), &v12, &v11);
    if (v11)
    {
    }
  }

  if (*(v4 + 40) == 1)
  {
    v8 = *a2;
    v12 = re::kMxiDepthRenderGraphIDs[2 * *(a1 + 8)] & 0x7FFFFFFFFFFFFFFFLL;
    re::RenderGraphContext::metalTexture(a2, a1 + 72, 0, 1, &v11);
    re::DynamicTextureTableAdd((v8 + 368), &v12, &v11);
    if (v11)
    {
    }

    v9 = *a2;
    v12 = 0x27D6D33797FE5053;
    v10 = re::RenderGraphContext::metalBuffer(a2, a1 + 88);
    re::BufferTable::setBuffer((v9 + 480), &v12, v10);
  }
}

uint64_t re::internal::Callable<re::MXIProvider::provide(char const*,char const*,re::RenderFrame &)::$_1,void ()(re::RenderGraphContext &)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D15480;
  *(a2 + 16) = 0;
  *(a2 + 24) = -1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = 0;
  *(a2 + 48) = -1;
  v2 = *(a1 + 40);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = v2;
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = 0;
  *(a2 + 64) = -1;
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = 0;
  *(a2 + 80) = -1;
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 88) = 0;
  *(a2 + 96) = -1;
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 96) = *(a1 + 96);
  return a2;
}

uint64_t re::RenderGraphDataStore::get<re::MXIFrameData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re12MXIFrameDataE";
  if (("N2re12MXIFrameDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re12MXIFrameDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  v6 = 0x7FFFFFFFLL;
  if (*(a1 + 64))
  {
    v7 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
    v8 = *(*(a1 + 72) + 4 * (v7 % *(a1 + 88)));
    if (v8 != 0x7FFFFFFF)
    {
      v9 = *(a1 + 80);
      v6 = 0x7FFFFFFFLL;
      while (*(v9 + 24 * v8 + 8) != v7)
      {
        v8 = *(v9 + 24 * v8) & 0x7FFFFFFF;
        if (v8 == 0x7FFFFFFF)
        {
          return *(*(a1 + 80) + 24 * v6 + 16);
        }
      }

      v6 = v8;
    }
  }

  return *(*(a1 + 80) + 24 * v6 + 16);
}

void *re::introspect_MPSImageEdgeModeType(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "Zero";
      re::introspect_MPSImageEdgeModeType(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 8) = 1;
      *(v13 + 16) = "Clamp";
      qword_1EE1C64C8 = v13;
    }
  }

  {
    v14 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_MPSImageEdgeModeType(BOOL)::info, "MPSImageEdgeModeType", 1, 1, 1, 1);
    *v14 = &unk_1F5D0C658;
    *(v14 + 8) = &re::introspect_MPSImageEdgeModeType(BOOL)::enumTable;
    *(v14 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_MPSImageEdgeModeType(BOOL)::isInitialized)
    {
      return &re::introspect_MPSImageEdgeModeType(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v16);
    v3 = re::introspect_MPSImageEdgeModeType(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v16);
    if (v3)
    {
      return &re::introspect_MPSImageEdgeModeType(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_MPSImageEdgeModeType(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_MPSImageEdgeModeType(BOOL)::info;
    }
  }

  re::introspect_MPSImageEdgeModeType(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_MPSImageEdgeModeType(BOOL)::info, a2);
  v15[0] = 0xD4663F6F4305B84ALL;
  v15[1] = "MPSImageEdgeModeType";
  xmmword_1EE1C6498 = v16;
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::introspect_MPSImageEdgeModeType(BOOL)::info;
}

void re::RenderGraphResolveNode::configure(re::RenderGraphResolveNode *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  if (*(this + 30))
  {
    v8 = 0;
    v9 = 0;
    while (*(re::RenderGraphResourceDescriptions::targetDescription((a4 + 3672), (*(this + 32) + v8)) + 84) == -1)
    {
      ++v9;
      v8 += 64;
      if (*(this + 30) <= v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    *(this + 64) = 0;
  }

  re::RenderGraphNode::configure(this, a2, a3, a4);
}

void *re::allocInfo_RenderGraphResolveNode(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_541, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_541))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C1498, "RenderGraphResolveNode");
    __cxa_guard_release(&_MergedGlobals_541);
  }

  return &unk_1EE1C1498;
}

void re::initInfo_RenderGraphResolveNode(re *this, re::IntrospectionBase *a2)
{
  v10[0] = 0xB3098F95BFEF7B6CLL;
  v10[1] = "RenderGraphResolveNode";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1C1490, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C1490);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1C1488 = v8;
      __cxa_guard_release(&qword_1EE1C1490);
    }
  }

  *(this + 2) = 0x10800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C1488;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphResolveNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphResolveNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphResolveNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphResolveNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v9 = v11;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::RenderGraphResolveNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *result = &unk_1F5D154D8;
  *(result + 66) = 1;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::RenderGraphResolveNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *result = &unk_1F5D154D8;
  *(result + 66) = 1;
  return result;
}

void re::RenderGraphResolveNode::~RenderGraphResolveNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::ARSegmentationExecuteData::~ARSegmentationExecuteData(re::ARSegmentationExecuteData *this)
{
  v2 = *(this + 4);
  if (v2)
  {

    *(this + 4) = 0;
  }
}

{
  v2 = *(this + 4);
  if (v2)
  {

    *(this + 4) = 0;
  }

  JUMPOUT(0x1E6906520);
}

uint64_t re::RenderGraphDataStore::tryGet<re::SceneUnderstandingGuidedFilterOcclusionData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re43SceneUnderstandingGuidedFilterOcclusionDataE";
  if (("N2re43SceneUnderstandingGuidedFilterOcclusionDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re43SceneUnderstandingGuidedFilterOcclusionDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 24) + 4 * (v6 % *(a1 + 40)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 32);
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

uint64_t re::RenderGraphAREmitter::fillDataStoreAndEmitGraph(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, char *a7)
{
  v87 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1C1558, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1558))
  {
    qword_1EE1C1550 = re::hashString("ARSegmentationData", v59);
    __cxa_guard_release(&qword_1EE1C1558);
  }

  v13 = qword_1EE1C1550;
  v14 = strlen(*(a5 + 48));
  if (v14)
  {
    MurmurHash3_x64_128(*(a5 + 48), v14, 0, v79);
    v15 = (*(&v79[0] + 1) - 0x61C8864680B583E9 + (*&v79[0] << 6) + (*&v79[0] >> 2)) ^ *&v79[0];
  }

  else
  {
    v15 = 0;
  }

  v16 = re::RenderGraphDataStore::tryGet<re::ARSegmentationInputData>(a3 + 32, ((v13 << 6) - 0x61C8864680B583E9 + (v13 >> 2) + v15) ^ v13);
  re::createARSegmentationGenerateGuideData(a3, a5, v71);
  if (v16)
  {
    re::ARSegmentationEmitterCache::applyCachedDataToGraph(*(a1 + 1776), v71, a3, a6);
  }

  v17 = strlen(a6);
  v69 = a6;
  if (v17)
  {
    MurmurHash3_x64_128(a6, v17, 0, v79);
    v18 = ((*(&v79[0] + 1) - 0x61C8864680B583E9 + (*&v79[0] << 6) + (*&v79[0] >> 2)) ^ *&v79[0]) - 0x61C8864680B583E9;
  }

  else
  {
    v18 = 0x9E3779B97F4A7C17;
  }

  v19 = strlen(a7);
  if (v19)
  {
    MurmurHash3_x64_128(a7, v19, 0, v79);
    v20 = (*(&v79[0] + 1) - 0x61C8864680B583E9 + (*&v79[0] << 6) + (*&v79[0] >> 2)) ^ *&v79[0];
  }

  else
  {
    v20 = 0;
  }

  v77 = 0;
  if ((atomic_load_explicit(&qword_1EE1C1668, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1668))
  {
    qword_1EE1C1660 = re::introspect_ARSegmentationConnectionData(0);
    __cxa_guard_release(&qword_1EE1C1668);
  }

  v21 = (v18 + (v20 << 6) + (v20 >> 2)) ^ v20;
  v76 = qword_1EE1C1660;
  v22 = strlen(*(qword_1EE1C1660 + 48));
  if (v22)
  {
    MurmurHash3_x64_128(*(qword_1EE1C1660 + 48), v22, 0, v79);
    v23 = (*(&v79[0] + 1) - 0x61C8864680B583E9 + (*&v79[0] << 6) + (*&v79[0] >> 2)) ^ *&v79[0];
  }

  else
  {
    v23 = 0;
  }

  v77 = v23;
  re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(a4 + 176, &v77, &v76);
  *&v79[0] = (v21 - 0x61C8864680B583E9 + (v77 << 6) + (v77 >> 2)) ^ v77;
  v24 = (*(**(a4 + 8) + 32))(*(a4 + 8), 48, 8);
  *v24 = &unk_1F5D119D0;
  v25 = v74;
  v26 = v73;
  *(v24 + 8) = v72;
  *(v24 + 24) = v26;
  *(v24 + 40) = v25;
  v76 = v24;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a4 + 64, v79, &v76);
  if ((atomic_load_explicit(&qword_1EE1C1568, memory_order_acquire) & 1) == 0)
  {
    v60 = __cxa_guard_acquire(&qword_1EE1C1568);
    if (v60)
    {
      qword_1EE1C1560 = re::getCombinedScopeHash(v60, v61, v62);
      __cxa_guard_release(&qword_1EE1C1568);
    }
  }

  v27 = re::RenderGraphDataStore::tryGet<re::SceneUnderstandingGuidedFilterOcclusionData>(a4, qword_1EE1C1560);
  if (v27)
  {
    if ((atomic_load_explicit(&qword_1EE1C1578, memory_order_acquire) & 1) == 0)
    {
      v64 = v27;
      v66 = __cxa_guard_acquire(&qword_1EE1C1578);
      v27 = v64;
      if (v66)
      {
        qword_1EE1C1570 = re::hashString("GuidedFilterOcclusion", v65);
        __cxa_guard_release(&qword_1EE1C1578);
        v27 = v64;
      }
    }

    *&v79[0] = &unk_1F5D15700;
    v29 = *(v27 + 168);
    *&v28 = *(v27 + 176);
    *(&v28 + 1) = *(v27 + 160);
    *(v79 + 8) = v28;
    v30 = *(v27 + 116);
    LODWORD(v79[2]) = v28 / v30;
    DWORD1(v79[2]) = DWORD1(v28) / v30;
    *(&v79[1] + 1) = v29;
    v31 = qword_1EE1C1570;
    v32 = v18 + (qword_1EE1C1570 << 6) + (qword_1EE1C1570 >> 2);
    v76 = 0;
    if ((atomic_load_explicit(&qword_1EE1C1678, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1678))
    {
      qword_1EE1C1670 = re::introspect_SceneUnderstandingGuidedFilterOcclusionConnectionData(0);
      __cxa_guard_release(&qword_1EE1C1678);
    }

    v33 = v32 ^ v31;
    v75 = qword_1EE1C1670;
    v34 = strlen(*(qword_1EE1C1670 + 48));
    if (v34)
    {
      MurmurHash3_x64_128(*(qword_1EE1C1670 + 48), v34, 0, &v77);
      v35 = (v78 - 0x61C8864680B583E9 + (v77 << 6) + (v77 >> 2)) ^ v77;
    }

    else
    {
      v35 = 0;
    }

    v76 = v35;
    re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(a4 + 176, &v76, &v75);
    v77 = (v33 - 0x61C8864680B583E9 + (v76 << 6) + (v76 >> 2)) ^ v76;
    v36 = (*(**(a4 + 8) + 32))(*(a4 + 8), 40, 8);
    *v36 = &unk_1F5D15700;
    v37 = *(&v79[1] + 8);
    *(v36 + 8) = *(v79 + 8);
    *(v36 + 24) = v37;
    v75 = v36;
    re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a4 + 64, &v77, &v75);
  }

  else
  {
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    memset(v79, 0, sizeof(v79));
    *(a1 + 1616) = 0;
    NS::SharedPtr<MTL::Buffer>::operator=((a1 + 1624), v79 + 1);
    NS::SharedPtr<MTL::Buffer>::operator=((a1 + 1632), &v79[1]);
    NS::SharedPtr<MTL::Buffer>::operator=((a1 + 1640), &v79[1] + 1);
    NS::SharedPtr<MTL::Buffer>::operator=((a1 + 1648), &v79[2]);
    NS::SharedPtr<MTL::Buffer>::operator=((a1 + 1656), &v79[2] + 1);
    NS::SharedPtr<MTL::Buffer>::operator=((a1 + 1664), &v80);
    NS::SharedPtr<MTL::Buffer>::operator=((a1 + 1672), &v80 + 1);
    NS::SharedPtr<MTL::Buffer>::operator=((a1 + 1680), &v81);
    NS::SharedPtr<MTL::Buffer>::operator=((a1 + 1688), &v81 + 1);
    NS::SharedPtr<MTL::Buffer>::operator=((a1 + 1696), &v82);
    NS::SharedPtr<MTL::Buffer>::operator=((a1 + 1704), &v82 + 1);
    NS::SharedPtr<MTL::Buffer>::operator=((a1 + 1712), &v83);
    NS::SharedPtr<MTL::Buffer>::operator=((a1 + 1720), &v83 + 1);
    re::ObjCObject::operator=((a1 + 1728), &v84);
    re::ObjCObject::operator=((a1 + 1736), &v84 + 1);
    re::ObjCObject::operator=((a1 + 1744), &v85);
    re::ObjCObject::operator=((a1 + 1752), &v85 + 1);
    re::ObjCObject::operator=((a1 + 1760), &v86);
    re::ObjCObject::operator=((a1 + 1768), &v86 + 1);
    re::GuidedFilterOcclusionStateData::~GuidedFilterOcclusionStateData(v79);
  }

  *&v79[0] = &unk_1F5D12EC8;
  DWORD2(v79[0]) = *(a1 + 1144);
  re::RenderGraphDataStore::add<re::DefaultDepthFormatData,re::DefaultDepthFormatData&>(a4, v21, v79);
  *&v79[0] = &unk_1F5D12F08;
  DWORD2(v79[0]) = *(a1 + 1148);
  re::RenderGraphDataStore::add<re::DefaultStencilFormatData,re::DefaultStencilFormatData&>(a4, v21, v79);
  *&v79[2] = 0;
  memset(v79, 0, 28);
  if ((*(a3 + 448) & 1) == 0)
  {
    re::CameraView::registerFileProviders(a7, a2, *a3, a5, &v77);
    re::DynamicArray<re::ProviderHandle>::operator=(v79, &v77);
    re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v77);
  }

  v38 = *(a5 + 413) & *(a2 + 700);
  v39 = *(a2 + 705) | v38 & 1;
  if ((atomic_load_explicit(&qword_1EE1C1588, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1588))
  {
    qword_1EE1C1580 = re::hashString("DynamicFunctionConstants", v63);
    __cxa_guard_release(&qword_1EE1C1588);
  }

  if (v39)
  {
    v40 = qword_1EE1C1580;
    if (*(a2 + 8))
    {
      v41 = *(a2 + 16);
    }

    else
    {
      v41 = (a2 + 9);
    }

    v42 = strlen(v41);
    if (v42)
    {
      MurmurHash3_x64_128(v41, v42, 0, &v77);
      v43 = (v78 - 0x61C8864680B583E9 + (v77 << 6) + (v77 >> 2)) ^ v77;
    }

    else
    {
      v43 = 0;
    }

    v44 = (v40 << 6) - 0x61C8864680B583E9 + (v40 >> 2) + v43;
    v45 = re::RenderGraphDataStore::tryGet<re::DynamicFunctionConstantsData>(a4, v44 ^ v40);
    if (v45)
    {
      if ((v38 & 1) == 0)
      {
LABEL_42:
        if (*(a2 + 705) == 1)
        {
          if ((atomic_load_explicit(&qword_1EE1C15A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C15A8))
          {
            qword_1EE1C15A0 = re::hashString("EnableUserEnvironment", v68);
            __cxa_guard_release(&qword_1EE1C15A8);
          }

          LODWORD(v77) = 1;
          re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v45 + 8), &qword_1EE1C15A0, &v77);
        }

        goto LABEL_45;
      }
    }

    else
    {
      v77 = *(a3 + 392);
      LODWORD(v76) = 7;
      v45 = re::RenderGraphDataStore::add<re::DynamicFunctionConstantsData,re::PerFrameAllocator *,int>(a4, v44 ^ v40, &v77, &v76);
      if ((v38 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    if ((atomic_load_explicit(&qword_1EE1C1598, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1598))
    {
      qword_1EE1C1590 = re::hashString("EnableDepthMitigation", v67);
      __cxa_guard_release(&qword_1EE1C1598);
    }

    LODWORD(v77) = 1;
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v45 + 8), &qword_1EE1C1590, &v77);
    goto LABEL_42;
  }

LABEL_45:
  v46 = *(a5 + 328);
  if (v46 && *(v46 + 40))
  {
    v47 = qword_1EE1C1580;
    v48 = (*(a2 + 8) & 1) != 0 ? *(a2 + 16) : (a2 + 9);
    v49 = strlen(v48);
    if (v49)
    {
      MurmurHash3_x64_128(v48, v49, 0, &v77);
      v50 = (v78 - 0x61C8864680B583E9 + (v77 << 6) + (v77 >> 2)) ^ v77;
    }

    else
    {
      v50 = 0;
    }

    v51 = ((v47 << 6) - 0x61C8864680B583E9 + (v47 >> 2) + v50) ^ v47;
    if (!re::RenderGraphDataStore::tryGet<re::DynamicFunctionConstantsData>(a4, v51))
    {
      v52 = *(a3 + 392);
      v53 = "N2re28DynamicFunctionConstantsDataE";
      if (("N2re28DynamicFunctionConstantsDataE" & 0x8000000000000000) != 0)
      {
        v54 = ("N2re28DynamicFunctionConstantsDataE" & 0x7FFFFFFFFFFFFFFFLL);
        v55 = 5381;
        do
        {
          v53 = v55;
          v56 = *v54++;
          v55 = (33 * v55) ^ v56;
        }

        while (v56);
      }

      v77 = (v51 - 0x61C8864680B583E9 + (v53 << 6) + (v53 >> 2)) ^ v53;
      v57 = (*(**(a4 + 8) + 32))(*(a4 + 8), 72, 8);
      *v57 = &unk_1F5D12DC0;
      *(v57 + 8) = 0u;
      *(v57 + 24) = 0u;
      *(v57 + 40) = 0u;
      *(v57 + 56) = 0;
      *(v57 + 64) = v52;
      v76 = v57;
      re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a4 + 64, &v77, &v76);
    }
  }

  re::RenderFrame::emitGraph(a3, a7, v69);
  re::CameraView::unregisterFileProviders(*a3, v79);
  return re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v79);
}

void re::RenderGraphAREmitter::~RenderGraphAREmitter(re::RenderGraphAREmitter *this)
{
  v2 = *(this + 152);
  if (v2)
  {
    re::RenderGraphAREmitter::unregisterProviders(this, v2);
  }

  v3 = *(this + 224);
  if (v3)
  {

    *(this + 224) = 0;
  }

  v4 = *(this + 222);
  if (v4)
  {

    *(this + 222) = 0;
  }

  re::GuidedFilterOcclusionStateData::~GuidedFilterOcclusionStateData(this + 202);
  re::StringID::destroyString((this + 1584));
  re::StringID::destroyString((this + 1560));
  re::StringID::destroyString((this + 1536));
  re::StringID::destroyString((this + 1512));
  re::StringID::destroyString((this + 1488));
  re::StringID::destroyString((this + 1464));
  re::StringID::destroyString((this + 1440));
  re::StringID::destroyString((this + 1416));
  re::StringID::destroyString((this + 1392));
  re::StringID::destroyString((this + 1368));
  re::StringID::destroyString((this + 1344));
  re::StringID::destroyString((this + 1320));
  re::StringID::destroyString((this + 1296));
  re::StringID::destroyString((this + 1272));
  re::StringID::destroyString((this + 1248));
  re::AssetHandle::~AssetHandle((this + 1224));
  re::AssetHandle::~AssetHandle((this + 1120));
  re::AssetHandle::~AssetHandle((this + 1096));
  re::AssetHandle::~AssetHandle((this + 1072));
  re::AssetHandle::~AssetHandle((this + 1040));
  re::AssetHandle::~AssetHandle((this + 1016));
  re::AssetHandle::~AssetHandle((this + 992));
  re::AssetHandle::~AssetHandle((this + 968));
  re::AssetHandle::~AssetHandle((this + 944));
  re::AssetHandle::~AssetHandle((this + 920));
  re::AssetHandle::~AssetHandle((this + 896));
  re::AssetHandle::~AssetHandle((this + 872));
  re::AssetHandle::~AssetHandle((this + 848));
  re::AssetHandle::~AssetHandle((this + 824));
  re::AssetHandle::~AssetHandle((this + 800));
  re::AssetHandle::~AssetHandle((this + 776));
  re::AssetHandle::~AssetHandle((this + 752));
  re::AssetHandle::~AssetHandle((this + 728));

  re::RealityEmitterBase::~RealityEmitterBase(this);
}

{
  re::RenderGraphAREmitter::~RenderGraphAREmitter(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphAREmitter::unregisterProviders(re::RenderGraphAREmitter *this, re::RenderGraphManager *a2)
{
  re::RealityEmitterBase::unregisterCommonProviders(this, a2);
  if (re::FontID::isValid((this + 1248)))
  {
    re::StringID::StringID(v32, this + 78);
    v32[2] = *(this + 158);
    v4 = re::RenderGraphManager::removeProvider(a2, v32);
    if (v32[0])
    {
      if (v32[0])
      {
      }
    }

    v32[0] = 0;
    v32[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1248));
  }

  if (re::FontID::isValid((this + 1416)))
  {
    re::StringID::StringID(v31, (this + 1416));
    v31[2] = *(this + 179);
    v5 = re::RenderGraphManager::removeProvider(a2, v31);
    if (v31[0])
    {
      if (v31[0])
      {
      }
    }

    v31[0] = 0;
    v31[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1416));
  }

  if (re::FontID::isValid((this + 1440)))
  {
    re::StringID::StringID(v30, this + 90);
    v30[2] = *(this + 182);
    v6 = re::RenderGraphManager::removeProvider(a2, v30);
    if (v30[0])
    {
      if (v30[0])
      {
      }
    }

    v30[0] = 0;
    v30[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1440));
  }

  if (re::FontID::isValid((this + 1296)))
  {
    re::StringID::StringID(v29, this + 81);
    v29[2] = *(this + 164);
    v7 = re::RenderGraphManager::removeProvider(a2, v29);
    if (v29[0])
    {
      if (v29[0])
      {
      }
    }

    v29[0] = 0;
    v29[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1296));
  }

  if (re::FontID::isValid((this + 1320)))
  {
    re::StringID::StringID(v28, (this + 1320));
    v28[2] = *(this + 167);
    v8 = re::RenderGraphManager::removeProvider(a2, v28);
    if (v28[0])
    {
      if (v28[0])
      {
      }
    }

    v28[0] = 0;
    v28[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1320));
  }

  if (re::FontID::isValid((this + 1344)))
  {
    re::StringID::StringID(v27, this + 84);
    v27[2] = *(this + 170);
    v9 = re::RenderGraphManager::removeProvider(a2, v27);
    if (v27[0])
    {
      if (v27[0])
      {
      }
    }

    v27[0] = 0;
    v27[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1344));
  }

  v10 = *(this + 223);
  *(this + 223) = 0;

  *(this + 112) = 0u;
  if (re::FontID::isValid((this + 1512)))
  {
    re::StringID::StringID(v26, (this + 1512));
    v26[2] = *(this + 191);
    v11 = re::RenderGraphManager::removeProvider(a2, v26);
    if (v26[0])
    {
      if (v26[0])
      {
      }
    }

    v26[0] = 0;
    v26[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1512));
  }

  if (re::FontID::isValid((this + 1536)))
  {
    re::StringID::StringID(v25, this + 96);
    v25[2] = *(this + 194);
    v12 = re::RenderGraphManager::removeProvider(a2, v25);
    if (v25[0])
    {
      if (v25[0])
      {
      }
    }

    v25[0] = 0;
    v25[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1536));
  }

  if (re::FontID::isValid((this + 1464)))
  {
    re::StringID::StringID(v24, (this + 1464));
    v24[2] = *(this + 185);
    v13 = re::RenderGraphManager::removeProvider(a2, v24);
    if (v24[0])
    {
      if (v24[0])
      {
      }
    }

    v24[0] = 0;
    v24[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1464));
  }

  if (re::FontID::isValid((this + 1488)))
  {
    re::StringID::StringID(v23, this + 93);
    v23[2] = *(this + 188);
    v14 = re::RenderGraphManager::removeProvider(a2, v23);
    if (v23[0])
    {
      if (v23[0])
      {
      }
    }

    v23[0] = 0;
    v23[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1488));
  }

  if (*(this + 1212) == 1 && re::FontID::isValid((this + 1560)))
  {
    re::StringID::StringID(v22, (this + 1560));
    v22[2] = *(this + 197);
    v15 = re::RenderGraphManager::removeProvider(a2, v22);
    if (v22[0])
    {
      if (v22[0])
      {
      }
    }

    v22[0] = 0;
    v22[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1560));
  }

  if (re::FontID::isValid((this + 1368)))
  {
    re::StringID::StringID(v21, (this + 1368));
    v21[2] = *(this + 173);
    v16 = re::RenderGraphManager::removeProvider(a2, v21);
    if (v21[0])
    {
      if (v21[0])
      {
      }
    }

    v21[0] = 0;
    v21[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1368));
  }

  if (re::FontID::isValid((this + 1392)))
  {
    re::StringID::StringID(v20, this + 87);
    v20[2] = *(this + 176);
    v17 = re::RenderGraphManager::removeProvider(a2, v20);
    if (v20[0])
    {
      if (v20[0])
      {
      }
    }

    v20[0] = 0;
    v20[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1392));
  }

  re::ARSegmentationEmitterCache::unregisterRenderGraphProvider(*(this + 222), a2);
  if (re::FontID::isValid((this + 1584)))
  {
    re::StringID::StringID(v19, this + 99);
    v19[2] = *(this + 200);
    v18 = re::RenderGraphManager::removeProvider(a2, v19);
    if (v19[0])
    {
      if (v19[0])
      {
      }
    }

    v19[0] = 0;
    v19[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1584));
  }
}

re::RenderGraphAREmitter *re::RenderGraphAREmitter::RenderGraphAREmitter(re::RenderGraphAREmitter *this)
{
  v2 = this + 1144;
  v3 = re::RealityEmitterBase::RealityEmitterBase(this);
  *v3 = &unk_1F5D15580;
  *(v3 + 728) = 0u;
  *(v3 + 744) = 0u;
  *(v3 + 760) = 0u;
  *(v3 + 776) = 0u;
  *(v3 + 792) = 0u;
  *(v3 + 808) = 0u;
  *(v3 + 824) = 0u;
  *(v3 + 840) = 0u;
  *(v3 + 856) = 0u;
  *(v3 + 872) = 0u;
  *(v3 + 888) = 0u;
  *(v3 + 904) = 0u;
  *(v3 + 920) = 0u;
  *(v3 + 936) = 0u;
  *(v3 + 952) = 0u;
  *(v3 + 968) = 0u;
  *(v3 + 984) = 0u;
  *(v3 + 1000) = 0u;
  *(v3 + 1016) = 0u;
  *(v3 + 1032) = 0u;
  *(v3 + 1048) = 0u;
  *(v3 + 266) = 1;
  *(v3 + 67) = 0u;
  *(v3 + 68) = 0u;
  *(v3 + 69) = 0u;
  *(v3 + 70) = 0u;
  *(v3 + 142) = 0;
  *v2 = xmmword_1E31089E0;
  *(v3 + 145) = 0x4280000000000008;
  *(v3 + 292) = 32;
  *(v3 + 1172) = 0;
  *(v2 + 29) = 16843009;
  *(v2 + 33) = 0x1000000;
  *(v3 + 74) = xmmword_1E31042A0;
  *(v3 + 600) = 0;
  *(v2 + 58) = 16843009;
  *(v3 + 603) = 256;
  *(v3 + 302) = 1065353216;
  *(v3 + 1212) = 1;
  *(v3 + 77) = 0u;
  *(v3 + 76) = 0u;
  re::StringID::invalid((v3 + 1248));
  *(this + 158) = 0;
  re::StringID::invalid((this + 1272));
  *(this + 161) = 0;
  re::StringID::invalid((this + 1296));
  *(this + 164) = 0;
  re::StringID::invalid((this + 1320));
  *(this + 167) = 0;
  re::StringID::invalid((this + 1344));
  *(this + 170) = 0;
  re::StringID::invalid((this + 1368));
  *(this + 173) = 0;
  re::StringID::invalid((this + 1392));
  *(this + 176) = 0;
  re::StringID::invalid((this + 1416));
  *(this + 179) = 0;
  re::StringID::invalid((this + 1440));
  *(this + 182) = 0;
  re::StringID::invalid((this + 1464));
  *(this + 185) = 0;
  re::StringID::invalid((this + 1488));
  *(this + 188) = 0;
  re::StringID::invalid((this + 1512));
  *(this + 191) = 0;
  re::StringID::invalid((this + 1536));
  *(this + 194) = 0;
  re::StringID::invalid((this + 1560));
  *(this + 197) = 0;
  v4 = re::StringID::invalid((this + 1584));
  *(this + 200) = 0;
  *(this + 804) = *(this + 1180);
  *(this + 101) = 0u;
  *(this + 102) = 0u;
  *(this + 103) = 0u;
  *(this + 104) = 0u;
  *(this + 105) = 0u;
  *(this + 106) = 0u;
  *(this + 107) = 0u;
  *(this + 108) = 0u;
  *(this + 109) = 0u;
  *(this + 110) = 0u;
  *(this + 111) = 0u;
  *(this + 112) = 0u;
  v5 = re::globalAllocators(v4);
  v6 = (*(*v5[2] + 32))(v5[2], 88, 8);
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 80) = 0;
  *(v6 + 64) = 0u;
  ArcSharedObject::ArcSharedObject(v6, 0);
  *v6 = &unk_1F5D156B8;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0;
  re::StringID::invalid((v6 + 64));
  *(v6 + 80) = 0;
  v7 = *(this + 222);
  *(this + 222) = v6;
  if (v7)
  {
  }

  return this;
}

void re::RenderGraphAREmitter::afterPrepareSceneContextHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v114 = *MEMORY[0x1E69E9840];
  v9 = *(a4 + 352);
  if (v9)
  {
    if ((atomic_load_explicit(&qword_1EE1C1538, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1538))
    {
      qword_1EE1C1530 = re::hashString("ARSegmentationData", v92);
      __cxa_guard_release(&qword_1EE1C1538);
    }

    v10 = qword_1EE1C1530;
    v11 = strlen(*(a4 + 48));
    if (v11)
    {
      v11 = MurmurHash3_x64_128(*(a4 + 48), v11, 0, &v103);
      v12 = (v104 - 0x61C8864680B583E9 + (v103 << 6) + (v103 >> 2)) ^ v103;
    }

    else
    {
      v12 = 0;
    }

    v13 = ((v10 << 6) - 0x61C8864680B583E9 + (v10 >> 2) + v12) ^ v10;
    v14 = "N2re23ARSegmentationInputDataE";
    if (("N2re23ARSegmentationInputDataE" & 0x8000000000000000) != 0)
    {
      v15 = ("N2re23ARSegmentationInputDataE" & 0x7FFFFFFFFFFFFFFFLL);
      v16 = 5381;
      do
      {
        v14 = v16;
        v17 = *v15++;
        v16 = (33 * v16) ^ v17;
      }

      while (v17);
    }

    v18 = v13 - 0x61C8864680B583E9;
    v103 = (v13 - 0x61C8864680B583E9 + (v14 << 6) + (v14 >> 2)) ^ v14;
    v19 = re::globalAllocators(v11);
    v20 = (*(*v19[2] + 32))(v19[2], 40, 8);
    *v20 = &unk_1F5CED808;
    v20[1] = v9[1];
    v9[1] = 0;
    v20[2] = v9[2];
    v9[2] = 0;
    v20[3] = v9[3];
    v9[3] = 0;
    v20[4] = v9[4];
    v9[4] = 0;
    v102 = v20;
    re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a5 + 16, &v103, &v102);
    v103 = &unk_1F5D15638;
    *v105 = 0;
    *&v105[8] = 0;
    LODWORD(v104) = 3;
    *(&v104 + 1) = 1065353216;
    re::ObjCObject::operator=(v105, (a1 + 1784));
    v21 = NS::SharedPtr<MTL::Buffer>::operator=(&v105[8], (a1 + 1792));
    *&v105[16] = a1 + 1800;
    v22 = "N2re25ARSegmentationExecuteDataE";
    if (("N2re25ARSegmentationExecuteDataE" & 0x8000000000000000) != 0)
    {
      v23 = ("N2re25ARSegmentationExecuteDataE" & 0x7FFFFFFFFFFFFFFFLL);
      v24 = 5381;
      do
      {
        v22 = v24;
        v25 = *v23++;
        v24 = (33 * v24) ^ v25;
      }

      while (v25);
    }

    v102 = (v18 + (v22 << 6) + (v22 >> 2)) ^ v22;
    v26 = re::globalAllocators(v21);
    v27 = (*(*v26[2] + 32))(v26[2], 48, 8);
    *v27 = &unk_1F5D15638;
    *(v27 + 8) = v104;
    v28 = *v105;
    *v105 = 0;
    *(v27 + 24) = v28;
    *&v105[8] = 0;
    *(v27 + 40) = *&v105[16];
    v101 = v27;
    re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a5 + 16, &v102, &v101);
    if (*&v105[8])
    {

      *&v105[8] = 0;
    }
  }

  v29 = *(a4 + 360);
  if (v29)
  {
    v30 = (*(a1 + 1173) & 1) != 0 || (*(a1 + 1172) & 1) != 0 ? 1 : v29[6];
    v31 = *(a1 + 1048);
    v32 = v31 ? *v29 : 0;
    *(a1 + 1609) = v32 & 1;
    *(a1 + 1177) = v29[2];
    v33 = v29[3];
    *(a1 + 1178) = v33;
    *(a1 + 1179) = v29[4] & v33;
    v34 = *(a1 + 784);
    if (v34)
    {
      re::AssetHandle::loadNow(v34, 0);
      v35 = *v29;
      if ((v35 | v30))
      {
        if (*(a1 + 1179) == 1 && (v29[1] & 1) == 0)
        {
          v36 = 16;
          v37 = 0;
          if ((*(a1 + 1174) & 1) == 0)
          {
            if (*(a1 + 1175))
            {
              v36 = 16;
            }

            else
            {
              v36 = 0;
            }
          }

          v38 = 8;
          if ((v30 & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v36 = 0;
          v37 = 1;
          v38 = 1;
          if ((v30 & 1) == 0)
          {
            goto LABEL_44;
          }
        }
      }

      else
      {
        v38 = 0;
        v36 = 0;
        v37 = 1;
        if ((v30 & 1) == 0)
        {
LABEL_44:
          v39 = 0;
LABEL_45:
          v40 = v36 | v38 | v39;
          if (*v29)
          {
            v41 = 0;
          }

          else
          {
            v41 = 2;
          }

          if ((v38 & 1) == 0)
          {
            v41 = 0;
          }

          v42 = v29[1];
          v43 = v41 | (32 * v42) | v40;
          if (v43 != (*(a3 + 120) & 0x7F))
          {
            v44 = *(a1 + 784);
            if (v44)
            {
              v45 = atomic_load((v44 + 896));
              if (v45 == 2)
              {
                ++*(*(a1 + 784) + 276);
                v100 = v39;
                v97 = v36;
                v98 = v37;
                v46 = re::AssetHandle::loadedAsset<re::RenderGraphAsset>((a1 + 776));
                v47 = v98;
                v39 = v100;
                v99 = v46;
                if (v46)
                {
                  if (v29[3] == 1)
                  {
                    v103 = 0xA347EFBC0FB083E8;
                    *&v104 = "ForceClearSceneUnderstandingMeshShadowSingleChannel";
                    LOBYTE(v102) = v38 >> 3;
                    v48 = re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v46 + 8), &v103, "Enabled", &v102);
                    if (v103)
                    {
                      if (v103)
                      {
                      }
                    }

                    v103 = 0x2A295CF77075A36CLL;
                    *&v104 = "CompositeSceneUnderstandingShadowsNode";
                    LOBYTE(v102) = v38 >> 3;
                    v49 = re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v99 + 8), &v103, "Enabled", &v102);
                    if (v103)
                    {
                      if (v103)
                      {
                      }
                    }

                    if (v31)
                    {
                      v50 = v40 & 0xC;
                      v51 = v99;
                    }

                    else
                    {
                      v103 = 0x696F5EF842740C56;
                      *&v104 = "CompositedMeshShadowProjectedPatchReceiverNode";
                      v96 = v40 & 0xC;
                      LOBYTE(v102) = v96 == 12;
                      v51 = v99;
                      re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v99 + 8), &v103, "Enabled", &v102);
                      re::StringID::destroyString(&v103);
                      v50 = v96;
                    }

                    v103 = 0x378766A6B9EC9AELL;
                    *&v104 = "CompositedSceneUnderstandingShadowNode";
                    LOBYTE(v102) = v50 == 8;
                    v52 = re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v51 + 8), &v103, "Enabled", &v102);
                    if (v103)
                    {
                      if (v103)
                      {
                      }
                    }

                    v39 = v100;
                    v47 = v98;
                  }

                  v103 = 0x252BC97CDD7FB102;
                  *&v104 = "PatchBasedMeshSceneUnderstandingDepthOnlyNode";
                  v53 = v47 & *v29;
                  if (!v39)
                  {
                    v53 = 0;
                  }

                  LOBYTE(v102) = v53;
                  v54 = re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v99 + 8), &v103, "Enabled", &v102);
                  if (v103)
                  {
                    if (v103)
                    {
                    }
                  }

                  v103 = 0x9AB5F11FB4FA0048;
                  *&v104 = "SceneUnderstandingOcclusionAndShadowNode";
                  LOBYTE(v102) = (v100 == 0) & v38;
                  v55 = re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v99 + 8), &v103, "Enabled", &v102);
                  if (v103)
                  {
                    if (v103)
                    {
                    }
                  }

                  if (!v31)
                  {
                    v103 = 0x10DE28F3DBBA741CLL;
                    *&v104 = "SceneUnderstandingOcclusionAndShadowDepthClearNode";
                    LOBYTE(v102) = (v43 & 6) == 2;
                    v56 = re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v99 + 8), &v103, "Enabled", &v102);
                    if (v103)
                    {
                      if (v103)
                      {
                      }
                    }

                    v103 = 0xF5A2D353F87D6B9CLL;
                    *&v104 = "MeshShadowProjectedPatchReceiverNode";
                    LOBYTE(v102) = (v100 != 0) & v38;
                    v57 = re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v99 + 8), &v103, "Enabled", &v102);
                    if (v103)
                    {
                      if (v103)
                      {
                      }
                    }

                    v103 = 0xF7F248B7F1C26F4;
                    *&v104 = "PatchShadowReceiverDepthOnlyNode";
                    LOBYTE(v102) = (v100 != 0) & v38;
                    v58 = re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v99 + 8), &v103, "Enabled", &v102);
                    if (v103)
                    {
                      if (v103)
                      {
                      }
                    }
                  }

                  v103 = 0x95DF29AA01C3F5E4;
                  *&v104 = "SceneUnderstandingWireframeNode";
                  LOBYTE(v102) = v42;
                  v59 = re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v99 + 8), &v103, "Enabled", &v102);
                  if (v103)
                  {
                    if (v103)
                    {
                    }
                  }

                  v103 = 0x2B2EFFC92CCF4F14;
                  *&v104 = "SceneUnderstandingShadowsDepthNode";
                  LOBYTE(v102) = v97 >> 4;
                  v60 = re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v99 + 8), &v103, "Enabled", &v102);
                  if (v103)
                  {
                    if (v103)
                    {
                    }
                  }

                  v39 = v100;
                }
              }
            }

            v61 = *(a1 + 1048);
            if (v61)
            {
              v62 = atomic_load((v61 + 896));
              if (v62 == 2)
              {
                v63 = *(a1 + 1048);
                if (v63)
                {
                  v64 = atomic_load((v63 + 896));
                  if (v64 == 2)
                  {
                    ++*(*(a1 + 1048) + 276);
                    v65 = v39;
                    v66 = re::AssetHandle::loadedAsset<re::RenderGraphAsset>((a1 + 1040));
                    if (v66)
                    {
                      v67 = v65;
                      v68 = v66;
                      v103 = 0xF5A2D353F87D6B9CLL;
                      *&v104 = "MeshShadowProjectedPatchReceiverNode";
                      v69 = (v67 != 0) & v38;
                      LOBYTE(v102) = v69;
                      re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v66 + 8), &v103, "Enabled", &v102);
                      re::StringID::destroyString(&v103);
                      v103 = 0xF7F248B7F1C26F4;
                      *&v104 = "PatchShadowReceiverDepthOnlyNode";
                      LOBYTE(v102) = v69;
                      re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v68 + 8), &v103, "Enabled", &v102);
                      re::StringID::destroyString(&v103);
                    }
                  }
                }
              }
            }
          }

          *(a3 + 120) = v43;
          goto LABEL_100;
        }
      }

      if (((v31 == 0) & v29[5]) != 0)
      {
        v39 = 4;
      }

      else
      {
        v39 = 0;
      }

      if (v31 && (v29[5] & 1) != 0 && (v35 & 1) == 0)
      {
        if (*(a1 + 1179))
        {
          v39 = 0;
        }

        else
        {
          v39 = 4;
        }
      }

      goto LABEL_45;
    }
  }

LABEL_100:
  v70 = *(a4 + 368);
  if (v70)
  {
    v103 = &unk_1F5CF56C8;
    LOBYTE(v104) = *(v70 + 8);
    *(&v104 + 1) = *(v70 + 16);
    v71 = *(v70 + 24);
    v72 = *(v70 + 48);
    *&v105[8] = *(v70 + 32);
    v106 = v72;
    v73 = *(v70 + 64);
    v74 = *(v70 + 80);
    v75 = *(v70 + 112);
    v109 = *(v70 + 96);
    v110 = v75;
    v107 = v73;
    v108 = v74;
    v76 = *(v70 + 128);
    v77 = *(v70 + 144);
    v78 = *(v70 + 160);
    *&v113[10] = *(v70 + 170);
    v112 = v77;
    *v113 = v78;
    v111 = v76;
    *v105 = v71;
    *&v105[8] = a1 + 1616;
    if ((atomic_load_explicit(&qword_1EE1C1548, memory_order_acquire) & 1) == 0)
    {
      v93 = __cxa_guard_acquire(&qword_1EE1C1548);
      if (v93)
      {
        qword_1EE1C1540 = re::getCombinedScopeHash(v93, v94, v95);
        __cxa_guard_release(&qword_1EE1C1548);
      }
    }

    if (!re::RenderGraphDataStore::tryGet<re::SceneUnderstandingGuidedFilterOcclusionData>(a5, qword_1EE1C1540))
    {
      v79 = "N2re43SceneUnderstandingGuidedFilterOcclusionDataE";
      if (("N2re43SceneUnderstandingGuidedFilterOcclusionDataE" & 0x8000000000000000) != 0)
      {
        v80 = ("N2re43SceneUnderstandingGuidedFilterOcclusionDataE" & 0x7FFFFFFFFFFFFFFFLL);
        v81 = 5381;
        do
        {
          v79 = v81;
          v82 = *v80++;
          v81 = (33 * v81) ^ v82;
        }

        while (v82);
      }

      v102 = (qword_1EE1C1540 + (v79 << 6) + (v79 >> 2) - 0x61C8864680B583E9) ^ v79;
      v83 = re::globalAllocators(0);
      v84 = (*(*v83[2] + 32))(v83[2], 192, 16);
      *v84 = &unk_1F5CF56C8;
      *(v84 + 8) = v104;
      *(v84 + 16) = *(&v104 + 1);
      *(v84 + 24) = *v105;
      *(&v104 + 1) = 0;
      *v105 = 0;
      v85 = v111;
      v86 = v112;
      v87 = *v113;
      *(v84 + 170) = *&v113[10];
      *(v84 + 144) = v86;
      *(v84 + 160) = v87;
      *(v84 + 128) = v85;
      v88 = v107;
      v89 = v108;
      v90 = v110;
      *(v84 + 96) = v109;
      *(v84 + 112) = v90;
      *(v84 + 64) = v88;
      *(v84 + 80) = v89;
      v91 = v106;
      *(v84 + 32) = *&v105[8];
      *(v84 + 48) = v91;
      v101 = v84;
      re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a5 + 16, &v102, &v101);
    }

    if (*v105)
    {

      *v105 = 0;
    }

    if (*(&v104 + 1))
    {
    }
  }
}

uint64_t re::RenderGraphAREmitter::emitFrameContext(uint64_t a1, void *a2, re::RenderFrame *this, re *a4)
{
  re::RenderFrame::emitGraph(this, "UploadMultiSceneConstants", "RenderFrame");
  v8 = a2[2];
  if (v8)
  {
    v9 = a2[3];
    v10 = 424 * v8;
    do
    {
      re::RealityEmitterBase::emitRTAOGraph(a1, v9, this, a4);
      re::RealityEmitterBase::emitVFXSimulationGraph(a1, v9, this, a4);
      v9 += 424;
      v10 -= 424;
    }

    while (v10);
  }

  v11 = a2[12];
  if (v11 && *(v11 + 16))
  {
    re::RenderFrame::emitGraph(this, "MipmapGenerationContext", "RenderFrame");
  }

  v12 = a2[13];
  if (v12 && *(v12 + 16))
  {
    re::RenderFrame::emitGraph(this, "BlurGenerationContext", "RenderFrame");
  }

  re::RealityEmitterBase::emitProbeWriteGraph(a1, this);
  re::RenderFrame::emitGraph(this, "ProjectiveMeshShadow", "RenderFrame");
  re::RealityEmitterBase::emitUIShadowGraph(a1, a2, this);
  if ((atomic_load_explicit(&qword_1EE1C15B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C15B8))
  {
    qword_1EE1C15B0 = re::hashString("ProjectiveMeshShadow", v31);
    __cxa_guard_release(&qword_1EE1C15B8);
  }

  if ((atomic_load_explicit(&qword_1EE1C15C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C15C8))
  {
    v33 = qword_1EE1C15B0;
    qword_1EE1C15C0 = ((v33 << 6) + (v33 >> 2) + re::hashString("RenderFrame", v32) - 0x61C8864680B583E9) ^ v33;
    __cxa_guard_release(&qword_1EE1C15C8);
  }

  if (*(a1 + 1048))
  {
    v34 = &unk_1F5D15678;
    v35 = 0;
    LOBYTE(v35) = *(a1 + 1609);
    v13 = "N2re31MeshShadowDepthPrepassOverridesE";
    if (("N2re31MeshShadowDepthPrepassOverridesE" & 0x8000000000000000) != 0)
    {
      v14 = ("N2re31MeshShadowDepthPrepassOverridesE" & 0x7FFFFFFFFFFFFFFFLL);
      v15 = 5381;
      do
      {
        v13 = v15;
        v16 = *v14++;
        v15 = (33 * v15) ^ v16;
      }

      while (v16);
    }

    v37 = (qword_1EE1C15C0 + (v13 << 6) + (v13 >> 2) - 0x61C8864680B583E9) ^ v13;
    v17 = (*(**(a4 + 1) + 32))(*(a4 + 1), 16, 8);
    *v17 = &unk_1F5D15678;
    *(v17 + 8) = v35;
    v36 = v17;
    re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a4 + 64, &v37, &v36);
  }

  LODWORD(v34) = 0;
  v18 = a2[2];
  if (v18)
  {
    v19 = a2[3];
    v20 = 424 * v18;
    do
    {
      re::RealityEmitterBase::emitSingleGraphShadows(a1, v19, this, a4, &v34);
      v19 += 424;
      v20 -= 424;
    }

    while (v20);
    v21 = a2[2];
    if (v21)
    {
      v22 = a2[3];
      v23 = 424 * v21;
      do
      {
        re::RealityEmitterBase::emitFilterMapGraph(a1, v22, this, a4);
        v22 += 53;
        v23 -= 424;
      }

      while (v23);
      v24 = a2[2];
      if (v24)
      {
        v25 = a2[3];
        v26 = 424 * v24;
        do
        {
          re::RealityEmitterBase::emitVisualProxyHighFidelityGraph(a1, v25, this, a4);
          v25 += 424;
          v26 -= 424;
        }

        while (v26);
        v27 = a2[2];
        if (v27)
        {
          v28 = a2[3];
          v29 = 424 * v27;
          do
          {
            re::RealityEmitterBase::emitCameraGraphs(a1, a2, v28, this, a4, 0);
            v28 += 424;
            v29 -= 424;
          }

          while (v29);
        }
      }
    }
  }

  return re::RealityEmitterBase::pushPipelineCompilationDataToDataStore(a1, this, a4);
}

uint64_t re::RenderGraphAREmitter::afterCameraViewHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v86[5] = *MEMORY[0x1E69E9840];
  v12 = 0x9E3779B97F4A7C17;
  if (*(a7 + 8))
  {
    v13 = *(a7 + 16);
  }

  else
  {
    v13 = (a7 + 9);
  }

  v14 = strlen(v13);
  if (v14)
  {
    MurmurHash3_x64_128(v13, v14, 0, &v75);
    v12 = ((v76 - 0x61C8864680B583E9 + (v75 << 6) + (v75 >> 2)) ^ v75) - 0x61C8864680B583E9;
  }

  re::CameraView::makeCameraData(a7, a4[1], a3, &v75);
  v54 = &unk_1F5D069E0;
  v64 = 0;
  v69 = 0;
  v16 = *(a7 + 768);
  v55 = *(a7 + 752);
  v56 = v16;
  v17 = *(a7 + 800);
  v57 = *(a7 + 784);
  v58 = v17;
  v18 = *(a7 + 864);
  v61 = *(a7 + 848);
  v62 = v18;
  v63 = *(a7 + 880);
  v19 = *(a7 + 832);
  v59 = *(a7 + 816);
  v60 = v19;
  if (*(a7 + 896) == 1)
  {
    v64 = 1;
    v20 = *(a7 + 928);
    v65 = *(a7 + 912);
    v66 = v20;
    v21 = *(a7 + 960);
    v67 = *(a7 + 944);
    v68 = v21;
  }

  if (*(a7 + 976) == 1)
  {
    v69 = 1;
    v22 = *(a7 + 1008);
    v70 = *(a7 + 992);
    v71 = v22;
    v23 = *(a7 + 1040);
    v72 = *(a7 + 1024);
    v73 = v23;
  }

  if (*(a1 + 1177) == 1)
  {
    v24 = &qword_1EE1C15D0;
    if (atomic_load_explicit(algn_1EE1C15D8, memory_order_acquire))
    {
      v25 = "DepthFeathering";
LABEL_13:
      v26 = *v24;
      v27 = v12 + (*v24 << 6) + (*v24 >> 2);
      re::RenderGraphDataStore::add<re::CameraData,re::CameraData&>(a5, v27 ^ *v24, &v75);
      re::RenderGraphDataStore::add<re::MeshLodSelectInputData,re::MeshLodSelectInputData&>(a5, v27 ^ v26, &v54);
      re::RealityEmitterBase::addSceneDataToDataStore(a1, a3, v27 ^ v26, a5);
      re::RenderFrame::emitGraph(a4, v25, v13);
      goto LABEL_20;
    }

    v53 = &qword_1EE1C15D0;
    v25 = "DepthFeathering";
    if (!__cxa_guard_acquire(algn_1EE1C15D8))
    {
      v24 = &qword_1EE1C15D0;
      goto LABEL_13;
    }

    v44 = re::hashString("DepthFeathering", v43);
    v45 = &qword_1EE1C15D0;
    goto LABEL_48;
  }

  if (*(a1 + 1178) == 1 && *(a1 + 1179) == 1)
  {
    if ((atomic_load_explicit(&qword_1EE1C15E8, memory_order_acquire) & 1) == 0)
    {
      v49 = __cxa_guard_acquire(&qword_1EE1C15E8);
      if (v49)
      {
        qword_1EE1C15E0 = re::getCombinedScopeHash(v49, v50, v51);
        __cxa_guard_release(&qword_1EE1C15E8);
      }
    }

    if (re::RenderGraphDataStore::tryGet<re::SceneUnderstandingGuidedFilterOcclusionData>(a5, qword_1EE1C15E0))
    {
      v24 = &qword_1EE1C15F0;
      if (atomic_load_explicit(algn_1EE1C15F8, memory_order_acquire))
      {
        v25 = "GuidedFilterOcclusion";
        goto LABEL_13;
      }

      v53 = &qword_1EE1C15F0;
      v25 = "GuidedFilterOcclusion";
      if (!__cxa_guard_acquire(algn_1EE1C15F8))
      {
        v24 = &qword_1EE1C15F0;
        goto LABEL_13;
      }

      v44 = re::hashString("GuidedFilterOcclusion", v52);
      v45 = &qword_1EE1C15F0;
LABEL_48:
      *v45 = v44;
      __cxa_guard_release(v45 + 1);
      v24 = v53;
      goto LABEL_13;
    }
  }

LABEL_20:
  v28 = *(a1 + 856);
  if (v28)
  {
    v29 = atomic_load((v28 + 896));
    if (v29 == 2)
    {
      re::AssetHandle::internalUpdateImmutableAsset<re::RenderGraphAsset,re::RenderGraphAREmitter::afterCameraViewHandler(re::RenderFrameContext &,re::RenderSceneContext &,re::RenderFrame &,re::RenderGraphDataStore &,char const*,re::CameraView const&)::$_0>((a1 + 848), a7);
    }
  }

  v30 = *(a1 + 904);
  if (v30)
  {
    v31 = atomic_load((v30 + 896));
    if (v31 == 2)
    {
      re::AssetHandle::internalUpdateImmutableAsset<re::RenderGraphAsset,re::RenderGraphAREmitter::afterCameraViewHandler(re::RenderFrameContext &,re::RenderSceneContext &,re::RenderFrame &,re::RenderGraphDataStore &,char const*,re::CameraView const&)::$_0>((a1 + 896), a7);
    }
  }

  v32 = *(a1 + 1000);
  if (v32)
  {
    v33 = atomic_load((v32 + 896));
    if (v33 == 2)
    {
      re::AssetHandle::internalUpdateImmutableAsset<re::RenderGraphAsset,re::RenderGraphAREmitter::afterCameraViewHandler(re::RenderFrameContext &,re::RenderSceneContext &,re::RenderFrame &,re::RenderGraphDataStore &,char const*,re::CameraView const&)::$_0>((a1 + 992), a7);
    }
  }

  v34 = *(a1 + 1024);
  if (v34)
  {
    v35 = atomic_load((v34 + 896));
    if (v35 == 2)
    {
      re::AssetHandle::internalUpdateImmutableAsset<re::RenderGraphAsset,re::RenderGraphAREmitter::afterCameraViewHandler(re::RenderFrameContext &,re::RenderSceneContext &,re::RenderFrame &,re::RenderGraphDataStore &,char const*,re::CameraView const&)::$_0>((a1 + 1016), a7);
    }
  }

  if ((*(a7 + 703) & 1) == 0)
  {
    re::CameraView::makeViewportPercentData(a7, v15, v74);
    if (*(a1 + 1174) == 1)
    {
      if ((atomic_load_explicit(&qword_1EE1C1608, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1608))
      {
        qword_1EE1C1600 = re::hashString("DepthOfField", v46);
        __cxa_guard_release(&qword_1EE1C1608);
      }

      v36 = qword_1EE1C1600;
      v37 = v12 + (qword_1EE1C1600 << 6) + (qword_1EE1C1600 >> 2);
      re::RenderGraphDataStore::add<re::CameraData,re::CameraData&>(a5, v37 ^ qword_1EE1C1600, &v75);
      re::RenderGraphDataStore::add<re::ViewportPercentData,re::ViewportPercentData&>(a5, v37 ^ v36, v74);
      re::RealityEmitterBase::addSceneDataToDataStore(a1, a3, v37 ^ v36, a5);
      re::RenderFrame::emitGraph(a4, "DepthOfField", v13);
    }

    if (*(a1 + 1175) == 1)
    {
      if ((atomic_load_explicit(&qword_1EE1C1618, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1618))
      {
        qword_1EE1C1610 = re::hashString("MotionBlur", v47);
        __cxa_guard_release(&qword_1EE1C1618);
      }

      v38 = qword_1EE1C1610;
      v39 = v12 + (qword_1EE1C1610 << 6) + (qword_1EE1C1610 >> 2);
      re::RenderGraphDataStore::add<re::CameraData,re::CameraData&>(a5, v39 ^ qword_1EE1C1610, &v75);
      re::RenderGraphDataStore::add<re::ViewportPercentData,re::ViewportPercentData&>(a5, v39 ^ v38, v74);
      re::RealityEmitterBase::addSceneDataToDataStore(a1, a3, v39 ^ v38, a5);
      re::RenderFrame::emitGraph(a4, "MotionBlur", v13);
    }

    if (*(a1 + 1176) == 1)
    {
      if ((atomic_load_explicit(&qword_1EE1C1628, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1628))
      {
        qword_1EE1C1620 = re::hashString("PostProcessCombined", v48);
        __cxa_guard_release(&qword_1EE1C1628);
      }

      v40 = qword_1EE1C1620;
      v41 = v12 + (qword_1EE1C1620 << 6) + (qword_1EE1C1620 >> 2);
      re::RenderGraphDataStore::add<re::ViewportPercentData,re::ViewportPercentData&>(a5, v41 ^ qword_1EE1C1620, v74);
      re::RealityEmitterBase::addSceneDataToDataStore(a1, a3, v41 ^ v40, a5);
      re::RenderFrame::emitGraph(a4, "PostProcessCombined", v13);
      *(*(*(a4[1] + 112) + 1648) + 16) = 0;
    }
  }

  re::RealityEmitterBase::emitCustomPostProcessGraph<re::CameraView>(a1, a3, a4, a7);
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v86);
  ++v85;
  ++v83;
  ++v81;
  v84 = 0;
  v82 = 0;
  v80 = 0;
  v78 = 0;
  ++v79;
  result = v76;
  if (v76)
  {
    if (v77)
    {
      return (*(*v76 + 40))();
    }
  }

  return result;
}

uint64_t re::RenderGraphDataStore::add<re::CameraData,re::CameraData&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v19 = 0;
  {
    re::introspect<re::CameraData>(BOOL)::info = re::introspect_CameraData(0);
  }

  v18 = re::introspect<re::CameraData>(BOOL)::info;
  v6 = strlen(*(re::introspect<re::CameraData>(BOOL)::info + 6));
  if (v6)
  {
    MurmurHash3_x64_128(*(re::introspect<re::CameraData>(BOOL)::info + 6), v6, 0, v20);
    v7 = (v20[1] - 0x61C8864680B583E9 + (v20[0] << 6) + (v20[0] >> 2)) ^ v20[0];
  }

  else
  {
    v7 = 0;
  }

  v19 = v7;
  re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(a1 + 176, &v19, &v18);
  v20[0] = (a2 - 0x61C8864680B583E9 + (v19 << 6) + (v19 >> 2)) ^ v19;
  v8 = (*(**(a1 + 8) + 32))(*(a1 + 8), 960, 16);
  *v8 = &unk_1F5D03750;
  re::DynamicString::DynamicString((v8 + 8), (a3 + 8));
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  v9 = *(a3 + 48);
  memcpy((v8 + 64), (a3 + 64), 32 * v9);
  *(v8 + 48) = v9;
  *(v8 + 128) = 0;
  *(v8 + 136) = 0;
  re::DynamicInlineArray<re::Projection,2ul>::copy((v8 + 128), (a3 + 128));
  *(v8 + 624) = 0;
  *(v8 + 632) = 0;
  v10 = *(a3 + 624);
  memcpy((v8 + 640), (a3 + 640), v10 << 6);
  *(v8 + 624) = v10;
  *(v8 + 768) = 0;
  *(v8 + 776) = 0;
  v11 = *(a3 + 768);
  memcpy((v8 + 784), (a3 + 784), 16 * v11);
  *(v8 + 768) = v11;
  v13 = *(a3 + 832);
  v12 = *(a3 + 848);
  v14 = *(a3 + 816);
  *(v8 + 858) = *(a3 + 858);
  *(v8 + 832) = v13;
  *(v8 + 848) = v12;
  *(v8 + 816) = v14;
  v15 = *(a3 + 876);
  *(v8 + 876) = v15;
  if (v15 == 1)
  {
    *(v8 + 880) = *(a3 + 880);
  }

  v16 = *(a3 + 884);
  *(v8 + 897) = *(a3 + 897);
  *(v8 + 884) = v16;
  *(v8 + 944) = *(a3 + 944);
  *(v8 + 952) = 0;
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(v8 + 920, a3 + 920);
  v18 = v8;
  return re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, v20, &v18);
}

re::RenderGraphAsset *re::AssetHandle::internalUpdateImmutableAsset<re::RenderGraphAsset,re::RenderGraphAREmitter::afterCameraViewHandler(re::RenderFrameContext &,re::RenderSceneContext &,re::RenderFrame &,re::RenderGraphDataStore &,char const*,re::CameraView const&)::$_0>(re::RenderGraphAsset *result, uint64_t a2)
{
  v2 = *(result + 1);
  if (v2)
  {
    v3 = atomic_load((v2 + 896));
    if (v3 == 2)
    {
      ++*(*(result + 1) + 276);
      result = re::AssetHandle::loadedAsset<re::RenderGraphAsset>(result);
      if (result)
      {
        v5 = result;
        if (*(a2 + 704))
        {
          v6 = "arKitPassthroughDisabledTechnique";
        }

        else
        {
          v6 = "arKitPassthroughTechnique";
        }

        v9 = 0xBEC9DE826D75EA6;
        v10 = "Fullscreen_ARKitPassthrough";
        {
          re::introspect<re::DynamicString>(BOOL)::info = re::IntrospectionInfo<re::DynamicString>::get(0, v8);
        }

        v7 = re::RenderGraphFile::setRuntimeNodeSetting((v5 + 8), &v9, re::introspect<re::DynamicString>(BOOL)::info, "techniqueName", &v11);
        if (v9)
        {
          if (v9)
          {
          }
        }

        result = v11;
        if (v11)
        {
          if (v12)
          {
            return (*(*v11 + 40))();
          }
        }
      }
    }
  }

  return result;
}

uint64_t re::RenderGraphDataStore::add<re::ViewportPercentData,re::ViewportPercentData&>(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = "N2re19ViewportPercentDataE";
  if (("N2re19ViewportPercentDataE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re19ViewportPercentDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  v13 = (a2 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v9 = (*(**(a1 + 8) + 32))(*(a1 + 8), 80, 16);
  *v9 = &unk_1F5D06920;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  v10 = a3[2];
  memcpy((v9 + 32), a3 + 4, 16 * v10);
  *(v9 + 16) = v10;
  *(v9 + 64) = a3[8];
  v12 = v9;
  return re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, &v13, &v12);
}

void re::RenderGraphAREmitter::afterCameraMultiViewHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29[6] = *MEMORY[0x1E69E9840];
  if ((*(a7 + 703) & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_1EE1C1638, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1638))
    {
      qword_1EE1C1630 = re::hashString("PostProcessMultiView", v17);
      __cxa_guard_release(&qword_1EE1C1638);
    }

    if (*(a7 + 8))
    {
      v11 = *(a7 + 16);
    }

    else
    {
      v11 = (a7 + 9);
    }

    v12 = qword_1EE1C1630;
    v13 = strlen(v11);
    if (v13)
    {
      MurmurHash3_x64_128(v11, v13, 0, &v18);
      v14 = (v19 - 0x61C8864680B583E9 + (v18 << 6) + (v18 >> 2)) ^ v18;
    }

    else
    {
      v14 = 0;
    }

    v15 = (v12 << 6) - 0x61C8864680B583E9 + (v12 >> 2) + v14;
    re::CameraMultiView::makeCameraDataInstancedMode(a7, a4[1], a3, &v18);
    re::RenderGraphDataStore::add<re::CameraData,re::CameraData>(a5, v15 ^ v12, &v18);
    re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v29);
    ++v28;
    ++v26;
    ++v24;
    v27 = 0;
    v25 = 0;
    v23 = 0;
    v21 = 0;
    ++v22;
    if (v19)
    {
      if (v20)
      {
        (*(*v19 + 40))();
      }
    }

    re::CameraMultiView::makeViewportPercentDataInstancedMode(a7, v16, &v18);
    re::RenderGraphDataStore::add<re::ViewportPercentData,re::ViewportPercentData>(a5, v15 ^ v12, &v18);
    re::RenderFrame::emitGraph(a4, "PostProcessMultiView", v11);
    *(*(*(a4[1] + 112) + 1648) + 16) = 0;
  }
}

uint64_t re::RenderGraphAREmitter::cameraViewHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, char *a6, uint64_t a7)
{
  re::CameraView::prepareEmitDefault(a7, a4, a5, a2, a3, a6);
  if (*(a7 + 8))
  {
    v13 = *(a7 + 16);
  }

  else
  {
    v13 = (a7 + 9);
  }

  return re::RenderGraphAREmitter::fillDataStoreAndEmitGraph(a1, a7, a4, a5, a3, v13, a6);
}

uint64_t re::RenderGraphAREmitter::cameraMultiViewHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, char *a6, uint64_t a7)
{
  re::CameraMultiView::prepareEmitDefaultInstancedMode(a7, a4, a5, a2, a3, a6);
  if (*(a7 + 8))
  {
    v13 = *(a7 + 16);
  }

  else
  {
    v13 = (a7 + 9);
  }

  return re::RenderGraphAREmitter::fillDataStoreAndEmitGraph(a1, a7, a4, a5, a3, v13, a6);
}

void re::RenderGraphAREmitter::registerProviders(re::RenderGraphAREmitter *this, re::RenderGraphManager *a2, AssetService *a3)
{
  re::RealityEmitterBase::registerCommonProviders(this, a2, a3);
  (*(a3->var0 + 1))(&v113, a3, "engine:BuiltinRenderGraphResources/Common/depthClear.rematerial");
  v6 = *(this + 152);
  *(this + 152) = v113;
  v113 = v6;
  v7 = *(this + 21);
  *(this + 21) = v114;
  v114 = v7;
  re::AssetHandle::~AssetHandle(&v113);
  re::AssetHandle::loadAsync((this + 152));
  (*(a3->var0 + 1))(v112, a3, "engine:default.metallib");
  re::AssetHandle::loadAsync(v112);
  v9 = *(this + 98);
  if (v9)
  {
    v10 = atomic_load((v9 + 896));
    if (v10 != 2)
    {
      re::AssetHandle::loadNow(*(this + 98), 0);
    }

    v11 = *(this + 98);
    if (v11)
    {
      v12 = atomic_load((v11 + 896));
      if (v12 == 2 && !re::FontID::isValid((this + 1248)))
      {
        v13 = *(this + 98);
        if (v13)
        {
          v14 = atomic_load((v13 + 896));
          if (v14 == 2)
          {
            ++*(*(this + 98) + 276);
            v15 = re::AssetHandle::loadedAsset<re::RenderGraphAsset>((this + 776));
            if (v15)
            {
              re::RenderGraphManager::addProviderInternal(a2, "Camera", (v15 + 8), 0, 0, &v113);
              v16 = re::StringID::operator=((this + 1248), &v113);
              *(this + 158) = v114;
              if (v113)
              {
                if (v113)
                {
                }
              }
            }
          }
        }
      }
    }
  }

  v17 = *(this + 101);
  if (v17)
  {
    v18 = atomic_load((v17 + 896));
    if (v18 != 2)
    {
      re::AssetHandle::loadNow(*(this + 101), 0);
    }

    v19 = *(this + 101);
    if (v19)
    {
      v20 = atomic_load((v19 + 896));
      if (v20 == 2 && !re::FontID::isValid((this + 1416)))
      {
        v21 = *(this + 101);
        if (v21)
        {
          v22 = atomic_load((v21 + 896));
          if (v22 == 2)
          {
            ++*(*(this + 101) + 276);
            v23 = re::AssetHandle::loadedAsset<re::RenderGraphAsset>((this + 800));
            if (v23)
            {
              re::RenderGraphManager::addProviderInternal(a2, "SingleGraphShadows", (v23 + 8), 0, 0, &v113);
              v24 = re::StringID::operator=((this + 1416), &v113);
              *(this + 179) = v114;
              if (v113)
              {
                if (v113)
                {
                }
              }
            }
          }
        }
      }
    }
  }

  v25 = (this + 1224);
  v26 = *(this + 154);
  if (!v26 || (v27 = atomic_load((v26 + 896)), v27 != 2))
  {
    (*(a3->var0 + 1))(&v113, a3, "engine:BuiltinRenderGraphResources/Common/filter.rerendergraph");
    v28 = *v25;
    *v25 = v113;
    v113 = v28;
    v29 = *(this + 155);
    *(this + 155) = v114;
    v114 = v29;
    re::AssetHandle::~AssetHandle(&v113);
    re::AssetHandle::loadNow(*(this + 154), 0);
  }

  v30 = *(this + 154);
  if (v30)
  {
    v31 = atomic_load((v30 + 896));
    if (v31 == 2 && !re::FontID::isValid((this + 1440)))
    {
      v32 = *(this + 154);
      if (v32)
      {
        v33 = atomic_load((v32 + 896));
        if (v33 == 2)
        {
          ++*(*(this + 154) + 276);
          v34 = re::AssetHandle::loadedAsset<re::RenderGraphAsset>((this + 1224));
          if (v34)
          {
            re::RenderGraphManager::addProviderInternal(a2, "Filter", (v34 + 8), 0, 0, &v113);
            v35 = re::StringID::operator=((this + 1440), &v113);
            *(this + 182) = v114;
            if (v113)
            {
              if (v113)
              {
              }
            }
          }
        }
      }
    }
  }

  v36 = *(this + 119);
  if (v36)
  {
    v37 = atomic_load((v36 + 896));
    if (v37 != 2)
    {
      re::AssetHandle::loadNow(*(this + 119), 0);
    }

    v38 = *(this + 119);
    if (v38)
    {
      v39 = atomic_load((v38 + 896));
      if (v39 == 2 && !re::FontID::isValid((this + 1296)))
      {
        v40 = *(this + 119);
        if (v40)
        {
          v41 = atomic_load((v40 + 896));
          if (v41 == 2)
          {
            ++*(*(this + 119) + 276);
            v42 = re::AssetHandle::loadedAsset<re::RenderGraphAsset>((this + 944));
            if (v42)
            {
              re::RenderGraphManager::addProviderInternal(a2, "DepthOfField", (v42 + 8), 0, 0, &v113);
              v43 = re::StringID::operator=((this + 1296), &v113);
              *(this + 164) = v114;
              if (v113)
              {
                if (v113)
                {
                }
              }
            }
          }
        }
      }
    }
  }

  v44 = *(this + 122);
  if (v44)
  {
    v45 = atomic_load((v44 + 896));
    if (v45 != 2)
    {
      re::AssetHandle::loadNow(*(this + 122), 0);
    }

    v46 = *(this + 122);
    if (v46)
    {
      v47 = atomic_load((v46 + 896));
      if (v47 == 2 && !re::FontID::isValid((this + 1320)))
      {
        v48 = *(this + 122);
        if (v48)
        {
          v49 = atomic_load((v48 + 896));
          if (v49 == 2)
          {
            ++*(*(this + 122) + 276);
            v50 = re::AssetHandle::loadedAsset<re::RenderGraphAsset>((this + 968));
            if (v50)
            {
              re::RenderGraphManager::addProviderInternal(a2, "MotionBlur", (v50 + 8), 0, 0, &v113);
              v51 = re::StringID::operator=((this + 1320), &v113);
              *(this + 167) = v114;
              if (v113)
              {
                if (v113)
                {
                }
              }
            }
          }
        }
      }
    }
  }

  v52 = *(this + 125);
  if (v52)
  {
    v53 = atomic_load((v52 + 896));
    if (v53 != 2)
    {
      re::AssetHandle::loadNow(*(this + 125), 0);
    }
  }

  v54 = *(this + 128);
  if (v54)
  {
    v55 = atomic_load((v54 + 896));
    if (v55 != 2)
    {
      re::AssetHandle::loadNow(*(this + 128), 0);
    }
  }

  v56 = *(this + 131);
  if (v56)
  {
    v57 = atomic_load((v56 + 896));
    if (v57 != 2)
    {
      re::AssetHandle::loadNow(*(this + 131), 0);
    }

    v58 = *(this + 131);
    if (v58)
    {
      v59 = atomic_load((v58 + 896));
      if (v59 == 2 && !re::FontID::isValid((this + 1584)))
      {
        v60 = *(this + 131);
        if (v60)
        {
          v61 = atomic_load((v60 + 896));
          if (v61 == 2)
          {
            ++*(*(this + 131) + 276);
            v62 = re::AssetHandle::loadedAsset<re::RenderGraphAsset>((this + 1040));
            if (v62)
            {
              re::RenderGraphManager::addProviderInternal(a2, "Camera", (v62 + 8), 21, 0, &v113);
              v63 = re::StringID::operator=((this + 1584), &v113);
              *(this + 200) = v114;
              if (v113)
              {
                if (v113)
                {
                }
              }
            }
          }
        }
      }
    }
  }

  v64 = *(this + 116);
  if (v64)
  {
    v65 = atomic_load((v64 + 896));
    if (v65 != 2)
    {
      re::AssetHandle::loadNow(*(this + 116), 0);
    }

    v66 = *(this + 116);
    if (v66)
    {
      v67 = atomic_load((v66 + 896));
      if (v67 == 2 && !re::FontID::isValid((this + 1272)))
      {
        v68 = *(this + 116);
        if (v68)
        {
          v69 = atomic_load((v68 + 896));
          if (v69 == 2)
          {
            ++*(*(this + 116) + 276);
            v70 = re::AssetHandle::loadedAsset<re::RenderGraphAsset>((this + 920));
            if (v70)
            {
              re::RenderGraphManager::addProviderInternal(a2, "PostProcessMultiView", (v70 + 8), 0, 0, &v113);
              v71 = re::StringID::operator=((this + 1272), &v113);
              *(this + 161) = v114;
              if (v113)
              {
                if (v113)
                {
                }
              }
            }
          }
        }
      }
    }
  }

  v72 = *(this + 92);
  if (v72)
  {
    v73 = atomic_load((v72 + 896));
    if (v73 != 2)
    {
      re::AssetHandle::loadNow(*(this + 92), 0);
    }

    v74 = *(this + 92);
    if (v74)
    {
      v75 = atomic_load((v74 + 896));
      if (v75 == 2 && !re::FontID::isValid((this + 1368)))
      {
        v76 = *(this + 92);
        if (v76)
        {
          v77 = atomic_load((v76 + 896));
          if (v77 == 2)
          {
            ++*(*(this + 92) + 276);
            v78 = re::AssetHandle::loadedAsset<re::RenderGraphAsset>((this + 728));
            if (v78)
            {
              re::RenderGraphManager::addProviderInternal(a2, "DepthFeathering", (v78 + 8), 0, 0, &v113);
              v79 = re::StringID::operator=((this + 1368), &v113);
              *(this + 173) = v114;
              if (v113)
              {
                if (v113)
                {
                }
              }
            }
          }
        }
      }
    }
  }

  v80 = *(this + 95);
  if (v80)
  {
    v81 = atomic_load((v80 + 896));
    if (v81 != 2)
    {
      re::AssetHandle::loadNow(*(this + 95), 0);
    }

    v82 = *(this + 95);
    if (v82)
    {
      v83 = atomic_load((v82 + 896));
      if (v83 == 2 && !re::FontID::isValid((this + 1392)))
      {
        v84 = *(this + 95);
        if (v84)
        {
          v85 = atomic_load((v84 + 896));
          if (v85 == 2)
          {
            ++*(*(this + 95) + 276);
            v86 = re::AssetHandle::loadedAsset<re::RenderGraphAsset>((this + 752));
            if (v86)
            {
              re::RenderGraphManager::addProviderInternal(a2, "GuidedFilterOcclusion", (v86 + 8), 0, 0, &v113);
              v87 = re::StringID::operator=((this + 1392), &v113);
              *(this + 176) = v114;
              if (v113)
              {
                if (v113)
                {
                }
              }
            }
          }
        }
      }
    }
  }

  if (*(this + 1212) == 1)
  {
    re::SFBSystemShellBlurProvider::registerProviderCommon(a2, v112, 1, (this + 1560), v8);
  }

  isValid = re::FontID::isValid((this + 1512));
  if (!isValid)
  {
    v89 = re::globalAllocators(isValid);
    v90 = (*(*v89[2] + 32))(v89[2], 88, 8);
    re::DepthStencilCombinerProvider::DepthStencilCombinerProvider(v90, v111);
    if (*&v111[0])
    {
      if (BYTE8(v111[0]))
      {
        (*(**&v111[0] + 40))();
      }

      memset(v111, 0, sizeof(v111));
    }

    re::RenderGraphManager::addProviderInternal(a2, "Camera", v90, -10, 1, &v113);
    v91 = re::StringID::operator=((this + 1512), &v113);
    *(this + 191) = v114;
    if (v113)
    {
      if (v113)
      {
      }
    }
  }

  v92 = re::FontID::isValid((this + 1536));
  if (!v92)
  {
    v93 = re::globalAllocators(v92);
    v94 = (*(*v93[2] + 32))(v93[2], 136, 8);
    re::DepthStencilSplitterProvider::DepthStencilSplitterProvider(v94, v110);
    if (*&v110[0])
    {
      if (BYTE8(v110[0]))
      {
        (*(**&v110[0] + 40))();
      }

      memset(v110, 0, sizeof(v110));
    }

    (*(a3->var0 + 1))(&v113, a3, "engine:BuiltinRenderGraphResources/Common/separateDepth.rematerial");
    v95 = *(v94 + 11);
    *(v94 + 11) = v113;
    v113 = v95;
    v96 = v94[13];
    v94[13] = v114;
    v114 = v96;
    re::AssetHandle::~AssetHandle(&v113);
    re::AssetHandle::loadAsync((v94 + 11));
    re::AssetHandle::operator=(this + 200, v94 + 11);
    (*(a3->var0 + 1))(&v113, a3, "engine:BuiltinRenderGraphResources/Common/separateStencil.rematerial");
    v97 = *(v94 + 7);
    *(v94 + 7) = v113;
    v113 = v97;
    v98 = v94[16];
    v94[16] = v114;
    v114 = v98;
    re::AssetHandle::~AssetHandle(&v113);
    re::AssetHandle::loadAsync((v94 + 14));
    re::AssetHandle::operator=(this + 176, v94 + 14);
    re::RenderGraphManager::addProviderInternal(a2, "Camera", v94, 10, 1, &v113);
    v99 = re::StringID::operator=((this + 1536), &v113);
    *(this + 194) = v114;
    if (v113)
    {
      if (v113)
      {
      }
    }
  }

  v100 = re::FontID::isValid((this + 1464));
  if (!v100)
  {
    v101 = re::globalAllocators(v100);
    v102 = (*(*v101[2] + 32))(v101[2], 112, 8);
    re::VRRUnwarpProvider::VRRUnwarpProvider(v102, v109);
    if (*&v109[0])
    {
      if (BYTE8(v109[0]))
      {
        (*(**&v109[0] + 40))();
      }

      memset(v109, 0, sizeof(v109));
    }

    re::AssetHandle::operator=(v102 + 40, v112);
    re::RenderGraphManager::addProviderInternal(a2, "Camera", v102, 50, 1, &v113);
    v103 = re::StringID::operator=((this + 1464), &v113);
    *(this + 185) = v114;
    if (v113)
    {
      if (v113)
      {
      }
    }
  }

  v104 = re::FontID::isValid((this + 1488));
  if (!v104)
  {
    v105 = re::globalAllocators(v104);
    v106 = (*(*v105[2] + 32))(v105[2], 48, 8);
    re::VFXRenderGraphProvider::VFXRenderGraphProvider(v106, v108);
    if (*&v108[0])
    {
      if (BYTE8(v108[0]))
      {
        (*(**&v108[0] + 40))();
      }

      memset(v108, 0, sizeof(v108));
    }

    re::RenderGraphManager::addProviderInternal(a2, "VFXSimulation", v106, 0, 1, &v113);
    v107 = re::StringID::operator=((this + 1488), &v113);
    *(this + 188) = v114;
    if (v113)
    {
      if (v113)
      {
      }
    }
  }

  re::ARSegmentationEmitterCache::registerRenderGraphProvider(*(this + 222), a2);
  *(this + 152) = a2;
  re::AssetHandle::~AssetHandle(v112);
}

void re::RenderGraphAREmitter::frameSetup(re::RenderGraphAREmitter *this, re::RenderManager *a2)
{
  if (*(this + 1608) != *(this + 1180) || !re::FontID::isValid((this + 1344)))
  {
    if (re::FontID::isValid((this + 1344)))
    {
      v4 = *(a2 + 14);
      if (v4)
      {
        v5 = *(v4 + 296);
      }

      else
      {
        v5 = 0;
      }

      re::StringID::StringID(v18, this + 84);
      v18[2] = *(this + 170);
      v6 = re::RenderGraphManager::removeProvider(v5, v18);
      if (v18[0])
      {
        if (v18[0])
        {
        }
      }

      v18[0] = 0;
      v18[1] = &str_67;
      re::ProviderHandle::invalidate((this + 1344));
    }

    v7 = 992;
    if (*(this + 1180))
    {
      v7 = 1016;
    }

    re::AssetHandle::AssetHandle(v16, (this + v7));
    if (v17)
    {
      re::AssetHandle::loadNow(v17, 0);
      if (v17)
      {
        v8 = atomic_load((v17 + 896));
        if (v8 == 2)
        {
          ++*(v17 + 276);
          v9 = re::AssetHandle::loadedAsset<re::RenderGraphAsset>(v16);
          if (v9)
          {
            v10 = *(a2 + 14);
            v11 = v10 ? *(v10 + 296) : 0;
            re::RenderGraphManager::addProviderInternal(v11, "PostProcessCombined", (v9 + 8), 0, 0, v19);
            v12 = re::StringID::operator=((this + 1344), v19);
            *(this + 170) = v19[2];
            if (v19[0])
            {
              if (v19[0])
              {
              }
            }
          }
        }
      }
    }

    *(this + 1608) = *(this + 1180);
    re::AssetHandle::~AssetHandle(v16);
  }

  if (!*(this + 223))
  {
    v13 = (this + 1784);
    re::ar::DualGuidedFilter::create((a2 + 208), 0, v19);
    if ((this + 1784) != v19)
    {
      v14 = v19[0];
      v19[0] = 0;
      v15 = *v13;
      *v13 = v14;
    }

    v19[0] = [*(a2 + 26) newEvent];
    NS::SharedPtr<MTL::Texture>::operator=(this + 224, v19);
    if (v19[0])
    {
    }

    [*(this + 224) setLabel_];
    *(this + 225) = 0;
  }
}

void re::introspect_RenderGraphAREmitterPostProcessOption(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1C1640, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1C1648, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1648))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1C16B0, "RenderGraphAREmitterPostProcessOption", 4, 4, 1, 1);
      qword_1EE1C16B0 = &unk_1F5D0C658;
      qword_1EE1C16F0 = &re::introspect_RenderGraphAREmitterPostProcessOption(BOOL)::enumTable;
      dword_1EE1C16C0 = 9;
      __cxa_guard_release(&qword_1EE1C1648);
    }

    if (_MergedGlobals_542)
    {
      break;
    }

    _MergedGlobals_542 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1C16B0, a2);
    v41 = 0x495BDF4BE72D0B7ELL;
    v42 = "RenderGraphAREmitterPostProcessOption";
    v45 = 0x607DD0F01DCLL;
    v46 = "uint32_t";
    v4 = v44[0];
    v5 = v44[1];
    if (v45)
    {
      if (v45)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1C16F0;
      v45 = v4;
      v46 = v5;
      re::TypeBuilder::beginEnumType(v44, &v41, 1, 1, &v45);
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
            *&v43.var0 = 2 * v11;
            v43.var1 = v10;
            re::TypeBuilder::addEnumConstant(v44, v15, &v43);
            if (*&v43.var0)
            {
              if (*&v43.var0)
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
              *&v43.var0 = 2 * v20;
              v43.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v44, v24, &v43);
              if (*&v43.var0)
              {
                if (*&v43.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v44, v26);
      xmmword_1EE1C16D0 = v43;
      if (v41)
      {
        if (v41)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v42);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1C1640);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Fastest";
      qword_1EE1C1680 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Standard";
      qword_1EE1C1688 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "High";
      qword_1EE1C1690 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 3;
      *(v36 + 2) = "Best";
      qword_1EE1C1698 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 4;
      *(v38 + 2) = "MultiView";
      qword_1EE1C16A0 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 8) = 5;
      *(v40 + 16) = "Low";
      qword_1EE1C16A8 = v40;
      __cxa_guard_release(&qword_1EE1C1640);
    }
  }
}

void *re::allocInfo_RenderGraphAREmitter(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1650, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1650))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C16F8, "RenderGraphAREmitter");
    __cxa_guard_release(&qword_1EE1C1650);
  }

  return &unk_1EE1C16F8;
}

void re::initInfo_RenderGraphAREmitter(re *this, re::IntrospectionBase *a2)
{
  v140[0] = 0x228CD2A2CBEEF78ALL;
  v140[1] = "RenderGraphAREmitter";
  if (v140[0])
  {
    if (v140[0])
    {
    }
  }

  *(this + 2) = v141;
  if ((atomic_load_explicit(&qword_1EE1C1658, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C1658);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RealityEmitterBase(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RealityEmitterBase";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1C1788 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_AssetHandle(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "shadowMapGraph";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x32000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1C1790 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_AssetHandle(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "projectiveMeshShadowGraph";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x41000000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1C1798 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_AssetHandle(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "depthFeatheringGraph";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x2D800000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1C17A0 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::introspect_AssetHandle(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "guidedFilterOcclusionGraph";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x2F000000005;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1C17A8 = v24;
      v25 = re::introspectionAllocator(v24);
      v27 = re::introspect_AssetHandle(1, v26);
      v28 = (*(*v25 + 32))(v25, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "cameraGraph";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0x30800000006;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE1C17B0 = v28;
      v29 = re::introspectionAllocator(v28);
      v31 = re::introspect_AssetHandle(1, v30);
      v32 = (*(*v29 + 32))(v29, 72, 8);
      *v32 = 1;
      *(v32 + 8) = "postProcessGraphFastest";
      *(v32 + 16) = v31;
      *(v32 + 24) = 0;
      *(v32 + 32) = 0x33800000008;
      *(v32 + 40) = 0;
      *(v32 + 48) = 0;
      *(v32 + 56) = 0;
      *(v32 + 64) = 0;
      qword_1EE1C17B8 = v32;
      v33 = re::introspectionAllocator(v32);
      v35 = re::introspect_AssetHandle(1, v34);
      v36 = (*(*v33 + 32))(v33, 72, 8);
      *v36 = 1;
      *(v36 + 8) = "postProcessGraphStandard";
      *(v36 + 16) = v35;
      *(v36 + 24) = 0;
      *(v36 + 32) = 0x35000000009;
      *(v36 + 40) = 0;
      *(v36 + 48) = 0;
      *(v36 + 56) = 0;
      *(v36 + 64) = 0;
      qword_1EE1C17C0 = v36;
      v37 = re::introspectionAllocator(v36);
      v39 = re::introspect_AssetHandle(1, v38);
      v40 = (*(*v37 + 32))(v37, 72, 8);
      *v40 = 1;
      *(v40 + 8) = "postProcessGraphHigh";
      *(v40 + 16) = v39;
      *(v40 + 24) = 0;
      *(v40 + 32) = 0x3680000000ALL;
      *(v40 + 40) = 0;
      *(v40 + 48) = 0;
      *(v40 + 56) = 0;
      *(v40 + 64) = 0;
      qword_1EE1C17C8 = v40;
      v41 = re::introspectionAllocator(v40);
      v43 = re::introspect_AssetHandle(1, v42);
      v44 = (*(*v41 + 32))(v41, 72, 8);
      *v44 = 1;
      *(v44 + 8) = "postProcessGraphBest";
      *(v44 + 16) = v43;
      *(v44 + 24) = 0;
      *(v44 + 32) = 0x3800000000BLL;
      *(v44 + 40) = 0;
      *(v44 + 48) = 0;
      *(v44 + 56) = 0;
      *(v44 + 64) = 0;
      qword_1EE1C17D0 = v44;
      v45 = re::introspectionAllocator(v44);
      v47 = re::introspect_AssetHandle(1, v46);
      v48 = (*(*v45 + 32))(v45, 72, 8);
      *v48 = 1;
      *(v48 + 8) = "postProcessGraphMultiView";
      *(v48 + 16) = v47;
      *(v48 + 24) = 0;
      *(v48 + 32) = 0x3980000000CLL;
      *(v48 + 40) = 0;
      *(v48 + 48) = 0;
      *(v48 + 56) = 0;
      *(v48 + 64) = 0;
      qword_1EE1C17D8 = v48;
      v49 = re::introspectionAllocator(v48);
      re::introspect_RenderGraphAREmitterPostProcessOption(v49, v50);
      v51 = (*(*v49 + 32))(v49, 72, 8);
      *v51 = 1;
      *(v51 + 8) = "postProcessOption";
      *(v51 + 16) = &qword_1EE1C16B0;
      *(v51 + 24) = 0;
      *(v51 + 32) = 0x4280000000DLL;
      *(v51 + 40) = 0;
      *(v51 + 48) = 0;
      *(v51 + 56) = 0;
      *(v51 + 64) = 0;
      qword_1EE1C17E0 = v51;
      v52 = re::introspectionAllocator(v51);
      v54 = re::introspect_AssetHandle(1, v53);
      v55 = (*(*v52 + 32))(v52, 72, 8);
      *v55 = 1;
      *(v55 + 8) = "postProcessGraphDepthOfField";
      *(v55 + 16) = v54;
      *(v55 + 24) = 0;
      *(v55 + 32) = 0x3B00000000ELL;
      *(v55 + 40) = 0;
      *(v55 + 48) = 0;
      *(v55 + 56) = 0;
      *(v55 + 64) = 0;
      qword_1EE1C17E8 = v55;
      v56 = re::introspectionAllocator(v55);
      v58 = re::introspect_AssetHandle(1, v57);
      v59 = (*(*v56 + 32))(v56, 72, 8);
      *v59 = 1;
      *(v59 + 8) = "postProcessGraphMotionBlur";
      *(v59 + 16) = v58;
      *(v59 + 24) = 0;
      *(v59 + 32) = 0x3C80000000FLL;
      *(v59 + 40) = 0;
      *(v59 + 48) = 0;
      *(v59 + 56) = 0;
      *(v59 + 64) = 0;
      qword_1EE1C17F0 = v59;
      v60 = re::introspectionAllocator(v59);
      v62 = re::introspect_AssetHandle(1, v61);
      v63 = (*(*v60 + 32))(v60, 72, 8);
      *v63 = 1;
      *(v63 + 8) = "postProcessGraphCombined";
      *(v63 + 16) = v62;
      *(v63 + 24) = 0;
      *(v63 + 32) = 0x3E000000010;
      *(v63 + 40) = 0;
      *(v63 + 48) = 0;
      *(v63 + 56) = 0;
      *(v63 + 64) = 0;
      qword_1EE1C17F8 = v63;
      v64 = re::introspectionAllocator(v63);
      v66 = re::introspect_AssetHandle(1, v65);
      v67 = (*(*v64 + 32))(v64, 72, 8);
      *v67 = 1;
      *(v67 + 8) = "postProcessGraphCombinedHDR";
      *(v67 + 16) = v66;
      *(v67 + 24) = 0;
      *(v67 + 32) = 0x3F800000011;
      *(v67 + 40) = 0;
      *(v67 + 48) = 0;
      *(v67 + 56) = 0;
      *(v67 + 64) = 0;
      qword_1EE1C1800 = v67;
      v68 = re::introspectionAllocator(v67);
      v70 = re::introspect_uint32_t(1, v69);
      v71 = (*(*v68 + 32))(v68, 72, 8);
      *v71 = 1;
      *(v71 + 8) = "clusterHorizontalSlices";
      *(v71 + 16) = v70;
      *(v71 + 24) = 0;
      *(v71 + 32) = 0x48000000012;
      *(v71 + 40) = 0;
      *(v71 + 48) = 0;
      *(v71 + 56) = 0;
      *(v71 + 64) = 0;
      qword_1EE1C1808 = v71;
      v72 = re::introspectionAllocator(v71);
      v74 = re::introspect_uint32_t(1, v73);
      v75 = (*(*v72 + 32))(v72, 72, 8);
      *v75 = 1;
      *(v75 + 8) = "clusterVerticalSlices";
      *(v75 + 16) = v74;
      *(v75 + 24) = 0;
      *(v75 + 32) = 0x48400000013;
      *(v75 + 40) = 0;
      *(v75 + 48) = 0;
      *(v75 + 56) = 0;
      *(v75 + 64) = 0;
      qword_1EE1C1810 = v75;
      v76 = re::introspectionAllocator(v75);
      v78 = re::introspect_uint32_t(1, v77);
      v79 = (*(*v76 + 32))(v76, 72, 8);
      *v79 = 1;
      *(v79 + 8) = "clusterDepthSlices";
      *(v79 + 16) = v78;
      *(v79 + 24) = 0;
      *(v79 + 32) = 0x48800000014;
      *(v79 + 40) = 0;
      *(v79 + 48) = 0;
      *(v79 + 56) = 0;
      *(v79 + 64) = 0;
      qword_1EE1C1818 = v79;
      v80 = re::introspectionAllocator(v79);
      v82 = re::introspect_float(1, v81);
      v83 = (*(*v80 + 32))(v80, 72, 8);
      *v83 = 1;
      *(v83 + 8) = "clusterMaxDepthRange";
      *(v83 + 16) = v82;
      *(v83 + 24) = 0;
      *(v83 + 32) = 0x48C00000015;
      *(v83 + 40) = 0;
      *(v83 + 48) = 0;
      *(v83 + 56) = 0;
      *(v83 + 64) = 0;
      qword_1EE1C1820 = v83;
      v84 = re::introspectionAllocator(v83);
      v86 = re::introspect_uint32_t(1, v85);
      v87 = (*(*v84 + 32))(v84, 72, 8);
      *v87 = 1;
      *(v87 + 8) = "clusterMaxIntersectionFactor";
      *(v87 + 16) = v86;
      *(v87 + 24) = 0;
      *(v87 + 32) = 0x49000000016;
      *(v87 + 40) = 0;
      *(v87 + 48) = 0;
      *(v87 + 56) = 0;
      *(v87 + 64) = 0;
      qword_1EE1C1828 = v87;
      v88 = re::introspectionAllocator(v87);
      v90 = re::introspect_BOOL(1, v89);
      v91 = (*(*v88 + 32))(v88, 72, 8);
      *v91 = 1;
      *(v91 + 8) = "enableRayTracedAmbientOcclusion";
      *(v91 + 16) = v90;
      *(v91 + 24) = 0;
      *(v91 + 32) = 0x49400000017;
      *(v91 + 40) = 0;
      *(v91 + 48) = 0;
      *(v91 + 56) = 0;
      *(v91 + 64) = 0;
      qword_1EE1C1830 = v91;
      v92 = re::introspectionAllocator(v91);
      v94 = re::introspect_BOOL(1, v93);
      v95 = (*(*v92 + 32))(v92, 72, 8);
      *v95 = 1;
      *(v95 + 8) = "enableProjectiveShadow";
      *(v95 + 16) = v94;
      *(v95 + 24) = 0;
      *(v95 + 32) = 0x49500000018;
      *(v95 + 40) = 0;
      *(v95 + 48) = 0;
      *(v95 + 56) = 0;
      *(v95 + 64) = 0;
      qword_1EE1C1838 = v95;
      v96 = re::introspectionAllocator(v95);
      v98 = re::introspect_BOOL(1, v97);
      v99 = (*(*v96 + 32))(v96, 72, 8);
      *v99 = 1;
      *(v99 + 8) = "enableDepthOfField";
      *(v99 + 16) = v98;
      *(v99 + 24) = 0;
      *(v99 + 32) = 0x49600000019;
      *(v99 + 40) = 0;
      *(v99 + 48) = 0;
      *(v99 + 56) = 0;
      *(v99 + 64) = 0;
      qword_1EE1C1840 = v99;
      v100 = re::introspectionAllocator(v99);
      v102 = re::introspect_BOOL(1, v101);
      v103 = (*(*v100 + 32))(v100, 72, 8);
      *v103 = 1;
      *(v103 + 8) = "enableMotionBlur";
      *(v103 + 16) = v102;
      *(v103 + 24) = 0;
      *(v103 + 32) = 0x4970000001ALL;
      *(v103 + 40) = 0;
      *(v103 + 48) = 0;
      *(v103 + 56) = 0;
      *(v103 + 64) = 0;
      qword_1EE1C1848 = v103;
      v104 = re::introspectionAllocator(v103);
      v106 = re::introspect_BOOL(1, v105);
      v107 = (*(*v104 + 32))(v104, 72, 8);
      *v107 = 1;
      *(v107 + 8) = "enablePostProcessCombined";
      *(v107 + 16) = v106;
      *(v107 + 24) = 0;
      *(v107 + 32) = 0x4980000001BLL;
      *(v107 + 40) = 0;
      *(v107 + 48) = 0;
      *(v107 + 56) = 0;
      *(v107 + 64) = 0;
      qword_1EE1C1850 = v107;
      v108 = re::introspectionAllocator(v107);
      v110 = re::introspect_BOOL(1, v109);
      v111 = (*(*v108 + 32))(v108, 72, 8);
      *v111 = 1;
      *(v111 + 8) = "enableDepthFeathering";
      *(v111 + 16) = v110;
      *(v111 + 24) = 0;
      *(v111 + 32) = 0x4990000001CLL;
      *(v111 + 40) = 0;
      *(v111 + 48) = 0;
      *(v111 + 56) = 0;
      *(v111 + 64) = 0;
      qword_1EE1C1858 = v111;
      v112 = re::introspectionAllocator(v111);
      v114 = re::introspect_BOOL(1, v113);
      v115 = (*(*v112 + 32))(v112, 72, 8);
      *v115 = 1;
      *(v115 + 8) = "enableHDR";
      *(v115 + 16) = v114;
      *(v115 + 24) = 0;
      *(v115 + 32) = 0x49C0000001DLL;
      *(v115 + 40) = 0;
      *(v115 + 48) = 0;
      *(v115 + 56) = 0;
      *(v115 + 64) = 0;
      qword_1EE1C1860 = v115;
      v116 = re::introspectionAllocator(v115);
      v117 = re::introspect_RayTracedAmbientOcclusionSettings(1);
      v118 = (*(*v116 + 32))(v116, 72, 8);
      *v118 = 1;
      *(v118 + 8) = "rayTracedAmbientOcclusionSettings";
      *(v118 + 16) = v117;
      *(v118 + 24) = 0;
      *(v118 + 32) = 0x4A00000001ELL;
      *(v118 + 40) = 0;
      *(v118 + 48) = 0;
      *(v118 + 56) = 0;
      *(v118 + 64) = 0;
      qword_1EE1C1868 = v118;
      v119 = re::introspectionAllocator(v118);
      v121 = re::introspect_float(1, v120);
      v122 = (*(*v119 + 32))(v119, 72, 8);
      *v122 = 1;
      *(v122 + 8) = "rayTracedShadowIntensity";
      *(v122 + 16) = v121;
      *(v122 + 24) = 0;
      *(v122 + 32) = 0x4B80000001FLL;
      *(v122 + 40) = 0;
      *(v122 + 48) = 0;
      *(v122 + 56) = 0;
      *(v122 + 64) = 0;
      qword_1EE1C1870 = v122;
      v123 = re::introspectionAllocator(v122);
      v125 = re::introspect_AssetHandle(1, v124);
      v126 = (*(*v123 + 32))(v123, 72, 8);
      *v126 = 1;
      *(v126 + 8) = "rayTracedAmbientOcclusionCompositingMaterial";
      *(v126 + 16) = v125;
      *(v126 + 24) = 0;
      *(v126 + 32) = 0x43000000020;
      *(v126 + 40) = 0;
      *(v126 + 48) = 0;
      *(v126 + 56) = 0;
      *(v126 + 64) = 0;
      qword_1EE1C1878 = v126;
      v127 = re::introspectionAllocator(v126);
      v129 = re::introspect_AssetHandle(1, v128);
      v130 = (*(*v127 + 32))(v127, 72, 8);
      *v130 = 1;
      *(v130 + 8) = "rayTracedAmbientOcclusionCompositingMaterialDitherSRGB";
      *(v130 + 16) = v129;
      *(v130 + 24) = 0;
      *(v130 + 32) = 0x44800000021;
      *(v130 + 40) = 0;
      *(v130 + 48) = 0;
      *(v130 + 56) = 0;
      *(v130 + 64) = 0;
      qword_1EE1C1880 = v130;
      v131 = re::introspectionAllocator(v130);
      v133 = re::introspect_AssetHandle(1, v132);
      v134 = (*(*v131 + 32))(v131, 72, 8);
      *v134 = 1;
      *(v134 + 8) = "rayTracedAmbientOcclusionCompositingMaterialDitherLinear";
      *(v134 + 16) = v133;
      *(v134 + 24) = 0;
      *(v134 + 32) = 0x46000000022;
      *(v134 + 40) = 0;
      *(v134 + 48) = 0;
      *(v134 + 56) = 0;
      *(v134 + 64) = 0;
      qword_1EE1C1888 = v134;
      v135 = re::introspectionAllocator(v134);
      v137 = re::introspect_BOOL(1, v136);
      v138 = (*(*v135 + 32))(v135, 72, 8);
      *v138 = 1;
      *(v138 + 8) = "enableBlurProvider";
      *(v138 + 16) = v137;
      *(v138 + 24) = 0;
      *(v138 + 32) = 0x4BC00000024;
      *(v138 + 40) = 0;
      *(v138 + 48) = 0;
      *(v138 + 56) = 0;
      *(v138 + 64) = 0;
      qword_1EE1C1890 = v138;
      __cxa_guard_release(&qword_1EE1C1658);
    }
  }

  *(this + 2) = 0x71000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 34;
  *(this + 8) = &qword_1EE1C1788;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphAREmitter>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphAREmitter>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphAREmitter>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphAREmitter>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v139 = v141;
}

void re::GuidedFilterOcclusionStateData::~GuidedFilterOcclusionStateData(id *this)
{
  v2 = this[13];
  if (v2)
  {

    this[13] = 0;
  }

  v3 = this[12];
  if (v3)
  {

    this[12] = 0;
  }

  v4 = this[11];
  if (v4)
  {

    this[11] = 0;
  }

  v5 = this[10];
  if (v5)
  {

    this[10] = 0;
  }

  v6 = this[9];
  if (v6)
  {

    this[9] = 0;
  }

  v7 = this[8];
  if (v7)
  {

    this[8] = 0;
  }

  v8 = this[7];
  if (v8)
  {

    this[7] = 0;
  }

  v9 = this[6];
  if (v9)
  {

    this[6] = 0;
  }

  v10 = this[5];
  if (v10)
  {

    this[5] = 0;
  }

  v11 = this[4];
  if (v11)
  {

    this[4] = 0;
  }

  v12 = this[3];
  if (v12)
  {

    this[3] = 0;
  }

  v13 = this[2];
  if (v13)
  {

    this[2] = 0;
  }

  v14 = this[1];
  if (v14)
  {

    this[1] = 0;
  }
}

void re::ARSegmentationEmitterCache::~ARSegmentationEmitterCache(re::ARSegmentationEmitterCache *this)
{
  re::StringID::destroyString((this + 64));
  v2 = *(this + 5);
  if (v2)
  {

    *(this + 5) = 0;
  }

  v3 = *(this + 4);
  if (v3)
  {

    *(this + 4) = 0;
  }

  v4 = *(this + 3);
  if (v4)
  {

    *(this + 3) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::StringID::destroyString((this + 64));
  v2 = *(this + 5);
  if (v2)
  {

    *(this + 5) = 0;
  }

  v3 = *(this + 4);
  if (v3)
  {

    *(this + 4) = 0;
  }

  v4 = *(this + 3);
  if (v4)
  {

    *(this + 3) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::supportedColorPixelFormat(id *this, const re::mtl::Device *a2)
{
  if ((atomic_load_explicit(&qword_1EE1C18B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C18B0))
  {
    _MergedGlobals_543 = [*this supportsFamily:1002];
    __cxa_guard_release(&qword_1EE1C18B0);
  }

  if (_MergedGlobals_543)
  {
    return 81;
  }

  else
  {
    return 115;
  }
}

uint64_t re::RenderGraphSFBSystemShellBlurProvider::prepareVCABlur(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = a1;
  v581 = *MEMORY[0x1E69E9840];
  v489 = *(a2 + 392);
  v8 = re::RenderGraphDataStore::tryGet<re::CameraData>(a2 + 32, a1);
  v9 = re::RenderGraphDataStore::tryGet<re::SceneScope>(v6 + 32, v7);
  if ((atomic_load_explicit(&qword_1EE1C18A8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_440;
  }

  while (1)
  {
    v490 = v8;
    if (*(v9 + 16))
    {
      v9 = *(v9 + 24);
    }

    else
    {
      v9 += 17;
    }

    v10 = qword_1EE1C18A0;
    v11 = 0x9E3779B97F4A7C17;
    v12 = strlen(v9);
    if (v12)
    {
      MurmurHash3_x64_128(v9, v12, 0, v558);
      v13 = ((*(&v558[0] + 1) - 0x61C8864680B583E9 + (*&v558[0] << 6) + (*&v558[0] >> 2)) ^ *&v558[0]) - 0x61C8864680B583E9;
    }

    else
    {
      v13 = 0x9E3779B97F4A7C17;
    }

    v491 = re::RenderGraphDataStore::tryGet<re::MeshSortingCollection>(v6 + 32, ((v10 >> 2) + (v10 << 6) + v13) ^ v10);
    v519 = 1;
    memset(v522, 0, 36);
    v520 = 0;
    v521 = 0;
    *&v522[36] = 0x7FFFFFFFLL;
    v516 = &unk_1F5D15788;
    v8 = v489;
    v517 = v489;
    v518 = 0;
    re::DynamicOverflowArray<re::DynamicArray<re::VCARenderData::FrustumId>,4ul>::setCapacity(&v517, 0);
    v519 += 2;
    re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v522, v489, 3);
    if (!v490)
    {
      break;
    }

    v9 = &v490[9];
    if (v490[9].i32[0] == 1)
    {
      break;
    }

    v15 = *(a4 + 20);
    v16 = *(a4 + 24);
    v17 = *(a4 + 28);
    v574 = &unk_1F5D157C8;
    v575 = 0;
    v576 = 0;
    v18 = v490[8].u64[0];
    if (v18)
    {
      v19 = 0;
      v20 = 0;
      v21 = (v490 + 156);
      while (v19 < 2)
      {
        v22 = &v21[-1].f32[2];
        v23 = *v21;
        v21 += 15;
        v24 = vld1q_dup_f32(v22);
        v577[v19] = vdivq_f32(v23, v24);
        v19 = ++v575;
        ++v576;
        if (v18 <= ++v20)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_439;
    }

LABEL_14:
    v508 = v16;
    v511 = v15;
    v25 = "N2re18CameraProjFrustumsE";
    if (("N2re18CameraProjFrustumsE" & 0x8000000000000000) != 0)
    {
      v26 = ("N2re18CameraProjFrustumsE" & 0x7FFFFFFFFFFFFFFFLL);
      v27 = 5381;
      do
      {
        v25 = v27;
        v28 = *v26++;
        v27 = (33 * v27) ^ v28;
      }

      while (v28);
    }

    *&v558[0] = (v7 - 0x61C8864680B583E9 + (v25 << 6) + (v25 >> 2)) ^ v25;
    v29 = (*(**(v6 + 40) + 32))(*(v6 + 40), 64, 16);
    *v29 = &unk_1F5D157C8;
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    v30 = v575;
    memcpy((v29 + 32), v577, 16 * v575);
    *(v29 + 16) = v30;
    buf.columns[0].i64[0] = v29;
    re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v6 + 96, v558, &buf);
    if (a3)
    {
      break;
    }

    *a4 = 0;
    v31 = re::RenderGraphDataStore::tryGet<re::SceneScope>(v6 + 32, v7);
    if (!v31)
    {
      break;
    }

    v32 = v31;
    v479 = v7;
    v549 = 0;
    v548 = 0;
    v550 = 1;
    v552 = 0;
    v551 = 0;
    v33 = *(v6 + 296);
    v485 = a4;
    if (v33)
    {
      v34 = 0;
      v35 = *(v6 + 280);
      while (1)
      {
        v36 = *v35;
        v35 += 18;
        if (v36 < 0)
        {
          break;
        }

        if (v33 == ++v34)
        {
          LODWORD(v34) = *(v6 + 296);
          break;
        }
      }
    }

    else
    {
      LODWORD(v34) = 0;
    }

    v486 = v6;
    if (v34 != v33)
    {
      v37 = *(v6 + 280);
      do
      {
        v38 = *(v37 + 72 * v34 + 64);
        if (v38)
        {
          v39 = (*(*v38 + 480))(v38);
          if (v39)
          {
            v40 = *v39;
            if (*v39)
            {
              v41 = (v32 + 17);
              if (*(v32 + 16))
              {
                v41 = *(v32 + 24);
              }

              if (strcmp(*v39, v41))
              {
                v42 = re::RenderGraphDataStore::tryGet<re::BlurPlanesRenderFrameData>(v486 + 32, "BlurPlanesRenderFrameData", v40);
                *&v558[0] = v42;
                if (v42)
                {
                  if (*(v42 + 16) && ((*(v42 + 81) & 1) != 0 || *(v42 + 80) == 1))
                  {
                    re::DynamicOverflowArray<re::BlurPlanesRenderFrameData const*,4ul>::add(&v548, v558);
                    *(a4 + 1) = 1;
                  }
                }
              }
            }
          }
        }

        v6 = v486;
        if (*(v486 + 296) <= (v34 + 1))
        {
          v43 = v34 + 1;
        }

        else
        {
          v43 = *(v486 + 296);
        }

        v37 = *(v486 + 280);
        while (v43 - 1 != v34)
        {
          LODWORD(v34) = v34 + 1;
          if ((*(v37 + 72 * v34) & 0x80000000) != 0)
          {
            goto LABEL_46;
          }
        }

        LODWORD(v34) = v43;
LABEL_46:
        ;
      }

      while (v34 != v33);
    }

    if (*(v32 + 16))
    {
      v44 = *(v32 + 24);
    }

    else
    {
      v44 = (v32 + 17);
    }

    v7 = v479;
    v45 = re::RenderGraphDataStore::tryGet<re::BlurPlanesRenderFrameData>(v6 + 32, "BlurPlanesRenderFrameData", v44);
    v547 = v45;
    v11 = 0x9E3779B97F4A7C17;
    if (v45 && *(v45 + 16) && ((*(v45 + 81) & 1) != 0 || *(v45 + 80) == 1))
    {
      v45 = re::DynamicOverflowArray<re::BlurPlanesRenderFrameData const*,4ul>::add(&v548, &v547);
    }

    v6 = v549;
    if (!v549)
    {
LABEL_349:
      if (v548 && (v550 & 1) == 0)
      {
        (*(*v548 + 40))();
      }

      v6 = v486;
      break;
    }

    if (v517)
    {
      v46 = v519;
    }

    else
    {
      re::DynamicOverflowArray<re::DynamicArray<re::VCARenderData::FrustumId>,4ul>::setCapacity(&v517, v6);
      v46 = v519 + 2;
      v519 += 2;
    }

    v11 = &v520;
    _ZF = (v46 & 1) == 0;
    v47 = 4;
    if (_ZF)
    {
      v47 = v520;
    }

    if (v47 < v6)
    {
      re::DynamicOverflowArray<re::DynamicArray<re::VCARenderData::FrustumId>,4ul>::setCapacity(&v517, v6);
    }

    v7 = 0;
    v48 = v556;
    a4 = 1;
    do
    {
      *&v558[1] = 0;
      DWORD2(v558[1]) = 0;
      *&v559 = 0;
      v558[0] = v489;
      v49 = re::DynamicArray<re::VCARenderData::FrustumId>::setCapacity(v558, 0);
      if (!v517)
      {
        re::DynamicOverflowArray<re::DynamicArray<re::VCARenderData::FrustumId>,4ul>::setCapacity(&v517, v518 + 1);
        v50 = v519 + 2;
        v519 += 2;
        goto LABEL_78;
      }

      v50 = v519;
      if (v519)
      {
        v51 = v518 + 1;
        if (v518 + 1 < 5)
        {
          goto LABEL_78;
        }

        v53 = 8;
        goto LABEL_74;
      }

      v51 = v518 + 1;
      if (v518 >= v520 && v520 < v51)
      {
        v53 = 2 * v520;
LABEL_74:
        if (v53 <= v51)
        {
          v54 = v51;
        }

        else
        {
          v54 = v53;
        }

        re::DynamicOverflowArray<re::DynamicArray<re::VCARenderData::FrustumId>,4ul>::setCapacity(&v517, v54);
        v50 = v519;
      }

LABEL_78:
      _ZF = (v50 & 1) == 0;
      v55 = v521;
      if (!_ZF)
      {
        v55 = &v520;
      }

      v56 = &v55[5 * v518];
      *v56 = *&v558[0];
      *(v56 + 1) = *(v558 + 8);
      v56[4] = v559;
      *(v56 + 6) = 1;
      v57 = ++v518;
      v58 = v519;
      v519 += 2;
      if (v58)
      {
        v59 = &v520;
      }

      else
      {
        v59 = v521;
      }

      if (v6 <= v7)
      {
        goto LABEL_422;
      }

      v60 = &v59[5 * v57];
      v61 = v552;
      if (v550)
      {
        v61 = &v551;
      }

      v62 = *(v61[v7] + 16);
      if (*(v60 - 4) < v62)
      {
        re::DynamicArray<re::VCARenderData::FrustumId>::setCapacity(v60 - 5, v62);
        v6 = v549;
      }

      ++v7;
    }

    while (v7 < v6);
    v544 = 1;
    v11 = &v545;
    v546 = 0;
    v545 = 0;
    v543 = 0;
    v542 = v489;
    re::DynamicOverflowArray<re::DynamicArray<re::VCARenderData::FrustumId>,4ul>::setCapacity(&v542, v6);
    v544 += 2;
    if (v6)
    {
      v7 = 0;
      a4 = 40;
      do
      {
        *&v558[1] = 0;
        DWORD2(v558[1]) = 0;
        *&v559 = 0;
        v558[0] = v489;
        v65 = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(v558, 0);
        if (v542)
        {
          v66 = v544;
          if ((v544 & 1) == 0)
          {
            v67 = v543 + 1;
            if (v543 < v545 || v545 >= v67)
            {
              goto LABEL_105;
            }

            v69 = 2 * v545;
            goto LABEL_101;
          }

          v67 = v543 + 1;
          if (v543 + 1 >= 5)
          {
            v69 = 8;
LABEL_101:
            if (v69 <= v67)
            {
              v70 = v67;
            }

            else
            {
              v70 = v69;
            }

            re::DynamicOverflowArray<re::DynamicArray<re::VCARenderData::FrustumId>,4ul>::setCapacity(&v542, v70);
            v66 = v544;
          }
        }

        else
        {
          re::DynamicOverflowArray<re::DynamicArray<re::VCARenderData::FrustumId>,4ul>::setCapacity(&v542, v543 + 1);
          v66 = v544 + 2;
          v544 += 2;
        }

LABEL_105:
        _ZF = (v66 & 1) == 0;
        v71 = v546;
        if (!_ZF)
        {
          v71 = &v545;
        }

        v72 = &v71[5 * v543];
        *v72 = *&v558[0];
        *(v72 + 1) = *(v558 + 8);
        v72[4] = v559;
        *(v72 + 6) = 1;
        v73 = ++v543;
        v74 = v544;
        v544 += 2;
        if (v74)
        {
          v75 = &v545;
        }

        else
        {
          v75 = v546;
        }

        if (v6 <= v7)
        {
          goto LABEL_424;
        }

        v76 = &v75[5 * v73];
        v77 = v552;
        if (v550)
        {
          v77 = &v551;
        }

        v78 = *(v77[v7] + 16);
        if (*(v76 - 4) < v78)
        {
          re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(v76 - 5, v78);
          v6 = v549;
        }

        ++v7;
      }

      while (v7 < v6);
    }

    v541 = 256;
    v8 = v490;
    re::buildCullingFrustum(&v490[4], v9, v490[55].u8[10], &v541, v558, v63, v64);
    v538.i64[0] = 0;
    v538.i32[2] = 0;
    re::DynamicInlineArray<re::DynamicInlineArray<re::PlaneF,6ul>,2ul>::copy(&v538, v558);
    if (!v538.i64[0])
    {
      goto LABEL_436;
    }

    if (v539)
    {
      v477 = a3;
      if (v490[3].i64[0])
      {
        v496 = v540;
        v493 = v490[4];
        v80 = v490[8].u64[0];
        a3 = v490;
        v535 = 1;
        v7 = &v536;
        v537 = 0;
        v536 = 0;
        v534 = 0;
        v533 = v489;
        re::DynamicOverflowArray<re::Matrix4x4<float>,2ul>::setCapacity(&v533, v80);
        v535 += 2;
        v81 = v490[8].u64[0];
        v530 = 1;
        v532 = 0;
        v531 = 0;
        v529 = 0;
        v528 = v489;
        re::DynamicOverflowArray<re::Matrix4x4<float>,2ul>::setCapacity(&v528, v81);
        v530 += 2;
        if (v490[8].i64[0])
        {
          a4 = 0;
          LODWORD(v83) = 0;
          *(&v83 + 1) = v508;
          v509 = COERCE_UNSIGNED_INT(v511);
          v512 = v83;
          v11 = 240;
          while (1)
          {
            v84 = v9 + 240 * a4;
            if (*(v84 + 80) == 1)
            {
              *v556 = *(v84 + 96);
              *&v556[16] = *(v84 + 112);
              *&v556[32] = *(v84 + 128);
              v557 = *(v84 + 144);
            }

            else
            {
              re::Projection::cullingProjectionMatrix(v84, v556);
            }

            v85 = v490[3].u64[0];
            if (v85 <= a4)
            {
              goto LABEL_425;
            }

            re::RenderCamera::computeInverseTransform(&v490[2 * a4 + 4], &v524);
            v86 = 0;
            v578[0] = xmmword_1E30714F0;
            v578[1] = xmmword_1E3066660;
            v578[2] = xmmword_1E30476A0;
            v579 = xmmword_1E30474D0;
            do
            {
              buf.columns[v86] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v509, COERCE_FLOAT(*&v578[v86])), v512, *v578[v86].f32, 1), xmmword_1E30476A0, v578[v86], 2), xmmword_1E30474D0, v578[v86], 3);
              ++v86;
            }

            while (v86 != 4);
            v87 = 0;
            v88 = buf.columns[0];
            v89 = buf.columns[1];
            v90 = buf.columns[2];
            v91 = buf.columns[3];
            v578[0] = xmmword_1E3047670;
            v578[1] = xmmword_1E3047680;
            v578[2] = xmmword_1E30476A0;
            v579 = xmmword_1E308C1E0;
            do
            {
              buf.columns[v87] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v88, COERCE_FLOAT(*&v578[v87])), v89, *v578[v87].f32, 1), v90, v578[v87], 2), v91, v578[v87], 3);
              ++v87;
            }

            while (v87 != 4);
            v92 = 0;
            v93 = buf.columns[0];
            v94 = buf.columns[1];
            v95 = buf.columns[2];
            v96 = buf.columns[3];
            v578[0] = *v556;
            v578[1] = *&v556[16];
            v578[2] = *&v556[32];
            v579 = v557;
            do
            {
              buf.columns[v92] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v93, COERCE_FLOAT(*&v578[v92])), v94, *v578[v92].f32, 1), v95, v578[v92], 2), v96, v578[v92], 3);
              ++v92;
            }

            while (v92 != 4);
            v97 = 0;
            v98 = buf.columns[0];
            v99 = buf.columns[1];
            v100 = buf.columns[2];
            v101 = buf.columns[3];
            v578[0] = v524;
            v578[1] = v525;
            v578[2] = v526;
            v579 = v527;
            do
            {
              buf.columns[v97] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v98, COERCE_FLOAT(*&v578[v97])), v99, *v578[v97].f32, 1), v100, v578[v97], 2), v101, v578[v97], 3);
              ++v97;
            }

            while (v97 != 4);
            re::DynamicOverflowArray<re::Matrix4x4<float>,2ul>::add(&v533, &buf);
            a3 = v534;
            if (v534 <= a4)
            {
              break;
            }

            if (v535)
            {
              v102 = &v536;
            }

            else
            {
              v102 = v537;
            }

            buf = __invert_f4(*&v102[8 * a4]);
            re::DynamicOverflowArray<re::Matrix4x4<float>,2ul>::add(&v528, &buf);
            if (v490[8].i64[0] <= ++a4)
            {
              goto LABEL_138;
            }
          }

LABEL_426:
          v553 = 0;
          v555 = 0u;
          memset(&buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v578[0].i32[0] = 136315906;
          *(v578[0].i64 + 4) = "operator[]";
          v578[0].i16[6] = 1024;
          *(&v578[0].i32[3] + 2) = 858;
          v578[1].i16[1] = 2048;
          *(v578[1].i64 + 4) = a4;
          v578[1].i16[6] = 2048;
          *(&v578[1].i64[1] + 6) = a3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_427:
          re::internal::assertLog(4, v387, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
          _os_crash();
          __break(1u);
LABEL_428:
          re::internal::assertLog(6, v445, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
          _os_crash();
          __break(1u);
LABEL_429:
          v524.i64[0] = 0;
          v579 = 0u;
          v580 = 0u;
          memset(v578, 0, sizeof(v578));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v556 = 136315906;
          *&v556[4] = "operator[]";
          *&v556[12] = 1024;
          *&v556[14] = 789;
          *&v556[18] = 2048;
          *&v556[20] = a3;
          *&v556[28] = 2048;
          *&v556[30] = v9;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_430:
          v524.i64[0] = 0;
          v579 = 0u;
          v580 = 0u;
          memset(v578, 0, sizeof(v578));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v556 = 136315906;
          *&v556[4] = "operator[]";
          *&v556[12] = 1024;
          *&v556[14] = 789;
          *&v556[18] = 2048;
          *&v556[20] = v11;
          *&v556[28] = 2048;
          *&v556[30] = v9;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_431:
          *v556 = 0;
          v555 = 0u;
          memset(&buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v578[0].i32[0] = 136315906;
          *(v578[0].i64 + 4) = "operator[]";
          v578[0].i16[6] = 1024;
          *(&v578[0].i32[3] + 2) = 858;
          v578[1].i16[1] = 2048;
          *(v578[1].i64 + 4) = v9;
          v578[1].i16[6] = 2048;
          *(&v578[1].i64[1] + 6) = a3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_432:
          *v556 = 0;
          v555 = 0u;
          memset(&buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v578[0].i32[0] = 136315906;
          *(v578[0].i64 + 4) = "operator[]";
          v578[0].i16[6] = 1024;
          *(&v578[0].i32[3] + 2) = 858;
          v578[1].i16[1] = 2048;
          *(v578[1].i64 + 4) = v9;
          v578[1].i16[6] = 2048;
          *(&v578[1].i64[1] + 6) = a3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_433:
          v524.i64[0] = 0;
          v579 = 0u;
          v580 = 0u;
          memset(v578, 0, sizeof(v578));
          v474 = v338;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v556 = 136315906;
          *&v556[4] = "operator[]";
          *&v556[12] = 1024;
          *&v556[14] = 858;
          *&v556[18] = 2048;
          *&v556[20] = v474;
          *&v556[28] = 2048;
          *&v556[30] = a3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_434;
        }

LABEL_138:
        if (v6)
        {
          v9 = 0;
          v103 = vmulq_f32(v496, v496);
          v103.f32[0] = v103.f32[2] + vaddv_f32(*v103.f32);
          v104 = vrsqrte_f32(v103.u32[0]);
          v105 = vmul_f32(v104, vrsqrts_f32(v103.u32[0], vmul_f32(v104, v104)));
          v106 = vmulq_n_f32(v496, vmul_f32(v105, vrsqrts_f32(v103.u32[0], vmul_f32(v105, v105))).f32[0]);
          v107 = vmulq_f32(v496, v493);
          v510 = vsubq_f32(v493, vmulq_n_f32(v106, (v496.f32[3] + (v107.f32[2] + vaddv_f32(*v107.f32))) / sqrtf(v103.f32[0])));
          v513 = vnegq_f32(v106);
          __asm { FMOV            V0.4S, #1.0 }

          v481 = _Q0;
          v11 = v578;
          a4 = v485;
          v111 = v490;
          v480 = v490 + 4;
          do
          {
            v112 = &v551;
            if ((v550 & 1) == 0)
            {
              v112 = v552;
            }

            a3 = v543;
            if (v543 <= v9)
            {
              goto LABEL_431;
            }

            v113 = v546;
            if (v544)
            {
              v113 = &v545;
            }

            a3 = v518;
            if (v518 <= v9)
            {
              goto LABEL_432;
            }

            v114 = v112[v9];
            v115 = &v520;
            if ((v519 & 1) == 0)
            {
              v115 = v521;
            }

            v116 = *(v114 + 16);
            if (v116)
            {
              v488 = &v113[5 * v9];
              v478 = v9;
              v117 = &v115[5 * v9];
              v9 = *(v114 + 32);
              v487 = v9 + 144 * v116;
              v484 = v117;
              do
              {
                isBoundingBoxInsidePlanesArray = re::isBoundingBoxInsidePlanesArray(v9 + 64, &v538, v9);
                WORD2(v523) = 0;
                if ((isBoundingBoxInsidePlanesArray & 1) != 0 || v111[54].i8[8] != 1) && (*a4 = 1, (*(v9 + 128)))
                {
                  v119 = *(v9 + 64);
                  v120 = *(v9 + 80);
                  v121 = vcgtq_f32(v119, v120);
                  v121.i32[3] = v121.i32[2];
                  v122 = vmaxvq_u32(v121);
                  v123 = vaddq_f32(v119, v120);
                  v120.i64[0] = 0x3F0000003F000000;
                  v120.i64[1] = 0x3F0000003F000000;
                  v124 = vmulq_f32(v123, v120);
                  if (v122 >= 0)
                  {
                    v125 = v124.i64[1];
                  }

                  else
                  {
                    v125 = 0;
                  }

                  if (v122 >= 0)
                  {
                    v126 = v124.i64[0];
                  }

                  else
                  {
                    v126 = 0;
                  }

                  v482 = v126;
                  v483 = v125;
                  if (v111[8].i64[0])
                  {
                    v48 = 0;
                    v500 = 0u;
                    v501 = 0u;
                    v6 = v534;
                    v497 = 0u;
                    v498 = 0u;
                    v127 = v481;
                    v128 = 0uLL;
                    while (1)
                    {
                      if (v6 <= v48)
                      {
                        *v556 = 0;
                        v555 = 0u;
                        memset(&buf, 0, sizeof(buf));
                        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        v578[0].i32[0] = 136315906;
                        *(v578[0].i64 + 4) = "operator[]";
                        v578[0].i16[6] = 1024;
                        *(&v578[0].i32[3] + 2) = 858;
                        v578[1].i16[1] = 2048;
                        *(v578[1].i64 + 4) = v48;
                        v578[1].i16[6] = 2048;
                        *(&v578[1].i64[1] + 6) = v6;
                        _os_log_send_and_compose_impl();
                        _os_crash_msg();
                        __break(1u);
LABEL_417:
                        re::internal::assertLog(6, v139, v143, v141, v142, v144, v145, v140, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v48, v146);
                        _os_crash();
                        __break(1u);
LABEL_418:
                        v553 = 0;
                        v555 = 0u;
                        memset(&buf, 0, sizeof(buf));
                        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        *v556 = 136315906;
                        *&v556[4] = "operator[]";
                        *&v556[12] = 1024;
                        *&v556[14] = 858;
                        *&v556[18] = 2048;
                        *&v556[20] = v48;
                        *&v556[28] = 2048;
                        *&v556[30] = v6;
                        _os_log_send_and_compose_impl();
                        _os_crash_msg();
                        __break(1u);
LABEL_419:
                        v524.i64[0] = 0;
                        v579 = 0u;
                        v580 = 0u;
                        memset(v578, 0, sizeof(v578));
                        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        *v556 = 136315906;
                        *&v556[4] = "operator[]";
                        *&v556[12] = 1024;
                        *&v556[14] = 797;
                        *&v556[18] = 2048;
                        *&v556[20] = a3;
                        *&v556[28] = 2048;
                        *&v556[30] = v48;
                        _os_log_send_and_compose_impl();
                        _os_crash_msg();
                        __break(1u);
LABEL_420:
                        v553 = 0;
                        v555 = 0u;
                        memset(&buf, 0, sizeof(buf));
                        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        *v556 = 136315906;
                        *&v556[4] = "operator[]";
                        *&v556[12] = 1024;
                        *&v556[14] = 858;
                        *&v556[18] = 2048;
                        *&v556[20] = v48;
                        *&v556[28] = 2048;
                        *&v556[30] = a3;
                        _os_log_send_and_compose_impl();
                        _os_crash_msg();
                        __break(1u);
LABEL_421:
                        re::internal::assertLog(6, v200, *v207.columns[0].i64, *v207.columns[1].i64, *v207.columns[2].i64, *v207.columns[3].i64, *v203.i64, *v204.i64, *v202.i64, *v201.i64, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
                        _os_crash();
                        __break(1u);
LABEL_422:
                        v538.i64[0] = 0;
                        v561 = 0u;
                        v560 = 0u;
                        v559 = 0u;
                        memset(v558, 0, sizeof(v558));
                        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        buf.columns[0].i32[0] = 136315906;
                        *(buf.columns[0].i64 + 4) = "operator[]";
                        buf.columns[0].i16[6] = 1024;
                        *(&buf.columns[0].i32[3] + 2) = 858;
                        buf.columns[1].i16[1] = 2048;
                        *(buf.columns[1].i64 + 4) = v7;
                        buf.columns[1].i16[6] = 2048;
                        *(&buf.columns[1].i64[1] + 6) = v6;
                        _os_log_send_and_compose_impl();
                        _os_crash_msg();
                        __break(1u);
LABEL_423:
                        v524.i64[0] = 0;
                        v579 = 0u;
                        v580 = 0u;
                        memset(v578, 0, sizeof(v578));
                        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        *v556 = 136315906;
                        *&v556[4] = "operator[]";
                        *&v556[12] = 1024;
                        *&v556[14] = 789;
                        *&v556[18] = 2048;
                        *&v556[20] = v48;
                        *&v556[28] = 2048;
                        *&v556[30] = a3;
                        _os_log_send_and_compose_impl();
                        _os_crash_msg();
                        __break(1u);
LABEL_424:
                        v538.i64[0] = 0;
                        v561 = 0u;
                        v560 = 0u;
                        v559 = 0u;
                        memset(v558, 0, sizeof(v558));
                        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        buf.columns[0].i32[0] = 136315906;
                        *(buf.columns[0].i64 + 4) = "operator[]";
                        buf.columns[0].i16[6] = 1024;
                        *(&buf.columns[0].i32[3] + 2) = 858;
                        buf.columns[1].i16[1] = 2048;
                        *(buf.columns[1].i64 + 4) = v7;
                        buf.columns[1].i16[6] = 2048;
                        *(&buf.columns[1].i64[1] + 6) = v6;
                        _os_log_send_and_compose_impl();
                        _os_crash_msg();
                        __break(1u);
LABEL_425:
                        re::internal::assertLog(6, v82, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, a4, v85);
                        _os_crash();
                        __break(1u);
                        goto LABEL_426;
                      }

                      v502 = v127;
                      v504 = v128;
                      v129 = 0;
                      v130 = v537;
                      if (v535)
                      {
                        v130 = &v536;
                      }

                      v131 = &v130[8 * v48];
                      v132 = *v131;
                      v133 = v131[1];
                      v134 = v131[2];
                      v135 = v131[3];
                      v136 = *(v9 + 16);
                      v137 = *(v9 + 32);
                      v138 = *(v9 + 48);
                      v578[0] = *v9;
                      v578[1] = v136;
                      v578[2] = v137;
                      v579 = v138;
                      do
                      {
                        buf.columns[v129] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v132, COERCE_FLOAT(*&v578[v129])), v133, *v578[v129].f32, 1), v134, v578[v129], 2), v135, v578[v129], 3);
                        ++v129;
                      }

                      while (v129 != 4);
                      v578[0] = buf.columns[0];
                      v578[1] = buf.columns[1];
                      v578[2] = buf.columns[2];
                      v579 = buf.columns[3];
                      re::AABB::transform((v9 + 64), v578, &v524);
                      LODWORD(v142) = v524.i32[1];
                      LODWORD(v141) = v524.i32[0];
                      LODWORD(v143) = v524.i32[2];
                      LODWORD(v145) = v525.i32[1];
                      LODWORD(v144) = v525.i32[0];
                      if (v48 || v524.f32[2] >= 0.0 || (LODWORD(v140) = v525.i32[2], v525.f32[2] <= 0.0))
                      {
                        v146 = v111[3].u64[0];
                        v128 = v504;
                        if (v146 <= v48)
                        {
                          goto LABEL_417;
                        }

                        a3 = v529;
                        if (v529 <= v48)
                        {
                          goto LABEL_420;
                        }

                        v147 = v17 + v525.f32[1];
                        v148 = v524.f32[1] - v17;
                        v149 = v480[2 * v48];
                        v150 = v532;
                        if (v530)
                        {
                          v150 = &v531;
                        }

                        v151 = &v150[8 * v48];
                        v152 = v151[1];
                        v153 = v151[2];
                        v154 = v151[3];
                        v155 = vmulq_n_f32(*v151, v17 + v525.f32[0]);
                        v156 = vaddq_f32(v154, vmlaq_n_f32(vmlaq_n_f32(v155, v152, v148), v153, v524.f32[2]));
                        v157 = vdivq_f32(v156, vdupq_laneq_s32(v156, 3));
                        v158 = vmulq_n_f32(*v151, v524.f32[0] - v17);
                        v159 = vaddq_f32(v154, vmlaq_n_f32(vmlaq_n_f32(v158, v152, v148), v153, v524.f32[2]));
                        v160 = vdivq_f32(v159, vdupq_laneq_s32(v159, 3));
                        v161 = vaddq_f32(v154, vmlaq_n_f32(vmlaq_n_f32(v155, v152, v147), v153, v524.f32[2]));
                        v162 = vdivq_f32(v161, vdupq_laneq_s32(v161, 3));
                        v163 = vaddq_f32(v154, vmlaq_n_f32(vmlaq_n_f32(v158, v152, v147), v153, v524.f32[2]));
                        v164 = vdivq_f32(v163, vdupq_laneq_s32(v163, 3));
                        v165 = vsubq_f32(v157, v149);
                        v166 = vsubq_f32(v162, v157);
                        v167 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v166, v166), v166, 0xCuLL), vnegq_f32(v165)), v166, vextq_s8(vuzp1q_s32(v165, v165), v165, 0xCuLL));
                        v168 = vextq_s8(vuzp1q_s32(v167, v167), v167, 0xCuLL);
                        v169 = vmulq_f32(v149, v168);
                        v161.f32[0] = -(v169.f32[2] + vaddv_f32(*v169.f32));
                        v170 = v168;
                        v170.i32[3] = v161.i32[0];
                        v171 = vsubq_f32(v164, v149);
                        v172 = vsubq_f32(v160, v164);
                        v173 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v172, v172), v172, 0xCuLL), vnegq_f32(v171)), v172, vextq_s8(vuzp1q_s32(v171, v171), v171, 0xCuLL));
                        v174 = vextq_s8(vuzp1q_s32(v173, v173), v173, 0xCuLL);
                        v175 = vmulq_f32(v149, v174);
                        v153.f32[0] = -(v175.f32[2] + vaddv_f32(*v175.f32));
                        v176 = v174;
                        v176.i32[3] = v153.i32[0];
                        if (v48)
                        {
                          v177 = vmulq_f32(v504, v504);
                          *&v178 = v177.f32[2] + vaddv_f32(*v177.f32);
                          *v177.f32 = vrsqrte_f32(v178);
                          *v177.f32 = vmul_f32(*v177.f32, vrsqrts_f32(v178, vmul_f32(*v177.f32, *v177.f32)));
                          v179 = vmulq_n_f32(v504, vmul_f32(*v177.f32, vrsqrts_f32(v178, vmul_f32(*v177.f32, *v177.f32))).f32[0]);
                          v180 = vmulq_f32(v501, v501);
                          *&v181 = v180.f32[2] + vaddv_f32(*v180.f32);
                          *v180.f32 = vrsqrte_f32(v181);
                          *v180.f32 = vmul_f32(*v180.f32, vrsqrts_f32(v181, vmul_f32(*v180.f32, *v180.f32)));
                          v182 = vmulq_f32(v179, vmulq_n_f32(v501, vmul_f32(*v180.f32, vrsqrts_f32(v181, vmul_f32(*v180.f32, *v180.f32))).f32[0]));
                          v182.f32[0] = v182.f32[2] + vaddv_f32(*v182.f32);
                          v183 = vmulq_f32(v176, v176);
                          *&v184 = v183.f32[2] + vaddv_f32(*v183.f32);
                          *v183.f32 = vrsqrte_f32(v184);
                          *v183.f32 = vmul_f32(*v183.f32, vrsqrts_f32(v184, vmul_f32(*v183.f32, *v183.f32)));
                          v185 = vmulq_f32(v179, vmulq_n_f32(v174, vmul_f32(*v183.f32, vrsqrts_f32(v184, vmul_f32(*v183.f32, *v183.f32))).f32[0]));
                          v185.f32[0] = v185.f32[2] + vaddv_f32(*v185.f32);
                          v501 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v185, v182), 0), v176, v501);
                          v186 = vmulq_f32(v500, v500);
                          v182.f32[0] = v186.f32[2] + vaddv_f32(*v186.f32);
                          *v186.f32 = vrsqrte_f32(v182.u32[0]);
                          *v186.f32 = vmul_f32(*v186.f32, vrsqrts_f32(v182.u32[0], vmul_f32(*v186.f32, *v186.f32)));
                          v187 = vmulq_f32(v179, vmulq_n_f32(v500, vmul_f32(*v186.f32, vrsqrts_f32(v182.u32[0], vmul_f32(*v186.f32, *v186.f32))).f32[0]));
                          v188 = vmulq_f32(v170, v170);
                          v185.f32[0] = v188.f32[2] + vaddv_f32(*v188.f32);
                          *v188.f32 = vrsqrte_f32(v185.u32[0]);
                          *v188.f32 = vmul_f32(*v188.f32, vrsqrts_f32(v185.u32[0], vmul_f32(*v188.f32, *v188.f32)));
                          v189 = vmulq_f32(v179, vmulq_n_f32(v168, vmul_f32(*v188.f32, vrsqrts_f32(v185.u32[0], vmul_f32(*v188.f32, *v188.f32))).f32[0]));
                          if ((v189.f32[2] + vaddv_f32(*v189.f32)) > (v187.f32[2] + vaddv_f32(*v187.f32)))
                          {
                            v500 = v170;
                          }

                          goto LABEL_199;
                        }

                        v190 = vsubq_f32(v162, v149);
                        v191 = vsubq_f32(v164, v162);
                        v192 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v191, v191), v191, 0xCuLL), vnegq_f32(v190)), v191, vextq_s8(vuzp1q_s32(v190, v190), v190, 0xCuLL));
                        v193 = vextq_s8(vuzp1q_s32(v192, v192), v192, 0xCuLL);
                        v194 = vmulq_f32(v149, v193);
                        v193.f32[3] = -(v194.f32[2] + vaddv_f32(*v194.f32));
                        v195 = vsubq_f32(v160, v149);
                        v196 = vsubq_f32(v157, v160);
                        v197 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v196, v196), v196, 0xCuLL), vnegq_f32(v195)), v196, vextq_s8(vuzp1q_s32(v195, v195), v195, 0xCuLL));
                        v198 = vextq_s8(vuzp1q_s32(v197, v197), v197, 0xCuLL);
                        v505 = *v480;
                        v199 = vmulq_f32(v149, v198);
                        v198.f32[3] = -(v199.f32[2] + vaddv_f32(*v199.f32));
                        v497 = v198;
                        v498 = v193;
                        v500 = v170;
                        v501 = v176;
                      }

                      else
                      {
                        *(a4 + 1) = 1;
                        v146 = v111[3].u64[0];
                        if (!v146)
                        {
                          goto LABEL_417;
                        }

                        v505 = *v480;
                        v498 = 0u;
                        v500 = 0u;
                        v501 = 0u;
                        v497 = 0u;
                      }

                      v582 = __invert_f4(*v9);
                      v201 = v582.columns[0];
                      v202 = v582.columns[1];
                      v203 = v582.columns[2];
                      v204 = v582.columns[3];
                      v582.columns[1] = *(v9 + 64);
                      v582.columns[0] = *(v9 + 80);
                      v205 = vsubq_f32(v582.columns[0], v582.columns[1]);
                      buf.columns[0] = v205;
                      v582.columns[0] = vaddq_f32(v582.columns[0], v582.columns[1]);
                      v582.columns[1].i64[0] = 0x3F0000003F000000;
                      v582.columns[1].i64[1] = 0x3F0000003F000000;
                      v206 = vmulq_f32(v582.columns[0], v582.columns[1]);
                      v207 = *v9;
                      if (*(v9 + 104) == 5)
                      {
                        v208 = *(v9 + 112);
                      }

                      else
                      {
                        v209 = vaddq_f32(v207.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v207.columns[0], v206.f32[0]), v207.columns[1], *v206.f32, 1), v207.columns[2], v206, 2));
                        v208 = vdivq_f32(v209, vdupq_laneq_s32(v209, 3));
                      }

                      v210 = 2;
                      if (v205.f32[1] <= v205.f32[2])
                      {
                        v210 = 1;
                      }

                      v211 = v205.f32[0] > v205.f32[2] || v205.f32[0] > v205.f32[1];
                      if (!v211)
                      {
                        v210 = 0;
                      }

                      if (*(&buf | (4 * v210)) >= 0.03)
                      {
                        if (!v111[3].i64[0])
                        {
                          goto LABEL_421;
                        }

                        v216 = v490[5].f32[0];
                        v217 = v490[5].f32[1];
                        v218 = v490[5].f32[2];
                        v201.i32[0] = v490[5].i32[3];
                        v219 = (v216 + v216) * v201.f32[0];
                        v201.f32[0] = ((v216 + v216) * v218) + ((v217 + v217) * v201.f32[0]);
                        v492 = v201.f32[0];
                        v494 = ((v217 + v217) * v218) - v219;
                        v495 = 1.0 - (((v216 + v216) * v216) + ((v217 + v217) * v217));
                        v201.f32[1] = v494;
                        v201.f32[2] = v495;
                        v506 = v201;
                        v583 = __invert_f4(v207);
                        v128 = v506;
                        v220 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v583.columns[0], v492), v583.columns[1], v494), v583.columns[2], v495);
                        v221 = 80;
                        if (*v220.i32 < 0.0)
                        {
                          v221 = 64;
                        }

                        v222 = vcltz_f32(*&vextq_s8(v220, v220, 4uLL));
                        v223.i64[0] = v222.i32[0];
                        v223.i64[1] = v222.i32[1];
                        v224 = vbslq_s8(v223, xmmword_1E3108BA0, xmmword_1E3108B90);
                        v225 = vaddq_f32(*(v9 + 48), vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*v9, *(v9 + v221)), *(v9 + 16), *(v9 + v224.i64[0])), *(v9 + 32), *(v9 + v224.i64[1])));
                        v215 = vmulq_f32(v506, vdivq_f32(v225, vdupq_laneq_s32(v225, 3)));
                      }

                      else
                      {
                        v212 = vaddq_f32(v204, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v201, v505.f32[0]), v202, *v505.f32, 1), v203, v505, 2));
                        v213 = xmmword_1E3108C90[v210];
                        v214 = vmulq_f32(vsubq_f32(vdivq_f32(v212, vdupq_laneq_s32(v212, 3)), v206), v213);
                        if ((v214.f32[2] + vaddv_f32(*v214.f32)) >= 0.0)
                        {
                          v207.columns[3].f32[0] = 1.0;
                        }

                        else
                        {
                          v207.columns[3].f32[0] = -1.0;
                        }

                        v207.columns[3] = vmulq_n_f32(v213, v207.columns[3].f32[0]);
                        v128 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v207.columns[0], v207.columns[3].f32[0]), v207.columns[1], *v207.columns[3].f32, 1), v207.columns[2], v207.columns[3], 2);
                        v215 = vmulq_f32(v208, v128);
                      }

                      v128.f32[3] = -(v215.f32[2] + vaddv_f32(*v215.f32));
LABEL_199:
                      v227 = *(v9 + 64);
                      v226 = *(v9 + 80);
                      v228 = vcgtq_f32(v227, v226);
                      v228.i32[3] = v228.i32[2];
                      v229 = vmaxvq_u32(v228);
                      v230.i64[0] = 0x3F0000003F000000;
                      v230.i64[1] = 0x3F0000003F000000;
                      v231 = vmulq_f32(vaddq_f32(v227, v226), v230);
                      v232 = v231.u32[2];
                      if (v229 >= 0)
                      {
                        v233 = v231.i64[0];
                      }

                      else
                      {
                        v232 = 0;
                        v233 = 0;
                      }

                      v234 = *(v9 + 16);
                      v235 = *(v9 + 32);
                      v236 = *(v9 + 48);
                      v237 = vdupq_n_s32(HIDWORD(v233));
                      v238 = vdupq_n_s32(v232);
                      v239 = vaddq_f32(v236, vmlaq_f32(vmlaq_f32(vmulq_n_f32(*v9, v227.f32[0]), v237, v234), v238, v235));
                      v240 = vdivq_f32(v239, vdupq_laneq_s32(v239, 3));
                      v241 = vaddq_f32(v236, vmlaq_f32(vmlaq_f32(vmulq_n_f32(*v9, v226.f32[0]), v237, v234), v238, v235));
                      v242 = vdivq_f32(v241, vdupq_laneq_s32(v241, 3));
                      v246.i64[1] = v513.i64[1];
                      v243 = vmulq_f32(vsubq_f32(v240, v510), v513);
                      v244 = vmulq_f32(vsubq_f32(v242, v510), v513);
                      *v246.f32 = vadd_f32(vzip1_s32(*v244.i8, *v243.i8), vzip2_s32(*v244.i8, *v243.i8));
                      v245 = vadd_f32(vzip1_s32(*&vextq_s8(v244, v244, 8uLL), *&vextq_s8(v243, v243, 8uLL)), *v246.f32);
                      v246.i32[0] = v245.i32[1];
                      if (v245.f32[1] < 0.0 || v245.f32[0] < 0.0)
                      {
                        v249 = vcltz_f32(v245);
                        v250 = v249.i8[4] & v249.i8[0];
                        v247 = 0uLL;
                        v248 = 0uLL;
                        if ((v250 & 1) == 0)
                        {
                          v248.i64[0] = 0;
                          v248 = vbslq_s8(vdupq_lane_s32(*&vcgeq_f32(v246, v248), 0), v240, v242);
                          v251 = vsubq_f32(v242, v240);
                          v252 = vmulq_f32(v496, v240);
                          v253 = vmulq_f32(v496, v251);
                          v247 = vaddq_f32(v240, vmulq_n_f32(v251, -(v496.f32[3] + (v252.f32[2] + vaddv_f32(*v252.f32))) / (v253.f32[2] + vaddv_f32(*v253.f32))));
                        }
                      }

                      else
                      {
                        v247 = v242;
                        v248 = v240;
                      }

                      v254 = vmulq_n_f32(*v9, *&v233);
                      v255 = vaddq_f32(v236, vmlaq_f32(vmlaq_lane_f32(v254, v234, *v227.f32, 1), v238, v235));
                      v256 = vdivq_f32(v255, vdupq_laneq_s32(v255, 3));
                      v257 = vaddq_f32(v236, vmlaq_f32(vmlaq_lane_f32(v254, v234, *v226.f32, 1), v238, v235));
                      v258 = vdivq_f32(v257, vdupq_laneq_s32(v257, 3));
                      v262.i64[1] = v513.i64[1];
                      v259 = vmulq_f32(vsubq_f32(v256, v510), v513);
                      v260 = vmulq_f32(vsubq_f32(v258, v510), v513);
                      *v262.f32 = vadd_f32(vzip1_s32(*v260.i8, *v259.i8), vzip2_s32(*v260.i8, *v259.i8));
                      v261 = vadd_f32(vzip1_s32(*&vextq_s8(v260, v260, 8uLL), *&vextq_s8(v259, v259, 8uLL)), *v262.f32);
                      v262.i32[0] = v261.i32[1];
                      if (v261.f32[1] < 0.0 || v261.f32[0] < 0.0)
                      {
                        v265 = vcltz_f32(v261);
                        v266 = v265.i8[4] & v265.i8[0];
                        v263 = 0uLL;
                        v264 = 0uLL;
                        if ((v266 & 1) == 0)
                        {
                          v263.i64[0] = 0;
                          v263 = vbslq_s8(vdupq_lane_s32(*&vcgeq_f32(v262, v263), 0), v256, v258);
                          v267 = vsubq_f32(v258, v256);
                          v268 = vmulq_f32(v496, v256);
                          v269 = vmulq_f32(v496, v267);
                          v264 = vaddq_f32(v256, vmulq_n_f32(v267, -(v496.f32[3] + (v268.f32[2] + vaddv_f32(*v268.f32))) / (v269.f32[2] + vaddv_f32(*v269.f32))));
                        }
                      }

                      else
                      {
                        v263 = v256;
                        v264 = v258;
                      }

                      v270 = vmlaq_f32(v254, v237, v234);
                      v271 = vaddq_f32(v236, vmlaq_laneq_f32(v270, v235, v227, 2));
                      v272 = vdivq_f32(v271, vdupq_laneq_s32(v271, 3));
                      v273 = vaddq_f32(v236, vmlaq_laneq_f32(v270, v235, v226, 2));
                      v274 = vdivq_f32(v273, vdupq_laneq_s32(v273, 3));
                      v278.i64[1] = v513.i64[1];
                      v275 = vmulq_f32(vsubq_f32(v272, v510), v513);
                      v276 = vmulq_f32(vsubq_f32(v274, v510), v513);
                      *v278.f32 = vadd_f32(vzip1_s32(*v276.i8, *v275.i8), vzip2_s32(*v276.i8, *v275.i8));
                      v277 = vadd_f32(vzip1_s32(*&vextq_s8(v276, v276, 8uLL), *&vextq_s8(v275, v275, 8uLL)), *v278.f32);
                      v278.i32[0] = v277.i32[1];
                      if (v277.f32[1] < 0.0 || v277.f32[0] < 0.0)
                      {
                        v281 = vcltz_f32(v277);
                        v282 = v281.i8[4] & v281.i8[0];
                        v279 = 0uLL;
                        v280 = 0uLL;
                        if ((v282 & 1) == 0)
                        {
                          v279.i64[0] = 0;
                          v279 = vbslq_s8(vdupq_lane_s32(*&vcgeq_f32(v278, v279), 0), v272, v274);
                          v283 = vsubq_f32(v274, v272);
                          v284 = vmulq_f32(v496, v272);
                          v285 = vmulq_f32(v496, v283);
                          v280 = vaddq_f32(v272, vmulq_n_f32(v283, -(v496.f32[3] + (v284.f32[2] + vaddv_f32(*v284.f32))) / (v285.f32[2] + vaddv_f32(*v285.f32))));
                        }
                      }

                      else
                      {
                        v279 = v272;
                        v280 = v274;
                      }

                      v6 = v534;
                      if (v534 <= v48)
                      {
                        goto LABEL_418;
                      }

                      v286 = v537;
                      if (v535)
                      {
                        v286 = &v536;
                      }

                      v287 = &v286[8 * v48];
                      v289 = *v287;
                      v288 = v287[1];
                      v290 = v287[2];
                      v291 = v287[3];
                      v292 = vaddq_f32(v291, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v287, v248.f32[0]), v288, *v248.f32, 1), v290, v248, 2));
                      v293 = vaddq_f32(v291, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v287, v247.f32[0]), v288, *v247.f32, 1), v290, v247, 2));
                      v294 = vaddq_f32(v291, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v287, v263.f32[0]), v288, *v263.f32, 1), v290, v263, 2));
                      v295 = vaddq_f32(v291, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v287, v264.f32[0]), v288, *v264.f32, 1), v290, v264, 2));
                      v296 = vsubq_f32(vdivq_f32(v293, vdupq_laneq_s32(v293, 3)), vdivq_f32(v292, vdupq_laneq_s32(v292, 3)));
                      v297 = vmulq_f32(v296, v296);
                      v298 = vsubq_f32(vdivq_f32(v295, vdupq_laneq_s32(v295, 3)), vdivq_f32(v294, vdupq_laneq_s32(v294, 3)));
                      v299 = vmulq_f32(v298, v298);
                      v300 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v299, v299, 8uLL), *&vextq_s8(v297, v297, 8uLL)), vadd_f32(vzip1_s32(*v299.i8, *v297.i8), vzip2_s32(*v299.i8, *v297.i8))));
                      if (v300.f32[1] <= 0.1)
                      {
                        __asm { FMOV            V0.4S, #1.0 }
                      }

                      else
                      {
                        __asm { FMOV            V0.4S, #1.0 }

                        _Q0.f32[0] = (v300.f32[1] + (v17 * 2.0)) / v300.f32[1];
                      }

                      if (v300.f32[0] > 0.1)
                      {
                        _Q0.f32[1] = (v300.f32[0] + (v17 * 2.0)) / v300.f32[0];
                      }

                      v302 = vaddq_f32(v291, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v289, v279.f32[0]), v288, *v279.f32, 1), v290, v279, 2));
                      v303 = vaddq_f32(v291, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v289, v280.f32[0]), v288, *v280.f32, 1), v290, v280, 2));
                      v304 = vsubq_f32(vdivq_f32(v303, vdupq_laneq_s32(v303, 3)), vdivq_f32(v302, vdupq_laneq_s32(v302, 3)));
                      v305 = vmulq_f32(v304, v304);
                      v305.f32[0] = sqrtf(v305.f32[2] + vaddv_f32(*v305.f32));
                      if (v305.f32[0] > 0.1)
                      {
                        _Q0.f32[2] = (v305.f32[0] + (v17 * 2.0)) / v305.f32[0];
                      }

                      v306 = vcgt_f32(vdup_lane_s32(*v305.f32, 0), v300);
                      v307 = v306.i8[0];
                      if (v300.f32[1] < v300.f32[0] && (v306.i8[4] & 1) != 0)
                      {
                        v308 = 0;
                        v309 = 1;
                        v310 = 2;
                      }

                      else if (v306.i8[0])
                      {
                        v309 = 0;
                        v310 = 2;
                        v307 = v306.i8[4];
                        v308 = 1;
                      }

                      else
                      {
                        v310 = 0;
                        v307 = v300.f32[0] < v300.f32[1];
                        v309 = 1;
                        v308 = 2;
                      }

                      v515 = _Q0;
                      v311 = *(&v515 | (4 * v309));
                      if ((v307 & 1) == 0)
                      {
                        v311 = *(&v515 | (4 * v310));
                      }

                      *(&v515 & 0xFFFFFFFFFFFFFFF3 | (4 * (v308 & 3))) = v311;
                      v312 = v515;
                      v312.i32[3] = 0;
                      v313 = vminnmq_f32(v312, xmmword_1E3108BB0);
                      v314 = v502;
                      v314.i32[3] = 0;
                      v313.i32[3] = 0;
                      v127 = vmaxnmq_f32(v314, v313);
                      if (v111[8].i64[0] <= ++v48)
                      {
                        goto LABEL_239;
                      }
                    }
                  }

                  v500 = 0u;
                  v501 = 0u;
                  v497 = 0u;
                  v498 = 0u;
                  v127 = v481;
                  v128 = 0uLL;
LABEL_239:
                  v503 = v127;
                  v507 = v128;
                  v315 = v484;
                  LODWORD(v523) = v484[2];
                  re::DynamicArray<re::BlurPlaneTypeData>::add(v488, &v523);
                  v317 = (v9 + 96);
                  v316 = *(v9 + 96);
                  v318 = v491;
                  if (v491 && (v318 = re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v491, (v9 + 96))) != 0)
                  {
                    v319 = *v318;
                    a3 = v318[2];
                  }

                  else
                  {
                    a3 = 0;
                    v319 = 0;
                  }

                  v320 = v507;
                  v321 = v484[1];
                  v322 = v484[2];
                  if (v322 >= v321)
                  {
                    v323 = v322 + 1;
                    if (v321 < v322 + 1)
                    {
                      if (*v484)
                      {
                        v324 = 2 * v321;
                        _ZF = v321 == 0;
                        v325 = 8;
                        if (!_ZF)
                        {
                          v325 = v324;
                        }

                        if (v325 <= v323)
                        {
                          v326 = v323;
                        }

                        else
                        {
                          v326 = v325;
                        }

                        re::DynamicArray<re::VCARenderData::FrustumId>::setCapacity(v484, v326);
                      }

                      else
                      {
                        re::DynamicArray<re::VCARenderData::FrustumId>::setCapacity(v484, v323);
                        ++*(v484 + 6);
                      }

                      v320 = v507;
                    }

                    v315 = v484;
                    v322 = v484[2];
                  }

                  v327 = v315[4] + 112 * v322;
                  *v327 = v316;
                  *(v327 + 8) = v319;
                  *(v327 + 16) = a3;
                  *(v327 + 20) = v578[0].i64[0];
                  *(v327 + 28) = v578[0].i32[2];
                  *(v327 + 32) = v501;
                  *(v327 + 48) = v500;
                  *(v327 + 64) = v497;
                  *(v327 + 80) = v498;
                  *(v327 + 96) = v320;
                  ++v315[2];
                  ++*(v315 + 6);
                  memset(&buf, 0, 24);
                  v328 = 0xBF58476D1CE4E5B9 * (*v317 ^ (*v317 >> 30));
                  re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v522, (v9 + 96), (0x94D049BB133111EBLL * (v328 ^ (v328 >> 27))) ^ ((0x94D049BB133111EBLL * (v328 ^ (v328 >> 27))) >> 31), &buf);
                  if (buf.columns[0].i32[3] == 0x7FFFFFFF)
                  {
                    v329 = re::HashTable<unsigned long long,re::TintContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v522, buf.columns[0].u32[2], buf.columns[0].u64[0]);
                    *(v329 + 8) = *v317;
                    *(v329 + 16) = v503;
                    *(v329 + 32) = v482;
                    *(v329 + 40) = v483;
                    ++*&v522[40];
                  }

                  a4 = v485;
                  v111 = v490;
                }

                else
                {
                  BYTE5(v523) = 1;
                  re::DynamicArray<re::BlurPlaneTypeData>::add(v488, &v523);
                }

                v9 += 144;
              }

              while (v9 != v487);
              v6 = v549;
              v9 = v478;
            }

            ++v9;
          }

          while (v9 < v6);
          v330 = v6 == 0;
        }

        else
        {
          v330 = 1;
          a4 = v485;
        }

        buf.columns[1].i32[0] = 1;
        buf.columns[2] = 0uLL;
        buf.columns[0] = v489;
        re::DynamicOverflowArray<re::AABB,8ul>::setCapacity(&buf, 0);
        buf.columns[1].i32[0] += 2;
        v9 = v490[53].u64[0];
        if (v9)
        {
          v332 = *(v9 + 40);
          if (v332)
          {
            for (i = 0; i != v332; ++i)
            {
              v334 = re::BucketArray<re::DynamicArray<re::CameraView>,4ul>::operator[](v9, i);
              v335 = *(v334 + 16);
              if (v335)
              {
                v336 = v335 << 10;
                v337 = (*(v334 + 32) + 128);
                do
                {
                  re::AABB::transform(v337 - 3, v337, v578);
                  re::DynamicOverflowArray<re::AABB,8ul>::add(&buf, v578);
                  v337 += 64;
                  v336 -= 1024;
                }

                while (v336);
              }
            }
          }
        }

        v7 = v479;
        if (v330)
        {
          goto LABEL_330;
        }

        v338 = 0;
        v6 = 144;
LABEL_272:
        a3 = v518;
        if (v518 <= v338)
        {
          goto LABEL_433;
        }

        v339 = v521;
        if (v519)
        {
          v339 = &v520;
        }

        a3 = v543;
        if (v543 > v338)
        {
          v340 = &v339[5 * v338];
          v341 = v546;
          if (v544)
          {
            v341 = &v545;
          }

          v342 = &v341[5 * v338];
          v343 = v342[2];
          if (!v343)
          {
            goto LABEL_327;
          }

          v514 = v340;
          v344 = 0;
          v7 = 0;
          v345 = v552;
          if (v550)
          {
            v345 = &v551;
          }

          v499 = v338;
          v11 = v345[v338];
          while (1)
          {
            v346 = (v342[4] + 8 * v344);
            if (*(v346 + 5))
            {
              goto LABEL_314;
            }

            v48 = *v346;
            a3 = v514[2];
            if (a3 <= v48)
            {
              goto LABEL_423;
            }

            a3 = 0;
            v9 = 0;
            v347 = (v514[4] + 112 * v48);
            a4 = &v347[2];
            while (1)
            {
              if (v7 == v9)
              {
                goto LABEL_290;
              }

              v48 = *(v11 + 16);
              if (v48 <= a3)
              {
                goto LABEL_419;
              }

              v348 = (*(v11 + 32) + 144 * a3);
              if (v348[8].i8[1] != 1)
              {
                goto LABEL_290;
              }

              v578[0].i64[0] = &v347[2];
              v578[0].i64[1] = 5;
              if (re::isBoundingBoxInsidePlanes(&v348[4], v578, v348))
              {
                break;
              }

              v343 = v342[2];
LABEL_290:
              a3 = (v9 + 1);
              v9 = a3;
              if (v343 <= a3)
              {
                goto LABEL_293;
              }
            }

            *(v346 + 4) = 1;
            *(v485 + 1) = 1;
LABEL_293:
            if ((v346[1] & 1) == 0)
            {
              v349 = *(v11 + 56);
              if (v349)
              {
                v9 = *(v11 + 72);
                v350 = v9 + 144 * v349;
                while (1)
                {
                  if (v491 && (v351 = re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v491, (v9 + 128))) != 0)
                  {
                    v352 = *v351;
                    v353 = *(v351 + 8);
                  }

                  else
                  {
                    v352 = 0;
                    v353 = 0;
                  }

                  v354 = v9 + 112;
                  if (re::isBoundingBoxInsideVCAPlanes(v9, (v9 + 32), v352, v353, (v9 + 96), (v9 + 112), v347 + 6, v331, v347 + 2, 4, v347->i64[1], v347[1].i32[0]))
                  {
                    break;
                  }

                  v9 += 144;
                  if (v354 + 32 == v350)
                  {
                    goto LABEL_304;
                  }
                }

                *(v346 + 4) = 1;
                *(v485 + 1) = 1;
              }

LABEL_304:
              if ((v346[1] & 1) == 0)
              {
                v578[0] = xmmword_1E3047670;
                v578[1] = xmmword_1E3047680;
                v578[2] = xmmword_1E30476A0;
                v579 = xmmword_1E30474D0;
                v9 = (buf.columns[1].i8[0] & 1) != 0 ? &buf.columns[2] : buf.columns[2].i64[1];
                if (buf.columns[0].i64[1])
                {
                  v355 = 32 * buf.columns[0].i64[1];
                  while (1)
                  {
                    v524.i8[0] = 0;
                    *v556 = 0u;
                    if (re::isBoundingBoxInsideVCAPlanes(v9, v578, 0, 0, &v524, v556, v347 + 6, v331, v347 + 2, 4, v347->i64[1], v347[1].i32[0]))
                    {
                      break;
                    }

                    v9 += 32;
                    v355 -= 32;
                    if (!v355)
                    {
                      goto LABEL_314;
                    }
                  }

                  *(v346 + 4) = 1;
                  *(v485 + 1) = 1;
                }
              }
            }

LABEL_314:
            v344 = (v7 + 1);
            v343 = v342[2];
            v7 = v344;
            if (v343 <= v344)
            {
              v7 = v479;
              if (v343)
              {
                v356 = 0;
                v357 = 0;
                v358 = 1;
                a4 = v485;
                v338 = v499;
                v340 = v514;
                do
                {
                  v359 = (v342[4] + 8 * v356);
                  if ((*(v359 + 5) & 1) == 0 && *(v359 + 4) == 1)
                  {
                    if (v358 - 1 != v357)
                    {
                      a3 = *v359;
                      v9 = v514[2];
                      if (v9 <= a3)
                      {
                        goto LABEL_429;
                      }

                      v11 = v357;
                      if (v9 <= v357)
                      {
                        goto LABEL_430;
                      }

                      v360 = v514[4];
                      v361 = (v360 + 112 * a3);
                      v362 = (v360 + 112 * v357);
                      v363 = *v361;
                      v364 = v361[2];
                      v362[1] = v361[1];
                      v362[2] = v364;
                      *v362 = v363;
                      v365 = v361[3];
                      v366 = v361[4];
                      v367 = v361[6];
                      v362[5] = v361[5];
                      v362[6] = v367;
                      v362[3] = v365;
                      v362[4] = v366;
                      v343 = v342[2];
                    }

                    ++v357;
                  }

                  v356 = v358;
                  v211 = v343 > v358++;
                }

                while (v211);
                v343 = v357;
              }

              else
              {
                a4 = v485;
                v338 = v499;
                v340 = v514;
              }

LABEL_327:
              if (v340[2] > v343)
              {
                v340[2] = v343;
                ++*(v340 + 6);
              }

              if (++v338 >= v549)
              {
LABEL_330:
                if (buf.columns[0].i64[0] && (buf.columns[1].i8[0] & 1) == 0)
                {
                  (*(*buf.columns[0].i64[0] + 40))();
                }

                v11 = 0x9E3779B97F4A7C17;
                a3 = v477;
                if (v528 && (v530 & 1) == 0)
                {
                  (*(*v528 + 40))();
                }

                if (v533 && (v535 & 1) == 0)
                {
                  (*(*v533 + 40))();
                }

                if (v538.i64[0])
                {
                  v368 = &v539;
                  v369 = &v538 + 7 * v538.i64[0] + 1;
                  do
                  {
                    v368->i64[0] = 0;
                    ++v368->i32[2];
                    v368 += 7;
                  }

                  while (v368 != v369);
                }

                if (v572)
                {
                  v370 = &v572 + 9 * v572 + 1;
                  v371 = &v573;
                  do
                  {
                    *v371 = 0;
                    ++*(v371 + 2);
                    v371 += 9;
                  }

                  while (v371 != v370);
                }

                if (*&v558[0])
                {
                  v372 = &v558[7 * *&v558[0] + 1];
                  v373 = &v558[1];
                  do
                  {
                    *v373 = 0;
                    ++*(v373 + 2);
                    v373 += 7;
                  }

                  while (v373 != v372);
                }

                re::DynamicOverflowArray<re::DynamicArray<re::BlurPlaneTypeData>,4ul>::deinit(&v542);
                goto LABEL_349;
              }

              goto LABEL_272;
            }
          }
        }

LABEL_434:
        v524.i64[0] = 0;
        v579 = 0u;
        v580 = 0u;
        memset(v578, 0, sizeof(v578));
        v9 = v338;
        v8 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v556 = 136315906;
        *&v556[4] = "operator[]";
        *&v556[12] = 1024;
        *&v556[14] = 858;
        *&v556[18] = 2048;
        *&v556[20] = v9;
        *&v556[28] = 2048;
        *&v556[30] = a3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_435:
        re::internal::assertLog(6, v449, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 1, v455);
        _os_crash();
        __break(1u);
LABEL_436:
        re::internal::assertLog(6, v79, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
        _os_crash();
        __break(1u);
        goto LABEL_437;
      }
    }

    else
    {
LABEL_437:
      re::internal::assertLog(6, v79, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
      _os_crash();
      __break(1u);
    }

    re::internal::assertLog(6, v79, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
    _os_crash();
    __break(1u);
LABEL_439:
    re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
    _os_crash();
    __break(1u);
LABEL_440:
    v475 = __cxa_guard_acquire(&qword_1EE1C18A8);
    if (v475)
    {
      qword_1EE1C18A0 = re::hashString(v475, v476);
      __cxa_guard_release(&qword_1EE1C18A8);
    }
  }

  if (*a4)
  {
    if ((*(a4 + 1) & 1) == 0)
    {
      goto LABEL_392;
    }
  }

  else if ((*(a4 + 1) & 1) == 0)
  {
    v385 = 2512009519;
    goto LABEL_415;
  }

  v374 = "N2re13VCARenderDataE";
  if (("N2re13VCARenderDataE" & 0x8000000000000000) != 0)
  {
    v375 = ("N2re13VCARenderDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v376 = 5381;
    do
    {
      v374 = v376;
      v377 = *v375++;
      v376 = (33 * v376) ^ v377;
    }

    while (v377);
  }

  *&v558[0] = (v7 - 0x61C8864680B583E9 + (v374 << 6) + (v374 >> 2)) ^ v374;
  v378 = (*(**(v6 + 40) + 32))(*(v6 + 40), 240, 8);
  v9 = v378;
  *v378 = &unk_1F5D15788;
  *(v378 + 8) = 0;
  v379 = (v378 + 8);
  *(v378 + 16) = 0;
  *(v378 + 24) = 1;
  *(v378 + 32) = 0;
  v380 = v378 + 32;
  *(v378 + 40) = 0;
  if (v519)
  {
    v386 = v518;
    if (v518)
    {
      *(v378 + 8) = v517;
      re::DynamicOverflowArray<re::DynamicArray<re::VCARenderData::FrustumId>,4ul>::setCapacity((v378 + 8), v386);
      v388 = v521;
      if (v519)
      {
        v388 = &v520;
      }

      v389 = *(v9 + 16);
      v390 = *(v9 + 24);
      v391 = v380;
      if ((v390 & 1) == 0)
      {
        v391 = *(v9 + 40);
      }

      if (v389)
      {
        v392 = 0;
        v393 = 40 * v389;
        do
        {
          if (v388 != v391)
          {
            v394 = v391[v392 / 8];
            v395 = v388[v392 / 8];
            if (v394)
            {
              _ZF = v395 == 0;
            }

            else
            {
              _ZF = 1;
            }

            if (!_ZF && v394 != v395)
            {
              goto LABEL_427;
            }

            v398 = &v391[v392 / 8];
            *v398 = v395;
            v399 = &v388[v392 / 8];
            *v399 = v394;
            v400 = v391[v392 / 8 + 1];
            v398[1] = v388[v392 / 8 + 1];
            v399[1] = v400;
            v401 = v391[v392 / 8 + 2];
            v398[2] = v388[v392 / 8 + 2];
            v399[2] = v401;
            v402 = v391[v392 / 8 + 4];
            v398[4] = v388[v392 / 8 + 4];
            v399[4] = v402;
            *(v399 + 6) = LODWORD(v388[v392 / 8 + 3]) + 1;
            *(v398 + 6) = LODWORD(v391[v392 / 8 + 3]) + 1;
          }

          v392 += 40;
        }

        while (v393 != v392);
        v390 = *(v9 + 24);
      }

      if ((v390 & 1) == 0)
      {
        v380 = *(v9 + 40);
      }

      v403 = *(v9 + 16);
      v404 = &v520;
      if ((v519 & 1) == 0)
      {
        v404 = v521;
      }

      if (v403 != v386)
      {
        v405 = &v404[5 * v386];
        v406 = 5 * v403;
        v407 = &v404[5 * v403];
        v408 = (v380 + 8 * v406 + 32);
        do
        {
          *v408 = 0;
          *(v408 - 3) = 0;
          *(v408 - 2) = 0;
          *(v408 - 4) = 0;
          *(v408 - 2) = 0;
          *(v408 - 4) = *v407;
          *v407 = 0;
          *(v408 - 3) = v407[1];
          v407[1] = 0;
          v409 = *(v408 - 2);
          *(v408 - 2) = v407[2];
          v407[2] = v409;
          v410 = *v408;
          *v408 = v407[4];
          v407[4] = v410;
          ++*(v407 + 6);
          ++*(v408 - 2);
          v407 += 5;
          v408 += 5;
        }

        while (v407 != v405);
      }

      *(v9 + 16) = v386;
      re::DynamicOverflowArray<re::DynamicArray<re::VCARenderData::FrustumId>,4ul>::clear(&v517);
    }

    else
    {
      re::DynamicOverflowArray<re::DynamicArray<re::BlurPlaneTypeData>,4ul>::deinit(v378 + 8);
      *v379 = v517;
    }
  }

  else
  {
    re::DynamicOverflowArray<re::DynamicArray<re::VCARenderData::FrustumId>,4ul>::clear(v378 + 8);
    v381 = *(v9 + 8);
    v382 = *(v9 + 16);
    *(v9 + 8) = v517;
    *(v9 + 16) = v518;
    v517 = v381;
    v518 = v382;
    v383 = *(v9 + 40);
    *(v9 + 40) = v521;
    v521 = v383;
    v519 = v519 & 0xFFFFFFFE | *(v9 + 24) & 1;
    *(v9 + 24) &= ~1u;
    v384 = *(v9 + 32);
    *(v9 + 32) = v520;
    v520 = v384;
  }

  v519 += 2;
  *(v9 + 24) += 2;
  *(v9 + 192) = 0u;
  *(v9 + 208) = 0u;
  *(v9 + 224) = 0;
  *(v9 + 192) = *v522;
  *v522 = 0uLL;
  *(v9 + 208) = *&v522[16];
  *&v522[16] = 0;
  *(v9 + 216) = *&v522[24];
  *(v9 + 224) = *&v522[32];
  *(v9 + 228) = 0x17FFFFFFFLL;
  *(v9 + 228) = *&v522[36];
  *&v522[24] = xmmword_1E3058120;
  buf.columns[0].i64[0] = v9;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v6 + 96, v558, &buf);
LABEL_392:
  v411 = *(*(v6 + 8) + 128);
  if (*(v411 + 16))
  {
    v412 = *v411;
    v413 = v411[1];
    v414 = v411[3];
    *(a4 + 96) = v411[2];
    *(a4 + 112) = v414;
    *(a4 + 64) = v412;
    *(a4 + 80) = v413;
    v415 = v411[4];
    v416 = v411[5];
    v417 = v411[7];
    *(a4 + 160) = v411[6];
    *(a4 + 176) = v417;
    *(a4 + 128) = v415;
    *(a4 + 144) = v416;
    *(v411 + 16) = 0;
  }

  *&v558[0] = &unk_1F5D15808;
  v418 = *(a4 + 80);
  v558[1] = *(a4 + 64);
  v559 = v418;
  v419 = *(a4 + 112);
  v560 = *(a4 + 96);
  v561 = v419;
  v420 = *(a4 + 144);
  v562 = *(a4 + 128);
  v563 = v420;
  v421 = *(a4 + 176);
  v564 = *(a4 + 160);
  v565 = v421;
  v422 = *(a4 + 192);
  v423 = *(a4 + 208);
  v424 = *(a4 + 224);
  v569 = *(a4 + 240);
  v568 = v424;
  v567 = v423;
  v566 = v422;
  v425 = *(a4 + 288);
  v573 = *(a4 + 304);
  v572 = v425;
  v426 = *(a4 + 256);
  v427 = "N2re20WorldToViewCacheDataE";
  v571 = *(a4 + 272);
  v570 = v426;
  if (("N2re20WorldToViewCacheDataE" & 0x8000000000000000) != 0)
  {
    v428 = ("N2re20WorldToViewCacheDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v429 = 5381;
    do
    {
      v427 = v429;
      v430 = *v428++;
      v429 = (33 * v429) ^ v430;
    }

    while (v430);
  }

  buf.columns[0].i64[0] = (v7 - 0x61C8864680B583E9 + (v427 << 6) + (v427 >> 2)) ^ v427;
  v431 = (*(**(v6 + 40) + 32))(*(v6 + 40), 272, 16);
  *v431 = &unk_1F5D15808;
  v432 = v561;
  v434 = v558[1];
  v433 = v559;
  *(v431 + 48) = v560;
  *(v431 + 64) = v432;
  *(v431 + 16) = v434;
  *(v431 + 32) = v433;
  v435 = v565;
  v437 = v562;
  v436 = v563;
  *(v431 + 112) = v564;
  *(v431 + 128) = v435;
  *(v431 + 80) = v437;
  *(v431 + 96) = v436;
  v438 = v569;
  v440 = v566;
  v439 = v567;
  *(v431 + 176) = v568;
  *(v431 + 192) = v438;
  *(v431 + 144) = v440;
  *(v431 + 160) = v439;
  v441 = v573;
  v443 = v570;
  v442 = v571;
  *(v431 + 240) = v572;
  *(v431 + 256) = v441;
  *(v431 + 208) = v443;
  *(v431 + 224) = v442;
  v538.i64[0] = v431;
  v444 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v6 + 96, &buf, &v538);
  v8 = v490;
  if (!v490 || (a3 & 1) != 0)
  {
    goto LABEL_411;
  }

  if (v490[3].i64[0])
  {
    v446 = *(a4 + 80);
    *(a4 + 192) = *(a4 + 64);
    *(a4 + 208) = v446;
    v447 = *(a4 + 112);
    *(a4 + 224) = *(a4 + 96);
    *(a4 + 240) = v447;
    if (!v490[3].i64[0])
    {
      goto LABEL_428;
    }

    re::RenderCamera::computeInverseTransform(v490 + 4, &buf);
    v450 = buf.columns[1];
    v451 = buf.columns[2];
    v452 = buf.columns[3];
    *(a4 + 64) = buf.columns[0];
    *(a4 + 80) = v450;
    *(a4 + 96) = v451;
    *(a4 + 112) = v452;
    if (v490[3].i64[0] < 2uLL)
    {
      if ((atomic_exchange(&unk_1EE1C1899, 1u) & 1) == 0)
      {
        v459 = *re::graphicsLogObjects(v448);
        if (os_log_type_enabled(v459, OS_LOG_TYPE_DEFAULT))
        {
          buf.columns[0].i16[0] = 0;
          v460 = "Blur: Caching WorldToView matrix: Right Camera data not available";
LABEL_410:
          _os_log_impl(&dword_1E1C61000, v459, OS_LOG_TYPE_DEFAULT, v460, &buf, 2u);
        }
      }

      goto LABEL_411;
    }

    v453 = *(a4 + 144);
    *(a4 + 256) = *(a4 + 128);
    *(a4 + 272) = v453;
    v454 = *(a4 + 176);
    *(a4 + 288) = *(a4 + 160);
    *(a4 + 304) = v454;
    v455 = v490[3].u64[0];
    if (v455 > 1)
    {
      re::RenderCamera::computeInverseTransform(v490 + 6, &buf);
      v456 = buf.columns[1];
      v457 = buf.columns[2];
      v458 = buf.columns[3];
      *(a4 + 128) = buf.columns[0];
      *(a4 + 144) = v456;
      *(a4 + 160) = v457;
      *(a4 + 176) = v458;
      goto LABEL_411;
    }

    goto LABEL_435;
  }

  if ((atomic_exchange(byte_1EE1C189A, 1u) & 1) == 0)
  {
    v459 = *re::graphicsLogObjects(v444);
    if (os_log_type_enabled(v459, OS_LOG_TYPE_DEFAULT))
    {
      buf.columns[0].i16[0] = 0;
      v460 = "Blur: Caching WorldToView matrix: Left Camera data not available";
      goto LABEL_410;
    }
  }

LABEL_411:
  if (*(a4 + 1))
  {
    v461 = 0xDFC926A60E076268;
  }

  else
  {
    v461 = 0x7B9CDD2A1D56B4CCLL;
  }

  v462 = 0xBF58476D1CE4E5B9 * (*(a4 + 12) ^ (*(a4 + 12) >> 30));
  v463 = ((v461 << 6) - 0x61C8864680B583E9 + (v461 >> 2) + ((0x94D049BB133111EBLL * (v462 ^ (v462 >> 27))) ^ ((0x94D049BB133111EBLL * (v462 ^ (v462 >> 27))) >> 31))) ^ v461;
  v464 = 0xBF58476D1CE4E5B9 * (*(a4 + 16) ^ (*(a4 + 16) >> 30));
  v465 = (((0x94D049BB133111EBLL * (v464 ^ (v464 >> 27))) ^ ((0x94D049BB133111EBLL * (v464 ^ (v464 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v463 << 6) + (v463 >> 2)) ^ v463;
  v466 = 0xBF58476D1CE4E5B9 * (*(a4 + 20) ^ (*(a4 + 20) >> 30));
  v467 = (((0x94D049BB133111EBLL * (v466 ^ (v466 >> 27))) ^ ((0x94D049BB133111EBLL * (v466 ^ (v466 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v465 << 6) + (v465 >> 2)) ^ v465;
  v468 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(a4 + 24) ^ (*(a4 + 24) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(a4 + 24) ^ (*(a4 + 24) >> 30))) >> 27));
  v469 = ((v468 ^ (v468 >> 31)) - 0x61C8864680B583E9 + (v467 << 6) + (v467 >> 2)) ^ v467;
  v470 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(a4 + 32)) ^ ((0xBF58476D1CE4E5B9 * *(a4 + 32)) >> 27));
  v471 = ((v470 ^ (v470 >> 31)) - 0x61C8864680B583E9 + (v469 << 6) + (v469 >> 2)) ^ v469;
  v472 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(a4 + 33)) ^ ((0xBF58476D1CE4E5B9 * *(a4 + 33)) >> 27));
  v385 = ((v472 ^ (v472 >> 31)) - 0x61C8864680B583E9 + (v471 << 6) + (v471 >> 2)) ^ v471;
LABEL_415:
  re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::deinit(v522);
  re::DynamicOverflowArray<re::DynamicArray<re::BlurPlaneTypeData>,4ul>::deinit(&v517);
  return v385;
}

void re::VCARenderData::~VCARenderData(re::VCARenderData *this)
{
  re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::deinit(this + 24);
  re::DynamicOverflowArray<re::DynamicArray<re::BlurPlaneTypeData>,4ul>::deinit(this + 8);
}

{
  re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::deinit(this + 24);
  re::DynamicOverflowArray<re::DynamicArray<re::BlurPlaneTypeData>,4ul>::deinit(this + 8);

  JUMPOUT(0x1E6906520);
}

void anonymous namespace::createRenderGraphTarget(double *a1, __int128 **a2)
{
  v4 = *a2;
  v6 = (*a2)[1];
  v5 = (*a2)[2];
  v19 = **a2;
  v20 = v6;
  v21 = v5;
  v7 = v4[6];
  v9 = v4[3];
  v8 = v4[4];
  v24 = v4[5];
  v25 = v7;
  v22 = v9;
  v23 = v8;
  v10 = a2[2];
  if (*(a2 + 72) == 1)
  {
    *&v25 = (&a2[10][4 * *v10 - 0x61C8864680B583ELL] + ((*v10 & 0x7FFFFFFFFFFFFFFFuLL) >> 2) - 9) ^ *v10 & 0x7FFFFFFFFFFFFFFFLL;
  }

  re::RenderFrame::createTarget(a2[1], &v19, *(v10 + 1), a1);
  if (*(a2 + 24) == 1)
  {
    v11 = a2[1];
    v17 = a2[4] & 0x7FFFFFFFFFFFFFFFLL;
    re::RenderFrame::inheritLaneProperties(v11, &v17, a1, 0);
  }

  if (*(a2 + 48) == 1)
  {
    DWORD1(v20) = 4;
    LODWORD(v19) = 0;
    re::RenderFrame::createTarget(a2[1], &v19, a2[8], &v17);
    if (*(a2 + 24) == 1)
    {
      v12 = a2[1];
      v16 = a2[4] & 0x7FFFFFFFFFFFFFFFLL;
      re::RenderFrame::inheritLaneProperties(v12, &v16, &v17, 0);
    }

    v13 = a2[1];
    v15[0] = *a1;
    v15[1] = a1[1];
    v14 = v18;
    *(re::RenderGraphResourceDescriptions::targetDescription((v13 + 3672), v15) + 84) = v14;
  }
}

re::RenderGraphNode *re::RenderGraph::addNode<re::SFBSystemShellCreateTextureAliasNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 280, 8);
  v6 = re::RenderGraphNode::RenderGraphNode(v5, a2);
  *v6 = &unk_1F5D10D78;
  *(v6 + 264) = 0;
  *(v6 + 34) = 0;
  v10 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v7;
  *(v5 + 6) = v8;
  return v5;
}

re::AssetHandle *re::BlurManager::getBackdropMaterial(re::AssetHandle *this, uint64_t a2)
{
  v2 = this;
  v5 = *(a2 + 160);
  v3 = a2 + 160;
  v4 = v5;
  if (v5)
  {
    if (!v6)
    {
      std::__throw_bad_any_cast[abi:nn200100]();
    }

    return re::AssetHandle::AssetHandle(v2, v6);
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
  }

  return this;
}

re::RenderGraphComputeNodeBase *re::RenderGraph::addNode<re::SFBSystemShellComputeNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 496, 16);
  v6 = re::RenderGraphComputeNodeBase::RenderGraphComputeNodeBase(v5, a2);
  *v6 = &unk_1F5D10910;
  v10 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v7;
  *(v5 + 6) = v8;
  return v5;
}

re::RenderGraphComputeNodeBase *re::RenderGraph::addNode<re::SFBSystemShellBlurTAANode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 512, 16);
  v6 = re::RenderGraphComputeNodeBase::RenderGraphComputeNodeBase(v5, a2);
  *v6 = &unk_1F5D109D0;
  *(v6 + 496) = 0;
  *(v6 + 500) = 0;
  v10 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v7;
  *(v5 + 6) = v8;
  return v5;
}

re::RenderGraphComputeNodeBase *re::RenderGraph::addNode<re::SFBSystemShellReprojectNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 512, 16);
  v6 = re::RenderGraphComputeNodeBase::RenderGraphComputeNodeBase(v5, a2);
  *v6 = &unk_1F5D10CB8;
  *(v6 + 62) = 0;
  v10 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v7;
  *(v5 + 6) = v8;
  return v5;
}

uint64_t re::RenderGraphSFBSystemShellBlurProvider::prepareFrame(re::RenderGraphSFBSystemShellBlurProvider *this, const char *__s, const char *a3, re::RenderFrame *a4)
{
  v251 = *MEMORY[0x1E69E9840];
  if (!*(this + 112))
  {
    return 0;
  }

  v8 = strlen(__s);
  if (v8)
  {
    MurmurHash3_x64_128(__s, v8, 0, __src);
    v9 = (*&__src[8] - 0x61C8864680B583E9 + (*__src << 6) + (*__src >> 2)) ^ *__src;
  }

  else
  {
    v9 = 0;
  }

  v10 = strlen(a3);
  if (v10)
  {
    MurmurHash3_x64_128(a3, v10, 0, __src);
    v11 = ((*&__src[8] - 0x61C8864680B583E9 + (*__src << 6) + (*__src >> 2)) ^ *__src) - 0x61C8864680B583E9;
  }

  else
  {
    v11 = 0x9E3779B97F4A7C17;
  }

  v12 = ((v9 >> 2) + (v9 << 6) + v11) ^ v9;
  if (*(re::RenderGraphDataStore::get<re::CameraData>(a4 + 32, v12) + 863) != 1)
  {
    return 0;
  }

  v226.columns[0].i64[0] = v12;
  v14 = *(this + 399);
  __asm { FMOV            V8.2S, #1.0 }

  if (v14)
  {
    v19 = this + 1568;
    v20 = re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::tryGet(this + 1568, v12);
    if (v20)
    {
      goto LABEL_54;
    }

    v21 = *(this + 400);
    if (v21)
    {
      v22 = 0;
      v23 = *(this + 198);
      while ((*v23 & 0x80000000) == 0)
      {
        v23 += 88;
        if (v21 == ++v22)
        {
          LODWORD(v22) = *(this + 400);
          break;
        }
      }
    }

    else
    {
      LODWORD(v22) = 0;
    }

    v26 = this + 1568;
  }

  else
  {
    v21 = *(this + 18);
    if (v21)
    {
      v25 = 352 * v21;
      v20 = this + 176;
      while (*(v20 - 2) != v12)
      {
        v20 += 352;
        v25 -= 352;
        if (!v25)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_54;
    }

LABEL_21:
    v19 = this + 160;
    LODWORD(v22) = 352;
    v26 = this + 352 * v21 + 160;
  }

  v27 = *(a4 + 48) & 0xFFFFFFFFFFFFFFFLL;
  while (1)
  {
LABEL_25:
    while (v14)
    {
      if (v21 == v22)
      {
        goto LABEL_53;
      }

      v28 = *(v19 + 2);
      if (*(v28 + 352 * v22 + 64) + 4 < v27)
      {
        v32 = *(v28 + 352 * v22 + 8);
        if (v32)
        {
          v33 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v32 ^ (v32 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v32 ^ (v32 >> 30))) >> 27));
          re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::findEntry<unsigned long long>(__src, this + 1568, v32, v33 ^ (v33 >> 31));
          v34 = *&__src[12];
          if (*&__src[12] != 0x7FFFFFFF)
          {
            v35 = *(this + 198);
            v36 = (v35 + 352 * *&__src[12]);
            v37 = *v36 & 0x7FFFFFFF;
            if (*&__src[16] == 0x7FFFFFFF)
            {
              *(*(this + 197) + 4 * *&__src[8]) = v37;
              v14 = *(this + 399);
            }

            else
            {
              *(v35 + 352 * *&__src[16]) = *(v35 + 352 * *&__src[16]) & 0x80000000 | v37;
            }

            *v36 = *(this + 401);
            *(this + 401) = v34;
            *(this + 399) = v14 - 1;
            ++*(this + 402);
          }
        }

        goto LABEL_53;
      }

      v29 = v22 + 1;
      if (*(v19 + 8) <= (v22 + 1))
      {
        LODWORD(v22) = v22 + 1;
      }

      else
      {
        LODWORD(v22) = *(v19 + 8);
      }

      while (v22 != v29)
      {
        v30 = v29;
        v31 = *(v28 + 352 * v29++);
        if (v31 < 0)
        {
          LODWORD(v22) = v30;
          goto LABEL_25;
        }
      }
    }

    if (v19 == v26)
    {
      goto LABEL_53;
    }

    if (*(v19 + 8) + 4 < v27)
    {
      break;
    }

    v19 += 352;
  }

  if (!*v19)
  {
    goto LABEL_53;
  }

  v38 = *(this + 18);
  if (!v38)
  {
    goto LABEL_53;
  }

  v39 = 0;
  v40 = (this + 160);
  while (*v40 != *v19)
  {
    ++v39;
    v40 += 44;
    if (v38 == v39)
    {
      goto LABEL_53;
    }
  }

  if (v38 <= v39)
  {
LABEL_262:
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "removeAt", 527, v39, v38);
    _os_crash();
    __break(1u);
  }

  v41 = v38 - 1;
  if (v38 - 1 > v39)
  {
    memcpy(v40, this + 352 * v38 - 192, 0x160uLL);
    v41 = *(this + 18) - 1;
  }

  *(this + 18) = v41;
  ++*(this + 38);
LABEL_53:
  *__src = 0x1000000;
  memset(v232, 0, 32);
  *&__src[4] = _D8;
  *&__src[12] = xmmword_1E3108BC0;
  *&__src[28] = 1077516698;
  v42 = *(MEMORY[0x1E69E9B18] + 16);
  *&v232[32] = *MEMORY[0x1E69E9B18];
  *&v232[48] = v42;
  v43 = *(MEMORY[0x1E69E9B18] + 48);
  v45 = *MEMORY[0x1E69E9B18];
  v44 = *(MEMORY[0x1E69E9B18] + 16);
  *&v232[64] = *(MEMORY[0x1E69E9B18] + 32);
  v233 = v43;
  v46 = *MEMORY[0x1E69E9B18];
  v47 = *(MEMORY[0x1E69E9B18] + 16);
  v48 = *(MEMORY[0x1E69E9B18] + 32);
  v237 = *(MEMORY[0x1E69E9B18] + 48);
  v236 = v48;
  v235 = v47;
  v234 = v46;
  v49 = *(MEMORY[0x1E69E9B18] + 32);
  v241 = *(MEMORY[0x1E69E9B18] + 48);
  v240 = v49;
  v50 = *MEMORY[0x1E69E9B18];
  v239 = *(MEMORY[0x1E69E9B18] + 16);
  v238 = v50;
  v245 = *(MEMORY[0x1E69E9B18] + 48);
  v244 = v48;
  v243 = v44;
  v242 = v45;
  v247 = 0;
  v246 = 0;
  v20 = re::SmallHashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,4ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::add(this + 128, &v226, __src, 1);
LABEL_54:
  *(v20 + 6) = *(a4 + 48) & 0xFFFFFFFFFFFFFFFLL;
  v51 = re::RenderGraphDataStore::tryGet<re::SFBSystemShellBlurContext>(a4 + 32, "SFBSystemShellBlurContext", "RenderFrame");
  if ((re::mtl::Device::isPhysicalHardware((*(a4 + 1) + 208)) & 1) == 0)
  {
    *(v20 + 12) = xmmword_1E3108BD0;
  }

  v214 = *(*(a4 + 1) + 96);
  v52 = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(a4 + 32, v12);
  v215 = v51;
  if (!v52 || *(v52 + 64) != 2)
  {
    v57 = 0;
    goto LABEL_62;
  }

  v54 = *(v52 + 16);
  if (v54 <= 1)
  {
    re::internal::assertLog(6, v53, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 1, v54);
    _os_crash();
    __break(1u);
    goto LABEL_262;
  }

  v55 = *(v52 + 52);
  v56 = *(v52 + 36);
  v57 = v55 >= (v56 + *(v52 + 44)) || v56 >= (v55 + *(v52 + 60));
LABEL_62:
  v20[2] = v57;
  v58 = *(*(a4 + 1) + 96);
  if (v58)
  {
    v226.columns[0].i32[0] = 0;
    *__src = 0x1389125D3C064618;
    *&__src[8] = "blur:passthroughTextureWidth";
    v59 = re::DebugSettingsManager::getWithErrorCode<int>(v58, __src, &v226);
    v60 = v59;
    if (__src[0])
    {
      if (__src[0])
      {
      }
    }

    if (!v60)
    {
      v61 = v226.columns[0].i32[0];
      *(v20 + 3) = v226.columns[0].i32[0];
      *(v20 + 4) = v61;
    }

    *__src = 0x441AC35BB1E33358;
    *&__src[8] = "blur:VCATextureWidth";
    v62 = re::DebugSettingsManager::getWithErrorCode<int>(v58, __src, &v226);
    v63 = v62;
    if (__src[0])
    {
      if (__src[0])
      {
      }
    }

    if (!v63)
    {
      v64 = v226.columns[0].i32[0];
      *(v20 + 5) = v226.columns[0].i32[0];
      *(v20 + 6) = v64;
    }

    *v218 = 0;
    *__src = 0xBA9708B410B41FEELL;
    *&__src[8] = "blur:VCABlurExpansion";
    v65 = re::DebugSettingsManager::getWithErrorCode<float>(v58, __src, v218);
    v66 = v65;
    if (__src[0])
    {
      if (__src[0])
      {
      }
    }

    if (!v66)
    {
      *(v20 + 7) = *v218;
    }

    LOBYTE(v225) = 0;
    *__src = 0x339926AA9F3B1226;
    *&__src[8] = "blur:showUnblurredPassthrough";
    v67 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v58, __src, &v225);
    v68 = v67;
    if (__src[0])
    {
      if (__src[0])
      {
      }
    }

    if (!v68)
    {
      v20[32] = v225;
    }

    *__src = 0x36D8B606BC4FD85CLL;
    *&__src[8] = "blur:showUnblurredVC";
    v69 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v58, __src, &v225);
    v70 = v69;
    if (__src[0])
    {
      if (__src[0])
      {
      }
    }

    if (!v70)
    {
      v20[33] = v225;
    }

    v71 = (v20 + 16);
    v72 = *(v20 + 4);
    v73 = v72;
    v74 = 1.5;
    v75 = *(v20 + 3) * 1.5;
    if (v20[2])
    {
LABEL_89:
      if (v75 > v73)
      {
        *v71 = 2 * v72;
      }

      v76 = *(v20 + 6);
      if (*(v20 + 5) * v74 > v76)
      {
        v77 = 2 * v76;
LABEL_98:
        *(v20 + 6) = v77;
        goto LABEL_99;
      }

      goto LABEL_99;
    }
  }

  else
  {
    v71 = (v20 + 16);
    v72 = *(v20 + 4);
    v73 = v72;
    v74 = 1.5;
    v75 = *(v20 + 3) * 1.5;
    if (v57)
    {
      goto LABEL_89;
    }
  }

  if (v75 <= v73)
  {
    *v71 = v72 / 2;
  }

  v78 = *(v20 + 6);
  if (*(v20 + 5) * v74 <= v78)
  {
    v77 = v78 / 2;
    goto LABEL_98;
  }

LABEL_99:
  v79 = *(a4 + 55);
  *__src = 65290051;
  *(v20 + 40) = re::RenderFrame::getScopeProtectionOptions(a4, a3, __src) & v79;
  v213 = this;
  if (a3)
  {
    v81 = *a3;
    if (*a3)
    {
      v82 = a3[1];
      if (v82)
      {
        v83 = a3 + 2;
        do
        {
          v81 = 31 * v81 + v82;
          v84 = *v83++;
          v82 = v84;
        }

        while (v84);
      }

      v81 &= ~0x8000000000000000;
    }
  }

  else
  {
    v81 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v216 = v81;
  v85 = re::supportedColorPixelFormat((*(a4 + 1) + 208), v80);
  v86 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v85) ^ ((0xBF58476D1CE4E5B9 * v85) >> 27));
  v87 = ((((v12 + 0x292D39BBB76173E7) ^ 0x6DBE18E721BE9D42) << 6) - 0x61C8864680B583E9 + (((v12 + 0x292D39BBB76173E7) ^ 0x6DBE18E721BE9D42uLL) >> 2) + (v86 ^ (v86 >> 31))) ^ (v12 + 0x292D39BBB76173E7) ^ 0x6DBE18E721BE9D42;
  v88 = ((v87 << 6) - 0x61C8864680B583E9 + (v87 >> 2)) ^ v87;
  v89 = *(a4 + 1);
  v90 = *(*a4 + 296);
  v224[0] = 0;
  v92 = re::supportedColorPixelFormat((v89 + 208), v91);
  v93 = *(v20 + 40);
  *&v232[12] = _D8;
  v94 = *(v20 + 12);
  *v232 = 0xFFFFFFFFLL;
  *&v232[20] = xmmword_1E30A3B60;
  *&v232[52] = -1;
  *&v232[44] = -1;
  v232[72] = 0;
  *&v232[36] = 0x2000000007;
  *&__src[12] = v94;
  v232[8] = 1;
  *&__src[8] = 3;
  *&__src[28] = 1;
  *&__src[20] = 0x200000001;
  *&v232[64] = 0;
  *&v232[56] = v93;
  *&__src[4] = v92;
  *__src = 2;
  v228 = *&v232[32];
  v229 = *&v232[48];
  v230 = *&v232[64];
  v226.columns[0] = *__src;
  v226.columns[1] = *&__src[16];
  v226.columns[2] = *v232;
  v227 = *&v232[16];
  v226.columns[0].i32[1] = 115;
  if (v20[3])
  {
    v95 = 0x41835D6541233CC6;
  }

  else
  {
    v95 = 0x6EE84F42E390DAAFLL;
  }

  if (v20[3])
  {
    v96 = 0x6EE84F42E390DAAFLL;
  }

  else
  {
    v96 = 0x41835D6541233CC6;
  }

  *v218 = v95;
  v225 = 0x224DEC6372A17064;
  re::RenderGraphPersistentResourceManager::registerPersistentTexture(v90, &v216, v218, &v225, a4, __src, v224);
  v97 = v224[0];
  *v218 = v96;
  v225 = 0x224DEC6372A17065;
  re::RenderGraphPersistentResourceManager::registerPersistentTexture(v90, &v216, v218, &v225, a4, __src, v224);
  v98 = v224[0] || v97;
  *v218 = 0x23D59F1355F7D636;
  v225 = 0x500524C6A54C98FCLL;
  re::RenderGraphPersistentResourceManager::registerPersistentTexture(v90, &v216, v218, &v225, a4, __src, v224);
  v99 = v224[0];
  *v218 = 0x72FE99054D3CC2B0;
  v225 = 0x4BC26B238B46B276;
  re::RenderGraphPersistentResourceManager::registerPersistentTexture(v90, &v216, v218, &v225, a4, &v226, v224);
  v100 = v98 | (v99 || v224[0]);
  if (v20[3])
  {
    v101 = 0x2E4F6D8BCDEF172CLL;
  }

  else
  {
    v101 = 0x1B9E43EDF0404D09;
  }

  if (v20[3])
  {
    v102 = 0x1B9E43EDF0404D09;
  }

  else
  {
    v102 = 0x2E4F6D8BCDEF172CLL;
  }

  v103 = *(v20 + 6);
  *&__src[12] = *(v20 + 5);
  *&__src[16] = v103;
  v226.columns[0].i32[3] = *&__src[12];
  v226.columns[1].i32[0] = v103;
  *v218 = v101;
  v225 = 0x29CB6A1F26966DCALL;
  re::RenderGraphPersistentResourceManager::registerPersistentTexture(v90, &v216, v218, &v225, a4, __src, v224);
  v104 = v224[0];
  *v218 = v102;
  v225 = 0x29CB6A1F26966DCBLL;
  re::RenderGraphPersistentResourceManager::registerPersistentTexture(v90, &v216, v218, &v225, a4, __src, v224);
  v105 = v104 || v224[0];
  *v218 = 0x60DF09E0AF8AD07;
  v225 = 0x245EA3C951D4BAF2;
  re::RenderGraphPersistentResourceManager::registerPersistentTexture(v90, &v216, v218, &v225, a4, &v226, v224);
  LOBYTE(v105) = (v100 | v105 | v224[0]) != 0;
  *v218 = 0x2B6EE9216B5DB7CCLL;
  v225 = 0x28E1A7364C7DB35DLL;
  re::RenderGraphPersistentResourceManager::registerPersistentTexture(v90, &v216, v218, &v225, a4, &v226, v224);
  v106 = v224[0] | v105;
  v107 = *(a4 + 1);
  v108 = [*(v107 + 208) supportsFamily:1007];
  if (*(v107 + 367) != 1 || (v108 & 1) == 0)
  {
    *v218 = *__src;
    *&v218[16] = *&__src[16];
    v221 = *&v232[32];
    v222 = *&v232[48];
    v223 = *&v232[64];
    v219 = *v232;
    v220 = *&v232[16];
    *&v218[12] = vshl_n_s32(*&v218[12], 2uLL);
    v225 = 0x7AC65E6EBC1A6022;
    v217 = 0x2F5AA33D1CD8F884;
    re::RenderGraphPersistentResourceManager::registerPersistentTexture(v90, &v216, &v225, &v217, a4, v218, v224);
    v106 |= v224[0];
  }

  *v218 = 0x365702DE80DBD47FLL;
  v225 = 0x5E987FCC43D26868;
  re::RenderGraphPersistentResourceManager::registerPersistentTexture(v90, &v216, v218, &v225, a4, __src, v224);
  v109 = v224[0] | v106;
  v110 = *(v20 + 41);
  v111 = re::RenderGraphDataStore::tryGet<re::SceneScope>(a4 + 32, v12);
  if (v111)
  {
    if (*(v111 + 16))
    {
      v112 = *(v111 + 24);
    }

    else
    {
      v112 = (v111 + 17);
    }

    v114 = re::RenderGraphDataStore::tryGet<re::BlurPlanesRenderFrameData>(a4 + 32, "BlurPlanesRenderFrameData", v112);
    if (v114)
    {
      v115 = *(v114 + 16);
      v116 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v115 ^ (v115 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v115 ^ (v115 >> 30))) >> 27));
      v113 = v116 ^ (v116 >> 31);
      if (v115)
      {
        v117 = (*(v114 + 32) + 96);
        do
        {
          v118 = *v117;
          v117 += 18;
          v119 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v118 ^ (v118 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v118 ^ (v118 >> 30))) >> 27));
          v113 ^= (v119 >> 31) ^ v119;
          --v115;
        }

        while (v115);
      }
    }

    else
    {
      v113 = 0;
    }
  }

  else
  {
    v113 = 0;
  }

  *(v20 + 41) = v113;
  if (v109 || v113 != v110)
  {
    *(v20 + 9) = 2;
    v123 = 1;
    v122 = v215;
  }

  else
  {
    v120 = *(v20 + 9);
    _VF = __OFSUB__(v120, 1);
    v121 = v120 - 1;
    v122 = v215;
    if (v121 < 0 != _VF)
    {
      v123 = 0;
    }

    else
    {
      *(v20 + 9) = v121;
      v123 = v121 != 0;
    }
  }

  if (v122 && !v123 && (*v122 & 1) != 0)
  {
    v125 = 1;
  }

  else
  {
    v125 = 0;
    v20[3] ^= 1u;
  }

  *__src = &unk_1F5D15858;
  if (!_AXSEnhanceBackgroundContrastEnabled())
  {
    if (_AXDarkenSystemColors())
    {
      v133 = *MEMORY[0x1E69E9B18];
      v134 = *(MEMORY[0x1E69E9B18] + 32);
      v135 = *(MEMORY[0x1E69E9B18] + 48);
      *&v232[48] = *(MEMORY[0x1E69E9B18] + 16);
      *&v232[64] = v134;
      *&__src[16] = xmmword_1E3108BE0;
      *v232 = xmmword_1E3108BF0;
      *&v232[32] = v133;
      *&v232[16] = xmmword_1E3108C00;
      v130 = vdupq_n_s32(0x3DCCCCCDu);
      v233 = v135;
      goto LABEL_147;
    }

    if (!v214)
    {
      goto LABEL_252;
    }

    LODWORD(v225) = 0;
    LODWORD(v217) = 0;
    *v224 = 0.0;
    v226.columns[0].i64[0] = 0x2424585FE717096ALL;
    v226.columns[0].i64[1] = "blur:filter.luminance";
    v187 = re::DebugSettingsManager::getWithErrorCode<float>(v214, &v226, &v225);
    v189 = *&v225 != 0.0 && v187 == 0;
    if (v226.columns[0].i8[0])
    {
      if (v226.columns[0].i8[0])
      {
      }
    }

    v190 = 0uLL;
    if (v189)
    {
      v190.i32[0] = v225;
      if (*&v225 > 1.0)
      {
        *v190.i32 = 1.0;
      }

      if (*v190.i32 < -1.0)
      {
        *v190.i32 = -1.0;
      }

      LODWORD(v225) = v190.i32[0];
      v190 = vdupq_lane_s32(*v190.i8, 0);
    }

    v206 = v190;
    v226.columns[0].i64[0] = 0xB6D7E15BC798CF4ALL;
    v226.columns[0].i64[1] = "blur:filter.contrast";
    v191 = re::DebugSettingsManager::getWithErrorCode<float>(v214, &v226, &v217);
    v194 = *&v217 != 1.0 && v191 == 0;
    if (v226.columns[0].i8[0])
    {
      if (v226.columns[0].i8[0])
      {
      }
    }

    if (v194)
    {
      v195 = 0;
      v192.i32[0] = v217;
      if (*&v217 > 4.0)
      {
        *v192.i32 = 4.0;
      }

      if (*v192.i32 < 0.25)
      {
        *v192.i32 = 0.25;
      }

      LODWORD(v217) = v192.i32[0];
      *&v196 = 0;
      LODWORD(v197) = 0;
      HIDWORD(v197) = v192.i32[0];
      *(&v196 + 1) = v192.u32[0];
      *v218 = v192.u32[0];
      *&v218[16] = v197;
      v219 = v196;
      do
      {
        v226.columns[v195] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1E3047670, COERCE_FLOAT(*&v218[v195 * 16])), xmmword_1E3047680, *&v218[v195 * 16], 1), xmmword_1E30476A0, *&v218[v195 * 16], 2);
        ++v195;
      }

      while (v195 != 3);
      v207 = v226.columns[1];
      v209 = v226.columns[0];
      v211 = v226.columns[2];
      *v192.i32 = (1.0 - *v192.i32) * 0.5;
      v206 = vaddq_f32(v206, vdupq_lane_s32(v192, 0));
      v189 = 1;
    }

    else
    {
      v211 = xmmword_1E30476A0;
      v207 = xmmword_1E3047680;
      v209 = xmmword_1E3047670;
    }

    v226.columns[0].i64[0] = 0x6067E59BDEAF676ALL;
    v226.columns[0].i64[1] = "blur:filter.saturation";
    v198 = re::DebugSettingsManager::getWithErrorCode<float>(v214, &v226, v224);
    v201 = v198;
    if (v226.columns[0].i8[0])
    {
      if (v226.columns[0].i8[0])
      {
      }
    }

    if (!v201)
    {
      v203 = 0;
      v204 = *v224;
      if (*v224 > 2.0)
      {
        v204 = 2.0;
      }

      if (v204 < 0.0)
      {
        v204 = 0.0;
      }

      *&v199 = vmla_n_f32(vdup_n_s32(0x3E59B3D0u), 0xBE59B3D03F498C7ELL, v204);
      *&v205 = vmla_n_f32(vdup_n_s32(0x3F371759u), 0x3E91D14EBF371759, v204);
      *&v200 = (v204 * -0.0722) + 0.0722;
      DWORD2(v199) = DWORD1(v199);
      *(&v205 + 1) = v205;
      *(&v200 + 1) = *&v200;
      *(&v200 + 2) = (v204 * 0.9278) + 0.0722;
      *v218 = v199;
      *&v218[16] = v205;
      v219 = v200;
      do
      {
        v226.columns[v203] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v209, COERCE_FLOAT(*&v218[v203 * 16])), v207, *&v218[v203 * 16], 1), v211, *&v218[v203 * 16], 2);
        ++v203;
      }

      while (v203 != 3);
      v202 = v226;
      v202.columns[0].i32[3] = v209.i32[3];
      v202.columns[1].i32[3] = v207.i32[3];
      v202.columns[2].i32[3] = v211.i32[3];
      v122 = v215;
      goto LABEL_260;
    }

    v122 = v215;
    v202.columns[0] = v209;
    v202.columns[2] = v211;
    v202.columns[1] = v207;
    if (!v189)
    {
LABEL_252:
      v206 = vdupq_n_s32(0x3E19999Au);
      v202.columns[2] = xmmword_1E3108C10;
      v202.columns[0] = xmmword_1E3108C20;
      v202.columns[1] = xmmword_1E3108C30;
    }

LABEL_260:
    v208 = v202.columns[1];
    v210 = v202.columns[0];
    v212 = v202.columns[2];
    v252 = __invert_f3(v202);
    *&__src[16] = v210;
    *v232 = v208;
    *&v232[16] = v212;
    *&v232[32] = v252;
    v233 = vnegq_f32(v206);
    v234 = v206;
    goto LABEL_148;
  }

  v126 = _AXDarkenSystemColors();
  v127.i32[0] = 0;
  v128.i32[0] = v126;
  v129 = *MEMORY[0x1E69E9B18];
  v130 = vbslq_s8(vdupq_lane_s8(*&vceqq_s8(v128, v127), 0), vdupq_n_s32(0x3EE66666u), vdupq_n_s32(0x3E19999Au));
  v131 = *(MEMORY[0x1E69E9B18] + 32);
  v132 = *(MEMORY[0x1E69E9B18] + 48);
  v228 = *(MEMORY[0x1E69E9B18] + 16);
  v229 = v131;
  v230 = v132;
  memset(&v226, 0, sizeof(v226));
  v227 = v129;
  *&v232[64] = v131;
  *&v232[48] = v228;
  *&__src[16] = 0u;
  memset(v232, 0, 32);
  *&v232[32] = v129;
  v233 = v132;
LABEL_147:
  v234 = v130;
LABEL_148:
  v136 = *(*(a4 + 1) + 128);
  v137 = *&v232[48];
  v138 = *&v232[64];
  v139 = v233;
  v136[14] = *&v232[32];
  v136[15] = v137;
  v136[16] = v138;
  v136[17] = v139;
  re::ColorHelpers::computeGamutTransformMatrix(1, 0, &v226);
  DWORD2(v235) = v226.columns[0].i32[2];
  DWORD2(v236) = v226.columns[1].i32[2];
  *&v235 = v226.columns[0].i64[0];
  *&v236 = v226.columns[1].i64[0];
  DWORD2(v237) = v226.columns[2].i32[2];
  *&v237 = v226.columns[2].i64[0];
  v140 = "N2re24ColorFilterConstantsDataE";
  if (("N2re24ColorFilterConstantsDataE" & 0x8000000000000000) != 0)
  {
    v141 = ("N2re24ColorFilterConstantsDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v142 = 5381;
    do
    {
      v140 = v142;
      v143 = *v141++;
      v142 = (33 * v142) ^ v143;
    }

    while (v143);
  }

  v124 = ((v88 << 6) + (v88 >> 2) - 0xB36702970AA7E04) ^ v88;
  v144 = ((v124 << 6) - 0x61C8864680B583E9 + (v124 >> 2)) ^ v124;
  v145 = v12 - 0x61C8864680B583E9;
  *v218 = (v12 - 0x61C8864680B583E9 + (v140 << 6) + (v140 >> 2)) ^ v140;
  v146 = (*(**(a4 + 5) + 32))(*(a4 + 5), 192, 16);
  *v146 = &unk_1F5D15858;
  v147 = *&v232[16];
  v148 = *v232;
  *(v146 + 16) = *&__src[16];
  *(v146 + 32) = v148;
  *(v146 + 48) = v147;
  v149 = v233;
  v150 = *&v232[48];
  v151 = *&v232[32];
  *(v146 + 96) = *&v232[64];
  *(v146 + 112) = v149;
  *(v146 + 64) = v151;
  *(v146 + 80) = v150;
  v152 = v237;
  v153 = v235;
  v154 = v234;
  *(v146 + 160) = v236;
  *(v146 + 176) = v152;
  *(v146 + 128) = v154;
  *(v146 + 144) = v153;
  v225 = v146;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a4 + 96, v218, &v225);
  v155 = *(v213 + 112);
  if (v155 == 4)
  {
    v24 = ((v144 << 6) - 0x61C8864680B583E9 + (v144 >> 2) + re::RenderGraphSFBSystemShellBlurProvider::prepareVCABlur(v12, a4, v125, v20)) ^ v144;
    v156 = v214;
  }

  else
  {
    v24 = 2512009519;
    v156 = v214;
    if (v155 == 3)
    {
      re::RenderGraphSFBSystemShellBlurProvider::prepareVCABlur(v12, a4, v125, v20);
      v157 = *v20 | v20[1];
      *v20 = v157;
      v20[1] = 0;
      if (v157)
      {
        v158 = 0xBF58476D1CE4E5B9 * (*(v20 + 3) ^ (*(v20 + 3) >> 30));
        v24 = (((0x94D049BB133111EBLL * (v158 ^ (v158 >> 27))) ^ ((0x94D049BB133111EBLL * (v158 ^ (v158 >> 27))) >> 31)) - 0x59ECBDB75CFBBFDFLL) ^ 0x23FB73AE8E00E62ALL;
      }

      v24 = ((v144 << 6) - 0x61C8864680B583E9 + (v144 >> 2) + v24) ^ v144;
    }
  }

  if ((*v20 & 1) != 0 || v20[1] == 1)
  {
    re::CameraStreamManager::context(*(*(a4 + 1) + 120), __src);
    v159 = "N2re19CameraStreamContextE";
    if (("N2re19CameraStreamContextE" & 0x8000000000000000) != 0)
    {
      v160 = ("N2re19CameraStreamContextE" & 0x7FFFFFFFFFFFFFFFLL);
      v161 = 5381;
      do
      {
        v159 = v161;
        v162 = *v160++;
        v161 = (33 * v161) ^ v162;
      }

      while (v162);
    }

    *v218 = (v145 + (v159 << 6) + (v159 >> 2)) ^ v159;
    v163 = (*(**(a4 + 5) + 32))(*(a4 + 5), 1856, 16);
    *v163 = &unk_1F5D04818;
    *(v163 + 16) = 0;
    *(v163 + 24) = 0;
    *(v163 + 32) = 0;
    *(v163 + 40) = 0;
    *(v163 + 1712) = 0u;
    *(v163 + 1728) = 0u;
    *(v163 + 1744) = 0;
    *(v163 + 1748) = 0x7FFFFFFFLL;
    *(v163 + 16) = *&__src[16];
    *&__src[16] = 0;
    *(v163 + 24) = *&__src[24];
    *&__src[24] = 0;
    v226.columns[0].i64[0] = 0;
    v226.columns[0].i32[2] = 0;
    re::DynamicInlineArray<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams>,4ul>::move(&v226, (v163 + 32));
    if (v163 != __src)
    {
      re::DynamicInlineArray<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams>,4ul>::move((v163 + 32), v232);
      ++*(v163 + 40);
    }

    re::DynamicInlineArray<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams>,4ul>::move(v232, &v226);
    ++*&v232[8];
    re::DynamicInlineArray<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams>,4ul>::clear(&v226);
    v226.columns[0] = *(v163 + 1712);
    *(v163 + 1712) = 0u;
    v226.columns[1].i64[0] = *(v163 + 1728);
    *(v163 + 1728) = 0;
    *(&v226.columns[1] + 8) = *(v163 + 1736);
    *(v163 + 1736) = xmmword_1E3058120;
    v226.columns[2].i32[2] = 1;
    re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::operator=(v163 + 1712, v248);
    re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::operator=(v248, &v226);
    re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(&v226);
    *(v163 + 1760) = v248[3];
    v164 = v248[4];
    v165 = v248[5];
    v166 = v248[6];
    *(v163 + 1824) = v249;
    *(v163 + 1808) = v166;
    *(v163 + 1792) = v165;
    *(v163 + 1776) = v164;
    *(v163 + 1832) = v250;
    v250 = 0u;
    v226.columns[0].i64[0] = v163;
    re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a4 + 96, v218, &v226);
    if (*(&v250 + 1))
    {

      *(&v250 + 1) = 0;
    }

    v122 = v215;
    if (v250)
    {

      *&v250 = 0;
    }

    re::SmallHashTable<re::WeakStringID,re::CameraStreamParams,4ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::~SmallHashTable(&__src[16]);
  }

  if (v156)
  {
    v226.columns[0].i32[0] = 0;
    *__src = 0x55CC0F1AC1A278;
    *&__src[8] = "blur:taaMixValue.passthrough";
    v167 = re::DebugSettingsManager::getWithErrorCode<float>(v156, __src, &v226);
    v168 = v167;
    if (__src[0])
    {
      if (__src[0])
      {
      }
    }

    if (v168)
    {
      v169 = 0.65;
    }

    else
    {
      v169 = v226.columns[0].f32[0];
    }

    *__src = 0x70F94BFC4F683DF8;
    *&__src[8] = "blur:taaMixValue.vca";
    v170 = re::DebugSettingsManager::getWithErrorCode<float>(v156, __src, &v226);
    v171 = v170;
    if (__src[0])
    {
      if (__src[0])
      {
      }
    }

    if (v171)
    {
      v172 = 0.65;
    }

    else
    {
      v172 = v226.columns[0].f32[0];
    }
  }

  else
  {
    v169 = 0.65;
    v172 = 0.65;
  }

  *__src = &unk_1F5D15898;
  __src[8] = v125;
  v173 = 1.0;
  if (v123)
  {
    v174 = 1.0;
  }

  else
  {
    v174 = v169;
  }

  if (v123)
  {
    v172 = 1.0;
  }

  *&__src[12] = v174;
  *&__src[16] = v172;
  if (v125)
  {
    v175 = *(v20 + 10) + 1;
    v176 = v175 + 1.0;
  }

  else
  {
    v175 = 0;
    v176 = 1.0;
  }

  *(v20 + 10) = v175;
  if (v122)
  {
    v177 = v123;
  }

  else
  {
    v177 = 1;
  }

  if ((v177 & 1) == 0)
  {
    v173 = v176 / (*(v122 + 4) + 1);
    if (v173 > 1.0)
    {
      v173 = 1.0;
    }

    if (v173 < 0.0)
    {
      v173 = 0.0;
    }
  }

  *&__src[20] = v173;
  if (v156)
  {
    v218[0] = 0;
    v226.columns[0].i64[0] = 0x13A98A684FC91826;
    v226.columns[0].i64[1] = "blur:enableReprojectionLerping";
    v178 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v156, &v226, v218);
    v179 = v178;
    v180 = v218[0];
    if (v226.columns[0].i8[0])
    {
      if (v226.columns[0].i8[0])
      {
      }
    }

    if (!v179 && (v180 & 1) == 0)
    {
      *&__src[20] = 1065353216;
    }
  }

  v181 = "N2re21BlurReprojectionStateE";
  if (("N2re21BlurReprojectionStateE" & 0x8000000000000000) != 0)
  {
    v182 = ("N2re21BlurReprojectionStateE" & 0x7FFFFFFFFFFFFFFFLL);
    v183 = 5381;
    do
    {
      v181 = v183;
      v184 = *v182++;
      v183 = (33 * v183) ^ v184;
    }

    while (v184);
  }

  v226.columns[0].i64[0] = (v145 + (v181 << 6) + (v181 >> 2)) ^ v181;
  v185 = (*(**(a4 + 5) + 32))(*(a4 + 5), 24, 8);
  *v185 = &unk_1F5D15898;
  *(v185 + 8) = *&__src[8];
  *v218 = v185;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a4 + 96, &v226, v218);
  return v24;
}

void re::RenderGraphSFBSystemShellBlurProvider::provide(re::RenderGraphSFBSystemShellBlurProvider *this, char *__s, char *a3, re::RenderFrame *a4)
{
  v217 = *MEMORY[0x1E69E9840];
  if (!*(this + 112))
  {
    return;
  }

  v8 = 0x9E3779B97F4A7C17;
  v9 = strlen(__s);
  if (v9)
  {
    MurmurHash3_x64_128(__s, v9, 0, __src);
    v10 = (*&__src[8] - 0x61C8864680B583E9 + (*__src << 6) + (*__src >> 2)) ^ *__src;
  }

  else
  {
    v10 = 0;
  }

  v11 = strlen(a3);
  v141 = __s;
  if (v11)
  {
    MurmurHash3_x64_128(a3, v11, 0, __src);
    v8 = ((*&__src[8] - 0x61C8864680B583E9 + (*__src << 6) + (*__src >> 2)) ^ *__src) - 0x61C8864680B583E9;
  }

  v12 = ((v10 >> 2) + (v10 << 6) + v8) ^ v10;
  v143 = v12;
  if (!*(this + 399))
  {
    v30 = *(this + 18);
    if (v30)
    {
      v31 = 352 * v30;
      v13 = this + 176;
      while (*(v13 - 2) != v12)
      {
        v13 += 352;
        v31 -= 352;
        if (!v31)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_16;
    }

LABEL_14:
    *__src = 0x1000000;
    memset(&__src[32], 0, 32);
    __asm { FMOV            V0.2S, #1.0 }

    *&__src[4] = _D0;
    *&__src[12] = xmmword_1E3108BC0;
    *&__src[28] = 1077516698;
    v33 = *(MEMORY[0x1E69E9B18] + 16);
    *&__src[64] = *MEMORY[0x1E69E9B18];
    *&__src[80] = v33;
    v34 = *(MEMORY[0x1E69E9B18] + 48);
    v36 = *MEMORY[0x1E69E9B18];
    v35 = *(MEMORY[0x1E69E9B18] + 16);
    v189 = *(MEMORY[0x1E69E9B18] + 32);
    v190 = v34;
    v37 = *MEMORY[0x1E69E9B18];
    v38 = *(MEMORY[0x1E69E9B18] + 16);
    v39 = *(MEMORY[0x1E69E9B18] + 48);
    v193 = *(MEMORY[0x1E69E9B18] + 32);
    v194 = v39;
    v191 = v37;
    v192 = v38;
    v40 = *(MEMORY[0x1E69E9B18] + 48);
    v197 = *(MEMORY[0x1E69E9B18] + 32);
    v198 = v40;
    v41 = *(MEMORY[0x1E69E9B18] + 16);
    v195 = *MEMORY[0x1E69E9B18];
    v196 = v41;
    v42 = *(MEMORY[0x1E69E9B18] + 48);
    v201 = v193;
    v202 = v42;
    v199 = v36;
    v200 = v35;
    v204 = 0;
    v203 = 0;
    v29 = re::SmallHashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,4ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::add(this + 128, &v143, __src, 0);
    goto LABEL_15;
  }

  v13 = re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::tryGet(this + 1568, v12);
  if (!v13)
  {
    *__src = 0x1000000;
    memset(&__src[32], 0, 32);
    __asm { FMOV            V0.2S, #1.0 }

    *&__src[4] = _D0;
    *&__src[12] = xmmword_1E3108BC0;
    *&__src[28] = 1077516698;
    v19 = *(MEMORY[0x1E69E9B18] + 16);
    *&__src[64] = *MEMORY[0x1E69E9B18];
    *&__src[80] = v19;
    v20 = *(MEMORY[0x1E69E9B18] + 48);
    v22 = *MEMORY[0x1E69E9B18];
    v21 = *(MEMORY[0x1E69E9B18] + 16);
    v189 = *(MEMORY[0x1E69E9B18] + 32);
    v190 = v20;
    v23 = *MEMORY[0x1E69E9B18];
    v24 = *(MEMORY[0x1E69E9B18] + 16);
    v25 = *(MEMORY[0x1E69E9B18] + 48);
    v193 = *(MEMORY[0x1E69E9B18] + 32);
    v194 = v25;
    v191 = v23;
    v192 = v24;
    v26 = *(MEMORY[0x1E69E9B18] + 48);
    v197 = *(MEMORY[0x1E69E9B18] + 32);
    v198 = v26;
    v27 = *(MEMORY[0x1E69E9B18] + 16);
    v195 = *MEMORY[0x1E69E9B18];
    v196 = v27;
    v28 = *(MEMORY[0x1E69E9B18] + 48);
    v201 = v193;
    v202 = v28;
    v199 = v22;
    v200 = v21;
    v204 = 0;
    v203 = 0;
    v29 = re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(this + 1568, &v143, __src);
LABEL_15:
    v13 = v29;
  }

LABEL_16:
  if (*(this + 112) - 3 <= 1 && ((*v13 & 1) != 0 || v13[1] == 1))
  {
    re::AssetHandle::loadNow(*(this + 12), 0);
    v138 = *(v13 + 20);
    v43 = *(v13 + 3);
    v44 = *(v13 + 4);
    RenderGraph = re::RenderFrame::makeRenderGraph(a4, a3, 0);
    v46 = re::supportedColorPixelFormat((*(a4 + 1) + 208), v45);
    v185 = -1;
    v184 = -1;
    *&__src[8] = 3;
    *&__src[12] = v43;
    *&__src[20] = xmmword_1E3108C40;
    *&__src[16] = v44;
    *&__src[36] = 0;
    __src[40] = 1;
    __asm { FMOV            V8.2S, #1.0 }

    *&__src[44] = _D8;
    *&__src[52] = xmmword_1E30A3B60;
    *&__src[68] = 0x2000000007;
    memset(&__src[76], 255, 20);
    *&v189 = 0;
    BYTE8(v189) = 0;
    *&__src[4] = v46;
    *__src = 2;
    LODWORD(v181) = 0;
    v132 = v46;
    v134 = v44;
    *(&v181 + 4) = v46 | 0x300000000;
    v135 = v43;
    HIDWORD(v181) = v43;
    *&v182[4] = xmmword_1E3108C40;
    *v182 = v44;
    *&v182[20] = 0;
    v182[24] = 1;
    *&v182[28] = _D8;
    *&v182[36] = xmmword_1E30A3B60;
    *&v182[52] = 0x2000000007;
    memset(&v182[60], 255, 20);
    *&v183 = 0;
    BYTE8(v183) = 0;
    __sa = a3;
    if (a3)
    {
      v48 = *a3;
      if (*a3)
      {
        v49 = a3[1];
        if (v49)
        {
          v50 = a3 + 2;
          do
          {
            v48 = 31 * v48 + v49;
            v51 = *v50++;
            v49 = v51;
          }

          while (v51);
        }

        v52 = v48 & 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v52 = 0;
      }
    }

    else
    {
      v52 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v53 = *(a4 + 1);
    v54 = [*(v53 + 208) supportsFamily:1007];
    v55 = *(v53 + 367);
    re::mtl::Device::isPhysicalHardware((*(a4 + 1) + 208));
    v56 = *(*(a4 + 1) + 128);
    v136 = this;
    if (v56)
    {
      re::BlurManager::getBackdropMaterial(v166, v56);
      v118 = *&v166[8] != 0;
      re::AssetHandle::~AssetHandle(v166);
    }

    else
    {
      v118 = 0;
    }

    v127 = v55 & v54;
    *v166 = &v181;
    *&v166[8] = a4;
    *v165 = 0x730609FCA8E5BE4FLL;
    *&v165[8] = "PassthroughColor";
    *&v166[16] = v165;
    v166[24] = 1;
    *&v166[32] = 65290051;
    *&v166[40] = "Color";
    v166[48] = 0;
    v166[72] = 0;
    *v166 = __src;
    *&v166[8] = a4;
    *&v166[16] = &re::kPassthroughBlurredColorRead;
    v166[24] = 0;
    v166[48] = 0;
    v166[72] = 1;
    *&v166[80] = v52;
    *v166 = __src;
    *&v166[8] = a4;
    *&v166[16] = &re::kPassthroughBlurredColorWrite;
    v166[24] = 0;
    v166[48] = 0;
    v166[72] = 1;
    *&v166[80] = v52;
    *v166 = &v181;
    *&v166[8] = a4;
    *v165 = 0x6723228C5BC8673ALL;
    *&v165[8] = "UnprojectedBlurredPassthroughColor";
    *&v166[16] = v165;
    v166[24] = 1;
    *&v166[32] = 65290051;
    *&v166[40] = "Color";
    v166[48] = 0;
    v166[72] = 0;
    *v166 = &v181;
    *&v166[8] = a4;
    *v165 = 0x4231BC5CFFB1FB38;
    *&v165[8] = "UnprojectedBlurredColor";
    *&v166[16] = v165;
    v166[24] = 1;
    *&v166[32] = 65290051;
    *&v166[40] = "Color";
    v166[48] = 0;
    v166[72] = 0;
    *v166 = __src;
    *&v166[8] = a4;
    *&v166[16] = &re::kOutputPassthroughBlurredColor;
    v166[24] = 0;
    v166[48] = 0;
    v166[72] = 1;
    *&v166[80] = v52;
    *v166 = 0x10CC0F66D471B4F0;
    re::RenderFrame::addTargetOutput(a4, v166, &v169, a3);
    *v166 = __src;
    *&v166[8] = a4;
    *&v166[16] = &re::kOutputPassthroughBlurredColorSRGB;
    v166[24] = 0;
    v166[48] = 0;
    v166[72] = 1;
    *&v166[80] = v52;
    *v166 = 0x23D59E48A3024D6ALL;
    re::RenderFrame::addTargetOutput(a4, v166, &v167, a3);
    v57 = re::RenderGraph::addNode<re::RenderGraphCameraSetupNode>(RenderGraph, "CameraSetup");
    *(v57 + 264) = 1;
    v58 = (*(*v57 + 80))(v57, v141, a3, a4);
    *v166 = 3;
    memset(&v166[12], 255, 24);
    *&v166[8] = 2;
    *&v166[36] = 0;
    v166[40] = 0;
    *&v166[44] = _D8;
    *&v166[52] = xmmword_1E30A3B60;
    *&v166[68] = 0x2000000000;
    memset(&v166[76], 255, 20);
    *&v166[96] = 0;
    v166[104] = 0;
    *v165 = 3;
    memset(&v165[12], 255, 24);
    *&v165[8] = 2;
    *&v165[36] = 0;
    v165[40] = 0;
    *&v165[44] = _D8;
    *&v165[52] = xmmword_1E30A3B60;
    *&v165[68] = 0x2000000000;
    memset(&v165[76], 255, 20);
    *&v165[96] = 0;
    v165[104] = 0;
    v151 = 3;
    v152 = 2;
    v153 = -1;
    *&v154 = -1;
    *(&v154 + 1) = -1;
    v155 = 0;
    v156 = 0;
    v159 = _D8;
    v160 = xmmword_1E30A3B60;
    v161 = 0x2000000000;
    v162 = -1;
    *v163 = -1;
    *&v163[8] = -1;
    *&v163[12] = 0;
    v164 = 0;
    v149 = 0;
    v150 = -1;
    v147 = 0;
    v148 = -1;
    v137 = a4;
    if (v13[1] == 1)
    {
      TextureAlias = re::RenderGraph::addNode<re::SFBSystemShellCreateTextureAliasNode>(RenderGraph, "SetVCAPassthroughAlias");
      *v211 = v169;
      *&v211[8] = v170;
      *&v211[16] = 0;
      *&v211[24] = 2;
      re::DynamicArray<re::TargetRead>::add((TextureAlias + 184), v211);
      *(TextureAlias + 34) = 0x23D59F1355F7D636;
      v60 = re::RenderGraph::addNode<re::SFBSystemShellCreateTextureAliasNode>(RenderGraph, "SetVCAPassthroughSRGBAlias");
      *v211 = v167;
      *&v211[8] = v168;
      *&v211[16] = 0;
      *&v211[24] = 2;
      re::DynamicArray<re::TargetRead>::add((v60 + 184), v211);
      *(v60 + 34) = 0x72FE99054D3CC2B0;
      *&v166[84] = v185;
      *&v166[76] = v184;
      v157 = v186;
      v158 = v187;
      *&v166[41] = v186;
      *&v166[12] = v138;
      *&v166[20] = xmmword_1E3108C40;
      *&v166[8] = 3;
      *&v166[36] = 0;
      v166[40] = 1;
      v166[43] = v187;
      *&v166[44] = _D8;
      *&v166[52] = xmmword_1E30A3B60;
      *&v166[68] = 0x2000000007;
      *&v166[88] = xmmword_1E3062D70;
      v166[104] = 0;
      *&v166[4] = v132;
      *v166 = 2;
      *&v165[89] = *&v166[89];
      *&v165[64] = *&v166[64];
      *&v165[80] = *&v166[80];
      *&v165[32] = *&v166[32];
      *&v165[48] = *&v166[48];
      *v165 = *v166;
      *&v165[16] = *&v166[16];
      *&v165[12] = vshl_n_s32(*&v165[12], 2uLL);
      LODWORD(v151) = 0;
      HIDWORD(v151) = v132;
      v152 = 3;
      v154 = xmmword_1E3108C40;
      v155 = 0;
      v156 = 1;
      v159 = _D8;
      v160 = xmmword_1E30A3B60;
      v161 = 0x2000000005;
      *v163 = v185;
      v162 = v184;
      *&v163[4] = xmmword_1E3062D70;
      v164 = 0;
      v153 = vshl_n_s32(v138, 2uLL);
      if (v127)
      {
        *v211 = &v151;
        *&v211[8] = a4;
        *&v211[16] = &re::kVCARenderTarget;
        v211[24] = 1;
        *&v211[32] = 65290051;
        *&v211[40] = "Color";
        v211[48] = 0;
        BYTE8(v212) = 0;
      }

      else
      {
        *v211 = v165;
        *&v211[8] = a4;
        *&v211[16] = &re::kVCARenderTarget;
        v211[24] = 0;
        v211[48] = 0;
        BYTE8(v212) = 1;
        *&v213 = v52;
      }

      v124 = *v205;
      v130 = *&v205[8];
      *v211 = v166;
      *&v211[8] = a4;
      *&v211[16] = &re::kVCADownsampledColor;
      v211[24] = 0;
      v211[48] = 0;
      BYTE8(v212) = 1;
      *&v213 = v52;
      v123 = *v205;
      v131 = *&v205[12];
      v133 = *&v205[8];
      *v211 = v166;
      *&v211[8] = a4;
      *&v211[16] = &re::kVCABlurredColorRead;
      v211[24] = 0;
      v211[48] = 0;
      BYTE8(v212) = 1;
      *&v213 = v52;
      v122 = *v205;
      v125 = *&v205[12];
      v126 = *&v205[8];
      *v211 = v166;
      *&v211[8] = a4;
      *&v211[16] = &re::kVCABlurredColorWrite;
      v211[24] = 0;
      v211[48] = 0;
      BYTE8(v212) = 1;
      *&v213 = v52;
      v121 = *v205;
      v119 = *&v205[12];
      v120 = *&v205[8];
      *v211 = v166;
      *&v211[8] = a4;
      *&v211[16] = &re::kOutputVCABlurredColorSRGB;
      v211[24] = 0;
      v211[48] = 0;
      BYTE8(v212) = 1;
      *&v213 = v52;
      *v211 = v166;
      *&v211[8] = a4;
      *&v211[16] = &re::kOutputVCOnlyBlurredColorSRGB;
      v211[24] = 0;
      v211[48] = 0;
      BYTE8(v212) = 1;
      *&v213 = v52;
      *v211 = 0x7B9CDD367106FB41;
      re::RenderFrame::addTargetOutput(a4, v211, &v149, a3);
      *v211 = 0x50A43212F8423086;
      re::RenderFrame::addTargetOutput(a4, v211, &v147, a3);
      if ([*(*(a4 + 1) + 208) supportsSeparateDepthStencil])
      {
        HIDWORD(v151) = 252;
        *v211 = &v151;
        *&v211[8] = a4;
        *&v216[0] = 0x23530BF6FEFLL;
        *(&v216[0] + 1) = "VCADepth";
        *&v211[16] = v216;
        v211[24] = 1;
        *&v211[32] = 65919651;
        *&v211[40] = "Depth";
        v211[48] = 0;
        BYTE8(v212) = 0;
        v129 = *&v205[12];
        v142 = *&v205[8];
        HIDWORD(v151) = 253;
        *v211 = &v151;
        v62 = *v205;
        *&v211[8] = a4;
        *&v216[0] = 0x849AF311B97E8;
        *(&v216[0] + 1) = "VCAStencil";
        *&v211[16] = v216;
        v211[24] = 1;
        *&v211[32] = 0x11F25A259CLL;
        *&v211[40] = "Stencil";
        v211[48] = 0;
        BYTE8(v212) = 0;
        v117 = *v205;
        v64 = *&v205[8];
        v65 = *&v205[12];
      }

      else
      {
        HIDWORD(v151) = 260;
        *v211 = &v151;
        *&v211[8] = a4;
        *&v216[0] = 0x7C3C8EACDA68BACDLL;
        *(&v216[0] + 1) = "VCADepthStencil";
        *&v211[16] = v216;
        v211[24] = 1;
        *&v211[32] = 65919651;
        *&v211[40] = "Depth";
        v211[48] = 0;
        BYTE8(v212) = 0;
        v62 = *v205;
        v64 = *&v205[8];
        v65 = *&v205[12];
        v117 = *v205;
        v129 = *&v205[12];
        v142 = *&v205[8];
      }

      v66 = re::globalAllocators(v63);
      v67 = (*(*v66[2] + 32))(v66[2], 272, 8);
      v68 = re::RenderGraphNode::RenderGraphNode(v67, "StencilBlurMeshNode");
      *(v68 + 66) = 1;
      *(v68 + 268) = 0;
      *v68 = &unk_1F5D10A90;
      *v211 = v68;
      re::DynamicArray<re::TransitionCondition *>::add(RenderGraph, v211);
      *(v67 + 24) = *(RenderGraph + 10);
      *(v67 + 32) = *(RenderGraph + 12);
      *(v67 + 48) = *(RenderGraph + 13);
      memset(&v205[8], 0, 18);
      *v211 = v124;
      *&v211[8] = v130;
      *&v211[16] = 0x100000000;
      *&v211[24] = *v205;
      *&v211[34] = 0u;
      *&v211[52] = 0;
      re::DynamicArray<re::TargetWrite>::add((v67 + 224), v211);
      memset(v216 + 8, 0, 18);
      *v211 = v62;
      *&v211[8] = v142;
      *&v211[12] = v129;
      *&v211[16] = 0x200000000;
      *&v211[24] = *&v216[0];
      *&v211[34] = 0u;
      *&v211[52] = 0;
      re::DynamicArray<re::TargetWrite>::add((v67 + 224), v211);
      memset(v215 + 8, 0, 18);
      *v211 = v117;
      *&v211[8] = v64;
      *&v211[12] = v65;
      *&v211[16] = 0x300000000;
      *&v211[24] = *&v215[0];
      *&v211[34] = 0u;
      *&v211[52] = 0;
      re::DynamicArray<re::TargetWrite>::add((v67 + 224), v211);
      if (v127)
      {
        *v211 = v123;
        *&v211[8] = v133;
        *&v211[12] = v131;
        *&v211[16] = 0x500000001;
        *&v211[32] = xmmword_1E30474D0;
        *&v211[48] = 0;
        *&v211[52] = 0;
        re::DynamicArray<re::TargetWrite>::add((v67 + 224), v211);
        *(v67 + 65) = 1;
        *(v67 + 88) = 3;
        re::RenderGraphNode::configure(v67, v141, a3, a4);
        v70 = re::globalAllocators(v69);
        v71 = (*(*v70[2] + 32))(v70[2], 448, 16);
        v72 = re::RenderGraphMRCNode::RenderGraphMRCNode(v71, "VCATiledDownsampleNode");
        *v72 = &unk_1F5D10EC8;
        *v211 = v72;
        re::DynamicArray<re::TransitionCondition *>::add(RenderGraph, v211);
        *(v71 + 24) = *(RenderGraph + 10);
        *(v71 + 32) = *(RenderGraph + 12);
        *(v71 + 48) = *(RenderGraph + 13);
        v61 = this;
        re::AssetHandle::operator=(v71 + 264, this + 11);
        *v211 = "kernelTiledVCADownsample4x";
        *&v211[8] = 26;
        re::DynamicString::operator=((v71 + 288), v211);
        *v211 = v124;
        *&v211[8] = v130;
        *&v211[16] = 0x100000000;
        *&v211[24] = *v205;
        *&v211[34] = *&v205[10];
        *&v211[52] = 0;
        re::DynamicArray<re::TargetWrite>::add((v71 + 224), v211);
        *v211 = v62;
        *&v211[8] = v142;
        *&v211[12] = v129;
        *&v211[16] = 0x200000000;
        *&v211[24] = v216[0];
        *&v211[34] = *(v216 + 10);
        *&v211[52] = 0;
        re::DynamicArray<re::TargetWrite>::add((v71 + 224), v211);
        *v211 = v117;
        *&v211[8] = v64;
        *&v211[12] = v65;
        *&v211[16] = 0x300000000;
        *&v211[24] = v215[0];
        *&v211[34] = *(v215 + 10);
        *&v211[52] = 0;
        re::DynamicArray<re::TargetWrite>::add((v71 + 224), v211);
        *v211 = v124;
        *&v211[8] = v130;
        *&v211[16] = 0;
        *&v211[24] = 0xA00000002;
        re::DynamicArray<re::TargetRead>::add((v71 + 184), v211);
        *v211 = v123;
        *&v211[8] = v133;
        *&v211[12] = v131;
        *&v211[16] = 0x500000001;
        *&v211[32] = xmmword_1E30474D0;
        *&v211[48] = 0;
        *&v211[52] = 0;
        v73 = re::DynamicArray<re::TargetWrite>::add((v71 + 224), v211);
        *(v71 + 88) = 3;
        *(v71 + 336) = 0x800000008;
        *(v71 + 344) = 0;
        *(v71 + 65) = 1;
        v58 = (*(*v71 + 80))(v71, v141, a3, v137, v73);
      }

      else
      {
        *(v67 + 65) = 1;
        *(v67 + 88) = 3;
        re::RenderGraphNode::configure(v67, v141, a3, a4);
        v61 = this;
      }

      v128 = 2;
    }

    else
    {
      v130 = -1;
      v121 = 0;
      v122 = 0;
      v123 = 0;
      v124 = 0;
      v119 = -1;
      v120 = -1;
      v125 = -1;
      v126 = -1;
      v133 = -1;
      v131 = -1;
      v128 = -1;
      v61 = this;
    }

    v74 = *(v61 + 1617);
    v75 = re::globalAllocators(v58);
    v76 = (*(*v75[2] + 32))(v75[2], 512, 16);
    v77 = re::RenderGraphComputeNodeBase::RenderGraphComputeNodeBase(v76, "PassthroughDownsample");
    *v77 = &unk_1F5D10B38;
    *(v77 + 496) = 1;
    *v211 = v77;
    v78 = RenderGraph;
    re::DynamicArray<re::TransitionCondition *>::add(RenderGraph, v211);
    *(v76 + 24) = *(RenderGraph + 10);
    *(v76 + 32) = *(RenderGraph + 12);
    *(v76 + 48) = *(RenderGraph + 13);
    re::AssetHandle::operator=(v76 + 264, v61 + 11);
    *v211 = "kernelSFBARKitPassthroughDownsample";
    *&v211[8] = 35;
    re::DynamicString::operator=((v76 + 288), v211);
    *(v76 + 496) = 1;
    *(v76 + 424) = v135;
    *(v76 + 428) = 0x100000002;
    *(v76 + 440) = 0x100000001;
    *(v76 + 436) = v134;
    if (v74)
    {
      v79 = &v173;
    }

    else
    {
      v79 = &v171;
    }

    *v211 = *v79;
    v80 = &v174;
    if (!v74)
    {
      v80 = &v172;
    }

    *&v211[8] = *v80;
    v81 = &v174 + 4;
    if (!v74)
    {
      v81 = &v172 + 4;
    }

    *&v211[12] = *v81;
    *&v211[16] = 0x500000002;
    *&v211[32] = xmmword_1E30474D0;
    *&v211[48] = 0;
    *&v211[56] = 0;
    *&v211[52] = 0;
    re::DynamicArray<re::TargetWrite>::add((v76 + 224), v211);
    v82 = v141;
    v83 = v137;
    v84 = re::RenderGraphComputeNodeBase::configure(v76, v141, a3, v137);
    if (v74 == 1)
    {
      *v211 = v181;
      *&v211[16] = *v182;
      v212 = *&v182[48];
      v213 = *&v182[64];
      v214 = v183;
      *&v211[32] = *&v182[16];
      *&v211[48] = *&v182[32];
      *&v211[12] = vshl_n_s32(*&v211[12], 2uLL);
      *v205 = v211;
      v85 = v137;
      *&v205[8] = v137;
      *&v216[0] = 0x304E5AEDEAECE73ELL;
      *(&v216[0] + 1) = "SyntheticColor";
      *&v205[16] = v216;
      v205[24] = 1;
      *&v206 = 65290051;
      *(&v206 + 1) = "Color";
      LOBYTE(v207) = 0;
      v210 = 0;
      *&v211[4] = 252;
      *v205 = v211;
      *&v205[8] = v137;
      *&v216[0] = 0x304E5AEDEAF6829ELL;
      *(&v216[0] + 1) = "SyntheticDepth";
      *&v205[16] = v216;
      v205[24] = 1;
      *&v206 = 65919651;
      *(&v206 + 1) = "Depth";
      LOBYTE(v207) = 0;
      v210 = 0;
      if (v118)
      {
        v87 = *(*(v137 + 1) + 128);
        re::BlurManager::getBackdropMaterial(v216, v87);
        re::DynamicString::DynamicString(v205, (v87 + 192));
        v78 = RenderGraph;
        v88 = re::RenderGraph::addNode<re::RenderGraphFullscreenNode>(RenderGraph, "BackdropPass");
        re::AssetHandle::operator=(v88 + 272, v216);
        re::DynamicString::operator=((v88 + 296), v205);
        *(v88 + 336) = 1;
        v144 = 0uLL;
        LOBYTE(v215[0]) = 0;
        re::RenderGraphMeshNodeBase::setColorAttachment(v88, 0, v146, &v144, 0, v215);
        LOBYTE(v215[0]) = 0;
        v89 = re::RenderGraphMeshNodeBase::setDepthOnlyAttachment(v88, v145, 0, v215, 0.0);
        *(v88 + 65) = 1;
        v90 = v141;
        (*(*v88 + 80))(v88, v141, a3, v137, v89);
        if (*v205 && (v205[8] & 1) != 0)
        {
          (*(**v205 + 40))();
        }

        re::AssetHandle::~AssetHandle(v216);
        v85 = v137;
      }

      else
      {
        v91 = re::globalAllocators(v86);
        v92 = (*(*v91[2] + 32))(v91[2], 368, 8);
        v93 = re::RenderGraphMeshNode::RenderGraphMeshNode(v92, "SkyboxNode");
        *v93 = &unk_1F5D10E20;
        *v205 = v93;
        v78 = RenderGraph;
        re::DynamicArray<re::TransitionCondition *>::add(RenderGraph, v205);
        *(v92 + 24) = *(RenderGraph + 10);
        *(v92 + 32) = *(RenderGraph + 12);
        *(v92 + 48) = *(RenderGraph + 13);
        *v205 = "Skybox";
        *&v205[8] = 6;
        re::DynamicString::operator=((v92 + 272), v205);
        *(v92 + 344) = 0;
        v216[0] = 0uLL;
        v205[0] = 0;
        re::RenderGraphMeshNodeBase::setColorAttachment(v92, 0, v146, v216, 1, v205);
        v205[0] = 0;
        v94 = re::RenderGraphMeshNodeBase::setDepthOnlyAttachment(v92, v145, 0, v205, 0.0);
        *(v92 + 65) = 1;
        v90 = v141;
        (*(*v92 + 80))(v92, v141, a3, v137, v94);
      }

      v95 = re::RenderGraph::addNode<re::SFBSystemShellComputeNode>(v78, "PassthroughDownsampleCompute");
      re::AssetHandle::operator=(v95 + 264, v61 + 11);
      *v205 = "kernelSFBBilerpDownsample4xWithPassthrough";
      *&v205[8] = 42;
      re::DynamicString::operator=((v95 + 288), v205);
      v96 = HIDWORD(v181);
      v97 = *v182;
      v98 = *&v182[8];
      *(v95 + 108) = 1;
      *(v95 + 106) = v96;
      *(v95 + 107) = v98;
      *(v95 + 55) = 0x100000001;
      *(v95 + 109) = v97;
      *v205 = v146[0];
      *&v205[8] = v146[1];
      *&v205[16] = 0;
      *&v205[24] = 2;
      re::DynamicArray<re::TargetRead>::add((v95 + 184), v205);
      *v205 = v173;
      *&v205[8] = v174;
      *&v205[16] = 1;
      *&v205[20] = 0;
      v205[22] = 0;
      *&v205[24] = 2;
      re::DynamicArray<re::TargetRead>::add((v95 + 184), v205);
      *v205 = v171;
      *&v205[8] = v172;
      *&v205[16] = 0x500000002;
      v206 = xmmword_1E30474D0;
      v207 = 0;
      v209 = 0;
      v208 = 0;
      v99 = re::DynamicArray<re::TargetWrite>::add((v95 + 224), v205);
      v83 = v85;
      v84 = (*(*v95 + 80))(v95, v90, a3, v85, v99);
      v82 = v90;
    }

    v100 = re::globalAllocators(v84);
    v101 = (*(*v100[2] + 32))(v100[2], 496, 16);
    v102 = re::RenderGraphComputeNodeBase::RenderGraphComputeNodeBase(v101, "PassthroughReprojectAndRectify");
    *v102 = &unk_1F5D10BF8;
    *v211 = v102;
    re::DynamicArray<re::TransitionCondition *>::add(v78, v211);
    *(v101 + 24) = *(v78 + 10);
    *(v101 + 32) = *(v78 + 12);
    *(v101 + 48) = *(v78 + 13);
    re::AssetHandle::operator=(v101 + 264, v61 + 11);
    *v211 = "kernelSFBNoReprojectAndNoBlend";
    *&v211[8] = 30;
    re::DynamicString::operator=((v101 + 288), v211);
    *v211 = v179;
    *&v211[8] = v180;
    *&v211[16] = 0x500000000;
    *&v211[32] = xmmword_1E30474D0;
    *&v211[48] = 0;
    *&v211[52] = 0;
    re::DynamicArray<re::TargetWrite>::add((v101 + 224), v211);
    *v211 = v171;
    *&v211[8] = v172;
    *&v211[16] = 1;
    *&v211[20] = 0;
    v211[22] = 0;
    *&v211[24] = 2;
    re::DynamicArray<re::TargetRead>::add((v101 + 184), v211);
    *(v101 + 424) = v135;
    *(v101 + 428) = 0x100000002;
    *(v101 + 440) = 0x100000001;
    *(v101 + 436) = v134;
    re::RenderGraphComputeNodeBase::configure(v101, v82, a3, v83);
    v103 = re::RenderGraph::addNode<re::SFBSystemShellBlurTAANode>(v78, "PassthroughBlurAndFilter");
    re::AssetHandle::operator=(v103 + 264, v61 + 11);
    if (v13[32])
    {
      v104 = "kernelSFBNoBlurAndFilter";
    }

    else
    {
      v104 = "kernelSFBBlurAndFilter";
    }

    v105 = 22;
    if (v13[32])
    {
      v105 = 24;
    }

    *v211 = v104;
    *&v211[8] = v105;
    re::DynamicString::operator=((v103 + 288), v211);
    *(v103 + 106) = v135;
    *(v103 + 428) = 0x100000002;
    *(v103 + 55) = 0x100000001;
    *(v103 + 109) = v134;
    *v211 = v179;
    *&v211[8] = v180;
    *&v211[16] = 0;
    *&v211[24] = 2;
    re::DynamicArray<re::TargetRead>::add((v103 + 184), v211);
    *v211 = v177;
    *&v211[8] = v178;
    *&v211[16] = 2;
    *&v211[20] = 0;
    v211[22] = 0;
    *&v211[24] = 2;
    re::DynamicArray<re::TargetRead>::add((v103 + 184), v211);
    *v211 = v175;
    *&v211[8] = v176;
    *&v211[16] = 0x500000003;
    *&v211[32] = xmmword_1E30474D0;
    *&v211[48] = 0;
    *&v211[52] = 0;
    re::DynamicArray<re::TargetWrite>::add((v103 + 224), v211);
    *v211 = v169;
    *&v211[8] = v170;
    *&v211[16] = 0x500000004;
    *&v211[32] = xmmword_1E30474D0;
    *&v211[48] = 0;
    *&v211[52] = 0;
    re::DynamicArray<re::TargetWrite>::add((v103 + 224), v211);
    *v211 = v167;
    *&v211[8] = v168;
    *&v211[16] = 0x500000006;
    *&v211[32] = xmmword_1E30474D0;
    *&v211[48] = 0;
    *&v211[52] = 0;
    re::DynamicArray<re::TargetWrite>::add((v103 + 224), v211);
    v106 = 8 * v134 + 15;
    *(v103 + 9) = v106 & 0xFFFFFFF0;
    *v211 = 0;
    *&v211[4] = v106 & 0xFFFFFFF0;
    re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureIndexAndStage>::add(v103 + 56, v211);
    (*(*v103 + 80))(v103, v82, a3, v83);
    *(v103 + 496) = 0;
    *(v103 + 126) = v135;
    *(v103 + 125) = v134;
    v107 = re::RenderGraph::addNode<re::SFBSystemShellReprojectNode>(v78, "reprojectFilteredBlur");
    re::AssetHandle::operator=(v107 + 264, v61 + 11);
    *v211 = "kernelSFBReprojectAndSRGBCorrect";
    *&v211[8] = 32;
    re::DynamicString::operator=((v107 + 288), v211);
    *(v107 + 106) = v135;
    *(v107 + 428) = 0x100000002;
    *(v107 + 55) = 0x100000001;
    *(v107 + 109) = v134;
    *v211 = v177;
    *&v211[8] = v178;
    *&v211[16] = 0;
    *&v211[24] = 2;
    re::DynamicArray<re::TargetRead>::add((v107 + 184), v211);
    *v211 = v175;
    *&v211[8] = v176;
    *&v211[16] = 1;
    *&v211[20] = 0;
    v211[22] = 0;
    *&v211[24] = 2;
    re::DynamicArray<re::TargetRead>::add((v107 + 184), v211);
    *v211 = v169;
    *&v211[8] = v170;
    *&v211[16] = 0x500000002;
    *&v211[32] = xmmword_1E30474D0;
    *&v211[48] = 0;
    *&v211[52] = 0;
    re::DynamicArray<re::TargetWrite>::add((v107 + 224), v211);
    *v211 = v167;
    *&v211[8] = v168;
    *&v211[16] = 0x500000003;
    *&v211[32] = xmmword_1E30474D0;
    *&v211[48] = 0;
    *&v211[52] = 0;
    re::DynamicArray<re::TargetWrite>::add((v107 + 224), v211);
    re::RenderGraphComputeNodeBase::configure(v107, v82, a3, v83);
    *(v107 + 125) = v135;
    *(v107 + 124) = v134;
    if (v13[1] == 1)
    {
      if ((v127 & 1) == 0)
      {
        v108 = re::RenderGraph::addNode<re::SFBSystemShellComputeNode>(v78, "VCADownsampleCompute");
        re::AssetHandle::operator=(v108 + 264, v136 + 11);
        *v211 = "kernelSFBBilerpDownsample4x";
        *&v211[8] = 27;
        re::DynamicString::operator=((v108 + 288), v211);
        *(v108 + 108) = 1;
        *(v108 + 106) = v138.i32[0];
        *(v108 + 107) = v128;
        *(v108 + 55) = 0x100000001;
        *(v108 + 109) = v138.i32[1];
        *v211 = v124;
        *&v211[8] = v130;
        *&v211[16] = 0;
        *&v211[24] = 2;
        re::DynamicArray<re::TargetRead>::add((v108 + 184), v211);
        *v211 = v123;
        *&v211[8] = v133;
        *&v211[12] = v131;
        *&v211[16] = 0x500000001;
        *&v211[32] = xmmword_1E30474D0;
        *&v211[48] = 0;
        *&v211[56] = 0;
        *&v211[52] = 0;
        v109 = re::DynamicArray<re::TargetWrite>::add((v108 + 224), v211);
        (*(*v108 + 80))(v108, v82, a3, v137, v109);
      }

      v110 = re::RenderGraph::addNode<re::SFBSystemShellBlurTAANode>(v78, "VCABlurAndFilterAndBlendPassthrough");
      re::AssetHandle::operator=(v110 + 264, v136 + 11);
      if (v13[33])
      {
        v111 = "kernelSFBVCANoBlurAndFilterAndBlendPassthrough";
      }

      else
      {
        v111 = "kernelSFBVCABlurAndFilterAndBlendPassthrough";
      }

      v112 = 44;
      if (v13[33])
      {
        v112 = 46;
      }

      *v211 = v111;
      *&v211[8] = v112;
      re::DynamicString::operator=((v110 + 288), v211);
      *(v110 + 108) = 1;
      *(v110 + 106) = v138.i32[0];
      *(v110 + 107) = v128;
      *(v110 + 109) = v138.i32[1];
      *(v110 + 55) = 0x100000001;
      *v211 = v123;
      *&v211[8] = v133;
      *&v211[12] = v131;
      *&v211[16] = 0;
      *&v211[24] = 2;
      re::DynamicArray<re::TargetRead>::add((v110 + 184), v211);
      *v211 = v167;
      *&v211[8] = v168;
      *&v211[16] = 1;
      *&v211[20] = 0;
      v211[22] = 0;
      *&v211[24] = 2;
      re::DynamicArray<re::TargetRead>::add((v110 + 184), v211);
      *v211 = v122;
      *&v211[8] = v126;
      *&v211[12] = v125;
      *&v211[16] = 2;
      *&v211[20] = 0;
      v211[22] = 0;
      *&v211[24] = 0x500000002;
      re::DynamicArray<re::TargetRead>::add((v110 + 184), v211);
      *v211 = v121;
      *&v211[8] = v120;
      *&v211[12] = v119;
      *&v211[16] = 0x500000003;
      *&v211[32] = xmmword_1E30474D0;
      *&v211[48] = 0;
      *&v211[52] = 0;
      re::DynamicArray<re::TargetWrite>::add((v110 + 224), v211);
      *v211 = v149;
      *&v211[8] = v150;
      *&v211[16] = 0x500000005;
      *&v211[32] = xmmword_1E30474D0;
      *&v211[48] = 0;
      *&v211[52] = 0;
      re::DynamicArray<re::TargetWrite>::add((v110 + 224), v211);
      *v211 = v147;
      *&v211[8] = v148;
      *&v211[16] = 0x500000006;
      *&v211[32] = xmmword_1E30474D0;
      *&v211[48] = 0;
      *&v211[52] = 0;
      re::DynamicArray<re::TargetWrite>::add((v110 + 224), v211);
      v113 = 8 * v138.i32[1] + 15;
      *(v110 + 9) = v113 & 0xFFFFFFF0;
      *v211 = 0;
      *&v211[4] = v113 & 0xFFFFFFF0;
      re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureIndexAndStage>::add(v110 + 56, v211);
      (*(*v110 + 80))(v110, v82, a3, v137);
      *(v110 + 496) = 1;
      v114 = vrev64_s32(v138);
      *(v110 + 500) = v114;
      v115 = re::RenderGraph::addNode<re::SFBSystemShellReprojectNode>(v78, "reprojectVCABlur");
      re::AssetHandle::operator=(v115 + 264, v136 + 11);
      *v211 = "kernelSFBReprojectAndBlendPassthrough";
      *&v211[8] = 37;
      re::DynamicString::operator=((v115 + 288), v211);
      *(v115 + 108) = 1;
      *(v115 + 106) = v138.i32[0];
      *(v115 + 107) = v128;
      *(v115 + 109) = v138.i32[1];
      *(v115 + 55) = 0x100000001;
      *v211 = v122;
      *&v211[8] = v126;
      *&v211[12] = v125;
      *&v211[16] = 0;
      *&v211[24] = 2;
      re::DynamicArray<re::TargetRead>::add((v115 + 184), v211);
      *v211 = v121;
      *&v211[8] = v120;
      *&v211[12] = v119;
      *&v211[16] = 1;
      *&v211[20] = 0;
      v211[22] = 0;
      *&v211[24] = 2;
      re::DynamicArray<re::TargetRead>::add((v115 + 184), v211);
      *v211 = v167;
      *&v211[8] = v168;
      *&v211[16] = 4;
      *&v211[20] = 0;
      v211[22] = 0;
      *&v211[24] = 2;
      re::DynamicArray<re::TargetRead>::add((v115 + 184), v211);
      *v211 = v149;
      *&v211[8] = v150;
      *&v211[16] = 0x500000002;
      *&v211[32] = xmmword_1E30474D0;
      *&v211[48] = 0;
      *&v211[52] = 0;
      re::DynamicArray<re::TargetWrite>::add((v115 + 224), v211);
      *v211 = v147;
      *&v211[8] = v148;
      *&v211[16] = 0x500000005;
      *&v211[32] = xmmword_1E30474D0;
      *&v211[48] = 0;
      *&v211[52] = 0;
      re::DynamicArray<re::TargetWrite>::add((v115 + 224), v211);
      re::RenderGraphComputeNodeBase::configure(v115, v141, __sa, v137);
      *(v115 + 62) = v114;
    }

    else
    {
      v116 = re::RenderGraph::addNode<re::SFBSystemShellCreateTextureAliasNode>(v78, "SetVCAPassthroughSRGBAlias");
      *v211 = v167;
      *&v211[8] = v168;
      *&v211[16] = 0;
      *&v211[24] = 2;
      re::DynamicArray<re::TargetRead>::add((v116 + 184), v211);
      *(v116 + 34) = 0x60DF09E0AF8AD07;
    }
  }
}

void re::SFBSystemShellBlurProvider::registerProviderCommon(re::SFBSystemShellBlurProvider *this, re::RenderGraphManager *a2, const re::AssetHandle *a3, _anonymous_namespace_ *a4, re::ProviderHandle *a5)
{
  v6 = a3;
  v9 = re::globalAllocators(this);
  v10 = (*(*v9[2] + 32))(v9[2], 1632, 16);
  re::RenderGraphSFBSystemShellBlurProvider::RenderGraphSFBSystemShellBlurProvider(v10, v13);
  if (*&v13[0])
  {
    if (BYTE8(v13[0]))
    {
      (*(**&v13[0] + 40))();
    }

    memset(v13, 0, sizeof(v13));
  }

  re::AssetHandle::operator=(v10 + 88, a2);
  *(v10 + 1617) = v6;
  re::RenderGraphManager::addProviderInternal(this, "Camera", v10, -58, 1, v12);
  v11 = re::StringID::operator=(a4, v12);
  *(a4 + 2) = v12[2];
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }
}

void re::RenderGraphSFBSystemShellBlurProvider::~RenderGraphSFBSystemShellBlurProvider(re::RenderGraphSFBSystemShellBlurProvider *this)
{
  re::RenderGraphSFBSystemShellBlurProvider::~RenderGraphSFBSystemShellBlurProvider(this);

  JUMPOUT(0x1E6906520);
}

{
  *(this + 18) = 0;
  ++*(this + 38);
  re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit(this + 196);
  *(this + 16) = 0;
  *(this + 34) = 0;
  re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit(this + 196);
  *(this + 18) = 0;
  ++*(this + 38);
  re::AssetHandle::~AssetHandle((this + 88));
  re::AssetHandle::~AssetHandle((this + 64));
  re::AssetHandle::~AssetHandle((this + 40));
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));
}

uint64_t re::DynamicOverflowArray<re::DynamicArray<re::VCARenderData::FrustumId>,4ul>::setCapacity(uint64_t *a1, unint64_t a2)
{
  result = *a1;
  if (a2 && !result)
  {
    result = re::DynamicOverflowArray<re::DynamicArray<re::VCARenderData::FrustumId>,4ul>::setCapacity(a1, a2);
    v6 = *(a1 + 4) + 2;
LABEL_4:
    *(a1 + 4) = v6;
    return result;
  }

  v7 = *(a1 + 4);
  if (v7)
  {
    v8 = 4;
  }

  else
  {
    v8 = a1[3];
  }

  if (v8 != a2)
  {
    v9 = a1[1];
    if (v9 <= a2 && (a2 > 4 || (v7 & 1) == 0))
    {
      if (a2 < 5)
      {
        v14 = a1[4];
        if (v7)
        {
          v15 = (a1 + 3);
        }

        else
        {
          v15 = a1[4];
        }

        if (v9)
        {
          v16 = v15 + 40 * v9;
          v17 = a1 + 7;
          do
          {
            *v17 = 0;
            *(v17 - 3) = 0;
            *(v17 - 2) = 0;
            *(v17 - 4) = 0;
            *(v17 - 2) = 0;
            v18 = *(v15 + 8);
            *(v17 - 4) = *v15;
            *(v17 - 3) = v18;
            *v15 = 0;
            *(v15 + 8) = 0;
            v19 = *(v17 - 2);
            *(v17 - 2) = *(v15 + 16);
            *(v15 + 16) = v19;
            v20 = *v17;
            *v17 = *(v15 + 32);
            *(v15 + 32) = v20;
            ++*(v15 + 24);
            ++*(v17 - 2);
            re::DynamicArray<unsigned long>::deinit(v15);
            v15 += 40;
            v17 += 5;
          }

          while (v15 != v16);
          result = *a1;
        }

        result = (*(*result + 40))(result, v14);
        v6 = *(a1 + 4) | 1;
        goto LABEL_4;
      }

      if (is_mul_ok(a2, 0x28uLL))
      {
        v2 = 40 * a2;
        result = (*(*result + 32))(result, 40 * a2, 8);
        if (result)
        {
          v11 = result;
          v12 = *(a1 + 4);
          if (v12)
          {
            v13 = (a1 + 3);
          }

          else
          {
            v13 = a1[4];
          }

          v21 = a1[1];
          if (v21)
          {
            v22 = v13 + 40 * v21;
            v23 = (result + 32);
            do
            {
              *v23 = 0;
              *(v23 - 3) = 0;
              *(v23 - 2) = 0;
              *(v23 - 4) = 0;
              *(v23 - 2) = 0;
              v24 = *(v13 + 8);
              *(v23 - 4) = *v13;
              *(v23 - 3) = v24;
              *v13 = 0;
              *(v13 + 8) = 0;
              v25 = *(v23 - 2);
              *(v23 - 2) = *(v13 + 16);
              *(v13 + 16) = v25;
              v26 = *v23;
              *v23 = *(v13 + 32);
              *(v13 + 32) = v26;
              ++*(v13 + 24);
              ++*(v23 - 2);
              result = re::DynamicArray<unsigned long>::deinit(v13);
              v13 += 40;
              v23 += 5;
            }

            while (v13 != v22);
            v12 = *(a1 + 4);
          }

          if ((v12 & 1) == 0)
          {
            result = (*(**a1 + 40))(*a1, a1[4]);
            v12 = *(a1 + 4);
          }

          *(a1 + 4) = v12 & 0xFFFFFFFE;
          a1[3] = a2;
          a1[4] = v11;
          return result;
        }
      }

      else
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 40, a2);
        _os_crash();
        __break(1u);
      }

      re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*a1 + 8));
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::BlurPlanesRenderFrameData const*,4ul>::add(_anonymous_namespace_ *result, void *a2)
{
  v3 = result;
  if (!*result)
  {
    v10 = *(v3 + 1);
    result = re::DynamicOverflowArray<re::internal::TimelineTreeInfo const*,4ul>::setCapacity(v3, v10 + 1);
    v11 = *(v3 + 4) + 2;
    *(v3 + 4) = v11;
    if ((v11 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    v12 = (v3 + 24);
    goto LABEL_19;
  }

  v4 = *(result + 1);
  v5 = *(result + 4);
  if ((v5 & 1) == 0)
  {
    v6 = *(result + 3);
    v8 = v4 >= v6;
    v7 = v4 + 1;
    v8 = !v8 || v6 >= v7;
    if (!v8)
    {
      v9 = 2 * v6;
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v7 = v4 + 1;
  if (v7 < 5)
  {
LABEL_11:
    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  v9 = 8;
LABEL_14:
  if (v9 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v9;
  }

  result = re::DynamicOverflowArray<re::internal::TimelineTreeInfo const*,4ul>::setCapacity(result, v13);
  if (*(v3 + 4))
  {
    goto LABEL_18;
  }

LABEL_12:
  v12 = *(v3 + 4);
LABEL_19:
  v14 = *(v3 + 1);
  v12[v14] = *a2;
  *(v3 + 1) = v14 + 1;
  *(v3 + 4) += 2;
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::BlurPlaneTypeData>::add(_anonymous_namespace_ *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*result)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        result = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  *(*(v3 + 4) + 8 * v5) = *a2;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

void re::CameraProjFrustums::~CameraProjFrustums(re::CameraProjFrustums *this)
{
  *(this + 2) = 0;
  ++*(this + 6);
}

{
  *(this + 2) = 0;
  ++*(this + 6);
  JUMPOUT(0x1E6906520);
}

void *re::DynamicArray<re::VCARenderData::FrustumId>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (is_mul_ok(a2, 0x70uLL))
        {
          v2 = 112 * a2;
          result = (*(*result + 32))(result, 112 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 112 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
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
      }

      else
      {
        result = re::DynamicArray<re::VCARenderData::FrustumId>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t re::DynamicOverflowArray<re::DynamicArray<re::BlurPlaneTypeData>,4ul>::deinit(uint64_t result)
{
  if (*result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      if (*(result + 16))
      {
        v3 = result + 24;
      }

      else
      {
        v3 = *(result + 32);
      }

      v4 = 40 * v2;
      do
      {
        result = re::DynamicArray<unsigned long>::deinit(v3);
        v3 += 40;
        v4 -= 40;
      }

      while (v4);
    }

    v5 = *(v1 + 4);
    if ((v5 & 1) == 0)
    {
      result = (*(**v1 + 40))(*v1, v1[4]);
      v5 = *(v1 + 4);
    }

    *v1 = 0;
    v1[1] = 0;
    *(v1 + 4) = (v5 | 1) + 2;
  }

  return result;
}

uint64_t re::RenderGraphSFBSystemShellBlurProvider::RenderGraphSFBSystemShellBlurProvider(uint64_t a1, const re::DynamicString *a2)
{
  re::DynamicString::DynamicString(&v4, a2);
  *a1 = &unk_1F5CC5700;
  re::DynamicString::DynamicString((a1 + 8), &v4);
  if (v4 && (v5 & 1) != 0)
  {
    (*(*v4 + 40))();
  }

  *a1 = &unk_1F5D15740;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 4;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 1568) = 0u;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = 0;
  *(a1 + 1604) = 0x7FFFFFFFLL;
  *(a1 + 1616) = 0;
  return a1;
}

double re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit(uint64_t *a1)
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

        v4 += 88;
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

uint64_t re::DynamicOverflowArray<re::DynamicArray<re::VCARenderData::FrustumId>,4ul>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  *(result + 8) = 0;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = result + 24;
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = *(result + 32);
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  v5 = 40 * v2;
  do
  {
    result = re::DynamicArray<unsigned long>::deinit(v4);
    v4 += 40;
    v5 -= 40;
  }

  while (v5);
  v3 = *(v1 + 16);
LABEL_8:
  *(v1 + 16) = v3 + 2;
  return result;
}

uint64_t re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::tryGet(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::findEntry<unsigned long long>(v5, a1, a2, v3 ^ (v3 >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 352 * v6 + 16;
  }
}

uint64_t re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::findEntry<unsigned long long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_5;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 352 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 352 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 352 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 352 * v8) & 0x7FFFFFFF;
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
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

_anonymous_namespace_ *re::SmallHashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,4ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::add(uint64_t a1, uint64_t *a2, void *__src, int a4)
{
  __srca[43] = *MEMORY[0x1E69E9840];
  if (!*(a1 + 1468))
  {
    v12 = *(a1 + 16);
    if (!v12)
    {
      v15 = *a2;
      memcpy(&__srca[1], __src, 0x150uLL);
LABEL_25:
      v22 = (a1 + 32 + 352 * v12);
      *v22 = v15;
      memcpy(v22 + 1, __srca, 0x158uLL);
      v24 = *(a1 + 16);
      ++*(a1 + 24);
      *(a1 + 16) = v24 + 1;
      if (v24 == -1)
      {
        re::internal::assertLog(6, v23, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, -1, 0);
        _os_crash();
        __break(1u);
      }

      return (a1 + 32 + 352 * v24 + 16);
    }

    v13 = 352 * v12;
    v14 = (a1 + 32);
    v15 = *a2;
    result = (a1 + 48);
    v16 = 352 * v12;
    do
    {
      if (*(result - 2) == v15)
      {
        return result;
      }

      result = (result + 352);
      v16 -= 352;
    }

    while (v16);
    if ((v12 & 0xFFFFFFFC) == 0)
    {
      memcpy(&__srca[1], __src, 0x150uLL);
      if (v12 < 4)
      {
        goto LABEL_25;
      }

      re::internal::assertLog(4, v21, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
      result = _os_crash();
      __break(1u);
      return result;
    }

    if (!*(a1 + 1440))
    {
      v17 = *a1;
      if (!*a1)
      {
      }

      re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(a1 + 1440, v17, 8);
      v18 = *(a1 + 16);
      if (!v18)
      {
LABEL_19:
        *(a1 + 16) = 0;
        ++*(a1 + 24);
        if (a4)
        {
          goto LABEL_3;
        }

        goto LABEL_20;
      }

      v13 = 352 * v18;
    }

    do
    {
      memset(__srca, 0, 24);
      v19 = 0xBF58476D1CE4E5B9 * (*v14 ^ (*v14 >> 30));
      re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::findEntry<unsigned long long>(__srca, a1 + 1440, *v14, (0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) ^ ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) >> 31));
      if (HIDWORD(__srca[1]) == 0x7FFFFFFF)
      {
        v20 = re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1 + 1440, __srca[1], __srca[0]);
        *(v20 + 8) = *v14;
        memcpy((v20 + 16), v14 + 2, 0x150uLL);
        ++*(a1 + 1480);
      }

      v14 += 44;
      v13 -= 352;
    }

    while (v13);
    goto LABEL_19;
  }

  if (a4)
  {
LABEL_3:
    v8 = a1 + 1440;
    v9 = a2;
    v10 = __src;
  }

  else
  {
LABEL_20:
    v8 = a1 + 1440;
    v9 = a2;
    v10 = __src;
  }

  return re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(v8, v9, v10);
}

uint64_t re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(uint64_t a1, uint64_t *a2, const void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::findEntry<unsigned long long>(&v10, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 352 * HIDWORD(v11) + 16;
  }

  v7 = re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, v11, v10);
  *(v7 + 8) = *a2;
  v8 = v7 + 16;
  memcpy((v7 + 16), a3, 0x150uLL);
  ++*(a1 + 40);
  return v8;
}

void re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 352 * v10, 16);
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

uint64_t re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(v26, v9, v8);
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
            v17 = (v13 + 8);
            do
            {
              if ((*(v17 - 1) & 0x80000000) != 0)
              {
                v18 = 0xBF58476D1CE4E5B9 * (*v17 ^ (*v17 >> 30));
                v19 = re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31)) % *(a1 + 24));
                *(v19 + 8) = *v17;
                memcpy((v19 + 16), v17 + 1, 0x150uLL);
              }

              v17 += 44;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit(v26);
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
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 352 * v4);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 352 * v4);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = 352 * v4;
  *(v20 + v23) = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *(v20 + v23) = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v20 + 352 * v4;
}