void re::ProfilerDetailedHUDProcessor::~ProfilerDetailedHUDProcessor(re::ProfilerDetailedHUDProcessor *this)
{
  *this = &unk_1F5D0E5C8;
  v2 = (this + 16);
  re::DynamicString::deinit((this + 224));
  re::DynamicString::deinit((this + 192));
  re::DynamicString::deinit((this + 160));
  re::DynamicString::deinit((this + 128));
  re::DynamicString::deinit((this + 96));
  re::DynamicString::deinit((this + 64));
  re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v2);
}

{
  *this = &unk_1F5D0E5C8;
  v2 = (this + 16);
  re::DynamicString::deinit((this + 224));
  re::DynamicString::deinit((this + 192));
  re::DynamicString::deinit((this + 160));
  re::DynamicString::deinit((this + 128));
  re::DynamicString::deinit((this + 96));
  re::DynamicString::deinit((this + 64));
  re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v2);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphCallbackNode::execute(re::RenderGraphCallbackNode *this, re::RenderGraphContext *a2)
{
  v4 = *(a2 + 146);
  v5 = "N2re32CustomPostProcessRenderGraphDataE";
  if (("N2re32CustomPostProcessRenderGraphDataE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re32CustomPostProcessRenderGraphDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  if (*(v4 + 16))
  {
    v9 = (*(*(a2 + 5) + 48) + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
    v10 = *(*(v4 + 24) + 4 * (v9 % *(v4 + 40)));
    if (v10 != 0x7FFFFFFF)
    {
      v11 = *(v4 + 32);
      while (*(v11 + 24 * v10 + 8) != v9)
      {
        v10 = *(v11 + 24 * v10) & 0x7FFFFFFF;
        if (v10 == 0x7FFFFFFF)
        {
          return;
        }
      }

      v12 = *(v11 + 24 * v10 + 16);
      if (v12)
      {
        if (*(v12 + 8))
        {
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          *location = 0u;
          *v31 = 0u;
          v32 = 0;
          re::ObjCObject::operator=(location, (*(a2 + 1) + 208));
          v13 = [location[0] newEvent];
          [v13 setLabel_];
          v14 = re::RenderFrameBox::get((*(*(a2 + 1) + 112) + 328), *(*a2 + 40));
          v15 = *(re::RenderFrame::currentCommandBuffer(v14) + 2);
          [v15 encodeSignalEvent:v13 value:1];
          v16 = re::RenderFrameBox::get((*(*(a2 + 1) + 112) + 328), *(*a2 + 40));
          QueuedCommandBuffer = re::RenderFrame::createQueuedCommandBuffer(v16);
          re::ObjCObject::operator=(&location[1], (QueuedCommandBuffer + 16));
          v18 = @"CustomPostCommandBufferSplit";
          [location[1] setLabel:@"CustomPostCommandBufferSplit"];

          [location[1] encodeWaitForEvent:v13 value:1];
          v19 = (*(*this + 72))(this);
          if (v20)
          {
            re::RenderGraphContext::metalTexture(a2, v19, 0, 0, &v29);
            NS::SharedPtr<MTL::Texture>::operator=(&v32, &v29);
            if (v29)
            {
            }

            v21 = (*(*this + 64))(this);
            if (v22)
            {
              re::RenderGraphContext::metalTexture(a2, v21, 0, 0, &v29);
              NS::SharedPtr<MTL::Texture>::operator=(v31, &v29);
              if (v29)
              {
              }

              v23 = (*(*this + 64))(this);
              if (v24 > 1)
              {
                re::RenderGraphContext::metalTexture(a2, v23 + 32, 0, 0, &v29);
                NS::SharedPtr<MTL::Texture>::operator=(&v31[1], &v29);
                if (v29)
                {
                }

                v25 = *(v12 + 80);
                v34 = *(v12 + 64);
                v35 = v25;
                v26 = *(v12 + 112);
                v36 = *(v12 + 96);
                v37 = v26;
                v33 = *(*a2 + 8);
                v27 = *(v12 + 8);
                v27[2](v27, location);
                if (![location[1] status])
                {
                  [location[1] encodeSignalEvent:v13 value:2];
                  [location[1] encodeWaitForEvent:v13 value:2];

                  if (v13)
                  {
                  }

                  if (v32)
                  {

                    v32 = 0;
                  }

                  if (v31[1])
                  {

                    v31[1] = 0;
                  }

                  if (v31[0])
                  {

                    v31[0] = 0;
                  }

                  return;
                }

LABEL_35:
                re::internal::assertLog(4, v28, "assertion failure: '%s' (%s:line %i) User enqueued/committed custom post processing command buffer.", "0", "execute", 79);
                _os_crash();
                __break(1u);
                return;
              }

LABEL_34:
              re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, v24);
              _os_crash();
              __break(1u);
              goto LABEL_35;
            }
          }

          else
          {
            re::internal::assertLog(6, 0, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
            _os_crash();
            __break(1u);
          }

          re::internal::assertLog(6, v22, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
          _os_crash();
          __break(1u);
          goto LABEL_34;
        }
      }
    }
  }
}

void re::RenderGraphCallbackNode::~RenderGraphCallbackNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void *re::allocInfo_RenderGraphDummyNigiriNode(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_500, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_500))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BD7B0, "RenderGraphDummyNigiriNode");
    __cxa_guard_release(&_MergedGlobals_500);
  }

  return &unk_1EE1BD7B0;
}

void re::initInfo_RenderGraphDummyNigiriNode(re *this, re::IntrospectionBase *a2)
{
  v10[0] = 0xD15AF44980978ACCLL;
  v10[1] = "RenderGraphDummyNigiriNode";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1BD7A8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BD7A8);
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
      qword_1EE1BD7A0 = v8;
      __cxa_guard_release(&qword_1EE1BD7A8);
    }
  }

  *(this + 2) = 0x10800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1BD7A0;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphDummyNigiriNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphDummyNigiriNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphDummyNigiriNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphDummyNigiriNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v9 = v11;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::RenderGraphDummyNigiriNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *result = &unk_1F5CB45A8;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::RenderGraphDummyNigiriNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *result = &unk_1F5CB45A8;
  return result;
}

re::RenderGraphNode *re::RenderGraphNode::RenderGraphNode(re::RenderGraphNode *this)
{
  *this = &unk_1F5CB52A8;
  re::StringID::invalid((this + 8));
  *(this + 7) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 16) = 1;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 88) = 0;
  *this = &unk_1F5D11268;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 32) = 0;
  *(this + 32) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 0;
  *(this + 52) = 0;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 62) = 0;
  *(this + 232) = 0u;
  *(this + 216) = 0u;
  return this;
}

void re::encodeFullscreenDrawCall(re::DrawCall *a1, uint64_t a2, re::RenderGraphContext *a3, uint64_t a4, int a5, char *a6, char a7)
{
  if (a5)
  {
    v14 = re::RenderGraphDataStore::tryGet<re::TintContextData>(*(a3 + 146), *(*(a3 + 5) + 48));
    if (v14)
    {
      v15 = v14;
      re::RenderGraphContext::acquireManagedRenderCommandEncoder(v58, a3, 0);
      v19 = *(v15 + 16);
    }

    else
    {
      v20 = re::RenderGraphDataStore::tryGet<re::CameraData>(*(a3 + 146), *(*(a3 + 5) + 48));
      if (!v20)
      {
        goto LABEL_7;
      }

      v21 = v20;
      re::RenderGraphContext::acquireManagedRenderCommandEncoder(v58, a3, 0);
      v19 = *(v21 + 816);
    }

    LODWORD(v16) = DWORD1(v19);
    LODWORD(v18) = HIDWORD(v19);
    LODWORD(v17) = DWORD2(v19);
    [*v58 setBlendColorRed:*&v19 green:v16 blue:v17 alpha:v18];
    re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v58);
  }

LABEL_7:
  re::DrawCallRef::DrawCallRef(&v65, a1);
  v22 = re::RenderGraphDataStore::tryGet<re::CameraMatrices>(*(a3 + 146), *(*(a3 + 5) + 48));
  if (v22)
  {
    v23 = v22;
    *(a1 + 9) = *(v22 + 160);
    *&v58[8] = vdupq_n_s64(1uLL);
    *v58 = &v65;
    *&v58[24] = &v66;
    v59 = *&v58[8];
    *&v60[8] = *&v58[8];
    *v60 = &v67;
    v61 = &v68;
    v62 = *&v58[8];
    v63 = &v69;
    v64 = *&v58[8];
    v71 = 0u;
    memset(v70, 0, sizeof(v70));
    re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs(a3, v70);
    *&v71 = 0;
    v44 = a2;
    v45 = v58;
    v24 = *(v23 + 80);
    v46 = *(v23 + 40);
    v47 = v24;
    v48 = 0;
    v49 = *(v23 + 160);
    v50 = 0;
    v51 = 0;
    v52 = *a6;
    if (v52 == 1)
    {
      v53 = *(a6 + 1);
      v54 = a6[17];
    }

    v55 = 0;
    v56 = a4;
    v57 = 0;
    re::RenderGraphContext::encodeDrawCalls(a3, v70, &v44);
LABEL_11:
    if (a5)
    {
      re::RenderGraphContext::acquireManagedRenderCommandEncoder(v58, a3, 0);
      [*v58 setBlendColorRed:0.0 green:0.0 blue:0.0 alpha:0.0];
      re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v58);
    }

    return;
  }

  v25 = re::RenderGraphDataStore::tryGet<re::CameraData>(*(a3 + 146), *(*(a3 + 5) + 48));
  v43 = 0;
  v40 = 0;
  memset(v41, 0, sizeof(v41));
  v42 = 0;
  memset(v38, 0, sizeof(v38));
  v39 = 0;
  if (!v25)
  {
    *v58 = xmmword_1E3047670;
    *&v58[16] = xmmword_1E3047680;
    v59 = xmmword_1E30476A0;
    *v60 = xmmword_1E30474D0;
    re::DynamicArray<re::Matrix4x4<float>>::add(v38, v58);
    *v58 = xmmword_1E3047670;
    *&v58[16] = xmmword_1E3047680;
    v59 = xmmword_1E30476A0;
    *v60 = xmmword_1E30474D0;
    re::DynamicArray<re::Matrix4x4<float>>::add(v41, v58);
    v36 = 1;
    goto LABEL_24;
  }

  v26 = v25;
  v37 = a7;
  if (!*(v25 + 128))
  {
LABEL_22:
    v36 = *(v26 + 890);
    a7 = v37;
LABEL_24:
    *(a1 + 9) = v36;
    *&v58[8] = vdupq_n_s64(1uLL);
    *v58 = &v65;
    *&v58[24] = &v66;
    v59 = *&v58[8];
    *&v60[8] = *&v58[8];
    *v60 = &v67;
    v61 = &v68;
    v62 = *&v58[8];
    v63 = &v69;
    v64 = *&v58[8];
    v44 = a2;
    v45 = v58;
    v46 = v43;
    v47 = v40;
    v48 = 0;
    v49 = v36;
    v50 = 0;
    v51 = 0;
    v52 = *a6;
    if (v52 == 1)
    {
      v53 = *(a6 + 1);
      v54 = a6[17];
    }

    v55 = a7;
    v56 = a4;
    v57 = 0;
    re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs(a3, v70);
    re::RenderGraphContext::encodeDrawCalls(a3, v70, &v44);
    if (v38[0] && v40)
    {
      (*(*v38[0] + 40))();
    }

    if (v41[0] && v43)
    {
      (*(*v41[0] + 40))();
    }

    goto LABEL_11;
  }

  v27 = 0;
  v28 = 0;
  while (1)
  {
    v29 = v26 + 144 + 240 * v27;
    if (*(v29 + 80) == 1)
    {
      v30 = *(v29 + 96);
      v31 = *(v29 + 112);
      v32 = *(v29 + 144);
      v59 = *(v29 + 128);
      *v60 = v32;
      *v58 = v30;
      *&v58[16] = v31;
    }

    else
    {
      re::Projection::cullingProjectionMatrix(v29, v58);
    }

    *&v34 = re::DynamicArray<re::Matrix4x4<float>>::add(v38, v58).n128_u64[0];
    v35 = *(v26 + 48);
    if (v35 <= v27)
    {
      break;
    }

    re::RenderCamera::computeInverseTransform((v26 + 64 + 32 * v27), v58);
    re::DynamicArray<re::Matrix4x4<float>>::add(v41, v58);
    v27 = ++v28;
    if (*(v26 + 128) <= v28)
    {
      goto LABEL_22;
    }
  }

  re::internal::assertLog(6, v33, v34, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v27, v35);
  _os_crash();
  __break(1u);
}

re::RenderGraphFullscreenNode *re::RenderGraphFullscreenNode::RenderGraphFullscreenNode(re::RenderGraphFullscreenNode *this, const char *a2)
{
  v3 = re::RenderGraphNode::RenderGraphNode(this, a2);
  *(v3 + 66) = 1;
  *(v3 + 268) = 0;
  *v3 = &unk_1F5D0E6E0;
  *(v3 + 17) = 0u;
  *(v3 + 18) = 0u;
  *(v3 + 19) = 0u;
  *(v3 + 40) = 0;
  re::DynamicString::setCapacity(this + 37, 0);
  *(this + 41) = 0;
  *(this + 168) = 0;
  *(this + 58) = 0;
  *(this + 43) = 0;
  *(this + 44) = 0;
  *(this + 360) = 0;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 104) = 0;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 114) = 0;
  return this;
}

void re::RenderGraphFullscreenNode::configure(re::RenderGraphFullscreenNode *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  if (*(this + 35))
  {
    re::AssetHandle::loadAsync((this + 272));
  }

  re::RenderGraphNode::configure(this, a2, a3, a4);
}

void re::RenderGraphFullscreenNode::executeInternal(re::RenderGraphFullscreenNode *this, re::RenderGraphContext *a2, const re::AssetHandle *a3)
{
  v81 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v77, 5038, 0);
  v6 = *(this + 41);
  if (!v6)
  {
    v6 = re::AssetHandle::loadedAsset<re::MaterialAsset>((this + 272));
    *(this + 41) = v6;
    if (!v6)
    {
      goto LABEL_91;
    }
  }

  v7 = *(v6 + 1776);
  if (re::RenderGraphDataStore::tryGet<re::SceneScope>(*(a2 + 146), *(*(a2 + 5) + 48)))
  {
    if ((atomic_load_explicit(&qword_1EE1BD850, memory_order_acquire) & 1) == 0)
    {
      v70 = __cxa_guard_acquire(&qword_1EE1BD850);
      if (v70)
      {
        qword_1EE1BD848 = re::hashStringWithLength(v70, v71);
        __cxa_guard_release(&qword_1EE1BD850);
      }
    }

    v8 = 0x9E3779B97F4A7C17;
    v9 = qword_1EE1BD848;
    v10 = strlen(*(this + 4));
    if (v10)
    {
      MurmurHash3_x64_128(*(this + 4), v10, 0, v78);
      v8 = ((*&v78[1] - 0x61C8864680B583E9 + (*v78 << 6) + (*v78 >> 2)) ^ *v78) - 0x61C8864680B583E9;
    }

    v11 = re::RenderGraphDataStore::tryGet<re::DynamicFunctionConstantsData>(*(a2 + 146), ((v9 >> 2) + (v9 << 6) + v8) ^ v9);
    if (v11)
    {
      v12 = v11 + 8;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a3 + 1);
  if (v13)
  {
    v14 = *(v13 + 792);
  }

  else
  {
    v14 = 0;
  }

  v15 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
  MaterialTableForAsset = re::RenderGraphContext::getMaterialTableForAsset(a2, v14 ^ (v15 >> 31) ^ v15);
  re::RenderGraphContext::makeFullscreenDrawCall(a2, v7, "FullscreenDrawCall", MaterialTableForAsset, *(this + 43), *(this + 44), v12, *(this + 48), v78);
  v17 = v80;
  v18 = re::Hash<re::DynamicString>::operator()(&v76, this + 296);
  v19 = re::MaterialParameterTableLayers::resolveTechniqueIndices(v17, v18);
  if (!v20)
  {
    re::internal::assertLog(6, 0, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_59;
  }

  v79 = *v19;
  if (v79 == -1)
  {
    goto LABEL_91;
  }

  v21 = *(this + 51);
  if (v21)
  {
    v22 = 0;
    while (1)
    {
      v23 = *(this + 53) + 56 * v22;
      if (*(v23 + 40) != -1 && *(v23 + 44) != -1)
      {
        break;
      }

LABEL_34:
      if (v21 <= ++v22)
      {
        goto LABEL_35;
      }
    }

    re::RenderGraphContext::metalTexture(a2, v23 + 32, *(v23 + 48), *(v23 + 50), &v76);
    v24 = *(v23 + 8);
    if (v24)
    {
      v26 = *(v23 + 16);
      if (!v26)
      {
        v30 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_31:
        v31 = *a2;
        v75 = v30;
        re::DynamicTextureTableAdd((v31 + 368), &v75, &v76);
        if (v76)
        {
        }

        v21 = *(this + 51);
        goto LABEL_34;
      }

      LOBYTE(v25) = *v26;
    }

    else
    {
      v25 = v24 >> 8;
      v26 = (v23 + 9);
    }

    if (v25)
    {
      v25 = v25;
      v27 = v26[1];
      if (v27)
      {
        v28 = v26 + 2;
        do
        {
          v25 = 31 * v25 + v27;
          v29 = *v28++;
          v27 = v29;
        }

        while (v29);
      }

      v30 = v25 & 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v30 = 0;
    }

    goto LABEL_31;
  }

LABEL_35:
  v32 = *(this + 56);
  if (v32)
  {
    v33 = 0;
    while (1)
    {
      v34 = *(this + 58) + 56 * v33;
      if (*(v34 + 40) == -1 || *(v34 + 44) == -1)
      {
        goto LABEL_51;
      }

      v35 = re::RenderGraphContext::metalBuffer(a2, v34 + 32);
      v36 = *(v34 + 8);
      if ((v36 & 1) == 0)
      {
        break;
      }

      v38 = *(v34 + 16);
      if (v38)
      {
        LOBYTE(v37) = *v38;
LABEL_43:
        if (v37)
        {
          v37 = v37;
          v39 = v38[1];
          if (v39)
          {
            v40 = v38 + 2;
            do
            {
              v37 = 31 * v37 + v39;
              v41 = *v40++;
              v39 = v41;
            }

            while (v41);
          }

          v42 = v37 & 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v42 = 0;
        }

        goto LABEL_50;
      }

      v42 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_50:
      v43 = *a2;
      v76 = v42;
      re::BufferTable::setBuffer((v43 + 480), &v76, v35);
      v32 = *(this + 56);
LABEL_51:
      if (v32 <= ++v33)
      {
        goto LABEL_52;
      }
    }

    v37 = v36 >> 8;
    v38 = (v34 + 9);
    goto LABEL_43;
  }

LABEL_52:
  v44 = *(this + 38);
  if (v44)
  {
    v45 = *(this + 39);
  }

  else
  {
    v45 = this + 305;
  }

  if (*(a2 + 338))
  {
LABEL_59:
    v46 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(a2 + 169, *(this + 2), v45);
    if ((*(this + 38) & 1) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_60;
  }

  v46 = 0;
  if ((v44 & 1) == 0)
  {
LABEL_57:
    v47 = this + 305;
    goto LABEL_61;
  }

LABEL_60:
  v47 = *(this + 39);
LABEL_61:
  v48 = *(this + 337);
  v72 = *(this + 360);
  if (v72 == 1)
  {
    v74 = *(this + 377);
    v73 = *(this + 361);
  }

  re::encodeFullscreenDrawCall(v78, v47, a2, v46, v48, &v72, *(this + 336));
  if (*(this + 51))
  {
    v50 = 0;
    while (1)
    {
      v51 = *(this + 53) + 56 * v50;
      v52 = *(v51 + 8);
      if ((v52 & 1) == 0)
      {
        break;
      }

      v54 = *(v51 + 16);
      if (v54)
      {
        LOBYTE(v51) = *v54;
LABEL_69:
        if (v51)
        {
          v51 = v51;
          v55 = v54[1];
          if (v55)
          {
            v56 = v54 + 2;
            do
            {
              v51 = 31 * v51 + v55;
              v57 = *v56++;
              v55 = v57;
            }

            while (v57);
          }

          v58 = v51 & 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v58 = 0;
        }

        goto LABEL_76;
      }

      v58 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_76:
      v59 = *a2;
      v76 = v58;
      re::DynamicTextureTableRemove((v59 + 368), &v76, v49);
      if (*(this + 51) <= ++v50)
      {
        goto LABEL_77;
      }
    }

    v53 = v52 >> 8;
    v54 = (v51 + 9);
    LOBYTE(v51) = v53;
    goto LABEL_69;
  }

LABEL_77:
  if (*(this + 56))
  {
    v60 = 0;
    while (1)
    {
      v61 = *(this + 58) + 56 * v60;
      v62 = *(v61 + 8);
      if ((v62 & 1) == 0)
      {
        break;
      }

      v64 = *(v61 + 16);
      if (v64)
      {
        LOBYTE(v61) = *v64;
LABEL_83:
        if (v61)
        {
          v61 = v61;
          v65 = v64[1];
          if (v65)
          {
            v66 = v64 + 2;
            do
            {
              v61 = 31 * v61 + v65;
              v67 = *v66++;
              v65 = v67;
            }

            while (v67);
          }

          v68 = v61 & 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v68 = 0;
        }

        goto LABEL_90;
      }

      v68 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_90:
      v69 = *a2;
      v76 = v68;
      re::BufferTable::removeBuffer((v69 + 480), &v76);
      if (*(this + 56) <= ++v60)
      {
        goto LABEL_91;
      }
    }

    v63 = v62 >> 8;
    v64 = (v61 + 9);
    LOBYTE(v61) = v63;
    goto LABEL_83;
  }

LABEL_91:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v77);
}

double re::RenderGraphFullscreenNode::setRenderGraphTextureCommand(uint64_t a1, __n128 *a2)
{
  re::DynamicArray<re::SetRenderGraphTextureCommand>::add((a1 + 392), a2);
  v5 = a2[2];
  v6 = 0;
  v7 = 2;
  *&result = re::DynamicArray<re::TargetRead>::add((a1 + 184), &v5).n128_u64[0];
  return result;
}

double re::DynamicArray<re::SetRenderGraphTextureCommand>::add(_anonymous_namespace_ *this, re::DynamicString *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::SetRenderGraphTextureCommand>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = re::DynamicString::DynamicString((*(this + 4) + 56 * v4), a2);
  *(v5 + 4) = 0;
  *(v5 + 5) = -1;
  *(v5 + 4) = *(a2 + 4);
  result = *(a2 + 5);
  *(v5 + 5) = result;
  v7 = *(a2 + 24);
  *(v5 + 50) = *(a2 + 50);
  *(v5 + 24) = v7;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::RenderGraphFullscreenNode::getMaterialParameterTables(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 280))
  {
    v4 = re::AssetHandle::loadedAsset<re::MaterialAsset>((a1 + 272));
    if (v4)
    {
      v5 = *(v4 + 1784);
      if (v5)
      {
        v6 = *(a1 + 280);
        if (v6)
        {
          v7 = *(v6 + 792);
        }

        else
        {
          v7 = 0;
        }

        v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
        v10 = v7 ^ (v8 >> 31) ^ v8;
        re::MaterialParameterBlock::createMaterialParameterTableIfNeeded(v5, &v9);
        re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(a2, &v10, &v9);
        if (v9)
        {
        }
      }
    }
  }
}

uint64_t re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(uint64_t a1, unint64_t *a2, void *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1, a2, *a2, &v8);
  if (HIDWORD(v9) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 24 * HIDWORD(v9) + 16;
  }

  v6 = re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, v9, v8);
  *(v6 + 16) = *a3;
  result = v6 + 16;
  *(result - 8) = *a2;
  *a3 = 0;
  ++*(a1 + 40);
  return result;
}

void re::IntrospectionInfo<re::DynamicArray<re::SetRenderGraphTextureCommand>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1BD898, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1BD898);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1BD920);
      qword_1EE1BD920 = &unk_1F5D0E788;
      __cxa_guard_release(&qword_1EE1BD898);
    }
  }

  if ((_MergedGlobals_501 & 1) == 0)
  {
    v1 = qword_1EE1BD878;
    if (qword_1EE1BD878 || (v1 = re::allocInfo_SetRenderGraphTextureCommand(a1), qword_1EE1BD878 = v1, re::initInfo_SetRenderGraphTextureCommand(v1, v2), (_MergedGlobals_501 & 1) == 0))
    {
      _MergedGlobals_501 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1BD920, 0);
      qword_1EE1BD930 = 0x2800000003;
      dword_1EE1BD938 = v3;
      word_1EE1BD93C = 0;
      *&xmmword_1EE1BD940 = 0;
      *(&xmmword_1EE1BD940 + 1) = 0xFFFFFFFFLL;
      qword_1EE1BD950 = v1;
      unk_1EE1BD958 = 0;
      qword_1EE1BD920 = &unk_1F5D0E788;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1BD920, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SetRenderGraphTextureCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SetRenderGraphTextureCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SetRenderGraphTextureCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SetRenderGraphTextureCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SetRenderGraphTextureCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SetRenderGraphTextureCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SetRenderGraphTextureCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SetRenderGraphTextureCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1BD940 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::SetRenderGraphBufferCommand>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1BD8A0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1BD8A0);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1BD960);
      qword_1EE1BD960 = &unk_1F5D0E820;
      __cxa_guard_release(&qword_1EE1BD8A0);
    }
  }

  if ((byte_1EE1BD841 & 1) == 0)
  {
    v1 = qword_1EE1BD890;
    if (qword_1EE1BD890 || (v1 = re::allocInfo_SetRenderGraphBufferCommand(a1), qword_1EE1BD890 = v1, re::initInfo_SetRenderGraphBufferCommand(v1, v2), (byte_1EE1BD841 & 1) == 0))
    {
      byte_1EE1BD841 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1BD960, 0);
      qword_1EE1BD970 = 0x2800000003;
      dword_1EE1BD978 = v3;
      word_1EE1BD97C = 0;
      *&xmmword_1EE1BD980 = 0;
      *(&xmmword_1EE1BD980 + 1) = 0xFFFFFFFFLL;
      qword_1EE1BD990 = v1;
      unk_1EE1BD998 = 0;
      qword_1EE1BD960 = &unk_1F5D0E820;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1BD960, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SetRenderGraphBufferCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SetRenderGraphBufferCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SetRenderGraphBufferCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SetRenderGraphBufferCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SetRenderGraphBufferCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SetRenderGraphBufferCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SetRenderGraphBufferCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SetRenderGraphBufferCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1BD980 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void *re::allocInfo_RenderGraphFullscreenNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BD860, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BD860))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BD9A0, "RenderGraphFullscreenNode");
    __cxa_guard_release(&qword_1EE1BD860);
  }

  return &unk_1EE1BD9A0;
}

