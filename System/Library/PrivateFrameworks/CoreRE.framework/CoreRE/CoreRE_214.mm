void *re::allocInfo_RenderGraphVFXNotifyFrameNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BFA28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFA28))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BFAD8, "RenderGraphVFXNotifyFrameNode");
    __cxa_guard_release(&qword_1EE1BFA28);
  }

  return &unk_1EE1BFAD8;
}

void re::initInfo_RenderGraphVFXNotifyFrameNode(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0xD459723956DD0C6CLL;
  v14[1] = "RenderGraphVFXNotifyFrameNode";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1BFA30, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BFA30);
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
      qword_1EE1BFA38 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_BOOL(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "beginFrame";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x10800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1BFA40 = v12;
      __cxa_guard_release(&qword_1EE1BFA30);
    }
  }

  *(this + 2) = 0x11000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BFA38;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphVFXNotifyFrameNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphVFXNotifyFrameNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphVFXNotifyFrameNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphVFXNotifyFrameNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::RenderGraphVFXNotifyFrameNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *result = &unk_1F5D120E8;
  *(result + 264) = 0;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::RenderGraphVFXNotifyFrameNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *result = &unk_1F5D120E8;
  *(result + 264) = 0;
  return result;
}

void re::RenderGraphVFXNode::~RenderGraphVFXNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphVFXNotifyFrameNode::~RenderGraphVFXNotifyFrameNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void ___ZN2re12_GLOBAL__N_117simulateVFXScenesIPNS_8VFXSceneEEEvRNS_18RenderGraphContextERKNS_12DynamicArrayIT_EERK13simd_float4x4SD__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 particleEmitter];
  v6 = v3;
  if (v3)
  {
    if (*(*(a1 + 32) + 1009) == 1)
    {
      [v3 killParticles];
      v3 = [v6 restart];
    }

    if (re::shouldMergeVFXEffectsIntoOneWorld(v3))
    {
      v4 = *(a1 + 32);
      v5 = 0.0;
      if (*(v4 + 1008) == 1)
      {
        LODWORD(v5) = 1.0;
        if (*(a1 + 40) == 1)
        {
          LODWORD(v5) = *(v4 + 904);
        }
      }

      [v6 setSimulationSpeed:v5];
    }
  }
}

void ___ZN2re12_GLOBAL__N_117simulateVFXScenesIPNS_8VFXSceneEEEvRNS_18RenderGraphContextERKNS_12DynamicArrayIT_EERK13simd_float4x4SD__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v13 = v3[3];
  v9 = v3[1];
  v11 = v3[2];
  v7 = *v3;
  v4 = a2;
  [v4 setWorldTransform:{*&v7, *&v9, *&v11, *&v13}];
  v5 = *(a1 + 40);
  v10 = v5[2];
  v12 = v5[3];
  v6 = *v5;
  v8 = v5[1];
  v14 = [v4 camera];

  [v14 setProjectionTransform:{*&v6, *&v8, *&v10, *&v12}];
}

uint64_t ___ZN2re12_GLOBAL__N_123simulateVFXLegacyScenesERNS_18RenderGraphContextERKNS_12DynamicArrayIPKNS_8VFXSceneEEERK13simd_float4x4SC_f_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 88) + 1008);
  v3 = [*(a1 + 80) scene];
  [v3 setIsPlaying:v2];

  if (*(*(a1 + 88) + 900) == 1)
  {
    v4 = [*(a1 + 80) scene];
    LODWORD(v5) = *(*(a1 + 88) + 904);
    [v4 setTimeScale:v5];
  }

  [*(a1 + 80) setCameraEntityTransformProjection:*(a1 + 32) :*(a1 + 48) :*(a1 + 64) :**(a1 + 96) :*(*(a1 + 96) + 16) :*(*(a1 + 96) + 32) :*(*(a1 + 96) + 48)];
  v6 = *(a1 + 88);
  v9 = 0u;
  v10 = xmmword_1E30474D0;
  v11 = 0u;
  re::decomposeScaleRotationTranslation<float>(v6 + 832, &v11, &v10, &v9);
  [*(a1 + 80) setSceneTransform:*v11.i64 :*&v10 :*&v9];
  v7 = *(a1 + 88);
  v10 = xmmword_1E30474D0;
  v11 = 0u;
  v9 = 0u;
  re::decomposeScaleRotationTranslation<float>(v7 + 768, &v11, &v10, &v9);
  [*(a1 + 80) setRootTransform:*v11.i64 :*&v10 :*&v9];
  return [*(a1 + 80) tickWithDeltaTime:*(a1 + 104)];
}

void re::internal::Callable<re::anonymous namespace::simulateVFXLegacyScenes(re::RenderGraphContext &,re::DynamicArray<re::VFXScene const*> const&,simd_float4x4 const&,simd_float4x4 const&,float)::$_0,void ()(void *)>::operator()(uint64_t a1, void (****a2)(void))
{
  v2 = *a2;
  v3 = **a2;
  if (v3)
  {
    v3[2]();
    v3 = *v2;
  }
}

void *re::internal::Callable<re::anonymous namespace::simulateVFXLegacyScenes(re::RenderGraphContext &,re::DynamicArray<re::VFXScene const*> const&,simd_float4x4 const&,simd_float4x4 const&,float)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D121A8;
  return result;
}

void *re::internal::Callable<re::anonymous namespace::simulateVFXLegacyScenes(re::RenderGraphContext &,re::DynamicArray<re::VFXScene const*> const&,simd_float4x4 const&,simd_float4x4 const&,float)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D121A8;
  return result;
}