void re::initInfo_RenderGraphFullscreenNode(re *this, re::IntrospectionBase *a2)
{
  v30[0] = 0x59B9C6E0BF4EAF6ALL;
  v30[1] = "RenderGraphFullscreenNode";
  if (v30[0])
  {
    if (v30[0])
    {
    }
  }

  *(this + 2) = v31;
  if ((atomic_load_explicit(&qword_1EE1BD858, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BD858);
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
      qword_1EE1BD8E8 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_AssetHandle(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "material";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x11000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1BD8F0 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::IntrospectionInfo<re::DynamicString>::get(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "techniqueName";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x12800000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1BD8F8 = v16;
      v17 = re::introspectionAllocator(v16);
      re::IntrospectionInfo<re::DynamicArray<re::SetRenderGraphTextureCommand>>::get(v17);
      v18 = (*(*v17 + 32))(v17, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "RenderGraphTextureCommands";
      *(v18 + 16) = &qword_1EE1BD920;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x18800000003;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE1BD900 = v18;
      v19 = re::introspectionAllocator(v18);
      re::IntrospectionInfo<re::DynamicArray<re::SetRenderGraphBufferCommand>>::get(v19);
      v20 = (*(*v19 + 32))(v19, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "RenderGraphBufferCommands";
      *(v20 + 16) = &qword_1EE1BD960;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x1B000000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1BD908 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::introspect_BOOL(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "tintBlendColor";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x15100000005;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1BD910 = v24;
      v25 = re::introspectionAllocator(v24);
      v27 = re::introspect_BOOL(1, v26);
      v28 = (*(*v25 + 32))(v25, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "setViewportToCoverEntireRenderTarget";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0x15000000006;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE1BD918 = v28;
      __cxa_guard_release(&qword_1EE1BD858);
    }
  }

  *(this + 2) = 0x1D800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1BD8E8;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphFullscreenNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphFullscreenNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphFullscreenNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphFullscreenNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v29 = v31;
}

void *re::allocInfo_SetRenderGraphTextureCommand(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BD868, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BD868))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BDA30, "SetRenderGraphTextureCommand");
    __cxa_guard_release(&qword_1EE1BD868);
  }

  return &unk_1EE1BDA30;
}

void re::initInfo_SetRenderGraphTextureCommand(re *this, re::IntrospectionBase *a2)
{
  v27[0] = 0xDF7850A971DCEE0CLL;
  v27[1] = "SetRenderGraphTextureCommand";
  if (v27[0])
  {
    if (v27[0])
    {
    }
  }

  *(this + 2) = v28;
  if ((atomic_load_explicit(&qword_1EE1BD870, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BD870);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "bindingName";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1BD8C0 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_RenderGraphTargetHandle(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "targetHandle";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1BD8C8 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_BOOL(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "makeStencilView";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x3000000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1BD8D0 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_BOOL(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "isOptional";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x3100000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1BD8D8 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_BOOL(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "makeArrayView";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x3200000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1BD8E0 = v25;
      __cxa_guard_release(&qword_1EE1BD870);
    }
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1BD8C0;
  *(this + 9) = re::internal::defaultConstruct<re::SetRenderGraphTextureCommand>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SetRenderGraphTextureCommand>;
  *(this + 13) = re::internal::defaultConstructV2<re::SetRenderGraphTextureCommand>;
  *(this + 14) = re::internal::defaultDestructV2<re::SetRenderGraphTextureCommand>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v26 = v28;
}

double re::internal::defaultConstruct<re::SetRenderGraphTextureCommand>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  re::DynamicString::setCapacity(a3, 0);
  *(a3 + 32) = 0;
  result = NAN;
  *(a3 + 40) = -1;
  *(a3 + 48) = 0;
  *(a3 + 50) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::SetRenderGraphTextureCommand>(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  re::DynamicString::setCapacity(a1, 0);
  *(a1 + 32) = 0;
  result = NAN;
  *(a1 + 40) = -1;
  *(a1 + 48) = 0;
  *(a1 + 50) = 0;
  return result;
}

void *re::allocInfo_SetRenderGraphBufferCommand(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BD880, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BD880))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BDAC0, "SetRenderGraphBufferCommand");
    __cxa_guard_release(&qword_1EE1BD880);
  }

  return &unk_1EE1BDAC0;
}

void re::initInfo_SetRenderGraphBufferCommand(re *this, re::IntrospectionBase *a2)
{
  v19[0] = 0x4EBFC76BCFC0BDAALL;
  v19[1] = "SetRenderGraphBufferCommand";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE1BD888, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BD888);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "bindingName";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1BD8A8 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_RenderGraphBufferHandle(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "bufferHandle";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1BD8B0 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_BOOL(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "isOptional";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x3000000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1BD8B8 = v17;
      __cxa_guard_release(&qword_1EE1BD888);
    }
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1BD8A8;
  *(this + 9) = re::internal::defaultConstruct<re::SetRenderGraphBufferCommand>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SetRenderGraphBufferCommand>;
  *(this + 13) = re::internal::defaultConstructV2<re::SetRenderGraphBufferCommand>;
  *(this + 14) = re::internal::defaultDestructV2<re::SetRenderGraphBufferCommand>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v18 = v20;
}

double re::internal::defaultConstruct<re::SetRenderGraphBufferCommand>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  re::DynamicString::setCapacity(a3, 0);
  *(a3 + 32) = 0;
  result = NAN;
  *(a3 + 40) = -1;
  *(a3 + 48) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::SetRenderGraphBufferCommand>(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  re::DynamicString::setCapacity(a1, 0);
  *(a1 + 32) = 0;
  result = NAN;
  *(a1 + 40) = -1;
  *(a1 + 48) = 0;
  return result;
}

void re::RenderGraphFullscreenNode::~RenderGraphFullscreenNode(id *this)
{
  re::RenderGraphFullscreenNode::~RenderGraphFullscreenNode(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5D0E6E0;
  re::DynamicArray<re::SetRenderGraphBufferCommand>::deinit((this + 54));
  re::DynamicArray<re::SetRenderGraphBufferCommand>::deinit((this + 49));
  re::DynamicString::deinit((this + 37));
  re::AssetHandle::~AssetHandle((this + 34));

  re::RenderGraphNode::~RenderGraphNode(this);
}

uint64_t re::DynamicArray<re::SetRenderGraphBufferCommand>::deinit(uint64_t a1)
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
        v5 = 56 * v4;
        do
        {
          re::DynamicString::deinit(v3);
          v3 = (v3 + 56);
          v5 -= 56;
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

uint64_t re::RenderGraphDataStore::tryGet<re::DynamicFunctionConstantsData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re28DynamicFunctionConstantsDataE";
  if (("N2re28DynamicFunctionConstantsDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re28DynamicFunctionConstantsDataE" & 0x7FFFFFFFFFFFFFFFLL);
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

void *re::DynamicArray<re::SetRenderGraphTextureCommand>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::SetRenderGraphTextureCommand>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::SetRenderGraphTextureCommand>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::SetRenderGraphTextureCommand>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SetRenderGraphTextureCommand>::setCapacity(v5, a2);
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
        v10 = v8 + 56 * v9;
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          *v11 = *v8;
          *v8 = 0;
          v12 = v11[2];
          v11[2] = *(v8 + 16);
          *(v8 + 16) = v12;
          v11[4] = 0;
          v11[5] = -1;
          *(v11 + 3) = *(v8 + 24);
          *(v8 + 24) = 0;
          v13 = v11[1];
          v11[1] = *(v8 + 8);
          *(v8 + 8) = v13;
          v11[5] = *(v8 + 40);
          LOWORD(v13) = *(v8 + 48);
          *(v11 + 50) = *(v8 + 50);
          *(v11 + 24) = v13;
          re::DynamicString::deinit(v8);
          v8 += 56;
          v11 += 7;
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

void *re::DynamicArray<re::SetRenderGraphBufferCommand>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SetRenderGraphBufferCommand>::setCapacity(v5, a2);
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
        v10 = v8 + 56 * v9;
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          *v11 = *v8;
          *v8 = 0;
          v12 = v11[2];
          v11[2] = *(v8 + 16);
          *(v8 + 16) = v12;
          v11[4] = 0;
          v11[5] = -1;
          *(v11 + 3) = *(v8 + 24);
          *(v8 + 24) = 0;
          v13 = v11[1];
          v11[1] = *(v8 + 8);
          *(v8 + 8) = v13;
          v11[5] = *(v8 + 40);
          *(v11 + 48) = *(v8 + 48);
          re::DynamicString::deinit(v8);
          v8 += 56;
          v11 += 7;
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

void *re::IntrospectionDynamicArray<re::SetRenderGraphTextureCommand>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::SetRenderGraphTextureCommand>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::SetRenderGraphTextureCommand>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::SetRenderGraphTextureCommand>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::SetRenderGraphBufferCommand>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::SetRenderGraphTextureCommand>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::SetRenderGraphTextureCommand>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::SetRenderGraphTextureCommand>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::SetRenderGraphTextureCommand>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::SetRenderGraphTextureCommand>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  re::DynamicString::setCapacity(&v14, 0);
  WORD4(v17) = 0;
  BYTE10(v17) = 0;
  v8 = *(a4 + 16);
  if (v8 >= *(a4 + 8))
  {
    re::DynamicArray<re::SetRenderGraphTextureCommand>::growCapacity(a4, v8 + 1);
    v8 = *(a4 + 16);
  }

  v9 = *(a4 + 32) + 56 * v8;
  *v9 = v14;
  v10 = v16;
  *(v9 + 8) = v15;
  *(v9 + 24) = v10;
  *(v9 + 32) = 0;
  *(v9 + 40) = -1;
  *(v9 + 48) = WORD4(v17);
  *(v9 + 50) = BYTE10(v17);
  v11 = *(a4 + 16);
  *(a4 + 16) = v11 + 1;
  ++*(a4 + 24);
  v12 = (*(a4 + 32) + 56 * v11);
  re::introspectionInitElement(a2, a3, a1[6], v12);
  return v12;
}

uint64_t re::IntrospectionDynamicArray<re::SetRenderGraphTextureCommand>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void re::DynamicArray<re::SetRenderGraphTextureCommand>::resize(_anonymous_namespace_ *a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 56 * a2;
    v9 = a2;
    do
    {
      re::DynamicString::deinit((*(v3 + 4) + v8));
      ++v9;
      v8 += 56;
    }

    while (v9 < *(v3 + 2));
  }

  else
  {
    if (*(a1 + 1) < a2)
    {
      a1 = re::DynamicArray<re::SetRenderGraphTextureCommand>::setCapacity(a1, a2);
      v4 = *(v3 + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 56 * v4;
      do
      {
        v7 = *(v3 + 4) + v6;
        *v7 = 0u;
        *(v7 + 16) = 0u;
        a1 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 32) = 0;
        *(v7 + 40) = -1;
        *(v7 + 48) = 0;
        v6 += 56;
        *(v7 + 50) = 0;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = a2;
  ++*(v3 + 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::SetRenderGraphTextureCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::SetRenderGraphTextureCommand>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::SetRenderGraphTextureCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 56 * v8;
      do
      {
        re::DynamicString::deinit(v9);
        v9 = (v9 + 56);
        v10 -= 56;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::SetRenderGraphBufferCommand>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::SetRenderGraphTextureCommand>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::SetRenderGraphTextureCommand>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 56 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 56;
        v14 -= 56;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SetRenderGraphTextureCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SetRenderGraphTextureCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SetRenderGraphTextureCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SetRenderGraphTextureCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::SetRenderGraphBufferCommand>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::SetRenderGraphBufferCommand>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::SetRenderGraphBufferCommand>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::SetRenderGraphBufferCommand>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::SetRenderGraphBufferCommand>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::SetRenderGraphBufferCommand>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::SetRenderGraphBufferCommand>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::SetRenderGraphBufferCommand>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::SetRenderGraphBufferCommand>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::SetRenderGraphBufferCommand>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v8 = re::DynamicString::setCapacity(&v21, 0);
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

        re::DynamicArray<re::SetRenderGraphBufferCommand>::setCapacity(a4, v15);
      }

      else
      {
        re::DynamicArray<re::SetRenderGraphBufferCommand>::setCapacity(a4, v11);
        ++*(a4 + 24);
      }
    }

    v10 = *(a4 + 16);
  }

  v16 = *(a4 + 32) + 56 * v10;
  *v16 = v21;
  v17 = v23;
  *(v16 + 8) = v22;
  *(v16 + 24) = v17;
  *(v16 + 32) = 0;
  *(v16 + 40) = -1;
  *(v16 + 48) = 0;
  v18 = *(a4 + 16);
  *(a4 + 16) = v18 + 1;
  ++*(a4 + 24);
  v19 = (*(a4 + 32) + 56 * v18);
  re::introspectionInitElement(a2, a3, a1[6], v19);
  return v19;
}

uint64_t re::IntrospectionDynamicArray<re::SetRenderGraphBufferCommand>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void re::DynamicArray<re::SetRenderGraphBufferCommand>::resize(_anonymous_namespace_ *a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 56 * a2;
    v9 = a2;
    do
    {
      re::DynamicString::deinit((*(v3 + 4) + v8));
      ++v9;
      v8 += 56;
    }

    while (v9 < *(v3 + 2));
  }

  else
  {
    if (*(a1 + 1) < a2)
    {
      a1 = re::DynamicArray<re::SetRenderGraphBufferCommand>::setCapacity(a1, a2);
      v4 = *(v3 + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 56 * v4;
      do
      {
        v7 = *(v3 + 4) + v6;
        *v7 = 0u;
        *(v7 + 16) = 0u;
        a1 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 32) = 0;
        *(v7 + 40) = -1;
        v6 += 56;
        *(v7 + 48) = 0;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = a2;
  ++*(v3 + 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::SetRenderGraphBufferCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::SetRenderGraphBufferCommand>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::SetRenderGraphBufferCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 56 * v8;
      do
      {
        re::DynamicString::deinit(v9);
        v9 = (v9 + 56);
        v10 -= 56;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::SetRenderGraphBufferCommand>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::SetRenderGraphBufferCommand>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::SetRenderGraphBufferCommand>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 56 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 56;
        v14 -= 56;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SetRenderGraphBufferCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SetRenderGraphBufferCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SetRenderGraphBufferCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SetRenderGraphBufferCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

re::RenderGraphFullscreenNode *re::RenderGraphFullscreenNode::RenderGraphFullscreenNode(re::RenderGraphFullscreenNode *this)
{
  v2 = re::RenderGraphNode::RenderGraphNode(this);
  *(v2 + 66) = 1;
  *(v2 + 268) = 0;
  *v2 = &unk_1F5D0E6E0;
  *(v2 + 17) = 0u;
  *(v2 + 18) = 0u;
  *(v2 + 19) = 0u;
  *(v2 + 40) = 0;
  re::DynamicString::setCapacity(this + 37, 0);
  *(this + 41) = 0;
  *(this + 168) = 0;
  *(this + 58) = 0;
  *(this + 43) = 0;
  *(this + 44) = 0;
  *(this + 360) = 0;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 104) = 0;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 114) = 0;
  return this;
}

void re::GenerateClusterAABBNode::configure(re::GenerateClusterAABBNode *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  if ((atomic_exchange(&re::GenerateClusterAABBNode::configure(char const*,char const*,re::RenderFrame &)::__FILE____LINE___logged, 1u) & 1) == 0)
  {
    v4 = *re::graphicsLogObjects(this);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "GenerateClusterAABBNode is deprecated and not implemented", v5, 2u);
    }
  }
}

void re::ComputeClusterProbeIntersectionNode::configure(re::ComputeClusterProbeIntersectionNode *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  if ((atomic_exchange(&re::ComputeClusterProbeIntersectionNode::configure(char const*,char const*,re::RenderFrame &)::__FILE____LINE___logged, 1u) & 1) == 0)
  {
    v4 = *re::graphicsLogObjects(this);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "ComputeClusterProbeIntersectionNode is deprecated and not implemented", v5, 2u);
    }
  }
}

void re::DebugClusterAABBNode::configure(re::DebugClusterAABBNode *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  if ((atomic_exchange(re::DebugClusterAABBNode::configure(char const*,char const*,re::RenderFrame &)::__FILE____LINE___logged, 1u) & 1) == 0)
  {
    v4 = *re::graphicsLogObjects(this);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "DebugClusterAABBNode is deprecated and not implemented", v5, 2u);
    }
  }
}

void *re::allocInfo_GenerateClusterAABBNode(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_502, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_502))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BDBC0, "GenerateClusterAABBNode");
    __cxa_guard_release(&_MergedGlobals_502);
  }

  return &unk_1EE1BDBC0;
}

void re::initInfo_GenerateClusterAABBNode(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0xE382A9FAED18684ELL;
  v18[1] = "GenerateClusterAABBNode";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1BDB58, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BDB58);
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
      qword_1EE1BDB90 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_AssetHandle(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "library";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x10800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1BDB98 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::IntrospectionInfo<re::DynamicString>::get(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "computeFunction";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x12000000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1BDBA0 = v16;
      __cxa_guard_release(&qword_1EE1BDB58);
    }
  }

  *(this + 2) = 0x14800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1BDB90;
  *(this + 9) = re::internal::defaultConstruct<re::GenerateClusterAABBNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::GenerateClusterAABBNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::GenerateClusterAABBNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::GenerateClusterAABBNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

void re::internal::defaultDestruct<re::GenerateClusterAABBNode>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 320);
  if (v4)
  {

    *(a3 + 320) = 0;
  }

  re::DynamicString::deinit((a3 + 288));
  re::AssetHandle::~AssetHandle((a3 + 264));

  re::RenderGraphNode::~RenderGraphNode(a3);
}

void re::internal::defaultDestructV2<re::GenerateClusterAABBNode>(uint64_t a1)
{
  v2 = *(a1 + 320);
  if (v2)
  {

    *(a1 + 320) = 0;
  }

  re::DynamicString::deinit((a1 + 288));
  re::AssetHandle::~AssetHandle((a1 + 264));

  re::RenderGraphNode::~RenderGraphNode(a1);
}

void *re::allocInfo_ComputeClusterProbeIntersectionNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BDB60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BDB60))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BDC50, "ComputeClusterProbeIntersectionNode");
    __cxa_guard_release(&qword_1EE1BDB60);
  }

  return &unk_1EE1BDC50;
}

void re::initInfo_ComputeClusterProbeIntersectionNode(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x7B570A09A2CECBB0;
  v18[1] = "ComputeClusterProbeIntersectionNode";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1BDB68, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BDB68);
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
      qword_1EE1BDBA8 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_AssetHandle(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "library";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x10800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1BDBB0 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::IntrospectionInfo<re::DynamicString>::get(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "computeFunction";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x12000000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1BDBB8 = v16;
      __cxa_guard_release(&qword_1EE1BDB68);
    }
  }

  *(this + 2) = 0x14800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1BDBA8;
  *(this + 9) = re::internal::defaultConstruct<re::ComputeClusterProbeIntersectionNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ComputeClusterProbeIntersectionNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::ComputeClusterProbeIntersectionNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::ComputeClusterProbeIntersectionNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

void re::internal::defaultDestruct<re::ComputeClusterProbeIntersectionNode>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 320);
  if (v4)
  {

    *(a3 + 320) = 0;
  }

  re::DynamicString::deinit((a3 + 288));
  re::AssetHandle::~AssetHandle((a3 + 264));

  re::RenderGraphNode::~RenderGraphNode(a3);
}

void re::internal::defaultDestructV2<re::ComputeClusterProbeIntersectionNode>(uint64_t a1)
{
  v2 = *(a1 + 320);
  if (v2)
  {

    *(a1 + 320) = 0;
  }

  re::DynamicString::deinit((a1 + 288));
  re::AssetHandle::~AssetHandle((a1 + 264));

  re::RenderGraphNode::~RenderGraphNode(a1);
}

void *re::allocInfo_DebugClusterAABBNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BDB70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BDB70))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BDCE0, "DebugClusterAABBNode");
    __cxa_guard_release(&qword_1EE1BDB70);
  }

  return &unk_1EE1BDCE0;
}

void re::initInfo_DebugClusterAABBNode(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0xB58AF7B3E254EF92;
  v14[1] = "DebugClusterAABBNode";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1BDB78, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BDB78);
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
      qword_1EE1BDB80 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_AssetHandle(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "material";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x11000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1BDB88 = v12;
      __cxa_guard_release(&qword_1EE1BDB78);
    }
  }

  *(this + 2) = 0x12800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BDB80;
  *(this + 9) = re::internal::defaultConstruct<re::DebugClusterAABBNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::DebugClusterAABBNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::DebugClusterAABBNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::DebugClusterAABBNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

double re::internal::defaultConstruct<re::DebugClusterAABBNode>(int a1, int a2, re::RenderGraphNode *this)
{
  v3 = re::RenderGraphNode::RenderGraphNode(this);
  *v3 = &unk_1F5D0EA08;
  result = 0.0;
  *(v3 + 264) = 0u;
  *(v3 + 280) = 0u;
  return result;
}

void re::internal::defaultDestruct<re::DebugClusterAABBNode>(uint64_t a1, uint64_t a2, id *a3)
{
  re::AssetHandle::~AssetHandle((a3 + 34));

  re::RenderGraphNode::~RenderGraphNode(a3);
}

double re::internal::defaultConstructV2<re::DebugClusterAABBNode>(re::RenderGraphNode *a1)
{
  v1 = re::RenderGraphNode::RenderGraphNode(a1);
  *v1 = &unk_1F5D0EA08;
  result = 0.0;
  *(v1 + 264) = 0u;
  *(v1 + 280) = 0u;
  return result;
}

void re::internal::defaultDestructV2<re::DebugClusterAABBNode>(id *a1)
{
  re::AssetHandle::~AssetHandle((a1 + 34));

  re::RenderGraphNode::~RenderGraphNode(a1);
}

void re::GenerateClusterAABBNode::~GenerateClusterAABBNode(re::GenerateClusterAABBNode *this)
{
  v2 = *(this + 40);
  if (v2)
  {

    *(this + 40) = 0;
  }

  re::DynamicString::deinit((this + 288));
  re::AssetHandle::~AssetHandle((this + 264));

  re::RenderGraphNode::~RenderGraphNode(this);
}

{
  v2 = *(this + 40);
  if (v2)
  {

    *(this + 40) = 0;
  }

  re::DynamicString::deinit((this + 288));
  re::AssetHandle::~AssetHandle((this + 264));
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::ComputeClusterProbeIntersectionNode::~ComputeClusterProbeIntersectionNode(re::ComputeClusterProbeIntersectionNode *this)
{
  v2 = *(this + 40);
  if (v2)
  {

    *(this + 40) = 0;
  }

  re::DynamicString::deinit((this + 288));
  re::AssetHandle::~AssetHandle((this + 264));

  re::RenderGraphNode::~RenderGraphNode(this);
}

{
  v2 = *(this + 40);
  if (v2)
  {

    *(this + 40) = 0;
  }

  re::DynamicString::deinit((this + 288));
  re::AssetHandle::~AssetHandle((this + 264));
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::DebugClusterAABBNode::~DebugClusterAABBNode(id *this)
{
  re::AssetHandle::~AssetHandle((this + 34));

  re::RenderGraphNode::~RenderGraphNode(this);
}

{
  re::AssetHandle::~AssetHandle((this + 34));
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

re::GenerateClusterAABBNode *re::GenerateClusterAABBNode::GenerateClusterAABBNode(re::GenerateClusterAABBNode *this)
{
  v2 = re::RenderGraphNode::RenderGraphNode(this);
  *v2 = &unk_1F5D0E8B8;
  *(v2 + 264) = 0u;
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  *(v2 + 39) = 0;
  re::DynamicString::setCapacity(this + 36, 0);
  *(this + 40) = 0;
  return this;
}

re::ComputeClusterProbeIntersectionNode *re::ComputeClusterProbeIntersectionNode::ComputeClusterProbeIntersectionNode(re::ComputeClusterProbeIntersectionNode *this)
{
  v2 = re::RenderGraphNode::RenderGraphNode(this);
  *v2 = &unk_1F5D0E960;
  *(v2 + 264) = 0u;
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  *(v2 + 39) = 0;
  re::DynamicString::setCapacity(this + 36, 0);
  *(this + 40) = 0;
  return this;
}

void re::RenderGraphDofSetupNode::configure(re::RenderGraphDofSetupNode *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  if (*(this + 66))
  {
    re::AssetHandle::loadAsync((this + 520));
  }

  if (*(this + 69))
  {
    re::AssetHandle::loadAsync((this + 544));
  }

  if (*(this + 72))
  {
    re::AssetHandle::loadAsync((this + 568));
  }

  re::RenderGraphFullscreenNode::configure(this, a2, a3, a4);
}

void re::RenderGraphDofSetupNode::execute(re::RenderGraphDofSetupNode *this, re::RenderGraphContext *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v44, 5048, 0);
  v4 = re::AssetHandle::loadedAsset<re::MaterialAsset>((this + 520));
  *(this + 59) = v4;
  if (!v4)
  {
    goto LABEL_28;
  }

  v5 = re::AssetHandle::loadedAsset<re::MaterialAsset>((this + 544));
  *(this + 60) = v5;
  if (!v5)
  {
    goto LABEL_28;
  }

  v6 = (this + 568);
  v7 = re::AssetHandle::loadedAsset<re::MaterialAsset>((this + 568));
  *(this + 61) = v7;
  if (!v7)
  {
    goto LABEL_28;
  }

  if (!*(this + 25))
  {
    v45 = 0;
    v50 = 0u;
    memset(&v49, 0, sizeof(v49));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v46 = 136315906;
    *&v46[4] = "operator[]";
    *&v46[12] = 1024;
    *&v46[14] = 789;
    *&v46[18] = 2048;
    *&v46[20] = 0;
    v47 = 2048;
    *v48 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_30:
    re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
    _os_crash();
    __break(1u);
  }

  re::RenderGraphContext::metalTexture(a2, *(this + 27), 0, 0, &v43);
  v8 = re::RenderGraphDataStore::get<re::CameraData>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (!*(v8 + 128))
  {
    goto LABEL_30;
  }

  if (*(v8 + 224) == 1)
  {
    v10 = *(v8 + 256);
    v49.columns[0] = *(v8 + 240);
    v49.columns[1] = v10;
    v11 = *(v8 + 288);
    v49.columns[2] = *(v8 + 272);
    v49.columns[3] = v11;
  }

  else
  {
    re::Projection::cullingProjectionMatrix((v8 + 144), &v49);
  }

  v52 = __invert_f4(v49);
  v41 = v52.columns[1];
  v42 = v52.columns[0];
  v39 = v52.columns[3];
  v40 = v52.columns[2];
  v12 = *(this + 126);
  v13 = (*(this + 124) * ((*(this + 124) / *(this + 125)) * 0.5)) / (*(this + 124) + (v12 * -1000.0));
  v14 = *(this + 127);
  v15 = [v43 height];
  v16 = *(*a2 + 32);
  if (*(this + 304))
  {
    v17 = *(this + 39);
  }

  else
  {
    v17 = this + 305;
  }

  v18 = v15;
  memset(&v49, 0, 32);
  v19 = v13 / v14;
  re::DynamicString::DynamicString(&v49.columns[2], v17, v16);
  v20 = *(this + 128);
  if (v20 == 1)
  {
    v49.columns[0].i64[0] = *(this + 60);
    v21 = 5.0;
    v6 = (this + 544);
  }

  else if (v20 == 2)
  {
    v49.columns[0].i64[0] = *(this + 61);
    v21 = 10.0;
  }

  else
  {
    v49.columns[0].i64[0] = *(this + 59);
    v21 = 5.0;
    v6 = (this + 520);
  }

  v22 = v19 * v18;
  v23 = re::AssetHandle::operator=(&v49.columns[0].i64[1], v6);
  v24 = *(a2 + 146);
  v25 = "N2re27RenderGraphDataStoreWrapperINS_28DepthOfFieldBlurMaterialDataEEE";
  v26 = (v21 * 0.25) / *(this + 126);
  if (("N2re27RenderGraphDataStoreWrapperINS_28DepthOfFieldBlurMaterialDataEEE" & 0x8000000000000000) != 0)
  {
    v27 = ("N2re27RenderGraphDataStoreWrapperINS_28DepthOfFieldBlurMaterialDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
    v28 = 5381;
    do
    {
      v25 = v28;
      v29 = *v27++;
      v28 = (33 * v28) ^ v29;
    }

    while (v29);
  }

  *v46 = (*(*(a2 + 5) + 48) + (v25 << 6) + (v25 >> 2) - 0x61C8864680B583E9) ^ v25;
  v30 = re::globalAllocators(v23);
  v31 = (*(*v30[2] + 32))(v30[2], 72, 8);
  *v31 = &unk_1F5D0ECD0;
  v31[1] = v49.columns[0].i64[0];
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = 0;
  v32 = v49.columns[1].i64[0];
  v49.columns[1].i64[0] = 0;
  v33 = v31[2];
  v31[2] = v49.columns[0].i64[1];
  *(v31 + 3) = __PAIR128__(v49.columns[1].u64[1], v32);
  v49.columns[0].i64[1] = v33;
  v49.columns[1].i64[1] = 0;
  re::DynamicString::DynamicString((v31 + 5), &v49.columns[2]);
  v45 = v31;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v24 + 16, v46, &v45);
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a2 + 16), 0x60uLL, 0x10uLL, v46);
  v34 = *&v46[16];
  v38 = *&v46[8];
  v35 = (*v46 + *&v46[8]);
  *v35 = v42;
  v35[1] = v41;
  v35[2] = v40;
  v35[3] = v39;
  v35[4].f32[0] = v12;
  v35[4].f32[1] = v22;
  v35[4].f32[2] = v21;
  v35[4].f32[3] = 1.0 / v21;
  v35[5].f32[0] = v21 * 0.25;
  v35[5].f32[1] = v26;
  v36 = v34;
  *&v46[24] = 0;
  *&v48[2] = v38;
  v37 = *a2;
  v45 = 0x248FEBCC4417DE54;
  *v46 = v36;
  re::BufferTable::setBuffer((v37 + 480), &v45, v46);
  re::RenderGraphFullscreenNode::executeInternal(this, a2, (this + 272));
  if (*&v46[24] != -1)
  {
    (off_1F5D0EC98[*&v46[24]])(&v45, v46);
  }

  if (v49.columns[2].i64[0])
  {
    if (v49.columns[2].i8[8])
    {
      (*(*v49.columns[2].i64[0] + 40))();
    }

    memset(&v49.columns[2], 0, 32);
  }

  re::AssetHandle::~AssetHandle(&v49.columns[0].u32[2]);
  if (v43)
  {
  }

LABEL_28:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v44);
}