void re::internal::Callable<void re::anonymous namespace::simulateVFXScenes<re::VFXScene *>(re::RenderGraphContext &,re::DynamicArray<re::VFXScene *> const&,simd_float4x4 const&,simd_float4x4 const&)::{lambda(void *)#1},void ()(void *)>::operator()(uint64_t a1, void (****a2)(void))
{
  v2 = *a2;
  v3 = **a2;
  if (v3)
  {
    v3[2]();
    v3 = *v2;
  }
}

void *re::internal::Callable<void re::anonymous namespace::simulateVFXScenes<re::VFXScene *>(re::RenderGraphContext &,re::DynamicArray<re::VFXScene *> const&,simd_float4x4 const&,simd_float4x4 const&)::{lambda(void *)#1},void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D12200;
  return result;
}

void *re::internal::Callable<void re::anonymous namespace::simulateVFXScenes<re::VFXScene *>(re::RenderGraphContext &,re::DynamicArray<re::VFXScene *> const&,simd_float4x4 const&,simd_float4x4 const&)::{lambda(void *)#1},void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D12200;
  return result;
}

uint64_t re::LightContextAtlasContainer::allocateTiles(re::LightContextAtlasContainer *this)
{
  if (dyld_program_sdk_at_least())
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  re::TextureAtlas::allocateTiles(this, v2);
  result = re::TextureAtlas::allocateTiles(this + 96, 1u);
  *(this + 192) = 1;
  return result;
}

unint64_t re::ProfilerOverlayRenderGraphProvider::prepareFrame(re::ProfilerOverlayRenderGraphProvider *this, char *a2, const char *a3, re::RenderFrame *a4)
{
  v5[0] = 0x25D31770DB1DF3E2;
  v5[1] = "ProfilerOverlayRenderGraphProvider";
  return re::RenderGraphProviderBase::generateScopeHash(v5, a2, a3);
}

double re::ProfilerOverlayRenderGraphProvider::provide(re::ProfilerOverlayRenderGraphProvider *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v15 = 0x200000000;
  v16 = -1;
  v17 = -1;
  v18 = -1;
  v19 = 0;
  v20 = 0;
  __asm { FMOV            V0.2S, #1.0 }

  v21 = _D0;
  v22 = xmmword_1E30A3B60;
  v23 = 0x2000000000;
  v24 = -1;
  v25 = -1;
  v26 = -1;
  v27 = 0;
  v28 = 0;
  v14 = 3;
  re::RenderFrame::createTarget(a4, &v14, "Profiler Overlay Output", v13);
  v29[0] = 65290051;
  re::RenderFrame::addTargetOutput(a4, v29, v13, 0);
  RenderGraph = re::RenderFrame::makeRenderGraph(a4, "ProfilerOverlay", 0);
  v11 = re::RenderGraph::addNode<re::RenderGraphProfilerOverlayNode>(RenderGraph, "Profiler Overlay Render Node");
  *v29 = v13[0];
  *&v29[1] = v13[1];
  v29[2] = 0x100000000;
  v30 = xmmword_1E30474D0;
  v31 = 0;
  v32 = 0;
  *&result = re::DynamicArray<re::TargetWrite>::add((v11 + 224), v29).n128_u64[0];
  return result;
}

double re::RenderGraphProfilerOverlayNode::RenderGraphProfilerOverlayNode(re::RenderGraphProfilerOverlayNode *this, const char *a2)
{
  v2 = re::RenderGraphNode::RenderGraphNode(this, a2);
  *(v2 + 66) = 1;
  *(v2 + 268) = 0;
  *v2 = &unk_1F5D12258;
  result = 0.0;
  *(v2 + 17) = 0u;
  *(v2 + 18) = 0u;
  __asm { FMOV            V1.4S, #1.0 }

  *(v2 + 19) = _Q1;
  *(v2 + 20) = xmmword_1E31044A0;
  *(v2 + 42) = 0x3F33333341A00000;
  *(v2 + 86) = 1061997773;
  *(v2 + 22) = xmmword_1E30872B0;
  *(v2 + 23) = xmmword_1E31044B0;
  *(v2 + 24) = _Q1;
  *(v2 + 100) = 1050253722;
  *(v2 + 408) = 0u;
  *(v2 + 424) = 0u;
  *(v2 + 110) = 0;
  *(v2 + 444) = 0x7FFFFFFFLL;
  *(v2 + 456) = 0u;
  *(v2 + 472) = 0u;
  *(v2 + 122) = 0;
  *(v2 + 492) = 0x7FFFFFFFLL;
  return result;
}

void re::RenderGraphProfilerOverlayNode::configure(re::RenderGraphProfilerOverlayNode *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  if (*(this + 35))
  {
    v8 = *(*(a4 + 1) + 112);
    if (v8)
    {
      if (re::DrawingManager::shouldRenderProfilerNode(v8))
      {
        *(this + 37) = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>((this + 272));
      }
    }
  }

  re::RenderGraphNode::configure(this, a2, a3, a4);
}

void re::RenderGraphProfilerOverlayNode::setup(re::RenderGraphProfilerOverlayNode *this, re::RenderGraphBuilder *a2, re::RenderGraphDataStore *a3)
{
  if (*(this + 37))
  {
    if (!*(this + 25))
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    re::RenderGraphBuilder::read(a2, *(this + 27), *(this + 27) + 16);
  }

  re::RenderGraphNode::setup(this, a2, a3);
}

re::DrawingManager *re::RenderGraphProfilerOverlayNode::execute(re::RenderGraphProfilerOverlayNode *this, re::RenderGraphContext *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27, uint64_t a28, uint64_t a29, id a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, re::RenderGraphContext *a41, uint64_t a42, re::RenderGraphProfilerOverlayNode *a43, uint64_t a44, uint64_t a45, int a46, int a47, unint64_t a48, float a49, float a50, char *a51, unint64_t a52, int a53, int a54, uint64_t a55, uint64_t a56, void *a57, void *__p, uint64_t a59, unint64_t a60, int a61, _OWORD *a62, int a63)
{
  v76 = a2;
  v77 = this;
  v78 = &STACK[0xCF0];
  v79 = &STACK[0xA60];
  v80 = &a67;
  STACK[0xE58] = *MEMORY[0x1E69E9840];
  if (!*(this + 37))
  {
    goto LABEL_44;
  }

  v81 = *(*(a2 + 1) + 112);
  if (!v81 || !re::DrawingManager::shouldRenderProfilerNode(v81))
  {
    goto LABEL_44;
  }

  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(&__p);
  v82 = *v76;
  *&a81 = 0xA3521516DAFB1;
  if (!*(v77 + 25))
  {
    goto LABEL_352;
  }

  re::RenderGraphContext::metalTexture(v76, *(v77 + 27), 0, 0, &STACK[0xD60]);
  re::makeView2DTo2DArray(&STACK[0xD60], &STACK[0xA60]);
  re::DynamicTextureTableAdd((v82 + 368), &a81, &STACK[0xA60]);
  if (STACK[0xA60])
  {

    STACK[0xA60] = 0;
  }

  if (STACK[0xD60])
  {
  }

  v83 = *(*(v77 + 37) + 1776);
  v84 = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(*(v76 + 1168), *(*(v76 + 40) + 48));
  v75 = v84;
  v85 = 1;
  if (v84)
  {
    v86 = *(v84 + 65);
    if (*(v84 + 65))
    {
      v85 = 2;
    }

    else
    {
      v85 = 1;
    }
  }

  else
  {
    v86 = 0;
  }

  v87 = *(v77 + 35);
  v79 = v77;
  if (v87)
  {
    v88 = *(v87 + 792);
  }

  else
  {
    v88 = 0;
  }

  v89 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v87 ^ (v87 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v87 ^ (v87 >> 30))) >> 27));
  MaterialTableForAsset = re::RenderGraphContext::getMaterialTableForAsset(v76, v88 ^ (v89 >> 31) ^ v89);
  v91 = v76;
  re::RenderGraphContext::makeFullscreenDrawCall(v76, v83, "ProfilerPostPassColorSample", MaterialTableForAsset, 0, 0, 0, 0, &STACK[0xA60]);
  if (v86)
  {
    v74 = "fullscreenarray";
  }

  else
  {
    v74 = "fullscreen";
  }

  v76 = STACK[0xAA8];
  if (v86)
  {
    v92 = 15;
  }

  else
  {
    v92 = 10;
  }

  MurmurHash3_x64_128(v74, v92, 0, &STACK[0xD60]);
  v93 = re::MaterialParameterTableLayers::resolveTechniqueIndices(v76, (STACK[0xD68] + (STACK[0xD60] << 6) + (STACK[0xD60] >> 2) - 0x61C8864680B583E9) ^ STACK[0xD60]);
  if (!v94)
  {
    goto LABEL_353;
  }

  v95 = *v93;
  LODWORD(STACK[0xA8C]) = *v93;
  v76 = v91;
  if (v95 != -1)
  {
    v96 = re::RenderGraphDataStore::tryGet<re::CameraData>(*(v91 + 1168), *(*(v91 + 40) + 48));
    *&a69 = 0;
    *&a68 = 0;
    a67 = 0uLL;
    DWORD2(a68) = 0;
    STACK[0xA50] = 0;
    STACK[0xA38] = 0;
    STACK[0xA40] = 0;
    STACK[0xA30] = 0;
    LODWORD(STACK[0xA48]) = 0;
    if (v96)
    {
      v76 = v96;
      if (*(v96 + 128))
      {
        v80 = 0;
        v97 = 0;
        v75 = v96 + 64;
        while (1)
        {
          v98 = v76 + 144 + 240 * v80;
          if (*(v98 + 80) == 1)
          {
            v99 = *(v98 + 96);
            v100 = *(v98 + 112);
            v101 = *(v98 + 144);
            *&STACK[0xD80] = *(v98 + 128);
            *&STACK[0xD90] = v101;
            *&STACK[0xD60] = v99;
            *&STACK[0xD70] = v100;
          }

          else
          {
            re::Projection::cullingProjectionMatrix(v98, &STACK[0xD60]);
          }

          *&v103 = re::DynamicArray<re::Matrix4x4<float>>::add(&STACK[0xA30], &STACK[0xD60]).n128_u64[0];
          v104 = *(v76 + 48);
          if (v104 <= v80)
          {
            break;
          }

          re::RenderCamera::computeInverseTransform((v75 + 32 * v80), &STACK[0xD60]);
          re::DynamicArray<re::Matrix4x4<float>>::add(&a67, &STACK[0xD60]);
          v80 = ++v97;
          if (*(v76 + 128) <= v97)
          {
            goto LABEL_33;
          }
        }

        re::internal::assertLog(6, v102, v103, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v80, v104);
        _os_crash();
        __break(1u);
LABEL_352:
        *(v79 + 82) = 0;
        *(v80 + 19) = 0u;
        *(v80 + 20) = 0u;
        *(v80 + 17) = 0u;
        *(v80 + 18) = 0u;
        *(v80 + 16) = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(STACK[0xD60]) = 136315906;
        STACK[0xD64] = "operator[]";
        LOWORD(STACK[0xD6C]) = 1024;
        LODWORD(STACK[0xD6E]) = 789;
        LOWORD(STACK[0xD72]) = 2048;
        STACK[0xD74] = 0;
        LOWORD(STACK[0xD7C]) = 2048;
        STACK[0xD7E] = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_353:
        re::internal::assertLog(6, v94, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
        _os_crash();
        __break(1u);
        re::internal::assertLog(6, v380, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v75, v381);
        _os_crash();
        __break(1u);
        re::internal::assertLog(6, v382, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v383, v384);
        _os_crash();
        __break(1u);
        re::internal::assertLog(6, v385, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v386, v387);
        _os_crash();
        __break(1u);
        re::internal::assertLog(6, v388, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v389, v390);
        _os_crash();
        __break(1u);
        re::internal::assertLog(6, v391, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v392, v393);
        _os_crash();
        __break(1u);
        re::internal::assertLog(6, v394, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()");
        _os_crash();
        __break(1u);
LABEL_354:
        v105 = re::DrawCallRecorder::allocateDrawCallRecorderGroup((v76 + 1352), *(v79 + 2), v74);
LABEL_37:
        v80[24] = v105;
        LOBYTE(STACK[0xA28]) = 0;
        re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs(v76, &STACK[0xCF0]);
        re::RenderGraphContext::encodeDrawCalls(v76, &STACK[0xCF0], &a81);
        v108 = *v76;
        STACK[0xCF0] = 0xA3521516DAFB1;
        re::DynamicTextureTableRemove((v108 + 368), &STACK[0xCF0], v109);
        v110 = v80[26];
        if (v110 && v80[30])
        {
          (*(*v110 + 40))(v110);
        }

        if (a67 && v80[4])
        {
          (*(*a67 + 40))();
        }

        goto LABEL_43;
      }

LABEL_33:
      v85 = *(v76 + 890);
      v80 = &a67;
    }

    else
    {
      *&STACK[0xD60] = xmmword_1E3047670;
      *&STACK[0xD70] = xmmword_1E3047680;
      *&STACK[0xD80] = xmmword_1E30476A0;
      *&STACK[0xD90] = xmmword_1E30474D0;
      re::DynamicArray<re::Matrix4x4<float>>::add(&STACK[0xA30], &STACK[0xD60]);
      *&STACK[0xD60] = xmmword_1E3047670;
      *&STACK[0xD70] = xmmword_1E3047680;
      *&STACK[0xD80] = xmmword_1E30476A0;
      *&STACK[0xD90] = xmmword_1E30474D0;
      re::DynamicArray<re::Matrix4x4<float>>::add(&a67, &STACK[0xD60]);
      if (v86)
      {
        v85 = *(v75 + 64);
        *&STACK[0xD60] = xmmword_1E3047670;
        *&STACK[0xD70] = xmmword_1E3047680;
        *&STACK[0xD80] = xmmword_1E30476A0;
        *&STACK[0xD90] = xmmword_1E30474D0;
        re::DynamicArray<re::Matrix4x4<float>>::add(&STACK[0xA30], &STACK[0xD60]);
        *&STACK[0xD60] = xmmword_1E3047670;
        *&STACK[0xD70] = xmmword_1E3047680;
        *&STACK[0xD80] = xmmword_1E30476A0;
        *&STACK[0xD90] = xmmword_1E30474D0;
        re::DynamicArray<re::Matrix4x4<float>>::add(&a67, &STACK[0xD60]);
      }
    }

    LODWORD(STACK[0xA84]) = v85;
    re::DrawCallRef::DrawCallRef(&a74, &STACK[0xA60]);
    v105 = 0;
    STACK[0xD60] = &a74;
    v106 = vdupq_n_s64(1uLL);
    *&STACK[0xD68] = v106;
    STACK[0xD78] = &a75;
    *&STACK[0xD80] = v106;
    STACK[0xD90] = &a76;
    *&STACK[0xD98] = v106;
    STACK[0xDA8] = &a77;
    *&STACK[0xDB0] = v106;
    STACK[0xDC0] = &a78;
    *&STACK[0xDC8] = v106;
    *&a81 = v74;
    *(&a81 + 1) = &STACK[0xD60];
    v107 = STACK[0xA50];
    *&a82 = a69;
    *(&a82 + 1) = v107;
    STACK[0xA00] = 0;
    LOBYTE(STACK[0xA08]) = v85;
    LOWORD(STACK[0xA09]) = 2;
    LOWORD(STACK[0xA0C]) = 0;
    LOBYTE(STACK[0xA1F]) = 0;
    v76 = v91;
    if (!*(v91 + 1352))
    {
      goto LABEL_37;
    }

    goto LABEL_354;
  }

LABEL_43:
  re::ProfilerTimeGuard<(re::ProfilerStatistic)23>::end(&__p);
  v77 = v79;
  v79 = &STACK[0xA60];
LABEL_44:
  result = *(*(v76 + 8) + 112);
  if (result)
  {
    result = re::DrawingManager::shouldRenderProfilerNode(result);
    if (result)
    {
      v112 = *(*(v76 + 8) + 112);
      if (v112)
      {
        if (*(v112 + 1664))
        {
          re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(&a79);
          re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(&a72, 5074, 0);
          v113 = *(v76 + 8);
          if (*(v113 + 8) >= 2uLL)
          {
            v114 = *(v113 + 112);
            if (v114)
            {
              v115 = *(v114 + 1664);
            }

            else
            {
              v115 = 0;
            }

            os_unfair_lock_lock((v115 + 16));
            v80[32] = re::ProfilerManager::getProcessorId<re::ProfilerFlameChartProcessor>();
            v116 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>((v115 + 480), &STACK[0xA60]);
            if (v116)
            {
              v117 = v116[3];
              os_unfair_lock_unlock((v115 + 16));
              if (v117 && *(v117 + 8) == 1)
              {
                v80[9] = 0;
                v80[10] = 0;
                v80[11] = 0;
                os_unfair_lock_lock((v117 + 12));
                v78 = 0xAAAAAAAAAAAAAAABLL;
                std::vector<re::ProfilerFlameChartBlock>::reserve(&a74, 0xAAAAAAAAAAAAAAABLL * ((*(v117 + 48) - *(v117 + 40)) >> 7));
                v441 = v117;
                v119 = *(v117 + 40);
                v118 = *(v117 + 48);
                if (v119 != v118)
                {
                  v75 = v80[10];
                  do
                  {
                    v120 = v80[11];
                    if (v75 >= v120)
                    {
                      v121 = v77;
                      v122 = v76;
                      v123 = v80[9];
                      v124 = v75 - v123;
                      v125 = 0xAAAAAAAAAAAAAAABLL * ((v75 - v123) >> 7);
                      v126 = v125 + 1;
                      if (v125 + 1 > 0xAAAAAAAAAAAAAALL)
                      {
                        std::string::__throw_length_error[abi:nn200100]();
                      }

                      v127 = 0xAAAAAAAAAAAAAAABLL * ((v120 - v123) >> 7);
                      if (2 * v127 > v126)
                      {
                        v126 = 2 * v127;
                      }

                      if (v127 >= 0x55555555555555)
                      {
                        v128 = 0xAAAAAAAAAAAAAALL;
                      }

                      else
                      {
                        v128 = v126;
                      }

                      if (v128)
                      {
                        v129 = std::__allocate_at_least[abi:nn200100]<std::allocator<re::ProfilerFlameChartBlock>>(&a74, v128);
                        v123 = v80[9];
                        v124 = v80[10] - v123;
                      }

                      else
                      {
                        v129 = 0;
                      }

                      v130 = &v129[384 * v125];
                      v131 = &v129[384 * v128];
                      memcpy(v130, v119, 0x180uLL);
                      v75 = (v130 + 384);
                      v132 = &v130[-v124];
                      memcpy(v132, v123, v124);
                      v133 = a74;
                      a74 = v132;
                      a75 = v75;
                      a76 = v131;
                      v80 = &a67;
                      if (v133)
                      {
                        MEMORY[0x1E6906510](v133, 128);
                      }

                      v76 = v122;
                      v77 = v121;
                      v78 = 0xAAAAAAAAAAAAAAABLL;
                    }

                    else
                    {
                      memcpy(v75, v119, 0x180uLL);
                      v75 += 384;
                    }

                    v80[10] = v75;
                    v119 += 384;
                  }

                  while (v119 != v118);
                }

                os_unfair_lock_unlock(v441 + 3);
                v134 = v80[9];
                v135 = v80[10];
                v136 = v135 - v134;
                if (v135 != v134)
                {
                  v75 = re::RenderGraphContext::rtResolution(v76);
                  v138 = *(*(v76 + 8) + 112);
                  if (v138)
                  {
                    re::DrawingManager::getLayerContentsScale(v138, 0, v137);
                  }

                  if (v75 >= SHIDWORD(v75))
                  {
                    _NF = (SHIDWORD(v75) / v75) < 0.65;
                    v140 = 10.0;
                    v141 = 5.0;
                  }

                  else
                  {
                    _NF = (v75 / SHIDWORD(v75)) < 0.65;
                    v140 = 16.0;
                    v141 = 12.0;
                  }

                  if (_NF)
                  {
                    v140 = v141;
                  }

                  *(v77 + 84) = v140;
                  v142 = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(*(v76 + 1168), *(*(v76 + 40) + 48));
                  v143 = v76;
                  if (v142)
                  {
                    v79 = *(v142 + 65);
                    if (*(v142 + 65))
                    {
                      v144 = 2;
                    }

                    else
                    {
                      v144 = 1;
                    }
                  }

                  else
                  {
                    v79 = 0;
                    v144 = 1;
                  }

                  LOBYTE(a55) = v144;
                  v80[20] = 0;
                  v80[17] = 0;
                  v80[18] = 0;
                  v80[16] = 0;
                  DWORD2(a82) = 0;
                  v76 = 2;
                  re::DynamicArray<re::Matrix4x4<float>>::resize(&a81, 2uLL);
                  if (v80[18])
                  {
                    v145 = v80[20];
                    *v145 = xmmword_1E3047670;
                    *(v145 + 1) = xmmword_1E3047680;
                    *(v145 + 2) = xmmword_1E30476A0;
                    *(v145 + 3) = xmmword_1E30474D0;
                    v76 = v80[18];
                    if (v76 > 1)
                    {
                      v146 = v80[20];
                      *(v146 + 4) = xmmword_1E3047670;
                      *(v146 + 5) = xmmword_1E3047680;
                      *(v146 + 6) = xmmword_1E30476A0;
                      *(v146 + 7) = xmmword_1E30474D0;
                      vars0 = xmmword_1E30474D0;
                      v80[4] = 0;
                      v80[2] = 0;
                      a67 = 0uLL;
                      DWORD2(a68) = 0;
                      v76 = 2;
                      re::DynamicArray<re::Matrix4x4<float>>::resize(&a67, 2uLL);
                      v147 = 0uLL;
                      if (v80[2])
                      {
                        DWORD1(v148) = 0;
                        *(&v148 + 1) = 0;
                        *&v148 = 2.0 / v75;
                        *(&v147 + 1) = 2.0 / SHIDWORD(v75);
                        v149 = v80[4];
                        *v149 = v148;
                        *(v149 + 1) = v147;
                        *(v149 + 2) = xmmword_1E31044C0;
                        *(v149 + 3) = xmmword_1E30DA6E0;
                        v76 = v80[2];
                        if (v76 > 1)
                        {
                          v150 = v80[4];
                          *(v150 + 4) = v148;
                          *(v150 + 5) = v147;
                          *(v150 + 6) = xmmword_1E31044C0;
                          *(v150 + 7) = xmmword_1E30DA6E0;
                          re::RenderGraphContext::acquireManagedRenderCommandEncoder(&a56, v143, 0);
                          re::RenderGraphDataStore::tryGet<re::StencilInfoData>(*(v143 + 146), *(*(v143 + 5) + 48));
                          __p = 0;
                          a59 = 0;
                          a60 = 0;
                          if (0xAAAAAAAAAAAAAAABLL * (v136 >> 7) < 0x1C71C71C71C71C8)
                          {
                            v80[36] = &__p;
                            std::__allocate_at_least[abi:nn200100]<std::allocator<re::RenderText>>(0xAAAAAAAAAAAAAAABLL * (v136 >> 7));
                          }

                          std::string::__throw_length_error[abi:nn200100]();
                        }

                        goto LABEL_362;
                      }

LABEL_361:
                      STACK[0xCF0] = 0;
                      *(v80 + 19) = v147;
                      *(v80 + 20) = v147;
                      *(v80 + 17) = v147;
                      *(v80 + 18) = v147;
                      *(v80 + 16) = v147;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      LODWORD(STACK[0xD60]) = 136315906;
                      STACK[0xD64] = "operator[]";
                      LOWORD(STACK[0xD6C]) = 1024;
                      LODWORD(STACK[0xD6E]) = 789;
                      LOWORD(STACK[0xD72]) = 2048;
                      STACK[0xD74] = 0;
                      LOWORD(STACK[0xD7C]) = 2048;
                      STACK[0xD7E] = 0;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_362:
                      v169 = &STACK[0xA60];
                      STACK[0xCF0] = 0;
                      *(v80 + 19) = 0u;
                      *(v80 + 20) = 0u;
                      *(v80 + 17) = 0u;
                      *(v80 + 18) = 0u;
                      *(v80 + 16) = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      LODWORD(STACK[0xD60]) = 136315906;
                      STACK[0xD64] = "operator[]";
                      LOWORD(STACK[0xD6C]) = 1024;
                      LODWORD(STACK[0xD6E]) = 789;
                      LOWORD(STACK[0xD72]) = 2048;
                      STACK[0xD74] = 1;
                      LOWORD(STACK[0xD7C]) = 2048;
                      STACK[0xD7E] = v76;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
                      re::internal::assertLog(6, v395, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, v396);
                      _os_crash();
                      __break(1u);
                      re::internal::assertLog(6, v397, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 1, v398);
                      _os_crash();
                      __break(1u);
                      re::internal::assertLog(6, v399, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 2, v400);
                      _os_crash();
                      __break(1u);
                      re::internal::assertLog(6, v401, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 3, v402);
                      _os_crash();
                      __break(1u);
LABEL_363:
                      *(v75 + 128) = 0;
                      *(v78 + 10) = 0u;
                      *(v78 + 11) = 0u;
                      *(v78 + 8) = 0u;
                      *(v78 + 9) = 0u;
                      *(v78 + 7) = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      LODWORD(STACK[0xCF0]) = 136315906;
                      *(v78 + 4) = "operator[]";
                      LOWORD(STACK[0xCFC]) = 1024;
                      *(v78 + 14) = 789;
                      LOWORD(STACK[0xD02]) = 2048;
                      *(v78 + 20) = 0;
                      LOWORD(STACK[0xD0C]) = 2048;
                      *(v78 + 30) = 0;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
                      re::internal::assertLog(6, v403, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 4, v404);
                      _os_crash();
                      __break(1u);
                      goto LABEL_364;
                    }

LABEL_360:
                    STACK[0xCF0] = 0;
                    *(v80 + 19) = 0u;
                    *(v80 + 20) = 0u;
                    *(v80 + 17) = 0u;
                    *(v80 + 18) = 0u;
                    *(v80 + 16) = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(STACK[0xD60]) = 136315906;
                    STACK[0xD64] = "operator[]";
                    LOWORD(STACK[0xD6C]) = 1024;
                    LODWORD(STACK[0xD6E]) = 789;
                    LOWORD(STACK[0xD72]) = 2048;
                    STACK[0xD74] = 1;
                    LOWORD(STACK[0xD7C]) = 2048;
                    STACK[0xD7E] = v76;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                    goto LABEL_361;
                  }

LABEL_359:
                  STACK[0xCF0] = 0;
                  *(v80 + 19) = 0u;
                  *(v80 + 20) = 0u;
                  *(v80 + 17) = 0u;
                  *(v80 + 18) = 0u;
                  *(v80 + 16) = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  LODWORD(STACK[0xD60]) = 136315906;
                  STACK[0xD64] = "operator[]";
                  LOWORD(STACK[0xD6C]) = 1024;
                  LODWORD(STACK[0xD6E]) = 789;
                  LOWORD(STACK[0xD72]) = 2048;
                  STACK[0xD74] = 0;
                  LOWORD(STACK[0xD7C]) = 2048;
                  STACK[0xD7E] = 0;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
                  goto LABEL_360;
                }

                v78 = &STACK[0xCF0];
                v79 = &STACK[0xA60];
                if (v134)
                {
                  v80[10] = v134;
                  MEMORY[0x1E6906510]();
                }
              }
            }

            else
            {
              os_unfair_lock_unlock((v115 + 16));
            }
          }

          re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(&a72);
          re::ProfilerTimeGuard<(re::ProfilerStatistic)23>::end(&a79);
          re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(&a79);
          re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(&a72, 5074, 0);
          v151 = *(v76 + 8);
          v152 = *(v151 + 112);
          if (v152)
          {
            v153 = *(v152 + 1664);
            if (v153)
            {
              if (*(v151 + 8) >= 2uLL)
              {
                v154 = re::ProfilerManager::getProcessor<re::ProfilerMiniHUDProcessor,void>(v153);
                if (v154)
                {
                  v80 = v154;
                  if (*(v154 + 8) == 1)
                  {
                    STACK[0xAB0] = 0;
                    *&STACK[0xA90] = 0u;
                    *&STACK[0xAA0] = 0u;
                    *&STACK[0xA70] = 0u;
                    *&STACK[0xA80] = 0u;
                    *&STACK[0xA60] = 0u;
                    v155 = re::DynamicString::setCapacity(&STACK[0xA98], 0);
                    *&STACK[0xAC8] = 0u;
                    *&STACK[0xAB8] = 0u;
                    v156 = re::DynamicString::setCapacity(&STACK[0xAB8], 0);
                    *&STACK[0xAE8] = 0u;
                    *&STACK[0xAD8] = 0u;
                    v157 = re::DynamicString::setCapacity(&STACK[0xAD8], 0);
                    *&STACK[0xB08] = 0u;
                    *&STACK[0xAF8] = 0u;
                    v158 = re::DynamicString::setCapacity(&STACK[0xAF8], 0);
                    *&STACK[0xB28] = 0u;
                    *&STACK[0xB18] = 0u;
                    v159 = re::DynamicString::setCapacity(&STACK[0xB18], 0);
                    *&STACK[0xB48] = 0u;
                    *&STACK[0xB38] = 0u;
                    v160 = re::DynamicString::setCapacity(&STACK[0xB38], 0);
                    *&STACK[0xB68] = 0u;
                    *&STACK[0xB58] = 0u;
                    v161 = re::DynamicString::setCapacity(&STACK[0xB58], 0);
                    *&STACK[0xB78] = 0u;
                    *&STACK[0xB88] = 0u;
                    v162 = re::DynamicString::setCapacity(&STACK[0xB78], 0);
                    *&STACK[0xB98] = 0u;
                    *&STACK[0xBA8] = 0u;
                    v163 = re::DynamicString::setCapacity(&STACK[0xB98], 0);
                    *&STACK[0xBB8] = 0u;
                    *&STACK[0xBC8] = 0u;
                    v164 = re::DynamicString::setCapacity(&STACK[0xBB8], 0);
                    *&STACK[0xBD8] = 0u;
                    *&STACK[0xBE8] = 0u;
                    vars0a = &STACK[0xBD8];
                    re::DynamicString::setCapacity(&STACK[0xBD8], 0);
                    os_unfair_lock_lock(v80 + 3);
                    re::ProfilerMiniHudStatistics::copy(&STACK[0xA60], (v80 + 53));
                    os_unfair_lock_unlock(v80 + 3);
                    v165 = re::RenderGraphContext::rtResolution(v76);
                    v166 = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(*(v76 + 1168), *(*(v76 + 40) + 48));
                    if (v166)
                    {
                      v167 = *(v166 + 65);
                      if (v167)
                      {
                        v168 = 2;
                      }

                      else
                      {
                        v168 = 1;
                      }
                    }

                    else
                    {
                      v167 = 0;
                      v168 = 1;
                    }

                    a66 = v167;
                    a65 = v168;
                    v75 = &a67;
                    a78 = 0;
                    a75 = 0;
                    a76 = 0;
                    a74 = 0;
                    a77 = 0;
                    v169 = 2;
                    re::DynamicArray<re::Matrix4x4<float>>::resize(&a74, 2uLL);
                    if (!a76)
                    {
                      goto LABEL_363;
                    }

                    v170 = a78;
                    *a78 = xmmword_1E3047670;
                    v170[1] = xmmword_1E3047680;
                    v170[2] = xmmword_1E30476A0;
                    v170[3] = xmmword_1E30474D0;
                    v169 = a76;
                    if (a76 <= 1)
                    {
LABEL_364:
                      *(v75 + 128) = 0;
                      *(v78 + 10) = 0u;
                      *(v78 + 11) = 0u;
                      *(v78 + 8) = 0u;
                      *(v78 + 9) = 0u;
                      *(v78 + 7) = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      LODWORD(STACK[0xCF0]) = 136315906;
                      *(v78 + 4) = "operator[]";
                      LOWORD(STACK[0xCFC]) = 1024;
                      *(v78 + 14) = 789;
                      LOWORD(STACK[0xD02]) = 2048;
                      *(v78 + 20) = 1;
                      LOWORD(STACK[0xD0C]) = 2048;
                      *(v78 + 30) = v169;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
                      re::internal::assertLog(6, v405, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 5, v406);
                      _os_crash();
                      __break(1u);
                      goto LABEL_365;
                    }

                    v439 = v76;
                    v171 = a78;
                    a78[4] = xmmword_1E3047670;
                    v171[5] = xmmword_1E3047680;
                    a35 = 0;
                    v171[6] = xmmword_1E30476A0;
                    v171[7] = xmmword_1E30474D0;
                    a62 = 0;
                    a59 = 0;
                    a60 = 0;
                    __p = 0;
                    a61 = 0;
                    v169 = 2;
                    re::DynamicArray<re::Matrix4x4<float>>::resize(&__p, 2uLL);
                    v172 = 0uLL;
                    if (!a60)
                    {
LABEL_365:
                      *&a81 = 0;
                      *(v78 + 10) = v172;
                      *(v78 + 11) = v172;
                      *(v78 + 8) = v172;
                      *(v78 + 9) = v172;
                      *(v78 + 7) = v172;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      LODWORD(STACK[0xCF0]) = 136315906;
                      *(v78 + 4) = "operator[]";
                      LOWORD(STACK[0xCFC]) = 1024;
                      *(v78 + 14) = 789;
                      LOWORD(STACK[0xD02]) = 2048;
                      *(v78 + 20) = 0;
                      LOWORD(STACK[0xD0C]) = 2048;
                      *(v78 + 30) = 0;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
                      re::internal::assertLog(6, v407, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 6, v408);
                      _os_crash();
                      __break(1u);
                      goto LABEL_366;
                    }

                    v76 = HIDWORD(v165);
                    DWORD1(v173) = 0;
                    *(&v173 + 1) = 0;
                    *&v173 = 2.0 / v165;
                    *(&v172 + 1) = 2.0 / SHIDWORD(v165);
                    v174 = a62;
                    *a62 = v173;
                    v174[1] = v172;
                    v174[2] = xmmword_1E31044C0;
                    v174[3] = xmmword_1E30DA6E0;
                    v169 = a60;
                    if (a60 <= 1)
                    {
LABEL_366:
                      *&a81 = 0;
                      *(v78 + 10) = 0u;
                      *(v78 + 11) = 0u;
                      *(v78 + 8) = 0u;
                      *(v78 + 9) = 0u;
                      *(v78 + 7) = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      LODWORD(STACK[0xCF0]) = 136315906;
                      *(v78 + 4) = "operator[]";
                      LOWORD(STACK[0xCFC]) = 1024;
                      *(v78 + 14) = 789;
                      LOWORD(STACK[0xD02]) = 2048;
                      *(v78 + 20) = 1;
                      LOWORD(STACK[0xD0C]) = 2048;
                      *(v78 + 30) = v169;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
                      re::internal::assertLog(6, v409, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 7, v410);
                      _os_crash();
                      __break(1u);
LABEL_367:
                      re::internal::assertLog(6, v187, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, v193);
                      _os_crash();
                      __break(1u);
                      re::internal::assertLog(6, v411, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 8, v412);
                      _os_crash();
                      __break(1u);
                      goto LABEL_368;
                    }

                    v175 = a62;
                    a62[4] = v173;
                    v175[5] = v172;
                    v175[6] = xmmword_1E31044C0;
                    v175[7] = xmmword_1E30DA6E0;
                    re::RenderGraphContext::acquireManagedRenderCommandEncoder(&a56, v439, 0);
                    a55 = re::RenderGraphDataStore::tryGet<re::StencilInfoData>(*(v439 + 146), *(*(v439 + 5) + 48));
                    a71 = 1107296256;
                    v176 = (SHIDWORD(v165) / 4);
                    if ((v165 & 0x80000000) == 0)
                    {
                      v177 = v165;
                    }

                    else
                    {
                      v177 = v165 + 3;
                    }

                    if (*&STACK[0xA70] <= 0.0)
                    {
                      v178 = *&STACK[0xA6C];
                    }

                    else
                    {
                      v178 = *&STACK[0xA70];
                    }

                    if (*&STACK[0xA70] <= 0.0)
                    {
                      v179 = *&STACK[0xA68];
                    }

                    else
                    {
                      v179 = *&STACK[0xA68] + *&STACK[0xA6C];
                    }

                    v180 = *&STACK[0xA74];
                    v181 = (1000.0 / *&STACK[0xA60]) / 16.667;
                    v182 = 1.0 / v181;
                    v183 = STACK[0xA78];
                    v184 = STACK[0xA90];
                    if ((1.0 / v181) <= 1.0)
                    {
                      v185 = 1.0 / v181;
                    }

                    else
                    {
                      v185 = 1.0;
                    }

                    v186 = (1.0 - v185) + (*(v77 + 100) * (1.0 - (1.0 - v185)));
                    v79 = &_MergedGlobals_519;
                    if ((atomic_load_explicit(&qword_1EE1BFB70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFB70))
                    {
                      _MergedGlobals_519 = *(v77 + 100);
                      __cxa_guard_release(&qword_1EE1BFB70);
                    }

                    *&_MergedGlobals_519 = (v186 * 0.1) + (*&_MergedGlobals_519 * 0.9);
                    a70 = v176 / 5.0;
                    a54 = 1090519040;
                    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*v439 + 16), 0x480uLL, 0x10uLL, &STACK[0xD60]);
                    v189 = LODWORD(STACK[0xD68]);
                    v190 = LODWORD(STACK[0xD6C]);
                    v191 = STACK[0xD70];
                    v192 = &v189[STACK[0xD60]];
                    v193 = v190 >> 5;
                    a51 = v192;
                    a52 = v190 >> 5;
                    *&v194 = (v165 / -2) + 10.0;
                    a50 = *&v194;
                    v195 = ((SHIDWORD(v165) / -2) + 10.0) + v176;
                    a49 = v195;
                    if (v190 <= 0x1F)
                    {
                      goto LABEL_367;
                    }

                    v196 = (v177 >> 2);
                    *&v197 = 0;
                    DWORD2(v197) = 0;
                    HIDWORD(v197) = _MergedGlobals_519;
                    *&v188 = *&v194 + v196;
                    DWORD2(v188) = 0;
                    HIDWORD(v188) = 1.0;
                    v198 = v188;
                    *(&v198 + 1) = v195;
                    *v192 = v198;
                    *(v192 + 1) = v197;
                    if (v190 <= 0x3F)
                    {
LABEL_368:
                      re::internal::assertLog(6, v187, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 1, v193);
                      _os_crash();
                      __break(1u);
LABEL_369:
                      re::internal::assertLog(6, v281, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, v284);
                      _os_crash();
                      __break(1u);
                      re::internal::assertLog(6, v413, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 9, v414);
                      _os_crash();
                      __break(1u);
                      goto LABEL_370;
                    }

                    DWORD2(v194) = 0;
                    HIDWORD(v194) = 1.0;
                    v199 = v194;
                    *(&v199 + 1) = v195;
                    *(v192 + 2) = v199;
                    *(v192 + 3) = v197;
                    if (v193 == 2)
                    {
LABEL_370:
                      re::internal::assertLog(6, v187, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 2, 2);
                      _os_crash();
                      __break(1u);
LABEL_371:
                      re::internal::assertLog(6, v281, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 1, v284);
                      _os_crash();
                      __break(1u);
                      re::internal::assertLog(6, v415, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 10, v416);
                      _os_crash();
                      __break(1u);
                      goto LABEL_372;
                    }

                    *(&v194 + 1) = (SHIDWORD(v165) / -2) + 10.0;
                    *(v192 + 4) = v194;
                    *(v192 + 5) = v197;
                    v200 = (v192 + 64);
                    if (v190 <= 0x7F)
                    {
LABEL_372:
                      re::internal::assertLog(6, v187, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 3, v193);
                      _os_crash();
                      __break(1u);
                      goto LABEL_373;
                    }

                    *(&v188 + 1) = (SHIDWORD(v165) / -2) + 10.0;
                    *(v192 + 6) = v188;
                    *(v192 + 7) = v197;
                    if (v193 == 4)
                    {
LABEL_374:
                      re::internal::assertLog(6, v187, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 4, 4);
                      _os_crash();
                      __break(1u);
                      goto LABEL_375;
                    }

                    v433 = v191;
                    v201 = *v192;
                    v202 = *(v192 + 1);
                    *(v192 + 8) = *v192;
                    *(v192 + 9) = v202;
                    if (v190 <= 0xBF)
                    {
LABEL_376:
                      re::internal::assertLog(6, v187, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 5, v193);
                      _os_crash();
                      __break(1u);
                      goto LABEL_377;
                    }

                    v203 = v180 / 1000000.0;
                    *&v201 = v179 / 16.667;
                    v204 = v178 / 16.667;
                    v205 = v203 / 16.667;
                    v206 = *v200;
                    v207 = *(v192 + 5);
                    *(v192 + 10) = *v200;
                    *(v192 + 11) = v207;
                    *&a67 = v80 + 106;
                    *(&a67 + 1) = v80 + 108;
                    v76 = &a67;
                    *&a68 = &a51;
                    *(&a68 + 1) = &a50;
                    *&a69 = &a49;
                    *(&a69 + 1) = &a70;
                    a48 = 6;
                    a47 = 1008981770;
                    *&v206 = 1.0 - (v179 / 16.667);
                    re::RenderGraphProfilerOverlayNode::executeMiniHUDRendering(re::RenderGraphContext &)::$_0::operator()(&a67, 0, &a48, &a47, *&v201, *&v206, (v179 / 16.667) * v196);
                    *&v208 = 1.0 - v204;
                    *&v209 = v204;
                    re::RenderGraphProfilerOverlayNode::executeMiniHUDRendering(re::RenderGraphContext &)::$_0::operator()(&a67, 1, &a48, &a47, v209, v208, v204 * v196);
                    *&v210 = 1.0 - v205;
                    *&v211 = v205;
                    re::RenderGraphProfilerOverlayNode::executeMiniHUDRendering(re::RenderGraphContext &)::$_0::operator()(&a67, 2, &a48, &a47, v211, v210, v205 * v196);
                    *&v212 = 1.0 - v182;
                    *&v213 = v182;
                    re::RenderGraphProfilerOverlayNode::executeMiniHUDRendering(re::RenderGraphContext &)::$_0::operator()(&a67, 3, &a48, &a47, v212, v213, v196);
                    if (STACK[0xA90] >= 1)
                    {
                      *&v215 = (vcvts_n_f32_u64(v183, 0xAuLL) * 0.00097656) / v184;
                      *&v214 = 1.0 - *&v215;
                      re::RenderGraphProfilerOverlayNode::executeMiniHUDRendering(re::RenderGraphContext &)::$_0::operator()(&a67, 4, &a48, &a47, v214, v215, v196);
                    }

                    (a57[20])(*a57, sel_pushDebugGroup_, [MEMORY[0x1E696AEC0] stringWithCString:"MiniHUDRect" encoding:4]);
                    v216 = *(v439 + 1);
                    re::RenderGraphContext::rtInfo(v439, *(v439 + 5), &STACK[0xD60]);
                    v217 = *re::RenderGraphProfilerOverlayNode::pipelineStateWithAlphaBlending(v77, v216, &STACK[0xD60]);
                    (a57[7])(*a57, sel_setRenderPipelineState_, v217);
                    v218 = a60;
                    if (!a60)
                    {
                      goto LABEL_378;
                    }

                    v427 = v217;
                    v430 = v189;
                    v219 = a62;
                    *&STACK[0xD60] = *a62;
                    *&STACK[0xD70] = v219[1];
                    *&STACK[0xD80] = v219[2];
                    *&STACK[0xD90] = v219[3];
                    if (v218 == 1)
                    {
LABEL_380:
                      STACK[0xA30] = 0;
                      *(v78 + 3) = 0u;
                      *(v78 + 4) = 0u;
                      *(v78 + 1) = 0u;
                      *(v78 + 2) = 0u;
                      *v78 = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      LODWORD(a81) = 136315906;
                      *(&a81 + 4) = "operator[]";
                      WORD6(a81) = 1024;
                      *(&a81 + 14) = 789;
                      WORD1(a82) = 2048;
                      *(&a82 + 4) = 1;
                      WORD6(a82) = 2048;
                      *(&a82 + 14) = 1;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
                      goto LABEL_381;
                    }

                    *&STACK[0xDA0] = v219[4];
                    *&STACK[0xDB0] = v219[5];
                    *&STACK[0xDC0] = v219[6];
                    *&STACK[0xDD0] = v219[7];
                    v76 = v439;
                    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*v439 + 16), 0x100uLL, 0x100uLL, &STACK[0xCF0]);
                    v220 = LODWORD(STACK[0xCF8]);
                    v426 = STACK[0xD00];
                    v221 = STACK[0xCF0] + v220;
                    *(v221 + 64) = *&STACK[0xDA0];
                    *(v221 + 80) = *&STACK[0xDB0];
                    *(v221 + 96) = *&STACK[0xDC0];
                    *(v221 + 112) = *&STACK[0xDD0];
                    *v221 = *&STACK[0xD60];
                    *(v221 + 16) = *&STACK[0xD70];
                    *(v221 + 32) = *&STACK[0xD80];
                    *(v221 + 48) = *&STACK[0xD90];
                    *(v221 + 128) = 1065353216;
                    *(v221 + 240) = 0u;
                    *(v221 + 228) = 0u;
                    *(v221 + 212) = 0u;
                    *(v221 + 196) = 0u;
                    *(v221 + 180) = 0u;
                    *(v221 + 164) = 0u;
                    *(v221 + 148) = 0u;
                    *(v221 + 132) = 0u;
                    *&STACK[0xA00] = 0u;
                    *&STACK[0xA10] = 0u;
                    a82 = 0u;
                    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*v439 + 16), 0xA0uLL, 0x20uLL, &STACK[0xCF0]);
                    v75 = LODWORD(STACK[0xCF8]);
                    v222 = STACK[0xD00];
                    v223 = STACK[0xCF0] + v75;
                    *(v223 + 16) = 0;
                    *(v223 + 28) = 1;
                    *(v223 + 32) = a81;
                    *(v223 + 48) = a82;
                    *(v223 + 64) = *&STACK[0xA00];
                    *(v223 + 80) = *&STACK[0xA10];
                    *&STACK[0xA40] = 0u;
                    *&STACK[0xA50] = 0u;
                    v224 = a65;
                    v225 = a66;
                    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*v439 + 16), 0x400uLL, 0x100uLL, &STACK[0xCF0]);
                    v226 = LODWORD(STACK[0xCF8]);
                    v227 = STACK[0xD00];
                    v228 = STACK[0xCF0] + v226;
                    *v228 = xmmword_1E3047670;
                    *(v228 + 16) = xmmword_1E3047680;
                    *(v228 + 32) = xmmword_1E30476A0;
                    *(v228 + 48) = xmmword_1E30474D0;
                    *(v228 + 64) = xmmword_1E3047670;
                    *(v228 + 80) = xmmword_1E3047680;
                    *(v228 + 96) = xmmword_1E30476A0;
                    *(v228 + 112) = xmmword_1E30474D0;
                    *(v228 + 128) = xmmword_1E3047670;
                    *(v228 + 144) = xmmword_1E3047680;
                    *(v228 + 160) = xmmword_1E30476A0;
                    *(v228 + 176) = xmmword_1E30474D0;
                    *(v228 + 192) = xmmword_1E3047670;
                    *(v228 + 208) = xmmword_1E3047680;
                    *(v228 + 224) = xmmword_1E30476A0;
                    *(v228 + 240) = xmmword_1E30474D0;
                    *(v228 + 256) = xmmword_1E3047670;
                    *(v228 + 272) = xmmword_1E3047680;
                    *(v228 + 288) = xmmword_1E30476A0;
                    *(v228 + 304) = xmmword_1E30474D0;
                    *(v228 + 320) = xmmword_1E3047670;
                    *(v228 + 336) = xmmword_1E3047680;
                    *(v228 + 352) = xmmword_1E30476A0;
                    *(v228 + 368) = xmmword_1E30474D0;
                    *(v228 + 384) = xmmword_1E3047670;
                    *(v228 + 400) = xmmword_1E3047680;
                    *(v228 + 416) = xmmword_1E30476A0;
                    *(v228 + 432) = xmmword_1E30474D0;
                    *(v228 + 448) = xmmword_1E3047670;
                    *(v228 + 464) = xmmword_1E3047680;
                    *(v228 + 480) = xmmword_1E30476A0;
                    *(v228 + 496) = xmmword_1E30474D0;
                    *(v228 + 512) = xmmword_1E3047670;
                    *(v228 + 528) = xmmword_1E3047680;
                    *(v228 + 544) = xmmword_1E30476A0;
                    *(v228 + 560) = xmmword_1E30474D0;
                    *(v228 + 576) = xmmword_1E3047670;
                    *(v228 + 592) = xmmword_1E3047680;
                    *(v228 + 608) = xmmword_1E30476A0;
                    *(v228 + 624) = xmmword_1E30474D0;
                    *(v228 + 640) = xmmword_1E3047670;
                    *(v228 + 656) = xmmword_1E3047680;
                    *(v228 + 672) = xmmword_1E30476A0;
                    *(v228 + 688) = xmmword_1E30474D0;
                    *(v228 + 704) = xmmword_1E3047670;
                    *(v228 + 720) = xmmword_1E3047680;
                    *(v228 + 736) = xmmword_1E30476A0;
                    *(v228 + 752) = xmmword_1E30474D0;
                    *(v228 + 880) = 0u;
                    *(v228 + 896) = 0u;
                    *(v228 + 848) = 0u;
                    *(v228 + 864) = 0u;
                    *(v228 + 816) = 0u;
                    *(v228 + 832) = 0u;
                    *(v228 + 784) = 0u;
                    *(v228 + 800) = 0u;
                    *(v228 + 768) = 0u;
                    *(v228 + 940) = v224;
                    *(v228 + 944) = v225;
                    *(v228 + 960) = 0u;
                    *(v228 + 976) = *&STACK[0xA30];
                    *(v228 + 992) = *&STACK[0xA40];
                    *(v228 + 1008) = *&STACK[0xA50];
                    (a57[2])(*a57, sel_setVertexBuffer_offset_atIndex_, v433, v430, 0);
                    (a57[2])(*a57, sel_setVertexBuffer_offset_atIndex_, v426, v220, 1);
                    (a57[2])(*a57, sel_setVertexBuffer_offset_atIndex_, v222, v75, 2);
                    (a57[2])(*a57, sel_setVertexBuffer_offset_atIndex_, v227, v226, 3);
                    (a57[26])(*a57, sel_drawPrimitives_vertexStart_vertexCount_, 3, 0, a48);
                    (a57[21])(*a57, sel_popDebugGroup);
                    STACK[0xD00] = &a50;
                    STACK[0xD08] = &a54;
                    STACK[0xD10] = &a49;
                    STACK[0xD18] = &a70;
                    STACK[0xD20] = &a71;
                    STACK[0xD28] = &a55;
                    STACK[0xD30] = &a56;
                    STACK[0xD38] = &a74;
                    STACK[0xD40] = &__p;
                    STACK[0xD48] = &a65;
                    v79 = &STACK[0xA60];
                    v229 = STACK[0xAA0];
                    v230 = STACK[0xAA0] >> 1;
                    STACK[0xCF0] = v77;
                    STACK[0xCF8] = v439;
                    _ZF = (v229 & 1) == 0;
                    v232 = v229 >> 1;
                    if (!_ZF)
                    {
                      v232 = v230;
                    }

                    STACK[0xD50] = &a66;
                    if (v232)
                    {
                      re::RenderGraphProfilerOverlayNode::executeMiniHUDRendering(re::RenderGraphContext &)::$_1::operator()(&STACK[0xCF0], 0, &STACK[0xA98]);
                    }

                    v233 = STACK[0xAC0];
                    if (STACK[0xAC0])
                    {
                      v234 = v233 >> 1;
                    }

                    else
                    {
                      v234 = v233 >> 1;
                    }

                    if (v234)
                    {
                      re::RenderGraphProfilerOverlayNode::executeMiniHUDRendering(re::RenderGraphContext &)::$_1::operator()(&STACK[0xCF0], 1u, &STACK[0xAB8]);
                    }

                    v235 = STACK[0xAE0];
                    if (STACK[0xAE0])
                    {
                      v236 = v235 >> 1;
                    }

                    else
                    {
                      v236 = v235 >> 1;
                    }

                    if (v236)
                    {
                      re::RenderGraphProfilerOverlayNode::executeMiniHUDRendering(re::RenderGraphContext &)::$_1::operator()(&STACK[0xCF0], 2u, &STACK[0xAD8]);
                    }

                    v237 = STACK[0xB00];
                    if (STACK[0xB00])
                    {
                      v238 = v237 >> 1;
                    }

                    else
                    {
                      v238 = v237 >> 1;
                    }

                    if (v238)
                    {
                      re::RenderGraphProfilerOverlayNode::executeMiniHUDRendering(re::RenderGraphContext &)::$_1::operator()(&STACK[0xCF0], 3u, &STACK[0xAF8]);
                    }

                    v239 = STACK[0xB20];
                    if (STACK[0xB20])
                    {
                      v240 = v239 >> 1;
                    }

                    else
                    {
                      v240 = v239 >> 1;
                    }

                    if (v240)
                    {
                      re::RenderGraphProfilerOverlayNode::executeMiniHUDRendering(re::RenderGraphContext &)::$_1::operator()(&STACK[0xCF0], 4u, &STACK[0xB18]);
                    }

                    if (v427)
                    {
                    }

                    re::mtl::RenderCommandEncoder::~RenderCommandEncoder(&a56);
                    if (__p && a62)
                    {
                      (*(*__p + 40))();
                    }

                    if (a74 && a78)
                    {
                      (*(*a74 + 40))();
                    }

                    if (STACK[0xBD8])
                    {
                      if (STACK[0xBE0])
                      {
                        (*(*STACK[0xBD8] + 40))(STACK[0xBD8], STACK[0xBE8]);
                      }

                      *&STACK[0xBD8] = 0u;
                      *&STACK[0xBE8] = 0u;
                    }

                    if (STACK[0xBB8])
                    {
                      if (STACK[0xBC0])
                      {
                        (*(*STACK[0xBB8] + 40))(STACK[0xBB8], STACK[0xBC8]);
                      }

                      *&STACK[0xBB8] = 0u;
                      *&STACK[0xBC8] = 0u;
                    }

                    if (STACK[0xB98])
                    {
                      if (STACK[0xBA0])
                      {
                        (*(*STACK[0xB98] + 40))(STACK[0xB98], STACK[0xBA8]);
                      }

                      *&STACK[0xB98] = 0u;
                      *&STACK[0xBA8] = 0u;
                    }

                    if (STACK[0xB78])
                    {
                      if (STACK[0xB80])
                      {
                        (*(*STACK[0xB78] + 40))(STACK[0xB78], STACK[0xB88]);
                      }

                      *&STACK[0xB78] = 0u;
                      *&STACK[0xB88] = 0u;
                    }

                    if (STACK[0xB58])
                    {
                      if (STACK[0xB60])
                      {
                        (*(*STACK[0xB58] + 40))(STACK[0xB58], STACK[0xB68]);
                      }

                      *&STACK[0xB58] = 0u;
                      *&STACK[0xB68] = 0u;
                    }

                    if (STACK[0xB38])
                    {
                      if (STACK[0xB40])
                      {
                        (*(*STACK[0xB38] + 40))(STACK[0xB38], STACK[0xB48]);
                      }

                      *&STACK[0xB48] = 0u;
                      *&STACK[0xB38] = 0u;
                    }

                    if (STACK[0xB18])
                    {
                      if (STACK[0xB20])
                      {
                        (*(*STACK[0xB18] + 40))(STACK[0xB18], STACK[0xB28]);
                      }

                      *&STACK[0xB28] = 0u;
                      *&STACK[0xB18] = 0u;
                    }

                    if (STACK[0xAF8])
                    {
                      if (STACK[0xB00])
                      {
                        (*(*STACK[0xAF8] + 40))(STACK[0xAF8], STACK[0xB08]);
                      }

                      *&STACK[0xB08] = 0u;
                      *&STACK[0xAF8] = 0u;
                    }

                    if (STACK[0xAD8])
                    {
                      if (STACK[0xAE0])
                      {
                        (*(*STACK[0xAD8] + 40))(STACK[0xAD8], STACK[0xAE8]);
                      }

                      *&STACK[0xAE8] = 0u;
                      *&STACK[0xAD8] = 0u;
                    }

                    if (STACK[0xAB8])
                    {
                      if (STACK[0xAC0])
                      {
                        (*(*STACK[0xAB8] + 40))(STACK[0xAB8], STACK[0xAC8]);
                      }

                      *&STACK[0xAC8] = 0u;
                      *&STACK[0xAB8] = 0u;
                    }

                    if (STACK[0xA98] && (STACK[0xAA0] & 1) != 0)
                    {
                      (*(*STACK[0xA98] + 40))(STACK[0xA98], STACK[0xAA8]);
                    }
                  }
                }
              }
            }
          }

          re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(&a72);
          re::ProfilerTimeGuard<(re::ProfilerStatistic)23>::end(&a79);
          re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(&__p);
          re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(&a79, 5074, 0);
          v241 = *(v76 + 8);
          v242 = *(v241 + 112);
          v80 = &a67;
          if (v242)
          {
            v243 = *(v242 + 1664);
            if (v243)
            {
              if (*(v241 + 8) >= 2uLL)
              {
                os_unfair_lock_lock((v243 + 16));
                STACK[0xA60] = re::ProfilerManager::getProcessorId<re::ProfilerDetailedHUDProcessor>();
                v244 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>((v243 + 480), &STACK[0xA60]);
                if (v244)
                {
                  v245 = v244[3];
                  os_unfair_lock_unlock((v243 + 16));
                  if (v245 && *(v245 + 8) == 1)
                  {
                    *&STACK[0xA60] = 0u;
                    *&STACK[0xA70] = 0u;
                    v247 = re::DynamicString::setCapacity(&STACK[0xA60], 0);
                    *&STACK[0xA80] = 0u;
                    *&STACK[0xA90] = 0u;
                    v248 = re::DynamicString::setCapacity(&STACK[0xA80], 0);
                    *&STACK[0xAA0] = 0u;
                    *&STACK[0xAB0] = 0u;
                    v249 = re::DynamicString::setCapacity(&STACK[0xAA0], 0);
                    *&STACK[0xAC0] = 0u;
                    *&STACK[0xAD0] = 0u;
                    v250 = re::DynamicString::setCapacity(&STACK[0xAC0], 0);
                    *&STACK[0xAE0] = 0u;
                    *&STACK[0xAF0] = 0u;
                    v251 = re::DynamicString::setCapacity(&STACK[0xAE0], 0);
                    *&STACK[0xB00] = 0u;
                    *&STACK[0xB10] = 0u;
                    re::DynamicString::setCapacity(&STACK[0xB00], 0);
                    os_unfair_lock_lock((v245 + 12));
                    re::DynamicString::operator=(&STACK[0xA60], (v245 + 64));
                    re::DynamicString::operator=(&STACK[0xA80], (v245 + 96));
                    re::DynamicString::operator=(&STACK[0xAC0], (v245 + 160));
                    re::DynamicString::operator=(&STACK[0xAA0], (v245 + 128));
                    re::DynamicString::operator=(&STACK[0xAE0], (v245 + 192));
                    re::DynamicString::operator=(&STACK[0xB00], (v245 + 224));
                    os_unfair_lock_unlock((v245 + 12));
                    v252 = re::RenderGraphContext::rtResolution(v76);
                    v253 = v252;
                    v254 = HIDWORD(v252);
                    LODWORD(a55) = HIDWORD(v252);
                    LODWORD(a51) = v252;
                    v255 = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(*(v76 + 1168), *(*(v76 + 40) + 48));
                    v256 = v76;
                    if (v255)
                    {
                      v257 = *(v255 + 65);
                      if (*(v255 + 65))
                      {
                        v258 = 2;
                      }

                      else
                      {
                        v258 = 1;
                      }
                    }

                    else
                    {
                      v257 = 0;
                      v258 = 1;
                    }

                    LOBYTE(a54) = v257;
                    LOBYTE(a50) = v258;
                    STACK[0xA50] = 0;
                    STACK[0xA38] = 0;
                    STACK[0xA40] = 0;
                    STACK[0xA30] = 0;
                    LODWORD(STACK[0xA48]) = 0;
                    v76 = 2;
                    re::DynamicArray<re::Matrix4x4<float>>::resize(&STACK[0xA30], 2uLL);
                    if (!STACK[0xA40])
                    {
                      goto LABEL_383;
                    }

                    v328 = STACK[0xA50];
                    *v328 = xmmword_1E3047670;
                    v328[1] = xmmword_1E3047680;
                    v328[2] = xmmword_1E30476A0;
                    v328[3] = xmmword_1E30474D0;
                    v76 = STACK[0xA40];
                    if (STACK[0xA40] <= 1)
                    {
LABEL_384:
                      v80[16] = 0;
                      *(v78 + 10) = 0u;
                      *(v78 + 11) = 0u;
                      *(v78 + 8) = 0u;
                      *(v78 + 9) = 0u;
                      *(v78 + 7) = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      LODWORD(STACK[0xCF0]) = 136315906;
                      *(v78 + 4) = "operator[]";
                      LOWORD(STACK[0xCFC]) = 1024;
                      *(v78 + 14) = 789;
                      LOWORD(STACK[0xD02]) = 2048;
                      *(v78 + 20) = 1;
                      LOWORD(STACK[0xD0C]) = 2048;
                      *(v78 + 30) = v76;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
                      goto LABEL_385;
                    }

                    v329 = STACK[0xA50];
                    v329[4] = xmmword_1E3047670;
                    v329[5] = xmmword_1E3047680;
                    a35 = 0;
                    v329[6] = xmmword_1E30476A0;
                    v329[7] = xmmword_1E30474D0;
                    a78 = 0;
                    a75 = 0;
                    a76 = 0;
                    a74 = 0;
                    a77 = 0;
                    v76 = 2;
                    re::DynamicArray<re::Matrix4x4<float>>::resize(&a74, 2uLL);
                    v330 = 0uLL;
                    if (!a76)
                    {
LABEL_385:
                      v80[16] = 0;
                      *(v78 + 10) = v330;
                      *(v78 + 11) = v330;
                      *(v78 + 8) = v330;
                      *(v78 + 9) = v330;
                      *(v78 + 7) = v330;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      LODWORD(STACK[0xCF0]) = 136315906;
                      *(v78 + 4) = "operator[]";
                      LOWORD(STACK[0xCFC]) = 1024;
                      *(v78 + 14) = 789;
                      LOWORD(STACK[0xD02]) = 2048;
                      *(v78 + 20) = 0;
                      LOWORD(STACK[0xD0C]) = 2048;
                      *(v78 + 30) = 0;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
                      goto LABEL_386;
                    }

                    DWORD1(v331) = 0;
                    *(&v331 + 1) = 0;
                    *&v331 = 2.0 / v253;
                    *(&v330 + 1) = 2.0 / v254;
                    v332 = a78;
                    *a78 = v331;
                    v332[1] = v330;
                    v332[2] = xmmword_1E31044C0;
                    v332[3] = xmmword_1E30DA6E0;
                    v76 = a76;
                    if (a76 <= 1)
                    {
LABEL_386:
                      v80[16] = 0;
                      *(v78 + 10) = 0u;
                      *(v78 + 11) = 0u;
                      *(v78 + 8) = 0u;
                      *(v78 + 9) = 0u;
                      *(v78 + 7) = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      LODWORD(STACK[0xCF0]) = 136315906;
                      *(v78 + 4) = "operator[]";
                      LOWORD(STACK[0xCFC]) = 1024;
                      *(v78 + 14) = 789;
                      LOWORD(STACK[0xD02]) = 2048;
                      *(v78 + 20) = 1;
                      LOWORD(STACK[0xD0C]) = 2048;
                      *(v78 + 30) = v76;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_387:
                      re::internal::assertLog(6, *&v336, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, v339);
                      _os_crash();
                      __break(1u);
                      goto LABEL_388;
                    }

                    v333 = a78;
                    a78[4] = v331;
                    v333[5] = v330;
                    v333[6] = xmmword_1E31044C0;
                    v333[7] = xmmword_1E30DA6E0;
                    v334 = v256;
                    re::RenderGraphContext::acquireManagedRenderCommandEncoder(&a72, v256, 0);
                    a56 = re::RenderGraphDataStore::tryGet<re::StencilInfoData>(*(v256 + 1168), *(*(v256 + 40) + 48));
                    LODWORD(a48) = 3;
                    a71 = 3;
                    a70 = 1.0;
                    if (v253 < v254)
                    {
                      if (v253 / v254 <= 0.699999988)
                      {
                        LODWORD(a48) = 6;
                        v335 = 1;
                      }

                      else
                      {
                        LODWORD(a48) = 3;
                        v335 = 2;
                      }

                      a71 = v335;
                    }

                    *&v337 = re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*v256 + 16), 0xC0uLL, 0x10uLL, &STACK[0xD60]);
                    v338 = LODWORD(STACK[0xD6C]);
                    v339 = v338 >> 5;
                    if (v338 <= 0x1F)
                    {
                      goto LABEL_387;
                    }

                    v340 = LODWORD(STACK[0xD68]);
                    v341 = STACK[0xD70];
                    v342 = &v340[STACK[0xD60]];
                    *&v337 = (v253 / 2);
                    *&v343 = 0;
                    DWORD2(v343) = 0;
                    HIDWORD(v343) = *(v77 + 92);
                    *&v344 = 0;
                    DWORD2(v344) = 0;
                    DWORD2(v337) = 0;
                    HIDWORD(v337) = 1.0;
                    v345 = v337;
                    *(&v345 + 1) = (v254 / 2);
                    *v342 = v345;
                    *(v342 + 1) = v343;
                    if (v338 <= 0x3F)
                    {
LABEL_388:
                      re::internal::assertLog(6, *&v336, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 1, v339);
                      _os_crash();
                      __break(1u);
                      goto LABEL_389;
                    }

                    HIDWORD(v344) = *(v77 + 92);
                    *&v343 = (v253 / -2);
                    DWORD2(v343) = 0;
                    HIDWORD(v343) = 1.0;
                    v346 = v343;
                    *(&v346 + 1) = (v254 / 2);
                    *(v342 + 2) = v346;
                    *(v342 + 3) = v344;
                    if (v338 <= 0x5F)
                    {
LABEL_389:
                      re::internal::assertLog(6, *&v336, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 2, v339);
                      _os_crash();
                      __break(1u);
                      goto LABEL_390;
                    }

                    *&v347 = 0;
                    DWORD2(v347) = 0;
                    HIDWORD(v347) = *(v77 + 92);
                    *(&v343 + 1) = (v254 / -2);
                    *&v348 = 0;
                    DWORD2(v348) = 0;
                    *(v342 + 4) = v343;
                    *(v342 + 5) = v347;
                    if (v338 <= 0x7F)
                    {
LABEL_390:
                      re::internal::assertLog(6, *&v336, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 3, v339);
                      _os_crash();
                      __break(1u);
                      goto LABEL_391;
                    }

                    HIDWORD(v348) = *(v77 + 92);
                    *(&v337 + 1) = (v254 / -2);
                    *(v342 + 6) = v337;
                    *(v342 + 7) = v348;
                    if (v338 <= 0x9F)
                    {
LABEL_391:
                      re::internal::assertLog(6, *&v336, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 4, v339);
                      _os_crash();
                      __break(1u);
                      goto LABEL_392;
                    }

                    v438 = v341;
                    v349 = *(v342 + 1);
                    *(v342 + 8) = *v342;
                    *(v342 + 9) = v349;
                    if (v338 <= 0xBF)
                    {
LABEL_392:
                      re::internal::assertLog(6, *&v336, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 5, v339);
                      _os_crash();
                      __break(1u);
                      goto LABEL_393;
                    }

                    v350 = *(v342 + 5);
                    *(v342 + 10) = *(v342 + 4);
                    *(v342 + 11) = v350;
                    (a73[20])(*a73, sel_pushDebugGroup_, [MEMORY[0x1E696AEC0] stringWithCString:"SystemHUDRect" encoding:4]);
                    v351 = *(v256 + 8);
                    re::RenderGraphContext::rtInfo(v256, *(v256 + 40), &STACK[0xD60]);
                    v352 = *re::RenderGraphProfilerOverlayNode::pipelineStateWithAlphaBlending(v77, v351, &STACK[0xD60]);
                    (a73[7])(*a73, sel_setRenderPipelineState_, v352);
                    v353 = a76;
                    if (!a76)
                    {
LABEL_393:
                      v80[16] = 0;
                      *(v78 + 10) = 0u;
                      *(v78 + 11) = 0u;
                      *(v78 + 8) = 0u;
                      *(v78 + 9) = 0u;
                      *(v78 + 7) = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      LODWORD(STACK[0xCF0]) = 136315906;
                      *(v78 + 4) = "operator[]";
                      LOWORD(STACK[0xCFC]) = 1024;
                      *(v78 + 14) = 789;
                      LOWORD(STACK[0xD02]) = 2048;
                      *(v78 + 20) = 0;
                      LOWORD(STACK[0xD0C]) = 2048;
                      *(v78 + 30) = 0;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_394:
                      *&a67 = 0;
                      *(v78 + 3) = 0u;
                      *(v78 + 4) = 0u;
                      *(v78 + 1) = 0u;
                      *(v78 + 2) = 0u;
                      *v78 = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      LODWORD(a81) = 136315906;
                      *(v80 + 132) = "operator[]";
                      WORD6(a81) = 1024;
                      *(v80 + 142) = 789;
                      WORD1(a82) = 2048;
                      *(v80 + 148) = 1;
                      WORD6(a82) = 2048;
                      *(v80 + 158) = 1;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
                    }

                    v429 = v340;
                    v432 = v352;
                    v435 = v257;
                    v443 = v77;
                    v354 = a78;
                    *&STACK[0xD60] = *a78;
                    *&STACK[0xD70] = v354[1];
                    *&STACK[0xD80] = v354[2];
                    *&STACK[0xD90] = v354[3];
                    if (v353 == 1)
                    {
                      goto LABEL_394;
                    }

                    *&STACK[0xDA0] = v354[4];
                    *&STACK[0xDB0] = v354[5];
                    *&STACK[0xDC0] = v354[6];
                    *&STACK[0xDD0] = v354[7];
                    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*v334 + 16), 0x100uLL, 0x100uLL, &STACK[0xCF0]);
                    v355 = LODWORD(STACK[0xCF8]);
                    v356 = STACK[0xD00];
                    v357 = STACK[0xCF0] + v355;
                    *(v357 + 64) = *&STACK[0xDA0];
                    *(v357 + 80) = *&STACK[0xDB0];
                    *(v357 + 96) = *&STACK[0xDC0];
                    *(v357 + 112) = *&STACK[0xDD0];
                    *v357 = *&STACK[0xD60];
                    *(v357 + 16) = *&STACK[0xD70];
                    *(v357 + 32) = *&STACK[0xD80];
                    *(v357 + 48) = *&STACK[0xD90];
                    *(v357 + 128) = 1065353216;
                    *(v357 + 240) = 0u;
                    *(v357 + 228) = 0u;
                    *(v357 + 212) = 0u;
                    *(v357 + 196) = 0u;
                    *(v357 + 180) = 0u;
                    *(v357 + 164) = 0u;
                    *(v357 + 148) = 0u;
                    *(v357 + 132) = 0u;
                    *&STACK[0xA00] = 0u;
                    *&STACK[0xA10] = 0u;
                    a82 = 0u;
                    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*v334 + 16), 0xA0uLL, 0x20uLL, &STACK[0xCF0]);
                    v358 = LODWORD(STACK[0xCF8]);
                    v359 = STACK[0xD00];
                    v360 = STACK[0xCF0] + v358;
                    *(v360 + 16) = 0;
                    *(v360 + 28) = 1;
                    *(v360 + 32) = a81;
                    *(v360 + 48) = a82;
                    *(v360 + 64) = *&STACK[0xA00];
                    *(v360 + 80) = *&STACK[0xA10];
                    a68 = 0u;
                    a69 = 0u;
                    v361 = v258;
                    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*v334 + 16), 0x400uLL, 0x100uLL, &STACK[0xCF0]);
                    v75 = LODWORD(STACK[0xCF8]);
                    v362 = v334;
                    v363 = STACK[0xD00];
                    v364 = STACK[0xCF0] + v75;
                    *v364 = xmmword_1E3047670;
                    *(v364 + 16) = xmmword_1E3047680;
                    *(v364 + 32) = xmmword_1E30476A0;
                    *(v364 + 48) = xmmword_1E30474D0;
                    *(v364 + 64) = xmmword_1E3047670;
                    *(v364 + 80) = xmmword_1E3047680;
                    *(v364 + 96) = xmmword_1E30476A0;
                    *(v364 + 112) = xmmword_1E30474D0;
                    *(v364 + 128) = xmmword_1E3047670;
                    *(v364 + 144) = xmmword_1E3047680;
                    *(v364 + 160) = xmmword_1E30476A0;
                    *(v364 + 176) = xmmword_1E30474D0;
                    *(v364 + 192) = xmmword_1E3047670;
                    *(v364 + 208) = xmmword_1E3047680;
                    *(v364 + 224) = xmmword_1E30476A0;
                    *(v364 + 240) = xmmword_1E30474D0;
                    *(v364 + 256) = xmmword_1E3047670;
                    *(v364 + 272) = xmmword_1E3047680;
                    *(v364 + 288) = xmmword_1E30476A0;
                    *(v364 + 304) = xmmword_1E30474D0;
                    *(v364 + 320) = xmmword_1E3047670;
                    *(v364 + 336) = xmmword_1E3047680;
                    *(v364 + 352) = xmmword_1E30476A0;
                    *(v364 + 368) = xmmword_1E30474D0;
                    *(v364 + 384) = xmmword_1E3047670;
                    *(v364 + 400) = xmmword_1E3047680;
                    *(v364 + 416) = xmmword_1E30476A0;
                    *(v364 + 432) = xmmword_1E30474D0;
                    *(v364 + 448) = xmmword_1E3047670;
                    *(v364 + 464) = xmmword_1E3047680;
                    *(v364 + 480) = xmmword_1E30476A0;
                    *(v364 + 496) = xmmword_1E30474D0;
                    *(v364 + 512) = xmmword_1E3047670;
                    *(v364 + 528) = xmmword_1E3047680;
                    *(v364 + 544) = xmmword_1E30476A0;
                    *(v364 + 560) = xmmword_1E30474D0;
                    *(v364 + 576) = xmmword_1E3047670;
                    *(v364 + 592) = xmmword_1E3047680;
                    *(v364 + 608) = xmmword_1E30476A0;
                    *(v364 + 624) = xmmword_1E30474D0;
                    *(v364 + 640) = xmmword_1E3047670;
                    *(v364 + 656) = xmmword_1E3047680;
                    *(v364 + 672) = xmmword_1E30476A0;
                    *(v364 + 688) = xmmword_1E30474D0;
                    *(v364 + 704) = xmmword_1E3047670;
                    *(v364 + 720) = xmmword_1E3047680;
                    *(v364 + 736) = xmmword_1E30476A0;
                    *(v364 + 752) = xmmword_1E30474D0;
                    *(v364 + 880) = 0u;
                    *(v364 + 896) = 0u;
                    *(v364 + 848) = 0u;
                    *(v364 + 864) = 0u;
                    *(v364 + 816) = 0u;
                    *(v364 + 832) = 0u;
                    *(v364 + 784) = 0u;
                    *(v364 + 800) = 0u;
                    *(v364 + 768) = 0u;
                    *(v364 + 940) = v361;
                    *(v364 + 944) = v435;
                    *(v364 + 960) = 0u;
                    *(v364 + 976) = a67;
                    *(v364 + 992) = a68;
                    *(v364 + 1008) = a69;
                    (a73[2])(*a73, sel_setVertexBuffer_offset_atIndex_, v438, v429, 0);
                    (a73[2])(*a73, sel_setVertexBuffer_offset_atIndex_, v356, v355, 1);
                    v365 = v358;
                    v80 = &a67;
                    (a73[2])(*a73, sel_setVertexBuffer_offset_atIndex_, v359, v365, 2);
                    v366 = v363;
                    v76 = v362;
                    (a73[2])(*a73, sel_setVertexBuffer_offset_atIndex_, v366, v75, 3);
                    (a73[26])(*a73, sel_drawPrimitives_vertexStart_vertexCount_, 3, 0, 6);
                    (a73[21])(*a73, sel_popDebugGroup);
                    STACK[0xD00] = &a71;
                    STACK[0xD08] = &a51;
                    STACK[0xD10] = &a55;
                    STACK[0xD18] = &a48;
                    STACK[0xD20] = &a70;
                    STACK[0xD28] = &a56;
                    STACK[0xD30] = &a72;
                    STACK[0xD38] = &STACK[0xA30];
                    STACK[0xD40] = &a74;
                    STACK[0xD48] = &a50;
                    v79 = &STACK[0xA60];
                    v367 = STACK[0xA68];
                    v368 = STACK[0xA68] >> 1;
                    v77 = v443;
                    STACK[0xCF0] = v443;
                    STACK[0xCF8] = v76;
                    _ZF = (v367 & 1) == 0;
                    v369 = v367 >> 1;
                    if (!_ZF)
                    {
                      v369 = v368;
                    }

                    STACK[0xD50] = &a54;
                    if (v369)
                    {
                      re::RenderGraphProfilerOverlayNode::executeSystemHUDRendering(re::RenderGraphContext &)::$_0::operator()(&STACK[0xCF0], 10, 40, 0, &STACK[0xA60]);
                    }

                    v370 = STACK[0xA88];
                    if (STACK[0xA88])
                    {
                      v371 = v370 >> 1;
                    }

                    else
                    {
                      v371 = v370 >> 1;
                    }

                    if (v371)
                    {
                      re::RenderGraphProfilerOverlayNode::executeSystemHUDRendering(re::RenderGraphContext &)::$_0::operator()(&STACK[0xCF0], 11, 45, 1, &STACK[0xA80]);
                    }

                    v372 = STACK[0xAC8];
                    if (STACK[0xAC8])
                    {
                      v373 = v372 >> 1;
                    }

                    else
                    {
                      v373 = v372 >> 1;
                    }

                    if (v373)
                    {
                      re::RenderGraphProfilerOverlayNode::executeSystemHUDRendering(re::RenderGraphContext &)::$_0::operator()(&STACK[0xCF0], 11, 40, 2, &STACK[0xAC0]);
                    }

                    v374 = STACK[0xAA8];
                    if (STACK[0xAA8])
                    {
                      v375 = v374 >> 1;
                    }

                    else
                    {
                      v375 = v374 >> 1;
                    }

                    if (v375)
                    {
                      re::RenderGraphProfilerOverlayNode::executeSystemHUDRendering(re::RenderGraphContext &)::$_0::operator()(&STACK[0xCF0], 8, 40, 3, &STACK[0xAA0]);
                    }

                    v376 = STACK[0xAE8];
                    if (STACK[0xAE8])
                    {
                      v377 = v376 >> 1;
                    }

                    else
                    {
                      v377 = v376 >> 1;
                    }

                    if (v377)
                    {
                      re::RenderGraphProfilerOverlayNode::executeSystemHUDRendering(re::RenderGraphContext &)::$_0::operator()(&STACK[0xCF0], 8, 40, 4, &STACK[0xAE0]);
                    }

                    v378 = STACK[0xB08];
                    if (STACK[0xB08])
                    {
                      v379 = v378 >> 1;
                    }

                    else
                    {
                      v379 = v378 >> 1;
                    }

                    if (v379)
                    {
                      re::RenderGraphProfilerOverlayNode::executeSystemHUDRendering(re::RenderGraphContext &)::$_0::operator()(&STACK[0xCF0], 8, 40, 5, &STACK[0xB00]);
                    }

                    if (v432)
                    {
                    }

                    re::mtl::RenderCommandEncoder::~RenderCommandEncoder(&a72);
                    if (a74 && a78)
                    {
                      (*(*a74 + 40))();
                    }

                    if (STACK[0xA30] && STACK[0xA50])
                    {
                      (*(*STACK[0xA30] + 40))(STACK[0xA30]);
                    }

                    if (STACK[0xB00])
                    {
                      if (STACK[0xB08])
                      {
                        (*(*STACK[0xB00] + 40))(STACK[0xB00], STACK[0xB10]);
                      }

                      *&STACK[0xB00] = 0u;
                      *&STACK[0xB10] = 0u;
                    }

                    if (STACK[0xAE0])
                    {
                      if (STACK[0xAE8])
                      {
                        (*(*STACK[0xAE0] + 40))(STACK[0xAE0], STACK[0xAF0]);
                      }

                      *&STACK[0xAE0] = 0u;
                      *&STACK[0xAF0] = 0u;
                    }

                    if (STACK[0xAC0])
                    {
                      if (STACK[0xAC8])
                      {
                        (*(*STACK[0xAC0] + 40))(STACK[0xAC0], STACK[0xAD0]);
                      }

                      *&STACK[0xAC0] = 0u;
                      *&STACK[0xAD0] = 0u;
                    }

                    if (STACK[0xAA0])
                    {
                      if (STACK[0xAA8])
                      {
                        (*(*STACK[0xAA0] + 40))(STACK[0xAA0], STACK[0xAB0]);
                      }

                      *&STACK[0xAA0] = 0u;
                      *&STACK[0xAB0] = 0u;
                    }

                    if (STACK[0xA80])
                    {
                      if (STACK[0xA88])
                      {
                        (*(*STACK[0xA80] + 40))(STACK[0xA80], STACK[0xA90]);
                      }

                      *&STACK[0xA80] = 0u;
                      *&STACK[0xA90] = 0u;
                    }

                    if (STACK[0xA60] && (STACK[0xA68] & 1) != 0)
                    {
                      (*(*STACK[0xA60] + 40))(STACK[0xA60], STACK[0xA70]);
                    }
                  }
                }

                else
                {
                  os_unfair_lock_unlock((v243 + 16));
                }
              }
            }
          }

          re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(&a79);
          result = re::ProfilerTimeGuard<(re::ProfilerStatistic)23>::end(&__p);
          v259 = *(*(v76 + 8) + 112);
          if (v259)
          {
            v260 = *(v259 + 1648);
            if (v260)
            {
              if (*(v260 + 204) == 1 && (*(v260 + 17) & 1) == 0)
              {
                re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(&a74);
                re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(&__p, 5074, 0);
                v261 = re::RenderGraphContext::rtResolution(v76);
                v262 = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(*(v76 + 1168), *(*(v76 + 40) + 48));
                if (v262)
                {
                  v440 = *(v262 + 65);
                  if (*(v262 + 65))
                  {
                    v263 = 2;
                  }

                  else
                  {
                    v263 = 1;
                  }
                }

                else
                {
                  v440 = 0;
                  v263 = 1;
                }

                LOBYTE(a72) = v263;
                STACK[0xA00] = 0;
                *&a82 = 0;
                a81 = 0uLL;
                DWORD2(a82) = 0;
                v264 = 2;
                re::DynamicArray<re::Matrix4x4<float>>::resize(&a81, 2uLL);
                if (a82)
                {
                  v265 = STACK[0xA00];
                  *v265 = xmmword_1E3047670;
                  v265[1] = xmmword_1E3047680;
                  v265[2] = xmmword_1E30476A0;
                  v265[3] = xmmword_1E30474D0;
                  v264 = a82;
                  if (a82 > 1)
                  {
                    v266 = STACK[0xA00];
                    v266[4] = xmmword_1E3047670;
                    v266[5] = xmmword_1E3047680;
                    a35 = 0;
                    v266[6] = xmmword_1E30476A0;
                    v266[7] = xmmword_1E30474D0;
                    *&a69 = 0;
                    *&a68 = 0;
                    a67 = 0uLL;
                    DWORD2(a68) = 0;
                    v264 = 2;
                    re::DynamicArray<re::Matrix4x4<float>>::resize(&a67, 2uLL);
                    v267 = 0uLL;
                    if (a68)
                    {
                      v268 = SHIDWORD(v261);
                      DWORD1(v269) = 0;
                      *(&v269 + 1) = 0;
                      *&v269 = 2.0 / v261;
                      *(&v267 + 1) = 2.0 / SHIDWORD(v261);
                      v270 = a69;
                      *a69 = v269;
                      v270[1] = v267;
                      v270[2] = xmmword_1E31044C0;
                      v270[3] = xmmword_1E30DA6E0;
                      v264 = a68;
                      if (a68 > 1)
                      {
                        v271 = a69;
                        *(a69 + 64) = v269;
                        v271[5] = v267;
                        v271[6] = xmmword_1E31044C0;
                        v271[7] = xmmword_1E30DA6E0;
                        v272 = re::RenderGraphDataStore::tryGet<re::DynamicArray<re::RenderProfilerText>>(*(v76 + 1168), "ProfilerOverlay", "RenderFrame");
                        if (v272)
                        {
                          v273 = v272;
                          re::RenderGraphContext::acquireManagedRenderCommandEncoder(&a79, v76, 0);
                          v274 = re::RenderGraphDataStore::tryGet<re::StencilInfoData>(*(v76 + 1168), *(*(v76 + 40) + 48));
                          v275 = v261;
                          v276 = SHIDWORD(v261);
                          v431 = HIDWORD(v261);
                          v434 = v261;
                          if (v261 >= SHIDWORD(v261))
                          {
                            v278 = 3;
                            v437 = 9;
                            v279 = 3;
                          }

                          else
                          {
                            if (v275 / v276 <= 0.699999988)
                            {
                              v277 = 6;
                            }

                            else
                            {
                              v277 = 10;
                            }

                            v437 = v277;
                            if (v275 / v276 <= 0.699999988)
                            {
                              v278 = 1;
                            }

                            else
                            {
                              v278 = 2;
                            }

                            if (v275 / v276 <= 0.699999988)
                            {
                              v279 = 6;
                            }

                            else
                            {
                              v279 = 5;
                            }
                          }

                          v428 = v279;
                          v280 = *(v273 + 16);
                          re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*v76 + 16), 0xC0uLL, 0x10uLL, &STACK[0xA60]);
                          v283 = LODWORD(STACK[0xA6C]);
                          v284 = v283 >> 5;
                          if (v283 <= 0x1F)
                          {
                            goto LABEL_369;
                          }

                          v285 = v428;
                          v286 = v431 / -2;
                          v287 = LODWORD(STACK[0xA68]);
                          v288 = STACK[0xA70];
                          v289 = (STACK[0xA60] + v287);
                          *&v282 = (v434 / 2);
                          *&v290 = 0;
                          DWORD2(v290) = 0;
                          HIDWORD(v290) = *(v77 + 92);
                          v291 = v280 / v278;
                          if (v280 % v278 > 0)
                          {
                            ++v291;
                          }

                          v292 = v291 / v285;
                          v293 = (v431 / -2) + (v268 * v292);
                          DWORD2(v282) = 0;
                          HIDWORD(v282) = 1.0;
                          v294 = v282;
                          *(&v294 + 1) = v293;
                          *&v295 = 0;
                          DWORD2(v295) = 0;
                          *v289 = v294;
                          v289[1] = v290;
                          if (v283 <= 0x3F)
                          {
                            goto LABEL_371;
                          }

                          HIDWORD(v295) = *(v77 + 92);
                          *&v290 = (v434 / -2);
                          DWORD2(v290) = 0;
                          HIDWORD(v290) = 1.0;
                          v296 = v290;
                          *(&v296 + 1) = v293;
                          v289[2] = v296;
                          v289[3] = v295;
                          if (v283 <= 0x5F)
                          {
LABEL_373:
                            re::internal::assertLog(6, v281, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 2, v284);
                            _os_crash();
                            __break(1u);
                            re::internal::assertLog(6, v417, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 11, a35);
                            _os_crash();
                            __break(1u);
                            goto LABEL_374;
                          }

                          *&v297 = 0;
                          DWORD2(v297) = 0;
                          HIDWORD(v297) = *(v77 + 92);
                          *(&v290 + 1) = v286;
                          *&v298 = 0;
                          DWORD2(v298) = 0;
                          v289[4] = v290;
                          v289[5] = v297;
                          if (v283 <= 0x7F)
                          {
LABEL_375:
                            re::internal::assertLog(6, v281, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 3, v284);
                            _os_crash();
                            __break(1u);
                            goto LABEL_376;
                          }

                          HIDWORD(v298) = *(v77 + 92);
                          *(&v282 + 1) = v286;
                          v289[6] = v282;
                          v289[7] = v298;
                          if (v283 <= 0x9F)
                          {
LABEL_377:
                            re::internal::assertLog(6, v281, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 4, v284);
                            _os_crash();
                            __break(1u);
LABEL_378:
                            *(v76 + 128) = 0;
                            *(v78 + 10) = 0u;
                            *(v78 + 11) = 0u;
                            *(v78 + 8) = 0u;
                            *(v78 + 9) = 0u;
                            *(v78 + 7) = 0u;
                            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                            LODWORD(STACK[0xCF0]) = 136315906;
                            *(v78 + 4) = "operator[]";
                            LOWORD(STACK[0xCFC]) = 1024;
                            *(v78 + 14) = 789;
                            LOWORD(STACK[0xD02]) = 2048;
                            *(v78 + 20) = 0;
                            LOWORD(STACK[0xD0C]) = 2048;
                            *(v78 + 30) = 0;
                            _os_log_send_and_compose_impl();
                            _os_crash_msg();
                            __break(1u);
                            goto LABEL_379;
                          }

                          v424 = v288;
                          v425 = v287;
                          v299 = v289[1];
                          v289[8] = *v289;
                          v289[9] = v299;
                          if (v283 <= 0xBF)
                          {
LABEL_379:
                            re::internal::assertLog(6, v281, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 5, v284);
                            _os_crash();
                            __break(1u);
                            goto LABEL_380;
                          }

                          v300 = v289[5];
                          v289[10] = v289[4];
                          v289[11] = v300;
                          (a80[20])(*a80, sel_pushDebugGroup_, [MEMORY[0x1E696AEC0] stringWithCString:"ProfilerOverlay" encoding:4]);
                          v301 = v76;
                          v76 = *(v76 + 8);
                          v80 = v301;
                          re::RenderGraphContext::rtInfo(v301, v301[5], &STACK[0xA60]);
                          v302 = *re::RenderGraphProfilerOverlayNode::pipelineStateWithAlphaBlending(v77, v76, &STACK[0xA60]);
                          (a80[7])(*a80, sel_setRenderPipelineState_, v302);
                          v303 = a68;
                          if (!a68)
                          {
LABEL_381:
                            *v78 = 0;
                            *(v79 + 3) = 0u;
                            *(v79 + 4) = 0u;
                            *(v79 + 1) = 0u;
                            *(v79 + 2) = 0u;
                            *v79 = 0u;
                            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                            LODWORD(STACK[0xD60]) = 136315906;
                            *(v78 + 116) = "operator[]";
                            LOWORD(STACK[0xD6C]) = 1024;
                            *(v78 + 126) = 789;
                            LOWORD(STACK[0xD72]) = 2048;
                            *(v78 + 132) = 0;
                            LOWORD(STACK[0xD7C]) = 2048;
                            *(v78 + 142) = 0;
                            _os_log_send_and_compose_impl();
                            _os_crash_msg();
                            __break(1u);
                            goto LABEL_382;
                          }

                          v423 = v302;
                          v304 = a69;
                          *&STACK[0xA60] = *a69;
                          *&STACK[0xA70] = v304[1];
                          *&STACK[0xA80] = v304[2];
                          *&STACK[0xA90] = v304[3];
                          if (v303 == 1)
                          {
LABEL_382:
                            STACK[0xA30] = 0;
                            *(v78 + 10) = 0u;
                            *(v78 + 11) = 0u;
                            *(v78 + 8) = 0u;
                            *(v78 + 9) = 0u;
                            *(v78 + 7) = 0u;
                            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                            LODWORD(STACK[0xCF0]) = 136315906;
                            *(v78 + 4) = "operator[]";
                            LOWORD(STACK[0xCFC]) = 1024;
                            *(v78 + 14) = 789;
                            LOWORD(STACK[0xD02]) = 2048;
                            *(v78 + 20) = 1;
                            LOWORD(STACK[0xD0C]) = 2048;
                            *(v78 + 30) = 1;
                            _os_log_send_and_compose_impl();
                            _os_crash_msg();
                            __break(1u);
                            STACK[0xCF0] = 0;
                            *&STACK[0xA90] = 0u;
                            *&STACK[0xAA0] = 0u;
                            *&STACK[0xA70] = 0u;
                            *&STACK[0xA80] = 0u;
                            *&STACK[0xA60] = 0u;
                            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                            LODWORD(STACK[0xD60]) = 136315906;
                            STACK[0xD64] = "operator[]";
                            LOWORD(STACK[0xD6C]) = 1024;
                            LODWORD(STACK[0xD6E]) = 789;
                            LOWORD(STACK[0xD72]) = 2048;
                            STACK[0xD74] = 0;
                            LOWORD(STACK[0xD7C]) = 2048;
                            STACK[0xD7E] = 0;
                            _os_log_send_and_compose_impl();
                            _os_crash_msg();
                            __break(1u);
                            STACK[0xA30] = 0;
                            *(v78 + 10) = 0u;
                            *(v78 + 11) = 0u;
                            *(v78 + 8) = 0u;
                            *(v78 + 9) = 0u;
                            *(v78 + 7) = 0u;
                            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                            LODWORD(STACK[0xCF0]) = 136315906;
                            *(v78 + 4) = "operator[]";
                            LOWORD(STACK[0xCFC]) = 1024;
                            *(v78 + 14) = 789;
                            LOWORD(STACK[0xD02]) = 2048;
                            *(v78 + 20) = 1;
                            LOWORD(STACK[0xD0C]) = 2048;
                            *(v78 + 30) = 1;
                            _os_log_send_and_compose_impl();
                            _os_crash_msg();
                            __break(1u);
LABEL_383:
                            v80[16] = 0;
                            *(v78 + 10) = 0u;
                            *(v78 + 11) = 0u;
                            *(v78 + 8) = 0u;
                            *(v78 + 9) = 0u;
                            *(v78 + 7) = 0u;
                            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                            LODWORD(STACK[0xCF0]) = 136315906;
                            *(v78 + 4) = "operator[]";
                            LOWORD(STACK[0xCFC]) = 1024;
                            *(v78 + 14) = 789;
                            LOWORD(STACK[0xD02]) = 2048;
                            *(v78 + 20) = 0;
                            LOWORD(STACK[0xD0C]) = 2048;
                            *(v78 + 30) = 0;
                            _os_log_send_and_compose_impl();
                            _os_crash_msg();
                            __break(1u);
                            goto LABEL_384;
                          }

                          v442 = v77;
                          *&STACK[0xAA0] = v304[4];
                          *&STACK[0xAB0] = v304[5];
                          *&STACK[0xAC0] = v304[6];
                          *&STACK[0xAD0] = v304[7];
                          re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(*v80 + 2, 0x100uLL, 0x100uLL, &STACK[0xD60]);
                          v305 = LODWORD(STACK[0xD68]);
                          vars0b = STACK[0xD70];
                          v306 = STACK[0xD60] + v305;
                          *(v306 + 64) = *&STACK[0xAA0];
                          *(v306 + 80) = *&STACK[0xAB0];
                          *(v306 + 96) = *&STACK[0xAC0];
                          *(v306 + 112) = *&STACK[0xAD0];
                          *v306 = *&STACK[0xA60];
                          *(v306 + 16) = *&STACK[0xA70];
                          *(v306 + 32) = *&STACK[0xA80];
                          *(v306 + 48) = *&STACK[0xA90];
                          *(v306 + 128) = 1065353216;
                          *(v306 + 240) = 0u;
                          *(v306 + 228) = 0u;
                          *(v306 + 212) = 0u;
                          *(v306 + 196) = 0u;
                          *(v306 + 180) = 0u;
                          *(v306 + 164) = 0u;
                          *(v306 + 148) = 0u;
                          *(v306 + 132) = 0u;
                          *&STACK[0xD80] = 0u;
                          *&STACK[0xD90] = 0u;
                          *&STACK[0xD70] = 0u;
                          re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(*v80 + 2, 0xA0uLL, 0x20uLL, &STACK[0xCF0]);
                          v307 = LODWORD(STACK[0xCF8]);
                          v419 = STACK[0xD00];
                          v308 = STACK[0xCF0] + v307;
                          *(v308 + 16) = 0;
                          *(v308 + 28) = 1;
                          *(v308 + 32) = *&STACK[0xD60];
                          *(v308 + 48) = *&STACK[0xD70];
                          *(v308 + 64) = *&STACK[0xD80];
                          *(v308 + 80) = *&STACK[0xD90];
                          *&STACK[0xD00] = 0u;
                          *&STACK[0xD10] = 0u;
                          v309 = v263;
                          re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(*v80 + 2, 0x400uLL, 0x100uLL, &STACK[0xA30]);
                          v310 = LODWORD(STACK[0xA38]);
                          v418 = STACK[0xA40];
                          v311 = STACK[0xA30] + v310;
                          *v311 = xmmword_1E3047670;
                          *(v311 + 16) = xmmword_1E3047680;
                          *(v311 + 32) = xmmword_1E30476A0;
                          *(v311 + 48) = xmmword_1E30474D0;
                          *(v311 + 64) = xmmword_1E3047670;
                          *(v311 + 80) = xmmword_1E3047680;
                          *(v311 + 96) = xmmword_1E30476A0;
                          *(v311 + 112) = xmmword_1E30474D0;
                          *(v311 + 128) = xmmword_1E3047670;
                          *(v311 + 144) = xmmword_1E3047680;
                          *(v311 + 160) = xmmword_1E30476A0;
                          *(v311 + 176) = xmmword_1E30474D0;
                          *(v311 + 192) = xmmword_1E3047670;
                          *(v311 + 208) = xmmword_1E3047680;
                          *(v311 + 224) = xmmword_1E30476A0;
                          *(v311 + 240) = xmmword_1E30474D0;
                          *(v311 + 256) = xmmword_1E3047670;
                          *(v311 + 272) = xmmword_1E3047680;
                          *(v311 + 288) = xmmword_1E30476A0;
                          *(v311 + 304) = xmmword_1E30474D0;
                          *(v311 + 320) = xmmword_1E3047670;
                          *(v311 + 336) = xmmword_1E3047680;
                          *(v311 + 352) = xmmword_1E30476A0;
                          *(v311 + 368) = xmmword_1E30474D0;
                          *(v311 + 384) = xmmword_1E3047670;
                          *(v311 + 400) = xmmword_1E3047680;
                          *(v311 + 416) = xmmword_1E30476A0;
                          *(v311 + 432) = xmmword_1E30474D0;
                          *(v311 + 448) = xmmword_1E3047670;
                          *(v311 + 464) = xmmword_1E3047680;
                          *(v311 + 480) = xmmword_1E30476A0;
                          *(v311 + 496) = xmmword_1E30474D0;
                          *(v311 + 512) = xmmword_1E3047670;
                          *(v311 + 528) = xmmword_1E3047680;
                          *(v311 + 544) = xmmword_1E30476A0;
                          *(v311 + 560) = xmmword_1E30474D0;
                          *(v311 + 576) = xmmword_1E3047670;
                          *(v311 + 592) = xmmword_1E3047680;
                          *(v311 + 608) = xmmword_1E30476A0;
                          *(v311 + 624) = xmmword_1E30474D0;
                          *(v311 + 640) = xmmword_1E3047670;
                          *(v311 + 656) = xmmword_1E3047680;
                          *(v311 + 672) = xmmword_1E30476A0;
                          *(v311 + 688) = xmmword_1E30474D0;
                          *(v311 + 704) = xmmword_1E3047670;
                          *(v311 + 720) = xmmword_1E3047680;
                          *(v311 + 736) = xmmword_1E30476A0;
                          *(v311 + 752) = xmmword_1E30474D0;
                          *(v311 + 880) = 0u;
                          *(v311 + 896) = 0u;
                          *(v311 + 848) = 0u;
                          *(v311 + 864) = 0u;
                          *(v311 + 816) = 0u;
                          *(v311 + 832) = 0u;
                          *(v311 + 784) = 0u;
                          *(v311 + 800) = 0u;
                          *(v311 + 768) = 0u;
                          *(v311 + 940) = v309;
                          *(v311 + 944) = v440;
                          *(v311 + 960) = 0u;
                          *(v311 + 976) = *&STACK[0xCF0];
                          *(v311 + 992) = *&STACK[0xD00];
                          *(v311 + 1008) = *&STACK[0xD10];
                          (a80[2])(*a80, sel_setVertexBuffer_offset_atIndex_, v424, v425, 0);
                          (a80[2])(*a80, sel_setVertexBuffer_offset_atIndex_, vars0b, v305, 1);
                          (a80[2])(*a80, sel_setVertexBuffer_offset_atIndex_, v419, v307, 2);
                          (a80[2])(*a80, sel_setVertexBuffer_offset_atIndex_, v418, v310, 3);
                          (a80[26])(*a80, sel_drawPrimitives_vertexStart_vertexCount_, 3, 0, 6);
                          (a80[21])(*a80, sel_popDebugGroup);
                          if (v423)
                          {
                          }

                          v313 = *(v273 + 16);
                          if (v313)
                          {
                            v314 = 0;
                            v315 = *(v273 + 32);
                            v316 = 1.0 / v278 * v275;
                            v317 = 1.0 / v285 * v276;
                            v318 = v431 / v428;
                            v319 = 144 * v313 - 144;
                            __asm { FMOV            V0.4S, #1.0 }

                            v436 = *(&_Q0 + 1);
                            do
                            {
                              *v312.i32 = v442[95] * (v434 / v278 / *(v315 + 140));
                              if (*v312.i32 > (v442[94] * (v318 / *(v315 + 136))))
                              {
                                *v312.i32 = v442[94] * (v318 / *(v315 + 136));
                              }

                              *v312.i32 = v442[93] * *v312.i32;
                              *&v324 = (v431 / -2) + v317 * (v314 / v278 + 1);
                              *(&v325 + 1) = v436;
                              *&v323 = (v434 / -2) + v316 * (v314 % v278);
                              *&v325 = __PAIR64__(v324, v323);
                              *(v315 + 32) = vmulq_n_f32(xmmword_1E3047670, *v312.i32);
                              *(v315 + 48) = vmulq_n_f32(xmmword_1E3047680, COERCE_FLOAT(vdupq_lane_s32(v312, 0).i32[1]));
                              *(v315 + 64) = xmmword_1E30476A0;
                              *(v315 + 80) = v325;
                              v326 = *(v80[1] + 8);
                              re::RenderGraphContext::rtInfo(v80, v80[5], &STACK[0xA60]);
                              if (v274)
                              {
                                v327 = *(v274 + 8);
                                LOBYTE(STACK[0xD70]) = *(v274 + 24);
                                *&STACK[0xD60] = v327;
                              }

                              else
                              {
                                STACK[0xD60] = 0;
                                STACK[0xD68] = 0;
                                LOBYTE(STACK[0xD70]) = 0;
                                LOWORD(STACK[0xD61]) = -1;
                                LOBYTE(STACK[0xD63]) = 7;
                                LOWORD(STACK[0xD69]) = -1;
                                LOBYTE(STACK[0xD6B]) = 7;
                              }

                              *&v444 = &a81;
                              *(&v444 + 1) = &a67;
                              re::TextManager::render(v326, &STACK[0xA60], &STACK[0xD60], &a79, *v80, v444, &a72, v315, v440, 0);
                              if (!v319)
                              {
                                break;
                              }

                              ++v314;
                              v315 += 144;
                              v319 -= 144;
                            }

                            while (v314 < v437);
                          }

                          re::mtl::RenderCommandEncoder::~RenderCommandEncoder(&a79);
                        }

                        if (a67 && a69)
                        {
                          (*(*a67 + 40))();
                        }

                        if (a81 && STACK[0xA00])
                        {
                          (*(*a81 + 40))();
                        }

                        re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(&__p);
                        return re::ProfilerTimeGuard<(re::ProfilerStatistic)23>::end(&a74);
                      }

LABEL_358:
                      STACK[0xCF0] = 0;
                      *&STACK[0xA90] = 0u;
                      *&STACK[0xAA0] = 0u;
                      *&STACK[0xA70] = 0u;
                      *&STACK[0xA80] = 0u;
                      *&STACK[0xA60] = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      LODWORD(STACK[0xD60]) = 136315906;
                      STACK[0xD64] = "operator[]";
                      LOWORD(STACK[0xD6C]) = 1024;
                      LODWORD(STACK[0xD6E]) = 789;
                      LOWORD(STACK[0xD72]) = 2048;
                      STACK[0xD74] = 1;
                      LOWORD(STACK[0xD7C]) = 2048;
                      STACK[0xD7E] = v264;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
                      goto LABEL_359;
                    }

LABEL_357:
                    STACK[0xCF0] = 0;
                    *&STACK[0xA90] = v267;
                    *&STACK[0xAA0] = v267;
                    *&STACK[0xA70] = v267;
                    *&STACK[0xA80] = v267;
                    *&STACK[0xA60] = v267;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(STACK[0xD60]) = 136315906;
                    STACK[0xD64] = "operator[]";
                    LOWORD(STACK[0xD6C]) = 1024;
                    LODWORD(STACK[0xD6E]) = 789;
                    LOWORD(STACK[0xD72]) = 2048;
                    STACK[0xD74] = 0;
                    LOWORD(STACK[0xD7C]) = 2048;
                    STACK[0xD7E] = 0;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                    goto LABEL_358;
                  }
                }

                else
                {
                  STACK[0xCF0] = 0;
                  *&STACK[0xA90] = 0u;
                  *&STACK[0xAA0] = 0u;
                  *&STACK[0xA70] = 0u;
                  *&STACK[0xA80] = 0u;
                  *&STACK[0xA60] = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  LODWORD(STACK[0xD60]) = 136315906;
                  STACK[0xD64] = "operator[]";
                  LOWORD(STACK[0xD6C]) = 1024;
                  LODWORD(STACK[0xD6E]) = 789;
                  LOWORD(STACK[0xD72]) = 2048;
                  STACK[0xD74] = 0;
                  LOWORD(STACK[0xD7C]) = 2048;
                  STACK[0xD7E] = 0;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
                }

                STACK[0xCF0] = 0;
                *&STACK[0xA90] = 0u;
                *&STACK[0xAA0] = 0u;
                *&STACK[0xA70] = 0u;
                *&STACK[0xA80] = 0u;
                *&STACK[0xA60] = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                LODWORD(STACK[0xD60]) = 136315906;
                STACK[0xD64] = "operator[]";
                LOWORD(STACK[0xD6C]) = 1024;
                LODWORD(STACK[0xD6E]) = 789;
                LOWORD(STACK[0xD72]) = 2048;
                STACK[0xD74] = 1;
                LOWORD(STACK[0xD7C]) = 2048;
                STACK[0xD7E] = v264;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
                goto LABEL_357;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void re::RenderGraphProfilerOverlayNode::getMaterialParameterTables(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 280))
  {
    v4 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>((a1 + 272));
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

uint64_t re::RenderGraphProfilerOverlayNode::pipelineStateWithAlphaBlending(re::RenderGraphProfilerOverlayNode *this, uint64_t **a2, const RenderTargetInfo *a3)
{
  re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::findEntry<re::RenderTargetInfo>(this + 408, a3, v19);
  if (v20 != 0x7FFFFFFF)
  {
    return *(this + 53) + 72 * v20 + 56;
  }

  re::ShaderManager::makeFunction(a2[6], a2[6][46], "vsPrimitivePosClr", 0, &v17);
  re::ShaderManager::makeFunction(a2[6], a2[6][46], "fsPrimitivePosClr", 0, &v16);
  re::ShaderManager::makeRenderPipelineDescriptor(a2[6], &v15);
  [v15 setLabel_];
  [v15 setVertexFunction_];
  [v15 setFragmentFunction_];
  v12 = v18;
  [v15 setVertexDescriptor_];
  [v15 setRasterSampleCount_];
  for (i = 0; i != 8; ++i)
  {
    v7 = &a3->var0.var0 + i;
    if (v7[1])
    {
      [objc_msgSend(objc_msgSend(v15 colorAttachments)];
      [objc_msgSend(objc_msgSend(v15 colorAttachments)];
      [objc_msgSend(objc_msgSend(v15 colorAttachments)];
      [objc_msgSend(objc_msgSend(v15 colorAttachments)];
      [objc_msgSend(objc_msgSend(v15 colorAttachments)];
      [objc_msgSend(objc_msgSend(v15 colorAttachments)];
      [objc_msgSend(objc_msgSend(v15 colorAttachments)];
      [objc_msgSend(objc_msgSend(v15 colorAttachments)];
    }
  }

  [v15 setDepthAttachmentPixelFormat_];
  [v15 setStencilAttachmentPixelFormat_];
  if (*(v11 + 366) == 1)
  {
    [v15 setMaxVertexAmplificationCount_];
  }

  v8 = *(v11 + 208);
  v14 = v8;
  re::mtl::Device::makeRenderPipelineState(&v14, v15, 0, &v13);
  re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::add(this + 408, a3, &v13);
  re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::findEntry<re::RenderTargetInfo>(this + 408, a3, v19);
  if (v20 == 0x7FFFFFFF)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(this + 53) + 72 * v20 + 56;
  }

  if (v13)
  {
  }

  if (v15)
  {
  }

  if (v16)
  {
  }

  if (v17)
  {
  }

  if (v12)
  {
  }

  return v9;
}

id anonymous namespace::VertexPositionColorWithAlpha::makeVertexDescriptor(_anonymous_namespace_::VertexPositionColorWithAlpha *this)
{
  v2 = [objc_msgSend(MEMORY[0x1E69741E0] alloc)];
  *this = v2;
  [objc_msgSend(objc_msgSend(v2 attributes)];
  [objc_msgSend(objc_msgSend(v2 attributes)];
  [objc_msgSend(objc_msgSend(v2 attributes)];
  [objc_msgSend(objc_msgSend(v2 attributes)];
  [objc_msgSend(objc_msgSend(v2 attributes)];
  [objc_msgSend(objc_msgSend(v2 attributes)];
  [objc_msgSend(objc_msgSend(v2 layouts)];
  [objc_msgSend(objc_msgSend(v2 layouts)];
  v3 = [objc_msgSend(v2 layouts)];

  return [v3 setStepRate_];
}

void re::RenderGraphProfilerOverlayNode::executeSystemHUDRendering(re::RenderGraphContext &)::$_0::operator()(uint64_t *a1, int a2, int a3, int a4, re::DynamicString *a5)
{
  v56 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v11 = re::StringID::invalid(v47);
  *&v48 = 0x3F8000003F800000;
  *(&v48 + 1) = 0x3F8000003F800000;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  re::DynamicString::setCapacity(&v53, 0);
  v55 = -1;
  re::StringID::invalid(v37);
  v41 = 0u;
  v42 = 0u;
  v44 = 0;
  v45 = 0;
  v43 = -1;
  v46 = re::kInvalidStringRenderHandle;
  v12 = *(v10 + 352);
  v39 = 0u;
  v40 = 0u;
  v38 = v12;
  HIDWORD(v38) = 1065353216;
  re::StringID::operator=(v37, (*(a1[1] + 8) + 8));
  re::StringID::operator=(v47, v37);
  v48 = v38;
  v49 = v39;
  v50 = v40;
  v51 = v41;
  v52 = v42;
  re::DynamicString::operator=(&v53, a5);
  v55 = -1;
  v13 = a1[1];
  v14 = *a1[2];
  v15 = *a1[3];
  v16 = *a1[4];
  v22 = (v16 / -2);
  v17 = (v15 / -2) + 1.0 / v14 * v15 * (a4 % v14);
  v18 = (a4 / v14 + 1);
  v19 = v15 / v14;
  v20 = *a1[5];
  v21 = v22 + 1.0 / v20 * v16 * v18;
  *&v22 = *(v10 + 380) * (v19 / a3);
  if (*&v22 > (*(v10 + 376) * (v16 / v20 / a2)))
  {
    *&v22 = *(v10 + 376) * (v16 / v20 / a2);
  }

  *&v22 = *a1[6] * *&v22;
  *&v23 = v21;
  __asm { FMOV            V5.4S, #1.0 }

  *&_Q5 = __PAIR64__(v23, LODWORD(v17));
  v49 = vmulq_n_f32(xmmword_1E3047670, *&v22);
  v50 = vmulq_n_f32(xmmword_1E3047680, COERCE_FLOAT(vdupq_lane_s32(*&v22, 0).i32[1]));
  v51 = xmmword_1E30476A0;
  v52 = _Q5;
  v29 = *(*(v13 + 8) + 64);
  re::RenderGraphContext::rtInfo(v13, *(v13 + 40), v36);
  v30 = *a1[7];
  if (v30)
  {
    v31 = *(v30 + 8);
    v35 = *(v30 + 24);
    v34 = v31;
  }

  else
  {
    *&v34 = 134217472;
    *(&v34 + 1) = 134217472;
    v35 = 0;
  }

  v32 = re::TextManager::render(v29, v36, &v34, a1[8], *a1[1], *(a1 + 9), a1[11], v47, *a1[12], 0);
  if (v37[0])
  {
    if (v37[0])
    {
    }
  }

  v33 = v53;
  if (v53)
  {
    if (BYTE8(v53))
    {
      v33 = (*(*v53 + 40))();
    }

    v53 = 0u;
    v54 = 0u;
  }

  if (v47[0])
  {
    if (v47[0])
    {
    }
  }
}

uint64_t re::RenderGraphProfilerOverlayNode::executeMiniHUDRendering(re::RenderGraphContext &)::$_0::operator()(uint64_t result, uint64_t a2, unint64_t *a3, _DWORD *a4, double a5, double a6, float a7)
{
  if (*&a5 > 1.0)
  {
    *&a5 = 1.0;
  }

  if (*&a6 < 0.0)
  {
    *&a6 = 0.0;
  }

  v7 = *(result + 16);
  v8 = v7[1];
  if (v8 <= *a3)
  {
    re::internal::assertLog(6, a2, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, *a3, v8);
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  v9 = vmulq_n_f32(**result, *&a5);
  __asm { FMOV            V0.4S, #1.0 }

  HIDWORD(v15) = HIDWORD(_Q0);
  *&v15 = **(result + 24) + a7;
  *(&v15 + 1) = **(result + 32) - (**(result + 40) * a2);
  v16 = vaddq_f32(v9, vmulq_n_f32(**(result + 8), *&a6));
  DWORD2(v15) = *a4;
  v17 = (*v7 + 32 * *a3);
  *v17 = v15;
  v17[1] = v16;
  v18 = *(result + 16);
  v19 = *a3 + 1;
  v20 = v18[1];
  if (v20 <= v19)
  {
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v19, v20);
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  HIDWORD(v21) = HIDWORD(_Q0);
  LODWORD(v21) = **(result + 24);
  *(&v21 + 1) = **(result + 32) - (**(result + 40) * a2);
  DWORD2(v21) = *a4;
  v22 = (*v18 + 32 * v19);
  *v22 = v21;
  v22[1] = v16;
  v23 = *(result + 16);
  v24 = *a3 + 2;
  v25 = v23[1];
  if (v25 <= v24)
  {
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v24, v25);
    _os_crash();
    __break(1u);
    goto LABEL_17;
  }

  v26 = (a2 + 1);
  HIDWORD(v27) = HIDWORD(_Q0);
  LODWORD(v27) = **(result + 24);
  *(&v27 + 1) = **(result + 32) - (**(result + 40) * v26);
  DWORD2(v27) = *a4;
  v28 = (*v23 + 32 * v24);
  *v28 = v27;
  v28[1] = v16;
  v29 = *(result + 16);
  v30 = *a3 + 3;
  v31 = v29[1];
  if (v31 <= v30)
  {
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v30, v31);
    _os_crash();
    __break(1u);
    goto LABEL_18;
  }

  *&_Q0 = **(result + 24) + a7;
  *(&_Q0 + 1) = **(result + 32) - (**(result + 40) * v26);
  DWORD2(_Q0) = *a4;
  v32 = (*v29 + 32 * v30);
  *v32 = _Q0;
  v32[1] = v16;
  v33 = *(result + 16);
  v34 = *a3;
  v35 = v33[1];
  if (v35 <= *a3)
  {
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v34, v35);
    _os_crash();
    __break(1u);
    goto LABEL_19;
  }

  v36 = v34 + 4;
  if (v35 <= v34 + 4)
  {
LABEL_19:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v36, v35);
    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  v37 = (*v33 + 32 * v34);
  v38 = (*v33 + 32 * v36);
  v39 = v37[1];
  *v38 = *v37;
  v38[1] = v39;
  v40 = *(result + 16);
  v41 = *a3 + 2;
  v42 = v40[1];
  if (v42 <= v41)
  {
LABEL_20:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v41, v42);
    _os_crash();
    __break(1u);
    goto LABEL_21;
  }

  v43 = *a3 + 5;
  if (v42 > v43)
  {
    v44 = (*v40 + 32 * v41);
    v45 = (*v40 + 32 * v43);
    v46 = v44[1];
    *v45 = *v44;
    v45[1] = v46;
    *a3 += 6;
    *a4 = *a4 + 0.01;
    return result;
  }

LABEL_21:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v43, v42);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::RenderGraphProfilerOverlayNode::executeMiniHUDRendering(re::RenderGraphContext &)::$_1::operator()(uint64_t *a1, unsigned int a2, re::DynamicString *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = re::StringID::invalid(v34);
  *&v35 = 0x3F8000003F800000;
  *(&v35 + 1) = 0x3F8000003F800000;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  re::DynamicString::setCapacity(&v40, 0);
  v42 = -1;
  re::StringID::invalid(v24);
  v28 = 0u;
  v29 = 0u;
  v31 = 0;
  v32 = 0;
  v30 = -1;
  v33 = re::kInvalidStringRenderHandle;
  v8 = *(v6 + 384);
  v26 = 0u;
  v27 = 0u;
  v25 = v8;
  HIDWORD(v25) = _MergedGlobals_519;
  re::StringID::operator=(v24, (*(a1[1] + 8) + 8));
  re::StringID::operator=(v34, v24);
  v35 = v25;
  v36 = v26;
  v37 = v27;
  v38 = v28;
  v39 = v29;
  re::DynamicString::operator=(&v40, a3);
  v42 = -1;
  v9 = a1[1];
  *v10.i32 = *(v6 + 372) * 32.0;
  __asm { FMOV            V5.4S, #1.0 }

  *&_Q5 = *a1[2] + 8.0;
  *(&_Q5 + 1) = (*a1[4] + (*a1[5] / -3.0)) - (*a1[5] * a2);
  v36 = vmulq_n_f32(xmmword_1E3047670, *v10.i32);
  v37 = vmulq_n_f32(xmmword_1E3047680, COERCE_FLOAT(vdupq_lane_s32(v10, 0).i32[1]));
  v38 = xmmword_1E30476A0;
  v39 = _Q5;
  v16 = *(*(v9 + 8) + 64);
  re::RenderGraphContext::rtInfo(v9, *(v9 + 40), v23);
  v17 = *a1[7];
  if (v17)
  {
    v18 = *(v17 + 8);
    v22 = *(v17 + 24);
    v21 = v18;
  }

  else
  {
    *&v21 = 134217472;
    *(&v21 + 1) = 134217472;
    v22 = 0;
  }

  v19 = re::TextManager::render(v16, v23, &v21, a1[8], *a1[1], *(a1 + 9), a1[11], v34, *a1[12], 0);
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  v20 = v40;
  if (v40)
  {
    if (BYTE8(v40))
    {
      v20 = (*(*v40 + 40))(v40, v41);
    }

    v40 = 0u;
    v41 = 0u;
  }

  if (v34[0])
  {
    if (v34[0])
    {
    }
  }
}

uint64_t std::vector<re::RenderText>::push_back[abi:nn200100](uint64_t a1, StringID *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v11 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 4);
    if (v11 + 1 > 0x1C71C71C71C71C7)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 4);
    v13 = 2 * v12;
    if (2 * v12 <= v11 + 1)
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0xE38E38E38E38E3)
    {
      v14 = 0x1C71C71C71C71C7;
    }

    else
    {
      v14 = v13;
    }

    v23[4] = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::RenderText>>(v14);
    }

    v15 = 144 * v11;
    re::StringID::StringID(v15, a2);
    *(v15 + 16) = a2[1];
    v16 = a2[2];
    v17 = a2[3];
    v18 = a2[5];
    *(v15 + 64) = a2[4];
    *(v15 + 80) = v18;
    *(v15 + 32) = v16;
    *(v15 + 48) = v17;
    re::DynamicString::DynamicString((v15 + 96), &a2[6]);
    *(v15 + 128) = *&a2[8].var0;
    v10 = v15 + 144;
    v19 = *(a1 + 8);
    v20 = v15 + *a1 - v19;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<re::RenderText>,re::RenderText*>(*a1, v19, v20);
    v21 = *a1;
    *a1 = v20;
    *(a1 + 8) = v15 + 144;
    v22 = *(a1 + 16);
    *(a1 + 16) = 0;
    v23[2] = v21;
    v23[3] = v22;
    v23[0] = v21;
    v23[1] = v21;
    result = std::__split_buffer<re::RenderText>::~__split_buffer(v23);
  }

  else
  {
    re::StringID::StringID(*(a1 + 8), a2);
    *(v5 + 16) = a2[1];
    v6 = a2[2];
    v7 = a2[3];
    v8 = a2[5];
    *(v5 + 64) = a2[4];
    *(v5 + 80) = v8;
    *(v5 + 32) = v6;
    *(v5 + 48) = v7;
    result = re::DynamicString::DynamicString((v5 + 96), &a2[6]);
    *(v5 + 128) = *&a2[8].var0;
    v10 = v5 + 144;
  }

  *(a1 + 8) = v10;
  return result;
}

void *re::allocInfo_RenderGraphProfilerOverlayNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BFB78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFB78))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BFB98, "RenderGraphProfilerOverlayNode");
    __cxa_guard_release(&qword_1EE1BFB78);
  }

  return &unk_1EE1BFB98;
}

void re::initInfo_RenderGraphProfilerOverlayNode(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x88E0128837D64CE2;
  v14[1] = "RenderGraphProfilerOverlayNode";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1BFB80, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BFB80);
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
      qword_1EE1BFB88 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_AssetHandle(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "profilerMaterialAsset";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x11000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1BFB90 = v12;
      __cxa_guard_release(&qword_1EE1BFB80);
    }
  }

  *(this + 2) = 0x20000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BFB88;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphProfilerOverlayNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphProfilerOverlayNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphProfilerOverlayNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphProfilerOverlayNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void re::ProfilerOverlayRenderGraphProvider::~ProfilerOverlayRenderGraphProvider(re::ProfilerOverlayRenderGraphProvider *this)
{
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));
}

{
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphProfilerOverlayNode::~RenderGraphProfilerOverlayNode(id *this)
{
  re::RenderGraphProfilerOverlayNode::~RenderGraphProfilerOverlayNode(this);

  JUMPOUT(0x1E6906520);
}

{
  re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::deinit((this + 57));
  re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::deinit((this + 51));
  re::AssetHandle::~AssetHandle((this + 34));

  re::RenderGraphNode::~RenderGraphNode(this);
}

re::DynamicString *re::ProfilerMiniHudStatistics::copy(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  re::DynamicString::operator=((a1 + 56), (a2 + 56));
  re::DynamicString::operator=((a1 + 88), (a2 + 88));
  re::DynamicString::operator=((a1 + 120), (a2 + 120));
  re::DynamicString::operator=((a1 + 152), (a2 + 152));
  re::DynamicString::operator=((a1 + 184), (a2 + 184));
  re::DynamicString::operator=((a1 + 216), (a2 + 216));
  re::DynamicString::operator=((a1 + 248), (a2 + 248));
  re::DynamicString::operator=((a1 + 280), (a2 + 280));
  re::DynamicString::operator=((a1 + 312), (a2 + 312));
  re::DynamicString::operator=((a1 + 344), (a2 + 344));
  result = re::DynamicString::operator=((a1 + 376), (a2 + 376));
  *(a1 + 48) = *(a2 + 48);
  return result;
}

void std::vector<re::RenderText>::__base_destruct_at_end[abi:nn200100](uint64_t a1, re::StringID *a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    do
    {
      v5 = (v4 - 144);
      re::DynamicString::deinit((v4 - 48));
      re::StringID::destroyString(v5);
      v4 = v5;
    }

    while (v5 != a2);
  }

  *(a1 + 8) = a2;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::RenderText>>(unint64_t a1)
{
  if (a1 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<re::RenderText>,re::RenderText*>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = *v5;
      *a3 = *a3 & 0xFFFFFFFFFFFFFFFELL | *v5 & 1;
      *a3 = *v5 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
      *(a3 + 8) = v5[1];
      *v5 = 0;
      v5[1] = &str_67;
      v7 = *(v5 + 2);
      v9 = *(v5 + 4);
      v8 = *(v5 + 5);
      *(a3 + 48) = *(v5 + 3);
      *(a3 + 64) = v9;
      *(a3 + 32) = v7;
      *(a3 + 16) = *(v5 + 1);
      *(a3 + 80) = v8;
      *(a3 + 96) = 0uLL;
      *(a3 + 112) = 0uLL;
      *(a3 + 96) = v5[12];
      v5[12] = 0;
      v10 = *(a3 + 112);
      *(a3 + 112) = v5[14];
      v5[14] = v10;
      *(a3 + 120) = *(v5 + 15);
      v5[15] = 0;
      v11 = *(a3 + 104);
      *(a3 + 104) = v5[13];
      v5[13] = v11;
      v5 += 18;
      a3 += 144;
    }

    while (v5 != a2);
    do
    {
      re::DynamicString::deinit((v4 + 12));
      re::StringID::destroyString(v4);
      v4 += 18;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<re::RenderText>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 144);
    *(a1 + 16) = i - 144;
    re::DynamicString::deinit((i - 48));
    re::StringID::destroyString(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double re::RenderGraphProfilerOverlayNode::RenderGraphProfilerOverlayNode(re::RenderGraphProfilerOverlayNode *this)
{
  v1 = re::RenderGraphNode::RenderGraphNode(this);
  *(v1 + 66) = 1;
  *(v1 + 268) = 0;
  *v1 = &unk_1F5D12258;
  result = 0.0;
  *(v1 + 17) = 0u;
  *(v1 + 18) = 0u;
  __asm { FMOV            V1.4S, #1.0 }

  *(v1 + 19) = _Q1;
  *(v1 + 20) = xmmword_1E31044A0;
  *(v1 + 42) = 0x3F33333341A00000;
  *(v1 + 86) = 1061997773;
  *(v1 + 22) = xmmword_1E30872B0;
  *(v1 + 23) = xmmword_1E31044B0;
  *(v1 + 24) = _Q1;
  *(v1 + 100) = 1050253722;
  *(v1 + 408) = 0u;
  *(v1 + 424) = 0u;
  *(v1 + 110) = 0;
  *(v1 + 444) = 0x7FFFFFFFLL;
  *(v1 + 456) = 0u;
  *(v1 + 472) = 0u;
  *(v1 + 122) = 0;
  *(v1 + 492) = 0x7FFFFFFFLL;
  return result;
}

void *re::allocInfo_BtStencilPrepassNode(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_520, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_520))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BFC48, "BtStencilPrepassNode");
    __cxa_guard_release(&_MergedGlobals_520);
  }

  return &unk_1EE1BFC48;
}

void re::initInfo_BtStencilPrepassNode(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x6343F9729E3C5C18;
  v14[1] = "BtStencilPrepassNode";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1BFC30, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BFC30);
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
      qword_1EE1BFC38 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_BOOL(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "debugPass";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x10800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1BFC40 = v12;
      __cxa_guard_release(&qword_1EE1BFC30);
    }
  }

  *(this + 2) = 0x11000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BFC38;
  *(this + 9) = re::internal::defaultConstruct<re::BtStencilPrepassNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BtStencilPrepassNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::BtStencilPrepassNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::BtStencilPrepassNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::BtStencilPrepassNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *result = &unk_1F5CB4950;
  *(result + 264) = 0;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::BtStencilPrepassNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *result = &unk_1F5CB4950;
  *(result + 264) = 0;
  return result;
}

double re::createWarpMatrixForSourceProjection(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, simd_float4 a5, simd_float4 a6, simd_float4 a7, simd_float4 a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, float32x4_t a17, float32x4_t a18, float32x4_t a19, float32x4_t a20, simd_float4 a21, simd_float4 a22, simd_float4 a23, simd_float4 a24)
{
  v24 = 0;
  v33.columns[0] = a5;
  v33.columns[1] = a6;
  v33.columns[2] = a7;
  v33.columns[3] = a8;
  do
  {
    v34.columns[v24] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a1, COERCE_FLOAT(*&v33.columns[v24])), a2, *v33.columns[v24].f32, 1), a3, v33.columns[v24], 2), a4, v33.columns[v24], 3);
    ++v24;
  }

  while (v24 != 4);
  v25 = 0;
  v26 = v34;
  v33.columns[0] = a21;
  v33.columns[1] = a22;
  v33.columns[2] = a23;
  v33.columns[3] = a24;
  do
  {
    v34.columns[v25] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a17, COERCE_FLOAT(*&v33.columns[v25])), a18, *v33.columns[v25].f32, 1), a19, v33.columns[v25], 2), a20, v33.columns[v25], 3);
    ++v25;
  }

  while (v25 != 4);
  v31 = v34.columns[0];
  v32 = v34.columns[1];
  v29 = v34.columns[3];
  v30 = v34.columns[2];
  v35 = __invert_f4(v26);
  v27 = 0;
  v33 = v35;
  do
  {
    v34.columns[v27] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, COERCE_FLOAT(*&v33.columns[v27])), v32, *v33.columns[v27].f32, 1), v30, v33.columns[v27], 2), v29, v33.columns[v27], 3);
    ++v27;
  }

  while (v27 != 4);
  return *v34.columns[0].i64;
}