void re::RenderGraphDofSetupNode::getMaterialParameterTables(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 512);
  if (v4 == 1)
  {
    if (!*(a1 + 552))
    {
      goto LABEL_20;
    }

    v9 = re::AssetHandle::loadedAsset<re::MaterialAsset>((a1 + 544));
    if (!v9)
    {
      goto LABEL_20;
    }

    v6 = *(v9 + 1784);
    if (!v6)
    {
      goto LABEL_20;
    }

    v7 = *(a1 + 552);
    if (v7)
    {
      goto LABEL_7;
    }
  }

  else if (v4 == 2)
  {
    if (!*(a1 + 576))
    {
      goto LABEL_20;
    }

    v5 = re::AssetHandle::loadedAsset<re::MaterialAsset>((a1 + 568));
    if (!v5)
    {
      goto LABEL_20;
    }

    v6 = *(v5 + 1784);
    if (!v6)
    {
      goto LABEL_20;
    }

    v7 = *(a1 + 576);
    if (v7)
    {
LABEL_7:
      v8 = *(v7 + 792);
      goto LABEL_13;
    }
  }

  else
  {
    if (!*(a1 + 528))
    {
      goto LABEL_20;
    }

    v11 = re::AssetHandle::loadedAsset<re::MaterialAsset>((a1 + 520));
    if (!v11)
    {
      goto LABEL_20;
    }

    v6 = *(v11 + 1784);
    if (!v6)
    {
      goto LABEL_20;
    }

    v7 = *(a1 + 528);
    if (v7)
    {
      goto LABEL_7;
    }
  }

  v8 = 0;
LABEL_13:
  v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27));
  v13 = v8 ^ (v10 >> 31) ^ v10;
  re::MaterialParameterBlock::createMaterialParameterTableIfNeeded(v6, &v12);
  re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(a2, &v13, &v12);
  if (v12)
  {
  }

LABEL_20:
  re::RenderGraphFullscreenNode::getMaterialParameterTables(a1, a2);
}

void re::RenderGraphDofBokehBlurNode::execute(re::RenderGraphDofBokehBlurNode *this, re::RenderGraphContext *a2)
{
  v4 = re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v16, 5050, 0);
  v5 = *(a2 + 146);
  v6 = "N2re27RenderGraphDataStoreWrapperINS_28DepthOfFieldBlurMaterialDataEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_28DepthOfFieldBlurMaterialDataEEE" & 0x8000000000000000) != 0)
  {
    v7 = ("N2re27RenderGraphDataStoreWrapperINS_28DepthOfFieldBlurMaterialDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  if (!*(v5 + 16))
  {
    goto LABEL_12;
  }

  v10 = (*(*(a2 + 5) + 48) + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9) ^ v6;
  v11 = *(*(v5 + 24) + 4 * (v10 % *(v5 + 40)));
  if (v11 == 0x7FFFFFFF)
  {
    goto LABEL_12;
  }

  v12 = *(v5 + 32);
  while (*(v12 + 24 * v11 + 8) != v10)
  {
    v11 = *(v12 + 24 * v11) & 0x7FFFFFFF;
    if (v11 == 0x7FFFFFFF)
    {
      goto LABEL_12;
    }
  }

  v13 = *(v12 + 24 * v11 + 16);
  if (v13)
  {
    *(this + 41) = v13[1];
    re::DynamicString::operator=((this + 296), (v13 + 5));
    re::RenderGraphFullscreenNode::executeInternal(this, a2, (v13 + 2));
  }

  else
  {
LABEL_12:
    v14 = *re::graphicsLogObjects(v4);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "RenderGraphDofBokehBlurNode expects DepthOfFieldBlurMaterialDataWrapper from the render graph                         data store but there isn't any. Will skip the execution. Did you forget to add a RenderGraphDofSetupNode?", v15, 2u);
    }
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v16);
}

void re::RenderGraphDofCompositeNode::configure(re::RenderGraphDofCompositeNode *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  if (*(this + 63))
  {
    re::AssetHandle::loadAsync((this + 496));
  }

  if (*(this + 66))
  {
    re::AssetHandle::loadAsync((this + 520));
  }

  re::RenderGraphFullscreenNode::configure(this, a2, a3, a4);
}

void re::RenderGraphDofCompositeNode::execute(re::RenderGraphDofCompositeNode *this, re::RenderGraphContext *a2)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v6, 5052, 0);
  v4 = re::AssetHandle::loadedAsset<re::MaterialAsset>((this + 496));
  *(this + 59) = v4;
  if (v4)
  {
    v5 = re::AssetHandle::loadedAsset<re::MaterialAsset>((this + 520));
    *(this + 60) = v5;
    if (v5)
    {
      if ((*(this + 488) & 1) == 0)
      {
        v5 = *(this + 59);
      }

      *(this + 41) = v5;
      re::RenderGraphFullscreenNode::executeInternal(this, a2, (this + 272));
    }
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v6);
}

void re::RenderGraphDofCompositeNode::getMaterialParameterTables(uint64_t a1, uint64_t a2)
{
  v4 = re::AssetHandle::loadedAsset<re::MaterialAsset>((a1 + 520));
  if (v4)
  {
    v5 = *(v4 + 1784);
    if (v5)
    {
      v6 = *(a1 + 280);
      if (v6)
      {
        v7 = *(v6 + 792);
      }

      else
      {
        v7 = 0;
      }

      v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
      v10 = v7 ^ (v8 >> 31) ^ v8;
      re::MaterialParameterBlock::createMaterialParameterTableIfNeeded(v5, &v9);
      re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(a2, &v10, &v9);
      if (v9)
      {
      }
    }
  }
}

void re::introspect_DepthOfFieldQualityProfile(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BDD78, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1BDD80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BDD80))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BDDF8, "DepthOfFieldQualityProfile", 4, 4, 1, 1);
      qword_1EE1BDDF8 = &unk_1F5D0C658;
      qword_1EE1BDE38 = &re::introspect_DepthOfFieldQualityProfile(BOOL)::enumTable;
      dword_1EE1BDE08 = 9;
      __cxa_guard_release(&qword_1EE1BDD80);
    }

    if (_MergedGlobals_503)
    {
      break;
    }

    _MergedGlobals_503 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BDDF8, a2);
    v35 = 0xBD83B9DA93A8E214;
    v36 = "DepthOfFieldQualityProfile";
    v39 = 208862;
    v40 = "int";
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
      v6 = qword_1EE1BDE38;
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
      xmmword_1EE1BDE18 = v37;
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
    v28 = __cxa_guard_acquire(&qword_1EE1BDD78);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Low";
      qword_1EE1BDDC0 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Medium";
      qword_1EE1BDDC8 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 8) = 2;
      *(v34 + 16) = "High";
      qword_1EE1BDDD0 = v34;
      __cxa_guard_release(&qword_1EE1BDD78);
    }
  }
}

void *re::allocInfo_RenderGraphDofSetupNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BDD88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BDD88))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BDE88, "RenderGraphDofSetupNode");
    __cxa_guard_release(&qword_1EE1BDD88);
  }

  return &unk_1EE1BDE88;
}

void re::initInfo_RenderGraphDofSetupNode(re *this, re::IntrospectionBase *a2)
{
  v41[0] = 0xA4807A93825450F8;
  v41[1] = "RenderGraphDofSetupNode";
  if (v41[0])
  {
    if (v41[0])
    {
    }
  }

  *(this + 2) = v42;
  if ((atomic_load_explicit(&qword_1EE1BDD90, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BDD90);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphFullscreenNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphFullscreenNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1BDE40 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_float(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "focalLength";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1F000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1BDE48 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_float(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "aperture";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x1F400000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1BDE50 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_float(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "focalDistance";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x1F800000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1BDE58 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::introspect_float(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "sensorSize";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x1FC00000004;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1BDE60 = v24;
      v25 = re::introspectionAllocator(v24);
      re::introspect_DepthOfFieldQualityProfile(v25, v26);
      v27 = (*(*v25 + 32))(v25, 72, 8);
      *v27 = 1;
      *(v27 + 8) = "qualityProfile";
      *(v27 + 16) = &qword_1EE1BDDF8;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0x20000000005;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      qword_1EE1BDE68 = v27;
      v28 = re::introspectionAllocator(v27);
      v30 = re::introspect_AssetHandle(1, v29);
      v31 = (*(*v28 + 32))(v28, 72, 8);
      *v31 = 1;
      *(v31 + 8) = "blurMaterialLowQuality";
      *(v31 + 16) = v30;
      *(v31 + 24) = 0;
      *(v31 + 32) = 0x20800000006;
      *(v31 + 40) = 0;
      *(v31 + 48) = 0;
      *(v31 + 56) = 0;
      *(v31 + 64) = 0;
      qword_1EE1BDE70 = v31;
      v32 = re::introspectionAllocator(v31);
      v34 = re::introspect_AssetHandle(1, v33);
      v35 = (*(*v32 + 32))(v32, 72, 8);
      *v35 = 1;
      *(v35 + 8) = "blurMaterialMediumQuality";
      *(v35 + 16) = v34;
      *(v35 + 24) = 0;
      *(v35 + 32) = 0x22000000007;
      *(v35 + 40) = 0;
      *(v35 + 48) = 0;
      *(v35 + 56) = 0;
      *(v35 + 64) = 0;
      qword_1EE1BDE78 = v35;
      v36 = re::introspectionAllocator(v35);
      v38 = re::introspect_AssetHandle(1, v37);
      v39 = (*(*v36 + 32))(v36, 72, 8);
      *v39 = 1;
      *(v39 + 8) = "blurMaterialHighQuality";
      *(v39 + 16) = v38;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0x23800000008;
      *(v39 + 40) = 0;
      *(v39 + 48) = 0;
      *(v39 + 56) = 0;
      *(v39 + 64) = 0;
      qword_1EE1BDE80 = v39;
      __cxa_guard_release(&qword_1EE1BDD90);
    }
  }

  *(this + 2) = 0x25000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 9;
  *(this + 8) = &qword_1EE1BDE40;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphDofSetupNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphDofSetupNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphDofSetupNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphDofSetupNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v40 = v42;
}

double re::internal::defaultConstruct<re::RenderGraphDofSetupNode>(int a1, int a2, re::RenderGraphFullscreenNode *this)
{
  *(this + 58) = 0;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
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
  v3 = re::RenderGraphFullscreenNode::RenderGraphFullscreenNode(this);
  *v3 = &unk_1F5D0EAB0;
  *(v3 + 60) = 0;
  *(v3 + 61) = 0;
  *(v3 + 59) = 0;
  result = 0.0;
  *(v3 + 520) = 0u;
  *(v3 + 536) = 0u;
  *(v3 + 552) = 0u;
  *(v3 + 568) = 0u;
  *(v3 + 73) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::RenderGraphDofSetupNode>(uint64_t a1)
{
  *(a1 + 464) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v1 = re::RenderGraphFullscreenNode::RenderGraphFullscreenNode(a1);
  *v1 = &unk_1F5D0EAB0;
  *(v1 + 60) = 0;
  *(v1 + 61) = 0;
  *(v1 + 59) = 0;
  result = 0.0;
  *(v1 + 520) = 0u;
  *(v1 + 536) = 0u;
  *(v1 + 552) = 0u;
  *(v1 + 568) = 0u;
  *(v1 + 73) = 0;
  return result;
}

void *re::allocInfo_RenderGraphDofBokehBlurNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BDD98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BDD98))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BDF18, "RenderGraphDofBokehBlurNode");
    __cxa_guard_release(&qword_1EE1BDD98);
  }

  return &unk_1EE1BDF18;
}

void re::initInfo_RenderGraphDofBokehBlurNode(re *this, re::IntrospectionBase *a2)
{
  v10[0] = 0xB7007C36957F51CELL;
  v10[1] = "RenderGraphDofBokehBlurNode";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1BDDA8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BDDA8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphFullscreenNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphFullscreenNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1BDDA0 = v8;
      __cxa_guard_release(&qword_1EE1BDDA8);
    }
  }

  *(this + 2) = 0x1D800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1BDDA0;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphDofBokehBlurNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphDofBokehBlurNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphDofBokehBlurNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphDofBokehBlurNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v9 = v11;
}

re::RenderGraphFullscreenNode *re::internal::defaultConstruct<re::RenderGraphDofBokehBlurNode>(int a1, int a2, re::RenderGraphFullscreenNode *this)
{
  *(this + 58) = 0;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
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
  result = re::RenderGraphFullscreenNode::RenderGraphFullscreenNode(this);
  *result = &unk_1F5D0EB58;
  return result;
}

re::RenderGraphFullscreenNode *re::internal::defaultConstructV2<re::RenderGraphDofBokehBlurNode>(uint64_t a1)
{
  *(a1 + 464) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = re::RenderGraphFullscreenNode::RenderGraphFullscreenNode(a1);
  *result = &unk_1F5D0EB58;
  return result;
}

void *re::allocInfo_RenderGraphDofCompositeNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BDDB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BDDB0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BDFA8, "RenderGraphDofCompositeNode");
    __cxa_guard_release(&qword_1EE1BDDB0);
  }

  return &unk_1EE1BDFA8;
}

void re::initInfo_RenderGraphDofCompositeNode(re *this, re::IntrospectionBase *a2)
{
  v22[0] = 0xCCEAEE98621BAA0CLL;
  v22[1] = "RenderGraphDofCompositeNode";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE1BDDB8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BDDB8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphFullscreenNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphFullscreenNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1BDDD8 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_BOOL(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "debugPassthrough";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1E800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1BDDE0 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_AssetHandle(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "compositeMaterial";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x1F000000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1BDDE8 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_AssetHandle(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "debugPassthroughMaterial";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x20800000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1BDDF0 = v20;
      __cxa_guard_release(&qword_1EE1BDDB8);
    }
  }

  *(this + 2) = 0x22000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1BDDD8;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphDofCompositeNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphDofCompositeNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphDofCompositeNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphDofCompositeNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v21 = v23;
}

double re::internal::defaultConstruct<re::RenderGraphDofCompositeNode>(int a1, int a2, re::RenderGraphFullscreenNode *this)
{
  *(this + 58) = 0;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
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
  v3 = re::RenderGraphFullscreenNode::RenderGraphFullscreenNode(this);
  *v3 = &unk_1F5D0EC00;
  *(v3 + 59) = 0;
  *(v3 + 60) = 0;
  result = 0.0;
  *(v3 + 31) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 33) = 0u;
  return result;
}

void re::internal::defaultDestruct<re::RenderGraphDofCompositeNode>(uint64_t a1, uint64_t a2, id *a3)
{
  re::AssetHandle::~AssetHandle((a3 + 65));
  re::AssetHandle::~AssetHandle((a3 + 62));

  re::RenderGraphFullscreenNode::~RenderGraphFullscreenNode(a3);
}

double re::internal::defaultConstructV2<re::RenderGraphDofCompositeNode>(uint64_t a1)
{
  *(a1 + 464) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v1 = re::RenderGraphFullscreenNode::RenderGraphFullscreenNode(a1);
  *v1 = &unk_1F5D0EC00;
  *(v1 + 59) = 0;
  *(v1 + 60) = 0;
  result = 0.0;
  *(v1 + 31) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 33) = 0u;
  return result;
}

void re::internal::defaultDestructV2<re::RenderGraphDofCompositeNode>(id *a1)
{
  re::AssetHandle::~AssetHandle((a1 + 65));
  re::AssetHandle::~AssetHandle((a1 + 62));

  re::RenderGraphFullscreenNode::~RenderGraphFullscreenNode(a1);
}

void re::RenderGraphDofSetupNode::~RenderGraphDofSetupNode(id *this)
{
  re::RenderGraphDofSetupNode::~RenderGraphDofSetupNode(this);

  JUMPOUT(0x1E6906520);
}

{
  re::AssetHandle::~AssetHandle((this + 71));
  re::AssetHandle::~AssetHandle((this + 68));
  re::AssetHandle::~AssetHandle((this + 65));

  re::RenderGraphFullscreenNode::~RenderGraphFullscreenNode(this);
}

void re::RenderGraphDofBokehBlurNode::~RenderGraphDofBokehBlurNode(id *this)
{
  re::RenderGraphFullscreenNode::~RenderGraphFullscreenNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphDofCompositeNode::~RenderGraphDofCompositeNode(id *this)
{
  re::AssetHandle::~AssetHandle((this + 65));
  re::AssetHandle::~AssetHandle((this + 62));

  re::RenderGraphFullscreenNode::~RenderGraphFullscreenNode(this);
}

{
  re::AssetHandle::~AssetHandle((this + 65));
  re::AssetHandle::~AssetHandle((this + 62));
  re::RenderGraphFullscreenNode::~RenderGraphFullscreenNode(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::RenderGraphDataStore::get<re::CameraData>(uint64_t a1, uint64_t a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
  {
    re::introspect<re::CameraData>(BOOL)::info = re::introspect_CameraData(0);
  }

  v4 = strlen(*(re::introspect<re::CameraData>(BOOL)::info + 6));
  if (v4)
  {
    MurmurHash3_x64_128(*(re::introspect<re::CameraData>(BOOL)::info + 6), v4, 0, v11);
    v5 = (v11[1] - 0x61C8864680B583E9 + (v11[0] << 6) + (v11[0] >> 2)) ^ v11[0];
  }

  else
  {
    v5 = 0;
  }

  v6 = 0x7FFFFFFFLL;
  if (*(a1 + 64))
  {
    v7 = (a2 - 0x61C8864680B583E9 + (v5 << 6) + (v5 >> 2)) ^ v5;
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

void *re::RenderGraphDataStoreWrapper<re::DepthOfFieldBlurMaterialData>::~RenderGraphDataStoreWrapper(void *a1)
{
  *a1 = &unk_1F5D0ECD0;
  v2 = (a1 + 2);
  re::DynamicString::deinit((a1 + 5));
  re::AssetHandle::~AssetHandle(v2);
  return a1;
}

void re::RenderGraphDataStoreWrapper<re::DepthOfFieldBlurMaterialData>::~RenderGraphDataStoreWrapper(void *a1)
{
  *a1 = &unk_1F5D0ECD0;
  v1 = (a1 + 2);
  re::DynamicString::deinit((a1 + 5));
  re::AssetHandle::~AssetHandle(v1);

  JUMPOUT(0x1E6906520);
}

void re::BloomUserParameters::computeRenderParameters(re::BloomUserParameters *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 1);
  v4 = *(this + 3);
  v5 = *(this + 2) + 1.0;
  *a2 = *this;
  *(a2 + 4) = v5;
  *(a2 + 8) = v3;
  v6 = vcvtps_s32_f32(v5);
  v7 = 3 * v6;
  *(a2 + 12) = v4;
  *(a2 + 16) = 3 * v6;
  if ((v6 & 0x80000000) == 0)
  {
    v8 = -3 * v6;
    if (v7 >= 0)
    {
      v9 = 3 * v6;
    }

    else
    {
      v9 = -3 * v6;
    }

    v10 = v9 + 1;
    v11 = (a2 + 4 * (v8 + v7) + 20);
    do
    {
      v12 = *(a2 + 4);
      *v11++ = (1.0 / (v12 * 2.5066)) * expf(-(v8 * v8) / (v12 * (v12 + v12)));
      ++v8;
    }

    while (v10 != v8);
  }
}

void re::RenderGraphUploadBloomParams::execute(re::RenderGraphUploadBloomParams *this, re **a2)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v27, 5058, 0);
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  re::BloomUserParameters::computeRenderParameters((this + 264), &v17);
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(*a2 + 2, 0x98uLL, 4uLL, &v12);
  v4 = v14;
  v11 = v13;
  v5 = &v12[v13];
  v6 = v24;
  *(v5 + 6) = v23;
  *(v5 + 7) = v6;
  *(v5 + 8) = v25;
  *(v5 + 18) = v26;
  v7 = v20;
  *(v5 + 2) = v19;
  *(v5 + 3) = v7;
  v8 = v22;
  *(v5 + 4) = v21;
  *(v5 + 5) = v8;
  v9 = v18;
  *v5 = v17;
  *(v5 + 1) = v9;
  v10 = re::RenderGraphDataStore::add<re::RenderGraphDataStoreWrapper<re::BloomExecData>>(a2[146], *(a2[5] + 6));
  *(v10 + 48) = HIDWORD(v17);
  v12 = v4;
  v15 = 0;
  v16 = v11;
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v10 + 8, &v12);
  *(v10 + 40) = v16;
  if (v15 != -1)
  {
    (off_1F5D0EF88[v15])(&v28, &v12);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v27);
}

void re::RenderGraphDownsampleThresholdNode::configure(re::RenderGraphDownsampleThresholdNode *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  if (*(this + 35))
  {
    re::AssetHandle::loadAsync((this + 272));
  }

  re::RenderGraphNode::configure(this, a2, a3, a4);
}

void re::RenderGraphDownsampleThresholdNode::execute(re::RenderGraphDownsampleThresholdNode *this, re::RenderGraphContext *a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v7 = re::AssetHandle::loadedAsset<re::MaterialAsset>((this + 272));
  *(this + 33) = v7;
  if (!v7)
  {
    return;
  }

  v8 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::BloomExecData>>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (v8)
  {
    v9 = v8;
    v10 = *(*(this + 33) + 1776);
    v11 = *(this + 35);
    if (v11)
    {
      v12 = *(v11 + 792);
    }

    else
    {
      v12 = 0;
    }

    v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) >> 27));
    MaterialTableForAsset = re::RenderGraphContext::getMaterialTableForAsset(a2, v12 ^ (v14 >> 31) ^ v14);
    re::RenderGraphContext::makeFullscreenDrawCall(a2, v10, "Downsample Threshold DrawCall", MaterialTableForAsset, 0, 0, 0, 0, buf);
    v16 = v55;
    MurmurHash3_x64_128("fullscreen", 0xAuLL, 0, v56);
    v17 = re::MaterialParameterTableLayers::resolveTechniqueIndices(v16, (*&v56[8] + (*v56 << 6) + (*v56 >> 2) - 0x61C8864680B583E9) ^ *v56);
    if (v18)
    {
      v54 = *v17;
      if (v54 == -1)
      {
        return;
      }

      v2 = v56;
      v3 = 0xA3521511A35B9;
      v19 = *a2;
      v50[0] = 0xA3521511A35B9;
      if (!*(this + 25))
      {
        goto LABEL_33;
      }

      re::RenderGraphContext::metalTexture(a2, *(this + 27), 0, 0, v56);
      re::DynamicTextureTableAdd((v19 + 368), v50, v56);
      if (*v56)
      {
      }

      v4 = 0x127DBE076EDDD69;
      v20 = *a2;
      *v56 = 0x127DBE076EDDD69;
      re::BufferTable::setBuffer((v20 + 480), v56, (v9 + 8));
      v21 = re::RenderGraphDataStore::tryGet<re::CameraData>(*(a2 + 146), *(*(a2 + 5) + 48));
      v52 = 0;
      v49 = 0;
      memset(v50, 0, sizeof(v50));
      v51 = 0;
      memset(v47, 0, sizeof(v47));
      v48 = 0;
      if (v21)
      {
        v22 = v21;
        if (*(v21 + 128))
        {
          v3 = 0;
          v4 = 0;
          while (1)
          {
            v23 = v22 + 144 + 240 * v3;
            if (*(v23 + 80) == 1)
            {
              v24 = *(v23 + 96);
              v25 = *(v23 + 112);
              v26 = *(v23 + 144);
              v57 = *(v23 + 128);
              *v58 = v26;
              *v56 = v24;
              *&v56[16] = v25;
            }

            else
            {
              re::Projection::cullingProjectionMatrix(v23, v56);
            }

            *&v28 = re::DynamicArray<re::Matrix4x4<float>>::add(v50, v56).n128_u64[0];
            v29 = *(v22 + 48);
            if (v29 <= v3)
            {
              break;
            }

            re::RenderCamera::computeInverseTransform((v22 + 64 + 32 * v3), v56);
            re::DynamicArray<re::Matrix4x4<float>>::add(v47, v56);
            v4 = (v4 + 1);
            v3 = v4;
            if (*(v22 + 128) <= v4)
            {
              goto LABEL_21;
            }
          }

          re::internal::assertLog(6, v27, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v3, v29);
          _os_crash();
          __break(1u);
          goto LABEL_32;
        }

LABEL_21:
        v30 = *(v22 + 890);
        v3 = 0xA3521511A35B9;
        v4 = 0x127DBE076EDDD69;
      }

      else
      {
        *v56 = xmmword_1E3047670;
        *&v56[16] = xmmword_1E3047680;
        v57 = xmmword_1E30476A0;
        *v58 = xmmword_1E30474D0;
        re::DynamicArray<re::Matrix4x4<float>>::add(v50, v56);
        *v56 = xmmword_1E3047670;
        *&v56[16] = xmmword_1E3047680;
        v57 = xmmword_1E30476A0;
        *v58 = xmmword_1E30474D0;
        re::DynamicArray<re::Matrix4x4<float>>::add(v47, v56);
        v30 = 1;
      }

      re::DrawCallRef::DrawCallRef(&v42, buf);
      v31 = 0;
      *v56 = &v42;
      *&v56[24] = &v43;
      *v58 = &v44;
      v59 = &v45;
      *&v56[8] = vdupq_n_s64(1uLL);
      v57 = *&v56[8];
      *&v58[8] = *&v56[8];
      v60 = *&v56[8];
      v61 = &v46;
      v62 = *&v56[8];
      v35[0] = "fullscreen";
      v35[1] = v56;
      v35[2] = v49;
      v35[3] = v52;
      v35[4] = 0;
      v36 = v30;
      v37 = 2;
      v38 = 0;
      v39 = 0;
      if (!*(a2 + 338))
      {
        goto LABEL_24;
      }

      goto LABEL_34;
    }

LABEL_32:
    re::internal::assertLog(6, v18, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_33:
    v35[0] = 0;
    *(v2 + 3) = 0u;
    *(v2 + 4) = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 2) = 0u;
    *v2 = 0u;
    a2 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v63) = 136315906;
    *(v2 + 132) = "operator[]";
    v64 = 1024;
    *(v2 + 142) = 789;
    v65 = 2048;
    *(v2 + 148) = 0;
    v66 = 2048;
    *(v2 + 158) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_34:
    v31 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(a2 + 169, *(this + 2), "fullscreen");
LABEL_24:
    v40 = v31;
    v41 = 0;
    re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs(a2, &v63);
    re::RenderGraphContext::encodeDrawCalls(a2, &v63, v35);
    v32 = *a2;
    v63 = v3;
    re::DynamicTextureTableRemove((v32 + 368), &v63, v33);
    v34 = *a2;
    v63 = v4;
    re::BufferTable::removeBuffer((v34 + 480), &v63);
    if (v47[0] && v49)
    {
      (*(*v47[0] + 40))(v47[0], v49);
    }

    if (v50[0])
    {
      if (v52)
      {
        (*(*v50[0] + 40))(v50[0], v52);
      }
    }

    return;
  }

  v13 = *re::graphicsLogObjects(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    buf[0].i16[0] = 0;
    _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "RenderGraphDownsampleThresholdNode expects BloomExecDataWrapper from the render graph data store but there isn't any.                          Will skip the execution. Did you forget to add a upload node?", buf, 2u);
  }
}

void re::RenderGraphDownsampleThresholdNode::getMaterialParameterTables(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 280))
  {
    v4 = re::AssetHandle::loadedAsset<re::MaterialAsset>((a1 + 272));
    if (v4)
    {
      v5 = *(v4 + 1784);
      if (v5)
      {
        v6 = *(a1 + 280);
        if (v6)
        {
          v7 = *(v6 + 792);
        }

        else
        {
          v7 = 0;
        }

        v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
        v10 = v7 ^ (v8 >> 31) ^ v8;
        re::MaterialParameterBlock::createMaterialParameterTableIfNeeded(v5, &v9);
        re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(a2, &v10, &v9);
        if (v9)
        {
        }
      }
    }
  }
}

uint64_t re::RenderGraphDownsampleBlur::configure(void **this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v12 = 0;
  v15 = 0;
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v23 = 0;
  v24 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  ComputePipelineState = re::getOrCreateComputePipelineState(*(a4 + 1), &v10);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 40, ComputePipelineState);
  re::RenderGraphNode::configure(this, a2, a3, a4);
  if (v23)
  {

    v23 = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v18);
  if (v15 == 1 && v16)
  {
    if (BYTE8(v16))
    {
      (*(*v16 + 40))();
    }

    v16 = 0u;
    v17 = 0u;
  }

  if (v12 == 1 && v13)
  {
    if (BYTE8(v13))
    {
      (*(*v13 + 40))();
    }

    v14 = 0u;
    v13 = 0u;
  }

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

uint64_t re::RenderGraphDownsampleBlur::setup(re::RenderGraphDownsampleBlur *this, re::GrowableLinearAllocator **a2, re::RenderGraphDataStore *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  *(&v15 + 3) = 0;
  LODWORD(v15) = 0;
  *(&v15 + 1) = 2;
  re::RenderGraphBuilder::read(a2, this + 264, &v15);
  *&v15 = 0x500000000;
  v16 = xmmword_1E30474D0;
  LOWORD(v17) = 0;
  *(&v17 + 4) = 0;
  re::RenderGraphBuilder::write(a2, this + 264, &v15);
  v5 = re::RenderGraphCompiled::targetDescription(a2, this + 264);
  v7 = v5[3];
  v6 = v5[4];
  v8 = v5[6];
  v20 = v5[5];
  v9 = v5[1];
  v10 = v5[2];
  v15 = *v5;
  v16 = v9;
  v17 = v10;
  v18 = v7;
  v21 = v8;
  v19 = v6;
  LODWORD(v20) = *(this + 69);
  re::RenderGraphResourceDescriptions::addTarget(a2, &v15, "scratchTarget", v12);
  *(this + 19) = v12[0];
  *(v12 + 3) = 0;
  LODWORD(v12[0]) = 0;
  *(&v12[0] + 1) = 2;
  re::RenderGraphBuilder::read(a2, this + 304, v12);
  *&v12[0] = 0x500000000;
  v12[1] = xmmword_1E30474D0;
  v13 = 0;
  v14 = 0;
  return re::RenderGraphBuilder::write(a2, this + 304, v12);
}

void re::RenderGraphDownsampleBlur::execute(re::RenderGraphDownsampleBlur *this, re::RenderGraphContext *a2)
{
  v48[1] = *MEMORY[0x1E69E9840];
  v34 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::BloomExecData>>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (v34)
  {
    re::RenderGraphContext::acquireManagedComputeCommandEncoder(a2, 0, 0, &v41);
    re::RenderGraphContext::metalTexture(a2, this + 264, 0, 0, &v40);
    re::RenderGraphContext::metalTexture(a2, this + 304, 0, 0, &v39);
    if ((atomic_load_explicit(&qword_1EE1BE0A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE0A0))
    {
      v30 = re::ns::String::String(&qword_1EE1BE098, "Bloom Blur Downsampled Mipmap");
      __cxa_guard_release(v30 + 1);
    }

    v4 = qword_1EE1BE098;
    [v41 setLabel:v4];

    [v41 setComputePipelineState:*(this + 40)];
    v5 = v40;
    v6 = [v40 pixelFormat];
    v7 = [v5 newTextureViewWithPixelFormat:v6 textureType:2 levels:objc_msgSend(v40 slices:sel_mipmapLevelCount) - 1, 1, 0, 1];
    [v41 setTexture:v7 atIndex:2];
    re::BufferSlice::buffer(v34 + 8, v8);
    [v41 setBuffer:*(v34 + 8) offset:*(v34 + 40) atIndex:0];
    v32 = [*(this + 40) threadExecutionWidth];
    v9 = [*(this + 40) maxTotalThreadsPerThreadgroup];
    v10 = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(*(a2 + 146), *(*(a2 + 5) + 48));
    if (v10)
    {
      if (!*(v10 + 16))
      {
        re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
        _os_crash();
        __break(1u);
      }

      v12 = *(v10 + 32);
    }

    else
    {
      v12 = xmmword_1E3063230;
    }

    v33 = v12;
    v31 = a2;
    v14 = *(a2 + 1);
    v38 = v41;
    re::RenderManager::sampleComputeEncoderMTLCounterBegin(v14, &v38, 1u);

    if (*(v34 + 48))
    {
      v15 = 0;
      v16 = v9 / v32;
      v17 = vadd_f32(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
      while (1)
      {
        v18 = [v40 newTextureViewWithPixelFormat:objc_msgSend(v40 textureType:sel_pixelFormat) levels:2 slices:v15, 1, 0, 1];
        v19 = [v39 newTextureViewWithPixelFormat:objc_msgSend(v39 textureType:sel_pixelFormat) levels:2 slices:v15, 1, 0, 1];
        v20 = [v18 width];
        v21 = vcvt_f32_u32(vand_s8(__PAIR64__([v18 height], v20), 0xFFFF0000FFFFLL));
        v22 = vcvt_s32_f32(vrndp_f32(vmla_f32(0xBF000000BF000000, *v33.i8, v21)));
        v23 = vcvt_s32_f32(vrndm_f32(vmla_f32(0x3F0000003F000000, v17, v21)));
        v24 = vmvn_s8(vceq_s32(vand_s8(v23, 0xFFFF0000FFFFLL), vand_s8(v22, 0xFFFF0000FFFFLL)));
        if ((v24.i32[0] & v24.i32[1] & 1) == 0)
        {
          break;
        }

        v25 = v23.i16[2] - v22.i16[2];
        v26 = v23.i16[0] - v22.i16[0];
        v48[0] = vuzp1_s16(v22, v23);
        [v41 setBytes:v48 length:8 atIndex:2];
        v27 = (v32 - 1 + v26) / v32;
        v28 = (v16 - 1 + v25) / v16;
        [v41 setTexture:v18 atIndex:0];
        [v41 setTexture:v19 atIndex:1];
        v37 = 0;
        [v41 setBytes:&v37 length:4 atIndex:1];
        *buf = v27;
        v46 = v28;
        v47 = 1;
        v42 = v32;
        v43 = v16;
        v44 = 1;
        [v41 dispatchThreadgroups:buf threadsPerThreadgroup:&v42];
        [v41 setTexture:v19 atIndex:0];
        [v41 setTexture:v18 atIndex:1];
        v36 = 1;
        [v41 setBytes:&v36 length:4 atIndex:1];
        *buf = v27;
        v46 = v28;
        v47 = 1;
        v42 = v32;
        v43 = v16;
        v44 = 1;
        [v41 dispatchThreadgroups:buf threadsPerThreadgroup:&v42];
        if (v19)
        {
        }

        if (v18)
        {
        }

        if (++v15 >= *(v34 + 48))
        {
          goto LABEL_22;
        }
      }

      if (v19)
      {
      }

      if (v18)
      {
      }
    }

LABEL_22:
    v29 = *(v31 + 1);
    v35 = v41;
    re::RenderManager::sampleComputeEncoderMTLCounterEnd(v29, &v35, 1u);

    if (v7)
    {
    }

    if (v39)
    {
    }

    if (v40)
    {
    }
  }

  else
  {
    v13 = *re::graphicsLogObjects(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "RenderGraphDownsampleBlur expects BloomExecDataWrapper from the render graph data store but there isn't any.                          Will skip the execution. Did you forget to add a upload node?", buf, 2u);
    }
  }
}

void re::RenderGraphBloomNode::execute(re::RenderGraphBloomNode *this, re::RenderGraphContext *a2)
{
  v4 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::BloomExecData>>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (v4)
  {
    v5 = *a2;
    *v8 = 0x127DBE076EDDD69;
    re::BufferTable::setBuffer((v5 + 480), v8, (v4 + 8));
    re::RenderGraphFullscreenNode::executeInternal(this, a2, (this + 272));
    v6 = *a2;
    *v8 = 0x127DBE076EDDD69;
    re::BufferTable::removeBuffer((v6 + 480), v8);
  }

  else
  {
    v7 = *re::graphicsLogObjects(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "RenderGraphBloomNode expects BloomExecDataWrapper from the render graph data store but there isn't any.                          Will skip the execution. Did you forget to add a upload node?", v8, 2u);
    }
  }
}

void *re::allocInfo_BloomUserParameters(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_504, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_504))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BE100, "BloomUserParameters");
    __cxa_guard_release(&_MergedGlobals_504);
  }

  return &unk_1EE1BE100;
}

void re::initInfo_BloomUserParameters(re *this, re::IntrospectionBase *a2)
{
  v23[0] = 0x789DF83014C541B0;
  v23[1] = "BloomUserParameters";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&qword_1EE1BE040, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BE040);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_float(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "strength";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1BE0E0 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_float(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "threshold";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x400000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1BE0E8 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_float(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "spread";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1BE0F0 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_int(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "numPasses";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0xC00000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1BE0F8 = v21;
      __cxa_guard_release(&qword_1EE1BE040);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1BE0E0;
  *(this + 9) = re::internal::defaultConstruct<re::BloomUserParameters>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BloomUserParameters>;
  *(this + 13) = re::internal::defaultConstructV2<re::BloomUserParameters>;
  *(this + 14) = re::internal::defaultDestructV2<re::BloomUserParameters>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v22 = v24;
}

double re::internal::defaultConstruct<re::BloomUserParameters>(uint64_t a1, uint64_t a2, void *a3)
{
  result = 0.00781250182;
  *a3 = 0x3F8000003E800000;
  a3[1] = 0x13F800000;
  return result;
}

double re::internal::defaultConstructV2<re::BloomUserParameters>(void *a1)
{
  result = 0.00781250182;
  *a1 = 0x3F8000003E800000;
  a1[1] = 0x13F800000;
  return result;
}

void *re::allocInfo_RenderGraphUploadBloomParams(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BE050, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE050))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BE190, "RenderGraphUploadBloomParams");
    __cxa_guard_release(&qword_1EE1BE050);
  }

  return &unk_1EE1BE190;
}

void re::initInfo_RenderGraphUploadBloomParams(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0xEDF6B9216B19DCA0;
  v15[1] = "RenderGraphUploadBloomParams";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1BE058, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BE058);
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
      qword_1EE1BE0A8 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = v9;
      v11 = qword_1EE1BE048;
      if (!qword_1EE1BE048)
      {
        v11 = re::allocInfo_BloomUserParameters(v9);
        qword_1EE1BE048 = v11;
        re::initInfo_BloomUserParameters(v11, v12);
      }

      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "bloomUserParameters";
      *(v13 + 16) = v11;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x10800000001;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1BE0B0 = v13;
      __cxa_guard_release(&qword_1EE1BE058);
    }
  }

  *(this + 2) = 0x11800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BE0A8;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphUploadBloomParams>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphUploadBloomParams>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphUploadBloomParams>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphUploadBloomParams>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

double re::internal::defaultConstruct<re::RenderGraphUploadBloomParams>(int a1, int a2, re::RenderGraphNode *this)
{
  v3 = re::RenderGraphNode::RenderGraphNode(this);
  *v3 = &unk_1F5D0ECF8;
  result = 0.00781250182;
  *(v3 + 33) = 0x3F8000003E800000;
  *(v3 + 34) = 0x13F800000;
  return result;
}

double re::internal::defaultConstructV2<re::RenderGraphUploadBloomParams>(re::RenderGraphNode *a1)
{
  v1 = re::RenderGraphNode::RenderGraphNode(a1);
  *v1 = &unk_1F5D0ECF8;
  result = 0.00781250182;
  *(v1 + 33) = 0x3F8000003E800000;
  *(v1 + 34) = 0x13F800000;
  return result;
}

void *re::allocInfo_RenderGraphDownsampleThresholdNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BE060, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE060))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BE220, "RenderGraphDownsampleThresholdNode");
    __cxa_guard_release(&qword_1EE1BE060);
  }

  return &unk_1EE1BE220;
}

void re::initInfo_RenderGraphDownsampleThresholdNode(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x49FD523B65429E92;
  v14[1] = "RenderGraphDownsampleThresholdNode";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1BE068, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BE068);
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
      qword_1EE1BE0B8 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_AssetHandle(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "downsampleThresholdMaterial";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x11000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1BE0C0 = v12;
      __cxa_guard_release(&qword_1EE1BE068);
    }
  }

  *(this + 2) = 0x12800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BE0B8;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphDownsampleThresholdNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphDownsampleThresholdNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphDownsampleThresholdNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphDownsampleThresholdNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

double re::internal::defaultConstruct<re::RenderGraphDownsampleThresholdNode>(int a1, int a2, re::RenderGraphNode *this)
{
  v3 = re::RenderGraphNode::RenderGraphNode(this);
  *v3 = &unk_1F5D0EDA0;
  result = 0.0;
  *(v3 + 264) = 0u;
  *(v3 + 280) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::RenderGraphDownsampleThresholdNode>(re::RenderGraphNode *a1)
{
  v1 = re::RenderGraphNode::RenderGraphNode(a1);
  *v1 = &unk_1F5D0EDA0;
  result = 0.0;
  *(v1 + 264) = 0u;
  *(v1 + 280) = 0u;
  return result;
}

void *re::allocInfo_RenderGraphDownsampleBlur(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BE070, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE070))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BE2B0, "RenderGraphDownsampleBlur");
    __cxa_guard_release(&qword_1EE1BE070);
  }

  return &unk_1EE1BE2B0;
}

void re::initInfo_RenderGraphDownsampleBlur(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x92E90B1749510D56;
  v18[1] = "RenderGraphDownsampleBlur";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1BE078, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BE078);
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
      qword_1EE1BE0C8 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_RenderGraphTargetHandle(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "downsampledTarget";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x10800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1BE0D0 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_AssetHandle(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "library";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x11800000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1BE0D8 = v16;
      __cxa_guard_release(&qword_1EE1BE078);
    }
  }

  *(this + 2) = 0x14800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1BE0C8;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphDownsampleBlur>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphDownsampleBlur>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphDownsampleBlur>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphDownsampleBlur>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

double re::internal::defaultConstruct<re::RenderGraphDownsampleBlur>(int a1, int a2, re::RenderGraphNode *this)
{
  v3 = re::RenderGraphNode::RenderGraphNode(this);
  *v3 = &unk_1F5D0EE48;
  *(v3 + 33) = 0;
  result = NAN;
  *(v3 + 34) = -1;
  *(v3 + 280) = 0u;
  *(v3 + 296) = 0u;
  *(v3 + 39) = -1;
  *(v3 + 40) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::RenderGraphDownsampleBlur>(re::RenderGraphNode *a1)
{
  v1 = re::RenderGraphNode::RenderGraphNode(a1);
  *v1 = &unk_1F5D0EE48;
  *(v1 + 33) = 0;
  result = NAN;
  *(v1 + 34) = -1;
  *(v1 + 280) = 0u;
  *(v1 + 296) = 0u;
  *(v1 + 39) = -1;
  *(v1 + 40) = 0;
  return result;
}

void *re::allocInfo_RenderGraphBloomNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BE080, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE080))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BE340, "RenderGraphBloomNode");
    __cxa_guard_release(&qword_1EE1BE080);
  }

  return &unk_1EE1BE340;
}

void re::initInfo_RenderGraphBloomNode(re *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x228CD58E70E1D09ALL;
  v10[1] = "RenderGraphBloomNode";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1BE090, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BE090);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphFullscreenNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphFullscreenNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1BE088 = v8;
      __cxa_guard_release(&qword_1EE1BE090);
    }
  }

  *(this + 2) = 0x1D800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1BE088;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphBloomNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphBloomNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphBloomNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphBloomNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v9 = v11;
}

re::RenderGraphFullscreenNode *re::internal::defaultConstruct<re::RenderGraphBloomNode>(int a1, int a2, re::RenderGraphFullscreenNode *this)
{
  *(this + 58) = 0;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
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
  result = re::RenderGraphFullscreenNode::RenderGraphFullscreenNode(this);
  *result = &unk_1F5D0EEF0;
  return result;
}

re::RenderGraphFullscreenNode *re::internal::defaultConstructV2<re::RenderGraphBloomNode>(uint64_t a1)
{
  *(a1 + 464) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = re::RenderGraphFullscreenNode::RenderGraphFullscreenNode(a1);
  *result = &unk_1F5D0EEF0;
  return result;
}