double re::createViewportToNDCReprojectionMatrix(uint64_t a1, unint64_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float a6, double a7)
{
  v7 = 0;
  v8 = vzip1_s32(a2, HIDWORD(a2));
  *(&a7 + 1) = a6;
  v9 = vmul_f32(*&a7, v8);
  *&a7 = -*&a7;
  __asm { FMOV            V7.2S, #1.0 }

  *&v15 = vdiv_f32(vmla_f32(COERCE_FLOAT32X2_T(-_D7), vmla_f32(v8, 0x4000000040000000, a1), *&a7), v9);
  DWORD2(v15) = vextq_s8(*(MEMORY[0x1E69E9B10] + 32), *(MEMORY[0x1E69E9B10] + 32), 8uLL).u32[0];
  HIDWORD(v15) = HIDWORD(*(MEMORY[0x1E69E9B10] + 32));
  v17[2] = v15;
  do
  {
    *(&v18 + v7 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a3, COERCE_FLOAT(v17[v7])), a4, *&v17[v7], 1), a5, v17[v7], 2);
    ++v7;
  }

  while (v7 != 3);
  return *&v18;
}

void *re::DepthStencilCombinerProvider::DepthStencilCombinerProvider(void *a1, const re::DynamicString *a2)
{
  re::DynamicString::DynamicString(&v4, a2);
  *a1 = &unk_1F5CC5700;
  re::DynamicString::DynamicString((a1 + 1), &v4);
  if (v4 && (v5 & 1) != 0)
  {
    (*(*v4 + 40))();
  }

  *a1 = &unk_1F5D12348;
  a1[5] = 65290051;
  a1[6] = "Color";
  a1[7] = 65919651;
  a1[8] = "Depth";
  a1[9] = 0x11F25A259CLL;
  a1[10] = "Stencil";
  return a1;
}