void re::RenderGraphUploadBloomParams::~RenderGraphUploadBloomParams(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphDownsampleThresholdNode::~RenderGraphDownsampleThresholdNode(id *this)
{
  *this = &unk_1F5D0EDA0;
  re::AssetHandle::~AssetHandle((this + 34));

  re::RenderGraphNode::~RenderGraphNode(this);
}

{
  *this = &unk_1F5D0EDA0;
  re::AssetHandle::~AssetHandle((this + 34));
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphDownsampleBlur::~RenderGraphDownsampleBlur(re::RenderGraphDownsampleBlur *this)
{
  *this = &unk_1F5D0EE48;
  v2 = *(this + 40);
  if (v2)
  {

    *(this + 40) = 0;
  }

  re::AssetHandle::~AssetHandle((this + 280));

  re::RenderGraphNode::~RenderGraphNode(this);
}

{
  *this = &unk_1F5D0EE48;
  v2 = *(this + 40);
  if (v2)
  {

    *(this + 40) = 0;
  }

  re::AssetHandle::~AssetHandle((this + 280));
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphBloomNode::~RenderGraphBloomNode(id *this)
{
  re::RenderGraphFullscreenNode::~RenderGraphFullscreenNode(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::RenderGraphDataStore::add<re::RenderGraphDataStoreWrapper<re::BloomExecData>>(re *a1, uint64_t a2)
{
  v3 = "N2re27RenderGraphDataStoreWrapperINS_13BloomExecDataEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_13BloomExecDataEEE" & 0x8000000000000000) != 0)
  {
    v4 = ("N2re27RenderGraphDataStoreWrapperINS_13BloomExecDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  v11 = (a2 + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
  v7 = re::globalAllocators(a1);
  v8 = (*(*v7[2] + 32))(v7[2], 56, 8);
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0;
  *v8 = &unk_1F5D0EFC0;
  *(v8 + 8) = 0;
  v10 = v8;
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 16, &v11, &v10);
}

uint64_t re::RenderGraphDataStoreWrapper<re::BloomExecData>::~RenderGraphDataStoreWrapper(uint64_t a1)
{
  *a1 = &unk_1F5D0EFC0;
  v2 = *(a1 + 32);
  if (v2 != -1)
  {
    (off_1F5D0EF88[v2])(&v4, a1 + 8);
  }

  *(a1 + 32) = -1;
  return a1;
}

{
  *a1 = &unk_1F5D0EFC0;
  v2 = *(a1 + 32);
  if (v2 != -1)
  {
    (off_1F5D0EF88[v2])(&v4, a1 + 8);
  }

  *(a1 + 32) = -1;
  return MEMORY[0x1E6906520](a1, 0x10A3C403BB19F57);
}

uint64_t re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::BloomExecData>>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re27RenderGraphDataStoreWrapperINS_13BloomExecDataEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_13BloomExecDataEEE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re27RenderGraphDataStoreWrapperINS_13BloomExecDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
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

void re::RenderGraphMPSImageGaussianBlurNode::setup(re::RenderGraphMPSImageGaussianBlurNode *this, re::RenderGraphBuilder *a2, re::RenderGraphDataStore *a3)
{
  *(a2 + 593) = 1;
  re::RenderGraphNode::setup(this, a2, a3);
  if (*(this + 269) == 1)
  {
    v5 = (*(*this + 64))(this);
    if (v6)
    {
      *(v7 + 3) = 0;
      v7[0] = 0;
      v8 = 0xC00000002;
      re::RenderGraphBuilder::read(a2, v5, v7);
    }

    else
    {
      re::internal::assertLog(6, 0, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
      _os_crash();
      __break(1u);
    }
  }
}

void re::RenderGraphMPSImageGaussianBlurNode::configure(re::RenderGraphMPSImageGaussianBlurNode *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  re::RenderGraphNode::configure(this, a2, a3, a4);
  v6 = *(*(a4 + 1) + 208);
  v35 = v6;
  v7 = (this + 272);
  v8 = *(this + 34);
  if (!v8)
  {
    re::mtl::mps::ImageGaussianBlur::ImageGaussianBlur(&v18, &v35, *(this + 66));
    if (v7 != &v18)
    {
      v9 = v18;
      v18 = 0;
      v10 = *v7;
      *v7 = v9;
    }

    v8 = *v7;
  }

  v11 = [v8 sigma];
  v13 = v12;
  v14 = *(this + 66);
  if (v13 != v14)
  {
    re::mtl::mps::ImageGaussianBlur::ImageGaussianBlur(&v18, &v35, v14);
    if (v7 != &v18)
    {
      v15 = v18;
      v18 = 0;
      v16 = *v7;
      *v7 = v15;
    }
  }

  if (!*(this + 35))
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    re::DynamicString::setCapacity(&v18, 0);
    v22 = 0;
    v25 = 0;
    memset(v28, 0, sizeof(v28));
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v36[0] = "ClearImage";
    v36[1] = 10;
    re::DynamicString::operator=(&v18, v36);
    ComputePipelineState = re::getOrCreateComputePipelineState(*(a4 + 1), &v18);
    NS::SharedPtr<MTL::Buffer>::operator=(this + 35, ComputePipelineState);
    if (v33)
    {

      v33 = 0;
    }

    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v28);
    if (v25 == 1 && v26)
    {
      if (BYTE8(v26))
      {
        (*(*v26 + 40))();
      }

      v26 = 0u;
      v27 = 0u;
    }

    if (v22 == 1 && v23)
    {
      if (BYTE8(v23))
      {
        (*(*v23 + 40))();
      }

      v24 = 0u;
      v23 = 0u;
    }

    if (v18 && (v19 & 1) != 0)
    {
      (*(*v18 + 40))();
    }
  }
}

void re::RenderGraphMPSImageGaussianBlurNode::execute(id *this, re::RenderGraphContext *a2)
{
  v150 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v133, 5091, 0);
  v4 = *a2;
  v102 = a2;
  re::RenderGraphMPSNodeBase::getCommandBufferWithProtectionOptions(this, a2, &v132);
  v5 = this + 34;
  [this[34] sigma];
  v7 = v6;
  v8 = *(this + 66);
  if (v7 != v8)
  {
    re::mtl::mps::ImageGaussianBlur::ImageGaussianBlur(&v110, v4, v8);
    if (v5 != &v110)
    {
      v9 = v110;
      v110 = 0;
      v10 = *v5;
      *v5 = v9;
    }
  }

  v126 = *v4;
  v125 = v132;
  v131 = 0;
  v128 = 0;
  v129 = 0;
  location = 0;
  v130 = 0;
  re::ObjCObject::operator=(&v128, &v125);
  re::ObjCObject::operator=(&location, &v126);

  [this[34] setEdgeMode:*(this + 268)];
  v11 = (*(*this + 8))(this);
  if (!v12)
  {
LABEL_120:
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_121;
  }

  v123 = 0;
  v124 = -1;
  v123 = *v11;
  v124 = v11[1];
  v13 = (*(*this + 9))(this);
  if (!v14)
  {
LABEL_121:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_122;
  }

  v121 = 0;
  v122 = -1;
  v121 = *v13;
  v122 = v13[1];
  re::RenderGraphContext::metalTexture(a2, &v123, 0, 0, &v120);
  re::RenderGraphContext::metalTexture(a2, &v121, 0, 0, &v119);
  v15 = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(*(a2 + 146), *(*(a2 + 5) + 48));
  v16 = v15;
  if (v15)
  {
    v17 = v15[64];
  }

  else
  {
    v17 = 1;
  }

  v110 = 0;
  v111 = 0;
  v112 = 1;
  v18 = v17;
  v113 = 0;
  v114 = 0;
  v19 = re::DynamicOverflowArray<MTL::Region,2ul>::setCapacity(&v110, v17);
  v20 = v112 + 2;
  v112 += 2;
  if (v111 < v17)
  {
    if (!v110)
    {
      re::DynamicOverflowArray<MTL::Region,2ul>::setCapacity(&v110, v17);
      v20 = v112 + 2;
      v112 += 2;
    }

    v21 = (v20 & 1) == 0;
    v22 = 2;
    if (v21)
    {
      v22 = v113;
    }

    if (v22 < v17)
    {
      re::DynamicOverflowArray<MTL::Region,2ul>::setCapacity(&v110, v17);
    }

    v23 = v17 - v111;
    if (v17 > v111)
    {
      v24 = 6 * v111;
      do
      {
        if (v112)
        {
          v25 = &v113;
        }

        else
        {
          v25 = v114;
        }

        v26 = &v25[v24];
        *(v26 + 1) = 0uLL;
        *(v26 + 2) = 0uLL;
        *v26 = 0uLL;
        v24 += 6;
        --v23;
      }

      while (v23);
    }

    goto LABEL_25;
  }

  if (v111 > v17)
  {
LABEL_25:
    v111 = v17;
    v112 += 2;
  }

  LODWORD(v145) = v124;
  v27 = re::SmallHashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,8ul,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false>::tryGet(v102 + 96, &v145);
  v100 = this + 34;
  v101 = this;
  if (*(this + 269) != 1)
  {
    goto LABEL_55;
  }

  v103 = v27;
  re::SyncMechanism::sync(&location);
  re::mtl::CommandBuffer::makeComputeCommandEncoder(&v132, &v109);
  v141[1] = 0;
  v141[0] = 0;
  v140 = 0;
  re::mtl::CommandBuffer::commandQueue(&v132, &v108);
  re::mtl::CommandQueue::device(&v108, v142);
  if (*v142)
  {
    v145 = 0uLL;
    *&v146 = 0;
    [*v142 maxThreadsPerThreadgroup];
    v29 = v145;
    v30 = *v142;
  }

  else
  {
    v30 = 0;
    v29 = 0.0;
  }

  v31 = sqrt(v29);

  [v109 setComputePipelineState:this[35]];
  [v109 setBytes:v141 length:16 atIndex:0];
  [v109 setBytes:&v140 length:8 atIndex:1];
  if ([v119 textureType] == 2)
  {
    [v109 setTexture:v119 atIndex:0];
    v5 = [v119 width];
    v32 = [v119 height];
    *&v145 = v5;
    *(&v145 + 1) = v32;
    *&v146 = 1;
    *v142 = v31;
    *&v142[8] = v31;
    *&v142[16] = 1;
    [v109 dispatchThreads:&v145 threadsPerThreadgroup:v142];
  }

  else if ([v119 textureType] == 3 && objc_msgSend(v119, sel_arrayLength))
  {
    v5 = 0;
    this = &selRef_setOwnerWithIdentity_;
    do
    {
      re::makeView2DArrayTo2D(&v119, v5, &v108);
      v33 = v108;
      [v109 setTexture:v108 atIndex:0];
      v34 = [v119 width];
      v35 = [v119 height];
      *&v145 = v34;
      *(&v145 + 1) = v35;
      *&v146 = 1;
      *v142 = v31;
      *&v142[8] = v31;
      *&v142[16] = 1;
      [v109 dispatchThreads:&v145 threadsPerThreadgroup:v142];
      if (v33)
      {
      }

      v5 = (v5 + 1);
    }

    while (v5 < [v119 arrayLength]);
  }

  [v109 endEncoding];

  if ((*(v101 + 269) & 1) != 0 && v103 && *(v103 + 8))
  {
    [*v100 sigma];
    v39 = v103;
    if (v17)
    {
      v40 = 0;
      *v37.i32 = ((*v37.i32 + *v37.i32) * 2.0) + 1.0;
      *v38.i32 = (2 * *v37.i32);
      *v37.i32 = *v37.i32;
      v41 = vdup_lane_s32(v37, 0);
      v42 = vdup_lane_s32(v38, 0);
      v43 = 16;
      v44 = 5;
      do
      {
        v5 = *(v39 + 8);
        if (v5 <= v40)
        {
          goto LABEL_117;
        }

        v45 = v103 + 32;
        if ((*(v39 + 16) & 1) == 0)
        {
          v45 = *(v39 + 40);
        }

        v46 = xmmword_1E3063230;
        if (v16)
        {
          v47 = *(v16 + 2);
          if (v47 <= v40)
          {
            goto LABEL_119;
          }

          v46 = *&v16[16 * v40 + 32];
        }

        v105 = v46;
        v5 = [v120 width];
        v48 = [v120 height];
        this = v111;
        if (v111 <= v40)
        {
          goto LABEL_118;
        }

        v49.i64[0] = v5;
        v49.i64[1] = v48;
        v50 = vcvt_f32_f64(vcvtq_f64_u64(v49));
        v51 = *(v45 + v43);
        v52 = *(v45 + v43 - 16);
        if (v112)
        {
          v53 = &v113;
        }

        else
        {
          v53 = v114;
        }

        v54 = &v53[v44];
        v55 = vmul_f32(*&vextq_s8(v105, v105, 8uLL), v50);
        *(v54 - 40) = vcvtq_u64_f64(vcvtq_f64_f32(vsub_f32(vmla_f32(vmul_f32(*v105.i8, v50), *&v52, v55), v41)));
        v54[-2].i64[1] = 0;
        v54[-1] = vcvtq_u64_f64(vcvtq_f64_f32(vmla_f32(v42, vmaxnm_f32(vsub_f32(*&v51, *&v52), 0), v55)));
        v54->i64[0] = 1;
        v40 = (v40 + 1);
        v43 += 32;
        v44 += 6;
        v39 = v103;
      }

      while (v18 != v40);
    }

    re::SyncMechanism::sync(&location);
    v56 = v101;
  }

  else
  {
LABEL_55:
    if (v17)
    {
      v57 = 0;
      v5 = (v16 + 32);
      v58 = 3;
      while (1)
      {
        v59 = xmmword_1E3063230;
        if (v16)
        {
          v60 = *(v16 + 2);
          if (v60 <= v57)
          {
            goto LABEL_115;
          }

          v59 = *&v5[2 * v57];
        }

        v106 = v59;
        this = [v120 width];
        v61 = [v120 height];
        v62 = v111;
        if (v111 <= v57)
        {
          break;
        }

        v63 = vmuls_lane_f32(v61, v106, 3);
        v64 = vmuls_lane_f32(this, v106, 2);
        v65 = vmuls_lane_f32(v61, *v106.f32, 1);
        if (v112)
        {
          v66 = &v113;
        }

        else
        {
          v66 = v114;
        }

        v67 = &v66[v58];
        *(v67 - 3) = (this * v106.f32[0]);
        *(v67 - 2) = v65;
        *(v67 - 1) = 0;
        *v67 = v64;
        v67[1] = v63;
        v67[2] = 1;
        ++v57;
        v58 += 6;
        if (v17 == v57)
        {
          goto LABEL_65;
        }
      }

      v141[0] = 0;
      v16 = v142;
      v148 = 0u;
      v149 = 0u;
      v146 = 0u;
      v147 = 0u;
      v145 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v142 = 136315906;
      *&v142[4] = "operator[]";
      *&v142[12] = 1024;
      *&v142[14] = 858;
      *&v142[18] = 2048;
      *&v142[20] = v57;
      v143 = 2048;
      v144 = v62;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_115:
      re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v57, v60);
      _os_crash();
      __break(1u);
      goto LABEL_116;
    }

LABEL_65:
    re::SyncMechanism::sync(&location);
    v56 = v101;
    if (*(v101 + 269))
    {
      goto LABEL_104;
    }
  }

  if ([v120 textureType] != 2)
  {
    if ([v120 textureType] != 3)
    {
      [v120 textureType];
      v98 = [v120 textureType];
      re::internal::assertLog(5, v99, "assertion failure: '%s' (%s:line %i) Unsupported texture type %lu.", "false", "execute", 190, v98);
      _os_crash();
      __break(1u);
      return;
    }

    if (![v120 arrayLength])
    {
      goto LABEL_103;
    }

    this = 0;
    v16 = 0;
    while (1)
    {
      v18 = v111;
      if (v111 <= v16)
      {
        break;
      }

      if (v112)
      {
        v89 = &v113;
      }

      else
      {
        v89 = v114;
      }

      v90 = this + v89;
      v91 = *(v90 + 4);
      v92 = *(v90 + 5);
      v93 = *v100;
      v107 = *(v90 + 1);
      v5 = v142;
      v145 = *v90;
      v104 = v145;
      *&v146 = 0;
      [v93 setOffset:&v145];
      v94 = *v100;
      v145 = v104;
      v146 = v107;
      *&v147 = v91;
      *(&v147 + 1) = v92;
      [v94 setClipRect:&v145];
      re::makeView2DArrayTo2D(&v120, v16, &v145);
      if (v120 == v119)
      {
        View2DArrayTo2D = v145;
        *v142 = View2DArrayTo2D;
      }

      else
      {
        View2DArrayTo2D = re::makeView2DArrayTo2D(&v119, v16, v142);
      }

      v96 = *(*(v102 + 1) + 48);
      v135 = re::globalAllocators(View2DArrayTo2D)[2];
      v136 = 0;
      v97 = (*(*v135 + 32))(v135, 56, 0);
      *v97 = &unk_1F5D0F0E8;
      v97[1] = &v120;
      v97[2] = &v119;
      v97[3] = v101;
      v97[4] = &v132;
      v97[5] = &v145;
      v97[6] = v142;
      v136 = v97;
      re::ShaderManager::executeWithPrioritizedShaderCompilation(v96, v134);
      re::FunctionBase<24ul,void ()(void)>::destroyCallable(v134);
      if (*v142)
      {
      }

      if (v145)
      {
      }

      ++v16;
      this += 6;
      if (v16 >= [v120 arrayLength])
      {
        goto LABEL_103;
      }
    }

LABEL_116:
    v141[0] = 0;
    v40 = v142;
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v145 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v142 = 136315906;
    *&v142[4] = "operator[]";
    *&v142[12] = 1024;
    *&v142[14] = 858;
    *&v142[18] = 2048;
    *&v142[20] = v16;
    v143 = 2048;
    v144 = v18;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v141[0] = 0;
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v145 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v142 = 136315906;
    *&v142[4] = "operator[]";
    *&v142[12] = 1024;
    *&v142[14] = 866;
    *&v142[18] = 2048;
    *&v142[20] = v40;
    v143 = 2048;
    v144 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_118:
    v141[0] = 0;
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v145 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v142 = 136315906;
    *&v142[4] = "operator[]";
    *&v142[12] = 1024;
    *&v142[14] = 858;
    *&v142[18] = 2048;
    *&v142[20] = v40;
    v143 = 2048;
    v144 = this;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_119:
    re::internal::assertLog(6, v36, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v40, v47);
    _os_crash();
    __break(1u);
    goto LABEL_120;
  }

  if (!v111)
  {
LABEL_122:
    v141[0] = 0;
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v145 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v142 = 136315906;
    *&v142[4] = "operator[]";
    *&v142[12] = 1024;
    *&v142[14] = 858;
    *&v142[18] = 2048;
    *&v142[20] = 0;
    v143 = 2048;
    v144 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_123;
  }

  v68 = *v100;
  if (v112)
  {
    v69 = &v113;
  }

  else
  {
    v69 = v114;
  }

  v70 = *v69;
  v71 = (v114 + 1);
  if (v112)
  {
    v71 = &v114;
  }

  v72 = *v71;
  *&v145 = v70;
  *(&v145 + 1) = v72;
  *&v146 = 0;
  [v68 setOffset:&v145];
  if (!v111)
  {
LABEL_123:
    v141[0] = 0;
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v145 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v142 = 136315906;
    *&v142[4] = "operator[]";
    *&v142[12] = 1024;
    *&v142[14] = 858;
    *&v142[18] = 2048;
    *&v142[20] = 0;
    v143 = 2048;
    v144 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v112)
  {
    v73 = &v113;
  }

  else
  {
    v73 = v114;
  }

  v74 = v56[34];
  v75 = *v73;
  v76 = (v114 + 1);
  if (v112)
  {
    v76 = &v114;
  }

  v77 = *v76;
  v78 = (v114 + 2);
  if (v112)
  {
    v78 = &v115;
  }

  v79 = *v78;
  v80 = (v114 + 3);
  if (v112)
  {
    v80 = &v116;
  }

  v81 = *v80;
  v82 = (v114 + 4);
  if (v112)
  {
    v82 = &v117;
  }

  v83 = *v82;
  v84 = (v114 + 5);
  if (v112)
  {
    v84 = &v118;
  }

  v85 = *v84;
  *&v145 = v75;
  *(&v145 + 1) = v77;
  *&v146 = v79;
  *(&v146 + 1) = v81;
  *&v147 = v83;
  *(&v147 + 1) = v85;
  v86 = [v74 setClipRect:&v145];
  v87 = *(*(v102 + 1) + 48);
  v138 = re::globalAllocators(v86)[2];
  v88 = (*(*v138 + 32))(v138, 40, 0);
  *v88 = &unk_1F5D0F090;
  v88[1] = &v120;
  v88[2] = &v119;
  v88[3] = v56;
  v88[4] = &v132;
  v139 = v88;
  re::ShaderManager::executeWithPrioritizedShaderCompilation(v87, v137);
  re::FunctionBase<24ul,void ()(void)>::destroyCallable(v137);
LABEL_103:
  re::SyncMechanism::sync(&location);
LABEL_104:
  if (v110 && (v112 & 1) == 0)
  {
    (*(*v110 + 40))();
  }

  if (v119)
  {
  }

  if (v120)
  {
  }

  if (v129)
  {

    v129 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v133);
}

uint64_t re::SmallHashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,8ul,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false>::tryGet(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 956))
  {
    return re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::tryGet(a1 + 928, a2);
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 112 * v3;
  for (result = a1 + 48; *(result - 16) != *a2; result += 112)
  {
    v4 -= 112;
    if (!v4)
    {
      return 0;
    }
  }

  return result;
}

void *re::allocInfo_RenderGraphMPSImageGaussianBlurNode(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_505, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_505))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BE400, "RenderGraphMPSImageGaussianBlurNode");
    __cxa_guard_release(&_MergedGlobals_505);
  }

  return &unk_1EE1BE400;
}

void re::initInfo_RenderGraphMPSImageGaussianBlurNode(re *this, re::IntrospectionBase *a2)
{
  v22[0] = 0xDD66E2E47DA234ELL;
  v22[1] = "RenderGraphMPSImageGaussianBlurNode";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE1BE3D8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BE3D8);
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
      qword_1EE1BE3E0 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_float(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "sigma";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x10800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1BE3E8 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_MPSImageEdgeModeType(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "edgeMode";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x10C00000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1BE3F0 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_BOOL(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "enableRestrictedClipRegion";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x10D00000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1BE3F8 = v20;
      __cxa_guard_release(&qword_1EE1BE3D8);
    }
  }

  *(this + 2) = 0x12000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1BE3E0;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphMPSImageGaussianBlurNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphMPSImageGaussianBlurNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphMPSImageGaussianBlurNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphMPSImageGaussianBlurNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v21 = v23;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::RenderGraphMPSImageGaussianBlurNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *result = &unk_1F5D0EFE8;
  *(result + 134) = 0;
  *(result + 34) = 0;
  *(result + 35) = 0;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::RenderGraphMPSImageGaussianBlurNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *result = &unk_1F5D0EFE8;
  *(result + 134) = 0;
  *(result + 34) = 0;
  *(result + 35) = 0;
  return result;
}

void re::RenderGraphMPSImageGaussianBlurNode::~RenderGraphMPSImageGaussianBlurNode(re::RenderGraphMPSImageGaussianBlurNode *this)
{
  re::RenderGraphMPSImageGaussianBlurNode::~RenderGraphMPSImageGaussianBlurNode(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5D0EFE8;
  v2 = *(this + 35);
  if (v2)
  {

    *(this + 35) = 0;
  }

  re::RenderGraphNode::~RenderGraphNode(this);
}

void re::internal::Callable<re::RenderGraphMPSImageGaussianBlurNode::execute(re::RenderGraphContext &)::$_0,void ()(void)>::operator()(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[4];
  v4 = (a1[3] + 272);
  if (*v1 == *v2)
  {
    re::mtl::mps::UnaryImageKernel::encodeToCommandBuffer(v4, v3, v1);
  }

  else
  {
    re::mtl::mps::UnaryImageKernel::encodeToCommandBuffer(v4, v3, v1, v2);
  }
}

uint64_t re::internal::Callable<re::RenderGraphMPSImageGaussianBlurNode::execute(re::RenderGraphContext &)::$_0,void ()(void)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D0F090;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::RenderGraphMPSImageGaussianBlurNode::execute(re::RenderGraphContext &)::$_0,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D0F090;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

void re::internal::Callable<re::RenderGraphMPSImageGaussianBlurNode::execute(re::RenderGraphContext &)::$_1,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 24);
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (**(a1 + 8) == **(a1 + 16))
  {
    re::mtl::mps::UnaryImageKernel::encodeToCommandBuffer((v2 + 272), v1, v3);
  }

  else
  {
    re::mtl::mps::UnaryImageKernel::encodeToCommandBuffer((v2 + 272), v1, v3, *(a1 + 48));
  }
}

uint64_t re::internal::Callable<re::RenderGraphMPSImageGaussianBlurNode::execute(re::RenderGraphContext &)::$_1,void ()(void)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D0F0E8;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::RenderGraphMPSImageGaussianBlurNode::execute(re::RenderGraphContext &)::$_1,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D0F0E8;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  return a2;
}

void *re::DynamicOverflowArray<MTL::Region,2ul>::setCapacity(void *result, unint64_t a2)
{
  v3 = result;
  v4 = *result;
  if (a2 && !v4)
  {
    result = re::DynamicOverflowArray<MTL::Region,2ul>::setCapacity(v3, a2);
    v5 = *(v3 + 4) + 2;
LABEL_4:
    *(v3 + 4) = v5;
    return result;
  }

  v6 = *(result + 4);
  if (v6)
  {
    v7 = 2;
  }

  else
  {
    v7 = result[3];
  }

  if (v7 != a2)
  {
    v8 = result[1];
    if (v8 <= a2 && (a2 > 2 || (v6 & 1) == 0))
    {
      if (a2 < 3)
      {
        v13 = result + 3;
        v14 = v3[4];
        if (v6)
        {
          v15 = v3 + 3;
        }

        else
        {
          v15 = v3[4];
        }

        memcpy(v13, v15, 48 * v8);
        result = (*(*v4 + 40))(v4, v14);
        v5 = *(v3 + 4) | 1;
        goto LABEL_4;
      }

      v9 = (*(*v4 + 32))(*result, 48 * a2, 1);
      if (v9)
      {
        v11 = v9;
        if (v3[2])
        {
          v12 = v3 + 3;
        }

        else
        {
          v12 = v3[4];
        }

        result = memcpy(v9, v12, 48 * v3[1]);
        v16 = *(v3 + 4);
        if ((v16 & 1) == 0)
        {
          result = (*(**v3 + 40))(*v3, v3[4]);
          v16 = *(v3 + 4);
        }

        *(v3 + 4) = v16 & 0xFFFFFFFE;
        v3[3] = a2;
        v3[4] = v11;
      }

      else
      {
        re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, 48 * a2, *(*v3 + 8));
        result = _os_crash();
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::tryGet(uint64_t a1, _DWORD *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::findEntry<unsigned int>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 112 * v6 + 16;
  }
}

void *re::UIShadowProvider::UIShadowProvider(void *a1, const re::DynamicString *a2)
{
  re::DynamicString::DynamicString(&v4, a2);
  *a1 = &unk_1F5CC5700;
  re::DynamicString::DynamicString((a1 + 1), &v4);
  if (v4 && (v5 & 1) != 0)
  {
    (*(*v4 + 40))();
  }

  *a1 = &unk_1F5D0F140;
  a1[6] = 0;
  a1[7] = 0;
  a1[5] = 0;
  return a1;
}

unint64_t re::UIShadowProvider::prepareFrame(re::UIShadowProvider *this, const char *__s, const char *a3, re::RenderFrame *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = 0x9E3779B97F4A7C17;
  v8 = strlen(__s);
  if (v8)
  {
    MurmurHash3_x64_128(__s, v8, 0, &v12);
    v9 = (v13 - 0x61C8864680B583E9 + (v12 << 6) + (v12 >> 2)) ^ v12;
  }

  else
  {
    v9 = 0;
  }

  v10 = strlen(a3);
  if (v10)
  {
    MurmurHash3_x64_128(a3, v10, 0, &v12);
    v7 = ((v13 - 0x61C8864680B583E9 + (v12 << 6) + (v12 >> 2)) ^ v12) - 0x61C8864680B583E9;
  }

  result = (*(**(a4 + 40) + 1176))(*(a4 + 40));
  if (result)
  {
    re::BucketArray<re::UIShadowRenderData,4ul>::operator[](result, 0);
    return ((((v9 >> 2) + (v9 << 6) + v7) ^ v9) - 0x1674EBA10EB828F0) ^ 0xD202E3C596E86E5;
  }

  return result;
}

uint64_t re::BucketArray<re::UIShadowRenderData,4ul>::operator[](uint64_t a1, unint64_t a2)
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

  if (*(a1 + 8) <= a2 >> 2)
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

  return *(v3 + 8 * (a2 >> 2)) + 48 * (a2 & 3);
}

void re::UIShadowProvider::provide(re::UIShadowProvider *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  RenderGraph = re::RenderFrame::makeRenderGraph(a4, "UIShadowNodes", 1uLL);
  v8 = re::globalAllocators(RenderGraph);
  v9 = (*(*v8[2] + 32))(v8[2], 264, 8);
  v10 = re::RenderGraphNode::RenderGraphNode(v9, "UIShadowRenderGraphNode");
  *v10 = &unk_1F5D14C10;
  v13 = v10;
  re::DynamicArray<re::TransitionCondition *>::add(RenderGraph, &v13);
  v11 = *(RenderGraph + 12);
  v12 = *(RenderGraph + 13);
  *(v9 + 3) = *(RenderGraph + 10);
  *(v9 + 4) = v11;
  *(v9 + 6) = v12;

  re::RenderGraphNode::configure(v9, a2, a3, a4);
}

void re::UIShadowProvider::~UIShadowProvider(re::UIShadowProvider *this)
{
  re::AssetHandle::~AssetHandle((this + 40));
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));
}

{
  re::AssetHandle::~AssetHandle((this + 40));
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));

  JUMPOUT(0x1E6906520);
}

void re::CopyShadowTextureNode::execute(re::CopyShadowTextureNode *this, re::RenderGraphContext *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!*(this + 30))
  {
    v19 = 0;
    v31 = 0u;
    v29 = 0u;
    v30 = 0u;
    *v27 = 0u;
    v28 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v20 = 136315906;
    *&v20[4] = "operator[]";
    v21 = 1024;
    v22 = 789;
    v23 = 2048;
    v24 = 0;
    v25 = 2048;
    v26 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_32;
  }

  re::RenderGraphContext::metalTexture(a2, *(this + 32), 0, 0, &v18);
  v2 = *(this + 30);
  if (v2 <= 1)
  {
LABEL_32:
    v19 = 0;
    v31 = 0u;
    v29 = 0u;
    v30 = 0u;
    *v27 = 0u;
    v28 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v20 = 136315906;
    *&v20[4] = "operator[]";
    v21 = 1024;
    v22 = 789;
    v23 = 2048;
    v24 = 1;
    v25 = 2048;
    v26 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_33;
  }

  re::RenderGraphContext::metalTexture(a2, *(this + 32) + 64, 0, 0, &v17);
  if (!*(this + 20))
  {
LABEL_33:
    v19 = 0;
    v31 = 0u;
    v29 = 0u;
    v30 = 0u;
    *v27 = 0u;
    v28 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v20 = 136315906;
    *&v20[4] = "operator[]";
    v21 = 1024;
    v22 = 789;
    v23 = 2048;
    v24 = 0;
    v25 = 2048;
    v26 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_34;
  }

  v5 = re::RenderGraphContext::metalBuffer(a2, *(this + 22));
  v7 = *re::BufferSlice::buffer(v5, v6);
  v27[0] = v7;
  v8 = *(*(a2 + 1) + 192);
  v9 = v8[52];
  v10 = v8[53];
  v11 = v8[54];
  if (v18 == v8[52] && v17 == v8[53] && v7 == v8[54])
  {
    goto LABEL_18;
  }

  re::RenderGraphContext::acquireManagedBlitCommandEncoder(a2, 0, v20);
  if (v9)
  {
    v12 = [v18 arrayLength];
    if (v12 >= [v9 arrayLength])
    {
      re::mtl::BlitCommandEncoder::textureCopy(v20, v9, v18);
      goto LABEL_10;
    }

LABEL_34:
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Reducing the texture size is not supported as it requires compaction", "newShadowTexture->arrayLength() >= oldShadowTexture->arrayLength()", "execute", 119);
    _os_crash();
    __break(1u);
  }

LABEL_10:
  if (v10)
  {
    re::mtl::BlitCommandEncoder::textureCopy(v20, v10, v17);
  }

  if (v11)
  {
    v14 = [(Buffer *)v11 length];
    v15 = [(Buffer *)v7 length];
    if (v15 >= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    re::mtl::BlitCommandEncoder::bufferCopy(v20, v11, 0, v7, 0, v16);
  }

  NS::SharedPtr<MTL::Buffer>::operator=(v8 + 53, &v17);
  NS::SharedPtr<MTL::Buffer>::operator=(v8 + 52, &v18);
  NS::SharedPtr<MTL::Buffer>::operator=(v8 + 54, v27);

LABEL_18:
  if (v11)
  {
  }

  if (v10)
  {
  }

  if (v9)
  {
  }

  if (v27[0])
  {
  }

  if (v17)
  {
  }

  if (v18)
  {
  }
}

void re::GenerateTiledShadowDepthPrepassMapNode::execute(unint64_t this, unint64_t a2)
{
  v167 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1BE498, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_94;
  }

  while (1)
  {
    if (*(a2 + 1352))
    {
      v4 = re::DrawCallRecorder::allocateDrawCallRecorderGroup((a2 + 1352), *(this + 16), "DrawInstancedDepthOnlyDepthAsColor");
    }

    else
    {
      v4 = 0;
    }

    if ((atomic_load_explicit(&qword_1EE1BE4A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE4A8))
    {
      qword_1EE1BE4A0 = re::getCombinedScopeHash("SceneArray", v87, v88);
      __cxa_guard_release(&qword_1EE1BE4A8);
    }

    v5 = re::RenderGraphDataStore::tryGet<re::SceneArrayData>(*(a2 + 1168), qword_1EE1BE4A0);
    if (!v5)
    {
      v84 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v84, OS_LOG_TYPE_DEFAULT, "GenerateTiledShadowDepthPrepassMapNode::execute: Missing SceneArrayData. Skipping node execution.", buf, 2u);
      }

      return;
    }

    v6 = v5;
    if ((atomic_load_explicit(&qword_1EE1BE4B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE4B8))
    {
      qword_1EE1BE4B0 = re::hashString("ProjectiveMeshShadow", v89);
      __cxa_guard_release(&qword_1EE1BE4B8);
    }

    if ((atomic_load_explicit(&qword_1EE1BE4C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE4C8))
    {
      this = qword_1EE1BE4B0;
      qword_1EE1BE4C0 = ((this << 6) + (this >> 2) + re::hashString("RenderFrame", v90) - 0x61C8864680B583E9) ^ this;
      __cxa_guard_release(&qword_1EE1BE4C8);
    }

    v7 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshShadowGenerationData>>(*(a2 + 1168), qword_1EE1BE4C0);
    if (!v7)
    {
      return;
    }

    v8 = v7;
    if ((atomic_load_explicit(&qword_1EE1BE4D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE4D8))
    {
      qword_1EE1BE4D0 = re::hashString("DepthColorClear", v91);
      __cxa_guard_release(&qword_1EE1BE4D8);
    }

    re::RenderGraphContext::makeFullscreenDrawCall(a2, *(v8 + 128), "FullscreenDrawCall", *(v8 + 136), 0, 0, 0, 0, buf);
    *(a2 + 1553) = 1;
    v9 = re::MaterialParameterTableLayers::resolveTechniqueIndices(v135[1], qword_1EE1BE4D0);
    if (!v10)
    {
      re::internal::assertLog(6, 0, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
      _os_crash();
      __break(1u);
      goto LABEL_93;
    }

    v11 = *(v8 + 416);
    HIDWORD(v133) = *v9;
    LODWORD(v133) = v11;
    v128[0] = 0;
    re::encodeFullscreenDrawCall(buf, "DepthColorClear", a2, v4, 0, v128, 0);
    *(a2 + 1553) = 0;
    v12 = *(*a2 + 32);
    re::globalAllocators(v13);
    v14 = (*(*v12 + 32))(v12, 336, 16);
    *v14 = 0u;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0u;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0u;
    *(v14 + 72) = 0u;
    *(v14 + 88) = 0u;
    *(v14 + 104) = 0u;
    *(v14 + 120) = 0;
    *(v14 + 192) = 0;
    *(v14 + 200) = 0;
    *(v14 + 208) = 0;
    *(v14 + 224) = 0;
    *(v14 + 128) = 0u;
    *(v14 + 144) = 0u;
    *(v14 + 160) = 0u;
    *(v14 + 176) = 0;
    *(v14 + 184) = v12;
    *(v14 + 232) = xmmword_1E304F3C0;
    *(v14 + 248) = 0;
    *(v14 + 252) = 10854;
    __asm { FMOV            V0.2S, #1.0 }

    *(v14 + 256) = _D0;
    *(v14 + 264) = 0;
    *(v14 + 272) = 0;
    *(v14 + 320) = 0;
    *(&v132 + 1) = re::globalAllocators(v14)[2];
    *buf = &unk_1F5D0F668;
    *&v133 = buf;
    this = (*(*v12 + 16))(v12, v14, buf);
    re::FunctionBase<24ul,void ()(void *)>::destroyCallable(buf);
    *(this + 56) = *(v8 + 144);
    v105 = this;
    v20 = re::MaterialParameterTableLayers::resolveTechniqueIndices(this, _MergedGlobals_506);
    if (v21)
    {
      break;
    }

LABEL_93:
    re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_94:
    if (__cxa_guard_acquire(&qword_1EE1BE498))
    {
      _MergedGlobals_506 = re::hashString("DrawInstancedDepthOnlyDepthAsColor", v86);
      __cxa_guard_release(&qword_1EE1BE498);
    }
  }

  v104 = *v20;
  v102 = (*(*v12 + 32))(v12, 328, 8);
  re::DrawTable::DrawTable(v102, v12);
  v22 = *(a2 + 1168);
  v23 = "N2re31MeshShadowDepthPrepassOverridesE";
  if (("N2re31MeshShadowDepthPrepassOverridesE" & 0x8000000000000000) != 0)
  {
    v24 = ("N2re31MeshShadowDepthPrepassOverridesE" & 0x7FFFFFFFFFFFFFFFLL);
    v25 = 5381;
    do
    {
      v23 = v25;
      v26 = *v24++;
      v25 = (33 * v25) ^ v26;
    }

    while (v26);
  }

  v27 = 0x9E3779B97F4A7C17;
  v97 = v12;
  if (*(v22 + 64))
  {
    v28 = (qword_1EE1BE4C0 + (v23 << 6) + (v23 >> 2) - 0x61C8864680B583E9) ^ v23;
    v29 = *(*(v22 + 72) + 4 * (v28 % *(v22 + 88)));
    if (v29 != 0x7FFFFFFF)
    {
      v30 = *(v22 + 80);
      do
      {
        if (*(v30 + 24 * v29 + 8) == v28)
        {
          goto LABEL_90;
        }

        v29 = *(v30 + 24 * v29) & 0x7FFFFFFF;
      }

      while (v29 != 0x7FFFFFFF);
    }
  }

  v31 = 0;
LABEL_21:
  v32 = v6[3];
  v33 = &off_1E3047000;
  if (v32)
  {
    v34 = (v31 ? v31 + 8 : v8 + 234);
    if (*v34 == 1)
    {
      v35 = v6[5];
      v99 = &v35[v32];
      do
      {
        v36 = *v35;
        v37 = qword_1EE1BE4B0;
        v38 = strlen(*v35);
        if (v38)
        {
          MurmurHash3_x64_128(v36, v38, 0, buf);
          v39 = (*&buf[8] + v27 + (*buf << 6) + (*buf >> 2)) ^ *buf;
        }

        else
        {
          v39 = 0;
        }

        v40 = *(a2 + 1168);
        v41 = "N2re27RenderGraphDataStoreWrapperINS_32MeshShadowPerSceneGenerationDataEEE";
        if (("N2re27RenderGraphDataStoreWrapperINS_32MeshShadowPerSceneGenerationDataEEE" & 0x8000000000000000) != 0)
        {
          v42 = 5381;
          v43 = ("N2re27RenderGraphDataStoreWrapperINS_32MeshShadowPerSceneGenerationDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
          do
          {
            v41 = v42;
            v44 = *v43++;
            v42 = (33 * v42) ^ v44;
          }

          while (v44);
        }

        if (*(v40 + 64))
        {
          v45 = (((v27 + (v37 << 6) + (v37 >> 2) + v39) ^ v37) + v27 + (v41 << 6) + (v41 >> 2)) ^ v41;
          v46 = *(*(v40 + 72) + 4 * (v45 % *(v40 + 88)));
          if (v46 != 0x7FFFFFFF)
          {
            v47 = *(v40 + 80);
            while (*(v47 + 24 * v46 + 8) != v45)
            {
              v46 = *(v47 + 24 * v46) & 0x7FFFFFFF;
              if (v46 == 0x7FFFFFFF)
              {
                goto LABEL_77;
              }
            }

            v48 = *(v47 + 24 * v46 + 16);
            if (v48)
            {
              if ((atomic_load_explicit(&qword_1EE1BE4E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE4E8))
              {
                qword_1EE1BE4E0 = re::hashString("MeshScenes", v83);
                __cxa_guard_release(&qword_1EE1BE4E8);
              }

              v49 = qword_1EE1BE4E0;
              v50 = strlen(v36);
              if (v50)
              {
                MurmurHash3_x64_128(v36, v50, 0, buf);
                v51 = (*&buf[8] + v27 + (*buf << 6) + (*buf >> 2)) ^ *buf;
              }

              else
              {
                v51 = 0;
              }

              v52 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshSceneArrays>>(*(a2 + 1168), (v27 + (v49 << 6) + (v49 >> 2) + v51) ^ v49);
              if (v52)
              {
                v53 = v52;
                v54 = *(*(a2 + 8) + 96);
                v92 = v53;
                v93 = v35;
                if (v54)
                {
                  *buf = 0x8026BAB35997FC70;
                  *&buf[8] = "meshshadow:enableSUMeshCullingPerCaster";
                  LOBYTE(v121[0]) = 0;
                  if (re::DebugSettingsManager::getWithErrorCode<BOOL>(v54, buf, v121))
                  {
                    re::StringID::destroyString(buf);
                    v103 = 1;
                  }

                  else
                  {
                    v103 = v121[0];
                    re::StringID::destroyString(buf);
                  }

                  v55 = v97;
                }

                else
                {
                  v103 = 1;
                  v55 = v97;
                }

                v111 = 0;
                v112 = 0;
                LODWORD(v113) = 0;
                v114 = 0;
                v110 = v55;
                re::DynamicArray<re::MeshPartDrawContext>::setCapacity(&v110, 0);
                LODWORD(v113) = v113 + 1;
                v94 = *(v53 + 48);
                if (v94)
                {
                  v56 = 0;
                  v101 = a2;
                  do
                  {
                    v95 = v56;
                    v57 = re::BucketArray<re::MeshSceneCollection,16ul>::operator[](v53 + 8, v56);
                    v58 = *(v57 + 16);
                    if (v58)
                    {
                      v59 = *(v57 + 32);
                      v96 = &v59[46 * v58];
                      do
                      {
                        if (v59[43].i8[4] == 1 && re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(v48 + 8, &v59[32]))
                        {
                          v60 = v59->i64[1];
                          v121[0] = 0;
                          v121[1] = v60;
                          v122 = xmmword_1E3047670;
                          v123 = xmmword_1E3047680;
                          v124 = xmmword_1E30476A0;
                          v125 = xmmword_1E30474D0;
                          v126 = 0;
                          v127 = 0;
                          v61 = v59[3].i64[1];
                          if (v61)
                          {
                            v62 = v59[3].i64[0];
                          }

                          else
                          {
                            v62 = v121;
                            v61 = 1;
                          }

                          v98 = &v62[12 * v61];
                          do
                          {
                            v63 = 0;
                            v64 = v59[8];
                            v65 = v59[9];
                            v66 = v59[10];
                            v67 = v59[11];
                            v68 = *(v62 + 2);
                            v69 = *(v62 + 3);
                            v70 = *(v62 + 4);
                            v162 = *(v62 + 1);
                            v163 = v68;
                            v164 = v69;
                            v165 = v70;
                            do
                            {
                              *&buf[v63] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v64, COERCE_FLOAT(*(&v162 + v63))), v65, *(&v162 + v63), 1), v66, *(&v162 + v63), 2), v67, *(&v162 + v63), 3);
                              v63 += 16;
                            }

                            while (v63 != 64);
                            v108 = v132;
                            v109 = *buf;
                            v106 = v134;
                            v107 = v133;
                            v100 = v62;
                            v71 = re::Slice<re::internal::BindPointImplBase const*>::range(v59, *v62, v62[1]);
                            if (v72)
                            {
                              v6 = v71;
                              v73 = (v71 + 8 * v72);
                              do
                              {
                                v74 = *v6;
                                v75 = (((*(*v6 + 528) ^ *(*(v105 + 56) + 296)) & ~*(*(v105 + 56) + 300) | *(*(v105 + 56) + 300) & *(*(v105 + 56) + 296)) ^ v59[31].i32[2]) & ~v59[31].i32[3] | v59[31].i32[2] & v59[31].i32[3];
                                v76 = v59[32].i64[0];
                                *&buf[8] = 0;
                                *&v132 = 0;
                                *buf = v76;
                                *(&v132 + 1) = v74;
                                *&v133 = 0;
                                *(&v133 + 1) = v105;
                                *&v134 = 0;
                                DWORD2(v134) = -65280;
                                v136 = v109;
                                v137 = v108;
                                v138 = v107;
                                v139 = v106;
                                v145 = 0;
                                v144 = 0;
                                v146 = 0;
                                v147 = 0;
                                v140 = 0;
                                v141 = 0;
                                v143 = 0;
                                v142 = 0;
                                v148 = v75;
                                v149 = -NAN;
                                v150 = 0;
                                v151 = 0xFFFFFFFFLL;
                                v152 = 0;
                                v153 = 0;
                                v77 = *(v74 + 432);
                                v129[0] = *(v74 + 416);
                                v129[1] = v77;
                                LODWORD(v135[0]) = 0;
                                HIDWORD(v134) = v104;
                                if (v103)
                                {
                                  a2 = *(v48 + 56);
                                  if (a2 < *(v48 + 60) + a2)
                                  {
                                    v78 = 112 * a2;
                                    while (1)
                                    {
                                      v27 = *(v8 + 448);
                                      if (v27 <= a2)
                                      {
                                        break;
                                      }

                                      v79 = (*(v8 + 456) + v78);
                                      v80 = *v79;
                                      *&v162 = v79 + 2;
                                      *(&v162 + 1) = v80;
                                      if (re::isBoundingBoxInsidePlanes(v129, &v162, &v136))
                                      {
                                        goto LABEL_68;
                                      }

                                      ++a2;
                                      v78 += 112;
                                      if (a2 >= (*(v48 + 60) + *(v48 + 56)))
                                      {
                                        goto LABEL_69;
                                      }
                                    }

                                    v130 = 0;
                                    v165 = 0u;
                                    v166 = 0u;
                                    v163 = 0u;
                                    v164 = 0u;
                                    v162 = 0u;
                                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                                    v154 = 136315906;
                                    v155 = "operator[]";
                                    v156 = 1024;
                                    v157 = 476;
                                    v158 = 2048;
                                    v159 = a2;
                                    v160 = 2048;
                                    v161 = v27;
                                    _os_log_send_and_compose_impl();
                                    _os_crash_msg();
                                    __break(1u);
LABEL_90:
                                    v31 = *(v30 + 24 * v29 + 16);
                                    goto LABEL_21;
                                  }
                                }

                                else
                                {
LABEL_68:
                                  v81 = *v101;
                                  v162 = 0u;
                                  v163 = 0u;
                                  LODWORD(v164) = 0;
                                  v82 = re::addDrawCall(v102, buf, v81, 1u, &v162);
                                  *(v82 + 40) = *(v48 + 56);
                                  *(v82 + 32) = *(v48 + 60);
                                }

LABEL_69:
                                ++v6;
                              }

                              while (v6 != v73);
                            }

                            v62 = v100 + 12;
                          }

                          while (v100 + 12 != v98);
                          a2 = v101;
                          v27 = 0x9E3779B97F4A7C17;
                          v33 = &off_1E3047000;
                          v53 = v92;
                          v35 = v93;
                        }

                        v59 += 46;
                      }

                      while (v59 != v96);
                    }

                    v56 = v95 + 1;
                  }

                  while (v95 + 1 != v94);
                }

                if (v110)
                {
                  if (v114)
                  {
                    (*(*v110 + 40))(v110, v114);
                  }
                }
              }
            }
          }
        }

LABEL_77:
        ++v35;
      }

      while (v35 != v99);
    }
  }

  re::RenderGraphContext::acquireManagedRenderCommandEncoder(&v154, a2, 0);
  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  v162 = 0u;
  re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs(a2, &v162);
  *buf = xmmword_1E3047670;
  v132 = xmmword_1E3047680;
  v85 = *(v33 + 77);
  v133 = xmmword_1E30476A0;
  v134 = v85;
  *v135 = xmmword_1E3047670;
  v136 = xmmword_1E3047680;
  v137 = xmmword_1E30476A0;
  v138 = v85;
  re::DrawTableSlice::DrawTableSlice(v121, v102);
  *(a2 + 1553) = 1;
  v110 = "DrawInstancedDepthOnlyDepthAsColor";
  v111 = v121;
  v112 = buf;
  v113 = buf;
  v114 = 0;
  v115 = 513;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  v119 = v4;
  v120 = 0;
  re::RenderGraphContext::encodeDrawCalls(a2, &v162, &v110);
  *(a2 + 1553) = 0;
  re::mtl::RenderCommandEncoder::~RenderCommandEncoder(&v154);
}

void re::GenerateProjectiveMeshShadowMapNode::execute(unint64_t this, re::RenderGraphContext *a2)
{
  v177 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 1);
  v5 = "SurfaceShaderMeshShadowCaster";
  v6 = "projectiveMeshShadowTechnique";
  if (v4[371] == 1 && *v4)
  {
    v6 = "projectiveMeshShadowTechniqueProgrammableBlending";
    v5 = "SurfaceShaderMeshShadowCasterProgrammableBlending";
  }

  if ((atomic_load_explicit(&qword_1EE1BE4F8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_101;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1BE508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE508))
    {
      qword_1EE1BE500 = re::hashString(v5, v88);
      __cxa_guard_release(&qword_1EE1BE508);
    }

    if ((atomic_load_explicit(&qword_1EE1BE518, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE518))
    {
      qword_1EE1BE510 = re::getCombinedScopeHash("SceneArray", v89, v90);
      __cxa_guard_release(&qword_1EE1BE518);
    }

    v7 = re::RenderGraphDataStore::tryGet<re::SceneArrayData>(*(a2 + 146), qword_1EE1BE510);
    if (!v7)
    {
      v86 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v86, OS_LOG_TYPE_DEFAULT, "GenerateProjectiveMeshShadowMapNode::execute: Missing SceneArrayData. Skipping node execution.", buf, 2u);
      }

      return;
    }

    v8 = v7;
    if ((atomic_load_explicit(&qword_1EE1BE528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE528))
    {
      qword_1EE1BE520 = re::hashString("ProjectiveMeshShadow", v91);
      __cxa_guard_release(&qword_1EE1BE528);
    }

    if ((atomic_load_explicit(&qword_1EE1BE538, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE538))
    {
      v93 = qword_1EE1BE520;
      qword_1EE1BE530 = ((v93 << 6) + (v93 >> 2) + re::hashString("RenderFrame", v92) - 0x61C8864680B583E9) ^ v93;
      __cxa_guard_release(&qword_1EE1BE538);
    }

    v9 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshShadowGenerationData>>(*(a2 + 146), qword_1EE1BE530);
    if (!v9)
    {
      return;
    }

    v114 = v9;
    if (*(a2 + 338))
    {
      goto LABEL_99;
    }

    v10 = 0;
LABEL_13:
    if ((atomic_load_explicit(&qword_1EE1BE548, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE548))
    {
      qword_1EE1BE540 = re::hashString("ShadowClear", v94);
      __cxa_guard_release(&qword_1EE1BE548);
    }

    v5 = v114;
    re::RenderGraphContext::makeFullscreenDrawCall(a2, *(v114 + 128), "FullscreenDrawCall", *(v114 + 136), 0, 0, 0, 0, buf);
    v11 = re::MaterialParameterTableLayers::resolveTechniqueIndices(v150[1], qword_1EE1BE540);
    if (v12)
    {
      break;
    }

    re::internal::assertLog(6, 0, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_101:
    if (__cxa_guard_acquire(&qword_1EE1BE4F8))
    {
      qword_1EE1BE4F0 = re::hashString(v6, v87);
      __cxa_guard_release(&qword_1EE1BE4F8);
    }
  }

  v96 = v10;
  v97 = v6;
  v13 = *(v114 + 416);
  HIDWORD(v148) = *v11;
  LODWORD(v148) = v13;
  *(a2 + 1553) = 1;
  v144[0] = 0;
  re::encodeFullscreenDrawCall(buf, "ShadowClear", a2, v10, 0, v144, 0);
  *(a2 + 1553) = 0;
  v14 = *(*a2 + 32);
  v109 = (*(*v14 + 32))(v14, 328, 8);
  re::DrawTable::DrawTable(v109, v14);
  v15 = *(v8 + 24);
  if (v15)
  {
    v16 = *(v8 + 40);
    v95 = &v16[v15];
    v17 = &unk_1EE1BE000;
    v6 = 736;
    __asm { FMOV            V10.2S, #1.0 }

    do
    {
      v98 = v16;
      v23 = *v16;
      if ((atomic_load_explicit(&qword_1EE1BE558, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE558))
      {
        qword_1EE1BE550 = re::hashString("MeshScenes", v85);
        __cxa_guard_release(&qword_1EE1BE558);
      }

      v24 = v17[170];
      v25 = strlen(v23);
      if (v25)
      {
        MurmurHash3_x64_128(v23, v25, 0, buf);
        v26 = (*&buf[8] - 0x61C8864680B583E9 + (*buf << 6) + (*buf >> 2)) ^ *buf;
      }

      else
      {
        v26 = 0;
      }

      v27 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshSceneArrays>>(*(a2 + 146), ((v24 << 6) - 0x61C8864680B583E9 + (v24 >> 2) + v26) ^ v24);
      v28 = v27 + 8;
      if (!v27)
      {
        v28 = 0;
      }

      v101 = v28;
      v100 = *(v28 + 40);
      if (v100)
      {
        v29 = 0;
        do
        {
          v103 = v29;
          v30 = re::BucketArray<re::MeshSceneCollection,16ul>::operator[](v101, v29);
          if (*(v30 + 16))
          {
            v31 = 0;
            v104 = v30;
            do
            {
              v32 = *(v30 + 32) + 736 * v31;
              if (*(v32 + 691) == 1)
              {
                v33 = 0xBF58476D1CE4E5B9 * (*(v32 + 512) ^ (*(v32 + 512) >> 30));
                v107 = v31;
                re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v114 + 80, (v32 + 512), (0x94D049BB133111EBLL * (v33 ^ (v33 >> 27))) ^ ((0x94D049BB133111EBLL * (v33 ^ (v33 >> 27))) >> 31), buf);
                v31 = v107;
                v30 = v104;
                if (*&buf[12] != 0x7FFFFFFF && *(v32 + 472) != 0.0 && *(v32 + 696) != 0.0 && ((*(v32 + 504) ^ *(v32 + 508)) & 0x10) == 0)
                {
                  v135[0] = v32;
                  v135[1] = **(v32 + 112);
                  v135[2] = *(*(v32 + 112) + 8);
                  v35 = *(v32 + 8);
                  v136[0] = 0;
                  v136[1] = v35;
                  v137 = xmmword_1E3047670;
                  v138 = xmmword_1E3047680;
                  v139 = xmmword_1E30476A0;
                  v140 = xmmword_1E30474D0;
                  v141 = 0;
                  v142 = 0;
                  if (!*(v32 + 56))
                  {
                    *&v143 = v136;
                    *(&v143 + 1) = 1;
                    v99 = 1;
LABEL_36:
                    v36 = 0;
                    while (1)
                    {
                      v134[0] = v135;
                      v102 = v36;
                      v134[1] = v36;
                      v37 = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::renderGroupInstance(v134, v34);
                      v39 = 0;
                      v40 = *(v32 + 128);
                      v41 = *(v32 + 144);
                      v42 = *(v32 + 160);
                      v43 = *(v32 + 176);
                      v44 = v37[2];
                      v45 = v37[3];
                      v46 = v37[4];
                      v129 = v37[1];
                      v130 = v44;
                      v131 = v45;
                      v132 = v46;
                      this = &v129;
                      do
                      {
                        *&buf[v39] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, COERCE_FLOAT(*(&v129 + v39))), v41, *(&v129 + v39), 1), v42, *(&v129 + v39), 2), v43, *(&v129 + v39), 3);
                        v39 += 16;
                      }

                      while (v39 != 64);
                      v47 = *buf;
                      v48 = v147;
                      v49 = v148;
                      v50 = v149;
                      if (*(v32 + 608) == 1)
                      {
                        v51 = 0;
                        v52 = *(v32 + 640);
                        v53 = *(v32 + 656);
                        v54 = *(v32 + 672);
                        v129 = *(v32 + 624);
                        v130 = v52;
                        v131 = v53;
                        v132 = v54;
                        do
                        {
                          *&buf[v51] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v47, COERCE_FLOAT(*(&v129 + v51))), v48, *(&v129 + v51), 1), v49, *(&v129 + v51), 2), v50, *(&v129 + v51), 3);
                          v51 += 16;
                        }

                        while (v51 != 64);
                        v112 = v147;
                        v113 = *buf;
                        v110 = v149;
                        v111 = v148;
                      }

                      else
                      {
                        v110 = v149;
                        v111 = v148;
                        v112 = v147;
                        v113 = *buf;
                      }

                      v8 = *v134[0];
                      v55 = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::renderGroupInstance(v134, v38);
                      v106 = re::Slice<re::internal::BindPointImplBase const*>::range(v8, *v55, v55[1]);
                      v57 = v56;
                      re::StackScratchAllocator::StackScratchAllocator(&v129);
                      v117 = 0;
                      v118 = 0;
                      LODWORD(v119) = 0;
                      v120 = 0;
                      v116 = &v129;
                      re::DynamicArray<float *>::setCapacity(&v116, 0);
                      LODWORD(v119) = v119 + 1;
                      if (*(v32 + 608) == 1)
                      {
                        v58 = *(*(a2 + 1) + 32);
                        v57 = WORD1(*(v114 + 72));
                        this = *(v58 + 24);
                        if (this <= v57)
                        {
                          goto LABEL_98;
                        }

                        v59 = *(*(v58 + 40) + 16 * WORD1(*(v114 + 72))) + 864 * *(v114 + 72);
                        v60 = *(v59 + 56);
                        if (v60)
                        {
                          v61 = *(v59 + 64);
                          this = 544 * v60;
                          do
                          {
                            *buf = v61;
                            re::DynamicArray<re::TransitionCondition *>::add(&v116, buf);
                            v61 += 544;
                            this -= 544;
                          }

                          while (this);
                        }

                        v106 = v120;
                        v57 = v118;
                      }

                      if (v57)
                      {
                        break;
                      }

LABEL_78:
                      if (v116 && v120)
                      {
                        (*(*v116 + 40))(v116, v120);
                      }

                      re::StackScratchAllocator::~StackScratchAllocator(&v129);
                      v36 = v102 + 1;
                      v6 = 736;
                      if (v102 + 1 == v99)
                      {
                        goto LABEL_82;
                      }
                    }

                    v62 = 0;
                    v105 = v57;
                    while (2)
                    {
                      v115 = *(v106 + 8 * v62);
                      v108 = v62;
                      v63 = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::materialIndexForPart(v134, v62);
                      v64 = qword_1EE1BE4F0;
                      v8 = v63;
                      if (*(v32 + 200) <= v63)
                      {
                        goto LABEL_62;
                      }

                      v57 = *(*(v32 + 192) + 8 * v63);
                      if ((atomic_load_explicit(&qword_1EE1BE568, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE568))
                      {
                        MurmurHash3_x64_128("Occlusion", 9uLL, 0, buf);
                        qword_1EE1BE560 = (*&buf[8] - 0x61C8864680B583E9 + (*buf << 6) + (*buf >> 2)) ^ *buf;
                        __cxa_guard_release(&qword_1EE1BE568);
                      }

                      if (v57)
                      {
                        v65 = qword_1EE1BE560;
                        if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
                        {
                          dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
                        }

                        if (!re::MaterialParameterTable::tryGetPassTechniqueMapping((v57 + 304), v65, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash))
                        {
                          v66 = qword_1EE1BE500;
                          if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
                          {
                            dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
                          }

                          if (re::MaterialParameterTable::tryGetPassTechniqueMapping((v57 + 304), v66, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash))
                          {
                            v64 = qword_1EE1BE500;
                          }

                          goto LABEL_62;
                        }
                      }

                      else
                      {
LABEL_62:
                        v6 = v114;
                        v67 = re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::Entity *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](v114 + 80, (v32 + 512));
                        if (!*(v67 + 16))
                        {
                          goto LABEL_96;
                        }

                        v57 = **(v67 + 32);
                        this = *(v114 + 56);
                        if (this <= v57)
                        {
                          goto LABEL_97;
                        }

                        v68 = *(*(v114 + 64) + 4 * v57);
                        v69 = powf(*(v32 + 472), *(v114 + 256));
                        v70 = re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::Entity *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](v114 + 80, (v32 + 512));
                        v71 = *(v70 + 2);
                        if (v71)
                        {
                          v72 = v68 * v69;
                          this = *(v70 + 4);
                          v6 = 4 * v71;
                          while (1)
                          {
                            v57 = *this;
                            re::globalAllocators(v70);
                            v73 = (*(*v14 + 32))(v14, 336, 16);
                            *v73 = 0u;
                            *(v73 + 16) = 0u;
                            *(v73 + 32) = 0u;
                            *(v73 + 48) = 0;
                            *(v73 + 56) = 0u;
                            *(v73 + 72) = 0u;
                            *(v73 + 88) = 0u;
                            *(v73 + 104) = 0u;
                            *(v73 + 120) = 0;
                            *(v73 + 192) = 0;
                            *(v73 + 200) = 0;
                            *(v73 + 208) = 0;
                            *(v73 + 224) = 0;
                            *(v73 + 128) = 0u;
                            *(v73 + 144) = 0u;
                            *(v73 + 160) = 0u;
                            *(v73 + 176) = 0;
                            *(v73 + 184) = v14;
                            *(v73 + 232) = xmmword_1E304F3C0;
                            *(v73 + 248) = 0;
                            *(v73 + 252) = 10854;
                            *(v73 + 256) = _D10;
                            *(v73 + 264) = 0;
                            *(v73 + 272) = 0;
                            *(v73 + 320) = 0;
                            *(&v147 + 1) = re::globalAllocators(v73)[2];
                            *buf = &unk_1F5D0F6C0;
                            *&v148 = buf;
                            v74 = (*(*v14 + 16))(v14, v73, buf);
                            re::FunctionBase<24ul,void ()(void *)>::destroyCallable(buf);
                            *(v74 + 232) = v72;
                            *(v74 + 236) = *(v32 + 696);
                            v75 = (v114 + 16);
                            if (v64 == qword_1EE1BE500)
                            {
                              v75 = (v114 + 16);
                              if (*(v32 + 200) > v8)
                              {
                                v75 = (*(v32 + 192) + 8 * v8);
                              }
                            }

                            *(v74 + 56) = *v75;
                            v76 = *(v114 + 32);
                            if (v76 <= v57)
                            {
                              break;
                            }

                            *(v74 + 88) = *(*(v114 + 40) + 8 * v57);
                            *(v74 + 200) = *(v32 + 416);
                            v77 = re::MaterialParameterTableLayers::resolveTechniqueIndices(v74, v64);
                            if (!v78)
                            {
                              goto LABEL_95;
                            }

                            v79 = *v77;
                            v80 = (*(v115 + 528) ^ *(*(v74 + 56) + 296)) & ~*(*(v74 + 56) + 300) | *(*(v74 + 56) + 300) & *(*(v74 + 56) + 296);
                            if (*(v32 + 496) > v8)
                            {
                              v81 = re::MaterialRenderFlags::flattenToOverrideFlags((*(v32 + 488) + 20 * v8));
                              v80 = (v80 ^ v81) & ~HIDWORD(v81) | HIDWORD(v81) & v81;
                            }

                            v82 = (*(v32 + 504) ^ v80) & ~*(v32 + 508) | *(v32 + 504) & *(v32 + 508);
                            v83 = *(v32 + 512);
                            *&buf[8] = 0;
                            *&v147 = 0;
                            *buf = v83;
                            *(&v147 + 1) = v115;
                            *&v148 = 0;
                            *(&v148 + 1) = v74;
                            *&v149 = 0;
                            DWORD2(v149) = -65280;
                            HIDWORD(v149) = v79;
                            LODWORD(v150[0]) = 0;
                            v151 = v113;
                            v152 = v112;
                            v153 = v111;
                            v154 = v110;
                            v160 = 0;
                            v159 = 0;
                            v161 = 0;
                            v162 = 0;
                            v155 = 0;
                            v156 = 0;
                            v158 = 0;
                            v157 = 0;
                            v163 = v82;
                            v164 = -NAN;
                            v165 = 0;
                            v166 = 0xFFFFFFFFLL;
                            v167 = 0;
                            v168 = 0;
                            v84 = *a2;
                            memset(v127, 0, sizeof(v127));
                            v128 = 0;
                            v70 = re::addDrawCall(v109, buf, v84, 1u, v127);
                            this += 4;
                            v6 -= 4;
                            if (!v6)
                            {
                              goto LABEL_74;
                            }
                          }

                          v145 = 0;
                          v149 = 0u;
                          *v150 = 0u;
                          v147 = 0u;
                          v148 = 0u;
                          *buf = 0u;
                          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          v169 = 136315906;
                          v170 = "operator[]";
                          v171 = 1024;
                          v172 = 476;
                          v173 = 2048;
                          v174 = v57;
                          v175 = 2048;
                          v176 = v76;
                          _os_log_send_and_compose_impl();
                          _os_crash_msg();
                          __break(1u);
LABEL_95:
                          re::internal::assertLog(6, v78, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
                          _os_crash();
                          __break(1u);
LABEL_96:
                          v145 = 0;
                          v149 = 0u;
                          *v150 = 0u;
                          v147 = 0u;
                          v148 = 0u;
                          *buf = 0u;
                          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          v169 = 136315906;
                          v170 = "operator[]";
                          v171 = 1024;
                          v172 = 797;
                          v173 = 2048;
                          v174 = 0;
                          v175 = 2048;
                          v176 = 0;
                          _os_log_send_and_compose_impl();
                          _os_crash_msg();
                          __break(1u);
LABEL_97:
                          v145 = 0;
                          v149 = 0u;
                          *v150 = 0u;
                          v147 = 0u;
                          v148 = 0u;
                          *buf = 0u;
                          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          v169 = 136315906;
                          v170 = "operator[]";
                          v171 = 1024;
                          v172 = 476;
                          v173 = 2048;
                          v174 = v57;
                          v175 = 2048;
                          v176 = this;
                          _os_log_send_and_compose_impl();
                          _os_crash_msg();
                          __break(1u);
LABEL_98:
                          v145 = 0;
                          v149 = 0u;
                          *v150 = 0u;
                          v147 = 0u;
                          v148 = 0u;
                          *buf = 0u;
                          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          v169 = 136315906;
                          v170 = "operator[]";
                          v171 = 1024;
                          v172 = 797;
                          v173 = 2048;
                          v174 = v57;
                          v175 = 2048;
                          v176 = this;
                          _os_log_send_and_compose_impl();
                          _os_crash_msg();
                          __break(1u);
LABEL_99:
                          v10 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(a2 + 169, *(this + 16), 0);
                          goto LABEL_13;
                        }
                      }

LABEL_74:
                      v62 = v108 + 1;
                      v57 = v105;
                      if (v108 + 1 == v105)
                      {
                        goto LABEL_78;
                      }

                      continue;
                    }
                  }

                  v143 = *(v32 + 48);
                  v99 = *(&v143 + 1);
                  if (*(&v143 + 1))
                  {
                    goto LABEL_36;
                  }

LABEL_82:
                  v30 = v104;
                  v31 = v107;
                }
              }

              ++v31;
            }

            while (v31 < *(v30 + 16));
          }

          v29 = v103 + 1;
        }

        while (v103 + 1 != v100);
      }

      v16 = v98 + 1;
      v17 = &unk_1EE1BE000;
    }

    while (v98 + 1 != v95);
  }

  if (*(v109 + 5))
  {
    *buf = xmmword_1E3047670;
    v147 = xmmword_1E3047680;
    v148 = xmmword_1E30476A0;
    v149 = xmmword_1E30474D0;
    *v150 = xmmword_1E3047670;
    v151 = xmmword_1E3047680;
    v152 = xmmword_1E30476A0;
    v153 = xmmword_1E30474D0;
    re::DrawTableSlice::DrawTableSlice(v135, v109);
    *(a2 + 1553) = 1;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v129 = 0u;
    re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs(a2, &v129);
    v116 = v97;
    v117 = v135;
    v118 = buf;
    v119 = buf;
    v120 = 0;
    v121 = 513;
    v122 = 0;
    v123 = 0;
    v124 = 0;
    v125 = v96;
    v126 = 1;
    re::RenderGraphContext::encodeDrawCalls(a2, &v129, &v116);
    *(a2 + 1553) = 0;
  }
}