void re::DepthStencilCombinerProvider::~DepthStencilCombinerProvider(re::DepthStencilCombinerProvider *this)
{
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));
}

{
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));

  JUMPOUT(0x1E6906520);
}

unint64_t re::DepthStencilCombinerProvider::prepareFrame(re::DepthStencilCombinerProvider *this, char *a2, const char *a3, re::RenderFrame *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v22 = *(this + 7) & 0x7FFFFFFFFFFFFFFFLL;
  ScopePixelFormat = re::RenderFrame::getScopePixelFormat(a4, a3, &v22);
  v21 = *(this + 9) & 0x7FFFFFFFFFFFFFFFLL;
  v9 = re::RenderFrame::getScopePixelFormat(a4, a3, &v21);
  v10 = strlen(a2);
  if (v10)
  {
    MurmurHash3_x64_128(a2, v10, 0, &v23);
    v11 = &v24[64 * v23 - 0x61C8864680B583E9 + (v23 >> 2)] ^ v23;
  }

  else
  {
    v11 = 0;
  }

  v12 = strlen(a3);
  if (v12)
  {
    MurmurHash3_x64_128(a3, v12, 0, &v23);
    v13 = (&v24[64 * v23 - 0x61C8864680B583E9 + (v23 >> 2)] ^ v23) - 0x61C8864680B583E9;
  }

  else
  {
    v13 = 0x9E3779B97F4A7C17;
  }

  v14 = *(re::RenderGraphDataStore::get<re::CameraData>(a4 + 32, ((v11 >> 2) + (v11 << 6) + v13) ^ v11) + 884);
  v23 = 0x674BDBD52888E1DDLL;
  v24 = "DepthStencilCombinerProvider";
  v15 = re::RenderGraphProviderBase::generateScopeHash(&v23, a2, a3);
  v16 = 0xBF58476D1CE4E5B9 * (ScopePixelFormat ^ (ScopePixelFormat >> 30));
  v17 = (((0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) ^ ((0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v15 << 6) + (v15 >> 2)) ^ v15;
  v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27));
  v19 = ((v18 ^ (v18 >> 31)) - 0x61C8864680B583E9 + (v17 << 6) + (v17 >> 2)) ^ v17;
  return (v14 - 0x61C8864680B583E9 + (v19 << 6) + (v19 >> 2)) ^ v19;
}

void re::DepthStencilCombinerProvider::provide(re::DepthStencilCombinerProvider *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v47 = *(this + 7) & 0x7FFFFFFFFFFFFFFFLL;
  ScopePixelFormat = re::RenderFrame::getScopePixelFormat(a4, a3, &v47);
  v48 = ScopePixelFormat;
  v45 = *(this + 9) & 0x7FFFFFFFFFFFFFFFLL;
  v9 = re::RenderFrame::getScopePixelFormat(a4, a3, &v45);
  v46 = v9;
  v11 = ScopePixelFormat != 250 && ScopePixelFormat != 252;
  v13 = ScopePixelFormat != 255 && ScopePixelFormat != 260;
  v15 = v9 != 255 && v9 != 260;
  if (v13 || v15)
  {
    v18 = v9 != 253 || v13;
    if (v18)
    {
      if (v9)
      {
        v13 = 1;
      }

      if (!v13)
      {
        v17 = ScopePixelFormat == 0;
        v43 = 0;
        v44 = ScopePixelFormat;
        goto LABEL_51;
      }

      if (!v11 && !v15)
      {
        v16 = v9 == 0;
        v17 = ScopePixelFormat == 0;
        v43 = 20;
        v44 = v9;
        goto LABEL_22;
      }

      if (ScopePixelFormat == 0 && !v15)
      {
        v43 = 0;
        v44 = v9;
        v42 = v9 == 0;
        goto LABEL_54;
      }

      v19 = v9 != 253 || v11;
      if (v19)
      {
        if (v11 || v9 != 0)
        {
          if (v9 != 253 || ScopePixelFormat != 0)
          {
            if (ScopePixelFormat != 0 || v9 != 0)
            {
              return;
            }

            if (*(*(a4 + 1) + 372))
            {
              v21 = this;
              v22 = a2;
              v23 = a3;
              v24 = a4;
              v25 = 1;
LABEL_61:
              re::DepthStencilCombinerProvider::provide(char const*,char const*,re::RenderFrame &)const::$_0::operator()(v21, v22, v23, v24, &v48, v25);
              v37 = this;
              v38 = a2;
              v39 = a3;
              v40 = a4;
              v41 = 1;
              goto LABEL_62;
            }

            v43 = 0;
            v44 = 260;
            v42 = 1;
            v26 = "DropDepthDropStencil";
            v27 = "DropDepthDropStencil[MSAA]";
LABEL_55:
            v28 = this;
            v29 = a2;
            v30 = a3;
            v31 = a4;
            v17 = 1;
            goto LABEL_48;
          }

          if (*(*(a4 + 1) + 372))
          {
            v33 = this;
            v34 = a2;
            v35 = a3;
            v36 = a4;
            v32 = 1;
            goto LABEL_58;
          }

          v43 = 20;
          v44 = 260;
          v42 = 0;
LABEL_54:
          v26 = "DropDepthKeepStencil";
          v27 = "DropDepthKeepStencil[MSAA]";
          goto LABEL_55;
        }

        if (*(*(a4 + 1) + 372))
        {
          v25 = ScopePixelFormat == 0;
          v21 = this;
          v22 = a2;
          v23 = a3;
          v24 = a4;
          goto LABEL_61;
        }

        v17 = ScopePixelFormat == 0;
        v43 = 20;
        v44 = 260;
LABEL_51:
        v42 = 1;
        v26 = "KeepDepthDropStencil";
        v27 = "KeepDepthDropStencil[MSAA]";
        goto LABEL_47;
      }

      if (*(*(a4 + 1) + 372))
      {
        v32 = ScopePixelFormat == 0;
        v33 = this;
        v34 = a2;
        v35 = a3;
        v36 = a4;
LABEL_58:
        re::DepthStencilCombinerProvider::provide(char const*,char const*,re::RenderFrame &)const::$_0::operator()(v33, v34, v35, v36, &v48, v32);
        v37 = this;
        v38 = a2;
        v39 = a3;
        v40 = a4;
        v41 = 0;
LABEL_62:
        re::DepthStencilCombinerProvider::provide(char const*,char const*,re::RenderFrame &)const::$_1::operator()(v37, v38, v39, v40, &v46, v41);
        return;
      }

      v17 = ScopePixelFormat == 0;
      v44 = 260;
    }

    else
    {
      v17 = ScopePixelFormat == 0;
      v44 = ScopePixelFormat;
    }

    v43 = 20;
    v42 = 0;
    goto LABEL_46;
  }

  v16 = v9 == 0;
  v17 = ScopePixelFormat == 0;
  v43 = 0;
  v44 = ScopePixelFormat;
LABEL_22:
  v42 = v16;
LABEL_46:
  v26 = "KeepDepthKeepStencil";
  v27 = "KeepDepthKeepStencil[MSAA]";
LABEL_47:
  v28 = this;
  v29 = a2;
  v30 = a3;
  v31 = a4;
LABEL_48:
  re::DepthStencilCombinerProvider::provide(char const*,char const*,re::RenderFrame &)const::$_2::operator()(v28, v29, v30, v31, &v44, v26, v27, v17, v42, &v43);
}

void re::DepthStencilCombinerProvider::provide(char const*,char const*,re::RenderFrame &)const::$_2::operator()(uint64_t a1, const char *a2, const char *a3, re::RenderFrame *this, int *a5, char *a6, const char *a7, int a8, char a9, int *a10)
{
  v51 = *MEMORY[0x1E69E9840];
  re::RenderFrame::tryGetInputTarget(this, a6, 0, &v49);
  if (DWORD2(v49) == -1 || HIDWORD(v49) == -1)
  {
    v48 = 0;
    if (!a8 || (a9 & 1) == 0)
    {
      if (a9)
      {
        v19 = *(a1 + 56);
      }

      else
      {
        v19 = *(a1 + 72);
      }

      v48 = v19 & 0x7FFFFFFFFFFFFFFFLL;
    }

    v34 = -1;
    v20 = 0x9E3779B97F4A7C17;
    v35 = -1;
    v36 = -1;
    v37 = 0;
    v38 = 0;
    __asm { FMOV            V0.2S, #1.0 }

    v39 = _D0;
    v40 = xmmword_1E30A3B60;
    v43 = -1;
    v44 = -1;
    v45 = -1;
    v46 = 0;
    v47 = 0;
    v41 = *a10;
    v42 = 32;
    v25 = *a5;
    LODWORD(v32) = 3;
    HIDWORD(v32) = v25;
    v33 = 3;
    re::RenderFrame::createTarget(this, &v32, a6, &v50);
    v49 = v50;
    re::RenderFrame::inheritLaneProperties(this, &v48, &v49, 0);
    v26 = strlen(a2);
    if (v26)
    {
      MurmurHash3_x64_128(a2, v26, 0, &v50);
      v27 = (*(&v50 + 1) - 0x61C8864680B583E9 + (v50 << 6) + (v50 >> 2)) ^ v50;
    }

    else
    {
      v27 = 0;
    }

    v28 = strlen(a3);
    if (v28)
    {
      MurmurHash3_x64_128(a3, v28, 0, &v50);
      v20 = ((*(&v50 + 1) - 0x61C8864680B583E9 + (v50 << 6) + (v50 >> 2)) ^ v50) - 0x61C8864680B583E9;
    }

    v29 = *(re::RenderGraphDataStore::get<re::CameraData>(this + 32, ((v27 >> 2) + (v27 << 6) + v20) ^ v27) + 884);
    if (v29 >= 2)
    {
      LODWORD(v35) = v29;
      v33 = 8;
      re::RenderFrame::createTarget(this, &v32, a7, &v50);
      v31 = v49;
      v30 = DWORD2(v50);
      *(re::RenderGraphResourceDescriptions::targetDescription((this + 3672), &v31) + 84) = v30;
      re::RenderFrame::inheritLaneProperties(this, &v48, &v50, 0);
    }
  }

  v32 = *(a1 + 56) & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::addTargetOutput(this, &v32, &v49, 0);
  v32 = *(a1 + 72) & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::addTargetOutput(this, &v32, &v49, 0);
}

void re::DepthStencilCombinerProvider::provide(char const*,char const*,re::RenderFrame &)const::$_0::operator()(uint64_t a1, const char *a2, const char *a3, re::RenderFrame *this, int *a5, int a6)
{
  v46 = *MEMORY[0x1E69E9840];
  v12 = (a1 + 56);
  re::RenderFrame::tryGetInputTarget(this, *(a1 + 64), 0, &v44);
  if (DWORD2(v44) == -1 || HIDWORD(v44) == -1)
  {
    v31 = -1;
    v14 = 0x9E3779B97F4A7C17;
    v32 = -1;
    v33 = -1;
    v34 = 0;
    v35 = 0;
    __asm { FMOV            V0.2S, #1.0 }

    v36 = _D0;
    v37 = xmmword_1E30A3B60;
    v39 = -1;
    v40 = -1;
    v41 = -1;
    v42 = 0;
    v43 = 0;
    v38 = 0x2000000000;
    v19 = *a5;
    if (!*a5)
    {
      v19 = 252;
    }

    LODWORD(v29) = 3;
    HIDWORD(v29) = v19;
    v30 = 3;
    re::RenderFrame::createTarget(this, &v29, "Depth", &v45);
    v44 = v45;
    v20 = 56;
    if (a6)
    {
      v20 = 72;
      v21 = (a1 + 72);
    }

    else
    {
      v21 = v12;
    }

    *&v45 = *(a1 + v20) & 0x7FFFFFFFFFFFFFFFLL;
    re::RenderFrame::inheritLaneProperties(this, &v45, &v44, 0);
    v22 = strlen(a2);
    if (v22)
    {
      MurmurHash3_x64_128(a2, v22, 0, &v45);
      v23 = (*(&v45 + 1) - 0x61C8864680B583E9 + (v45 << 6) + (v45 >> 2)) ^ v45;
    }

    else
    {
      v23 = 0;
    }

    v24 = strlen(a3);
    if (v24)
    {
      MurmurHash3_x64_128(a3, v24, 0, &v45);
      v14 = ((*(&v45 + 1) - 0x61C8864680B583E9 + (v45 << 6) + (v45 >> 2)) ^ v45) - 0x61C8864680B583E9;
    }

    v25 = *(re::RenderGraphDataStore::get<re::CameraData>(this + 32, ((v23 >> 2) + (v23 << 6) + v14) ^ v23) + 884);
    if (v25 >= 2)
    {
      LODWORD(v32) = v25;
      v30 = 8;
      re::RenderFrame::createTarget(this, &v29, "Depth[MSAA]", &v45);
      v28 = v44;
      v26 = DWORD2(v45);
      *(re::RenderGraphResourceDescriptions::targetDescription((this + 3672), &v28) + 84) = v26;
      v27 = *v21 & 0x7FFFFFFFFFFFFFFFLL;
      re::RenderFrame::inheritLaneProperties(this, &v27, &v45, 0);
    }
  }

  v29 = *v12 & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::addTargetOutput(this, &v29, &v44, 0);
}

void re::DepthStencilCombinerProvider::provide(char const*,char const*,re::RenderFrame &)const::$_1::operator()(uint64_t a1, const char *a2, const char *a3, re::RenderFrame *this, int *a5, int a6)
{
  v46 = *MEMORY[0x1E69E9840];
  v12 = (a1 + 72);
  re::RenderFrame::tryGetInputTarget(this, *(a1 + 80), 0, &v44);
  if (DWORD2(v44) == -1 || HIDWORD(v44) == -1)
  {
    v31 = -1;
    v14 = 0x9E3779B97F4A7C17;
    v32 = -1;
    v33 = -1;
    v34 = 0;
    v35 = 0;
    __asm { FMOV            V0.2S, #1.0 }

    v36 = _D0;
    v37 = xmmword_1E30A3B60;
    v39 = -1;
    v40 = -1;
    v41 = -1;
    v42 = 0;
    v43 = 0;
    v38 = 0x2000000000;
    v19 = *a5;
    if (!*a5)
    {
      v19 = 253;
    }

    LODWORD(v29) = 3;
    HIDWORD(v29) = v19;
    v30 = 3;
    re::RenderFrame::createTarget(this, &v29, "Stencil", &v45);
    v44 = v45;
    v20 = 72;
    if (a6)
    {
      v20 = 56;
      v21 = (a1 + 56);
    }

    else
    {
      v21 = v12;
    }

    *&v45 = *(a1 + v20) & 0x7FFFFFFFFFFFFFFFLL;
    re::RenderFrame::inheritLaneProperties(this, &v45, &v44, 0);
    v22 = strlen(a2);
    if (v22)
    {
      MurmurHash3_x64_128(a2, v22, 0, &v45);
      v23 = (*(&v45 + 1) - 0x61C8864680B583E9 + (v45 << 6) + (v45 >> 2)) ^ v45;
    }

    else
    {
      v23 = 0;
    }

    v24 = strlen(a3);
    if (v24)
    {
      MurmurHash3_x64_128(a3, v24, 0, &v45);
      v14 = ((*(&v45 + 1) - 0x61C8864680B583E9 + (v45 << 6) + (v45 >> 2)) ^ v45) - 0x61C8864680B583E9;
    }

    v25 = *(re::RenderGraphDataStore::get<re::CameraData>(this + 32, ((v23 >> 2) + (v23 << 6) + v14) ^ v23) + 884);
    if (v25 >= 2)
    {
      LODWORD(v32) = v25;
      v30 = 8;
      re::RenderFrame::createTarget(this, &v29, "Stencil[MSAA]", &v45);
      v28 = v44;
      v26 = DWORD2(v45);
      *(re::RenderGraphResourceDescriptions::targetDescription((this + 3672), &v28) + 84) = v26;
      v27 = *v21 & 0x7FFFFFFFFFFFFFFFLL;
      re::RenderFrame::inheritLaneProperties(this, &v27, &v45, 0);
    }
  }

  v29 = *v12 & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::addTargetOutput(this, &v29, &v44, 0);
}

re::RenderGraphSimpleForwardEmitter *re::RenderGraphSimpleForwardEmitter::RenderGraphSimpleForwardEmitter(re::RenderGraphSimpleForwardEmitter *this)
{
  v2 = re::RealityEmitterBase::RealityEmitterBase(this);
  *v2 = &unk_1F5D12390;
  *(v2 + 728) = 0u;
  *(v2 + 744) = 0u;
  *(v2 + 760) = 0u;
  *(v2 + 776) = 0u;
  *(v2 + 99) = 0;
  *(v2 + 800) = 1;
  *(v2 + 101) = 0;
  *(v2 + 51) = 0u;
  re::StringID::invalid((v2 + 832));
  *(this + 106) = 0;
  re::StringID::invalid((this + 856));
  *(this + 109) = 0;
  re::StringID::invalid((this + 880));
  *(this + 112) = 0;
  re::StringID::invalid((this + 904));
  *(this + 115) = 0;
  re::StringID::invalid((this + 928));
  *(this + 118) = 0;
  re::StringID::invalid((this + 952));
  *(this + 121) = 0;
  re::StringID::invalid((this + 976));
  *(this + 124) = 0;
  re::StringID::invalid((this + 1000));
  *(this + 127) = 0;
  re::StringID::invalid((this + 1024));
  *(this + 130) = 0;
  re::StringID::invalid((this + 1048));
  *(this + 1064) = 0u;
  return this;
}

re::RealityEmitterBase *re::RealityEmitterBase::RealityEmitterBase(re::RealityEmitterBase *this)
{
  *(this + 8) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 108) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 60) = 0u;
  *(this + 124) = 0x7FFFFFFFLL;
  *this = &unk_1F5D124F0;
  *(this + 136) = 0;
  *(this + 140) = 0xFD000000FCLL;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  re::StringID::invalid((this + 232));
  *(this + 31) = 0;
  re::StringID::invalid((this + 256));
  *(this + 34) = 0;
  re::StringID::invalid((this + 280));
  *(this + 37) = 0;
  re::StringID::invalid((this + 304));
  *(this + 40) = 0;
  re::StringID::invalid((this + 328));
  *(this + 43) = 0;
  re::StringID::invalid((this + 352));
  *(this + 46) = 0;
  re::StringID::invalid((this + 376));
  *(this + 49) = 0;
  re::StringID::invalid((this + 400));
  *(this + 52) = 0;
  re::StringID::invalid((this + 424));
  *(this + 448) = 0;
  *(this + 55) = 0;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  re::StringID::invalid((this + 504));
  *(this + 65) = 0;
  re::StringID::invalid((this + 528));
  *(this + 74) = 0;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 34) = 0u;
  re::StringID::invalid((this + 600));
  *(this + 77) = 0;
  re::StringID::invalid((this + 624));
  *(this + 80) = 0;
  re::StringID::invalid((this + 648));
  *(this + 83) = 0;
  re::StringID::invalid((this + 672));
  *(this + 86) = 0;
  re::StringID::invalid((this + 696));
  *(this + 712) = 0u;
  return this;
}

void re::RenderGraphSimpleForwardEmitter::~RenderGraphSimpleForwardEmitter(re::RenderGraphSimpleForwardEmitter *this)
{
  v2 = *(this + 134);
  if (v2)
  {
    re::RenderGraphSimpleForwardEmitter::unregisterProviders(this, v2);
  }

  re::StringID::destroyString((this + 1048));
  re::StringID::destroyString((this + 1024));
  re::StringID::destroyString((this + 1000));
  re::StringID::destroyString((this + 976));
  re::StringID::destroyString((this + 952));
  re::StringID::destroyString((this + 928));
  re::StringID::destroyString((this + 904));
  re::StringID::destroyString((this + 880));
  re::StringID::destroyString((this + 856));
  re::StringID::destroyString((this + 832));
  re::AssetHandle::~AssetHandle((this + 808));
  re::AssetHandle::~AssetHandle((this + 776));
  re::AssetHandle::~AssetHandle((this + 752));
  re::AssetHandle::~AssetHandle((this + 728));

  re::RealityEmitterBase::~RealityEmitterBase(this);
}