uint64_t re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::materialIndexForPart(re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem *this, unint64_t a2)
{
  v4 = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::renderGroupInstance(this, a2);
  if (*(v4 + 88) > a2)
  {
    return *(*(v4 + 80) + 4 * a2);
  }

  v7 = **this;
  v8 = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::renderGroupInstance(this, v5);
  v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v7, *v8, v8[1]);
  if (v10 > a2)
  {
    return *(*(v9 + 8 * a2) + 458);
  }

  re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a2, v10);
  result = _os_crash();
  __break(1u);
  return result;
}

void *re::RenderProjectiveMeshShadowPatchesNode::execute(re::RenderProjectiveMeshShadowPatchesNode *this, re::RenderGraphContext *a2)
{
  v206 = *MEMORY[0x1E69E9840];
  result = re::RenderGraphDataStore::tryGet<re::SceneScope>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (!result)
  {
    return result;
  }

  if ((atomic_load_explicit(&qword_1EE1BE578, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE578))
  {
    qword_1EE1BE570 = re::hashString("ProjectiveMeshShadow", v122);
    __cxa_guard_release(&qword_1EE1BE578);
  }

  if ((atomic_load_explicit(&qword_1EE1BE588, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE588))
  {
    v124 = qword_1EE1BE570;
    qword_1EE1BE580 = ((v124 << 6) + (v124 >> 2) + re::hashString("RenderFrame", v123) - 0x61C8864680B583E9) ^ v124;
    __cxa_guard_release(&qword_1EE1BE588);
  }

  v182 = 1;
  v4 = *(*(a2 + 1) + 96);
  if (v4)
  {
    *v190 = 0x8E55C4195E970258;
    *&v190[8] = "meshshadow:visualizeShadows";
    LOBYTE(v183[0]) = 0;
    v5 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v4, v190, v183);
    if (v5)
    {
      if (v190[0])
      {
        if (v190[0])
        {
        }
      }
    }

    else
    {
      v6 = v183[0];
      if (v190[0])
      {
        if (v190[0])
        {
        }
      }

      if (v6)
      {
        v142 = 1;
        goto LABEL_15;
      }
    }
  }

  v142 = 0;
LABEL_15:
  v7 = *(*(a2 + 1) + 96);
  if (v7)
  {
    *v190 = 0xB54CABA028476570;
    *&v190[8] = "meshshadow:visualizeDepthPrepass";
    LOBYTE(v183[0]) = 0;
    v8 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v7, v190, v183);
    if (v8)
    {
      if (v190[0])
      {
        if (v190[0])
        {
        }
      }
    }

    else
    {
      v9 = v183[0];
      if (v190[0])
      {
        if (v190[0])
        {
        }
      }

      if (v9)
      {
        v134 = 0;
        goto LABEL_26;
      }
    }
  }

  v134 = 1;
LABEL_26:
  v10 = *(*(a2 + 1) + 96);
  if (v10)
  {
    *v190 = 0x8E55C417E7AA3440;
    *&v190[8] = "meshshadow:visualizeOverlap";
    LOBYTE(v183[0]) = 0;
    v11 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v10, v190, v183);
    if (v11)
    {
      if (v190[0])
      {
        if (v190[0])
        {
        }
      }
    }

    else
    {
      v12 = v183[0];
      if (v190[0])
      {
        if (v190[0])
        {
        }
      }

      if (v12)
      {
        v141 = 1;
        goto LABEL_37;
      }
    }
  }

  v141 = 0;
LABEL_37:
  v13 = re::internal::shadows::g_enableMaxBlend;
  v14 = *(*(a2 + 1) + 96);
  if (v14)
  {
    *v190 = 0x8B008DEF08584B7ALL;
    *&v190[8] = "meshshadow:enableMaxBlend";
    LOBYTE(v183[0]) = 0;
    v15 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v14, v190, v183);
    if (!v15)
    {
      v13 = v183[0];
    }

    if (v190[0])
    {
      if (v190[0])
      {
      }
    }
  }

  if (*(this + 264) == 1)
  {
    v16 = &qword_1EE1BE690;
    if (atomic_load_explicit(algn_1EE1BE698, memory_order_acquire))
    {
      v17 = re::RenderProjectiveMeshShadowPatchesNode::execute(re::RenderGraphContext &)::$_5::operator() const(void)::depthOnlyPassName;
      goto LABEL_51;
    }

    if (__cxa_guard_acquire(algn_1EE1BE698))
    {
      qword_1EE1BE690 = re::hashString("PatchShadowReceiverDepthOnly", v129);
      v130 = algn_1EE1BE698;
      v17 = re::RenderProjectiveMeshShadowPatchesNode::execute(re::RenderGraphContext &)::$_5::operator() const(void)::depthOnlyPassName;
LABEL_189:
      __cxa_guard_release(v130);
      goto LABEL_51;
    }

    v17 = re::RenderProjectiveMeshShadowPatchesNode::execute(re::RenderGraphContext &)::$_5::operator() const(void)::depthOnlyPassName;
  }

  else if (*(this + 266) & v13)
  {
    v16 = &qword_1EE1BE6A0;
    if (atomic_load_explicit(algn_1EE1BE6A8, memory_order_acquire))
    {
      v17 = re::RenderProjectiveMeshShadowPatchesNode::execute(re::RenderGraphContext &)::$_5::operator() const(void)::maxBlendPassName;
      goto LABEL_51;
    }

    if (__cxa_guard_acquire(algn_1EE1BE6A8))
    {
      qword_1EE1BE6A0 = re::hashString("DrawMeshShadowPatchReceiverMaxBlend", v132);
      v130 = algn_1EE1BE6A8;
      v17 = re::RenderProjectiveMeshShadowPatchesNode::execute(re::RenderGraphContext &)::$_5::operator() const(void)::maxBlendPassName;
      goto LABEL_189;
    }

    v17 = re::RenderProjectiveMeshShadowPatchesNode::execute(re::RenderGraphContext &)::$_5::operator() const(void)::maxBlendPassName;
  }

  else
  {
    v16 = &qword_1EE1BE6B0;
    if (atomic_load_explicit(algn_1EE1BE6B8, memory_order_acquire))
    {
      v17 = &re::RenderProjectiveMeshShadowPatchesNode::execute(re::RenderGraphContext &)::$_5::operator() const(void)::defaultPassName;
      goto LABEL_51;
    }

    if (__cxa_guard_acquire(algn_1EE1BE6B8))
    {
      qword_1EE1BE6B0 = re::hashString("DrawMeshShadowPatchReceiver", v133);
      v130 = algn_1EE1BE6B8;
      v17 = &re::RenderProjectiveMeshShadowPatchesNode::execute(re::RenderGraphContext &)::$_5::operator() const(void)::defaultPassName;
      goto LABEL_189;
    }

    v17 = &re::RenderProjectiveMeshShadowPatchesNode::execute(re::RenderGraphContext &)::$_5::operator() const(void)::defaultPassName;
  }