{
  re::RenderGraphSimpleForwardEmitter::~RenderGraphSimpleForwardEmitter(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphSimpleForwardEmitter::unregisterProviders(re::RenderGraphSimpleForwardEmitter *this, re::RenderGraphManager *a2)
{
  re::RealityEmitterBase::unregisterCommonProviders(this, a2);
  if (re::FontID::isValid((this + 880)))
  {
    re::StringID::StringID(v23, this + 55);
    v23[2] = *(this + 112);
    v4 = re::RenderGraphManager::removeProvider(a2, v23);
    if (v23[0])
    {
      if (v23[0])
      {
      }
    }

    v23[0] = 0;
    v23[1] = &str_67;
    re::ProviderHandle::invalidate((this + 880));
  }

  if (re::FontID::isValid((this + 904)))
  {
    re::StringID::StringID(v22, (this + 904));
    v22[2] = *(this + 115);
    v5 = re::RenderGraphManager::removeProvider(a2, v22);
    if (v22[0])
    {
      if (v22[0])
      {
      }
    }

    v22[0] = 0;
    v22[1] = &str_67;
    re::ProviderHandle::invalidate((this + 904));
  }

  if (re::FontID::isValid((this + 976)))
  {
    re::StringID::StringID(v21, this + 61);
    v21[2] = *(this + 124);
    v6 = re::RenderGraphManager::removeProvider(a2, v21);
    if (v21[0])
    {
      if (v21[0])
      {
      }
    }

    v21[0] = 0;
    v21[1] = &str_67;
    re::ProviderHandle::invalidate((this + 976));
  }

  if (re::FontID::isValid((this + 1000)))
  {
    re::StringID::StringID(v20, (this + 1000));
    v20[2] = *(this + 127);
    v7 = re::RenderGraphManager::removeProvider(a2, v20);
    if (v20[0])
    {
      if (v20[0])
      {
      }
    }

    v20[0] = 0;
    v20[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1000));
  }

  if (re::FontID::isValid((this + 856)))
  {
    re::StringID::StringID(v19, (this + 856));
    v19[2] = *(this + 109);
    v8 = re::RenderGraphManager::removeProvider(a2, v19);
    if (v19[0])
    {
      if (v19[0])
      {
      }
    }

    v19[0] = 0;
    v19[1] = &str_67;
    re::ProviderHandle::invalidate((this + 856));
  }

  if (re::FontID::isValid((this + 832)))
  {
    re::StringID::StringID(v18, this + 52);
    v18[2] = *(this + 106);
    v9 = re::RenderGraphManager::removeProvider(a2, v18);
    if (v18[0])
    {
      if (v18[0])
      {
      }
    }

    v18[0] = 0;
    v18[1] = &str_67;
    re::ProviderHandle::invalidate((this + 832));
  }

  if (re::FontID::isValid((this + 928)))
  {
    re::StringID::StringID(v17, this + 58);
    v17[2] = *(this + 118);
    v10 = re::RenderGraphManager::removeProvider(a2, v17);
    if (v17[0])
    {
      if (v17[0])
      {
      }
    }

    v17[0] = 0;
    v17[1] = &str_67;
    re::ProviderHandle::invalidate((this + 928));
  }

  if (re::FontID::isValid((this + 952)))
  {
    re::StringID::StringID(v16, (this + 952));
    v16[2] = *(this + 121);
    v11 = re::RenderGraphManager::removeProvider(a2, v16);
    if (v16[0])
    {
      if (v16[0])
      {
      }
    }

    v16[0] = 0;
    v16[1] = &str_67;
    re::ProviderHandle::invalidate((this + 952));
  }

  if (re::FontID::isValid((this + 1024)))
  {
    re::StringID::StringID(v15, this + 64);
    v15[2] = *(this + 130);
    v12 = re::RenderGraphManager::removeProvider(a2, v15);
    if (v15[0])
    {
      if (v15[0])
      {
      }
    }

    v15[0] = 0;
    v15[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1024));
  }

  if (*(this + 800) == 1 && re::FontID::isValid((this + 1048)))
  {
    re::StringID::StringID(v14, (this + 1048));
    v14[2] = *(this + 133);
    v13 = re::RenderGraphManager::removeProvider(a2, v14);
    if (v14[0])
    {
      if (v14[0])
      {
      }
    }

    v14[0] = 0;
    v14[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1048));
  }
}

void re::RealityEmitterBase::~RealityEmitterBase(re::RealityEmitterBase *this)
{
  *this = &unk_1F5D124F0;
  v2 = (this + 88);
  re::StringID::destroyString((this + 696));
  re::StringID::destroyString((this + 672));
  re::StringID::destroyString((this + 648));
  re::StringID::destroyString((this + 624));
  re::StringID::destroyString((this + 600));
  re::AssetHandle::~AssetHandle((this + 576));
  re::AssetHandle::~AssetHandle((this + 552));
  re::StringID::destroyString((this + 528));
  re::StringID::destroyString((this + 504));
  re::AssetHandle::~AssetHandle((this + 480));
  re::AssetHandle::~AssetHandle((this + 456));
  re::StringID::destroyString((this + 424));
  re::StringID::destroyString((this + 400));
  re::StringID::destroyString((this + 376));
  re::StringID::destroyString((this + 352));
  re::StringID::destroyString((this + 328));
  re::StringID::destroyString((this + 304));
  re::StringID::destroyString((this + 280));
  re::StringID::destroyString((this + 256));
  re::StringID::destroyString((this + 232));
  re::AssetHandle::~AssetHandle((this + 200));
  re::AssetHandle::~AssetHandle((this + 176));
  re::AssetHandle::~AssetHandle((this + 152));
  *this = &unk_1F5D151C0;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v2);
  re::DynamicArray<re::BindPointAndPath>::deinit(this + 48);
  re::BindNode::deinit((this + 16));
}

void re::RenderGraphSimpleForwardEmitter::ensureProviderAssets(re::RenderGraphSimpleForwardEmitter *this, AssetService *a2)
{
  if (a2)
  {
    if (!*(this + 20))
    {
      (*(a2->var0 + 1))(&v12, a2, "engine:BuiltinRenderGraphResources/Common/depthClear.rematerial");
      v4 = *(this + 152);
      *(this + 152) = v12;
      v12 = v4;
      v5 = *(this + 21);
      *(this + 21) = v13;
      v13 = v5;
      re::AssetHandle::~AssetHandle(&v12);
    }

    if (!*(this + 102))
    {
      (*(a2->var0 + 1))(&v12, a2, "engine:BuiltinRenderGraphResources/Common/filter.rerendergraph");
      v6 = *(this + 808);
      *(this + 808) = v12;
      v12 = v6;
      v7 = *(this + 103);
      *(this + 103) = v13;
      v13 = v7;
      re::AssetHandle::~AssetHandle(&v12);
    }

    if (!*(this + 26))
    {
      (*(a2->var0 + 1))(&v12, a2, "engine:BuiltinRenderGraphResources/Common/separateDepth.rematerial");
      v8 = *(this + 200);
      *(this + 200) = v12;
      v12 = v8;
      v9 = *(this + 27);
      *(this + 27) = v13;
      v13 = v9;
      re::AssetHandle::~AssetHandle(&v12);
    }

    if (!*(this + 23))
    {
      (*(a2->var0 + 1))(&v12, a2, "engine:BuiltinRenderGraphResources/Common/separateStencil.rematerial");
      v10 = *(this + 11);
      *(this + 11) = v12;
      v12 = v10;
      v11 = *(this + 24);
      *(this + 24) = v13;
      v13 = v11;
      re::AssetHandle::~AssetHandle(&v12);
    }
  }
}

void re::RenderGraphSimpleForwardEmitter::preloadProvidersAssets(re::RenderGraphSimpleForwardEmitter *this, re::RenderManager *a2, AssetService *a3)
{
  re::RealityEmitterBase::preloadAssetsCommonProviders(this, a2, a3);
  re::RenderGraphSimpleForwardEmitter::ensureProviderAssets(this, a3);
  if (a2)
  {
    v6 = *(a2 + 328);
    v7 = v6 | *(a2 + 330);
    if ((v6 & 1) == 0 && (*(a2 + 329) & 1) == 0)
    {
      v6 = 0;
      goto LABEL_11;
    }

    if (!*(this + 95))
    {
LABEL_11:
      if ((v7 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }

    re::AssetHandle::loadAsync((this + 752));
    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    if (*(this + 95))
    {
      re::AssetHandle::loadAsync((this + 752));
    }

    v6 = 1;
  }

LABEL_12:
  if (*(this + 26))
  {
    re::AssetHandle::loadAsync((this + 200));
  }

  if (*(this + 23))
  {
    re::AssetHandle::loadAsync((this + 176));
    if ((v6 & 1) == 0)
    {
      return;
    }

    goto LABEL_18;
  }

LABEL_17:
  if (!v6)
  {
    return;
  }

LABEL_18:
  if (*(this + 20))
  {
    re::AssetHandle::loadAsync((this + 152));
  }

  if (*(this + 102))
  {
    re::AssetHandle::loadAsync((this + 808));
  }

  if (*(this + 92))
  {
    re::AssetHandle::loadAsync((this + 728));
  }

  if (*(this + 98))
  {

    re::AssetHandle::loadAsync((this + 776));
  }
}

void re::RenderGraphSimpleForwardEmitter::registerProviders(re::RenderGraphSimpleForwardEmitter *this, unsigned __int8 **a2, AssetService *a3)
{
  re::RenderGraphSimpleForwardEmitter::ensureProviderAssets(this, a3);
  re::RealityEmitterBase::registerCommonProviders(this, a2, a3);
  v6 = a2[87];
  v7 = v6[328];
  v8 = v7 | v6[330];
  if (v7 & 1) != 0 || (v6[329])
  {
    v9 = *(this + 95);
    if (v9)
    {
      v10 = atomic_load((v9 + 896));
      if (v10 != 2)
      {
        re::AssetHandle::loadNow(*(this + 95), 0);
      }

      v11 = *(this + 95);
      if (v11)
      {
        v12 = atomic_load((v11 + 896));
        if (v12 == 2 && !re::FontID::isValid((this + 880)))
        {
          v13 = re::AssetHandle::blockUntilLoaded<re::RenderGraphAsset>((this + 752));
          re::RenderGraphManager::addProviderInternal(a2, "Camera", (v13 + 8), 0, 0, &v57);
          v14 = re::StringID::operator=((this + 880), &v57);
          *(this + 112) = v59;
          if (v57)
          {
            if (v57)
            {
            }
          }
        }
      }
    }
  }

  if (v8)
  {
    isValid = re::FontID::isValid((this + 976));
    if (!isValid)
    {
      v16 = re::globalAllocators(isValid);
      v17 = (*(*v16[2] + 32))(v16[2], 88, 8);
      re::DepthStencilCombinerProvider::DepthStencilCombinerProvider(v17, v56);
      if (*&v56[0])
      {
        if (BYTE8(v56[0]))
        {
          (*(**&v56[0] + 40))();
        }

        memset(v56, 0, sizeof(v56));
      }

      re::RenderGraphManager::addProviderInternal(a2, "Camera", v17, -10, 1, &v57);
      v18 = re::StringID::operator=((this + 976), &v57);
      *(this + 124) = v59;
      if (v57)
      {
        if (v57)
        {
        }
      }
    }

    v19 = re::FontID::isValid((this + 1000));
    if (!v19)
    {
      v20 = re::globalAllocators(v19);
      v21 = (*(*v20[2] + 32))(v20[2], 136, 8);
      re::DepthStencilSplitterProvider::DepthStencilSplitterProvider(v21, v55);
      if (*&v55[0])
      {
        if (BYTE8(v55[0]))
        {
          (*(**&v55[0] + 40))();
        }

        memset(v55, 0, sizeof(v55));
      }

      re::AssetHandle::loadAsync((this + 200));
      re::AssetHandle::operator=(v21 + 88, this + 25);
      re::AssetHandle::loadAsync((this + 176));
      re::AssetHandle::operator=(v21 + 112, this + 22);
      re::RenderGraphManager::addProviderInternal(a2, "Camera", v21, 10, 1, &v57);
      v22 = re::StringID::operator=((this + 1000), &v57);
      *(this + 127) = v59;
      if (v57)
      {
        if (v57)
        {
        }
      }
    }
  }

  if (v7)
  {
    (*(a3->var0 + 1))(&v57, a3, "engine:default.metallib");
    re::AssetHandle::loadAsync(&v57);
    v23 = re::FontID::isValid((this + 904));
    if (!v23)
    {
      v25 = re::globalAllocators(v23);
      v26 = (*(*v25[2] + 32))(v25[2], 48, 8);
      re::VFXRenderGraphProvider::VFXRenderGraphProvider(v26, v54);
      if (*&v54[0])
      {
        if (BYTE8(v54[0]))
        {
          (*(**&v54[0] + 40))();
        }

        memset(v54, 0, sizeof(v54));
      }

      re::RenderGraphManager::addProviderInternal(a2, "VFXSimulation", v26, 0, 1, &v51);
      v27 = re::StringID::operator=((this + 904), &v51);
      *(this + 115) = v53;
      if (v51)
      {
        if (v51)
        {
        }
      }
    }

    v28 = *(this + 92);
    if (v28)
    {
      v29 = atomic_load((v28 + 896));
      if (v29 != 2)
      {
        re::AssetHandle::loadNow(*(this + 92), 0);
      }

      v30 = *(this + 92);
      if (v30)
      {
        v31 = atomic_load((v30 + 896));
        if (v31 == 2 && !re::FontID::isValid((this + 856)))
        {
          v32 = re::AssetHandle::blockUntilLoaded<re::RenderGraphAsset>((this + 728));
          re::RenderGraphManager::addProviderInternal(a2, "SingleGraphShadows", (v32 + 8), 0, 0, &v51);
          v33 = re::StringID::operator=((this + 856), &v51);
          *(this + 109) = v53;
          if (v51)
          {
            if (v51)
            {
            }
          }
        }
      }
    }

    v34 = *(this + 102);
    if (v34)
    {
      v35 = atomic_load((v34 + 896));
      if (v35 != 2)
      {
        re::AssetHandle::loadNow(*(this + 102), 0);
      }

      v36 = *(this + 102);
      if (v36)
      {
        v37 = atomic_load((v36 + 896));
        if (v37 == 2 && !re::FontID::isValid((this + 832)))
        {
          v38 = re::AssetHandle::blockUntilLoaded<re::RenderGraphAsset>((this + 808));
          re::RenderGraphManager::addProviderInternal(a2, "Filter", (v38 + 8), 0, 0, &v51);
          v39 = re::StringID::operator=((this + 832), &v51);
          *(this + 106) = v53;
          if (v51)
          {
            if (v51)
            {
            }
          }
        }
      }
    }

    v40 = *(this + 98);
    if (v40)
    {
      v41 = atomic_load((v40 + 896));
      if (v41 != 2)
      {
        re::AssetHandle::loadNow(*(this + 98), 0);
      }

      v42 = *(this + 98);
      if (v42)
      {
        v43 = atomic_load((v42 + 896));
        if (v43 == 2 && !re::FontID::isValid((this + 952)))
        {
          v44 = re::AssetHandle::blockUntilLoaded<re::RenderGraphAsset>((this + 776));
          re::RenderGraphManager::addProviderInternal(a2, "PostProcess", (v44 + 8), 0, 0, &v51);
          v45 = re::StringID::operator=((this + 952), &v51);
          *(this + 121) = v53;
          if (v51)
          {
            if (v51)
            {
            }
          }
        }
      }
    }

    if (*(this + 800) == 1)
    {
      re::SFBSystemShellBlurProvider::registerProviderCommon(a2, &v57, 1, (this + 1048), v24);
    }

    v46 = re::FontID::isValid((this + 1024));
    if (!v46)
    {
      v47 = re::globalAllocators(v46);
      v48 = (*(*v47[2] + 32))(v47[2], 112, 8);
      re::VRRUnwarpProvider::VRRUnwarpProvider(v48, v50);
      if (*&v50[0])
      {
        if (BYTE8(v50[0]))
        {
          (*(**&v50[0] + 40))();
        }

        memset(v50, 0, sizeof(v50));
      }

      re::AssetHandle::operator=(v48 + 40, &v57);
      re::RenderGraphManager::addProviderInternal(a2, "Camera", v48, 50, 1, &v51);
      v49 = re::StringID::operator=((this + 1024), &v51);
      *(this + 130) = v53;
      if (v51)
      {
        if (v51)
        {
        }
      }
    }

    re::AssetHandle::~AssetHandle(&v57);
  }

  *(this + 134) = a2;
}

void re::RenderGraphSimpleForwardEmitter::afterCameraViewHandler(uint64_t a1, uint64_t a2, uint64_t a3, re::RenderFrame *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19[11] = *MEMORY[0x1E69E9840];
  if (*(a7 + 8))
  {
    v11 = *(a7 + 16);
  }

  else
  {
    v11 = (a7 + 9);
  }

  if ((*(a7 + 703) & 1) == 0 && *(a1 + 784))
  {
    if ((atomic_load_explicit(&qword_1EE1BFCE0, memory_order_acquire) & 1) == 0)
    {
      v17 = __cxa_guard_acquire(&qword_1EE1BFCE0);
      if (v17)
      {
        _MergedGlobals_521 = re::hashString(v17, v18);
        __cxa_guard_release(&qword_1EE1BFCE0);
      }
    }

    v13 = 0x9E3779B97F4A7C17;
    v14 = _MergedGlobals_521;
    v15 = strlen(v11);
    if (v15)
    {
      MurmurHash3_x64_128(v11, v15, 0, v19);
      v13 = ((v19[1] - 0x61C8864680B583E9 + (v19[0] << 6) + (v19[0] >> 2)) ^ v19[0]) - 0x61C8864680B583E9;
    }

    re::CameraView::makeViewportPercentData(a7, v16, v19);
    re::RenderGraphDataStore::add<re::ViewportPercentData,re::ViewportPercentData>(a5, ((v14 >> 2) + (v14 << 6) + v13) ^ v14, v19);
    re::RenderFrame::emitGraph(a4, "PostProcess", v11);
    *(*(*(*(a4 + 1) + 112) + 1648) + 16) = 0;
  }

  re::RealityEmitterBase::emitCustomPostProcessGraph<re::CameraView>(a1, a3, a4, a7);
}

void re::RenderGraphSimpleForwardEmitter::afterCameraMultiViewHandler(uint64_t a1, uint64_t a2, uint64_t a3, re::RenderFrame *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17[11] = *MEMORY[0x1E69E9840];
  if (*(a7 + 8))
  {
    v7 = *(a7 + 16);
  }

  else
  {
    v7 = (a7 + 9);
  }

  if ((*(a7 + 703) & 1) == 0 && *(a1 + 784))
  {
    if ((atomic_load_explicit(&qword_1EE1BFCF0, memory_order_acquire) & 1) == 0)
    {
      v15 = __cxa_guard_acquire(&qword_1EE1BFCF0);
      if (v15)
      {
        qword_1EE1BFCE8 = re::hashString(v15, v16);
        __cxa_guard_release(&qword_1EE1BFCF0);
      }
    }

    v11 = 0x9E3779B97F4A7C17;
    v12 = qword_1EE1BFCE8;
    v13 = strlen(v7);
    if (v13)
    {
      MurmurHash3_x64_128(v7, v13, 0, v17);
      v11 = ((v17[1] - 0x61C8864680B583E9 + (v17[0] << 6) + (v17[0] >> 2)) ^ v17[0]) - 0x61C8864680B583E9;
    }

    re::CameraMultiView::makeViewportPercentDataInstancedMode(a7, v14, v17);
    re::RenderGraphDataStore::add<re::ViewportPercentData,re::ViewportPercentData>(a5, ((v12 >> 2) + (v12 << 6) + v11) ^ v12, v17);
    re::RenderFrame::emitGraph(a4, "PostProcess", v7);
    *(*(*(*(a4 + 1) + 112) + 1648) + 16) = 0;
  }
}

uint64_t re::RenderGraphSimpleForwardEmitter::emitFrameContext(re::RealityEmitterBase *a1, void *a2, re::RenderFrame *this, re *a4)
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
  v29 = 0;
  v13 = a2[2];
  if (v13)
  {
    v14 = a2[3];
    v15 = 424 * v13;
    do
    {
      re::RealityEmitterBase::emitSingleGraphShadows(a1, v14, this, a4, &v29);
      v14 += 424;
      v15 -= 424;
    }

    while (v15);
    v16 = a2[2];
    if (v16)
    {
      v17 = a2[3];
      v18 = 424 * v16;
      do
      {
        re::RealityEmitterBase::emitFilterMapGraph(a1, v17, this, a4);
        v17 += 53;
        v18 -= 424;
      }

      while (v18);
      v19 = a2[2];
      if (v19)
      {
        v20 = a2[3];
        v21 = 424 * v19;
        do
        {
          re::RealityEmitterBase::emitVisualProxyHighFidelityGraph(a1, v20, this, a4);
          v20 += 424;
          v21 -= 424;
        }

        while (v21);
        v22 = a2[2];
        if (v22)
        {
          v23 = a2[3];
          v24 = 424 * v22;
          do
          {
            re::RealityEmitterBase::emitCameraGraphs(a1, a2, v23, this, a4, 0);
            v23 += 424;
            v24 -= 424;
          }

          while (v24);
          v25 = a2[2];
          if (v25)
          {
            v26 = a2[3];
            v27 = 424 * v25;
            do
            {
              re::RealityEmitterBase::emitEmbeddedStereoContentCameraGraphs(a1, a2, v26, this, a4, 0);
              v26 += 424;
              v27 -= 424;
            }

            while (v27);
          }
        }
      }
    }
  }

  return re::RealityEmitterBase::pushPipelineCompilationDataToDataStore(a1, this, a4);
}

void re::RenderGraphSimpleForwardEmitter::afterPrepareSceneContextHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 360);
  if (!v4 || !re::AssetHandle::blockUntilLoaded<re::RenderGraphAsset>((a1 + 752)))
  {
    return;
  }

  if (*v4 == 1)
  {
    v7 = 0;
    v8 = v4[5];
    v9 = v8 ^ 1;
    if (v4[6])
    {
      v10 = 4;
    }

    else
    {
      v10 = 0;
    }

    if (v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v4[6] & 1) == 0)
    {
      v10 = 0;
      v9 = 0;
      v7 = 0;
      goto LABEL_15;
    }

    v11 = v4[5];
    v9 = v11 ^ 1;
    if (v11)
    {
      v7 = 0;
      v10 = 4;
      goto LABEL_15;
    }

    v7 = 2;
  }

  v10 = 0;
LABEL_15:
  v12 = v9 | v10 | v7;
  if ((*(a3 + 120) & 0x7F) != v12)
  {
    v13 = *(a1 + 760);
    if (v13)
    {
      v14 = atomic_load((v13 + 896));
      if (v14 == 2)
      {
        ++*(*(a1 + 760) + 276);
        v15 = re::AssetHandle::loadedAsset<re::RenderGraphAsset>((a1 + 752));
        if (v15)
        {
          v16 = v15;
          v23 = 0x9AB5F11FB4FA0048;
          v24 = "SceneUnderstandingOcclusionAndShadowNode";
          v22 = v9;
          v17 = re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v15 + 8), &v23, "Enabled", &v22);
          if (v23)
          {
            if (v23)
            {
            }
          }

          v23 = 0x10DE28F3DBBA741CLL;
          v24 = "SceneUnderstandingOcclusionAndShadowDepthClearNode";
          v22 = v7 >> 1;
          v18 = re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v16 + 8), &v23, "Enabled", &v22);
          if (v23)
          {
            if (v23)
            {
            }
          }

          v23 = 0xF5A2D353F87D6B9CLL;
          v24 = "MeshShadowProjectedPatchReceiverNode";
          v19 = v10 >> 2;
          v22 = v19;
          v20 = re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v16 + 8), &v23, "Enabled", &v22);
          if (v23)
          {
            if (v23)
            {
            }
          }

          v23 = 0xF7F248B7F1C26F4;
          v24 = "PatchShadowReceiverDepthOnlyNode";
          v22 = v19;
          v21 = re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v16 + 8), &v23, "Enabled", &v22);
          if (v23)
          {
            if (v23)
            {
            }
          }
        }
      }
    }
  }

  *(a3 + 120) = v12;
}

void *re::allocInfo_RenderGraphSimpleForwardEmitter(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BFCF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFCF8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BFD30, "RenderGraphSimpleForwardEmitter");
    __cxa_guard_release(&qword_1EE1BFCF8);
  }

  return &unk_1EE1BFD30;
}

void re::initInfo_RenderGraphSimpleForwardEmitter(re *this, re::IntrospectionBase *a2)
{
  v26[0] = 0x189F6B76760EA926;
  v26[1] = "RenderGraphSimpleForwardEmitter";
  if (v26[0])
  {
    if (v26[0])
    {
    }
  }

  *(this + 2) = v27;
  if ((atomic_load_explicit(&qword_1EE1BFD00, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BFD00);
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
      qword_1EE1BFD08 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_AssetHandle(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "shadowGraph";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2D800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1BFD10 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_AssetHandle(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "cameraGraph";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x2F000000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1BFD18 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_AssetHandle(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "postProcessGraph";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x30800000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1BFD20 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::introspect_BOOL(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "enableBlurProvider";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x32000000005;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1BFD28 = v24;
      __cxa_guard_release(&qword_1EE1BFD00);
    }
  }

  *(this + 2) = 0x43800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1BFD08;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphSimpleForwardEmitter>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphSimpleForwardEmitter>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphSimpleForwardEmitter>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphSimpleForwardEmitter>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v25 = v27;
}

uint64_t re::RenderGraphFile::setRuntimeNodeSetting<BOOL>(re::RenderGraphFile *a1, const re::StringID *a2, char *a3, void *a4)
{
  v6 = a3;
  v7 = &unk_1EE187000;
  {
    v15 = a1;
    v14 = a4;
    v12 = a2;
    v7 = &unk_1EE187000;
    a2 = v12;
    v6 = a3;
    a4 = v14;
    v11 = v10;
    a1 = v15;
    if (v11)
    {
      re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v12);
      v7 = &unk_1EE187000;
      a1 = v15;
      a2 = v12;
      v6 = a3;
      a4 = v14;
    }
  }

  v8 = *(v7 + 42);

  return re::RenderGraphFile::setRuntimeNodeSetting(a1, a2, v8, v6, a4);
}

uint64_t re::RealityEmitterBase::beforeCameraViewHandlerCommon<re::CameraView>(void *a1, uint64_t a2, re::Allocator **a3, uint64_t *a4, uint64_t a5, char *__s1, uint64_t a7)
{
  v8 = __s1;
  v115 = *MEMORY[0x1E69E9840];
  LODWORD(v14) = 2135587863;
  v76 = strcmp(__s1, "Camera");
  v92 = a7;
  if (*(a7 + 8))
  {
    v15 = *(a7 + 16);
  }

  else
  {
    v15 = a7 + 9;
  }

  if (a3[43])
  {
    v16 = strlen(v8);
    if (v16)
    {
      MurmurHash3_x64_128(v8, v16, 0, v96);
      v17 = (*&v96[8] - 0x61C8864680B583E9 + (*v96 << 6) + (*v96 >> 2)) ^ *v96;
    }

    else
    {
      v17 = 0;
    }

    v18 = strlen(v15);
    v19 = 0x9E3779B97F4A7C17;
    if (v18)
    {
      MurmurHash3_x64_128(v15, v18, 0, v96);
      v19 = ((*&v96[8] - 0x61C8864680B583E9 + (*v96 << 6) + (*v96 >> 2)) ^ *v96) - 0x61C8864680B583E9;
    }

    re::RenderGraphDataStore::add<re::MXIColorConversionState,re::MXIColorConversionState&>(a5, ((v17 >> 2) + (v17 << 6) + v19) ^ v17, a3[43]);
  }

  ScopeResolution = re::RenderFrame::getScopeResolution(a4, v15);
  v95 = 65290051;
  ScopePixelFormat = re::RenderFrame::getScopePixelFormat(a4, v15, &v95);
  v95 = 0;
  v20 = a3[42];
  v90 = a4;
  v91 = a5;
  if (!v20 || v76)
  {
LABEL_72:
    if (v76)
    {
      v61 = strcmp(v8, "Portal") == 0;
      goto LABEL_75;
    }
  }

  else
  {
    v21 = 0;
    v78 = v8;
    v80 = a3;
    __s = v15;
    while (*(v20 + 40) > v21)
    {
      v22 = re::BucketArray<re::LightInfoArrays,4ul>::operator[](v20, v21);
      v23 = std::string::basic_string[abi:nn200100]<0>(v108, "_MXIOffscreen_");
      v24 = std::string::insert(v23, 0, v15);
      v25 = v24->__r_.__value_.__r.__words[2];
      *v96 = *&v24->__r_.__value_.__l.__data_;
      *&v96[16] = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      v88 = v22;
      std::to_string(&v107, *(v22 + 40));
      if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &v107;
      }

      else
      {
        v26 = v107.__r_.__value_.__r.__words[0];
      }

      if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v107.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v107.__r_.__value_.__l.__size_;
      }

      v28 = std::string::append(v96, v26, size);
      v29 = v28->__r_.__value_.__r.__words[2];
      *__p = *&v28->__r_.__value_.__l.__data_;
      v94 = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v107.__r_.__value_.__l.__data_);
      }

      if ((v96[23] & 0x80000000) != 0)
      {
        operator delete(*v96);
      }

      if (SBYTE3(v112) < 0)
      {
        operator delete(*v108);
      }

      if (v94 >= 0)
      {
        v30 = __p;
      }

      else
      {
        v30 = __p[0];
      }

      MurmurHash3_x64_128("MXI", 3uLL, 0, v96);
      v31 = *v96;
      v32 = strlen(v30);
      v33 = 0x9E3779B97F4A7C17;
      if (v32)
      {
        MurmurHash3_x64_128(v30, v32, 0, v96);
        v33 = ((*&v96[8] - 0x61C8864680B583E9 + (*v96 << 6) + (*v96 >> 2)) ^ *v96) - 0x61C8864680B583E9;
      }

      v86 = v21;
      v34 = (*(&v31 + 1) - 0x61C8864680B583E9 + (v31 << 6) + (v31 >> 2)) ^ v31;
      v35 = (v34 >> 2) + (v34 << 6) + v33;
      re::CameraView::makeCameraData(v92, a4[1], a3, v96);
      re::RenderGraphDataStore::add<re::CameraData,re::CameraData>(a5, v35 ^ v34, v96);
      re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(&v106);
      ++v105;
      ++v103;
      ++v101;
      v104 = 0;
      v102 = 0;
      v100 = 0;
      *&v98 = 0;
      ++DWORD2(v98);
      if (*&v96[8] && (v96[16] & 1) != 0)
      {
        (*(**&v96[8] + 40))();
      }

      v36 = a4[1];
      *v96 = &unk_1F5D035F0;
      *&v96[8] = *(v92 + 288);
      v96[12] = (*&v96[8] != -1) & *(v36 + 364);
      v96[13] = *(v92 + 701);
      re::RenderGraphDataStore::add<re::VRRData,re::VRRData>(a5, v35 ^ v34, v96);
      v37 = a3[6];
      v38 = *a3;
      *v96 = &unk_1F5D06A20;
      re::DynamicString::DynamicString(&v96[8], v37, v38);
      re::RenderGraphDataStore::add<re::SceneScope,re::SceneScope>(a5, v35 ^ v34, v96);
      *v96 = &unk_1F5D06A20;
      if (*&v96[8] && (v96[16] & 1) != 0)
      {
        (*(**&v96[8] + 40))();
      }

      re::CameraView::makeViewportPercentData(v92, v39, v96);
      re::RenderGraphDataStore::add<re::ViewportPercentData,re::ViewportPercentData>(a5, v35 ^ v34, v96);
      v40 = re::RenderGraphDataStore::get<re::CameraData>(a5, v35 ^ v34);
      *(v40 + 884) = 1;
      *v96 = *(v40 + 890);
      v41 = re::RenderGraphDataStore::add<re::CameraMatrices,re::PerFrameAllocator *&,unsigned long>(a5, v35 ^ v34, a2, v96);
      if (*(v40 + 890))
      {
        v43 = v41;
        v44 = 0;
        v45 = v40 + 144;
        v46 = (v40 + 64);
        do
        {
          v47 = *(v40 + 128);
          if (v47 <= v44)
          {
            re::internal::assertLog(6, v42, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v44, v47);
            _os_crash();
            __break(1u);
LABEL_120:
            re::internal::assertLog(6, v51, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v44, v52);
            _os_crash();
            __break(1u);
LABEL_121:
            re::internal::assertLog(6, v53, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v44, v54);
            _os_crash();
            __break(1u);
LABEL_122:
            __p[0] = 0;
            v98 = 0u;
            v99 = 0u;
            v97 = 0u;
            memset(v96, 0, sizeof(v96));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v108 = 136315906;
            *&v108[4] = "operator[]";
            v109 = 1024;
            v110 = 468;
            v111 = 2048;
            v112 = v43;
            v113 = 2048;
            v114 = v46;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          if (*(v45 + 80) == 1)
          {
            v48 = *(v45 + 96);
            v49 = *(v45 + 112);
            v50 = *(v45 + 144);
            v97 = *(v45 + 128);
            v98 = v50;
            *v96 = v48;
            *&v96[16] = v49;
          }

          else
          {
            re::Projection::cullingProjectionMatrix(v45, v96);
          }

          re::DynamicArray<re::Matrix4x4<float>>::add((v43 + 48), v96);
          v52 = *(v40 + 128);
          if (v52 <= v44)
          {
            goto LABEL_120;
          }

          re::Projection::cullingProjectionMatrix(v45, v96);
          re::DynamicArray<re::Matrix4x4<float>>::add((v43 + 88), v96);
          v54 = *(v40 + 48);
          if (v54 <= v44)
          {
            goto LABEL_121;
          }

          re::RenderCamera::computeInverseTransform(v46, v96);
          re::DynamicArray<re::Matrix4x4<float>>::add((v43 + 8), v96);
          ++v44;
          v46 += 2;
          v45 += 240;
        }

        while (v44 < *(v40 + 890));
      }

      v15 = __s;
      re::DynamicString::DynamicString(v108, __s, *a2);
      *v96 = &unk_1F5D125A8;
      *&v96[8] = v88;
      *&v96[16] = ScopeResolution;
      *&v96[24] = ScopePixelFormat;
      re::DynamicString::DynamicString(&v97, v108);
      *&v99 = 0;
      a5 = v91;
      re::RenderGraphDataStore::add<re::MXIFrameData,re::MXIFrameData>(v91, v35 ^ v34, v96);
      if (v97 && (BYTE8(v97) & 1) != 0)
      {
        (*(*v97 + 40))();
      }

      a4 = v90;
      v8 = v78;
      a3 = v80;
      LODWORD(v14) = 2135587863;
      if (!v86)
      {
        *v96 = &unk_1F5D125A8;
        *&v96[8] = v88;
        *&v96[16] = ScopeResolution;
        *&v96[24] = ScopePixelFormat;
        re::DynamicString::DynamicString(&v97, v108);
        *&v99 = 0;
        if (re::FontID::isValid((a1 + 87)))
        {
          v56 = a1[90];
          if (v56)
          {
            re::MXIProvider::initProxyMeshPart(v56, *(a1[28] + 696), *(v88 + 96), *(v88 + 100));
            *&v99 = *(a1[90] + 96);
          }
        }

        v57 = strlen(v78);
        if (v57)
        {
          MurmurHash3_x64_128(v78, v57, 0, &v107);
          v58 = (v107.__r_.__value_.__l.__size_ - 0x61C8864680B583E9 + (v107.__r_.__value_.__r.__words[0] << 6) + (v107.__r_.__value_.__r.__words[0] >> 2)) ^ v107.__r_.__value_.__r.__words[0];
        }

        else
        {
          v58 = 0;
        }

        v59 = strlen(__s);
        v60 = 0x9E3779B97F4A7C17;
        if (v59)
        {
          MurmurHash3_x64_128(__s, v59, 0, &v107);
          v60 = ((v107.__r_.__value_.__l.__size_ - 0x61C8864680B583E9 + (v107.__r_.__value_.__r.__words[0] << 6) + (v107.__r_.__value_.__r.__words[0] >> 2)) ^ v107.__r_.__value_.__r.__words[0]) - 0x61C8864680B583E9;
        }

        re::RenderGraphDataStore::add<re::MXIFrameData,re::MXIFrameData>(v91, ((v58 >> 2) + (v58 << 6) + v60) ^ v58, v96);
        if (v97 && (BYTE8(v97) & 1) != 0)
        {
          (*(*v97 + 40))();
        }
      }

      if (v94 >= 0)
      {
        v55 = __p;
      }

      else
      {
        v55 = __p[0];
      }

      re::RenderFrame::emitGraph(v90, "MXI", v55);
      if (*v108 && (v108[8] & 1) != 0)
      {
        (*(**v108 + 40))();
      }

      if (SHIBYTE(v94) < 0)
      {
        operator delete(__p[0]);
      }

      v21 = v86 + 1;
      v20 = v80[42];
      if (!v20)
      {
        goto LABEL_72;
      }
    }
  }

  v61 = 1;
LABEL_75:
  result = a3[3];
  if (result)
  {
    v63 = !v61;
  }

  else
  {
    v63 = 1;
  }

  if (!v63)
  {
    re::PlanarReflectionContext::makeReflectionCameraViews(result, a4, v92, v96);
    if (*&v96[16])
    {
      v15 = v97;
      v64 = 1552 * *&v96[16];
      v14 = "Camera";
      do
      {
        (*(*a1 + 104))(a1, a2, a3, a4, a5, "Camera", v15);
        v15 += 1552;
        v64 -= 1552;
      }

      while (v64);
    }

    result = re::DynamicArray<re::CameraView>::deinit(v96);
  }

  if (v61)
  {
    v81 = a3[41];
    if (v81)
    {
      v79 = *(v81 + 40);
      if (v79)
      {
        v65 = 0;
        while (1)
        {
          v83 = v65;
          result = re::BucketArray<re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>,4ul>::operator[](v81, v65);
          v66 = *(result + 6972);
          if (v66)
          {
            v67 = result + 6944;
            v15 = *(result + 6976);
            if (v15)
            {
              v14 = 0;
              v68 = *(result + 6960);
              do
              {
                if ((*v68 & 0x80000000) != 0)
                {
                  goto LABEL_95;
                }

                v68 += 216;
                ++v14;
              }

              while (v15 != v14);
              LODWORD(v14) = *(result + 6976);
            }

            else
            {
              LODWORD(v14) = 0;
            }

LABEL_95:
            v85 = result + 6944;
          }

          else
          {
            v67 = result + 32;
            v85 = result + 32 + 864 * *(result + 16);
          }

          v89 = v15;
          v87 = *(result + 6972);
LABEL_97:
          while (v66)
          {
            if (v15 == v14)
            {
              goto LABEL_117;
            }

            v69 = (*(v67 + 16) + 864 * v14 + 16);
LABEL_102:
            result = re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::find((a2 + 32), *v69 >> 1);
            if (result != -1)
            {
              v43 = *(*(a2 + 40) + 16 * result + 8);
              v46 = *(a2 + 16);
              if (v46 <= v43)
              {
                goto LABEL_122;
              }

              v70 = *(a2 + 24) + 424 * v43;
              result = *(v70 + 24);
              if (result)
              {
                re::PlanarReflectionContext::makeReflectionCameraViews(result, v90, v92, v96);
                if (*&v96[16])
                {
                  v71 = v97;
                  v72 = 1552 * *&v96[16];
                  do
                  {
                    (*(*a1 + 104))(a1, a2, v70, v90, v91, "Camera", v71);
                    v71 += 1552;
                    v72 -= 1552;
                  }

                  while (v72);
                }

                result = re::DynamicArray<re::CameraView>::deinit(v96);
                v15 = v89;
                v66 = v87;
              }
            }

            if (v66)
            {
              v73 = v14 + 1;
              if (*(v67 + 32) <= (v14 + 1))
              {
                LODWORD(v14) = v14 + 1;
              }

              else
              {
                LODWORD(v14) = *(v67 + 32);
              }

              while (v14 != v73)
              {
                v74 = v73;
                v75 = *(*(v67 + 16) + 864 * v73++);
                if (v75 < 0)
                {
                  LODWORD(v14) = v74;
                  goto LABEL_97;
                }
              }
            }

            else
            {
              v67 += 864;
            }
          }

          if (v67 != v85)
          {
            break;
          }

LABEL_117:
          v65 = v83 + 1;
          if (v83 + 1 == v79)
          {
            return result;
          }
        }

        v69 = (v67 + 16);
        goto LABEL_102;
      }
    }
  }

  return result;
}

uint64_t re::RenderGraphDataStore::add<re::MXIColorConversionState,re::MXIColorConversionState&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = "N2re23MXIColorConversionStateE";
  if (("N2re23MXIColorConversionStateE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re23MXIColorConversionStateE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  v12 = (a2 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v9 = (*(**(a1 + 8) + 32))(*(a1 + 8), 16, 8);
  *v9 = &unk_1F5CF06D8;
  *(v9 + 8) = *(a3 + 8);
  v11 = v9;
  return re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, &v12, &v11);
}

uint64_t re::RenderGraphDataStore::add<re::CameraMatrices,re::PerFrameAllocator *&,unsigned long>(uint64_t a1, uint64_t a2, re::Allocator **a3, unint64_t *a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v13 = 0;
  {
    re::introspect<re::CameraMatrices>(BOOL)::info = re::introspect_CameraMatrices(0);
  }

  v12 = re::introspect<re::CameraMatrices>(BOOL)::info;
  v8 = strlen(*(re::introspect<re::CameraMatrices>(BOOL)::info + 6));
  if (v8)
  {
    MurmurHash3_x64_128(*(re::introspect<re::CameraMatrices>(BOOL)::info + 6), v8, 0, v14);
    v9 = (v14[1] - 0x61C8864680B583E9 + (v14[0] << 6) + (v14[0] >> 2)) ^ v14[0];
  }

  else
  {
    v9 = 0;
  }

  v13 = v9;
  re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(a1 + 176, &v13, &v12);
  v14[0] = (a2 - 0x61C8864680B583E9 + (v13 << 6) + (v13 >> 2)) ^ v13;
  v10 = (*(**(a1 + 8) + 32))(*(a1 + 8), 176, 16);
  v12 = re::CameraMatrices::CameraMatrices(v10, *a3, *a4);
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, v14, &v12);
}

uint64_t re::RenderGraphDataStore::add<re::MXIFrameData,re::MXIFrameData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = "N2re12MXIFrameDataE";
  if (("N2re12MXIFrameDataE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re12MXIFrameDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  v17 = (a2 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v9 = (*(**(a1 + 8) + 32))(*(a1 + 8), 72, 8);
  *v9 = &unk_1F5D125A8;
  v10 = *(a3 + 24);
  *(v9 + 8) = *(a3 + 8);
  *(v9 + 24) = v10;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 56) = *(a3 + 56);
  v11 = *(a3 + 40);
  *(v9 + 32) = *(a3 + 32);
  *(a3 + 32) = 0;
  v12 = *(a3 + 48);
  *(a3 + 56) = 0;
  v14 = *(v9 + 40);
  v13 = *(v9 + 48);
  *(v9 + 40) = v11;
  *(v9 + 48) = v12;
  *(a3 + 40) = v14;
  *(a3 + 48) = v13;
  *(v9 + 64) = *(a3 + 64);
  v16 = v9;
  return re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, &v17, &v16);
}

void re::MXIFrameData::~MXIFrameData(re::MXIFrameData *this)
{
  re::DynamicString::deinit((this + 32));
}

{
  re::DynamicString::deinit((this + 32));

  JUMPOUT(0x1E6906520);
}

uint64_t re::RealityEmitterBase::beforeCameraViewHandlerCommon<re::CameraMultiView>(void *a1, uint64_t a2, re::Allocator **a3, uint64_t *a4, uint64_t a5, char *__s1, uint64_t a7)
{
  v8 = __s1;
  v115 = *MEMORY[0x1E69E9840];
  LODWORD(v14) = 2135587863;
  v76 = strcmp(__s1, "Camera");
  v92 = a7;
  if (*(a7 + 8))
  {
    v15 = *(a7 + 16);
  }

  else
  {
    v15 = a7 + 9;
  }

  if (a3[43])
  {
    v16 = strlen(v8);
    if (v16)
    {
      MurmurHash3_x64_128(v8, v16, 0, v96);
      v17 = (*&v96[8] - 0x61C8864680B583E9 + (*v96 << 6) + (*v96 >> 2)) ^ *v96;
    }

    else
    {
      v17 = 0;
    }

    v18 = strlen(v15);
    v19 = 0x9E3779B97F4A7C17;
    if (v18)
    {
      MurmurHash3_x64_128(v15, v18, 0, v96);
      v19 = ((*&v96[8] - 0x61C8864680B583E9 + (*v96 << 6) + (*v96 >> 2)) ^ *v96) - 0x61C8864680B583E9;
    }

    re::RenderGraphDataStore::add<re::MXIColorConversionState,re::MXIColorConversionState&>(a5, ((v17 >> 2) + (v17 << 6) + v19) ^ v17, a3[43]);
  }

  ScopeResolution = re::RenderFrame::getScopeResolution(a4, v15);
  v95 = 65290051;
  ScopePixelFormat = re::RenderFrame::getScopePixelFormat(a4, v15, &v95);
  v95 = 0;
  v20 = a3[42];
  v90 = a4;
  v91 = a5;
  if (!v20 || v76)
  {
LABEL_72:
    if (v76)
    {
      v61 = strcmp(v8, "Portal") == 0;
      goto LABEL_75;
    }
  }

  else
  {
    v21 = 0;
    v78 = v8;
    v80 = a3;
    __s = v15;
    while (*(v20 + 40) > v21)
    {
      v22 = re::BucketArray<re::LightInfoArrays,4ul>::operator[](v20, v21);
      v23 = std::string::basic_string[abi:nn200100]<0>(v108, "_MXIOffscreen_");
      v24 = std::string::insert(v23, 0, v15);
      v25 = v24->__r_.__value_.__r.__words[2];
      *v96 = *&v24->__r_.__value_.__l.__data_;
      *&v96[16] = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      v88 = v22;
      std::to_string(&v107, *(v22 + 40));
      if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &v107;
      }

      else
      {
        v26 = v107.__r_.__value_.__r.__words[0];
      }

      if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v107.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v107.__r_.__value_.__l.__size_;
      }

      v28 = std::string::append(v96, v26, size);
      v29 = v28->__r_.__value_.__r.__words[2];
      *__p = *&v28->__r_.__value_.__l.__data_;
      v94 = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v107.__r_.__value_.__l.__data_);
      }

      if ((v96[23] & 0x80000000) != 0)
      {
        operator delete(*v96);
      }

      if (SBYTE3(v112) < 0)
      {
        operator delete(*v108);
      }

      if (v94 >= 0)
      {
        v30 = __p;
      }

      else
      {
        v30 = __p[0];
      }

      MurmurHash3_x64_128("MXI", 3uLL, 0, v96);
      v31 = *v96;
      v32 = strlen(v30);
      v33 = 0x9E3779B97F4A7C17;
      if (v32)
      {
        MurmurHash3_x64_128(v30, v32, 0, v96);
        v33 = ((*&v96[8] - 0x61C8864680B583E9 + (*v96 << 6) + (*v96 >> 2)) ^ *v96) - 0x61C8864680B583E9;
      }

      v86 = v21;
      v34 = (*(&v31 + 1) - 0x61C8864680B583E9 + (v31 << 6) + (v31 >> 2)) ^ v31;
      v35 = (v34 >> 2) + (v34 << 6) + v33;
      re::CameraMultiView::makeCameraDataInstancedMode(v92, a4[1], a3, v96);
      re::RenderGraphDataStore::add<re::CameraData,re::CameraData>(a5, v35 ^ v34, v96);
      re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(&v106);
      ++v105;
      ++v103;
      ++v101;
      v104 = 0;
      v102 = 0;
      v100 = 0;
      *&v98 = 0;
      ++DWORD2(v98);
      if (*&v96[8] && (v96[16] & 1) != 0)
      {
        (*(**&v96[8] + 40))();
      }

      v36 = a4[1];
      *v96 = &unk_1F5D035F0;
      *&v96[8] = *(v92 + 288);
      v96[12] = (*&v96[8] != -1) & *(v36 + 364);
      v96[13] = *(v92 + 701);
      re::RenderGraphDataStore::add<re::VRRData,re::VRRData>(a5, v35 ^ v34, v96);
      v37 = a3[6];
      v38 = *a3;
      *v96 = &unk_1F5D06A20;
      re::DynamicString::DynamicString(&v96[8], v37, v38);
      re::RenderGraphDataStore::add<re::SceneScope,re::SceneScope>(a5, v35 ^ v34, v96);
      *v96 = &unk_1F5D06A20;
      if (*&v96[8] && (v96[16] & 1) != 0)
      {
        (*(**&v96[8] + 40))();
      }

      re::CameraMultiView::makeViewportPercentDataInstancedMode(v92, v39, v96);
      re::RenderGraphDataStore::add<re::ViewportPercentData,re::ViewportPercentData>(a5, v35 ^ v34, v96);
      v40 = re::RenderGraphDataStore::get<re::CameraData>(a5, v35 ^ v34);
      *(v40 + 884) = 1;
      *v96 = *(v40 + 890);
      v41 = re::RenderGraphDataStore::add<re::CameraMatrices,re::PerFrameAllocator *&,unsigned long>(a5, v35 ^ v34, a2, v96);
      if (*(v40 + 890))
      {
        v43 = v41;
        v44 = 0;
        v45 = v40 + 144;
        v46 = (v40 + 64);
        do
        {
          v47 = *(v40 + 128);
          if (v47 <= v44)
          {
            re::internal::assertLog(6, v42, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v44, v47);
            _os_crash();
            __break(1u);
LABEL_120:
            re::internal::assertLog(6, v51, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v44, v52);
            _os_crash();
            __break(1u);
LABEL_121:
            re::internal::assertLog(6, v53, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v44, v54);
            _os_crash();
            __break(1u);
LABEL_122:
            __p[0] = 0;
            v98 = 0u;
            v99 = 0u;
            v97 = 0u;
            memset(v96, 0, sizeof(v96));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v108 = 136315906;
            *&v108[4] = "operator[]";
            v109 = 1024;
            v110 = 468;
            v111 = 2048;
            v112 = v43;
            v113 = 2048;
            v114 = v46;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          if (*(v45 + 80) == 1)
          {
            v48 = *(v45 + 96);
            v49 = *(v45 + 112);
            v50 = *(v45 + 144);
            v97 = *(v45 + 128);
            v98 = v50;
            *v96 = v48;
            *&v96[16] = v49;
          }

          else
          {
            re::Projection::cullingProjectionMatrix(v45, v96);
          }

          re::DynamicArray<re::Matrix4x4<float>>::add((v43 + 48), v96);
          v52 = *(v40 + 128);
          if (v52 <= v44)
          {
            goto LABEL_120;
          }

          re::Projection::cullingProjectionMatrix(v45, v96);
          re::DynamicArray<re::Matrix4x4<float>>::add((v43 + 88), v96);
          v54 = *(v40 + 48);
          if (v54 <= v44)
          {
            goto LABEL_121;
          }

          re::RenderCamera::computeInverseTransform(v46, v96);
          re::DynamicArray<re::Matrix4x4<float>>::add((v43 + 8), v96);
          ++v44;
          v46 += 2;
          v45 += 240;
        }

        while (v44 < *(v40 + 890));
      }

      v15 = __s;
      re::DynamicString::DynamicString(v108, __s, *a2);
      *v96 = &unk_1F5D125A8;
      *&v96[8] = v88;
      *&v96[16] = ScopeResolution;
      *&v96[24] = ScopePixelFormat;
      re::DynamicString::DynamicString(&v97, v108);
      *&v99 = 0;
      a5 = v91;
      re::RenderGraphDataStore::add<re::MXIFrameData,re::MXIFrameData>(v91, v35 ^ v34, v96);
      if (v97 && (BYTE8(v97) & 1) != 0)
      {
        (*(*v97 + 40))();
      }

      a4 = v90;
      v8 = v78;
      a3 = v80;
      LODWORD(v14) = 2135587863;
      if (!v86)
      {
        *v96 = &unk_1F5D125A8;
        *&v96[8] = v88;
        *&v96[16] = ScopeResolution;
        *&v96[24] = ScopePixelFormat;
        re::DynamicString::DynamicString(&v97, v108);
        *&v99 = 0;
        if (re::FontID::isValid((a1 + 87)))
        {
          v56 = a1[90];
          if (v56)
          {
            re::MXIProvider::initProxyMeshPart(v56, *(a1[28] + 696), *(v88 + 96), *(v88 + 100));
            *&v99 = *(a1[90] + 96);
          }
        }

        v57 = strlen(v78);
        if (v57)
        {
          MurmurHash3_x64_128(v78, v57, 0, &v107);
          v58 = (v107.__r_.__value_.__l.__size_ - 0x61C8864680B583E9 + (v107.__r_.__value_.__r.__words[0] << 6) + (v107.__r_.__value_.__r.__words[0] >> 2)) ^ v107.__r_.__value_.__r.__words[0];
        }

        else
        {
          v58 = 0;
        }

        v59 = strlen(__s);
        v60 = 0x9E3779B97F4A7C17;
        if (v59)
        {
          MurmurHash3_x64_128(__s, v59, 0, &v107);
          v60 = ((v107.__r_.__value_.__l.__size_ - 0x61C8864680B583E9 + (v107.__r_.__value_.__r.__words[0] << 6) + (v107.__r_.__value_.__r.__words[0] >> 2)) ^ v107.__r_.__value_.__r.__words[0]) - 0x61C8864680B583E9;
        }

        re::RenderGraphDataStore::add<re::MXIFrameData,re::MXIFrameData>(v91, ((v58 >> 2) + (v58 << 6) + v60) ^ v58, v96);
        if (v97 && (BYTE8(v97) & 1) != 0)
        {
          (*(*v97 + 40))();
        }
      }

      if (v94 >= 0)
      {
        v55 = __p;
      }

      else
      {
        v55 = __p[0];
      }

      re::RenderFrame::emitGraph(v90, "MXI", v55);
      if (*v108 && (v108[8] & 1) != 0)
      {
        (*(**v108 + 40))();
      }

      if (SHIBYTE(v94) < 0)
      {
        operator delete(__p[0]);
      }

      v21 = v86 + 1;
      v20 = v80[42];
      if (!v20)
      {
        goto LABEL_72;
      }
    }
  }

  v61 = 1;
LABEL_75:
  result = a3[3];
  if (result)
  {
    v63 = !v61;
  }

  else
  {
    v63 = 1;
  }

  if (!v63)
  {
    re::PlanarReflectionContext::makeReflectionCameraMultiViews(result, a4, v92);
    if (*&v96[16])
    {
      v15 = v97;
      v64 = 3120 * *&v96[16];
      v14 = "Camera";
      do
      {
        (*(*a1 + 112))(a1, a2, a3, a4, a5, "Camera", v15);
        v15 += 3120;
        v64 -= 3120;
      }

      while (v64);
    }

    result = re::DynamicArray<re::CameraMultiView>::deinit(v96);
  }

  if (v61)
  {
    v81 = a3[41];
    if (v81)
    {
      v79 = *(v81 + 40);
      if (v79)
      {
        v65 = 0;
        while (1)
        {
          v83 = v65;
          result = re::BucketArray<re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>,4ul>::operator[](v81, v65);
          v66 = *(result + 6972);
          if (v66)
          {
            v67 = result + 6944;
            v15 = *(result + 6976);
            if (v15)
            {
              v14 = 0;
              v68 = *(result + 6960);
              do
              {
                if ((*v68 & 0x80000000) != 0)
                {
                  goto LABEL_95;
                }

                v68 += 216;
                ++v14;
              }

              while (v15 != v14);
              LODWORD(v14) = *(result + 6976);
            }

            else
            {
              LODWORD(v14) = 0;
            }

LABEL_95:
            v85 = result + 6944;
          }

          else
          {
            v67 = result + 32;
            v85 = result + 32 + 864 * *(result + 16);
          }

          v89 = v15;
          v87 = *(result + 6972);
LABEL_97:
          while (v66)
          {
            if (v15 == v14)
            {
              goto LABEL_117;
            }

            v69 = (*(v67 + 16) + 864 * v14 + 16);
LABEL_102:
            result = re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::find((a2 + 32), *v69 >> 1);
            if (result != -1)
            {
              v43 = *(*(a2 + 40) + 16 * result + 8);
              v46 = *(a2 + 16);
              if (v46 <= v43)
              {
                goto LABEL_122;
              }

              v70 = *(a2 + 24) + 424 * v43;
              result = *(v70 + 24);
              if (result)
              {
                re::PlanarReflectionContext::makeReflectionCameraMultiViews(result, v90, v92);
                if (*&v96[16])
                {
                  v71 = v97;
                  v72 = 3120 * *&v96[16];
                  do
                  {
                    (*(*a1 + 112))(a1, a2, v70, v90, v91, "Camera", v71);
                    v71 += 3120;
                    v72 -= 3120;
                  }

                  while (v72);
                }

                result = re::DynamicArray<re::CameraMultiView>::deinit(v96);
                v15 = v89;
                v66 = v87;
              }
            }

            if (v66)
            {
              v73 = v14 + 1;
              if (*(v67 + 32) <= (v14 + 1))
              {
                LODWORD(v14) = v14 + 1;
              }

              else
              {
                LODWORD(v14) = *(v67 + 32);
              }

              while (v14 != v73)
              {
                v74 = v73;
                v75 = *(*(v67 + 16) + 864 * v73++);
                if (v75 < 0)
                {
                  LODWORD(v14) = v74;
                  goto LABEL_97;
                }
              }
            }

            else
            {
              v67 += 864;
            }
          }

          if (v67 != v85)
          {
            break;
          }

LABEL_117:
          v65 = v83 + 1;
          if (v83 + 1 == v79)
          {
            return result;
          }
        }

        v69 = (v67 + 16);
        goto LABEL_102;
      }
    }
  }

  return result;
}

uint64_t re::RealityEmitterBase::cameraViewHandlerCommon<re::CameraView>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  v35 = *MEMORY[0x1E69E9840];
  v12 = 0x9E3779B97F4A7C17;
  re::CameraView::prepareEmitDefault(a7, a4, a5, a2, a3, a6);
  if (*(a7 + 8))
  {
    v13 = *(a7 + 16);
  }

  else
  {
    v13 = (a7 + 9);
  }

  v26 = a3;
  v14 = (*(a7 + 700) & *(a3 + 413));
  v15 = *(a7 + 705);
  v28 = v13;
  if ((v14 | v15))
  {
    if ((atomic_load_explicit(&qword_1EE1BFDD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFDD0))
    {
      qword_1EE1BFDC8 = re::Hash<re::StringSlice>::operator()("DynamicFunctionConstants", 0x18uLL);
      __cxa_guard_release(&qword_1EE1BFDD0);
    }

    v16 = qword_1EE1BFDC8;
    v17 = strlen(v13);
    if (v17)
    {
      MurmurHash3_x64_128(v13, v17, 0, &v30);
      v18 = (v31 - 0x61C8864680B583E9 + (v30 << 6) + (v30 >> 2)) ^ v30;
    }

    else
    {
      v18 = 0;
    }

    v19 = (v16 << 6) - 0x61C8864680B583E9 + (v16 >> 2) + v18;
    v20 = re::RenderGraphDataStore::tryGet<re::DynamicFunctionConstantsData>(a5, v19 ^ v16);
    if (!v20)
    {
      v30 = *(a4 + 392);
      v29[0] = 2;
      v20 = re::RenderGraphDataStore::add<re::DynamicFunctionConstantsData,re::PerFrameAllocator *,int>(a5, v19 ^ v16, &v30, v29);
    }

    v13 = v28;
    if (v14)
    {
      if ((atomic_load_explicit(&qword_1EE1BFDE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFDE0))
      {
        qword_1EE1BFDD8 = re::Hash<re::StringSlice>::operator()("EnableDepthMitigation", 0x15uLL);
        v12 = 0x9E3779B97F4A7C17;
        __cxa_guard_release(&qword_1EE1BFDE0);
      }

      LODWORD(v30) = 1;
      re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v20 + 8), &qword_1EE1BFDD8, &v30);
    }

    if (v15)
    {
      if ((atomic_load_explicit(&qword_1EE1BFDF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFDF0))
      {
        qword_1EE1BFDE8 = re::Hash<re::StringSlice>::operator()("EnableUserEnvironment", 0x15uLL);
        v12 = 0x9E3779B97F4A7C17;
        __cxa_guard_release(&qword_1EE1BFDF0);
      }

      LODWORD(v30) = 1;
      re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v20 + 8), &qword_1EE1BFDE8, &v30);
    }
  }

  v21 = strlen(a6);
  if (v21)
  {
    MurmurHash3_x64_128(a6, v21, 0, &v30);
    v22 = (v31 - 0x61C8864680B583E9 + (v30 << 6) + (v30 >> 2)) ^ v30;
  }

  else
  {
    v22 = 0;
  }

  v23 = strlen(v13);
  if (v23)
  {
    MurmurHash3_x64_128(v13, v23, 0, &v30);
    v12 = ((v31 - 0x61C8864680B583E9 + (v30 << 6) + (v30 >> 2)) ^ v30) - 0x61C8864680B583E9;
  }

  v24 = (v22 >> 2) + (v22 << 6) + v12;
  if (*(a1 + 136) == 1)
  {
    *(re::RenderGraphDataStore::add<re::TriangleFillModeData>(a5, v24 ^ v22) + 8) = 1;
  }

  v30 = &unk_1F5D12EC8;
  LODWORD(v31) = *(a1 + 140);
  re::RenderGraphDataStore::add<re::DefaultDepthFormatData,re::DefaultDepthFormatData&>(a5, v24 ^ v22, &v30);
  v30 = &unk_1F5D12F08;
  LODWORD(v31) = *(a1 + 144);
  re::RenderGraphDataStore::add<re::DefaultStencilFormatData,re::DefaultStencilFormatData&>(a5, v24 ^ v22, &v30);
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v33 = 0;
  if ((*(a4 + 448) & 1) == 0)
  {
    re::CameraView::registerFileProviders(a6, a7, *a4, v26, v29);
    re::DynamicArray<re::ProviderHandle>::operator=(&v30, v29);
    re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v29);
  }

  re::RenderFrame::emitGraph(a4, a6, v28);
  re::CameraView::unregisterFileProviders(*a4, &v30);
  return re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v30);
}

uint64_t re::RenderGraphDataStore::add<re::DynamicFunctionConstantsData,re::PerFrameAllocator *,int>(uint64_t a1, uint64_t a2, uint64_t *a3, int *a4)
{
  v7 = "N2re28DynamicFunctionConstantsDataE";
  if (("N2re28DynamicFunctionConstantsDataE" & 0x8000000000000000) != 0)
  {
    v8 = ("N2re28DynamicFunctionConstantsDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  v16 = (a2 + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583E9) ^ v7;
  v11 = (*(**(a1 + 8) + 32))(*(a1 + 8), 72, 8);
  v12 = *a3;
  v13 = *a4;
  *v11 = &unk_1F5D12DC0;
  *(v11 + 24) = 0u;
  *(v11 + 40) = 0u;
  *(v11 + 56) = 0u;
  *(v11 + 8) = 0u;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init((v11 + 8), v12, v13);
  v15 = v11;
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, &v16, &v15);
}

uint64_t re::RenderGraphDataStore::add<re::TriangleFillModeData>(uint64_t a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9 = 0;
  {
    re::introspect<re::TriangleFillModeData>(BOOL)::info = re::introspect_TriangleFillModeData(0);
  }

  v8 = re::introspect<re::TriangleFillModeData>(BOOL)::info;
  v4 = strlen(*(re::introspect<re::TriangleFillModeData>(BOOL)::info + 6));
  if (v4)
  {
    MurmurHash3_x64_128(*(re::introspect<re::TriangleFillModeData>(BOOL)::info + 6), v4, 0, v10);
    v5 = (v10[1] - 0x61C8864680B583E9 + (v10[0] << 6) + (v10[0] >> 2)) ^ v10[0];
  }

  else
  {
    v5 = 0;
  }

  v9 = v5;
  re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(a1 + 176, &v9, &v8);
  v10[0] = (a2 - 0x61C8864680B583E9 + (v9 << 6) + (v9 >> 2)) ^ v9;
  v6 = (*(**(a1 + 8) + 32))(*(a1 + 8), 16, 8);
  *v6 = &unk_1F5D03690;
  v6[1] = 0;
  v8 = v6;
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, v10, &v8);
}

uint64_t re::RenderGraphDataStore::add<re::DefaultDepthFormatData,re::DefaultDepthFormatData&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11 = 0;
  {
    re::introspect<re::DefaultDepthFormatData>(BOOL)::info = re::introspect_DefaultDepthFormatData(0);
  }

  v10 = re::introspect<re::DefaultDepthFormatData>(BOOL)::info;
  v6 = strlen(*(re::introspect<re::DefaultDepthFormatData>(BOOL)::info + 6));
  if (v6)
  {
    MurmurHash3_x64_128(*(re::introspect<re::DefaultDepthFormatData>(BOOL)::info + 6), v6, 0, v12);
    v7 = (v12[1] - 0x61C8864680B583E9 + (v12[0] << 6) + (v12[0] >> 2)) ^ v12[0];
  }

  else
  {
    v7 = 0;
  }

  v11 = v7;
  re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(a1 + 176, &v11, &v10);
  v12[0] = (a2 - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11;
  v8 = (*(**(a1 + 8) + 32))(*(a1 + 8), 16, 8);
  *v8 = &unk_1F5D12EC8;
  *(v8 + 8) = *(a3 + 8);
  v10 = v8;
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, v12, &v10);
}

uint64_t re::RenderGraphDataStore::add<re::DefaultStencilFormatData,re::DefaultStencilFormatData&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11 = 0;
  {
    re::introspect<re::DefaultStencilFormatData>(BOOL)::info = re::introspect_DefaultStencilFormatData(0);
  }

  v10 = re::introspect<re::DefaultStencilFormatData>(BOOL)::info;
  v6 = strlen(*(re::introspect<re::DefaultStencilFormatData>(BOOL)::info + 6));
  if (v6)
  {
    MurmurHash3_x64_128(*(re::introspect<re::DefaultStencilFormatData>(BOOL)::info + 6), v6, 0, v12);
    v7 = (v12[1] - 0x61C8864680B583E9 + (v12[0] << 6) + (v12[0] >> 2)) ^ v12[0];
  }

  else
  {
    v7 = 0;
  }

  v11 = v7;
  re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(a1 + 176, &v11, &v10);
  v12[0] = (a2 - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11;
  v8 = (*(**(a1 + 8) + 32))(*(a1 + 8), 16, 8);
  *v8 = &unk_1F5D12F08;
  *(v8 + 8) = *(a3 + 8);
  v10 = v8;
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, v12, &v10);
}

uint64_t re::DynamicArray<re::ProviderHandle>::operator=(uint64_t result, uint64_t a2)
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

uint64_t re::RealityEmitterBase::cameraViewHandlerCommon<re::CameraMultiView>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  v35 = *MEMORY[0x1E69E9840];
  v12 = 0x9E3779B97F4A7C17;
  re::CameraMultiView::prepareEmitDefaultInstancedMode(a7, a4, a5, a2, a3, a6);
  if (*(a7 + 8))
  {
    v13 = *(a7 + 16);
  }

  else
  {
    v13 = (a7 + 9);
  }

  v26 = a3;
  v14 = (*(a7 + 700) & *(a3 + 413));
  v15 = *(a7 + 705);
  v28 = v13;
  if ((v14 | v15))
  {
    if ((atomic_load_explicit(&qword_1EE1BFE00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFE00))
    {
      qword_1EE1BFDF8 = re::Hash<re::StringSlice>::operator()("DynamicFunctionConstants", 0x18uLL);
      __cxa_guard_release(&qword_1EE1BFE00);
    }

    v16 = qword_1EE1BFDF8;
    v17 = strlen(v13);
    if (v17)
    {
      MurmurHash3_x64_128(v13, v17, 0, &v30);
      v18 = (v31 - 0x61C8864680B583E9 + (v30 << 6) + (v30 >> 2)) ^ v30;
    }

    else
    {
      v18 = 0;
    }

    v19 = (v16 << 6) - 0x61C8864680B583E9 + (v16 >> 2) + v18;
    v20 = re::RenderGraphDataStore::tryGet<re::DynamicFunctionConstantsData>(a5, v19 ^ v16);
    if (!v20)
    {
      v30 = *(a4 + 392);
      v29[0] = 2;
      v20 = re::RenderGraphDataStore::add<re::DynamicFunctionConstantsData,re::PerFrameAllocator *,int>(a5, v19 ^ v16, &v30, v29);
    }

    v13 = v28;
    if (v14)
    {
      if ((atomic_load_explicit(&qword_1EE1BFE10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFE10))
      {
        qword_1EE1BFE08 = re::Hash<re::StringSlice>::operator()("EnableDepthMitigation", 0x15uLL);
        v12 = 0x9E3779B97F4A7C17;
        __cxa_guard_release(&qword_1EE1BFE10);
      }

      LODWORD(v30) = 1;
      re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v20 + 8), &qword_1EE1BFE08, &v30);
    }

    if (v15)
    {
      if ((atomic_load_explicit(&qword_1EE1BFE20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFE20))
      {
        qword_1EE1BFE18 = re::Hash<re::StringSlice>::operator()("EnableUserEnvironment", 0x15uLL);
        v12 = 0x9E3779B97F4A7C17;
        __cxa_guard_release(&qword_1EE1BFE20);
      }

      LODWORD(v30) = 1;
      re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v20 + 8), &qword_1EE1BFE18, &v30);
    }
  }

  v21 = strlen(a6);
  if (v21)
  {
    MurmurHash3_x64_128(a6, v21, 0, &v30);
    v22 = (v31 - 0x61C8864680B583E9 + (v30 << 6) + (v30 >> 2)) ^ v30;
  }

  else
  {
    v22 = 0;
  }

  v23 = strlen(v13);
  if (v23)
  {
    MurmurHash3_x64_128(v13, v23, 0, &v30);
    v12 = ((v31 - 0x61C8864680B583E9 + (v30 << 6) + (v30 >> 2)) ^ v30) - 0x61C8864680B583E9;
  }

  v24 = (v22 >> 2) + (v22 << 6) + v12;
  if (*(a1 + 136) == 1)
  {
    *(re::RenderGraphDataStore::add<re::TriangleFillModeData>(a5, v24 ^ v22) + 8) = 1;
  }

  v30 = &unk_1F5D12EC8;
  LODWORD(v31) = *(a1 + 140);
  re::RenderGraphDataStore::add<re::DefaultDepthFormatData,re::DefaultDepthFormatData&>(a5, v24 ^ v22, &v30);
  v30 = &unk_1F5D12F08;
  LODWORD(v31) = *(a1 + 144);
  re::RenderGraphDataStore::add<re::DefaultStencilFormatData,re::DefaultStencilFormatData&>(a5, v24 ^ v22, &v30);
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v33 = 0;
  if ((*(a4 + 448) & 1) == 0)
  {
    re::CameraView::registerFileProviders(a6, a7, *a4, v26, v29);
    re::DynamicArray<re::ProviderHandle>::operator=(&v30, v29);
    re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v29);
  }

  re::RenderFrame::emitGraph(a4, a6, v28);
  re::CameraView::unregisterFileProviders(*a4, &v30);
  return re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v30);
}

void re::RealityEmitterBase::emitCustomPostProcessGraph<re::CameraView>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 376);
  if (v4 && *v4 && re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet((v4 + 1), (a4 + 736)))
  {
    if (*(a4 + 8))
    {
      v8 = *(a4 + 16);
    }

    else
    {
      v8 = (a4 + 9);
    }

    {
      re::RealityEmitterBase::emitCustomPostProcessGraph<re::CameraView>(re::RenderSceneContext &,re::RenderFrame &,re::CameraView const&)::kCustomPostProcessTypeScopeHash = re::Hash<re::StringSlice>::operator()("CustomPostProcess", 0x11uLL);
    }

    v9 = re::RealityEmitterBase::emitCustomPostProcessGraph<re::CameraView>(re::RenderSceneContext &,re::RenderFrame &,re::CameraView const&)::kCustomPostProcessTypeScopeHash;
    v10 = strlen(v8);
    if (v10)
    {
      MurmurHash3_x64_128(v8, v10, 0, &v18);
      v11 = (*(&v18 + 1) - 0x61C8864680B583E9 + (v18 << 6) + (v18 >> 2)) ^ v18;
    }

    else
    {
      v11 = 0;
    }

    v12 = re::RenderGraphDataStore::add<re::CustomPostProcessRenderGraphData>((a3 + 32), ((v9 << 6) - 0x61C8864680B583E9 + (v9 >> 2) + v11) ^ v9);
    v13 = *(a2 + 376);
    re::ObjCObject::operator=((v12 + 8), v13);
    re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::operator=(v12 + 16, (v13 + 1));
    if (*(a4 + 144) == 1)
    {
      v14 = *(a4 + 176);
      v18 = *(a4 + 160);
      v19 = v14;
      v15 = *(a4 + 208);
      v20 = *(a4 + 192);
      v21 = v15;
    }

    else
    {
      re::Projection::cullingProjectionMatrix((a4 + 64), &v18);
    }

    v16 = v19;
    *(v12 + 64) = v18;
    *(v12 + 80) = v16;
    v17 = v21;
    *(v12 + 96) = v20;
    *(v12 + 112) = v17;
    re::RenderFrame::emitGraph(a3, "CustomPostProcess", v8);
  }
}

uint64_t re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v5 = *(*(a1 + 8) + 4 * (((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31)) % v2));
  if (v5 == 0x7FFFFFFF)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  if (*(v7 + 24 * v5 + 16) != v3)
  {
    while (1)
    {
      LODWORD(v5) = *(v7 + 24 * v5 + 8) & 0x7FFFFFFF;
      if (v5 == 0x7FFFFFFF)
      {
        break;
      }

      if (*(v7 + 24 * v5 + 16) == v3)
      {
        return v7 + 24 * v5 + 16;
      }
    }

    return 0;
  }

  return v7 + 24 * v5 + 16;
}

void re::RealityEmitterBase::viewHandler<re::CameraView>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    re::RealityEmitterBase::beforeCameraViewHandlerCommon<re::CameraView>(a1, a2, a3, a4, a5, "Camera", a6);
    (*(*a1 + 120))(a1, a2, a3, a4, a5, "Camera", a6);
    re::RealityEmitterBase::afterCameraViewHandlerRealityRenderer(a1, v13, a3, a4, a5, v14, a6);
  }

  else
  {
    (*(*a1 + 88))(a1, a2, a3, a4, a5, "Camera", a6);
    (*(*a1 + 104))(a1, a2, a3, a4, a5, "Camera", a6);
    if (*(a1 + 448) == 1)
    {
      if (*(a6 + 8))
      {
        v15 = *(a6 + 16);
      }

      else
      {
        v15 = (a6 + 9);
      }

      re::RenderFrame::emitGraph(a4, "OverdrawHeatmap", v15);
    }

    else
    {
      (*(*a1 + 128))(a1, a2, a3, a4, a5, "Camera", a6);
    }
  }

  ++*(a3 + 56);
}

void re::RealityEmitterBase::afterCameraViewHandlerRealityRenderer(uint64_t a1, uint64_t a2, uint64_t a3, re::RenderFrame *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18[11] = *MEMORY[0x1E69E9840];
  if (*(a7 + 8))
  {
    v11 = *(a7 + 16);
  }

  else
  {
    v11 = (a7 + 9);
  }

  if ((*(a7 + 703) & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_1EE1C0030, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0030))
    {
      qword_1EE1C0028 = re::Hash<re::StringSlice>::operator()("PostProcess", 0xBuLL);
      __cxa_guard_release(&qword_1EE1C0030);
    }

    v13 = qword_1EE1C0028;
    v14 = strlen(v11);
    if (v14)
    {
      MurmurHash3_x64_128(v11, v14, 0, v18);
      v16 = (v18[1] - 0x61C8864680B583E9 + (v18[0] << 6) + (v18[0] >> 2)) ^ v18[0];
    }

    else
    {
      v16 = 0;
    }

    v17 = (v13 << 6) - 0x61C8864680B583E9 + (v13 >> 2) + v16;
    re::CameraView::makeViewportPercentData(a7, v15, v18);
    re::RenderGraphDataStore::add<re::ViewportPercentData,re::ViewportPercentData>(a5, v17 ^ v13, v18);
    re::RenderFrame::emitGraph(a4, "PostProcess", v11);
    *(*(*(*(a4 + 1) + 112) + 1648) + 16) = 0;
  }

  re::RealityEmitterBase::emitCustomPostProcessGraph<re::CameraView>(a1, a3, a4, a7);
}