LABEL_51:
  v18 = *v16;
  v137 = *v17;
  if ((atomic_load_explicit(&qword_1EE1BE598, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE598))
  {
    qword_1EE1BE590 = re::hashString("MeshShadowPatchReceiverDepthPrepass", v125);
    __cxa_guard_release(&qword_1EE1BE598);
  }

  if ((atomic_load_explicit(&qword_1EE1BE5A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE5A8))
  {
    v126 = [*(*(a2 + 1) + 208) supportsShaderBarycentricCoordinates];
    v127 = "MeshShadowPatchReceiverVisualizeDepthPrepass";
    if (v126)
    {
      v127 = "MeshShadowPatchReceiverVisualizeDepthPrepassWithWireframe";
    }

    qword_1EE1BE5A0 = v127;
    __cxa_guard_release(&qword_1EE1BE5A8);
  }

  if ((atomic_load_explicit(&qword_1EE1BE5B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE5B8))
  {
    qword_1EE1BE5B0 = re::hashString(qword_1EE1BE5A0, v128);
    __cxa_guard_release(&qword_1EE1BE5B8);
  }

  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshShadowRenderingData>>(*(a2 + 146), qword_1EE1BE580);
  v19 = result;
  if (*(a2 + 338))
  {
    result = re::DrawCallRecorder::allocateDrawCallRecorderGroup(a2 + 169, *(this + 2), 0);
    v140 = result;
    if (!v19)
    {
      return result;
    }
  }

  else
  {
    v140 = 0;
    if (!result)
    {
      return result;
    }
  }

  if (*(v19 + 5))
  {
    v20 = *(*a2 + 32);
    re::globalAllocators(result);
    v21 = (*(*v20 + 32))(v20, 336, 16);
    *v21 = 0u;
    *(v21 + 16) = 0u;
    *(v21 + 32) = 0u;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0u;
    *(v21 + 72) = 0u;
    *(v21 + 88) = 0u;
    *(v21 + 104) = 0u;
    *(v21 + 120) = 0;
    *(v21 + 192) = 0;
    *(v21 + 200) = 0;
    *(v21 + 208) = 0;
    *(v21 + 224) = 0;
    *(v21 + 128) = 0u;
    *(v21 + 144) = 0u;
    *(v21 + 160) = 0u;
    *(v21 + 176) = 0;
    *(v21 + 184) = v20;
    *(v21 + 232) = xmmword_1E304F3C0;
    *(v21 + 248) = 0;
    *(v21 + 252) = 10854;
    __asm { FMOV            V0.2S, #1.0 }

    *(v21 + 256) = _D0;
    *(v21 + 264) = 0;
    *(v21 + 272) = 0;
    *(v21 + 320) = 0;
    *&v190[24] = re::globalAllocators(v21)[2];
    *v190 = &unk_1F5D0F718;
    *&v190[32] = v190;
    v144 = v20;
    v27 = (*(*v20 + 16))(v20, v21, v190);
    re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v190);
    *(v27 + 56) = *(v19 + 7);
    v153 = v27;
    v28 = re::MaterialParameterTableLayers::resolveTechniqueIndices(v27, v18);
    if (!v29)
    {
      goto LABEL_166;
    }

    v30 = *v28;
    ReceiverMesh = re::ShadowRenderManager::getReceiverMesh(*(*(a2 + 1) + 192));
    if ((*(this + 264) & 1) != 0 || *(this + 265) == 1)
    {
      if ((atomic_load_explicit(&qword_1EE1BE5C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE5C8))
      {
        qword_1EE1BE5C0 = re::hashString("SetStencilForBackgroundPixels", v131);
        __cxa_guard_release(&qword_1EE1BE5C8);
      }

      re::RenderGraphContext::makeFullscreenDrawCall(a2, v19[7], "FullscreenDrawCall", 0, 0, 0, 0, 0, v190);
      v31 = re::MaterialParameterTableLayers::resolveTechniqueIndices(*&v190[72], qword_1EE1BE5C0);
      if (!v32)
      {
        goto LABEL_167;
      }

      *&v190[44] = *v31;
      *(a2 + 1553) = 1;
      v179 = 1;
      v180 = __const__ZN2re20FeatureStencilStates17getMeshShadowInfoENS0_15MeshShadowUsageE_kWriteStInfo;
      v181 = 64;
      re::encodeFullscreenDrawCall(v190, "SetStencilForBackgroundPixels", a2, v140, 0, &v179, 0);
      *(a2 + 1553) = 0;
    }

    v33 = 0x9E3779B97F4A7C17;
    v34 = re::RenderGraphDataStore::get<re::SceneScope>(*(a2 + 146), *(*(a2 + 5) + 48));
    if (*(v34 + 16))
    {
      v35 = *(v34 + 24);
    }

    else
    {
      v35 = (v34 + 17);
    }

    v36 = strlen(v35);
    v136 = v30;
    if (v36)
    {
      MurmurHash3_x64_128(v35, v36, 0, v190);
      v33 = ((*&v190[8] - 0x61C8864680B583E9 + (*v190 << 6) + (*v190 >> 2)) ^ *v190) - 0x61C8864680B583E9;
    }

    v143 = re::RenderGraphDataStore::get<re::CameraMatrices>(*(a2 + 146), *(*(a2 + 5) + 48));
    result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshShadowPerSceneRenderingData>>(*(a2 + 146), (v33 + (qword_1EE1BE570 << 6) + (qword_1EE1BE570 >> 2)) ^ qword_1EE1BE570);
    if (result)
    {
      v37 = result[3];
      if (v37)
      {
        v38 = result[5];
        v138 = &v38[18 * v37];
        v139 = v153 + 104;
        while (1)
        {
          v39 = (*(*v144 + 32))(v144, 64, 8);
          *v39 = 0u;
          *(v39 + 16) = 0u;
          *(v39 + 32) = 0u;
          *(v39 + 48) = 0u;
          re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v39, v144, 5);
          if ((atomic_load_explicit(&qword_1EE1BE5D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE5D8))
          {
            qword_1EE1BE5D0 = re::hashString("MeshShadowUseFlatShadows", v114);
            __cxa_guard_release(&qword_1EE1BE5D8);
          }

          if ((atomic_load_explicit(&qword_1EE1BE5E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE5E8))
          {
            qword_1EE1BE5E0 = re::hashString("ImmersionOption", v115);
            __cxa_guard_release(&qword_1EE1BE5E8);
          }

          if ((atomic_load_explicit(&qword_1EE1BE5F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE5F8))
          {
            qword_1EE1BE5F0 = re::hashString("MeshShadowRenderAsRGB", v116);
            __cxa_guard_release(&qword_1EE1BE5F8);
          }

          if ((atomic_load_explicit(&qword_1EE1BE608, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE608))
          {
            qword_1EE1BE600 = re::hashString("MeshShadowEnableFlatShadowMeshFallback", v117);
            __cxa_guard_release(&qword_1EE1BE608);
          }

          if ((atomic_load_explicit(&qword_1EE1BE618, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE618))
          {
            qword_1EE1BE610 = re::hashString("MeshShadowVisualizeOverlap", v118);
            __cxa_guard_release(&qword_1EE1BE618);
          }

          if (re::internal::shadows::g_enableShadowFlattening == 1)
          {
            v40 = *(v38 + 8) ^ 1;
          }

          else
          {
            v40 = 0;
          }

          *v190 = qword_1EE1BE5D0;
          LODWORD(v183[0]) = v40 & 1;
          re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(v39, v190, v183);
          *v190 = qword_1EE1BE5E0;
          if (re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v39, v190) == -1)
          {
            re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::internalAdd(v39, v190, &v182);
          }

          *v190 = qword_1EE1BE5F0;
          LODWORD(v183[0]) = v142;
          re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(v39, v190, v183);
          *v190 = qword_1EE1BE600;
          LODWORD(v183[0]) = re::internal::shadows::g_enableMeshDepthFallbackWhenFlattening;
          re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(v39, v190, v183);
          *v190 = qword_1EE1BE610;
          LODWORD(v183[0]) = v141;
          re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(v39, v190, v183);
          if ((atomic_load_explicit(&qword_1EE1BE628, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE628))
          {
            qword_1EE1BE620 = re::hashString("DynamicFunctionConstants", v119);
            __cxa_guard_release(&qword_1EE1BE628);
          }

          v41 = qword_1EE1BE620;
          v42 = strlen(*(this + 4));
          v146 = v40;
          if (v42)
          {
            MurmurHash3_x64_128(*(this + 4), v42, 0, v190);
            v43 = (*&v190[8] - 0x61C8864680B583E9 + (*v190 << 6) + (*v190 >> 2)) ^ *v190;
          }

          else
          {
            v43 = 0;
          }

          v44 = re::RenderGraphDataStore::tryGet<re::DynamicFunctionConstantsData>(*(a2 + 146), ((v41 << 6) - 0x61C8864680B583E9 + (v41 >> 2) + v43) ^ v41);
          v45 = v44 + 8;
          if (!v44)
          {
            v45 = 0;
          }

          *v190 = v39;
          *&v190[8] = v45;
          memset(&v190[16], 0, 74);
          *(v153 + 15) = 0;
          *v139 = *v190;
          if (v139 != v190)
          {
            v46 = *(v153 + 9);
            *&v190[24] = *(v153 + 8);
            v47 = *(v153 + 22);
            *&v190[80] = *(v153 + 23);
            *&v190[72] = v47;
            *(v153 + 8) = 0uLL;
            *(v153 + 9) = 0uLL;
            *&v190[40] = v46;
            v48 = *(v153 + 10);
            *(v153 + 10) = 0uLL;
            *(v153 + 11) = 0uLL;
            *&v190[56] = v48;
          }

          *(v153 + 96) = 0;
          v49 = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v190[24]);
          v50 = (*(*v144 + 32))(v144, 328, 8, v49);
          v51 = re::DrawTable::DrawTable(v50, v144);
          v145 = v51;
          if ((v40 & 1) == 0)
          {
            break;
          }

          v52 = *ReceiverMesh;
          v53 = (*(*ReceiverMesh + 528) ^ *(*(v153 + 7) + 296)) & ~*(*(v153 + 7) + 300) | *(*(v153 + 7) + 300) & *(*(v153 + 7) + 296);
          memset(v190, 0, 24);
          *&v190[24] = v52;
          *&v190[32] = 0;
          *&v190[40] = v153;
          *&v190[48] = 0;
          *&v190[56] = -65280;
          *&v190[60] = v136;
          *&v190[64] = 0;
          *&v190[80] = xmmword_1E3047670;
          v191 = xmmword_1E3047680;
          v192 = xmmword_1E30476A0;
          v193 = xmmword_1E30474D0;
          v199 = 0;
          v198 = 0;
          v200 = 0;
          v201 = 0;
          v197 = 0;
          v195 = 0;
          v196 = 0;
          v194 = 0;
          LODWORD(v202) = v53;
          *(&v202 + 4) = -NAN;
          HIDWORD(v202) = 0;
          v203 = 0xFFFFFFFFLL;
          v204 = 0;
          v205 = 0;
          v54 = a2;
          v55 = *a2;
          v56 = *(v143 + 160);
          memset(v177, 0, sizeof(v177));
          v178 = 0;
          v57 = re::addDrawCall(v51, v190, v55, v56, v177);
          *(v57 + 40) = *v38;
          *(v57 + 32) = v38[1];
LABEL_134:
          if ((*(this + 264) & 1) != 0 || *(this + 265) == 1)
          {
            v173 = __const__ZN2re20FeatureStencilStates17getMeshShadowInfoENS0_15MeshShadowUsageE_kReadStInfo;
            LOBYTE(v174) = 64;
            v111 = 1;
          }

          else
          {
            v111 = 0;
          }

          re::DrawTableSlice::DrawTableSlice(v190, v145);
          *(v54 + 1553) = 1;
          if (v146)
          {
            v112 = 2;
          }

          else
          {
            v112 = 0;
          }

          *&v160 = v137;
          *(&v160 + 1) = v190;
          v113 = *(v143 + 80);
          *&v161 = *(v143 + 40);
          *(&v161 + 1) = v113;
          *v162 = 0;
          v162[8] = *(v143 + 160);
          *&v162[9] = 258;
          *&v162[11] = v112;
          v162[13] = v111;
          if (v111)
          {
            *&v162[14] = v173;
            v162[30] = v174;
          }

          v162[31] = 0;
          v163 = v140;
          v164 = 0;
          re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs(v54, v183);
          result = re::RenderGraphContext::encodeDrawCalls(v54, v183, &v160);
          *(v54 + 1553) = 0;
LABEL_144:
          v38 += 18;
          if (v38 == v138)
          {
            return result;
          }
        }

        if ((atomic_load_explicit(&qword_1EE1BE638, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE638))
        {
          qword_1EE1BE630 = re::hashString("MeshScenes", v120);
          __cxa_guard_release(&qword_1EE1BE638);
        }

        result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshSceneArrays>>(*(a2 + 146), (*(v38 + 8) - 0x61C8864680B583E9 + (qword_1EE1BE630 << 6) + (qword_1EE1BE630 >> 2)) ^ qword_1EE1BE630);
        if (!result)
        {
          goto LABEL_144;
        }

        v58 = result;
        v174 = 0;
        v175 = 0;
        v176 = 0;
        v173 = v144;
        re::DynamicArray<re::MeshPartDrawContext>::setCapacity(&v173, 0);
        ++v175;
        v151 = v38;
        v149 = v58[6];
        if (v149)
        {
          v59 = 0;
          v148 = v58;
          do
          {
            v150 = v59;
            v60 = re::BucketArray<re::MeshSceneCollection,16ul>::operator[]((v58 + 1), v59);
            v61 = *(v60 + 16);
            if (v61)
            {
              v62 = *(v60 + 32);
              v63 = v62 + 736 * v61;
              v152 = v63;
              do
              {
                if (*(v62 + 692) == 1 && re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains((v38 + 4), (v62 + 512)))
                {
                  v64 = *(v62 + 8);
                  v183[0] = 0;
                  v183[1] = v64;
                  v184 = xmmword_1E3047670;
                  v185 = xmmword_1E3047680;
                  v186 = xmmword_1E30476A0;
                  v187 = xmmword_1E30474D0;
                  v188 = 0;
                  v189 = 0;
                  v65 = *(v62 + 56);
                  if (v65)
                  {
                    v66 = *(v62 + 48);
                  }

                  else
                  {
                    v66 = v183;
                    v65 = 1;
                  }

                  v154 = &v66[12 * v65];
                  do
                  {
                    v67 = 0;
                    v68 = *(v62 + 128);
                    v69 = *(v62 + 144);
                    v70 = *(v62 + 160);
                    v71 = *(v62 + 176);
                    v72 = *(v66 + 2);
                    v73 = *(v66 + 3);
                    v74 = *(v66 + 4);
                    v160 = *(v66 + 1);
                    v161 = v72;
                    *v162 = v73;
                    *&v162[16] = v74;
                    do
                    {
                      *&v190[v67] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v68, COERCE_FLOAT(*(&v160 + v67))), v69, *(&v160 + v67), 1), v70, *(&v160 + v67), 2), v71, *(&v160 + v67), 3);
                      v67 += 16;
                    }

                    while (v67 != 64);
                    v158 = *&v190[16];
                    v159 = *v190;
                    v156 = *&v190[48];
                    v157 = *&v190[32];
                    v155 = v66;
                    v75 = re::Slice<re::internal::BindPointImplBase const*>::range(v62, *v66, v66[1]);
                    if (v76)
                    {
                      v77 = v75;
                      v78 = 8 * v76;
                      do
                      {
                        v79 = *v77++;
                        v80 = (((*(v79 + 528) ^ *(*(v153 + 7) + 296)) & ~*(*(v153 + 7) + 300) | *(*(v153 + 7) + 300) & *(*(v153 + 7) + 296)) ^ *(v62 + 504)) & ~*(v62 + 508) | *(v62 + 504) & *(v62 + 508);
                        v81 = *(v62 + 512);
                        *&v190[16] = 0;
                        *v190 = v81;
                        *&v190[24] = v79;
                        *&v190[32] = 0;
                        *&v190[40] = v153;
                        *&v190[48] = 0;
                        *&v190[56] = -65280;
                        *&v190[60] = 0xFFFFFFFFLL;
                        *&v190[80] = v159;
                        v191 = v158;
                        v192 = v157;
                        v193 = v156;
                        v199 = 0;
                        v198 = 0;
                        v200 = 0;
                        v201 = 0;
                        v194 = 0;
                        v195 = 0;
                        v197 = 0;
                        v196 = 0;
                        LODWORD(v202) = v80;
                        *(&v202 + 4) = -NAN;
                        HIDWORD(v202) = 0;
                        v203 = 0xFFFFFFFFLL;
                        v204 = 0;
                        v205 = 0;
                        re::DynamicArray<re::MeshPartDrawContext>::add(&v173, v190);
                        v78 -= 8;
                      }

                      while (v78);
                    }

                    v66 = v155 + 12;
                  }

                  while (v155 + 12 != v154);
                  v38 = v151;
                  v63 = v152;
                }

                v62 += 736;
              }

              while (v62 != v63);
            }

            v59 = v150 + 1;
            v58 = v148;
          }

          while (v150 + 1 != v149);
        }

        v82 = a2;
        v83 = 0uLL;
        v84 = v145;
        if ((*(this + 264) & 1) == 0)
        {
          v85 = re::MaterialParameterTableLayers::resolveTechniqueIndices(v153, qword_1EE1BE590);
          if (!v86)
          {
            re::internal::assertLog(6, 0, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
            _os_crash();
            __break(1u);
LABEL_165:
            re::internal::assertLog(6, v99, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
            _os_crash();
            __break(1u);
LABEL_166:
            re::internal::assertLog(6, v29, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
            _os_crash();
            __break(1u);
LABEL_167:
            re::internal::assertLog(6, v32, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
            _os_crash();
            __break(1u);
LABEL_168:
            re::internal::assertLog(6, v104, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
            _os_crash();
            __break(1u);
          }

          v82 = a2;
          v38 = v151;
          v83 = 0uLL;
          v84 = v145;
          if (!v174)
          {
            goto LABEL_120;
          }

          v87 = *v85;
          v88 = v176;
          v89 = 240 * v174;
          do
          {
            v90 = *a2;
            v171[0] = v83;
            v171[1] = v83;
            v172 = 0;
            v91 = re::addDrawCall(v145, v88, v90, 1u, v171);
            v83 = 0uLL;
            v92 = *v151;
            *(v91 + 32) = 1;
            *(v91 + 40) = v92;
            *(v91 + 44) = v87;
            *(v91 + 104) = "MeshShadowDepthPrepass";
            v88 += 240;
            v89 -= 240;
          }

          while (v89);
        }

        if (v174)
        {
          v93 = v82;
          v94 = v176;
          v95 = 240 * v174;
          do
          {
            v96 = *v93;
            v169[0] = v83;
            v169[1] = v83;
            v170 = 0;
            v97 = re::addDrawCall(v84, v94, v96, 1u, v169);
            v83 = 0uLL;
            v97[10] = *v38;
            v97[8] = v38[1];
            v97[11] = v136;
            v94 += 240;
            v95 -= 240;
          }

          while (v95);
        }

LABEL_120:
        if (!*(this + 264))
        {
          if ((atomic_load_explicit(&qword_1EE1BE648, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE648))
          {
            qword_1EE1BE640 = re::hashString("MeshShadowDepthClear", v121);
            __cxa_guard_release(&qword_1EE1BE648);
          }

          v98 = re::MaterialParameterTableLayers::resolveTechniqueIndices(v153, qword_1EE1BE640);
          if (!v99)
          {
            goto LABEL_165;
          }

          v100 = *v98;
          memset(v190, 0, 24);
          *&v190[24] = *(a2 + 192);
          *&v190[32] = 0;
          *&v190[40] = v153;
          *&v190[48] = 0;
          *&v190[56] = -65280;
          *&v190[60] = v100;
          *&v190[64] = 0;
          *&v190[80] = xmmword_1E3047670;
          v191 = xmmword_1E3047680;
          v192 = xmmword_1E30476A0;
          v193 = xmmword_1E30474D0;
          v199 = 0;
          v198 = 0;
          v200 = 0;
          v201 = 0;
          v194 = 0;
          v195 = 0;
          v197 = 0;
          v196 = 0;
          *&v202 = 25172350;
          *(&v202 + 1) = 0x7FFFFFFFLL;
          v203 = 0xFFFFFFFFLL;
          v204 = 0;
          v205 = 0;
          v101 = *a2;
          memset(v167, 0, sizeof(v167));
          v168 = 0;
          *(re::addDrawCall(v145, v190, v101, 1u, v167) + 104) = "MeshShadowDepthClear";
          v102 = v134;
          if (*(this + 264))
          {
            v102 = 1;
          }

          if ((v102 & 1) == 0)
          {
            v103 = re::MaterialParameterTableLayers::resolveTechniqueIndices(v153, qword_1EE1BE5B0);
            if (!v104)
            {
              goto LABEL_168;
            }

            v83 = 0uLL;
            if (v174)
            {
              v105 = *v103;
              v106 = v176;
              v107 = 240 * v174;
              do
              {
                v108 = *a2;
                v165[0] = v83;
                v165[1] = v83;
                v166 = 0;
                v109 = re::addDrawCall(v145, v106, v108, 1u, v165);
                v83 = 0uLL;
                v110 = *v151;
                *(v109 + 32) = 1;
                *(v109 + 40) = v110;
                *(v109 + 44) = v105;
                *(v109 + 104) = "MeshShadowVisualizeDepthPrepass";
                v106 += 240;
                v107 -= 240;
              }

              while (v107);
            }
          }
        }

        if (v173 && v176)
        {
          (*(*v173 + 40))(v83);
        }

        v54 = a2;
        v38 = v151;
        goto LABEL_134;
      }
    }
  }

  return result;
}

uint64_t re::MeshShadowGenerateMipmapNode::configure(void **this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = *(a4 + 1);
  re::DynamicString::DynamicString(&v12, (this + 62));
  v14 = 0;
  v17 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v23 = 0;
  v27 = 0;
  v28 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  ComputePipelineState = re::getOrCreateComputePipelineState(v5, &v12);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 70, ComputePipelineState);
  if (v27)
  {

    v27 = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v20);
  if (v17 == 1 && v18)
  {
    if (BYTE8(v18))
    {
      (*(*v18 + 40))();
    }

    v18 = 0u;
    v19 = 0u;
  }

  if (v14 == 1 && v15)
  {
    if (BYTE8(v15))
    {
      (*(*v15 + 40))();
    }

    v16 = 0u;
    v15 = 0u;
  }

  if (v12 && (v13 & 1) != 0)
  {
    (*(*v12 + 40))();
  }

  v7 = re::DynamicString::DynamicString(&v12, (this + 66));
  v14 = 0;
  v17 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v23 = 0;
  v27 = 0;
  v28 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v31 = 0u;
  v32 = 0u;
  re::DynamicString::setCapacity(&v31, 0);
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v29 = "MeshShadowMipDoReduction";
  v30 = 24;
  re::DynamicString::operator=(&v31, &v29);
  v33 = 12451893;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  LOBYTE(v34) = 1;
  re::DynamicArray<re::TechniqueFunctionConstant>::add(&v20, &v31);
  v8 = re::getOrCreateComputePipelineState(v5, &v12);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 72, v8);
  if (v31 && (BYTE8(v31) & 1) != 0)
  {
    (*(*v31 + 40))(v31, v32);
  }

  if (v27)
  {

    v27 = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v20);
  if (v17 == 1 && v18)
  {
    if (BYTE8(v18))
    {
      (*(*v18 + 40))();
    }

    v18 = 0u;
    v19 = 0u;
  }

  if (v14 == 1 && v15)
  {
    if (BYTE8(v15))
    {
      (*(*v15 + 40))();
    }

    v16 = 0u;
    v15 = 0u;
  }

  if (v12 && (v13 & 1) != 0)
  {
    (*(*v12 + 40))();
  }

  v9 = re::DynamicString::DynamicString(&v12, (this + 66));
  v14 = 0;
  v17 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v23 = 0;
  v27 = 0;
  v28 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  *(&v31 + 1) = 0;
  v32 = 0uLL;
  re::DynamicString::setCapacity(&v31, 0);
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v29 = "MeshShadowMipDoReduction";
  v30 = 24;
  re::DynamicString::operator=(&v31, &v29);
  v33 = 12451893;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  re::DynamicArray<re::TechniqueFunctionConstant>::add(&v20, &v31);
  v10 = re::getOrCreateComputePipelineState(v5, &v12);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 71, v10);
  if (v31 && (BYTE8(v31) & 1) != 0)
  {
    (*(*v31 + 40))(v31, v32);
  }

  if (v27)
  {

    v27 = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v20);
  if (v17 == 1 && v18)
  {
    if (BYTE8(v18))
    {
      (*(*v18 + 40))();
    }

    v18 = 0u;
    v19 = 0u;
  }

  if (v14 == 1 && v15)
  {
    if (BYTE8(v15))
    {
      (*(*v15 + 40))();
    }

    v16 = 0u;
    v15 = 0u;
  }

  result = v12;
  if (v12)
  {
    if (v13)
    {
      return (*(*v12 + 40))();
    }
  }

  return result;
}

void re::MeshShadowGenerateMipmapNode::execute(unint64_t this, SEL *a2)
{
  v85 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1BE658, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v5 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshShadowGenerationData>>(a2[146], qword_1EE1BE650);
    if (!v5)
    {
      break;
    }

    v6 = v75;
    if (!*(this + 200))
    {
      goto LABEL_49;
    }

    v7 = v5;
    re::RenderGraphContext::metalTexture(a2, *(this + 216), 0, 0, &v66);
    v6 = *(this + 200);
    if (v6 <= 1)
    {
      goto LABEL_50;
    }

    re::RenderGraphContext::metalTexture(a2, *(this + 216) + 32, 0, 0, &v65);
    if (*(this + 160))
    {
      v8 = re::RenderGraphContext::metalBuffer(a2, *(this + 176));
      v75[0] = 0;
      HIDWORD(v79) = -1;
      std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v75, v8);
      *&v81[2] = *(v8 + 32);
      v6 = *(*a2 + 4);
      v9 = &selRef_isLimitedRenderAsset;
      if ([v66 mipmapLevelCount] < 2)
      {
LABEL_23:
        re::RenderGraphContext::acquireManagedComputeCommandEncoder(a2, 1, 0, &v58);
        if (!*(v7 + 416))
        {
LABEL_33:

          re::FixedArray<NS::SharedPtr<MTL::ArgumentEncoder>>::deinit(&v59);
          re::FixedArray<NS::SharedPtr<MTL::ArgumentEncoder>>::deinit(&v62);
          if (HIDWORD(v79) != -1)
          {
            (off_1F5D0F760[HIDWORD(v79)])(&v70, v75);
          }

          if (v65)
          {
          }

          if (v66)
          {
          }

          return;
        }

        v55 = 0;
        v10 = 0;
        v51 = (this + 568);
        while (1)
        {
          v23 = [v66 v9[93]];
          this = *(v7 + 416);
          if (this <= v10)
          {
            break;
          }

          this = *(v7 + 168);
          if (this <= v10)
          {
            goto LABEL_42;
          }

          v24 = v23 - 1;
          this = (v23 - 1);
          v6 = v63;
          if (v63 <= this)
          {
            goto LABEL_43;
          }

          v2 = *(*(v7 + 432) + 32 * v10 + 24);
          v25 = *(v7 + 176);
          [v58 setTexture:*(v64 + 8 * v24) atIndex:2];
          v6 = v60;
          if (v60 <= v24)
          {
            goto LABEL_44;
          }

          v53 = v10;
          v26 = v25 + 928 * v10;
          a2 = v9;
          v27 = (v26 + 224 * v24);
          [v58 setTexture:*(v61 + 8 * v24) atIndex:3];
          [v58 setTexture:v66 atIndex:4];
          [v58 setTexture:v65 atIndex:5];
          re::BufferSlice::buffer(v75, v28);
          [v58 setBuffer:*v75 offset:0 atIndex:1];
          LODWORD(v29) = *(v26 + 912);
          v6 = v51;
          [v58 setComputePipelineState:{*v51, v29}];
          v30 = sqrt([*v51 maxTotalThreadsPerThreadgroup]);
          LODWORD(v70) = v2;
          v31 = vcvt_s32_f32(vrndm_f32(*v27));
          v32 = v31.u32[1];
          WORD3(v70) = v31.i16[2];
          v33 = v31.u32[0];
          WORD2(v70) = v31.i16[0];
          v34 = vcvt_s32_f32(vrndp_f32(v27[1]));
          WORD5(v70) = v34.i16[2];
          WORD4(v70) = v34.i16[0];
          v35 = (~v33 + v34.u32[0] + v30) / v30;
          v36 = (~v32 + v34.u32[1] + v30) / v30;
          HIWORD(v70) = v36;
          WORD6(v70) = v35;
          LOWORD(v71) = [v66 a2 + 2424];
          v37 = *(v26 + 904) / *(v7 + 284);
          *(&v71 + 1) = v37 * ([v66 a2 + 2424] - 1);
          DWORD2(v71) = *(v26 + 908);
          LOWORD(v72) = [v66 width];
          HIDWORD(v71) = *(v26 + 912);
          if ([v66 a2 + 2424])
          {
            v38 = 0;
            v2 = 0;
            v39 = v25 + v55;
            v6 = 208;
            do
            {
              v40 = *(v39 + v6 - 64);
              v41 = v39 + 4 * v38;
              LODWORD(v42) = *(v41 + 176);
              HIDWORD(v42) = *(v41 + 196);
              v43 = *(v39 + v6 - 48);
              v44 = *(v39 + v6 - 40);
              v45 = *(v39 + v6);
              v46 = &v70 + v38;
              *(v46 + 10) = v2;
              *(v46 + 3) = v40;
              *(v46 + 8) = v43;
              *(v46 + 9) = v44;
              *(v46 + 10) = v42;
              *(v46 + 11) = v45;
              ++v2;
              v38 += 56;
              v6 += 224;
            }

            while ([v66 a2 + 2424] > v2);
          }

          [v58 setBytes:&v70 length:600 atIndex:0];
          [v58 setThreadgroupMemoryLength:(8 * v30 * v30 * v35 * v36 + 15) & 0xFFFFFFFFFFFFFFF0 atIndex:0];
          *v82 = vdupq_n_s64(1uLL);
          *&v82[16] = 1;
          v67 = v30;
          v68 = v30;
          v69 = 1;
          [v58 dispatchThreadgroups:v82 threadsPerThreadgroup:&v67];
          v10 = v53 + 1;
          v55 += 928;
          v9 = a2;
          if (*(v7 + 416) <= v53 + 1)
          {
            goto LABEL_33;
          }
        }

LABEL_41:
        v67 = 0;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v70 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v82 = 136315906;
        *&v82[4] = "operator[]";
        *&v82[12] = 1024;
        *&v82[14] = 797;
        *&v82[18] = 2048;
        *&v82[20] = v10;
        v83 = 2048;
        v84 = this;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_42:
        v67 = 0;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v70 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v82 = 136315906;
        *&v82[4] = "operator[]";
        *&v82[12] = 1024;
        *&v82[14] = 476;
        *&v82[18] = 2048;
        *&v82[20] = v10;
        v83 = 2048;
        v84 = this;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_43:
        v67 = 0;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v70 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v82 = 136315906;
        *&v82[4] = "operator[]";
        *&v82[12] = 1024;
        *&v82[14] = 468;
        *&v82[18] = 2048;
        *&v82[20] = this;
        v83 = 2048;
        v84 = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_44:
        v67 = 0;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v70 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v82 = 136315906;
        *&v82[4] = "operator[]";
        *&v82[12] = 1024;
        *&v82[14] = 468;
        *&v82[18] = 2048;
        *&v82[20] = this;
        v83 = 2048;
        v84 = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      else
      {
        v54 = 224;
        v2 = 1;
        while (1)
        {
          re::RenderGraphContext::acquireManagedComputeCommandEncoder(a2, 1, 0, &v58);
          v6 = v2 - 1;
          v10 = v63;
          if (v63 <= v2 - 1)
          {
            break;
          }

          [v58 setTexture:*(v64 + 8 * v6) atIndex:0];
          v10 = v60;
          if (v60 <= v6)
          {
            goto LABEL_46;
          }

          [v58 setTexture:*(v61 + 8 * v6) atIndex:1];
          v6 = v63;
          if (v63 <= v2)
          {
            goto LABEL_47;
          }

          [v58 setTexture:*(v64 + 8 * v2) atIndex:2];
          v6 = v60;
          if (v60 <= v2)
          {
            goto LABEL_48;
          }

          v52 = v2;
          [v58 setTexture:*(v61 + 8 * v2) atIndex:3];
          [v58 setTexture:v66 atIndex:4];
          [v58 setTexture:v65 atIndex:5];
          re::BufferSlice::buffer(v75, v11);
          [v58 setBuffer:*v75 offset:0 atIndex:1];
          if (*(v7 + 416))
          {
            v10 = 0;
            v12 = v54;
            v13 = 24;
            while (1)
            {
              v6 = *(v7 + 168);
              if (v6 <= v10)
              {
                break;
              }

              v14 = *(*(v7 + 432) + v13);
              v15 = (*(v7 + 176) + v12);
              [v58 setComputePipelineState:*(this + 560)];
              v2 = sqrt([*(this + 560) maxTotalThreadsPerThreadgroup]);
              v16 = vcvt_s32_f32(vrndm_f32(v15[4]));
              WORD5(v70) = v16.i16[2];
              WORD4(v70) = v16.i16[0];
              v17 = vcvt_s32_f32(vrndp_f32(v15[5]));
              HIWORD(v70) = v17.i16[2];
              WORD6(v70) = v17.i16[0];
              v18 = vcvt_s32_f32(vrndm_f32(*v15));
              WORD1(v70) = v18.i16[2];
              LOWORD(v70) = v18.i16[0];
              v19 = vcvt_s32_f32(vrndp_f32(v15[1]));
              WORD3(v70) = v19.i16[2];
              WORD2(v70) = v19.i16[0];
              v19.i32[0] = v15[6].i32[0];
              v19.i32[1] = v15[8].i32[1];
              *&v71 = v19;
              *(&v71 + 1) = v15[10];
              v19.i32[0] = v15[12].i32[0];
              v19.i32[1] = v15[14].i32[1];
              *&v72 = v19;
              *(&v72 + 1) = v15[16];
              LODWORD(v73) = v14;
              [v58 setBytes:&v70 length:56 atIndex:0];
              v20 = a2[1];
              v57 = v58;
              re::RenderManager::sampleComputeEncoderMTLCounterBegin(v20, &v57, 1u);

              v21 = (v2 - 1 + WORD6(v70) - WORD4(v70)) / v2;
              if (v21 <= 1)
              {
                v21 = 1;
              }

              else
              {
                v21 = v21;
              }

              v22 = (v2 - 1 + HIWORD(v70) - WORD5(v70)) / v2;
              if (v22 <= 1)
              {
                v22 = 1;
              }

              else
              {
                v22 = v22;
              }

              *v82 = v21;
              *&v82[8] = v22;
              *&v82[16] = 1;
              v67 = v2;
              v68 = v2;
              v69 = 1;
              [v58 dispatchThreadgroups:v82 threadsPerThreadgroup:{&v67, v49, v50}];
              v6 = a2[1];
              v56 = v58;
              re::RenderManager::sampleComputeEncoderMTLCounterEnd(v6, &v56, 1u);

              ++v10;
              v13 += 32;
              v12 += 928;
              if (*(v7 + 416) <= v10)
              {
                goto LABEL_22;
              }
            }

            v67 = 0;
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            v70 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v82 = 136315906;
            *&v82[4] = "operator[]";
            *&v82[12] = 1024;
            *&v82[14] = 476;
            *&v82[18] = 2048;
            *&v82[20] = v10;
            v83 = 2048;
            v84 = v6;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_41;
          }

LABEL_22:

          v2 = v52 + 1;
          v9 = &selRef_isLimitedRenderAsset;
          v54 += 224;
          if ([v66 mipmapLevelCount] <= v52 + 1)
          {
            goto LABEL_23;
          }
        }
      }

      v67 = 0;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v70 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v82 = 136315906;
      *&v82[4] = "operator[]";
      *&v82[12] = 1024;
      *&v82[14] = 468;
      *&v82[18] = 2048;
      *&v82[20] = v6;
      v83 = 2048;
      v84 = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_46:
      v67 = 0;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v70 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v82 = 136315906;
      *&v82[4] = "operator[]";
      *&v82[12] = 1024;
      *&v82[14] = 468;
      *&v82[18] = 2048;
      *&v82[20] = v6;
      v83 = 2048;
      v84 = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_47:
      v67 = 0;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v70 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v82 = 136315906;
      *&v82[4] = "operator[]";
      *&v82[12] = 1024;
      *&v82[14] = 468;
      *&v82[18] = 2048;
      *&v82[20] = v2;
      v83 = 2048;
      v84 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_48:
      v67 = 0;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v70 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v82 = 136315906;
      *&v82[4] = "operator[]";
      *&v82[12] = 1024;
      *&v82[14] = 468;
      *&v82[18] = 2048;
      *&v82[20] = v2;
      v83 = 2048;
      v84 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_49:
      *v82 = 0;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v70 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v75 = 136315906;
      *(v6 + 4) = "operator[]";
      v76 = 1024;
      *(v6 + 14) = 789;
      v78 = 2048;
      *(v6 + 20) = 0;
      v80 = 2048;
      *(v6 + 30) = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_50:
      *v82 = 0;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v70 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v75 = 136315906;
      *&v75[4] = "operator[]";
      v76 = 1024;
      v77 = 789;
      v78 = 2048;
      v79 = 1;
      v80 = 2048;
      *v81 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *v82 = 0;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v70 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v75 = 136315906;
    *&v75[4] = "operator[]";
    v76 = 1024;
    v77 = 789;
    v78 = 2048;
    v79 = 0;
    v80 = 2048;
    *v81 = 0;
    LODWORD(v50) = 38;
    v49 = v75;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_52:
    if (__cxa_guard_acquire(&qword_1EE1BE658))
    {
      qword_1EE1BE650 = re::getCombinedScopeHash("ProjectiveMeshShadow", v47, v48);
      __cxa_guard_release(&qword_1EE1BE658);
    }
  }
}