void re::RealityEmitterBase::viewHandler<re::CameraMultiView>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, char a7)
{
  v54 = *MEMORY[0x1E69E9840];
  if (*(a6 + 3104) == 1)
  {
    if (a7)
    {
      re::RealityEmitterBase::beforeCameraViewHandlerCommon<re::CameraMultiView>(a1, a2, a3, a4, a5, "Camera", a6);
      re::RealityEmitterBase::cameraViewHandlerCommon<re::CameraMultiView>(a1, a2, a3, a4, a5, "Camera", a6);
      if (*(a6 + 8))
      {
        v14 = *(a6 + 16);
      }

      else
      {
        v14 = (a6 + 9);
      }

      if ((*(a6 + 703) & 1) == 0)
      {
        if ((atomic_load_explicit(&qword_1EE1C0040, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0040))
        {
          qword_1EE1C0038 = re::Hash<re::StringSlice>::operator()("PostProcess", 0xBuLL);
          __cxa_guard_release(&qword_1EE1C0040);
        }

        v15 = qword_1EE1C0038;
        v16 = strlen(v14);
        if (v16)
        {
          MurmurHash3_x64_128(v14, v16, 0, &v43);
          v18 = (v44[0] - 0x61C8864680B583E9 + (v43 << 6) + (v43 >> 2)) ^ v43;
        }

        else
        {
          v18 = 0;
        }

        v25 = (v15 << 6) - 0x61C8864680B583E9 + (v15 >> 2) + v18;
        re::CameraMultiView::makeViewportPercentDataInstancedMode(a6, v17, &v43);
        v26 = re::RenderGraphDataStore::add<re::ViewportPercentData,re::ViewportPercentData>(a5, v25 ^ v15, &v43);
        v39 = xmmword_1E3047670;
        v40 = xmmword_1E3047680;
        v41 = xmmword_1E30476A0;
        v42 = xmmword_1E30474D0;
        re::DynamicArray<re::Matrix4x4<float>>::add(v45, &v39);
        v39 = xmmword_1E3047670;
        v40 = xmmword_1E3047680;
        v41 = xmmword_1E30476A0;
        v42 = xmmword_1E30474D0;
        re::DynamicArray<re::Matrix4x4<float>>::add(v45, &v39);
        v39 = xmmword_1E3047670;
        v40 = xmmword_1E3047680;
        v41 = xmmword_1E30476A0;
        v42 = xmmword_1E30474D0;
        re::DynamicArray<re::Matrix4x4<float>>::add(v48, &v39);
        v39 = xmmword_1E3047670;
        v40 = xmmword_1E3047680;
        v41 = xmmword_1E30476A0;
        v42 = xmmword_1E30474D0;
        re::DynamicArray<re::Matrix4x4<float>>::add(v48, &v39);
        v39 = xmmword_1E3047670;
        v40 = xmmword_1E3047680;
        v41 = xmmword_1E30476A0;
        v42 = xmmword_1E30474D0;
        re::DynamicArray<re::Matrix4x4<float>>::add(v44, &v39);
        v39 = xmmword_1E3047670;
        v40 = xmmword_1E3047680;
        v41 = xmmword_1E30476A0;
        v42 = xmmword_1E30474D0;
        re::DynamicArray<re::Matrix4x4<float>>::add(v44, &v39);
        v53 = 2;
        v27 = qword_1EE1C0038;
        v28 = strlen(v14);
        if (v28)
        {
          MurmurHash3_x64_128(v14, v28, 0, &v39);
          v29 = (*(&v39 + 1) - 0x61C8864680B583E9 + (v39 << 6) + (v39 >> 2)) ^ v39;
        }

        else
        {
          v29 = 0;
        }

        v30 = (v27 << 6) - 0x61C8864680B583E9 + (v27 >> 2) + v29;
        v38 = 0;
        {
          re::introspect<re::CameraMatrices>(BOOL)::info = re::introspect_CameraMatrices(0);
        }

        v31 = v30 ^ v27;
        v37 = re::introspect<re::CameraMatrices>(BOOL)::info;
        v32 = strlen(*(re::introspect<re::CameraMatrices>(BOOL)::info + 6));
        if (v32)
        {
          MurmurHash3_x64_128(*(re::introspect<re::CameraMatrices>(BOOL)::info + 6), v32, 0, &v39);
          v33 = (*(&v39 + 1) - 0x61C8864680B583E9 + (v39 << 6) + (v39 >> 2)) ^ v39;
        }

        else
        {
          v33 = 0;
        }

        v38 = v33;
        re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(a5 + 176, &v38, &v37);
        *&v39 = (v31 - 0x61C8864680B583E9 + (v38 << 6) + (v38 >> 2)) ^ v38;
        v34 = (*(**(a5 + 8) + 32))(*(a5 + 8), 176, 16);
        *v34 = &unk_1F5D03790;
        re::DynamicArray<re::Matrix4x4<float>>::DynamicArray(v34 + 8, v44);
        re::DynamicArray<re::Matrix4x4<float>>::DynamicArray(v34 + 48, v45);
        re::DynamicArray<re::Matrix4x4<float>>::DynamicArray(v34 + 88, v48);
        v35 = v51;
        *(v34 + 128) = v51;
        if (v35 == 1)
        {
          *(v34 + 144) = v52;
        }

        *(v34 + 160) = v53;
        v37 = v34;
        re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a5 + 64, &v39, &v37);
        re::RenderFrame::emitGraph(a4, "PostProcess", v14);
        *(*(*(a4[1] + 112) + 1648) + 16) = 0;
        if (v48[0])
        {
          if (v50)
          {
            (*(*v48[0] + 40))();
          }

          v50 = 0;
          memset(v48, 0, sizeof(v48));
          ++v49;
        }

        if (v45[0])
        {
          if (v47)
          {
            (*(*v45[0] + 40))();
          }

          v47 = 0;
          memset(v45, 0, sizeof(v45));
          ++v46;
        }

        if (v44[0] && v44[4])
        {
          (*(*v44[0] + 40))();
        }
      }
    }

    else
    {
      (*(*a1 + 96))(a1, a2, a3, a4, a5, "Camera", a6);
      (*(*a1 + 112))(a1, a2, a3, a4, a5, "Camera", a6);
      if (*(a1 + 448) == 1)
      {
        if (*(a6 + 8))
        {
          v24 = *(a6 + 16);
        }

        else
        {
          v24 = (a6 + 9);
        }

        re::RenderFrame::emitGraph(a4, "OverdrawHeatmap", v24);
      }

      else
      {
        (*(*a1 + 136))(a1, a2, a3, a4, a5, "Camera", a6);
      }
    }
  }

  else
  {
    v36 = (a6 + 9);
    v19 = 3104;
    v20 = a6;
    do
    {
      if (a7)
      {
        re::RealityEmitterBase::beforeCameraViewHandlerCommon<re::CameraView>(a1, a2, a3, a4, a5, "Camera", v20);
        (*(*a1 + 120))(a1, a2, a3, a4, a5, "Camera", v20);
        re::RealityEmitterBase::afterCameraViewHandlerRealityRenderer(a1, v21, a3, a4, a5, v22, v20);
      }

      else
      {
        (*(*a1 + 88))(a1, a2, a3, a4, a5, "Camera", v20);
        (*(*a1 + 104))(a1, a2, a3, a4, a5, "Camera", v20);
        if (*(a1 + 448) == 1)
        {
          if (*(a6 + 8))
          {
            v23 = *(a6 + 16);
          }

          else
          {
            v23 = v36;
          }

          re::RenderFrame::emitGraph(a4, "OverdrawHeatmap", v23);
        }

        else
        {
          (*(*a1 + 128))(a1, a2, a3, a4, a5, "Camera", v20);
        }
      }

      v20 += 1552;
      v19 -= 1552;
    }

    while (v19);
  }

  ++*(a3 + 56);
}

void re::RealityEmitterBase::ensureCommonProviderAssets(re::RealityEmitterBase *this, AssetService *a2)
{
  if (a2)
  {
    v4 = (this + 456);
    if (!*(this + 70))
    {
      (*(a2->var0 + 1))(&v13, a2, "engine:BuiltinRenderGraphResources/Common/realityRendererCamera.rerendergraph");
      v5 = v4[6];
      *(this + 552) = v13;
      v13 = v5;
      v6 = *(this + 71);
      *(this + 71) = v14;
      v14 = v6;
      re::AssetHandle::~AssetHandle(&v13);
    }

    if (!*(this + 58))
    {
      (*(a2->var0 + 1))(&v13, a2, "engine:BuiltinRenderGraphResources/SFBSystemShell/overdrawCamera.rerendergraph");
      v7 = *v4;
      *(this + 456) = v13;
      v13 = v7;
      v8 = *(this + 59);
      *(this + 59) = v14;
      v14 = v8;
      re::AssetHandle::~AssetHandle(&v13);
    }

    if (!*(this + 61))
    {
      (*(a2->var0 + 1))(&v13, a2, "engine:BuiltinRenderGraphResources/Common/overdrawHeatmap.rerendergraph");
      v9 = *(this + 30);
      *(this + 30) = v13;
      v13 = v9;
      v10 = *(this + 62);
      *(this + 62) = v14;
      v14 = v10;
      re::AssetHandle::~AssetHandle(&v13);
    }

    if (!*(this + 73))
    {
      (*(a2->var0 + 1))(&v13, a2, "engine:BuiltinRenderGraphResources/Common/realityRendererPostProcess.rerendergraph");
      v11 = *(this + 36);
      *(this + 36) = v13;
      v13 = v11;
      v12 = *(this + 74);
      *(this + 74) = v14;
      v14 = v12;
      re::AssetHandle::~AssetHandle(&v13);
    }
  }
}

void re::RealityEmitterBase::preloadAssetsCommonProviders(re::RealityEmitterBase *this, re::RenderManager *a2, AssetService *a3)
{
  re::RealityEmitterBase::ensureCommonProviderAssets(this, a3);
  if (a2)
  {
    v5 = *(a2 + 328);
    if ((v5 & 1) == 0 && (*(a2 + 329) & 1) == 0)
    {
      return;
    }

    if (*(this + 70))
    {
      re::AssetHandle::loadAsync((this + 552));
      if ((v5 & 1) == 0)
      {
        return;
      }
    }

    else if (!*(a2 + 328))
    {
      return;
    }
  }

  else if (*(this + 70))
  {
    re::AssetHandle::loadAsync((this + 552));
  }

  if (*(this + 58))
  {
    re::AssetHandle::loadAsync((this + 456));
  }

  if (*(this + 61))
  {
    re::AssetHandle::loadAsync((this + 480));
  }

  if (*(this + 73))
  {

    re::AssetHandle::loadAsync((this + 576));
  }
}

void re::RealityEmitterBase::registerCommonProviders(re::RealityEmitterBase *this, re::RenderGraphManager *a2, AssetService *a3)
{
  v79[5] = *MEMORY[0x1E69E9840];
  re::RealityEmitterBase::ensureCommonProviderAssets(this, a3);
  v6 = *(a2 + 87);
  v7 = v6[328];
  v8 = v6[331];
  v9 = v7 | v6[329];
  if (v7 == 1)
  {
    isValid = re::FontID::isValid((this + 280));
    if (!isValid)
    {
      v11 = re::globalAllocators(isValid);
      v12 = (*(*v11[2] + 32))(v11[2], 40, 8);
      re::DynamicString::DynamicString(&v76, &v74);
      *v12 = &unk_1F5CC5700;
      re::DynamicString::DynamicString((v12 + 8), &v76);
      if (v76 && (BYTE8(v76) & 1) != 0)
      {
        (*(*v76 + 40))(v76, v77);
      }

      *v12 = &unk_1F5D125E8;
      if (v74)
      {
        if (BYTE8(v74))
        {
          (*(*v74 + 40))(v74, v75);
        }

        v74 = 0u;
        v75 = 0u;
      }

      re::RenderGraphManager::addProviderInternal(a2, "UploadMultiSceneConstants", v12, 0, 1, &v76);
      v13 = re::StringID::operator=((this + 280), &v76);
      *(this + 37) = v77;
      if (v76)
      {
        if (v76)
        {
        }
      }
    }

    v14 = re::FontID::isValid((this + 304));
    if (!v14)
    {
      v15 = re::globalAllocators(v14);
      v16 = (*(*v15[2] + 32))(v15[2], 40, 8);
      re::DynamicString::DynamicString(&v76, v73);
      *v16 = &unk_1F5CC5700;
      re::DynamicString::DynamicString((v16 + 8), &v76);
      if (v76 && (BYTE8(v76) & 1) != 0)
      {
        (*(*v76 + 40))(v76, v77);
      }

      *v16 = &unk_1F5D12630;
      if (*&v73[0])
      {
        if (BYTE8(v73[0]))
        {
          (*(**&v73[0] + 40))();
        }

        memset(v73, 0, sizeof(v73));
      }

      re::RenderGraphManager::addProviderInternal(a2, "MipmapGenerationContext", v16, 0, 1, &v76);
      v17 = re::StringID::operator=((this + 304), &v76);
      *(this + 40) = v77;
      if (v76)
      {
        if (v76)
        {
        }
      }
    }

    v18 = re::FontID::isValid((this + 328));
    if (!v18)
    {
      v19 = re::globalAllocators(v18);
      v20 = (*(*v19[2] + 32))(v19[2], 64, 8);
      re::DynamicString::DynamicString(&v76, v72);
      *v20 = &unk_1F5CC5700;
      re::DynamicString::DynamicString((v20 + 1), &v76);
      if (v76 && (BYTE8(v76) & 1) != 0)
      {
        (*(*v76 + 40))(v76, v77);
      }

      *v20 = &unk_1F5D12678;
      v20[6] = 0;
      v20[7] = 0;
      v20[5] = 0;
      if (*&v72[0])
      {
        if (BYTE8(v72[0]))
        {
          (*(**&v72[0] + 40))();
        }

        memset(v72, 0, sizeof(v72));
      }

      (*(a3->var0 + 1))(&v76, a3, "engine:default.metallib");
      v21 = *(v20 + 5);
      *(v20 + 5) = v76;
      v76 = v21;
      v22 = v20[7];
      v20[7] = v77;
      v77 = v22;
      re::AssetHandle::~AssetHandle(&v76);
      re::RenderGraphManager::addProviderInternal(a2, "BlurGenerationContext", v20, 0, 1, &v76);
      v23 = re::StringID::operator=((this + 328), &v76);
      *(this + 43) = v77;
      if (v76)
      {
        if (v76)
        {
        }
      }
    }

    v24 = re::FontID::isValid((this + 352));
    if (!v24)
    {
      v25 = re::globalAllocators(v24);
      v26 = (*(*v25[2] + 32))(v25[2], 40, 8);
      re::DynamicString::DynamicString(&v76, v71);
      *v26 = &unk_1F5CC5700;
      re::DynamicString::DynamicString((v26 + 8), &v76);
      if (v76 && (BYTE8(v76) & 1) != 0)
      {
        (*(*v76 + 40))(v76, v77);
      }

      *v26 = &unk_1F5D126C0;
      if (*&v71[0])
      {
        if (BYTE8(v71[0]))
        {
          (*(**&v71[0] + 40))();
        }

        memset(v71, 0, sizeof(v71));
      }

      re::RenderGraphManager::addProviderInternal(a2, "ProbeWriteContext", v26, 0, 1, &v76);
      v27 = re::StringID::operator=((this + 352), &v76);
      *(this + 46) = v77;
      if (v76)
      {
        if (v76)
        {
        }
      }
    }

    v28 = re::FontID::isValid((this + 400));
    if (!v28)
    {
      v29 = re::globalAllocators(v28);
      v30 = (*(*v29[2] + 32))(v29[2], 40, 8);
      re::DynamicString::DynamicString(&v76, v70);
      *v30 = &unk_1F5CC5700;
      re::DynamicString::DynamicString((v30 + 8), &v76);
      if (v76 && (BYTE8(v76) & 1) != 0)
      {
        (*(*v76 + 40))(v76, v77);
      }

      *v30 = &unk_1F5D12708;
      if (*&v70[0])
      {
        if (BYTE8(v70[0]))
        {
          (*(**&v70[0] + 40))();
        }

        memset(v70, 0, sizeof(v70));
      }

      re::RenderGraphManager::addProviderInternal(a2, "CustomPostProcess", v30, 0, 1, &v76);
      v31 = re::StringID::operator=((this + 400), &v76);
      *(this + 52) = v77;
      if (v76)
      {
        if (v76)
        {
        }
      }
    }

    v32 = re::FontID::isValid((this + 424));
    if (!v32)
    {
      v33 = re::globalAllocators(v32);
      v34 = (*(*v33[2] + 32))(v33[2], 40, 8);
      re::DynamicString::DynamicString(&v76, v69);
      *v34 = &unk_1F5CC5700;
      re::DynamicString::DynamicString((v34 + 8), &v76);
      if (v76 && (BYTE8(v76) & 1) != 0)
      {
        (*(*v76 + 40))(v76, v77);
      }

      *v34 = &unk_1F5D12750;
      if (*&v69[0])
      {
        if (BYTE8(v69[0]))
        {
          (*(**&v69[0] + 40))();
        }

        memset(v69, 0, sizeof(v69));
      }

      re::RenderGraphManager::addProviderInternal(a2, "VisualProxyHighFidelity", v34, 0, 1, &v76);
      v35 = re::StringID::operator=((this + 424), &v76);
      *(this + 55) = v77;
      if (v76)
      {
        if (v76)
        {
        }
      }
    }

    v36 = *(this + 73);
    if (v36)
    {
      v37 = atomic_load((v36 + 896));
      if (v37 != 2)
      {
        re::AssetHandle::loadNow(*(this + 73), 0);
      }
    }

    if (!re::FontID::isValid((this + 648)))
    {
      v38 = (*(a3->var0 + 1))(&v76, a3, "engine:default.metallib");
      v39 = re::globalAllocators(v38);
      v40 = (*(*v39[2] + 32))(v39[2], 64, 8);
      re::MeshShadowProvider::MeshShadowProvider(v40, v68, &v76);
      if (*&v68[0])
      {
        if (BYTE8(v68[0]))
        {
          (*(**&v68[0] + 40))();
        }

        memset(v68, 0, sizeof(v68));
      }

      re::RenderGraphManager::addProviderInternal(a2, "ProjectiveMeshShadow", v40, 0, 1, v67);
      v41 = re::StringID::operator=((this + 648), v67);
      *(this + 83) = v67[2];
      if (v67[0])
      {
        if (v67[0])
        {
        }
      }

      re::AssetHandle::~AssetHandle(&v76);
    }

    if (re::GraphicsFeatureFlags::enableUIShadow(void)::onceToken != -1)
    {
      dispatch_once(&re::GraphicsFeatureFlags::enableUIShadow(void)::onceToken, &__block_literal_global_22_1);
    }

    if (re::GraphicsFeatureFlags::enableUIShadow(void)::gEnableUIShadow == 1)
    {
      v42 = re::FontID::isValid((this + 672));
      if (!v42)
      {
        v43 = re::globalAllocators(v42);
        v44 = (*(*v43[2] + 32))(v43[2], 64, 8);
        re::UIShadowProvider::UIShadowProvider(v44, v66);
        if (*&v66[0])
        {
          if (BYTE8(v66[0]))
          {
            (*(**&v66[0] + 40))();
          }

          memset(v66, 0, sizeof(v66));
        }

        re::RenderGraphManager::addProviderInternal(a2, "UIShadow", v44, 0, 1, &v76);
        v45 = re::StringID::operator=((this + 672), &v76);
        *(this + 86) = v77;
        if (v76)
        {
          if (v76)
          {
          }
        }
      }
    }

    v46 = re::FontID::isValid((this + 376));
    if (!v46)
    {
      v47 = re::globalAllocators(v46);
      v48 = v47[2];
      v79[0] = &unk_1F5D12798;
      v79[3] = v48;
      v79[4] = v79;
      v49 = re::globalAllocators(v47)[2];
      v78[0] = &unk_1F5D127F0;
      v78[3] = v49;
      v78[4] = v78;
      re::RenderGraphManager::addProvider(a2, "Camera", v79, v78, -100, &v76);
      v50 = re::StringID::operator=((this + 376), &v76);
      *(this + 49) = v77;
      if (v76)
      {
        if (v76)
        {
        }
      }

      *&v76 = 0;
      *(&v76 + 1) = &str_67;
      re::FunctionBase<24ul,void ()(char const*,char const*,re::RenderFrame &)>::destroyCallable(v78);
      re::FunctionBase<24ul,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::destroyCallable(v79);
    }
  }

  if (v9)
  {
    v51 = *(this + 70);
    if (v51)
    {
      v52 = atomic_load((v51 + 896));
      if (v52 != 2)
      {
        re::AssetHandle::loadNow(*(this + 70), 0);
      }
    }
  }

  if ((v7 | v8))
  {
    v53 = re::FontID::isValid((this + 696));
    if (!v53)
    {
      v54 = re::globalAllocators(v53);
      v55 = (*(*v54[2] + 32))(v54[2], 104, 8);
      re::DynamicString::DynamicString(&v76, v65);
      *v55 = &unk_1F5CC5700;
      re::DynamicString::DynamicString((v55 + 8), &v76);
      if (v76 && (BYTE8(v76) & 1) != 0)
      {
        (*(*v76 + 40))(v76, v77);
      }

      *v55 = &unk_1F5D15390;
      *(v55 + 40) = 1;
      *(v55 + 41) = 0;
      *(v55 + 45) = 0;
      *(v55 + 48) = 0u;
      *(v55 + 64) = 0u;
      *(v55 + 80) = 0u;
      *(v55 + 96) = 0;
      *(this + 90) = v55;
      if (*&v65[0])
      {
        if (BYTE8(v65[0]))
        {
          (*(**&v65[0] + 40))();
        }

        memset(v65, 0, sizeof(v65));
      }

      (*(a3->var0 + 1))(&v76, a3, "engine:mxi.metallib");
      v56 = *(this + 90);
      v57 = *(&v76 + 1);
      v58 = *(v56 + 48);
      *(v56 + 48) = v76;
      *(v56 + 56) = v57;
      v76 = v58;
      v59 = *(v56 + 64);
      *(v56 + 64) = v77;
      v77 = v59;
      re::AssetHandle::~AssetHandle(&v76);
      (*(a3->var0 + 1))(&v76, a3, "engine:mxiProxyMaterialIOS_Reprojection.rematerial");
      v60 = *(this + 90);
      v61 = *(&v76 + 1);
      v62 = *(v60 + 72);
      *(v60 + 72) = v76;
      *(v60 + 80) = v61;
      v76 = v62;
      v63 = *(v60 + 88);
      *(v60 + 88) = v77;
      v77 = v63;
      re::AssetHandle::~AssetHandle(&v76);
      re::RenderGraphManager::addProviderInternal(a2, "MXI", *(this + 90), 0, 1, &v76);
      v64 = re::StringID::operator=((this + 696), &v76);
      *(this + 89) = v77;
      if (v76)
      {
        if (v76)
        {
        }
      }
    }
  }

  *(this + 28) = a2;
}

void re::RealityEmitterBase::unregisterCommonProviders(re::RealityEmitterBase *this, re::RenderGraphManager *a2)
{
  if (re::FontID::isValid((this + 232)))
  {
    re::StringID::StringID(v27, (this + 232));
    v27[2] = *(this + 31);
    v4 = re::RenderGraphManager::removeProvider(a2, v27);
    if (v27[0])
    {
      if (v27[0])
      {
      }
    }

    v27[0] = 0;
    v27[1] = &str_67;
    re::ProviderHandle::invalidate((this + 232));
  }

  if (re::FontID::isValid((this + 256)))
  {
    re::StringID::StringID(v26, this + 16);
    v26[2] = *(this + 34);
    v5 = re::RenderGraphManager::removeProvider(a2, v26);
    if (v26[0])
    {
      if (v26[0])
      {
      }
    }

    v26[0] = 0;
    v26[1] = &str_67;
    re::ProviderHandle::invalidate((this + 256));
  }

  if (re::FontID::isValid((this + 280)))
  {
    re::StringID::StringID(v25, (this + 280));
    v25[2] = *(this + 37);
    v6 = re::RenderGraphManager::removeProvider(a2, v25);
    if (v25[0])
    {
      if (v25[0])
      {
      }
    }

    v25[0] = 0;
    v25[1] = &str_67;
    re::ProviderHandle::invalidate((this + 280));
  }

  if (re::FontID::isValid((this + 304)))
  {
    re::StringID::StringID(v24, this + 19);
    v24[2] = *(this + 40);
    v7 = re::RenderGraphManager::removeProvider(a2, v24);
    if (v24[0])
    {
      if (v24[0])
      {
      }
    }

    v24[0] = 0;
    v24[1] = &str_67;
    re::ProviderHandle::invalidate((this + 304));
  }

  if (re::FontID::isValid((this + 352)))
  {
    re::StringID::StringID(v23, this + 22);
    v23[2] = *(this + 46);
    v8 = re::RenderGraphManager::removeProvider(a2, v23);
    if (v23[0])
    {
      if (v23[0])
      {
      }
    }

    v23[0] = 0;
    v23[1] = &str_67;
    re::ProviderHandle::invalidate((this + 352));
  }

  if (re::FontID::isValid((this + 400)))
  {
    re::StringID::StringID(v22, this + 25);
    v22[2] = *(this + 52);
    v9 = re::RenderGraphManager::removeProvider(a2, v22);
    if (v22[0])
    {
      if (v22[0])
      {
      }
    }

    v22[0] = 0;
    v22[1] = &str_67;
    re::ProviderHandle::invalidate((this + 400));
  }

  if (re::FontID::isValid((this + 424)))
  {
    re::StringID::StringID(v21, (this + 424));
    v21[2] = *(this + 55);
    v10 = re::RenderGraphManager::removeProvider(a2, v21);
    if (v21[0])
    {
      if (v21[0])
      {
      }
    }

    v21[0] = 0;
    v21[1] = &str_67;
    re::ProviderHandle::invalidate((this + 424));
  }

  if (re::FontID::isValid((this + 504)))
  {
    re::StringID::StringID(v20, (this + 504));
    v20[2] = *(this + 65);
    v11 = re::RenderGraphManager::removeProvider(a2, v20);
    if (v20[0])
    {
      if (v20[0])
      {
      }
    }

    v20[0] = 0;
    v20[1] = &str_67;
    re::ProviderHandle::invalidate((this + 504));
  }

  if (re::FontID::isValid((this + 528)))
  {
    re::StringID::StringID(v19, this + 33);
    v19[2] = *(this + 68);
    v12 = re::RenderGraphManager::removeProvider(a2, v19);
    if (v19[0])
    {
      if (v19[0])
      {
      }
    }

    v19[0] = 0;
    v19[1] = &str_67;
    re::ProviderHandle::invalidate((this + 528));
  }

  if (re::FontID::isValid((this + 648)))
  {
    re::StringID::StringID(v18, (this + 648));
    v18[2] = *(this + 83);
    v13 = re::RenderGraphManager::removeProvider(a2, v18);
    if (v18[0])
    {
      if (v18[0])
      {
      }
    }

    v18[0] = 0;
    v18[1] = &str_67;
    re::ProviderHandle::invalidate((this + 648));
  }

  if (re::FontID::isValid((this + 376)))
  {
    re::StringID::StringID(v17, (this + 376));
    v17[2] = *(this + 49);
    v14 = re::RenderGraphManager::removeProvider(a2, v17);
    if (v17[0])
    {
      if (v17[0])
      {
      }
    }

    v17[0] = 0;
    v17[1] = &str_67;
    re::ProviderHandle::invalidate((this + 376));
  }

  if (re::FontID::isValid((this + 696)))
  {
    re::StringID::StringID(v16, (this + 696));
    v16[2] = *(this + 89);
    v15 = re::RenderGraphManager::removeProvider(a2, v16);
    if (v16[0])
    {
      if (v16[0])
      {
      }
    }

    v16[0] = 0;
    v16[1] = &str_67;
    re::ProviderHandle::invalidate((this + 696));
    *(this + 90) = 0;
  }
}

uint64_t re::RealityEmitterBase::pushPipelineCompilationDataToDataStore(re::RealityEmitterBase *this, re::RenderFrame *a2, re::RenderGraphDataStore *a3)
{
  {
    goto LABEL_8;
  }

  while (1)
  {
    v12 = 0xC1ECEDF69A9CD01;
    v4 = re::RenderFrameData::stream((a2 + 264), &v12);
    result = re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(v4, &v11, &v12);
    if (v13 == 0x7FFFFFFF)
    {
      break;
    }

    v6 = *(v4 + 16) + 96 * v13;
    if (!result)
    {
      break;
    }

    if (*(result + 40))
    {
      v8 = re::BucketArray<RESubscriptionHandle,4ul>::operator[](result, 0);
      return re::RenderGraphDataStore::add<re::PipelineCompilationData,re::PipelineCompilationData&>(a3, re::RealityEmitterBase::pushPipelineCompilationDataToDataStore(re::RenderFrame &,re::RenderGraphDataStore &)::kPipelineCompilationDataScopeHash, v8);
    }

    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "first", 754);
    _os_crash();
    __break(1u);
LABEL_8:
    v9 = a2;
    a2 = v9;
    if (v10)
    {
      re::RealityEmitterBase::pushPipelineCompilationDataToDataStore(re::RenderFrame &,re::RenderGraphDataStore &)::kPipelineCompilationDataScopeHash = re::Hash<re::StringSlice>::operator()("PipelineCompilationData", 0x17uLL);
      a2 = v9;
    }
  }

  return result;
}

uint64_t re::RenderGraphDataStore::add<re::PipelineCompilationData,re::PipelineCompilationData&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = "N2re23PipelineCompilationDataE";
  if (("N2re23PipelineCompilationDataE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re23PipelineCompilationDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  v12 = (a2 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v9 = (*(**(a1 + 8) + 32))(*(a1 + 8), 16, 8);
  *v9 = &unk_1F5CEFB58;
  *(v9 + 8) = *(a3 + 8);
  v11 = v9;
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, &v12, &v11);
}

void re::RealityEmitterBase::handleRenderFrameData(re::RealityEmitterBase *this, re::RenderFrame *a2)
{
  v2 = a2;
  v251 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v236, 5083, *(a2 + 1));
  re::RenderFrameContextBuilder::build(&v235, v2, v231);
  if (atomic_load_explicit(&qword_1EE1BFE30, memory_order_acquire))
  {
    goto LABEL_2;
  }

  while (1)
  {
    if (__cxa_guard_acquire(&qword_1EE1BFE30))
    {
      qword_1EE1BFE28 = re::Hash<re::StringSlice>::operator()("RenderGraphDataPipeData", 0x17uLL);
      __cxa_guard_release(&qword_1EE1BFE30);
    }

LABEL_2:
    if ((atomic_load_explicit(&qword_1EE1BFE40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFE40))
    {
      qword_1EE1BFE38 = re::Hash<re::StringSlice>::operator()("RenderFrame", 0xBuLL);
      __cxa_guard_release(&qword_1EE1BFE40);
    }

    v4 = *(v2 + 49);
    if ((atomic_load_explicit(&qword_1EE1BFE50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFE50))
    {
      v201 = qword_1EE1BFE38;
      v202 = re::Hash<re::StringSlice>::operator()("RenderFrameContext", 0x12uLL);
      qword_1EE1BFE48 = (v201 - 0x61C8864680B583E9 + (v202 << 6) + (v202 >> 2)) ^ v202;
      __cxa_guard_release(&qword_1EE1BFE50);
    }

    v5 = "N2re27RenderGraphDataStoreWrapperINS_18RenderFrameContextEEE";
    if (("N2re27RenderGraphDataStoreWrapperINS_18RenderFrameContextEEE" & 0x8000000000000000) != 0)
    {
      v6 = ("N2re27RenderGraphDataStoreWrapperINS_18RenderFrameContextEEE" & 0x7FFFFFFFFFFFFFFFLL);
      v7 = 5381;
      do
      {
        v5 = v7;
        v8 = *v6++;
        v7 = (33 * v7) ^ v8;
      }

      while (v8);
    }

    *v244 = (qword_1EE1BFE48 - 0x61C8864680B583E9 + (v5 << 6) + (v5 >> 2)) ^ v5;
    v9 = (*(**(v2 + 5) + 32))(*(v2 + 5), 152, 8);
    *&v239.var0 = v4;
    memset(v243, 0, 24);
    v243[24] = 64;
    *&v243[32] = 0;
    v243[40] = 1;
    *v9 = &unk_1F5D12978;
    *(v9 + 8) = v4;
    *(v9 + 16) = v4;
    *(v9 + 24) = 0;
    v239.var1 = 0;
    *&v240[0] = 0;
    *(v9 + 32) = 0;
    *(v9 + 96) = v4;
    *&v242[24] = 0;
    *(v240 + 8) = 0u;
    *(v9 + 40) = 0u;
    *(v9 + 56) = 0;
    *(v9 + 80) = 0u;
    *&v242[8] = 0u;
    v241 = 0u;
    *(v9 + 64) = 0u;
    *(&v240[1] + 1) = 0;
    *v242 = 0;
    v10 = *v243;
    v11 = *&v243[16];
    *(v9 + 129) = *&v243[25];
    *(v9 + 120) = v11;
    *(v9 + 104) = v10;
    re::HashBrown<re::WeakStringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,void,false>::deinit(&v240[1]);
    re::FixedArray<re::RenderSceneContext>::deinit(&v239.var1);
    *&v239.var0 = v9;
    v13 = *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v2 + 96, v244, &v239);
    v14 = v233;
    v239.var1 = v233;
    *&v240[0] = 0;
    *&v239.var0 = v4;
    if (v233)
    {
      if (v233 >= 0x9A90E7D95BC60ALL)
      {
        goto LABEL_302;
      }

      v15 = (*(*v4 + 32))(v4, 424 * v233, 8);
      *&v240[0] = v15;
      if (!v15)
      {
        re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        v15 = _os_crash();
        __break(1u);
        goto LABEL_11;
      }

      while (1)
      {
        v14 = (v14 - 1);
        if (!v14)
        {
          break;
        }

LABEL_11:
        v15 = re::RenderSceneContext::RenderSceneContext(v15, v4) + 424;
      }

      re::RenderSceneContext::RenderSceneContext(v15, v4);
      v4 = *&v239.var0;
    }

    v17 = *(v13 + 16);
    if (!v17 || v17 == v4)
    {
      break;
    }

LABEL_303:
    re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296);
    _os_crash();
    __break(1u);
  }

  *(v13 + 16) = v4;
  v18 = *(v13 + 24);
  v19 = *(v13 + 32);
  var1 = v239.var1;
  v21 = *&v240[0];
  *&v239.var0 = v17;
  v239.var1 = v18;
  *(v13 + 24) = var1;
  *(v13 + 32) = v21;
  *&v240[0] = v19;
  re::FixedArray<re::RenderSceneContext>::deinit(&v239);
  if ((atomic_load_explicit(&qword_1EE1BFE60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFE60))
  {
    qword_1EE1BFE58 = (qword_1EE1BFE38 - 0x61C8864680B583E9 + (qword_1EE1BFE28 << 6) + (qword_1EE1BFE28 >> 2)) ^ qword_1EE1BFE28;
    __cxa_guard_release(&qword_1EE1BFE60);
  }

  v22 = re::RenderGraphDataStore::add<re::RenderGraphDataPipeData>(v2 + 32, qword_1EE1BFE58);
  v23 = *(v2 + 40);
  *(v22 + 8) = v23;
  *(v13 + 136) = v23;
  v219 = v13;
  if (v233)
  {
    v24 = 0;
    v25 = 0;
    v26 = 400;
    while (1)
    {
      v27 = *(v13 + 24);
      if (v27 <= v25)
      {
        break;
      }

      v28 = &v234[v24];
      v29 = *(v13 + 32);
      *v244 = v234[v24 + 1];
      v30 = re::RenderFrameData::stream((v2 + 264), v244);
      v31 = **v28;
      v32 = qword_1EE1BFE28;
      v33 = strlen(v31);
      if (v33)
      {
        MurmurHash3_x64_128(v31, v33, 0, &v239);
        v34 = &v239.var1[64 * *&v239.var0 - 0x61C8864680B583E9 + (*&v239.var0 >> 2)] ^ *&v239.var0;
      }

      else
      {
        v34 = 0;
      }

      v35 = re::RenderGraphDataStore::add<re::RenderGraphDataPipeData>(v2 + 32, ((v32 << 6) - 0x61C8864680B583E9 + (v32 >> 2) + v34) ^ v32);
      v36 = *(v30 + 48);
      *(v35 + 8) = v36;
      *(v29 + v26) = v36;
      ++v25;
      v24 += 196;
      v26 += 424;
      v13 = v219;
      if (v25 >= v233)
      {
        goto LABEL_24;
      }
    }

    v238 = 0;
    v241 = 0u;
    *v242 = 0u;
    memset(v240, 0, sizeof(v240));
    v239 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v244 = 136315906;
    *&v244[4] = "operator[]";
    v245 = 1024;
    v246 = 468;
    v247 = 2048;
    v248 = v25;
    v249 = 2048;
    v250 = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_298:
    v238 = 0;
    v241 = 0u;
    *v242 = 0u;
    memset(v240, 0, sizeof(v240));
    v239 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v244 = 136315906;
    *&v244[4] = "operator[]";
    v245 = 1024;
    v246 = 468;
    v247 = 2048;
    v248 = v27;
    v249 = 2048;
    v250 = v25;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_299:
    v238 = 0;
    v241 = 0u;
    *v242 = 0u;
    memset(v240, 0, sizeof(v240));
    v239 = 0;
    v14 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v244 = 136315906;
    *&v244[4] = "operator[]";
    v245 = 1024;
    v246 = 468;
    v247 = 2048;
    v248 = v27;
    v249 = 2048;
    v250 = v25;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_300:
    re::internal::assertLog(4, v157, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || allocator() == other.allocator()", "operator=", 526);
    _os_crash();
    __break(1u);
LABEL_301:
    re::internal::assertLog(4, v157, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || allocator() == other.allocator()", "operator=", 526);
    _os_crash();
    __break(1u);
LABEL_302:
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 424, v14);
    _os_crash();
    __break(1u);
    goto LABEL_303;
  }

LABEL_24:
  v37 = *(v2 + 1);
  if ((atomic_load_explicit(&qword_1EE1BFE80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFE80))
  {
    qword_1EE1BFE78 = re::Hash<re::StringSlice>::operator()("RenderFrame", 0xBuLL);
    __cxa_guard_release(&qword_1EE1BFE80);
  }

  v211 = *(v13 + 8);
  v38 = v37[14];
  if (v38 && re::DrawingManager::shouldRenderProfilerNode(v38))
  {
    if ((atomic_load_explicit(&qword_1EE1BFE90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFE90))
    {
      v209 = qword_1EE1BFE78;
      v210 = re::Hash<re::StringSlice>::operator()("ProfilerOverlay", 0xFuLL);
      qword_1EE1BFE88 = (v209 - 0x61C8864680B583E9 + (v210 << 6) + (v210 >> 2)) ^ v210;
      __cxa_guard_release(&qword_1EE1BFE90);
    }

    v39 = "N2re29ProfilerOverlayEnablementDataE";
    if (("N2re29ProfilerOverlayEnablementDataE" & 0x8000000000000000) != 0)
    {
      v40 = ("N2re29ProfilerOverlayEnablementDataE" & 0x7FFFFFFFFFFFFFFFLL);
      v41 = 5381;
      do
      {
        v39 = v41;
        v42 = *v40++;
        v41 = (33 * v41) ^ v42;
      }

      while (v42);
    }

    *&v239.var0 = (qword_1EE1BFE88 - 0x61C8864680B583E9 + (v39 << 6) + (v39 >> 2)) ^ v39;
    v43 = (*(**(v2 + 5) + 32))(*(v2 + 5), 16, 8);
    *v43 = &unk_1F5D129F8;
    *(v43 + 8) = 1;
    *v244 = v43;
    re::HashBrown<unsigned long,re::RenderGraphBuilderData *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<re::RenderGraphBuilderData *>,false>::addNew(v2 + 18, &v239, v244);
  }

  if (v231[0])
  {
    v44 = v231[1];
  }

  else
  {
    v44 = 1;
  }

  *(v13 + 144) = v44;
  if ((atomic_load_explicit(&qword_1EE1BFEA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFEA0))
  {
    v203 = qword_1EE1BFE78;
    v204 = re::Hash<re::StringSlice>::operator()("SceneArray", 0xAuLL);
    qword_1EE1BFE98 = (v203 - 0x61C8864680B583E9 + (v204 << 6) + (v204 >> 2)) ^ v204;
    __cxa_guard_release(&qword_1EE1BFEA0);
  }

  v45 = "N2re14SceneArrayDataE";
  if (("N2re14SceneArrayDataE" & 0x8000000000000000) != 0)
  {
    v46 = ("N2re14SceneArrayDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v47 = 5381;
    do
    {
      v45 = v47;
      v48 = *v46++;
      v47 = (33 * v47) ^ v48;
    }

    while (v48);
  }

  *&v239.var0 = (qword_1EE1BFE98 - 0x61C8864680B583E9 + (v45 << 6) + (v45 >> 2)) ^ v45;
  v49 = (*(**(v2 + 5) + 32))(*(v2 + 5), 48, 8);
  *v49 = &unk_1F5D12A40;
  *(v49 + 40) = 0;
  *(v49 + 16) = 0;
  *(v49 + 24) = 0;
  *(v49 + 32) = 0;
  *(v49 + 8) = v211;
  re::DynamicArray<float *>::setCapacity((v49 + 8), 0);
  ++*(v49 + 32);
  *v244 = v49;
  v50 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v2 + 96, &v239, v244);
  if (v233)
  {
    v51 = *v50;
    v52 = v234;
    v53 = 1568 * v233;
    do
    {
      re::DynamicArray<re::TransitionCondition *>::add((v51 + 8), *v52);
      v52 += 196;
      v53 -= 1568;
    }

    while (v53);
  }

  v54 = v37[20];
  if ((atomic_load_explicit(&qword_1EE1BFEB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFEB0))
  {
    v205 = qword_1EE1BFE78;
    v206 = re::Hash<re::StringSlice>::operator()("ToneMapping", 0xBuLL);
    qword_1EE1BFEA8 = (v205 - 0x61C8864680B583E9 + (v206 << 6) + (v206 >> 2)) ^ v206;
    __cxa_guard_release(&qword_1EE1BFEB0);
  }

  v55 = re::RenderGraphDataStore::add<re::TonemapParametersData>(v2 + 32, qword_1EE1BFEA8);
  re::TonemapUserParameters::computeRenderParameters((v54 + 136), &v239);
  v56 = *v242;
  *(v55 + 88) = *&v242[16];
  v57 = *&v243[16];
  *(v55 + 104) = *v243;
  *(v55 + 120) = v57;
  v58 = v239;
  *(v55 + 24) = v240[0];
  v59 = v241;
  *(v55 + 40) = v240[1];
  *(v55 + 56) = v59;
  *(v55 + 72) = v56;
  *(v55 + 136) = *&v243[32];
  *(v55 + 8) = v58;
  updated = re::ColorManager::updateTonemapLUTs(v54, (v55 + 8));
  if (updated)
  {
    re::FixedArray<int>::init<>((v55 + 144), v211, 0x400uLL);
    re::FixedArray<float>::copy(*(v55 + 152), *(v55 + 160), (v54 + 224), 0x400uLL);
    re::FixedArray<int>::init<>((v55 + 168), v211, 0x400uLL);
    updated = re::FixedArray<float>::copy(*(v55 + 176), *(v55 + 184), (v54 + 4320), 0x400uLL);
  }

  if ((atomic_load_explicit(&qword_1EE1BFEC0, memory_order_acquire) & 1) == 0)
  {
    updated = __cxa_guard_acquire(&qword_1EE1BFEC0);
    if (updated)
    {
      v207 = qword_1EE1BFE78;
      v208 = re::Hash<re::StringSlice>::operator()("CameraTMData", 0xCuLL);
      qword_1EE1BFEB8 = (v207 - 0x61C8864680B583E9 + (v208 << 6) + (v208 >> 2)) ^ v208;
      __cxa_guard_release(&qword_1EE1BFEC0);
    }
  }

  v61 = "N2re27RenderGraphDataStoreWrapperINS_12CameraTMDataEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_12CameraTMDataEEE" & 0x8000000000000000) != 0)
  {
    v62 = ("N2re27RenderGraphDataStoreWrapperINS_12CameraTMDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
    v63 = 5381;
    do
    {
      v61 = v63;
      v64 = *v62++;
      v63 = (33 * v63) ^ v64;
    }

    while (v64);
  }

  *&v239.var0 = (qword_1EE1BFEB8 - 0x61C8864680B583E9 + (v61 << 6) + (v61 >> 2)) ^ v61;
  v65 = re::globalAllocators(updated);
  v66 = (*(*v65[2] + 32))(v65[2], 1048, 8);
  bzero(v66 + 2, 0x408uLL);
  *v66 = &unk_1F5D12A80;
  __asm { FMOV            V0.2S, #1.0 }

  v66[1] = _D0;
  *v244 = v66;
  v72 = *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v2 + 48, &v239, v244);
  v73 = v37[43];
  if (*(v73 + 608))
  {
    *(v72 + 16) = 1;
  }

  v74 = v37[15];
  if (v74)
  {
    *(v72 + 8) = vcvts_n_f32_u64(v74[234], 8uLL);
    v75 = *(v73 + 704);
    if (v75)
    {
      (*(*v75 + 16))(v75);
    }

    v76 = v74[245];
    *&v239.var0 = v74[246];
    v239.var1 = v76;
    if (re::ColorManager::updateISPTonemapLUTAccelerated(v54))
    {
      re::FixedArray<int>::init<>((v55 + 192), v211, 0x400uLL);
      re::FixedArray<float>::copy(*(v55 + 200), *(v55 + 208), (v54 + 8416), 0x400uLL);
    }
  }

  *(v13 + 104) = (*(**(v13 + 136) + 24))(*(v13 + 136));
  *(v13 + 112) = (*(**(v13 + 136) + 216))(*(v13 + 136));
  v77 = v37[12];
  v244[0] = 0;
  if (v77)
  {
    *&v239.var0 = 0xE32A9F87631BCE4ALL;
    v239.var1 = "overdraw:enable";
    v78 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v77, &v239, v244);
    if (*&v239.var0)
    {
      if (*&v239.var0)
      {
      }
    }

    v79 = v244[0];
  }

  else
  {
    v79 = 0;
  }

  if (v79 != *(this + 448))
  {
    if (v79)
    {
      v80 = *(this + 28);
      v81 = re::AssetHandle::blockUntilLoaded<re::RenderGraphAsset>((this + 456));
      re::RenderGraphManager::addProviderInternal(v80, "Camera", (v81 + 8), 0, 0, &v239);
      v82 = re::StringID::operator=((this + 504), &v239);
      *(this + 65) = *&v240[0];
      if (*&v239.var0)
      {
        if (*&v239.var0)
        {
        }
      }
    }

    else
    {
      v83 = *(this + 28);
      re::StringID::StringID(&v239, (this + 504));
      *&v240[0] = *(this + 65);
      v84 = re::RenderGraphManager::removeProvider(v83, &v239);
      if (*&v239.var0)
      {
        if (*&v239.var0)
        {
        }
      }

      *&v239.var0 = 0;
      v239.var1 = &str_67;
      re::ProviderHandle::invalidate((this + 504));
    }

    *(this + 448) = v244[0];
  }

  v213 = v233;
  if (v233)
  {
    v27 = 0;
    v212 = this;
    do
    {
      v25 = *(v13 + 24);
      if (v25 <= v27)
      {
        goto LABEL_298;
      }

      v85 = *(v13 + 32) + 424 * v27;
      *(v85 + 392) = v27;
      v25 = v233;
      if (v233 <= v27)
      {
        goto LABEL_299;
      }

      v86 = &v234[196 * v27];
      v87 = **v86;
      if (v87)
      {
        v88 = *v87;
        if (*v87)
        {
          v89 = v87[1];
          if (v89)
          {
            v90 = (v87 + 2);
            do
            {
              v88 = 31 * v88 + v89;
              v91 = *v90++;
              v89 = v91;
            }

            while (v91);
          }

          v92 = v88 & 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v92 = 0;
        }
      }

      else
      {
        v92 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v237 = v92;
      v239.var0 = v27;
      if (re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::find((v13 + 40), v92) == -1)
      {
        re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,void,false>::internalAdd(v13 + 40, &v237, &v239);
        v87 = **v86;
      }

      v93 = strlen(v87);
      v94 = 0x9E3779B97F4A7C17;
      if (v93)
      {
        MurmurHash3_x64_128(v87, v93, 0, &v239);
        v94 = (&v239.var1[64 * *&v239.var0 - 0x61C8864680B583E9 + (*&v239.var0 >> 2)] ^ *&v239.var0) - 0x61C8864680B583E9;
      }

      if ((atomic_load_explicit(&qword_1EE1BFED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFED0))
      {
        qword_1EE1BFEC8 = re::Hash<re::StringSlice>::operator()("SceneIndex", 0xAuLL);
        __cxa_guard_release(&qword_1EE1BFED0);
      }

      v95 = "N2re14SceneIndexDataE";
      if (("N2re14SceneIndexDataE" & 0x8000000000000000) != 0)
      {
        v96 = 5381;
        v97 = ("N2re14SceneIndexDataE" & 0x7FFFFFFFFFFFFFFFLL);
        do
        {
          v95 = v96;
          v98 = *v97++;
          v96 = (33 * v96) ^ v98;
        }

        while (v98);
      }

      *&v239.var0 = (((v94 + (qword_1EE1BFEC8 << 6) + (qword_1EE1BFEC8 >> 2)) ^ qword_1EE1BFEC8) - 0x61C8864680B583E9 + (v95 << 6) + (v95 >> 2)) ^ v95;
      v99 = (*(**(v2 + 5) + 32))(*(v2 + 5), 16, 8);
      *v99 = &unk_1F5D06A60;
      v99[1] = 0xFFFFFFFFLL;
      *v244 = v99;
      *(*re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v2 + 96, &v239, v244) + 8) = *(v85 + 392);
      if (*(v85 + 396))
      {
        if (v86[190])
        {
          goto LABEL_97;
        }

        *(v85 + 396) = 0;
      }

      else if (v86[190])
      {
        *(v85 + 396) = 1;
LABEL_97:
        *(v85 + 397) = *(v86 + 1521);
      }

      if ((atomic_load_explicit(&qword_1EE1BFEE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFEE0))
      {
        qword_1EE1BFED8 = re::Hash<re::StringSlice>::operator()("MeshScenes", 0xAuLL);
        __cxa_guard_release(&qword_1EE1BFEE0);
      }

      v100 = "N2re27RenderGraphDataStoreWrapperINS_15MeshSceneArraysEEE";
      if (("N2re27RenderGraphDataStoreWrapperINS_15MeshSceneArraysEEE" & 0x8000000000000000) != 0)
      {
        v101 = 5381;
        v102 = ("N2re27RenderGraphDataStoreWrapperINS_15MeshSceneArraysEEE" & 0x7FFFFFFFFFFFFFFFLL);
        do
        {
          v100 = v101;
          v103 = *v102++;
          v101 = (33 * v101) ^ v103;
        }

        while (v103);
      }

      *v244 = (((v94 + (qword_1EE1BFED8 << 6) + (qword_1EE1BFED8 >> 2)) ^ qword_1EE1BFED8) - 0x61C8864680B583E9 + (v100 << 6) + (v100 >> 2)) ^ v100;
      v104 = (*(**(v2 + 5) + 32))(*(v2 + 5), 64, 8);
      *v104 = &unk_1F5D12AC0;
      *(v104 + 16) = 0;
      *(v104 + 8) = 0;
      *(v104 + 40) = 0;
      *(v104 + 48) = 0;
      *(v104 + 32) = 0;
      *(v104 + 56) = 0;
      *(&v240[0] + 1) = 0;
      *&v240[1] = 0;
      *&v239.var0 = 0;
      v239.var1 = 0;
      *(v104 + 24) = 3;
      LODWORD(v240[0]) = 3;
      re::DynamicOverflowArray<re::DynamicArray<re::CameraView> const**,2ul>::operator=(v104 + 8, (v86 + 5));
      re::DynamicOverflowArray<re::DynamicArray<re::CameraView> const**,2ul>::operator=((v86 + 5), &v239);
      if (*&v239.var0 && (v240[0] & 1) == 0)
      {
        (*(**&v239.var0 + 40))();
      }

      v105 = *(v104 + 48);
      *(v104 + 48) = v86[10];
      v86[10] = v105;
      ++*(v104 + 56);
      ++*(v86 + 22);
      *&v239.var0 = v104;
      v106 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v2 + 96, v244, &v239);
      v217 = *v106;
      if ((atomic_load_explicit(&qword_1EE1BFEF0, memory_order_acquire) & 1) == 0)
      {
        v106 = __cxa_guard_acquire(&qword_1EE1BFEF0);
        if (v106)
        {
          qword_1EE1BFEE8 = re::Hash<re::StringSlice>::operator()("VFXScenes", 9uLL);
          __cxa_guard_release(&qword_1EE1BFEF0);
        }
      }

      v107 = v86[12];
      if (v107)
      {
        v108 = "N2re27RenderGraphDataStoreWrapperINS_11BucketArrayINS_12DynamicArrayINS_8VFXSceneEEELm4EEEEE";
        if (("N2re27RenderGraphDataStoreWrapperINS_11BucketArrayINS_12DynamicArrayINS_8VFXSceneEEELm4EEEEE" & 0x8000000000000000) != 0)
        {
          v109 = 5381;
          v110 = ("N2re27RenderGraphDataStoreWrapperINS_11BucketArrayINS_12DynamicArrayINS_8VFXSceneEEELm4EEEEE" & 0x7FFFFFFFFFFFFFFFLL);
          do
          {
            v108 = v109;
            v111 = *v110++;
            v109 = (33 * v109) ^ v111;
          }

          while (v111);
        }

        *v244 = (((v94 + (qword_1EE1BFEE8 << 6) + (qword_1EE1BFEE8 >> 2)) ^ qword_1EE1BFEE8) - 0x61C8864680B583E9 + (v108 << 6) + (v108 >> 2)) ^ v108;
        v112 = re::globalAllocators(v106);
        v113 = (*(*v112[2] + 32))(v112[2], 64, 8);
        *v113 = &unk_1F5D12B00;
        *(v113 + 16) = 0;
        *(v113 + 8) = 0;
        *(v113 + 40) = 0;
        *(v113 + 48) = 0;
        *(v113 + 32) = 0;
        *(v113 + 56) = 0;
        *(&v240[0] + 1) = 0;
        *&v240[1] = 0;
        *&v239.var0 = 0;
        v239.var1 = 0;
        *(v113 + 24) = 3;
        LODWORD(v240[0]) = 3;
        re::DynamicOverflowArray<re::DynamicArray<re::CameraView> const**,2ul>::operator=(v113 + 8, v107);
        re::DynamicOverflowArray<re::DynamicArray<re::CameraView> const**,2ul>::operator=(v107, &v239);
        if (*&v239.var0 && (v240[0] & 1) == 0)
        {
          (*(**&v239.var0 + 40))();
        }

        v114 = *(v113 + 48);
        *(v113 + 48) = *(v107 + 40);
        *(v107 + 40) = v114;
        ++*(v113 + 56);
        ++*(v107 + 48);
        *&v239.var0 = v113;
        v216 = *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v2 + 48, v244, &v239) + 8;
      }

      else
      {
        v216 = 0;
      }

      v115 = (*(**(v85 + 400) + 944))(*(v85 + 400));
      v215 = v115;
      if ((atomic_load_explicit(&qword_1EE1BFF00, memory_order_acquire) & 1) == 0)
      {
        v115 = __cxa_guard_acquire(&qword_1EE1BFF00);
        if (v115)
        {
          qword_1EE1BFEF8 = re::Hash<re::StringSlice>::operator()("LightContext", 0xCuLL);
          __cxa_guard_release(&qword_1EE1BFF00);
        }
      }

      v218 = v87;
      v116 = "N2re27RenderGraphDataStoreWrapperINS_13LightContextsEEE";
      if (("N2re27RenderGraphDataStoreWrapperINS_13LightContextsEEE" & 0x8000000000000000) != 0)
      {
        v117 = 5381;
        v118 = ("N2re27RenderGraphDataStoreWrapperINS_13LightContextsEEE" & 0x7FFFFFFFFFFFFFFFLL);
        do
        {
          v116 = v117;
          v119 = *v118++;
          v117 = (33 * v117) ^ v119;
        }

        while (v119);
      }

      *&v239.var0 = (((v94 + (qword_1EE1BFEF8 << 6) + (qword_1EE1BFEF8 >> 2)) ^ qword_1EE1BFEF8) - 0x61C8864680B583E9 + (v116 << 6) + (v116 >> 2)) ^ v116;
      v120 = re::globalAllocators(v115);
      v121 = (*(*v120[2] + 32))(v120[2], 304, 8);
      *v121 = &unk_1F5D12B40;
      *(v121 + 16) = 0;
      *(v121 + 8) = 0;
      v122 = 1;
      *(v121 + 24) = 1;
      *(v121 + 40) = 0;
      *(v121 + 48) = 0;
      *(v121 + 32) = 0;
      *(v121 + 56) = 0;
      re::BucketArray<RESubscriptionHandle,8ul>::swap(v121 + 8, (v86 + 27));
      *(v121 + 96) = 0;
      *(v121 + 80) = 0u;
      *(v121 + 64) = 0u;
      *(v121 + 100) = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v121 + 64), v86 + 34);
      *(v121 + 112) = 0;
      *(v121 + 120) = 0;
      *(v121 + 128) = 0;
      *(v121 + 112) = v86[40];
      v86[40] = 0;
      *(v121 + 120) = v86[41];
      v86[41] = 0;
      v123 = *(v121 + 128);
      *(v121 + 128) = v86[42];
      v86[42] = v123;
      *(v121 + 136) = 0;
      *(v121 + 144) = 0;
      *(v121 + 152) = 0;
      *(v121 + 136) = v86[43];
      v86[43] = 0;
      *(v121 + 144) = v86[44];
      v86[44] = 0;
      v124 = *(v121 + 152);
      *(v121 + 152) = v86[45];
      v86[45] = v124;
      *(v121 + 160) = 0;
      *(v121 + 168) = 0;
      *(v121 + 176) = 0;
      *(v121 + 160) = v86[46];
      v86[46] = 0;
      *(v121 + 168) = v86[47];
      v86[47] = 0;
      v125 = *(v121 + 176);
      *(v121 + 176) = v86[48];
      v86[48] = v125;
      *(v121 + 184) = 0;
      *(v121 + 192) = 0;
      *(v121 + 200) = 0;
      *(v121 + 184) = v86[49];
      v86[49] = 0;
      *(v121 + 192) = v86[50];
      v86[50] = 0;
      v126 = *(v121 + 200);
      *(v121 + 200) = v86[51];
      v86[51] = v126;
      *(v121 + 208) = 0;
      *(v121 + 216) = 0;
      *(v121 + 224) = 0;
      *(v121 + 208) = v86[52];
      v86[52] = 0;
      *(v121 + 216) = v86[53];
      v86[53] = 0;
      v127 = *(v121 + 224);
      *(v121 + 224) = v86[54];
      v86[54] = v127;
      *(v121 + 232) = 0;
      *(v121 + 240) = 0;
      *(v121 + 248) = 0;
      *(v121 + 232) = v86[55];
      v86[55] = 0;
      *(v121 + 240) = v86[56];
      v86[56] = 0;
      v128 = *(v121 + 248);
      *(v121 + 248) = v86[57];
      v86[57] = v128;
      v129 = *(v86 + 29);
      *(v121 + 272) = *(v86 + 480);
      *(v121 + 256) = v129;
      v130 = *(v86 + 61);
      *(v121 + 296) = *(v86 + 252);
      *(v121 + 280) = v130;
      *v244 = v121;
      v131 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v2 + 48, &v239, v244);
      v132 = *v131;
      v133 = *v131 + 8;
      if (*(v86 + 1505))
      {
        v134 = 0;
      }

      else
      {
        v134 = !re::LightContexts::isEmpty((*v131 + 8));
        v122 = *(v86 + 1505);
      }

      *(v85 + 408) = v134;
      *(v85 + 410) = v122 & *(v132 + 297) & 1;
      *(v85 + 409) = *(v132 + 296);
      *(v85 + 411) = *(v86 + 1504);
      v135 = (*(**(v85 + 400) + 1072))();
      if (v135)
      {
        v136 = *(v135 + 128) != 0;
      }

      else
      {
        v136 = 0;
      }

      *(v85 + 413) = v136;
      *(v85 + 418) = *(v86 + 624);
      *(v85 + 414) = *(v86 + 625);
      v214 = (*(**(v85 + 400) + 448))();
      v137 = (*(**(v85 + 400) + 1232))();
      if (v137)
      {
        v138 = *(v137 + 16) != 0;
      }

      else
      {
        v138 = 0;
      }

      *(v85 + 412) = v138;
      *(v85 + 336) = *(v86 + 97);
      v139 = v86[189];
      if (v139)
      {
        *&v239.var0 = &unk_1F5D12888;
        v239.var1 = v139;
        if ((atomic_load_explicit(&qword_1EE1BFF10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFF10))
        {
          qword_1EE1BFF08 = re::Hash<re::StringSlice>::operator()("IBLContextOverride", 0x12uLL);
          __cxa_guard_release(&qword_1EE1BFF10);
        }

        v140 = "N2re23IBLContextOverrideScopeE";
        if (("N2re23IBLContextOverrideScopeE" & 0x8000000000000000) != 0)
        {
          v141 = 5381;
          v142 = ("N2re23IBLContextOverrideScopeE" & 0x7FFFFFFFFFFFFFFFLL);
          do
          {
            v140 = v141;
            v143 = *v142++;
            v141 = (33 * v141) ^ v143;
          }

          while (v143);
        }

        *v244 = (((v94 + (qword_1EE1BFF08 << 6) + (qword_1EE1BFF08 >> 2)) ^ qword_1EE1BFF08) - 0x61C8864680B583E9 + (v140 << 6) + (v140 >> 2)) ^ v140;
        v144 = (*(**(v2 + 5) + 32))(*(v2 + 5), 16, 8);
        *v144 = &unk_1F5D12888;
        v144[1] = v239.var1;
        v238 = v144;
        v137 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v2 + 96, v244, &v238);
      }

      v145 = v2;
      v146 = v86[80];
      v147 = v86[79];
      if (v146)
      {
        v148 = v146[5] != 0;
        if (!v147)
        {
          goto LABEL_138;
        }
      }

      else
      {
        v148 = 0;
        if (!v147)
        {
LABEL_138:
          v149 = 0;
          goto LABEL_139;
        }
      }

      v149 = v147[5] != 0;
LABEL_139:
      if (v148 || v149)
      {
        if ((atomic_load_explicit(&qword_1EE1BFF20, memory_order_acquire) & 1) == 0)
        {
          v137 = __cxa_guard_acquire(&qword_1EE1BFF20);
          if (v137)
          {
            qword_1EE1BFF18 = re::Hash<re::StringSlice>::operator()("TextInfo", 8uLL);
            __cxa_guard_release(&qword_1EE1BFF20);
          }
        }

        v150 = "N2re27RenderGraphDataStoreWrapperINS_8TextInfoEEE";
        if (("N2re27RenderGraphDataStoreWrapperINS_8TextInfoEEE" & 0x8000000000000000) != 0)
        {
          v151 = 5381;
          v152 = ("N2re27RenderGraphDataStoreWrapperINS_8TextInfoEEE" & 0x7FFFFFFFFFFFFFFFLL);
          do
          {
            v150 = v151;
            v153 = *v152++;
            v151 = (33 * v151) ^ v153;
          }

          while (v153);
        }

        *&v239.var0 = (((v94 + (qword_1EE1BFF18 << 6) + (qword_1EE1BFF18 >> 2)) ^ qword_1EE1BFF18) - 0x61C8864680B583E9 + (v150 << 6) + (v150 >> 2)) ^ v150;
        v154 = re::globalAllocators(v137);
        v155 = (*(*v154[2] + 32))(v154[2], 24, 8);
        v155[1] = 0;
        v155[2] = 0;
        *v155 = &unk_1F5D12B80;
        *v244 = v155;
        v156 = *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v145 + 48, &v239, v244);
        if (v148)
        {
          *(v156 + 16) = v146;
        }

        v14 = (v156 + 8);
        if (v149)
        {
          *v14 = v147;
        }
      }

      else
      {
        v14 = 0;
      }

      v2 = v145;
      this = (v86 + 64);
      *(v85 + 48) = v218;
      *(v85 + 8) = v133;
      *(v85 + 16) = (*(**(v85 + 400) + 376))(*(v85 + 400));
      *(v85 + 24) = v215;
      *(v85 + 32) = v217 + 8;
      *(v85 + 40) = v216;
      *(v85 + 64) = v14;
      *(v85 + 80) = (*(**(v85 + 400) + 792))();
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v85 + 88, (v86 + 17));
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v85 + 128, (v86 + 22));
      *(v85 + 168) = v86[2];
      *(v85 + 176) = *(v86 + 13);
      *(v85 + 192) = *(v86 + 15);
      v158 = (v85 + 208);
      if ((v85 + 208) != v86 + 64)
      {
        v159 = *v158;
        if (*v158 && *this && v159 != *this)
        {
          goto LABEL_300;
        }

        *&v239.var0 = 0;
        v239.var1 = 0;
        LODWORD(v240[0]) = 1;
        *(&v240[0] + 1) = 0;
        *&v240[1] = 0;
        v160 = *(v85 + 224);
        if (v160)
        {
          if (*(v85 + 216))
          {
            re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::move(&v239, v85 + 208);
          }

          else
          {
            *&v239.var0 = v159;
            *(v85 + 224) = v160 + 2;
            LODWORD(v240[0]) = 3;
          }
        }

        else
        {
          LODWORD(v240[0]) = 3;
          re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(&v239, (v85 + 208));
        }

        re::DynamicOverflowArray<re::DynamicArray<re::CameraView> const**,2ul>::operator=(v85 + 208, (v86 + 64));
        re::DynamicOverflowArray<re::DynamicArray<re::CameraView> const**,2ul>::operator=((v86 + 64), &v239);
        if (*&v239.var0 && (v240[0] & 1) == 0)
        {
          (*(**&v239.var0 + 40))();
        }

        v161 = *(v85 + 248);
        *(v85 + 248) = v86[69];
        v86[69] = v161;
        ++*(v85 + 256);
        ++*(v86 + 140);
      }

      v162 = (v85 + 264);
      v163 = v86 + 71;
      this = v212;
      if ((v85 + 264) != v86 + 71)
      {
        v164 = *v162;
        if (*v162 && *v163 && v164 != *v163)
        {
          goto LABEL_301;
        }

        *&v239.var0 = 0;
        v239.var1 = 0;
        LODWORD(v240[0]) = 1;
        *(&v240[0] + 1) = 0;
        *&v240[1] = 0;
        v165 = *(v85 + 280);
        if (v165)
        {
          if (*(v85 + 272))
          {
            re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::move(&v239, v85 + 264);
          }

          else
          {
            *&v239.var0 = v164;
            *(v85 + 280) = v165 + 2;
            LODWORD(v240[0]) = 3;
          }
        }

        else
        {
          LODWORD(v240[0]) = 3;
          re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(&v239, (v85 + 264));
        }

        re::DynamicOverflowArray<re::DynamicArray<re::CameraView> const**,2ul>::operator=(v85 + 264, (v86 + 71));
        re::DynamicOverflowArray<re::DynamicArray<re::CameraView> const**,2ul>::operator=((v86 + 71), &v239);
        if (*&v239.var0 && (v240[0] & 1) == 0)
        {
          (*(**&v239.var0 + 40))();
        }

        v166 = *(v85 + 304);
        *(v85 + 304) = v86[76];
        v86[76] = v166;
        ++*(v85 + 312);
        ++*(v86 + 154);
      }

      v167 = *(v86 + 312);
      *(v85 + 322) = *(v86 + 626);
      *(v85 + 320) = v167;
      *(v85 + 328) = (*(**(v85 + 400) + 832))(*(v85 + 400));
      *(v85 + 352) = v86[3];
      *(v85 + 360) = (*(**(v85 + 400) + 1008))();
      *(v85 + 368) = v86[4];
      *(v85 + 376) = (*(**(v85 + 400) + 1040))();
      *(v85 + 384) = v214;
      v168 = *(v85 + 16);
      if (v168)
      {
        re::IBLContext::updateRenderSceneContextFlags(v168, (v85 + 416), (v85 + 417));
      }

      v13 = v219;
      if ((*(v85 + 416) & 1) != 0 || (*(v85 + 417) & 1) != 0 || (*(v85 + 408) & 1) != 0 || (*(v85 + 409) & 1) != 0 || (*(v85 + 410) & 1) != 0 || (*(v85 + 411) & 1) != 0 || (*(v85 + 412) & 1) != 0 || (*(v85 + 418) & 1) != 0 || (*(v85 + 414) & 1) != 0 || *(v85 + 415) == 1)
      {
        if ((atomic_load_explicit(&qword_1EE1BFF60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFF60))
        {
          qword_1EE1BFF58 = re::Hash<re::StringSlice>::operator()("DynamicFunctionConstants", 0x18uLL);
          __cxa_guard_release(&qword_1EE1BFF60);
        }

        v169 = qword_1EE1BFF58;
        v170 = strlen(*(v85 + 48));
        if (v170)
        {
          MurmurHash3_x64_128(*(v85 + 48), v170, 0, &v239);
          v171 = &v239.var1[64 * *&v239.var0 - 0x61C8864680B583E9 + (*&v239.var0 >> 2)] ^ *&v239.var0;
        }

        else
        {
          v171 = 0;
        }

        v172 = (v169 << 6) - 0x61C8864680B583E9 + (v169 >> 2) + v171;
        v173 = re::RenderGraphDataStore::tryGet<re::DynamicFunctionConstantsData>(v2 + 32, v172 ^ v169);
        if (!v173)
        {
          *&v239.var0 = v211;
          *v244 = 7;
          v173 = re::RenderGraphDataStore::add<re::DynamicFunctionConstantsData,re::PerFrameAllocator *,int>(v2 + 32, v172 ^ v169, &v239, v244);
        }

        if (*(v85 + 408) == 1)
        {
          if ((atomic_load_explicit(&qword_1EE1BFF70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFF70))
          {
            qword_1EE1BFF68 = re::Hash<re::StringSlice>::operator()("EnableDynamicLighting", 0x15uLL);
            __cxa_guard_release(&qword_1EE1BFF70);
          }

          v239.var0 = 1;
          re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v173 + 8), &qword_1EE1BFF68, &v239);
        }

        if (*(v85 + 409) == 1)
        {
          if ((atomic_load_explicit(&qword_1EE1BFF80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFF80))
          {
            qword_1EE1BFF78 = re::Hash<re::StringSlice>::operator()("EnableShadowedDynamicLight", 0x1AuLL);
            __cxa_guard_release(&qword_1EE1BFF80);
          }

          v239.var0 = 1;
          re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v173 + 8), &qword_1EE1BFF78, &v239);
        }

        if (*(v85 + 411) == 1)
        {
          if ((atomic_load_explicit(&qword_1EE1BFF90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFF90))
          {
            qword_1EE1BFF88 = re::Hash<re::StringSlice>::operator()("EnableAREnvProbe", 0x10uLL);
            __cxa_guard_release(&qword_1EE1BFF90);
          }

          v239.var0 = 1;
          re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v173 + 8), &qword_1EE1BFF88, &v239);
          v174 = re::RenderGraphDataStore::tryGet<re::ProbeContext>(v2 + 32, "ProbeContext", "RenderFrame");
          if ((atomic_load_explicit(&qword_1EE1BFFA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFFA0))
          {
            qword_1EE1BFF98 = re::Hash<re::StringSlice>::operator()("LocalProbeCount", 0xFuLL);
            __cxa_guard_release(&qword_1EE1BFFA0);
          }

          re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v173 + 8), &qword_1EE1BFF98, (v174 + 24));
          if ((atomic_load_explicit(&qword_1EE1BFFB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFFB0))
          {
            qword_1EE1BFFA8 = re::Hash<re::StringSlice>::operator()("GlobalProbeCount", 0x10uLL);
            __cxa_guard_release(&qword_1EE1BFFB0);
          }

          re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v173 + 8), &qword_1EE1BFFA8, (v174 + 28));
          if ((atomic_load_explicit(&qword_1EE1BFFC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFFC0))
          {
            qword_1EE1BFFB8 = re::Hash<re::StringSlice>::operator()("EnableCrossBlending", 0x13uLL);
            __cxa_guard_release(&qword_1EE1BFFC0);
          }

          v239.var0 = *(v174 + 32);
          re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v173 + 8), &qword_1EE1BFFB8, &v239);
          v13 = v219;
        }

        if (*(v85 + 412) == 1)
        {
          if ((atomic_load_explicit(&qword_1EE1BFFD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFFD0))
          {
            qword_1EE1BFFC8 = re::Hash<re::StringSlice>::operator()("EnableVirtualEnvironmentProbes", 0x1EuLL);
            __cxa_guard_release(&qword_1EE1BFFD0);
          }

          v239.var0 = 1;
          re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v173 + 8), &qword_1EE1BFFC8, &v239);
        }

        if (*(v85 + 415) == 1)
        {
          if ((atomic_load_explicit(&qword_1EE1BFFE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFFE0))
          {
            qword_1EE1BFFD8 = re::Hash<re::StringSlice>::operator()("PortalClippingMode", 0x12uLL);
            __cxa_guard_release(&qword_1EE1BFFE0);
          }

          v175 = *(v85 + 414);
          if (v175 != 1)
          {
            v175 = 4;
          }

          v239.var0 = v175;
          re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v173 + 8), &qword_1EE1BFFD8, &v239);
        }

        if (*(v85 + 418) == 1)
        {
          if ((atomic_load_explicit(&qword_1EE1BFFF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFFF0))
          {
            qword_1EE1BFFE8 = re::Hash<re::StringSlice>::operator()("PortalEnableProbeLightingBlend", 0x1EuLL);
            __cxa_guard_release(&qword_1EE1BFFF0);
          }

          v239.var0 = 1;
          re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v173 + 8), &qword_1EE1BFFE8, &v239);
        }

        if (*(v85 + 416) == 1)
        {
          if ((atomic_load_explicit(&qword_1EE1C0000, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0000))
          {
            qword_1EE1BFFF8 = re::Hash<re::StringSlice>::operator()("EnableIBLRotation", 0x11uLL);
            __cxa_guard_release(&qword_1EE1C0000);
          }

          v239.var0 = *(v85 + 416);
          re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v173 + 8), &qword_1EE1BFFF8, &v239);
        }

        if (*(v85 + 417) == 1)
        {
          if ((atomic_load_explicit(&qword_1EE1C0010, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0010))
          {
            qword_1EE1C0008 = re::Hash<re::StringSlice>::operator()("EnableIBLBlending", 0x11uLL);
            __cxa_guard_release(&qword_1EE1C0010);
          }

          v239.var0 = *(v85 + 417);
          re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v173 + 8), &qword_1EE1C0008, &v239);
        }
      }

      (*(*v212 + 72))(v212, v86, v13 + 8, v85, v2 + 32);
      ++v27;
    }

    while (v27 != v213);
  }

  if (*(v13 + 144))
  {
    (*(*this + 80))(this, v13 + 8, v2, v2 + 32);
  }

  else if (*(*(v2 + 1) + 327) == 1)
  {
    v176 = *(this + 28);
    v177 = re::AssetHandle::blockUntilLoaded<re::RenderGraphAsset>((this + 552));
    re::RenderGraphManager::addProviderInternal(v176, "Camera", (v177 + 8), 0, 0, &v239);
    v178 = re::StringID::operator=((this + 600), &v239);
    *(this + 77) = *&v240[0];
    if (*&v239.var0)
    {
      if (*&v239.var0)
      {
      }
    }

    re::RealityEmitterBase::emitFrameContextRealityRenderer(this, (v13 + 8), v2, (v2 + 32));
    v179 = *(this + 28);
    re::StringID::StringID(v230, (this + 600));
    v230[2] = *(this + 77);
    v180 = re::RenderGraphManager::removeProvider(v179, v230);
    if (v230[0])
    {
      if (v230[0])
      {
      }
    }

    v230[0] = 0;
    v230[1] = &str_67;
    re::ProviderHandle::invalidate((this + 600));
  }

  else
  {
    v181 = *(this + 28);
    v182 = re::AssetHandle::blockUntilLoaded<re::RenderGraphAsset>((this + 552));
    re::RenderGraphManager::addProviderInternal(v181, "Camera", (v182 + 8), 0, 0, &v239);
    v183 = re::StringID::operator=((this + 600), &v239);
    *(this + 77) = *&v240[0];
    if (*&v239.var0)
    {
      if (*&v239.var0)
      {
      }
    }

    v184 = *(this + 28);
    v185 = re::AssetHandle::blockUntilLoaded<re::RenderGraphAsset>((this + 576));
    re::RenderGraphManager::addProviderInternal(v184, "PostProcess", (v185 + 8), 0, 0, &v239);
    v186 = re::StringID::operator=((this + 624), &v239);
    *(this + 80) = *&v240[0];
    if (*&v239.var0)
    {
      if (*&v239.var0)
      {
      }
    }

    v187 = re::globalAllocators(v186);
    v188 = (*(*v187[2] + 32))(v187[2], 40, 8);
    re::DepthStencilSplitterEmptyProvider::DepthStencilSplitterEmptyProvider(v188, v229);
    if (*&v229[0])
    {
      if (BYTE8(v229[0]))
      {
        (*(**&v229[0] + 40))();
      }

      memset(v229, 0, sizeof(v229));
    }

    re::RenderGraphManager::addProviderInternal(*(this + 28), "Camera", v188, 10, 1, &v239);
    re::RealityEmitterBase::emitFrameContextRealityRenderer(this, (v13 + 8), v2, (v2 + 32));
    v189 = *(this + 28);
    re::StringID::StringID(&v226, &v239);
    v228 = *&v240[0];
    v190 = re::RenderGraphManager::removeProvider(v189, &v226);
    if (v226)
    {
      if (v226)
      {
      }
    }

    v226 = 0;
    v227 = &str_67;
    v191 = *(this + 28);
    re::StringID::StringID(&v223, (this + 600));
    v225 = *(this + 77);
    v192 = re::RenderGraphManager::removeProvider(v191, &v223);
    if (v223)
    {
      if (v223)
      {
      }
    }

    v223 = 0;
    v224 = &str_67;
    re::ProviderHandle::invalidate((this + 600));
    v193 = *(this + 28);
    re::StringID::StringID(&v220, this + 39);
    v222 = *(this + 80);
    v194 = re::RenderGraphManager::removeProvider(v193, &v220);
    if (v220)
    {
      if (v220)
      {
      }
    }

    v220 = 0;
    v221 = &str_67;
    re::ProviderHandle::invalidate((this + 624));
    *v244 = &unk_1F5D12848;
    v244[8] = 1;
    if ((atomic_load_explicit(&qword_1EE1BFE70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFE70))
    {
      qword_1EE1BFE68 = re::Hash<re::StringSlice>::operator()("InplaceTonemappingData", 0x16uLL);
      __cxa_guard_release(&qword_1EE1BFE70);
    }

    v195 = "N2re22InplaceTonemappingDataE";
    if (("N2re22InplaceTonemappingDataE" & 0x8000000000000000) != 0)
    {
      v196 = ("N2re22InplaceTonemappingDataE" & 0x7FFFFFFFFFFFFFFFLL);
      v197 = 5381;
      do
      {
        v195 = v197;
        v198 = *v196++;
        v197 = (33 * v197) ^ v198;
      }

      while (v198);
    }

    v238 = (qword_1EE1BFE68 - 0x61C8864680B583E9 + (v195 << 6) + (v195 >> 2)) ^ v195;
    v199 = (*(**(v2 + 5) + 32))(*(v2 + 5), 16, 8);
    *v199 = &unk_1F5D12848;
    *(v199 + 8) = v244[8];
    v237 = v199;
    v200 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v2 + 96, &v238, &v237);
    if (*&v239.var0)
    {
      if (*&v239.var0)
      {
      }
    }
  }

  re::FixedArray<re::RenderFrameContextBuilder::Result::PerSceneData>::deinit(&v232);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v236);
}